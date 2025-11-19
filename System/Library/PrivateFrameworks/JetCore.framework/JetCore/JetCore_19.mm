uint64_t sub_1DB4A695C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;

  Dictionary<>.subscript.getter(v9, v6, v5, a4);
}

uint64_t sub_1DB4A69D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_1DB50B120();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v13 = *a3;
  v12 = a3[1];
  (*(v14 + 16))(v16 - v10, a1, v9);
  v16[0] = v13;
  v16[1] = v12;

  return Dictionary<>.subscript.setter(v11, v16, v6);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *&v66 = sub_1DB50B560();
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  v23 = *a2;
  v22 = a2[1];
  (*(v10 + 16))(v13, a1, v9, v19);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v24 = *(v10 + 8);
    v24(v13, v9);
    *&v74 = v23;
    *(&v74 + 1) = v22;
    type metadata accessor for JSONContext.Property();
    JSONContext.Property.codingUserInfoKey.getter(v8);

    v25 = sub_1DB4A6174(v8, &v68);
    (v24)(a1, v9, v25);
    (*(v65 + 8))(v8, v66);
    return sub_1DB30623C(&v68, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v61 = v10;
  v62 = v9;
  v63 = a1;
  (*(v14 + 32))(v21, v13, a3);
  MetatypeMetadata = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v72);
  (*(v14 + 16))(boxed_opaque_existential_0, v21, a3);
  v67[0] = v23;
  v67[1] = v22;
  v27 = type metadata accessor for JSONContext.Property();
  JSONContext.Property.codingUserInfoKey.getter(v8);
  sub_1DB381FDC(&v72, v8, &v68);
  (*(v65 + 8))(v8, v66);
  v28 = v14;
  if (!*(&v69 + 1))
  {

    (*(v61 + 8))(v63, v62);
    (*(v14 + 8))(v21, a3);
    return sub_1DB30623C(&v68, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  sub_1DB30C200(&v68, &v74);
  sub_1DB300B14(&v74, &v68);
  v29 = v64;
  if (swift_dynamicCast())
  {

    (*(v61 + 8))(v63, v62);
    __swift_destroy_boxed_opaque_existential_0(&v74);
    v30 = *(v28 + 8);
    v30(v21, a3);
    return (v30)(v29, a3);
  }

  else
  {
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v32 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB511620;
    v71 = sub_1DB301BC0(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v34._countAndFlagsBits = 0xD00000000000001FLL;
    v34._object = 0x80000001DB5302A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    MetatypeMetadata = v27;
    *&v72 = v23;
    *(&v72 + 1) = v22;
    sub_1DB301CDC(&v72, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1DB301D4C(v67, &v68);
    v70 = 0;
    v35 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[40 * v37];
    v39 = v68;
    v40 = v69;
    v38[64] = v70;
    *(v38 + 2) = v39;
    *(v38 + 3) = v40;
    v71 = v35;
    sub_1DB30623C(&v72, &qword_1ECC426B0, &qword_1DB50EEB0);
    v41._countAndFlagsBits = 96;
    v41._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);
    *(v33 + 32) = v71;
    v71 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v42._countAndFlagsBits = 0xD000000000000019;
    v42._object = 0x80000001DB5302C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    __swift_project_boxed_opaque_existential_1(&v74, v75);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v72 = DynamicType;
    sub_1DB301CDC(&v72, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1DB301D4C(v67, &v68);
    v70 = 0;
    v44 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1DB301BC0(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1DB301BC0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[40 * v46];
    v48 = v68;
    v49 = v69;
    v47[64] = v70;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v71 = v44;
    sub_1DB30623C(&v72, &qword_1ECC426B0, &qword_1DB50EEB0);
    v50._countAndFlagsBits = 11838;
    v50._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v50);
    *(v33 + 40) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v51 = swift_allocObject();
    v66 = xmmword_1DB50EE90;
    *(v51 + 16) = xmmword_1DB50EE90;
    v52 = MEMORY[0x1E69E6158];
    *(&v69 + 1) = MEMORY[0x1E69E6158];
    *&v68 = 0xD000000000000018;
    *(&v68 + 1) = 0x80000001DB5302E0;
    *(v51 + 48) = 0u;
    *(v51 + 32) = 0u;
    sub_1DB301D4C(&v68, v51 + 32);
    *(v51 + 64) = 0;
    *(v33 + 48) = v51;
    v53 = sub_1DB50AF40();
    if (os_log_type_enabled(v32, v53))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v54 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v54[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v54 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v56 = swift_allocObject();
      *(v56 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v68 = v33;
      *(&v68 + 1) = sub_1DB314CB0;
      *&v69 = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v57 = sub_1DB50A5E0();
      v59 = v58;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v60 = swift_allocObject();
      *(v60 + 16) = v66;
      *(v60 + 56) = v52;
      *(v60 + 64) = sub_1DB31494C();
      *(v60 + 32) = v57;
      *(v60 + 40) = v59;
      sub_1DB50A1E0();
    }

    (*(v61 + 8))(v63, v62);
    __swift_destroy_boxed_opaque_existential_0(&v74);
    return (*(v28 + 8))(v21, a3);
  }
}

void (*Dictionary<>.subscript.modify(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a3;
  *(v8 + 24) = v3;
  v10 = sub_1DB50B120();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v16 = *a2;
  v15 = a2[1];
  v9[7] = v14;
  v9[8] = v16;
  v9[9] = v15;
  *v9 = v16;
  v9[1] = v15;
  v17 = *v3;

  Dictionary<>.subscript.getter(a2, v17, a3, v14);
  return sub_1DB4A7598;
}

void sub_1DB4A7598(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];
    v8 = v2[5];
    v10 = v2[2];
    v9 = v2[3];
    (*(v8 + 16))(v6, v5, v7);
    v12[0] = v4;
    v12[1] = v3;
    Dictionary<>.subscript.setter(v6, v12, v10);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v11 = v2[3];
    Dictionary<>.subscript.setter(v5, v2, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43510, &qword_1DB5118D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v82 - v4;
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v82 - v11;
  v12 = *a1;
  v110 = MEMORY[0x1E69E7CC8];
  v13 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46948, &qword_1DB520558);
  sub_1DB50A4F0();
  v14 = 0;
  v16 = v12 + 64;
  v15 = *(v12 + 64);
  v95 = v12;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v97 = (v7 + 48);
  v90 = (v7 + 32);
  v93 = (v7 + 16);
  v84 = v7;
  v87 = (v7 + 8);
  v89 = "This may indicate a bug." & 0x2F00000000000000;
  v86 = 0x80000001DB530300;
  v88 = "Could not coerce " & 0x2F00000000000000;
  v85 = 0x80000001DB530320;
  v94 = xmmword_1DB50EE90;
  v92 = v5;
  v91 = v6;
  v83 = v20;
  while (v19)
  {
    v21 = v14;
LABEL_16:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v21 << 6);
    v26 = (*(v95 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    sub_1DB300B14(*(v95 + 56) + 32 * v25, v104);
    *&v105 = v28;
    *(&v105 + 1) = v27;
    sub_1DB30C200(v104, &v106);

LABEL_17:
    v108 = v105;
    v109[0] = v106;
    v109[1] = v107;
    v29 = *(&v105 + 1);
    if (!*(&v105 + 1))
    {

      return v110;
    }

    v30 = v108;
    sub_1DB30C200(v109, v104);

    sub_1DB50B540();
    if ((*v97)(v5, 1, v6) == 1)
    {
      sub_1DB30623C(v5, &qword_1ECC43510, &qword_1DB5118D8);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v98 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v31 = swift_allocObject();
      *(v31 + 16) = v94;
      v32 = sub_1DB301BC0(0, 41, 0, MEMORY[0x1E69E7CC0]);
      if (v89 != 0x2000000000000000)
      {
        v103 = MEMORY[0x1E69E6158];
        v101 = 0xD000000000000011;
        v102 = v86;
        v105 = 0u;
        v106 = 0u;
        sub_1DB301D4C(&v101, &v105);
        LOBYTE(v107) = 0;
        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        if (v34 >= v33 >> 1)
        {
          v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
        }

        *(v32 + 2) = v34 + 1;
        v35 = &v32[40 * v34];
        v36 = v105;
        v37 = v106;
        v35[64] = v107;
        *(v35 + 2) = v36;
        *(v35 + 3) = v37;
        v5 = v92;
      }

      v103 = MEMORY[0x1E69E6158];
      v101 = v30;
      v102 = v29;
      sub_1DB301CDC(&v101, v100);
      v105 = 0u;
      v106 = 0u;
      sub_1DB301D4C(v100, &v105);
      LOBYTE(v107) = 0;
      v39 = *(v32 + 2);
      v38 = *(v32 + 3);
      if (v39 >= v38 >> 1)
      {
        v32 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v32);
      }

      *(v32 + 2) = v39 + 1;
      v40 = &v32[40 * v39];
      v41 = v105;
      v42 = v106;
      v40[64] = v107;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      sub_1DB30623C(&v101, &qword_1ECC426B0, &qword_1DB50EEB0);
      if (v88 != 0x2000000000000000)
      {
        v103 = MEMORY[0x1E69E6158];
        v101 = 0xD000000000000017;
        v102 = v85;
        v105 = 0u;
        v106 = 0u;
        sub_1DB301D4C(&v101, &v105);
        LOBYTE(v107) = 0;
        v44 = *(v32 + 2);
        v43 = *(v32 + 3);
        if (v44 >= v43 >> 1)
        {
          v32 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v32);
        }

        *(v32 + 2) = v44 + 1;
        v45 = &v32[40 * v44];
        v46 = v105;
        v47 = v106;
        v45[64] = v107;
        *(v45 + 2) = v46;
        *(v45 + 3) = v47;
      }

      *(v31 + 32) = v32;
      v48 = sub_1DB50AF40();
      if (os_log_type_enabled(v98, v48))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v49 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v49[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v49 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v51 = swift_allocObject();
        *(v51 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v105 = v31;
        *(&v105 + 1) = sub_1DB314CB0;
        *&v106 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v52 = sub_1DB50A5E0();
        v54 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v55 = swift_allocObject();
        *(v55 + 16) = v94;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 64) = sub_1DB31494C();
        *(v55 + 32) = v52;
        *(v55 + 40) = v54;
        sub_1DB50A1E0();

        __swift_destroy_boxed_opaque_existential_0(v104);
        v5 = v92;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v104);
      }

      v6 = v91;
    }

    else
    {

      v56 = v96;
      (*v90)(v96, v5, v6);
      v57 = *v93;
      v58 = v99;
      (*v93)(v99, v56, v6);
      sub_1DB300B14(v104, &v105);
      v59 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v59;
      v61 = sub_1DB30EDEC(v58);
      v63 = *(v59 + 16);
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
        goto LABEL_50;
      }

      v67 = v62;
      if (*(v59 + 24) >= v66)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v72 = v61;
        sub_1DB311750();
        v61 = v72;
        v69 = v101;
        if ((v67 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_43:
        v70 = (v69[7] + 32 * v61);
        __swift_destroy_boxed_opaque_existential_0(v70);
        sub_1DB30C200(&v105, v70);
        v71 = *v87;
        (*v87)(v99, v6);
        v71(v96, v6);
        __swift_destroy_boxed_opaque_existential_0(v104);
        v110 = v69;
      }

      else
      {
        sub_1DB319D74(v66, isUniquelyReferenced_nonNull_native);
        v61 = sub_1DB30EDEC(v99);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_52;
        }

LABEL_42:
        v69 = v101;
        if (v67)
        {
          goto LABEL_43;
        }

LABEL_46:
        v73 = v16;
        v74 = v5;
        v69[(v61 >> 6) + 8] |= 1 << v61;
        v75 = v84;
        v76 = v61;
        v77 = v99;
        v57(v69[6] + *(v84 + 72) * v61, v99, v6);
        sub_1DB30C200(&v105, (v69[7] + 32 * v76));
        v78 = *(v75 + 8);
        v78(v77, v6);
        v78(v96, v6);
        __swift_destroy_boxed_opaque_existential_0(v104);
        v79 = v69[2];
        v65 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v65)
        {
          goto LABEL_51;
        }

        v69[2] = v80;
        v110 = v69;
        v5 = v74;
        v16 = v73;
        v20 = v83;
      }
    }
  }

  if (v20 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      v19 = 0;
      v106 = 0u;
      v107 = 0u;
      v14 = v23;
      v105 = 0u;
      goto LABEL_17;
    }

    v19 = *(v16 + 8 * v21);
    ++v14;
    if (v19)
    {
      v14 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t MetricsError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      v14 = 0;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x7320746F6E6E6143, 0xED00002074726174);
      MEMORY[0x1E1285C70](v1, v2);
      v4 = " without starting it first";
      v5 = 0xD00000000000002ALL;
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      sub_1DB50B320();

      v14 = 0x6520746F6E6E6143;
      MEMORY[0x1E1285C70](v1, v2);
      v4 = "No end(s) found for ";
      v5 = 0xD00000000000001ALL;
LABEL_9:
      v7 = v4 | 0x8000000000000000;
LABEL_11:
      MEMORY[0x1E1285C70](v5, v7);
      return v14;
    }

    sub_1DB50B320();

    v6 = 0xD000000000000014;
