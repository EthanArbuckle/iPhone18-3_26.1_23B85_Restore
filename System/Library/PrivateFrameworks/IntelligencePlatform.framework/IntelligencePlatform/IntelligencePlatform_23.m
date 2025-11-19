uint64_t sub_1ABC1BE80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v11 = a3;
  result = sub_1ABC1BEC4(a1, v6, v7, v8, v9, &v11);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABC1BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v105 = a1;
  v103 = sub_1ABF223D4();
  v9 = sub_1ABA7BB64(v103);
  v107 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v100 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = v91 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64(v16);
  v108 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7BB64(v21);
  v93 = v22;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v91 - v26;
  v28 = *a6;
  if ((v28 - 27) > 2)
  {
    v99 = a4;
    v104 = a5;
    v30 = v28;
    isUniquelyReferenced_nonNull_native = sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
    v92 = sub_1ABF239C4();

    sub_1ABF22CE4();
    v101 = v30;
    LOBYTE(v115[0]) = v30;
    PersonEntityTagType.rawValue.getter();
    v113 = sub_1ABF22D14();
    v114 = MEMORY[0x1E69A0050];
    sub_1ABA93DC0(&v111);
    sub_1ABF22D24();
    v110[3] = MEMORY[0x1E69E6530];
    v110[4] = MEMORY[0x1E69A0178];
    v110[0] = 0;
    v115[3] = sub_1ABF22424();
    v115[4] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v115);
    sub_1ABF228B4();
    sub_1ABA84B54(v110);
    sub_1ABA84B54(&v111);
    sub_1ABF22CA4();
    sub_1ABA84B54(v115);
    sub_1ABA7D098();
    sub_1ABAB47C4(v32, v33, v34);
    v35 = v105;
    v36 = v116;
    v37 = sub_1ABF22294();
    if (v36)
    {
      v38 = sub_1ABA949E8();
      v39(v38);
      (*(v93 + 8))(v27, v21);
      isUniquelyReferenced_nonNull_native = v36;
      v109 = 0;
LABEL_25:
      v45 = v104;
      i = v99;
      if (qword_1ED870750 != -1)
      {
LABEL_37:
        sub_1ABA7D72C();
      }

      v77 = sub_1ABF237F4();
      sub_1ABA7AA24(v77, qword_1ED870758);
      v78 = isUniquelyReferenced_nonNull_native;
      v79 = sub_1ABF237D4();
      v80 = sub_1ABF24664();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v115[0] = v116;
        *v81 = 136315394;
        v83 = v101;
        LOBYTE(v111) = v101;
        v84 = PersonEntityTagType.rawValue.getter();
        v86 = sub_1ABADD6D8(v84, v85, v115);

        *(v81 + 4) = v86;
        v35 = v105;
        *(v81 + 12) = 2112;
        v87 = isUniquelyReferenced_nonNull_native;
        v88 = _swift_stdlib_bridgeErrorToNSError();
        *(v81 + 14) = v88;
        *v82 = v88;
        _os_log_impl(&dword_1ABA78000, v79, v80, "Failed to query entityTagging view during ET query. This is not fatal, defaulting to graph results. %s Error: %@", v81, 0x16u);
        sub_1ABAB480C(v82, &unk_1EB4D57F0, &qword_1ABF390C0);
        sub_1ABA7BC34();
        sub_1ABA84B54(v116);
        sub_1ABA7BC34();
        v45 = v104;
        sub_1ABA7BC34();

        v43 = v92;
      }

      else
      {

        v43 = v92;
LABEL_29:
        v83 = v101;
      }

      LOBYTE(v115[0]) = v83;
      v89 = v109;
      v90 = sub_1ABC1C950(v35, i, v45, v115);
      if (v89)
      {
      }

      else
      {
        return sub_1ABAB48D8(v43, v90, sub_1ABC1D8D4, sub_1ABC1D580);
      }
    }

    else
    {
      v40 = v37;
      v109 = 0;
      v91[0] = v27;
      v91[1] = v21;
      v41 = sub_1ABA949E8();
      v42(v41);
      v43 = sub_1ABF239C4();
      v97 = sub_1ABAAB7C8(v40);
      v44 = 0;
      v96 = v40 & 0xC000000000000001;
      v98 = v40;
      v95 = v40 & 0xFFFFFFFFFFFFFF8;
      v94 = (v107 + 8);
      v45 = v104;
      for (i = v99; ; i = v99)
      {
        v47 = v103;
        v48 = v102;
        if (v97 == v44)
        {
          v69 = sub_1ABA80AB8();
          v70(v69);

          goto LABEL_29;
        }

        if (v96)
        {
          v35 = MEMORY[0x1AC5AA170](v44, v98);
          i = v100;
        }

        else
        {
          i = v100;
          if (v44 >= *(v95 + 16))
          {
            goto LABEL_34;
          }

          v35 = *(v98 + 8 * v44 + 32);
        }

        if (__OFADD__(v44, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v106 = v44;
        v49 = v109;
        sub_1ABB33C40();
        if (v49)
        {
          break;
        }

        v107 = sub_1ABF251F4();
        LODWORD(v108) = v50;
        v51 = *v94;
        (*v94)(v48, v47);
        LOBYTE(v115[0]) = v101;
        PersonEntityTagType.rawValue.getter();
        v116 = v35;
        sub_1ABB33C40();

        v52 = sub_1ABF24334();
        v53 = i;
        i = v52;
        v55 = v54;
        v51(v53, v47);
        if (v55)
        {

          v115[0] = 0;
          v115[1] = 0xE000000000000000;
          sub_1ABF24AB4();

          v111 = 0xD00000000000001FLL;
          v112 = 0x80000001ABF8C190;
          LOBYTE(v110[0]) = v101;
          PersonEntityTagType.rawValue.getter();
          sub_1ABF22BC4();

          sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
          v71 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v71);

          MEMORY[0x1AC5A9410](46, 0xE100000000000000);
          v72 = v111;
          v73 = v112;
          sub_1ABB93C20();
          isUniquelyReferenced_nonNull_native = swift_allocError();
          *v74 = v72;
          *(v74 + 8) = v73;
          *(v74 + 16) = 1;
          swift_willThrow();

          v75 = sub_1ABA80AB8();
          v76(v75);
          v109 = 0;
          v35 = v105;
          goto LABEL_25;
        }

        sub_1ABB32E40();
        v109 = 0;
        v57 = v56;
        v45 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v43;
        v59 = sub_1ABA94FC8(v57, v45);
        if (__OFADD__(*(v43 + 16), (v60 & 1) == 0))
        {
          goto LABEL_35;
        }

        v61 = v59;
        v62 = v60;
        sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
        if (sub_1ABF24C64())
        {
          v63 = sub_1ABA94FC8(v57, v45);
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_39;
          }

          v61 = v63;
        }

        v43 = v115[0];
        if (v62)
        {
          sub_1ABA934F8();
        }

        else
        {
          *(v115[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v65 = (*(v43 + 48) + 16 * v61);
          *v65 = v57;
          v65[1] = v45;
          sub_1ABA934F8();
          v66 = *(v43 + 16);
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_36;
          }

          *(v43 + 16) = v68;
        }

        v35 = v105;
        v44 = v106 + 1;
        v45 = v104;
      }

      swift_unexpectedError();
      __break(1u);
LABEL_39:
      result = sub_1ABF25104();
      __break(1u);
    }
  }

  else
  {
    LOBYTE(v115[0]) = *a6;
    return sub_1ABC1C950(v105, a4, a5, v115);
  }

  return result;
}

uint64_t sub_1ABC1C950(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v40 = a1;
  v8 = sub_1ABF22854();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  if (qword_1EB4D0370 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v14 = sub_1ABAD59D8(v13, qword_1EB4D57D0);
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v37 = v12;
    v38 = v9;
    v39 = v8;
    *&v41[0] = 0;
    *(&v41[0] + 1) = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004BLL, 0x80000001ABF8C1B0);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF8C200);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD00000000000003CLL, 0x80000001ABF8C220);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD00000000000002ELL, 0x80000001ABF8C260);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD000000000000092, 0x80000001ABF8C290);
    v16 = *(v15 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v17 = v43;
      v18 = *(v43 + 2);
      v19 = 16 * v18;
      do
      {
        v43 = v17;
        v20 = v18 + 1;
        if (v18 >= *(v17 + 24) >> 1)
        {
          sub_1ABADDBD4();
          v17 = v43;
        }

        *(v17 + 16) = v20;
        v21 = v17 + v19;
        *(v21 + 32) = 63;
        *(v21 + 40) = 0xE100000000000000;
        v19 += 16;
        v18 = v20;
        --v16;
      }

      while (v16);
    }

    v43 = v17;
    v13 = &unk_1EB4D33D0;
    v12 = &unk_1ABF3A8C0;
    a2 = sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v22 = sub_1ABF23B54();
    v24 = v23;

    MEMORY[0x1AC5A9410](v22, v24);

    MEMORY[0x1AC5A9410](0xD0000000000000A3, 0x80000001ABF8C330);
    sub_1ABF22BB4();
    *&v41[0] = v15;
    sub_1ABAB47C4(&qword_1EB4CE710, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v25 = v37;
    sub_1ABF22864();
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v26 = sub_1ABF22B84();
    if (v4)
    {

      sub_1ABAB480C(v41, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      return (*(v38 + 8))(v25, v39);
    }

    v36 = v26;

    sub_1ABAB480C(v41, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v38 + 8))(v25, v39);
    sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
    *&v41[0] = sub_1ABF239C4();
    v8 = sub_1ABAAB7C8(v36);
    v9 = 0;
    a3 = v36 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8 == v9)
      {

        return *&v41[0];
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1AC5AA170](v9, v36);
      }

      else
      {
        if (v9 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(v36 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v43 = v12;
      sub_1ABC1CFBC(v41, &v43);

      ++v9;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  if (qword_1ED870750 != -1)
  {
    swift_once();
  }

  v28 = sub_1ABF237F4();
  sub_1ABA7AA24(v28, qword_1ED870758);
  v29 = sub_1ABF237D4();
  v30 = sub_1ABF24664();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41[0] = v32;
    *v31 = 136315138;
    LOBYTE(v43) = v13;
    v33 = PersonEntityTagType.rawValue.getter();
    v35 = sub_1ABADD6D8(v33, v34, v41);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1ABA78000, v29, v30, "Entity Tagging knosisTagLookup: Tag type not supported by DB query: %s", v31, 0xCu);
    sub_1ABA84B54(v32);
    MEMORY[0x1AC5AB8B0](v32, -1, -1);
    MEMORY[0x1AC5AB8B0](v31, -1, -1);
  }

  sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
  return sub_1ABF239C4();
}

uint64_t sub_1ABC1CFBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1ABB33DA0();
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v5 = sub_1ABF23C64();
    EntityIdentifier.init(_:)(v5, v6, &v16);
    if (v17)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000038, 0x80000001ABF8C400);
      sub_1ABB33DA0();
      v7 = sub_1ABF23C64();
      MEMORY[0x1AC5A9410](v7);

      v8 = v16;
      v9 = v17;
      sub_1ABB93C20();
      swift_allocError();
      *v10 = v8;
      *(v10 + 8) = v9;
      *(v10 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v12 = v16;
      sub_1ABB33DA0();
      v13 = sub_1ABF23C64();
      sub_1ABB24D04(v13, v14);
      v16 = v12;
      sub_1ABF24FF4();
      v15 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *a1;
      sub_1ABAFBE2C();

      *a1 = v16;
    }
  }

  return result;
}

