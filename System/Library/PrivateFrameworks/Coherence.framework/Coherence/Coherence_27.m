uint64_t sub_1AE01B598(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1ADDCEE40(a3 + OBJC_IVAR___CRContext_encryptionDelegate, v24, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CRSQLStore();
  v12 = swift_allocObject();
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 264) = 0u;
  *(v12 + 280) = 0u;
  swift_beginAccess();
  sub_1ADE9241C(v24, v12 + 88);
  swift_endAccess();
  *(v12 + 24) = a2;
  *(v12 + 32) = 0;
  *(v12 + 40) = 256;
  *(v12 + 64) = 0;
  *(v12 + 66) = 1;
  *(v12 + 68) = 0;
  *(v12 + 70) = 1;
  *(v12 + 72) = 0;
  *(v12 + 80) = -1;
  *(v12 + 16) = a1;
  *(v12 + 42) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = &unk_1F23BBD48;

  sub_1ADDD16D4();
  if (v6)
  {
    sub_1ADDCEDE0(v24, &qword_1EB5B9DB0, &qword_1AE240B80);
  }

  else
  {
    if (a5)
    {
      value = -1;
      v13 = sub_1AE23CD8C();
      v14 = setxattr((v13 + 32), "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);

      if (v14 < 0)
      {
        if (qword_1ED968A60 != -1)
        {
          swift_once();
        }

        v15 = sub_1AE23C78C();
        __swift_project_value_buffer(v15, qword_1ED96F208);

        v16 = sub_1AE23C76C();
        v17 = sub_1AE23D61C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v23 = v19;
          *v18 = 67109378;
          *(v18 + 4) = v14;
          *(v18 + 8) = 2080;
          *(v18 + 10) = sub_1AE1FB594(a1, a2, &v23);
          _os_log_impl(&dword_1ADDCA000, v16, v17, "%d: Could not set file lock exception attribute at %s", v18, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1B26FDA50](v19, -1, -1);
          MEMORY[0x1B26FDA50](v18, -1, -1);
        }
      }
    }

    sub_1ADDCEDE0(v24, &qword_1EB5B9DB0, &qword_1AE240B80);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1AE01B8CC@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t *a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v5 = *(*a2 + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 32);
  if (v6 > 2)
  {
    goto LABEL_6;
  }

  a1(&v10);
  if (v10 > v6)
  {
    v6 = v10;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
LABEL_6:
    v7 = 0;
    while (*(v4 + 32 + v7) != v6)
    {
      if (v5 == ++v7)
      {
        goto LABEL_9;
      }
    }

    result = sub_1ADF935D0(0, v7);
    *a3 = v6;
  }

  else
  {
LABEL_9:
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000012;
    *(v8 + 8) = 0x80000001AE262210;
    *(v8 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AE01B9D0(__int16 a1, char **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 2);
    if (!v3)
    {
LABEL_8:
      sub_1ADE42E40();
      swift_allocError();
      *v6 = 0xD000000000000016;
      *(v6 + 8) = 0x80000001AE2621F0;
      *(v6 + 16) = 3;
      return swift_willThrow();
    }

    v4 = 0;
    if (*(v2 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v2 + 16);
    }

    while (*&v2[2 * v4 + 32] != v5)
    {
      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

    v10 = v3 - v4;
    v11 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= *(v2 + 3) >> 1)
    {
      v13 = v2;
    }

    else
    {
      if (v3 <= v10)
      {
        v14 = v3 - v4;
      }

      else
      {
        v14 = v3;
      }

      v13 = sub_1ADE558CC(isUniquelyReferenced_nonNull_native, v14, 1, v2);
    }

    sub_1ADF936D4(0, v4, 0);
    *a2 = v13;
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8 | ((v2 == 0) << 16);
}

uint64_t sub_1AE01BB20()
{
  v1 = v0;
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EB5D7438;
  if (*(v0 + qword_1EB5D7438))
  {
    v9 = *(*(v0 + 40) + OBJC_IVAR___CRContext_assetManager);
    (*(v3 + 16))(v7, v1 + qword_1EB5D7420, v2, v5);

    sub_1AE1A3C14(v7);

    (*(v3 + 8))(v7, v2);
  }

  v10 = *(v1 + 56);

  sub_1ADE432BC();

  if (*(v1 + qword_1EB5D7450) == 1)
  {
    v11 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v7, v1 + qword_1EB5D74C8, v2);
    v12 = sub_1AE23BD1C();
    (*(v3 + 8))(v7, v2);
    v31[0] = 0;
    v13 = [v11 removeItemAtURL:v12 error:v31];

    if (v13)
    {
      v14 = v31[0];
    }

    else
    {
      v15 = v31[0];
      v16 = sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  v17 = *(v1 + 24);
  sub_1ADE42CB8(*(v1 + 16));
  v18 = *(v1 + 32);

  v19 = *(v1 + 48);

  v20 = *(v1 + 56);

  v21 = *(v3 + 8);
  v21(v1 + qword_1EB5D74C8, v2);
  v21(v1 + qword_1EB5D7420, v2);
  v22 = *(v1 + qword_1EB5D7458);

  v23 = *(v1 + qword_1EB5D7430);

  v24 = *(v1 + qword_1EB5D7448);

  v25 = *(v1 + qword_1EB5D7428);

  v26 = *(v1 + qword_1EB5D7440);

  v27 = *(v1 + v8);

  v28 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1AE01BE5C()
{
  sub_1AE01BB20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE01BF00(void *a1, void *a2)
{
  v5 = *a1;
  v6 = a1[7];
  v7 = sub_1ADDCC6B4(&unk_1F23BC118);
  v9 = v8;

  sub_1AE026EA8(v7, v9, v6, &v45);
  result = sub_1ADDCC35C(v7, v9);
  if (!v2)
  {
    v11 = v46;
    if (v46 >> 60 == 15)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v12 = xmmword_1AE251850;
      *(v12 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      v13 = v45;
      v37 = *(&v46 + 1);
      v56 = v47;
      v35 = *(v5 + 88);
      v36 = *(v5 + 80);
      type metadata accessor for CRDataStoreBundleDecodeContext();
      v14 = a1[6];
      v15 = a1[8];
      v16 = sub_1ADF7F3A0(a1, 0, v14, a2, v15);
      v17 = qword_1ED9697D8;

      v18 = a2;
      v19 = v15;
      if (v17 != -1)
      {
        swift_once();
      }

      sub_1ADE6035C(&v54, v13, v11, qword_1ED96F240, *algn_1ED96F248, &v45);
      v55[4] = v50;
      v55[5] = v51;
      v55[6] = v52;
      v55[7] = v53;
      v55[0] = v46;
      v55[1] = v47;
      v55[2] = v48;
      v55[3] = v49;
      v39[0] = v54;

      sub_1ADDCEE40(&v45, v40, &qword_1EB5BA278, &unk_1AE241D30);

      sub_1AE1EB234(v39, v55, v16, v14, 0, v36, v35, &v42);
      v33 = v44;
      v20 = a1[4];
      swift_beginAccess();
      v21 = v20[1].n128_i64[0];
      v22 = v20[1].n128_u64[1];
      v23 = v20[2].n128_u64[1];
      v31 = v20[3].n128_i64[0];
      v32 = v20[2].n128_i64[0];
      v24 = v43;
      v20[1] = v42;
      v20[2] = v24;
      v20[3].n128_u64[0] = v33;

      sub_1ADE92284(v21, v22, v32, v23, v31);

      result = sub_1AE018590(v40);
      v25 = v41;
      if (v41 == 1)
      {
        __break(1u);
      }

      else
      {
        v26 = v40[2];
        v34 = v40[3];
        v28 = v40[0];
        v27 = v40[1];
        sub_1AE02AA94(v13, v11, v37, v56);

        sub_1ADDCEDE0(&v45, &qword_1EB5BA278, &unk_1AE241D30);
        v42.n128_u64[0] = v28;
        v42.n128_u64[1] = v27;
        v43.n128_u64[0] = v26;
        v43.n128_u64[1] = v34;
        v44 = v25;
        type metadata accessor for Capsule();
        Capsule.version.getter(&v38);
        sub_1ADE92284(v28, v27, v26, v34, v25);
        v29 = a1[2];
        v30 = a1[3];
        *(a1 + 1) = v38;
        return sub_1ADE42CB8(v29);
      }
    }
  }

  return result;
}

uint64_t sub_1AE01C2DC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  LODWORD(v123) = a4;
  v122 = a3;
  v125 = a2;
  v120 = a5;
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v108 - v11;
  v13 = sub_1AE23BDDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v8 + 88);
  v124 = *(v8 + 80);
  v18 = type metadata accessor for CRSQLStoreBundleCapsule();
  v19 = *(a1 + 5);
  v20 = *(v18 + 48);
  v21 = *(v18 + 52);
  v22 = swift_allocObject();
  v23 = v19;

  result = sub_1AE020CC8(v23, a1);
  if (!v6)
  {
    v116 = v18;
    v25 = *(v22 + 16);
    v26 = v125;
    *(v22 + 16) = v125;
    v121 = 0;
    v27 = v26;

    v117 = type metadata accessor for CRDataStoreBundleNonCoordinated();
    v118 = *(a1 + 5);
    v119 = v22;
    v28 = *(v14 + 16);
    v29 = v17;
    v30 = v122;
    v28(v134, v122, v13);
    v28(v12, v30, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage();
    v31 = swift_allocObject();
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 1;
    v32 = *&a1[qword_1EB5D7448];
    v33 = *&a1[qword_1EB5D7430];
    v34 = *(v117 + 48);
    v35 = *(v117 + 52);
    v36 = swift_allocObject();
    v37 = v118;

    v38 = v37;
    v39 = v121;
    sub_1AE0197B8(v38, v134, v12, 1, v31, 0, v123 & 1, 0, v32, v33, 0);
    if (v39)
    {
    }

    else
    {
      v122 = v29;
      v40 = *(a1 + 5);
      v41 = v116;
      v42 = *(v116 + 48);
      v43 = *(v116 + 52);
      v44 = swift_allocObject();
      v45 = v40;

      sub_1AE020CC8(v45, v36);
      v134 = a1;
      *&v128 = v44;
      WitnessTable = swift_getWitnessTable();
      v47 = swift_getWitnessTable();
      v48 = sub_1ADF9975C(v127, &v128, 0, 0, 0, v41, v41, WitnessTable, v47);
      v121 = 0;
      v49 = v48;
      v109 = v47;
      v118 = v44;
      v50 = MEMORY[0x1E69E7CC0];
      v51 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v52 = sub_1ADDD9ECC(v50);
      v132 = v51;
      v133 = v52;
      v53 = v49 + 56;
      v54 = 1 << *(v49 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(v49 + 56);
      v57 = (v54 + 63) >> 6;

      v58 = 0;
      v111 = v49 + 56;
      v110 = v57;
      v112 = v36;
      v113 = v49;
      v59 = v125;
      if (v56)
      {
        while (1)
        {
          v60 = v58;
LABEL_13:
          v61 = (*(v49 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v56)))));
          v63 = *v61;
          v62 = v61[1];
          v64 = *(v134 + 7);
          sub_1ADDD86D8(*v61, v62);
          sub_1ADDD86D8(v63, v62);
          v65 = v121;
          v66 = sub_1ADE44C48(v63, v62);
          if (v65)
          {

            sub_1ADDCC35C(v63, v62);
            sub_1ADDCC35C(v63, v62);
          }

          v115 = v67;
          v117 = v66;
          sub_1ADDCC35C(v63, v62);
          *&v128 = v63;
          *(&v128 + 1) = v62;
          sub_1AE023134(&v128, &v126);
          v123 = v126;
          if (!v126)
          {

            *&v128 = 0;
            *(&v128 + 1) = 0xE000000000000000;
            sub_1AE23DA2C();
            MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
            *&v126 = 10278;
            *(&v126 + 1) = 0xE200000000000000;
            v131[0] = v63;
            v131[1] = v62;
            sub_1ADE53D94();
            MEMORY[0x1B26FB670]();

            MEMORY[0x1B26FB670](41, 0xE100000000000000);
            MEMORY[0x1B26FB670](v126, *(&v126 + 1));

            MEMORY[0x1B26FB670](46, 0xE100000000000000);
            v103 = v128;
            sub_1ADE42E40();
            swift_allocError();
            *v104 = v103;
            *(v104 + 16) = 0;
            swift_willThrow();

            sub_1ADDCC35C(v63, v62);
          }

          v121 = 0;
          v68 = type metadata accessor for RetainVisitor();
          v69 = swift_allocObject();
          v70 = MEMORY[0x1E69E7CC0];
          v71 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
          v114 = v64;
          v72 = v71;
          v73 = sub_1ADDD9ECC(v70);
          *(v69 + 16) = v72;
          *(v69 + 24) = v73;
          v129 = v68;
          v130 = &off_1F23C4550;
          *&v128 = v69;
          v74 = *(*v123 + 128);
          swift_retain_n();
          v74(&v128);

          __swift_destroy_boxed_opaque_existential_1(&v128);
          swift_beginAccess();
          v75 = *(v69 + 16);
          v76 = v62;
          v77 = *(v69 + 24);

          sub_1ADDDC8DC(v75, v77);

          sub_1ADDDCE90(v117, v115);

          v78 = *(v134 + 5);
          v79 = *(v69 + 16);
          v80 = *(v69 + 24);
          sub_1ADDD86D8(v63, v76);
          v81 = v78;

          v82 = v121;
          sub_1ADE45848(v81, v63, v76, v79, v80);
          v121 = v82;
          if (v82)
          {
            break;
          }

          v56 &= v56 - 1;

          sub_1ADDCC35C(v63, v76);

          result = sub_1ADDCC35C(v63, v76);
          v58 = v60;
          v49 = v113;
          v53 = v111;
          v57 = v110;
          v59 = v125;
          if (!v56)
          {
            goto LABEL_10;
          }
        }

        sub_1ADDCC35C(v63, v76);

        sub_1ADDCC35C(v63, v76);
      }

      else
      {
        while (1)
        {
LABEL_10:
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v60 >= v57)
          {
            break;
          }

          v56 = *(v53 + 8 * v60);
          ++v58;
          if (v56)
          {
            goto LABEL_13;
          }
        }

        v83 = qword_1EB5D7458;
        v84 = v134;
        swift_beginAccess();
        v85 = *(v84 + v83);
        v86 = *(v85 + 16);
        if (v86)
        {
          v87 = *(v84 + v83);

          v88 = 0;
          while (v88 < *(v85 + 16))
          {
            v89 = *(v85 + 8 * v88 + 32);
            v90 = *(v89 + 16);
            v91 = *(v89 + 24);

            sub_1ADDD86D8(v90, v91);
            v92 = sub_1AE022014(v90, v91);
            sub_1ADDCC35C(v90, v91);
            if (v92)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 24);
              sub_1ADDD86D8(v93, v94);
              v95 = v121;
              sub_1AE0231C0(v93, v94, &v126);
              if (v95)
              {

                sub_1ADDCC35C(v93, v94);
              }

              sub_1ADDCC35C(v93, v94);
              sub_1AE023260(&v126);
              v121 = 0;
            }

            else
            {
            }

            ++v88;
            v59 = v125;
            if (v86 == v88)
            {

              goto LABEL_27;
            }
          }

          goto LABEL_37;
        }

LABEL_27:
        v96 = v119;
        v131[0] = v119;
        v126 = xmmword_1AE2427C0;
        v97 = v121;
        sub_1ADF9B34C(v132, v133, 0, &v126, v116, &off_1F23C3C18);
        if (v97)
        {
        }

        v99 = v98;

        sub_1AE021124(&v126);
        v100 = v134;
        v101 = *(v134 + 2);
        v102 = *(v134 + 3);
        *(v134 + 1) = v126;
        sub_1ADE42CB8(v101);
        sub_1AE01D11C(v99, v59);
        v105 = *(v100 + 4);
        v131[0] = v96;
        result = swift_beginAccess();
        if (*(v105 + 48) != 1)
        {
          v106 = type metadata accessor for Capsule();

          sub_1AE1EAF78(v131, v106, v116, v109);
          v107 = v120;
          swift_endAccess();

          sub_1AE021124(v107);
        }

LABEL_38:
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1AE01D11C(uint64_t a1, void *a2)
{
  v26 = sub_1AE23BDDC();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = a2;

    return;
  }

  v22 = a2;
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = objc_opt_self();
  v24 = qword_1EB5D7420;
  v25 = v9;
  v23 = (v4 + 8);
  v21[1] = v29;
  v10 = a2;
  v11 = (a1 + 40);
  while (1)
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    sub_1ADDD86D8(v12, *v11);
    aBlock = sub_1AE23BEAC();
    v28 = v14;
    v29[6] = 47;
    v29[7] = 0xE100000000000000;
    v29[4] = 95;
    v29[5] = 0xE100000000000000;
    sub_1ADE42DEC();
    sub_1AE23D82C();

    sub_1AE23BD3C();

    v15 = [v25 defaultManager];
    sub_1AE23BDAC();
    v16 = sub_1AE23CCDC();

    v17 = [v15 fileExistsAtPath_];

    if (v17)
    {
      break;
    }

    (*v23)(v7, v26);
    sub_1ADDCC35C(v12, v13);
LABEL_5:
    v11 += 2;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  v18 = sub_1AE23BD1C();
  v29[2] = sub_1AE018648;
  v29[3] = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29[0] = sub_1ADE8AB00;
  v29[1] = &block_descriptor_50;
  v19 = _Block_copy(&aBlock);

  [v22 coordinateWritingItemAtURL:v18 options:1 error:0 byAccessor:v19];
  _Block_release(v19);

  sub_1ADDCC35C(v12, v13);
  (*v23)(v7, v26);
  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_9:
}

uint64_t sub_1AE01D4C0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE01D510()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AE01D564()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id sub_1AE01D5D8(uint64_t a1)
{
  v2 = v1;
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v2 + qword_1EB5D7420, v5, v8);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_1AE23BDAC();
  v13 = sub_1AE23CCDC();

  v14 = [v12 fileExistsAtPath_];

  v15 = v5;
  if ((v14 & 1) == 0)
  {
    v16 = [v11 defaultManager];
    v17 = sub_1AE23BD1C();
    v27[0] = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v27];

    if (!v18)
    {
      v23 = v27[0];
      sub_1AE23BC9C();

      swift_willThrow();
      (*(v6 + 8))(v10, v5);
      goto LABEL_6;
    }

    v19 = v27[0];
    v15 = v5;
  }

  v20 = *(v4 + 80);
  v21 = *(v4 + 88);
  type metadata accessor for CRDataStoreBundleNonCoordinated.AssetClass();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v22);
  *(&v26 - 2) = v10;

  v23 = sub_1AE018E58(sub_1AE02AD00, (&v26 - 4), a1);

  (*(v6 + 8))(v10, v15);
LABEL_6:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_1AE01D8E0(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  sub_1ADDD86D8(v7, v8);
  v13[4] = sub_1AE23BEAC();
  v13[5] = v9;
  v13[2] = 47;
  v13[3] = 0xE100000000000000;
  v13[0] = 95;
  v13[1] = 0xE100000000000000;
  sub_1ADE42DEC();
  sub_1AE23D82C();
  sub_1ADDCC35C(v7, v8);

  sub_1AE23BD3C();

  v10 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v11 = sub_1AE23CCDC();

  LODWORD(a1) = [v10 fileExistsAtPath_];

  (*(v3 + 8))(v6, v2);
  return a1 ^ 1;
}

void sub_1AE01DAE0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_1AE23BDDC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = sub_1AE01D5D8(a1);
  if (!v3)
  {
    v40 = 0;
    if (v15[2])
    {
      v16 = *(v7 + 80);
      v17 = *(v7 + 88);
      v39 = v15;
      v35 = v17;
      v36 = v16;
      type metadata accessor for CRDataStoreBundleNonCoordinated.AssetClass();
      v38 = swift_allocObject();
      *(v38 + 16) = MEMORY[0x1E69E7CC0];
      v18 = qword_1EB5D7420;
      v37 = dispatch_group_create();
      dispatch_group_enter(v37);
      type metadata accessor for CRDataStoreBundleNonCoordinated.CoordinatorWrapper();
      v34 = swift_allocObject();
      *(v34 + 16) = a2;
      v19 = a2;
      sub_1AE23D19C();
      v20 = sub_1AE23D1BC();
      (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
      v21 = v41;
      (*(v41 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[v18], v8);
      v22 = (*(v21 + 80) + 56) & ~*(v21 + 80);
      v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
      v33 = v8;
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      v26 = v35;
      *(v25 + 4) = v36;
      *(v25 + 5) = v26;
      *(v25 + 6) = v39;
      (*(v21 + 32))(&v25[v22], v10, v33);
      *&v25[v23] = v34;
      v27 = v37;
      v28 = v38;
      *&v25[v24] = v38;
      *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

      v29 = v27;
      sub_1AE217C10(0, 0, v14, &unk_1AE251B40, v25);

      sub_1AE23D64C();
      v30 = *(v28 + 16);
      swift_beginAccess();

      sub_1ADFB6D40(v31);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1AE01DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  v12 = sub_1AE23BDDC();
  v8[27] = v12;
  v13 = *(v12 - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01DF80, 0, 0);
}

uint64_t sub_1AE01DF80()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v0[31] = 0;
    v0[32] = v3;
    v4 = v0[29];
    v5 = v0[20];
    v19 = v0[21];
    v6 = *(v1 + 32);
    v0[33] = v6;
    v7 = v6[2];
    v8 = v6[3];

    sub_1ADDD86D8(v7, v8);
    v0[13] = sub_1AE23BEAC();
    v0[14] = v9;
    v0[15] = 47;
    v0[16] = 0xE100000000000000;
    v0[17] = 95;
    v0[18] = 0xE100000000000000;
    sub_1ADE42DEC();
    sub_1AE23D82C();
    sub_1ADDCC35C(v7, v8);

    sub_1AE23BD3C();

    v10 = swift_task_alloc();
    v0[34] = v10;
    *(v10 + 16) = v19;
    *(v10 + 24) = v4;
    v11 = v6[4];
    v0[35] = v11;
    v0[36] = *(v11 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE01E19C, 0, 0);
  }

  else
  {
    v12 = v0[29];
    v13 = v0[26];
    v14 = v0[22];
    v15 = v0[23];
    v16 = *(v14 + 16);
    *(v14 + 16) = MEMORY[0x1E69E7CC0];

    dispatch_group_leave(v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1AE01E19C()
{
  v1 = v0[36];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v0[2] = v0;
  v0[3] = sub_1AE01E2D4;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v0[10] = &unk_1AE2544C0;
  v0[11] = v6;
  *(v6 + 16) = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE01E2D4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE01E3B4, 0, 0);
}

uint64_t sub_1AE01E3B4()
{
  v1 = *(v0[35] + 24);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1AE01E47C;
  v4 = v0[33];
  v3 = v0[34];

  return sub_1AE0254E0(v4, 0, &unk_1AE251B60, v3);
}

uint64_t sub_1AE01E47C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v9 = *v2;
  *(*v2 + 304) = a1;

  if (v1)
  {

    v5 = sub_1AE01E86C;
  }

  else
  {
    v7 = *(v3 + 272);
    v6 = *(v3 + 280);

    v5 = sub_1AE01E5A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AE01E5A8()
{
  v1 = *(v0 + 304);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v4 = *(v0 + 256);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1ADE556B0(0, *(v3 + 2) + 1, 1, *(v0 + 256));
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1ADE556B0((v6 > 1), v7 + 1, 1, v3);
    }

    v8 = *(v0 + 264);
    *(v3 + 2) = v7 + 1;
    *&v3[8 * v7 + 32] = v8;
  }

  else
  {
    v2 = *(v0 + 264);

    v3 = *(v0 + 256);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 248) + 1;
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  if (v10 == v9)
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v13 + 16);
    *(v13 + 16) = v3;

    dispatch_group_leave(v14);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 248) + 1;
    *(v0 + 248) = v18;
    *(v0 + 256) = v3;
    v19 = *(v0 + 232);
    v20 = *(v0 + 160);
    v27 = *(v0 + 168);
    v21 = *(*(v0 + 152) + 8 * v18 + 32);
    *(v0 + 264) = v21;
    v22 = v21[2];
    v23 = v21[3];

    sub_1ADDD86D8(v22, v23);
    *(v0 + 104) = sub_1AE23BEAC();
    *(v0 + 112) = v24;
    *(v0 + 120) = 47;
    *(v0 + 128) = 0xE100000000000000;
    *(v0 + 136) = 95;
    *(v0 + 144) = 0xE100000000000000;
    sub_1ADE42DEC();
    sub_1AE23D82C();
    sub_1ADDCC35C(v22, v23);

    sub_1AE23BD3C();

    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *(v25 + 16) = v27;
    *(v25 + 24) = v19;
    v26 = v21[4];
    *(v0 + 280) = v26;
    *(v0 + 288) = *(v26 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE01E19C, 0, 0);
  }
}