LABEL_13:
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB4A841C();
    sub_1DB301E30();
    v9 = sub_1DB50A900();
    MEMORY[0x1E1285C70](v9);

    return v14;
  }

  if (v3 == 3)
  {
    sub_1DB50B320();

    v14 = 0xD000000000000010;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB4A841C();
    sub_1DB301E30();
    v8 = sub_1DB50A900();
    MEMORY[0x1E1285C70](v8);

    v5 = 0x73696D2065726120;
    v7 = 0xEC000000676E6973;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    sub_1DB50B320();

    v6 = 0xD00000000000001CLL;
    goto LABEL_13;
  }

  if (v1 <= 1)
  {
    v11 = v1 | v2;
    v12 = 0xD000000000000031;
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v11 = v1 ^ 2 | v2;
    v12 = 0xD00000000000003FLL;
    v13 = 0xD00000000000004ELL;
    if (!(v1 ^ 3 | v2))
    {
      v13 = 0xD00000000000002BLL;
    }
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_1DB4A841C()
{
  result = qword_1ECC46958[0];
  if (!qword_1ECC46958[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46950, &qword_1DB520560);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46958);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore12MetricsErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DB4A84A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DB4A8564()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v0 + *(v1 + 128);
  sub_1DB50B330();
  swift_getAssociatedConformanceWitness();
  return sub_1DB50B2B0();
}

uint64_t sub_1DB4A8688()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DB4A86F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DB4A8730(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 112) - 8) + 32))(v5 + *(*v5 + 128), a1);
  return v5;
}

uint64_t sub_1DB4A87C4()
{
  v1 = *(*(*v0 + 120) + 16);
  v2 = *(*v0 + 112);
  v3 = v0 + *(*v0 + 128);
  return v1(v2);
}

uint64_t sub_1DB4A88EC()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DiffableLens.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v2 + 96))(v6);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v8, v3);
}

uint64_t DiffableLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v3 + 96))(v9);
  swift_getAtKeyPath();
  (*(v7 + 8))(v11, v6);
  v13[0] = v13[1];
  return ReadOnlyLens.init(_:)(v13, *(v5 + *MEMORY[0x1E69E77B0] + 8), a3);
}

uint64_t DiffableLens.hash(into:)()
{
  (*(**v0 + 88))(v2);
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB314BE8(v2);
}

uint64_t static DiffableLens.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))(v6);
  (*(*v2 + 88))(v5, v3);
  LOBYTE(v2) = MEMORY[0x1E1286770](v6, v5);
  sub_1DB314BE8(v5);
  sub_1DB314BE8(v6);
  return v2 & 1;
}