void sub_1ABC1D1DC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1ABB32E40();
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    if (qword_1EB4D0378 != -1)
    {
      swift_once();
    }

    v9 = off_1EB4D57D8;
    if (*(off_1EB4D57D8 + 2) && (v10 = sub_1ABA94FC8(v7, v8), (v11 & 1) != 0))
    {
      v12 = *(v9[7] + v10);
      sub_1ABB33DA0();
      v13 = sub_1ABF23C64();
      v15 = sub_1ABB24D04(v13, v14);
      if (v16)
      {
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD00000000000003CLL, 0x80000001ABF8C620);
        MEMORY[0x1AC5A9410](v7, v8);

        sub_1ABB93C20();
        swift_allocError();
        *v17 = 0;
        *(v17 + 8) = 0xE000000000000000;
        *(v17 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        v24 = *&v15;

        v25 = v24;
        LOBYTE(v36) = v12;
        v26 = PersonEntityTagType.rawValue.getter();
        v28 = COERCE_DOUBLE(sub_1ABAD5984(v26, v27, *a1));
        v30 = v29;

        if (v30)
        {
          v31 = 0.0;
        }

        else
        {
          v31 = v28;
        }

        v32 = PersonEntityTagType.rawValue.getter();
        v34 = v33;
        if (v31 > v24)
        {
          v25 = v31;
        }

        v35 = *a1;
        swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        sub_1ABAFBCFC(v32, v34, v25);

        *a1 = v36;
      }
    }

    else
    {
      if (qword_1ED870750 != -1)
      {
        swift_once();
      }

      v18 = sub_1ABF237F4();
      sub_1ABA7AA24(v18, qword_1ED870758);

      v19 = sub_1ABF237D4();
      v20 = sub_1ABF24664();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v22;
        *v21 = 136315138;
        v23 = sub_1ABADD6D8(v7, v8, &v36);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1ABA78000, v19, v20, "Entity Tagging: Unmapped relation lookup: %s", v21, 0xCu);
        sub_1ABA84B54(v22);
        MEMORY[0x1AC5AB8B0](v22, -1, -1);
        MEMORY[0x1AC5AB8B0](v21, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1ABC1D580(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v62 = a5;
  sub_1ABAB4C04(v61);
  v6 = v61[1];
  v7 = v61[3];
  v8 = v61[4];
  v50 = v61[5];
  v51 = v61[0];
  v9 = (v61[2] + 64) >> 6;

  v49 = v6;
  if (v8)
  {
    while (1)
    {
      v53 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v51 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v51 + 56) + 24 * v12;
      v17 = *v16;
      v18 = *(v16 + 8);
      LOBYTE(v16) = *(v16 + 16);
      v59[0] = v14;
      v59[1] = v15;
      v59[2] = v17;
      v59[3] = v18;
      v60 = v16;

      v50(&v54, v59);

      v19 = v54;
      v20 = v55;
      v21 = v56;
      v22 = v57;
      v52 = v58;
      v23 = *v62;
      v25 = sub_1ABA94FC8(v54, v55);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (*(v23 + 24) >= v26 + v27)
      {
        if ((v53 & 1) == 0)
        {
          sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
          sub_1ABF24C74();
        }
      }

      else
      {
        v29 = v62;
        sub_1ABC04FF0();
        v30 = *v29;
        v31 = sub_1ABA94FC8(v19, v20);
        if ((v28 & 1) != (v32 & 1))
        {
          goto LABEL_32;
        }

        v25 = v31;
      }

      v8 &= v8 - 1;
      v33 = *v62;
      if (v28)
      {
        v34 = 3 * v25;
        v35 = v33[7] + 24 * v25;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);

        if (v21 >= v36)
        {
          v39 = v21;
        }

        else
        {
          v39 = v36;
        }

        if (v21 >= v36)
        {
          v40 = v22;
        }

        else
        {
          v40 = v37;
        }

        v41 = v52;
        if (v21 < v36)
        {
          v41 = v38;
        }

        v42 = v33[7] + 8 * v34;
        *v42 = v39;
        *(v42 + 8) = v40;
        *(v42 + 16) = v41 & 1;
      }

      else
      {
        v33[(v25 >> 6) + 8] |= 1 << v25;
        v43 = (v33[6] + 16 * v25);
        *v43 = v19;
        v43[1] = v20;
        v44 = v33[7] + 24 * v25;
        *v44 = v21;
        *(v44 + 8) = v22;
        *(v44 + 16) = v52;
        v45 = v33[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_31;
        }

        v33[2] = v47;
      }

      a4 = 1;
      v7 = v10;
      v6 = v49;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1ABAB4C48();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v53 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

double sub_1ABC1D890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = sub_1ABDBC964(&v7, *a1, *(a1 + 16));
  result = v7;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

double sub_1ABC1D8D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1ABDBC99C(v8, *a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *(a1 + 32));
  result = *v8;
  v5 = v8[1];
  v6 = v9;
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t EntityTaggingInferenceInterface.Input.init(featureProvider:explicitTags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1ABC1D980()
{
  result = qword_1EB4D5830;
  if (!qword_1EB4D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingInferenceInterface(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABC1DAC4(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[1];
  v42 = *v2;
  v43 = v6;
  v44 = v2[2];
  v45 = *(v2 + 6);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D5838, &qword_1ABF4B650);
  result = sub_1ABF22464();
  if (!v3)
  {
    v9 = v41;
    v10 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
    swift_beginAccess();
    v11 = *(a2 + v10);

    v12 = COERCE_DOUBLE(sub_1ABAD58F0(v5, v11));
    v14 = v13;

    if (v14)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v12;
    }

    v46 = MEMORY[0x1E69E7CC0];
    v17 = v41 + 64;
    v16 = *(v41 + 64);
    v18 = *(v41 + 32);
    sub_1ABA8F320();

    v19 = 0;
    v37 = v41;
    while (ObjectType)
    {
LABEL_11:
      sub_1ABA7D74C();
      v22 = (*(v9 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(v9 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);

      EntityIdentifier.init(_:)(v24, v23, &v39);
      if (v40)
      {
        if (qword_1ED870750 != -1)
        {
          swift_once();
        }

        v29 = sub_1ABF237F4();
        sub_1ABA7AA24(v29, qword_1ED870758);

        v30 = sub_1ABF237D4();
        v31 = sub_1ABF24664();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          log = v30;
          v33 = swift_slowAlloc();
          v39 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_1ABADD6D8(v24, v23, &v39);
          _os_log_impl(&dword_1ABA78000, log, v31, "Entity Tagging: Entity Identifier :%s is not valid", v32, 0xCu);
          sub_1ABA84B54(v33);
          MEMORY[0x1AC5AB8B0](v33, -1, -1);
          v34 = v32;
          v9 = v37;
          MEMORY[0x1AC5AB8B0](v34, -1, -1);
        }

        else
        {
        }
      }

      else if (v15 <= v26)
      {
        if (v28)
        {
          v27 = 0;
        }

        v35 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson());
        PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(&v39, v27, v26);
        MEMORY[0x1AC5A9710]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABF24184();
      }
    }

    while (1)
    {
      v20 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= *&v12)
      {

        v39 = sub_1ABAB4C50(v36, sub_1ABAE3054, sub_1ABB4E7EC);
        sub_1ABAB34A0(&v39, sub_1ABAB4CF4, sub_1ABAE8C64, &OBJC_IVAR___GDScoredPersonInner_score, sub_1ABAE304C);

        return v39;
      }

      ObjectType = *(v17 + 8 * v20);
      ++v19;
      if (ObjectType)
      {
        v19 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1ABC1DF44(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, int64_t, uint64_t *))
{
  v8 = v6;
  v86 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v79 = a4;
    while (1)
    {
      v12 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v13 = *(*(*a3 + 8 * v12) + *a5);
        v14 = *(*(*a3 + 8 * v10) + *a5);
        v15 = v10 + 2;
        v16 = v13;
        while (1)
        {
          v17 = v15;
          if (v15 >= v9)
          {
            break;
          }

          v18 = (v14 < v13) ^ (v16 >= *(*(*a3 + 8 * v15++) + *a5));
          v16 = *(*(*a3 + 8 * v17) + *a5);
          if ((v18 & 1) == 0)
          {
            v12 = v17;
            goto LABEL_9;
          }
        }

        v12 = v9;
LABEL_9:
        if (v14 < v13)
        {
          if (v12 < v10)
          {
            goto LABEL_110;
          }

          if (v10 < v12)
          {
            if (v9 >= v17)
            {
              v9 = v17;
            }

            v19 = 8 * v9 - 8;
            v20 = 8 * v10;
            v21 = v12;
            v22 = v10;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v24 = *(v23 + v20);
                *(v23 + v20) = *(v23 + v19);
                *(v23 + v19) = v24;
              }

              ++v22;
              v19 -= 8;
              v20 += 8;
            }

            while (v22 < v21);
            v9 = a3[1];
          }
        }
      }

      if (v12 < v9)
      {
        if (__OFSUB__(v12, v10))
        {
          goto LABEL_109;
        }

        if (v12 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_111;
          }

          if (v10 + a4 < v9)
          {
            v9 = v10 + a4;
          }

          if (v9 < v10)
          {
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
            return;
          }

          if (v12 != v9)
          {
            v25 = *a3;
            v26 = *a3 + 8 * v12 - 8;
            v27 = v10 - v12;
            do
            {
              v28 = *(v25 + 8 * v12);
              v29 = v27;
              v30 = v26;
              do
              {
                v31 = *v30;
                if (*(*v30 + *a5) >= *(v28 + *a5))
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_113;
                }

                *v30 = v28;
                v30[1] = v31;
                --v30;
              }

              while (!__CFADD__(v29++, 1));
              ++v12;
              v26 += 8;
              --v27;
            }

            while (v12 != v9);
            v12 = v9;
          }
        }
      }

      if (v12 < v10)
      {
        goto LABEL_108;
      }

      v81 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = v11[2];
        sub_1ABAD8820();
        v11 = v77;
      }

      v33 = v11[2];
      v34 = v33 + 1;
      if (v33 >= v11[3] >> 1)
      {
        sub_1ABAD8820();
        v11 = v78;
      }

      v11[2] = v34;
      v35 = v11 + 4;
      v36 = &v11[2 * v33 + 4];
      *v36 = v10;
      v36[1] = v12;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v33)
      {
        v85 = v11;
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v11[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v11[4];
            v41 = v11[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_98;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_101;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_106;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v34 < 2)
          {
            goto LABEL_100;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_72:
          if (v58)
          {
            goto LABEL_103;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_105;
          }

          if (v65 < v57)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v37 - 1 >= v34)
          {
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
LABEL_98:
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
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v69 = &v35[2 * v37 - 2];
          v70 = *v69;
          v71 = v37;
          v72 = &v35[2 * v37];
          v73 = *(v72 + 1);
          sub_1ABC1E56C((*a3 + 8 * *v69), (*a3 + 8 * *v72), (*a3 + 8 * v73), v83, a6, a5);
          if (v8)
          {
            goto LABEL_91;
          }

          if (v73 < v70)
          {
            goto LABEL_93;
          }

          v74 = v85[2];
          if (v71 > v74)
          {
            goto LABEL_94;
          }

          *v69 = v70;
          v69[1] = v73;
          if (v71 >= v74)
          {
            goto LABEL_95;
          }

          v34 = v74 - 1;
          sub_1ABE7A0CC(v72 + 16, v74 - 1 - v71, v72);
          v11 = v85;
          v85[2] = v74 - 1;
          v75 = v74 > 2;
          v8 = 0;
          if (!v75)
          {
            goto LABEL_86;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_96;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_97;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_99;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_102;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_107;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v9 = a3[1];
      v10 = v81;
      a4 = v79;
      if (v81 >= v9)
      {
        v86 = v11;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1ABC1E438(&v86, *a1, a3, a6, a5);
LABEL_91:
}

uint64_t sub_1ABC1E438(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *, int64_t, uint64_t *), void *a5)
{
  i = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v7);
    v7 = result;
  }

  v15 = i;
  *i = v7;
  v9 = (v7 + 16);
  for (i = *(v7 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v7;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v10 = (v7 + 16 * i);
    v11 = *v10;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_1ABC1E56C((*a3 + 8 * *v10), (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4, a5);
    if (v5)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v10 = v11;
    v10[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v7;
  __break(1u);
  return result;
}

uint64_t sub_1ABC1E56C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *, int64_t, uint64_t *), void *a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = a2 - a1;
  v12 = a3 - a2;
  if (v11 < v12)
  {
    a5(a1, a2 - a1, a4);
    v13 = &v7[v11];
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_28;
      }

      v15 = *v9;
      if (*(*v7 + *a6) >= *(*v9 + *a6))
      {
        break;
      }

      v16 = v10 == v9++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v10;
    }

    v15 = *v7;
    v16 = v10 == v7++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v10 = v15;
    goto LABEL_13;
  }

  a5(a2, a3 - a2, a4);
  v13 = &v7[v12];
LABEL_15:
  v17 = v9 - 1;
  for (--v8; v13 > v7 && v9 > v10; --v8)
  {
    v19 = *(v13 - 1);
    if (*(*v17 + *a6) < *(v19 + *a6))
    {
      v16 = v8 + 1 == v9--;
      if (!v16)
      {
        *v8 = *v17;
        v9 = v17;
      }

      goto LABEL_15;
    }

    if (v13 != v8 + 1)
    {
      *v8 = v19;
    }

    --v13;
  }

LABEL_28:
  v20 = v13 - v7;
  if (v9 != v7 || v9 >= &v7[v20])
  {
    memmove(v9, v7, 8 * v20);
  }

  return 1;
}

uint64_t EntityTaggingMLModelInferenceInterface.Input.init(featureProvider:confidenceHistory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1ABC1E7A0(uint64_t a1)
{
  v2 = sub_1ABC1EA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1E7DC(uint64_t a1)
{
  v2 = sub_1ABC1EA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1E818(uint64_t a1)
{
  v2 = sub_1ABC1EA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1E854(uint64_t a1)
{
  v2 = sub_1ABC1EA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingMLModelInferenceInterface.Errors.InitError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_1ABAD219C(&qword_1EB4D5848, &qword_1ABF4B660);
  sub_1ABA7BB64(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = sub_1ABAD219C(&qword_1EB4D5850, &qword_1ABF4B668);
  sub_1ABA7BB64(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  v41 = v24[4];
  sub_1ABA93E20(v24, v24[3]);
  sub_1ABC1EA38();
  sub_1ABF252E4();
  sub_1ABC1EA8C();
  sub_1ABF24EC4();
  (*(v27 + 8))(v32, v25);
  (*(v35 + 8))(v40, v33);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC1EA38()
{
  result = qword_1EB4D5858;
  if (!qword_1EB4D5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5858);
  }

  return result;
}

unint64_t sub_1ABC1EA8C()
{
  result = qword_1EB4D5860;
  if (!qword_1EB4D5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5860);
  }

  return result;
}

uint64_t EntityTaggingMLModelInferenceInterface.Errors.InitError.hashValue.getter()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

void EntityTaggingMLModelInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D5868, &qword_1ABF4B670);
  sub_1ABA7BB64(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D5870, &unk_1ABF4B678);
  sub_1ABA7BB64(v10);
  v42 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC1EA38();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v39 = v9;
  v40 = v2;
  v18 = sub_1ABF24EA4();
  v19 = sub_1ABAD4EA4(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v41 = v19;
LABEL_8:
    v32 = v10;
    v33 = sub_1ABF24B44();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v35 = &type metadata for EntityTaggingMLModelInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v22, v32);
    v2 = v40;
LABEL_9:
    v37 = v2;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_1ABAD4E90(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v40;
    v30 = v41;
    if (v28)
    {
      sub_1ABC1EA8C();
      v31 = v39;
      sub_1ABF24D94();
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v42 + 8))(v22, v10);
      v37 = v29;
LABEL_10:
      sub_1ABA84B54(v37);
      sub_1ABA7BC90();
      return;
    }

    v41 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABC1EF30(uint64_t a1)
{
  v2 = sub_1ABC1F828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1EF6C(uint64_t a1)
{
  v2 = sub_1ABC1F828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1EFA8(uint64_t a1)
{
  v2 = sub_1ABC1F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1EFE4(uint64_t a1)
{
  v2 = sub_1ABC1F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1F020(uint64_t a1)
{
  v2 = sub_1ABC1F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1F05C(uint64_t a1)
{
  v2 = sub_1ABC1F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingMLModelInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D5878, &qword_1ABF4B688);
  v4 = sub_1ABA7BB64(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4D5880, &qword_1ABF4B690);
  v11 = sub_1ABA7BB64(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D5888, &qword_1ABF4B698);
  sub_1ABA7BB64(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC1F828();
  sub_1ABF252E4();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1ABC1F87C();
    v29 = v32;
    sub_1ABF24EC4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1ABC1F8D0();
    sub_1ABF24EC4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1ABA7BC90();
}

uint64_t EntityTaggingMLModelInferenceInterface.Errors.RunError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void EntityTaggingMLModelInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v54 = v0;
  v2 = v1;
  v51 = v3;
  v53 = sub_1ABAD219C(&qword_1EB4D58A8, &qword_1ABF4B6A0);
  sub_1ABA7BB64(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D58B0, &qword_1ABF4B6A8);
  sub_1ABA7BB64(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - v15;
  v17 = sub_1ABAD219C(&qword_1EB4D58B8, &qword_1ABF4B6B0);
  sub_1ABA7BB64(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v46 - v22;
  v24 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC1F828();
  v25 = v54;
  sub_1ABF252C4();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v10;
  v48 = v16;
  v54 = v2;
  v26 = v53;
  v27 = sub_1ABF24EA4();
  v28 = sub_1ABAD4EA4(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = sub_1ABF24B44();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v43 = &type metadata for EntityTaggingMLModelInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v17);
    v2 = v54;
LABEL_10:
    sub_1ABA84B54(v2);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_1ABAD4E90(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        sub_1ABC1F87C();
        v38 = v9;
        sub_1ABA7E518();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_1ABC1F8D0();
        v45 = v48;
        sub_1ABA7E518();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v23, v35);
      *v39 = v32;
      sub_1ABA84B54(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_1ABC1F828()
{
  result = qword_1EB4D5890;
  if (!qword_1EB4D5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5890);
  }

  return result;
}

unint64_t sub_1ABC1F87C()
{
  result = qword_1EB4D5898;
  if (!qword_1EB4D5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5898);
  }

  return result;
}

unint64_t sub_1ABC1F8D0()
{
  result = qword_1EB4D58A0;
  if (!qword_1EB4D58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58A0);
  }

  return result;
}

unint64_t sub_1ABC1F928()
{
  result = qword_1EB4D58C0;
  if (!qword_1EB4D58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58C0);
  }

  return result;
}

unint64_t sub_1ABC1F980()
{
  result = qword_1EB4D58C8;
  if (!qword_1EB4D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58C8);
  }

  return result;
}

unint64_t sub_1ABC1F9D8()
{
  result = qword_1EB4D58D0;
  if (!qword_1EB4D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58D0);
  }

  return result;
}

unint64_t sub_1ABC1FA30()
{
  result = qword_1EB4D58D8;
  if (!qword_1EB4D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58D8);
  }

  return result;
}

unint64_t sub_1ABC1FA88()
{
  result = qword_1EB4D58E0;
  if (!qword_1EB4D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58E0);
  }

  return result;
}

_BYTE *sub_1ABC1FB24(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABC1FC20(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABC1FCE0()
{
  result = qword_1EB4D58E8;
  if (!qword_1EB4D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58E8);
  }

  return result;
}

unint64_t sub_1ABC1FD38()
{
  result = qword_1EB4D58F0;
  if (!qword_1EB4D58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58F0);
  }

  return result;
}

unint64_t sub_1ABC1FD90()
{
  result = qword_1EB4D58F8;
  if (!qword_1EB4D58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58F8);
  }

  return result;
}

unint64_t sub_1ABC1FDE8()
{
  result = qword_1EB4D5900;
  if (!qword_1EB4D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5900);
  }

  return result;
}

unint64_t sub_1ABC1FE40()
{
  result = qword_1EB4D5908;
  if (!qword_1EB4D5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5908);
  }

  return result;
}

unint64_t sub_1ABC1FE98()
{
  result = qword_1EB4D5910;
  if (!qword_1EB4D5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5910);
  }

  return result;
}

unint64_t sub_1ABC1FEF0()
{
  result = qword_1EB4D5918;
  if (!qword_1EB4D5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5918);
  }

  return result;
}

unint64_t sub_1ABC1FF48()
{
  result = qword_1EB4D5920;
  if (!qword_1EB4D5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5920);
  }

  return result;
}

unint64_t sub_1ABC1FFA0()
{
  result = qword_1EB4D5928;
  if (!qword_1EB4D5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5928);
  }

  return result;
}

unint64_t sub_1ABC1FFF8()
{
  result = qword_1EB4D5930;
  if (!qword_1EB4D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5930);
  }

  return result;
}

unint64_t sub_1ABC20050()
{
  result = qword_1EB4D5938;
  if (!qword_1EB4D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5938);
  }

  return result;
}

unint64_t sub_1ABC200A8()
{
  result = qword_1EB4D5940;
  if (!qword_1EB4D5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5940);
  }

  return result;
}

uint64_t sub_1ABC20104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1ABA8F224(sub_1ABC20128, 0);
}

