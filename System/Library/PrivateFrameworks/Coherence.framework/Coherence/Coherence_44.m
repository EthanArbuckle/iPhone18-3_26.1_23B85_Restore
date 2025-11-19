void *sub_1AE2080CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v42 = *MEMORY[0x1E69E9840];
  v39 = *v5;
  v11 = qword_1ED96F260;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  HIBYTE(v38) = v12;
  BYTE6(v38) = v13;
  BYTE5(v38) = v14;
  BYTE4(v38) = v15;
  BYTE3(v38) = v16;
  BYTE2(v38) = v17;
  LOWORD(v38) = v18;
  sub_1AE23BFBC();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
  v21 = &v20[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
  *v21 = a5;
  *(v21 + 1) = v19;
  v22 = &v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
  LOBYTE(v40) = 1;
  *v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 1) = MEMORY[0x1E69E7CC0];
  *(v22 + 2) = v23;
  *(v22 + 3) = v23;
  *(v22 + 4) = 0;
  v22[40] = 1;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v22[64] = 1;
  v24 = &v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v25 = *(a1 + 80);
  *(v24 + 4) = *(a1 + 64);
  *(v24 + 5) = v25;
  *(v24 + 12) = *(a1 + 96);
  v26 = *(a1 + 16);
  *v24 = *a1;
  *(v24 + 1) = v26;
  v27 = *(a1 + 48);
  *(v24 + 2) = *(a1 + 32);
  *(v24 + 3) = v27;
  *&v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a3;
  v41.receiver = v20;
  v41.super_class = type metadata accessor for CRStringDecoder();

  v28 = objc_msgSendSuper2(&v41, sel_init, v38);
  v40 = 0;
  v29 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v28 error:&v40];
  if (v29)
  {
    v30 = v29;
    v31 = v40;

    *(v7 + qword_1ED96F258) = v30;
  }

  else
  {
    v32 = v40;
    sub_1AE23BC9C();

    swift_willThrow();

    v33 = sub_1AE23BFEC();
    (*(*(v33 - 8) + 8))(v7 + v11, v33);
    v34 = *(*v7 + 48);
    v35 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

id sub_1AE20840C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = objc_allocWithZone(v6);
  *&v7[qword_1EB5BD4A8] = a1;
  v9.receiver = v7;
  v9.super_class = v6;

  result = objc_msgSendSuper2(&v9, sel_init);
  a4[3] = v6;
  *a4 = result;
  return result;
}

uint64_t sub_1AE208494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  result = sub_1AE207AF0(a1, a2);
  if (!v3)
  {
    v8 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA50, &qword_1AE25AAA0);
    a3[3] = result;
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1AE208508@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - v8;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a2 + 24);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v15 >= v17;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD000000000000013;
    *(v19 + 8) = 0x80000001AE25FD70;
    *(v19 + 16) = 0;
    swift_willThrow();

    v20 = a1;
    return sub_1ADFAECE8(v20);
  }

  v64 = a3;
  (*(v11 + 16))(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v10);
  v21 = type metadata accessor for ReplicaState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v26 = type metadata accessor for Replica();
  v27 = *(v26 - 8);
  v69 = a2;
  v28 = *(v27 + 56);
  v65 = a1;
  v28(v24 + v25, 1, 1, v26);
  (*(v11 + 32))(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v14, v10);
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v28(v9, 1, 1, v26);
  v29 = v69;
  swift_beginAccess();
  sub_1ADF92F3C(v9, v24 + v25, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v30 = v65;
  v31 = v65[3];
  v32 = v65[4];
  v33 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v34 = v65[3];
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  if (v31)
  {
    v35 = v65[4];
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v31);

  v36 = v74;
  sub_1ADDD6748(v34, v35, v29, &v72);
  if (v36)
  {

    v20 = v30;
    return sub_1ADFAECE8(v20);
  }

  v62 = v73;
  v63 = v72;
  v38 = *(v30 + 8);
  v39 = *(v38 + 16);
  if (v39)
  {
    v61 = v24;
    v71 = v33;
    sub_1ADE6F11C(0, v39, 0);
    v24 = 0;
    v33 = v71;
    v40 = (v38 + 64);
    v66 = v39;
    v67 = v38;
    while (v24 < *(v38 + 16))
    {
      v41 = *(v40 - 4);
      v70 = *(v40 - 3);
      v43 = *(v40 - 2);
      v42 = *(v40 - 1);
      v74 = *v40;
      v68 = v33;
      if (v41)
      {
        inited = v41;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      swift_retain_n();

      sub_1ADE42C78(v43);

      sub_1ADE0262C(inited, v29);

      AnyCRValue.init(from:)(v45, &v72);
      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
      }

      if (v43)
      {
        v47 = v42;
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
      }

      sub_1ADE42C78(v43);
      v48 = v47;
      v29 = v69;
      v49 = sub_1ADDF4A24(v46, v48, v69);

      sub_1ADE42CB8(v43);

      v73 = v49;
      v50 = v72;
      v33 = v68;
      v71 = v68;
      v52 = v68[2];
      v51 = v68[3];
      if (v52 >= v51 >> 1)
      {
        sub_1ADE6F11C((v51 > 1), v52 + 1, 1);
        v33 = v71;
      }

      ++v24;
      v33[2] = v52 + 1;
      v53 = &v33[2 * v52];
      v53[4] = v50;
      v53[5] = v49;
      v40 += 5;
      v39 = v66;
      v38 = v67;
      if (v66 == v24)
      {
        sub_1ADFAECE8(v65);
        v24 = v61;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1ADFAECE8(v30);
LABEL_33:
    v40 = MEMORY[0x1E69E7CC8];
    if (v33[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
      v54 = sub_1AE23DCDC();
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC8];
    }

    v72 = v54;
    sub_1AE211E38(v33, 1, &v72);
    v39 = v72;
    if (qword_1ED96B308 == -1)
    {
      goto LABEL_37;
    }
  }

  swift_once();
LABEL_37:
  v55 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v56 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA30, &qword_1AE253930);
  v57 = swift_allocObject();
  v57[3] = v40;
  v57[4] = v40;
  v57[5] = v40;
  v57[6] = 0;
  v57[2] = v24;
  swift_beginAccess();
  v58 = v57[3];
  v59 = v57[4];
  v60 = v62;
  v57[3] = v63;
  v57[4] = v60;

  swift_beginAccess();
  v57[5] = v39;
  v57[6] = v56;

  *v64 = v57;
  return result;
}

uint64_t sub_1AE208C50(int a1)
{
  v218 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v220 = &v212 - v4;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  v5 = *(*(v219 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v219);
  v8 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v212 - v9;
  v11 = type metadata accessor for Timestamp(0);
  v231 = *(v11 - 8);
  v12 = *(v231 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v251 = &v212 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v234 = &v212 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v235 = (&v212 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v246 = (&v212 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v226 = &v212 - v21;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  v22 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v244 = &v212 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v247 = (&v212 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v230 = &v212 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v229 = &v212 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v228 = &v212 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v250 = &v212 - v34;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v242 = *(v243 - 8);
  v35 = *(v242 + 64);
  v36 = MEMORY[0x1EEE9AC00](v243);
  v249 = (&v212 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v241 = (&v212 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA80, &qword_1AE25AAE8);
  v233 = *(v39 - 8);
  v40 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v227 = (&v212 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA88, &qword_1AE25AAF0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v240 = &v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v239 = (&v212 - v46);
  v222 = sub_1AE23C12C();
  v221 = *(v222 - 8);
  v47 = *(v221 + 64);
  result = MEMORY[0x1EEE9AC00](v222);
  v232 = &v212 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v1;
  v50 = *v1;
  if (!*v1)
  {
    return result;
  }

  v51 = [*(v50 + qword_1ED96F258) attributedString];
  v225 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA60, &unk_1AE25AAB0);
  v53 = swift_dynamicCastClassUnconditional();
  v54 = qword_1EB5BD4A8;
  swift_beginAccess();
  v55 = *(v53 + v54);

  v56 = v225;
  swift_unknownObjectRelease();
  v57 = *(v55 + 16);

  if (!v57)
  {
    return result;
  }

  v237 = v39;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548);
  v59 = v224 + *(v58 + 48);
  sub_1ADDCEDE0(v59, &qword_1EB5BEA78, &unk_1AE25AAD0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA70, &qword_1AE25AAC8);
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v215 = v59;
  v214 = v60;
  v213 = v62;
  v212 = v61 + 56;
  (v62)(v59, 1, 1);
  v256 = MEMORY[0x1E69E7CC8];
  v63 = qword_1ED96F258;
  [objc_msgSend(*(v56 + qword_1ED96F258) attributedString)];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEA90, &qword_1AE25AAF8);
  sub_1AE23CA3C();
  v216 = v63;
  v64 = [*(v56 + v63) attributedString];
  v65 = swift_dynamicCastClassUnconditional();
  v66 = qword_1EB5BD4A8;
  swift_beginAccess();
  v67 = *(v65 + v66);

  swift_unknownObjectRelease();
  v68 = *(v67 + 16);
  v248 = v11;
  v217 = v52;
  v69 = v249;
  if (v68)
  {
    v70 = v224[1];
    v253 = v67 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
    v252 = v70;
    swift_beginAccess();
    v71 = 0;
    v72 = &qword_1EB5BA270;
    v236 = (v231 + 56);
    v245 = v68;
    v223 = v67;
    do
    {
      if (v71 >= *(v67 + 16))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v73 = v72;
      sub_1ADDCEE40(v253 + *(v242 + 72) * v71, v69, v72, &unk_1AE253920);
      if (!*(*(v252 + 40) + 16) || (v74 = *v69, v75 = *(v252 + 40), , sub_1ADF4A434(v74), LOBYTE(v74) = v76, , (v74 & 1) == 0))
      {
        v102 = v69;
        v72 = v73;
        v103 = v73;
        v104 = &unk_1AE253920;
        goto LABEL_21;
      }

      v77 = v256;
      if (!*(v256 + 16))
      {
        goto LABEL_22;
      }

      v78 = sub_1ADF4A434(*v69);
      if ((v79 & 1) == 0)
      {
        goto LABEL_17;
      }

      v80 = *(v231 + 72);
      v81 = v69;
      v82 = v235;
      sub_1ADDD26C0(v77[7] + v80 * v78, v235, type metadata accessor for Timestamp);
      v83 = v82;
      v84 = v246;
      sub_1ADDD2788(v83, v246, type metadata accessor for Timestamp);
      v85 = v84;
      v86 = v81 + *(v243 + 44);
      v87 = *(v11 + 20);
      v88 = *(v85 + v87);
      v89 = *(v86 + v87);
      v90 = v88 < v89;
      if (v88 == v89 && (v91 = type metadata accessor for Replica(), v85 = v246, v92 = *(v91 + 20), v93 = *(v246 + v92), v94 = *(v86 + v92), v90 = v93 < v94, v93 == v94))
      {
        v95 = sub_1ADF5EB00();
        v85 = v246;
        v67 = v223;
        if ((v95 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v67 = v223;
        if (!v90)
        {
LABEL_16:
          sub_1ADDD2728(v85, type metadata accessor for Timestamp);
          v69 = v249;
LABEL_17:
          if (v77[2])
          {
            v96 = sub_1ADF4A434(*v69);
            if (v97)
            {
              v98 = v231;
              v99 = v77[7] + *(v231 + 72) * v96;
              v100 = v247;
              sub_1ADDD26C0(v99, v247, type metadata accessor for Timestamp);
              v101 = *(v98 + 56);
              v68 = v245;
              v101(v100, 0, 1, v11);
              v72 = v73;
              sub_1ADDCEDE0(v69, v73, &unk_1AE253920);
              v102 = v100;
              v103 = &qword_1EB5BA480;
              v104 = &qword_1AE25AAE0;
LABEL_21:
              sub_1ADDCEDE0(v102, v103, v104);
              goto LABEL_7;
            }
          }

LABEL_22:
          v105 = v247;
          (*v236)(v247, 1, 1, v11);
          sub_1ADDCEDE0(v105, &qword_1EB5BA480, &qword_1AE25AAE0);
          v106 = *v69;
          sub_1ADDD26C0(v69 + *(v243 + 44), v251, type metadata accessor for Timestamp);
          v107 = v256;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v254 = v107;
          v109 = sub_1ADF4A434(v106);
          v111 = *(v107 + 16);
          v112 = (v110 & 1) == 0;
          v113 = __OFADD__(v111, v112);
          v114 = v111 + v112;
          if (v113)
          {
            goto LABEL_97;
          }

          v115 = v110;
          if (*(v107 + 24) >= v114)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v132 = v109;
              sub_1ADF6F8FC();
              v109 = v132;
            }
          }

          else
          {
            sub_1ADF69E44(v114, isUniquelyReferenced_nonNull_native);
            v109 = sub_1ADF4A434(v106);
            if ((v115 & 1) != (v116 & 1))
            {
              goto LABEL_102;
            }
          }

          v11 = v248;
          v117 = v254;
          if (v115)
          {
            sub_1AE213988(v251, v254[7] + *(v231 + 72) * v109);
          }

          else
          {
            v254[(v109 >> 6) + 8] |= 1 << v109;
            *(v117[6] + 8 * v109) = v106;
            sub_1ADDD2788(v251, v117[7] + *(v231 + 72) * v109, type metadata accessor for Timestamp);
            v118 = v117[2];
            v113 = __OFADD__(v118, 1);
            v119 = v118 + 1;
            if (v113)
            {
              goto LABEL_98;
            }

            v117[2] = v119;
          }

          v256 = v117;
          v69 = v249;
          v72 = v73;
          sub_1ADDCEDE0(v249, v73, &unk_1AE253920);
          v68 = v245;
          goto LABEL_7;
        }
      }

      v120 = *v249;
      sub_1ADDD26C0(v86, v234, type metadata accessor for Timestamp);
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v77;
      v122 = sub_1ADF4A434(v120);
      v124 = v77[2];
      v125 = (v123 & 1) == 0;
      v113 = __OFADD__(v124, v125);
      v126 = v124 + v125;
      if (v113)
      {
        goto LABEL_99;
      }

      v127 = v123;
      if (v77[3] >= v126)
      {
        if ((v121 & 1) == 0)
        {
          v133 = v122;
          sub_1ADF6F8FC();
          v122 = v133;
        }
      }

      else
      {
        sub_1ADF69E44(v126, v121);
        v122 = sub_1ADF4A434(v120);
        if ((v127 & 1) != (v128 & 1))
        {
          goto LABEL_102;
        }
      }

      v11 = v248;
      v129 = v254;
      if (v127)
      {
        sub_1AE213988(v234, v254[7] + v122 * v80);
        sub_1ADDD2728(v246, type metadata accessor for Timestamp);
      }

      else
      {
        v254[(v122 >> 6) + 8] |= 1 << v122;
        *(v129[6] + 8 * v122) = v120;
        sub_1ADDD2788(v234, v129[7] + v122 * v80, type metadata accessor for Timestamp);

        sub_1ADDD2728(v246, type metadata accessor for Timestamp);
        v130 = v129[2];
        v113 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v113)
        {
          goto LABEL_100;
        }

        v129[2] = v131;
      }

      v69 = v249;
      v68 = v245;
      v72 = v73;
      v256 = v129;
      sub_1ADDCEDE0(v249, v73, &unk_1AE253920);
      v67 = v223;
LABEL_7:
      ++v71;
    }

    while (v68 != v71);
  }

  sub_1AE23C11C();
  v134 = [*(v225 + v216) attributedString];
  v135 = swift_dynamicCastClassUnconditional();
  v136 = qword_1EB5BD4A8;
  swift_beginAccess();
  v137 = *(v135 + v136);

  swift_unknownObjectRelease();
  v138 = 0;
  v139 = 0;
  v140 = *(v137 + 16);
  v236 = (v233 + 56);
  v235 = (v233 + 48);
  v246 = (v231 + 56);
  v247 = (v231 + 48);
  v141 = v228;
  v142 = v250;
  v143 = v241;
  v144 = v240;
  v234 = v137;
  v233 = v140;
  while (1)
  {
    v145 = v237;
    LODWORD(v253) = v138;
    if (v139 == v140)
    {
      v146 = 1;
      v252 = v140;
    }

    else
    {
      if (v139 >= *(v137 + 16))
      {
        goto LABEL_96;
      }

      v147 = v139 + 1;
      v148 = v137 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v139;
      v149 = *(v237 + 48);
      v150 = v227;
      *v227 = v139;
      sub_1ADDCEE40(v148, v150 + v149, &qword_1EB5BA270, &unk_1AE253920);
      sub_1ADDD2198(v150, v144, &qword_1EB5BEA80, &qword_1AE25AAE8);
      v146 = 0;
      v252 = v147;
    }

    (*v236)(v144, v146, 1, v145);
    v151 = v239;
    sub_1ADDD2198(v144, v239, &qword_1EB5BEA88, &qword_1AE25AAF0);
    if ((*v235)(v151, 1, v145) == 1)
    {
      break;
    }

    v249 = *v151;
    sub_1ADDD2198(v151 + *(v145 + 48), v143, &qword_1EB5BA270, &unk_1AE253920);
    v152 = v256;
    v153 = *(v256 + 16);
    v251 = v256;
    if (v153)
    {
      v154 = sub_1ADF4A434(*v143);
      v155 = v247;
      if (v156)
      {
        sub_1ADDD26C0(*(v152 + 56) + *(v231 + 72) * v154, v142, type metadata accessor for Timestamp);
        v157 = 0;
      }

      else
      {
        v157 = 1;
      }
    }

    else
    {
      v157 = 1;
      v155 = v247;
    }

    v158 = *v246;
    v159 = v248;
    (*v246)(v142, v157, 1, v248);
    sub_1ADDD26C0(v143 + *(v243 + 44), v141, type metadata accessor for Timestamp);
    v245 = v158;
    v158(v141, 0, 1, v159);
    v160 = *(v238 + 48);
    v161 = v142;
    v162 = v244;
    sub_1ADDCEE40(v161, v244, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v141, v162 + v160, &qword_1EB5BA480, &qword_1AE25AAE0);
    v163 = v141;
    v164 = *v155;
    if ((*v155)(v162, 1, v159) == 1)
    {
      sub_1ADDCEDE0(v163, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v250, &qword_1EB5BA480, &qword_1AE25AAE0);
      v165 = v164(v162 + v160, 1, v159);
      v166 = v164;
      v141 = v163;
      v143 = v241;
      if (v165 == 1)
      {
        sub_1ADDCEDE0(v162, &qword_1EB5BA480, &qword_1AE25AAE0);
        v142 = v250;
        v144 = v240;
        v167 = v251;
        goto LABEL_71;
      }

LABEL_62:
      sub_1ADDCEDE0(v162, &qword_1EB5BB7C0, &unk_1AE2514A0);
      v142 = v250;
LABEL_69:
      v144 = v240;
      v167 = v251;
LABEL_70:
      sub_1AE23C08C();
      goto LABEL_71;
    }

    v168 = v229;
    sub_1ADDCEE40(v162, v229, &qword_1EB5BA480, &qword_1AE25AAE0);
    v166 = v164;
    if (v164(v162 + v160, 1, v159) == 1)
    {
      v141 = v228;
      sub_1ADDCEDE0(v228, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v250, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDD2728(v168, type metadata accessor for Timestamp);
      v143 = v241;
      goto LABEL_62;
    }

    v169 = v162 + v160;
    v170 = v226;
    sub_1ADDD2788(v169, v226, type metadata accessor for Timestamp);
    v171 = *(v168 + *(v159 + 20)) == *(v170 + *(v159 + 20));
    v172 = v168;
    v143 = v241;
    if (!v171 || (v173 = type metadata accessor for Replica(), v172 = v229, *(v229 + *(v173 + 20)) != *(v170 + *(v173 + 20))))
    {
      sub_1ADDD2728(v170, type metadata accessor for Timestamp);
      v176 = v228;
      sub_1ADDCEDE0(v228, &qword_1EB5BA480, &qword_1AE25AAE0);
      v142 = v250;
      sub_1ADDCEDE0(v250, &qword_1EB5BA480, &qword_1AE25AAE0);
      v177 = v172;
      v141 = v176;
      sub_1ADDD2728(v177, type metadata accessor for Timestamp);
      sub_1ADDCEDE0(v244, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_69;
    }

    LODWORD(v223) = sub_1AE23BF8C();
    sub_1ADDD2728(v170, type metadata accessor for Timestamp);
    v174 = v228;
    sub_1ADDCEDE0(v228, &qword_1EB5BA480, &qword_1AE25AAE0);
    v142 = v250;
    sub_1ADDCEDE0(v250, &qword_1EB5BA480, &qword_1AE25AAE0);
    v175 = v172;
    v141 = v174;
    sub_1ADDD2728(v175, type metadata accessor for Timestamp);
    sub_1ADDCEDE0(v244, &qword_1EB5BA480, &qword_1AE25AAE0);
    v144 = v240;
    v167 = v251;
    if ((v223 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_71:
    if (v253)
    {
      sub_1ADDCEDE0(v143, &qword_1EB5BA270, &unk_1AE253920);
      v138 = 1;
    }

    else
    {
      if (*(v167 + 16) && (v178 = sub_1ADF4A434(*v143), (v179 & 1) != 0))
      {
        sub_1ADDD26C0(*(v167 + 56) + *(v231 + 72) * v178, v230, type metadata accessor for Timestamp);
        v180 = 0;
      }

      else
      {
        v180 = 1;
      }

      v181 = v230;
      v182 = v248;
      v245(v230, v180, 1, v248);
      sub_1ADDCEDE0(v143, &qword_1EB5BA270, &unk_1AE253920);
      v138 = (v166)(v181, 1, v182) == 1;
      sub_1ADDCEDE0(v181, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    v137 = v234;
    v140 = v233;
    v139 = v252;
  }

  v183 = v232;
  if (sub_1AE23C0AC())
  {
    (*(v221 + 8))(v183, v222);
  }

  if (((v218 | v253) & 1) == 0)
  {
    v198 = [*(v225 + v216) attributedString];
    v199 = swift_dynamicCastClassUnconditional();
    v200 = qword_1EB5BD4A8;
    swift_beginAccess();
    v201 = *(v199 + v200);

    swift_unknownObjectRelease();
    v255 = v201;
    v202 = v220;
    sub_1AE23C10C();
    v203 = sub_1AE23C0EC();
    v204 = *(v203 - 8);
    (*(v204 + 16))(v8, v202, v203);
    v205 = *(v219 + 36);
    sub_1AE213940(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    (*(v204 + 8))(v202, v203);
    sub_1AE23D41C();
    if (*&v8[v205] != v254)
    {
      sub_1AE213940(&qword_1EB5BB4E0, MEMORY[0x1E6969B30]);
      do
      {
        sub_1AE23CBDC();
        v206 = sub_1AE23D51C();
        v208 = *v207;
        v209 = v207[1];
        v206(&v254, 0);
        sub_1ADF9348C(v208, v209);
        sub_1AE23D41C();
      }

      while (*&v8[v205] != v254);
    }

    sub_1ADDCEDE0(v8, &qword_1EB5BB4C8, &unk_1AE24C640);
    v210 = v215;
    sub_1ADDCEDE0(v215, &qword_1EB5BEA78, &unk_1AE25AAD0);
    *v210 = v255;
    v211 = v214;
    (*(v221 + 32))(&v210[*(v214 + 44)], v232, v222);
    v213(v210, 0, 1, v211);
  }

  v184 = v224;
  v185 = *v224;
  if ((swift_isUniquelyReferenced_native() & 1) == 0)
  {
    v186 = *v184;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
    v188 = *(v187 + 48);
    v189 = *(v187 + 52);
    swift_allocObject();
    *v184 = sub_1AE207CE8(v186);
  }

  v190 = v220;
  sub_1AE23C10C();
  v191 = sub_1AE23C0EC();
  v192 = *(v191 - 8);
  (*(v192 + 16))(v10, v190, v191);
  v193 = *(v219 + 36);
  sub_1AE213940(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D46C();
  (*(v192 + 8))(v190, v191);
  sub_1AE23D41C();
  if (*&v10[v193] == v254)
  {
LABEL_87:
    sub_1ADDCEDE0(v10, &qword_1EB5BB4C8, &unk_1AE24C640);
    (*(v221 + 8))(v232, v222);
  }

  sub_1AE213940(&qword_1EB5BB4E0, MEMORY[0x1E6969B30]);
  while (1)
  {
    sub_1AE23CBDC();
    v194 = sub_1AE23D51C();
    v196 = *v195;
    v197 = v195[1];
    v194(&v254, 0);
    if (!*v184)
    {
      break;
    }

    if (__OFSUB__(v197, v196))
    {
      __break(1u);
      goto LABEL_95;
    }

    [*(*v184 + qword_1ED96F258) removeObjectsInRange_];
    sub_1AE23D41C();
    if (*&v10[v193] == v254)
    {
      goto LABEL_87;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE20ADC0()
{
  (*(*v0 + 88))(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    sub_1AE23CBAC();
    return __swift_destroy_boxed_opaque_existential_1(&v3);
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    return sub_1ADDCEDE0(&v3, &qword_1EB5BEA00, &qword_1AE25AA10);
  }
}

char *sub_1AE20B0E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = *(v3 + 296);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v16, v6);
  result = (*(v11 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 24))(a1, v5);
    (*(v11 + 8))(v10, v5);
    v18 = *(v4 + 48);
    v19 = *(v4 + 52);
    swift_allocObject();
    return sub_1ADDDA40C(v15);
  }

  return result;
}

void sub_1AE20B334(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 280);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  if (v2 == a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v20 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v20;
  }

  else
  {
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = *(*v12 + 296);
      swift_beginAccess();
      (*(v8 + 16))(v11, v13 + v14, v7);
      v15 = *(v6 - 8);
      v16 = *(v15 + 48);
      if (v16(v11, 1, v6) == 1)
      {
        __break(1u);
      }

      else
      {
        v17 = *(*v2 + 296);
        swift_beginAccess();
        if (v16(v2 + v17, 1, v6) != 1)
        {
          v18 = *(*(v5 + 288) + 8);
          v19 = *(v18 + 8);

          v19(v11, v6, v18);
          swift_endAccess();

          (*(v15 + 8))(v11, v6);
          return;
        }
      }

      __break(1u);
    }

    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v24[1] = 0xD00000000000001BLL;
    v24[2] = 0x80000001AE264250;
    v21 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v21);

    v22 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v25, v22);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v25);
    v23 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v23);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
  }
}

uint64_t sub_1AE20B70C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  if (v1 == a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v27[0] = v3;
    v27[1] = a1;
    v15 = *(v3 + 296);
    swift_beginAccess();
    v28 = *(v6 + 16);
    v28(v12, v1 + v15, v5);
    v16 = *(v4 - 8);
    v17 = *(v16 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      a1 = v5;
      v18 = *(*v14 + 296);
      swift_beginAccess();
      v28(v9, (v14 + v18), a1);
      if (v17(v9, 1, v4) != 1)
      {
        v19 = *(v27[0] + 288);
        v20 = *(v19 + 64);

        v21 = v20(v9, v4, v19);

        v22 = *(v16 + 8);
        v22(v9, v4);
        v22(v12, v4);
        return v21;
      }
    }

    __break(1u);
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v29 = 0xD00000000000001DLL;
  v30 = 0x80000001AE264230;
  v24 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v24);

  v25 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a1 + 88))(v31, v25);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v26 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v26);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

void sub_1AE20BAEC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = *v3;
  v9 = *(*v3 + 280);
  v55 = sub_1AE23D7CC();
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v53 = *(*(v7 + 288) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v45 - v22;
  if (v3 == a1)
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return;
  }

  v52 = v13;
  v46 = v21;
  v47 = v20;
  v48 = AssociatedTypeWitness;
  v49 = a2;
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v50 = a3;
  v51 = a1;
  v25 = *(v8 + 296);
  swift_beginAccess();
  a1 = *(v10 + 16);
  v26 = v55;
  (a1)(v16, &v3[v25], v55);
  v27 = *(v9 - 8);
  v28 = *(v27 + 48);
  if (v28(v16, 1, v9) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v29 = *(*v24 + 296);
  swift_beginAccess();
  v30 = v24 + v29;
  v31 = v52;
  (a1)(v52, v30, v26);
  v32 = v31;
  if (v28(v31, 1, v9) == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v56 = 0xD00000000000001DLL;
    v57 = 0x80000001AE264230;
    v42 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v42);

    v43 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v58, v43);
    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v58);
    v44 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v44);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v33 = v53;
  v34 = *(v53 + 40);

  v35 = v54;
  v34(v32, v49, v9, v33);
  v36 = *(v27 + 8);
  v36(v32, v9);
  v36(v16, v9);
  v37 = v48;
  v38 = *(v48 - 8);
  v39 = (*(v38 + 48))(v35, 1, v48);
  v40 = v50;
  if (v39 == 1)
  {

    (*(v46 + 8))(v35, v47);
    *v40 = 0u;
    *(v40 + 1) = 0u;
  }

  else
  {
    v50[3] = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v38 + 32))(boxed_opaque_existential_1, v35, v37);
  }
}

uint64_t sub_1AE20C044(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  if (v1 == a1)
  {
    v21 = 0;
    return v21 & 1;
  }

  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v27[0] = v3;
    v27[1] = a1;
    v15 = *(v3 + 296);
    swift_beginAccess();
    v28 = *(v6 + 16);
    v28(v12, v1 + v15, v5);
    v16 = *(v4 - 8);
    v17 = *(v16 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      a1 = v5;
      v18 = *(*v14 + 296);
      swift_beginAccess();
      v28(v9, (v14 + v18), a1);
      if (v17(v9, 1, v4) != 1)
      {
        v19 = *(v27[0] + 288);
        v20 = *(v19 + 88);

        v21 = v20(v9, v4, v19);

        v22 = *(v16 + 8);
        v22(v9, v4);
        v22(v12, v4);
        return v21 & 1;
      }
    }

    __break(1u);
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v29 = 0xD00000000000001DLL;
  v30 = 0x80000001AE264230;
  v24 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v24);

  v25 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a1 + 88))(v31, v25);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v26 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v26);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1AE20C420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 280);
  v44 = sub_1AE23D7CC();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v39 = *(v4 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v36 - v16;
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v43 = a1;
  v19 = *(v5 + 296);
  swift_beginAccess();
  v20 = *(v7 + 16);
  v20(v13, &v2[v19], v44);
  v21 = *(v6 - 8);
  v22 = *(v21 + 48);
  if (v22(v13, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  a1 = *(*v18 + 296);
  swift_beginAccess();
  v20(v10, (v18 + a1), v44);
  if (v22(v10, 1, v6) == 1)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v45 = 0xD00000000000001DLL;
    v46 = 0x80000001AE264230;
    v33 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v33);

    v34 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v47, v34);
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v47);
    v35 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v35);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  v23 = v39;
  v24 = *(v39 + 72);

  v25 = v40;
  v24(v10, v6, v23);
  v26 = *(v21 + 8);
  v26(v10, v6);
  v26(v13, v6);
  v27 = AssociatedTypeWitness;
  v28 = *(AssociatedTypeWitness - 8);
  v29 = (*(v28 + 48))(v25, 1, AssociatedTypeWitness);
  v30 = v42;
  if (v29 == 1)
  {

    result = (*(v37 + 8))(v25, v38);
    *v30 = 0u;
    *(v30 + 16) = 0u;
  }

  else
  {
    *(v42 + 24) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v28 + 32))(boxed_opaque_existential_1, v25, v27);
  }

  return result;
}

uint64_t sub_1AE20C93C(uint64_t a1)
{
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1ADDCEE40(a1, &v14, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v15)
  {
    return sub_1ADDCEDE0(&v14, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  sub_1ADDEE390(&v14, v16);
  sub_1ADDE4E28(v16, &v14);
  swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v10, 0, 1, AssociatedTypeWitness);
  v11 = *(*v1 + 296);
  swift_beginAccess();
  result = (*(*(v4 - 8) + 48))(v1 + v11, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 80))(v10, v4, v3);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v16);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1AE20CBA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 296);
  swift_beginAccess();
  v6 = *(v3 + 280);
  result = (*(*(v6 - 8) + 48))(v1 + v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 64))(a1, v6);
    return swift_endAccess();
  }

  return result;
}

char *sub_1AE20CCB8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, v4);
  result = (*(*(v3 - 8) + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + 48);
    v12 = *(v2 + 52);
    swift_allocObject();
    return sub_1ADDDA40C(v8);
  }

  return result;
}

uint64_t sub_1AE20CE4C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = *(*v2 + 280);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - v7;
  v10 = *(*(*(v9 + 288) + 16) + 8);
  v11 = *(v10 + 8);

  result = v11(v12, v5, v10);
  if (!v3)
  {
    return sub_1ADDD9FE4(v8, v5, a2);
  }

  return result;
}

uint64_t sub_1AE20CF40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, v4);
  v10 = *(v3 - 8);
  result = (*(v10 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(*(v2 + 288) + 16) + 8) + 24))(v3);
    return (*(v10 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_1AE20D118()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, v4);
  v10 = *(v3 - 8);
  result = (*(v10 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = (*(*(*(*(v2 + 288) + 16) + 8) + 32))(v3);
    (*(v10 + 8))(v8, v3);
    return v12;
  }

  return result;
}

void sub_1AE20D2F0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a1;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 280);
  v9 = sub_1AE23D7CC();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = *(v6 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v62 = *(AssociatedTypeWitness - 8);
  v20 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  if (v3 == a2)
  {
    v43 = 0;
LABEL_10:
    *a3 = v43;
    return;
  }

  v61 = v12;
  v55 = v23;
  v56 = v27;
  v52 = v26;
  v53 = v25;
  v54 = &v52 - v24;
  v57 = v16;
  v58 = AssociatedTypeWitness;
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v59 = a3;
    v60 = a2;
    v30 = *(v7 + 296);
    swift_beginAccess();
    v31 = v65;
    v32 = *(v64 + 16);
    v32(v15, &v3[v30], v65);
    v33 = *(v8 - 8);
    a2 = *(v33 + 48);
    if ((a2)(v15, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {
      v34 = *(*v29 + 296);
      swift_beginAccess();
      v35 = (v29 + v34);
      v36 = v61;
      v32(v61, v35, v31);
      if ((a2)(v36, 1, v8) != 1)
      {
        v37 = v57;
        v38 = *(v57 + 96);

        v39 = v56;
        v38(v63, v36, v8, v37);
        v40 = *(v33 + 8);
        v40(v36, v8);
        v40(v15, v8);
        v41 = v62;
        v42 = v58;
        if ((*(v62 + 48))(v39, 1, v58) == 1)
        {

          (*(v53 + 8))(v39, v55);
          v43 = 0;
        }

        else
        {
          v44 = v54;
          (*(v41 + 32))(v54, v39, v42);
          v45 = type metadata accessor for AnyCRDT.MergeableDeltaBoxHelper();
          v46 = v52;
          (*(v41 + 16))(v52, v44, v42);
          v47 = *(v45 + 48);
          v48 = *(v45 + 52);
          swift_allocObject();
          v43 = sub_1AE20F3C0(v46);

          (*(v41 + 8))(v44, v42);
        }

        a3 = v59;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v66 = 0xD00000000000001DLL;
  v67 = 0x80000001AE264230;
  v49 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v49);

  v50 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a2 + 88))(v68, v50);
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v68);
  v51 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v51);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1AE20D930(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return a2(a1);
}

uint64_t sub_1AE20D97C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = sub_1AE23D7CC();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v29 = *(v4 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  (*(**a1 + 80))(v32, v19);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (!v22)
  {
    v23(v15, 1, 1, AssociatedTypeWitness);
    (*(v12 + 8))(v15, v11);
    v27 = 0;
    return v27 & 1;
  }

  v23(v15, 0, 1, AssociatedTypeWitness);
  (*(v16 + 32))(v21, v15, AssociatedTypeWitness);
  v24 = *(*v2 + 296);
  swift_beginAccess();
  (*(v30 + 16))(v9, v2 + v24, v31);
  v25 = *(v5 - 8);
  result = (*(v25 + 48))(v9, 1, v5);
  if (result != 1)
  {
    v27 = (*(v29 + 104))(v21, v5);
    (*(v16 + 8))(v21, AssociatedTypeWitness);
    (*(v25 + 8))(v9, v5);
    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE20DD30(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 288);
  v5 = *(*v2 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  (*(**a1 + 80))(v23, v15);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (!v18)
  {
    v19(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    v22 = 0;
    return v22 & 1;
  }

  v19(v11, 0, 1, AssociatedTypeWitness);
  (*(v12 + 32))(v17, v11, AssociatedTypeWitness);
  v20 = *(*v2 + 296);
  swift_beginAccess();
  result = (*(*(v5 - 8) + 48))(v2 + v20, 1, v5);
  if (result != 1)
  {
    v22 = (*(v4 + 112))(v17, v5, v4);
    swift_endAccess();
    (*(v12 + 8))(v17, AssociatedTypeWitness);
    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE20E030@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 8);

  v13 = v25;
  result = v11(v12, AssociatedTypeWitness, v10);
  if (!v13)
  {
    v15 = type metadata accessor for AnyCRDT.MergeableDeltaBoxHelper();
    v17 = v22;
    v16 = v23;
    (*(v23 + 16))(v22, v9, AssociatedTypeWitness);
    v18 = *(v15 + 48);
    v19 = *(v15 + 52);
    swift_allocObject();
    v20 = sub_1AE20F3C0(v17);
    result = (*(v16 + 8))(v9, AssociatedTypeWitness);
    *v24 = v20;
  }

  return result;
}

uint64_t sub_1AE20E238(uint64_t a1)
{
  v2 = *v1;
  v48 = *(*(*v1 + 280) - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v39 - v4;
  v47 = v6;
  v7 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v39 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v29 = 0;
    return v29 & 1;
  }

  v21 = v20;
  v42 = v2;
  v43 = v9;
  v41 = v5;
  v22 = *(v2 + 296);
  swift_beginAccess();
  v45 = v13;
  v23 = *(v13 + 16);
  v23(v19, &v1[v22], v7);
  v24 = *(*v21 + 296);
  swift_beginAccess();
  v44 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v12, v19, v7);
  v23(&v12[v25], (v21 + v24), v7);
  v26 = v47;
  v27 = *(v48 + 48);
  if (v27(v12, 1, v47) != 1)
  {
    v40 = v19;
    v31 = v45;
    v30 = v46;
    v23(v46, v12, v7);
    if (v27(&v12[v25], 1, v26) != 1)
    {
      v32 = v26;
      v33 = v48;
      v34 = v41;
      (*(v48 + 32))(v41, &v12[v25], v32);
      v35 = *(*(v42 + 288) + 24);
      v29 = sub_1AE23CCBC();
      v36 = *(v33 + 8);
      v36(v34, v32);
      v37 = *(v31 + 8);
      v37(v40, v7);
      v36(v30, v32);
      v37(v12, v7);
      return v29 & 1;
    }

    (*(v31 + 8))(v40, v7);
    (*(v48 + 8))(v30, v26);
    goto LABEL_8;
  }

  v28 = *(v45 + 8);
  v28(v19, v7);
  if (v27(&v12[v25], 1, v26) != 1)
  {
LABEL_8:
    (*(v43 + 8))(v12, v44);
    v29 = 0;
    return v29 & 1;
  }

  v28(v12, v7);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1AE20E6CC()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 280);
  v3 = sub_1AE23D7CC();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v1, v3);
}

uint64_t sub_1AE20E758()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 280);
  v3 = sub_1AE23D7CC();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AnyCRDT.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 80);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

void *AnyCRDT.merge(_:)(uint64_t *a1)
{
  v2 = *a1;
  result = *v1;
  if (*v1 == v2)
  {
    if (qword_1ED9670C0 != -1)
    {

      return swift_once();
    }
  }

  else
  {
    v4 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = (*(*v6 + 168))();
      v7 = *v4;

      *v4 = v6;
    }

    return (*(*v6 + 96))(&v8, v2);
  }

  return result;
}

uint64_t sub_1AE20EB48(void *a1)
{
  v2 = *v1;
  if (v2 == *a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return (*(*v2 + 104))();
  }
}

uint64_t sub_1AE20EBEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = (*(*v6 + 168))();
    v7 = *v2;

    *v2 = v6;
  }

  return (*(*v6 + 144))(a1);
}

uint64_t sub_1AE20ED18(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 224))(&v4) & 1;
}

uint64_t sub_1AE20ED74(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = (*(*v6 + 168))();
    v7 = *v2;

    *v2 = v6;
  }

  v9 = v3;
  return (*(*v6 + 232))(&v9) & 1;
}

uint64_t sub_1AE20EF34@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_1AE20EF80@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 80);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

uint64_t sub_1AE20F2F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a1[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(boxed_opaque_existential_1, v1 + v3, AssociatedTypeWitness);
}

uint64_t sub_1AE20F3C0(uint64_t a1)
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1AE20F478(uint64_t a1)
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 16);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, v6);
}

uint64_t sub_1AE20F570(uint64_t a1)
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 32);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

uint64_t sub_1AE20F660()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(v0 + v1, AssociatedTypeWitness);
}

uint64_t sub_1AE20F710()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1AE20F7B8()
{
  v0 = *sub_1AE20F710();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE20FE10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v12, v4);
  (*(*(*(v3 + 208) + 8) + 24))(a1, v4);
  (*(v5 + 8))(v8, v4);
  return sub_1ADDF4784(v11);
}

uint64_t sub_1AE20FFCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  (*(*(*(v3 + 208) + 8) + 48))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AE210124(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(*(v2 + 208) + 8) + 56))(v3);
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t sub_1AE210274(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  swift_beginAccess();
  (*(*(*(v3 + 208) + 8) + 64))(a1, *(v3 + 200));
  return swift_endAccess();
}

uint64_t sub_1AE210320(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  return sub_1ADDF4784(v6);
}

uint64_t sub_1AE21044C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  (*(*(*(*(v3 + 208) + 8) + 8) + 16))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AE2105B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  (*(*(*(*(v2 + 208) + 8) + 8) + 24))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AE210714(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *(v7 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v9 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    return v9;
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1ADDCEDE0(&v12, &unk_1EB5BEB20, &qword_1AE24C510);
    return 0x6C61565243796E41;
  }
}

uint64_t sub_1AE2108B4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *(v7 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v9 = sub_1AE23E02C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    return v9;
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1ADDCEDE0(&v12, qword_1EB5BBE70, &unk_1AE25AA00);
    return 0x6C61565243796E41;
  }
}

uint64_t AnyCRValue.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 104);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

uint64_t AnyCRValue.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(**v1 + 128);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    v7 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = (*(*v9 + 144))();
      v10 = *v2;

      *v2 = v9;
    }

    return (*(*v9 + 136))(a1);
  }

  return result;
}

uint64_t sub_1AE210D00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v13 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v15 = 0xD000000000000017;
LABEL_16:
    *v14 = v15;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  if (*(a1 + 57) < 3u || ((v7 = *(v4 + 16), (~v7 & 0xF000000000000007) != 0) ? (v8 = ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 15) : (v8 = 0), !v8))
  {
    v9 = *(v4 + 16);
    if ((~v9 & 0xF000000000000007) != 0 && ((v9 >> 59) & 0x1E | (v9 >> 2) & 1) == 7)
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v10 = &unk_1ED966F48;
    }

    swift_beginAccess();
    if (v10[8])
    {
      v11 = *(v4 + 16);
      if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 7)
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v12 = &unk_1ED966F48;
      }

      swift_beginAccess();
      v17 = v12[8];
      v16 = v12[9];
      v18 = v12[10];
      if (v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xC000000000000000;
      }

      swift_retain_n();
      sub_1ADE56F74(v17, v16, v18);
      sub_1ADDE94BC(v19, v20, &v33);
      if (!v5)
      {
        v21 = v33;
        v22 = *(a1 + 16);
        if (v22)
        {
LABEL_26:
          v33 = v21;
          v23 = *(*v22 + 200);
          v31 = v21;

          sub_1ADDD86D8(v31, *(&v31 + 1));
          v24 = sub_1ADF4ADD8();
          v23(&type metadata for AnyCRDT, &v33, a1, 1, &type metadata for AnyCRDT, v24);
          sub_1ADDCC35C(v33, *(&v33 + 1));
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = swift_retain_n();
      CRKeyPath.init(from:)(v26, v32);
      if (!v2)
      {
        v21 = *v32;
        v22 = *(a1 + 16);
        if (v22)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }
    }
  }

  v27 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v28 = *(a1 + 40);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v27 >= v29;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v13 = 0x80000001AE25FC60;
    sub_1ADE42E40();
    swift_allocError();
    v15 = 0xD000000000000013;
    goto LABEL_16;
  }

  v31 = *(v28 + 16 * v27 + 32);
  sub_1ADDD86D8(*(v28 + 16 * v27 + 32), *(v28 + 16 * v27 + 40));
LABEL_38:

  *a2 = v31;
  return result;
}

uint64_t AnyCRValue.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 88))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE211204()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 88))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE211264()
{
  (*(**v0 + 80))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1AE2113C0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t sub_1AE21140C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 104);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

void *sub_1AE2115D8(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v58 - v11;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v18 = *a1;
  v19 = *(a2 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v18 >= v20;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v22 = 0xD000000000000013;
    *(v22 + 8) = 0x80000001AE25FD70;
    *(v22 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v60 = a4;
    v61 = a3;
    (*(v14 + 16))(v17, v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v13);
    v23 = type metadata accessor for ReplicaState();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    v62 = v4;
    v27 = v26;
    v28 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v29 = type metadata accessor for Replica();
    v30 = *(v29 - 8);
    v68 = a2;
    v31 = *(v30 + 56);
    v31(&v27[v28], 1, 1, v29);
    (*(v14 + 32))(&v27[OBJC_IVAR____TtC9Coherence12ReplicaState_identity], v17, v13);
    *&v27[OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter] = 0;
    *&v27[OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter] = 0;
    v31(v12, 1, 1, v29);
    v13 = v68;
    swift_beginAccess();
    sub_1ADF92F3C(v12, &v27[v28], &unk_1EB5B9E70, &unk_1AE240EC0);
    swift_endAccess();
    v32 = *(v63 + 3);
    if (v32)
    {
      v33 = *(v63 + 3);
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    if (v32)
    {
      v34 = *(v63 + 4);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v32);

    v35 = v62;
    sub_1ADDD6748(v33, v34, v13, &v65);
    if (v35)
    {
    }

    else
    {
      v37 = *(&v65 + 1);
      v36 = v65;
      v38 = *(v63 + 1);
      v39 = *(v38 + 16);
      v40 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v59 = *(&v65 + 1);
        v62 = v65;
        v63 = v27;
        v64 = MEMORY[0x1E69E7CC0];
        sub_1ADE6F234(0, v39, 0);
        v40 = v64;
        v41 = (v38 + 64);
        do
        {
          v42 = *(v41 - 3);
          v44 = *(v41 - 2);
          v43 = *(v41 - 1);
          v45 = *v41;
          v67[0] = *(v41 - 4);
          v67[1] = v42;
          v67[2] = v44;
          v67[3] = v43;
          v67[4] = v45;

          sub_1ADE42C78(v44);

          sub_1AE211C08(v67, v68, &v65);

          sub_1ADE42CB8(v44);

          v46 = v65;
          v47 = v66;
          v64 = v40;
          v49 = *(v40 + 16);
          v48 = *(v40 + 24);
          if (v49 >= v48 >> 1)
          {
            v58 = v65;
            sub_1ADE6F234((v48 > 1), v49 + 1, 1);
            v46 = v58;
            v40 = v64;
          }

          v41 += 5;
          *(v40 + 16) = v49 + 1;
          v50 = v40 + 24 * v49;
          *(v50 + 32) = v46;
          *(v50 + 48) = v47;
          --v39;
        }

        while (v39);
        v36 = v62;
        v27 = v63;
        v37 = v59;
      }

      if (v61)
      {
        v61(v40);
      }

      v51 = MEMORY[0x1E69E7CC8];
      if (*(v40 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
        v52 = sub_1AE23DCDC();
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC8];
      }

      *&v65 = v52;
      sub_1AE212DBC(v40, 1, &v65);
      v68 = v65;
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      v54 = *(qword_1ED96F2F8 + 40);
      sub_1AE23D6AC();
      v55 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA20, &qword_1AE25AA68);
      v13 = swift_allocObject();
      v13[3] = v51;
      v13[4] = v51;
      v13[5] = v51;
      v13[6] = 0;
      v13[2] = v27;
      swift_beginAccess();
      v56 = v13[3];
      v57 = v13[4];
      v13[3] = v36;
      v13[4] = v37;

      swift_beginAccess();
      v13[5] = v68;
      v13[6] = v55;
    }
  }

  return v13;
}

uint64_t sub_1AE211C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

  sub_1ADE0262C(inited, a2);

  AnyCRValue.init(from:)(v8, &v19);
  if (v3)
  {
  }

  if (a1[1])
  {
    v9 = a1[1];
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v9 = swift_initStaticObject();
  }

  swift_allocObject();

  sub_1ADDE77B4(v9, a2);

  AnyCRDT.init(from:)(&v18, v10);
  v11 = v18;
  v12 = a1[2];
  v13 = a1[3];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v12);
  v16 = sub_1ADDF4A24(v14, v15, a2);

  *a3 = v19;
  a3[1] = v11;
  a3[2] = v16;
  return result;
}

void sub_1AE211E38(void *a1, char a2, void *a3)
{
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_23;
  }

  LOBYTE(v7) = a2;
  v9 = a1[4];
  v8 = a1[5];

  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  v11 = sub_1ADF4A434(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1ADF6A1CC(v16, v7 & 1);
    v18 = *a3;
    v11 = sub_1ADF4A434(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = sub_1AE23E27C();
    __break(1u);
  }

  if (v7)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v3 = v11;
  sub_1ADF6FB38();
  v11 = v3;
  if (v17)
  {
LABEL_9:
    v3 = 0xD000000000000016;
    sub_1ADE42E40();
    v20 = swift_allocError();
    *v21 = 0xD000000000000016;
    *(v21 + 8) = 0x80000001AE262900;
    *(v21 + 16) = 0;
    swift_willThrow();
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v8;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](v3 + 5, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v5 != 1)
  {
    v7 = a1 + 7;
    v3 = 1;
    while (v3 < a1[2])
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      if (!v9)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_1ADF4A434(v9);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v15 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v28;
      if (v26[3] < v31)
      {
        sub_1ADF6A1CC(v31, 1);
        v32 = *a3;
        v27 = sub_1ADF4A434(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v9;
      *(v34[7] + 8 * v27) = v8;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_26;
      }

      ++v3;
      v34[2] = v36;
      v7 += 2;
      if (v5 == v3)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_1AE2121C8(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17 = (v57 - v16);
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v57[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v60 = *(v15 + 72);
  v62 = a1;
  sub_1ADDCEE40(a1 + v19, v57 - v16, &qword_1EB5BA380, &qword_1AE2423B0);
  v66 = *v17;
  v20 = v66;
  v59 = v18;
  sub_1ADDD2198(v17 + v18, v11, &qword_1EB5BB830, &unk_1AE25AA50);
  v21 = *a3;
  v22 = sub_1ADF4A434(v20);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1ADF6A484(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1ADF4A434(v20);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1AE23E27C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v34 = v22;
  sub_1ADF6FC9C();
  v22 = v34;
  if (v28)
  {
LABEL_9:
    sub_1ADE42E40();
    v31 = swift_allocError();
    *v32 = 0xD00000000000001DLL;
    *(v32 + 8) = 0x80000001AE2618E0;
    *(v32 + 16) = 0;
    swift_willThrow();
    v65 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCEDE0(v11, &qword_1EB5BB830, &unk_1AE25AA50);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(v35[6] + 8 * v22) = v20;
  v36 = v35[7];
  v58 = *(v8 + 72);
  sub_1ADDD2198(v11, v36 + v58 * v22, &qword_1EB5BB830, &unk_1AE25AA50);
  v37 = v35[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v35[2] = v38;
    v39 = v62;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v62 + v60 + v19;
    v41 = &qword_1EB5BB830;
    v42 = 1;
    while (v42 < *(v39 + 16))
    {
      sub_1ADDCEE40(v40, v17, &qword_1EB5BA380, &qword_1AE2423B0);
      v66 = *v17;
      v43 = v66;
      v44 = v41;
      sub_1ADDD2198(v17 + v59, v11, v41, &unk_1AE25AA50);
      v45 = *a3;
      v46 = sub_1ADF4A434(v43);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_1ADF6A484(v50, 1);
        v52 = *a3;
        v46 = sub_1ADF4A434(v43);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(v54[6] + 8 * v46) = v66;
      v41 = v44;
      sub_1ADDD2198(v11, v54[7] + v58 * v46, v44, &unk_1AE25AA50);
      v55 = v54[2];
      v26 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v42;
      v54[2] = v56;
      v40 += v60;
      v39 = v62;
      if (v61 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1AE21273C(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v58 - v9;
  v67 = sub_1AE23BFEC();
  v65 = *(v67 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_23;
  }

  v58 = v3;
  if (!*(a1 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v15 + 48);
  v19 = *(v64 + 80);
  v63 = a1;
  v20 = (v65 + 32);
  v59 = a1 + ((v19 + 32) & ~v19);
  sub_1ADDCEE40(v59, v17, &qword_1EB5BA3B0, &unk_1AE2423E0);
  v21 = *v20;
  (*v20)(v12, v17, v67);
  v60 = v18;
  sub_1ADDD2198(&v17[v18], v66, &qword_1EB5BB830, &unk_1AE25AA50);
  v22 = *a3;
  v23 = sub_1ADDDF300(v12);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    sub_1ADF6A810(v28, a2 & 1);
    v30 = *a3;
    v23 = sub_1ADDDF300(v12);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_6:
      sub_1AE23E27C();
      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    if (v29)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v35 = v23;
  sub_1ADF6FEF0();
  v23 = v35;
  if (v29)
  {
LABEL_10:
    sub_1ADE42E40();
    v32 = swift_allocError();
    *v33 = 0xD00000000000001DLL;
    *(v33 + 8) = 0x80000001AE2618E0;
    *(v33 + 16) = 0;
    swift_willThrow();
    v70 = v32;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCEDE0(v66, &qword_1EB5BB830, &unk_1AE25AA50);
      (*(v65 + 8))(v12, v67);

      return;
    }

    goto LABEL_27;
  }

LABEL_13:
  v36 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  v37 = v23;
  v21((v36[6] + *(v65 + 72) * v23), v12, v67);
  sub_1ADDD2198(v66, v36[7] + *(v62 + 72) * v37, &qword_1EB5BB830, &unk_1AE25AA50);
  v38 = v36[2];
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v27)
  {
    v36[2] = v39;
    if (v61 == 1)
    {
LABEL_23:

      return;
    }

    v40 = &qword_1EB5BB830;
    v41 = 1;
    while (v41 < *(v63 + 16))
    {
      sub_1ADDCEE40(v59 + *(v64 + 72) * v41, v17, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v42 = *v20;
      (*v20)(v12, v17, v67);
      v43 = v40;
      sub_1ADDD2198(&v17[v60], v66, v40, &unk_1AE25AA50);
      v44 = *a3;
      v45 = sub_1ADDDF300(v12);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v27 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v27)
      {
        goto LABEL_25;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_1ADF6A810(v49, 1);
        v51 = *a3;
        v45 = sub_1ADDDF300(v12);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v50)
      {
        goto LABEL_10;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v42((v53[6] + *(v65 + 72) * v45), v12, v67);
      v55 = v53[7] + *(v62 + 72) * v54;
      v40 = v43;
      sub_1ADDD2198(v66, v55, v43, &unk_1AE25AA50);
      v56 = v53[2];
      v27 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      ++v41;
      v53[2] = v57;
      if (v61 == v41)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1AE212DBC(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v37 = *(a1 + 40);
  v6 = *(a1 + 32);

  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *a3;
  v8 = sub_1ADF4A434(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  if (v7[3] < v13)
  {
    sub_1ADF6ACAC(v13, v5 & 1);
    v15 = *a3;
    v8 = sub_1ADF4A434(v6);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v8 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v8;
  sub_1ADF7021C();
  v8 = v20;
  if (v14)
  {
LABEL_9:
    sub_1ADE42E40();
    v17 = swift_allocError();
    *v18 = 0xD00000000000001DLL;
    *(v18 + 8) = 0x80000001AE2618E0;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  *(v21[6] + 8 * v8) = v6;
  *(v21[7] + 16 * v8) = v37;
  v22 = v21[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
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

  v21[2] = v23;
  if (v36 != 1)
  {
    v5 = (a1 + 64);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v37 = *v5;
      v6 = *(v5 - 1);

      if (!v6)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v26 = sub_1ADF4A434(v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v12 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v12)
      {
        goto LABEL_25;
      }

      v14 = v27;
      if (v25[3] < v30)
      {
        sub_1ADF6ACAC(v30, 1);
        v31 = *a3;
        v26 = sub_1ADF4A434(v6);
        if ((v14 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v14)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v33[6] + 8 * v26) = v6;
      *(v33[7] + 16 * v26) = v37;
      v34 = v33[2];
      v12 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v12)
      {
        goto LABEL_26;
      }

      ++v24;
      v33[2] = v35;
      v5 = (v5 + 24);
      if (v36 == v24)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1AE2131AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(**a2 + 128))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1AE213254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(**a2 + 112))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1AE2132FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AE21334C(uint64_t a1)
{
  result = sub_1AE213374();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE213374()
{
  result = qword_1EB5BE978;
  if (!qword_1EB5BE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE978);
  }

  return result;
}

uint64_t sub_1AE2133EC(uint64_t a1)
{
  v2 = *(a1 + 120);
  v1 = *(a1 + 128);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE2134B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v6 = a1;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = 0;
    v37 = a2 + 32;
    v38 = v6 + 32;
    v33 = v7 - 1;
    result = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    v34 = a3;
    v36 = v6;
LABEL_3:
    v35 = result;
    while (v8 < *(v6 + 16))
    {
      if (v8 >= *(a2 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v38 + 8 * v8);
      v12 = *(v37 + 8 * v8);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v13 = v39;

      v14 = sub_1ADDE77B4(v12, v13);

      v16 = *(v14 + 32);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v11 >= v17;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {

        swift_bridgeObjectRelease_n();
        sub_1ADE42E40();
        v30 = swift_allocError();
        *v31 = 0xD000000000000015;
        *(v31 + 8) = 0x80000001AE25FCF0;
        *(v31 + 16) = 0;
        v40 = v30;
        swift_willThrow();

        return v10;
      }

      v19 = v10;
      v20 = v16 + 16 * v11;
      v22 = *(v20 + 32);
      v21 = *(v20 + 40);
      v41[0] = v22;
      v41[1] = v21;
      MEMORY[0x1EEE9AC00](v15);
      v32[2] = v41;

      v23 = v40;
      if (sub_1ADDE8768(sub_1ADDE8834, v32, MEMORY[0x1E69E7CC0]))
      {
        v40 = v23;
        v27 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v27;
        sub_1ADDE88A8(v14, v22, v21, isUniquelyReferenced_nonNull_native);

        result = v41[0];
        v29 = v33 == v8++;
        v6 = v36;
        v10 = v19;
        if (v29)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v24, v41);
      v40 = v23;
      if (v23)
      {
        v10 = v19;

        swift_bridgeObjectRelease_n();

        return v10;
      }

      ++v8;
      v25 = v41[0];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v19;
      sub_1ADEBF524(v25, v22, v21, v26);

      v10 = v42;
      v6 = v36;
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
LABEL_20:

    swift_bridgeObjectRelease_n();
    return v10;
  }

  return result;
}

uint64_t sub_1AE21381C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AE23E00C() & 1;
  }
}

uint64_t sub_1AE213940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE213988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE213A10()
{
  [objc_opt_self() removeFilePresenter_];

  v1 = *(v0 + 48);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return v0;
}

uint64_t sub_1AE213A8C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  swift_weakInit();

  type metadata accessor for Capsule();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  type metadata accessor for _CRFileSyncManager.CRSyncPublisher();
  swift_getWitnessTable();
  return sub_1AE23C7EC();
}

uint64_t sub_1AE213B74()
{
  v1 = *(v0 + 24);
  sub_1AE23D6AC();
  return v3;
}

uint64_t sub_1AE213BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1AE23C88C();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C8CC();
  v21 = *(v9 - 8);
  v22 = v9;
  v10 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v29 = *a1;
  v30 = v13;
  v31 = *(a1 + 32);
  v20[1] = v2[4];
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 24) = *a1;
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a1 + 32);
  v27 = sub_1AE21D278;
  v28 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_1ADDD2200;
  *(&v26 + 1) = &block_descriptor_135;
  v16 = _Block_copy(&aBlock);

  v20[0] = *(v4 + 80);
  v17 = *(v4 + 88);
  v18 = type metadata accessor for Capsule();
  (*(*(v18 - 8) + 16))(v24, &v29, v18);
  sub_1AE23C8AC();
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v12, v8, v16);
  _Block_release(v16);
  (*(v23 + 8))(v8, v5);
  (*(v21 + 8))(v12, v22);

  aBlock = v29;
  v26 = v30;
  v27 = v31;
  return sub_1AE214228(&aBlock, v20[0], v17);
}

uint64_t sub_1AE213F4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1AE23C88C();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AE23C8CC();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 4);
  v16 = a1[1];
  aBlock = *a1;
  v26 = v16;
  v27 = v15;
  sub_1AE213BD4(&aBlock);
  v17 = *(v3 + 32);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v27 = sub_1AE21D270;
  v28 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_1ADDD2200;
  *(&v26 + 1) = &block_descriptor_123;
  v19 = _Block_copy(&aBlock);

  sub_1AE23C8AC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v14, v10, v19);
  _Block_release(v19);
  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_1AE214228(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AE23C88C();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1AE23C8CC();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v31 = *a1;
  v32 = v16;
  v33 = *(a1 + 4);
  v17 = *(v4 + 24);
  v26 = a2;
  v27 = a3;
  v28 = v4;
  result = sub_1AE23D6AC();
  if ((aBlock[0] & 1) == 0)
  {
    v19 = *(v4 + 32);
    v20 = swift_allocObject();
    v21 = v32;
    *(v20 + 40) = v31;
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = v4;
    *(v20 + 56) = v21;
    *(v20 + 72) = v33;
    aBlock[4] = sub_1AE21D234;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_107;
    v22 = _Block_copy(aBlock);

    v23 = type metadata accessor for Capsule();
    (*(*(v23 - 8) + 16))(v29, &v31, v23);
    sub_1AE23C8AC();
    v29[0] = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v15, v11, v22);
    _Block_release(v22);
    (*(v25 + 8))(v11, v8);
    (*(v12 + 8))(v15, v24);
  }

  return result;
}

uint64_t sub_1AE2145AC(uint64_t a1)
{
  v3 = sub_1AE23BC1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 448))(a1, v11);
  v14 = *MEMORY[0x1E695DB58];
  sub_1AE23BD6C();
  v15 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v16 = sub_1AE23CCDC();

  v17 = [v15 fileExistsAtPath_];

  if (!v17)
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEB08, &qword_1AE25AE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v14;
  v19 = v14;
  sub_1ADF7E828(inited);
  swift_setDeallocating();
  sub_1AE21CF9C(inited + 32);
  sub_1AE23BCCC();

  v21 = sub_1AE23BBEC();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v13, v8);
  if (!v21)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1AE214968(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v4 = sub_1AE23C88C();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1AE23C8CC();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C89C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[6];
  if (v14)
  {
    v15 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AE241900;
    aBlock = 0;
    v48 = 0xE000000000000000;
    sub_1AE23DA2C();

    aBlock = v15;
    v48 = v14;
    MEMORY[0x1B26FB670](0xD00000000000001ALL, 0x80000001AE2644A0);
    v17 = aBlock;
    v18 = v48;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    swift_getErrorValue();
    v19 = v44;
    v20 = v45;
    *(v16 + 88) = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 64));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v19, v20);
    sub_1AE23E2EC();
  }

  v37 = a1;
  v22 = v2[3];
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1AE21CF84;
  *(v23 + 24) = v2;
  v51 = sub_1ADDF711C;
  v52 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1ADDF70CC;
  v50 = &block_descriptor_75_0;
  v24 = _Block_copy(&aBlock);

  dispatch_sync(v22, v24);
  _Block_release(v24);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F98], v9);
    v26 = sub_1AE23D6DC();
    (*(v10 + 8))(v13, v9);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v29 = v36;
    v30 = v37;
    v28[2] = *(v36 + 80);
    v28[3] = *(v29 + 88);
    v28[4] = v27;
    v28[5] = v30;
    v51 = sub_1AE21CF90;
    v52 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1ADDD2200;
    v50 = &block_descriptor_84;
    v31 = _Block_copy(&aBlock);

    v32 = v30;
    v33 = v38;
    sub_1AE23C8AC();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v34 = v40;
    v35 = v43;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v33, v34, v31);
    _Block_release(v31);

    (*(v42 + 8))(v34, v35);
    (*(v39 + 8))(v33, v41);
  }

  return result;
}

void sub_1AE214F98(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1AE2155C8(a1, a3, a2, 0);
  if (!v4 && (v8 & 1) != 0)
  {
    v9 = v3[6];
    if (v9)
    {
      v10 = v5[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AE2418F0;

      MEMORY[0x1B26FB670](0x206574697257203ALL, 0xEC000000656C6966);
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 32) = v10;
      *(v11 + 40) = v9;
      sub_1AE23E2EC();
    }

    (*(*v5 + 496))(a1, a3);
    v12 = sub_1AE2145AC(a1);
    v13 = v5[10];
    v5[10] = v12;
  }
}

void sub_1AE2150FC()
{
  v1 = v0;
  v37 = *v0;
  v2 = sub_1AE23BF4C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = v0[2];
  v13 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v14 = *(v6 + 16);
  v14(v11, v12 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v5);
  v36 = sub_1AE23BD1C();
  v15 = sub_1AE23BD1C();
  v14(v8, v11, v5);
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v37;
  v18[2] = *(v37 + 80);
  v18[3] = *(v19 + 88);
  v18[4] = v1;
  v37 = v6;
  v20 = v18 + v16;
  v21 = v5;
  (*(v6 + 32))(v20, v8, v5);
  *(v18 + v17) = v13;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1AE21CED4;
  *(v22 + 24) = v18;
  v42 = sub_1AE21D398;
  v43 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1AE21A01C;
  v41 = &block_descriptor_69;
  v23 = _Block_copy(&aBlock);

  v24 = v13;

  v25 = v36;
  [v24 coordinateReadingItemAtURL:v36 options:0 writingItemAtURL:v15 options:0 error:0 byAccessor:v23];

  _Block_release(v23);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v26 = v1[6];
    if (v26)
    {
      v27 = v1[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AE2418F0;
      aBlock = 0;
      v39 = 0xE000000000000000;
      MEMORY[0x1B26FB670](v27, v26);
      MEMORY[0x1B26FB670](0x206574697257203ALL, 0xE800000000000000);
      v29 = v33;
      sub_1AE23BF3C();
      sub_1AE23BF1C();
      (*(v34 + 8))(v29, v35);
      sub_1AE23D2AC();
      v30 = aBlock;
      v31 = v39;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 32) = v30;
      *(v28 + 40) = v31;
      sub_1AE23E2EC();

      (*(v37 + 8))(v11, v21);
    }

    else
    {
      (*(v37 + 8))(v11, v21);
    }
  }
}

uint64_t sub_1AE2155C8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  LOBYTE(v7) = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = v4[5];
  v10 = v4[6];
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AE2418F0;
    sub_1AE23DA2C();

    v48 = v9;
    v49 = v10;
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE264480);
    if (a4)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a4)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1B26FB670](v12, v13);

    v14 = v48;
    v15 = v49;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_1AE23E2EC();
  }

  if ((a4 & 1) == 0)
  {
    v16 = sub_1AE2145AC(a1);
    if (v16)
    {
      v17 = v4[10];
      if (v17)
      {
        sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
        v18 = v17;
        v19 = sub_1AE23D78C();

        if (v19)
        {
          if (v10)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1AE2418F0;
            sub_1AE23DA2C();

            v48 = v9;
            v49 = v10;
            MEMORY[0x1B26FB670](0xD000000000000022, 0x80000001AE264450);
            if (v7)
            {
              v21 = 1702195828;
            }

            else
            {
              v21 = 0x65736C6166;
            }

            if (v7)
            {
              v22 = 0xE400000000000000;
            }

            else
            {
              v22 = 0xE500000000000000;
            }

            MEMORY[0x1B26FB670](v21, v22);

            v23 = v48;
            v24 = v49;
            *(v20 + 56) = MEMORY[0x1E69E6158];
            *(v20 + 32) = v23;
            *(v20 + 40) = v24;
            sub_1AE23E2EC();
          }

          goto LABEL_40;
        }
      }
    }

    v25 = v5[10];
    v5[10] = v16;
  }

  if ((*(*v5 + 368))())
  {
    v26 = [objc_opt_self() defaultManager];
    sub_1AE23BDAC();
    v27 = sub_1AE23CCDC();

    v48 = 0;
    v28 = [v26 contentsOfDirectoryAtPath:v27 error:&v48];

    v7 = v48;
    if (!v28)
    {
      v40 = v48;
      sub_1AE23BC9C();

      swift_willThrow();
      goto LABEL_40;
    }

    v29 = sub_1AE23CFDC();
    v30 = v7;

    v31 = *(v29 + 16);

    if (v31)
    {
      goto LABEL_26;
    }

LABEL_33:
    LOBYTE(v7) = 1;
    goto LABEL_40;
  }

  v33 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v34 = sub_1AE23CCDC();

  v47 = 0;
  v35 = [v33 attributesOfItemAtPath:v34 error:&v47];

  v7 = v47;
  if (!v35)
  {
    v41 = v47;
    v42 = sub_1AE23BC9C();

    swift_willThrow();
    goto LABEL_39;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1ADDCEFC8(&unk_1ED9664B0, type metadata accessor for FileAttributeKey);
  v36 = sub_1AE23CA0C();
  v37 = v7;

  if (!*(v36 + 16) || (v38 = sub_1ADDF1D10(*MEMORY[0x1E696A3B8]), (v39 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_1ADDE4E28(*(v36 + 56) + 32 * v38, &v48);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    LOBYTE(v7) = 1;
    goto LABEL_40;
  }

  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_26:
  v32 = (*(*v5 + 504))(a1, a2, a4 & 1);
  if (!v46)
  {
    LOBYTE(v7) = v32;
  }

LABEL_40:
  v43 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void *sub_1AE215B78(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v34 = v3;
  v35 = a1[1];
  v33 = a1[3];
  v4 = a1[4];
  v5 = *v1;
  v32 = *(*v1 + 264);
  v6 = v32(&v42);
  if (*(v7 + 32) != 1)
  {
    v8 = v2;
    v9 = v1[9];
    v10 = *(v5 + 80);
    v11 = *(v5 + 88);
    type metadata accessor for Capsule();
    v12 = v9;
    v2 = v8;
    Capsule.finalizeTimestamps(_:)(v12);
  }

  v13 = v6(&v42, 0);
  v14 = *(*v1 + 248);
  v14(&v42, v13);
  if (v44 == 1)
  {
    *&v42 = v2;
    *(&v42 + 1) = v35;
    *&v43 = v34;
    *(&v43 + 1) = v33;
    v44 = v4;
    v15 = *(*v1 + 256);
    sub_1ADDD86D8(v2, v35);
    sub_1ADDD86D8(v34, v33);

    v15(&v42);
LABEL_9:
    v22 = sub_1AE215ECC();
    goto LABEL_10;
  }

  v16 = sub_1ADE92284(v42, *(&v42 + 1), v43, *(&v43 + 1), v44);
  v31 = v2;
  *&v42 = v2;
  *(&v42 + 1) = v35;
  *&v43 = v34;
  *(&v43 + 1) = v33;
  v44 = v4;
  result = (v14)(&v39, v16);
  if (v41 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = v39;
  v37 = v40;
  v38 = v41;
  v29 = *(v5 + 88);
  v30 = *(v5 + 80);
  v18 = type metadata accessor for Capsule();
  v19 = Capsule.hasDelta(from:)(&v36);
  v20 = *(&v37 + 1);
  v21 = v37;
  sub_1ADDCC35C(v36, *(&v36 + 1));
  sub_1ADDCC35C(v21, v20);

  v2 = v31;
  if ((v19 & 1) == 0)
  {
LABEL_10:
    result = (v14)(&v42, v22);
    if (v44 != 1)
    {
      v39 = v42;
      v40 = v43;
      v41 = v44;
      *&v36 = v2;
      *(&v36 + 1) = v35;
      *&v37 = v34;
      *(&v37 + 1) = v33;
      v38 = v4;
      v25 = *(v5 + 80);
      v26 = *(v5 + 88);
      type metadata accessor for Capsule();
      v27 = Capsule.hasDelta(from:)(&v36);
      v28 = v40;
      sub_1ADDCC35C(v39, *(&v39 + 1));
      sub_1ADDCC35C(v28, *(&v28 + 1));

      return (v27 & 1);
    }

    __break(1u);
    goto LABEL_13;
  }

  *&v42 = v31;
  *(&v42 + 1) = v35;
  *&v43 = v34;
  *(&v43 + 1) = v33;
  v44 = v4;
  result = v32(&v39);
  if (*(v23 + 32) != 1)
  {
    v24 = result;
    Capsule.merge<A>(_:)(&v42, v18, v30, v29);
    v24(&v39, 0);
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1AE215ECC()
{
  v1 = v0;
  v2 = *v0;
  v49 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v44 - v5;
  v6 = sub_1AE23C88C();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1AE23C8CC();
  v51 = *(v53 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C89C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[6];
  if (v17)
  {
    v18 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AE2418F0;
    aBlock = v18;
    v59 = v17;

    MEMORY[0x1B26FB670](0x657461647055203ALL, 0xE800000000000000);
    v20 = aBlock;
    v21 = v59;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    sub_1AE23E2EC();

    v2 = *v1;
  }

  result = (*(v2 + 248))(&aBlock, v14);
  v48 = v62;
  if (v62 == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v60;
    v23 = v61;
    v25 = aBlock;
    v26 = v59;
    swift_beginAccess();
    v27 = v1[13];
    sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F98], v11);

    v46 = sub_1AE23D6DC();
    (*(v12 + 8))(v16, v11);
    v28 = swift_allocObject();
    v29 = v49;
    v28[2] = *(v49 + 80);
    v28[3] = *(v29 + 88);
    v28[4] = v27;
    v47 = v25;
    v28[5] = v25;
    v28[6] = v26;
    v30 = v26;
    v44 = v24;
    v28[7] = v24;
    v28[8] = v23;
    v45 = v23;
    v31 = v48;
    v28[9] = v48;
    v62 = sub_1AE21CE04;
    v63 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_1ADDD2200;
    v61 = &block_descriptor_45;
    v32 = _Block_copy(&aBlock);
    v33 = v25;
    v34 = v30;
    sub_1ADDD86D8(v33, v30);
    sub_1ADDD86D8(v24, v23);

    v35 = v50;
    sub_1AE23C8AC();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v36 = v52;
    v37 = v55;
    sub_1AE23D8DC();
    v38 = v46;
    MEMORY[0x1B26FBF60](0, v35, v36, v32);
    _Block_release(v32);

    (*(v54 + 8))(v36, v37);
    (*(v51 + 8))(v35, v53);

    v39 = sub_1AE23D1BC();
    v40 = v56;
    (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v42 = v47;
    v41[4] = v1;
    v41[5] = v42;
    v43 = v44;
    v41[6] = v34;
    v41[7] = v43;
    v41[8] = v45;
    v41[9] = v31;

    sub_1AE217C10(0, 0, v40, &unk_1AE25ADF0, v41);
  }

  return result;
}

void sub_1AE216504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v79 = a3;
  v85 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v68 - v14;
  v15 = sub_1AE23BDDC();
  v80 = *(v15 - 1);
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  v28 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v29 = sub_1AE23CCDC();

  v30 = [v28 fileExistsAtPath_];

  if (!v30)
  {
    goto LABEL_45;
  }

  v31 = objc_opt_self();
  v72 = a1;
  v32 = sub_1AE23BD1C();
  v33 = [v31 otherVersionsOfItemAtURL_];

  if (!v33)
  {
LABEL_40:
    sub_1ADDCEE40(v79, v8, &qword_1EB5B9DC0, &qword_1AE240B90);
    v64 = v80;
    v65 = *(v80 + 48);
    if (v65(v8, 1, v15) == 1)
    {
      (*(v64 + 16))(v18, v72, v15);
      if (v65(v8, 1, v15) != 1)
      {
        sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
      }
    }

    else
    {
      (*(v64 + 32))(v18, v8, v15);
    }

    sub_1AE214F98(v18, 0, v81);
    (*(v64 + 8))(v18, v15);
    goto LABEL_45;
  }

  v68 = v31;
  sub_1ADDEE524(0, &qword_1ED966B60, 0x1E696AC30);
  v34 = sub_1AE23CFDC();

  v35 = (v34 >> 62);
  if (v34 >> 62)
  {
    goto LABEL_38;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_39:

    goto LABEL_40;
  }

  while (1)
  {
    sub_1AE2155C8(v72, v81, 1, 0);
    if (v3)
    {

      goto LABEL_45;
    }

    if (v35)
    {
      break;
    }

    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v71 = v15;
    if (!v35)
    {
      goto LABEL_19;
    }

LABEL_11:
    v8 = 0;
    v69 = v34 & 0xFFFFFFFFFFFFFF8;
    v70 = v34 & 0xC000000000000001;
    v15 = (v80 + 8);
    while (1)
    {
      if (v70)
      {
        v36 = MEMORY[0x1B26FC360](v8, v34);
      }

      else
      {
        if (v8 >= *(v69 + 16))
        {
          goto LABEL_37;
        }

        v36 = *(v34 + 8 * v8 + 32);
      }

      v37 = v36;
      v18 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v38 = [v36 URL];
      sub_1AE23BD8C();

      sub_1AE2155C8(v27, v81, 0, 1);
      (*v15)(v27, v71);

      ++v8;
      if (v18 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    if (sub_1AE23D97C() < 1)
    {
      goto LABEL_39;
    }
  }

  v35 = sub_1AE23D97C();
  v71 = v15;
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_19:

  v39 = v82;
  v40 = v82[6];
  if (v40)
  {
    v41 = v82[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AE2418F0;
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_1AE23DA2C();

    v83 = v41;
    v84 = v40;
    MEMORY[0x1B26FB670](0xD000000000000018, 0x80000001AE264430);
    v43 = v83;
    v44 = v84;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    sub_1AE23E2EC();
  }

  v45 = v78;
  sub_1ADDCEE40(v79, v78, &qword_1EB5B9DC0, &qword_1AE240B90);
  v46 = v80;
  v47 = *(v80 + 48);
  v48 = v71;
  v49 = v47(v45, 1, v71);
  v50 = v77;
  if (v49 == 1)
  {
    (*(v46 + 16))(v77, v72, v48);
    if (v47(v45, 1, v48) != 1)
    {
      sub_1ADDCEDE0(v45, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    (*(v46 + 32))(v77, v45, v48);
  }

  (*(*v39 + 496))(v50, v81);
  v51 = *(v46 + 8);
  v51(v50, v48);
  v52 = v74;
  sub_1ADDCEE40(v79, v74, &qword_1EB5B9DC0, &qword_1AE240B90);
  if (v47(v52, 1, v48) == 1)
  {
    v53 = *(v46 + 16);
    v54 = v73;
    v53(v73, v72, v48);
    if (v47(v52, 1, v48) != 1)
    {
      sub_1ADDCEDE0(v52, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    v55 = *(v46 + 32);
    v54 = v73;
    v55(v73, v52, v48);
  }

  v56 = sub_1AE2145AC(v54);
  v51(v54, v48);
  v57 = v39[10];
  v39[10] = v56;

  v58 = v76;
  sub_1ADDCEE40(v79, v76, &qword_1EB5B9DC0, &qword_1AE240B90);
  if (v47(v58, 1, v48) == 1)
  {
    v59 = v75;
    (*(v80 + 16))(v75, v72, v48);
    if (v47(v58, 1, v48) != 1)
    {
      sub_1ADDCEDE0(v58, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    v59 = v75;
    (*(v80 + 32))(v75, v58, v48);
  }

  v60 = sub_1AE23BD7C();
  v51(v59, v48);
  if ((v60 & 1) == 0)
  {
LABEL_45:
    v66 = *MEMORY[0x1E69E9840];
    return;
  }

  v61 = sub_1AE23BD1C();
  v83 = 0;
  v62 = [v68 removeOtherVersionsOfItemAtURL:v61 error:&v83];

  if (v62)
  {
    v63 = v83;
    goto LABEL_45;
  }

  v67 = v83;
  sub_1AE23BC9C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1AE216EFC()
{
  v1 = *(v0 + 32);
  sub_1AE23D6AC();
  return v3;
}

uint64_t sub_1AE216F5C(char a1)
{
  v3 = sub_1AE23C88C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AE23C8CC();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1AE21D19C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_100;
  v13 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1AE21721C(uint64_t a1)
{
  v3 = *v1;
  v21 = sub_1AE23C88C();
  v23 = *(v21 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AE23C8CC();
  v20 = *(v22 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v19 = v1[4];
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = *(v3 + 80);
  *(v15 + 3) = *(v3 + 88);
  *(v15 + 4) = v1;
  (*(v11 + 32))(&v15[v14], &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1AE21CDA0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  v17 = v21;
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v9, v6, v16);
  _Block_release(v16);
  (*(v23 + 8))(v6, v17);
  (*(v20 + 8))(v9, v22);
}

void sub_1AE2175D8()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v23[0] = 0;
  v2 = sub_1AE23BD1C();
  v3 = sub_1AE23BD1C();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v23;
  v5 = swift_allocObject();
  v5[2] = sub_1AE21CD94;
  v5[3] = v4;
  v22[4] = sub_1AE21D398;
  v22[5] = v5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1AE21A01C;
  v22[3] = &block_descriptor_33;
  v6 = _Block_copy(v22);

  v7 = v1;

  v22[0] = 0;
  [v7 coordinateReadingItemAtURL:v2 options:0 writingItemAtURL:v3 options:0 error:v22 byAccessor:v6];
  _Block_release(v6);

  v8 = v22[0];
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  v9 = v8;
  if (!v8)
  {
    v9 = v23[0];
    if (!v23[0])
    {

      goto LABEL_12;
    }

    v10 = v23[0];
  }

  v11 = sub_1AE23BC8C();
  v12 = [v11 domain];

  v13 = sub_1AE23CD0C();
  v15 = v14;

  v16 = *MEMORY[0x1E696A250];
  if (v13 == sub_1AE23CD0C() && v15 == v17)
  {
  }

  else
  {
    v18 = sub_1AE23E00C();

    if ((v18 & 1) == 0)
    {
LABEL_10:
      sub_1AE214968(v9);
      goto LABEL_11;
    }
  }

  v19 = sub_1AE23BC8C();
  v20 = [v19 code];

  if (v20 != 260)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE217930(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AE23C8CC();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 32);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1AE217BC0()
{
  if (*(v0 + 112))
  {

    sub_1AE00C4CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE217C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1ADDCEE40(a3, v27 - v11, &unk_1EB5BDD00, &qword_1AE242340);
  v13 = sub_1AE23D1BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1ADDCEDE0(v12, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1AE23D16C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1AE23CD8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1AE217F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1ADDCEE40(a3, v27 - v11, &unk_1EB5BDD00, &qword_1AE242340);
  v13 = sub_1AE23D1BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1ADDCEDE0(v12, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1AE23D16C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1AE23CD8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEB10, &qword_1AE25AE28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEB10, &qword_1AE25AE28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1AE218224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BDDC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1AE2183A0()
{
  v1 = v0 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AE2418F0;
      sub_1AE23DA2C();

      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE264500);
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      sub_1AE23E2EC();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 8))(v0 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AE218580(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v25 - v7;
  v9 = [a1 Coherence_url];
  if (v9)
  {
    v10 = v9;
    sub_1AE23BD8C();

    v11 = sub_1AE23BDDC();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
    v12 = v2 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 16))(ObjectType, v13);
      v17 = v16;
      swift_unknownObjectRelease();
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1AE2418F0;
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_1AE23DA2C();

        v25 = v15;
        v26 = v17;
        MEMORY[0x1B26FB670](0xD000000000000019, 0x80000001AE2644E0);
        v19 = v25;
        v20 = v26;
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 32) = v19;
        *(v18 + 40) = v20;
        sub_1AE23E2EC();
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = *(v12 + 8);
      v23 = swift_getObjectType();
      (*(v22 + 8))(v2 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v23, v22);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v24 = sub_1AE23BDDC();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    return sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  return result;
}

id sub_1AE2188B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRFileSyncPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AE2189C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v103 = a1;
  v6 = sub_1AE23C88C();
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1AE23C8CC();
  v97 = *(v99 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 24);
  v94 = *(a2 + 16);
  v93 = v11;
  v12 = type metadata accessor for Capsule();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v90 = v12;
  v13 = sub_1AE23C80C();
  v87 = sub_1AE23D7CC();
  v86 = *(v87 - 8);
  v14 = *(v86 + 8);
  MEMORY[0x1EEE9AC00](v87);
  v16 = &v82 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v82 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v82 - v30;
  v32 = *(v13 - 8);
  v33 = v32[8];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v102 = &v82 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v92 = &v82 - v40;
  result = swift_weakLoadStrong();
  if (result)
  {
    v85 = result;
    v101 = v6;
    v84 = v17;
    v42 = *(v17 + 16);
    v42(v31, v103, a3);
    v42(v28, v31, a3);
    v43 = swift_dynamicCast();
    v44 = v32[7];
    if (v43)
    {
      v45 = v31;
      v44(v16, 0, 1, v13);
      v46 = v32[4];
      (v46)(v36, v16, v13);
      v47 = v102;
      v46();
      v48 = v95;
      v49 = v84;
LABEL_14:
      v70 = type metadata accessor for CRSyncSubscription();
      v71 = v92;
      (v32[4])(v92, v47, v13);
      (*(v49 + 8))(v45, a3);
      v72 = *(v70 + 48);
      v73 = *(v70 + 52);
      swift_allocObject();
      v74 = v85;
      v75 = sub_1ADF55128(v85, v71);
      *&v109 = v75;
      swift_beginAccess();
      sub_1AE23D11C();

      sub_1AE23D0CC();
      swift_endAccess();
      v106 = v70;
      WitnessTable = swift_getWitnessTable();
      *&aBlock = v75;

      sub_1AE23C7BC();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v76 = *(v74 + 32);
      v77 = swift_allocObject();
      v77[2] = a3;
      v77[3] = v48;
      v77[4] = v74;
      v77[5] = v75;
      WitnessTable = sub_1AE21D338;
      v108 = v77;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v105 = sub_1ADDD2200;
      v106 = &block_descriptor_150;
      v78 = _Block_copy(&aBlock);

      v79 = v96;
      sub_1AE23C8AC();
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
      v80 = v98;
      v81 = v101;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v79, v80, v78);
      _Block_release(v78);

      (*(v100 + 8))(v80, v81);
      (*(v97 + 8))(v79, v99);
    }

    v82 = v32;
    v44(v16, 1, 1, v13);
    (*(v86 + 1))(v16, v87);
    v87 = v13;
    v48 = v95;
    v50 = *(v95 + 8);
    v51 = v102;
    v52 = &v102[*(v13 + 56)];
    sub_1AE23C79C();
    sub_1AE23C83C();
    v42(v91, v31, a3);
    *v51 = sub_1AE23C84C();
    v86 = v42;
    v42(v88, v31, a3);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
    v53 = v31;
    if (swift_dynamicCast())
    {
      sub_1ADE23E6C(&v109, &aBlock);
      sub_1ADE23E6C(&aBlock, &v109);
      v54 = swift_allocObject();
      sub_1ADE23E6C(&v109, v54 + 16);
      v55 = sub_1AE21D354;
    }

    else
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      sub_1ADDCEDE0(&v109, &unk_1EB5BEB20, &qword_1AE24C510);
      swift_getDynamicType();
      v56 = sub_1AE23E40C();
      v57 = a3;
      v59 = v58;
      v54 = swift_allocObject();
      *(v54 + 16) = v56;
      *(v54 + 24) = v59;
      a3 = v57;
      v55 = sub_1AE21D2D8;
    }

    v49 = v84;
    v47 = v102;
    *(v102 + 1) = v55;
    v47[2] = v54;
    v60 = v91;
    v61 = v86;
    v86(v91, v53, a3);
    v62 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v63 = swift_allocObject();
    *(v63 + 2) = v90;
    *(v63 + 3) = a3;
    *(v63 + 4) = v48;
    (*(v49 + 32))(&v63[v62], v60, a3);
    v47[3] = sub_1ADF55F80;
    v47[4] = v63;
    v61(v89, v53, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3A0, &qword_1AE24C518);
    if (swift_dynamicCast())
    {
      v45 = v53;
      sub_1ADE23E6C(&v109, &aBlock);
      sub_1ADE23E6C(&aBlock, &v109);
      v64 = swift_allocObject();
      sub_1ADE23E6C(&v109, v64 + 16);
      v65 = sub_1AE21D34C;
    }

    else
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      sub_1ADDCEDE0(&v109, qword_1EB5BEB30, &qword_1AE24C520);
      v61(v83, v53, a3);
      if (!swift_dynamicCast())
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        sub_1ADDCEDE0(&v109, &unk_1EB5BEB20, &qword_1AE24C510);
        v45 = v53;
        swift_getDynamicType();
        v66 = sub_1AE23E40C();
        v68 = v67;
        v69 = swift_allocObject();
        *(v69 + 16) = v66;
        *(v69 + 24) = v68;
        v47 = v102;
        *(v102 + 5) = sub_1AE21D2E0;
        v47[6] = v69;
        goto LABEL_13;
      }

      v45 = v53;
      sub_1ADE23E6C(&v109, &aBlock);
      sub_1ADE23E6C(&aBlock, &v109);
      v64 = swift_allocObject();
      sub_1ADE23E6C(&v109, v64 + 16);
      v65 = sub_1AE21D344;
      v47 = v102;
    }

    v47[5] = v65;
    v47[6] = v64;
LABEL_13:
    v13 = v87;
    v32 = v82;
    goto LABEL_14;
  }

  return result;
}

void *sub_1AE2195E4(void *a1, uint64_t a2)
{
  result = (*(*a1 + 248))(&v13);
  v5 = v17;
  if (v17 != 1)
  {
    v7 = v13;
    v6 = v14;
    v9 = v15;
    v8 = v16;
    v10 = a1[3];
    sub_1AE23D6AC();
    if ((v13 & 1) == 0)
    {
      v11 = *(*a2 + 96);
      v13 = v7;
      v14 = v6;
      v15 = v9;
      v16 = v8;
      v17 = v5;
      v12 = *(a2 + v11);
      sub_1AE23C86C();
    }

    return sub_1ADE92284(v7, v6, v9, v8, v5);
  }

  return result;
}

uint64_t sub_1AE2196F8(uint64_t *a1, __int128 *a2)
{
  v11 = a2[1];
  v12 = *a2;
  v4 = *(a2 + 4);
  v5 = *a1;
  (*(*a1 + 248))(&v14);
  if (v16 != 1)
  {
    return sub_1ADE92284(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  }

  v15 = v11;
  v14 = v12;
  v16 = v4;
  v6 = *(*a1 + 256);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v9 = type metadata accessor for Capsule();
  (*(*(v9 - 8) + 16))(v13, a2, v9);
  return v6(&v14);
}

uint64_t sub_1AE219830(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1AE23C88C();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AE23C8CC();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C89C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F98], v11);
  v16 = sub_1AE23D6DC();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1ADDF70F4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_129;
  v18 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v10, v6, v18);
  _Block_release(v18);

  (*(v22 + 8))(v6, v3);
  (*(v7 + 8))(v10, v21);
}

uint64_t sub_1AE219BD4(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = (*(*a1 + 264))(v25);
  if (*(v10 + 32) != 1)
  {
    v11 = a2[1];
    v20 = *a2;
    v21 = v11;
    v22 = *(a2 + 4);
    v12 = *(v8 + 80);
    v13 = *(v8 + 88);
    v14 = type metadata accessor for Capsule();
    Capsule.merge<A>(_:)(&v20, v14, a3, a4);
  }

  v9(v25, 0);
  v25[0] = 0;
  v24 = 0;
  v15 = a1[3];
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = v25;
  v16[6] = &v24;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AE21D244;
  *(v17 + 24) = v16;
  v22 = sub_1AE1B5910;
  v23 = v17;
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 1107296256;
  *&v21 = sub_1ADDF70CC;
  *(&v21 + 1) = &block_descriptor_117;
  v18 = _Block_copy(&v20);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (!v25[0] && (v24 & 1) == 0)
    {
      sub_1AE2150FC();
    }
  }

  return result;
}

uint64_t sub_1AE219E28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_beginAccess();
  v5 = *(v4 + 104);
  type metadata accessor for CRSyncSubscription();

  if (!sub_1AE23D0AC())
  {
    goto LABEL_11;
  }

  v6 = 4;
  while (1)
  {
    v7 = v6 - 4;
    v8 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v5 + 8 * v6);

    v10 = v6 - 3;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    v11 = *(v9 + *(*v9 + 96));
    v12 = a2;
    sub_1AE23C85C();

    ++v6;
    if (v10 == sub_1AE23D0AC())
    {
      goto LABEL_11;
    }
  }

  v9 = sub_1AE23DAAC();
  v10 = v6 - 3;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

uint64_t sub_1AE21A01C(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_1AE23BD8C();
  sub_1AE23BD8C();
  v11(v9, v6);
  v12 = *(v3 + 8);
  v12(v6, v2);
  return (v12)(v9, v2);
}

uint64_t sub_1AE21A220(uint64_t a1, __int128 *a2)
{
  type metadata accessor for CRSyncSubscription();
  result = sub_1AE23D0AC();
  if (result)
  {
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v7)
      {
        v8 = *(a1 + 8 * v5);

        v9 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        v8 = result;
        v9 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      v11 = *a2;
      v12 = a2[1];
      v13 = *(a2 + 4);
      v10 = *(v8 + *(*v8 + 96));
      sub_1AE23C86C();

      result = sub_1AE23D0AC();
      ++v5;
    }

    while (v9 != result);
  }

  return result;
}

uint64_t sub_1AE21A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE21A360, 0, 0);
}

uint64_t sub_1AE21A360(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + 112);
  *(v3 + 72) = v4;
  if (v4)
  {
    v5 = *(v3 + 64);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *(v3 + 16) = *v5;
    *(v3 + 32) = v7;
    *(v3 + 48) = v6;

    a1 = sub_1ADF52C44;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void sub_1AE21A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  if (*(a1 + 89) != 1)
  {
    goto LABEL_8;
  }

  if (qword_1ED96AB10 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1ED96F290 + 24);

  sub_1AE23D6AC();

  if (v19 == 1)
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(a1 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AE2418F0;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1AE23DA2C();

      v19 = v14;
      v20 = v13;
      MEMORY[0x1B26FB670](0xD00000000000001ELL, 0x80000001AE2643E0);
      sub_1ADDCEFC8(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v16 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v16);

      v17 = v19;
      v18 = v20;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 32) = v17;
      *(v15 + 40) = v18;
      sub_1AE23E2EC();
    }

    (*(v5 + 16))(v8, a2, v4);
    swift_beginAccess();
    sub_1ADEC2798(v11, v8);
    (*(v5 + 8))(v11, v4);
    swift_endAccess();
  }

  else
  {
LABEL_8:
    sub_1AE2175D8();
  }
}

void sub_1AE21A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v14 = sub_1AE23BDDC();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v10, a2, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_1AE216504(a1, a4, v10);
    sub_1ADDCEDE0(v10, &qword_1EB5B9DC0, &qword_1AE240B90);
  }
}

void sub_1AE21A8C0(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v34[0] = 0;
  v9 = *(v3 + 16);
  v32 = v2;
  v9(v6, v7 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v2);
  v10 = sub_1AE23BD1C();
  v11 = sub_1AE23BD1C();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v8;
  v12[4] = v34;
  v13 = swift_allocObject();
  v13[2] = sub_1AE21CD60;
  v13[3] = v12;
  aBlock[4] = sub_1AE21CD6C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AE21A01C;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  v15 = v8;

  aBlock[0] = 0;
  [v15 coordinateReadingItemAtURL:v10 options:0 writingItemAtURL:v11 options:0 error:aBlock byAccessor:v14];
  _Block_release(v14);

  v16 = aBlock[0];
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  if (v16)
  {

    v17 = v16;
  }

  else
  {
    v17 = v34[0];
    if (!v34[0])
    {
      (*(v3 + 8))(v6, v32);

      goto LABEL_14;
    }

    v18 = v34[0];
  }

  v19 = v16;
  v20 = sub_1AE23BC8C();
  v21 = [v20 domain];

  v22 = sub_1AE23CD0C();
  v24 = v23;

  v25 = *MEMORY[0x1E696A250];
  if (v22 == sub_1AE23CD0C() && v24 == v26)
  {
  }

  else
  {
    v27 = sub_1AE23E00C();

    if ((v27 & 1) == 0)
    {
LABEL_12:
      sub_1AE214968(v17);

      (*(v3 + 8))(v6, v32);
      goto LABEL_14;
    }
  }

  v28 = sub_1AE23BC8C();
  v29 = [v28 code];

  if (v29 != 260)
  {
    goto LABEL_12;
  }

  (*(v3 + 8))(v6, v32);

LABEL_14:

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1AE21ACE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v43 = a5;
  v44 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1AE23BDAC();
  v14 = sub_1AE23CCDC();

  v15 = [v13 fileExistsAtPath_];

  if ((v15 & 1) == 0)
  {
    v17 = a3[6];
    if (v17)
    {
      v18 = a3[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AE2418F0;
      v45 = v18;
      v46 = v17;

      MEMORY[0x1B26FB670](0x207473726946203ALL, 0xEC00000065766173);
      v20 = v45;
      v21 = v46;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 32) = v20;
      *(v19 + 40) = v21;
      sub_1AE23E2EC();
    }

    v22 = (*(*a3 + 248))(&v45, v16);
    if (v49 == 1)
    {
      v23 = (*(*a3 + 368))(v22);
      v24 = [v12 defaultManager];
      if (v23)
      {
        v25 = sub_1AE23BD1C();
        v45 = 0;
        v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v45];

        if (!v26)
        {
          v40 = v45;
          v41 = sub_1AE23BC9C();

          swift_willThrow();
          v38 = *v43;
          *v43 = v41;

          goto LABEL_14;
        }

        v27 = v45;
      }

      else
      {
        sub_1AE23BDAC();
        v28 = sub_1AE23CCDC();

        [v24 createFileAtPath:v28 contents:0 attributes:0];
      }
    }

    else
    {
      sub_1ADE92284(v45, v46, v47, v48, v49);
      (*(*a3 + 496))(a2, a4);
    }

    v29 = sub_1AE2145AC(a2);
    v30 = a3[10];
    a3[10] = v29;
  }

  [objc_opt_self() addFilePresenter_];
  v31 = a3[6];
  if (v31)
  {
    v32 = a3[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AE2418F0;
    v45 = v32;
    v46 = v31;

    MEMORY[0x1B26FB670](0x656D75736552203ALL, 0xED0000636E797320);
    v34 = v45;
    v35 = v46;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    sub_1AE23E2EC();
  }

  v36 = sub_1AE23BDDC();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v11, a2, v36);
  (*(v37 + 56))(v11, 0, 1, v36);
  sub_1AE216504(v44, a4, v11);
  sub_1ADDCEDE0(v11, &qword_1EB5B9DC0, &qword_1AE240B90);
LABEL_14:
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE21B1F8()
{
  sub_1AE213A10();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE21B22C(void *a1)
{
  v28 = sub_1AE23BDDC();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[6];
  if (v6)
  {
    v7 = a1[5];
    swift_beginAccess();
    if (*(a1[12] + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1AE2418F0;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1AE23DA2C();

      v29 = v7;
      v30 = v6;
      MEMORY[0x1B26FB670](0xD000000000000021, 0x80000001AE264390);
      v9 = a1[12];
      sub_1ADDCEFC8(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);

      v10 = sub_1AE23D2DC();
      v12 = v11;

      MEMORY[0x1B26FB670](v10, v12);

      v13 = v29;
      v14 = v30;
      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 32) = v13;
      *(v8 + 40) = v14;
      sub_1AE23E2EC();
    }
  }

  swift_beginAccess();
  v15 = a1;
  v16 = a1[12];
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;
  v27 = v2 + 16;

  v22 = 0;
  for (i = v28; v19; result = (*(v2 + 8))(v5, i))
  {
    v24 = v22;
LABEL_12:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v2 + 16))(v5, *(v16 + 48) + *(v2 + 72) * (v25 | (v24 << 6)), i);
    sub_1AE2175D8();
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      v26 = v15[12];
      v15[12] = MEMORY[0x1E69E7CD0];
    }

    v19 = *(v16 + 56 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE21B558()
{

  sub_1AE217910();
}

uint64_t sub_1AE21B598()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1AE21B5C8()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for Capsule();
  sub_1AE23D7CC();
  return sub_1AE23D6AC();
}

double CRBinaryFileSync.read(from:context:coordinator:)@<D0>(uint64_t a1@<X3>, __n128 *a2@<X8>)
{
  v5 = sub_1AE23BDFC();
  if (!v2)
  {
    Capsule.init(serializedData:allowedAppFormats:fileSignature:)(v5, v6, 0, 0, 0xF000000000000000, *(a1 + 16), *(a1 + 24), v10);
    v8 = v11;
    result = v10[0].n128_f64[0];
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
    a2[2].n128_u64[0] = v8;
  }

  return result;
}

uint64_t CRCustomFileSyncManager.disableReadingInBackground.getter()
{
  v1 = *(*(v0 + 16) + 32);
  sub_1AE23D6AC();
  return v3;
}

uint64_t (*CRCustomFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(char *a1)
{
  *a1 = v1;
  v3 = *(*(v1 + 16) + 32);
  sub_1AE23D6AC();
  *(a1 + 9) = *(a1 + 8);
  return sub_1AE21B82C;
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:version:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v24 = a3;
  v25 = a1;
  v8 = *(v4 + 80);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *a4;
  v19 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v19;
  v29 = v17;
  (*(v13 + 16))(v16, a3, v12);
  v20 = *(v4 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v27 = v18;
  type metadata accessor for CRBinaryFileSync();
  swift_dynamicCast();
  v21 = v25;
  v22 = sub_1ADFA115C(v25, v28, v16, v11);
  (*(v26 + 8))(v11, v8);

  (*(v13 + 8))(v24, v12);
  return v22;
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v17 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v17;
  v27 = v16;
  (*(v12 + 16))(v15, a3, v11);
  v18 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v25 = 1;
  type metadata accessor for CRBinaryFileSync();
  swift_dynamicCast();
  v19 = v24;
  v20 = sub_1ADFA115C(v24, v26, v15, v10);
  (*(v7 + 8))(v10, v6);

  (*(v12 + 8))(v23, v11);
  return v20;
}

uint64_t sub_1AE21BCC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1AE21BDC0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AE21BEB4;

  return v6(v2 + 32);
}

uint64_t sub_1AE21BEB4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_1AE21BFC8(void *a1, __int128 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v89 = a4;
  v90 = a5;
  v93 = a3;
  v88 = a1;
  v85 = *v5;
  v8 = sub_1AE23BDDC();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1AE23D68C();
  v94 = *(v80 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1AE23D65C();
  v13 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v92 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AE23C8CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AE23BFEC();
  v74 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a2 + 4);
  v78 = sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
  *&v95[0] = 0;
  *(&v95[0] + 1) = 0xE000000000000000;
  sub_1AE23DA2C();

  *&v95[0] = 0xD000000000000012;
  *(&v95[0] + 1) = 0x80000001AE264540;
  sub_1AE23BFDC();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v23 = swift_allocObject();
  v76 = xmmword_1AE241900;
  *(v23 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v24 = MEMORY[0x1E69E7508];
  v25 = MEMORY[0x1E69E7558];
  *(v23 + 56) = MEMORY[0x1E69E7508];
  *(v23 + 64) = v25;
  v26 = v25;
  *(v23 + 32) = v27;
  sub_1AE23BFCC();
  *(v23 + 96) = v24;
  *(v23 + 104) = v26;
  *(v23 + 72) = v28;
  v29 = sub_1AE23CD3C();
  v31 = v30;
  v32 = *(v19 + 8);
  v73 = v19 + 8;
  v75 = v32;
  v33 = a2[1];
  v82 = *a2;
  v81 = v33;
  v32(v22, v18);
  MEMORY[0x1B26FB670](v29, v31);

  v66 = *(&v95[0] + 1);
  sub_1AE23C8AC();
  *&v95[0] = MEMORY[0x1E69E7CC0];
  v70 = sub_1ADDCEFC8(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v71 = sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  v68 = *MEMORY[0x1E69E8090];
  v34 = *(v94 + 104);
  v94 += 104;
  v67 = v34;
  v35 = v79;
  v36 = v80;
  v34(v79);
  v5[3] = sub_1AE23D6CC();
  strcpy(v95, "model-atomic-");
  HIWORD(v95[0]) = -4864;
  sub_1AE23BFDC();
  v37 = swift_allocObject();
  *(v37 + 16) = v76;
  sub_1AE23BFCC();
  v38 = MEMORY[0x1E69E7508];
  *(v37 + 56) = MEMORY[0x1E69E7508];
  v39 = MEMORY[0x1E69E7558];
  *(v37 + 64) = MEMORY[0x1E69E7558];
  *(v37 + 32) = v40;
  sub_1AE23BFCC();
  *(v37 + 96) = v38;
  *(v37 + 104) = v39;
  *(v37 + 72) = v41;
  v42 = sub_1AE23CD3C();
  v44 = v43;
  v75(v22, v74);
  MEMORY[0x1B26FB670](v42, v44);

  sub_1AE23C8AC();
  *&v95[0] = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v67(v35, v68, v36);
  v5[4] = sub_1AE23D6CC();
  v5[7] = 0;
  *(v5 + 64) = 0;
  v5[10] = 0;
  v45 = MEMORY[0x1E69E7CD0];
  *(v5 + 44) = 0;
  v5[12] = v45;
  v46 = *(v85 + 80);
  v94 = *(v85 + 88);
  type metadata accessor for CRSyncSubscription();
  v5[13] = sub_1AE23C9DC();
  v5[14] = 0;
  v48 = v88;
  v47 = v89;
  v5[9] = v88;
  v49 = v90;
  v5[5] = v47;
  v5[6] = v49;
  v51 = v86;
  v50 = v87;
  v52 = *(v86 + 16);
  v53 = v84;
  v52(v84, v93, v87);
  v54 = type metadata accessor for CRFileSyncPresenter();
  v55 = objc_allocWithZone(v54);
  *&v55[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager + 8] = 0;
  swift_unknownObjectWeakInit();
  v52(&v55[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL], v53, v50);
  v56 = objc_allocWithZone(MEMORY[0x1E696ADC8]);
  v57 = v48;
  v58 = [v56 init];
  *&v55[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_queue] = v58;
  v97.receiver = v55;
  v97.super_class = v54;
  v59 = objc_msgSendSuper2(&v97, sel_init);
  v60 = *(v51 + 8);
  v60(v53, v50);
  v6[2] = v59;
  *&v59[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager + 8] = &off_1F23C9B88;
  swift_unknownObjectWeakAssign();
  v95[0] = v82;
  v95[1] = v81;
  v96 = v83;
  (*(*v6 + 256))(v95);
  type metadata accessor for _CRFileSyncManager();
  swift_getWitnessTable();
  type metadata accessor for AsyncUpdatesActor();

  v61 = sub_1AE00CC84();

  v62 = v6[14];
  v6[14] = v61;

  v63 = [objc_opt_self() defaultCenter];
  v64 = qword_1ED96AA18;

  if (v64 != -1)
  {
    swift_once();
  }

  [v63 addObserver:v6 selector:sel_willEnterForeground name:qword_1ED96F280 object:0];

  sub_1AE2178F0();
  v60(v93, v50);
  return v6;
}

uint64_t sub_1AE21C940(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 4);
  v8 = *v4;
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  v20 = v7;
  v17 = v8;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = type metadata accessor for Capsule();
  result = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(a3, &v17, 0, 0, 0xF000000000000000, v12);
  if (!v5)
  {
    v15 = result;
    v16 = v14;
    sub_1AE23BEDC();
    return sub_1ADDCC35C(v15, v16);
  }

  return result;
}

uint64_t type metadata accessor for CRFileSyncPresenter()
{
  result = qword_1ED966C90;
  if (!qword_1ED966C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE21CA60()
{
  result = sub_1AE23BDDC();
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

uint64_t sub_1AE21CB08(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for Capsule();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  result = sub_1AE23C80C();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE21CC94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE21CD6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1AE21CDA0()
{
  v1 = *(sub_1AE23BDDC() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1AE21A3F4(v2, v3);
}

uint64_t sub_1AE21CE04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AE21A220(*(v0 + 32), (v0 + 40));
}

uint64_t sub_1AE21CE14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE74240;

  return sub_1AE21A340(a1, v4, v5, v6, (v1 + 5));
}

void sub_1AE21CED4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1AE23BDDC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 32);

  sub_1AE219FA4(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1AE21CF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AE219E28(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_1AE21CF9C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE21D02C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1AE21BDC0(a1, v5);
}

uint64_t sub_1AE21D0E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE74240;

  return sub_1AE21BDC0(a1, v5);
}

void sub_1AE21D1B8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 56) = v5;
    *a1 = *(v2 + 88);
  }
}

uint64_t objectdestroy_41Tm(void (*a1)(void))
{
  a1(v1[4]);
  sub_1ADDCC35C(v1[5], v1[6]);
  sub_1ADDCC35C(v1[7], v1[8]);
  v2 = v1[9];

  return MEMORY[0x1EEE6BDD0](v1, 80, 7);
}

void sub_1AE21D244()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    *(v1 + 56) = v4;
    *v6 = v4;
    *v5 = *(v1 + 88);
  }
}

uint64_t sub_1AE21D29C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroy_80Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

void *sub_1AE21D338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AE2195E4(*(v0 + 32), *(v0 + 40));
}

__n128 WeakRef.init(id:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AE21D3E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v10 = *v2;
  v11 = v5;
  sub_1ADDD86D8(v10, v5);
  v6 = *(a1 + 24);
  sub_1ADEAE800(&v10, *(a1 + 16), a2);
  v7 = v10;
  v8 = v11;

  return sub_1ADDCC35C(v7, v8);
}

uint64_t WeakRef.subscript.getter(__int128 *a1, uint64_t a2)
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

void WeakRef.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v16 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v18 = 0xD000000000000017;
    goto LABEL_16;
  }

  v7 = v4;
  v40 = a4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  if (*(a1 + 57) >= 3u)
  {
    v10 = *(v6 + 16);
    if ((~v10 & 0xF000000000000007) != 0 && ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 15)
    {
      v27 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = *(a1 + 40);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v27 >= v29;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v37 = *(v28 + 16 * v27 + 32);
        sub_1ADDD86D8(*(v28 + 16 * v27 + 32), *(v28 + 16 * v27 + 40));

        v33 = v40;
        v34 = v37;
LABEL_37:
        *v33 = v34;
        return;
      }

      v16 = 0x80000001AE25FC60;
      sub_1ADE42E40();
      swift_allocError();
      v18 = 0xD000000000000013;
LABEL_16:
      *v17 = v18;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      swift_willThrow();

      return;
    }
  }

  v12 = *(v6 + 16);
  v36 = a3;
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 7)
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v13 = &unk_1ED966F48;
  }

  swift_beginAccess();
  if (v13[8])
  {
    v14 = *(v6 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 7)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v19 = v15[8];
    v20 = v15[9];
    v21 = v15[10];
    if (v19)
    {
      v22 = v15[8];
      v23 = v15[9];
    }

    else
    {
      v23 = 0;
    }

    if (v19)
    {
      v24 = v15[10];
    }

    else
    {
      v24 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v19, v20, v21);
    sub_1ADDE94BC(v23, v24, &v39);
    if (!v7)
    {
      v25 = v39;
      goto LABEL_35;
    }

LABEL_27:

    return;
  }

  v26 = swift_retain_n();
  CRKeyPath.init(from:)(v26, &v38);
  if (v4)
  {
    goto LABEL_27;
  }

  v25 = v38;
LABEL_35:
  v31 = *(a1 + 16);
  if (v31)
  {
    v39 = v25;
    v32 = *(*v31 + 200);
    v35 = v25;

    sub_1ADDD86D8(v35, *(&v35 + 1));
    v32(a2, &v39, a1, 1, a2, v36);
    sub_1ADDCC35C(v39, *(&v39 + 1));

    v33 = v40;
    v34 = v35;
    goto LABEL_37;
  }

  __break(1u);
}

uint64_t WeakRef.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t WeakRef.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1ADDCC35C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double WeakRef.init(id:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  *&v16 = sub_1ADDCC6B4(&unk_1F23BC1E0);
  *(&v16 + 1) = v10;
  v11 = sub_1ADDD8E0C();
  v13 = v12;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v11, v13);
  v14 = *(v5 + 8);
  v14(a1, v4);
  v14(v9, v4);
  result = *&v16;
  *a2 = v16;
  return result;
}

double WeakRef.init<A>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v9 = *(a1 + 32);

  sub_1ADEB03A0(a2, a3, a4, &v11);

  (*(*(a3 - 8) + 8))(a2, a3);
  result = v11.n128_f64[0];
  *a5 = v11;
  return result;
}

uint64_t WeakRef.init<A>(_:_:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1ADDD86D8(v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v6, v7);

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double WeakRef.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  (*(a3 + 48))(&v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

uint64_t WeakRef.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  v13 = *v4;
  v14 = v8;
  v9 = *(a4 + 16);
  sub_1ADDD86D8(v13, v8);
  v9(&v13, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v13;
  v11 = v14;

  return sub_1ADDCC35C(v10, v11);
}

{
  v8 = v4[1];
  v13 = *v4;
  v14 = v8;
  v9 = *(a4 + 40);
  sub_1ADDD86D8(v13, v8);
  v9(&v13, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v13;
  v11 = v14;

  return sub_1ADDCC35C(v10, v11);
}

uint64_t sub_1AE21DD2C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3;
  v5 = *(a2 + a3 - 32);
  v6 = *(v4 - 24);
  v7 = *(v4 - 16);
  v8 = *(v4 - 8);
  v11 = *a1;
  v9 = type metadata accessor for WeakRef();
  return WeakRef.subscript.getter(a2, v9, v6, v8);
}

uint64_t sub_1AE21DDA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v12 = *a2;
  v13 = a2[1];
  sub_1ADDD86D8(*a2, v13);
  v10 = type metadata accessor for WeakRef();
  sub_1AE21F32C(a1, a3, v10, v7, v9);

  return sub_1ADDCC35C(v12, v13);
}

uint64_t WeakRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE21F32C(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  v9 = *(a3 + 16);
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

void (*WeakRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x68uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = a5;
  v12[2] = a3;
  v14 = *(a3 + 16);
  v15 = sub_1AE23D7CC();
  v13[5] = v15;
  v16 = *(v15 - 8);
  v13[6] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[8] = v18;
  v19 = *(a4 - 8);
  v20 = v19;
  v13[9] = v19;
  if (v11)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v23 = *v5;
  v22 = v5[1];
  v13[10] = v21;
  v13[11] = v23;
  v13[12] = v22;
  (*(v20 + 16))();
  *v13 = v23;
  v13[1] = v22;
  WeakRef.subscript.getter(a2, a3, a4, a5);
  return sub_1AE21E0B4;
}

void sub_1AE21E0B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v9 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v11 = *(*a1 + 24);
  v10 = *(*a1 + 32);
  v14 = v10;
  v15 = *(*a1 + 80);
  v12 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(v7, v6, v9);
    sub_1ADDD86D8(v4, v3);
    sub_1AE21F32C(v7, v15, v12, v11, v14);
    (*(v5 + 8))(v15, v11);
    v13 = *(v8 + 8);
    v13(v7, v9);
    sub_1ADDCC35C(v4, v3);
    v13(v6, v9);
  }

  else
  {
    sub_1ADDD86D8(v4, v3);
    sub_1AE21F32C(v6, v15, v12, v11, v14);
    (*(v5 + 8))(v15, v11);
    (*(v8 + 8))(v6, v9);
    sub_1ADDCC35C(v4, v3);
  }

  free(v15);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t WeakRef.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v6;

  sub_1ADDD86D8(v7, v6);
  v9 = *(a2 + 24);
  sub_1ADEAE800(&v13, *(a2 + 16), a3);

  v10 = v13;
  v11 = v14;

  return sub_1ADDCC35C(v10, v11);
}

uint64_t sub_1AE21E2D8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v6 = *(a2 + a3 - 16);
  v7 = *a2;
  v10 = *a1;
  v8 = type metadata accessor for WeakRef();
  return WeakRef.subscript.getter(v7, v8, a4);
}

uint64_t sub_1AE21E340(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = *a2;
  v9 = a2[1];
  v12 = *a2;

  sub_1ADDD86D8(v8, v9);
  v10 = type metadata accessor for WeakRef();
  sub_1AE21F45C(a1, v7, v10);

  return sub_1ADDCC35C(v12, v9);
}

uint64_t WeakRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE21F45C(a1, a2, a3);

  v5 = *(a3 + 16);
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*WeakRef.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
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
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10 = *(a3 + 16);
  v11 = sub_1AE23D7CC();
  v9[4] = v11;
  v12 = *(v11 - 8);
  v9[5] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = *v3;
  v16 = v3[1];
  v9[7] = v14;
  v9[8] = v15;
  v9[9] = v16;
  *v9 = v15;
  v9[1] = v16;
  WeakRef.subscript.getter(a2, a3, v14);
  return sub_1AE21E59C;
}

void sub_1AE21E59C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    sub_1ADDD86D8(v4, v3);

    sub_1AE21F45C(v5, v9, v10);

    v11 = *(v8 + 8);
    v11(v5, v7);
    sub_1ADDCC35C(v4, v3);
    v11(v6, v7);
  }

  else
  {
    v12 = *(*a1 + 64);
    sub_1ADDD86D8(v4, v3);

    sub_1AE21F45C(v6, v9, v10);

    (*(v8 + 8))(v6, v7);
    sub_1ADDCC35C(v12, v3);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t WeakRef.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  if (v6)
  {
    v9 = v3;
    v7 = *v3;
    v8 = v9[1];
    v11 = *a1;
    v10 = a1[1];
    v19 = v11;
    v20 = v10;
    v21 = v6;
    *&v18 = v7;
    *(&v18 + 1) = v8;
    sub_1AE003EE4(v11, v10, v6);
    sub_1ADDD86D8(v7, v8);
    v12 = type metadata accessor for Capsule.ObservableDifference();
    Capsule.ObservableDifference.subscript.getter(&v18, v12, *(a2 + 16), *(a2 + 24), a3);
    sub_1ADDCC35C(v18, *(&v18 + 1));

    return sub_1AE003F24(v11, v10, v6);
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = *(*(a2 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = *(*(AssociatedTypeWitness - 8) + 56);

    return v17(a3, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t WeakRef.visitReferences(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9[0] = v4;
  v9[1] = v5;
  return (*(v7 + 24))(v9, *(a2 + 16), *(a2 + 24), v6, v7);
}

uint64_t WeakRef.copy(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1ADDDE7CC(v4, v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);
    *a2 = v9;
    v10 = *(&v9 + 1);
    v11 = v9;
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    v11 = v4;
    v10 = v5;
  }

  return sub_1ADDD86D8(v11, v10);
}

uint64_t WeakRef.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    v6 = *v2;
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = a1;

  WeakRef.copy(renamingReferences:)(&v7, a2);
}

uint64_t WeakRef.ObservableDifference.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if ((v2 >> 60) > 0xF || ((1 << (v2 >> 60)) & 0x8880) == 0)
  {
    v4 = *v1;
    *a1 = *v1;
    a1[1] = v2;
    return sub_1ADDD86D8(v4, v2);
  }

  else
  {
    *a1 = xmmword_1AE2427C0;
  }

  return result;
}

uint64_t WeakRef.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *v1;
  v6 = xmmword_1AE2427C0;
  v7 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return static WeakRef.ObservableDifference.== infix(_:_:)(&v7, &v6) & 1;
}

uint64_t static WeakRef.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v2 >> 60;
  if (v2 >> 60 == 7)
  {
    if (v4 >> 60 != 7)
    {
      goto LABEL_14;
    }
  }

  else if (v6 == 11)
  {
    if (v4 >> 60 != 11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v6 != 15)
    {
      if ((v4 >> 60) > 0xF || ((1 << (v4 >> 60)) & 0x8880) == 0)
      {
        v11[0] = *a1;
        v11[1] = v2;
        v10[0] = v5;
        v10[1] = v4;
        sub_1AE21F578(v5, v4);
        sub_1AE21F578(v3, v2);
        sub_1AE21F578(v5, v4);
        sub_1AE21F578(v3, v2);
        v7 = static WeakRef.== infix(_:_:)(v11, v10);
        sub_1AE21F5A0(v3, v2);
        sub_1AE21F5A0(v5, v4);
        sub_1AE21F5A0(v5, v4);
        sub_1AE21F5A0(v3, v2);
        return v7 & 1;
      }

      goto LABEL_14;
    }

    if (v4 >> 60 != 15)
    {
LABEL_14:
      sub_1AE21F578(*a2, *(a2 + 8));
      sub_1AE21F578(v3, v2);
      sub_1AE21F5A0(v3, v2);
      sub_1AE21F5A0(v5, v4);
      v7 = 0;
      return v7 & 1;
    }
  }

  sub_1AE21F5A0(*a1, v2);
  sub_1AE21F5A0(v5, v4);
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1AE21EC10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static WeakRef.ObservableDifference.== infix(_:_:)(a1, a2);
}

uint64_t WeakRef.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *v4;
  v11 = v4[1];
  sub_1ADDD86D8(*v4, v11);
  sub_1ADDD86D8(v8, v9);
  v12 = sub_1ADDD6F8C(v10, v11, v8, v9);
  sub_1ADDCC35C(v8, v9);
  result = sub_1ADDCC35C(v10, v11);
  if (v12)
  {
    sub_1AE003F64(a2, v20);
    v14 = v21;
    if (v21)
    {
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v18[0] = v10;
      v18[1] = v11;
      (*(v15 + 16))(v19, v18, *(a3 + 16), *(a3 + 24), v14, v15);
      v16 = v19[0];
      v17 = v19[1];
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      if (v17 >> 60 != 3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1AE003FD4(v20);
    }

    v16 = 0;
    v17 = 0x3000000000000000;
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

LABEL_8:
  *a4 = v16;
  a4[1] = v17;
  return result;
}

uint64_t static WeakRef.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(*a1, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v2, v3);
  return v6 & 1;
}

uint64_t WeakRef.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1AE23BECC();
}

uint64_t WeakRef.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE21EE2C()
{
  sub_1AE23E31C();
  WeakRef.hash(into:)();
  return sub_1AE23E34C();
}

uint64_t WeakRef.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v6 = *v3;
  v5 = v3[1];
  result = sub_1ADE71C08();
  if (!v2)
  {
    v8 = result;
    v9 = *(a1 + 104);

    if (v9 >= 3)
    {
      v14 = sub_1ADE66644(v6, v5);
      swift_beginAccess();
      sub_1AE1B7794(v14);
    }

    else
    {
      sub_1ADDD86D8(v6, v5);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v10 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v6, v5);

      sub_1ADDCC35C(v6, v5);
      swift_beginAccess();
      v11 = *(*(v8 + 24) + 16);
      if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 7)
      {
        inited = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v15 = inited[8];
      v16 = inited[9];
      v17 = inited[10];
      inited[8] = v10;
      inited[9] = v6;
      inited[10] = v5;
      sub_1ADE73D6C(v15, v16, v17);
      sub_1AE1B76EC(inited);
      v18 = *(*(v8 + 24) + 16);
      if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 7)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v19 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v19 = sub_1ADDE4C34(v19);
      }

      swift_beginAccess();
      *(v19 + 24) = 1;
      *(v19 + 32) = 1;
      sub_1AE1B76EC(v19);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t WeakRef.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1ADE57060();
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t WeakRef.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1AE23E38C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1ADE56FBC();
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v6;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1AE21F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);
  v11 = sub_1AE23D7CC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v17 = *v5;
  v16 = v5[1];
  (*(v18 + 16))(v21 - v14, a1, v13);
  v21[0] = v17;
  v21[1] = v16;
  v19 = *(a5 + 48);
  sub_1ADDD86D8(v17, v16);
  return v19(v15, v21, v10, *(a3 + 24), a4, a5);
}

uint64_t sub_1AE21F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v14 = *v3;
  v13 = v3[1];
  v15 = *(a2 + 32);
  (*(v16 + 16))(v18 - v11, a1, v10);
  v18[0] = v14;
  v18[1] = v13;

  sub_1ADDD86D8(v14, v13);
  sub_1ADEAEA50(v12, v18, v7, *(a3 + 24));
}

uint64_t sub_1AE21F578(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    return sub_1ADDD86D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1AE21F5A0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  return a1;
}

uint64_t sub_1AE21F5C8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE21F628()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence7WeakRefV20ObservableDifferenceOyx_G(uint64_t a1)
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

uint64_t sub_1AE21F68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 16))
  {
    return (*a1 + 10);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE21F6E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((13 - a2) >> 2) | (4 * (13 - a2))) << 60;
    }
  }

  return result;
}

uint64_t sub_1AE21F75C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  if (qword_1ED9670C0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v5 = word_1ED96F220;
    v6 = HIBYTE(word_1ED96F220);
    v7 = byte_1ED96F222;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v81 = v6;
    v82 = v5;
    v88 = v6;
    v85 = v3;
    v86 = a1 + 64;
    v84 = a1;
    v78 = v12;
    v15 = v5;
    if (v11)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v17 >= v12)
      {

        v75 = *v3;

        *v3 = v14;
        *a2 = v82;
        a2[1] = v81;
        a2[2] = v7 & 1;
        return result;
      }

      v11 = *(v8 + 8 * v17);
      ++v13;
      if (v11)
      {
        v89 = v15;
        v87 = v7;
        v13 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  while (1)
  {
    while (1)
    {
      v89 = v15;
      v87 = v7;
LABEL_13:
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = v18 | (v13 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(a1 + 56) + 8 * v19);
      v24 = *v3;
      a1 = *(*v3 + 16);

      v91 = v23;

      if (a1)
      {
        v25 = sub_1ADDD7A10(v21, v22);
        if (v26)
        {
          break;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v14;
      v32 = v22;
      v33 = v21;
      v3 = v32;
      v34 = sub_1ADDD7A10(v21, v32);
      v36 = v14[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_94;
      }

      a1 = v35;
      if (v14[3] >= v39)
      {
        v8 = v86;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = v34;
          sub_1ADF6F61C();
          v34 = v74;
        }

        v40 = v33;
        if (a1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1ADF69B9C(v39, isUniquelyReferenced_nonNull_native);
        v40 = v21;
        v34 = sub_1ADDD7A10(v21, v3);
        v8 = v86;
        if ((a1 & 1) != (v41 & 1))
        {
          goto LABEL_99;
        }

        if (a1)
        {
LABEL_23:
          v42 = v34;

          v14 = v92;
          v43 = v92[7];
          v44 = *(v43 + 8 * v42);
          *(v43 + 8 * v42) = v91;

          goto LABEL_29;
        }
      }

      v14 = v92;
      v92[(v34 >> 6) + 8] |= 1 << v34;
      v45 = (v14[6] + 16 * v34);
      *v45 = v40;
      v45[1] = v3;
      *(v14[7] + 8 * v34) = v91;
      v46 = v14[2];
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_95;
      }

      v14[2] = v47;
LABEL_29:
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v48 = word_1EB5D750B;
      v49 = HIBYTE(word_1EB5D750B);
      v50 = byte_1EB5D750D;

      if (v89 == v48 || !v48)
      {
        v51 = v89;
        goto LABEL_43;
      }

      if (v89 > 1)
      {
        v51 = v89;
        if (v89 != 2)
        {
          goto LABEL_43;
        }

        v52 = v48 == 1;
      }

      else
      {
        v82 = v48;
        v51 = v48;
        if (!v89)
        {
          goto LABEL_43;
        }

        v52 = v48 == 2;
      }

      if (v52)
      {
        v51 = 3;
      }

      else
      {
        v51 = v48;
      }

      v82 = v51;
LABEL_43:
      if (v88 == v49 || !v49)
      {
        v16 = v88;
      }

      else if (v88 > 1)
      {
        v16 = v88;
        if (v88 == 2)
        {
          v53 = v49 == 1;
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v49;
        v16 = v49;
        if (v88)
        {
          v53 = v49 == 2;
LABEL_50:
          if (v53)
          {
            v16 = 3;
          }

          else
          {
            v16 = v49;
          }

          v81 = v16;
        }
      }

      v7 = v87 | v50;
      v88 = v16;
      a1 = v84;
      v3 = v85;
      v15 = v51;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v83 = v21;
    v27 = *(*(v24 + 56) + 8 * v25);
    if (v27 == v91)
    {
      v30 = word_1ED96F220;
      a1 = HIBYTE(word_1ED96F220);
      v79 = byte_1ED96F222;
      LOBYTE(v92) = word_1ED96F220;

      v8 = v86;
    }

    else
    {
      v28 = *(*(v24 + 56) + 8 * v25);

      v8 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = (*(*v27 + 168))();

        v27 = v29;
      }

      (*(*v27 + 96))(&v92, v91);
      v30 = v92;
      a1 = BYTE1(v92);
      v79 = BYTE2(v92);
    }

    v55 = v88;
    v54 = v89;
    if (v89 != v30 && v30)
    {
      if (v89 > 1)
      {
        if (v89 != 2)
        {
          goto LABEL_67;
        }

        v56 = v30 == 1;
      }

      else
      {
        if (!v89)
        {
          v82 = v30;
          v54 = v30;
          goto LABEL_67;
        }

        v56 = v30 == 2;
      }

      if (v56)
      {
        v54 = 3;
      }

      else
      {
        v54 = v30;
      }

      v82 = v54;
    }

LABEL_67:
    v90 = v54;
    if (v88 != a1 && a1)
    {
      if (v88 > 1)
      {
        if (v88 != 2)
        {
          goto LABEL_79;
        }

        v57 = a1 == 1;
      }

      else
      {
        if (!v88)
        {
          v81 = a1;
          v55 = a1;
          goto LABEL_79;
        }

        v57 = a1 == 2;
      }

      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = a1;
      }

      v81 = v58;
      v55 = v58;
    }

LABEL_79:
    v59 = v55;
    v80 = v27;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v14;
    v3 = sub_1ADDD7A10(v83, v22);
    v62 = v14[2];
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_96;
    }

    v65 = v61;
    if (v14[3] >= v64)
    {
      if ((v60 & 1) == 0)
      {
        sub_1ADF6F61C();
      }

      v66 = v83;
    }

    else
    {
      sub_1ADF69B9C(v64, v60);
      v66 = v83;
      v67 = sub_1ADDD7A10(v83, v22);
      if ((v65 & 1) != (v68 & 1))
      {
        goto LABEL_99;
      }

      v3 = v67;
    }

    v88 = v59;
    v12 = v78;
    if ((v65 & 1) == 0)
    {
      break;
    }

    v14 = v92;
    v69 = v92[7];
    v70 = *(v69 + 8 * v3);
    *(v69 + 8 * v3) = v80;

LABEL_90:
    v7 = v87 | v79;

    a1 = v84;
    v3 = v85;
    v15 = v90;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v14 = v92;
  v92[(v3 >> 6) + 8] |= 1 << v3;
  v71 = (v14[6] + 16 * v3);
  *v71 = v66;
  v71[1] = v22;
  *(v14[7] + 8 * v3) = v80;

  v72 = v14[2];
  v38 = __OFADD__(v72, 1);
  v73 = v72 + 1;
  if (!v38)
  {
    v14[2] = v73;
    goto LABEL_90;
  }

  __break(1u);
LABEL_99:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE21FE14(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (v6)
    {
      v10 = a1;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = a1;
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          return result;
        }

        if (v11 >= v7)
        {

          return 0;
        }

        v6 = *(v3 + 8 * v11);
        ++v9;
      }

      while (!v6);
      v9 = v11;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    v13 = *(*(a2 + 56) + 8 * v12);
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_1ADDD7A10(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    v20 = *(*(v10 + 56) + 8 * v17);
    v21 = *(*v13 + 120);

    v23 = v21(v22);

    if (v23)
    {
      goto LABEL_17;
    }
  }

LABEL_17:

  return 1;
}

uint64_t sub_1AE21FFB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  LOBYTE(v10) = 0;
  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(**(*(a1 + 56) + ((v12 << 9) | (8 * v13))) + 200);

    v14(&v16, v15);

    if (v16 <= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v16;
    }

    if (v10 == 3)
    {
LABEL_14:

      *a2 = v10;
      return result;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2200E4(uint64_t a1, uint64_t a2)
{
  v35 = MEMORY[0x1E69E7CD0];
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v32 = v4;
  for (i = v8; v7; result = )
  {
LABEL_11:
    while (1)
    {
      v18 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v19 = v18 | (v10 << 6);
      v20 = *(*(a2 + 56) + 8 * v19);
      if (*(a1 + 16))
      {
        break;
      }

      v11 = *(*(a2 + 56) + 8 * v19);

LABEL_6:
      v12 = type metadata accessor for AllRefsVisitor();
      v13 = swift_allocObject();
      *(v13 + 24) = 0;
      *(v13 + 16) = MEMORY[0x1E69E7CD0];
      v14 = (v13 + 16);
      v34[3] = v12;
      v34[4] = &off_1F23C4500;
      v34[0] = v13;
      v15 = *(*v20 + 128);

      v15(v34);
      v4 = v32;
      v8 = i;
      __swift_destroy_boxed_opaque_existential_1(v34);
      swift_beginAccess();
      v16 = *v14;

      sub_1AE00F014(v16);

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v21 = (*(a2 + 48) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];

    v24 = sub_1ADDD7A10(v22, v23);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_6;
    }

    v27 = *(a1 + 56);
    if (v20 == *(v27 + 8 * v24))
    {
      v31 = *(v27 + 8 * v24);

      v30 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v28 = *(*v20 + 104);

      v30 = v28(v29);
    }

    sub_1AE00F014(v30);
  }

LABEL_7:
  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v8)
    {

      return v35;
    }

    v7 = *(v4 + 8 * v17);
    ++v10;
    if (v7)
    {
      v10 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE22036C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(*(a1 + 48) + 16 * v11 + 8);
    v13 = *(**(*(a1 + 56) + 8 * v11) + 152);

    LOBYTE(v13) = v13(v14);

    if (v13)
    {
      v15 = 1;
LABEL_13:

      return v15;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9Coherence17UnknownPropertiesV18finalizeTimestampsyyAA9CRContextCF_0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 + 64;
  v4 = 1 << *(*v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v23 = v2;
  while (v6)
  {
LABEL_12:
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v11;
    v13 = v11[1];

    v15 = sub_1ADF5F2F0(v24, v12, v13);
    if (*v14)
    {
      v16 = v14;
      v17 = *(**v14 + 152);

      LOBYTE(v17) = v17(v18);

      if (v17)
      {
        v19 = *v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = (*(**v16 + 168))();
          v21 = *v16;
          *v16 = v20;
        }

        (*(**v16 + 160))(a1);
      }

      (v15)(v24, 0);
      v2 = v23;
    }

    else
    {
      (v15)(v24, 0);
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Coherence::UnknownProperties __swiftcall UnknownProperties.copy(renamingReferences:)(Swift::OpaquePointer_optional renamingReferences)
{
  v3 = v1;
  v4 = *v2;
  if (renamingReferences.value._rawValue)
  {
    rawValue = renamingReferences.value._rawValue;
  }

  else
  {
    rawValue = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = rawValue;

  v6 = sub_1AE156B60(v4, &v8);

  *v3 = v6;
  return result;
}

Coherence::UnknownProperties __swiftcall UnknownProperties.copy(renamingReferences:)(Swift::OpaquePointer *renamingReferences)
{
  v3 = v1;
  result.properties._rawValue = sub_1AE156B60(*v2, renamingReferences);
  v3->properties._rawValue = result.properties._rawValue;
  return result;
}

uint64_t UnknownProperties.encode(to:)(uint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = *v1 + 64;
  v7 = 1 << *(*v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*v1 + 64);
  v10 = (v7 + 63) >> 6;
  v43 = v5;

  v12 = 0;
  v40 = v10;
  v41 = v6;
  v42 = a1;
  while (v9)
  {
LABEL_10:
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = (*(v43 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v47 = *(*(v43 + 56) + 8 * v17);
    v21 = *(a1 + 24);
    MEMORY[0x1EEE9AC00](result);
    v39[2] = &v47;
    v39[3] = a1;

    sub_1ADE6B9FC(sub_1AE220BAC, v39);
    if (v3)
    {
    }

    v22 = *(a1 + 16);
    v44 = sub_1ADE66494(v20, v19);

    swift_beginAccess();
    v23 = *(*(v22 + 24) + 16);
    v24 = (~v23 & 0xF000000000000007) != 0 && (v23 & 0xF000000000000000) == 0x3000000000000000;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v28 = (v23 & 0xFFFFFFFFFFFFFFFLL);
      v26 = v28[2];
      v27 = v28[3];
      v25 = v28[4];
    }

    v46 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1ADDF69D0(0, *(v26 + 2) + 1, 1, v26);
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    if (v31 >= v30 >> 1)
    {
      v26 = sub_1ADDF69D0((v30 > 1), v31 + 1, 1, v26);
    }

    *(v26 + 2) = v31 + 1;
    *&v26[8 * v31 + 32] = v44;

    MEMORY[0x1B26FB860](v32);
    if (*(v46 + 16) >= *(v46 + 24) >> 1)
    {
      v38 = *(v46 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v33 = v46;
    v34 = *(v22 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v22 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v36 = swift_allocObject();
      *(v36 + 16) = 0xF000000000000007;
      v37 = *(v35 + 16);
      *(v36 + 16) = v37;
      *(v22 + 24) = v36;
      sub_1ADE5215C(v37);
    }

    v9 &= v9 - 1;
    v13 = *(v22 + 24);
    v14 = swift_allocObject();
    *(v14 + 16) = v26;
    *(v14 + 24) = v33;
    *(v14 + 32) = v25;
    v15 = *(v13 + 16);
    *(v13 + 16) = v14 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v15);

    v3 = v45;
    v6 = v41;
    a1 = v42;
    v10 = v40;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      v12 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t UnknownProperties.init(defaultState:)@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ADDDEC54(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1AE220BC8()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1ADE6EFAC(0, v13, 0);
    v14 = v38;
    v15 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v29 = *(v1 + 72);
    do
    {
      v37 = v13;
      v16 = v32;
      sub_1ADDCEE40(v15, v32, &qword_1EB5BA168, &unk_1AE25B3D0);
      v17 = *(v31 + 48);
      v18 = v33;
      sub_1ADDCEE40(v16, v33, &qword_1EB5BA168, &unk_1AE25B3D0);
      v19 = v35;
      v20 = *(v35 + 48);
      v36 = *(v35 + 64);
      sub_1ADDD27F0(v18 + v20, v11, type metadata accessor for Replica);
      v21 = v34;
      sub_1ADDD2198(v16, v34, &qword_1EB5BA168, &unk_1AE25B3D0);
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      v24 = sub_1AE23C12C();
      v25 = *(v24 - 8);
      (*(v25 + 32))(&v11[v17], v21 + v23, v24);
      sub_1ADE0DCEC(v21 + v22, type metadata accessor for Replica);
      sub_1ADDCEDE0(v21, &qword_1EB5BA480, &qword_1AE25AAE0);
      (*(v25 + 8))(v18 + v36, v24);
      sub_1ADDCEDE0(v18, &qword_1EB5BA480, &qword_1AE25AAE0);
      v38 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1ADE6EFAC(v26 > 1, v27 + 1, 1);
        v14 = v38;
      }

      *(v14 + 16) = v27 + 1;
      sub_1ADDD2198(v11, v14 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, &qword_1EB5BA2A0, &unk_1AE242200);
      v15 += v29;
      v13 = v37 - 1;
    }

    while (v37 != 1);
  }

  return v14;
}

uint64_t sub_1AE220F80()
{
  v1 = v0;
  v59 = type metadata accessor for RetainedMapRun(0);
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = v47 - v12;
  v13 = sub_1AE23C0EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v47 - v21;
  sub_1AE23C10C();
  sub_1AE23C0DC();
  (*(v14 + 8))(v17, v13);
  v23 = v22;
  v24 = *(v19 + 44);
  v25 = sub_1AE22A490(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D46C();
  if (*(v23 + v24) == v60[0])
  {
    return sub_1ADDCEDE0(v23, &qword_1EB5BA440, &unk_1AE24CCB0);
  }

  v52 = (v2 + 56);
  v53 = (v2 + 48);
  v49 = v23;
  v50 = v13;
  v47[1] = v25;
  v48 = v24;
  while (1)
  {
    v27 = sub_1AE23D51C();
    v29 = *v28;
    v30 = v28[1];
    v27(v60, 0);
    sub_1AE23D47C();
    result = sub_1ADDE22AC(v29, v30);
    v32 = v31;
    v33 = v57;
    if (result != v31)
    {
      break;
    }

LABEL_4:
    sub_1ADDE2B98(result, v32);
    v23 = v49;
    sub_1AE23D46C();
    if (*(v23 + v48) == v60[0])
    {
      return sub_1ADDCEDE0(v23, &qword_1EB5BA440, &unk_1AE24CCB0);
    }
  }

  if (v31 < result)
  {
    goto LABEL_25;
  }

  if (result < v31)
  {
    v34 = *v1;
    v35 = result;
    v56 = result;
    while (1)
    {
      if (result < 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      if (v35 >= v34[2])
      {
        goto LABEL_23;
      }

      v36 = v54;
      v37 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v38 = *(v55 + 72) * v35;
      sub_1ADDCEE40(v34 + v37 + v38, v54, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDD2198(v36 + *(v5 + 36), v33, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v53)(v33, 1, v59) == 1)
      {
        sub_1ADDCEDE0(v33, &qword_1EB5BA450, &unk_1AE25B3B0);
      }

      else
      {
        v39 = v5;
        v40 = v59;
        v41 = v33;
        v42 = v51;
        sub_1ADDD27F0(v41, v51, type metadata accessor for RetainedMapRun);
        v43 = v42;
        v44 = *(v42 + *(v40 + 20));
        v45 = v44 - 1;
        if (v44 > 1)
        {
          v46 = v58;
          sub_1ADDD2198(v43, v58, &qword_1EB5BA460, &qword_1AE251020);
          *(v46 + *(v40 + 20)) = v45;
          (*v52)(v46, 0, 1, v40);
          v5 = v39;
          goto LABEL_17;
        }

        sub_1ADE0DCEC(v43, type metadata accessor for RetainedMapRun);
        v5 = v39;
      }

      (*v52)(v58, 1, 1, v59);
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1ADF799F0(v34);
        v34 = result;
      }

      v33 = v57;
      if (v35 >= v34[2])
      {
        goto LABEL_24;
      }

      ++v35;
      sub_1ADDE4820(v58, v34 + v37 + *(v5 + 36) + v38);
      *v1 = v34;
      result = v56;
      if (v32 == v35)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AE221574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v46 - v9;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v25 = *v2;
  v26 = *(*v2 + 16);
  if (v26 && (v27 = v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v28 = *(v14 + 72), *(v27 + v28 * (v26 - 1) + 8) > a1))
  {
    v29 = a1;
    result = sub_1ADDE2A80(a1, 0, v25);
    if (result >= v26)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_1ADDCEE40(v27 + result * v28, v24, &qword_1EB5BA148, &qword_1AE241B60);
    (*(v14 + 56))(v24, 0, 1, v13);
  }

  else
  {
    v29 = a1;
    (*(v14 + 56))(&v46 - v23, 1, 1, v13);
  }

  sub_1ADDD2198(v24, v22, &qword_1EB5BA488, &unk_1AE25B3C0);
  if ((*(v14 + 48))(v22, 1, v13) == 1)
  {
    sub_1ADDCEDE0(v22, &qword_1EB5BA488, &unk_1AE25B3C0);
    v31 = 1;
    v33 = v50;
    v32 = v51;
    v34 = v49;
    return (*(v34 + 56))(v32, v31, 1, v33);
  }

  v35 = v29;
  sub_1ADDD2198(v22, v17, &qword_1EB5BA148, &qword_1AE241B60);
  v36 = v48;
  sub_1ADDCEE40(v17 + *(v13 + 36), v48, &qword_1EB5BA450, &unk_1AE25B3B0);
  v37 = type metadata accessor for RetainedMapRun(0);
  v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
  v32 = v51;
  v34 = v49;
  if (v38 == 1)
  {
    sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v36, &qword_1EB5BA450, &unk_1AE25B3B0);
    v39 = v47;
    v33 = v50;
    (*(v34 + 56))(v47, 1, 1, v50);
LABEL_12:
    sub_1ADDCEDE0(v39, &qword_1EB5BA460, &qword_1AE251020);
    v31 = 1;
    return (*(v34 + 56))(v32, v31, 1, v33);
  }

  v39 = v47;
  sub_1ADDCEE40(v36, v47, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADE0DCEC(v36, type metadata accessor for RetainedMapRun);
  v33 = v50;
  if ((*(v34 + 48))(v39, 1, v50) == 1)
  {
    sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
    goto LABEL_12;
  }

  v40 = v46;
  sub_1ADDD27F0(v39, v46, type metadata accessor for FinalizedTimestamp);
  v41 = sub_1AE23BFEC();
  (*(*(v41 - 8) + 16))(v32, v40, v41);
  v42 = *(v40 + *(v33 + 20));
  result = sub_1ADE0DCEC(v40, type metadata accessor for FinalizedTimestamp);
  v43 = __OFADD__(v42, v35);
  v44 = v42 + v35;
  if (v43)
  {
    goto LABEL_18;
  }

  v45 = *v17;
  result = sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
  if (!__OFSUB__(v44, v45))
  {
    v31 = 0;
    *(v32 + *(v33 + 20)) = v44 - v45;
    return (*(v34 + 56))(v32, v31, 1, v33);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE221B48(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for Replica();
  sub_1ADDDE470(v10 + *(*(v11 - 8) + 72) * a3, v9, type metadata accessor for Replica);
  v12 = *(a6 + 56) + 24 * a3;

  return sub_1ADDE56CC(v12, a2);
}

uint64_t sub_1AE221C28(uint64_t a1, char a2, uint64_t a3)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - v11;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1AE23DA2C();

  v68 = 0xD000000000000013;
  v69 = 0x80000001AE2647C0;
  v65 = a1;
  v12 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v12);

  MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE2647E0);
  if (a2)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a2)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1B26FB670](v13, v14);

  MEMORY[0x1B26FB670](10, 0xE100000000000000);
  v16 = v68;
  v15 = v69;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v52 = v68;
    v53 = v69;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v17, 0);
    v18 = v67;
    v19 = -1 << *(a3 + 32);
    v20 = sub_1AE23D8EC();
    v55 = xmmword_1AE241900;
    v56 = a3;
    v54 = a3 + 64;
    v21 = v60;
    while (1)
    {
      v63 = v18;
      v22 = *(a3 + 36);
      v23 = *(v21 + 48);
      v24 = v58;
      v61 = v17;
      v62 = v22;
      sub_1AE221B48(v58, v58 + v23, v20, v22, 0, a3);
      v25 = v59;
      sub_1ADDD27F0(v24, v59, type metadata accessor for Replica);
      sub_1ADDE5634(v24 + v23, v25 + *(v21 + 48));
      v68 = 8224;
      v69 = 0xE200000000000000;
      v26 = v57;
      sub_1ADDCEE40(v25, v57, &qword_1EB5BA478, &qword_1AE24D470);
      v27 = *(v21 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
      v28 = swift_allocObject();
      *(v28 + 16) = v55;
      sub_1AE23BFCC();
      v29 = MEMORY[0x1E69E7508];
      *(v28 + 56) = MEMORY[0x1E69E7508];
      v30 = MEMORY[0x1E69E7558];
      *(v28 + 64) = MEMORY[0x1E69E7558];
      *(v28 + 32) = v31;
      sub_1AE23BFCC();
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      *(v28 + 72) = v32;
      v65 = sub_1AE23CD3C();
      v66 = v33;
      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v64 = *(v26 + *(type metadata accessor for Replica() + 20));
      v34 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v34);

      v35 = v65;
      v36 = v66;
      sub_1ADE0DCEC(v26, type metadata accessor for Replica);
      MEMORY[0x1B26FB670](v35, v36);

      sub_1ADDE5C20(v26 + v27);
      MEMORY[0x1B26FB670](58, 0xE100000000000000);
      sub_1ADDCEE40(v25, v26, &qword_1EB5BA478, &qword_1AE24D470);
      v37 = *(v21 + 48);
      v38 = sub_1AE2221D4();
      v40 = v39;
      sub_1ADDE5C20(v26 + v37);
      MEMORY[0x1B26FB670](v38, v40);

      sub_1ADE0DCEC(v26, type metadata accessor for Replica);
      v41 = v68;
      v42 = v69;
      v43 = v25;
      v18 = v63;
      result = sub_1ADDCEDE0(v43, &qword_1EB5BA478, &qword_1AE24D470);
      v67 = v18;
      v46 = *(v18 + 16);
      v45 = *(v18 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_1ADE0B11C((v45 > 1), v46 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v46 + 1;
      v47 = v18 + 16 * v46;
      *(v47 + 32) = v41;
      *(v47 + 40) = v42;
      a3 = v56;
      if (v20 < 0 || v20 >= -(-1 << *(v56 + 32)))
      {
        break;
      }

      if (((*(v54 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v62 != *(v56 + 36))
      {
        goto LABEL_20;
      }

      v20 = sub_1AE23D90C();
      v17 = v61 - 1;
      if (v61 == 1)
      {
        v16 = v52;
        v15 = v53;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_17:
    v68 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v48 = sub_1AE23CBFC();
    v50 = v49;

    v68 = v16;
    v69 = v15;

    MEMORY[0x1B26FB670](v48, v50);

    MEMORY[0x1B26FB670](125, 0xE100000000000000);

    return v68;
  }

  return result;
}

uint64_t sub_1AE2221D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = (&v27 - v7);
  strcpy(v37, "RLEMapping: ");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE0B11C(0, v10, 0);
    v13 = 0;
    v11 = v36;
    v27 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = v9;
    v29 = v10;
    v30 = v5;
    while (v13 < *(v9 + 16))
    {
      sub_1ADDCEE40(v27 + *(v5 + 72) * v13, v8, &qword_1EB5BA148, &qword_1AE241B60);
      v14 = *v8;
      v32 = v8[1];
      v33 = v14;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1AE23DBAC();
      MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
      sub_1AE23DBAC();
      MEMORY[0x1B26FB670](540945696, 0xE400000000000000);
      sub_1ADDCEE40(v8 + *(v31 + 36), v4, &qword_1EB5BA450, &unk_1AE25B3B0);
      v15 = type metadata accessor for RetainedMapRun(0);
      if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
      {
        sub_1ADDCEDE0(v4, &qword_1EB5BA450, &unk_1AE25B3B0);
        v16 = 0xE100000000000000;
        v17 = 63;
      }

      else
      {
        v17 = sub_1AE2225D8();
        v16 = v18;
        sub_1ADE0DCEC(v4, type metadata accessor for RetainedMapRun);
      }

      MEMORY[0x1B26FB670](v17, v16);

      v19 = v34;
      v20 = v35;
      result = sub_1ADDCEDE0(v8, &qword_1EB5BA148, &qword_1AE241B60);
      v36 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1ADE0B11C((v21 > 1), v22 + 1, 1);
        v11 = v36;
      }

      ++v13;
      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v5 = v30;
      v9 = v28;
      if (v29 == v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v34 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v24 = sub_1AE23CBFC();
    v26 = v25;

    MEMORY[0x1B26FB670](v24, v26);

    return v37[0];
  }

  return result;
}

uint64_t sub_1AE2225D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1AE23DA2C();

  v19 = 980382760;
  v20 = 0xE400000000000000;
  sub_1ADDCEE40(v0, v8, &qword_1EB5BA460, &qword_1AE251020);
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v8, 1, v9);
  sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
  if (v11 == 1)
  {
    v12 = 0xE100000000000000;
    v13 = 63;
LABEL_5:
    MEMORY[0x1B26FB670](v13, v12);

    MEMORY[0x1B26FB670](0x436E696174657220, 0xED00003A746E756FLL);
    v17 = *(v1 + *(type metadata accessor for RetainedMapRun(0) + 20));
    v16 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v16);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    return v19;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1ADDCEE40(v1, v5, &qword_1EB5BA460, &qword_1AE251020);
  result = v10(v5, 1, v9);
  if (result != 1)
  {
    v15 = FinalizedTimestamp.description.getter();
    MEMORY[0x1B26FB670](v15);

    sub_1ADE0DCEC(v5, type metadata accessor for FinalizedTimestamp);
    v13 = v17;
    v12 = v18;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2228B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  sub_1ADDCEE40(a1, &v27 - v15, &qword_1EB5BA480, &qword_1AE25AAE0);
  sub_1ADDDE470(a2, &v16[*(v7 + 56)], type metadata accessor for Replica);
  v17 = *(v7 + 72);
  v18 = sub_1AE23C12C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v16[v17], a3, v18);
  sub_1ADDCEE40(v16, v13, &qword_1EB5BA168, &unk_1AE25B3D0);
  v20 = *(v7 + 56);
  v21 = *(v7 + 72);
  sub_1ADDD2198(v13, v10, &qword_1EB5BA480, &qword_1AE25AAE0);
  sub_1ADDD27F0(&v13[v20], &v10[v20], type metadata accessor for Replica);
  (*(v19 + 32))(&v10[v21], &v13[v21], v18);
  v22 = v27;
  v23 = *v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1ADE56760(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1ADE56760(v24 > 1, v25 + 1, 1, v23);
  }

  sub_1ADDCEDE0(v16, &qword_1EB5BA168, &unk_1AE25B3D0);
  v23[2] = v25 + 1;
  result = sub_1ADDD2198(v10, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, &qword_1EB5BA168, &unk_1AE25B3D0);
  *v22 = v23;
  return result;
}

uint64_t sub_1AE222B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v18 - v4;
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v7, 0);
    v9 = 0;
    v8 = v21;
    v18 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v19 = v5;
    v10 = v2;
    while (v9 < *(v6 + 16))
    {
      sub_1ADDCEE40(v18 + *(v10 + 72) * v9, v5, &qword_1EB5BA168, &unk_1AE25B3D0);
      sub_1AE222DD4(v5, v20);
      sub_1ADDCEDE0(v5, &qword_1EB5BA168, &unk_1AE25B3D0);
      v11 = v20[0];
      v12 = v20[1];
      v21 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ADE0B11C((v13 > 1), v14 + 1, 1);
        v8 = v21;
      }

      ++v9;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v5 = v19;
      if (v7 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    sub_1ADDCEDE0(v5, &qword_1EB5BA168, &unk_1AE25B3D0);

    __break(1u);
  }

  else
  {
LABEL_7:
    v20[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v16 = sub_1AE23CBFC();

    return v16;
  }

  return result;
}

uint64_t sub_1AE222DD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - v12;
  v39 = 40;
  v40 = 0xE100000000000000;
  v35 = a1;
  sub_1ADDCEE40(a1, v9, &qword_1EB5BA168, &unk_1AE25B3D0);
  v14 = *(v3 + 48);
  v34 = *(v3 + 64);
  sub_1ADDD2198(v9, v13, &qword_1EB5BA480, &qword_1AE25AAE0);
  v15 = type metadata accessor for Timestamp(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    v16 = sub_1AE23C12C();
    (*(*(v16 - 8) + 8))(&v9[v34], v16);
    sub_1ADE0DCEC(&v9[v14], type metadata accessor for Replica);
    sub_1ADDCEDE0(v13, &qword_1EB5BA480, &qword_1AE25AAE0);
    v17 = 0xE100000000000000;
    v18 = 63;
  }

  else
  {
    v33 = v14;
    v37 = sub_1AE1B6A38();
    v38 = v19;
    MEMORY[0x1B26FB670](40, 0xE100000000000000);
    v41 = *&v13[*(v15 + 20)];
    v20 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v20);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    v18 = v37;
    v17 = v38;
    sub_1ADE0DCEC(v13, type metadata accessor for Timestamp);
    v16 = sub_1AE23C12C();
    (*(*(v16 - 8) + 8))(&v9[v34], v16);
    sub_1ADE0DCEC(&v9[v33], type metadata accessor for Replica);
  }

  MEMORY[0x1B26FB670](v18, v17);

  MEMORY[0x1B26FB670](0x202E2E2E20, 0xE500000000000000);
  v21 = v35;
  v22 = v35 + *(v3 + 48);
  v23 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](v23);

  MEMORY[0x1B26FB670](8236, 0xE200000000000000);
  sub_1ADDCEE40(v21, v6, &qword_1EB5BA168, &unk_1AE25B3D0);
  v24 = *(v3 + 48);
  v25 = *(v3 + 64);
  v26 = sub_1ADF5CF74();
  v28 = v27;
  sub_1AE23C12C();
  (*(*(v16 - 8) + 8))(&v6[v25], v16);
  MEMORY[0x1B26FB670](v26, v28);

  sub_1ADE0DCEC(&v6[v24], type metadata accessor for Replica);
  sub_1ADDCEDE0(v6, &qword_1EB5BA480, &qword_1AE25AAE0);
  result = MEMORY[0x1B26FB670](41, 0xE100000000000000);
  v30 = v40;
  v31 = v36;
  *v36 = v39;
  v31[1] = v30;
  return result;
}

id sub_1AE2232A0(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v38 = type metadata accessor for FinalizedTimestamp(0);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Replica();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v18 = sub_1AE23BFEC();
  v19 = *(*(v18 - 8) + 16);
  v19(v16, a2 + v17, v18);
  *&v16[*(v10 + 20)] = *(a2 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v20 = *(v2 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v20 + 16))
  {
    goto LABEL_6;
  }

  v21 = sub_1ADDD8A6C(v16);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    sub_1ADE0DCEC(v16, type metadata accessor for Replica);
    return 0;
  }

  sub_1ADDE56CC(*(v20 + 56) + 24 * v21, v41);
  sub_1ADE0DCEC(v16, type metadata accessor for Replica);

  sub_1ADDE5634(v41, v42);
  sub_1AE221574(v37, v7);
  v23 = v38;
  if ((*(v36 + 48))(v7, 1, v38) != 1)
  {
    v25 = v35;
    sub_1ADDD27F0(v7, v35, type metadata accessor for FinalizedTimestamp);
    v19(v13, v25, v18);
    *&v13[*(v10 + 20)] = 0;
    v26 = type metadata accessor for ObjCReplica(0);
    v27 = objc_allocWithZone(v26);
    v19(&v27[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v13, v18);
    *&v27[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
    v40.receiver = v27;
    v40.super_class = v26;
    v28 = objc_msgSendSuper2(&v40, sel_init);
    sub_1ADE0DCEC(v13, type metadata accessor for Replica);
    v38 = *(v25 + *(v23 + 20));
    v29 = type metadata accessor for ObjCTimestamp(0);
    v30 = objc_allocWithZone(v29);
    v31 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v32 = &v30[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp];
    v19(&v30[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp], &v28[v31], v18);
    *&v32[*(v10 + 20)] = *&v28[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];
    *&v32[*(type metadata accessor for Timestamp(0) + 20)] = v38;
    v39.receiver = v30;
    v39.super_class = v29;
    v33 = objc_msgSendSuper2(&v39, sel_init);

    sub_1ADE0DCEC(v25, type metadata accessor for FinalizedTimestamp);
    sub_1ADDE5C20(v42);
    return v33;
  }

  sub_1ADDE5C20(v42);
  sub_1ADDCEDE0(v7, &qword_1EB5BA460, &qword_1AE251020);
  return 0;
}

id sub_1AE22378C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v60 - v4;
  v67 = type metadata accessor for FinalizedTimestamp(0);
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Replica();
  v71 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v65 = type metadata accessor for Timestamp(0);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE470(a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v60 - v22, type metadata accessor for Timestamp);
  sub_1ADDD27F0(v23, v17, type metadata accessor for Replica);
  v25 = *(v8 + 32);
  v62 = v17;
  v25(v11, v17, v7);
  v63 = v24;
  sub_1ADDDE470(v24, v20, type metadata accessor for Timestamp);
  v26 = *&v20[*(v12 + 20)];
  sub_1ADE0DCEC(v20, type metadata accessor for Replica);
  v27 = type metadata accessor for ObjCReplica(0);
  v28 = objc_allocWithZone(v27);
  v29 = *(v8 + 16);
  v29(&v28[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v11, v7);
  *&v28[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v26;
  v30 = v7;
  v75.receiver = v28;
  v75.super_class = v27;
  v60 = v27;
  v31 = objc_msgSendSuper2(&v75, sel_init);
  (*(v8 + 8))(v11, v7);
  v32 = v69;
  v33 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v61 = v29;
  v29(v32, &v31[v33], v7);
  v34 = *&v31[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

  v35 = v70;
  v36 = v71;
  *(v32 + *(v71 + 20)) = v34;
  v37 = *(v35 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v37 + 16))
  {
    goto LABEL_6;
  }

  v38 = *(v35 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);

  v39 = sub_1ADDD8A6C(v32);
  if ((v40 & 1) == 0)
  {

LABEL_6:
    sub_1ADE0DCEC(v32, type metadata accessor for Replica);
    return 0;
  }

  sub_1ADDE56CC(*(v37 + 56) + 24 * v39, v74);
  sub_1ADE0DCEC(v32, type metadata accessor for Replica);

  sub_1ADDE5634(v74, v76);
  v41 = v65;
  v42 = v66;
  sub_1AE221574(*(v63 + *(v65 + 20)), v66);
  v43 = v67;
  if ((*(v64 + 48))(v42, 1, v67) != 1)
  {
    v45 = v42;
    v46 = v68;
    sub_1ADDD27F0(v45, v68, type metadata accessor for FinalizedTimestamp);
    v47 = v62;
    v48 = v46;
    v49 = v61;
    v61(v62, v46, v30);
    *(v47 + *(v36 + 20)) = 0;
    v50 = v60;
    v51 = objc_allocWithZone(v60);
    v49(&v51[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v47, v30);
    *&v51[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
    v73.receiver = v51;
    v73.super_class = v50;
    v52 = objc_msgSendSuper2(&v73, &selRef_versionWithError_);
    sub_1ADE0DCEC(v47, type metadata accessor for Replica);
    v53 = *(v48 + *(v43 + 20));
    v54 = type metadata accessor for ObjCTimestamp(0);
    v55 = v41;
    v56 = objc_allocWithZone(v54);
    v57 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v58 = &v56[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp];
    v49(&v56[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp], &v52[v57], v30);
    *&v58[*(v71 + 20)] = *&v52[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];
    *&v58[*(v55 + 20)] = v53;
    v72.receiver = v56;
    v72.super_class = v54;
    v59 = objc_msgSendSuper2(&v72, sel_init);

    sub_1ADE0DCEC(v68, type metadata accessor for FinalizedTimestamp);
    sub_1ADDE5C20(v76);
    return v59;
  }

  sub_1ADDE5C20(v76);
  sub_1ADDCEDE0(v42, &qword_1EB5BA460, &qword_1AE251020);
  return 0;
}

uint64_t sub_1AE223EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v169 = type metadata accessor for FinalizedTimestampRange(0);
  v8 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v180 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for RetainedMapRun(0);
  v178 = *(v182 - 8);
  v10 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v170 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v172 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v141 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v141 - v18;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v173 = *(v160 - 8);
  v19 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v183 = (&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v141 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v145 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v141 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v157 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v151 = &v141 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v141 - v34;
  v181 = type metadata accessor for FinalizedTimestamp(0);
  v36 = *(v181 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v39 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v156 = &v141 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v142 = &v141 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v165 = &v141 - v45;
  v46 = type metadata accessor for Replica();
  v47 = v46 - 8;
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = MEMORY[0x1E69E7CC0];
  v188 = 0;
  swift_unknownObjectWeakInit();
  v188 = 0;
  swift_unknownObjectWeakAssign();
  v51 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v52 = sub_1AE23BFEC();
  v53 = *(v52 - 8);
  v54 = *(v53 + 16);
  v163 = v52;
  v162 = v54;
  v161 = v53 + 16;
  (v54)(v50, a3 + v51);
  *&v50[*(v47 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v55 = *(v4 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v55 + 16))
  {
    goto LABEL_9;
  }

  v56 = *(v4 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);

  v57 = sub_1ADDD8A6C(v50);
  if ((v58 & 1) == 0)
  {

LABEL_9:
    sub_1ADE0DCEC(v50, type metadata accessor for Replica);
LABEL_10:
    sub_1ADDE56CC(&v187, &v186);
    v65 = type metadata accessor for ObjCRLE();
    v66 = objc_allocWithZone(v65);
    sub_1ADDE56CC(&v186, v66 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
    v184.receiver = v66;
    v184.super_class = v65;
    v67 = objc_msgSendSuper2(&v184, sel_init);
    sub_1ADDE5C20(&v186);
    sub_1ADDE5C20(&v187);
    return v67;
  }

  sub_1ADDE56CC(*(v55 + 56) + 24 * v57, &v185);
  sub_1ADE0DCEC(v50, type metadata accessor for Replica);

  result = sub_1ADDE5634(&v185, &v186);
  v60 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    goto LABEL_89;
  }

  if (v60 >= a1)
  {
    v153 = v35;
    v61 = v154;
    v62 = v145;
    v63 = v151;
    v64 = v160;
    if (v60 != a1)
    {
      v68 = v186;
      v69 = *(v186 + 16);
      v143 = v69 - 1;
      v150 = (v173 + 56);
      v149 = (v173 + 48);
      v171 = (v178 + 48);
      v176 = (v36 + 56);
      v166 = (v178 + 56);
      v152 = (v36 + 48);
      v159 = (v36 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v70 = &qword_1EB5BA148;
      v71 = &qword_1AE241B60;
      v174 = v39;
      v148 = v60;
      v147 = v186;
      v146 = v69;
      while (1)
      {
        if (a1 >= v60)
        {
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
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (v69)
        {
          v73 = *(v68 + 16);
          if (v69 > v73)
          {
            goto LABEL_83;
          }

          v74 = v68 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
          v75 = *(v173 + 72);
          if (a1 < *(v74 + v75 * v143 + 8))
          {
            v76 = 0;
            v77 = v73 - 1;
            v78 = v73 - 1;
            while (v77 >= -1)
            {
              v79 = v77 / 2;
              if (v79 >= v73)
              {
                break;
              }

              v80 = (v74 + v79 * v75);
              v81 = *v80;
              v82 = v80[1];
              if (a1 >= v81 && a1 < v82)
              {
                v78 = v79;
LABEL_32:
                if (v78 >= v73)
                {
                  goto LABEL_84;
                }

                sub_1ADDCEE40(v74 + v78 * v75, v155, v70, v71);
                v85 = 0;
                goto LABEL_34;
              }

              if (v78 < v76)
              {
                goto LABEL_32;
              }

              if (a1 < v81)
              {
                v78 = v79 - 1;
                v77 = v76 + v79 - 1;
              }

              else
              {
                v76 = v79 + 1;
                v84 = __OFADD__(v79 + 1, v78);
                v77 = v79 + 1 + v78;
                if (v84)
                {
                  goto LABEL_74;
                }
              }
            }

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
        }

        v85 = 1;
LABEL_34:
        v86 = v155;
        (*v150)(v155, v85, 1, v64);
        sub_1ADDD2198(v86, v62, &qword_1EB5BA488, &unk_1AE25B3C0);
        if ((*v149)(v62, 1, v64) == 1)
        {
          break;
        }

        sub_1ADDD2198(v62, v61, v70, v71);
        v91 = v144;
        sub_1ADDCEE40(v61 + *(v64 + 36), v144, &qword_1EB5BA450, &unk_1AE25B3B0);
        if ((*v171)(v91, 1, v182) == 1)
        {
          sub_1ADDCEDE0(v61, v70, v71);
          sub_1ADDCEDE0(v91, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v176)(v63, 1, 1, v181);
          goto LABEL_40;
        }

        sub_1ADDCEE40(v91, v63, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DCEC(v91, type metadata accessor for RetainedMapRun);
        v92 = v181;
        v93 = *v152;
        if ((*v152)(v63, 1, v181) == 1)
        {
          sub_1ADDCEDE0(v61, v70, v71);
LABEL_40:
          v88 = v64;
          v89 = v63;
          v87 = &qword_1EB5BA460;
          v90 = &qword_1AE251020;
LABEL_41:
          sub_1ADDCEDE0(v89, v87, v90);
          v94 = v153;
          v95 = v181;
          v175 = *v176;
          v175(v153, 1, 1, v181);
          v93 = *v152;
          goto LABEL_42;
        }

        v135 = v63;
        v136 = v142;
        sub_1ADDD27F0(v135, v142, type metadata accessor for FinalizedTimestamp);
        v162(v153, v136, v163);
        v137 = *(v136 + *(v92 + 20));
        result = sub_1ADE0DCEC(v136, type metadata accessor for FinalizedTimestamp);
        v84 = __OFADD__(v137, a1);
        v138 = v137 + a1;
        if (v84)
        {
          goto LABEL_87;
        }

        v139 = *v61;
        result = sub_1ADDCEDE0(v61, v70, v71);
        v140 = v138 - v139;
        if (__OFSUB__(v138, v139))
        {
          goto LABEL_88;
        }

        v88 = v64;
        v95 = v181;
        v94 = v153;
        *&v153[*(v181 + 20)] = v140;
        v175 = *v176;
        v175(v94, 0, 1, v95);
        v63 = v151;
LABEL_42:
        v96 = a1 + 1;
        v158 = v93;
        if (v93(v94, 1, v95) == 1)
        {
          result = sub_1ADDCEDE0(v94, &qword_1EB5BA460, &qword_1AE251020);
        }

        else
        {
          v97 = v94;
          v98 = v165;
          sub_1ADDD27F0(v97, v165, type metadata accessor for FinalizedTimestamp);
          v164 = *(v98 + *(v95 + 20));
          v185 = MEMORY[0x1E69E7CC0];
          result = sub_1ADDE22AC(a1, (a1 + 1));
          v100 = v174;
          if (result != v99)
          {
            if (v99 < result)
            {
              goto LABEL_85;
            }

            if (result >= v99)
            {
              goto LABEL_86;
            }

            v141 = a1 + 1;
            v101 = 0;
            v102 = v187;
            v103 = result;
            v104 = v172;
            v168 = result;
            v167 = v99;
            while ((result & 0x8000000000000000) == 0)
            {
              if (v103 >= v102[2])
              {
                goto LABEL_71;
              }

              v105 = v71;
              v106 = v100;
              v177 = (*(v173 + 80) + 32) & ~*(v173 + 80);
              v178 = *(v173 + 72) * v103;
              v107 = v183;
              v108 = v105;
              sub_1ADDCEE40(v102 + v177 + v178, v183, v70, v105);
              sub_1ADDCEE40(v107 + *(v88 + 36), v104, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v171)(v104, 1, v182) == 1)
              {
                sub_1ADDCEDE0(v104, &qword_1EB5BA450, &unk_1AE25B3B0);
                result = (v162)(v106, v165, v163);
                if (__OFADD__(v164, v101))
                {
                  goto LABEL_75;
                }

                v110 = v180;
                v109 = v181;
                *(v106 + *(v181 + 20)) = v164 + v101;
                sub_1ADDDE470(v106, v110, type metadata accessor for FinalizedTimestamp);
                result = (v175)(v110, 0, 1, v109);
                v111 = v183[1];
                v112 = v111 - *v183;
                if (__OFSUB__(v111, *v183))
                {
                  goto LABEL_76;
                }

                v113 = v180;
                *(v180 + *(v169 + 20)) = v112;
                sub_1ADDE4044(v113);
                sub_1ADE0DCEC(v113, type metadata accessor for FinalizedTimestampRange);
                v71 = v108;
                result = sub_1ADDCEDE0(v183, v70, v108);
                v84 = __OFADD__(v101, v112);
                v101 += v112;
                if (v84)
                {
                  goto LABEL_77;
                }

                v100 = v174;
                v114 = v179;
                sub_1ADDD27F0(v174, v179, type metadata accessor for FinalizedTimestamp);
                v175(v114, 0, 1, v181);
                *(v114 + *(v182 + 20)) = 1;
                v88 = v160;
              }

              else
              {
                v115 = v70;
                v116 = v104;
                v117 = v170;
                sub_1ADDD27F0(v116, v170, type metadata accessor for RetainedMapRun);
                v118 = v117;
                v119 = v157;
                sub_1ADDCEE40(v118, v157, &qword_1EB5BA460, &qword_1AE251020);
                v120 = v181;
                if (v158(v119, 1, v181) == 1)
                {
                  sub_1ADDCEDE0(v119, &qword_1EB5BA460, &qword_1AE251020);
                  v121 = v174;
                  result = (v162)(v174, v165, v163);
                  if (__OFADD__(v164, v101))
                  {
                    goto LABEL_79;
                  }

                  v123 = v180;
                  v122 = v181;
                  *(v121 + *(v181 + 20)) = v164 + v101;
                  sub_1ADDDE470(v121, v123, type metadata accessor for FinalizedTimestamp);
                  result = (v175)(v123, 0, 1, v122);
                  v124 = v183[1];
                  v125 = v124 - *v183;
                  if (__OFSUB__(v124, *v183))
                  {
                    goto LABEL_80;
                  }

                  v126 = v180;
                  *(v180 + *(v169 + 20)) = v125;
                  sub_1ADDE4044(v126);
                  sub_1ADE0DCEC(v126, type metadata accessor for FinalizedTimestampRange);
                  result = sub_1ADDCEDE0(v183, v70, &qword_1AE241B60);
                  v84 = __OFADD__(v101, v125);
                  v101 += v125;
                  if (v84)
                  {
                    goto LABEL_81;
                  }

                  v127 = v174;
                  v114 = v179;
                  sub_1ADDD27F0(v174, v179, type metadata accessor for FinalizedTimestamp);
                  v175(v114, 0, 1, v181);
                  v128 = v182;
                  v129 = *(v170 + *(v182 + 20));
                  sub_1ADE0DCEC(v170, type metadata accessor for RetainedMapRun);
                  v130 = *(v128 + 20);
                  v70 = v115;
                  *(v114 + v130) = v129;
                  v100 = v127;
                  v88 = v160;
                  v71 = &qword_1AE241B60;
                }

                else
                {
                  v131 = v156;
                  sub_1ADDD27F0(v119, v156, type metadata accessor for FinalizedTimestamp);
                  v132 = v180;
                  sub_1ADDDE470(v131, v180, type metadata accessor for FinalizedTimestamp);
                  result = (v175)(v132, 0, 1, v120);
                  v133 = v183[1];
                  if (__OFSUB__(v133, *v183))
                  {
                    goto LABEL_78;
                  }

                  v134 = v180;
                  *(v180 + *(v169 + 20)) = v133 - *v183;
                  sub_1ADDE4044(v134);
                  sub_1ADE0DCEC(v134, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DCEC(v131, type metadata accessor for FinalizedTimestamp);
                  v71 = &qword_1AE241B60;
                  sub_1ADDCEDE0(v183, v70, &qword_1AE241B60);
                  v114 = v179;
                  sub_1ADDD27F0(v170, v179, type metadata accessor for RetainedMapRun);
                  v100 = v174;
                }
              }

              (*v166)(v114, 0, 1, v182);
              result = swift_isUniquelyReferenced_nonNull_native();
              v104 = v172;
              if ((result & 1) == 0)
              {
                result = sub_1ADF799F0(v102);
                v102 = result;
              }

              if (v103 >= v102[2])
              {
                goto LABEL_72;
              }

              ++v103;
              sub_1ADDE4820(v179, v102 + v177 + *(v88 + 36) + v178);
              v187 = v102;
              v99 = v167;
              result = v168;
              if (v167 == v103)
              {
                v98 = v165;
                v96 = v141;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

LABEL_66:
          sub_1ADDE2B98(result, v99);

          result = sub_1ADE0DCEC(v98, type metadata accessor for FinalizedTimestamp);
          v62 = v145;
          v63 = v151;
        }

        v64 = v88;
        a1 = v96;
        v60 = v148;
        v72 = v96 == v148;
        v68 = v147;
        v69 = v146;
        v61 = v154;
        if (v72)
        {
          goto LABEL_7;
        }
      }

      v87 = &qword_1EB5BA488;
      v88 = v64;
      v89 = v62;
      v90 = &unk_1AE25B3C0;
      goto LABEL_41;
    }

LABEL_7:
    sub_1ADDE5C20(&v186);
    goto LABEL_10;
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_1AE2253F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = (&v20 - v8);
  v10 = *(v2 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
  v11 = *(v10 + 16);
  if (v11)
  {
    v21 = a1 + a2;
    if (!__OFADD__(a1, a2))
    {
      v12 = 0;
      v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v14 = *(v7 + 72);
      while (1)
      {
        sub_1ADDCEE40(v13, v9, &qword_1EB5BA148, &qword_1AE241B60);
        v16 = *v9;
        v15 = v9[1];
        v17 = v15 - *v9;
        if (__OFSUB__(v15, *v9))
        {
          break;
        }

        sub_1ADDCEDE0(v9, &qword_1EB5BA148, &qword_1AE241B60);
        if (__OFADD__(v16, v17))
        {
          goto LABEL_16;
        }

        if (v16 > a1 || v16 + v17 <= a1)
        {
          v18 = v16 < v21;
          if (v16 < a1)
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 1;
        }

        v19 = __OFADD__(v12, v18);
        v12 += v18;
        if (v19)
        {
          goto LABEL_17;
        }

        v13 += v14;
        if (!--v11)
        {
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }
}

BOOL sub_1AE225774()
{
  v1 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  swift_beginAccess();
  return *(*(v0 + v3) + 16) == 0;
}

uint64_t sub_1AE225824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v27 = a5;
  v28 = a3;
  v8 = sub_1AE23C12C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Replica();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - v19;
  if (a4)
  {
    sub_1ADDDE470(a4 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, v20, type metadata accessor for Timestamp);
    v21 = type metadata accessor for Timestamp(0);
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for Timestamp(0);
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  v23 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v24 = sub_1AE23BFEC();
  result = (*(*(v24 - 8) + 16))(v16, a1 + v23, v24);
  *&v16[*(v13 + 20)] = *(a1 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a2, v28))
  {
    __break(1u);
  }

  else if (a2 + v28 >= a2)
  {
    sub_1AE23C00C();
    v26 = *v27;
    swift_beginAccess();
    sub_1AE2228B0(v20, v16, v12);
    (*(v9 + 8))(v12, v8);
    sub_1ADE0DCEC(v16, type metadata accessor for Replica);
    sub_1ADDCEDE0(v20, &qword_1EB5BA480, &qword_1AE25AAE0);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_1AE225B64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(id, uint64_t, uint64_t, void *))
{
  v12 = a3;
  v13 = a6;
  v14 = a1;
  a7(v12, a4, a5, a6);
}

uint64_t sub_1AE225C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v142 = *(v2 - 8);
  v143 = v2;
  v3 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v124 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v124 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v124 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v124 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v146 = (&v124 - v19);
  v154 = sub_1AE23C12C();
  v20 = *(v154 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v137 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v145 = &v124 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v135 = &v124 - v26;
  v27 = type metadata accessor for Replica();
  v134 = *(v27 - 8);
  v28 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v133 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v129 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v128 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v124 - v39;
  v40 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v124 = v40;
  v41 = v40[1];
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v151 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  v125 = (v43 + 63) >> 6;
  v150 = (v20 + 16);
  v153 = (v20 + 32);
  v136 = v20;
  v141 = (v20 + 8);
  v126 = v41;

  v47 = 0;
  v130 = v42;
  v131 = v37;
  if (!v45)
  {
LABEL_5:
    if (v125 <= v47 + 1)
    {
      v49 = v47 + 1;
    }

    else
    {
      v49 = v125;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v125)
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v82 - 8) + 56))(v37, 1, 1, v82);
        v45 = 0;
        v47 = v50;
        goto LABEL_14;
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        v47 = v48;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  while (1)
  {
    v48 = v47;
LABEL_13:
    v51 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v52 = v51 | (v48 << 6);
    v53 = v126;
    v54 = v133;
    sub_1ADDDE470(*(v126 + 48) + *(v134 + 72) * v52, v133, type metadata accessor for Replica);
    v55 = v136;
    v56 = v135;
    v57 = v154;
    (*(v136 + 16))(v135, *(v53 + 56) + *(v136 + 72) * v52, v154);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v59 = *(v58 + 48);
    sub_1ADDD27F0(v54, v37, type metadata accessor for Replica);
    (*(v55 + 32))(&v37[v59], v56, v57);
    (*(*(v58 - 8) + 56))(v37, 0, 1, v58);
LABEL_14:
    v60 = v149;
    sub_1ADDD2198(v37, v149, &qword_1EB5BA458, &qword_1AE251E00);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (v63(v60, 1, v61) == 1)
    {
      break;
    }

    v64 = *(v61 + 48);
    v65 = v154;
    v144 = *v153;
    v66 = v145;
    (v144)(v145, &v60[v64], v154);
    v67 = type metadata accessor for Timestamp(0);
    v68 = v146;
    v69 = v147;
    (*(*(v67 - 8) + 56))(v146, 1, 1, v67);
    v70 = v151;
    v71 = v152;
    swift_beginAccess();
    sub_1ADDCEE40(v68, v69, &qword_1EB5BA480, &qword_1AE25AAE0);
    v72 = v143;
    sub_1ADDD27F0(v149, &v69[*(v143 + 48)], type metadata accessor for Replica);
    (*v150)(&v69[*(v72 + 64)], v66, v65);
    v73 = v69;
    v74 = v132;
    sub_1ADDCEE40(v73, v132, &qword_1EB5BA168, &unk_1AE25B3D0);
    v75 = *(v72 + 48);
    v76 = *(v72 + 64);
    v77 = v148;
    sub_1ADDD2198(v74, v148, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDD27F0(v74 + v75, v77 + v75, type metadata accessor for Replica);
    (v144)(v77 + v76, v74 + v76, v65);
    v78 = *(v71 + v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + v70) = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = sub_1ADE56760(0, v78[2] + 1, 1, v78);
      *(v152 + v151) = v78;
    }

    v81 = v78[2];
    v80 = v78[3];
    if (v81 >= v80 >> 1)
    {
      v78 = sub_1ADE56760(v80 > 1, v81 + 1, 1, v78);
      *(v152 + v151) = v78;
    }

    sub_1ADDCEDE0(v147, &qword_1EB5BA168, &unk_1AE25B3D0);
    sub_1ADDCEDE0(v146, &qword_1EB5BA480, &qword_1AE25AAE0);
    v78[2] = v81 + 1;
    sub_1ADDD2198(v148, v78 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v81, &qword_1EB5BA168, &unk_1AE25B3D0);
    *(v152 + v151) = v78;
    swift_endAccess();
    result = (*v141)(v145, v154);
    v37 = v131;
    v42 = v130;
    if (!v45)
    {
      goto LABEL_5;
    }
  }

  v147 = v63;
  v148 = v62 + 48;

  v83 = *v124;
  v84 = *v124 + 64;
  v85 = 1 << *(*v124 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & *(*v124 + 64);
  v131 = (v85 + 63) >> 6;
  v146 = (v62 + 56);
  v132 = v83;

  v88 = 0;
  v89 = v129;
  v144 = v61;
  v145 = v84;
  if (!v87)
  {
LABEL_26:
    if (v131 <= v88 + 1)
    {
      v91 = v88 + 1;
    }

    else
    {
      v91 = v131;
    }

    v92 = v91 - 1;
    while (1)
    {
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_45;
      }

      if (v90 >= v131)
      {
        v87 = 0;
        v102 = 1;
        v88 = v92;
        goto LABEL_35;
      }

      v87 = *(v84 + 8 * v90);
      ++v88;
      if (v87)
      {
        v88 = v90;
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v90 = v88;
LABEL_34:
    v93 = __clz(__rbit64(v87));
    v87 &= v87 - 1;
    v94 = v93 | (v90 << 6);
    v95 = v132;
    v96 = v133;
    sub_1ADDDE470(*(v132 + 48) + *(v134 + 72) * v94, v133, type metadata accessor for Replica);
    v97 = *(v95 + 56);
    v98 = v136;
    v99 = v135;
    v100 = v154;
    (*(v136 + 16))(v135, v97 + *(v136 + 72) * v94, v154);
    v101 = *(v61 + 48);
    sub_1ADDD27F0(v96, v89, type metadata accessor for Replica);
    (*(v98 + 32))(v89 + v101, v99, v100);
    v102 = 0;
LABEL_35:
    (*v146)(v89, v102, 1, v61);
    v103 = v89;
    v104 = v128;
    sub_1ADDD2198(v103, v128, &qword_1EB5BA458, &qword_1AE251E00);
    if ((v147)(v104, 1, v61) == 1)
    {
    }

    v105 = *(v61 + 48);
    v106 = v154;
    v149 = *v153;
    v107 = v137;
    (v149)(v137, v104 + v105, v154);
    v108 = type metadata accessor for Timestamp(0);
    v109 = v138;
    (*(*(v108 - 8) + 56))(v138, 1, 1, v108);
    v110 = v104;
    v112 = v151;
    v111 = v152;
    swift_beginAccess();
    v113 = v109;
    v114 = v139;
    sub_1ADDCEE40(v113, v139, &qword_1EB5BA480, &qword_1AE25AAE0);
    v115 = v143;
    sub_1ADDD27F0(v110, v114 + *(v143 + 48), type metadata accessor for Replica);
    (*v150)((v114 + *(v115 + 64)), v107, v106);
    v116 = v127;
    sub_1ADDCEE40(v114, v127, &qword_1EB5BA168, &unk_1AE25B3D0);
    v117 = *(v115 + 48);
    v118 = *(v115 + 64);
    v119 = v140;
    sub_1ADDD2198(v116, v140, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDD27F0(v116 + v117, v119 + v117, type metadata accessor for Replica);
    (v149)(v119 + v118, v116 + v118, v154);
    v120 = *(v111 + v112);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *(v111 + v112) = v120;
    if ((v121 & 1) == 0)
    {
      v120 = sub_1ADE56760(0, v120[2] + 1, 1, v120);
      *(v152 + v151) = v120;
    }

    v123 = v120[2];
    v122 = v120[3];
    v89 = v129;
    v61 = v144;
    v84 = v145;
    if (v123 >= v122 >> 1)
    {
      v120 = sub_1ADE56760(v122 > 1, v123 + 1, 1, v120);
      *(v152 + v151) = v120;
    }

    sub_1ADDCEDE0(v139, &qword_1EB5BA168, &unk_1AE25B3D0);
    sub_1ADDCEDE0(v138, &qword_1EB5BA480, &qword_1AE25AAE0);
    v120[2] = v123 + 1;
    sub_1ADDD2198(v140, v120 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v123, &qword_1EB5BA168, &unk_1AE25B3D0);
    *(v152 + v151) = v120;
    swift_endAccess();
    result = (*v141)(v137, v154);
    if (!v87)
    {
      goto LABEL_26;
    }
  }
}

void sub_1AE226AF0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a3 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = &a1[*a4];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  *(v9 + 1) = v8;
  *(v9 + 2) = v7;
  v12 = a1;

  sub_1ADE42CB8(v10);
}

uint64_t sub_1AE226C04()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence);
  swift_beginAccess();
  v13 = *v2;
  v14 = *(v2 + 1);
  v3 = sub_1AE222B90();
  v5 = v4;
  v6 = (v1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence);
  swift_beginAccess();
  v11 = *v6;
  v12 = *(v6 + 1);
  v7 = sub_1AE222B90();
  v9 = v8;
  sub_1AE23DA2C();

  MEMORY[0x1B26FB670](v3, v5);

  MEMORY[0x1B26FB670](0x73656D6974202C5DLL, 0xEF5B3A73706D6174);
  MEMORY[0x1B26FB670](v7, v9);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return 0x65636E6575716573;
}

uint64_t sub_1AE22718C(uint64_t a1)
{
  sub_1ADDCEE40(a1, v13, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v14)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BAA00, &qword_1AE2587A0);
    goto LABEL_6;
  }

  type metadata accessor for ObjCVersion();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  v2 = &v12[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = (v1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  sub_1ADF64C74(v4, v7);
  if (v8)
  {
    sub_1ADF64C74(v3, v6);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1AE227454(uint64_t a1)
{
  v2 = sub_1AE23C12C();
  v3 = *(v2 - 8);
  v107 = v2;
  v108 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v85 - v10;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Replica();
  v106 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v87 = type metadata accessor for Timestamp(0);
  v24 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v85 - v28;
  v30 = a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE470(a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v85 - v28, type metadata accessor for Timestamp);
  v93 = v29;
  sub_1ADDD27F0(v29, v23, type metadata accessor for Replica);
  v31 = v12[4];
  v97 = v23;
  v91 = v12 + 4;
  v90 = v31;
  v31(v15, v23, v11);
  v105 = v30;
  sub_1ADDDE470(v30, v26, type metadata accessor for Timestamp);
  v32 = *&v26[*(v16 + 20)];
  v96 = v26;
  sub_1ADE0DCEC(v26, type metadata accessor for Replica);
  v33 = type metadata accessor for ObjCReplica(0);
  v34 = objc_allocWithZone(v33);
  v35 = v12[2];
  v35(&v34[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v15, v11);
  *&v34[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v32;
  v110.receiver = v34;
  v110.super_class = v33;
  v92 = v33;
  v36 = objc_msgSendSuper2(&v110, sel_init);
  v37 = v12[1];
  v98 = v15;
  v38 = v15;
  v39 = v11;
  v99 = v12 + 1;
  v89 = v37;
  v37(v38, v11);
  v40 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v41 = v102;
  v95 = v12 + 2;
  v94 = v35;
  v35(v102, &v36[v40], v11);
  v42 = *&v36[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

  v43 = v41;
  *&v41[*(v106 + 20)] = v42;
  v44 = v103 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v45 = *v44;
  if (*(*v44 + 16))
  {
    v46 = *v44;

    v47 = sub_1ADDD8A6C(v43);
    if (v48)
    {
      v49 = v107;
      v50 = v104;
      (*(v108 + 16))(v104, *(v45 + 56) + *(v108 + 72) * v47, v107);
      sub_1ADE0DCEC(v43, type metadata accessor for Replica);

      v51 = 0;
      goto LABEL_6;
    }
  }

  sub_1ADE0DCEC(v43, type metadata accessor for Replica);
  v51 = 1;
  v49 = v107;
  v50 = v104;
LABEL_6:
  v52 = v108;
  v53 = (v108 + 56);
  v54 = *(v108 + 56);
  v54(v50, v51, 1, v49);
  v55 = *(v52 + 48);
  if ((v55)(v50, 1, v49))
  {
    v102 = v55;
    v103 = v54;
    v104 = v53;
    sub_1ADDCEDE0(v50, &qword_1EB5BB780, &qword_1AE24CD18);
    v56 = v105;
    v86 = v44;
    v57 = v93;
    sub_1ADDDE470(v105, v93, type metadata accessor for Timestamp);
    v58 = v97;
    sub_1ADDD27F0(v57, v97, type metadata accessor for Replica);
    v59 = v98;
    v90(v98, v58, v39);
    v60 = v96;
    sub_1ADDDE470(v56, v96, type metadata accessor for Timestamp);
    v61 = v106;
    v62 = *(v60 + *(v106 + 20));
    sub_1ADE0DCEC(v60, type metadata accessor for Replica);
    v63 = v92;
    v64 = objc_allocWithZone(v92);
    v65 = v94;
    v94(&v64[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v59, v39);
    *&v64[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v62;
    v109.receiver = v64;
    v109.super_class = v63;
    v66 = objc_msgSendSuper2(&v109, sel_init);
    v89(v59, v39);
    v67 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v68 = v100;
    v65(v100, &v66[v67], v39);
    v69 = *&v66[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

    *(v68 + *(v61 + 20)) = v69;
    v70 = *(v86 + 1);
    if (*(v70 + 16))
    {
      v71 = *(v86 + 1);

      v72 = sub_1ADDD8A6C(v68);
      v73 = v107;
      v74 = v101;
      if (v75)
      {
        (*(v108 + 16))(v101, *(v70 + 56) + *(v108 + 72) * v72, v107);
        sub_1ADE0DCEC(v68, type metadata accessor for Replica);

        v76 = 0;
      }

      else
      {

        sub_1ADE0DCEC(v68, type metadata accessor for Replica);
        v76 = 1;
      }
    }

    else
    {
      sub_1ADE0DCEC(v68, type metadata accessor for Replica);
      v76 = 1;
      v73 = v107;
      v74 = v101;
    }

    v80 = v102;
    v103(v74, v76, 1, v73);
    if (v80(v74, 1, v73))
    {
      sub_1ADDCEDE0(v74, &qword_1EB5BB780, &qword_1AE24CD18);
      v79 = 0;
    }

    else
    {
      v81 = v108;
      v82 = v88;
      (*(v108 + 16))(v88, v74, v73);
      sub_1ADDCEDE0(v74, &qword_1EB5BB780, &qword_1AE24CD18);
      v83 = *(v105 + *(v87 + 20));
      v79 = sub_1AE23C0CC();
      (*(v81 + 8))(v82, v73);
    }
  }

  else
  {
    v77 = v88;
    (*(v52 + 16))(v88, v50, v49);
    sub_1ADDCEDE0(v50, &qword_1EB5BB780, &qword_1AE24CD18);
    v78 = *(v105 + *(v87 + 20));
    v79 = sub_1AE23C0CC();
    (*(v52 + 8))(v77, v49);
  }

  return v79 & 1;
}

uint64_t sub_1AE227E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23C12C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Replica();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v17 = sub_1AE23BFEC();
  result = (*(*(v17 - 8) + 16))(v15, a3 + v16, v17);
  *&v15[*(v12 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else if (a1 + a2 >= a1)
  {
    sub_1AE23C00C();
    swift_beginAccess();
    sub_1ADF5F4C0(v15, v10);
    (*(v7 + 8))(v10, v6);
    sub_1ADE0DCEC(v15, type metadata accessor for Replica);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2280DC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  swift_beginAccess();

  sub_1ADF5F770(v4, v11);
  sub_1ADF5F770(v3, &v9);
  v7 = v9;
  v8 = v10;
  v5 = &v7;
  MergeResult.merge(_:)(v5);

  return swift_endAccess();
}

id sub_1AE228360(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AE2283B8(unint64_t *a1, uint64_t a2, int64_t *a3, unint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v170 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v159 = &v144 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v163 = &v144 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v164 = &v144 - v18;
  v157 = a3;
  v19 = a3[1];
  v155 = v17;
  if (v19 >= 1)
  {
    v20 = 0;
    v161 = (v17 + 8);
    v162 = v17 + 16;
    v160 = (v17 + 32);
    v21 = MEMORY[0x1E69E7CC0];
    v145 = a4;
    while (1)
    {
      v22 = v20++;
      v151 = v21;
      if (v20 < v19)
      {
        v156 = v19;
        v23 = *v157;
        v147 = v22;
        v24 = v155;
        v25 = v23 + *(v155 + 72) * v20;
        v26 = *(v155 + 72);
        v27 = v23;
        v149 = v23;
        v28 = *(v155 + 16);
        v28(v164, v25, v8);
        v29 = v27 + v26 * v22;
        v30 = v163;
        v153 = v28;
        v28(v163, v29, v8);
        v31 = v164;
        LODWORD(v154) = sub_1ADF5EB00();
        a4 = *(v24 + 8);
        (a4)(v30, v8);
        v152 = a4;
        (a4)(v31, v8);
        v32 = v147 + 2;
        v158 = v26;
        v33 = v149 + v26 * (v147 + 2);
        do
        {
          v20 = v156;
          if (v156 == v32)
          {
            break;
          }

          a4 = v5;
          v36 = v32;
          v37 = v153;
          (v153)(v164, v33, v8);
          v37(v163, v25, v8);
          v167 = sub_1AE23BFCC();
          LOWORD(v168) = v38;
          BYTE2(v168) = v39;
          BYTE3(v168) = v40;
          BYTE4(v168) = v41;
          BYTE5(v168) = v42;
          BYTE6(v168) = v43;
          HIBYTE(v168) = v44;
          v165 = sub_1AE23BFCC();
          LOWORD(v166) = v45;
          BYTE2(v166) = v46;
          BYTE3(v166) = v47;
          BYTE4(v166) = v48;
          BYTE5(v166) = v49;
          BYTE6(v166) = v50;
          HIBYTE(v166) = v51;
          v52 = bswap64(v167);
          v53 = bswap64(v165);
          if (v52 != v53)
          {
            goto LABEL_6;
          }

          v52 = bswap64(v168);
          v53 = bswap64(v166);
          if (v52 == v53)
          {
            v34 = 0;
          }

          else
          {
LABEL_6:
            v34 = v52 < v53 ? -1 : 1;
          }

          v35 = v152;
          v152(v163, v8);
          v35(v164, v8);
          v20 = v36;
          v32 = v36 + 1;
          v33 += v158;
          v25 += v158;
          v5 = a4;
        }

        while (((v154 ^ (v34 >= 0)) & 1) != 0);
        if ((v154 & 1) == 0)
        {
          v21 = v151;
LABEL_30:
          a4 = v145;
          v22 = v147;
          goto LABEL_31;
        }

        v22 = v147;
        if (v20 < v147)
        {
          goto LABEL_137;
        }

        if (v147 < v20)
        {
          v144 = v5;
          v54 = v158 * (v20 - 1);
          v55 = v20 * v158;
          v56 = v20;
          v57 = v147;
          v58 = v147 * v158;
          v21 = v151;
          v156 = v20;
          do
          {
            if (v57 != --v56)
            {
              v59 = *v157;
              if (!*v157)
              {
                goto LABEL_143;
              }

              v60 = *v160;
              (*v160)(v150, v59 + v58, v8, v21);
              if (v58 < v54 || v59 + v58 >= (v59 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60((v59 + v54), v150, v8);
              v21 = v151;
              v20 = v156;
            }

            ++v57;
            v54 -= v158;
            v55 -= v158;
            v58 += v158;
          }

          while (v57 < v56);
          v5 = v144;
          goto LABEL_30;
        }

        v21 = v151;
        a4 = v145;
      }

LABEL_31:
      v61 = v157[1];
      if (v20 < v61)
      {
        if (__OFSUB__(v20, v22))
        {
          goto LABEL_136;
        }

        if (v20 - v22 < a4)
        {
          if (__OFADD__(v22, a4))
          {
            goto LABEL_138;
          }

          if ((v22 + a4) >= v61)
          {
            v62 = v157[1];
          }

          else
          {
            v62 = v22 + a4;
          }

          if (v62 < v22)
          {
LABEL_139:
            __break(1u);
LABEL_140:
            v138 = sub_1ADF7ACAC(a4);
            goto LABEL_110;
          }

          if (v20 != v62)
          {
            v144 = v5;
            v63 = *v157;
            v64 = *(v155 + 72);
            v65 = v20;
            v66 = *(v155 + 16);
            v67 = *v157 + v64 * (v65 - 1);
            v68 = -v64;
            v147 = v22;
            v69 = (v22 - v65);
            v156 = v65;
            v158 = v63;
            v148 = v64;
            v70 = (v63 + v65 * v64);
            v149 = v62;
            do
            {
              v152 = v70;
              v153 = v69;
              v154 = v67;
              do
              {
                v66(v164, v70, v8, v21);
                (v66)(v163, v67, v8);
                v167 = sub_1AE23BFCC();
                LOWORD(v168) = v71;
                BYTE2(v168) = v72;
                BYTE3(v168) = v73;
                BYTE4(v168) = v74;
                BYTE5(v168) = v75;
                BYTE6(v168) = v76;
                HIBYTE(v168) = v77;
                v165 = sub_1AE23BFCC();
                LOWORD(v166) = v78;
                BYTE2(v166) = v79;
                BYTE3(v166) = v80;
                BYTE4(v166) = v81;
                BYTE5(v166) = v82;
                BYTE6(v166) = v83;
                HIBYTE(v166) = v84;
                v85 = bswap64(v167);
                v86 = bswap64(v165);
                if (v85 != v86)
                {
                  goto LABEL_46;
                }

                v85 = bswap64(v168);
                v86 = bswap64(v166);
                if (v85 == v86)
                {
                  v87 = 0;
                }

                else
                {
LABEL_46:
                  v87 = v85 < v86 ? -1 : 1;
                }

                a4 = v161;
                v88 = *v161;
                (*v161)(v163, v8);
                v88(v164, v8);
                if ((v87 & 0x80000000) == 0)
                {
                  break;
                }

                if (!v158)
                {
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                }

                v89 = v159;
                a4 = v160;
                v90 = *v160;
                (*v160)(v159, v70, v8);
                swift_arrayInitWithTakeFrontToBack();
                v90(v67, v89, v8);
                v67 += v68;
                v70 += v68;
              }

              while (!__CFADD__(v69++, 1));
              v67 = v154 + v148;
              v69 = v153 - 1;
              v70 = v152 + v148;
              ++v156;
            }

            while (v156 != v149);
            v20 = v149;
            v5 = v144;
            v22 = v147;
          }
        }
      }

      if (v20 < v22)
      {
        goto LABEL_135;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v21 = v151;
      }

      else
      {
        result = sub_1ADE5522C(0, *(v151 + 2) + 1, 1, v151);
        v21 = result;
      }

      a4 = *(v21 + 2);
      v92 = *(v21 + 3);
      v93 = a4 + 1;
      if (a4 >= v92 >> 1)
      {
        result = sub_1ADE5522C((v92 > 1), a4 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 2) = v93;
      v94 = &v21[16 * a4];
      *(v94 + 4) = v22;
      *(v94 + 5) = v20;
      v95 = *v146;
      if (!*v146)
      {
        goto LABEL_145;
      }

      if (a4)
      {
        while (1)
        {
          v22 = v93 - 1;
          if (v93 >= 4)
          {
            break;
          }

          if (v93 == 3)
          {
            v96 = *(v21 + 4);
            v97 = *(v21 + 5);
            v106 = __OFSUB__(v97, v96);
            v98 = v97 - v96;
            v99 = v106;
LABEL_75:
            if (v99)
            {
              goto LABEL_124;
            }

            v112 = &v21[16 * v93];
            v114 = *v112;
            v113 = *(v112 + 1);
            v115 = __OFSUB__(v113, v114);
            v116 = v113 - v114;
            v117 = v115;
            if (v115)
            {
              goto LABEL_127;
            }

            v118 = &v21[16 * v22 + 32];
            v120 = *v118;
            v119 = *(v118 + 1);
            v106 = __OFSUB__(v119, v120);
            v121 = v119 - v120;
            if (v106)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v116, v121))
            {
              goto LABEL_131;
            }

            if (v116 + v121 >= v98)
            {
              if (v98 < v121)
              {
                v22 = v93 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v122 = &v21[16 * v93];
          v124 = *v122;
          v123 = *(v122 + 1);
          v106 = __OFSUB__(v123, v124);
          v116 = v123 - v124;
          v117 = v106;
LABEL_89:
          if (v117)
          {
            goto LABEL_126;
          }

          v125 = &v21[16 * v22];
          v127 = *(v125 + 4);
          v126 = *(v125 + 5);
          v106 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v106)
          {
            goto LABEL_129;
          }

          if (v128 < v116)
          {
            goto LABEL_3;
          }

LABEL_96:
          a4 = v22 - 1;
          if (v22 - 1 >= v93)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
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
            goto LABEL_139;
          }

          if (!*v157)
          {
            goto LABEL_142;
          }

          v133 = v21;
          v134 = *&v21[16 * a4 + 32];
          v135 = *&v21[16 * v22 + 40];
          sub_1AE228FD4(*v157 + *(v155 + 72) * v134, *v157 + *(v155 + 72) * *&v21[16 * v22 + 32], *v157 + *(v155 + 72) * v135, v95);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v135 < v134)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1ADF7ACAC(v133);
          }

          if (a4 >= *(v133 + 2))
          {
            goto LABEL_121;
          }

          v136 = &v133[16 * a4];
          *(v136 + 4) = v134;
          *(v136 + 5) = v135;
          v169 = v133;
          result = sub_1ADF7AC20(v22);
          v21 = v169;
          v93 = *(v169 + 2);
          if (v93 <= 1)
          {
            goto LABEL_3;
          }
        }

        v100 = &v21[16 * v93 + 32];
        v101 = *(v100 - 64);
        v102 = *(v100 - 56);
        v106 = __OFSUB__(v102, v101);
        v103 = v102 - v101;
        if (v106)
        {
          goto LABEL_122;
        }

        v105 = *(v100 - 48);
        v104 = *(v100 - 40);
        v106 = __OFSUB__(v104, v105);
        v98 = v104 - v105;
        v99 = v106;
        if (v106)
        {
          goto LABEL_123;
        }

        v107 = &v21[16 * v93];
        v109 = *v107;
        v108 = *(v107 + 1);
        v106 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v106)
        {
          goto LABEL_125;
        }

        v106 = __OFADD__(v98, v110);
        v111 = v98 + v110;
        if (v106)
        {
          goto LABEL_128;
        }

        if (v111 >= v103)
        {
          v129 = &v21[16 * v22 + 32];
          v131 = *v129;
          v130 = *(v129 + 1);
          v106 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v106)
          {
            goto LABEL_132;
          }

          if (v98 < v132)
          {
            v22 = v93 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v19 = v157[1];
      a4 = v145;
      if (v20 >= v19)
      {
        goto LABEL_107;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_107:
  v22 = *v146;
  if (*v146)
  {
    a4 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v155;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_140;
    }

    v138 = a4;
LABEL_110:
    v169 = v138;
    a4 = *(v138 + 2);
    if (a4 >= 2)
    {
      while (*v157)
      {
        v139 = *&v138[16 * a4];
        v140 = v138;
        v141 = *&v138[16 * a4 + 24];
        sub_1AE228FD4(*v157 + *(v8 + 72) * v139, *v157 + *(v8 + 72) * *&v138[16 * a4 + 16], *v157 + *(v8 + 72) * v141, v22);
        if (v5)
        {
          goto LABEL_118;
        }

        if (v141 < v139)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_1ADF7ACAC(v140);
        }

        if (a4 - 2 >= *(v140 + 2))
        {
          goto LABEL_134;
        }

        v142 = &v140[16 * a4];
        *v142 = v139;
        *(v142 + 1) = v141;
        v169 = v140;
        sub_1ADF7AC20(a4 - 1);
        v138 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_144;
    }

LABEL_118:

    v143 = *MEMORY[0x1E69E9840];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE228FD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  v82 = *(v15 + 72);
  if (!v82)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a2 - a1 == 0x8000000000000000 && v82 == -1)
  {
    goto LABEL_75;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v82 == -1)
  {
LABEL_76:
    __break(1u);
  }

  v17 = (a2 - a1) / v82;
  v89 = a4;
  v90[0] = a1;
  if (v17 < v16 / v82)
  {
    v18 = v17 * v82;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v81 = a4 + v18;
    v88 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v79 = *(v9 + 16);
      v80 = v9 + 16;
      v21 = (v9 + 8);
      v78 = a3;
      v22 = v79;
      do
      {
        v22(v14, a2, v8);
        v22(v83, a4, v8);
        v86 = sub_1AE23BFCC();
        LOWORD(v87) = v23;
        BYTE2(v87) = v24;
        BYTE3(v87) = v25;
        BYTE4(v87) = v26;
        BYTE5(v87) = v27;
        BYTE6(v87) = v28;
        HIBYTE(v87) = v29;
        v84 = sub_1AE23BFCC();
        LOWORD(v85) = v30;
        BYTE2(v85) = v31;
        BYTE3(v85) = v32;
        BYTE4(v85) = v33;
        BYTE5(v85) = v34;
        BYTE6(v85) = v35;
        HIBYTE(v85) = v36;
        v37 = bswap64(v86);
        v38 = bswap64(v84);
        if (v37 == v38 && (v37 = bswap64(v87), v38 = bswap64(v85), v37 == v38))
        {
          v39 = 0;
        }

        else if (v37 < v38)
        {
          v39 = -1;
        }

        else
        {
          v39 = 1;
        }

        v40 = *v21;
        (*v21)(v83, v8);
        v40(v14, v8);
        if (v39 < 0)
        {
          v41 = v82;
          if (a1 < a2 || a1 >= a2 + v82)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v41;
        }

        else
        {
          v41 = v82;
          v42 = a4 + v82;
          if (a1 < a4 || a1 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v89 = v42;
          a4 += v41;
        }

        a1 += v41;
        v90[0] = a1;
      }

      while (a4 < v81 && a2 < v78);
    }

    goto LABEL_73;
  }

  v19 = v16 / v82 * v82;
  if (a4 < a2 || a2 + v19 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v43 = a4 + v19;
  if (v19 < 1)
  {
    goto LABEL_72;
  }

  v44 = -v82;
  v75 = (v9 + 8);
  v76 = (v9 + 16);
  v45 = a4 + v19;
  v77 = a4;
  v81 = -v82;
  while (2)
  {
    v74 = v43;
    v46 = a2;
    v47 = a2 + v44;
    v79 = v46;
    v80 = v47;
    while (1)
    {
      if (v46 <= a1)
      {
        v90[0] = v46;
        v88 = v74;
        goto LABEL_73;
      }

      v49 = a3;
      v78 = v43;
      v50 = *v76;
      v82 = v45 + v44;
      v50(v14);
      (v50)(v83, v47, v8);
      v86 = sub_1AE23BFCC();
      LOWORD(v87) = v51;
      BYTE2(v87) = v52;
      BYTE3(v87) = v53;
      BYTE4(v87) = v54;
      BYTE5(v87) = v55;
      BYTE6(v87) = v56;
      HIBYTE(v87) = v57;
      v84 = sub_1AE23BFCC();
      LOWORD(v85) = v58;
      BYTE2(v85) = v59;
      BYTE3(v85) = v60;
      BYTE4(v85) = v61;
      BYTE5(v85) = v62;
      BYTE6(v85) = v63;
      HIBYTE(v85) = v64;
      v65 = bswap64(v86);
      v66 = bswap64(v84);
      if (v65 != v66)
      {
        goto LABEL_54;
      }

      v65 = bswap64(v87);
      v66 = bswap64(v85);
      if (v65 == v66)
      {
        v67 = 0;
        v68 = v77;
      }

      else
      {
LABEL_54:
        v68 = v77;
        v67 = v65 < v66 ? -1 : 1;
      }

      v69 = *v75;
      (*v75)(v83, v8);
      v69(v14, v8);
      if (v67 < 0)
      {
        break;
      }

      v44 = v81;
      v70 = v82;
      a3 = v49 + v81;
      v43 = v82;
      v47 = v80;
      if (v49 < v45 || a3 >= v45)
      {
        v48 = v82;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v49 == v45)
        {
          goto LABEL_49;
        }

        v48 = v82;
        swift_arrayInitWithTakeBackToFront();
      }

      v44 = v81;
      v43 = v48;
LABEL_49:
      v45 = v43;
      v46 = v79;
      if (v70 <= v68)
      {
        a2 = v79;
        goto LABEL_72;
      }
    }

    a2 = v80;
    v44 = v81;
    a3 = v49 + v81;
    if (v49 < v79 || a3 >= v79)
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_67:
      v44 = v81;
    }

    else if (v49 != v79)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_67;
    }

    v43 = v78;
    if (v45 > v68)
    {
      continue;
    }

    break;
  }

LABEL_72:
  v90[0] = a2;
  v88 = v43;
LABEL_73:
  sub_1ADF7ADC8(v90, &v89, &v88);
  v71 = *MEMORY[0x1E69E9840];
  return 1;
}

BOOL sub_1AE229750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v27 = a3;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v19 = *(v18 + 56);
  sub_1ADDCEE40(a1, &v26 - v16, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEE40(a2, &v17[v19], &qword_1EB5BA460, &qword_1AE251020);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
LABEL_4:
      v21 = v27(0);
      return *(a1 + *(v21 + 20)) == *(a2 + *(v21 + 20));
    }

    goto LABEL_7;
  }

  sub_1ADDCEE40(v17, v13, &qword_1EB5BA460, &qword_1AE251020);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    sub_1ADE0DCEC(v13, type metadata accessor for FinalizedTimestamp);
LABEL_7:
    v23 = &qword_1EB5BA4A0;
    v24 = &unk_1AE253DA0;
LABEL_8:
    sub_1ADDCEDE0(v17, v23, v24);
    return 0;
  }

  sub_1ADDD27F0(&v17[v19], v9, type metadata accessor for FinalizedTimestamp);
  if (*&v13[*(v5 + 20)] != *&v9[*(v5 + 20)])
  {
    sub_1ADE0DCEC(v9, type metadata accessor for FinalizedTimestamp);
    sub_1ADE0DCEC(v13, type metadata accessor for FinalizedTimestamp);
    v23 = &qword_1EB5BA460;
    v24 = &qword_1AE251020;
    goto LABEL_8;
  }

  v25 = sub_1AE23BF8C();
  sub_1ADE0DCEC(v9, type metadata accessor for FinalizedTimestamp);
  sub_1ADE0DCEC(v13, type metadata accessor for FinalizedTimestamp);
  sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
  if (v25)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_1AE229AAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v76 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - v8;
  v72 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(v72 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v74 = *(v70 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = OBJC_IVAR____TtC9Coherence7ObjCRLE_rle;
  v75 = *(a3 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
  v27 = *(v75 + 16);
  if (v27 == 1)
  {
    v61 = OBJC_IVAR____TtC9Coherence7ObjCRLE_rle;
    sub_1ADDCEE40(v75 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), &v59 - v24, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDD2198(&v25[*(v70 + 36)], v19, &qword_1EB5BA450, &unk_1AE25B3B0);
    v28 = type metadata accessor for RetainedMapRun(0);
    v29 = (*(*(v28 - 8) + 48))(v19, 1, v28);
    sub_1ADDCEDE0(v19, &qword_1EB5BA450, &unk_1AE25B3B0);
    v26 = v61;
    if (v29 != 1)
    {
      v75 = *(a3 + v61);
      v27 = *(v75 + 16);
      if (!v27)
      {
LABEL_55:
        __break(1u);
        return;
      }

      goto LABEL_8;
    }

LABEL_5:
    if (qword_1ED966C88 != -1)
    {
LABEL_51:
      swift_once();
    }

    v30 = sub_1AE23BFEC();
    __swift_project_value_buffer(v30, qword_1EB5D74E8);
    v31 = sub_1AE23BF7C();
    (*(v71 + 16))(v71, v76, a2, v31, -1);
LABEL_42:

    return;
  }

  if (!v27)
  {
    goto LABEL_5;
  }

LABEL_8:
  v68 = v9;
  v32 = &a2[v76];
  if (__OFADD__(v76, a2))
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v60 = a3;
  v61 = v26;
  v59 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v73 = v75 + v59;
  v69 = v71 + 16;
  v63 = (v10 + 56);
  v64 = (v10 + 48);

  v33 = 0;
  v34 = &qword_1EB5BA148;
  v66 = v32;
  v67 = v27;
  v62 = v16;
  do
  {
    if (v33 >= *(v75 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v35 = *(v74 + 72);
    v36 = v34;
    sub_1ADDCEE40(v73 + v35 * v33, v22, v34, &qword_1AE241B60);
    v38 = *v22;
    v37 = v22[1];
    v39 = __OFSUB__(v37, *v22);
    v40 = v37 - *v22;
    if (v39)
    {
      goto LABEL_45;
    }

    v41 = v38 + v40;
    if (__OFADD__(v38, v40))
    {
      goto LABEL_46;
    }

    if (v32 >= v41)
    {
      v42 = (v38 + v40);
    }

    else
    {
      v42 = v32;
    }

    if (v38 > v76 || v41 <= v76)
    {
      if (v38 < v76 || v38 >= v32)
      {
        v34 = v36;
        sub_1ADDCEDE0(v22, v36, &qword_1AE241B60);
        goto LABEL_11;
      }

      v43 = &v42[-v38];
      if (__OFSUB__(v42, v38))
      {
        goto LABEL_48;
      }

      v44 = *v22;
    }

    else
    {
      v43 = &v42[-v76];
      if (__OFSUB__(v42, v76))
      {
        goto LABEL_47;
      }

      v44 = v76;
    }

    a2 = &unk_1AE25B3B0;
    sub_1ADDCEE40(v22 + *(v70 + 36), v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    v45 = type metadata accessor for RetainedMapRun(0);
    if ((*(*(v45 - 8) + 48))(v16, 1, v45) == 1)
    {
      sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
      v46 = v68;
      (*v63)(v68, 1, 1, v72);
    }

    else
    {
      v46 = v68;
      sub_1ADDCEE40(v16, v68, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DCEC(v16, type metadata accessor for RetainedMapRun);
      if ((*v64)(v46, 1, v72) != 1)
      {
        v50 = v46;
        v51 = v65;
        sub_1ADDD27F0(v50, v65, type metadata accessor for FinalizedTimestamp);
        v52 = *(v51 + *(v72 + 20));
        v39 = __OFADD__(v52, v44);
        v53 = v52 + v44;
        if (v39)
        {
          goto LABEL_49;
        }

        v54 = v53 - v38;
        if (__OFSUB__(v53, v38))
        {
          goto LABEL_50;
        }

        a2 = v65;
        v55 = sub_1AE23BF7C();
        v49 = (*(v71 + 16))(v71, v44, v43, v55, v54);

        v16 = v62;
        sub_1ADE0DCEC(a2, type metadata accessor for FinalizedTimestamp);
        goto LABEL_35;
      }
    }

    sub_1ADDCEDE0(v46, &qword_1EB5BA460, &qword_1AE251020);
    if (qword_1ED966C88 != -1)
    {
      swift_once();
    }

    v47 = sub_1AE23BFEC();
    __swift_project_value_buffer(v47, qword_1EB5D74E8);
    v48 = sub_1AE23BF7C();
    v49 = (*(v71 + 16))(v71, v44, v43, v48, -1);

LABEL_35:
    v34 = v36;
    sub_1ADDCEDE0(v22, v36, &qword_1AE241B60);
    v32 = v66;
    v27 = v67;
    if (v49)
    {

      return;
    }

LABEL_11:
    ++v33;
  }

  while (v27 != v33);

  v56 = *(v60 + v61);
  v57 = *(v56 + 16);
  if (!v57)
  {
    goto LABEL_55;
  }

  a2 = *(v56 + v59 + v35 * (v57 - 1) + 8);
  if (a2 < v32)
  {
    v19 = (v32 - a2);
    if (__OFSUB__(v32, a2))
    {
      goto LABEL_53;
    }

    if (qword_1ED966C88 == -1)
    {
LABEL_41:
      v58 = sub_1AE23BFEC();
      __swift_project_value_buffer(v58, qword_1EB5D74E8);
      v31 = sub_1AE23BF7C();
      (*(v71 + 16))(v71, a2, v19, v31, -1);
      goto LABEL_42;
    }

LABEL_54:
    swift_once();
    goto LABEL_41;
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1AE22A3C4()
{
  sub_1ADFAFF70();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1AE22A438(uint64_t a1)
{
  result = sub_1AE22A490(&qword_1ED96A568, type metadata accessor for RetainedMapRun);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE22A490(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL MergeResult.hasDeltaFromOther.getter()
{
  result = 1;
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      return result;
    }

    return (v0[1] & 0xFD) != 0;
  }

  if (!*v0)
  {
    return (v0[1] & 0xFD) != 0;
  }

  return result;
}

Coherence::MergeResult __swiftcall MergeResult.init()()
{
  if (qword_1ED9670C0 != -1)
  {
    v2 = v0;
    v3 = swift_once();
    v0 = v2;
  }

  v1 = byte_1ED96F222;
  *v0 = word_1ED96F220;
  *(v0 + 2) = v1;
  return v3;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MergeResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MergeResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1AE22A864()
{
  result = qword_1EB5BEBE8[0];
  if (!qword_1EB5BEBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BEBE8);
  }

  return result;
}

uint64_t sub_1AE22A8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a7;
  v10 = a6;
  v48 = a5;
  v11 = a3;
  v12 = a2;
  v13 = *(a1 + 16);
  if ((~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x2000000000000000)
  {
    v22 = (v13 & 0xFFFFFFFFFFFFFFFLL);
    v23 = v22[2];
    v24 = v22[3];
    v25 = v22[5];
    *&v45[48] = v22[4];
    v46 = v25;
    *&v45[16] = v23;
    *&v45[32] = v24;
    *v45 = v22[1];
    v17 = *(&v25 + 1);
    v41 = v25;
    v20 = v45[56];
    v39 = *&v45[24];
    v40 = *&v45[40];
    v38 = *&v45[8];
    v15 = *v45;
    sub_1ADFAEE10(v45, v44);
    v19 = v39;
    v21 = v40;
    v18 = v38;
    v16 = v41;
    v11 = a3;
    v9 = a7;
    v12 = a2;
    v10 = a6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v19 = 0uLL;
    v20 = 1;
    v21 = 0uLL;
  }

  *v45 = v15;
  *&v45[8] = v18;
  *&v45[24] = v19;
  *&v45[40] = v21;
  v45[56] = v20;
  *&v46 = v16;
  *(&v46 + 1) = v17;
  v47[0] = *v45;
  v47[1] = *&v45[16];
  v47[2] = *&v45[32];
  v47[3] = *&v45[48];
  v47[4] = v46;
  v30 = v11;
  v31 = v48;
  v32 = sub_1AE236910(v47, v12, 0, 0, v11, a4, v48, v10, v9);
  sub_1ADFAECE8(v45);
  if (v8)
  {
  }

  else
  {
    v44[0] = v30;
    v44[1] = a4;
    v44[2] = v31;
    v44[3] = v10;
    v44[4] = v9;
    v34 = type metadata accessor for CRDTDictionaryRef();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    sub_1AE22CF80(v32);

    *a8 = v37;
  }

  return result;
}

uint64_t sub_1AE22AAC0(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *v2;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v9 = *(v7 + 16);
  v10 = *(a1 + 16);

  v11 = sub_1AE16CC2C();

  v24 = 0;
  v12 = *(a2 + 16);
  v13 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1AE237CE0(v11, a1, &v24, v13, WitnessTable, v23);

  if (!v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = swift_allocObject();
      v16 = *(inited + 16);
      *(v15 + 16) = v16;
      sub_1ADE5215C(v16);

      inited = v15;
    }

    v17 = swift_allocObject();
    v18 = v23[3];
    *(v17 + 48) = v23[2];
    *(v17 + 64) = v18;
    *(v17 + 80) = v23[4];
    v19 = v23[1];
    *(v17 + 16) = v23[0];
    *(v17 + 32) = v19;
    v20 = v17 | 0x2000000000000000;
    v21 = *(inited + 16);
    *(inited + 16) = v20;
    sub_1ADE52174(v21);
  }

  return inited;
}

uint64_t sub_1AE22AC2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v13);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 16));
  }

  (*(v10 + 32))(v15, v9, a2);
  if (sub_1ADF77EEC(*(v2 + *(a2 + 36)), *&v15[*(a2 + 36)]))
  {
    (*(v10 + 8))(v15, a2);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 16));
  }

  v17 = (*(*(a2 + 24) + 64))(v15, *(a2 + 16));
  (*(v10 + 8))(v15, a2);
  return v17;
}

uint64_t sub_1AE22AE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CRDTDictionaryElement.Delta();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1AE22AEE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v8 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  v17 = a1[2];
  v16 = a1[3];
  if (v17)
  {
    v18 = a1[2];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (v17)
  {
    v19 = a1[3];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = a1[3];
  sub_1ADE42C78(a1[2]);

  v21 = sub_1ADDF4A24(v18, v19, a2);
  if (v5)
  {

    v58 = *a1;
    sub_1ADDCEDE0(&v58, &qword_1EB5BBD18, &qword_1AE24F340);
    v57 = a1[1];
    sub_1ADDCEDE0(&v57, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v17);
    v56 = a1[4];
    return sub_1ADDCEDE0(&v56, qword_1EB5BBD20, &unk_1AE253900);
  }

  else
  {
    v23 = v21;
    v42 = v12;
    v43 = v15;
    v44 = a2;
    v45 = v17;
    v46 = v16;
    v24 = v49;
    v25 = v50;
    *(v51 + *(type metadata accessor for CRDTDictionaryElement.Delta() + 36)) = v21;
    if (a1[1])
    {
      type metadata accessor for CRDecoder();
      swift_allocObject();
      v26 = v44;

      v28 = sub_1ADDE77B4(v27, v26);

      v29 = *(*(*(v25 + 16) + 8) + 8);
      v30 = v43;
      v29(v28, v24);
      v31 = v48;
      v32 = v45;

      v53 = *a1;
      sub_1ADDCEDE0(&v53, &qword_1EB5BBD18, &qword_1AE24F340);

      sub_1ADE42CB8(v32);
      v52 = a1[4];
      sub_1ADDCEDE0(&v52, qword_1EB5BBD20, &unk_1AE253900);
      v39 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v31 + 32))(v51, v30, v39);
    }

    else
    {
      v33 = v45;
      if (a1[4])
      {
        v41[1] = v23;
        type metadata accessor for CRDecoder();
        swift_allocObject();
        v34 = v44;

        v43 = sub_1ADDE77B4(v35, v34);

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v38 = v42;
        (*(*(AssociatedConformanceWitness + 8) + 8))(v43, AssociatedTypeWitness);

        v54 = *a1;
        sub_1ADDCEDE0(&v54, &qword_1EB5BBD18, &qword_1AE24F340);
        sub_1ADE42CB8(v33);

        v40 = v47;
        swift_storeEnumTagMultiPayload();
        return (*(v48 + 32))(v51, v38, v40);
      }

      else
      {

        v55 = *a1;
        sub_1ADDCEDE0(&v55, &qword_1EB5BBD18, &qword_1AE24F340);
        sub_1ADE42CB8(v33);
        return swift_storeEnumTagMultiPayload();
      }
    }
  }
}

uint64_t sub_1AE22B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v11;
  v46 = *(v7 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = *(v4 + *(a2 + 36));

  sub_1ADF78ED0(v22, &v54);
  v53 = v54;
  v51 = a1;
  v23 = sub_1ADDF5C7C(a1);
  v52 = v24;

  (*(v17 + 16))(v20, v4, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v26 = v23;
      v27 = v47;
      v28 = v48;
      v29 = v20;
      v30 = v49;
      v31 = (*(v48 + 32))(v47, v29, v49);
      MEMORY[0x1EEE9AC00](v31);
      *(&v45 - 4) = v7;
      *(&v45 - 3) = v8;
      v32 = v27;
      v33 = v51;
      *(&v45 - 2) = v27;
      *(&v45 - 1) = v33;
      v34 = v55;
      v35 = sub_1ADE6B9FC(sub_1AE044050, (&v45 - 6));
      if (v34)
      {

        return (*(v28 + 8))(v27, v30);
      }

      v41 = v35;
      result = (*(v28 + 8))(v32, v30);
      v42 = 0;
      v23 = v26;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v36 = v46;
    v37 = (*(v46 + 32))(v15, v20, v7);
    MEMORY[0x1EEE9AC00](v37);
    *(&v45 - 4) = v7;
    *(&v45 - 3) = v8;
    v38 = v51;
    *(&v45 - 2) = v15;
    *(&v45 - 1) = v38;
    v39 = v55;
    v40 = sub_1ADE6B9FC(sub_1ADE74458, (&v45 - 6));
    if (v39)
    {

      return (*(v36 + 8))(v15, v7);
    }

    v42 = v40;
    result = (*(v36 + 8))(v15, v7);
    v41 = 0;
  }

  v43 = v50;
  *v50 = 0;
  v43[1] = v42;
  v44 = v52;
  v43[2] = v23;
  v43[3] = v44;
  v43[4] = v41;
  return result;
}

uint64_t sub_1AE22B82C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v36 - v6;
  v7 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v39 = v3;
  v40 = v2;
  v14 = type metadata accessor for CRDTDictionaryElement();
  v15 = sub_1AE23D7CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = *(v14 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  (*(v16 + 16))(v19, v41, v15, v23);
  v26 = (*(v20 + 48))(v19, 1, v14);
  v27 = (v43 + 16);
  if (v26 != 1)
  {
    (*(v20 + 32))(v25, v19, v14);
    (*v27)(v13, v42, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v13;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v36;
        v32 = v37;
        v34 = v38;
        (*(v37 + 32))(v36, v31, v38);
        v29 = (*(v40 + 104))(v33, v39);
        (*(v32 + 8))(v33, v34);
        (*(v20 + 8))(v25, v14);
        return v29 & 1;
      }

      (*(v20 + 8))(v25, v14);
    }

    else
    {
      (*(v20 + 8))(v25, v14);
      (*(v43 + 8))(v13, v7);
    }

LABEL_13:
    v29 = 1;
    return v29 & 1;
  }

  (*(v16 + 8))(v19, v15);
  (*v27)(v10, v42, v7);
  v28 = swift_getEnumCaseMultiPayload();
  if (!v28)
  {
    (*(v43 + 8))(v10, v7);
    goto LABEL_13;
  }

  if (v28 == 1)
  {
    (*(v43 + 8))(v10, v7);
  }

  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1AE22BC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79 = a1;
  v78 = a3;
  v4 = *(a2 + 16);
  v5 = sub_1AE23D7CC();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v65 - v7;
  v74 = a2;
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v71 = AssociatedTypeWitness;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v65 - v11;
  v76 = *(v4 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v65 - v16;
  v17 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v75 = v4;
  v77 = v8;
  v25 = type metadata accessor for CRDTDictionaryElement();
  v26 = sub_1AE23D7CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v65 - v29;
  v31 = *(v25 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v65 - v35;
  (*(v27 + 16))(v30, v79, v26, v34);
  v37 = (*(v31 + 48))(v30, 1, v25);
  v79 = v18;
  v38 = (v18 + 16);
  if (v37 == 1)
  {
    (*(v27 + 8))(v30, v26);
    v39 = v80;
    (*v38)(v21, v80, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v31 + 56))(v78, 1, 1, v25);
        return (*(v79 + 8))(v21, v17);
      }

      return (*(v31 + 56))(v78, 1, 1, v25);
    }

    v50 = v75;
    v51 = *(v76 + 32);
    v52 = v73;
    v51(v73, v21, v75);
    v53 = *(v39 + *(v74 + 36));
    v54 = v78;
    v51(v78, v52, v50);
  }

  else
  {
    (*(v31 + 32))(v36, v30, v25);
    v42 = v80;
    (*v38)(v24, v80, v17);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43)
    {
      v44 = v76;
      if (v43 != 1)
      {
        v58 = v73;
        v59 = v75;
        (*(v76 + 16))(v73, v36, v75);
        (*(v31 + 8))(v36, v25);
        v60 = *(v42 + *(v74 + 36));
        v61 = v78;
        (*(v44 + 32))(v78, v58, v59);
        *&v61[*(type metadata accessor for CRDTDictionaryElement() + 36)] = v60;
        (*(v31 + 56))(v61, 0, 1, v25);
      }

      v45 = v69;
      v46 = v70;
      v47 = v71;
      (*(v70 + 32))(v69, v24, v71);
      v48 = v72;
      v49 = v75;
      CRDT.merging(delta:)(v45, v75, v77, v72);
      (*(v46 + 8))(v45, v47);
      (*(v31 + 8))(v36, v25);
      if ((*(v44 + 48))(v48, 1, v49) == 1)
      {
        (*(v67 + 8))(v48, v68);
        return (*(v31 + 56))(v78, 1, 1, v25);
      }

      v62 = *(v44 + 32);
      v63 = v66;
      v62(v66, v48, v49);
      v64 = v73;
      v62(v73, v63, v49);
      v53 = *(v42 + *(v74 + 36));
      v54 = v78;
      v62(v78, v64, v49);
    }

    else
    {
      (*(v31 + 8))(v36, v25);
      v55 = v75;
      v56 = *(v76 + 32);
      v57 = v73;
      v56(v73, v24, v75);
      v53 = *(v42 + *(v74 + 36));
      v54 = v78;
      v56(v78, v57, v55);
    }
  }

  *&v54[*(type metadata accessor for CRDTDictionaryElement() + 36)] = v53;
  (*(v31 + 56))(v54, 0, 1, v25);
}

double sub_1AE22C45C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AE22B410(a1, a2, v7);
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

uint64_t sub_1AE22C4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a5;
  v73 = a2;
  v69 = a1;
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v59 - v14;
  v71 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v59 - v19;
  v20 = sub_1AE23D7CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  v74 = *(a4 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v63 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v59 - v32;
  v75 = v8;
  v76 = v7;
  v72 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v34 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v60 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v68 = &v59 - v37;
  v38 = *a3;
  v39 = a3[1];
  v80 = *a3;
  v81 = v39;
  v40 = *(v78 + *(a4 + 36));
  if (sub_1ADF7974C(v40))
  {
    v79 = v40;
    v80 = v38;
    v81 = v39;

    sub_1ADF777D8(&v80);
    (*(v21 + 16))(v27, v73, v20);
    v41 = v74;
    if ((*(v74 + 48))(v27, 1, a4) == 1)
    {
      (*(v21 + 8))(v27, v20);
      v42 = v68;
      (*(*(v75 - 8) + 16))(v68, v78, v75);
    }

    else
    {
      (*(v41 + 32))(v33, v27, a4);
      v44 = v65;
      (*(v76 + 96))(v69, v33, v75, v76);
      (*(v41 + 8))(v33, a4);
      v46 = v70;
      v45 = v71;
      if ((*(v70 + 48))(v44, 1, v71) == 1)
      {
        (*(v66 + 8))(v44, v67);
        v42 = v68;
      }

      else
      {
        v53 = *(v46 + 32);
        v54 = v62;
        v53(v62, v44, v45);
        v42 = v68;
        v53(v68, v54, v45);
      }
    }

    swift_storeEnumTagMultiPayload();
    v55 = v77;
    sub_1AE22AE48(v42, v79, v77);
    goto LABEL_13;
  }

  (*(v21 + 16))(v24, v73, v20);
  v43 = v74;
  if ((*(v74 + 48))(v24, 1, a4) == 1)
  {
    (*(v21 + 8))(v24, v20);
LABEL_10:
    v51 = type metadata accessor for CRDTDictionaryElement.Delta();
    return (*(*(v51 - 8) + 56))(v77, 1, 1, v51);
  }

  v47 = v63;
  (*(v43 + 32))(v63, v24, a4);
  v48 = v64;
  (*(v76 + 96))(v69, v47, v75, v76);
  v50 = v70;
  v49 = v71;
  if ((*(v70 + 48))(v48, 1, v71) == 1)
  {
    (*(v43 + 8))(v47, a4);
    (*(v66 + 8))(v48, v67);
    goto LABEL_10;
  }

  v57 = v61;
  (*(v50 + 32))(v61, v48, v49);
  v58 = v60;
  (*(v50 + 16))(v60, v57, v49);
  swift_storeEnumTagMultiPayload();
  (*(v50 + 8))(v57, v49);
  (*(v43 + 8))(v47, a4);
  v55 = v77;
  sub_1AE22AE48(v58, MEMORY[0x1E69E7CC0], v77);
LABEL_13:
  v56 = type metadata accessor for CRDTDictionaryElement.Delta();
  return (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
}

uint64_t sub_1AE22CC78(uint64_t a1)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1B26FB670](91, 0xE100000000000000);
  v3 = *(v1 + *(a1 + 36));

  sub_1ADF78ED0(v4, &v10);
  v5 = CRVersion.description.getter();
  v7 = v6;

  MEMORY[0x1B26FB670](v5, v7);

  MEMORY[0x1B26FB670](4074845, 0xE300000000000000);
  v8 = *(a1 + 16);
  sub_1AE23DFCC();
  return v11;
}

uint64_t (*sub_1AE22CD5C(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1AE22CDAC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1AE22CDE4();
  return v3;
}

uint64_t *sub_1AE22CDE4()
{
  v1 = *v0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 112);
  type metadata accessor for CRDTDictionaryElement();
  swift_getWitnessTable();
  v6 = *(v1 + 96);
  type metadata accessor for CRSetRef();
  v0[2] = sub_1AE176A68();
  return v0;
}

uint64_t sub_1AE22CF40(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1AE22CF80(a1);
  return v5;
}

uint64_t sub_1AE22CF80(uint64_t a1)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1AE22D064@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 112);
  v5 = type metadata accessor for CRDTDictionaryElement();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = v1[2];
  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = *(v2 + 80);
  v14 = *(v2 + 104);

  sub_1AE23CB7C();

  if ((*(*(v5 - 8) + 48))(v10, 1, v5))
  {
    (*(v7 + 8))(v10, v6);
    v15 = *(v3 - 8);
    v16 = 1;
    v17 = v20;
  }

  else
  {
    v15 = *(v3 - 8);
    v18 = v20;
    (*(v15 + 16))(v20, v10, v3);
    (*(v7 + 8))(v10, v6);
    v16 = 0;
    v17 = v18;
  }

  return (*(v15 + 56))(v17, v16, 1, v3);
}

uint64_t sub_1AE22D2F4(char *a1, uint64_t a2)
{
  v3 = v2;
  v80 = a2;
  v81 = a1;
  v71 = *v2;
  v4 = *(v71 + 80);
  v5 = *(v71 + 88);
  v72 = *(v71 + 112);
  v6 = type metadata accessor for CRDTDictionaryElement();
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D7CC();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v67 - v9;
  v10 = type metadata accessor for Timestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v4;
  v78 = *(v4 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v67 - v17;
  v77 = v6;
  v76 = *(v6 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = sub_1AE23D7CC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v27 = *(v5 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v70 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v67 - v36;
  v38 = v81;
  (*(v23 + 16))(v26, v35);
  if ((*(v27 + 48))(v26, 1, v5) == 1)
  {
    v39 = *(v23 + 8);
    v39(v26, v22);
    v40 = v3[2];

    v41 = v73;
    v42 = v80;
    sub_1AE16D8FC(v80, v73);

    (*(v78 + 8))(v42, v79);
    v39(v38, v22);
    return (*(v74 + 8))(v41, v75);
  }

  else
  {
    v73 = v23;
    v74 = v22;
    v44 = *(v27 + 32);
    v75 = v37;
    v44(v37, v26, v5);
    v45 = v3[2];
    swift_beginAccess();
    if (*(*(v45 + 40) + 16) && (v46 = *(v71 + 104), v47 = *(v45 + 40), , sub_1ADDFFB6C(v80, v79, v46), v49 = v48, , (v49 & 1) != 0))
    {
      v50 = v3[2];
      v51 = v78;
      v52 = v79;
      v53 = *(v78 + 16);
      v72 = v46;
      v54 = v68;
      v53(v68, v80, v79);
      v71 = v27;
      (*(v27 + 16))(v70, v75, v5);
      swift_beginAccess();
      v55 = v69;
      v53(v69, v54, v52);

      v56 = v77;
      sub_1AE23CADC();
      v57 = sub_1AE23CAEC();
      v59 = v58;
      result = (*(v76 + 48))(v58, 1, v56);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v60 = v71;
        (*(v71 + 40))(v59, v70, v5);
        v57(v82, 0);
        v61 = *(v51 + 8);
        v61(v55, v52);
        v61(v54, v52);
        swift_endAccess();

        v62 = v3[2];

        v63 = v67;
        sub_1ADE10580(v67);
        swift_beginAccess();
        *(v63 + *(type metadata accessor for Replica() + 20));
        sub_1ADDD828C(v63);
        sub_1AE017AB8(v63);
        swift_endAccess();

        v61(v80, v52);
        (*(v73 + 8))(v81, v74);
        return (*(v60 + 8))(v75, v5);
      }
    }

    else
    {
      v64 = v75;
      (*(v27 + 16))(v33, v75, v5);
      v44(v21, v33, v5);
      *&v21[*(type metadata accessor for CRDTDictionaryElement() + 36)] = MEMORY[0x1E69E7CC0];
      v65 = v3[2];

      v66 = v80;
      sub_1AE16D0B0(v80, v21);

      (*(v78 + 8))(v66, v79);
      (*(v73 + 8))(v81, v74);
      (*(v76 + 8))(v21, v77);
      return (*(v27 + 8))(v64, v5);
    }
  }

  return result;
}

void (*sub_1AE22DB2C(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *v1;
  v7 = *(*v1 + 88);
  v8 = sub_1AE23D7CC();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[4] = v11;
  v13 = *(v6 + 80);
  v5[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v5[6] = v14;
  v16 = *(v14 + 64);
  if (v3)
  {
    v5[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v5[7] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v5[8] = v17;
  (*(v15 + 16))();
  sub_1AE22D064(v12);
  return sub_1AE22DD2C;
}

void sub_1AE22DD2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    v11 = *v2;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    sub_1AE22D2F4(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v12 = *v2;
    sub_1AE22D2F4(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_1AE22DE30@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v28 = a4;
  v5 = *v4;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 112);
  v8 = type metadata accessor for CRDTDictionaryElement();
  v27 = sub_1AE23D7CC();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = v4[2];
  swift_beginAccess();
  v19 = *(v18 + 40);
  v20 = *(v5 + 80);
  v21 = *(v5 + 104);

  sub_1AE23CB7C();

  if ((*(*(v8 - 8) + 48))(v12, 1, v8))
  {
    v22 = (*(v9 + 8))(v12, v27);
    return v25(v22);
  }

  else
  {
    (*(v13 + 16))(v17, v12, v6);
    (*(v9 + 8))(v12, v27);
    return (*(v13 + 32))(v28, v17, v6);
  }
}

uint64_t sub_1AE22E0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 112);
  v8 = type metadata accessor for CRDTDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = v2[2];

  sub_1AE16D8FC(a1, v14);

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v11 + 8))(v14, v10);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  else
  {
    v17 = *(TupleTypeMetadata2 + 48);
    v18 = *(v6 - 8);
    (*(v18 + 16))(a2, &v14[v17], v6);
    (*(*(v8 - 8) + 8))(&v14[v17], v8);
    (*(v18 + 56))(a2, 0, 1, v6);
    return (*(*(v5 - 8) + 8))(v14, v5);
  }
}

double sub_1AE22E388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(a2 + 16);

  sub_1AE16B474(a1, v7, v11);

  result = *v11;
  v9 = v11[1];
  v10 = v11[2];
  *a3 = v11[0];
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

uint64_t sub_1AE22E404()
{
  v1 = *(v0 + 16);

  v2 = qword_1ED96F200;
  v3 = sub_1AE23BFEC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1AE22E46C()
{
  sub_1AE22E404();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CRDTDictionary.copy(renamingReferences:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v86 = a3;
  v6 = *(a2 + 24);
  v106 = sub_1AE23D7CC();
  v101 = *(v106 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v86 - v10;
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  *&v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v86 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v86 - v29;
  v110 = v30;
  v31 = sub_1AE23D7CC();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v87 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  v37 = *v3;
  v38 = *(a2 + 32);
  v107 = a2;
  v39 = *(a2 + 48);
  v109 = v38;
  v111 = v11;
  v89 = v38;
  CRDTDictionary.init()(&v116);
  v91 = a1;
  v40 = *a1;
  v108 = (v21 + 48);
  v100 = (v12 + 32);
  v99 = v6 - 8;
  v41 = *(v40 + 16);
  v98 = (v12 + 16);
  v96 = (v101 + 40);
  v95 = (v12 + 8);
  v94 = (v21 + 8);
  v101 = v39;
  v97 = v6;
  if (v41)
  {
    *&v112 = v37;
    CRDTDictionary.makeIterator()(&v115);
    v42 = v36;
    v88 = v36;
    v43 = v111;
    while (1)
    {
      *&v112 = v111;
      *(&v112 + 1) = v6;
      v113 = v109;
      v114 = v39;
      v44 = type metadata accessor for CRDTDictionary.Iterator();
      CRDTDictionary.Iterator.next()(v44, v42);
      if ((*v108)(v42, 1, v110) == 1)
      {
        break;
      }

      v45 = v110;
      v46 = *(v110 + 48);
      v47 = v93;
      (*v100)(v93, v42, v43);
      v48 = *(v6 - 8);
      (*(v48 + 32))(&v47[v46], v42 + v46, v6);
      v49 = v102;
      v50 = v91;
      (*(*(v89 + 8) + 24))(v91, v43);
      v51 = *(*(v39 + 16) + 24);
      v52 = v104;
      v53 = v50;
      v54 = v45;
      v51(v53, v6);
      (*(v48 + 56))(v52, 0, 1, v6);
      sub_1AE22F7AC(v107);
      v55 = *v98;
      v56 = v103;
      (*v98)(v103, v49, v43);
      v57 = v90;
      v55(v90, v56, v43);
      v6 = v97;
      v58 = v105;
      sub_1AE22D064(v105);
      v59 = v52;
      v39 = v101;
      (*v96)(v58, v59, v106);
      sub_1AE22D2F4(v58, v57);
      v60 = *v95;
      (*v95)(v56, v43);
      v60(v49, v43);
      v61 = v54;
      v42 = v88;
      (*v94)(v47, v61);
    }
  }

  else
  {
    v92 = v24;
    *&v112 = v37;
    CRDTDictionary.makeIterator()(&v115);
    v89 = v21 + 16;
    *&v62 = v111;
    *(&v62 + 1) = v6;
    v90 = v62;
    v63 = v27;
    v64 = v110;
    while (1)
    {
      v112 = v90;
      v113 = v109;
      v114 = v39;
      v65 = type metadata accessor for CRDTDictionary.Iterator();
      v66 = v87;
      CRDTDictionary.Iterator.next()(v65, v87);
      if ((*v108)(v66, 1, v110) == 1)
      {
        break;
      }

      v67 = *(v64 + 48);
      v68 = v93;
      (*v100)(v93, v66, v111);
      v69 = *(v6 - 8);
      v70 = *(v69 + 32);
      v70(&v68[v67], v66 + v67, v6);
      v71 = *v89;
      (*v89)(v63, v68, v64);
      v91 = *(v64 + 48);
      v72 = v92;
      v71(v92, v68, v64);
      v73 = &v72[*(v64 + 48)];
      v74 = v104;
      v70(v104, v73, v6);
      (*(v69 + 56))(v74, 0, 1, v6);
      sub_1AE22F7AC(v107);
      v75 = *v98;
      v76 = v63;
      v77 = v102;
      (*v98)(v102, v76, v111);
      v78 = v103;
      v75(v103, v77, v111);
      v6 = v97;
      v79 = v105;
      sub_1AE22D064(v105);
      v80 = v74;
      v39 = v101;
      (*v96)(v79, v80, v106);
      sub_1AE22D2F4(v79, v78);
      v81 = *v95;
      v82 = v77;
      v63 = v76;
      (*v95)(v82, v111);
      v83 = v68;
      v84 = v111;
      (*v94)(v83, v64);
      v81(v92, v84);
      (*(v69 + 8))(v91 + v76, v6);
      v81(v76, v84);
    }
  }

  result = sub_1ADDDCE74();
  *v86 = v116;
  return result;
}

uint64_t *CRDTDictionary.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CRDTDictionaryRef();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  result = sub_1AE22CDE4();
  *a1 = v5;
  return result;
}

uint64_t CRDTDictionary.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
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

void CRDTDictionary.Iterator.next()(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[6];
  v93 = a1[3];
  v6 = type metadata accessor for CRDTDictionaryElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v81 - v9;
  v10 = *(a1[2] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v18 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1AE23D7CC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = TupleTypeMetadata2;
  v101 = *(TupleTypeMetadata2 - 8);
  v23 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v82 = &v81 - v29;
  v30 = *v2;
  v31 = v2[1];
  v32 = v2[3];
  v102 = v2[2];
  v103 = v16;
  v33 = v2[4];
  v34 = v32;
  v94 = a2;
  v95 = v27;
  v87 = v7;
  v88 = v18;
  v90 = v10;
  v85 = v36;
  v86 = v35;
  v83 = v38;
  v84 = v37;
  v99 = v32;
  v100 = v31;
  v97 = v30;
  v98 = v33;
  v96 = v22;
  if (v33)
  {
LABEL_10:
    v92 = (v33 - 1) & v33;
    v45 = __clz(__rbit64(v33)) | (v34 << 6);
    v46 = *(v30 + 48) + *(v10 + 72) * v45;
    v47 = *(v10 + 16);
    v48 = v14;
    v89 = v14;
    v49 = v30;
    v50 = v27;
    v47(v48, v46, v16, v28);
    v51 = *(v49 + 56) + *(v7 + 72) * v45;
    v52 = v91;
    (*(v7 + 16))(v91, v51, v18);
    v53 = *(v22 + 48);
    (*(v10 + 32))(v50, v89, v16);
    (*(v7 + 32))(v50 + v53, v52, v18);
    v54 = v101;
    (*(v101 + 56))(v50, 0, 1, v22);
    v91 = v34;
    v44 = v100;
LABEL_11:
    v55 = *v2;
    v56 = v2[1];
    v57 = v2[2];
    v58 = v2[3];
    v59 = v2[4];
    v60 = v97;
    v61 = v102;
    sub_1ADFAEBFC();
    sub_1ADDDCE74();
    *v2 = v60;
    v2[1] = v44;
    v63 = v91;
    v62 = v92;
    v2[2] = v61;
    v2[3] = v63;
    v2[4] = v62;
    v64 = v95;
    v65 = v96;
    if ((*(v54 + 48))(v95, 1, v96) == 1)
    {
      (*(v83 + 8))(v64, v84);
      v66 = swift_getTupleTypeMetadata2();
      (*(*(v66 - 8) + 56))(v94, 1, 1, v66);
    }

    else
    {
      v67 = v54;
      v101 = *(v54 + 32);
      v68 = v82;
      (v101)(v82, v64, v65);
      v69 = v103;
      v70 = v93;
      v71 = swift_getTupleTypeMetadata2();
      v100 = *(v71 + 48);
      v72 = v85;
      (*(v67 + 16))(v85, v68, v65);
      v102 = *(v65 + 48);
      v73 = v90;
      v74 = v94;
      (*(v90 + 32))(v94, v72, v69);
      v75 = v86;
      (v101)(v86, v68, v65);
      v76 = *(v65 + 48);
      (*(*(v70 - 8) + 16))(v74 + v100, v75 + v76, v70);
      v77 = *(v87 + 8);
      v78 = v75 + v76;
      v79 = v88;
      v77(v78, v88);
      (*(*(v71 - 8) + 56))(v74, 0, 1, v71);
      (*(v73 + 8))(v75, v103);
      v77(v72 + v102, v79);
    }
  }

  else
  {
    v39 = v14;
    v40 = (v102 + 64) >> 6;
    if (v40 <= v32 + 1)
    {
      v41 = v32 + 1;
    }

    else
    {
      v41 = (v102 + 64) >> 6;
    }

    v42 = (v41 - 1);
    v43 = v32;
    v44 = v100;
    while (1)
    {
      v34 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v34 >= v40)
      {
        v54 = v101;
        v80 = *(v101 + 56);
        v91 = v42;
        v80(v27, 1, 1, v22, v28);
        v92 = 0;
        goto LABEL_11;
      }

      v33 = *(v100 + 8 * v34);
      ++v43;
      if (v33)
      {
        v16 = v103;
        v10 = v90;
        v14 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void (*CRDTDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  *(v8 + 32) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v8 + 40) = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v14 = v13;
  v9[6] = v13;
  sub_1AE22F7AC(a3);
  v15 = *v3;
  (*(v12 + 16))(v14, a2, v10);
  v9[7] = sub_1AE22DB2C(v9);
  return sub_1ADF5F1EC;
}

uint64_t CRDTDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

  CRDTDictionary.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t *CRDTDictionary.init(defaultState:)@<X0>(void *a1@<X8>)
{
  result = CRDTDictionary.init()(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1AE22F7AC(uint64_t a1)
{
  v2 = v1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  type metadata accessor for CRDTDictionaryRef();
  result = sub_1AE23DFBC();
  if ((result & 1) == 0)
  {
    v4 = *v1;
    v5 = sub_1AE23837C();
    v6 = *v2;

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AE22F854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + a3 - 8);
  v9 = *a1;
  v6 = *(a2 + a3 - 40);
  v7 = *(a2 + a3 - 24);
  type metadata accessor for CRDTDictionary();
  return CRDTDictionary.subscript.getter(a4);
}

uint64_t sub_1AE22F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 16);
  v14 = *(a3 + a4 - 32);
  v15 = v6;
  v7 = type metadata accessor for CRDTDictionary();
  v8 = CRDTDictionary.subscript.modify(&v13, a3, v7);
  v10 = v9;
  v11 = sub_1AE23D7CC();
  (*(*(v11 - 8) + 24))(v10, a1, v11);
  return (v8)(&v13, 0);
}

uint64_t CRDTDictionary.subscript.setter(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = a1;
  v6 = *(a3 + 24);
  v26 = sub_1AE23D7CC();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v26 - v9;
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  sub_1AE22F7AC(a3);
  v20 = *v3;
  v21 = v12[2];
  v21(v19, a2, v11);
  v21(v16, v19, v11);
  sub_1AE22D064(v10);
  v23 = v26;
  v22 = v27;
  (*(v7 + 24))(v10, v27, v26);
  sub_1AE22D2F4(v10, v16);
  v24 = v12[1];
  v24(a2, v11);
  (*(v7 + 8))(v22, v23);
  return v24(v19, v11);
}

uint64_t CRDTDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *v5;
  v7 = *(a4 + 32);
  v9[1] = *(a4 + 16);
  v9[2] = v7;
  v10 = *(a4 + 48);
  v11 = a2;
  v12 = a3;
  return sub_1AE22DE30(a1, sub_1AE237BEC, v9, a5);
}

uint64_t CRDTDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE2386F0(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDTDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x90uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[9] = a5;
  v10[10] = v5;
  v12 = *(a5 + 24);
  v10[11] = v12;
  v13 = *(v12 - 8);
  v10[12] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[13] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[13] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  *(v11 + 112) = v15;
  v17 = *(a5 + 16);
  *(v11 + 120) = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  *(v11 + 128) = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  *(v11 + 136) = v20;
  (*(v19 + 16))();
  v21 = *v5;
  *(v11 + 16) = v17;
  *(v11 + 24) = v12;
  *(v11 + 32) = *(a5 + 32);
  *(v11 + 48) = *(a5 + 48);
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  sub_1AE22DE30(a2, sub_1AE237BEC, v11, v16);
  return sub_1AE22FE90;
}

void sub_1AE22FE90(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 72);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 104), v5, v10);
    sub_1AE2386F0(v7, v3, v11);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_1AE2386F0(*(*a1 + 112), v3, v11);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CRDTDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AE22F7AC(a2);
  v6 = *v3;
  return sub_1AE22E0C4(a1, a3);
}

uint64_t *CRDTDictionary.merge(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *result;
  if (*(*v3 + 16) == *(v21 + 16))
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v15 = byte_1ED96F222;
    *a3 = word_1ED96F220;
    *(a3 + 2) = v15;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v7 = sub_1AE1755D4(&v21, a2, WitnessTable);
    v8 = *(*v3 + 16);
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    swift_beginAccess();
    v11 = v7[3];
    v12 = v7[4];
    v20 = 0;

    sub_1ADF6457C(v13, &v20, v10);
    sub_1ADF6457C(v11, &v20, v9);

    switch(v20)
    {
      case 1:

        sub_1AE22F7AC(a2);
        v17 = *(*v3 + 16);
        *(*v3 + 16) = v7;

        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v16 = &word_1EB5D750B;
        break;
      case 2:
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v16 = &word_1EB5D7508;
        break;
      case 3:
        sub_1AE22F7AC(a2);
        v14 = *(*v3 + 16);

        sub_1AE16F8E0(v7, a3);

      default:
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v16 = &word_1ED96F220;
        break;
    }

    v18 = *v16;
    v19 = *(v16 + 2);

    *a3 = v18;
    *(a3 + 2) = v19;
  }

  return result;
}

uint64_t CRDTDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(a2 + 24);
  if (((*(*(*(a2 + 48) + 16) + 80))() & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(v4 + 16);
  v7 = *(v3 + 16);

  v9 = sub_1AE1705C0(v8);

  return v9;
}

uint64_t CRDTDictionary.visitReferences(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v84 = a2[6];
  v85 = v6;
  v7 = type metadata accessor for CRDTDictionaryElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v72 - v12;
  v86 = a2;
  v13 = *(a2[2] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v72 - v19;
  v98 = v20;
  v95 = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = sub_1AE23D7CC();
  v23 = *(v91 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  v30 = *(*v3 + 16);
  swift_beginAccess();
  v31 = *(v30 + 40);
  v32 = v29;
  v33 = *(v31 + 64);
  v74 = v31 + 64;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v73 = (v34 + 63) >> 6;
  v92 = TupleTypeMetadata2;
  v90 = TupleTypeMetadata2 - 8;
  v76 = v13 + 16;
  v75 = v8 + 16;
  v96 = (v8 + 32);
  v97 = (v13 + 32);
  v89 = (v23 + 32);
  v82 = v8;
  v37 = (v8 + 8);
  v38 = v32;
  v87 = v37;
  v79 = v13;
  v39 = (v13 + 8);
  v40 = v26;
  v88 = v39;
  v83 = v31;

  v42 = 0;
  v81 = v17;
  v43 = a1;
  v78 = a1;
  v94 = v26;
  v77 = v38;
  if (v36)
  {
    while (1)
    {
      v44 = v95;
      v45 = v42;
LABEL_13:
      v50 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v51 = v50 | (v45 << 6);
      v52 = v83;
      v53 = v79;
      v54 = v98;
      (*(v79 + 16))(v93, *(v83 + 48) + *(v79 + 72) * v51, v98);
      v55 = v82;
      v56 = v80;
      (*(v82 + 16))(v80, *(v52 + 56) + *(v82 + 72) * v51, v44);
      v57 = v92;
      v58 = *(v92 + 48);
      v59 = v94;
      (*(v53 + 32))(v94, v93, v54);
      v60 = v56;
      v48 = v57;
      v40 = v59;
      (*(v55 + 32))(&v59[v58], v60, v44);
      v61 = 0;
      v47 = v45;
      v17 = v81;
      v49 = v78;
      v38 = v77;
LABEL_14:
      v62 = *(v48 - 8);
      (*(v62 + 56))(v40, v61, 1, v48);
      (*v89)(v38, v40, v91);
      if ((*(v62 + 48))(v38, 1, v48) == 1)
      {
      }

      v63 = *(v48 + 48);
      v64 = v98;
      (*v97)(v17, v38, v98);
      v65 = v38;
      v66 = v95;
      (*v96)(v99, &v38[v63]);
      v68 = v49[3];
      v67 = v49[4];
      __swift_project_boxed_opaque_existential_1(v49, v68);
      if ((*(v67 + 8))(v68, v67) & 1) != 0 || ((*(*(v86[4] + 8) + 48))(v49, v64), v69 = v49[3], v70 = v49[4], __swift_project_boxed_opaque_existential_1(v49, v69), ((*(v70 + 8))(v69, v70)))
      {

        (*v87)(v99, v66);
        return (*v88)(v17, v64);
      }

      v43 = v49;
      v71 = v99;
      (*(*(v84 + 16) + 48))(v49, v85);
      (*v87)(v71, v66);
      result = (*v88)(v17, v64);
      v42 = v47;
      v40 = v94;
      v38 = v65;
      if (!v36)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v73 <= v42 + 1)
    {
      v46 = v42 + 1;
    }

    else
    {
      v46 = v73;
    }

    v47 = v46 - 1;
    v48 = v92;
    v49 = v43;
    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v45 >= v73)
      {
        v36 = 0;
        v61 = 1;
        goto LABEL_14;
      }

      v36 = *(v74 + 8 * v45);
      ++v42;
      if (v36)
      {
        v44 = v95;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall CRDTDictionary.needToFinalizeTimestamps()()
{
  v1 = *(*v0 + 16);

  v2 = sub_1ADDFB6C0();

  return v2 & 1;
}

uint64_t CRDTDictionary.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 16);

  v7 = sub_1ADDFB6C0();

  if (v7)
  {
    sub_1AE22F7AC(a2);
    v9 = *v3;
    v10 = *(v9 + 16);

    sub_1AE1741D4(a1);

    v11 = *(v9 + 16);
    v12 = swift_beginAccess();
    v13 = *(v11 + 40);
    MEMORY[0x1EEE9AC00](v12);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    type metadata accessor for CRDTDictionaryElement();

    v14 = sub_1AE23CAFC();

    v15 = *(v11 + 40);
    *(v11 + 40) = v14;
  }

  return result;
}

uint64_t CRDTDictionary.version.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
}

uint64_t static CRDTDictionary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);

  v5 = sub_1AE16CE24(v4);

  return v5 & 1;
}

uint64_t CRDTDictionary.actionUndoingDifference(from:)@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v107 = a3;
  v6 = 0;
  v7 = a2[6];
  v8 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = sub_1AE23D7CC();
  v150 = *(v116 - 8);
  v10 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v104 - v13;
  v125 = AssociatedTypeWitness;
  v133 = *(AssociatedTypeWitness - 8);
  v14 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v104 - v16;
  v126 = v8;
  v124 = v7;
  v17 = type metadata accessor for CRDTDictionaryElement();
  v123 = sub_1AE23D7CC();
  v119 = *(v123 - 8);
  v18 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v136 = &v104 - v19;
  v131 = *(v17 - 8);
  v20 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v128 = &v104 - v26;
  v27 = a2;
  v28 = a2[2];
  v130 = *(v28 - 8);
  v29 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v104 - v34;
  v152 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v139 = sub_1AE23D7CC();
  v137 = *(v139 - 8);
  v35 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v146 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v104 - v38;
  v40 = *a1;
  v41 = *v3;
  v42 = *(*v3 + 2);
  v43 = *(v40 + 16);
  if (v42[6] == v43[6])
  {
    v105 = 0;
    swift_retain_n();

    goto LABEL_5;
  }

  if (qword_1ED96B308 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    v44 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v105 = v6;
    v45 = v153;
    v46 = BYTE8(v153);
    v47 = v154;
    v48 = *(v40 + 16);

    v49 = v46;
    v43 = sub_1AE16CB8C(v45, v46, v47);

    v50 = *(v41 + 2);

    v42 = sub_1AE16CB8C(v45, v49, v47);

LABEL_5:
    v51 = v27[5];

    v158 = sub_1AE23C9EC();
    v52 = v126;
    v157 = sub_1AE23C9CC();
    v53 = sub_1AE23C9CC();
    v155 = 0;
    v156 = v53;
    v153 = 0u;
    v154 = 0u;
    MEMORY[0x1EEE9AC00](v53);
    v151 = v28;
    *(&v104 - 6) = v28;
    *(&v104 - 5) = v52;
    *(&v104 - 4) = v27[4];
    *(&v104 - 3) = v51;
    v145 = v51;
    v54 = v124;
    *(&v104 - 2) = v124;
    *(&v104 - 1) = &v158;
    MEMORY[0x1EEE9AC00](v55);
    *(&v104 - 2) = &v157;
    *(&v104 - 1) = v43;
    sub_1AE1710B0(v43, &v153, sub_1AE239A58, v56, sub_1AE238A24, (&v104 - 4));

    sub_1ADDCEDE0(&v153, &qword_1EB5BAA40, &unk_1AE24EC50);
    swift_beginAccess();
    v57 = v42[5];

    v106 = v42;

    v58 = *(v57 + 64);
    v118 = v57 + 64;
    v129 = v57;
    v59 = 1 << *(v57 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v40 = v60 & v58;
    v140 = v43;
    swift_beginAccess();
    v61 = 0;
    v117 = (v59 + 63) >> 6;
    v138 = TupleTypeMetadata2 - 8;
    v141 = (v130 + 16);
    v127 = v131 + 16;
    v148 = (v130 + 32);
    v143 = (v131 + 32);
    v137 += 32;
    v134 = (v131 + 48);
    v121 = v54 + 72;
    v120 = (v133 + 48);
    v113 = (v133 + 32);
    v112 = (v133 + 16);
    v111 = (v133 + 56);
    v110 = (v133 + 8);
    v133 = v131 + 8;
    v132 = (v130 + 8);
    v109 = (v150 + 8);
    v119 += 8;
    v62 = v108;
    v147 = v32;
    v41 = v146;
    v149 = v39;
    if (v40)
    {
      break;
    }

LABEL_11:
    if (v117 <= v61 + 1)
    {
      v64 = v61 + 1;
    }

    else
    {
      v64 = v117;
    }

    v28 = v64 - 1;
    v65 = v143;
    v6 = TupleTypeMetadata2;
    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v63 >= v117)
      {
        v40 = 0;
        v80 = 1;
        goto LABEL_19;
      }

      v40 = *(v118 + 8 * v63);
      ++v61;
      if (v40)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v63 = v61;
LABEL_18:
    v66 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v67 = v66 | (v63 << 6);
    v68 = v129;
    v69 = v130;
    v70 = v142;
    v71 = v151;
    (*(v130 + 16))(v142, *(v129 + 48) + *(v130 + 72) * v67, v151);
    v72 = v131;
    v73 = *(v68 + 56) + *(v131 + 72) * v67;
    v74 = v128;
    v75 = v152;
    (*(v131 + 16))(v128, v73, v152);
    v76 = *(TupleTypeMetadata2 + 48);
    v77 = *(v69 + 32);
    v41 = v146;
    v78 = v70;
    v6 = TupleTypeMetadata2;
    v77(v146, v78, v71);
    v79 = v74;
    v65 = v143;
    (*(v72 + 32))(&v41[v76], v79, v75);
    v80 = 0;
    v28 = v63;
    v32 = v147;
    v39 = v149;
LABEL_19:
    v81 = *(v6 - 8);
    (*(v81 + 56))(v41, v80, 1, v6);
    (*v137)(v39, v41, v139);
    if ((*(v81 + 48))(v39, 1, v6) == 1)
    {
      break;
    }

    v150 = v28;
    v82 = *(v6 + 48);
    v27 = v151;
    (*v148)(v32, v39, v151);
    v83 = *v65;
    v84 = v152;
    v83(v62, &v39[v82], v152);
    v85 = v140[5];

    v86 = v62;
    v87 = v136;
    sub_1AE23CB7C();

    if ((*v134)(v87, 1, v84) == 1)
    {
      (*v133)(v86, v152);
      (*v132)(v32, v27);
      (*v119)(v87, v123);
      v39 = v149;
      v61 = v150;
      v62 = v86;
      if (!v40)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v88 = v152;
      v89 = v122;
      v83(v122, v87, v152);
      v90 = v135;
      (*(v124 + 72))(v89, v126);
      v91 = v90;
      v92 = v125;
      if ((*v120)(v91, 1, v125) == 1)
      {
        v93 = *v133;
        (*v133)(v89, v88);
        v93(v86, v88);
        v32 = v147;
        (*v132)(v147, v151);
        (*v109)(v135, v116);
      }

      else
      {
        v27 = v114;
        (*v113)(v114, v135, v92);
        v94 = v151;
        (*v141)(v142, v147, v151);
        v95 = v115;
        (*v112)(v115, v27, v92);
        (*v111)(v95, 0, 1, v92);
        sub_1AE23CB1C();
        v32 = v147;
        sub_1AE23CB8C();
        (*v110)(v27, v92);
        v96 = *v133;
        (*v133)(v89, v88);
        v96(v86, v88);
        (*v132)(v32, v94);
      }

      v62 = v86;
      v41 = v146;
      v39 = v149;
      v61 = v150;
      if (!v40)
      {
        goto LABEL_11;
      }
    }
  }

  v97 = v158;
  if (sub_1AE23D32C() > 0 || sub_1AE23CA7C() > 0)
  {

    goto LABEL_30;
  }

  v102 = sub_1AE23CA7C();

  if (v102 > 0)
  {
LABEL_30:
    v100 = v156;
    v99 = v157;
    v101 = v107;
    *v107 = v97;
    v101[1] = v99;
    v101[2] = v100;
  }

  else
  {

    v103 = v107;
    *v107 = 0;
    v103[1] = 0;
    v103[2] = 0;
  }

  return result;
}

void CRDTDictionary.apply(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[3];
  v163 = a2[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v162 = sub_1AE23D7CC();
  v7 = *(v162 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v156 - v9;
  v10 = a2[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v159 = *(TupleTypeMetadata2 - 8);
  v12 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v160 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v193 = &v156 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v156 - v17;
  v187 = AssociatedTypeWitness;
  v165 = *(AssociatedTypeWitness - 8);
  v19 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v156 - v21;
  v177 = v22;
  v23 = sub_1AE23D7CC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v178 = &v156 - v25;
  v26 = swift_getTupleTypeMetadata2();
  v194 = *(v26 - 8);
  v27 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v198 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v175 = &v156 - v32;
  v166 = *(v5 - 8);
  v33 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v184 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = *(v10 - 8);
  v36 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v174 = &v156 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v156 - v40;
  v199 = v42;
  v43 = sub_1AE23D7CC();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v183 = &v156 - v45;
  v190 = sub_1AE23D7CC();
  v195 = *(v190 - 8);
  v46 = *(v195 + 8);
  MEMORY[0x1EEE9AC00](v190);
  v173 = &v156 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v189 = (&v156 - v49);
  v205 = v10;
  v50 = sub_1AE23D7CC();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v156 - v52;
  v54 = *a1;
  if (!*a1)
  {
    return;
  }

  v158 = v7;
  v203 = v41;
  v167 = v18;
  v55 = a1[2];
  v186 = a1[1];
  sub_1AE22F7AC(a2);
  v204 = v5;
  v202 = a2;
  v157 = v55;
  v56 = v2;
  if ((v54 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    v57 = a2[5];
    sub_1AE23D36C();
    v54 = v206[4];
    v58 = v206[5];
    v59 = v206[6];
    v197 = v206[7];
    v60 = v206[8];
  }

  else
  {
    v61 = -1 << *(v54 + 32);
    v58 = v54 + 56;
    v59 = ~v61;
    v62 = -v61;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v60 = v63 & *(v54 + 56);

    v197 = 0;
  }

  v64 = (v188 + 56);
  v192 = v59;
  v65 = (v59 + 64) >> 6;
  v200 = (v188 + 16);
  v201 = (v188 + 8);
  v66 = (v195 + 8);
  v196 = v54;
  v67 = v205;
  while (v54 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v64)(v53, 0, 1, v67);
    sub_1AE22F7AC(v202);
    v70 = *v56;
    v71 = v189;
    sub_1AE22E0C4(v53, v189);
    (*v201)(v53, v67);
    (*v66)(v71, v190);
    v54 = v196;
  }

  if (v60)
  {
    v68 = v197;
LABEL_10:
    v69 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    (*(v188 + 16))(v53, *(v54 + 48) + *(v188 + 72) * (v69 | (v68 << 6)), v205);
    goto LABEL_11;
  }

  v72 = v197;
  while (1)
  {
    v68 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_77;
    }

    if (v68 >= v65)
    {
      break;
    }

    v60 = *(v58 + 8 * v68);
    ++v72;
    if (v60)
    {
      v197 = v68;
      goto LABEL_10;
    }
  }

LABEL_21:
  (*v64)(v53, 1, 1, v205);
  sub_1ADDDCE74();
  v196 = v56;
  v73 = v184;
  if ((v186 & 0xC000000000000001) != 0)
  {
    v74 = sub_1AE23DC1C();
    v185 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v74 | 0x8000000000000000;
  }

  else
  {
    v78 = -1 << *(v186 + 32);
    v75 = ~v78;
    v79 = *(v186 + 64);
    v185 = (v186 + 64);
    v80 = -v78;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v76 = v81 & v79;
    v77 = v186;
  }

  v191 = (v188 + 32);
  v192 = v166 + 32;
  v181 = (v194 + 56);
  v156 = v75;
  v182 = ((v75 + 64) >> 6);
  v164 = v166 + 16;
  v180 = (v194 + 48);
  v172 = (v194 + 16);
  v171 = (v166 + 56);
  v170 = (v195 + 40);
  v169 = (v194 + 8);
  v168 = (v166 + 8);

  v82 = 0;
  v186 = v77;
  while (2)
  {
    if ((v77 & 0x8000000000000000) == 0)
    {
      v83 = v76;
      v84 = v82;
      v85 = v199;
      v86 = v191;
      v87 = v183;
      if (!v76)
      {
        if (v182 <= (v82 + 1))
        {
          v88 = v82 + 1;
        }

        else
        {
          v88 = v182;
        }

        v89 = v88 - 1;
        v90 = v82;
        v91 = v187;
        while (1)
        {
          v84 = (v90 + 1);
          if (__OFADD__(v90, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          if (v84 >= v182)
          {
            break;
          }

          v83 = v185[v84];
          ++v90;
          if (v83)
          {
            v77 = v186;
            goto LABEL_38;
          }
        }

        v197 = 0;
        v98 = 1;
        goto LABEL_42;
      }

LABEL_38:
      v197 = (v83 - 1) & v83;
      v92 = __clz(__rbit64(v83)) | (v84 << 6);
      v93 = v203;
      (*(v188 + 16))(v203, *(v77 + 48) + *(v188 + 72) * v92, v205);
      v94 = *(v77 + 56) + *(v166 + 72) * v92;
      v95 = v204;
      (*(v166 + 16))(v73, v94, v204);
LABEL_41:
      v97 = *(v85 + 48);
      (*v86)(v87, v93, v205);
      (*v192)(&v87[v97], v73, v95);
      v98 = 0;
      v89 = v84;
      v91 = v187;
LABEL_42:
      (*v181)(v87, v98, 1, v85);
      if ((*v180)(v87, 1, v85) == 1)
      {
        goto LABEL_46;
      }

      v99 = *(v85 + 48);
      v100 = v175;
      v101 = v205;
      (*v86)(v175, v87, v205);
      v195 = v89;
      v102 = *v192;
      v103 = v204;
      (*v192)(&v100[v99], &v87[v99], v204);
      v104 = *v172;
      v105 = v176;
      (*v172)(v176, v100, v85);
      v194 = *(v85 + 48);
      v106 = v85;
      v107 = v198;
      v104(v198, v100, v106);
      v108 = &v107[*(v106 + 48)];
      v109 = v189;
      v102(v189, v108, v103);
      (*v171)(v109, 0, 1, v103);
      v110 = v196;
      sub_1AE22F7AC(v202);
      v111 = *v110;
      v112 = *v200;
      v113 = v203;
      (*v200)(v203, v105, v101);
      v114 = v174;
      v112(v174, v113, v101);
      v115 = v173;
      sub_1AE22D064(v173);
      (*v170)(v115, v109, v190);
      sub_1AE22D2F4(v115, v114);
      v116 = *v201;
      (*v201)(v113, v101);
      (*v169)(v100, v199);
      v116(v198, v101);
      (*v168)(&v105[v194], v103);
      v117 = v101;
      v73 = v184;
      v116(v105, v117);
      v82 = v195;
      v76 = v197;
      v77 = v186;
      continue;
    }

    break;
  }

  v96 = sub_1AE23DC3C();
  v85 = v199;
  v86 = v191;
  v87 = v183;
  if (v96)
  {
    v93 = v203;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v95 = v204;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v84 = v82;
    v197 = v76;
    goto LABEL_41;
  }

  (*v181)(v183, 1, 1, v199);
  v91 = v187;
LABEL_46:
  sub_1ADDDCE74();
  if ((v157 & 0xC000000000000001) != 0)
  {
    v118 = sub_1AE23DC1C();
    v194 = 0;
    v119 = 0;
    v120 = 0;
    v192 = v118 | 0x8000000000000000;
  }

  else
  {
    v121 = -1 << *(v157 + 32);
    v119 = ~v121;
    v122 = *(v157 + 64);
    v194 = v157 + 64;
    v123 = -v121;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    else
    {
      v124 = -1;
    }

    v120 = v124 & v122;
    v192 = v157;
  }

  v125 = v179;
  v126 = v178;
  v127 = (v165 + 32);
  v189 = (v159 + 56);
  v176 = v119;
  v190 = (v119 + 64) >> 6;
  v183 = (v165 + 16);
  v187 = (v159 + 48);
  v128 = (v159 + 16);
  v186 = v166 + 48;
  v185 = (v159 + 8);
  v182 = (v165 + 56);
  v181 = (v163 + 80);
  v180 = (v158 + 8);
  v184 = (v165 + 8);

  v129 = 0;
  v195 = v127;
  v197 = v128;
  while (2)
  {
    v198 = v129;
    if ((v192 & 0x8000000000000000) != 0)
    {
      v141 = sub_1AE23DC3C();
      v134 = v177;
      if (!v141)
      {
        (*v189)(v126, 1, 1, v177);
LABEL_73:
        sub_1ADDDCE74();
        return;
      }

      v139 = v203;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v133 = v198;
      v199 = v120;
      goto LABEL_67;
    }

    v132 = v120;
    v133 = v129;
    v134 = v177;
    if (v120)
    {
LABEL_64:
      v199 = (v132 - 1) & v132;
      v138 = __clz(__rbit64(v132)) | (v133 << 6);
      v139 = v203;
      v140 = v192;
      (*(v188 + 16))(v203, *(v192 + 48) + *(v188 + 72) * v138, v205);
      v127 = v195;
      (*(v165 + 16))(v125, *(v140 + 56) + *(v165 + 72) * v138, v91);
LABEL_67:
      v142 = *(v134 + 48);
      (*v86)(v126, v139, v205);
      (*v127)(&v126[v142], v125, v91);
      v143 = 0;
      v136 = v133;
      v128 = v197;
LABEL_68:
      (*v189)(v126, v143, 1, v134);
      if ((*v187)(v126, 1, v134) == 1)
      {
        goto LABEL_73;
      }

      v198 = v136;
      v144 = *(v134 + 48);
      v145 = v167;
      (*v86)(v167, v126, v205);
      v146 = *v127;
      (*v127)(&v145[v144], &v126[v144], v91);
      v147 = *v128;
      v148 = v193;
      (*v128)(v193, v145, v134);
      v149 = CRDTDictionary.subscript.modify(v206, v148, v202);
      v150 = v91;
      v151 = v204;
      if ((*v186)(v152, 1, v204))
      {
        (v149)(v206, 0);
        (*v185)(v145, v134);
        v130 = v201;
      }

      else
      {
        v153 = v160;
        v147(v160, v145, v134);
        v154 = v161;
        v146(v161, &v153[*(v134 + 48)], v150);
        (*v182)(v154, 0, 1, v150);
        (*(v163 + 80))(v154, v151);
        (*v180)(v154, v162);
        (v149)(v206, 0);
        (*v185)(v145, v134);
        v130 = v201;
        v155 = v153;
        v86 = v191;
        (*v201)(v155, v205);
      }

      v131 = v193;
      (*v184)(&v193[*(v134 + 48)], v150);
      (*v130)(v131, v205);
      v129 = v198;
      v120 = v199;
      v91 = v150;
      v125 = v179;
      v126 = v178;
      v127 = v195;
      v128 = v197;
      continue;
    }

    break;
  }

  if (v190 <= (v129 + 1))
  {
    v135 = (v129 + 1);
  }

  else
  {
    v135 = v190;
  }

  v136 = (v135 - 1);
  v137 = v129;
  while (1)
  {
    v133 = (v137 + 1);
    if (__OFADD__(v137, 1))
    {
      break;
    }

    if (v133 >= v190)
    {
      v199 = 0;
      v143 = 1;
      goto LABEL_68;
    }

    v132 = *(v194 + 8 * v133);
    ++v137;
    if (v132)
    {
      goto LABEL_64;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t CRDTDictionary.hasDelta(from:)(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*a1 + 16);

  v5 = sub_1AE1738A8(v4);

  return v5 & 1;
}

double CRDTDictionary.delta(_:from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  v33 = *a2;
  v34 = v7;

  CRDTDictionary.finalizeTimestamps(_:)(a1, a3);
  CRDTDictionary.finalizeTimestamps(_:)(a1, a3);
  sub_1AE22E388(a1, v34, &v28);
  v8 = v28;
  v9 = v29;
  v10 = v30;
  v12 = v31;
  v11 = v32;
  v13 = a3[2];
  v14 = a3[3];
  v25 = a3[6];
  v26 = *(&v28 + 1);
  v15 = type metadata accessor for CRDTDictionaryElement();
  v16 = a3[4];
  v17 = a3[5];

  WitnessTable = swift_getWitnessTable();
  *&v28 = v13;
  *(&v28 + 1) = v15;
  v29 = v16;
  v30 = v17;
  v19 = v8;
  v31 = WitnessTable;
  type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
  v20 = sub_1AE23CA7C();

  if (v20 > 0)
  {
    goto LABEL_5;
  }

  type metadata accessor for CRDTDictionaryElement.Delta();

  v21 = sub_1AE23CA7C();

  if (v21 > 0)
  {
    goto LABEL_5;
  }

  if (sub_1ADF637A8(v22, v26))
  {

LABEL_5:

LABEL_6:
    *a4 = v19;
    a4[1] = v26;
    a4[2] = v9;
    a4[3] = v10;
    a4[4] = v12;
    a4[5] = v11;
    return result;
  }

  v24 = sub_1ADF637A8(v9, v19);

  if (v24)
  {
    goto LABEL_6;
  }

  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t CRDTDictionary.canMerge(delta:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[5];
  v6 = *(*v2 + 16);
  v16[0] = *a1;
  v16[1] = v4;

  LOBYTE(v4) = sub_1AE17261C(v16);

  if (v4)
  {
    v16[0] = v5;
    MEMORY[0x1EEE9AC00](v7);
    v8 = a2[2];
    v13 = a2[3];
    v9 = a2[5];
    v14 = a2[4];
    v15 = a2[6];
    MEMORY[0x1EEE9AC00](v10);
    type metadata accessor for CRDTDictionaryElement.Delta();
    sub_1AE23CB1C();

    swift_getWitnessTable();
    LOBYTE(v8) = sub_1AE23CF4C();

    v11 = v8 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t CRDTDictionary.merge(delta:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];

  sub_1AE22F7AC(a2);
  v10 = *(*v2 + 16);
  *&v12 = v4;
  *(&v12 + 1) = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;

  LOBYTE(a2) = sub_1AE1727BC(&v12);

  return a2 & 1;
}

void CRDTDictionary.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a3[6];
  v10 = a3[3];
  v129 = *(v9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = sub_1AE23D7CC();
  v145 = *(v118 - 8);
  v12 = v145[8];
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - v15;
  v131 = AssociatedTypeWitness;
  v154 = *(AssociatedTypeWitness - 8);
  v17 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v109 - v19;
  v128 = v10;
  v153 = v9;
  v20 = type metadata accessor for CRDTDictionaryElement();
  v126 = sub_1AE23D7CC();
  v147 = *(v126 - 8);
  v21 = *(v147 + 8);
  MEMORY[0x1EEE9AC00](v126);
  v143 = &v109 - v22;
  v136 = *(v20 - 8);
  v23 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v155 = &v109 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v134 = &v109 - v30;
  v31 = a3;
  v135 = *(a3[2] - 8);
  v32 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v148 = &v109 - v37;
  v127 = v38;
  v156 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v144 = sub_1AE23D7CC();
  v39 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v152 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v150 = &v109 - v43;
  v44 = *a1;
  v45 = *v4;
  v130 = a2;
  if (*(a2 + 24) || v45 != v44)
  {
    v124 = v26;
    v125 = v16;
    v110 = a4;
    v46 = v31[5];
    v47 = v127;
    v141 = v42;
    v159 = sub_1AE23C9EC();
    v158 = sub_1AE23C9EC();
    v157 = sub_1AE23C9CC();
    v140 = v45;
    v48 = *(v45 + 16);
    v49 = *(v44 + 16);
    MEMORY[0x1EEE9AC00](v157);
    v50 = v128;
    *(&v109 - 6) = v47;
    *(&v109 - 5) = v50;
    *(&v109 - 4) = v31[4];
    *(&v109 - 3) = v46;
    v51 = v153;
    *(&v109 - 2) = v153;
    *(&v109 - 1) = &v159;
    MEMORY[0x1EEE9AC00](v52);
    *(&v109 - 6) = v47;
    *(&v109 - 5) = v53;
    *(&v109 - 4) = v54;
    *(&v109 - 3) = v46;
    v151 = v46;
    v55 = v47;
    *(&v109 - 2) = v51;
    *(&v109 - 1) = &v158;

    sub_1AE1710B0(v56, v130, sub_1AE239A58, (&v109 - 8), sub_1AE238AF8, (&v109 - 8));

    v57 = *(v44 + 16);
    swift_beginAccess();
    v58 = *(v57 + 40);
    v59 = *(v58 + 64);
    v120 = v58 + 64;
    v60 = 1 << *(v58 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & v59;
    v119 = (v60 + 63) >> 6;
    v63 = TupleTypeMetadata2;
    v142 = TupleTypeMetadata2 - 8;
    v146 = (v135 + 16);
    v132 = v136 + 16;
    v153 = (v135 + 32);
    v64 = (v136 + 32);
    v141 += 4;
    v139 = (v136 + 48);
    v123 = v129 + 40;
    v122 = (v154 + 48);
    v115 = (v154 + 32);
    v114 = (v154 + 16);
    v113 = (v154 + 56);
    v112 = (v154 + 8);
    v138 = (v136 + 8);
    v137 = (v135 + 8);
    v111 = (v145 + 1);
    v121 = (v147 + 8);
    v133 = v58;

    v65 = 0;
    v147 = v35;
    v66 = v152;
    v145 = v64;
    if (!v62)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v67 = v65;
LABEL_17:
      v71 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v72 = v71 | (v67 << 6);
      v73 = v133;
      v74 = v135;
      v75 = v148;
      (*(v135 + 16))(v148, *(v133 + 48) + *(v135 + 72) * v72, v55);
      v76 = v136;
      v77 = *(v73 + 56) + *(v136 + 72) * v72;
      v78 = v134;
      v79 = v156;
      (*(v136 + 16))(v134, v77, v156);
      v80 = *(TupleTypeMetadata2 + 48);
      v81 = *(v74 + 32);
      v63 = TupleTypeMetadata2;
      v66 = v152;
      v81(v152, v75, v55);
      v82 = *(v76 + 32);
      v64 = v145;
      v82(&v66[v80], v78, v79);
      v83 = 0;
      v69 = v67;
      v35 = v147;
      v70 = v150;
LABEL_18:
      v84 = *(v63 - 8);
      (*(v84 + 56))(v66, v83, 1, v63);
      (*v141)(v70, v66, v144);
      if ((*(v84 + 48))(v70, 1, v63) == 1)
      {
        break;
      }

      v154 = v69;
      v85 = *(v63 + 48);
      (*v153)(v35, v70, v55);
      v86 = *v64;
      v87 = v156;
      (*v64)(v155, &v70[v85], v156);
      v88 = *(v140 + 16);
      swift_beginAccess();
      v89 = *(v88 + 40);

      v90 = v143;
      sub_1AE23CB7C();

      if ((*v139)(v90, 1, v87) == 1)
      {
        (*v138)(v155, v156);
        (*v137)(v35, v55);
        (*v121)(v90, v126);
        v65 = v154;
        if (!v62)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v91 = v124;
        v86(v124, v90, v156);
        v92 = v125;
        (*(v129 + 40))(v155, v130, v128);
        v93 = v131;
        if ((*v122)(v92, 1, v131) == 1)
        {
          v94 = *v138;
          v95 = v156;
          (*v138)(v91, v156);
          v94(v155, v95);
          v55 = v127;
          (*v137)(v35, v127);
          (*v111)(v92, v118);
        }

        else
        {
          v96 = v116;
          (*v115)(v116, v92, v93);
          v97 = v35;
          v98 = v127;
          (*v146)(v148, v97, v127);
          v99 = v117;
          (*v114)(v117, v96, v93);
          (*v113)(v99, 0, 1, v93);
          sub_1AE23CB1C();
          v100 = v156;
          sub_1AE23CB8C();
          v101 = v96;
          v63 = TupleTypeMetadata2;
          v64 = v145;
          (*v112)(v101, v93);
          v102 = *v138;
          v103 = v91;
          v55 = v98;
          v35 = v147;
          (*v138)(v103, v100);
          v102(v155, v100);
          (*v137)(v35, v55);
        }

        v65 = v154;
        v66 = v152;
        if (!v62)
        {
LABEL_10:
          if (v119 <= v65 + 1)
          {
            v68 = v65 + 1;
          }

          else
          {
            v68 = v119;
          }

          v69 = v68 - 1;
          v70 = v150;
          while (1)
          {
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              break;
            }

            if (v67 >= v119)
            {
              v62 = 0;
              v83 = 1;
              goto LABEL_18;
            }

            v62 = *(v120 + 8 * v67);
            ++v65;
            if (v62)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v104 = v159;
    if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0 || sub_1AE23CA7C() >= 1)
    {
      v106 = v157;
      v105 = v158;
      v107 = v110;
      *v110 = v104;
      v107[1] = v105;
      v107[2] = v106;
      return;
    }

LABEL_31:

    v108 = v110;
    *v110 = 0;
    v108[1] = 0;
    v108[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

uint64_t CRDTDictionary.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64DC8(a2, a3, a4, a5, a6, &v19);
    swift_setDeallocating();
    v16 = *(inited + 16);

    if (!v7)
    {
      *a7 = v19;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD000000000000014;
    *(v18 + 8) = 0x80000001AE25FB50;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRDTDictionary.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v12 = v5;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[6];

    sub_1ADE6BDD4(&v12);
  }

  return result;
}

uint64_t *sub_1AE23457C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return CRDTDictionary.init(defaultState:)(a2);
}

BOOL CRDTDictionary.isDefaultState.getter()
{
  v1 = *(*v0 + 16);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1AE23460C()
{
  sub_1AE238370();
}

uint64_t sub_1AE234638(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v5 = *a3;
  v6 = *(*a3 + 88);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = *(v6 + 16);
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = *(v5 + 80);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v27 - v20, a1, v16, v19);
  swift_beginAccess();
  v22 = a3[5];
  v23 = *(v5 + 104);

  sub_1AE23CB7C();
  v24 = *(v6 - 8);
  result = (*(v24 + 48))(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v26 = *(v11 - 8);
    (*(v26 + 16))(v15, v10, v11);
    (*(v26 + 56))(v15, 0, 1, v11);
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    return (*(v24 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1AE23494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v4 + 16))(v7, v9);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v4 + 8))(v11, a3);
}

double sub_1AE234A68@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v13 = type metadata accessor for CRDTDictionaryElement();
  WitnessTable = swift_getWitnessTable();
  sub_1AE174904(a1, a2, a3, v13, a4, a5, WitnessTable, v18);
  if (!v6)
  {
    result = *v18;
    v16 = v18[1];
    v17 = v18[2];
    *a6 = v18[0];
    a6[1] = v16;
    a6[2] = v17;
  }

  return result;
}

uint64_t CRDTDictionary.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v12 = *(sub_1ADDE78C8() + 16);
    if ((~v12 & 0xF000000000000007) != 0 && (v12 & 0xF000000000000000) == 0x1000000000000000)
    {
      v22 = (v12 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v22[3];
      *&v27[16] = v22[2];
      *&v27[32] = v23;
      v24 = v22[5];
      *&v27[48] = v22[4];
      v28 = v24;
      *v27 = v22[1];
      sub_1ADFAEE10(v27, &v26);

      v19 = v28;
      v18 = *&v27[40];
      v17 = v27[56];
      v16 = *&v27[24];
      v15 = *&v27[8];
      v14 = *v27;
    }

    else
    {

      v14 = 0;
      v15 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v16 = 0uLL;
      v17 = 1;
      v18 = 0uLL;
      v19 = 0uLL;
    }

    v27[0] = v17;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v18;
    v34 = v17;
    v35 = v19;
    sub_1AE234A68(&v30, a1, a2, a3, a4, v29);

    if (!v5)
    {
      v25 = v29[1];
      *a5 = v29[0];
      a5[1] = v25;
      a5[2] = v29[2];
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

__n128 sub_1AE234D18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = v3[4];
  v21 = v3[5];
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 48);
  type metadata accessor for CRDTDictionaryElement();

  swift_getWitnessTable();
  v15 = *(a2 + 32);
  v8 = type metadata accessor for CRSetRefMergeableDelta();
  v9 = v23;
  sub_1AE174F20(a1, v8, v22);

  if (!v9)
  {
    v11 = v22[3];
    v12 = v22[4];
    *(a3 + 32) = v22[2];
    *(a3 + 48) = v11;
    *(a3 + 64) = v12;
    result = v22[1];
    *a3 = v22[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t CRDTDictionary.Partial.encode(to:)(uint64_t a1, uint64_t a2)
{
  v8 = v2[1];
  v9 = *v2;
  v7 = v2[2];
  result = sub_1ADDFCC74();
  if (!v3)
  {

    sub_1AE234D18(a1, a2, v10);
    swift_beginAccess();
    sub_1AE1B7950(v10);
    swift_endAccess();
  }

  return result;
}

uint64_t CRDTDictionary.Partial.visitReferences(_:)(void *a1, void *a2)
{
  v114 = a1;
  v4 = a2[6];
  v5 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = v82 - v8;
  v9 = *(v5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v86 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  v103 = *(v100 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v111 = v82 - v14;
  v90 = v5;
  v91 = v4;
  v15 = type metadata accessor for CRDTDictionaryElement.Delta();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v115 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v96 = v82 - v20;
  v101 = a2;
  v21 = a2[2];
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v94 = v82 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = sub_1AE23D7CC();
  v30 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v109 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v108 = v82 - v34;
  v35 = *(v2 + 40);
  v36 = *(v35 + 64);
  v107 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v89 = (v37 + 63) >> 6;
  v110 = TupleTypeMetadata2;
  v105 = TupleTypeMetadata2 - 8;
  v93 = v22 + 16;
  v92 = v16 + 16;
  v112 = (v16 + 32);
  v113 = (v22 + 32);
  v99 = (v103 + 16);
  v97 = v16;
  v102 = (v16 + 8);
  v95 = v22;
  v103 = v22 + 8;
  v104 = (v33 + 32);
  v85 = (v6 + 32);
  v84 = v6 + 8;
  v83 = (v9 + 32);
  v82[1] = v9 + 8;
  v98 = v35;

  v41 = 0;
  while (v39)
  {
    v45 = v41;
LABEL_17:
    v51 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v52 = v51 | (v45 << 6);
    v53 = v98;
    v54 = v95;
    v55 = v94;
    (*(v95 + 16))(v94, *(v98 + 48) + *(v95 + 72) * v52, v21);
    v56 = *(v53 + 56);
    v58 = v96;
    v57 = v97;
    (*(v97 + 16))(v96, v56 + *(v97 + 72) * v52, v15);
    v59 = v21;
    v60 = v15;
    v61 = v110;
    v62 = *(v110 + 48);
    v63 = *(v54 + 32);
    v49 = v109;
    v64 = v55;
    v65 = v59;
    v63(v109, v64);
    v66 = *(v57 + 32);
    v48 = v61;
    v15 = v60;
    v66(&v49[v62], v58, v60);
    v67 = 0;
    v50 = v108;
LABEL_18:
    v68 = *(v48 - 8);
    (*(v68 + 56))(v49, v67, 1, v48);
    (*v104)(v50, v49, v106);
    if ((*(v68 + 48))(v50, 1, v48) == 1)
    {
    }

    v69 = *(v48 + 48);
    (*v113)(v26, v50, v65);
    v70 = &v50[v69];
    v71 = v65;
    v72 = v15;
    (*v112)(v115, v70, v15);
    v73 = v26;
    v75 = v114[3];
    v74 = v114[4];
    __swift_project_boxed_opaque_existential_1(v114, v75);
    if ((*(v74 + 8))(v75, v74))
    {

      (*v102)(v115, v72);
      return (*v103)(v73, v65);
    }

    v76 = v114;
    v77 = v73;
    v21 = v71;
    (*(*(v101[4] + 8) + 48))(v114, v71);
    v78 = v76[3];
    v79 = v76[4];
    __swift_project_boxed_opaque_existential_1(v76, v78);
    if ((*(v79 + 8))(v78, v79))
    {

      (*v102)(v115, v72);
      return (*v103)(v77, v71);
    }

    (*v99)(v111, v115, v100);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = v72;
    if (!EnumCaseMultiPayload)
    {
      v42 = v86;
      v43 = v90;
      (*v83)(v86, v111, v90);
      (*(*(v91 + 16) + 48))(v76, v43);
      v44 = &v114;
LABEL_5:
      (**(v44 - 32))(v42, v43);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v42 = v87;
      v43 = AssociatedTypeWitness;
      (*v85)(v87, v111, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 32))(v114, v43, AssociatedConformanceWitness);
      v44 = &v116;
      goto LABEL_5;
    }

LABEL_6:
    (*v102)(v115, v72);
    v26 = v77;
    result = (*v103)(v77, v71);
  }

  if (v89 <= v41 + 1)
  {
    v46 = v41 + 1;
  }

  else
  {
    v46 = v89;
  }

  v47 = v46 - 1;
  v49 = v109;
  v48 = v110;
  v50 = v108;
  while (1)
  {
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v45 >= v89)
    {
      v65 = v21;
      v39 = 0;
      v67 = 1;
      v41 = v47;
      goto LABEL_18;
    }

    v39 = *(v107 + 8 * v45);
    ++v41;
    if (v39)
    {
      v41 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE23599C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2[3];
  v4 = a2[6];
  return CRDTDictionary.Partial.init(from:)(a1, a2[2], a2[4], a2[5], a3);
}

BOOL sub_1AE2359DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  type metadata accessor for CRDTDictionaryElement();
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a3 + 16);
  swift_beginAccess();
  v10 = *(v9 + 40);

  sub_1AE23CB7C();

  v11 = type metadata accessor for CRDTDictionaryElement.Delta();
  v12 = sub_1AE22B82C(v8, v11);
  (*(v5 + 8))(v8, v4);
  return (v12 & 1) == 0;
}

uint64_t sub_1AE235B70@<X0>(void *a1@<X8>)
{
  CRDTDictionary.makeIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1AE235B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE235BF0()
{
  swift_getWitnessTable();
  v1 = sub_1AE23836C();
  v2 = *v0;

  return v1;
}

uint64_t sub_1AE235C7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for CRDTDictionaryElement();
  return a8(v11, v12, v13, v14, v15, v16, a3, v17, a6) & 1;
}

uint64_t CRDTDictionary.Index.hash(into:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[6];
  type metadata accessor for CRDTDictionaryElement();
  v10 = a2[5];

  return sub_1AE23CA6C();
}

uint64_t CRDTDictionary.Index.hashValue.getter(void *a1)
{
  v3 = *(v1 + 16);
  v6 = *v1;
  v7 = v3;
  sub_1AE23E31C();
  CRDTDictionary.Index.hash(into:)(v5, a1);
  return sub_1AE23E34C();
}

uint64_t sub_1AE235E08(uint64_t a1, void *a2)
{
  sub_1AE23E31C();
  CRDTDictionary.Index.hash(into:)(v4, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1AE235E8C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);
  swift_beginAccess();
  v8 = *(v7 + 40);
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[6];
  v12 = type metadata accessor for CRDTDictionaryElement();
  v13 = a1[5];

  v15 = a2(v14, v10, v12, v13);
  v17 = v16;
  LOBYTE(v10) = v18;

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v10 & 1;
  return result;
}

uint64_t CRDTDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v44 = a2;
  v8 = a4[3];
  v40 = a4[2];
  v42 = a1;
  v43 = v8;
  v9 = a4[6];
  v41 = type metadata accessor for CRDTDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *a3;
  v21 = a3[1];
  v22 = *(a3 + 16);
  v23 = *(*v5 + 16);
  swift_beginAccess();
  v24 = *(v23 + 40);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = a4[5];

  v28 = v40;
  v27 = v41;
  sub_1AE23CB9C();

  v29 = v39;
  (*(v11 + 16))(v39, v19, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v28 - 8);
  (*(v31 + 32))(v42, v29, v28);
  (*(v11 + 32))(v14, v19, TupleTypeMetadata2);
  v32 = *(TupleTypeMetadata2 + 48);
  (*(*(v43 - 8) + 16))(v44, &v14[v32]);
  v33 = v27;
  v34 = *(*(v27 - 8) + 8);
  v35 = &v14[v32];
  v36 = v33;
  v34(v35);
  (*(v31 + 8))(v14, v28);
  return (v34)(&v29[v30], v36);
}

uint64_t CRDTDictionary.index(after:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *(*v3 + 16);
  swift_beginAccess();
  v10 = *(v9 + 40);
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[6];
  type metadata accessor for CRDTDictionaryElement();
  v14 = a2[5];

  v15 = sub_1AE23CA8C();
  v17 = v16;
  LOBYTE(v7) = v18;

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v7 & 1;
  return result;
}

uint64_t CRDTDictionary.count.getter(void *a1)
{
  v3 = *(*v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[6];
  type metadata accessor for CRDTDictionaryElement();
  v8 = a1[5];

  v9 = sub_1AE23CA7C();

  return v9;
}

uint64_t CRDTDictionary.insertionCount.getter(uint64_t a1)
{
  v3 = *(*v1 + 16);
  swift_beginAccess();
  v9 = *(v3 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  type metadata accessor for CRDTDictionaryElement();
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v10;
}

uint64_t sub_1AE23646C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CRDTDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v21 - v12;
  v14 = *a1;
  (*(v15 + 16))(v21 - v12, a2, TupleTypeMetadata2, v11);
  v16 = &v13[*(TupleTypeMetadata2 + 48)];
  v17 = *&v16[*(v8 + 36)];
  v18 = *(*(v8 - 8) + 8);

  v18(v16, v8);
  v19 = *(v17 + 16);

  if (__OFADD__(v14, v19))
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v13, a3);
    *a4 = v14 + v19;
  }

  return result;
}

void (*sub_1AE23661C(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
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
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1AE2367B0(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void (*sub_1AE2367B0(uint64_t *a1, uint64_t *a2, void *a3))(void *a1)
{
  v6 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  CRDTDictionary.subscript.getter(v10, v10 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1AE2368AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v2 = v6[0];
  v6[1] = v3;
  v7 = v4;
  CRDTDictionary.index(after:)(v6, a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

uint64_t sub_1AE236910(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = a8;
  v65 = a4;
  v66 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v60 - v16;
  v18 = sub_1AE23BFEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v70 = a2;
  v24 = *a1;
  v25 = *(a2 + 24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v24 >= v26;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v28 = 0xD000000000000013;
    *(v28 + 8) = 0x80000001AE25FD70;
    *(v28 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v62 = a3;
    v63 = a6;
    v64 = a5;
    (*(v19 + 16))(v23, v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, v18, v21);
    v30 = type metadata accessor for ReplicaState();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v35 = type metadata accessor for Replica();
    v36 = *(*(v35 - 8) + 56);
    v36(v33 + v34, 1, 1, v35);
    (*(v19 + 32))(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v23, v18);
    *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v33 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v36(v17, 1, 1, v35);
    swift_beginAccess();
    sub_1ADDD85E4(v17, v33 + v34);
    swift_endAccess();
    v37 = v69;
    v38 = v69[3];
    v39 = v69[4];
    if (v38)
    {
      v40 = v69[3];
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    if (v38)
    {
      v41 = v69[4];
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v38);
    v42 = v70;

    v43 = v68;
    sub_1ADDD6748(v40, v41, v42, &v71);
    if (v43)
    {
    }

    else
    {
      v60[1] = v60;
      v61 = *(&v71 + 1);
      v68 = v71;
      v76 = v37[1];
      *&v71 = v76;
      MEMORY[0x1EEE9AC00](v76);
      v44 = v63;
      v60[-6] = v64;
      v60[-5] = v44;
      v45 = v67;
      v60[-4] = v66;
      v60[-3] = v45;
      v60[-2] = a9;
      v60[-1] = v42;

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
      v47 = type metadata accessor for CRDTDictionaryElement();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
      v50 = sub_1ADE11630();
      v51 = sub_1ADE08EB0(sub_1AE239A30, &v60[-8], v46, TupleTypeMetadata2, v49, v50, MEMORY[0x1E69E7288], &v75);
      v52 = sub_1ADDCEDE0(&v76, qword_1EB5BBB90, &unk_1AE24EC40);
      v53 = v67;
      v70 = v33;
      if (v62)
      {
        v52 = v62(v51);
      }

      v69 = v60;
      *&v71 = v51;
      MEMORY[0x1EEE9AC00](v52);
      v54 = v63;
      v55 = v64;
      v60[-6] = v64;
      v60[-5] = v54;
      v56 = v66;
      v60[-4] = v66;
      v60[-3] = v53;
      v60[-2] = a9;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v57 = sub_1AE23CB2C();
      WitnessTable = swift_getWitnessTable();
      *&v71 = v55;
      *(&v71 + 1) = v47;
      v72 = v56;
      v73 = v53;
      v74 = WitnessTable;
      type metadata accessor for CRSetRef();
      *&v71 = v68;
      *(&v71 + 1) = v61;
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      v59 = *(qword_1ED96F2F8 + 40);
      sub_1AE23D6AC();
      return sub_1AE176A00(v70, &v71, v57, v75);
    }
  }
}

uint64_t sub_1AE236F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v64 = a7;
  v54 = a8;
  v60 = a6;
  v13 = type metadata accessor for CRDTDictionaryElement();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v49 - v15;
  v63 = a4;
  v16 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = *(a3 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v59 = a1[1];
  v25 = a1[2];
  v55 = a1[3];
  v56 = v25;
  v57 = v26;
  v61 = v27;
  if (v24)
  {
    inited = v24;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v29 = *(*(a5 + 8) + 8);
  v30 = *(v29 + 8);

  v32 = v65;
  v30(v31, a3, v29);
  if (v32)
  {

    *v64 = v32;
  }

  else
  {
    v50 = v23;
    v65 = a3;
    if (v59)
    {
      v33 = v59;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v33 = swift_initStaticObject();
    }

    swift_allocObject();

    sub_1ADDE77B4(v33, a2);

    v34 = *(*(*(v60 + 16) + 8) + 8);

    v36 = v61;
    v34(v35);
    v38 = v57;
    (*(v57 + 16))(v58, v36, v63);
    v39 = v56;
    if (v56)
    {
      v40 = v56;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    if (v56)
    {
      v41 = v55;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v39);
    v42 = sub_1ADDF4A24(v40, v41, a2);
    v43 = v63;
    (*(v38 + 8))(v36, v63);

    v44 = v51;
    (*(v38 + 32))(v51, v58, v43);
    v45 = v53;
    *&v44[*(v53 + 36)] = v42;
    v46 = v65;
    v47 = *(swift_getTupleTypeMetadata2() + 48);
    v48 = v54;
    (*(v62 + 32))(v54, v50, v46);
    return (*(v52 + 32))(v48 + v47, v44, v45);
  }

  return result;
}

uint64_t sub_1AE237470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a9;
  v26 = a1;
  v28 = a4;
  v29 = a5;
  v39 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  v35 = a2;
  v36 = a3;
  result = sub_1ADE6B9FC(sub_1AE2399A0, v27);
  if (!v11)
  {
    v23 = &v23;
    v24 = result;
    MEMORY[0x1EEE9AC00](result);
    v15 = sub_1ADE6B938(sub_1AE2399E8);
    v16 = *(a2 + *(type metadata accessor for CRDTDictionaryElement() + 36));

    sub_1ADF78ED0(v17, &v38);
    v37 = v38;
    v18 = sub_1ADDF5C7C(a3);
    v20 = v19;

    v21 = v24;
    v22 = v25;
    *v25 = v15;
    v22[1] = v21;
    v22[2] = v18;
    v22[3] = v20;
    v22[4] = 0;
  }

  return result;
}

uint64_t sub_1AE2375FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v26 = a6;
  v27 = a2;
  v28 = a4;
  v25 = a7;
  v10 = *a3;
  v11 = *a3;
  v12 = *(*a3 + 88);
  v13 = sub_1AE23D7CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  swift_beginAccess();
  v17 = a3[5];
  v18 = *(v10 + 80);
  v19 = *(v10 + 104);

  sub_1AE23CB7C();
  v20 = *(v12 - 8);
  result = (*(v20 + 48))(v16, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v22 = v31;
    sub_1AE237470(a1, v16, v27, v18, *(v12 + 16), v28, *(v11 + 96), v19, v29, *(v12 + 24), a5);
    result = (*(v20 + 8))(v16, v12);
    if (v22)
    {
      *v26 = v22;
    }

    else
    {
      v23 = v29[1];
      v24 = v25;
      *v25 = v29[0];
      v24[1] = v23;
      *(v24 + 4) = v30;
    }
  }

  return result;
}

double sub_1AE237820@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for CRDTDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v13, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v6)
  {
    *a6 = v6;
  }

  else
  {
    result = *v13;
    v12 = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = v12;
    *(a3 + 32) = v14;
  }

  return result;
}

uint64_t CRDTDictionary<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38[0] = *v4;
  v8 = a2[3];
  v29 = a2[2];
  v30 = v8;
  v9 = a2[5];
  v31 = a2[4];
  v32 = a3;
  v10 = a2[6];
  v33 = v9;
  v34 = v10;
  v35 = a4;
  v19 = v29;
  v20 = v8;
  v21 = v31;
  v22 = a3;
  v23 = v9;
  v24 = v10;
  v25 = a4;
  v26 = sub_1ADFAF414;
  v27 = &v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v38[0] = sub_1ADE08EB0(sub_1AE238B38, v18, a2, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  sub_1AE23D11C();
  swift_getWitnessTable();
  v14 = sub_1AE23CA4C();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3BC();
  v38[7] = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_1AE23CB1C();
  v36 = a3;
  v37 = a4;
  swift_getWitnessTable();
  sub_1AE23E06C();

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1AE237B20()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1AE23D5CC() + 36);
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE237BEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t sub_1AE237C14()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1AE23CC9C() + 36);
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 sub_1AE237CE0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a3;
  v66 = a5;
  v87 = a2;
  v58 = a6;
  v60 = *a1;
  v62 = a4;
  v8 = sub_1AE23D7CC();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v63 = *(a4 - 1);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AE23BFEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[2];
  v21 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v16 + 16))(v19, v20 + v21, v15);
  v22 = v87;
  v64 = sub_1ADDF66A8(v19);
  v23 = v19;
  v24 = v8;
  v25 = v15;
  v26 = v61;
  (*(v16 + 8))(v23, v25);
  swift_beginAccess();
  v27 = a1[4];
  v75 = a1[3];
  v76 = v27;

  v67 = sub_1ADDF5C7C(v22);
  v29 = v28;

  v30 = v62;

  sub_1ADE42CB8(0);
  (*(v26 + 16))(v11, v65, v8);
  v31 = v63;
  if ((*(v63 + 48))(v11, 1, v30) == 1)
  {
    v65 = v29;
    (*(v26 + 8))(v11, v24);
    v32 = swift_beginAccess();
    v75 = a1[5];
    MEMORY[0x1EEE9AC00](v32);
    v33 = v60;
    v34 = *(v60 + 88);
    *(&v58 - 8) = *(v60 + 80);
    *(&v58 - 7) = *(v34 + 16);
    *(&v58 - 6) = v30;
    v35 = *(v33 + 104);
    *(&v58 - 5) = *(v33 + 96);
    *(&v58 - 4) = v35;
    v36 = v66;
    *(&v58 - 3) = *(v34 + 24);
    *(&v58 - 2) = v36;
    *(&v58 - 1) = v87;
    MEMORY[0x1EEE9AC00](v37);
    *(&v58 - 10) = v38;
    *(&v58 - 9) = v39;
    *(&v58 - 8) = v30;
    *(&v58 - 7) = v40;
    *(&v58 - 6) = v41;
    *(&v58 - 5) = v42;
    *(&v58 - 4) = v36;
    *(&v58 - 3) = sub_1AE239908;
    *(&v58 - 2) = v43;
    v44 = sub_1AE23CB1C();

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v47 = v68;
    v48 = sub_1ADE08EB0(sub_1AE23993C, (&v58 - 12), v44, &type metadata for Proto_Set.Element, v45, WitnessTable, MEMORY[0x1E69E7288], &v70);
    if (v47)
    {

      v29 = v65;
LABEL_5:
      v75 = v64;
      v76 = MEMORY[0x1E69E7CC0];
      v77 = MEMORY[0x1E69E7CC0];
      v78 = v67;
      v80 = 0;
      v81 = 0;
      v79 = v29;
      v82 = 1;
      *v83 = v86[0];
      *&v83[3] = *(v86 + 3);
      v84 = 0;
      v85 = 0;
      sub_1ADFAECE8(&v75);
      return result;
    }

    v54 = v48;

    v29 = v65;
  }

  else
  {
    v49 = v59;
    v50 = (*(v31 + 32))(v59, v11, v30);
    MEMORY[0x1EEE9AC00](v50);
    v51 = v66;
    *(&v58 - 4) = v30;
    *(&v58 - 3) = v51;
    *(&v58 - 2) = v87;
    *(&v58 - 1) = a1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v53 = v68;
    v54 = sub_1ADE13AA8(sub_1AE23997C, (&v58 - 6), v30, &type metadata for Proto_Set.Element, v52, v51, MEMORY[0x1E69E7288], &v75);
    (*(v31 + 8))(v49, v30);
    if (v53)
    {
      goto LABEL_5;
    }
  }

  *&v70 = v64;
  *(&v70 + 1) = v54;
  v71.n128_u64[0] = MEMORY[0x1E69E7CC0];
  v71.n128_u64[1] = v67;
  *&v73 = 0;
  v72 = v29;
  BYTE8(v73) = 1;
  *(&v73 + 9) = v86[0];
  HIDWORD(v73) = *(v86 + 3);
  v74 = 0uLL;
  v75 = v64;
  v76 = v54;
  v77 = MEMORY[0x1E69E7CC0];
  v78 = v67;
  v80 = 0;
  v81 = 0;
  v79 = v29;
  v82 = 1;
  *v83 = v86[0];
  *&v83[3] = *(v86 + 3);
  v84 = 0;
  v85 = 0;
  sub_1ADFAEE10(&v70, &v69);
  sub_1ADFAECE8(&v75);
  v56 = v73;
  v57 = v58;
  *(v58 + 32) = v72;
  *(v57 + 48) = v56;
  *(v57 + 64) = v74;
  result = v71;
  *v57 = v70;
  *(v57 + 16) = result;
  return result;
}

uint64_t sub_1AE23837C()
{
  v9 = *(*v0 + 5);
  v10 = *(*v0 + 6);
  v11 = (*v0)[14];
  v1 = type metadata accessor for CRDTDictionaryRef();
  v2 = *(*v0[2] + 288);

  v4 = v2(v3);

  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = swift_allocObject();
  sub_1AE22CF80(v4);
  return v7;
}

void *sub_1AE238474(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(v5 + *(a5 + 36));

  sub_1ADF78ED0(v13, &v26);
  *&v25 = v8;
  *(&v25 + 1) = v9;
  v14 = *(a1 + *(a5 + 36));
  v24[0] = v10;
  v24[1] = v11;
  v15 = sub_1ADF772F0(&v25, v14, v24);

  sub_1ADF78ED0(v16, &v25);
  v17 = v25;
  LODWORD(v9) = sub_1ADF60694(v9, *(&v25 + 1), v11);
  LODWORD(v10) = v9 | sub_1ADF60694(v8, v17, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AE241900;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEE70, &qword_1AE25BC60);
  *(v18 + 56) = v19;
  *(v18 + 32) = v15 & 1;
  *(v18 + 33) = HIBYTE(v15) & 1;
  *(v18 + 88) = v19;
  *(v18 + 64) = v10 & 1;
  *(v18 + 65) = BYTE1(v10) & 1;
  sub_1AE23E2EC();

  result = (*(*(*(a5 + 24) + 8) + 8))(&v25, a1, *(a5 + 16));
  v21 = 1;
  if ((*a4 & 1) == 0 && (BYTE2(v25) & 1) == 0)
  {
    if (v25 <= 1u && BYTE1(v25) < 2u || (v15 & 0x100) == 0)
    {
      v21 = v15;
      if (v25 > 1u)
      {
        if (v25 != 2)
        {
          goto LABEL_12;
        }
      }

      else if (v25)
      {
        goto LABEL_12;
      }

      v21 = ((BYTE1(v25) & 0xFD) != 0) & v15;
      goto LABEL_12;
    }

    v21 = 1;
  }

LABEL_12:
  *a4 = v21 & 1;
  return result;
}

uint64_t sub_1AE2386F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v26 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v13 = *(v12 + 24);
  v27 = sub_1AE23D7CC();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1AE22F7AC(a3);
  v21 = *(v13 - 8);
  (*(v21 + 16))(v20, v26, v13);
  (*(v21 + 56))(v20, 0, 1, v13);
  sub_1AE22F7AC(a3);
  v22 = *v3;
  v23 = *(v6 + 16);
  v23(v11, v29, v5);
  v24 = v28;
  v23(v28, v11, v5);
  sub_1AE22D064(v17);
  (*(v14 + 40))(v17, v20, v27);
  sub_1AE22D2F4(v17, v24);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1AE238978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[6];
  v6 = v2[7];
  v8 = type metadata accessor for CRDTDictionaryElement();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return (*(*(v7 + 16) + 64))(v6, v5);
}

BOOL sub_1AE238A44(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_1AE2359DC(a1, a2, v2[7]);
}

uint64_t sub_1AE238A54(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  type metadata accessor for CRDTDictionaryElement.Delta();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1AE238AD4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_1AE23494C(a1, v1[7], v1[2]);
}

uint64_t sub_1AE238B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  return sub_1AE23646C(a1, a2, v3[2], a3);
}

uint64_t sub_1AE238B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[9];
  v7 = v2[10];
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v8(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
}

uint64_t sub_1AE238BE4(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE238C60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE238CF0()
{
  result = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE238DC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE238E20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE238E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1AE238F18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1AE239088(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AE239274(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE2392EC(_DWORD *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v10 = (v7 & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  v12 = a2 - 2147483646;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v14 == 4)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  else if (v14 == 2)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
LABEL_5:
      v8 = *((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v8 >= 0xFFFFFFFF)
      {
        LODWORD(v8) = -1;
      }

      return (v8 + 1);
    }
  }

  v16 = v15 - 1;
  if (v11)
  {
    v16 = 0;
    LODWORD(v11) = *a1;
  }

  return (v11 | v16) ^ 0x80000000;
}

void sub_1AE239420(int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v14 = a2 & 0x7FFFFFFF;
    if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 1;
    }

    if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v10);
      *a1 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v11)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v11 == 2)
  {
    *(a1 + v10) = 0;
    goto LABEL_28;
  }

  *(a1 + v10) = 0;
  if (a2)
  {
LABEL_29:
    *((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t sub_1AE239584(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE2395FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AE239738(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

double sub_1AE23993C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  return sub_1AE237820(a1, *(v3 + 72), a3, *(v3 + 56), *(v3 + 64), a2);
}

uint64_t CRAsset.digest.getter()
{
  v1 = *(*v0 + 16);
  sub_1ADDD86D8(v1, *(*v0 + 24));
  return v1;
}

uint64_t sub_1AE239A9C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v3 + 120) = v4;
  v5 = *(v4 - 8);
  *(v3 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE239B6C, 0, 0);
}

uint64_t sub_1AE239B6C()
{
  v1 = *(v0[14] + 32);
  v0[18] = v1;
  v0[19] = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1AE239BE8, 0, 0);
}

uint64_t sub_1AE239BE8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1AE239D20;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[10] = &unk_1AE2544C0;
  v0[11] = v6;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE239D20()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE239E00, 0, 0);
}

uint64_t sub_1AE239E00()
{
  v1 = *(*(v0 + 144) + 24);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1AE239EB8;
  v3 = *(v0 + 176);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  return sub_1AE1AA154(v4, v5, v3, v1);
}

uint64_t sub_1AE239EB8()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE23A000, 0, 0);
  }

  else
  {
    v5 = v3[17];
    v4 = v3[18];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1AE23A000()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t CRAsset.read<A>(waitIfUnavailable:withAsyncAccessor:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 88) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_1AE23A09C, 0, 0);
}

uint64_t sub_1AE23A09C()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = *(v1 + 32);
  *(v0 + 16) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1AE23A164;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return sub_1AE1B149C(v6, (v0 + 16), v5, v7, v3, v4);
}

uint64_t sub_1AE23A164()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE23A2B4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1AE23A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1ADE925E0(a3, v27 - v11);
  v13 = sub_1AE23D1BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1AE23AAB8(v12);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1AE23D16C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1AE23CD8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t CRAsset.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE65E00(&v7);

    if (!v2)
    {
      *a2 = v7;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001AE25FB70;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

void *sub_1AE23A64C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - v5;
  v7 = v0[3];
  v8 = v0[2];
  v9 = *(v0[4] + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v13[1] = &unk_1AE25BDE0;
  v13[2] = v10;
  swift_weakInit();
  sub_1ADDD86D8(v8, v7);
  sub_1ADDD86D8(v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();

  sub_1ADDCC35C(v8, v7);
  (*(v3 + 8))(v6, v2);

  sub_1ADDCC35C(v1[2], v1[3]);
  v11 = v1[4];

  return v1;
}

uint64_t sub_1AE23A800()
{
  sub_1AE23A64C();

  return swift_deallocClassInstance();
}

uint64_t CRAsset.read(withAccessor:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = *v2;
  v10 = *(*v2 + 32);
  v11 = sub_1AE23D1BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = v9;
  v13[6] = a1;
  v13[7] = a2;

  sub_1AE23A2CC(0, 0, v8, &unk_1AE25BC70, v13);
  sub_1AE23AAB8(v8);
  v14 = sub_1AE23C81C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1AE23C82C();

  return v17;
}

uint64_t sub_1AE23A9E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1ADE744B8;

  return sub_1AE1B05C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1AE23AAB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CRAsset.read(waitIfUnavailable:withAccessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = *v4;
  v14 = *(*v4 + 32);
  v15 = sub_1AE23D1BC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v17[5] = v13;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = a4;

  sub_1AE23A2CC(0, 0, v12, &unk_1AE25BC78, v17);
  sub_1AE23AAB8(v12);
  v18 = sub_1AE23C81C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1AE23C82C();

  return v21;
}

uint64_t sub_1AE23ACF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1ADE744B8;

  return sub_1AE1B0D0C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1AE23AE10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X3>, void *a4@<X8>)
{
  a3(&v8);

  result = sub_1ADDCC35C(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t CRAsset.init(_:data:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1AE1ABE30(a1, a2, &v7);
  sub_1ADDCC35C(a1, a2);

  *a3 = v7;
  return result;
}

uint64_t CRAsset.init(url:coordinated:assetManager:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1AE1AD190(a1, a2, &v7);
  v5 = sub_1AE23BDDC();
  (*(*(v5 - 8) + 8))(a1, v5);

  *a3 = v7;
  return result;
}

uint64_t CRAsset.init(safelyFrom:coordinated:assetManager:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1AE1AD190(a1, a2, &v8);
  v6 = sub_1AE23BDDC();
  (*(*(v6 - 8) + 8))(a1, v6);

  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t static CRAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v2, v3);
  sub_1ADDCC35C(v4, v5);
  return v6 & 1;
}

uint64_t CRAsset.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();

  return sub_1ADDCC35C(v2, v3);
}

uint64_t CRAsset.visitReferences(_:)(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return (*(v4 + 32))(&v6, v3, v4);
}

uint64_t CRAsset.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();
  sub_1ADDCC35C(v2, v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE23B218()
{
  v1 = *v0;
  sub_1AE23E31C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();
  sub_1ADDCC35C(v2, v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE23B280()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();

  return sub_1ADDCC35C(v2, v3);
}

uint64_t sub_1AE23B2E4()
{
  v1 = *v0;
  sub_1AE23E31C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();
  sub_1ADDCC35C(v2, v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE23B348(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v2, v3);
  sub_1ADDCC35C(v4, v5);
  return v6 & 1;
}

uint64_t sub_1AE23B3D0(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return (*(v4 + 32))(&v6, v3, v4);
}

uint64_t sub_1AE23B44C()
{
  v2 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v4 = v2;

    sub_1ADE6D598(&v4);
  }

  return result;
}

uint64_t CRAsset.encode(to:)()
{
  v2 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v4 = v2;

    sub_1ADE6D598(&v4);
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BEFC();
  return sub_1ADDCC35C(v2, v3);
}

uint64_t CRAsset.debugDescription.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_1ADDD86D8(v1, v2);
  sub_1AE23BEAC();
  sub_1ADE42DEC();
  v3 = sub_1AE23D82C();
  v5 = v4;
  sub_1ADDCC35C(v1, v2);

  MEMORY[0x1B26FB670](v3, v5);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 0x2874657373415243;
}

void *CRAsset.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v11);
  v5 = sub_1AE23BEBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED96F2A8;

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for CRAssetRef();
  result = swift_allocObject();
  result[2] = v8;
  result[3] = v9;
  result[4] = v10;
  *a2 = result;
  return result;
}

void *sub_1AE23B750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v11);
  v5 = sub_1AE23BEBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED96F2A8;

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for CRAssetRef();
  result = swift_allocObject();
  result[2] = v8;
  result[3] = v9;
  result[4] = v10;
  *a2 = result;
  return result;
}

uint64_t sub_1AE23B828()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BEFC();
  return sub_1ADDCC35C(v2, v3);
}

unint64_t sub_1AE23B8B8()
{
  result = qword_1EB5B8CB8[0];
  if (!qword_1EB5B8CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8CB8);
  }

  return result;
}

uint64_t sub_1AE23B90C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1AE1ABDA4(a1, v5, v4);
}

uint64_t sub_1AE23B9B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE74240;

  return sub_1ADDCF11C(a1, v5);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}