uint64_t DiffableLens.description.getter(uint64_t a1)
{
  v2 = *(*(*(a1 + 16) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(**v1 + 96))(v3);
  return sub_1DB50A6C0();
}

uint64_t DiffableLens.hashValue.getter()
{
  v2 = *v0;
  sub_1DB50BCF0();
  DiffableLens.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A8E80()
{
  sub_1DB50BCF0();
  DiffableLens.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t DiffableLens<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB4A8FD4(a1, a2, sub_1DB4A9274, a3);
}

{
  return sub_1DB4A8FD4(a1, a2, sub_1DB4A9274, a3);
}

uint64_t DiffableLens<A>.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnyComponentModelValueBox();
  v4 = swift_allocObject();
  result = sub_1DB2FEA0C(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for AnyComponentModelValueBox()
{
  result = qword_1ECC46A60;
  if (!qword_1ECC46A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4A8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(0);
  (*(v8 + 16))(v11, a1, a2);
  v13 = a3(v11);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v13;
  return result;
}

uint64_t sub_1DB4A9184(uint64_t a1)
{
  v1 = *(a1 + 112);
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

uint64_t sub_1DB4A9218()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4A9280()
{
  v0 = sub_1DB509E00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509DF0();
  v5 = sub_1DB509DE0();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1ECC67CB0 = v5;
  *algn_1ECC67CB8 = v7;
  return result;
}

uint64_t sub_1DB4A9360(char *a1, int a2)
{
  v25 = a2;
  v3 = sub_1DB509E00();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v22 = &v21 - v16;
  if (qword_1ECC422B0 != -1)
  {
    swift_once();
  }

  sub_1DB509BD0();
  sub_1DB509BD0();
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1DB509DF0();
  sub_1DB509DE0();
  (*(v23 + 8))(v6, v24);
  v18 = v22;
  sub_1DB509BD0();

  v17(a1, v7);
  v17(v14, v7);
  v19 = v26;
  (*(v8 + 32))(v26 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v18, v7);
  *(v19 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_automaticallyCleanUp) = v25 & 1;
  return v19;
}

uint64_t sub_1DB4A9628()
{
  v1 = v0;
  v87[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1DB509CA0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - v8;
  if (*(v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_automaticallyCleanUp))
  {
    v74 = v6;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v10 = qword_1ECC466F8;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v11 = swift_allocObject();
    v81 = xmmword_1DB50EE90;
    *(v11 + 16) = xmmword_1DB50EE90;
    v82 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v12._object = 0x80000001DB5305F0;
    v12._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v13 = v3[2];
    v80 = v0;
    v73 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
    v77 = v3 + 2;
    v76 = v13;
    v13(v9, v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v2);
    v14 = sub_1DB509C40();
    v16 = v15;
    v18 = v3[1];
    v17 = (v3 + 1);
    v79 = v18;
    v18(v9, v2);
    v19 = MEMORY[0x1E69E6158];
    v87[3] = MEMORY[0x1E69E6158];
    v87[0] = v14;
    v87[1] = v16;
    sub_1DB301CDC(v87, v83);
    v84 = 0u;
    v85 = 0u;
    sub_1DB301D4C(v83, &v84);
    v86 = 0;
    v20 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
    }

    v75 = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v84;
    v25 = v85;
    v23[64] = v86;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v82 = v20;
    sub_1DB301DBC(v87);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v11 + 32) = v82;
    v27 = sub_1DB50AF40();
    v28 = os_log_type_enabled(v10, v27);
    v78 = v2;
    v72 = v10;
    if (v28)
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v29 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v29 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v31 = swift_allocObject();
      *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v84 = v11;
      *(&v84 + 1) = sub_1DB314CB0;
      *&v85 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v32 = sub_1DB50A5E0();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v35 = swift_allocObject();
      *(v35 + 16) = v81;
      *(v35 + 56) = v19;
      *(v35 + 64) = sub_1DB31494C();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      sub_1DB50A1E0();
    }

    v36 = v80;
    v37 = v76;
    v38 = v73;
    v39 = objc_opt_self();
    v40 = [v39 defaultManager];
    v41 = v74;
    v42 = v78;
    v37(v74, v36 + v38, v78);
    v43 = v38;
    sub_1DB509C40();
    v44 = v36;
    v45 = v79;
    v79(v41, v42);
    v46 = sub_1DB50A620();

    v47 = [v40 fileExistsAtPath_];

    if (v47)
    {
      v48 = [v39 defaultManager];
      v1 = v44;
      v76(v41, v44 + v43, v42);
      sub_1DB509C40();
      v45(v41, v42);
      v49 = sub_1DB50A620();

      *&v84 = 0;
      v50 = [v48 removeItemAtPath:v49 error:&v84];

      if (v50)
      {
        v51 = v84;
      }

      else
      {
        v67 = v84;
        v68 = sub_1DB509B20();

        swift_willThrow();
      }

      goto LABEL_26;
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v54 = swift_allocObject();
    *(v54 + 16) = v81;
    v55 = MEMORY[0x1E69E6158];
    *(&v85 + 1) = MEMORY[0x1E69E6158];
    *&v84 = 0xD000000000000025;
    *(&v84 + 1) = 0x80000001DB530610;
    *(v54 + 48) = 0u;
    *(v54 + 32) = 0u;
    sub_1DB301D4C(&v84, v54 + 32);
    *(v54 + 64) = 0;
    *(v53 + 32) = v54;
    v56 = sub_1DB50AF40();
    if (!os_log_type_enabled(v72, v56))
    {

      v45 = v79;
      v1 = v80;
      v42 = v78;
LABEL_26:
      (v45)(v1 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v42, v52);
      goto LABEL_27;
    }

    v57 = v55;
    v1 = v80;
    v58 = v78;
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v59 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    v60 = LOBYTE(v59[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v59 + 5);
    if (v60 == 2)
    {
      LOBYTE(v60) = os_variant_has_internal_content();
    }

    v61 = swift_allocObject();
    *(v61 + 16) = (v60 & 1) == 0;
    *&v84 = v53;
    *(&v84 + 1) = sub_1DB31485C;
    *&v85 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v62 = sub_1DB50A5E0();
    v64 = v63;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v65 = swift_allocObject();
    *(v65 + 16) = v81;
    *(v65 + 56) = v57;
    *(v65 + 64) = sub_1DB31494C();
    *(v65 + 32) = v62;
    *(v65 + 40) = v64;
    sub_1DB50A1E0();

    (v79)(v1 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v58, v66);
  }

  else
  {
    (v3[1])(v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v2, v7);
  }

LABEL_27:
  v69 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1DB4A9F2C()
{
  sub_1DB4A9628();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for JetPackResourceBundleDiskLocation()
{
  result = qword_1ECC46B70;
  if (!qword_1ECC46B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4A9FD8()
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB4AA070(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v55 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v55 - v10;
  v12 = [objc_opt_self() defaultManager];
  v62 = " bundle doesn't exist";
  *&v64 = a1;
  sub_1DB509BD0();
  sub_1DB509C40();
  v13 = sub_1DB50A620();

  LODWORD(a1) = [v12 fileExistsAtPath_];

  if (!a1)
  {
    v65 = v12;
    v39 = v11;
    v60 = v1;
    v40 = v4;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v41 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v42 = swift_allocObject();
    v64 = xmmword_1DB50EE90;
    *(v42 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v43 = swift_allocObject();
    *(v43 + 16) = v64;
    v69 = MEMORY[0x1E69E6158];
    v66 = 0xD000000000000039;
    v67 = 0x80000001DB530660;
    *(v43 + 48) = 0u;
    *(v43 + 32) = 0u;
    sub_1DB301D4C(&v66, v43 + 32);
    *(v43 + 64) = 0;
    *(v42 + 32) = v43;
    v44 = sub_1DB50AF40();
    if (os_log_type_enabled(v41, v44))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v45 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v45[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v45 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v17 = v39;
      v47 = swift_allocObject();
      *(v47 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v66 = v42;
      v67 = sub_1DB314CB0;
      v68 = v47;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v48 = sub_1DB50A5E0();
      v50 = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v51 = swift_allocObject();
      *(v51 + 16) = v64;
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = sub_1DB31494C();
      *(v51 + 32) = v48;
      *(v51 + 40) = v50;
      sub_1DB50A1E0();

      v4 = v40;
    }

    else
    {

      v4 = v40;
      v17 = v39;
    }

    goto LABEL_29;
  }

  sub_1DB509C40();
  v14 = sub_1DB50A620();

  v66 = 0;
  v15 = [v12 contentsOfDirectoryAtPath:v14 error:&v66];

  v16 = v66;
  v17 = v11;
  if (v15)
  {
    v65 = v12;
    v60 = v1;
    v18 = sub_1DB50A9A0();
    v19 = v16;

    v20 = v18;
    v21 = *(v18 + 16);
    if (v21)
    {
      v56 = v11;
      v57 = v4;
      v58 = (v4 + 8);
      v59 = v3;
      v55[1] = v20;
      v22 = (v20 + 40);
      v23 = v65;
      do
      {
        v25 = *(v22 - 1);
        v24 = *v22;
        v26 = qword_1ECC422B0;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = v25 == qword_1ECC67CB0 && v24 == *algn_1ECC67CB8;
        if (v27 || (sub_1DB50BA30() & 1) != 0)
        {
        }

        else
        {
          v28 = v63;
          sub_1DB509BD0();
          v29 = v61;
          sub_1DB509BD0();

          v30 = *v58;
          v31 = v28;
          v32 = v59;
          (*v58)(v31, v59);
          sub_1DB509C40();
          v33 = v32;
          v23 = v65;
          v30(v29, v33);
          v34 = sub_1DB50A620();

          v66 = 0;
          v35 = [v23 removeItemAtPath:v34 error:&v66];

          if (v35)
          {
            v36 = v66;
          }

          else
          {
            v37 = v66;
            v38 = sub_1DB509B20();

            swift_willThrow();
            v60 = 0;
          }
        }

        v22 += 2;
        --v21;
      }

      while (v21);

      v3 = v59;
      v17 = v56;
      v4 = v57;
    }

    else
    {
    }

LABEL_29:
    result = (*(v4 + 8))(v17, v3);
    goto LABEL_30;
  }

  v52 = v66;
  sub_1DB509B20();

  swift_willThrow();
  result = (*(v4 + 8))(v11, v3);
LABEL_30:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Encoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  a4[3] = &type metadata for _Wrapped_Encoder;
  a4[4] = sub_1DB4AA848();
  v9 = swift_allocObject();
  *a4 = v9;
  v9[5] = a2;
  v9[6] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  v9[7] = a1;
}

unint64_t sub_1DB4AA848()
{
  result = qword_1ECC46B80;
  if (!qword_1ECC46B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46B80);
  }

  return result;
}

uint64_t sub_1DB4AA8AC()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return sub_1DB50BE40();
}

uint64_t sub_1DB4AA920()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return sub_1DB50BE00();
}

uint64_t sub_1DB4AA998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

uint64_t CustomIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AAA10, 0, 0);
}

uint64_t sub_1DB4AAA10()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v3[3] = v4;
  v3[4] = *(v1 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v2, v4);
  v6 = v0[1];

  return v6();
}

uint64_t CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v10 = sub_1DB50B120();
  v8[16] = v10;
  v11 = *(v10 - 8);
  v8[17] = v11;
  v12 = *(v11 + 64) + 15;
  v8[18] = swift_task_alloc();
  v13 = *(AssociatedTypeWitness - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4AAC00, 0, 0);
}

uint64_t sub_1DB4AAC00()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  (*(*(v0 + 104) + 40))(*(v0 + 88));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  static StaticIntent._unwrapData<A>(of:)(v3, v5, v6, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 72);
    v22 = *(v0 + 96);
    v23 = *(v0 + 80);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *(v9 + 16) = v23;
    *(v9 + 32) = v22;
    *(v9 + 48) = v0 + 16;
    *(v9 + 56) = v7;
    *(v9 + 64) = v8;
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1DB4AAE2C;
    v11 = *(v0 + 120);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);

    return sub_1DB40CD74(v13, &unk_1DB520A28, v9, v11);
  }

  else
  {
    v15 = *(v0 + 160);
    v16 = *(v0 + 120);
    v17 = *(v0 + 56);
    v18 = *(*(v0 + 152) + 32);
    v18(v15, *(v0 + 144), v16);
    v18(v17, v15, v16);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1DB4AAE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1DB4AAFC4;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1DB4AAF48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4AAF48()
{
  v1 = v0[20];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4AAFC4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1DB4AB044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AB070, 0, 0);
}

uint64_t sub_1DB4AB070()
{
  v1 = v0[9];
  v18 = v0[8];
  v2 = v0[7];
  v3 = v0[3];
  v5 = v3[3];
  v4 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = *(v18 + 16);
  v17 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v9 = v0;
  v9[1] = sub_1DB4AB1EC;
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  v15 = v0[2];

  return (v17)(v15, v6, v12, AssociatedTypeWitness, v5, v4, v13, v11);
}

uint64_t sub_1DB4AB1EC()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB4AB2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB4AB044(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t dispatch thunk of CustomIntentDispatcher.perform<A, B>(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1DB306AF4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

id sub_1DB4AB520()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1ECC46B88 = result;
  return result;
}

uint64_t OperationID.init(_:)(uint64_t a1)
{
  v2 = sub_1DB509B80();
  v3 = sub_1DB509CA0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t OperationID.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1DB50A910();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

JetCore::OperationID __swiftcall OperationID.init(uniqueForOperation:)(Swift::String uniqueForOperation)
{
  MEMORY[0x1E1285C70](35, 0xE100000000000000);
  if (qword_1ECC422B8 != -1)
  {
    swift_once();
  }

  [qword_1ECC46B88 increment];
  v1 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v1);

  countAndFlagsBits = uniqueForOperation._countAndFlagsBits;
  object = uniqueForOperation._object;
  result.rawValue._object = object;
  result.rawValue._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t OperationID.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1DB50BA40();
    __swift_destroy_boxed_opaque_existential_0(v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

uint64_t OperationID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

unint64_t sub_1DB4AB888()
{
  result = qword_1ECC46B90;
  if (!qword_1ECC46B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46B90);
  }

  return result;
}

uint64_t sub_1DB4AB8DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_1DB50BA40();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t AppMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [*v1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DB50A650();
    v8 = v7;

    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = v6;
    *(&v25 + 1) = v8;
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(&v25, 7368801, 0xE300000000000000, v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  else
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50F8D0;
    v29 = sub_1DB301BC0(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0xD000000000000026;
    v14._object = 0x80000001DB5306A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v28[3] = sub_1DB36AC44();
    v28[0] = v3;
    sub_1DB301CDC(v28, v24);
    v25 = 0u;
    v26 = 0u;
    v15 = v3;
    sub_1DB301D4C(v24, &v25);
    v27 = 1;
    v16 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v25;
    v21 = v26;
    v19[64] = v27;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v29 = v16;
    sub_1DB301DBC(v28);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = 0xD00000000000001BLL;
    *(&v25 + 1) = 0x80000001DB5306D0;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v25, v23 + 32);
    *(v23 + 64) = 0;
    *(v13 + 40) = v23;
    *&v25 = v12;
    LOBYTE(v28[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v13, v28);
  }
}

uint64_t JetPackAssetSQLiteRecord.cacheKey.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.fileName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.metadata.getter()
{
  v1 = *(v0 + 40);
  sub_1DB3483BC(v1, *(v0 + 48));
  return v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB4ABDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DB4ABE24(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB4ABE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sqlite3_stmt **a4@<X3>, unsigned int *a5@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *zSql = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = zSql;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_1DB50B310();
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFFLL;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = (v8 + 32);
LABEL_6:
  v11 = sqlite3_prepare_v2(v9, v10, -1, a4, 0);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (sub_1DB331244(v11, qword_1EE312D90))
  {
    *a5 = v11;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1DB4AC054()
{
  qword_1EE30DCC8 = 0xD0000000000000C3;
  unk_1EE30DCD0 = 0x80000001DB5308A0;
  qword_1EE30DCD8 = MEMORY[0x1E69E7CC0];
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(id:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  sub_1DB3457EC(v5, a1, a2);
}

uint64_t sub_1DB4AC0D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](64);
  v25 = v26;
  MEMORY[0x1E1285C70](0xD000000000000027, 0x80000001DB530870);
  *(&v27 + 1) = MEMORY[0x1E69E72F0];
  *&v28 = &off_1F57000B8;
  LODWORD(v26) = a2;
  sub_1DB30C4B8(&v26, v30, &qword_1ECC42798, &qword_1DB50F210);
  v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302D80((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v30[0];
  v12 = v30[1];
  v10[8] = v31;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v26);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v30[0] = 0;

  sub_1DB4ABE94(v25, *(&v25 + 1), a1, v30, &v26);

  if (v3)
  {
    goto LABEL_11;
  }

  v14 = *&v30[0];
  if (*&v30[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v14;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v7);

    v16 = *(inited + 16);
    v17 = sqlite3_step(v16);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v17, qword_1EE312D90))
    {
      if (v17 == 100)
      {
        sub_1DB4AC424(inited, &v26);
        swift_setDeallocating();
        sqlite3_finalize(*(inited + 16));
        v18 = *(inited + 24);

        v19 = v29;
        v20 = v27;
        *a3 = v26;
        *(a3 + 16) = v20;
        *(a3 + 32) = v28;
        *(a3 + 48) = v19;
      }

      else
      {
        swift_setDeallocating();
        sqlite3_finalize(v16);
        v24 = *(inited + 24);

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 1;
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
      }

      goto LABEL_12;
    }

    sub_1DB388320();
    swift_allocError();
    *v21 = v17;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
    v22 = *(inited + 24);
LABEL_11:

LABEL_12:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1DB4AC424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB4AE7B8();
  if (!*(v4 + 16))
  {
    v15 = 0;
    v16 = 0;
    v8 = 0;
    v12 = 0;
    v14 = 0;
    v9 = 1;
    goto LABEL_21;
  }

  v5 = sub_1DB306160(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v8 = sqlite3_column_int(*(a1 + 16), v7);
      v9 = 0;
      if (*(v4 + 16))
      {
        goto LABEL_5;
      }

LABEL_20:
      v15 = 0;
      v16 = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_21;
    }
  }

  v8 = 0;
  v9 = 1;
  if (!*(v4 + 16))
  {
    goto LABEL_20;
  }

LABEL_5:
  v10 = sub_1DB306160(0x656B5F6568636163, 0xE900000000000079);
  if ((v11 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v10)))
  {
    v12 = sub_1DB50A7A0();
    v14 = v13;
    if (!*(v4 + 16))
    {
LABEL_8:
      v15 = 0;
      v16 = 0;
LABEL_21:

      result = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_8;
    }
  }

  v17 = sub_1DB306160(0x6D616E5F656C6966, 0xE900000000000065);
  if ((v18 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v17)))
  {
    v16 = sub_1DB50A7A0();
    v15 = v19;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  v20 = sub_1DB306160(0x617461646174656DLL, 0xE800000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = *(*(v4 + 56) + 4 * v20);

  v23 = sqlite3_column_bytes(*(a1 + 16), v22);
  result = sqlite3_column_blob(*(a1 + 16), v22);
  if (!result)
  {
LABEL_22:
    v25 = 0xF000000000000000;
    goto LABEL_23;
  }

  result = sub_1DB4AE69C(result, v23);
LABEL_23:
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 40) = result;
  *(a2 + 48) = v25;
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(cacheKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);

  sub_1DB3455D4(v7, a1, a2, a3);
}

uint64_t sub_1DB4AC69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](71);
  v27 = v28;
  MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB5307E0);
  *(&v29 + 1) = MEMORY[0x1E69E6158];
  *&v30 = &off_1F5700098;
  *&v28 = a2;
  *(&v28 + 1) = a3;
  sub_1DB30C4B8(&v28, v32, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v32[0];
  v14 = v32[1];
  v12[8] = v33;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v28);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v32[0] = 0;

  sub_1DB4ABE94(v27, *(&v27 + 1), a1, v32, &v28);

  if (v4)
  {
    goto LABEL_11;
  }

  v16 = *&v32[0];
  if (*&v32[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);

    v18 = *(inited + 16);
    v19 = sqlite3_step(v18);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v19, qword_1EE312D90))
    {
      if (v19 == 100)
      {
        sub_1DB4AC424(inited, &v28);
        swift_setDeallocating();
        sqlite3_finalize(*(inited + 16));
        v20 = *(inited + 24);

        v21 = v31;
        v22 = v29;
        *a4 = v28;
        *(a4 + 16) = v22;
        *(a4 + 32) = v30;
        *(a4 + 48) = v21;
      }

      else
      {
        swift_setDeallocating();
        sqlite3_finalize(v18);
        v26 = *(inited + 24);

        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 1;
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
      }

      goto LABEL_12;
    }

    sub_1DB388320();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
    v24 = *(inited + 24);
LABEL_11:

LABEL_12:
    v25 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll()()
{
  v1 = *(v0 + 16);

  sub_1DB3486A0(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_1DB4ACA44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v30[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000034, 0x80000001DB530830, a1, v30, v28);
  if (v2)
  {
LABEL_19:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v30[0];
  if (v30[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = 0;
    sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
    v8 = MEMORY[0x1E69E7CC0];
    for (i = 0x1EE30C000uLL; ; i = 0x1EE30C000)
    {
      v10 = *(inited + 16);
      v11 = sqlite3_step(v10);
      if (*(i + 2080) != -1)
      {
        swift_once();
      }

      v12 = qword_1EE312D90;
      if (!*(qword_1EE312D90 + 16) || (v13 = *(qword_1EE312D90 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v14 = sub_1DB50BD30(), v15 = -1 << *(v12 + 32), v16 = v14 & ~v15, ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
      {
LABEL_18:
        sub_1DB388320();
        swift_allocError();
        *v24 = v11;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v10);
        v25 = *(inited + 24);

        goto LABEL_19;
      }

      v17 = ~v15;
      while (*(*(v12 + 48) + 4 * v16) != v11)
      {
        v16 = (v16 + 1) & v17;
        if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v11 != 100)
      {
        break;
      }

      sub_1DB4AC424(inited, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DB3042F8(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_1DB3042F8((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[56 * v19];
      v21 = v28[0];
      v22 = v28[1];
      v23 = v28[2];
      *(v20 + 10) = v29;
      *(v20 + 3) = v22;
      *(v20 + 4) = v23;
      *(v20 + 2) = v21;
    }

    swift_setDeallocating();
    sqlite3_finalize(v10);
    v27 = *(inited + 24);

    *a2 = v8;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll(cacheKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  sub_1DB34843C(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB4ACDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](71);
  v41 = v42;
  MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB5307E0);
  *(&v43 + 1) = MEMORY[0x1E69E6158];
  *&v44 = &off_1F5700098;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  sub_1DB30C4B8(&v42, v46, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v46[0];
  v14 = v46[1];
  v12[8] = v47;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v42);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v46[0] = 0;

  sub_1DB4ABE94(v41, *(&v41 + 1), a1, v46, &v42);

  if (v4)
  {
LABEL_21:

LABEL_22:
    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v16 = *&v46[0];
  if (*&v46[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);
    v40 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    v19 = 0x1EE30C000uLL;
    for (i = &unk_1EE312000; ; i = v23)
    {
      v21 = *(inited + 16);
      v22 = sqlite3_step(v21);
      if (*(v19 + 2080) != -1)
      {
        swift_once();
      }

      v23 = i;
      v24 = i[434];
      if (!*(v24 + 16) || (v25 = *(v24 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v26 = sub_1DB50BD30(), v27 = -1 << *(v24 + 32), v28 = v26 & ~v27, ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
      {
LABEL_20:
        sub_1DB388320();
        swift_allocError();
        *v36 = v22;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v21);
        v37 = *(inited + 24);

        goto LABEL_21;
      }

      v29 = ~v27;
      while (*(*(v24 + 48) + 4 * v28) != v22)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v22 != 100)
      {
        break;
      }

      sub_1DB4AC424(inited, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB3042F8(0, *(v18 + 2) + 1, 1, v18);
      }

      v31 = *(v18 + 2);
      v30 = *(v18 + 3);
      if (v31 >= v30 >> 1)
      {
        v18 = sub_1DB3042F8((v30 > 1), v31 + 1, 1, v18);
      }

      *(v18 + 2) = v31 + 1;
      v32 = &v18[56 * v31];
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v32 + 10) = v45;
      *(v32 + 3) = v34;
      *(v32 + 4) = v35;
      *(v32 + 2) = v33;
      v19 = 0x1EE30C000;
    }

    swift_setDeallocating();
    sqlite3_finalize(v21);
    v39 = *(inited + 24);

    *v40 = v18;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.create(record:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = *(v2 + 16);
  sub_1DB32E354(v7, v6);

  sub_1DB34504C(v5, v7, a2);
}

uint64_t sub_1DB4AD294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0xE000000000000000;
  MEMORY[0x1E1285C10](84);
  MEMORY[0x1E1285C70](0xD000000000000043, 0x80000001DB530790);
  v55 = *(a2 + 8);
  if (*(&v55 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v55;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v50 = 0;
  }

  v48 = v9;
  v49 = *(&v55 + 1);
  v51 = v8;
  v52 = v7;
  sub_1DB30C4B8(&v48, &v45, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v55, v44, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v45;
  v15 = v46;
  v13[8] = v47;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v48);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v54 = *(a2 + 24);
  if (*(&v54 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v54;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v50 = 0;
  }

  v48 = v18;
  v49 = *(&v54 + 1);
  v51 = v17;
  v52 = v16;
  sub_1DB30C4B8(&v48, &v45, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v54, v44, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v45;
  v23 = v46;
  v21[8] = v47;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v48);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v53 = *(a2 + 40);
  v24 = *(&v53 + 1);
  if (*(&v53 + 1) >> 60 == 15)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v50 = 0;
  }

  else
  {
    v27 = &off_1F57000A8;
    v26 = MEMORY[0x1E6969080];
    v25 = v53;
  }

  v48 = v25;
  v49 = v24;
  v51 = v26;
  v52 = v27;
  sub_1DB30C4B8(&v48, &v45, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v53, v44, &qword_1ECC46B98, &unk_1DB520D40);
  v29 = v10[2];
  v28 = v10[3];
  if (v29 >= v28 >> 1)
  {
    v10 = sub_1DB302D80((v28 > 1), v29 + 1, 1, v10);
  }

  v10[2] = v29 + 1;
  v30 = &v10[5 * v29];
  v31 = v45;
  v32 = v46;
  v30[8] = v47;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v48);
  MEMORY[0x1E1285C70](0x4E52555445522029, 0xED00002A20474E49);
  v48 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v48, &v45);
  if (v3)
  {

LABEL_26:

    v43 = *MEMORY[0x1E69E9840];
    return result;
  }

  v34 = v48;
  if (v48)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v37 = *(inited + 16);
    v38 = sqlite3_step(v37);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v38, qword_1EE312D90) && (v39 = sub_1DB3AD5F0(&unk_1F56F0100), v40 = sub_1DB331244(v38, v39), , v40))
    {
      sub_1DB4AC424(inited, a3);
      swift_setDeallocating();
      v36 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v41 = v38;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v36 = v37;
    }

    sqlite3_finalize(v36);
    v42 = *(inited + 24);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4AD7FC(uint64_t a1, unsigned int a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v23[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](37);
  MEMORY[0x1E1285C70](0xD000000000000025, 0x80000001DB530760);
  v23[3] = MEMORY[0x1E69E72F0];
  v23[4] = &off_1F57000B8;
  v23[0] = a2;
  sub_1DB30C4B8(v23, v21, &qword_1ECC42798, &qword_1DB50F210);
  v5 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB302D80((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v21[0];
  v10 = v21[1];
  v8[8] = v22;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v23);
  v23[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v23, v21);

  if (v2)
  {
    goto LABEL_11;
  }

  v12 = v23[0];
  if (v23[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v15, qword_1EE312D90) || (v16 = sub_1DB3AD5F0(&unk_1F56F00D8), v17 = sub_1DB331244(v15, v16), , !v17))
    {
      sub_1DB388320();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
    v19 = *(inited + 24);
LABEL_11:

    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.updateMetadata(id:metadata:)(_BOOL4 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 16);
  sub_1DB3483BC(a2, a3);

  sub_1DB344D70(v9, a2, a3, a1, a4);
}

uint64_t sub_1DB4ADB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](60);
  MEMORY[0x1E1285C70](0xD000000000000024, 0x80000001DB530730);
  if (a3 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v40[2] = 0;
  }

  else
  {
    v14 = &off_1F57000A8;
    v13 = MEMORY[0x1E6969080];
    v11 = a2;
    v12 = a3;
  }

  v40[0] = v11;
  v40[1] = v12;
  v41 = v13;
  v42 = v14;
  sub_1DB30C4B8(v40, &v37, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB3483BC(a2, a3);
  v15 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB302D80((v16 > 1), v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  v18 = &v15[5 * v17];
  v19 = v37;
  v20 = v38;
  v18[8] = v39;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v40);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v41 = MEMORY[0x1E69E72F0];
  v42 = &off_1F57000B8;
  LODWORD(v40[0]) = a4;
  sub_1DB30C4B8(v40, &v37, &qword_1ECC42798, &qword_1DB50F210);
  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1DB302D80((v21 > 1), v22 + 1, 1, v15);
  }

  v15[2] = v22 + 1;
  v23 = &v15[5 * v22];
  v24 = v37;
  v25 = v38;
  v23[8] = v39;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v40);
  MEMORY[0x1E1285C70](0x494E525554455220, 0xEC0000002A20474ELL);
  v40[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v40, &v37);
  if (v5)
  {

LABEL_18:

    v36 = *MEMORY[0x1E69E9840];
    return result;
  }

  v27 = v40[0];
  if (v40[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v15);

    v30 = *(inited + 16);
    v31 = sqlite3_step(v30);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v31, qword_1EE312D90) && (v32 = sub_1DB3AD5F0(&unk_1F56F00B0), v33 = sub_1DB331244(v31, v32), , v33))
    {
      sub_1DB4AC424(inited, a5);
      swift_setDeallocating();
      v29 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v29 = v30;
    }

    sqlite3_finalize(v29);
    v35 = *(inited + 24);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCacheSQLiteMetadataStore.beginTransaction()()
{
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1DB348194((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

Swift::Void __swiftcall JetPackAssetDiskCacheSQLiteMetadataStore.endTransaction()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB3481F8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AE04C, 0, 0);
}

uint64_t sub_1DB4AE04C()
{
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DB32D394;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v5, v6, v3, v4);
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DB4AE148(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 16);

  sub_1DB3457EC(v5, a1, a2);
}

void sub_1DB4AE198(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);

  sub_1DB3455D4(v7, a1, a2, a3);
}

uint64_t sub_1DB4AE200()
{
  v1 = *(*v0 + 16);

  sub_1DB3486A0(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_1DB4AE258(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);

  sub_1DB34843C(v5, a1, a2);
  v7 = v6;

  return v7;
}

void sub_1DB4AE2D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 32);
  v8[1] = *(a1 + 16);
  v8[2] = v5;
  v9 = *(a1 + 48);
  v8[0] = *a1;
  v6 = *(v4 + 16);
  sub_1DB32E354(v8, v7);

  sub_1DB34504C(v6, v8, a2);
}

void sub_1DB4AE374(_BOOL4 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*v4 + 16);
  sub_1DB3483BC(a2, a3);

  sub_1DB344D70(v9, a2, a3, a1, a4);
}

void sub_1DB4AE3F8()
{
  v2 = *(*(*v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1DB349348((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

void sub_1DB4AE468()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB349330((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DB4AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1DB4AE5A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1DB4AE5E4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB4AE69C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DB4AE5E4(a1, &a1[a2]);
  }

  v3 = sub_1DB509A70();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DB509A30();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DB509CC0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DB4AE7B8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1DB4AE88C(v0);
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1DB4AE828()
{
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DB4AE88C(uint64_t a1)
{
  v2 = sub_1DB314310(MEMORY[0x1E69E7CC0]);
  v3 = sqlite3_column_count(*(a1 + 16));
  if (v3 < 0)
  {
    goto LABEL_20;
  }

  v4 = v3;
  if (!v3)
  {
    return v2;
  }

  v5 = 0;
  while (1)
  {
    if (!sqlite3_column_name(*(a1 + 16), v5))
    {
      goto LABEL_5;
    }

    v7 = sub_1DB50A790();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1DB306160(v7, v9);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_1DB31BD24(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1DB306160(v7, v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v22 = v11;
    sub_1DB3129F8();
    v11 = v22;
    if (v17)
    {
LABEL_4:
      v6 = v11;

      *(v2[7] + 4 * v6) = v5;
      goto LABEL_5;
    }

LABEL_13:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v9;
    *(v2[7] + 4 * v11) = v5;
    v20 = v2[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v21;
LABEL_5:
    if (v4 == ++v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB4AEA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int *a4@<X8>)
{
  v20 = a4;
  v8 = sub_1DB50A6B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v19[0] = a1;
  v19[1] = a2;
  sub_1DB50A690();
  sub_1DB301E30();
  v14 = sub_1DB50B1D0();
  (*(v9 + 8))(v12, v8);
  if (qword_1EE30D758 != -1)
  {
    swift_once();
  }

  if (v14)
  {
    v15 = (v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = sqlite3_bind_text(v13, a3, v15, -1, qword_1EE30D750);

  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v16, qword_1EE312D90);
  if (result)
  {
    *v20 = v16;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DB4AEC50()
{
  result = qword_1ECC46BA0;
  if (!qword_1ECC46BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BA0);
  }

  return result;
}

uint64_t sub_1DB4AECD8(uint64_t a1, int a2)
{
  v6 = *v2;
  v5 = v2[1];

  v7 = sub_1DB4AF004(v6, v5, a1, a2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v7, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DB4AEDA4(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int(*(a1 + 16), a2, *v2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v3, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DB4AEE50(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int64(*(a1 + 16), a2, *v2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v3, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

sqlite3_stmt *sub_1DB4AEEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v7) = a3;
  result = sub_1DB509A40();
  v11 = result;
  if (!result)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      result = sub_1DB509A50();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (v11)
      {
        v7 = v14;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          result = *(a4 + 16);
          if (qword_1EE30D758 == -1)
          {
            return sqlite3_bind_blob(result, a5, v11, v7, qword_1EE30D750);
          }

LABEL_18:
          v15 = result;
          swift_once();
          result = v15;
          return sqlite3_bind_blob(result, a5, v11, v7, qword_1EE30D750);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_1DB509A60();
  if (!__OFSUB__(a1, result))
  {
    v11 = (v11 + a1 - result);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1DB4AF004(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      goto LABEL_9;
    }

    memset(v17, 0, 14);
    a1 = *(a3 + 16);
    if (qword_1EE30D758 == -1)
    {
LABEL_11:
      v7 = qword_1EE30D750;
      v8 = a4;
      v6 = 0;
LABEL_12:
      v11 = sqlite3_bind_blob(a1, v8, v17, v6, v7);

      goto LABEL_13;
    }

LABEL_15:
    v16 = a1;
    swift_once();
    a1 = v16;
    goto LABEL_11;
  }

  if (!v5)
  {
    v17[0] = a1;
    LOWORD(v17[1]) = a2;
    BYTE2(v17[1]) = BYTE2(a2);
    BYTE3(v17[1]) = BYTE3(a2);
    BYTE4(v17[1]) = BYTE4(a2);
    BYTE5(v17[1]) = BYTE5(a2);
    a1 = *(a3 + 16);
    v6 = BYTE6(a2);
    if (qword_1EE30D758 != -1)
    {
      v14 = BYTE6(a2);
      v15 = *(a3 + 16);
      swift_once();
      v6 = v14;
      a1 = v15;
    }

    v7 = qword_1EE30D750;
    v8 = a4;
    goto LABEL_12;
  }

  v9 = a1;
  v10 = a1 >> 32;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v11 = sub_1DB4AEEFC(v9, v10, a2, a3, a4);

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1DB4AF204(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  sub_1DB509C00();
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v7, qword_1EE312D90))
  {
    sub_1DB388320();
    swift_allocError();
    *v4 = v7;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  v5 = sub_1DB509CA0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v2;
}

uint64_t sub_1DB4AF330@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_open_v2(a1, (a2 + 16), a3, 0);
  result = swift_endAccess();
  *a4 = v8;
  return result;
}

uint64_t sub_1DB4AF3B4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = sqlite3_close_v2(*(v0 + 16));
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v2, qword_1EE312D90))
  {
    sub_1DB388320();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
    if (qword_1ECC42250 != -1)
    {
      swift_once();
    }

    v5 = qword_1ECC46708;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    v24 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v7._object = 0x80000001DB5309D0;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    swift_getErrorValue();
    v23[3] = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_1DB301CDC(v23, v17);
    v18 = 0u;
    v19 = 0u;
    sub_1DB301D4C(v17, &v18);
    v20 = 0;
    v9 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v18;
    v14 = v19;
    v12[64] = v20;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v24 = v9;
    sub_1DB301DBC(v23);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v24;
    *&v18 = v5;
    LOBYTE(v23[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v6, v23);
  }

  return v1;
}

uint64_t sub_1DB4AF670()
{
  sub_1DB4AF3B4();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB4AF6C8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X2>, unsigned int *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_prepare_v2(*(a2 + 16), a1, -1, a3, 0);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v8, qword_1EE312D90);
  if (result)
  {
    *a4 = v8;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t TransientPreferences.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46BA8, &unk_1DB520ED0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t TransientPreferences.init()()
{
  v1 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46BA8, &unk_1DB520ED0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void TransientPreferences.subscript.getter(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

void sub_1DB4AF918(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a2, a3);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1DB4AF984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a3, v14);
  sub_1DB301CDC(a1, v13);
  v5 = *(*a2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(v13, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return sub_1DB301DBC(v13);
}

uint64_t TransientPreferences.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(a1, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

double sub_1DB4AFB08@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = *a1;
  if (*(*a1 + 16))
  {
    v10 = sub_1DB306160(v7, v8);
    v12 = v11;

    if (v12)
    {
      sub_1DB300B14(*(v9 + 56) + 32 * v10, a3);
      return result;
    }
  }

  else
  {
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void (*TransientPreferences.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB8uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_1DB30BE90(a2, v5);
  v7 = *(v2 + 16);
  *(v6 + 176) = v7;
  os_unfair_lock_lock((v7 + 24));
  sub_1DB4AFB08((v7 + 16), a2, (v6 + 80));
  os_unfair_lock_unlock((v7 + 24));
  return sub_1DB4AFC70;
}

void sub_1DB4AFC70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  if (a2)
  {
    sub_1DB301CDC(v2 + 80, v2 + 112);
    sub_1DB2FEA0C(v2, v2 + 40);
    os_unfair_lock_lock(v3 + 6);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1((v2 + 40), v4);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    sub_1DB301CDC(v2 + 112, v2 + 144);
    sub_1DB30D454(v2 + 144, v6, v8);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 112);
  }

  else
  {
    os_unfair_lock_lock(v3 + 6);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_1DB301CDC(v2 + 80, v2 + 40);
    sub_1DB30D454(v2 + 40, v11, v13);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  sub_1DB301DBC(v2 + 80);

  free(v2);
}

void TransientPreferences.removeValue(forKey:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB4B00F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB4AFE20(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1DB30F708(v4, v5, v7);

  return sub_1DB301DBC(v7);
}

uint64_t TransientPreferences.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TransientPreferences.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DB4AFF0C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1DB4AFF74(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(a1, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

void (*sub_1DB4B002C(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = TransientPreferences.subscript.modify(v4, a2);
  return sub_1DB48C338;
}

void sub_1DB4B00A4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB4B0164(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB4B017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = 0;

  result = sub_1DB4ABE94(a1, a2, v5, v25, v24);
  if (v4)
  {
LABEL_15:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v10 = v25[0];
  if (v25[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v10;
    *(inited + 24) = 0;
    sub_1DB4B03C0(a3);
    while (1)
    {
      v12 = *(inited + 16);
      v13 = sqlite3_step(v12);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      v14 = qword_1EE312D90;
      if (!*(qword_1EE312D90 + 16))
      {
        break;
      }

      v15 = *(qword_1EE312D90 + 40);
      sub_1DB50BCF0();
      sub_1DB50BD20();
      v16 = sub_1DB50BD30();
      v17 = -1 << *(v14 + 32);
      v18 = v16 & ~v17;
      if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (*(*(v14 + 48) + 4 * v18) != v13)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v13 != 100)
      {
        swift_setDeallocating();
        sqlite3_finalize(v12);
        v23 = *(inited + 24);

        goto LABEL_15;
      }
    }

LABEL_14:
    sub_1DB388320();
    swift_allocError();
    *v20 = v13;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v12);
    v21 = *(inited + 24);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4B03C0(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  result = sqlite3_bind_parameter_count(*(v3 + 16));
  if (v5 == result)
  {
    if (v5)
    {
      v7 = 0;
      v8 = a1 + 32;
      do
      {
        v20 = v7;
        result = sub_1DB388374(v8 + 40 * v7, &v21);
        if (v23 == 1)
        {
          break;
        }

        v26 = v21;
        v27 = v22;
        v28 = v23;
        v9 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        if (v9 < 0xFFFFFFFF80000000)
        {
          goto LABEL_26;
        }

        if (v9 > 0x7FFFFFFF)
        {
          goto LABEL_27;
        }

        sub_1DB388374(&v26, &v24);
        if (v25)
        {
          sub_1DB2FEA0C(&v24, &v20);
          v10 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1(&v20, v22);
          (*(v11 + 8))(v3, v9, v10, v11);
          sub_1DB3883E4(&v26);
          result = __swift_destroy_boxed_opaque_existential_0(&v20);
          if (v2)
          {
            return result;
          }
        }

        else
        {
          sub_1DB3883E4(&v24);
          v12 = sqlite3_bind_null(*(v3 + 16), v9);
          if (qword_1EE30C820 != -1)
          {
            swift_once();
          }

          v13 = qword_1EE312D90;
          if (!*(qword_1EE312D90 + 16) || (v14 = *(qword_1EE312D90 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v15 = sub_1DB50BD30(), v16 = -1 << *(v13 + 32), v17 = v15 & ~v16, ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
          {
LABEL_23:
            sub_1DB388320();
            swift_allocError();
            *v19 = v12;
            *(v19 + 8) = 0;
            *(v19 + 16) = 0;
            swift_willThrow();
            return sub_1DB3883E4(&v26);
          }

          v18 = ~v16;
          while (*(*(v13 + 48) + 4 * v17) != v12)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          result = sub_1DB3883E4(&v26);
        }

        ++v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    sub_1DB4B0670();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DB4B0670()
{
  result = qword_1ECC46BB0;
  if (!qword_1ECC46BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BB0);
  }

  return result;
}

unint64_t SQLiteError.errorDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    sub_1DB50B320();

    v7 = 0xD000000000000015;
    MEMORY[0x1E1285C70](v1, v2);
  }

  else
  {
    sub_1DB50B320();

    v7 = 0xD00000000000001ELL;
    if (sqlite3_errstr(v1))
    {
      v3 = sub_1DB50A790();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }

    MEMORY[0x1E1285C70](v3, v5);
  }

  return v7;
}

uint64_t SQLiteError.errorCode.getter()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

unint64_t SQLiteError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v6;
  v7 = SQLiteError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v9 = 0x206E776F6E6B6E55;
  if (v8)
  {
    v9 = v7;
  }

  v10 = 0xED0000726F727265;
  if (v8)
  {
    v10 = v8;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  return v11;
}

uint64_t sub_1DB4B090C()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1DB4B0928(uint64_t a1)
{
  v2 = sub_1DB4B0BA0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB4B0964(uint64_t a1)
{
  v2 = sub_1DB4B0BA0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t SQLiteResult.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0A28()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0A9C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0AF4()
{
  result = sub_1DB3AD5F0(&unk_1F56F0080);
  qword_1EE312D90 = result;
  return result;
}

unint64_t sub_1DB4B0B20()
{
  result = qword_1EE30D960[0];
  if (!qword_1EE30D960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30D960);
  }

  return result;
}

unint64_t sub_1DB4B0BA0()
{
  result = qword_1ECC46BB8;
  if (!qword_1ECC46BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BB8);
  }

  return result;
}

uint64_t dispatch thunk of JetPackAssetDiskCacheMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DB306AF4;

  return v17(a1, a2, a3, a4, a5, a6);
}

void sub_1DB4B0E98(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (*(a1 + 16) && (v4 = sub_1DB30EDA8(v6), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v7);
    sub_1DB314BE8(v6);
    sub_1DB300B14(v7, v6);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v7);
      *a2 = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB314BE8(v6);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v6[0] == 1)
    {
      sub_1DB3CED20("JetCore/NetRequest.swift", 24, 2, 160);
    }

    *a2 = 0;
  }
}

uint64_t sub_1DB4B0FD4(uint64_t a1, char a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (!*(a1 + 16) || (v5 = sub_1DB30EDA8(v10), (v6 & 1) == 0))
  {
    sub_1DB314BE8(v10);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v10[0] == 1)
    {
      a3("JetCore/NetRequest.swift", 24, 2, 160);
    }

    v8 = 0;
    return v8 & 1;
  }

  sub_1DB300B14(*(a1 + 56) + 32 * v5, v11);
  sub_1DB314BE8(v10);
  sub_1DB300B14(v11, v10);
  result = swift_dynamicCast();
  if (result)
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
    v8 = a2;
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4B110C(uint64_t a1, uint64_t a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (*(a1 + 16) && (v5 = sub_1DB30EDA8(v9), (v6 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v5, v10);
    sub_1DB314BE8(v9);
    sub_1DB300B14(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_dynamicCast();
    if (result)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      return a2;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB314BE8(v9);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v9[0] == 1)
    {
      a3("JetCore/NetRequest.swift", 24, 2, 160);
    }

    return 0;
  }

  return result;
}

JetCore::AppleServicesEncoder::SigningStyle_optional __swiftcall AppleServicesEncoder.SigningStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppleServicesEncoder.SigningStyle.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x656D697270;
  if (*v0 != 2)
  {
    v2 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v1 = 0x746C7561666564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB4B132C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4B13E4()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB4B1488()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4B1548(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE500000000000000;
  v5 = 0x656D697270;
  if (*v1 != 2)
  {
    v5 = 0x6D726F6674616C70;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x746C7561666564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id AppleServicesEncoder.Configuration.init(bag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v3 = [objc_opt_self() ams_sharedAccountStore];
  *(a2 + 32) = sub_1DB4B1704();
  *(a2 + 40) = &protocol witness table for ACAccountStore;
  *(a2 + 8) = v3;
  result = [objc_opt_self() currentProcess];
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  return result;
}

unint64_t sub_1DB4B1704()
{
  result = qword_1ECC46BC0;
  if (!qword_1ECC46BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC46BC0);
  }

  return result;
}

uint64_t *AppleServicesEncoder.Configuration.withAccountProvider(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 8), a1);
}

void AppleServicesEncoder.Configuration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);

  objc_storeStrong((a2 + 48), a1);
}

uint64_t AppleServicesEncoder.Configuration.withMediaTokenService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);
  v5 = *(a2 + 56);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 56) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withProtocolHandlingEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB4B17A0(v2, a2);
  *(a2 + 64) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withAnonymityEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB4B17A0(v2, a2);
  *(a2 + 65) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withAllowedSchemes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);
  v5 = *(a2 + 72);

  *(a2 + 72) = a1;
  return result;
}

__n128 AppleServicesEncoder.init(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

void *AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB509EE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1DB509F00();
  v46 = *(v6 - 1);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB509C50();
  if (v11)
  {
    v12 = v11;
    v13 = v1[9];
    if (v13)
    {
      v14 = v10;
      if ((sub_1DB33114C(v10, v11, v13) & 1) == 0)
      {
        sub_1DB509ED0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DB50EE90;
        v22 = *MEMORY[0x1E696A578];
        *(inited + 32) = sub_1DB50A650();
        *(inited + 40) = v23;
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1DB50B320();

        v44 = 0x6020656D65686353;
        v45 = 0xE800000000000000;
        MEMORY[0x1E1285C70](v14, v12);

        MEMORY[0x1E1285C70](0x726F662073692060, 0xEE006E6564646962);
        v24 = v44;
        v25 = v45;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v24;
        *(inited + 56) = v25;
        sub_1DB3135C0(inited);
        swift_setDeallocating();
        sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
        sub_1DB3DCB68();
        sub_1DB509B00();
        sub_1DB509EF0();
        (*(v46 + 8))(v9, v6);
        swift_willThrow();
        return v6;
      }
    }
  }

  v15 = v1[7];
  if (v15)
  {
    v16 = *v1;
    v17 = objc_allocWithZone(MEMORY[0x1E698C9C0]);
    swift_unknownObjectRetain();
    v6 = [v17 initWithTokenService:v15 bag:v16];
    [v6 setClientInfo_];
    [v6 setDisableResponseDecoding_];
    if (*(v2 + 65) & 1) != 0 || (v18 = *(a1 + *(type metadata accessor for NetRequest() + 44)), (sub_1DB4B0FD4(v18, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1DB3D1FFC)))
    {
      [v6 setAccount_];
    }

    else
    {
      v26 = sub_1DB4B110C(v18, &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty, sub_1DB3D1784);
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        v30 = v2[4];
        v31 = v2[5];
        __swift_project_boxed_opaque_existential_1(v2 + 1, v30);
        (*(v31 + 16))(&v44, v28, v29, v30, v31);
      }

      else
      {
        v37 = v2[4];
        v38 = v2[5];
        __swift_project_boxed_opaque_existential_1(v2 + 1, v37);
        (*(v38 + 8))(&v44, v37, v38);
      }

      v39 = v44;
      [v6 setAccount_];
    }

    v40 = *(a1 + *(type metadata accessor for NetRequest() + 44));
    [v6 setExcludeIdentifierHeadersForAccount_];
    [v6 setAlwaysIncludeAuthKitHeaders_];
    [v6 setAlwaysIncludeMMeClientInfoAndDeviceHeaders_];
    sub_1DB4B110C(v40, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1DB3CF598);
    if (v41)
    {
      v42 = sub_1DB50A620();
    }

    else
    {
      v42 = 0;
    }

    [v6 setGsTokenIdentifier_];

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    [v6 setIncludeClientVersions_];
    [v6 setClientInfo_];
    [v6 setRequestEncoding_];
    [v6 setDisableResponseDecoding_];
    v19 = *(a1 + *(type metadata accessor for NetRequest() + 44));
    sub_1DB4B0E98(v19, &v44);
    v20 = qword_1DB5213C0[v44];
    [v6 setAnisetteType_];
    [v6 setMescalType_];
    if (*(v2 + 65) & 1) != 0 || (sub_1DB4B0FD4(v19, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1DB3D1FFC))
    {
      [v6 setAccount_];
    }

    else
    {
      v32 = v2[4];
      v33 = v2[5];
      __swift_project_boxed_opaque_existential_1(v2 + 1, v32);
      (*(v33 + 8))(&v44, v32, v33);
      v34 = v44;
      [v6 setAccount_];
    }

    sub_1DB4B110C(v19, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1DB3CF598);
    if (v35)
    {
      v36 = sub_1DB50A620();
    }

    else
    {
      v36 = 0;
    }

    [v6 setGsTokenIdentifier_];
  }

  return v6;
}

uint64_t AppleServicesEncoder.encodeRequest(fromContentsOf:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1DB509860();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4B2128, 0, 0);
}

uint64_t sub_1DB4B2128()
{
  v1 = v0[12];
  v0[16] = AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(v0[11]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1DB4B2220;
  v3 = v0[15];
  v4 = v0[11];

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(v3, v4);
}

uint64_t sub_1DB4B2220()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DB4B266C;
  }

  else
  {
    v3 = sub_1DB4B2334;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4B2334()
{
  v1 = v0[12];
  v0[19] = *(v1 + 80);
  v0[20] = *(v1 + 88);
  return MEMORY[0x1EEE6DFA0](sub_1DB4B2364, 0, 0);
}

uint64_t sub_1DB4B2364()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DB4B2424;
  v5 = swift_continuation_init();
  sub_1DB4B26D8(v5, v3, v4, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4B2424()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB4B25DC;
  }

  else
  {
    *(v1 + 176) = *(v1 + 80);
    v4 = sub_1DB4B2548;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4B2548()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[22];

  return v5(v6);
}

uint64_t sub_1DB4B25DC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[21];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4B266C()
{
  v1 = v0[16];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4B26D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DB5097F0();
  v10 = [a2 requestByEncodingRequest:v9 parameters:0];

  sub_1DB4DCF14(v10);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v16[3] = &type metadata for SyncTaskScheduler;
  v16[4] = &protocol witness table for SyncTaskScheduler;
  v14[0] = sub_1DB4B2B98;
  v14[1] = v11;
  v14[2] = sub_1DB4B2BA4;
  v14[3] = v12;
  sub_1DB30BE90(v16, v15);
  v15[40] = 0;
  sub_1DB4B2BAC(a4);

  sub_1DB30B580(v14);

  sub_1DB30623C(v14, &unk_1ECC42B40, &qword_1DB50F200);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_1DB4B2844(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a2)
  {
    a2(*a1);
  }

  **(*(a4 + 64) + 40) = v5;
  v6 = v5;

  return swift_continuation_throwingResume();
}

uint64_t sub_1DB4B28B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  swift_allocError();
  *v2 = a1;
  v3 = a1;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1DB4B2934(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DB466114;

  return AppleServicesEncoder.encodeRequest(fromContentsOf:)(a2);
}

unint64_t sub_1DB4B29D0()
{
  result = qword_1ECC46BE0;
  if (!qword_1ECC46BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore20AppleServicesEncoderV5FixUp33_0DFC7CF9731A972CF743C6FA8AAB7D04LLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DB4B2A84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DB4B2ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB4B2B44()
{
  result = qword_1ECC46BF0;
  if (!qword_1ECC46BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BF0);
  }

  return result;
}

uint64_t sub_1DB4B2BAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DB4B2BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB509DD0();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB509E90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 24))(v15, v14);
  v17 = v16;
  if (!a3)
  {

LABEL_9:
    sub_1DB509E80();
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v22 = sub_1DB509E50();
    (*(v26 + 8))(v8, v27);
    (*(v10 + 8))(v13, v9);
    v23 = ((v22 * 0x7777777777777777) >> 64) - v22;
    v30[3] = MEMORY[0x1E69E6530];
    v30[0] = (v23 >> 5) + (v23 >> 63);
    v24 = a1[3];
    v25 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v24);
    (*(v25 + 16))(v30, 0x656E6F7A656D6974, 0xEE0074657366664FLL, v24, v25);
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  if (!*(v16 + 16))
  {
  }

  v18 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v19 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v17 + 56) + 32 * v18, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v20 = sub_1DB33114C(v28, v29, a3);

  if (v20)
  {
    goto LABEL_9;
  }

  return result;
}

char *Promise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Promise();
  v12 = Promise.__allocating_init()();
  sub_1DB30BE90(a1, v17);
  v13 = swift_allocObject();
  v14 = *(v11 + 80);
  v13[2] = v14;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v12;
  sub_1DB2FEA0C(v17, (v13 + 8));
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v12;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1DB4B546C, v13, sub_1DB4B69D0, v15, a1);

  return v12;
}

uint64_t Promise.then()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4B30B4, 0, 0);
}

uint64_t sub_1DB4B30B4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_1DB4B3180;
  v4 = v0[2];
  v5 = v0[3];

  return sub_1DB4B3EB0(v4, 0, 0, sub_1DB4B5480, v5);
}

uint64_t sub_1DB4B3180()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4092E0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

char *Promise.__allocating_init(value:)(uint64_t a1)
{
  v3 = _s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

char *Promise.__allocating_init(error:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  *(&v11 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  return sub_1DB4B45F8(v7);
}

char *Promise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = Promise.__allocating_init()();
  v9 = swift_allocObject();
  v10 = *(v7 + 80);
  v9[2] = v10;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v8;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1DB4B62A8, v9, sub_1DB4B62B4, v11, a1);

  return v8;
}

char *Promise.__allocating_init()()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Promise.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - v4);
  type metadata accessor for Promise.Observer();
  *v5 = sub_1DB50A9D0();
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  swift_allocObject();
  return sub_1DB4B45F8(v5);
}

void Promise.resolve(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10 - 8];
  v12 = *(v1 + 2);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v11, &v1[v13], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v5 + 8))(v11, v4);
    os_unfair_lock_unlock(v12 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v15 = *v11;
  (*(*(v3 - 8) + 16))(v8, a1, v3);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v5 + 40))(&v1[v13], v8, v4);
  swift_endAccess();
  os_unfair_lock_unlock(v12 + 4);
  v16 = type metadata accessor for Promise.Observer();
  if (sub_1DB50AA00())
  {
    v17 = 0;
    v18 = v15 + 32;
    while (1)
    {
      v19 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(v16 - 8);
      (*(v20 + 16))(v23, v18, v16);
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B41D8(a1, v16);
      (*(v20 + 8))(v23, v16);
      ++v17;
      v18 += 80;
      if (v21 == sub_1DB50AA00())
      {
        goto LABEL_9;
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_9:
}

void Promise.reject(_:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10 - 8];
  v12 = *(v1 + 2);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v11, &v1[v13], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v5 + 8))(v11, v4);
    os_unfair_lock_unlock(v12 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v15 = *v11;
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v16 = a1;
  (*(v5 + 40))(&v1[v13], v8, v4);
  swift_endAccess();
  os_unfair_lock_unlock(v12 + 4);
  v17 = type metadata accessor for Promise.Observer();
  if (sub_1DB50AA00())
  {
    v18 = 0;
    v19 = v15 + 32;
    while (1)
    {
      v20 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(v17 - 8);
      (*(v21 + 16))(v24, v19, v17);
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B4414(a1, v17);
      (*(v21 + 8))(v24, v17);
      ++v18;
      v19 += 80;
      if (v22 == sub_1DB50AA00())
      {
        goto LABEL_9;
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t Promise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  sub_1DB30BE90(a5, v11);
  v11[40] = 0;

  sub_1DB4B4E8C(v10);
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Promise.Observer();
  return (*(*(v8 - 8) + 8))(v10, v8);
}

uint64_t Promise.always(on:perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  swift_retain_n();
  swift_retain_n();
  Promise.then(perform:orCatchError:on:)(sub_1DB3368E8, v7, sub_1DB3368E8, v8, a1);
}

void sub_1DB4B3E04()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  type metadata accessor for Result();
  v4 = sub_1DB50B120();
  v5 = sub_1DB4B68D0;
  v6 = v0;
  sub_1DB47D0C4(sub_1DB4B68EC, v3, v1);
}

uint64_t sub_1DB4B3EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1DB50AAD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1DB4B3F44, v6, v8);
}

uint64_t sub_1DB4B3F44()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB4B3FEC;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4B3FEC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

char *Promise.__allocating_init(on:executor:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = Promise.__allocating_init()();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v6;
  v10 = *(v8 + 8);

  v10(sub_1DB4B62F0, v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t sub_1DB4B41D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(*(v7 - 8) + 16))(v21, v8, v6);
  v9 = v21[0];
  if (v23)
  {
    (*(v4 + 16))(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    return sub_1DB3A06CC(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v3);
  }

  else
  {
    v11 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v12 = v19;
    v13 = v20;
    v17 = __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v4 + 16))(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v3;
    *(v15 + 3) = v9;
    *(v15 + 4) = v11;
    (*(v4 + 32))(&v15[v14], &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v16 = *(v13 + 8);

    v16(sub_1DB3B90A0, v15, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB4B4414(void *a1, uint64_t a2)
{
  v3 = v2;
  (*(*(a2 - 8) + 16))(v21, v3, a2);
  if (v23)
  {
    v6 = v21[0];
    v18[0] = a1;
    v7 = a1;
    v8 = *(a2 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    return sub_1DB3A07C4(v18, v6, v8, v9);
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(sub_1DB38B1CC, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

char *sub_1DB4B45BC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DB4B45F8(a1);
}

char *sub_1DB4B45F8(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  v5 = *(v3 + 96);
  v6 = *(v3 + 80);
  v7 = type metadata accessor for Promise.State();
  (*(*(v7 - 8) + 32))(&v1[v5], a1, v7);
  return v1;
}

uint64_t sub_1DB4B46B4(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s7JetCore7PromiseC7resolve7toValueyx_tF, a3, j___s7JetCore7PromiseC7resolve7toErrorys0F0_p_tF, a3);
}

uint64_t Promise.isResolved.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DB4B6318(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DB4B479C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Promise.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v11, v6);
  LOBYTE(v2) = swift_getEnumCaseMultiPayload() != 0;
  result = (*(v7 + 8))(v10, v6);
  *a2 = v2;
  return result;
}

uint64_t sub_1DB4B48EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Promise.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v16 - v9);
  v11 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, a1 + v11, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a2 = *v10;
    v15 = type metadata accessor for Result();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 8))(v10, v6);
      v13 = type metadata accessor for Result();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    (*(*(v5 - 8) + 32))(a2, v10, v5);
    v15 = type metadata accessor for Result();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t Promise.invalidate(_:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10 - 8];
  v12 = *(v1 + 2);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v11, &v1[v13], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *v11;
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v16 = a1;
    (*(v5 + 40))(&v1[v13], v8, v4);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    v17 = type metadata accessor for Promise.Observer();
    if (!sub_1DB50AA00())
    {
    }

    v18 = 0;
    for (i = v15 + 32; ; i += 80)
    {
      v20 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(v17 - 8);
      (*(v21 + 16))(v25, i, v17);
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B4414(a1, v17);
      (*(v21 + 8))(v25, v17);
      ++v18;
      if (v22 == sub_1DB50AA00())
      {
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_13:
    result = sub_1DB50B580();
    __break(1u);
    return result;
  }

  os_unfair_lock_unlock(v12 + 4);
  return (*(v5 + 8))(v11, v4);
}

void sub_1DB4B4E8C(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Promise.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  v16 = *(v2 + 2);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v2 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v15, &v2[v17], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = *v15;
    os_unfair_lock_unlock(v16 + 4);
    v21 = type metadata accessor for Promise.Observer();
    sub_1DB4B4414(v20, v21);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v7, v15, v3);
    os_unfair_lock_unlock(v16 + 4);
    v22 = type metadata accessor for Promise.Observer();
    sub_1DB4B41D8(v7, v22);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v26 = *v15;
    v19 = type metadata accessor for Promise.Observer();
    (*(*(v19 - 8) + 16))(v25, v24, v19);
    sub_1DB50AA60();
    sub_1DB50AA10();
    *v12 = v26;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v9 + 40))(&v2[v17], v12, v8);
    swift_endAccess();
    os_unfair_lock_unlock(v16 + 4);
  }
}

uint64_t sub_1DB4B51B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v6[0] = a1;
  v7 = 1;
  sub_1DB4B4E8C(v6);
  v3 = *(v2 + 80);
  v4 = type metadata accessor for Promise.Observer();
  return (*(*(v4 - 8) + 8))(v6, v4);
}

uint64_t sub_1DB4B5244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10(v7);
  Promise.resolve(_:)(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1DB4B534C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a4;
  v15 = *(a8 + 16);
  swift_retain_n();
  v15(sub_1DB4B69A4, v13, sub_1DB4B69D0, v14, a5, a7, a8);
  swift_unknownObjectRelease();
}

char *Promise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  v8 = Promise.__allocating_init()();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v8;
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v8;
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  swift_retain_n();
  swift_unknownObjectRetain();
  Promise.then(perform:orCatchError:on:)(sub_1DB4B6334, v9, sub_1DB4B6344, v10, v12);

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
}

uint64_t sub_1DB4B5604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v12);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a3;
  (*(v10 + 32))(&v15[v14], v13, a4);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a3;
  v20[3] = &type metadata for SyncTaskScheduler;
  v20[4] = &protocol witness table for SyncTaskScheduler;
  v17 = *(a6 + 16);
  swift_retain_n();
  v17(sub_1DB4B6914, v15, sub_1DB4B69D0, v16, v20, a5, a6);

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_1DB4B57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v17 - v12;
  v15 = *(v14 + 48);
  (*(*(a4 - 8) + 16))(&v17 - v12, a3, a4, v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v13[v15], a1, AssociatedTypeWitness);
  Promise.resolve(_:)(v13);
  return (*(v9 + 8))(v13, TupleTypeMetadata2);
}

char *Promise.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Promise.State();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DB4B5A50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return Promise.then()(a1);
}

void sub_1DB4B5B28(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a1;
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - v7;
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for Result();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(v10 + 16))(v13, v22, v9, v16);
  v19 = a2;
  Result.init(from:orElse:)(v13, a2, v4, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    Promise.reject(_:)(*v18);
  }

  else
  {
    (*(v5 + 32))(v8, v18, v4);
    Promise.resolve(_:)(v8);
    (*(v5 + 8))(v8, v4);
  }
}

void sub_1DB4B5D9C(char a1, id a2)
{
  if ((a1 & 1) != 0 || !a2)
  {
    sub_1DB3FB8C4();
  }

  else
  {
    v3 = a2;
    sub_1DB3DFCB8(a2);
  }
}

void sub_1DB4B5E3C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1DB3DFCB8(a1);
  }

  else
  {
    sub_1DB3FB8C4();
  }
}

char *static Promise.resolved(toError:)(void *a1)
{
  v2 = Promise.__allocating_init(error:)(a1);
  v3 = a1;
  return v2;
}

char *Promise.replace<A>(on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();

  return Promise.flatMap<A>(on:_:)(a1, a2, a3, v6, WitnessTable);
}

void sub_1DB4B5F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v13 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1DB47CFA0(v6, v21);
        sub_1DB47CFA0(v21, v18);
        v7 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB47D010(v21);
        }

        else
        {
          v8 = v18[1];

          sub_1DB2FEA0C(&v19, v15);
          v10 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          swift_unknownObjectRetain();

          v12(sub_1DB400EC8, v11, v10, v9);

          sub_1DB47D010(v21);
          __swift_destroy_boxed_opaque_existential_0(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB47D078(v13, 0);
  }
}

char *_s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Promise.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(*(v3 - 8) + 16))(&v11 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  return sub_1DB4B45F8(v7);
}

uint64_t sub_1DB4B6380(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Promise.State();
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

unint64_t sub_1DB4B643C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Promise.Observer();
  result = sub_1DB50AA60();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      result = sub_1DB35C910();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DB4B64DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1DB4B65F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DB4B67AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB4B6818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB4B6854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB4B68A4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1DB4B68EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1DB4B6914(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1DB4B57D8(a1, v1[5], v1 + ((*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80)), v1[2]);
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t JetPackSandboxExtensionFileStreamSource.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1DB301E24(v4, v5, v6, v7, v8);
}

uint64_t JetPackSandboxExtensionFileStreamSource.cacheKey.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t JetPackSandboxExtensionFileStreamSource.makeStream()()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = objc_allocWithZone(MEMORY[0x1E69AB840]);

  v4 = sub_1DB50A620();
  v5 = [v3 initWithPath_];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v5 = swift_allocError();
    v6 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;

  *(v7 + 16) = v8;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return v7;
}

uint64_t sub_1DB4B6B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1DB509BA0();
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_1DB4B6BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  v5 = sub_1DB509CA0();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4B6CBC, 0, 0);
}

uint64_t sub_1DB4B6CBC()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v4[5];
  v6 = v4[6];
  sub_1DB509BA0();
  v7 = sub_1DB509BB0();
  v9 = v8;
  v0[37] = v7;
  v0[38] = v8;
  (*(v2 + 8))(v1, v3);
  v10 = v4[12];
  v0[39] = v10;
  v11 = v4[13];
  v0[40] = v11;
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_1DB4B6DCC;

  return sub_1DB4880FC(v10, v11, v7, v9);
}

uint64_t sub_1DB4B6DCC()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4B6F10, 0, 0);
  }

  else
  {
    v4 = v3[38];

    v5 = v3[36];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DB4B6F10()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  sub_1DB50BEB0();
  v3 = *(v0 + 40);
  v26 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v27 = sub_1DB301BC0(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB530A90;
  v5._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  sub_1DB301CDC(v0 + 136, v0 + 168);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v7 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 56);
  v14 = *(v0 + 72);
  v12[64] = *(v0 + 88);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB301DBC(v0 + 136);
  v15._countAndFlagsBits = 0x4E656C6966202C20;
  v15._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 224) = v6;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  sub_1DB301CDC(v0 + 200, v0 + 232);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB301D4C(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v7);
  }

  v18 = *(v0 + 336);
  *(v7 + 2) = v17 + 1;
  v19 = &v7[40 * v17];
  v20 = *(v0 + 96);
  v21 = *(v0 + 112);
  v19[64] = *(v0 + 128);
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  sub_1DB301DBC(v0 + 200);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v4 + 32) = v7;
  Logger.error(_:)(v4, v3, v26);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v23 = *(v0 + 288);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1DB4B7250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14 - v4;
  if (qword_1EE30E1A8 != -1)
  {
    v3 = swift_once();
  }

  v6 = *(v0 + 104);
  v16[0] = *(v0 + 96);
  v16[1] = v6;
  v7 = *(qword_1EE312DD8 + 16);
  MEMORY[0x1EEE9AC00](v3);
  *(&v14 - 2) = v16;
  os_unfair_lock_lock(v7 + 6);
  sub_1DB37795C(v15);
  os_unfair_lock_unlock(v7 + 6);

  v8 = sub_1DB50ABA0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1DB4B8DA0(v0, v15);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = v15[5];
  *(v9 + 96) = v15[4];
  *(v9 + 112) = v10;
  *(v9 + 128) = v15[6];
  v11 = v15[1];
  *(v9 + 32) = v15[0];
  *(v9 + 48) = v11;
  v12 = v15[3];
  *(v9 + 64) = v15[2];
  *(v9 + 80) = v12;
  sub_1DB388F14(0, 0, v5, &unk_1DB521638, v9);
}