uint64_t sub_1ABC20128()
{
  sub_1ABA8C008();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_1ABD3F148();

  v5 = v2;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1ABC20210;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];
  v12 = sub_1ABA90084(v0[4]);

  return sub_1ABC229F8(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1ABC20210()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA82A20();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1ABC20318(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF89240 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65707954676174 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABC20438(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x65707954676174;
}

uint64_t sub_1ABC2049C(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D5988, &qword_1ABF4C1A8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC23C40();
  sub_1ABF252E4();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  sub_1ABA9A43C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    sub_1ABA9A43C();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    sub_1ABA9A43C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1ABC205F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5980, &qword_1ABF4C1A0);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC23C40();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v30 = 0;
  v14 = sub_1ABF24E14();
  v27 = v15;
  v29 = 1;
  v25 = sub_1ABF24E14();
  v26 = v16;
  v28 = 2;
  v17 = sub_1ABF24E14();
  v18 = v12;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  result = sub_1ABA84B54(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_1ABC20820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC20318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC20848(uint64_t a1)
{
  v2 = sub_1ABC23C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC20884(uint64_t a1)
{
  v2 = sub_1ABC23C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABC208C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1ABC205F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1ABC2091C()
{
  sub_1ABA8C008();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[10] = v2;
  v1[13] = *v0;
  swift_defaultActor_initialize();
  v5 = v3[2];
  v6 = v3[3];
  v8 = *v3;
  v7 = v3[1];
  v1[14] = v6;
  v1[15] = v7;
  v9 = sub_1ABAA5808(&dword_1ABF4C1C0);
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_1ABC20A1C;

  return v11(v5, v6, v8, v7, 0);
}

uint64_t sub_1ABC20A1C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC20B20()
{
  sub_1ABA8C008();
  v1 = *(v0 + 136);
  if (!v1)
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 80);

    *(v0 + 32) = *(v8 + 32);
    sub_1ABAFEEA0(v0 + 32);
    sub_1ABC1F9D8();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);
    swift_defaultActor_destroy();

    sub_1ABA7D2D8();
    swift_deallocPartialClassInstance();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  *(v4 + 128) = v1;
  *(v0 + 48) = *(v5 + 32);
  *(v4 + 136) = *(v5 + 32);

  sub_1ABB3E558(v0 + 48, v0 + 64);

  sub_1ABAFEEA0(v0 + 48);
  *(v4 + 112) = 0;
  *(v4 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC20C90, v4, 0);
}

uint64_t sub_1ABC20C90()
{
  sub_1ABA7BBF8();
  v1 = v0[17];
  v2 = v0[11];

  sub_1ABA82A20();
  v4 = v0[12];

  return v3(v4);
}

uint64_t sub_1ABC20CFC()
{
  sub_1ABA7BC04();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);

  *(v0 + 16) = *(v3 + 32);
  sub_1ABAFEEA0(v0 + 16);
  v4 = *(v0 + 144);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  swift_defaultActor_destroy();

  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v8();
}

uint64_t sub_1ABC20DA4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 720) = v3;
  *(v4 + 712) = a3;
  *(v4 + 704) = a1;
  *(v4 + 728) = *a2;
  return sub_1ABA8F224(sub_1ABC20DD4, v3);
}

uint64_t sub_1ABC20DD4()
{
  v1 = COERCE_DOUBLE(sub_1ABAD58F0(3, v0[92]));
  if ((v2 & 1) != 0 || v1 >= 0.95)
  {
    if (qword_1EB4CE7C0 != -1)
    {
      sub_1ABA7BFD0();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1EB4CE7C8);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24644();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "[ETInferenceService] Skipping model prediction, probability of self too high.", v12, 2u);
      sub_1ABA7BC34();
    }

    v13 = v0[90];
    v14 = v0[88];

    v16 = *(v13 + 136);
    v15 = *(v13 + 144);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = v16;
    *(v14 + 24) = v15;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    sub_1ABA82A20();
    v19 = v17;

    return v19();
  }

  else
  {
    v3 = v0[92];
    v4 = v0[91];
    v5 = v0[90];
    v6 = v0[89];
    v7 = swift_allocObject();
    v0[93] = v7;
    v7[2] = v5;
    v7[3] = v4;
    v7[4] = v3;
    v7[5] = v6;

    swift_unknownObjectRetain();

    swift_asyncLet_begin();
    v8 = sub_1ABA80948();

    return MEMORY[0x1EEE6DEC0](v8);
  }
}

uint64_t sub_1ABC20FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 752) = v14;
  if (v14)
  {
    return MEMORY[0x1EEE6DEB0](v15 + 16, v15 + 696, sub_1ABC2121C, v15 + 656, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    return sub_1ABA8F224(sub_1ABC21024, *(v15 + 720));
  }
}

uint64_t sub_1ABC21024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v38 = v14;
  v15 = v14[87];
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0();
  }

  v16 = sub_1ABF237F4();
  sub_1ABA7AA24(v16, qword_1EB4CE7C8);
  v17 = sub_1ABF237D4();
  v18 = sub_1ABF24654();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    v21 = sub_1ABF24314();
    v23 = sub_1ABADD6D8(v21, v22, &v37);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1ABA78000, v17, v18, "ET Model prediction: %s", v19, 0xCu);
    sub_1ABA84B54(v20);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  v24 = v14[90];
  v25 = v14[88];
  v27 = *(v24 + 136);
  v26 = *(v24 + 144);
  *v25 = v15;
  *(v25 + 8) = v15;
  *(v25 + 16) = v27;
  *(v25 + 24) = v26;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;

  v28 = sub_1ABA80948();

  return MEMORY[0x1EEE6DEB0](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABC211C0()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 744);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABC21234()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 744);

  sub_1ABA7BBE0();
  v3 = *(v0 + 752);

  return v2();
}

uint64_t sub_1ABC21290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1ABC21348;

  return sub_1ABC2147C(a2, a3);
}

uint64_t sub_1ABC21348()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC2147C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC2149C, 0, 0);
}

uint64_t sub_1ABC2149C()
{
  sub_1ABA7BBF8();
  v0[10] = *(v0[8] + 128);
  v1 = sub_1ABAA5808(&dword_1ABF65390);
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1ABC21538;
  v2 = sub_1ABA90084(v0[9]);

  return v4(v2);
}

uint64_t sub_1ABC21538()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC2163C()
{
  sub_1ABA8C008();
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = [v3 dictionaryValue];

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v5 = sub_1ABF23974();

  *(v0 + 56) = 1;
  sub_1ABF249F4();
  v6 = sub_1ABAD5744(v0 + 16, v5);

  sub_1ABAFDC60(v0 + 16);
  if (v6)
  {
    v7 = *(v0 + 96);
    [v6 doubleValue];
    v9 = v8;
    swift_unknownObjectRelease();

    sub_1ABA7BBE0();
    v11.n128_u64[0] = v9;
  }

  else
  {
LABEL_4:
    v12 = *(v0 + 96);
    sub_1ABC1FA30();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA7BBE0();
  }

  return v10(v11);
}

uint64_t sub_1ABC21814()
{
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1EB4CE7C8);

  v4 = v1;
  v5 = sub_1ABF237D4();
  v6 = sub_1ABF24664();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = [*(v9 + 16) modelDescription];
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1ABA78000, v5, v6, "[ETInferenceService] Failed to generate predictions for %@: %@", v10, 0x16u);
    sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
    swift_arrayDestroy();
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  sub_1ABC1FA30();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  sub_1ABA7BBE0();

  return v16();
}

uint64_t sub_1ABC21A08()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1ABC21A38()
{
  sub_1ABC21A08();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABC21A8C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1ABA7FDA0;

  return sub_1ABC20DA4(a1, a2, a3);
}

uint64_t sub_1ABC21B40()
{
  sub_1ABA7BC04();
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v1 + 72);
  *(v0 + 80) = v3;
  *(v0 + 96) = v2;
  *(v0 + 48) = v4;
  *(v0 + 64) = v4;
  type metadata accessor for EntityTaggingMLModelInferenceServiceDefinition.Runner();
  swift_allocObject();
  sub_1ABB3E558(v0 + 96, v0 + 112);
  sub_1ABB3E558(v0 + 80, v0 + 128);
  sub_1ABB3E558(v0 + 64, v0 + 144);

  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1ABC21C40;

  return sub_1ABC2091C();
}

uint64_t sub_1ABC21C40()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA82A20();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1ABC21D4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABC21DEC;

  return sub_1ABC21B40();
}

uint64_t sub_1ABC21DEC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.tagType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1ABC21F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954676174 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABC2200C(char a1)
{
  if (a1)
  {
    return 0x65707954676174;
  }

  else
  {
    return 0x6E656469666E6F63;
  }
}

uint64_t sub_1ABC22050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC21F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC22078(uint64_t a1)
{
  v2 = sub_1ABC22260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC220B4(uint64_t a1)
{
  v2 = sub_1ABC22260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5948, &qword_1ABF4BE30);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[2];
  v16 = v1[1];
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC22260();
  sub_1ABF252E4();
  v18 = 0;
  sub_1ABF24F54();
  if (!v2)
  {
    v17 = 1;
    sub_1ABF24F34();
  }

  return (*(v6 + 8))(v11, v4);
}

unint64_t sub_1ABC22260()
{
  result = qword_1EB4D5950;
  if (!qword_1EB4D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5950);
  }

  return result;
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5958, &qword_1ABF4BE38);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC22260();
  sub_1ABF252C4();
  if (!v2)
  {
    v20[15] = 0;
    sub_1ABF24E34();
    v15 = v14;
    v20[14] = 1;
    v17 = sub_1ABF24E14();
    v19 = v18;
    (*(v7 + 8))(v12, v5);
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v19;
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABC224A4()
{
  result = qword_1EB4CEA18;
  if (!qword_1EB4CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA18);
  }

  return result;
}

unint64_t sub_1ABC224F8()
{
  result = qword_1EB4CEA20;
  if (!qword_1EB4CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingMLModelInferenceServiceRunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC226A0()
{
  result = qword_1EB4D5960;
  if (!qword_1EB4D5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5960);
  }

  return result;
}

unint64_t sub_1ABC226F8()
{
  result = qword_1EB4CE9C0;
  if (!qword_1EB4CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9C0);
  }

  return result;
}

unint64_t sub_1ABC22754()
{
  result = qword_1EB4CE9B8;
  if (!qword_1EB4CE9B8)
  {
    type metadata accessor for EntityTaggingMLModelInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9B8);
  }

  return result;
}

uint64_t sub_1ABC227D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC22810()
{
  result = qword_1EB4CE9C8;
  if (!qword_1EB4CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9C8);
  }

  return result;
}

unint64_t sub_1ABC22864()
{
  result = qword_1EB4CE9D0;
  if (!qword_1EB4CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9D0);
  }

  return result;
}

unint64_t sub_1ABC228BC()
{
  result = qword_1EB4CE990;
  if (!qword_1EB4CE990)
  {
    sub_1ABAE2850(&qword_1EB4D5968, &unk_1ABF4C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE990);
  }

  return result;
}

unint64_t sub_1ABC22920(uint64_t a1)
{
  result = sub_1ABC22754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC2294C()
{
  result = qword_1EB4D5970;
  if (!qword_1EB4D5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5970);
  }

  return result;
}

unint64_t sub_1ABC229A4()
{
  result = qword_1EB4D5978;
  if (!qword_1EB4D5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5978);
  }

  return result;
}

uint64_t sub_1ABC229F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC22A20, 0, 0);
}

uint64_t sub_1ABC22A20()
{
  v22 = v0;
  v1 = v0[11];
  v2 = *(*(v0[12] + 16) + 16);
  swift_unownedRetainStrong();
  sub_1ABA93E64(v2 + 32, (v0 + 2));

  v3 = type metadata accessor for AssetRegistry();
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_1ABA93E20(v0 + 2, v4);
  v20[0] = sub_1ABAF31C0;
  v20[1] = 0;
  v21 = 0;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v4);
  v10 = sub_1ABA94614(v9, v20, v3, v4, *(v5 + 8));
  v0[13] = v10;

  v11 = v1;
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1ABC22BD8;
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];

  return sub_1ABC22DE4(v10, v17, v18, v15, v16, v13, v14);
}

uint64_t sub_1ABC22BD8()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC22CFC()
{
  sub_1ABA7BBF8();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];

  sub_1ABA84B54(v0 + 2);
  sub_1ABA82A20();
  v5 = v0[16];

  return v4(v5);
}

uint64_t sub_1ABC22D78()
{
  sub_1ABA7BBF8();
  v1 = v0[13];
  v2 = v0[11];

  sub_1ABA84B54(v0 + 2);
  sub_1ABA7BBE0();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1ABC22DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_1ABF21CF4();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = *(*(sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = type metadata accessor for AssetRegistryAsset(0);
  v7[11] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[13] = v14;
  *v14 = v7;
  v14[1] = sub_1ABC22F88;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABC22F88()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[6];
    v11 = v3[3];
    v10 = v3[4];
    v12 = v3[2];
  }

  else
  {
    v14 = v3[3];
    v13 = v3[4];
    v15 = v3[2];
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC230D0()
{
  sub_1ABA8C008();
  v1 = v0[10];
  if (sub_1ABA7E1E0(v1, 1, v0[11]) == 1)
  {
    v3 = v0[5];
    v2 = v0[6];

    sub_1ABC23C94(v1);
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];

    sub_1ABA82A20();

    return v7(0);
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    v12 = v0[5];
    sub_1ABC23CFC(v1, v0[12]);
    v13 = *(v10 + 16);
    v14 = sub_1ABA7D2D8();
    v15(v14);
    type metadata accessor for InferenceMLModel();
    swift_allocObject();
    v16 = v12;
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_1ABC232C8;
    v18 = v0[5];
    v19 = v0[6];
    v20 = sub_1ABA90084(v0[9]);

    return sub_1ABC234F8(v20, v21);
  }
}

uint64_t sub_1ABC23248()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABC232C8()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC233D8()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  sub_1ABC23D60(v2);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  sub_1ABA82A20();

  return v6(v1);
}

uint64_t sub_1ABC2346C()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 96);

  sub_1ABC23D60(v1);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  sub_1ABA7BBE0();

  return v6();
}

uint64_t sub_1ABC234F8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1ABC23590, 0, 0);
}

uint64_t sub_1ABC23590()
{
  sub_1ABA7BBF8();
  v1 = v0[9];
  sub_1ABAFF390(0, &qword_1ED86B928, 0x1E695FE90);
  if (v1)
  {
    v2 = *(MEMORY[0x1E695FD70] + 4);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1ABC236DC;
    v4 = sub_1ABA90084(v0[8]);
    v5 = v1;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    v0[14] = v6;
    v7 = *(MEMORY[0x1E695FD70] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1ABC237E0;
    v4 = sub_1ABA90084(v0[8]);
    v5 = v6;
  }

  return MEMORY[0x1EEDBB3B0](v4, v5);
}

uint64_t sub_1ABC236DC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v9 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC237E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 120);
  v7 = *(v5 + 112);
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;
  *(v10 + 128) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC238FC()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v4);
  (*(v5 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v7 = *(v0 + 80);

  return v6(v7);
}

uint64_t sub_1ABC239A0()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v5);
  (*(v6 + 8))(v4);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABC23A48()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v4);
  (*(v5 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v7 = v0[10];

  return v6(v7);
}

uint64_t sub_1ABC23AE4()
{
  sub_1ABA7BC04();
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v5);
  (*(v6 + 8))(v4);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABC23B84()
{
  sub_1ABA8C008();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1ABA7FDA0;

  return sub_1ABC21290(v3, v4, v5);
}

unint64_t sub_1ABC23C40()
{
  result = qword_1EB4CE9E8;
  if (!qword_1EB4CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9E8);
  }

  return result;
}

uint64_t sub_1ABC23C94(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC23CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC23D60(uint64_t a1)
{
  v2 = type metadata accessor for AssetRegistryAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingMLModelInferenceServiceDefinition.ConfigParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC23EAC()
{
  result = qword_1EB4D5998;
  if (!qword_1EB4D5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5998);
  }

  return result;
}

unint64_t sub_1ABC23F04()
{
  result = qword_1EB4CE9D8;
  if (!qword_1EB4CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9D8);
  }

  return result;
}

unint64_t sub_1ABC23F5C()
{
  result = qword_1EB4CE9E0;
  if (!qword_1EB4CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9E0);
  }

  return result;
}