uint64_t sub_1AE01E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1AE23BDDC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01E940, 0, 0);
}

uint64_t sub_1AE01E940()
{
  v1 = *(v0[10] + 16);
  if (v1)
  {
    v2 = *(v0[10] + 16);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v1 = 0;
  }

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[9];
  v9 = v1;
  v10 = sub_1AE23BD1C();
  (*(v6 + 16))(v3, v8, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v3, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1AE02ACF4;
  *(v13 + 24) = v12;
  v0[6] = sub_1AE02ACF8;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1ADE8AB00;
  v0[5] = &block_descriptor_7;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];

  [v2 coordinateWritingItemAtURL:v10 options:0 error:0 byAccessor:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[15];
    *v0[8] = 1;

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_1AE01EB90(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1AE01EBDC()
{
  sub_1AE0251F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1AE01ECA0(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01EDF4, 0, 0);
}

uint64_t sub_1AE01EDF4()
{
  v1 = v0[24];
  v2 = sub_1AE01D5D8(v0[22]);
  v0[32] = v2;
  v4 = v2[2];
  v0[33] = v4;
  if (v4)
  {
    v5 = v0[23];
    if (v5)
    {
      v6 = v0[23];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    }

    v10 = v0[25];
    v28 = v0[24];
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    type metadata accessor for CRDataStoreBundleNonCoordinated.FileCoordinatorWrapper();
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    v14 = qword_1EB5D7420;
    v0[34] = v13;
    v0[35] = v14;
    v15 = MEMORY[0x1E69E7CC0];
    v0[36] = 0;
    v0[37] = v15;
    v16 = v0[32];
    v17 = *(v16 + 16);
    v18 = v5;
    if (v17)
    {
      v27 = v0[31];
      v21 = *(v16 + 32);
      v0[38] = v21;
      v22 = v21[2];
      v23 = v21[3];

      sub_1ADDD86D8(v22, v23);
      v0[16] = sub_1AE23BEAC();
      v0[17] = v24;
      v0[18] = 47;
      v0[19] = 0xE100000000000000;
      v0[20] = 95;
      v0[21] = 0xE100000000000000;
      sub_1ADE42DEC();
      sub_1AE23D82C();
      sub_1ADDCC35C(v22, v23);

      sub_1AE23BD3C();

      v25 = swift_task_alloc();
      v0[39] = v25;
      *(v25 + 16) = v13;
      *(v25 + 24) = v27;
      v26 = v21[4];
      v0[40] = v26;
      v0[41] = *(v26 + 24);

      v18 = sub_1AE01F0A0;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }

  else
  {

    v7 = v0[31];
    v8 = v0[28];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1AE01F0A0()
{
  v1 = v0[41];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v0[2] = v0;
  v0[3] = sub_1AE01F1D8;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v0[10] = &unk_1AE251BB0;
  v0[11] = v6;
  *(v6 + 16) = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE01F1D8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE01F2B8, 0, 0);
}

uint64_t sub_1AE01F2B8()
{
  v1 = *(v0[40] + 24);
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_1AE01F380;
  v4 = v0[38];
  v3 = v0[39];

  return sub_1AE0254E0(v4, 0, &unk_1AE251BA8, v3);
}

uint64_t sub_1AE01F380(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v9 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {

    v5 = sub_1AE01F7BC;
  }

  else
  {
    v7 = *(v3 + 312);
    v6 = *(v3 + 320);

    v5 = sub_1AE01F4AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AE01F4AC()
{
  v1 = *(v0 + 344);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v4 = *(v0 + 296);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 296);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1ADE556B0(0, *(v3 + 2) + 1, 1, *(v0 + 296));
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1ADE556B0((v6 > 1), v7 + 1, 1, v3);
    }

    v8 = *(v0 + 304);
    *(v3 + 2) = v7 + 1;
    *&v3[8 * v7 + 32] = v8;
  }

  else
  {
    v2 = *(v0 + 304);

    v3 = *(v0 + 296);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 288) + 1;
  v11 = (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  if (v10 == v9)
  {
    v14 = *(v0 + 272);
    v15 = *(v0 + 256);
    v16 = *(v0 + 192);

    swift_beginAccess();
    sub_1ADFB6D40(v3);
    swift_endAccess();

    v17 = *(v0 + 248);
    v18 = *(v0 + 224);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 288) + 1;
    *(v0 + 288) = v21;
    *(v0 + 296) = v3;
    v22 = *(v0 + 256);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = *(v0 + 280);
      v32 = *(v0 + 272);
      v23 = *(v0 + 248);
      v24 = *(v0 + 192);
      v25 = *(v22 + 8 * v21 + 32);
      *(v0 + 304) = v25;
      v26 = v25[2];
      v27 = v25[3];

      sub_1ADDD86D8(v26, v27);
      *(v0 + 128) = sub_1AE23BEAC();
      *(v0 + 136) = v28;
      *(v0 + 144) = 47;
      *(v0 + 152) = 0xE100000000000000;
      *(v0 + 160) = 95;
      *(v0 + 168) = 0xE100000000000000;
      sub_1ADE42DEC();
      sub_1AE23D82C();
      sub_1ADDCC35C(v26, v27);

      sub_1AE23BD3C();

      v29 = swift_task_alloc();
      *(v0 + 312) = v29;
      *(v29 + 16) = v32;
      *(v29 + 24) = v23;
      v30 = v25[4];
      *(v0 + 320) = v30;
      *(v0 + 328) = *(v30 + 24);

      v11 = sub_1AE01F0A0;
      v12 = 0;
      v13 = 0;
    }

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AE01F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1AE23BDDC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01F890, 0, 0);
}

uint64_t sub_1AE01F890()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[9];
  v7 = *(v0[10] + 16);
  v8 = sub_1AE23BD1C();
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AE02BD54;
  *(v11 + 24) = v10;
  v0[6] = sub_1AE02BD58;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1ADE8AB00;
  v0[5] = &block_descriptor_79;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];

  [v7 coordinateWritingItemAtURL:v8 options:0 error:0 byAccessor:v12];

  _Block_release(v12);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[15];
    *v0[8] = 1;

    v16 = v0[1];

    return v16();
  }

  return result;
}

void sub_1AE01FAB4()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AE23BD1C();
  v2 = sub_1AE23BD1C();
  v10[0] = 0;
  v3 = [v0 copyItemAtURL:v1 toURL:v2 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v5 = *MEMORY[0x1E69E9840];

    v6 = v4;
  }

  else
  {
    v7 = v10[0];
    v8 = sub_1AE23BC9C();

    swift_willThrow();
    v9 = *MEMORY[0x1E69E9840];
  }
}

void sub_1AE01FBEC()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AE23BD1C();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1AE23BC9C();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1AE01FD0C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(*v4 + 80);
  v13 = *(*v4 + 88);
  v9 = qword_1EB5D7440;
  swift_beginAccess();
  sub_1AE01B8CC(sub_1AE02AA0C, (v4 + v9), a1);
  result = swift_endAccess();
  if (!v5)
  {
    v11 = (*(a4 + 32))(a3, a4);
    return sub_1AE01B9D0(v11, (v4 + qword_1EB5D7428)) & 0x1FFFF;
  }

  return result;
}