uint64_t sub_1DB4B742C(uint64_t a1)
{
  if (qword_1EE30E1A8 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(v1 + 104);
  v5[2] = *(v1 + 96);
  v5[3] = v2;
  v3 = *(qword_1EE312DD8 + 16);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 6);
  sub_1DB4B8D58(v5);
  os_unfair_lock_unlock(v3 + 6);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DB4B7518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB4B7560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4B768C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  v14 = *(*v7 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v15 = sub_1DB50BD30();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == a2 && v19[1] == a3;
      if (v20 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v24 = (*(v13 + 48) + 16 * v17);
    v25 = v24[1];
    *a1 = *v24;
    a1[1] = v25;

    return 0;
  }

  else
  {
LABEL_9:
    v21 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v7;

    sub_1DB4B8188(a2, a3, v17, isUniquelyReferenced_nonNull_native, a4, a5, a6, a7);
    *v7 = v28;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB4B77FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v9 = sub_1DB50BD30();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DB50BA30() & 1) != 0)
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

    sub_1DB4B8320(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB4B794C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DB50BCF0();
  if (a2)
  {
    MEMORY[0x1E12871F0](0);
    v7 = a2;
  }

  else
  {
    v7 = 1;
  }

  MEMORY[0x1E12871F0](v7);
  v8 = sub_1DB50BD30();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_11:
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1DB4B84A0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
    result = 1;
    goto LABEL_12;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v5 + 48) + 8 * v10);
    if (v12)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v12 != a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  result = 0;