uint64_t static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *MEMORY[0x1E695C8F8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  v9 = v9 && v8 == a2;
  if (v9)
  {
    v11 = 5;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 5;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E695C870];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v13 == a2)
  {
    v11 = 6;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 6;
    goto LABEL_9;
  }

  v15 = *MEMORY[0x1E695C720];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v16 == a2)
  {
    v11 = 7;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 7;
    goto LABEL_9;
  }

  v18 = *MEMORY[0x1E695C540];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v19 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_29:
    v11 = 9;
    goto LABEL_9;
  }

  v21 = *MEMORY[0x1E695CAA8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v22 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  v24 = *MEMORY[0x1E695CB40];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v25 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  v27 = *MEMORY[0x1E695C678];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v28 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  v30 = *MEMORY[0x1E695C710];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v31 == a2)
  {
LABEL_56:
    v11 = 9;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  v33 = *MEMORY[0x1E695C970];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v34 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_55:
    v11 = 10;
    goto LABEL_9;
  }

  v36 = *MEMORY[0x1E695CB30];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v37 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  v39 = *MEMORY[0x1E695CB48];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v40 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  v42 = *MEMORY[0x1E695C700];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v43 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  v45 = *MEMORY[0x1E695C718];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v46 == a2)
  {
LABEL_93:
    v11 = 10;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  v48 = *MEMORY[0x1E695C958];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v49 == a2)
  {
    goto LABEL_94;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_92;
  }

  v51 = *MEMORY[0x1E695CB20];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v52 == a2)
  {
    goto LABEL_94;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_92:
    v11 = 8;
    goto LABEL_9;
  }

  v54 = *MEMORY[0x1E695C6F0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v55 == a2)
  {
LABEL_94:
    v11 = 8;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_92;
  }

  v57 = *MEMORY[0x1E695C950];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v58 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  v60 = *MEMORY[0x1E695C9E0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v61 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  v63 = *MEMORY[0x1E695C768];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v64 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  v66 = *MEMORY[0x1E695C538];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v67 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_120:
    v11 = 18;
    goto LABEL_9;
  }

  v69 = *MEMORY[0x1E695C770];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v70 == a2)
  {
LABEL_121:
    v11 = 18;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  v72 = *MEMORY[0x1E695CAA0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v73 == a2)
  {
    v11 = 19;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 19;
    goto LABEL_9;
  }

  v75 = *MEMORY[0x1E695C848];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v76 == a2)
  {
    v11 = 20;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 20;
    goto LABEL_9;
  }

  v78 = *MEMORY[0x1E695C590];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v79 == a2)
  {
    v11 = 15;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 15;
    goto LABEL_9;
  }

  v81 = *MEMORY[0x1E695C9C0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v82 == a2)
  {
    v11 = 16;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 16;
    goto LABEL_9;
  }

  v84 = *MEMORY[0x1E695C658];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v85 == a2)
  {
    v11 = 17;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 17;
    goto LABEL_9;
  }

  result = 0x696D61463C21245FLL;
  if (a1 == 0x696D61463C21245FLL && a2 == 0xEE005F24213E796CLL)
  {
    goto LABEL_232;
  }

  result = sub_1ABF25054();
  if (result)
  {
    goto LABEL_232;
  }

  v88 = *MEMORY[0x1E695CA30];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v89 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v91 = *MEMORY[0x1E695C4C8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v92 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v94 = *MEMORY[0x1E695C5D8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v95 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v97 = *MEMORY[0x1E695C7F8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v98 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v100 = *MEMORY[0x1E695C798];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v101 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v103 = *MEMORY[0x1E695C7B0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v104 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v106 = *MEMORY[0x1E695C838];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v107 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v109 = *MEMORY[0x1E695C828];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v110 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v112 = *MEMORY[0x1E695C830];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v113 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v115 = *MEMORY[0x1E695C800];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v116 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v118 = *MEMORY[0x1E695C790];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v119 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v121 = *MEMORY[0x1E695C780];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v122 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v124 = *MEMORY[0x1E695C8C8];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v125 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_232:
    v11 = 4;
    goto LABEL_9;
  }

  v127 = *MEMORY[0x1E695C898];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v128 == a2)
  {
LABEL_233:
    v11 = 4;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  v130 = *MEMORY[0x1E695C760];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v131 == a2)
  {
    goto LABEL_250;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_249;
  }

  v133 = *MEMORY[0x1E695C858];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v134 == a2)
  {
    goto LABEL_250;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_249:
    v11 = 21;
    goto LABEL_9;
  }

  v136 = *MEMORY[0x1E695C750];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v137 == a2)
  {
LABEL_250:
    v11 = 21;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_249;
  }

  v139 = *MEMORY[0x1E695C5D0];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v140 == a2)
  {
    goto LABEL_262;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_261:
    v11 = 23;
    goto LABEL_9;
  }

  v142 = *MEMORY[0x1E695C868];
  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v143 == a2)
  {
LABEL_262:
    v11 = 23;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_261;
  }

  v145 = *MEMORY[0x1E695C4C0];
  v11 = 23;
  if (sub_1ABF23C04() == a1 && v146 == a2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v148 = sub_1ABA8F348();

  if (v148)
  {
    v11 = 23;
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

void *static EntityTaggingModelUtility.normalizeEntityTagsDictionary(input:)(void *a1)
{

  v5 = 0;
  while (2)
  {
    v6 = byte_1F2091D90[v5++ + 32];
    v7 = sub_1ABA9750C() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    switch(v6)
    {
      case 1:
        v7 = sub_1ABA80AD8();
        break;
      case 2:
        v7 = sub_1ABA9F8F8();
        break;
      case 3:
        v7 = sub_1ABAA34DC();
        break;
      case 4:
        v1 = 0xE600000000000000;
        v7 = 0x796C696D6166;
        break;
      case 5:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA8AD0C();
        break;
      case 6:
        v7 = sub_1ABA81840();
        v1 = 0xE600000000000000;
        break;
      case 7:
        v11 = sub_1ABAA2910();
        goto LABEL_28;
      case 8:
        v7 = sub_1ABA7C18C();
        break;
      case 9:
        v10 = sub_1ABA8C098();
        goto LABEL_26;
      case 10:
        v11 = sub_1ABAA2604();
LABEL_28:
        v7 = v11 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 11:
        v7 = sub_1ABA7F228();
        break;
      case 12:
        v7 = sub_1ABA8E8D8();
        goto LABEL_23;
      case 13:
        v7 = sub_1ABA838C8();
LABEL_23:
        v1 = 0xEB00000000726568;
        break;
      case 14:
        v9 = sub_1ABA9940C();
        goto LABEL_19;
      case 15:
        v7 = sub_1ABA8A360();
        break;
      case 16:
        v7 = sub_1ABAA5828();
        break;
      case 17:
        v12 = sub_1ABA907CC();
        goto LABEL_33;
      case 18:
        v10 = sub_1ABA949FC();
LABEL_26:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 19:
        v7 = sub_1ABAA38CC();
        break;
      case 20:
        v9 = sub_1ABA90090();
LABEL_19:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      case 21:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA9FBC0();
        break;
      case 22:
        v7 = sub_1ABA97980();
        v1 = 0x80000001ABF81E70;
        break;
      case 23:
        v12 = sub_1ABAA607C();
LABEL_33:
        v7 = v12 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 24:
        v7 = sub_1ABA93514();
        break;
      case 25:
        v7 = sub_1ABA7D764();
        break;
      case 26:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA9FCE4();
        break;
      case 27:
        v8 = 1699772781;
        goto LABEL_36;
      case 28:
        v7 = sub_1ABAA0A28();
        break;
      case 29:
        v8 = 1631811949;
LABEL_36:
        v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
        break;
      default:
        break;
    }

    if (a1[2])
    {
      sub_1ABA94FC8(v7, v1);
      sub_1ABAA22BC();
      if (v3)
      {
        sub_1ABAA1F4C();
        if (!(v14 ^ v15 | v13))
        {
          v16 = 0xE600000000000000;
          v17 = 0x666C6573796DLL;
          switch(v6)
          {
            case 0:
              v18 = sub_1ABA9750C();
              goto LABEL_120;
            case 1:
              v17 = sub_1ABA80AD8();
              goto LABEL_122;
            case 2:
              v16 = 0xE500000000000000;
              v17 = sub_1ABA9F8F8();
              goto LABEL_122;
            case 3:
              goto LABEL_122;
            case 4:
              v17 = 0x796C696D6166;
              goto LABEL_122;
            case 5:
              v17 = sub_1ABA8AD0C();
              goto LABEL_122;
            case 6:
              v17 = sub_1ABA81840();
              goto LABEL_122;
            case 7:
              v31 = 1752457574;
              goto LABEL_112;
            case 8:
              v17 = sub_1ABA7C18C();
              goto LABEL_122;
            case 9:
              v30 = sub_1ABA8C098();
              goto LABEL_110;
            case 10:
              v31 = 1953720691;
LABEL_112:
              v17 = v31 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              goto LABEL_122;
            case 11:
              v17 = sub_1ABA7F228();
              goto LABEL_122;
            case 12:
              v17 = sub_1ABA8E8D8();
              goto LABEL_107;
            case 13:
              v17 = sub_1ABA838C8();
LABEL_107:
              v16 = 0xEB00000000726568;
              goto LABEL_122;
            case 14:
              v29 = sub_1ABA9940C();
              goto LABEL_103;
            case 15:
              v16 = 0xE500000000000000;
              v17 = sub_1ABA8A360();
              goto LABEL_122;
            case 16:
              v17 = sub_1ABAA5828();
              goto LABEL_122;
            case 17:
              v32 = sub_1ABA907CC();
              goto LABEL_117;
            case 18:
              v30 = sub_1ABA949FC();
LABEL_110:
              v17 = v30 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              goto LABEL_122;
            case 19:
              v17 = sub_1ABAA38CC();
              goto LABEL_122;
            case 20:
              v29 = sub_1ABA90090();
LABEL_103:
              v17 = v29 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              goto LABEL_122;
            case 21:
              v17 = sub_1ABA9FBC0();
              goto LABEL_122;
            case 22:
              v17 = sub_1ABA97980();
              v16 = 0x80000001ABF81E70;
              goto LABEL_122;
            case 23:
              v32 = sub_1ABAA607C();
LABEL_117:
              v17 = v32 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              goto LABEL_122;
            case 24:
              v17 = sub_1ABA93514();
              goto LABEL_122;
            case 25:
              v17 = sub_1ABA7D764();
              goto LABEL_122;
            case 26:
              v17 = sub_1ABA9FCE4();
              goto LABEL_122;
            case 27:
              v18 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x65500000;
              goto LABEL_120;
            case 28:
              v16 = 0xE500000000000000;
              v17 = sub_1ABAA0A28();
              goto LABEL_122;
            case 29:
              v18 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x61430000;
LABEL_120:
              v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_122:
              if (!a1[2])
              {

LABEL_129:
                v44 = sub_1ABA977F0();
                sub_1ABA94FC8(v44, v45);
                if (v46)
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v3 = a1[3];
                  sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                  sub_1ABA8E24C();
                  v47 = sub_1ABA97FE0();
                  sub_1ABA95858(v47, v48, v49, v50, v51, v52, v53, v54, v115, a1);
                  sub_1ABA96CA8(v55);

                  sub_1ABF24C84();
                }

                break;
              }

              sub_1ABA94FC8(v17, v16);
              sub_1ABAA22BC();
              if ((v3 & 1) == 0)
              {
                goto LABEL_129;
              }

              v33 = *(a1[7] + 8 * isUniquelyReferenced_nonNull_native);
              LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
              v34 = sub_1ABA977F0();
              sub_1ABA94FC8(v34, v35);
              v36 = a1[2];
              sub_1ABA7AD10();
              if (__OFADD__(v39, v40))
              {
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                sub_1ABF25104();
                __break(1u);
LABEL_201:
                JUMPOUT(0);
              }

              v41 = v37;
              isUniquelyReferenced_nonNull_native = v38;
              sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
              sub_1ABA8E24C();
              if (sub_1ABF24C64())
              {
                v42 = sub_1ABA94FC8(0x796C696D6166, 0xE600000000000000);
                if ((isUniquelyReferenced_nonNull_native & 1) != (v43 & 1))
                {
                  goto LABEL_200;
                }

                v41 = v42;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                *(a1[7] + 8 * v41) = v33;
              }

              else
              {
                sub_1ABA7F258(&a1[v41 >> 6]);
                v57 = (v56 + 16 * v41);
                *v57 = 0x796C696D6166;
                v57[1] = 0xE600000000000000;
                *(a1[7] + 8 * v41) = v33;
                v58 = a1[2];
                v15 = __OFADD__(v58, 1);
                v59 = v58 + 1;
                if (v15)
                {
                  goto LABEL_198;
                }

                a1[2] = v59;
              }

              break;
            default:
              goto LABEL_201;
          }
        }
      }
    }

    else
    {
    }

    v1 = 0xE500000000000000;
    v19 = 0x7465736E75;
    v20 = v6;
    switch(v6)
    {
      case 0:
        goto LABEL_80;
      case 1:
        v19 = sub_1ABA80AD8();
        goto LABEL_80;
      case 2:
        v19 = sub_1ABA9F8F8();
        goto LABEL_80;
      case 3:
        v19 = sub_1ABAA34DC();
        goto LABEL_80;
      case 4:
        v1 = 0xE600000000000000;
        v19 = 0x796C696D6166;
        goto LABEL_80;
      case 5:
        v1 = 0xE600000000000000;
        v19 = sub_1ABA8AD0C();
        goto LABEL_80;
      case 6:
        v19 = sub_1ABA81840();
        v1 = 0xE600000000000000;
        goto LABEL_80;
      case 7:
        v24 = sub_1ABAA2910();
        goto LABEL_70;
      case 8:
        v19 = sub_1ABA7C18C();
        goto LABEL_80;
      case 9:
        v23 = sub_1ABA8C098();
        goto LABEL_68;
      case 10:
        v24 = sub_1ABAA2604();
LABEL_70:
        v19 = v24 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        goto LABEL_80;
      case 11:
        v19 = sub_1ABA7F228();
        goto LABEL_80;
      case 12:
        v19 = sub_1ABA8E8D8();
        goto LABEL_65;
      case 13:
        v19 = sub_1ABA838C8();
LABEL_65:
        v1 = 0xEB00000000726568;
        goto LABEL_80;
      case 14:
        v22 = sub_1ABA9940C();
        goto LABEL_61;
      case 15:
        v19 = sub_1ABA8A360();
        goto LABEL_80;
      case 16:
        v19 = sub_1ABAA5828();
        goto LABEL_80;
      case 17:
        v25 = sub_1ABA907CC();
        goto LABEL_75;
      case 18:
        v23 = sub_1ABA949FC();
LABEL_68:
        v19 = v23 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        goto LABEL_80;
      case 19:
        v19 = sub_1ABAA38CC();
        goto LABEL_80;
      case 20:
        v22 = sub_1ABA90090();
LABEL_61:
        v19 = v22 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        goto LABEL_80;
      case 21:
        v1 = 0xE600000000000000;
        v19 = sub_1ABA9FBC0();
        goto LABEL_80;
      case 22:
        v19 = sub_1ABA97980();
        v1 = 0x80000001ABF81E70;
        goto LABEL_80;
      case 23:
        v25 = sub_1ABAA607C();
LABEL_75:
        v19 = v25 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        goto LABEL_80;
      case 24:
        v19 = sub_1ABA93514();
        goto LABEL_80;
      case 25:
        v19 = sub_1ABA7D764();
        goto LABEL_80;
      case 26:
        v1 = 0xE600000000000000;
        v19 = sub_1ABA9FCE4();
        goto LABEL_80;
      case 27:
        v21 = 1699772781;
        goto LABEL_78;
      case 28:
        v19 = sub_1ABAA0A28();
        goto LABEL_80;
      case 29:
        v21 = 1631811949;
LABEL_78:
        v19 = v21 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_80:
        if (a1[2])
        {
          v26 = v20;
          sub_1ABA94FC8(v19, v1);
          sub_1ABAA22BC();
          if (v3)
          {
            sub_1ABAA1F4C();
            if (!(v14 ^ v15 | v13))
            {
              v1 = 0x80000001ABF81E70;
              v27 = sub_1ABA97980();
              switch(v26)
              {
                case 0:
                  v28 = sub_1ABA9750C();
                  goto LABEL_167;
                case 1:
                  v27 = sub_1ABA80AD8();
                  goto LABEL_169;
                case 2:
                  v1 = 0xE500000000000000;
                  v27 = sub_1ABA9F8F8();
                  goto LABEL_169;
                case 3:
                  v27 = sub_1ABAA34DC();
                  goto LABEL_169;
                case 4:
                  v1 = 0xE600000000000000;
                  v27 = 0x796C696D6166;
                  goto LABEL_169;
                case 5:
                  v1 = 0xE600000000000000;
                  v27 = sub_1ABA8AD0C();
                  goto LABEL_169;
                case 6:
                  v27 = sub_1ABA81840();
                  v1 = 0xE600000000000000;
                  goto LABEL_169;
                case 7:
                  v60 = sub_1ABAA2910();
                  goto LABEL_159;
                case 8:
                  v27 = sub_1ABA7C18C();
                  goto LABEL_169;
                case 9:
                  v63 = sub_1ABA8C098();
                  goto LABEL_162;
                case 10:
                  v60 = sub_1ABAA2604();
LABEL_159:
                  v27 = v60 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                  goto LABEL_169;
                case 11:
                  v27 = sub_1ABA7F228();
                  goto LABEL_169;
                case 12:
                  v27 = sub_1ABA8E8D8();
                  goto LABEL_154;
                case 13:
                  v27 = sub_1ABA838C8();
LABEL_154:
                  v1 = 0xEB00000000726568;
                  goto LABEL_169;
                case 14:
                  v61 = sub_1ABA9940C();
                  goto LABEL_152;
                case 15:
                  v1 = 0xE500000000000000;
                  v27 = sub_1ABA8A360();
                  goto LABEL_169;
                case 16:
                  v27 = sub_1ABAA5828();
                  goto LABEL_169;
                case 17:
                  v62 = sub_1ABA907CC();
                  goto LABEL_164;
                case 18:
                  v63 = sub_1ABA949FC();
LABEL_162:
                  v27 = v63 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                  goto LABEL_169;
                case 19:
                  v27 = sub_1ABAA38CC();
                  goto LABEL_169;
                case 20:
                  v61 = sub_1ABA90090();
LABEL_152:
                  v27 = v61 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                  goto LABEL_169;
                case 21:
                  v1 = 0xE600000000000000;
                  v27 = sub_1ABA9FBC0();
                  goto LABEL_169;
                case 22:
                  goto LABEL_169;
                case 23:
                  v62 = sub_1ABAA607C();
LABEL_164:
                  v27 = v62 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                  goto LABEL_169;
                case 24:
                  v27 = sub_1ABA93514();
                  goto LABEL_169;
                case 25:
                  v27 = sub_1ABA7D764();
                  goto LABEL_169;
                case 26:
                  v1 = 0xE600000000000000;
                  v27 = sub_1ABA9FCE4();
                  goto LABEL_169;
                case 27:
                  v28 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x65500000;
                  goto LABEL_167;
                case 28:
                  v1 = 0xE500000000000000;
                  v27 = sub_1ABAA0A28();
                  goto LABEL_169;
                case 29:
                  v28 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x61430000;
LABEL_167:
                  v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_169:
                  if (!a1[2])
                  {

LABEL_178:
                    v79 = sub_1ABA9A458();
                    v81 = sub_1ABA94FC8(v79, v80);
                    if (v82)
                    {
                      v83 = v81;
                      v1 = swift_isUniquelyReferenced_nonNull_native();
                      isUniquelyReferenced_nonNull_native = a1[3];
                      sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                      sub_1ABA8E24C();
                      v84 = sub_1ABF24C64();
                      sub_1ABA95858(v84, v85, v86, v87, v88, v89, v90, v91, v115, a1);
                      v93 = *(v92 + 16 * v83 + 8);

                      sub_1ABF24C84();
                    }

                    break;
                  }

                  v64 = sub_1ABA94FC8(v27, v1);
                  isUniquelyReferenced_nonNull_native = v65;

                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    goto LABEL_178;
                  }

                  v66 = *(a1[7] + 8 * v64);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v67 = sub_1ABA9A458();
                  sub_1ABA94FC8(v67, v68);
                  v69 = a1[2];
                  sub_1ABA7AD10();
                  LOBYTE(v3) = v72 + v73;
                  if (__OFADD__(v72, v73))
                  {
                    goto LABEL_197;
                  }

                  v74 = v70;
                  v1 = v71;
                  sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                  sub_1ABA8E24C();
                  if (sub_1ABA97FE0())
                  {
                    v75 = sub_1ABA9A458();
                    v77 = sub_1ABA94FC8(v75, v76);
                    if ((v1 & 1) != (v78 & 1))
                    {
                      goto LABEL_200;
                    }

                    v74 = v77;
                  }

                  if (v1)
                  {
                    *(a1[7] + 8 * v74) = v66;
                  }

                  else
                  {
                    sub_1ABA7F258(&a1[v74 >> 6]);
                    v95 = (v94 + 16 * v74);
                    *v95 = 0xD000000000000010;
                    v95[1] = 0x80000001ABF81E70;
                    *(a1[7] + 8 * v74) = v66;
                    v96 = a1[2];
                    v15 = __OFADD__(v96, 1);
                    v97 = v96 + 1;
                    if (v15)
                    {
                      goto LABEL_199;
                    }

                    a1[2] = v97;
                  }

                  break;
                default:
                  goto LABEL_201;
              }
            }
          }
        }

        else
        {
        }

        if (v5 != 4)
        {
          continue;
        }

        v98 = sub_1ABA977F0();
        v100 = COERCE_DOUBLE(sub_1ABAD5984(v98, v99, a1));
        v102 = 0.0;
        if (v101)
        {
          v103 = 0.0;
        }

        else
        {
          v103 = v100;
        }

        v104 = sub_1ABA9A458();
        v106 = sub_1ABAD5984(v104, v105, a1);
        if (v107)
        {
          if (v103 >= 1.0 || v103 <= 0.96)
          {
            return a1;
          }

          goto LABEL_191;
        }

        v102 = *&v106;
        if (v103 < 1.0 && v103 > 0.96)
        {
LABEL_191:
          swift_isUniquelyReferenced_nonNull_native();
          v108 = sub_1ABA977F0();
          sub_1ABAFBCFC(v108, v109, v110);
        }

        if (v102 < 1.0 && v102 > 0.96)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v111 = sub_1ABA9A458();
          sub_1ABAFBCFC(v111, v112, v113);
        }

        return a1;
      default:
        goto LABEL_201;
    }
  }
}