uint64_t sub_1AE01FE30(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = a2[1];
  v49 = *a2;
  v50 = v8;
  v51 = a2[2];
  v9 = *(a3 + 40);
  v48 = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v9, &v48, 0, 0xF000000000000000);
  v32 = v50;
  sub_1ADE6A0EC(&v32, &v40);
  sub_1ADE73BC8();
  v10 = sub_1AE23C51C();
  if (v4)
  {

    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    return sub_1ADE6AF00(&v32);
  }

  else
  {
    v13 = a3;
    v14 = v52;
    v27 = v7;
    v28 = v10;
    v29 = v11;

    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    result = sub_1ADE6AF00(&v32);
    v15 = v49;
    if (v49)
    {
      v30 = v49;
      swift_retain_n();
      v26 = sub_1AE01FD0C(&v31, &v30, &type metadata for AnyCRDT, &protocol witness table for AnyCRDT);

      v16 = *(v13 + 40);
      v25 = v31;
      LOBYTE(v30) = v31;
      swift_allocObject();
      CREncoder.init(_:version:fileSignature:)(v16, &v30, 0, 0xF000000000000000);
      v30 = v15;
      v24[1] = v14 + 2;
      v17 = sub_1ADE694A4(&v30);
      v19 = v18;

      v52 = v24;
      v21 = *(v13 + 72);
      MEMORY[0x1EEE9AC00](v20);
      v23 = v28;
      v22 = v29;
      sub_1AE23D6AC();
      sub_1ADDCC35C(v17, v19);
      return sub_1ADDCC35C(v23, v22);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1AE020144(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v44 = a8;
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = *(a6 + 32);
  v16 = *(a6 + 40);
  LOBYTE(v38) = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  v17 = v14;
  CREncoder.init(_:version:fileSignature:)(v17, &v38, 0, 0xF000000000000000);
  v18 = sub_1ADE6B3B8(v15, v16);
  if (v9)
  {
  }

  else
  {
    v30 = v15;
    v31 = a2;
    v32 = v18;
    v33 = v19;

    v42 = 0;
    v43 = 0;

    sub_1AE028F7C(a7, v44, &v42);
    v20 = v13;
    swift_beginAccess();
    sub_1ADDCEE40(v13 + 88, &v36, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v37)
    {
      sub_1ADE23E6C(&v36, &v38);
      v22 = v40;
      v21 = v41;
      __swift_project_boxed_opaque_existential_1(&v38, v40);
      v20 = v13;
      v23 = (*(v21 + 8))(v31, a3, v22, v21);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    else
    {
      sub_1ADDCEDE0(&v36, &qword_1EB5B9DB0, &qword_1AE240B80);
      v23 = a2;
      sub_1ADDD86D8(a2, a3);
      v25 = a3;
    }

    sub_1ADDD86D8(a4, a5);
    sub_1ADDD86D8(v32, v33);
    sub_1ADDD86D8(v23, v25);
    sub_1AE02921C(a7, v44, a4, a5, v32, v33, v23, v25, v20, 0);
    sub_1ADDCC35C(v23, v25);
    v38 = v30;
    v39 = v16;
    v26 = v42;
    if (v42)
    {
      v27 = v43;

      sub_1ADDDCE90(v26, v27);
      LOBYTE(v36) = BYTE4(a9) & 1;
      sub_1ADE43570((0x3020101u >> (8 * a9)) & 3, (a9 & 0x1FFFFFFFFuLL) >> 16);

      sub_1ADDCC35C(v32, v33);
      sub_1ADE42CB8(v26);
      v28 = v38;
      v29 = v39;
      swift_beginAccess();
      sub_1ADDDC8DC(v28, v29);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE0204C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v8 = sub_1ADDD9ECC(v6);
  v9 = sub_1ADDCC6B4(&unk_1F23BC140);
  v11 = v10;
  LOBYTE(v33) = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  v12 = v5;
  CREncoder.init(_:version:fileSignature:)(v12, &v33, 0, 0xF000000000000000);
  v13 = sub_1ADE6B3B8(v7, v8);
  if (v3)
  {
    sub_1ADDCC35C(v9, v11);
  }

  else
  {
    v26 = v8;
    v27 = v13;
    v15 = a2;
    v28 = v14;

    v37 = 0;
    v38 = 0;

    sub_1AE028F7C(v9, v11, &v37);
    v25 = v7;
    swift_beginAccess();
    sub_1ADDCEE40(v4 + 88, &v31, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v32)
    {
      sub_1ADE23E6C(&v31, &v33);
      v16 = v9;
      v17 = v11;
      v18 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(&v33, v35);
      v20 = v19;
      v11 = v17;
      v9 = v16;
      v15 = (*(v20 + 8))(a2, a3, v18);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v33);
    }

    else
    {
      sub_1ADDCEDE0(&v31, &qword_1EB5B9DB0, &qword_1AE240B80);
      v22 = a3;
      sub_1ADDD86D8(a2, a3);
    }

    v23 = v12;

    sub_1ADDD86D8(v27, v28);
    sub_1ADDD86D8(v15, v22);
    sub_1AE02921C(v9, v11, 0, 0xC000000000000000, v27, v28, v15, v22, v4, 0);
    sub_1ADDCC35C(v15, v22);
    v33 = v25;
    v34 = v26;
    v24 = v37;
    if (v37)
    {
      sub_1ADDDCE90(v37, v38);
      sub_1ADE43570(1, 0x10000);
      sub_1ADDCC35C(v9, v11);

      sub_1ADDCC35C(v27, v28);
      sub_1ADE42CB8(v24);
      sub_1ADDDC8DC(v33, v34);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE020878(void *a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  sub_1AE23D6AC();
  if (!v3)
  {
    sub_1AE01D11C(a2, a1);
  }
}

const char *sub_1AE0208E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  sqlite3_step(*(v1 + 128));
  sqlite3_reset(*(v1 + 128));
  return sub_1ADE43D40(1702257011, 0xE400000000000000);
}

uint64_t sub_1AE020930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    if (*(a2 + qword_1EB5D7460) == 1)
    {
      sub_1AE1A3C98(a5, a6, a1, aBlock);
    }

    else
    {
      sub_1AE1A4038(a5, a6, a1, aBlock);
    }

    v14 = aBlock[0];
    swift_beginAccess();
    v15 = *(a3 + 16);
    *(a3 + 16) = v14;
  }

  result = swift_beginAccess();
  if (!*(a3 + 16))
  {
    sub_1AE1A3880(a5, a6, aBlock);
    v17 = aBlock[0];
    v18 = *(a2 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1AE02AD30;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1ADDF711C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDF70CC;
    aBlock[3] = &block_descriptor_44;
    v21 = _Block_copy(aBlock);

    dispatch_sync(v18, v21);
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v23 = *(a3 + 16);
      *(a3 + 16) = v17;
    }
  }

  return result;
}

uint64_t sub_1AE020BE8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5D7458;
  swift_beginAccess();
  v5 = *(a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1ADE556B0(0, *(v5 + 2) + 1, 1, v5);
    *(a1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1ADE556B0((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a2;
  *(a1 + v4) = v5;
  swift_endAccess();
}

void *sub_1AE020CC8(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v40 - v8;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v44 = v10;
  v15 = *(v10 + 56);
  v14 = v10 + 56;
  v45 = v15;
  (v15)(v3 + qword_1EB5D7478, 1, 1, v9, v12);
  v3[3] = a2;
  v3[4] = a1;
  v16 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDataStorePartialDecodeContext();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC8];
  v17[2] = MEMORY[0x1E69E7CC8];
  v17[3] = v18;
  v17[4] = v16;
  v3[5] = v17;
  v19 = *(a2 + 56);
  v20 = a1;

  v21 = sub_1ADDCC6B4(&unk_1F23BBD98);
  v23 = v22;

  v24 = v53;
  sub_1AE026EA8(v21, v23, v19, &v49);
  if (v24)
  {

    sub_1ADDCC35C(v21, v23);
  }

  else
  {
    v42 = v14;
    v43 = v3 + 6;
    v53 = v9;
    sub_1ADDCC35C(v21, v23);
    v25 = v50;
    if (v50 >> 60 == 15)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v26 = xmmword_1AE251850;
      *(v26 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v27 = v49;
      v40 = v51;
      v41 = v52;
      v28 = v3[5];
      type metadata accessor for CRDecoder();
      inited = swift_initStackObject();
      v30 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v30;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v28;
      *(inited + 24) = v30;

      v31 = v47;
      sub_1ADE631A8(&v48, v47, v27, v25);
      sub_1AE02AA94(v27, v25, v40, v41);

      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v32 = v48;
      v33 = v46;
      v34 = v31;
      v35 = v53;
      (*(v44 + 32))(v46, v34, v53);
      v45(v33, 0, 1, v35);
      swift_beginAccess();
      v36 = v3[6];
      v37 = v3[7];
      *(v3 + 3) = v32;
      sub_1ADE42CB8(v36);
      v38 = qword_1EB5D7478;
      swift_beginAccess();
      sub_1AE02AD38(v33, v3 + v38);
      swift_endAccess();
    }
  }

  return v3;
}

uint64_t sub_1AE021124@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  if (result)
  {
    v4 = *(v1 + 56);
    *a1 = result;
    a1[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE021180(void (*a1)(void *))
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42 - v7;
  result = swift_beginAccess();
  if (!v1[6])
  {
    __break(1u);
    goto LABEL_13;
  }

  v60 = v2;
  a1(v1 + 6);
  swift_endAccess();
  v10 = v1[4];
  LOBYTE(v53) = 1;
  v49 = type metadata accessor for CREncoder();
  swift_initStackObject();
  v48 = v10;
  CREncoder.init(_:version:fileSignature:)(v48, &v53, 0, 0xF000000000000000);
  v47 = v1[3];
  result = sub_1AE018590(&v55);
  v11 = v59;
  if (v59 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v57;
  v12 = v58;
  v14 = v56;
  v15 = v55;
  sub_1ADDD86D8(v55, v56);
  result = sub_1ADE92284(v15, v14, v13, v12, v11);
  *&v50 = v15;
  *(&v50 + 1) = v14;
  if (!v3[6])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v3[7];
  *&v52 = v3[6];
  *(&v52 + 1) = v16;
  v17 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1ADDCEE40(v3 + v17, v8, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v18 = sub_1AE23BFEC();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v8, 1, v18);
  v20 = v60;
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = sub_1ADE68DC4(&v50, &v52, 0);
  if (v20)
  {

    sub_1ADDCC35C(v50, *(&v50 + 1));
    return (*(v19 + 8))(v8, v18);
  }

  v46 = v21;
  v60 = v22;

  sub_1ADDCC35C(v50, *(&v50 + 1));
  (*(v19 + 8))(v8, v18);
  v23 = *(v47 + 56);

  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v26 = sub_1ADDD9ECC(v24);
  v27 = sub_1ADDCC6B4(&unk_1F23BBE10);
  v29 = v28;
  LOBYTE(v55) = 1;
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v48, &v55, 0, 0xF000000000000000);
  v48 = sub_1ADE6B3B8(v25, v26);
  v49 = v30;

  v53 = 0;
  v54 = 0;

  sub_1AE028F7C(v27, v29, &v53);
  v43 = v27;
  v44 = v29;
  swift_beginAccess();
  sub_1ADDCEE40(v23 + 88, &v50, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v51)
  {
    sub_1ADE23E6C(&v50, &v55);
    v31 = v58;
    v32 = v59;
    __swift_project_boxed_opaque_existential_1(&v55, v58);
    v47 = (*(v32 + 8))(v46, v60, v31, v32);
    v45 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    sub_1ADDCEDE0(&v50, &qword_1EB5B9DB0, &qword_1AE240B80);
    v34 = v46;
    v35 = v60;
    sub_1ADDD86D8(v46, v60);
    v47 = v34;
    v45 = v35;
  }

  v37 = v48;
  v36 = v49;
  sub_1ADDD86D8(v48, v49);
  v38 = v47;
  v39 = v45;
  sub_1ADDD86D8(v47, v45);
  sub_1AE02921C(v43, v44, 0, 0xC000000000000000, v37, v36, v38, v39, v23, 0);
  result = sub_1ADDCC35C(v47, v45);
  v55 = v25;
  v56 = v26;
  v40 = v53;
  if (v53)
  {
    sub_1ADDDCE90(v53, v54);
    sub_1ADE43570(1, 0x10000);
    v41 = v43;

    sub_1ADDCC35C(v41, v44);
    sub_1ADDCC35C(v46, v60);
    sub_1ADDCC35C(v48, v49);

    return sub_1ADE42CB8(v40);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AE0217D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1ADDCEE40(v1 + v7, v6, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE021908(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = *(v11 + 56);
  v54 = v10;
  v12(v9, 0, 1, v10);
  v13 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1AE02AD38(v9, v2 + v13);
  swift_endAccess();
  v14 = v2[4];
  LOBYTE(v58) = 1;
  v51 = type metadata accessor for CREncoder();
  swift_initStackObject();
  v50 = v14;
  v52 = CREncoder.init(_:version:fileSignature:)(v50, &v58, 0, 0xF000000000000000);
  v49 = v2[3];
  result = sub_1AE018590(&v60);
  v16 = v64;
  if (v64 == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = v62;
  v17 = v63;
  v19 = v60;
  v20 = v61;
  sub_1ADDD86D8(v60, v61);
  sub_1ADE92284(v19, v20, v18, v17, v16);
  *&v55 = v19;
  *(&v55 + 1) = v20;
  result = swift_beginAccess();
  if (!v2[6])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v2[7];
  *&v57 = v2[6];
  *(&v57 + 1) = v21;
  v22 = v65;
  sub_1ADDCEE40(v2 + v13, v65, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v23 = v54;
  result = (*(v11 + 48))(v22, 1, v54);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v53;
  v25 = sub_1ADE68DC4(&v55, &v57, 0);
  if (v24)
  {

    sub_1ADDCC35C(v55, *(&v55 + 1));
    return (*(v11 + 8))(v22, v23);
  }

  v48 = v25;
  v53 = v26;

  sub_1ADDCC35C(v55, *(&v55 + 1));
  (*(v11 + 8))(v22, v23);
  v27 = *(v49 + 56);

  v28 = MEMORY[0x1E69E7CC0];
  v29 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v30 = sub_1ADDD9ECC(v28);
  v31 = sub_1ADDCC6B4(&unk_1F23BBE38);
  v33 = v32;
  LOBYTE(v60) = 1;
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v50, &v60, 0, 0xF000000000000000);
  v54 = sub_1ADE6B3B8(v29, v30);
  v65 = v34;

  v58 = 0;
  v59 = 0;

  sub_1AE028F7C(v31, v33, &v58);
  v50 = v33;
  swift_beginAccess();
  sub_1ADDCEE40(v27 + 88, &v55, &qword_1EB5B9DB0, &qword_1AE240B80);
  v49 = v31;
  if (v56)
  {
    sub_1ADE23E6C(&v55, &v60);
    v35 = v63;
    v36 = v64;
    __swift_project_boxed_opaque_existential_1(&v60, v63);
    v37 = (*(v36 + 8))(v48, v53, v35, v36);
    v51 = v38;
    v52 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    sub_1ADDCEDE0(&v55, &qword_1EB5B9DB0, &qword_1AE240B80);
    v39 = v48;
    v40 = v53;
    sub_1ADDD86D8(v48, v53);
    v51 = v40;
    v52 = v39;
  }

  v41 = v54;
  v42 = v65;
  sub_1ADDD86D8(v54, v65);
  v44 = v51;
  v43 = v52;
  sub_1ADDD86D8(v52, v51);
  sub_1AE02921C(v49, v50, 0, 0xC000000000000000, v41, v42, v43, v44, v27, 0);
  v45 = v49;
  result = sub_1ADDCC35C(v52, v51);
  v60 = v29;
  v61 = v30;
  v46 = v58;
  if (v58)
  {
    sub_1ADDDCE90(v58, v59);
    sub_1ADE43570(1, 0x10000);

    sub_1ADDCC35C(v45, v50);
    sub_1ADDCC35C(v48, v53);
    sub_1ADDCC35C(v54, v65);

    return sub_1ADE42CB8(v46);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1AE021FC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*(v1 + 24) + 56);

  LOBYTE(v2) = sub_1ADE464B4(v2, v3);

  return v2 & 1;
}

id sub_1AE022014(uint64_t a1, unint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = sub_1AE23BDDC();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - v9;
  v10 = *(v2 + 24);
  v11 = qword_1EB5D7458;
  swift_beginAccess();
  v54 = v10;
  v12 = *(v10 + v11);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = v13;
    v15 = 0;
    if (a1)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2 == 0xC000000000000000;
    }

    v17 = !v16;
    v65 = v17;
    v18 = a2 >> 62;
    v19 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v19;
    v59 = a2;
    v60 = HIDWORD(a1) - a1;
    v63 = v13;
    v64 = BYTE6(a2);
    v58 = a1;
    v62 = v12;
    v52 = v5;
    while (1)
    {
      if (v15 >= *(v12 + 16))
      {
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
LABEL_75:
        __break(1u);
      }

      v20 = *(v12 + 8 * v15 + 32);
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v21 >> 62;
      if (v21 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_71;
        }

        if (v18 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v23)
      {
        LODWORD(v27) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_70;
        }

        v27 = v27;
        if (v18 <= 1)
        {
LABEL_34:
          v31 = v64;
          if (v18)
          {
            v31 = v60;
            if (v61)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v21);
        if (v18 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v18 != 2)
      {
        if (!v27)
        {
          goto LABEL_65;
        }

        goto LABEL_13;
      }

      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_68;
      }

LABEL_40:
      if (v27 == v31)
      {
        if (v27 < 1)
        {
          goto LABEL_65;
        }

        if (v23 > 1)
        {
          if (v23 != 2)
          {
            *(&v69 + 6) = 0;
            *&v69 = 0;

            sub_1ADDD86D8(v22, v21);
            goto LABEL_62;
          }

          v34 = *(v22 + 16);
          v53 = *(v22 + 24);

          sub_1ADDD86D8(v22, v21);
          v35 = sub_1AE23BB7C();
          if (v35)
          {
            v36 = sub_1AE23BBAC();
            if (__OFSUB__(v34, v36))
            {
              goto LABEL_74;
            }

            v35 += v34 - v36;
          }

          if (__OFSUB__(v53, v34))
          {
            goto LABEL_73;
          }

          sub_1AE23BB9C();
          v37 = v35;
          a1 = v58;
          a2 = v59;
          sub_1ADDD8820(v37, v58, v59, &v69);

          sub_1ADDCC35C(v22, v21);
          v12 = v62;
          if (v69)
          {
            goto LABEL_65;
          }
        }

        else if (v23)
        {
          if (v22 >> 32 < v22)
          {
            goto LABEL_72;
          }

          v38 = *(v12 + 8 * v15 + 32);

          sub_1ADDD86D8(v22, v21);
          v39 = sub_1AE23BB7C();
          if (v39)
          {
            v40 = sub_1AE23BBAC();
            if (__OFSUB__(v22, v40))
            {
              goto LABEL_75;
            }

            v39 += v22 - v40;
          }

          sub_1AE23BB9C();
          v41 = v39;
          a1 = v58;
          a2 = v59;
          sub_1ADDD8820(v41, v58, v59, &v69);

          sub_1ADDCC35C(v22, v21);
          v5 = v52;
          v12 = v62;
          if (v69)
          {
LABEL_65:

            v49 = 0;
            goto LABEL_66;
          }
        }

        else
        {
          *&v69 = *(v20 + 16);
          WORD4(v69) = v21;
          BYTE10(v69) = BYTE2(v21);
          BYTE11(v69) = BYTE3(v21);
          BYTE12(v69) = BYTE4(v21);
          BYTE13(v69) = BYTE5(v21);

          sub_1ADDD86D8(v22, v21);
          v12 = v62;
LABEL_62:
          sub_1ADDD8820(&v69, a1, a2, v68);

          sub_1ADDCC35C(v22, v21);
          if (v68[0])
          {
            goto LABEL_65;
          }
        }

        v14 = v63;
      }

LABEL_13:
      if (v14 == ++v15)
      {
        goto LABEL_64;
      }
    }

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v21 == 0xC000000000000000;
    }

    v26 = !v24 || v18 < 3;
    if (((v26 | v65) & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_37:
    v27 = 0;
    if (v18 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_64:

  v42 = v57;
  v43 = v55;
  (*(v57 + 16))(v55, v54 + qword_1EB5D7420, v5);
  *&v69 = sub_1AE23BEAC();
  *(&v69 + 1) = v44;
  v68[0] = 47;
  v68[1] = 0xE100000000000000;
  v66 = 95;
  v67 = 0xE100000000000000;
  sub_1ADE42DEC();
  sub_1AE23D82C();

  v45 = v56;
  sub_1AE23BD3C();

  v46 = *(v42 + 8);
  v46(v43, v5);
  v47 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v48 = sub_1AE23CCDC();

  v49 = [v47 fileExistsAtPath_];

  v46(v45, v5);
LABEL_66:
  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t sub_1AE0226BC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(*(v2 + 24) + 56);
  v9 = xmmword_1AE251860;
  swift_retain_n();
  sub_1AE028B54(v5, v6, v7, a2, &v9);

  result = v9;
  if (v3)
  {
    return sub_1ADDDDEBC(v9);
  }

  return result;
}

uint64_t sub_1AE022744(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 24) + 56);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v9 = 2;
  swift_retain_n();
  sub_1ADDD86D8(v6, v7);
  sub_1AE028D68(v6, v7, v5, a2, &v9);
  sub_1ADDCC35C(v6, v7);

  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AE0227EC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v20[0] = 0;
  sub_1AE023370(&v21, v20, &type metadata for AnyCRDT, &off_1F23C9418, &v16);
  if (!v2)
  {
    v5 = v16;
    if (v16)
    {

      v6 = type metadata accessor for RetainVisitor();
      v7 = swift_allocObject();
      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v10 = sub_1ADDD9ECC(v8);
      *(v7 + 16) = v9;
      *(v7 + 24) = v10;
      v18 = v6;
      v19 = &off_1F23C4550;
      v16 = v7;
      v11 = *(*v5 + 128);

      v11(&v16);

      __swift_destroy_boxed_opaque_existential_1(&v16);
      swift_beginAccess();
      v1 = *(v7 + 16);
      v12 = *(v7 + 24);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      v21 = 10278;
      v22 = 0xE200000000000000;
      v20[0] = v3;
      v20[1] = v4;
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v21, v22);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v1 = v16;
      v14 = v17;
      sub_1ADE42E40();
      swift_allocError();
      *v15 = v1;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_1AE022A20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  *&v21 = *a1;
  result = sub_1AE0227EC(&v21);
  if (!v4)
  {
    v9 = result;
    if (result)
    {
      v22 = a3;

      v10 = 0;
      v11 = 1 << *(v9 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v9 + 64);
      for (i = (v11 + 63) >> 6; v13; result = sub_1ADDCC35C(v21, *(&v21 + 1)))
      {
        v15 = v10;
LABEL_11:
        v16 = *(*(v9 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
        v13 &= v13 - 1;
        v21 = v16;
        v17 = *(a4 + 16);
        sub_1ADDD86D8(v16, *(&v16 + 1));
        v18 = sub_1ADF4ADD8();
        v17(&v21, &type metadata for AnyCRDT, v18, v22, a4);
      }

      while (1)
      {
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 >= i)
        {
        }

        v13 = *(v9 + 64 + 8 * v15);
        ++v10;
        if (v13)
        {
          v10 = v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000015, 0x80000001AE262250);
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](10278, 0xE200000000000000);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v19 = v21;
      sub_1ADE42E40();
      swift_allocError();
      *v20 = v19;
      *(v20 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

double sub_1AE022C64(_BYTE *a1, uint64_t *a2, __int128 *a3, unint64_t *a4, uint64_t *a5, int64_t *a6)
{
  v11 = *a4;
  v10 = a4[1];
  v12 = *a5;
  v14 = *a6;
  v13 = a6[1];
  *&v38 = *a4;
  *(&v38 + 1) = v10;
  v34[0] = 0;
  sub_1AE023370(&v38, v34, &type metadata for AnyCRDT, &off_1F23C9418, &v35);
  if (!v6)
  {
    v33 = v13;
    if (v35)
    {
      v30 = a2;
      v31 = a3;
      v39 = v35;
      v37 = v36;
      v35 = v11;
      *&v36 = v10;
      v16 = sub_1AE0227EC(&v35);
      if (v16)
      {
        v21 = v39;
        v29 = v16;
        v28 = v17;
        if (v12 == v39)
        {
          if (qword_1ED9670C0 != -1)
          {
            swift_once();
          }

          v22 = word_1ED96F220;
          v32 = HIBYTE(word_1ED96F220);
          v23 = byte_1ED96F222;
          LOBYTE(v35) = word_1ED96F220;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = (*(*v21 + 168))();
          }

          (*(*v21 + 96))(&v35, v12);
          v22 = v35;
          v32 = BYTE1(v35);
          v23 = BYTE2(v35);
        }

        sub_1ADF5F770(v33, &v35);
        sub_1ADF5F770(v14, &v38);
        LOWORD(v34[0]) = v38;
        BYTE2(v34[0]) = BYTE2(v38);
        v27 = v34;
        MergeResult.merge(_:)(v27);
        v35 = v11;
        *&v36 = v10;
        v38 = v37;
        v34[0] = v21;

        sub_1AE024678(&v35, &v38, v34, v29, v28);

        *a1 = v22;
        a1[1] = v32;
        a1[2] = v23;
        *v30 = v21;
        result = *&v37;
        *v31 = v37;
      }

      else
      {

        v35 = 0;
        *&v36 = 0xE000000000000000;
        sub_1AE23DA2C();
        MEMORY[0x1B26FB670](0xD000000000000015, 0x80000001AE262250);
        *&v38 = 10278;
        *(&v38 + 1) = 0xE200000000000000;
        v34[0] = v11;
        v34[1] = v10;
        sub_1ADE53D94();
        MEMORY[0x1B26FB670]();

        MEMORY[0x1B26FB670](41, 0xE100000000000000);
        MEMORY[0x1B26FB670](v38, *(&v38 + 1));

        MEMORY[0x1B26FB670](46, 0xE100000000000000);
        v24 = v35;
        v25 = v36;
        sub_1ADE42E40();
        swift_allocError();
        *v26 = v24;
        *(v26 + 8) = v25;
        *(v26 + 16) = 0;
        swift_willThrow();
      }
    }

    else
    {
      v35 = 0;
      *&v36 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      *&v38 = 10278;
      *(&v38 + 1) = 0xE200000000000000;
      *&v37 = v11;
      *(&v37 + 1) = v10;
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v38, *(&v38 + 1));

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v18 = v35;
      v19 = v36;
      sub_1ADE42E40();
      swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AE023134@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v8 = *a1;
  v7 = 0;
  result = sub_1AE023370(&v8, &v7, &type metadata for AnyCRDT, &off_1F23C9418, &v6);
  if (!v2)
  {
    v5 = v6;
    if (v6)
    {

      *a2 = v5;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_1AE0231C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = v3 + 16;
  v7 = *(v3 + 16);
  v9 = *(*(*(v8 + 8) + 40) + OBJC_IVAR___CRContext_assetManager);
  v10 = v7;

  sub_1AE019368(a1, a2, v7, v9, a3);
}

uint64_t sub_1AE023260(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA228, &unk_1AE242280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v2;
  v5 = *(v1 + 16);
  v6 = v5;

  sub_1AE01DAE0(inited, v5);

  swift_setDeallocating();
  v7 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_1AE02332C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = 0;
  return sub_1AE023370(&v4, &v3, &type metadata for AnyCRDT, &off_1F23C9418, a2);
}

uint64_t sub_1AE023370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v6;
  v57 = a4;
  v58 = a2;
  v63 = a5;
  v10 = sub_1AE23D7CC();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v47 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  v21 = *(*(v5 + 24) + 56);
  swift_retain_n();
  sub_1AE026EA8(v19, v20, v21, &v60);
  if (v7)
  {
  }

  v52 = v18;
  v54 = a3;
  v55 = v13;
  v56 = v14;
  v53 = v10;

  v23 = *(&v60 + 1);
  if (*(&v60 + 1) >> 60 == 15)
  {
    v24 = v63;
    *v63 = 0;
    v24[1] = 0;
    v24[2] = 0;
  }

  else
  {
    v25 = v60;
    v27 = v61;
    v26 = v62;
    sub_1ADDD86D8(v60, *(&v60 + 1));
    sub_1ADDD86D8(v27, v26);
    sub_1ADDCC35C(v27, v26);
    v28 = *(v5 + 40);
    v29 = type metadata accessor for CRDecoder();
    swift_allocObject();

    v30 = sub_1ADE64748(v25, v23, v28);
    v47[1] = v29;
    v48 = v23;
    v49 = v25;
    v50 = v26;
    v51 = v27;
    *(v30 + 56) = 1;
    v31 = v59;
    v32 = v55;
    v33 = v53;
    (*(v59 + 16))(v55, v58, v53);
    v34 = v56;
    v35 = v54;
    if ((*(v56 + 48))(v32, 1, v54) == 1)
    {
      (*(v31 + 8))(v32, v33);

      AnyCRDT.init(from:)(v36, &v60);
    }

    else
    {
      v37 = v52;
      (*(v34 + 32))(v52, v32, v35);
      (*(v57 + 8))(&v60, v30, v35);
      (*(v34 + 8))(v37, v35);
    }

    v38 = v28;
    v39 = v60;
    v40 = v51;
    v41 = v50;
    v42 = v49;
    inited = swift_initStackObject();
    v44 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v44;
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 256;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 24) = v44;
    *(inited + 16) = v38;

    sub_1ADE62FA4(v40, v41, &v60);
    v45 = v63;
    sub_1AE02AA94(v42, v48, v40, v41);

    swift_setDeallocating();
    CRDecoder.deinit();
    result = swift_deallocClassInstance();
    v46 = v60;
    *v45 = v39;
    *(v45 + 1) = v46;
  }

  return result;
}

void sub_1AE02386C(uint64_t a1, char a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Timestamp(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && !*(a1 + 16))
  {
    goto LABEL_95;
  }

  v117 = v2;
  if (qword_1ED96AC50 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v8[*(type metadata accessor for Replica() + 20)] = 0;
    v9 = *(v5 + 20);
    v107 = v8;
    *&v8[v9] = 0;
    v10 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v8 = ((v11 + 63) >> 6);

    v14 = 0;
    v105 = xmmword_1AE241270;
    v108 = a1 + 56;
    v109 = a1;
    v15 = v111;
    v112 = v8;
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_10:
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      break;
    }

    __break(1u);
  }

  if (v16 < v8)
  {
    v13 = *(v10 + 8 * v16);
    ++v14;
    if (!v13)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v17 = (*(a1 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
      v18 = *v17;
      v5 = v17[1];
      v19 = v15[3];
      v20 = *(v19 + 56);
      v21 = v5 >> 62;
      v118 = v20;
      v116 = v18;
      v110 = v19;
      if ((v5 >> 62) <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v32 = v18;
        v33 = *(v18 + 16);
        v34 = *(v32 + 24);
        sub_1ADDD86D8(v32, v5);

        sub_1ADDD86D8(v32, v5);
        v35 = sub_1AE23BB7C();
        v113 = v5;
        if (v35)
        {
          v36 = sub_1AE23BBAC();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_105;
          }

          v35 += v33 - v36;
        }

        if (__OFSUB__(v34, v33))
        {
          goto LABEL_102;
        }

        v37 = sub_1AE23BB9C();
        if (v37 >= v34 - v33)
        {
          v38 = v34 - v33;
        }

        else
        {
          v38 = v37;
        }

        if (v35)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          goto LABEL_103;
        }

        if (v39 > 0x7FFFFFFF)
        {
          goto LABEL_104;
        }

        v40 = v118;
        sqlite3_bind_blob(*(v118 + 232), 1, v35, v39, *(v118 + 72));
        if (sqlite3_step(*(v40 + 232)) == 100)
        {
          v41 = sqlite3_column_bytes(*(v40 + 232), 0);
          v42 = sqlite3_column_blob(*(v40 + 232), 0);
          v18 = v116;
          if (!v42)
          {
            goto LABEL_110;
          }

          if (v41)
          {
            if (v41 < 15)
            {
              *(&v129 + 6) = 0;
              *&v129 = 0;
              BYTE14(v129) = v41;
              memcpy(&v129, v42, v41);
              v114 = v129;
              v47 = v102 & 0xF00000000000000 | DWORD2(v129) | ((WORD6(v129) | (BYTE14(v129) << 16)) << 32);
              v102 = v47;
            }

            else
            {
              v43 = sub_1AE23BBCC();
              v44 = *(v43 + 48);
              v45 = *(v43 + 52);
              swift_allocObject();
              if (v41 == 0x7FFFFFFF)
              {
                v46 = sub_1AE23BB6C();
                sub_1AE23BE2C();
                v114 = swift_allocObject();
                *(v114 + 16) = v105;
                v47 = v46 | 0x8000000000000000;
              }

              else
              {
                v78 = sub_1AE23BB6C();
                v114 = v41 << 32;
                v47 = v78 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v114 = 0;
            v47 = 0xC000000000000000;
          }

          v115 = v47;
          v40 = v118;
        }

        else
        {
          v114 = 0;
          v115 = 0xF000000000000000;
          v18 = v116;
        }

        sqlite3_reset(*(v40 + 232));
        v79 = v18;
        v5 = v113;
        goto LABEL_87;
      }

      *(&v121 + 6) = 0;
      *&v121 = 0;
      v57 = *(v20 + 232);
      v58 = *(v118 + 72);

      v59 = v58;
      v60 = v118;
      sqlite3_bind_blob(v57, 1, &v121, 0, v59);
      if (sqlite3_step(*(v60 + 232)) == 100)
      {
        v61 = sqlite3_column_bytes(*(v60 + 232), 0);
        v62 = sqlite3_column_blob(*(v60 + 232), 0);
        if (!v62)
        {
          goto LABEL_109;
        }

        if (v61)
        {
          if (v61 < 15)
          {
            *(&v129 + 6) = 0;
            *&v129 = 0;
            BYTE14(v129) = v61;
            memcpy(&v129, v62, v61);
            v114 = v129;
            v67 = v103 & 0xF00000000000000 | DWORD2(v129) | ((WORD6(v129) | (BYTE14(v129) << 16)) << 32);
            v103 = v67;
          }

          else
          {
            v63 = sub_1AE23BBCC();
            v64 = *(v63 + 48);
            v65 = *(v63 + 52);
            swift_allocObject();
            if (v61 == 0x7FFFFFFF)
            {
              v66 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v114 = swift_allocObject();
              *(v114 + 16) = v105;
              v67 = v66 | 0x8000000000000000;
            }

            else
            {
              v77 = sub_1AE23BB6C();
              v114 = v61 << 32;
              v67 = v77 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v114 = 0;
          v67 = 0xC000000000000000;
        }

        v115 = v67;
        v8 = v112;
        v18 = v116;
        v60 = v118;
      }

      else
      {
        v114 = 0;
        v115 = 0xF000000000000000;
      }

      sqlite3_reset(*(v60 + 232));
      sub_1ADDCC35C(v18, v5);

LABEL_88:
      v13 &= v13 - 1;
      v81 = v115;
      if (v115 >> 60 == 15)
      {
        sub_1ADDCC35C(v18, v5);
        v14 = v16;
        v10 = v108;
        a1 = v109;
        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      v82 = v15[5];
      type metadata accessor for CRDecoder();
      inited = swift_initStackObject();
      v84 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v84;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v82;
      *(inited + 24) = v84;

      v85 = v117;
      sub_1ADE62FA4(v114, v81, v120);
      if (v85)
      {
        goto LABEL_97;
      }

      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      sub_1ADDD8290(v107);
      v86 = *(v110 + 56);
      v87 = v15[4];
      v117 = 0;
      v89 = v120[0];
      v88 = v120[1];
      v119 = 1;
      type metadata accessor for CREncoder();
      swift_allocObject();
      sub_1ADDD86D8(v116, v5);
      v118 = v86;

      CREncoder.init(_:version:fileSignature:)(v87, &v119, 0, 0xF000000000000000);
      v90 = v5;
      v110 = v89;
      *&v129 = v89;
      *(&v129 + 1) = v88;
      v106 = v88;
      sub_1ADE6A0EC(&v129, v137);
      v133 = v137[4];
      v134 = v137[5];
      v135 = v137[6];
      v136 = v137[7];
      v129 = v137[0];
      v130 = v137[1];
      v131 = v137[2];
      v132 = v137[3];
      sub_1ADE73BC8();
      v91 = v117;
      v92 = sub_1AE23C51C();
      if (v91)
      {

        sub_1ADDE1588(v114, v115);

        v100 = v116;
        sub_1ADDCC35C(v116, v5);
        sub_1ADDCC35C(v100, v5);

        v125 = v133;
        v126 = v134;
        v127 = v135;
        v128 = v136;
        v121 = v129;
        v122 = v130;
        v123 = v131;
        v124 = v132;
        sub_1ADE6AF00(&v121);
        v98 = v107;
        goto LABEL_94;
      }

      v94 = v92;
      v95 = v93;

      v125 = v133;
      v126 = v134;
      v127 = v135;
      v128 = v136;
      v121 = v129;
      v122 = v130;
      v123 = v131;
      v124 = v132;
      sub_1ADE6AF00(&v121);
      v96 = v116;
      sub_1ADDD86D8(v116, v5);
      v5 = v118;

      sub_1AE0297EC(v94, v95, v96, v90, v5);
      v117 = 0;

      sub_1ADDE1588(v114, v115);
      sub_1ADDCC35C(v96, v90);
      sub_1ADDCC35C(v94, v95);

      sub_1ADDCC35C(v96, v90);
      v14 = v16;
      v10 = v108;
      a1 = v109;
      v15 = v111;
      v8 = v112;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_9:
      v16 = v14;
    }

    if (v21)
    {
      v113 = v5;
      v48 = v18;
      v5 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
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
      }

      v49 = v18;
      v50 = v18;
      v51 = v113;
      sub_1ADDD86D8(v49, v113);

      v52 = v50;
      sub_1ADDD86D8(v50, v51);
      v53 = sub_1AE23BB7C();
      if (v53)
      {
        v54 = sub_1AE23BBAC();
        if (__OFSUB__(v48, v54))
        {
          goto LABEL_106;
        }

        v53 += v48 - v54;
      }

      v55 = sub_1AE23BB9C();
      v24 = v118;
      if (v55 >= v5)
      {
        v56 = v5;
      }

      else
      {
        v56 = v55;
      }

      v18 = v52;
      if (v53)
      {
        v15 = v111;
        if (v56 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_97:
          sub_1ADDE1588(v114, v115);

          sub_1ADDCC35C(v116, v5);
          swift_setDeallocating();
          CRDecoder.deinit();
          swift_deallocClassInstance();
          v98 = v107;
          goto LABEL_94;
        }

        if (v56 > 0x7FFFFFFF)
        {
          goto LABEL_107;
        }
      }

      else
      {
        LODWORD(v56) = 0;
        v15 = v111;
      }

      sqlite3_bind_blob(*(v118 + 232), 1, v53, v56, *(v118 + 72));
      v68 = sqlite3_step(*(v24 + 232));
      v5 = v113;
      if (v68 == 100)
      {
        v69 = sqlite3_column_bytes(*(v24 + 232), 0);
        v70 = sqlite3_column_blob(*(v24 + 232), 0);
        if (!v70)
        {
          goto LABEL_111;
        }

        if (v69)
        {
          if (v69 < 15)
          {
            *(&v129 + 6) = 0;
            *&v129 = 0;
            BYTE14(v129) = v69;
            memcpy(&v129, v70, v69);
            v114 = v129;
            v75 = v101 & 0xF00000000000000 | DWORD2(v129) | ((WORD6(v129) | (BYTE14(v129) << 16)) << 32);
            v101 = v75;
          }

          else
          {
            v71 = sub_1AE23BBCC();
            v72 = *(v71 + 48);
            v73 = *(v71 + 52);
            swift_allocObject();
            if (v69 == 0x7FFFFFFF)
            {
              v74 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v114 = swift_allocObject();
              *(v114 + 16) = v105;
              v75 = v74 | 0x8000000000000000;
            }

            else
            {
              v80 = sub_1AE23BB6C();
              v114 = v69 << 32;
              v75 = v80 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v114 = 0;
          v75 = 0xC000000000000000;
        }

        v115 = v75;
        v5 = v113;
LABEL_85:
        v24 = v118;
        goto LABEL_86;
      }
    }

    else
    {
      *&v121 = v18;
      WORD4(v121) = v5;
      BYTE10(v121) = BYTE2(v5);
      BYTE11(v121) = BYTE3(v5);
      BYTE12(v121) = BYTE4(v5);
      BYTE13(v121) = BYTE5(v5);
      v22 = *(v20 + 232);
      v23 = *(v118 + 72);

      v24 = v118;
      sqlite3_bind_blob(v22, 1, &v121, BYTE6(v5), v23);
      if (sqlite3_step(*(v24 + 232)) == 100)
      {
        v25 = sqlite3_column_bytes(*(v24 + 232), 0);
        v26 = sqlite3_column_blob(*(v24 + 232), 0);
        if (!v26)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return;
        }

        if (v25)
        {
          if (v25 < 15)
          {
            *(&v129 + 6) = 0;
            *&v129 = 0;
            BYTE14(v129) = v25;
            memcpy(&v129, v26, v25);
            v114 = v129;
            v31 = v104 & 0xF00000000000000 | DWORD2(v129) | ((WORD6(v129) | (BYTE14(v129) << 16)) << 32);
            v104 = v31;
          }

          else
          {
            v27 = sub_1AE23BBCC();
            v28 = *(v27 + 48);
            v29 = *(v27 + 52);
            swift_allocObject();
            if (v25 == 0x7FFFFFFF)
            {
              v30 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v114 = swift_allocObject();
              *(v114 + 16) = v105;
              v31 = v30 | 0x8000000000000000;
            }

            else
            {
              v76 = sub_1AE23BB6C();
              v114 = v25 << 32;
              v31 = v76 | 0x4000000000000000;
            }
          }

          v115 = v31;
          v18 = v116;
        }

        else
        {
          v114 = 0;
          v115 = 0xC000000000000000;
        }

        goto LABEL_85;
      }
    }

    v114 = 0;
    v115 = 0xF000000000000000;
LABEL_86:
    sqlite3_reset(*(v24 + 232));
    v79 = v18;
LABEL_87:
    sub_1ADDCC35C(v79, v5);

    v8 = v112;
    goto LABEL_88;
  }

  MEMORY[0x1EEE9AC00](v97);
  v98 = v107;
  sub_1AE021180(sub_1AE02AA44);
LABEL_94:
  sub_1ADDE53C0(v98, type metadata accessor for Timestamp);
LABEL_95:
  v99 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE024678(uint64_t *a1, __int128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = *a1;
  v9 = a1[1];
  v68 = *a3;
  v11 = *(v7 + 32);
  v67[0] = 1;
  type metadata accessor for CREncoder();
  v42 = *a2;
  swift_initStackObject();
  v12 = v11;
  CREncoder.init(_:version:fileSignature:)(v12, v67, 0, 0xF000000000000000);
  v51 = v42;
  sub_1ADE6A0EC(&v51, &v59);
  sub_1ADE73BC8();
  v13 = sub_1AE23C51C();
  if (v6)
  {

    v55 = v63;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    return sub_1ADE6AF00(&v51);
  }

  else
  {
    v38 = v10;
    v39 = v13;
    v43 = v14;

    v55 = v63;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    sub_1ADE6AF00(&v51);
    v16 = *(v7 + 24);
    v46[0] = v68;
    v17 = sub_1AE01FD0C(&v44, v46, &type metadata for AnyCRDT, &protocol witness table for AnyCRDT);
    v18 = v44;
    LOBYTE(v46[0]) = v44;
    swift_allocObject();
    v19 = v12;
    CREncoder.init(_:version:fileSignature:)(v19, v46, 0, 0xF000000000000000);
    v46[0] = v68;
    v37 = sub_1ADE694A4(v46);
    v68 = v20;

    sub_1ADDF6EEC();
    v21 = *(v16 + 56);
    LOBYTE(v46[0]) = 1;
    swift_initStackObject();
    v22 = v19;

    CREncoder.init(_:version:fileSignature:)(v22, v46, 0, 0xF000000000000000);
    v23 = sub_1ADE6B3B8(a4, a5);
    v25 = v24;

    v49 = 0;
    v50 = 0;

    sub_1AE028F7C(v38, v9, &v49);
    v34 = v25;
    swift_beginAccess();
    sub_1ADDCEE40(v21 + 88, &v44, &qword_1EB5B9DB0, &qword_1AE240B80);
    v33 = v23;
    if (v45)
    {
      sub_1ADE23E6C(&v44, v46);
      v27 = v47;
      v26 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v28 = (*(v26 + 8))(v37, v68, v27, v26);
      v35 = v29;
      v36 = v28;
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      sub_1ADDCEDE0(&v44, &qword_1EB5B9DB0, &qword_1AE240B80);
      v30 = v68;
      sub_1ADDD86D8(v37, v68);
      v35 = v30;
      v36 = v37;
    }

    sub_1ADDD86D8(v39, v43);
    sub_1ADDD86D8(v33, v34);
    sub_1ADDD86D8(v36, v35);
    sub_1AE02921C(v38, v9, v39, v43, v33, v34, v36, v35, v21, 0);
    result = sub_1ADDCC35C(v36, v35);
    v46[0] = a4;
    v46[1] = a5;
    v31 = v49;
    if (v49)
    {
      v32 = v50;

      sub_1ADDDCE90(v31, v32);
      sub_1ADE43570((0x3020101u >> (8 * v18)) & 3, v17 & 0x1FFFF);
      sub_1ADDCC35C(v39, v43);

      sub_1ADDCC35C(v37, v68);
      sub_1ADDCC35C(v33, v34);

      return sub_1ADE42CB8(v31);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AE024BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v9 = *(a1 + 24);
  *&v25 = *(a1 + 16);
  *(&v25 + 1) = v9;
  *&v24 = a1;
  v10 = *(a3 + 48);
  sub_1ADDD86D8(v25, v9);
  v11 = type metadata accessor for AnyReference();
  v10(&v26, &v25, &v24, v11, &off_1F23C1040, a2, a3);
  result = sub_1ADDCC35C(v25, *(&v25 + 1));
  if (!v4)
  {
    v13 = v26;
    if (v26)
    {
      v14 = v27;
      v16 = *(a1 + 24);
      v26 = *(a1 + 16);
      v15 = v26;
      v27 = v16;
      v29 = v14;
      *&v25 = v14;
      *(&v25 + 1) = v28;
      v23 = v28;
      *&v24 = v13;
      sub_1ADDD86D8(v26, v16);
      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v19 = sub_1ADDD9ECC(v17);
      sub_1AE024678(&v26, &v25, &v24, v18, v19);
      sub_1ADDCC35C(v15, v16);

      *a4 = v29;
      a4[1] = v23;
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      *&v25 = 10278;
      *(&v25 + 1) = 0xE200000000000000;
      v24 = *(a1 + 16);
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v25, *(&v25 + 1));

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v20 = v26;
      v21 = v27;
      sub_1ADE42E40();
      swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AE024E74(__int128 *a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v3 = *(*(v1 + 24) + 56);
  v5 = *a1;

  sub_1ADE4528C(sub_1AE0254C0);

  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1AE024F14(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  if (a4 >> 60 != 15)
  {
    v29[12] = v9;
    v29[13] = v10;
    v15 = result;
    v17 = *(a5 + 40);
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v19;
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 256;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    sub_1ADDE0F78(a3, a4);

    sub_1ADE62FA4(a3, a4, v29);
    v29[3] = v8;
    if (v8)
    {
      sub_1ADDE1588(a3, a4);
      swift_setDeallocating();
      CRDecoder.deinit();
      return swift_deallocClassInstance();
    }

    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v20 = v29[0];
    if (sub_1ADF637A8(v29[1], a7))
    {
    }

    else
    {
      v21 = sub_1ADF637A8(v20, a6);

      if ((v21 & 1) == 0)
      {
        return sub_1ADDE1588(a3, a4);
      }
    }

    v22 = *a8;
    sub_1ADDD86D8(v15, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1ADE5534C(0, *(v22 + 2) + 1, 1, v22);
      *a8 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      *a8 = sub_1ADE5534C((v24 > 1), v25 + 1, 1, v22);
    }

    result = sub_1ADDE1588(a3, a4);
    v26 = *a8;
    *(v26 + 2) = v25 + 1;
    v27 = &v26[16 * v25];
    *(v27 + 4) = v15;
    *(v27 + 5) = a2;
  }

  return result;
}

uint64_t sub_1AE025128()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  sub_1ADE42CB8(*(v0 + 48));
  sub_1ADDCEDE0(v0 + qword_1EB5D7478, &qword_1EB5BA2F8, &unk_1AE2422B0);
  return v0;
}

uint64_t sub_1AE025188()
{
  sub_1AE025128();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1AE0251F8()
{
  if (!qword_1EB5B95C0)
  {
    sub_1AE23BFEC();
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5B95C0);
    }
  }
}

uint64_t sub_1AE025408@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_1AE024E74(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AE025484(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE0254E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 225) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE0255EC, v4, 0);
}

uint64_t sub_1AE0255EC()
{
  v44 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v43);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 40) = sub_1AE23BEAC();
    *(v0 + 48) = v12;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 225);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 120);

      v32 = *(v0 + 8);

      return v32(2);
    }
  }

  v34 = *(v0 + 112);
  v35 = swift_getObjectType();
  v36 = *(v34 + 120);
  *(v0 + 176) = v36;
  v37 = *(v34 + 128);
  *(v0 + 184) = v37;
  v38 = *(v26 + 32);
  swift_unknownObjectRetain();
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 192) = v40;
  *v40 = v0;
  v40[1] = sub_1AE025A98;
  v41 = *(v0 + 120);

  return v42(v41, v36, v37, v35, v26);
}

uint64_t sub_1AE025A98()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 112);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE025BC4, v3, 0);
}

uint64_t sub_1AE025BC4()
{
  v36 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[15];

    v8 = v0[1];

    return v8(2);
  }

  else
  {
    v10 = v0[19];
    v11 = v0[18];
    v12 = v0[14];
    (*(v2 + 32))(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);

    v13 = sub_1AE23C76C();
    v14 = sub_1AE23D60C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[22];
      v15 = v0[23];
      v18 = v0[17];
      v17 = v0[18];
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v20 = 136315394;
      *(v20 + 4) = sub_1AE1FB594(v16, v15, &v35);
      *(v20 + 12) = 2080;
      sub_1AE02ADD4(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v21 = sub_1AE23DD9C();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v17, v19);
      v25 = sub_1AE1FB594(v21, v23, &v35);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1ADDCA000, v13, v14, "%s reading url %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v33, -1, -1);
      MEMORY[0x1B26FDA50](v20, -1, -1);
    }

    else
    {
      v27 = v0[17];
      v26 = v0[18];
      v28 = v0[16];

      v24 = *(v27 + 8);
      v24(v26, v28);
    }

    v0[25] = v24;
    v34 = (v0[12] + *v0[12]);
    v29 = *(v0[12] + 4);
    v30 = swift_task_alloc();
    v0[26] = v30;
    *v30 = v0;
    v30[1] = sub_1AE025F6C;
    v31 = v0[19];
    v32 = v0[13];

    return v34(v0 + 28, v31);
  }
}

uint64_t sub_1AE025F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1AE026174;
  }

  else
  {
    v6 = sub_1AE026098;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AE026098()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  v6 = *(v0 + 136) + 8;
  v7 = *(v0 + 224);

  v1(v3, v4);
  swift_unknownObjectRelease();

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t sub_1AE026174()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  swift_unknownObjectRelease();
  v1(v4, v5);

  v8 = v0[1];
  v9 = v0[27];

  return v8();
}

uint64_t sub_1AE026228(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 224) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE026334, v4, 0);
}

uint64_t sub_1AE026334()
{
  v44 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v43);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 40) = sub_1AE23BEAC();
    *(v0 + 48) = v12;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 224);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 120);

      v32 = *(v0 + 8);

      return v32(1);
    }
  }

  v34 = *(v0 + 112);
  v35 = swift_getObjectType();
  v36 = *(v34 + 120);
  *(v0 + 176) = v36;
  v37 = *(v34 + 128);
  *(v0 + 184) = v37;
  v38 = *(v26 + 32);
  swift_unknownObjectRetain();
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 192) = v40;
  *v40 = v0;
  v40[1] = sub_1AE0267E0;
  v41 = *(v0 + 120);

  return v42(v41, v36, v37, v35, v26);
}