LABEL_12:
  *a1 = a2;
  return result;
}

uint64_t sub_1DB4B7A68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB50B2E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 48) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v32 = 1 << *(v5 + 32);
    if (v32 >= 64)
    {
      bzero((v5 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    v4 = v33;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1DB4B7CC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
  result = sub_1DB50B2E0();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB4B7F20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43150, &unk_1DB521650);
  result = sub_1DB50B2E0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      sub_1DB50BCF0();
      if (v18)
      {
        MEMORY[0x1E12871F0](0);
        v20 = v18;
      }

      else
      {
        v20 = 1;
      }

      MEMORY[0x1E12871F0](v20);
      result = sub_1DB50BD30();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DB4B8188(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(void))
{
  v11 = result;
  v12 = *(*v8 + 16);
  v13 = *(*v8 + 24);
  if (v13 > v12 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB4B7A68(v12 + 1, a5, a6);
  }

  else
  {
    if (v13 > v12)
    {
      result = a8();
      goto LABEL_16;
    }

    sub_1DB4B8610(v12 + 1, a5, a6);
  }

  v14 = *v8;
  v15 = *(*v8 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  result = sub_1DB50BD30();
  v16 = -1 << *(v14 + 32);
  a3 = result & ~v16;
  if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v14 + 48) + 16 * a3);
      if (*v18 == v11 && v18[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB50BA30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v20 = *v8;
  *(*v8 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v11;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB50BC10();
  __break(1u);
  return result;
}

uint64_t sub_1DB4B8320(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB4B7CC0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB335AE0();
      goto LABEL_16;
    }

    sub_1DB4B8840(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  result = sub_1DB50BD30();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB50BA30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB50BC10();
  __break(1u);
  return result;
}

uint64_t sub_1DB4B84A0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1DB4B7F20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB335C3C();
      a2 = v7;
      goto LABEL_18;
    }

    sub_1DB4B8A78(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DB50BCF0();
  if (v4)
  {
    MEMORY[0x1E12871F0](0);
    v10 = v4;
  }

  else
  {
    v10 = 1;
  }

  MEMORY[0x1E12871F0](v10);
  result = sub_1DB50BD30();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      if (v13)
      {
        if (v13 == v4)
        {
LABEL_17:
          result = sub_1DB50BC10();
          __break(1u);
          break;
        }
      }

      else if (!v4)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_1DB4B8610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB50B2E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v20 = (*(v5 + 48) + 16 * (v17 | (v9 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v8 + 40);
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v8 + 48) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v5 + 56 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1DB4B8840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
  result = sub_1DB50B2E0();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DB4B8A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43150, &unk_1DB521650);
  result = sub_1DB50B2E0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1DB50BCF0();
      if (v17)
      {
        MEMORY[0x1E12871F0](0);
        v19 = v17;
      }

      else
      {
        v19 = 1;
      }

      MEMORY[0x1E12871F0](v19);
      result = sub_1DB50BD30();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_31;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DB4B8CB0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = sub_1DB4B77FC(v8, v3, v4);
  v6 = v8[0];
  v7 = v8[1];
  *a2 = result & 1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1DB4B8D18@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1DB335EC4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DB4B8D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB335EC4(**(v1 + 16), *(*(v1 + 16) + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB4B8DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB4B6BFC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DB4B8E88()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4B8EBC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4B8F20()
{
  if (*v0)
  {
    result = 0x69746375646F7270;
  }

  else
  {
    result = 0x6E69676775626564;
  }

  *v0;
  return result;
}

uint64_t sub_1DB4B8F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69676775626564 && a2 == 0xE900000000000067;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB4B9050(uint64_t a1)
{
  v2 = sub_1DB4B9468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B908C(uint64_t a1)
{
  v2 = sub_1DB4B9468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4B90C8(uint64_t a1)
{
  v2 = sub_1DB4B9510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B9104(uint64_t a1)
{
  v2 = sub_1DB4B9510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4B9140(uint64_t a1)
{
  v2 = sub_1DB4B94BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B917C(uint64_t a1)
{
  v2 = sub_1DB4B94BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonRequestTypeKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C10, &qword_1DB521670);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C18, &qword_1DB521678);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C20, &qword_1DB521680);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4B9468();
  sub_1DB50BE40();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1DB4B94BC();
    v18 = v22;
    sub_1DB50B7E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1DB4B9510();
    sub_1DB50B7E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1DB4B9468()
{
  result = qword_1ECC46C28;
  if (!qword_1ECC46C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C28);
  }

  return result;
}

unint64_t sub_1DB4B94BC()
{
  result = qword_1ECC46C30;
  if (!qword_1ECC46C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C30);
  }

  return result;
}

unint64_t sub_1DB4B9510()
{
  result = qword_1ECC46C38;
  if (!qword_1ECC46C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C38);
  }

  return result;
}

uint64_t DaemonRequestTypeKind.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t DaemonRequestTypeKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C40, &qword_1DB521688);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C48, &qword_1DB521690);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C50, &unk_1DB521698);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4B9468();
  v17 = v37;
  sub_1DB50BDF0();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1DB50B7A0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1DB50B3E0();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v25 = &type metadata for DaemonRequestTypeKind;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1DB4B94BC();
    sub_1DB50B6A0();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1DB4B9510();
    sub_1DB50B6A0();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

unint64_t sub_1DB4B9A30()
{
  result = qword_1ECC46C58;
  if (!qword_1ECC46C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C58);
  }

  return result;
}

unint64_t sub_1DB4B9B68()
{
  result = qword_1ECC46C60;
  if (!qword_1ECC46C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C60);
  }

  return result;
}

unint64_t sub_1DB4B9BC0()
{
  result = qword_1ECC46C68;
  if (!qword_1ECC46C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C68);
  }

  return result;
}