uint64_t EntityTaggingModelUtilityError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static EntityTaggingModelUtility.modelFeatureProvider(featureDictionary:usedFeatures:)(uint64_t a1)
{
  v100 = sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  v2 = sub_1ABF239C4();
  v98 = 0x80000001ABF85990;
  v99 = 0x80000001ABF8C770;
  v94 = "larityGivenWednesday";
  v95 = "larityGivenWeekday";
  v97 = "personLongTermPopularity";
  v3 = &off_1F2091FF0;
  v4 = 306;
  v102 = a1;
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(a1 + 16);

    if (v7)
    {
      v8 = sub_1ABA8280C();
      v10 = sub_1ABA94FC8(v8, v9);
      if (v11)
      {
        v12 = *(*(a1 + 56) + 8 * v10);
        v101 = v4;
        if ([v12 isUndefined])
        {
          v13 = [objc_opt_self() featureValueWithDouble_];
          goto LABEL_21;
        }

        if ([v12 type] == 1)
        {
          v46 = [v12 int64Value];
        }

        else
        {
          v72 = v5;
          v104 = 0xD000000000000014;
          v105 = v99;
          sub_1ABAE28EC();
          if ((sub_1ABF248D4() & 1) == 0)
          {
            if (v5 != 0xD00000000000001FLL || v98 != v6)
            {
              sub_1ABA8280C();
              if ((sub_1ABF25054() & 1) == 0)
              {
LABEL_22:
                v48 = v12;
                swift_isUniquelyReferenced_nonNull_native();
                v108 = v2;
                v49 = v5;
                v50 = sub_1ABA8280C();
                sub_1ABA94FC8(v50, v51);
                v52 = v2[2];
                sub_1ABA7AD10();
                v2 = (v55 + v56);
                if (__OFADD__(v55, v56))
                {
                  goto LABEL_60;
                }

                v57 = v53;
                v58 = v54;
                sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
                v59 = sub_1ABAA1C38();
                if (v59)
                {
                  v59 = sub_1ABA94FC8(v49, v6);
                  if ((v58 & 1) != (v60 & 1))
                  {
                    goto LABEL_63;
                  }

                  v57 = v59;
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                else if ((v58 & 1) == 0)
                {
LABEL_26:
                  sub_1ABA8410C(v59, v60, v61, v62, v63, v64, v65, v66, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v108);
                  *v67 = v49;
                  v67[1] = v6;
                  *(v2[7] + 8 * v57) = v48;

                  v68 = v2[2];
                  v36 = __OFADD__(v68, 1);
                  v69 = v68 + 1;
                  if (v36)
                  {
                    goto LABEL_62;
                  }

                  v2[2] = v69;
                  goto LABEL_30;
                }

                v2 = v108;
                v70 = *(v108 + 56);
                v71 = *(v70 + 8 * v57);
                *(v70 + 8 * v57) = v48;

LABEL_30:
                v4 = v101;
                a1 = v102;
                goto LABEL_31;
              }
            }

            if (*(a1 + 16))
            {
              v85 = sub_1ABA94FC8(0xD000000000000022, v95 | 0x8000000000000000);
              if (v86 & 1) != 0 && ([*(*(a1 + 56) + 8 * v85) doubleValue], v87 > 0.0) && *(a1 + 16) && (v88 = sub_1ABA94FC8(0xD000000000000022, v94 | 0x8000000000000000), (v89))
              {
                [*(*(a1 + 56) + 8 * v88) doubleValue];
                v91 = v90 > 0.0;
              }

              else
              {
                v91 = 0;
              }
            }

            else
            {
              v91 = 0;
            }

            v13 = [objc_opt_self() featureValueWithInt64_];
LABEL_21:
            v47 = v13;

            v12 = v47;
            goto LABEL_22;
          }

          v73 = sub_1ABF239C4();
          v74 = [v12 stringValue];
          v75 = sub_1ABF23C04();
          v77 = v76;

          v46 = 0.0;
          v78 = 0.0;
          if (*(v73 + 16))
          {
            v79 = sub_1ABA94FC8(v75, v77);
            if (v80)
            {
              v78 = *(*(v73 + 56) + 8 * v79);
            }
          }

          if (*(v102 + 16))
          {
            v81 = sub_1ABA94FC8(0xD000000000000017, v97 | 0x8000000000000000);
            v5 = v72;
            if (v82)
            {
              [*(*(v102 + 56) + 8 * v81) doubleValue];
              if (v83 > 0.002)
              {
                v46 = v78;
              }
            }
          }

          else
          {
            v5 = v72;
          }
        }

        v13 = [objc_opt_self() featureValueWithDouble_];
        goto LABEL_21;
      }
    }

    v14 = [objc_opt_self() featureValueWithDouble_];
    if (v14)
    {
      v15 = v14;
      v103 = v3;
      v16 = v6;
      v17 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      v106 = v2;
      v18 = v5;
      sub_1ABA94FC8(v5, v16);
      v19 = v2[2];
      sub_1ABA7AD10();
      v2 = (v22 + v23);
      if (__OFADD__(v22, v23))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        result = sub_1ABF25104();
        __break(1u);
        return result;
      }

      v24 = v20;
      v25 = v21;
      sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
      v26 = sub_1ABAA1C38();
      if (v26)
      {
        v26 = sub_1ABA94FC8(v18, v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_63;
        }

        v24 = v26;
        if ((v25 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((v25 & 1) == 0)
      {
LABEL_11:
        sub_1ABA8410C(v26, v27, v28, v29, v30, v31, v32, v33, v94, v95, v96, v97, v98, v99, v100, v101, v102, v3, v104, v105, v106);
        *v34 = v18;
        v34[1] = v16;
        *(v2[7] + 8 * v24) = v15;
        v35 = v2[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_61;
        }

        v2[2] = v37;
        goto LABEL_17;
      }

      v2 = v106;
      v44 = *(v106 + 56);
      v45 = *(v44 + 8 * v24);
      *(v44 + 8 * v24) = v15;

LABEL_17:
      a1 = v102;
      v3 = v103;
      v4 = v17;
      goto LABEL_31;
    }

    v38 = sub_1ABA8280C();
    v40 = sub_1ABA94FC8(v38, v39);
    v42 = v41;

    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v107 = v2;
      v43 = v2[3];
      sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
      sub_1ABF24C64();
      v2 = v107;
      sub_1ABA96CA8(v107[6]);

      sub_1ABF24C84();
    }

LABEL_31:
    v3 += 2;
    --v4;
  }

  while (v4);
  sub_1ABAFF390(0, &qword_1EB4CE658, 0x1E695FE48);
  result = sub_1ABC25A90();
  if (!result)
  {
    sub_1ABC26108();
    swift_allocError();
    *v93 = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ABC25A90()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  v1 = sub_1ABF23954();

  v2 = [v0 initWithFeatureValueDictionary_];

  return v2;
}

uint64_t sub_1ABC25B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1ABA94FC8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  v10 = *(v9 + 24);
  sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
  sub_1ABA8E24C();
  sub_1ABF24C64();
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  type metadata accessor for KnosisQueryParam();
  sub_1ABF24C84();
  *v3 = v14;
  return v12;
}

uint64_t sub_1ABC25BFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1ABAFF5BC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  v9 = *(v8 + 24);
  sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
  sub_1ABA8E24C();
  sub_1ABF24C64();
  v10 = (*(v16 + 48) + 48 * v6);
  v11 = v10[1];
  v12 = v10[3];
  v13 = v10[5];

  v14 = *(*(v16 + 56) + 8 * v6);
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  sub_1ABBA0480();
  sub_1ABF24C84();
  *v2 = v16;
  return v14;
}

uint64_t sub_1ABC25D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1ABA94FC8(a1, a2);
  v9 = v8;
  if (v8)
  {
    v10 = result;
    v11 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA969D4();
    sub_1ABAD219C(&qword_1EB4D2008, &qword_1ABF351F8);
    sub_1ABA8E24C();
    v12 = sub_1ABA97FE0();
    sub_1ABA95858(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    sub_1ABA96CA8(v20);

    sub_1ABAFF42C(*(v6 + 56) + 8 * v10, a3);
    result = sub_1ABF24C84();
    *v4 = v6;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 8) = (v9 & 1) == 0;
  return result;
}

uint64_t sub_1ABC25DFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;
  v13 = sub_1ABA94FC8(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  v16 = *v11;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  v18 = *(v17 + 24);
  sub_1ABAD219C(a3, a4);
  sub_1ABA8E24C();
  sub_1ABF24C64();
  sub_1ABA96CA8(*(v21 + 48));

  v19 = *(*(v21 + 56) + 8 * v15);
  sub_1ABAFF390(0, a5, a6);
  sub_1ABF24C84();
  *v11 = v21;
  return v19;
}

double sub_1ABC25F10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1ABAFF5BC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABAB10F4();
    v11 = *(v10 + 24);
    sub_1ABAD219C(&qword_1EB4D1F68, &unk_1ABF4C450);
    sub_1ABA8E24C();
    v12 = sub_1ABF24C64();
    sub_1ABA95858(v12, v13, v14, v15, v16, v17, v18, v19, v28, v29);
    v21 = (v20 + 48 * v8);
    v22 = v21[1];
    v23 = v21[3];
    v24 = v21[5];

    v25 = (*(v5 + 56) + 48 * v8);
    v26 = v25[1];
    *a2 = *v25;
    *(a2 + 16) = v26;
    *(a2 + 25) = *(v25 + 25);
    sub_1ABA92FFC();
    sub_1ABF24C84();
    *v3 = v5;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  return result;
}

unint64_t sub_1ABC26020@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  result = sub_1ABAF8A7C();
  v7 = v6;
  if (v6)
  {
    v8 = result;
    v9 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA969D4();
    sub_1ABAD219C(&qword_1EB4D1F90, &qword_1ABF35180);
    sub_1ABA8E24C();
    v10 = sub_1ABA97FE0();
    sub_1ABA95858(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23);
    v19 = v18 + 32 * v8;
    v20 = *(v19 + 8);
    v21 = *(v19 + 24);

    sub_1ABAFF124(*(v4 + 56) + 8 * v8, a1);
    sub_1ABC2633C();
    result = sub_1ABF24C84();
    *v2 = v4;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = (v7 & 1) == 0;
  return result;
}

unint64_t sub_1ABC26108()
{
  result = qword_1EB4D59A0;
  if (!qword_1EB4D59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59A0);
  }

  return result;
}

unint64_t sub_1ABC26160()
{
  result = qword_1EB4D59A8;
  if (!qword_1EB4D59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingModelUtilityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntityTaggingModelUtility(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABC2633C()
{
  result = qword_1EB4D59B0;
  if (!qword_1EB4D59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59B0);
  }

  return result;
}

uint64_t sub_1ABC26390(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABC26464(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1ABC27ACC(a1, a2);
  return v7;
}

void sub_1ABC264B4()
{
  sub_1ABA7BCA8();
  v22 = v1;
  v23 = v2;
  v4 = v3;
  v21 = v5;
  v6 = *v0;
  sub_1ABAA3CD4();
  v8 = *(v7 + 88);
  sub_1ABA7BD7C();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v17 = *(v16 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v10 + 16))(v15, &v0[v17], v8);
  sub_1ABAA3CD4();
  sub_1ABC2D7B8(v21, v15, v4 & 1, v22, v8, v23, *(v18 + 104));
  v19 = sub_1ABAA49E8();
  v20(v19);

  sub_1ABA7BC90();
}

void sub_1ABC266DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v25;
  a24 = v26;
  v53 = v27;
  v51 = v28;
  v52 = v29;
  a10 = v30;
  v50 = v31;
  v33 = v32;
  v34 = *v24;
  sub_1ABAA4E18();
  v36 = *(v35 + 88);
  sub_1ABA7BD7C();
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v50 - v40;
  v43 = *v42;
  sub_1ABC27A58();
  a14 = v43;
  sub_1ABA7D5F0();
  v45 = *(v44 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v46(v41);
  sub_1ABAA4E18();
  v53(v33, &a14, v50, v41, a10 & 1, v51, v36, v52, *(v47 + 104));
  sub_1ABAA40A4();
  v48 = sub_1ABA894EC();
  v49(v48);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC26920()
{
  sub_1ABA7BCA8();
  v22 = v2;
  v21 = v3;
  v19 = v4;
  v20 = v5;
  v18 = v6;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 88);
  sub_1ABA7BD7C();
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7ED98();
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v15 = *(v14 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v16(v1);
  v22(v8, v19, v1, v18 & 1, v20, v10, v21, *(v9 + 104));
  sub_1ABAA40A4();
  v17(v1, v10);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC26A78()
{
  sub_1ABAA4590();
  sub_1ABA9352C();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC26AC0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(a2 + 48);
  v12 = sub_1ABA894EC();
  v14 = *(*v13(v12) + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v15(v10);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1ABC26C44()
{
  sub_1ABA7C1A4();
  sub_1ABA9352C();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABC26C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = (*(a4 + 48))(a2, a4);
  v18 = *(*v17 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v11 + 16))(v16, v17 + v18, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(a1, a3, v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v16, AssociatedTypeWitness);
}

void sub_1ABC26E40()
{
  sub_1ABA7BCA8();
  v20 = v3;
  v21 = v2;
  v23 = v4;
  v24 = v5;
  v22 = v6;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = *(*v0 + 88);
  sub_1ABA7BD7C();
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7ED98();
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v17 = *(v16 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v18(v1);
  sub_1ABC2DC44(v10, v1, v8 & 1, v21, v22, v23, v12, v24, *(v11 + 104), v20);
  sub_1ABAA40A4();
  v19(v1, v12);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC270B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, char *, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  sub_1ABA7BCA8();
  a23 = v27;
  a24 = v28;
  v58 = v29;
  v53 = v30;
  v54 = v31;
  v56 = v32;
  v57 = v33;
  a10 = v34;
  v36 = v35;
  v37 = a25;
  v55 = a26;
  v38 = *v26;
  v39 = *(*v26 + 88);
  sub_1ABA7BD7C();
  v41 = v40;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v53 - v45;
  v48 = *v47;
  sub_1ABC27A58();
  a14 = v48;
  sub_1ABA7D5F0();
  v50 = *(v49 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v41 + 16))(v46, v26 + v50, v39);
  v55(v36, &a14, v53, v46, a10 & 1, v56, v57, v58, v39, v54, *(v38 + 104), v37);
  sub_1ABAA40A4();
  v51 = sub_1ABA894EC();
  v52(v51);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC27338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  sub_1ABA7BCA8();
  v23 = v22;
  v47 = v25;
  v48 = v24;
  v50 = v26;
  v51 = v27;
  v29 = v28;
  v45 = v30;
  v46 = v31;
  v49 = a21;
  v32 = *v21;
  sub_1ABAA4E18();
  v34 = *(v33 + 88);
  sub_1ABA7BD7C();
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v45 - v40;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v43 = *(v42 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v36 + 16))(v41, &v21[v43], v34);
  sub_1ABAA4E18();
  v49(v45, v46, v41, v29 & 1, v48, v50, v51, v34, v47, *(v44 + 104), v23);
  (*(v36 + 8))(v41, v34);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC27508()
{
  sub_1ABA7BCA8();
  v25 = v2;
  v23 = v3;
  v24 = v1;
  v22 = v4;
  v6 = v5;
  v7 = *v0;
  sub_1ABAA3CD4();
  v9 = *(v8 + 88);
  sub_1ABA7BD7C();
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v18 = *(v17 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v11 + 16))(v16, &v0[v18], v9);
  sub_1ABAA3CD4();
  v25(v6, v16, v22, v9, v23, *(v19 + 104));
  v20 = sub_1ABAA49E8();
  v21(v20);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC27670(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(*(a2 + 8) + 48))() + 120);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_1ABA894EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 32);
  v5 = swift_checkMetadataState();
  v4(v5, AssociatedConformanceWitness);
  swift_endAccess();
}

uint64_t sub_1ABC27798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7ED98();
  v14 = (*(*(a3 + 8) + 48))(a2, *(a3 + 8));
  (*(v10 + 16))(v3, a1, AssociatedTypeWitness);
  v15 = *(*v14 + 120);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 40);
  v18 = swift_checkMetadataState();
  v17(v3, v18, AssociatedConformanceWitness);
  swift_endAccess();

  return (*(v10 + 8))(a1, AssociatedTypeWitness);
}

uint64_t (*sub_1ABC2796C())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

uint64_t sub_1ABC27A58()
{
  v1 = *(*(*v0 + 96) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 112);
  return v1(v2);
}

uint64_t *sub_1ABC27ACC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 88);
  sub_1ABA7EF70();
  (*(v7 + 32))(v2 + v8);
  sub_1ABA7D5F0();
  v10 = *(v9 + 112);
  v11 = *(v4 + 80);
  sub_1ABA7EF70();
  (*(v12 + 32))(v2 + v13, a2);
  return v2;
}