uint64_t sub_1AE0267E0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 112);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE02690C, v3, 0);
}

uint64_t sub_1AE02690C()
{
  v36 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[15];

    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v10 = v0[19];
    v11 = v0[18];
    v12 = v0[14];
    (*(v2 + 32))(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);

    v13 = sub_1AE23C76C();
    v14 = sub_1AE23D60C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[22];
      v15 = v0[23];
      v18 = v0[17];
      v17 = v0[18];
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v20 = 136315394;
      *(v20 + 4) = sub_1AE1FB594(v16, v15, &v35);
      *(v20 + 12) = 2080;
      sub_1AE02ADD4(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v21 = sub_1AE23DD9C();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v17, v19);
      v25 = sub_1AE1FB594(v21, v23, &v35);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1ADDCA000, v13, v14, "%s reading url %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v33, -1, -1);
      MEMORY[0x1B26FDA50](v20, -1, -1);
    }

    else
    {
      v27 = v0[17];
      v26 = v0[18];
      v28 = v0[16];

      v24 = *(v27 + 8);
      v24(v26, v28);
    }

    v0[25] = v24;
    v34 = (v0[12] + *v0[12]);
    v29 = *(v0[12] + 4);
    v30 = swift_task_alloc();
    v0[26] = v30;
    *v30 = v0;
    v30[1] = sub_1AE026CAC;
    v31 = v0[19];
    v32 = v0[13];

    return v34();
  }
}