unint64_t sub_1DB4B9C18()
{
  result = qword_1ECC46C70;
  if (!qword_1ECC46C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C70);
  }

  return result;
}

unint64_t sub_1DB4B9C70()
{
  result = qword_1ECC46C78;
  if (!qword_1ECC46C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C78);
  }

  return result;
}

unint64_t sub_1DB4B9CC8()
{
  result = qword_1ECC46C80;
  if (!qword_1ECC46C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C80);
  }

  return result;
}

unint64_t sub_1DB4B9D20()
{
  result = qword_1ECC46C88;
  if (!qword_1ECC46C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C88);
  }

  return result;
}

unint64_t sub_1DB4B9D78()
{
  result = qword_1ECC46C90;
  if (!qword_1ECC46C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C90);
  }

  return result;
}

uint64_t sub_1DB4B9DD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DB50A650();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CC8, &qword_1DB521A60);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C7A0 = result;
  return result;
}

uint64_t sub_1DB4B9EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44488, qword_1DB514F28);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C7B0 = result;
  return result;
}

void sub_1DB4B9F00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DB50A650();

    v2 = sub_1DB50A6D0();
    v4 = v3;

    if (qword_1ECC422D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DB33114C(v2, v4, qword_1ECC46CA0);
  }

  else
  {
    v5 = 0;
  }

  byte_1ECC46C98 = v5 & 1;
}