uint64_t *sub_1ABC27BA0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 80);
  sub_1ABA7EF70();
  (*(v4 + 8))(v0 + v5);
  sub_1ABA7D5F0();
  v7 = *(v6 + 120);
  v8 = *(v1 + 88);
  sub_1ABA7EF70();
  (*(v9 + 8))(v0 + v10);
  return v0;
}

uint64_t sub_1ABC27C60()
{
  sub_1ABC27BA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC27CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 88);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABC27CF4()
{
  v1 = *v0;
  sub_1ABC27A50();
  return v1;
}

uint64_t sub_1ABC27D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1ABC26AC0(a1, WitnessTable);
}

uint64_t sub_1ABC27D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1ABC26C94(a1, a4, a2, WitnessTable, a3);
}

uint64_t (*sub_1ABC27E34(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1ABAFDD10(0x40uLL);
  *a1 = v7;
  v7[1] = v3;
  v7[2] = a2;
  v8 = *(a3 - 8);
  v9 = *(a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[4] = v11;
  v12 = *(v11 + 64);
  v7[5] = sub_1ABAFDD10(v12);
  v7[6] = sub_1ABAFDD10(v12);
  *v7 = v8;
  WitnessTable = swift_getWitnessTable();
  v7[7] = WitnessTable;
  sub_1ABC27670(a2, WitnessTable);
  return sub_1ABC27F64;
}

uint64_t sub_1ABC27F68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC27FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 88);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABC28004()
{
  sub_1ABAA4590();
  sub_1ABA8E8EC();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC2804C()
{
  sub_1ABA7C1A4();
  sub_1ABA8E8EC();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t (*sub_1ABC280CC())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

uint64_t sub_1ABC281B0()
{
  sub_1ABAA4590();
  sub_1ABA7E6CC();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC281F8()
{
  sub_1ABA7C1A4();
  sub_1ABA7E6CC();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABC28260()
{
  sub_1ABAA4590();
  v4 = *(v0 - 8);
  swift_getWitnessTable();
  v1 = sub_1ABA81854();
  return sub_1ABC27670(v1, v2);
}

uint64_t sub_1ABC282CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1ABC27798(a1, a2, WitnessTable);
}

uint64_t (*sub_1ABC28324())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

void sub_1ABC28408(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 40);
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[1];
    v9 = v2[2];
    (*(v7 + 16))(*(*a1 + 40), v3, v6);
    sub_1ABC27798(v5, v9, v4);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v10 = v2[1];
    sub_1ABC27798(*(*a1 + 48), v2[2], v4);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1ABC284DC(uint64_t *a1)
{
  v2 = sub_1ABA80B08(a1);
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  swift_getWitnessTable();
  return sub_1ABC28558(v1);
}

uint64_t sub_1ABC28558@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1ABA7D79C(a1);
  sub_1ABA7D08C(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1ABA7C068();
  v31 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = *(v1 + 8);
  swift_getAssociatedTypeWitness();
  v33 = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 16);
  v18 = swift_checkMetadataState();
  v17(v18, AssociatedConformanceWitness);
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    sub_1ABF21E04();
    v20 = 0;
  }

  sub_1ABA7B9B4(v14, v20, 1, v4);
  v21 = swift_getAssociatedConformanceWitness();
  (*(v21 + 48))(&v35, v18, v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = v34;
  TypedEntityIdentifier.init(untyped:)(&v35, AssociatedTypeWitness, v23, &v36);
  if (v24)
  {
    sub_1ABA7D08C(v18);
    (*(v25 + 8))(v2, v18);
    return sub_1ABC28C50(v14);
  }

  else
  {
    v35 = v36;
    (*(v21 + 56))(v18, v21);
    v27 = v32;
    sub_1ABF21E04();
    sub_1ABA7D08C(v18);
    (*(v28 + 8))(v2, v18);
    v29 = v31;
    sub_1ABAE84E0(v14, v31);
    return (*(v33 + 32))(&v35, v27, v29, v3);
  }
}

uint64_t sub_1ABC288C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1ABF22D14();
  sub_1ABB9009C(v3, a2);
  sub_1ABA7AA24(v3, a2);
  return sub_1ABF22D24();
}

uint64_t sub_1ABC28924@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1ABA7D79C(a1);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1ABA7C068();
  v23 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v24 = v1;
  v10 = *(v1 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 48);
  v13 = swift_checkMetadataState();
  v12(&v26, v13, AssociatedConformanceWitness);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = v25;
  TypedEntityIdentifier.init(untyped:)(&v26, AssociatedTypeWitness, v15, &v27);
  if (v16)
  {
    sub_1ABA7D08C(v13);
    return (*(v17 + 8))(v2, v13);
  }

  else
  {
    v26 = v27;
    (*(AssociatedConformanceWitness + 56))(v13, AssociatedConformanceWitness);
    sub_1ABF21E04();
    v19 = v24;
    v20 = swift_getAssociatedConformanceWitness();
    (*(v20 + 16))(v13, v20);
    v21 = v23;
    sub_1ABF21E04();
    sub_1ABA7D08C(v13);
    (*(v22 + 8))(v2, v13);
    return (*(v19 + 32))(&v26, v9, v21, v3, v19);
  }
}

uint64_t sub_1ABC28BF4(uint64_t *a1)
{
  v3 = *(sub_1ABA80B08(a1) + 1);
  swift_getWitnessTable();
  return sub_1ABC28924(v1);
}

uint64_t sub_1ABC28C50(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC28D04()
{
  sub_1ABAA3CE0();
  sub_1ABC2AB40();
  sub_1ABA96BC4();
  sub_1ABAB08B8(&v1, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC28D64()
{
  sub_1ABA8C0AC();
  sub_1ABAA2920(v2, v3);
  v5 = v4;
  v6 = sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C(v6);
  sub_1ABF21E14();
  if (v5 > v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = sub_1ABA826D8();
  v9 = sub_1ABA96910(v8, MEMORY[0x1E69A0050], v20, v21, v22, v23, v24);
  v0 = v9;
  if (v1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v10 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v9 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v9 = swift_once();
  }

  v10 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v9, v10);
  (*(v11 + 16))(v0);
  v12 = sub_1ABF22424();
  sub_1ABAA0E54(v12, MEMORY[0x1E699FE60], v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4]);
  v13 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v13, v13, MEMORY[0x1E69A0160], v14, v15, v16, v17, v18, v20);
  sub_1ABF24614();
  sub_1ABA84B54(&v20);
  sub_1ABA7C1BC();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v27, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC28EF8()
{
  sub_1ABA8C0AC();
  sub_1ABAA2920(v2, v3);
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C(v6);
  sub_1ABF21E14();
  if (v5 > v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = sub_1ABA826D8();
  v9 = sub_1ABA96910(v8, MEMORY[0x1E69A0050], v20, v21, v22, v23, v24);
  v0 = v9;
  if (v1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v10 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v9 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v9 = swift_once();
  }

  v10 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v9, v10);
  (*(v11 + 16))(v0);
  v12 = sub_1ABF22424();
  sub_1ABAA0E54(v12, MEMORY[0x1E699FE60], v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4]);
  v13 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v13, v13, MEMORY[0x1E69A0160], v14, v15, v16, v17, v18, v20);
  sub_1ABF23BA4();
  sub_1ABA84B54(&v20);
  sub_1ABA7C1BC();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v27, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC290C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v9 = *a2;
  sub_1ABF21E14();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v10 = sub_1ABA93DC0(v25);
  v11 = v10;
  if (v9)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v10 = swift_once();
    }

    v12 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v10 = swift_once();
    }

    v12 = qword_1EB549598;
  }

  sub_1ABA7ED20(v10, v12);
  (*(v13 + 16))(v11);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v14 = sub_1ABA93DC0(v26);
  v22 = sub_1ABA95FD4(v14, v15, v16, v17, v18, v19, v20, v21, a1, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a7(v22);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABC2AB40();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC292F4()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA7C1BC();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29374()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  sub_1ABC2B020(v0);
  sub_1ABA7C1BC();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29404()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  sub_1ABC2B220(v0, v1);
  sub_1ABA7C1BC();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v3, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29498()
{
  sub_1ABAA3CE0();
  sub_1ABC2B604();
  return sub_1ABAB08B8(&v1, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC29500(uint64_t a1, unsigned __int8 *a2)
{
  sub_1ABAA34F0(a1, a2);
  v5 = v4;
  v6 = sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C(v6);
  sub_1ABF21E14();
  if (v5 > v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v5;
  *&v12[6] = v7;
  v12[3] = sub_1ABF22D14();
  v12[4] = MEMORY[0x1E69A0050];
  v8 = sub_1ABA93DC0(v12);
  v2 = v8;
  if (v3)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v2);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v12);
  sub_1ABAA38DC();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC296B0(uint64_t a1, unsigned __int8 *a2)
{
  sub_1ABAA34F0(a1, a2);
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C(v6);
  sub_1ABF21E14();
  if (v5 > v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v12[5] = v5;
  *&v12[6] = v7;
  v12[3] = sub_1ABF22D14();
  v12[4] = MEMORY[0x1E69A0050];
  v8 = sub_1ABA93DC0(v12);
  v2 = v8;
  if (v3)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v2);
  v13[3] = sub_1ABF22424();
  v13[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v13);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  sub_1ABA84B54(v12);
  sub_1ABAA38DC();
  return sub_1ABAB08B8(v13, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC298C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, uint64_t *))
{
  v9 = *a2;
  sub_1ABF21E14();
  v11 = v10;
  v18[3] = sub_1ABF22D14();
  v18[4] = MEMORY[0x1E69A0050];
  v12 = sub_1ABA93DC0(v18);
  v13 = v12;
  if (v9)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v12 = swift_once();
    }

    v14 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v12 = swift_once();
    }

    v14 = qword_1EB549598;
  }

  sub_1ABA7ED20(v12, v14);
  (*(v15 + 16))(v13);
  v17[3] = MEMORY[0x1E69E63B0];
  v17[4] = MEMORY[0x1E69A0160];
  v17[0] = v11;
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  a9(v18, v17);
  sub_1ABA84B54(v17);
  sub_1ABA84B54(v18);
  sub_1ABC2B604();
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

void sub_1ABC29B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  sub_1ABC2AD3C(v29, v31, v28, v30);
  sub_1ABA81864();
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

void sub_1ABC29BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  sub_1ABC2B020(v28);
  sub_1ABA81864();
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

void sub_1ABC29C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  sub_1ABC2B220(v28, v29);
  sub_1ABA81864();
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

uint64_t sub_1ABC29D28()
{
  result = sub_1ABC2C654();
  if (!v0)
  {
    v2 = sub_1ABEB0604();

    return v2;
  }

  return result;
}

uint64_t sub_1ABC29DF4(uint64_t a1, char *a2)
{
  sub_1ABAA49FC(a1, a2);
  result = v4();
  if (!v3)
  {
    sub_1ABA838DC();
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC29E98(uint64_t a1, char *a2)
{
  sub_1ABAA49FC(a1, a2);
  result = sub_1ABC2C384(v4, v5, v6, v7);
  if (!v3)
  {
    sub_1ABA838DC();
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC29F40(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C50C();
  if (!v3)
  {
    sub_1ABA838DC();
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC29F98(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C580();
  if (!v3)
  {
    sub_1ABA838DC();
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC2A01C(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C5E8();
  if (!v3)
  {
    sub_1ABA838DC();
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC2A06C()
{
  v1 = *v0;
  sub_1ABA7F288();
  v5 = *(v2 + 80);
  v6 = *(v3 + 88);
  return sub_1ABC2CEA4();
}

uint64_t sub_1ABC2A198(uint64_t a1, char *a2)
{
  v8 = *a2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  v3 = sub_1ABAA2614();
  return v4(v3);
}

uint64_t sub_1ABC2A30C(uint64_t a1, char *a2)
{
  v12 = *a2;
  v10 = *(*v2 + 80);
  v11 = *(*v2 + 88);
  v3 = sub_1ABAA2614();
  return sub_1ABC2CBE4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABC2A460()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_1ABA96CB4();
  return sub_1ABC2CD68();
}

uint64_t sub_1ABC2A4FC()
{
  v1 = *v0;
  sub_1ABA7F288();
  v5 = *(v2 + 80);
  v6 = *(v3 + 88);
  return sub_1ABC2CDD8();
}

uint64_t sub_1ABC2A62C()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_1ABA96CB4();
  return sub_1ABC2CE3C();
}

uint64_t sub_1ABC2A6FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v20 = a2;
  v7 = *(v4 + 80);
  v8 = sub_1ABF22924();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABF34740;
  v14 = sub_1ABF22174();
  v15 = MEMORY[0x1E699FDA8];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  sub_1ABA93DC0((v13 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v16 = sub_1ABF22D14();
  sub_1ABA7AA24(v16, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  v17 = *(*(v4 + 88) + 16);
  sub_1ABF221B4();

  sub_1ABC2D694(v20, &v21, &qword_1EB4D1D88, &unk_1ABF347C0);
  if (!v22)
  {
    return sub_1ABAB08B8(&v21, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v21, v23);
  swift_getWitnessTable();
  sub_1ABF225A4();
  sub_1ABA84B54(v23);
  (*(v9 + 8))(a3, v8);
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_1ABC2A974(char a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = sub_1ABF22924();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  sub_1ABC2A6FC(a1 & 1, a2, &v17 - v9);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  if (qword_1EB4CED30 != -1)
  {
    swift_once();
  }

  v12 = sub_1ABF22D14();
  v13 = sub_1ABA7AA24(v12, qword_1EB549868);
  v14 = MEMORY[0x1E69A0038];
  *(v11 + 56) = v12;
  *(v11 + 64) = v14;
  v15 = sub_1ABA93DC0((v11 + 32));
  (*(*(v12 - 8) + 16))(v15, v13, v12);
  sub_1ABF22904();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1ABC2AB40()
{
  v2 = *v0;
  v3 = v0[3];
  v8 = v0[4];
  v4 = *v0;
  swift_getObjectType();
  v5 = *(v2 + 80);
  sub_1ABF241F4();
  v6 = sub_1ABF22454();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v6);
    swift_getWitnessTable();
    v4 = sub_1ABF23F24();
  }

  return v4;
}

uint64_t sub_1ABC2AD3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *, uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  sub_1ABF21E14();
  v12 = v11;
  v13 = sub_1ABAD219C(a1, a2);
  sub_1ABAA459C(v13);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69A0160];
    v32 = MEMORY[0x1E69E63B0];
    v33 = MEMORY[0x1E69A0160];
    *v31 = v14;
    a2 = sub_1ABF22D14();
    v6 = MEMORY[0x1E69A0050];
    v28 = a2;
    v29 = MEMORY[0x1E69A0050];
    v4 = sub_1ABA93DC0(v27);
    if (qword_1ED86CF78 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA8F370();
  swift_once();
LABEL_3:
  sub_1ABA7AA24(a2, qword_1EB549598);
  sub_1ABA7D08C(a2);
  v16 = *(v15 + 16);
  v16(v4);
  v17 = sub_1ABF22424();
  v18 = MEMORY[0x1E699FE60];
  v30[3] = v17;
  v30[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v30);
  a3(v31, v27);
  sub_1ABA84B54(v27);
  sub_1ABA84B54(v31);
  v28 = a2;
  v29 = v6;
  v19 = sub_1ABA93DC0(v27);
  if (qword_1EB4CED40 != -1)
  {
    sub_1ABA7D7C4();
    swift_once();
  }

  v20 = sub_1ABA7AA24(a2, qword_1EB549488);
  (v16)(v19, v20, a2);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v32 = v17;
  v33 = v18;
  sub_1ABA93DC0(v31);
  sub_1ABF22B04();
  sub_1ABAB08B8(&v24, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v27);
  v28 = MEMORY[0x1E69E63B0];
  v29 = v5;
  *v27 = v12;
  v23[3] = a2;
  v23[4] = v6;
  v21 = sub_1ABA93DC0(v23);
  (v16)(v21, v20, a2);
  *(&v25 + 1) = v17;
  v26 = v18;
  sub_1ABA93DC0(&v24);
  sub_1ABF228A4();
  sub_1ABA84B54(v23);
  sub_1ABA84B54(v27);
  v28 = v17;
  v29 = v18;
  sub_1ABA93DC0(v27);
  sub_1ABF22AC4();
  sub_1ABA84B54(&v24);
  sub_1ABA84B54(v31);
  v32 = v17;
  v33 = v18;
  sub_1ABA93DC0(v31);
  sub_1ABF22B14();
  sub_1ABA84B54(v27);
  sub_1ABA84B54(v30);
  a4[3] = v17;
  a4[4] = v18;
  sub_1ABA93DC0(a4);
  sub_1ABF228D4();
  return sub_1ABA84B54(v31);
}

uint64_t sub_1ABC2B020@<X0>(uint64_t *a1@<X8>)
{
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v3 = sub_1ABF22D14();
  v4 = MEMORY[0x1E69A0050];
  v29 = v3;
  v30 = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v28);
  if (qword_1EB4CED40 != -1)
  {
    sub_1ABA7D7C4();
    swift_once();
  }

  v6 = sub_1ABA7AA24(v3, qword_1EB549488);
  sub_1ABA7D08C(v3);
  v8 = *(v7 + 16);
  v8(v5, v6, v3);
  v9 = sub_1ABF22424();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v10 = MEMORY[0x1E699FE60];
  v31[3] = v9;
  v31[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v31);
  sub_1ABF22AD4();
  sub_1ABAB08B8(&v25, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v28);
  *(&v26 + 1) = v3;
  v27 = v4;
  v11 = sub_1ABA93DC0(&v25);
  v8(v11, v6, v3);
  v23 = MEMORY[0x1E69E63B0];
  v24 = MEMORY[0x1E69A0160];
  v29 = v9;
  v30 = v10;
  v12 = sub_1ABA93DC0(v28);
  sub_1ABA95FD4(v12, v13, v14, v15, v16, v17, v18, v19, v21, v1, v22[1], v22[2], v23, v24, v25);
  sub_1ABF22AE4();
  sub_1ABA84B54(v22);
  sub_1ABA84B54(&v25);
  a1[3] = v9;
  a1[4] = v10;
  sub_1ABA93DC0(a1);
  sub_1ABF22B14();
  sub_1ABA84B54(v28);
  return sub_1ABA84B54(v31);
}

uint64_t sub_1ABC2B220@<X0>(void (*a1)(uint64_t *, uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v5 = sub_1ABF22D14();
  v12[3] = v5;
  v12[4] = MEMORY[0x1E69A0050];
  v6 = sub_1ABA93DC0(v12);
  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    swift_once();
  }

  sub_1ABA7AA24(v5, qword_1EB549598);
  sub_1ABA7D08C(v5);
  (*(v7 + 16))(v6);
  v11[3] = MEMORY[0x1E69E63B0];
  v11[4] = MEMORY[0x1E69A0160];
  v11[0] = v2;
  v8 = sub_1ABF22424();
  v9 = MEMORY[0x1E699FE60];
  a2[3] = v8;
  a2[4] = v9;
  sub_1ABA93DC0(a2);
  a1(v12, v11);
  sub_1ABA84B54(v11);
  return sub_1ABA84B54(v12);
}

uint64_t sub_1ABC2B34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a4;
  v16[1] = a1;
  v6 = sub_1ABF22924();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  sub_1ABC2A6FC(a2 & 1, a3, v16 - v9);
  swift_getWitnessTable();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = v16[3];
  v13 = sub_1ABF22234();
  if (v12)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v13;
  result = (*(v7 + 8))(v10, v6);
  *v16[0] = v15;
  return result;
}

uint64_t sub_1ABC2B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  (*(a4 + 80))(v12, a3, a4);
  if (v5)
  {

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return sub_1ABA7B9B4(a5, v14, 1, a3);
}

uint64_t sub_1ABC2B604()
{
  v1 = *v0;
  v2 = v0[3];
  v4 = v0[4];
  swift_getObjectType();
  v5 = *(v1 + 80);
  return sub_1ABF22454();
}

uint64_t sub_1ABC2B700(uint64_t a1, char a2, void (**a3)(char *, uint64_t, uint64_t), void (*a4)(char *, char *), uint64_t a5, void (**a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a3;
  v60 = a6;
  v52 = a4;
  v53 = a5;
  v61 = a1;
  v12 = sub_1ABF247E4();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v46 - v14;
  v50 = *(a8 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ABF247E4();
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v46 - v21;
  v49 = *(a7 - 8);
  v22 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  v28 = sub_1ABF22924();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v46 - v31;
  sub_1ABC2A6FC(a2 & 1, v59, &v46 - v31);
  swift_getWitnessTable();
  v63 = a9;
  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  v34 = v65;
  v35 = sub_1ABF22224();
  if (v34)
  {
    return (*(v29 + 8))(v32, v28);
  }

  v37 = v35;
  v65 = v27;
  (*(v29 + 8))(v32, v28);
  v38 = sub_1ABF222C4();
  v58 = (v49 + 16);
  v59 = (v49 + 32);
  v39 = v63;
  v57 = v63 + 80;
  v60 = (v49 + 8);
  v61 = v38;
  v40 = v54;
  v55 += 8;
  v49 = v50 + 32;
  v50 += 8;
  while (1)
  {
    swift_getWitnessTable();
    v41 = v37;
    sub_1ABF22444();
    v42 = v64;
    if (sub_1ABA7E1E0(v40, 1, a7) == 1)
    {
      break;
    }

    v43 = v65;
    (*v59)(v65, v40, a7);
    (*v58)(v42, v43, a7);
    v44 = v62;
    (*(v39 + 80))(v42, a8, v39);
    sub_1ABA7B9B4(v44, 0, 1, a8);
    v45 = v51;
    (*v49)(v51, v44, a8);
    v66 = 0;
    v52(v45, &v66);
    (*v50)(v45, a8);
    (*v60)(v65, a7);
    if (v66 == 1)
    {
    }

    v39 = v63;
    v40 = v54;
    v37 = v41;
  }

  return (*(v48 + 8))(v40, v47);
}

uint64_t sub_1ABC2BD2C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1ABA7B9B4(a2, 1, 1, a1);
  v9 = *(v5 + 80);
  result = sub_1ABC29498();
  if (v3)
  {
    v7 = sub_1ABF247E4();
    sub_1ABA7D08C(v7);
    return (*(v8 + 8))(a2);
  }

  return result;
}

uint64_t sub_1ABC2BE28(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF247E4();
  (*(*(v9 - 8) + 8))(a3, v9);
  (*(*(a5 - 8) + 16))(a3, a1, a5);
  result = sub_1ABA7B9B4(a3, 0, 1, a5);
  *a2 = 1;
  return result;
}

uint64_t sub_1ABC2BEF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1ABC2BF20()
{
  sub_1ABC2BEF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC2BF6C()
{
  sub_1ABA8C0AC();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  v5 = sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C(v5);
  sub_1ABF21E14();
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1ABA826D8();
  v8 = sub_1ABA96910(v7, MEMORY[0x1E69A0050], v19, v20, v21, v22, v23);
  v0 = v8;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v0);
  v11 = sub_1ABF22424();
  sub_1ABAA0E54(v11, MEMORY[0x1E699FE60], v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4]);
  v12 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v12, v12, MEMORY[0x1E69A0160], v13, v14, v15, v16, v17, v19);
  sub_1ABF24614();
  sub_1ABA84B54(&v19);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C104()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = *v0;
  swift_getObjectType();
  v6 = *(v4 + 80);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22454();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ABC2C1EC()
{
  sub_1ABA8C0AC();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C(v5);
  sub_1ABF21E14();
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1ABA826D8();
  v8 = sub_1ABA96910(v7, MEMORY[0x1E69A0050], v19, v20, v21, v22, v23);
  v0 = v8;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v0);
  v11 = sub_1ABF22424();
  sub_1ABAA0E54(v11, MEMORY[0x1E699FE60], v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4]);
  v12 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v12, v12, MEMORY[0x1E69A0160], v13, v14, v15, v16, v17, v19);
  sub_1ABF23BA4();
  sub_1ABA84B54(&v19);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  sub_1ABA8C0AC();
  v6 = *v5;
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v23[3] = sub_1ABF22D14();
  v23[4] = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v23);
  v8 = v7;
  if (v6)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v7 = swift_once();
    }

    v9 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v7 = swift_once();
    }

    v9 = qword_1EB549598;
  }

  sub_1ABA7ED20(v7, v9);
  (*(v10 + 16))(v8);
  v24[3] = sub_1ABA7ABA4();
  v24[4] = MEMORY[0x1E699FE60];
  v11 = sub_1ABA93DC0(v24);
  v19 = sub_1ABA95FD4(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v23[0]);
  a4(v19);
  sub_1ABA84B54(v22);
  sub_1ABA84B54(v23);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v24, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C50C()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C580()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2B020(v0);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C5E8()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2B220(v0, v1);
  sub_1ABA900B8();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v3, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C654()
{
  sub_1ABAA3CE0();
  sub_1ABC2C104();
  sub_1ABA96BC4();
  sub_1ABAB08B8(&v1, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C6AC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1ABC2A974(a1 & 1, a2);
  sub_1ABC2D0D0();
  sub_1ABAA98EC();
  v12 = sub_1ABF22274();
  result = (*(v8 + 8))(v11, v7);
  if (!v3)
  {
    *a3 = v12;
  }

  return result;
}

uint64_t sub_1ABC2C7E8()
{
  sub_1ABA80B1C();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  v5 = sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C(v5);
  sub_1ABF21E14();
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1ABA826D8();
  v8 = sub_1ABA96910(v7, MEMORY[0x1E69A0050], v19, v20, v21, v22, v23);
  v0 = v8;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v0);
  v11 = sub_1ABF22424();
  sub_1ABAA0E54(v11, MEMORY[0x1E699FE60], v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4]);
  v12 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v12, v12, MEMORY[0x1E69A0160], v13, v14, v15, v16, v17, v19);
  sub_1ABF24614();
  sub_1ABA84B54(&v19);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2C97C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v0;
  swift_getObjectType();
  v5 = *(v3 + 80);
  return sub_1ABF22454();
}

uint64_t sub_1ABC2CA50()
{
  sub_1ABA80B1C();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C(v5);
  sub_1ABF21E14();
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1ABA826D8();
  v8 = sub_1ABA96910(v7, MEMORY[0x1E69A0050], v19, v20, v21, v22, v23);
  v0 = v8;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v9 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v8 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v8 = swift_once();
  }

  v9 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v8, v9);
  (*(v10 + 16))(v0);
  v11 = sub_1ABF22424();
  sub_1ABAA0E54(v11, MEMORY[0x1E699FE60], v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4]);
  v12 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v12, v12, MEMORY[0x1E69A0160], v13, v14, v15, v16, v17, v19);
  sub_1ABF23BA4();
  sub_1ABA84B54(&v19);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *))
{
  sub_1ABA80B1C();
  v8 = *v7;
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v9 = sub_1ABA93DC0(v25);
  v10 = v9;
  if (v8)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v9 = swift_once();
    }

    v11 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v9 = swift_once();
    }

    v11 = qword_1EB549598;
  }

  sub_1ABA7ED20(v9, v11);
  (*(v12 + 16))(v10);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v13 = sub_1ABA93DC0(v26);
  v21 = sub_1ABA95FD4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a6(v21);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CD68()
{
  sub_1ABA8E904();
  sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CDD8()
{
  sub_1ABA8E904();
  sub_1ABC2B020(v0);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CE3C()
{
  sub_1ABA8E904();
  sub_1ABC2B220(v0, v1);
  sub_1ABA7E6E4();
  return sub_1ABAB08B8(v3, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CEA4()
{
  sub_1ABA95864();
  sub_1ABAA3CE0();
  sub_1ABC2C97C();
  return sub_1ABAB08B8(&v1, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CF00(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *, char *), uint64_t a5)
{
  v15[1] = a5;
  v9 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1ABC2A974(a2 & 1, a3);
  sub_1ABC2D0D0();
  sub_1ABAA98EC();
  sub_1ABF22264();
  result = (*(v10 + 8))(v13, v9);
  if (!v5)
  {
    do
    {
      sub_1ABE7EC84();
      if (v17 == 1)
      {
        break;
      }

      v18 = 0;
      a4(&v16, &v18);
    }

    while (v18 != 1);
  }

  return result;
}

uint64_t sub_1ABC2D0A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  return sub_1ABC2CF00(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

unint64_t sub_1ABC2D0D0()
{
  result = qword_1EB4DB890;
  if (!qword_1EB4DB890)
  {
    sub_1ABAE2850(&unk_1EB4D59C0, &unk_1ABF70750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB890);
  }

  return result;
}

void sub_1ABC2D134(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  EntityIdentifier.typed<A>(as:)(a5, a6, &v10);
  if (v6)
  {
  }

  else
  {
    a3(&v10, a2);
  }
}

uint64_t sub_1ABC2D1BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_1ABA7F288();
  v8 = *(v5 + 80);
  sub_1ABA7F288();
  v9 = *(v6 + 88);
  result = sub_1ABC2CEA4();
  if (!v2)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_1ABC2D258(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  EntityIdentifier.typed<A>(as:)(a6, a8, &v12);
  if (v8)
  {
  }

  else
  {
    *a4 = v12;
    *(a4 + 8) = 0;
    *a2 = 1;
  }
}

uint64_t sub_1ABC2D310@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1ABC2C6AC(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1ABC2D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  return sub_1ABC2B34C(a1, *(v2 + 40), *(v2 + 48), a2);
}

uint64_t sub_1ABC2D3D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1ABAD219C(&qword_1EB4D59F0, &qword_1ABF4C7C8);
  sub_1ABA7D08C(v2);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1ABF21EB4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1ABF21974();
  sub_1ABF21964();
  sub_1ABC2D63C();
  result = sub_1ABF23B74();
  if (result)
  {
    v20 = v12[4];
    v20(v10, v18, v11);
    v20(&v10[*(v2 + 48)], v15, v11);
    sub_1ABC2D694(v10, v7, &qword_1EB4D59F0, &qword_1ABF4C7C8);
    v21 = *(v2 + 48);
    v20(a1, v7, v11);
    v22 = v12[1];
    v22(&v7[v21], v11);
    sub_1ABC2D6F8(v10, v7);
    v23 = *(v2 + 48);
    v24 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
    v20(&a1[*(v24 + 36)], &v7[v23], v11);
    return (v22)(v7, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC2D63C()
{
  result = qword_1EB4CF758;
  if (!qword_1EB4CF758)
  {
    sub_1ABF21EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF758);
  }

  return result;
}

uint64_t sub_1ABC2D694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABAD219C(a3, a4);
  sub_1ABA7D08C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABC2D6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D59F0, &qword_1ABF4C7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1ABC2D768(uint64_t *a1, uint64_t a2)
{
  v3 = v2[3];
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = *a1;
  sub_1ABC2D134(&v8, a2, v4, v6, v3, v5);
}

uint64_t sub_1ABC2D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABC2E214();
  sub_1ABC29D28();

  if (!v7)
  {
    sub_1ABA93568();
    sub_1ABC2E92C(v9, v10, v11, v12, v13, a7, v14);
  }

  return result;
}

void sub_1ABC2D998(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v17 = *a2;
  sub_1ABC2E214();
  v22 = v17;
  v18 = a11(a1, &v22, a3, a5 & 1, a6, a8);

  if (!v11)
  {
    sub_1ABC2E92C(v18, a4, a6, a7, a8, a10, a9);
  }

  sub_1ABA7E708();
}

void sub_1ABC2DB74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_1ABC2E214();
  v16 = a10(a1, a2, a4 & 1, a5, a7);

  if (!v10)
  {
    sub_1ABC2E92C(v16, a3, a5, a6, a7, a8, a9);
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABC2DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABC2E214();
  v15 = sub_1ABC29D28();

  if (!v10)
  {
    sub_1ABC2ECA4(v15, a2, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t sub_1ABC2DE24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v18 = *a2;
  sub_1ABC2E214();
  v24 = v18;
  v19 = a13(a1, &v24, a3, a5 & 1, a8, a10);

  if (!v13)
  {
    sub_1ABC2ECA4(v19, a4, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

void sub_1ABC2E014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_1ABC2E214();
  v17 = a12(a1, a2, a4 & 1, a7, a9);

  if (!v12)
  {
    sub_1ABC2ECA4(v17, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABC2E144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v19 = a6;
  sub_1ABC2E214();
  a7(&v18, a1, a3, a5);

  if (!v7)
  {
    sub_1ABA93568();
    return sub_1ABC2F23C(v13, v14, v15, v16, v19, v17);
  }

  return result;
}

uint64_t sub_1ABC2E214()
{
  v1 = *(*(*v0 + 88) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_1ABC2E288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_1ABA7BD7C();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v11, v9);
  return (*(v5 + 32))(a2, v11, v3);
}

uint64_t sub_1ABC2E358@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = a1[3];
  v6 = a1[6];
  type metadata accessor for TypedEntityIdentifier();
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v7 = sub_1ABF252B4();
  v8 = sub_1ABF247E4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v52 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  sub_1ABA7BD7C();
  v17 = *(v16 + 64);
  v19 = (MEMORY[0x1EEE9AC00])(v18);
  v56 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (MEMORY[0x1EEE9AC00])(v19);
  v23 = &v51 - v22;
  v24 = (MEMORY[0x1EEE9AC00])(v21);
  v26 = &v51 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v51 - v28;
  v30 = a1[4];
  v64 = a1[7];
  v65 = v30;
  v68 = v8;
  v69 = (v31 + 16);
  v59 = v8 - 8;
  v62 = (v31 + 8);
  v63 = (v31 + 32);
  v27.n128_u64[0] = 136315138;
  v55 = v27;
  v57 = v3;
  v58 = v7;
  v60 = v26;
  for (i = v15; ; v15 = i)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v15, 1, TupleTypeMetadata2) == 1)
    {
      (*(v52 + 8))(v15, v53);
      v48 = 1;
      v49 = v54;
      return sub_1ABA7B9B4(v49, v48, 1, v7);
    }

    (*v63)(v29, v15, TupleTypeMetadata2);
    v32 = *v69;
    (*v69)(v26, v29, TupleTypeMetadata2);
    v33 = *(TupleTypeMetadata2 + 48);
    if (sub_1ABA7E1E0(&v26[v33], 1, v7) != 1)
    {
      break;
    }

    v34 = *(v68 - 8);
    v35 = *(v34 + 8);
    v66 = v34 + 8;
    v67 = v35;
    (v35)(&v26[v33]);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v36 = sub_1ABF237F4();
    sub_1ABA7AA24(v36, qword_1ED871B40);
    v32(v23, v29, TupleTypeMetadata2);
    v37 = sub_1ABF237D4();
    v38 = sub_1ABF24664();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = v40;
      *v39 = v55.n128_u32[0];
      v41 = v56;
      v32(v56, v23, TupleTypeMetadata2);
      v42 = *(TupleTypeMetadata2 + 48);
      v70 = *v41;
      v67(&v41[v42], v68);
      v67 = *v62;
      v67(v23, TupleTypeMetadata2);
      v43 = EntityIdentifier.description.getter();
      v45 = sub_1ABADD6D8(v43, v44, &v71);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1ABA78000, v37, v38, "ID %s is in Event index but constructing a graph object from it results in nil!", v39, 0xCu);
      sub_1ABA84B54(v40);
      v46 = v40;
      v7 = v58;
      MEMORY[0x1AC5AB8B0](v46, -1, -1);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);

      v67(v29, TupleTypeMetadata2);
    }

    else
    {
      v47 = *v62;
      (*v62)(v23, TupleTypeMetadata2);

      v47(v29, TupleTypeMetadata2);
    }

    v26 = v60;
  }

  (*v62)(v29, TupleTypeMetadata2);
  v49 = v54;
  (*(*(v7 - 8) + 32))(v54, &v26[v33], v7);
  v48 = 0;
  return sub_1ABA7B9B4(v49, v48, 1, v7);
}

uint64_t sub_1ABC2E8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABC2E288(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

void sub_1ABC2E92C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v37 = a5;
  v38 = a1;
  v39 = a2;
  v35 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v41 = v10;
  v13 = a3;
  v42 = a3;
  v43 = a4;
  v14 = a4;
  v44 = AssociatedConformanceWitness;
  v45 = v12;
  v15 = v36;
  v16 = v37;
  v46 = v37;
  v47 = v36;
  v48 = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for TypedGraphObjectSequence.Iterator();
  v33 = *(v17 - 8);
  v34 = v17;
  v18 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - v19;
  v40 = AssociatedTypeWitness;
  v41 = v10;
  v42 = v13;
  v43 = v14;
  v44 = AssociatedConformanceWitness;
  v45 = v12;
  v46 = v37;
  v47 = v36;
  v20 = type metadata accessor for TypedGraphObjectSequence();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v31 - v23;
  v40 = v38;
  type metadata accessor for TypedEntityIdentifier();
  v25 = sub_1ABF241F4();
  WitnessTable = swift_getWitnessTable();
  v27 = v49;
  GraphObjectBareContextProtocol.graphObjects<A, B>(for:)(&v40, v14, v13, v25, v15, v16, WitnessTable, v28, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  if (!v27)
  {
    v29 = v32;
    sub_1ABEB29C4(v20, v32);
    (*(v21 + 8))(v24, v20);
    v30 = v34;
    swift_getWitnessTable();
    (*(v33 + 32))(v35, v29, v30);
  }
}

void sub_1ABC2ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v26 = a1;
  v18 = *(v14 + 80);
  v19 = a5;
  v20 = a6;
  v21 = *(v14 + 88);
  v22 = a7;
  v23 = a8;
  v24 = a3;
  v25 = a4;
  type metadata accessor for TypedEntityIdentifier();
  v15 = sub_1ABF241F4();
  WitnessTable = swift_getWitnessTable();
  GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(for:block:)(&v26, sub_1ABC2F424, v17, a6, a5, v15, a8, a7, WitnessTable, a9, v17[0], v17[1], v18, v19, v20, v21, v22, v23, a9, v24, v25, v26);
}

uint64_t sub_1ABC2EDBC(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38[1] = a4;
  v39 = a3;
  v40 = *(a6 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v41 = a6;
  v11 = sub_1ABF252B4();
  v12 = sub_1ABF247E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v38 - v16;
  v18 = *(v11 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v38 - v23;
  v25 = *a1;
  (*(v13 + 16))(v17, a2, v12);
  if (sub_1ABA7E1E0(v17, 1, v11) == 1)
  {
    (*(v13 + 8))(v17, v12);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B40);
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24664();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v44 = v25;
      v31 = EntityIdentifier.description.getter();
      v33 = sub_1ABADD6D8(v31, v32, &v45);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1ABA78000, v27, v28, "ID %s is in Event index but constructing a graph object from it results in nil!", v29, 0xCu);
      sub_1ABA84B54(v30);
      MEMORY[0x1AC5AB8B0](v30, -1, -1);
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
    }

    v34 = 1;
  }

  else
  {
    (*(v18 + 32))(v24, v17, v11);
    LOBYTE(v44) = 0;
    (*(v18 + 16))(v22, v24, v11);
    v36 = v42;
    v35 = v43;
    sub_1ABD49B3C(v11, &v45, v42);
    if (v35)
    {
      (*(v18 + 8))(v24, v11);
    }

    else
    {
      v39(v36, &v44);
      (*(v40 + 8))(v36, v41);
      (*(v18 + 8))(v24, v11);
      v34 = v44 ^ 1;
    }
  }

  return v34 & 1;
}

uint64_t sub_1ABC2F23C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a1[1])
  {
    return sub_1ABA7B9B4(a6, 1, 1, a3);
  }

  v11 = *a1;
  v10 = type metadata accessor for TypedEntityIdentifier();
  return TypedEntityIdentifier.graphObject<A>(from:)(a2, v10, a4, a5);
}

uint64_t sub_1ABC2F350()
{
  sub_1ABC2F2E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC2F3D8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1ABC2F424(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v7 = *(v2 + 64);
  v6 = *(v2 + 48);
  return sub_1ABC2EDBC(a1, a2, *(v2 + 72), *(v2 + 80), *(v2 + 16), *(v2 + 24)) & 1;
}

uint64_t sub_1ABC2F464(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC2F4D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1ABA7E1E0(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1ABA7E1E0(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1ABC2F610(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABC2F83C(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = SecTaskCreateFromSelf(0);
  if (v3)
  {
    v4 = v3;
    error[0] = 0;
    v5 = sub_1ABF23BD4();
    a2 = SecTaskCopyValueForEntitlement(v4, v5, error);

    if (a2)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        a2 = v13;
        if (error[0])
        {
        }

        goto LABEL_14;
      }

      sub_1ABB6ADDC();
      swift_allocError();
      *v10 = xmmword_1ABF34750;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!error[0])
      {
        a2 = 0;
LABEL_14:

        goto LABEL_15;
      }

      sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
      a2 = sub_1ABF23C74();
      v8 = v7;
      sub_1ABB6ADDC();
      swift_allocError();
      *v9 = a2;
      v9[1] = v8;
      swift_willThrow();
    }

    if (error[0])
    {
    }

    goto LABEL_14;
  }

  sub_1ABB6ADDC();
  swift_allocError();
  *v6 = 0;
  v6[1] = 0;
  swift_willThrow();
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1ABC2FA2C(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = SecTaskCreateFromSelf(0);
  if (v3)
  {
    v4 = v3;
    error[0] = 0;
    v5 = sub_1ABF23BD4();
    a2 = SecTaskCopyValueForEntitlement(v4, v5, error);

    if (a2)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        a2 = v13;
        if (error[0])
        {
        }

        goto LABEL_14;
      }

      sub_1ABB6ADDC();
      swift_allocError();
      *v10 = xmmword_1ABF34750;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!error[0])
      {
        a2 = 2;
LABEL_14:

        goto LABEL_15;
      }

      sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
      a2 = sub_1ABF23C74();
      v8 = v7;
      sub_1ABB6ADDC();
      swift_allocError();
      *v9 = a2;
      v9[1] = v8;
      swift_willThrow();
    }

    if (error[0])
    {
    }

    goto LABEL_14;
  }

  sub_1ABB6ADDC();
  swift_allocError();
  *v6 = 0;
  v6[1] = 0;
  swift_willThrow();
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return a2;
}

id rawObjCInt64ToEventID(_:)(uint64_t a1)
{
  sub_1ABAE2BF0(a1, v4);
  sub_1ABB373C8();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = [v3 longLongValue];

  return v1;
}

uint64_t sub_1ABC2FCB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v25) = a4;
  v26 = a3;
  v28 = a2;
  v29 = sub_1ABF21EB4();
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = a5;
  v33[1] = a6;
  v33[2] = a7;
  if (qword_1ED86B788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1ABA93E64(&qword_1ED86E090, v30);
  v15 = v31;
  v14 = v32;
  sub_1ABA93E20(v30, v31);
  v16 = *(v14 + 8);
  v17 = sub_1ABC34124();
  v18 = v28;
  v19 = v16(&type metadata for DictionaryEvent, a1, v28, &type metadata for DictionaryEvent, v17, v15, v14);
  sub_1ABA84B54(v30);
  sub_1ABA93E64(&qword_1ED86E090, v30);
  v20 = v31;
  v21 = v32;
  sub_1ABA93E20(v30, v31);
  sub_1ABF21E74();
  if ((v25 & 0x100000000) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v26;
  }

  v23 = sub_1ABC3009C(v22);
  (*(v21 + 32))(v19, v13, a1, v18, v23, v33, &type metadata for DictionaryEvent, v17, v20, v21);
  (*(v27 + 8))(v13, v29);
  sub_1ABA84B54(v30);
  return v19;
}

void static EventLogger.instant<A>(named:parent:_:)()
{
  sub_1ABA7E2A8();
  v30 = v1;
  v3 = v2;
  v27 = v4;
  v28 = v5;
  v26 = v6;
  v8 = v7;
  v10 = v9;
  v29 = sub_1ABF21EB4();
  v11 = sub_1ABA7BB64(v29);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  sub_1ABA7F2A0();
  sub_1ABAA3120();
  v17 = v32;
  v18 = v33;
  sub_1ABA93E20(v31, v32);
  v19 = sub_1ABAA40B0();
  v21 = v20(v19, v10, v8, v3, v30, v17, v18);
  sub_1ABA84B54(v31);
  sub_1ABAA3120();
  sub_1ABAA2CCC();
  if (v26)
  {
    v22 = 0;
  }

  else
  {
    v22 = v27;
  }

  v23 = sub_1ABC3009C(v22);
  (*(v18 + 32))(v21, v16, v10, v8, v23, v28, v3, v30, v0, v18);
  v24 = sub_1ABAA4E3C();
  v25(v24);
  sub_1ABA84B54(v31);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC3009C(uint64_t result)
{
  if (!result)
  {
    if (qword_1EB4CF6E8 != -1)
    {
      sub_1ABA7D7D8();
      swift_once();
    }

    sub_1ABF25374();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t static EventLogger.instant<A>(file:function:line:parent:_:)()
{
  sub_1ABA84160();

  v2 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v2);
  MEMORY[0x1AC5A9410](v1, v0);
  v3 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v3);
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  static EventLogger.instant<A>(named:parent:_:)();
  v6 = v5;

  return v6;
}

uint64_t sub_1ABC301FC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6, void (*a7)(uint64_t *__return_ptr, void), uint64_t a8)
{
  v39 = a8;
  v40 = a7;
  v46 = a6;
  v47 = a5;
  v43 = a4;
  v44 = a3;
  v45 = a2;
  v49 = sub_1ABF21EB4();
  v58 = *(v49 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if (qword_1ED86B788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1ABA93E64(&qword_1ED86E090, &v54);
  v14 = v56;
  v15 = v57;
  sub_1ABA93E20(&v54, v56);
  v16 = *(v15 + 8);
  v17 = sub_1ABC34124();
  v18 = a1;
  v42 = a1;
  v19 = v45;
  v20 = v16(&type metadata for DictionaryEvent, v18, v45, &type metadata for DictionaryEvent, v17, v14, v15);
  sub_1ABA84B54(&v54);
  sub_1ABA93E64(&qword_1ED86E090, &v54);
  v21 = v56;
  v22 = v57;
  sub_1ABA93E20(&v54, v56);
  sub_1ABF21E74();
  if (v43)
  {
    v23 = 0;
  }

  else
  {
    v23 = v44;
  }

  v24 = sub_1ABC3009C(v23);
  v25 = *(v22 + 16);
  v45 = v17;
  v25(&type metadata for DictionaryEvent, v13, v20, v42, v19, v24, &type metadata for DictionaryEvent, v17, v21, v22, v39, v40);
  v27 = v58 + 8;
  v26 = *(v58 + 8);
  v28 = v49;
  v26(v13, v49);
  sub_1ABA84B54(&v54);
  if (qword_1EB4CF6E8 != -1)
  {
    swift_once();
  }

  v54 = v20;
  LOBYTE(v55) = 0;
  sub_1ABAD219C(&qword_1EB4D5A48, &qword_1ABF4CC48);
  swift_task_localValuePush();
  v29 = v48;
  v47(&v52, v20);
  if (v29)
  {
    swift_task_localValuePop();
    v40(&v54, v29);
    v30 = v54;
    v31 = v55;
    if (v55)
    {
      v52 = v54;
      v53 = v55;
      sub_1ABA93E64(&qword_1ED86E090, &v54);
      v58 = v27;
      v32 = v56;
      v33 = v57;
      sub_1ABA93E20(&v54, v56);
      v48 = v26;
      v34 = v41;
      sub_1ABF21E74();
      (*(v33 + 24))(v20, v34, &v52, &type metadata for DictionaryEvent, v45, v32, v33);
      v48(v34, v49);
      sub_1ABAFEE5C(v30, v31);
      sub_1ABA84B54(&v54);
    }

    else
    {
      sub_1ABAFEE5C(v54, 0);
    }

    swift_willThrow();
  }

  else
  {
    swift_task_localValuePop();
    v50 = v52;
    v51 = v53;
    sub_1ABA93E64(&qword_1ED86E090, &v54);
    v35 = v56;
    v36 = v57;
    sub_1ABA93E20(&v54, v56);
    v37 = v41;
    sub_1ABF21E74();
    (*(v36 + 24))(v20, v37, &v50, &type metadata for DictionaryEvent, v45, v35, v36);
    v26(v37, v28);
    sub_1ABA84B54(&v54);
  }

  return v20;
}