uint64_t sub_1AE026CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1AE026174;
  }

  else
  {
    v6 = sub_1AE026DD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AE026DD8()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[17] + 8;

  v1(v3, v4);
  swift_unknownObjectRelease();

  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1AE026EA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v12, 0, 14);
      v6 = v12;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v6 = v12 + BYTE6(a2);
LABEL_9:
      sub_1ADE45ADC(v12, v6, a3, a4);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE029B04(v7, v8, a3, a4);
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE027010(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const char *a5, unint64_t a6, uint64_t a7, _BYTE *a8, char *a9, uint64_t a10)
{
  v14 = a3;
  v15 = BYTE6(a2);
  v166[2] = *MEMORY[0x1E69E9840];
  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v166[0] = a1;
      LOWORD(v166[1]) = a2;
      BYTE2(v166[1]) = BYTE2(a2);
      BYTE3(v166[1]) = BYTE3(a2);
      BYTE4(v166[1]) = BYTE4(a2);
      BYTE5(v166[1]) = BYTE5(a2);
      v17 = a4 >> 62;
      v18 = v166 + BYTE6(a2);
      if ((a4 >> 62) <= 1)
      {
        v155 = v166 + BYTE6(a2);
        if (!v17)
        {
          v165[0] = a3;
          LOWORD(v165[1]) = a4;
          BYTE2(v165[1]) = BYTE2(a4);
          BYTE3(v165[1]) = BYTE3(a4);
          BYTE4(v165[1]) = BYTE4(a4);
          BYTE5(v165[1]) = BYTE5(a4);
          swift_retain_n();
          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);
          v145 = v165 + BYTE6(a4);
          v20 = a5;
          v21 = a6;
          v22 = a7;
          v23 = a8;
          v24 = a9;
          v25 = v155;
LABEL_27:
          v45 = a10;
LABEL_81:
          sub_1AE0280A0(v20, v21, v22, v23, v24, v166, v25, v45, v165, v145);
          goto LABEL_150;
        }

        v154 = a10;
        v88 = (a3 >> 32) - a3;
        if (a3 >> 32 >= a3)
        {
          swift_retain_n();
          sub_1ADDD86D8(a5, a6);
          sub_1ADDD86D8(a5, a6);
          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          v89 = sub_1AE23BB7C();
          if (!v89)
          {
            v92 = 0;
            goto LABEL_121;
          }

          v90 = v89;
          v91 = sub_1AE23BBAC();
          if (!__OFSUB__(v14, v91))
          {
            v92 = (v14 - v91 + v90);
LABEL_121:
            v122 = sub_1AE23BB9C();
            if (v122 >= v88)
            {
              v123 = (v14 >> 32) - v14;
            }

            else
            {
              v123 = v122;
            }

            v124 = &v92[v123];
            if (v92)
            {
              v125 = v124;
            }

            else
            {
              v125 = 0;
            }

            v144 = v92;
            v149 = v125;
            v126 = a5;
            v127 = a6;
            v128 = a7;
            v129 = a8;
            v130 = a9;
            v131 = v155;
LABEL_136:
            sub_1AE0280A0(v126, v127, v128, v129, v130, v166, v131, v154, v144, v149);
            goto LABEL_137;
          }

          goto LABEL_165;
        }

        goto LABEL_155;
      }

      if (v17 == 2)
      {
        v153 = a10;
        v46 = *(a3 + 16);
        v150 = *(a3 + 24);
        swift_retain_n();
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v158 = v14;
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v47 = sub_1AE23BB7C();
        if (v47)
        {
          v48 = v47;
          v49 = v18;
          v50 = sub_1AE23BBAC();
          if (__OFSUB__(v46, v50))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v51 = (v46 - v50 + v48);
        }

        else
        {
          v49 = v166 + v15;
          v51 = 0;
        }

        if (__OFSUB__(v150, v46))
        {
          goto LABEL_157;
        }

        v108 = sub_1AE23BB9C();
        if (v108 >= v150 - v46)
        {
          v109 = v150 - v46;
        }

        else
        {
          v109 = v108;
        }

        v110 = &v51[v109];
        if (v51)
        {
          v111 = v110;
        }

        else
        {
          v111 = 0;
        }

        v143 = v51;
        v148 = v111;
        v112 = a5;
        v113 = a6;
        v114 = a7;
        v115 = a8;
        v116 = a9;
        v117 = v49;
LABEL_119:
        sub_1AE0280A0(v112, v113, v114, v115, v116, v166, v117, v153, v143, v148);
        v14 = v158;
LABEL_137:

        sub_1ADDCC35C(a5, a6);

LABEL_149:
        sub_1ADDCC35C(a5, a6);

        goto LABEL_150;
      }

      memset(v165, 0, 14);
      swift_retain_n();
      sub_1ADDD86D8(v14, a4);
      sub_1ADDD86D8(a5, a6);

      sub_1ADDD86D8(v14, a4);
      sub_1ADDD86D8(a5, a6);
      v145 = v165;
      v20 = a5;
      v21 = a6;
      v22 = a7;
      v23 = a8;
      v24 = a9;
      v25 = v166 + v15;
      goto LABEL_80;
    }

    v37 = a1;
    v38 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v39 = sub_1AE23BB7C();
      if (!v39)
      {
        v42 = 0;
LABEL_49:
        v68 = sub_1AE23BB9C();
        if (v68 >= v38)
        {
          v69 = v38;
        }

        else
        {
          v69 = v68;
        }

        v70 = &v42[v69];
        if (v42)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = a4 >> 62;
        if ((a4 >> 62) > 1)
        {
          v14 = a3;
          if (v72 != 2)
          {
            memset(v166, 0, 14);
            sub_1ADDD86D8(a5, a6);

            v147 = v166;
            v73 = a5;
            v74 = a6;
            v75 = a7;
            v76 = a8;
            v77 = a9;
            v78 = v42;
            goto LABEL_100;
          }

          v152 = v42;
          v79 = *(a3 + 16);
          v80 = *(a3 + 24);
          swift_retain_n();
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(a5, a6);

          v81 = sub_1AE23BB7C();
          if (v81)
          {
            v82 = sub_1AE23BBAC();
            if (__OFSUB__(v79, v82))
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v81 += v79 - v82;
          }

          v30 = __OFSUB__(v80, v79);
          v83 = v80 - v79;
          if (v30)
          {
            goto LABEL_162;
          }

          v84 = sub_1AE23BB9C();
          if (v84 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v84;
          }

          v86 = &v81[v85];
          if (v81)
          {
            v87 = v86;
          }

          else
          {
            v87 = 0;
          }

          sub_1AE0280A0(a5, a6, a7, a8, a9, v152, v71, a10, v81, v87);
          v14 = a3;
        }

        else
        {
          v14 = a3;
          if (!v72)
          {
            v166[0] = a3;
            LOWORD(v166[1]) = a4;
            BYTE2(v166[1]) = BYTE2(a4);
            BYTE3(v166[1]) = BYTE3(a4);
            BYTE4(v166[1]) = BYTE4(a4);
            BYTE5(v166[1]) = BYTE5(a4);
            sub_1ADDD86D8(a5, a6);

            v147 = v166 + BYTE6(a4);
            v73 = a5;
            v74 = a6;
            v75 = a7;
            v76 = a8;
            v77 = a9;
            v78 = v42;
LABEL_100:
            sub_1AE0280A0(v73, v74, v75, v76, v77, v78, v71, a10, v166, v147);
            sub_1ADDCC35C(a5, a6);
            goto LABEL_148;
          }

          if (a3 >> 32 < a3)
          {
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          swift_retain_n();
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(a5, a6);

          v102 = sub_1AE23BB7C();
          if (v102)
          {
            v103 = sub_1AE23BBAC();
            if (__OFSUB__(a3, v103))
            {
              goto LABEL_170;
            }

            v102 += a3 - v103;
          }

          v14 = a3;
          v104 = sub_1AE23BB9C();
          if (v104 >= (a3 >> 32) - a3)
          {
            v105 = (a3 >> 32) - a3;
          }

          else
          {
            v105 = v104;
          }

          v106 = &v102[v105];
          if (v102)
          {
            v107 = v106;
          }

          else
          {
            v107 = 0;
          }

          sub_1AE0280A0(a5, a6, a7, a8, a9, v42, v71, a10, v102, v107);
        }

        sub_1ADDCC35C(a5, a6);

        sub_1ADDCC35C(a5, a6);

LABEL_148:
        sub_1ADDCC35C(v14, a4);
        goto LABEL_149;
      }

      v40 = v39;
      v41 = sub_1AE23BBAC();
      if (!__OFSUB__(v37, v41))
      {
        v42 = (v37 - v41 + v40);
        goto LABEL_49;
      }

LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    __break(1u);
    goto LABEL_152;
  }

  if (v16 != 2)
  {
    v43 = a4 >> 62;
    memset(v166, 0, 14);
    if ((a4 >> 62) <= 1)
    {
      if (!v43)
      {
        v165[0] = a3;
        LOWORD(v165[1]) = a4;
        BYTE2(v165[1]) = BYTE2(a4);
        BYTE3(v165[1]) = BYTE3(a4);
        BYTE4(v165[1]) = BYTE4(a4);
        BYTE5(v165[1]) = BYTE5(a4);
        swift_retain_n();
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);
        v145 = v165 + BYTE6(a4);
        v25 = v166;
        v20 = a5;
        v21 = a6;
        v22 = a7;
        v23 = a8;
        v24 = a9;
        goto LABEL_27;
      }

      v154 = a10;
      v93 = (a3 >> 32) - a3;
      if (a3 >> 32 >= a3)
      {
        swift_retain_n();
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v94 = sub_1AE23BB7C();
        if (v94)
        {
          v95 = v94;
          v96 = sub_1AE23BBAC();
          if (__OFSUB__(v14, v96))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          v97 = (v14 - v96 + v95);
        }

        else
        {
          v97 = 0;
        }

        v132 = sub_1AE23BB9C();
        if (v132 >= v93)
        {
          v133 = (v14 >> 32) - v14;
        }

        else
        {
          v133 = v132;
        }

        v134 = &v97[v133];
        if (v97)
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        v144 = v97;
        v149 = v135;
        v131 = v166;
        v126 = a5;
        v127 = a6;
        v128 = a7;
        v129 = a8;
        v130 = a9;
        goto LABEL_136;
      }

      goto LABEL_156;
    }

    if (v43 == 2)
    {
      v153 = a10;
      v53 = *(a3 + 16);
      v54 = *(a3 + 24);
      swift_retain_n();
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v158 = a3;
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v55 = sub_1AE23BB7C();
      if (v55)
      {
        v56 = v55;
        v57 = sub_1AE23BBAC();
        if (__OFSUB__(v53, v57))
        {
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v58 = (v53 - v57 + v56);
      }

      else
      {
        v58 = 0;
      }

      if (__OFSUB__(v54, v53))
      {
        goto LABEL_158;
      }

      v118 = sub_1AE23BB9C();
      if (v118 >= v54 - v53)
      {
        v119 = v54 - v53;
      }

      else
      {
        v119 = v118;
      }

      v120 = &v58[v119];
      if (v58)
      {
        v121 = v120;
      }

      else
      {
        v121 = 0;
      }

      v143 = v58;
      v148 = v121;
      v117 = v166;
      v112 = a5;
      v113 = a6;
      v114 = a7;
      v115 = a8;
      v116 = a9;
      goto LABEL_119;
    }

    memset(v165, 0, 14);
    swift_retain_n();
    sub_1ADDD86D8(v14, a4);
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(v14, a4);
    sub_1ADDD86D8(a5, a6);
    v145 = v165;
    v25 = v166;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v23 = a8;
    v24 = a9;
LABEL_80:
    v45 = a10;
    goto LABEL_81;
  }

  v27 = *(a1 + 16);
  v26 = *(a1 + 24);

  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);

  v156 = v14;
  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);

  v28 = sub_1AE23BB7C();
  if (v28)
  {
    v29 = sub_1AE23BBAC();
    if (__OFSUB__(v27, v29))
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v28 += v27 - v29;
  }

  v30 = __OFSUB__(v26, v27);
  v31 = v26 - v27;
  if (v30)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v32 = sub_1AE23BB9C();
  if (v32 >= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = &v28[v33];
  if (v28)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v36 != 2)
    {
      memset(v166, 0, 14);
      sub_1ADDD86D8(a5, a6);

      sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v35, a10, v166, v166);
      sub_1ADDCC35C(a5, a6);