uint64_t sub_1DB4BA020()
{
  v0 = sub_1DB324B6C(&unk_1F56F0748);
  result = swift_arrayDestroy();
  qword_1ECC46CA0 = v0;
  return result;
}

uint64_t sub_1DB4BA0BC()
{
  v0 = sub_1DB324B6C(&unk_1F56F07A8);
  result = swift_arrayDestroy();
  qword_1ECC46CB0 = v0;
  return result;
}

uint64_t sub_1DB4BA134(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v5 = *a3;
  if (qword_1EE30C7A8 != -1)
  {
    swift_once();
  }

  result = sub_1DB50BEB0();
  if (v10)
  {
    v7 = sub_1DB33114C(v9, v10, v5);
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7 & 1;
  return result;
}

uint64_t sub_1DB4BA224(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1DB4BA26C()
{
  v0 = sub_1DB324B6C(&unk_1F56F07E8);
  result = swift_arrayDestroy();
  qword_1ECC46CC0 = v0;
  return result;
}

uint64_t sub_1DB4BA2B8()
{
  v0 = sub_1DB3ADB68(&unk_1F56F0628);
  sub_1DB424254(&unk_1F56F0648);
  if (qword_1EE30C7A8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  if (v4)
  {
    v1 = sub_1DB33114C(v3, v4, v0);
  }

  else
  {
    v1 = 0;
  }

  byte_1EE30C7D0 = v1 & 1;
  return result;
}

uint64_t BaseObjectGraph.injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB306AF4;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(a1, a2, a3);
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3);
}

void BaseObjectGraph.injectIfAvailable<A>(_:)()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000006DLL, 0x80000001DB530B00);
  sub_1DB50B580();
  __break(1u);
}

void BaseObjectGraph.inject<A>(_:)()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000062, 0x80000001DB530B70);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000006FLL, 0x80000001DB530BE0);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB4BA72C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v7 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB302744(0, *(v13 + 16) + 1, 1, v13);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302744((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = a3;
  *(v10 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D00, &qword_1DB521B60);
  v11 = swift_task_localValuePush();
  a1(v11);
  return swift_task_localValuePop();
}

char *sub_1DB4BA878(void (*a1)(char **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB302744(0, *(v14 + 2) + 1, 1, v14);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB302744((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D00, &qword_1DB521B60);
  v12 = swift_task_localValuePush();
  a1(&v14, v12);
  if (v4)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v14;
}

uint64_t sub_1DB4BAA00@<X0>(_OWORD *a1@<X8>)
{
  v5.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 25);
  sub_1DB4BC5A4(&v3[4], v1, &type metadata for JetPackAssetSession.Configuration, a1);
  os_unfair_lock_unlock(v3 + 25);
}

uint64_t sub_1DB4BABE8@<X0>(void *a1@<X8>)
{
  v5.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1DB4BDAC4(&v3[4], v1, &type metadata for Bag, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1DB4BADA8(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v8.i64[0] = v2;
  v8.i64[1] = v4;
  sub_1DB330884(&v8);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  v6 = a2(v5 + 4, v2, v2, v4);
  os_unfair_lock_unlock(v5 + 9);

  return v6;
}

uint64_t sub_1DB4BAFB4(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1DB330884(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 19);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 19);
}

uint64_t sub_1DB4BB150(uint64_t *a1, uint64_t *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8.i64[0] = v3;
  v8.i64[1] = v5;
  sub_1DB330884(&v8);
  v6 = *(v3 + 16);

  os_unfair_lock_lock(v6 + 15);
  a3(v6 + 4, v3, v3, v5);
  os_unfair_lock_unlock(v6 + 15);
}

uint64_t sub_1DB4BB2F0(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1DB330884(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 9);
}

uint64_t sub_1DB4BB48C@<X0>(uint64_t a1@<X8>)
{
  v5.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1DB4C0C2C(&v3[4], v1, &type metadata for IntentDispatchTimeout, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1DB4BB620(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v9.i64[0] = v2;
  v9.i64[1] = v4;
  sub_1DB330884(&v9);
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  a2(v5 + v6, v2, v2, v4);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1DB4BB81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1DB50A280();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v18;
  v70 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v70;
  }

  else
  {
    v60 = v4;
    v57 = v7;
    v65 = v17;
    v62 = a4;
    v21 = qword_1EE30EAE8;
    v68 = *(a1 + 8);

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v59 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v26 = swift_slowAlloc();
      v69 = v11;
      v27 = v26;
      v28 = v10;
      v29 = swift_slowAlloc();
      v71.tv_sec = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52CA10, &v71.tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v10 = v28;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v27;
      v11 = v69;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v36 = *(v11 + 8);
    v61 = v10;
    v69 = v11 + 8;
    v58 = v36;
    v36(v19, v10);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    v39 = v60;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v40 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v71.tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v70, v68, v66, v67);
    v67 = v39;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
    *a1 = v72;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v43 = v71.tv_sec;
    v44 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v46 = sub_1DB50A250();
    v47 = v65;
    sub_1DB50A2A0();
    v48 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v66) = v48;

      v49 = v63;
      sub_1DB50A2D0();

      v50 = v64;
      v51 = v57;
      if ((*(v64 + 88))(v49, v57) == *MEMORY[0x1E69E93E8])
      {
        v52 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v52 = 1;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      *(v54 + 1) = v52;
      *(v54 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v55 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v54 + 4) = v45 - v55;
      v47 = v65;
      v56 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, v66, v56, "MakeDependency", v53, v54, 0xCu);
      MEMORY[0x1E1288220](v54, -1, -1);
    }

    v58(v47, v61);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v45 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    *v62 = v72;
    swift_task_localValuePop();
    sub_1DB4CB894(v70, v68, 0, MEMORY[0x1E69E7CF8]);
  }
}

char *sub_1DB4BBEF4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v6 = sub_1DB50A280();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  v19 = *a1;
  if (*(a1 + 16))
  {
    v20 = *a1;

    return v19;
  }

  else
  {
    v59 = v6;
    v66 = v16;
    v72 = v4;
    v22 = qword_1EE30EAE8;
    v69 = *(a1 + 8);

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v70 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v63 = v19;
      v30 = v9;
      v31 = v29;
      v71.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v71.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v9 = v30;
      v19 = v63;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v10 = v70;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v10 + 16))(v14, v18, v9);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_1DB50A2B0();
    v62 = v9;
    v63 = v38;
    v39 = *(v10 + 8);
    v70 = v10 + 8;
    v60 = v39;
    v39(v18, v9);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v42 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    v44 = (v43 + 24);
    *(v43 + 16) = 0;
    v71.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v45 = v72;
    v21 = sub_1DB4BA878(v19, v69, v67, v68);
    v72 = v45;
    sub_1DB2FEB54();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v46 = v71.tv_sec;
    v47 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v48 = v47 / *&qword_1EE30ED50 + v46 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v49 = sub_1DB50A250();
    v50 = v66;
    sub_1DB50A2A0();
    LODWORD(v68) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v51 = v64;
      sub_1DB50A2D0();

      v52 = v65;
      v53 = v59;
      if ((*(v65 + 88))(v51, v59) == *MEMORY[0x1E69E93E8])
      {
        v54 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v52 + 8))(v51, v53);
        v67 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v44);
      v56 = *(v43 + 16);
      os_unfair_lock_unlock(v44);
      *(v55 + 4) = v48 - v56;
      v50 = v66;
      v57 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v49, v68, v57, "MakeDependency", v67, v55, 0xCu);
      MEMORY[0x1E1288220](v55, -1, -1);
    }

    v60(v50, v62);
    os_unfair_lock_lock((v42 + 24));
    *(v42 + 16) = v48 + *(v42 + 16);
    os_unfair_lock_unlock((v42 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  return v21;
}

uint64_t sub_1DB4BC5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v71 = a3;
  v70 = a2;
  v67 = sub_1DB50A280();
  v66 = *(v67 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  result = sub_1DB30C4B8(a1, v76, &qword_1ECC46DB8, &qword_1DB521C20);
  if (v77)
  {
    v21 = v76[3];
    a4[2] = v76[2];
    a4[3] = v21;
    a4[4] = v76[4];
    v22 = v76[1];
    *a4 = v76[0];
    a4[1] = v22;
  }

  else
  {
    v68 = v13;
    v78 = v4;
    v72 = *(&v76[0] + 1);
    v62 = *&v76[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v64 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v69 = v9;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v73 = v10;
      v29 = v28;
      v30 = swift_slowAlloc();
      v75[0].tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v75[0].tv_sec);
      v31 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v32 = v30;
      v9 = v69;
      MEMORY[0x1E1288220](v32, -1, -1);
      v33 = v29;
      v10 = v73;
      MEMORY[0x1E1288220](v33, -1, -1);
    }

    (*(v10 + 16))(v16, v19, v9);
    v34 = sub_1DB50A2C0();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v37 = *(v10 + 8);
    v73 = v10 + 8;
    v63 = v37;
    v37(v19, v9);
    static MonotonicTime.now.getter(v75);
    tv_sec = v75[0].tv_sec;
    tv_nsec = v75[0].tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v40 = v75[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v75[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v43 = v78;
    sub_1DB4BA72C(v62, v72, v70, v71);
    v78 = v43;
    sub_1DB30623C(a1, &qword_1ECC46DB8, &qword_1DB521C20);
    sub_1DB400AF8(v75, a1);
    *(a1 + 80) = 1;
    static MonotonicTime.now.getter(&v74);
    v44 = v74.tv_sec;
    v45 = v74.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v46 = v45 / *&qword_1EE30ED50 + v44 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v47 = sub_1DB50A250();
    v48 = v68;
    sub_1DB50A2A0();
    v49 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v71) = v49;

      v50 = v65;
      sub_1DB50A2D0();

      v51 = v66;
      v52 = v67;
      if ((*(v66 + 88))(v50, v67) == *MEMORY[0x1E69E93E8])
      {
        v53 = 0;
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v50, v52);
        v54 = "selfTime=%f";
        v53 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v53;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v57 = v68;
      v58 = sub_1DB50A210();
      v59 = v54;
      v48 = v57;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v47, v71, v58, "MakeDependency", v59, v55, 0xCu);
      MEMORY[0x1E1288220](v55, -1, -1);
    }

    v63(v48, v69);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v46 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    v60 = v75[3];
    a4[2] = v75[2];
    a4[3] = v60;
    a4[4] = v75[4];
    v61 = v75[1];
    *a4 = v75[0];
    a4[1] = v61;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BCD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1DB50A280();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  sub_1DB30C4B8(a1, v72, &qword_1ECC46DC8, &qword_1DB521C38);
  if (v73)
  {
    return sub_1DB2FEA0C(v72, a4);
  }

  v63 = a4;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v59 = *&v72[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v61 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v58 = v7;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v11;
    v28 = v10;
    v29 = v27;
    v71[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v71[0].tv_sec);
    v30 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v30, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v31 = v29;
    v10 = v28;
    v11 = v62;
    MEMORY[0x1E1288220](v31, -1, -1);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  (*(v11 + 16))(v16, v19, v10);
  v32 = sub_1DB50A2C0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v35 = *(v11 + 8);
  v62 = v10;
  v60 = v35;
  v35(v19, v10);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v38 = v71[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  v40 = (v39 + 24);
  *(v39 + 16) = 0;
  v71[0].tv_sec = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v41 = v74;
  sub_1DB4BA72C(v59, v68, v65, v66);
  v74 = v41;
  sub_1DB30623C(a1, &qword_1ECC46DC8, &qword_1DB521C38);
  sub_1DB30BE90(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v42 = v70.tv_sec;
  v43 = v70.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v44 = v43 / *&qword_1EE30ED50 + v42 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v45 = sub_1DB50A250();
  v46 = v69;
  sub_1DB50A2A0();
  LODWORD(v66) = sub_1DB50B060();

  v47 = sub_1DB50B0E0();
  v48 = v67;
  if (v47)
  {

    sub_1DB50A2D0();

    v49 = v64;
    v50 = v58;
    if ((*(v64 + 88))(v48, v58) == *MEMORY[0x1E69E93E8])
    {
      v51 = 0;
      v52 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v48, v50);
      v52 = "selfTime=%f";
      v51 = 1;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    *(v53 + 1) = v51;
    *(v53 + 2) = 2048;
    os_unfair_lock_lock(v40);
    v54 = *(v39 + 16);
    os_unfair_lock_unlock(v40);
    *(v53 + 4) = v44 - v54;
    v55 = v69;
    v56 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, v66, v56, "MakeDependency", v52, v53, 0xCu);
    v57 = v53;
    v46 = v55;
    MEMORY[0x1E1288220](v57, -1, -1);
  }

  v60(v46, v62);
  os_unfair_lock_lock((v38 + 24));
  *(v38 + 16) = v44 + *(v38 + 16);
  os_unfair_lock_unlock((v38 + 24));
  sub_1DB2FEA0C(&v71[0].tv_sec, v63);
  swift_task_localValuePop();
}