LABEL_147:
      v14 = v156;
      goto LABEL_148;
    }

    v151 = v35;
    v59 = *(v156 + 16);
    v60 = *(v156 + 24);
    swift_retain_n();
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(a5, a6);

    v61 = sub_1AE23BB7C();
    if (v61)
    {
      v62 = sub_1AE23BBAC();
      if (__OFSUB__(v59, v62))
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v61 += v59 - v62;
    }

    v30 = __OFSUB__(v60, v59);
    v63 = v60 - v59;
    if (v30)
    {
      goto LABEL_161;
    }

    v64 = sub_1AE23BB9C();
    if (v64 >= v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    v66 = v65 + v61;
    if (v61)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v142 = v61;
    v146 = v67;
LABEL_146:
    sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v151, a10, v142, v146);

    sub_1ADDCC35C(a5, a6);

    sub_1ADDCC35C(a5, a6);

    goto LABEL_147;
  }

  if (v36)
  {
    v151 = v35;
    if (v156 >> 32 < v156)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    swift_retain_n();
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(a5, a6);

    v98 = sub_1AE23BB7C();
    if (v98)
    {
      v99 = v98;
      v100 = sub_1AE23BBAC();
      if (__OFSUB__(v156, v100))
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
      }

      v101 = (v156 - v100 + v99);
    }

    else
    {
      v101 = 0;
    }

    v136 = sub_1AE23BB9C();
    if (v136 >= (v156 >> 32) - v156)
    {
      v137 = (v156 >> 32) - v156;
    }

    else
    {
      v137 = v136;
    }

    v138 = &v101[v137];
    if (v101)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    v142 = v101;
    v146 = v139;
    goto LABEL_146;
  }

  v166[0] = v156;
  LOWORD(v166[1]) = a4;
  BYTE2(v166[1]) = BYTE2(a4);
  BYTE3(v166[1]) = BYTE3(a4);
  BYTE4(v166[1]) = BYTE4(a4);
  BYTE5(v166[1]) = BYTE5(a4);
  sub_1ADDD86D8(a5, a6);

  sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v35, a10, v166, v166 + BYTE6(a4));
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(v156, a4);
  sub_1ADDCC35C(a5, a6);

  v14 = v156;
LABEL_150:
  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);

  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);

  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);

  v141 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE0280A0(const char *a1, unint64_t a2, uint64_t a3, _BYTE *a4, char *a5, const void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = a5;
  v14 = BYTE6(a2);
  v15 = a9;
  v16 = a10;
  v69 = *MEMORY[0x1E69E9840];
  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v66[0] = a1;
      LOWORD(v66[1]) = a2;
      BYTE2(v66[1]) = BYTE2(a2);
      BYTE3(v66[1]) = BYTE3(a2);
      BYTE4(v66[1]) = BYTE4(a2);
      if (a4)
      {
        v18 = a5 - a4;
      }

      else
      {
        v18 = 0;
      }

      BYTE5(v66[1]) = BYTE5(a2);
      if (v18 >= 0xFFFFFFFF80000000)
      {
        if (v18 <= 0x7FFFFFFF)
        {
          v19 = *(a3 + 280);
          v20 = *(a3 + 72);
          swift_retain_n();
          sqlite3_bind_blob(v19, 1, a4, v18, v20);
          if (a6)
          {
            v22 = a7 - a6;
          }

          else
          {
            v22 = 0;
          }

          if (v22 >= 0xFFFFFFFF80000000)
          {
            if (v22 <= 0x7FFFFFFF)
            {
              sqlite3_bind_blob(*(a3 + 280), 2, a6, v22, v20);
              if (a8 >= 0xFFFFFFFF80000000)
              {
                if (a8 <= 0x7FFFFFFF)
                {
                  sqlite3_bind_int(*(a3 + 280), 3, a8);
                  if (a9)
                  {
                    v23 = a10 - a9;
                  }

                  else
                  {
                    v23 = 0;
                  }

                  if (v23 >= 0xFFFFFFFF80000000)
                  {
                    if (v23 <= 0x7FFFFFFF)
                    {
                      sqlite3_bind_blob(*(a3 + 280), 4, a9, v23, v20);
                      sqlite3_bind_blob(*(a3 + 280), 5, v66, v14, v20);
                      if (sqlite3_step(*(a3 + 280)) == 101)
                      {
                        goto LABEL_104;
                      }

                      v67 = 0x203A747265736E49;
                      v68 = 0xE800000000000000;
                      if (sqlite3_errmsg(*(a3 + 32)))
                      {
LABEL_108:
                        v53 = sub_1AE23CDEC();
                        MEMORY[0x1B26FB670](v53);

                        MEMORY[0x1B26FB670](46, 0xE100000000000000);
                        v54 = v67;
                        v55 = v68;
                        sub_1ADE47024();
                        swift_allocError();
                        *v56 = v54;
                        *(v56 + 8) = v55;
                        *(v56 + 16) = 2;
                        swift_willThrow();
                        goto LABEL_111;
                      }

                      __break(1u);
                      goto LABEL_107;
                    }

                    goto LABEL_140;
                  }

                  goto LABEL_136;
                }

                goto LABEL_132;
              }

              goto LABEL_128;
            }

            goto LABEL_124;
          }

          goto LABEL_120;
        }

        goto LABEL_116;
      }

      __break(1u);
      goto LABEL_113;
    }

    goto LABEL_55;
  }

  if (v17 == 2)
  {
    v24 = *(a1 + 2);
    v16 = *(a1 + 3);
    swift_retain_n();
    v25 = sub_1AE23BB7C();
    if (v25)
    {
      v26 = sub_1AE23BBAC();
      if (__OFSUB__(v24, v26))
      {
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
      }

      v25 += v24 - v26;
    }

    v27 = __OFSUB__(v16, v24);
    v15 = (v16 - v24);
    if (v27)
    {
      goto LABEL_115;
    }

    v28 = sub_1AE23BB9C();
    if (v28 >= v15)
    {
      v29 = v15;
    }

    else
    {
      v29 = v28;
    }

    if (a4)
    {
      v30 = v11 - a4;
    }

    else
    {
      v30 = 0;
    }

    if (v30 < 0xFFFFFFFF80000000)
    {
      goto LABEL_118;
    }

    if (v30 > 0x7FFFFFFF)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v31 = *(a3 + 72);
    sqlite3_bind_blob(*(a3 + 280), 1, a4, v30, v31);
    if (a6)
    {
      v32 = a7 - a6;
    }

    else
    {
      v32 = 0;
    }

    if (v32 < 0xFFFFFFFF80000000)
    {
      goto LABEL_126;
    }

    if (v32 > 0x7FFFFFFF)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    sqlite3_bind_blob(*(a3 + 280), 2, a6, v32, v31);
    if (a8 < 0xFFFFFFFF80000000)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (a8 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    sqlite3_bind_int(*(a3 + 280), 3, a8);
    if (a9)
    {
      v33 = a10 - a9;
    }

    else
    {
      v33 = 0;
    }

    if (v33 < 0xFFFFFFFF80000000)
    {
      goto LABEL_142;
    }

    if (v33 > 0x7FFFFFFF)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v11 = &v25[v29];
    sqlite3_bind_blob(*(a3 + 280), 4, a9, v33, v31);
    if (v25)
    {
      v34 = v29;
    }

    else
    {
      v34 = 0;
    }

    if (v34 < 0xFFFFFFFF80000000)
    {
      goto LABEL_146;
    }

    if (v34 > 0x7FFFFFFF)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    sqlite3_bind_blob(*(a3 + 280), 5, v25, v34, v31);
    if (sqlite3_step(*(a3 + 280)) == 101)
    {
      goto LABEL_85;
    }

    v67 = 0x203A747265736E49;
    v68 = 0xE800000000000000;
    a1 = sqlite3_errmsg(*(a3 + 32));
    if (a1)
    {
      goto LABEL_110;
    }

    __break(1u);
LABEL_55:
    v61 = v15;
    v62 = v16;
    v35 = a1;
    v36 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v64 = a7;
    swift_retain_n();
    v37 = sub_1AE23BB7C();
    if (v37)
    {
      v38 = sub_1AE23BBAC();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_151;
      }

      v37 += v35 - v38;
    }

    v39 = sub_1AE23BB9C();
    if (v39 >= v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v39;
    }

    if (a4)
    {
      v41 = v11 - a4;
    }

    else
    {
      v41 = 0;
    }

    if (v41 < 0xFFFFFFFF80000000)
    {
      goto LABEL_119;
    }

    if (v41 > 0x7FFFFFFF)
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v42 = *(a3 + 72);
    sqlite3_bind_blob(*(a3 + 280), 1, a4, v41, v42);
    if (a6)
    {
      v43 = v64 - a6;
    }

    else
    {
      v43 = 0;
    }

    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_127;
    }

    if (v43 > 0x7FFFFFFF)
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    sqlite3_bind_blob(*(a3 + 280), 2, a6, v43, v42);
    if (a8 < 0xFFFFFFFF80000000)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (a8 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    sqlite3_bind_int(*(a3 + 280), 3, a8);
    if (v61)
    {
      v44 = v62 - v61;
    }

    else
    {
      v44 = 0;
    }

    if (v44 < 0xFFFFFFFF80000000)
    {
      goto LABEL_143;
    }

    if (v44 > 0x7FFFFFFF)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    sqlite3_bind_blob(*(a3 + 280), 4, v61, v44, v42);
    if (v37)
    {
      v45 = v40;
    }

    else
    {
      v45 = 0;
    }

    if (v45 < 0xFFFFFFFF80000000)
    {
      goto LABEL_147;
    }

    if (v45 > 0x7FFFFFFF)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    sqlite3_bind_blob(*(a3 + 280), 5, v37, v45, v42);
    if (sqlite3_step(*(a3 + 280)) == 101)
    {
LABEL_85:
      sqlite3_reset(*(a3 + 280));
LABEL_111:

      v60 = *MEMORY[0x1E69E9840];
      return result;
    }

    v67 = 0x203A747265736E49;
    v68 = 0xE800000000000000;
    result = sqlite3_errmsg(*(a3 + 32));
    if (!result)
    {
      goto LABEL_153;
    }

LABEL_110:
    v57 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v57);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v58 = v68;
    sub_1ADE47024();
    swift_allocError();
    *v59 = v67;
    *(v59 + 8) = v58;
    *(v59 + 16) = 2;
    swift_willThrow();
    goto LABEL_111;
  }

  memset(v66, 0, 14);
  if (a4)
  {
    v46 = a5 - a4;
  }

  else
  {
    v46 = 0;
  }

  if (v46 < 0xFFFFFFFF80000000)
  {
    goto LABEL_114;
  }

  if (v46 > 0x7FFFFFFF)
  {
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
    goto LABEL_122;
  }

  v47 = *(a3 + 280);
  v48 = *(a3 + 72);
  swift_retain_n();
  sqlite3_bind_blob(v47, 1, a4, v46, v48);
  if (a6)
  {
    v50 = a7 - a6;
  }

  else
  {
    v50 = 0;
  }

  if (v50 < 0xFFFFFFFF80000000)
  {
    goto LABEL_121;
  }

  if (v50 > 0x7FFFFFFF)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sqlite3_bind_blob(*(a3 + 280), 2, a6, v50, v48);
  if (a8 < 0xFFFFFFFF80000000)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (a8 > 0x7FFFFFFF)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sqlite3_bind_int(*(a3 + 280), 3, a8);
  if (a9)
  {
    v51 = a10 - a9;
  }

  else
  {
    v51 = 0;
  }

  if (v51 < 0xFFFFFFFF80000000)
  {
    goto LABEL_137;
  }

  if (v51 > 0x7FFFFFFF)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  sqlite3_bind_blob(*(a3 + 280), 4, a9, v51, v48);
  sqlite3_bind_blob(*(a3 + 280), 5, v66, 0, v48);
  if (sqlite3_step(*(a3 + 280)) == 101)
  {
LABEL_104:
    sqlite3_reset(*(a3 + 280));
    goto LABEL_111;
  }

LABEL_107:
  v67 = 0x203A747265736E49;
  v68 = 0xE800000000000000;
  result = sqlite3_errmsg(*(a3 + 32));
  if (result)
  {
    goto LABEL_108;
  }

  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_1AE028940(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v7 = v26 + BYTE6(a2);
      v8 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v26, 0, 14);
    v8 = v26;
    v7 = v26;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE46D0C(v8, v7, a3, a4, a5);

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE028B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v7 = v26 + BYTE6(a2);
      v8 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v26, 0, 14);
    v8 = v26;
    v7 = v26;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE46AA8(v8, v7, a3, a4, a5);

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE028D68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v7 = v26 + BYTE6(a2);
      v8 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v26, 0, 14);
    v8 = v26;
    v7 = v26;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE466F8(v8, v7, a3, a4, a5);

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE028F7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = BYTE6(a2);
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v34[0] = a1;
      LOWORD(v34[1]) = a2;
      BYTE2(v34[1]) = BYTE2(a2);
      BYTE3(v34[1]) = BYTE3(a2);
      BYTE4(v34[1]) = BYTE4(a2);
      BYTE5(v34[1]) = BYTE5(a2);
      swift_retain_n();
      v7 = v34 + v5;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (v6 != 2)
  {
    memset(v34, 0, 14);
    swift_retain_n();
    v7 = v34;
LABEL_27:
    v26 = sub_1ADE45718(v34, v7);
    if (!v3)
    {
      if (!v26)
      {
        v28 = MEMORY[0x1E69E7CC0];
        v29 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
        v27 = sub_1ADDD9ECC(v28);
        v26 = v29;
      }

      v30 = *a3;
      v31 = a3[1];
      *a3 = v26;
      a3[1] = v27;
      sub_1ADE42CB8(v30);
    }

    goto LABEL_31;
  }

  v8 = v3;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_retain_n();
  a1 = sub_1AE23BB7C();
  v11 = a1;
  if (a1)
  {
    a1 = sub_1AE23BBAC();
    if (__OFSUB__(v9, a1))
    {
      goto LABEL_33;
    }

    v11 += v9 - a1;
  }

  v12 = __OFSUB__(v10, v9);
  v13 = v10 - v9;
  if (v12)
  {
    __break(1u);
LABEL_11:
    v14 = a1;
    v13 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v8 = v3;
      swift_retain_n();
      v11 = sub_1AE23BB7C();
      if (!v11)
      {
        goto LABEL_15;
      }

      v15 = sub_1AE23BBAC();
      if (!__OFSUB__(v14, v15))
      {
        v11 += v14 - v15;
        goto LABEL_15;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_15:
  v16 = sub_1AE23BB9C();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = &v11[v17];
  if (v11)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1ADE45718(v11, v19);
  if (!v8)
  {
    if (!v20)
    {
      v22 = MEMORY[0x1E69E7CC0];
      v23 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v21 = sub_1ADDD9ECC(v22);
      v20 = v23;
    }

    v24 = *a3;
    v25 = a3[1];
    *a3 = v20;
    a3[1] = v21;
    sub_1ADE42CB8(v24);
  }

LABEL_31:

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE02921C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, const char *a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v42[0] = a1;
      LOWORD(v42[1]) = a2;
      BYTE2(v42[1]) = BYTE2(a2);
      BYTE3(v42[1]) = BYTE3(a2);
      BYTE4(v42[1]) = BYTE4(a2);
      BYTE5(v42[1]) = BYTE5(a2);
      v17 = v42 + BYTE6(a2);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      sub_1ADDD86D8(a7, a8);

      sub_1AE027010(a3, a4, a5, a6, a7, a8, a9, v42, v17, a10);
LABEL_19:
      sub_1ADDCC35C(a7, a8);
      goto LABEL_29;
    }

    if (a1 >> 32 >= a1)
    {
      v37 = a1;
      v39 = (a1 >> 32) - a1;

      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      v41 = a3;
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      v21 = sub_1AE23BB7C();
      if (!v21)
      {
LABEL_12:
        v23 = sub_1AE23BB9C();
        v24 = v39;
        if (v23 < v39)
        {
          v24 = v23;
        }

        v25 = (v24 + v21);
        if (v21)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a7, a8);

        v27 = v21;
        a3 = v41;
        sub_1AE027010(v41, a4, a5, a6, a7, a8, a9, v27, v26, a10);
        sub_1ADDCC35C(a5, a6);
        sub_1ADDCC35C(a7, a8);

        sub_1ADDCC35C(v41, a4);
        sub_1ADDCC35C(a5, a6);
        goto LABEL_19;
      }

      v22 = sub_1AE23BBAC();
      if (!__OFSUB__(v37, v22))
      {
        v21 += v37 - v22;
        goto LABEL_12;
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v16 != 2)
  {
    memset(v42, 0, 14);
    sub_1ADDD86D8(a5, a6);
    sub_1ADDD86D8(a7, a8);

    sub_1ADDD86D8(a3, a4);
    sub_1ADDD86D8(a5, a6);
    sub_1ADDD86D8(a7, a8);

    sub_1ADDD86D8(a7, a8);

    sub_1AE027010(a3, a4, a5, a6, a7, a8, a9, v42, v42, a10);
    goto LABEL_19;
  }

  v38 = *(a1 + 16);
  v36 = *(a1 + 24);

  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);
  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  v40 = a3;
  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  v18 = sub_1AE23BB7C();
  v35 = a4;
  if (v18)
  {
    v19 = sub_1AE23BBAC();
    v20 = v38;
    if (__OFSUB__(v38, v19))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 += v38 - v19;
  }

  else
  {
    v20 = v38;
  }

  v28 = v36 - v20;
  if (__OFSUB__(v36, v20))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = sub_1AE23BB9C();
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = &v18[v30];
  if (v18)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  a4 = v35;
  sub_1AE027010(v40, v35, a5, a6, a7, a8, a9, v18, v32, a10);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);

  sub_1ADDCC35C(v40, v35);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);
  a3 = v40;
LABEL_29:

  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);

  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE0297EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = BYTE6(a2);
  v30[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v30[0] = a1;
      LOWORD(v30[1]) = a2;
      BYTE2(v30[1]) = BYTE2(a2);
      BYTE3(v30[1]) = BYTE3(a2);
      BYTE4(v30[1]) = BYTE4(a2);
      BYTE5(v30[1]) = BYTE5(a2);

      sub_1ADDD86D8(a3, a4);

      v10 = a3;
      v11 = a4;
      v12 = a5;
      v13 = v30 + v8;
LABEL_24:
      sub_1AE028940(v10, v11, v12, v30, v13);
      goto LABEL_25;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);

      sub_1ADDD86D8(a3, a4);

      v16 = sub_1AE23BB7C();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1AE23BBAC();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1AE23BB9C();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
    memset(v30, 0, 14);

    sub_1ADDD86D8(a3, a4);

    v13 = v30;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    goto LABEL_24;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);

  sub_1ADDD86D8(a3, a4);

  sub_1ADDD86D8(a3, a4);

  v16 = sub_1AE23BB7C();
  if (v16)
  {
    v17 = sub_1AE23BBAC();
    if (__OFSUB__(v15, v17))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = sub_1AE23BB9C();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = &v16[v21];
  if (v16)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_1AE028940(a3, a4, a5, v16, v27);

  sub_1ADDCC35C(a3, a4);

LABEL_25:
  sub_1ADDCC35C(a3, a4);

  sub_1ADDCC35C(a3, a4);

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE029B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE45ADC(v9, v15, a3, a4);
}

uint64_t sub_1AE029BB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1ADF7ACAC(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1AE02A644((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = *(*a3 + 2 * v7);
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1ADE5522C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1AE02A644((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1AE02A108(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1ADF7ACAC(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1AE02A820((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1ADE5522C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1AE02A820((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1ADF7ACAC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1ADF7AC20(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1AE02A644(__int16 *__dst, __int16 *__src, __int16 *a3, __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  v11 = a3 - __src;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
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

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v7;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    --v5;
    v16 = v12;
    do
    {
      v17 = v5 + 1;
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      --v5;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

uint64_t sub_1AE02A820(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1AE02AA0C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  return (*(v2 + 24))(v1);
}

uint64_t sub_1AE02AA44()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for Replica() + 20)) != 0;
  return sub_1ADDD8290(v1);
}

uint64_t sub_1AE02AA94(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(result, a2);

    return sub_1ADDCC35C(a3, a4);
  }

  return result;
}

uint64_t sub_1AE02AAE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1AE23BDDC() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1ADE744B8;

  return sub_1AE01DE50(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_1AE02AC40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1ADE74240;

  return sub_1AE01E874(a1, a2, v7, v6);
}

uint64_t sub_1AE02AD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE02ADD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE02AE1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1AE02AE44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1AE01864C(v1);
}

uint64_t sub_1AE02AE6C()
{
  v2 = v0;
  v3 = *v0;
  v4 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[9];
  result = sub_1AE23D6AC();
  if (!v1)
  {
    *&v93 = v4;
    v94 = v8;
    *&v95 = v7;
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v13 = sub_1ADDD9ECC(v11);
    v10[2] = v12;
    v91 = v10 + 2;
    v124 = v10;
    v10[3] = v13;
    v15 = v2[4];
    v14 = v2[5];
    result = swift_beginAccess();
    if (*(v15 + 48) == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v3 + 80);
      v17 = *(v3 + 88);
      v18 = type metadata accessor for Capsule();
      v19 = v14;

      v89 = v18;
      Capsule.finalizeTimestamps(_:)(v19);
      swift_endAccess();

      v20 = v2[5];
      LOBYTE(v108) = 1;
      type metadata accessor for CREncoder();
      swift_allocObject();
      CREncoder.init(_:version:fileSignature:)(v20, &v108, 0, 0xF000000000000000);
      result = sub_1AE018590(&v119);
      if (*&v121[0] != 1)
      {
        v100 = v119;
        v101 = v120;
        *&v102[0] = *&v121[0];
        v21 = sub_1ADE68C2C(&v100);
        v86 = v17;
        v87 = v16;
        v22 = v21;
        v23 = v101;
        v88 = v24;
        sub_1ADDCC35C(v100, *(&v100 + 1));
        v25 = v88;
        sub_1ADDCC35C(v23, *(&v23 + 1));

        MEMORY[0x1EEE9AC00](v26);
        *(&v84 - 4) = v2;
        *(&v84 - 3) = v22;
        v27 = v91;
        *(&v84 - 2) = v25;
        *(&v84 - 1) = v27;
        sub_1AE23D6AC();
        v85 = v22;
        v28 = v2[2];
        v90 = v2;
        if (!v28)
        {
          result = sub_1AE018590(&v96);
          v49 = *&v97[16];
          if (*&v97[16] != 1)
          {
            v50 = *v97;
            v51 = *&v97[8];
            v52 = v96;
            v100 = v96;
            v101 = *v97;
            *&v102[0] = *&v97[16];
            v53 = v95;
            sub_1ADDFC54C(v95);
            sub_1ADE92284(v52, *(&v52 + 1), v50, v51, v49);
            v54 = (v53 + *(v93 + 20));
            v55 = *v54;
            v56 = v54[1];
            sub_1AE23C1FC();
            sub_1ADDE53C0(v53, type metadata accessor for PartiallyOrderedReferenceMap);
            while (1)
            {
              v57 = v120;
              if (v120 >= DWORD1(v120))
              {
                v58 = sub_1AE23C20C();
                if (!v58)
                {
                  v105 = v121[4];
                  v106[0] = v121[5];
                  *(v106 + 11) = *(&v121[5] + 11);
                  v102[0] = v121[0];
                  v102[1] = v121[1];
                  v103 = v121[2];
                  v104 = v121[3];
                  v100 = v119;
                  v101 = v120;
                  sub_1ADDFD834(&v100);
                  v47 = v90;
                  goto LABEL_21;
                }
              }

              else
              {
                v58 = *(&v119 + 1);
                LODWORD(v120) = v120 + 1;
              }

              v59 = v58 + *(v58 + 24) + (~v57 << 6);
              v60 = *(v59 + 32);
              v61 = *(v59 + 40);
              v63 = *(v59 + 64);
              v62 = *(v59 + 72);
              v65 = *(v59 + 80);
              v64 = *(v59 + 88);
              *&v116 = v60;
              *(&v116 + 1) = v61;
              v95 = *(v59 + 48);
              v108 = v95;
              *&v109 = v63;
              *(&v109 + 1) = v62;
              *&v110 = v65;
              *(&v110 + 1) = v64;
              sub_1ADDD86D8(v60, v61);

              sub_1AE01FE30(&v116, &v108, v90, v124);

              sub_1ADDCC35C(v60, v61);
            }
          }

          goto LABEL_27;
        }

        v84 = v28;
        *&v92 = v2[3];
        result = sub_1AE018590(&v116);
        v29 = v118;
        if (v118 != 1)
        {
          v30 = *(&v117 + 1);
          v31 = v117;
          v32 = *(&v116 + 1);
          v33 = v116;
          v100 = v116;
          v101 = v117;
          *&v102[0] = v118;
          v34 = v95;
          sub_1ADDFC54C(v95);
          sub_1ADE42C78(v84);
          sub_1ADE92284(v33, v32, v31, v30, v29);
          v35 = (v34 + *(v93 + 20));
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          v39 = *(v34 + *(v93 + 24));

          v41 = sub_1ADEBE8DC(v40);
          sub_1ADDE53C0(v34, type metadata accessor for PartiallyOrderedReferenceMap);
          sub_1ADECD850(&v108);
          *(&v121[5] + 8) = v113;
          *(&v121[6] + 8) = v114;
          *(&v121[7] + 8) = v115[0];
          *(&v121[8] + 3) = *(v115 + 11);
          *(&v121[1] + 8) = v109;
          *(&v121[2] + 8) = v110;
          *(&v121[3] + 8) = v111;
          *(&v121[4] + 8) = v112;
          *(v121 + 8) = v108;
          *&v119 = v36;
          *(&v119 + 1) = v37;
          *&v120 = v38;
          *(&v120 + 1) = v41;
          *&v121[0] = 0;
          *(&v121[9] + 1) = v84;
          *&v122 = v92;
          BYTE8(v122) = 0;
          v123 = 0;
          sub_1AE03163C(&v100);
          v42 = *&v102[0];
          if (*&v102[0])
          {
            v43 = v100;
            v44 = v101;
            v45 = *(v102 + 8);
            v46 = *(&v102[1] + 1);
            v47 = v90;
            v48 = v124;
            do
            {
              v92 = v44;
              v93 = v43;
              v99 = v43;
              v95 = v45;
              v96 = v44;
              *v97 = v42;
              *&v97[8] = v45;
              v98 = v46;
              sub_1AE01FE30(&v99, &v96, v47, v48);

              sub_1ADDCC35C(v93, *(&v93 + 1));
              sub_1AE03163C(&v100);
              v43 = v100;
              v44 = v101;
              v42 = *&v102[0];
              v45 = *(v102 + 8);
              v46 = *(&v102[1] + 1);
            }

            while (*&v102[0]);
          }

          else
          {
            v47 = v90;
          }

          v106[3] = v121[8];
          v106[4] = v121[9];
          v106[5] = v122;
          v107 = v123;
          v105 = v121[4];
          v106[0] = v121[5];
          v106[1] = v121[6];
          v106[2] = v121[7];
          v102[0] = v121[0];
          v102[1] = v121[1];
          v103 = v121[2];
          v104 = v121[3];
          v100 = v119;
          v101 = v120;
          sub_1ADECD8C8(&v100);
LABEL_21:
          result = sub_1AE018590(&v119);
          v66 = *&v121[0];
          if (*&v121[0] != 1)
          {
            v67 = v47;
            v68 = *(&v120 + 1);
            v69 = v120;
            v70 = *(&v119 + 1);
            v71 = v119;
            v100 = v119;
            v101 = v120;
            *&v102[0] = *&v121[0];
            Capsule.version.getter(&v108);
            sub_1ADE92284(v71, v70, v69, v68, v66);
            v72 = v67[2];
            v73 = v67[3];
            *(v67 + 1) = v108;
            sub_1ADE42CB8(v72);
            v74 = type metadata accessor for CRSQLStoreBundleCapsule();
            v75 = v67[5];
            v76 = *(v74 + 48);
            v77 = *(v74 + 52);
            v78 = swift_allocObject();
            v79 = v75;

            sub_1AE020CC8(v79, v67);
            *&v108 = v78;
            swift_beginAccess();
            v80 = v124[2];
            v81 = v124[3];
            v100 = xmmword_1AE2427C0;

            sub_1ADF9B34C(v80, v81, 0, &v100, v74, &off_1F23C3C18);

            v82 = *(*(v78 + 32) + OBJC_IVAR___CRContext_assetManager);
            *&v100 = MEMORY[0x1E69E7CC0];
            v83 = v67[7];

            sub_1ADE475A4(v83, &v100);
            sub_1ADDCC35C(v85, v88);

            return v100;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1AE02BAE0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1ADE744B8;

  return sub_1AE01F7C4(a1, a2, v7, v6);
}

uint64_t sub_1AE02BB94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE74240;

  return sub_1AE1A7FFC(a1, v4);
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AE02BD5C@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v103 = a2;
  v131 = *MEMORY[0x1E69E9840];
  v106 = sub_1AE23BFEC();
  v102 = *(v106 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[12];
  v6 = a1[13];
  v8 = a1[10];
  v7 = a1[11];
  if (v5)
  {
    v9 = a1[10];
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = a1[11];
  }

  else
  {
    v10 = 0xC000000000000000;
  }

  if (v5)
  {
    v11 = a1[12];
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v108 = v11;
  sub_1ADE73C1C(v8, v7, v5);
  sub_1ADE73C1C(v8, v7, v5);
  sub_1ADDD86D8(v9, v10);
  sub_1ADDCC35C(v9, v10);

  v12 = v109;
  v13 = sub_1ADDE70B0(v9, v10);
  v109 = v12;
  if (v12)
  {
    sub_1ADE73B5C(v8, v7, v5);
    result = sub_1ADDCC35C(v9, v10);
    goto LABEL_62;
  }

  v15 = v13;
  v101 = a1;
  sub_1ADDCC35C(v9, v10);
  v16 = v104;
  v17 = *(v104 + 16);
  *(v104 + 16) = v15;

  v18 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  if (!v5)
  {
    v7 = 0xC000000000000000;
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDCC35C(v19, v7);

  v20 = *(v16 + 32);
  *(v16 + 32) = v5;

  v21 = v101;
  v22 = *v101;
  v23 = 0xF000000000000007;
  v24 = v109;
  if ((~*v101 & 0xF000000000000007) == 0)
  {
    goto LABEL_18;
  }

  if (!(v22 >> 62))
  {

    v82 = sub_1AE02CA90(v22);
    if (!v24)
    {
      v100 = v82;
      sub_1ADE73AC8(v22);
      sub_1ADE73AC8(0xF000000000000007);
      goto LABEL_19;
    }

    goto LABEL_52;
  }

  if (v22 >> 62 != 1)
  {
    v84 = v22 & 0x3FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v85 = v24;
    v86 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v87 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    v88 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    if (v86)
    {
      v18 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v89 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    }

    else
    {
      v89 = 0;
    }

    v108 = v89;
    if (v86)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0xC000000000000000;
    }

    sub_1ADE73AB0(v22);
    sub_1ADE73AB0(v22);
    sub_1ADE56F74(v86, v87, v88);
    sub_1AE02EA38(v18);
    if (!v85)
    {
      v109 = v93;
      v95 = v92;
      v96 = v91;

      sub_1ADDCC35C(v108, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v84 = sub_1ADDE4C34(v22 & 0x3FFFFFFFFFFFFFFFLL);
      }

      swift_beginAccess();
      v97 = *(v84 + 64);
      v98 = *(v84 + 72);
      v99 = *(v84 + 80);
      *(v84 + 64) = v96;
      *(v84 + 72) = v95;
      *(v84 + 80) = v109;
      sub_1ADE73D6C(v97, v98, v99);
      sub_1ADE73AC8(v22);
      sub_1ADE73AC8(0xF000000000000007);
      v100 = v84 | 0x8000000000000000;
      v24 = 0;
      v18 = MEMORY[0x1E69E7CC0];
      v16 = v104;
      v21 = v101;
      goto LABEL_19;
    }

    sub_1ADDCC35C(v108, v90);
    sub_1ADE73AC8(v22);
    sub_1ADE73AC8(v22);
    v120 = 0xF000000000000007;
    v121 = 0;
    v122 = 0;
    v123 = MEMORY[0x1E69E7CC0];
    v124 = MEMORY[0x1E69E7CC0];
    v125 = xmmword_1AE241910;
    v126 = MEMORY[0x1E69E7CC0];
    v83 = 0uLL;
    v127 = 0u;
    v128 = 0u;
LABEL_61:
    v129 = v83;
    v130 = v83;
    result = sub_1ADE6AF00(&v120);
    goto LABEL_62;
  }

  v48 = sub_1AE02D2AC(v22 & 0x3FFFFFFFFFFFFFFFLL);
  if (v24)
  {
LABEL_52:
    sub_1ADE73AC8(v22);
    v120 = 0xF000000000000007;
    v121 = 0;
    v122 = 0;
    v123 = v18;
    v125 = xmmword_1AE241910;
    v124 = v18;
    v126 = v18;
    v83 = 0uLL;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_61;
  }

  v49 = v48;
  sub_1ADE73AC8(v22);
  sub_1ADE73AC8(0xF000000000000007);
  v23 = v49 | 0x4000000000000000;
LABEL_18:
  v100 = v23;
LABEL_19:
  v25 = v21[3];
  v26 = *(v25 + 16);
  if (v26)
  {
    v109 = v24;
    *&v111 = v18;
    sub_1AE23DB1C();
    v27 = (v25 + 32);
    do
    {
      v107 = v27;
      v108 = v26;
      v32 = *v27;
      swift_beginAccess();
      v34 = v32[8];
      v33 = v32[9];
      v35 = v32[10];
      if (v34)
      {
        v36 = v32[8];
      }

      else
      {
        v36 = v18;
      }

      if (v34)
      {
        v37 = v32[9];
      }

      else
      {
        v37 = 0;
      }

      if (v34)
      {
        v38 = v32[10];
      }

      else
      {
        v38 = 0xC000000000000000;
      }

      swift_retain_n();
      sub_1ADE56F74(v34, v33, v35);
      v39 = v109;
      sub_1AE02EA38(v36);
      v109 = v39;
      if (v39)
      {

        sub_1ADDCC35C(v37, v38);

        v120 = v100;
        v121 = 0;
        v122 = 0;
        v123 = MEMORY[0x1E69E7CC0];
        v124 = MEMORY[0x1E69E7CC0];
        v125 = xmmword_1AE241910;
        v126 = MEMORY[0x1E69E7CC0];
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        result = sub_1ADE6AF00(&v120);
        goto LABEL_62;
      }

      v43 = v40;
      v44 = v41;
      v45 = v42;

      sub_1ADDCC35C(v37, v38);
      v46 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();

        v46 = sub_1ADDE4C34(v47);
      }

      swift_beginAccess();
      v28 = v46[8];
      v29 = v46[9];
      v30 = v46[10];
      v46[8] = v43;
      v46[9] = v44;
      v46[10] = v45;
      sub_1ADE73D6C(v28, v29, v30);
      sub_1AE23DAEC();
      v31 = *(v111 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v27 = v107 + 1;
      v26 = v108 - 1;
      v18 = MEMORY[0x1E69E7CC0];
      v16 = v104;
    }

    while (v108 != 1);

    v50 = v111;
    v24 = v109;
    v21 = v101;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  v51 = v21[8];
  v52 = v103;
  if (v51)
  {
    v53 = v21[9];
    v54 = v21[8];

    v108 = v53;

    sub_1ADE42CB8(0);
  }

  else
  {
    v108 = 0;
  }

  v55 = *(*(v16 + 16) + 16);
  if (v55 >> 59)
  {
    __break(1u);
  }

  v101 = v51;
  v107 = v50;
  v57 = sub_1ADDF6E48(16 * v55);
  v118 = v57;
  v119 = v56;
  v58 = *(v16 + 16);
  v59 = *(v58 + 16);
  if (v59)
  {
    v109 = v24;
    v60 = *(v102 + 16);
    v61 = v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v62 = *(v102 + 72);
    v63 = (v102 + 8);
    v102 = v58;

    v65 = v105;
    v64 = v106;
    do
    {
      v60(v65, v61, v64);
      v120 = sub_1AE23BFCC();
      LOWORD(v121) = v66;
      BYTE2(v121) = v67;
      BYTE3(v121) = v68;
      BYTE4(v121) = v69;
      BYTE5(v121) = v70;
      BYTE6(v121) = v71;
      HIBYTE(v121) = v72;
      sub_1AE23BFCC();
      v73 = sub_1AE23BBCC();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      sub_1AE23BB6C();
      sub_1AE23BEEC();
      v65 = v105;
      v64 = v106;

      (*v63)(v65, v64);
      v61 += v62;
      --v59;
    }

    while (v59);

    v57 = v118;
    v76 = v119;
    v52 = v103;
    v16 = v104;
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v76 = v56;
  }

  sub_1ADDD86D8(v57, v76);
  sub_1ADE73C1C(0, 0, 0);
  sub_1ADDCC35C(0, 0xC000000000000000);
  sub_1ADE73B5C(0, 0, 0);
  v77 = *(v16 + 32);

  sub_1ADE73C1C(v57, v76, v18);
  sub_1ADDCC35C(v57, v76);

  sub_1ADE73B5C(v57, v76, v18);
  v111 = v100;
  *&v112 = 0;
  *(&v112 + 1) = v107;
  *(v113 + 8) = xmmword_1AE241910;
  *&v113[0] = v18;
  *(&v113[1] + 1) = v18;
  *&v114 = v101;
  *(&v114 + 1) = v108;
  *&v115 = v57;
  *(&v115 + 1) = v76;
  *&v116 = v77;
  *(&v116 + 1) = v18;
  v117 = 0uLL;
  v120 = v100;
  v121 = 0;
  v122 = 0;
  v123 = v107;
  v125 = xmmword_1AE241910;
  v124 = v18;
  v126 = v18;
  *&v127 = v101;
  *(&v127 + 1) = v108;
  *&v128 = v57;
  *(&v128 + 1) = v76;
  *&v129 = v77;
  *(&v129 + 1) = v18;
  v130 = 0uLL;
  sub_1ADE73B00(&v111, &v110);
  result = sub_1ADE6AF00(&v120);
  v78 = v115;
  v52[4] = v114;
  v52[5] = v78;
  v79 = v117;
  v52[6] = v116;
  v52[7] = v79;
  v80 = v112;
  *v52 = v111;
  v52[1] = v80;
  v81 = v113[1];
  v52[2] = v113[0];
  v52[3] = v81;
LABEL_62:
  v94 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1AE02C6F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v3)
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = 0xC000000000000000;
  }

  if (v3)
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
  }

  sub_1ADE73C1C(*(a1 + 56), v5, v3);
  sub_1ADE73C1C(v6, v5, v3);
  sub_1ADDD86D8(v7, v8);
  sub_1ADDCC35C(v7, v8);

  v11 = sub_1ADDE70B0(v7, v8);
  if (v60)
  {
    sub_1ADE73B5C(v6, v5, v3);
    sub_1ADDCC35C(v7, v8);
  }

  else
  {
    v60 = 0;
    v13 = v11;
    sub_1ADDCC35C(v7, v8);
    v14 = *(v44 + 16);
    *(v44 + 16) = v13;

    v15 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0;
    }

    if (v3)
    {
      v17 = v5;
    }

    else
    {
      v17 = 0xC000000000000000;
    }

    if (v3)
    {
      v18 = v3;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDCC35C(v16, v17);

    v19 = *(v44 + 32);
    *(v44 + 32) = v18;

    v59[0] = *a1;
    v20 = v59[0];
    v21 = *(a1 + 24);
    v22 = *(a1 + 56);
    v56 = *(a1 + 40);
    v57 = v22;
    v58 = *(a1 + 72);
    v54 = *(a1 + 8);
    v55 = v21;
    v23 = *(v59[0] + 16);
    if (v23)
    {
      sub_1ADE73CBC(a1, &v48);
      *v47 = v15;
      sub_1ADE6F2C4(0, v23, 0);
      v24 = v15;
      v42 = v20;
      v25 = (v20 + 48);
      while (1)
      {
        v45 = v23;
        v26 = *(v25 - 2);
        v27 = *(v25 - 1);
        v28 = *v25;

        sub_1ADDD86D8(v27, v28);
        v29 = v60;
        sub_1AE02EA38(v26);
        v60 = v29;
        if (v29)
        {
          break;
        }

        v33 = v30;
        v34 = v31;
        v35 = v32;

        sub_1ADDCC35C(v27, v28);
        *v47 = v24;
        v37 = *(v24 + 16);
        v36 = *(v24 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1ADE6F2C4((v36 > 1), v37 + 1, 1);
          v24 = *v47;
        }

        v25 += 3;
        *(v24 + 16) = v37 + 1;
        v38 = (v24 + 24 * v37);
        v38[4] = v33;
        v38[5] = v34;
        v38[6] = v35;
        v23 = v45 - 1;
        if (v45 == 1)
        {
          sub_1ADDCEDE0(v59, &qword_1EB5BCCD0, &qword_1AE251C08);
          goto LABEL_29;
        }
      }

      sub_1ADDCC35C(v27, v28);

      v48 = v42;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      v49 = v54;
      v50 = v55;
      sub_1ADE73C68(&v48);
    }

    else
    {
      sub_1ADE73CBC(a1, &v48);
      sub_1ADDCEDE0(v59, &qword_1EB5BCCD0, &qword_1AE251C08);
      v24 = MEMORY[0x1E69E7CC0];
LABEL_29:
      *v47 = v24;
      *&v47[24] = v55;
      *&v47[40] = v56;
      *&v47[56] = v57;
      *&v47[72] = v58;
      *&v47[8] = v54;
      v48 = v24;
      v52 = v57;
      v53 = v58;
      v50 = v55;
      v51 = v56;
      v49 = v54;
      sub_1ADE73CBC(v47, v46);
      sub_1ADE73C68(&v48);
      v39 = *&v47[48];
      v40 = *&v47[64];
      *(a2 + 32) = *&v47[32];
      *(a2 + 48) = v39;
      *(a2 + 64) = v40;
      *(a2 + 80) = *&v47[80];
      result = *v47;
      v41 = *&v47[16];
      *a2 = *v47;
      *(a2 + 16) = v41;
    }
  }

  return result;
}

uint64_t sub_1AE02CA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v4 = v2 >> 60;
    if ((v2 >> 60) <= 4)
    {
      if (v4 <= 1)
      {
        if (v4)
        {
          v62 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v95[1] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v95[2] = v62;
          v63 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v95[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v95[4] = v63;
          v95[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          sub_1ADE5215C(v2);
          sub_1ADFAEE10(v95, &v84);
          sub_1AE02DEDC(v95, v91);
          sub_1ADFAECE8(v95);
          if (!v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = swift_allocObject();
              v65 = *(inited + 16);
              *(v64 + 16) = v65;
              sub_1ADE5215C(v65);

              inited = v64;
            }

            v66 = swift_allocObject();
            v67 = v91[3];
            *(v66 + 48) = v91[2];
            *(v66 + 64) = v67;
            *(v66 + 80) = v91[4];
            v68 = v91[1];
            *(v66 + 16) = v91[0];
            *(v66 + 32) = v68;
            v17 = v66 | 0x1000000000000000;
            goto LABEL_51;
          }
        }

        else
        {
          v25 = *(v2 + 16);
          sub_1ADE5215C(v2);

          v27 = sub_1AE02DD40(v26);

          if (!v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = swift_allocObject();
              v29 = *(inited + 16);
              *(v28 + 16) = v29;
              sub_1ADE5215C(v29);

              inited = v28;
            }

            v30 = swift_allocObject();
            *(v30 + 16) = v27;
            v31 = *(inited + 16);
            *(inited + 16) = v30;
            v32 = v31;
            goto LABEL_52;
          }
        }
      }

      else if (v4 == 2)
      {
        v35 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v96[1] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v96[2] = v35;
        v36 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v96[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v96[4] = v36;
        v96[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v2);
        sub_1ADFAEE10(v96, &v84);
        sub_1AE02DEDC(v96, v92);
        sub_1ADFAECE8(v96);
        if (!v1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = swift_allocObject();
            v38 = *(inited + 16);
            *(v37 + 16) = v38;
            sub_1ADE5215C(v38);

            inited = v37;
          }

          v39 = swift_allocObject();
          v40 = v92[3];
          *(v39 + 48) = v92[2];
          *(v39 + 64) = v40;
          *(v39 + 80) = v92[4];
          v41 = v92[1];
          *(v39 + 16) = v92[0];
          *(v39 + 32) = v41;
          v17 = v39 | 0x2000000000000000;
          goto LABEL_51;
        }
      }

      else
      {
        if (v4 != 3)
        {
          v50 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v87 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v88 = v50;
          v89 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v90 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v51 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v84 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v85 = v51;
          v86 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          sub_1ADE5215C(v2);
          sub_1ADE51B64(&v84, &v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = swift_allocObject();
            v53 = *(inited + 16);
            *(v52 + 16) = v53;
            sub_1ADE5215C(v53);

            inited = v52;
          }

          v54 = swift_allocObject();
          v55 = v89;
          *(v54 + 80) = v88;
          *(v54 + 96) = v55;
          *(v54 + 112) = v90;
          v56 = v85;
          *(v54 + 16) = v84;
          *(v54 + 32) = v56;
          v57 = v87;
          *(v54 + 48) = v86;
          *(v54 + 64) = v57;
          v17 = v54 | 0x4000000000000000;
          goto LABEL_51;
        }

        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        sub_1ADE5215C(v2);

        v99 = sub_1AE02E2D4(v5, v6);
        v9 = v8;
        v11 = v10;

        if (!v1)
        {
          v12 = v11;
          v13 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = swift_allocObject();
            v15 = *(inited + 16);
            *(v14 + 16) = v15;
            sub_1ADE5215C(v15);

            inited = v14;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = v13;
          *(v16 + 24) = v9;
          *(v16 + 32) = v12;
          v17 = v16 | 0x3000000000000000;
LABEL_51:
          v32 = *(inited + 16);
          *(inited + 16) = v17;
LABEL_52:
          sub_1ADE52174(v32);
          sub_1ADE52174(v2);
          return inited;
        }
      }

LABEL_44:
      sub_1ADE52174(v2);
      return inited;
    }

    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v33 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v97[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v97[4] = v33;
        v97[5] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v98 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v34 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v97[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v97[1] = v34;
        v97[2] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1ADE5215C(v2);
        sub_1ADE51B64(v97, &v84);
        sub_1AE02E3EC(v97, v93);
        if (!v1)
        {
          sub_1AE030800(v97);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = swift_allocObject();
            v73 = *(inited + 16);
            *(v72 + 16) = v73;
            sub_1ADE5215C(v73);

            inited = v72;
          }

          v74 = swift_allocObject();
          v75 = v93[5];
          *(v74 + 80) = v93[4];
          *(v74 + 96) = v75;
          *(v74 + 112) = v94;
          v76 = v93[1];
          *(v74 + 16) = v93[0];
          *(v74 + 32) = v76;
          v77 = v93[3];
          *(v74 + 48) = v93[2];
          *(v74 + 64) = v77;
          v17 = v74 | 0x5000000000000000;
          goto LABEL_51;
        }

        sub_1AE030800(v97);
        goto LABEL_44;
      }

      v69 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1ADE5215C(v2);

      v71 = sub_1AE02E614(v70);
      if (!v1)
      {
        v78 = v71;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = swift_allocObject();
          v80 = *(inited + 16);
          *(v79 + 16) = v80;
          sub_1ADE5215C(v80);

          inited = v79;
        }

        v81 = swift_allocObject();
        *(v81 + 16) = v78;
        v17 = v81 | 0x6000000000000000;
        goto LABEL_51;
      }
    }

    else
    {
      if (v4 == 7)
      {
        v43 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v42 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v44 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v45 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v46 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1ADE5215C(v2);
        sub_1ADE42C78(v42);
        sub_1ADE42C78(v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = swift_allocObject();
          v48 = *(inited + 16);
          *(v47 + 16) = v48;
          sub_1ADE5215C(v48);

          inited = v47;
        }

        v49 = swift_allocObject();
        *(v49 + 16) = v43;
        *(v49 + 24) = v42;
        *(v49 + 32) = v44;
        *(v49 + 40) = v45;
        *(v49 + 48) = v46;
        v17 = v49 | 0x7000000000000000;
        goto LABEL_51;
      }

      if (v4 != 8)
      {
        v58 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = swift_allocObject();
          v60 = *(inited + 16);
          *(v59 + 16) = v60;
          sub_1ADE5215C(v60);

          inited = v59;
        }

        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        v17 = v61 | 0x9000000000000000;
        goto LABEL_51;
      }

      v18 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1ADE5215C(v2);

      v20 = sub_1AE02E614(v19);
      if (!v1)
      {
        v21 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = swift_allocObject();
          v23 = *(inited + 16);
          *(v22 + 16) = v23;
          sub_1ADE5215C(v23);

          inited = v22;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        v17 = v24 | 0x8000000000000000;
        goto LABEL_51;
      }
    }

    goto LABEL_44;
  }

  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}