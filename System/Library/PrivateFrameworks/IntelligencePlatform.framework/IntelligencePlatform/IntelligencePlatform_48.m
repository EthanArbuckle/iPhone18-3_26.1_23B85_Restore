uint64_t sub_1ABE074BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABA7F2A0();
  if (*(a2 + 32))
  {
    v7 = *(a2 + 32);

    sub_1ABB2B8C0(v8);
    v10 = v9;
    v12 = v11;

    if (v10)
    {

      sub_1ABA7F2A0();
      v13 = *(v12 + 24);
      if (v13)
      {
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v16 = *(v12 + 24);

        sub_1ABE19D84(v14, v15, &v19);

        if (v20)
        {
          sub_1ABA946C0(&v19, v21);
          v17 = v22;
          v18 = v23;
          sub_1ABA93E20(v21, v22);
          (*(v18 + 32))(a1, v13, v17, v18);

          return sub_1ABA84B54(v21);
        }

        result = sub_1ABA925A4(&v19, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

      else
      {
      }
    }
  }

  *a3 = *(a2 + 64);
  return result;
}

void *sub_1ABE0763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a7;
  v109 = a3;
  v110 = a4;
  v108 = a2;
  v111 = a1;
  Context = type metadata accessor for QueryContext();
  v11 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResultGraph();
  v15 = sub_1ABA93918();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = sub_1ABF239C4();
  *(v15 + 24) = v16;
  v126[3] = type metadata accessor for LogicalOperator();
  v126[4] = &off_1F20885C8;
  v126[0] = v7;

  sub_1ABE19E30(v126, a5);
  v18 = v8;
  if (v8)
  {
    sub_1ABA84B54(v126);
    swift_willThrow();
  }

  v112 = v13;
  v103 = v7;
  v107 = Context;
  v100 = v15;
  v114 = v17;
  sub_1ABA84B54(v126);
  v20 = v114;
  v21 = 0;
  v22 = *(v114 + 16);
  memset(__src, 0, 88);
  v101 = v113 + 1;
  v23 = __OFADD__(v113, 1);
  v102 = v23;
  *(&__src[5] + 8) = xmmword_1ABF34940;
  BYTE8(__src[6]) = 0;
  v24 = v114 + 40;
  v113 = -v22;
  v98 = v14;
  v99 = v114 + 40;
  while (2)
  {
    for (i = (v24 + 16 * v21++); ; i += 2)
    {
      if (v113 + v21 == 1)
      {

        v73 = v100;
        goto LABEL_47;
      }

      if ((v21 - 1) >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v27 = *(i - 1);
      v26 = *i;
      swift_beginAccess();
      v28 = *(a5 + 32);
      if (v28)
      {
        break;
      }

LABEL_33:
      swift_endAccess();
LABEL_34:

LABEL_35:
      ++v21;
      v20 = v114;
    }

    v29 = *(v28 + 16);

    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = sub_1ABA94FC8(v27, v26);
    if ((v31 & 1) == 0)
    {
      goto LABEL_33;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    swift_endAccess();
    sub_1ABA7F2A0();
    v127 = *(v32 + 24);
    if (!v127 || (sub_1ABE71D70() & 1) != 0)
    {
      goto LABEL_34;
    }

    v106 = v32;

    v33 = v112;
    sub_1ABE3CF94(v112);

    if (v102)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v34 = sub_1ABE177BC(v124, v33, &v127, a5, v101, v108, v109, v110);
    if (v18)
    {

      sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

      sub_1ABB529C4(v112);
    }

    v35 = v34;
    memcpy(v123, v124, 0x69uLL);
    memcpy(v122, v124, 0x69uLL);
    sub_1ABA7D5F0();
    if (((*(v36 + 240))(v35, v122) & 1) == 0)
    {
      sub_1ABA7F7F4();
      sub_1ABA925A4(v78, v79, v80);
      sub_1ABA7F7F4();
      sub_1ABA925A4(v81, v82, v83);

      v84 = v100;
      sub_1ABE48330();

      sub_1ABB529C4(v112);

      v85 = v111;
      v86 = *(v111 + 8);

      *(v85 + 8) = v84;
      return result;
    }

    v104 = v35;
    v37 = *(v107 + 48);
    v38 = v111;
    v39 = &v112[v37];
    v40 = (v111 + v37);
    v41 = *(v111 + v37);
    v42 = __OFADD__(v41, *v39);
    v43 = v41 + *v39;
    if (v42)
    {
      goto LABEL_59;
    }

    v105 = 0;
    v44 = *(v39 + 1);
    v45 = *(v39 + 2);
    *v40 = v43;

    sub_1ABD7DA50(v44);
    v46 = v45;
    v47 = v112;
    sub_1ABD7DFB4(v46);
    v48 = *(v47 + 2);
    if (v48 <= *(v38 + 16))
    {
      v48 = *(v38 + 16);
    }

    *(v38 + 16) = v48;
    if (!v127 || (v49 = *(v127 + 81), v49 == 2) || (v49 & 1) == 0)
    {
      memcpy(v121, v123, sizeof(v121));
      v50 = v123[11];
      v51 = v123[12];
      v52 = v123[13];
      if (v123[11] >> 1 == 0xFFFFFFFFLL && (v123[13] & 0x1E) == 0)
      {
        if (v21 == 1)
        {
          sub_1ABB529C4(v112);

          memcpy(v120, __src, sizeof(v120));
          v51 = *&__src[6];
          v50 = *(&__src[5] + 1);
          v53 = v104;
          v52 = BYTE8(__src[6]);
          goto LABEL_45;
        }

        v50 = *(&__src[5] + 1);
        v52 = BYTE8(__src[6]);
        if (*(&__src[5] + 1) >> 1 == 0xFFFFFFFFLL && (BYTE8(__src[6]) & 0x1E) == 0)
        {
          v97 = v127;
          memcpy(v119, __src, sizeof(v119));
          v51 = *&__src[6];
          goto LABEL_42;
        }

        if ((BYTE8(__src[6]) & 0x10) != 0)
        {

          sub_1ABB529C4(v112);

          v18 = v105;
          goto LABEL_35;
        }

        v97 = v127;
        v54 = v104;
        sub_1ABA7F2A0();
        v55 = *(v54 + 24);

        v57 = sub_1ABE8AE5C(v56);
        v58 = v96 & 1;
        v59 = v95 & 1 | 0x20;
        memcpy(v118, __src, sizeof(v118));
        v117[0] = 0;
        v117[1] = v57;
        memset(&v117[2], 0, 64);
        v117[11] = v58;
        LOBYTE(v117[13]) = v95 & 1 | 0x20;
        sub_1ABA7D5F0();
        v61 = *(v60 + 232);
        v62 = sub_1ABA7EAEC();
        v63(v62);
        if (!v44)
        {
          v96 = v58;
          v105 = 0;
          memcpy(v115, v117, 0x69uLL);
          sub_1ABAE4B6C(v115);
          sub_1ABA7DE20();
          sub_1ABA925A4(v116, &qword_1EB4D3430, &unk_1ABF6B740);
          memcpy(v119, v122, sizeof(v119));
          v50 = v122[11];
          v51 = v122[12];
          v95 = v59;
          v52 = v122[13];
LABEL_42:
          v64 = v104;
          sub_1ABA7D5F0();
          (*(v65 + 224))(v100, v64);
          v53 = v100;

          sub_1ABB529C4(v112);

          memcpy(v120, v119, sizeof(v120));
LABEL_45:
          v100 = v53;
          memcpy(__src, v120, 0x58uLL);
          *(&__src[5] + 1) = v50;
          *&__src[6] = v51;
          BYTE8(__src[6]) = v52;
          v18 = v105;
          v20 = v114;
          v24 = v99;
          continue;
        }

LABEL_57:

        memcpy(v115, v117, 0x69uLL);
        sub_1ABAE4B6C(v115);
        sub_1ABA7DE20();
        sub_1ABA925A4(v116, &qword_1EB4D3430, &unk_1ABF6B740);
        sub_1ABB529C4(v112);
      }

      if (v21 == 1)
      {
        sub_1ABB529C4(v112);
        sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

        memcpy(v120, v121, sizeof(v120));
        v53 = v100;
        goto LABEL_45;
      }

      v97 = v127;
      memcpy(v118, __src, sizeof(v118));
      memcpy(v117, v123, 0x58uLL);
      v117[11] = v123[11];
      v117[12] = v123[12];
      LOBYTE(v117[13]) = v123[13];
      sub_1ABA7D5F0();
      v67 = *(v66 + 232);
      v68 = sub_1ABA7EAEC();
      v69(v68);
      v105 = v44;
      v53 = v100;
      if (!v44)
      {
        sub_1ABA7DE20();
        sub_1ABA925A4(v116, &qword_1EB4D3430, &unk_1ABF6B740);

        sub_1ABB529C4(v112);
        sub_1ABA7F7F4();
        sub_1ABA925A4(v70, v71, v72);

        memcpy(v120, v122, sizeof(v120));
        v50 = v122[11];
        v51 = v122[12];
        v52 = v122[13];
        goto LABEL_45;
      }

LABEL_60:

      sub_1ABA7DE20();
      sub_1ABA7F7F4();
      sub_1ABA925A4(v88, v89, v90);
      sub_1ABB529C4(v112);
      sub_1ABA7F7F4();
      sub_1ABA925A4(v91, v92, v93);
    }

    break;
  }

  sub_1ABA925A4(v123, &qword_1EB4D3430, &unk_1ABF6B740);

  v73 = sub_1ABA93918();
  v87 = MEMORY[0x1E69E7CC0];
  *(v73 + 16) = sub_1ABF239C4();
  *(v73 + 24) = v87;

  sub_1ABB529C4(v47);

LABEL_47:
  v74 = v111;
  v75 = *(v111 + 8);

  *(v74 + 8) = v73;
  if (*(&__src[5] + 1) >> 1 != 0xFFFFFFFFLL || (BYTE8(__src[6]) & 0x1E) != 0)
  {
    v77 = *(v107 + 32);
    memcpy(v124, (v74 + v77), 0x69uLL);
    sub_1ABA925A4(v124, &qword_1EB4D3430, &unk_1ABF6B740);
    return memcpy((v74 + v77), __src, 0x69uLL);
  }

  return result;
}

uint64_t sub_1ABE07FF4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = a2 + *(type metadata accessor for QueryContext() + 32);
  if (*(v15 + 88) >> 1 != 0xFFFFFFFFLL || (*(v15 + 104) & 0x1E) != 0)
  {
    memcpy(__dst, v15, 0x69uLL);
    memcpy(a1, v15, 0x69uLL);
    sub_1ABB52954(__dst, __src);
LABEL_6:
    v17 = 0;
    return v17 & 1;
  }

  sub_1ABA7F2A0();
  v66 = a4;
  v67 = a1;
  v68 = a6;
  v64 = a3;
  v65 = a5;
  v63 = a2;
  if (*(a6 + 32))
  {
    v18 = *(a6 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v18 = sub_1ABF239C4();
  }

  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (v22)
  {
LABEL_18:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(*(v18 + 56) + ((v24 << 9) | (8 * v27)));
    sub_1ABA7F2A0();
    v7 = *(v28 + 24);
    if (v7)
    {
      v59 = v18;
      if (!*(v66 + 16))
      {
LABEL_48:

LABEL_49:
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1ABF24AB4();

        *&__dst[0] = 0xD000000000000023;
        *(&__dst[0] + 1) = 0x80000001ABF91DE0;
        v47 = *(v7 + 16);
        v46 = *(v7 + 24);

        MEMORY[0x1AC5A9410](v47, v46);

        sub_1ABAF2860();
        v48 = swift_allocError();
        sub_1ABA7C6A8(v48, v49);

        return v17 & 1;
      }

      v29 = *(v7 + 16);
      v60 = *(v7 + 24);

      v30 = sub_1ABA94FC8(v29, v60);
      v57 = v31;

      if ((v57 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_1ABA93E64(*(v66 + 56) + 40 * v30, __dst);
      sub_1ABA946C0(__dst, v72);
      v32 = v72[4];
      v61 = v72[3];
      sub_1ABA93E20(v72, v72[3]);
      (*(v32 + 64))(__dst, v63, v64, v66, v65, v7, v68, v61, v32);
      if (v8)
      {

LABEL_53:

        sub_1ABA84B54(v72);
        return v17 & 1;
      }

      memcpy(__src, __dst, 0x69uLL);
      memcpy(v74, __dst, 0x69uLL);
      sub_1ABA7D5F0();
      if (((*(v33 + 240))(0, v74) & 1) == 0)
      {

        sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

        *(v67 + 10) = 0;
        *(v67 + 3) = 0u;
        *(v67 + 4) = 0u;
        *(v67 + 1) = 0u;
        *(v67 + 2) = 0u;
        *v67 = 0u;
        *(v67 + 88) = xmmword_1ABF34940;
        v67[104] = 0;
        sub_1ABA84B54(v72);
        goto LABEL_6;
      }

      memcpy(v74, __src, 0x58uLL);
      if (__src[11] >> 1 == 0xFFFFFFFFLL && (__src[13] & 0x1E) == 0)
      {

        sub_1ABF24AB4();

        v71[0] = 0x6F6E20646C696863;
        v71[1] = 0xEB00000000206564;
        v51 = *(v7 + 16);
        v50 = *(v7 + 24);

        MEMORY[0x1AC5A9410](v51, v50);

        MEMORY[0x1AC5A9410](543584032, 0xE400000000000000);
        v53 = *(v68 + 16);
        v52 = *(v68 + 24);

        MEMORY[0x1AC5A9410](v53, v52);

        MEMORY[0x1AC5A9410](0xD00000000000001DLL, 0x80000001ABF91E10);
        sub_1ABAF2860();
        v54 = swift_allocError();
        sub_1ABA7C6A8(v54, v55);
        goto LABEL_53;
      }

      v56 = __src[12];
      v58 = __src[13];
      v62 = __src[11];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = v25[2];
        sub_1ABAD90C0();
        v25 = v37;
      }

      v34 = v25[2];
      if (v34 >= v25[3] >> 1)
      {
        sub_1ABAD90C0();
        v25 = v38;
      }

      v25[2] = v34 + 1;
      v35 = &v25[14 * v34];
      memcpy(v35 + 4, v74, 0x58uLL);
      v35[15] = v62;
      v35[16] = v56;
      *(v35 + 136) = v58;

      sub_1ABA84B54(v72);
      v18 = v59;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_18;
    }
  }

  if (((1 << *(v68 + 64)) & 0x1FA) == 0 || (v39 = v25[2]) == 0)
  {

    v17 = 0;
    *(v67 + 10) = 0;
    *(v67 + 3) = 0u;
    *(v67 + 4) = 0u;
    *(v67 + 1) = 0u;
    *(v67 + 2) = 0u;
    *v67 = 0u;
    *(v67 + 88) = xmmword_1ABF34940;
    v67[104] = 0;
    return v17 & 1;
  }

  memcpy(__dst, v25 + 4, 0x69uLL);
  if (v39 == 1)
  {
    sub_1ABAE4B10(__dst, __src);

    v40 = __dst;
LABEL_44:
    memcpy(v67, v40, 0x69uLL);
    v17 = 1;
    return v17 & 1;
  }

  sub_1ABAE4B10(__dst, __src);
  result = memcpy(v73, __dst, 0x69uLL);
  v42 = 0;
  for (i = 4; ; i += 14)
  {
    if (v39 == v42)
    {

      v40 = v73;
      goto LABEL_44;
    }

    if (v42 >= v25[2])
    {
      break;
    }

    memcpy(v74, &v25[i], 0x69uLL);
    memcpy(__src, v74, 0x69uLL);
    if (v42)
    {
      memcpy(v71, v73, 0x69uLL);
      memcpy(v70, v74, 0x69uLL);
      sub_1ABA7D5F0();
      v45 = *(v44 + 232);
      sub_1ABAE4B10(v74, v69);
      v45(v72, v71, v70);
      if (v8)
      {
        memcpy(v69, v71, 0x69uLL);
        sub_1ABA925A4(v69, &qword_1EB4D3430, &unk_1ABF6B740);

        sub_1ABAE4B6C(__src);
        return v17 & 1;
      }

      memcpy(v69, v71, 0x69uLL);
      sub_1ABA925A4(v69, &qword_1EB4D3430, &unk_1ABF6B740);
      sub_1ABAE4B6C(__src);
      result = memcpy(v73, v72, 0x69uLL);
    }

    else
    {
      sub_1ABAE4B10(v74, v72);
      result = sub_1ABAE4B6C(__src);
    }

    ++v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE08800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 80);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7 == 2 || (v7 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      v12 = *(a1 + 8);
    }

    else
    {
      type metadata accessor for ResultGraph();
      v13 = sub_1ABA93918();
      *(v13 + 16) = sub_1ABF239C4();
      *(v13 + 24) = v8;
    }

    return a3;
  }

  type metadata accessor for ResultGraph();
  v10 = sub_1ABA93918();
  *(v10 + 16) = sub_1ABF239C4();
  *(v10 + 24) = v8;
  v50 = type metadata accessor for LogicalOperator();
  v51 = &off_1F20885C8;
  v49[0] = v3;

  sub_1ABE19E30(v49, a2);
  if (v4)
  {

    sub_1ABA84B54(v49);
    return a3;
  }

  v15 = v11;
  result = sub_1ABA84B54(v49);
  v16 = v15;
  v52 = *(v15 + 16);
  if (!v52)
  {
LABEL_35:

    return sub_1ABE491D0();
  }

  v44 = a1;
  v45 = a3;
  v17 = 0;
  v18 = (v16 + 40);
  v19 = v52;
  v47 = v16;
  while (v17 < *(v16 + 16))
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    swift_beginAccess();
    v22 = *(a2 + 32);
    if (v22 && *(v22 + 16))
    {

      v23 = sub_1ABA94FC8(v20, v21);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);
        swift_endAccess();

        sub_1ABA7F2A0();
        v26 = *(v25 + 24);
        if (v26 && ((v27 = *(v26 + 81), v27 == 2) || (v27 & 1) == 0))
        {
          v28 = *(v26 + 16);
          v29 = *(v26 + 24);
          v30 = qword_1ED86D3A8;
          v31 = *(v25 + 24);

          if (v30 != -1)
          {
            swift_once();
          }

          v32 = qword_1ED87C3F8;
          if (!*(qword_1ED87C3F8 + 16))
          {

LABEL_31:
            v16 = v47;
            v19 = v52;
            goto LABEL_34;
          }

          v46 = sub_1ABA94FC8(v28, v29);
          v34 = v33;

          if ((v34 & 1) == 0)
          {

            goto LABEL_31;
          }

          sub_1ABA93E64(*(v32 + 56) + 40 * v46, v48);
          sub_1ABA946C0(v48, v49);
          *(v26 + 80) = 1;
          v35 = v50;
          v36 = v51;
          sub_1ABA93E20(v49, v50);
          (v36[10])(v44, v26, v45, v35, v36);
          v38 = v37;

          sub_1ABA7D5F0();
          v16 = v47;
          if (((*(v39 + 248))(v38) & 1) == 0)
          {

            v41 = sub_1ABA93918();
            v42 = MEMORY[0x1E69E7CC0];
            v43 = sub_1ABF239C4();

            *(v41 + 16) = v43;
            *(v41 + 24) = v42;
            sub_1ABA84B54(v49);
            return v42;
          }

          sub_1ABE48E88(*(v26 + 48));
          if (sub_1ABE47EF0())
          {

            v10 = v38;
          }

          else
          {
            sub_1ABA7D5F0();
            (*(v40 + 224))(v10, v38);
          }

          v19 = v52;
          result = sub_1ABA84B54(v49);
        }

        else
        {
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      result = swift_endAccess();
    }

LABEL_34:
    ++v17;
    v18 += 2;
    if (v19 == v17)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE08CFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_1ABE47F28(a2);
  }

  return result;
}

void *sub_1ABE08D2C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  memcpy(__dst, a2, 0x69uLL);
  if (v7 >> 1 == 0xFFFFFFFF && (v9 & 0x1E) == 0)
  {
    memcpy(a3, a2, 0x69uLL);
    return sub_1ABAE4B10(__dst, v15);
  }

  else
  {
    memcpy(__src, a1, 0x58uLL);
    __src[11] = v7;
    __src[12] = v8;
    LOBYTE(__src[13]) = v9;
    memcpy(v13, a2, sizeof(v13));
    v12[111] = 1;
    memcpy(v15, a1, sizeof(v15));
    v16 = v7;
    v17 = v8;
    v18 = v9;
    sub_1ABAE4B10(v15, v12);
    sub_1ABE3A1C8();
    memcpy(v12, __src, 0x69uLL);
    if (v3)
    {
      return sub_1ABAE4B6C(v12);
    }

    else
    {
      sub_1ABAE4B6C(v12);
      return memcpy(a3, v19, 0x69uLL);
    }
  }
}

uint64_t LRUCache.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LRUCache.init(capacity:)(a1);
  return v2;
}

uint64_t LRUCache.remove(key:)(uint64_t a1)
{
  v3 = *v1;
  sub_1ABA7C6CC();
  v5 = *(v4 + 80);
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  swift_beginAccess();
  v13 = v1[3];
  sub_1ABA7C6CC();
  v15 = *(v14 + 88);
  sub_1ABA7C6CC();
  v17 = *(v16 + 96);
  type metadata accessor for LRUCacheNode();
  sub_1ABF23A64();
  v18 = v20;
  if (!v20)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  sub_1ABA83004(v18);
  (*(v7 + 16))(v12, a1, v5);
  v20 = 0;
  swift_beginAccess();
  sub_1ABF23A44();
  sub_1ABF23A74();
  swift_endAccess();
}

uint64_t sub_1ABE0910C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = sub_1ABF247E4();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = sub_1ABF247E4();
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

uint64_t sub_1ABE09294()
{
  *&__src[0] = 0x686374616DLL;
  *(&__src[0] + 1) = 0xE500000000000000;
  *&__src[1] = &unk_1F208E618;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000004BLL;
  *(&__src[3] + 1) = 0x80000001ABF91E90;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE09364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_30;
  }

  sub_1ABA7C6D8();
  if (*(a6 + 32))
  {
    v10 = sub_1ABAE305C(115, 0xE100000000000000);
    if (!v10)
    {
      swift_endAccess();
      goto LABEL_10;
    }

    swift_endAccess();
    swift_beginAccess();
    v11 = *(v10 + 16);

    if (*(v11 + 16))
    {
      v10 = sub_1ABE8AE5C(v11);
      goto LABEL_10;
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = 0;
LABEL_10:
  sub_1ABA7C6D8();
  if (!*(a6 + 32))
  {
    swift_endAccess();
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = sub_1ABAE305C(112, 0xE100000000000000);
  if (!v12)
  {
    swift_endAccess();
    goto LABEL_18;
  }

  swift_endAccess();
  swift_beginAccess();
  v13 = *(v12 + 16);

  if (!*(v13 + 16))
  {

    goto LABEL_17;
  }

  v12 = sub_1ABE8AE5C(v13);
LABEL_18:
  sub_1ABA7C6D8();
  if (!*(a6 + 32) || (v14 = sub_1ABAE305C(111, 0xE100000000000000)) == 0)
  {
    swift_endAccess();
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v15 + 16);

  if (!*(v16 + 16))
  {

    goto LABEL_23;
  }

  v17 = sub_1ABE8AE5C(v16);
LABEL_24:
  sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1ABF3BFC0;
  *(v18 + 32) = v10;
  *(v18 + 40) = v12;
  *(v18 + 48) = v17;
  v19 = sub_1ABE9059C(v18);
  swift_setDeallocating();

  sub_1ABB4DB48();
  if ((v19 & 1) == 0)
  {
    v25 = a2 + *(type metadata accessor for QueryContext() + 32);
    v27 = *(v25 + 88);
    v28 = *(v25 + 104);
    v29 = 32;
    if (v27 >> 1 != 0xFFFFFFFF || (*(v25 + 104) & 0x1E) != 0)
    {
      v36 = *(v25 + 96);
      memcpy(__dst, v25, sizeof(__dst));
      v41 = v27;
      v42 = v36;
      v43 = v28;
      *&__src[0] = 0;
      *(&__src[0] + 1) = v10;
      *&__src[1] = 0;
      *(&__src[1] + 1) = v12;
      *&__src[2] = 0;
      *(&__src[2] + 1) = v17;
      *(&__src[5] + 1) = 0;
      memset(&__src[3], 0, 32);
      BYTE8(__src[6]) = 32;
      v55 = 1;
      sub_1ABE3A1C8();
      if (v6)
      {
        memcpy(v38, __src, 0x69uLL);
        sub_1ABAE4B6C(v38);
        return v24 & 1;
      }

      memcpy(v38, __src, 0x69uLL);
      sub_1ABAE4B6C(v38);
      v30 = v44;
      v10 = v45;
      v31 = v46;
      v12 = v47;
      v32 = v48;
      v17 = v49;
      v33 = v50;
      v34 = v51;
      v35 = v52;
      v26 = v53;
      v29 = v54;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
    }

    *a1 = v30;
    *(a1 + 8) = v10;
    *(a1 + 16) = v31;
    *(a1 + 24) = v12;
    *(a1 + 32) = v32;
    *(a1 + 40) = v17;
    *(a1 + 48) = v33;
    *(a1 + 64) = v34;
    *(a1 + 80) = v35;
    *(a1 + 96) = v26;
    v24 = 1;
    *(a1 + 104) = v29;
    return v24 & 1;
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED86E460);
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Match operator must have at least one of subject predicate object", v23, 2u);
    MEMORY[0x1AC5AB8B0](v23, -1, -1);
  }

LABEL_30:
  v24 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v24 & 1;
}

uint64_t sub_1ABE097E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = sub_1ABF239C4();
  *(v7 + 24) = v8;
  v9 = sub_1ABE713BC();
  v10 = sub_1ABE8AE5C(v9);
  v11 = sub_1ABE713BC();
  result = sub_1ABE8AE5C(v11);
  v13 = result;
  v116 = v7;
  switch(*(a2 + 64))
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      v14 = sub_1ABE713BC();
      v15 = sub_1ABE8AE5C(v14);
      v114 = *(a3 + 16);
      if (v114)
      {
        v16 = 0;
        v112 = a3 + 32;
        v117 = v13 + 56;
        v109 = xmmword_1ABF34740;
        while (1)
        {
          v17 = memcpy(__dst, (v112 + 88 * v16), 0x58uLL);
          if (*(v15 + 16))
          {
            v25 = __dst[4];
            v26 = *(v15 + 40);
            v27 = sub_1ABF25234();
            sub_1ABA7EB0C(v27, v28, v29, v30, v31, v32, v33, v34, v98, v99, v101, v103, v105, v107, v109, *(&v109 + 1), v112, v114, v116, v117, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0]);

            sub_1ABF23D34();
            sub_1ABF25294();
            v35 = *(v15 + 32);
            sub_1ABA7D2C8();
            while (1)
            {
              sub_1ABA7F820();
              if (((*(v15 + 56 + v36) >> v3) & 1) == 0)
              {
                break;
              }

              sub_1ABA7DE50(*(v15 + 48));
              v38 = v38 && v37 == v25;
              if (v38 || (sub_1ABA81050() & 1) != 0)
              {

                goto LABEL_14;
              }
            }

            sub_1ABB24250(__dst);
          }

          else
          {
            sub_1ABA7EB0C(v17, v18, v19, v20, v21, v22, v23, v24, v98, v99, v101, v103, v105, v107, v109, *(&v109 + 1), v112, v114, v116, v117, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0]);
LABEL_14:
            v39 = __dst[7];
            if (__dst[7] && *(v10 + 16))
            {
              v40 = *(v10 + 40);
              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              v41 = *(v10 + 32);
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA7F820();
                if (((*(v10 + 56 + v42) >> v3) & 1) == 0)
                {
                  break;
                }

                sub_1ABA7DE50(*(v10 + 48));
                v44 = v38 && v39 == v43;
                if (v44 || (sub_1ABA81050() & 1) != 0)
                {

                  goto LABEL_24;
                }
              }

LABEL_36:
              sub_1ABB24250(__dst);
            }

            else
            {
LABEL_24:
              v45 = __dst[9];
              if (__dst[9] && *(v13 + 16))
              {
                v46 = *(v13 + 40);
                sub_1ABF25234();

                sub_1ABF23D34();
                sub_1ABF25294();
                v47 = *(v13 + 32);
                sub_1ABA7D2C8();
                do
                {
                  sub_1ABA7F820();
                  if (((*(v117 + v48) >> v3) & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  sub_1ABA7DE50(*(v13 + 48));
                  v50 = v38 && v45 == v49;
                }

                while (!v50 && (sub_1ABA81050() & 1) == 0);
              }

              sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
              v51 = swift_allocObject();
              *(v51 + 16) = v109;
              memcpy((v51 + 32), __dst, 0x58uLL);
              v128[0] = 0;
              sub_1ABE489A8(v51, v128);
              swift_setDeallocating();
              sub_1ABB4DB0C();
            }
          }

          if (++v16 == v114)
          {

            return sub_1ABE491D0();
          }
        }
      }

      goto LABEL_79;
    case 2:
      if (*(a1 + 8))
      {
        result = sub_1ABE48AE8();
        v52 = result;
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      v104 = *(v52 + 16);
      if (!v104)
      {
        goto LABEL_78;
      }

      v53 = 0;
      v100 = v52;
      v102 = v52 + 32;
      break;
    default:

      return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    if (v53 >= *(v52 + 16))
    {
      goto LABEL_83;
    }

    v54 = (v102 + 40 * v53);
    v55 = v54[1];
    v113 = *v54;
    v56 = v54[2];

    swift_bridgeObjectRetain_n();
    sub_1ABE7A35C(v56);
    v58 = v57;

    v59 = v58;
    v60 = *(v58 + 16);
    if (v60)
    {
      break;
    }

LABEL_77:
    if (++v53 == v104)
    {
LABEL_78:

LABEL_79:

      return sub_1ABE491D0();
    }
  }

  v106 = v53;
  v108 = v59;
  v61 = 0;
  v115 = v59 + 32;
  v62 = v60;
  v110 = v55;
  v63 = v59;
  v118 = v56;
  while (v61 < v62)
  {
    v64 = memcpy(__dst, (v115 + 88 * v61), 0x58uLL);
    v72 = __dst[7];
    if (__dst[7] && *(v10 + 16))
    {
      v73 = __dst[6];
      v74 = *(v10 + 40);
      v75 = sub_1ABF25234();
      sub_1ABA7EB0C(v75, v76, v77, v78, v79, v80, v81, v82, v98, v100, v102, v104, v106, v108, v110, v111, v113, v115, v116, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0]);

      sub_1ABF23D34();
      sub_1ABF25294();
      v83 = *(v10 + 32);
      sub_1ABA7D2C8();
      while (1)
      {
        v85 = v84 & &v119;
        if (((*(v10 + 56 + (((v84 & &v119) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v84 & &v119)) & 1) == 0)
        {
          break;
        }

        v86 = (*(v10 + 48) + 16 * v85);
        if (*v86 != v73 || v72 != v86[1])
        {
          v88 = sub_1ABF25054();
          v84 = v85 + 1;
          if ((v88 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v116;
        v63 = v108;
        v55 = v110;
        goto LABEL_61;
      }
    }

    else
    {
      sub_1ABA7EB0C(v64, v65, v66, v67, v68, v69, v70, v71, v98, v100, v102, v104, v106, v108, v110, v111, v113, v115, v116, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0]);
LABEL_61:
      v89 = __dst[9];
      if (!__dst[9] || !*(v13 + 16))
      {
LABEL_71:
        memcpy(v128, __dst, sizeof(v128));
        sub_1ABE09EA4(v7, v128, v113, v55);
        result = sub_1ABB24250(__dst);
        goto LABEL_73;
      }

      v90 = __dst[8];
      v91 = *(v13 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF25294();
      v92 = *(v13 + 32);
      sub_1ABA7D2C8();
      while (1)
      {
        v94 = v93 & v128;
        if (((*(v13 + 56 + (((v93 & v128) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v93 & v128)) & 1) == 0)
        {
          break;
        }

        v95 = (*(v13 + 48) + 16 * v94);
        if (*v95 != v90 || v89 != v95[1])
        {
          v97 = sub_1ABF25054();
          v93 = v94 + 1;
          if ((v97 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v116;
        v63 = v108;
        v55 = v110;
        goto LABEL_71;
      }
    }

    sub_1ABB24250(__dst);

    v7 = v116;
    v63 = v108;
    v55 = v110;
LABEL_73:
    if (++v61 == v60)
    {

      v52 = v100;
      v53 = v106;
      goto LABEL_77;
    }

    v62 = *(v63 + 16);
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1ABE09EA4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, sizeof(__dst));
  v6 = __dst[3] == a3 && __dst[4] == a4;
  if (v6 || (result = sub_1ABF25054(), (result & 1) != 0))
  {
    sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
    inited = swift_initStackObject();
    sub_1ABA93930(inited, xmmword_1ABF34740);
    v11 = 0;
LABEL_7:
    sub_1ABB242A4(__dst, v10);
    sub_1ABE489A8(inited, &v11);
    swift_setDeallocating();
    return sub_1ABB4DB0C();
  }

  if (__dst[9])
  {
    v9 = __dst[8] == a3 && __dst[9] == a4;
    if (v9 || (result = sub_1ABF25054(), (result & 1) != 0))
    {
      sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
      inited = swift_initStackObject();
      sub_1ABA93930(inited, xmmword_1ABF34740);
      v11 = 2;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t Embedding.value.getter()
{
  v0 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BBB0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1ABA7D000();

  return v4(v3);
}

uint64_t Embedding.identifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for Embedding() + 20));
}

uint64_t type metadata accessor for Embedding()
{
  result = qword_1EB4DA758;
  if (!qword_1EB4DA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Embedding.identifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Embedding() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABE0A15C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
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

uint64_t sub_1ABE0A224(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1ABE0A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE0A15C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE0A290(uint64_t a1)
{
  v2 = sub_1ABE0A6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE0A2CC(uint64_t a1)
{
  v2 = sub_1ABE0A6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Embedding.init(value:identifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BBB0(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for Embedding();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Embedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v4 = sub_1ABA7BB64(v33);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DA738, &unk_1ABF673F8);
  v31 = sub_1ABA7BB64(v10);
  v32 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v14 = type metadata accessor for Embedding();
  v15 = sub_1ABA7BBB0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0A6C4();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v27 = v14;
  v28 = v19;
  v21 = v30;
  v36 = 0;
  sub_1ABDFF8CC(&qword_1EB4DA4B8);
  v22 = v33;
  sub_1ABF24E64();
  v23 = v28;
  (*(v21 + 32))(v28, v9, v22);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  v35 = 1;
  sub_1ABE0A718(&unk_1ED86B980);
  sub_1ABF24E64();
  v24 = sub_1ABA93950();
  v25(v24);
  *(v23 + *(v27 + 20)) = v34;
  sub_1ABE0A774(v23, v29);
  sub_1ABA84B54(a1);
  return sub_1ABE0A7D8(v23);
}

unint64_t sub_1ABE0A6C4()
{
  result = qword_1EB4DA740;
  if (!qword_1EB4DA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA740);
  }

  return result;
}

uint64_t sub_1ABE0A718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    result = sub_1ABA83BEC();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABE0A774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Embedding();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE0A7D8(uint64_t a1)
{
  v2 = type metadata accessor for Embedding();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Embedding.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DA748, &qword_1ABF67408);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0A6C4();
  sub_1ABF252E4();
  v17 = 0;
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABDFF8CC(&qword_1EB4DA4A8);
  sub_1ABA8EC60();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for Embedding() + 20));
    v15[15] = 1;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABE0A718(&qword_1EB4CF7F8);
    sub_1ABA8EC60();
  }

  return (*(v8 + 8))(v12, v5);
}

Swift::Void __swiftcall Embedding.updateIdsWith(identifier:)(Swift::String identifier)
{
  v1 = HIBYTE(identifier._object) & 0xF;
  if ((identifier._object & 0x2000000000000000) == 0)
  {
    v1 = identifier._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = identifier._object;
    countAndFlagsBits = identifier._countAndFlagsBits;
    v4 = *(type metadata accessor for Embedding() + 20);

    sub_1ABB1840C(&v5, countAndFlagsBits, object);
  }
}

uint64_t FileString.filename.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t FileString.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

IntelligencePlatform::FileString __swiftcall FileString.init(filename:type:)(Swift::String filename, Swift::String type)
{
  *v2 = filename;
  v2[1] = type;
  result.type = type;
  result.filename = filename;
  return result;
}

uint64_t static FileString.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t FileString.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t FileString.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABE0AC7C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1ABF25234();
  FileString.hash(into:)();
  return sub_1ABF25294();
}

void sub_1ABE0ACD0()
{
  qword_1EB4DA6F8 = 0xD000000000000018;
  unk_1EB4DA700 = 0x80000001ABF91FF0;
  qword_1EB4DA708 = 0x636C65646F6D6C6DLL;
  unk_1EB4DA710 = 0xE800000000000000;
}

uint64_t static ModelKey.nameToName.getter()
{
  if (qword_1EB4D03C8 != -1)
  {
    swift_once();
  }

  sub_1ABA81BC0(&qword_1EB4DA6F8);
}

void sub_1ABE0AD80()
{
  qword_1EB4DA718 = 0xD000000000000019;
  unk_1EB4DA720 = 0x80000001ABF91FD0;
  qword_1EB4DA728 = 0x636C65646F6D6C6DLL;
  unk_1EB4DA730 = 0xE800000000000000;
}

uint64_t static ModelKey.nameToEmail.getter()
{
  if (qword_1EB4D03D0 != -1)
  {
    swift_once();
  }

  sub_1ABA81BC0(&qword_1EB4DA718);
}

id ModelKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ModelKey.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ModelKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABE0AEFC(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v7 = *(v1 + 112);

  sub_1ABAD5AC8(v7, &v32);

  if (v33 == 1)
  {
    sub_1ABE0BD58(&v32);
    goto LABEL_9;
  }

  sub_1ABAFF124(&v32, &v30);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1ABE0BDE4(&v30);
LABEL_9:
    v32 = v4;
    v33 = v3;
    v34 = v6;
    v35 = v5;
    type metadata accessor for MatcherModel();
    v9 = swift_allocObject();

    MatcherModel.init(key:)(&v32);
    if (!v2)
    {
      swift_weakInit();
      v31 = 0;
      swift_beginAccess();

      sub_1ABD25B1C(&v30);
      swift_endAccess();
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178();
      }

      v19 = sub_1ABF237F4();
      sub_1ABA7AA24(v19, qword_1ED871B40);

      v20 = sub_1ABF237D4();
      v21 = sub_1ABF24654();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v21;
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v22 = 136315394;
        v32 = v9;

        v23 = sub_1ABF23C74();
        sub_1ABADD6D8(v23, v24, &v30);

        sub_1ABA8106C();

        v25 = sub_1ABF23C74();
        v27 = sub_1ABADD6D8(v25, v26, &v30);

        *(v22 + 14) = v27;
        _os_log_impl(&dword_1ABA78000, v20, v29, "MatcherModel: caching model %s for %s", v22, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    return v9;
  }

  v9 = Strong;
  if (qword_1ED86B410 != -1)
  {
    swift_once();
  }

  v10 = sub_1ABF237F4();
  sub_1ABA7AA24(v10, qword_1ED86B418);

  v11 = sub_1ABF237D4();
  v12 = sub_1ABF24654();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315394;
    v32 = v9;
    type metadata accessor for MatcherModel();

    v14 = sub_1ABF23C74();
    sub_1ABADD6D8(v14, v15, &v36);

    sub_1ABA8106C();

    v16 = sub_1ABF23C74();
    v18 = sub_1ABADD6D8(v16, v17, &v36);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1ABA78000, v11, v12, "MatcherModel: using cached model %s for %s", v13, 0x16u);
    swift_arrayDestroy();
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  sub_1ABE0BDE4(&v30);
  return v9;
}

uint64_t MatcherModel.__allocating_init(key:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MatcherModel.init(key:)(a1);
  return v2;
}

uint64_t MatcherModelCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MatcherModelCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t MatcherModel.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1ABE0B4D8()
{
  type metadata accessor for MatcherModelCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1ABC2633C();
  result = sub_1ABF239C4();
  *(v0 + 112) = result;
  qword_1EB5498C8 = v0;
  return result;
}

uint64_t static MatcherModel.sharedModel(for:)(uint64_t a1)
{
  *(v1 + 48) = *a1;
  *(v1 + 56) = *(a1 + 8);
  *(v1 + 72) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1ABE0B578, 0, 0);
}

uint64_t sub_1ABE0B578()
{
  if (qword_1EB4D03D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  *(v0 + 80) = qword_1EB5498C8;
  *(v0 + 16) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABE0B620);
}

void sub_1ABE0B620()
{
  v1 = v0[10];
  sub_1ABE0AEFC(v0 + 2);
  v0[11] = 0;
  v2 = v0[1];

  __asm { BRAA            X2, X16 }
}

uint64_t *MatcherModel.init(key:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v1[2] = *a1;
  v1[3] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = static MatcherModel.loadModel(key:)(v12);
  if (v2)
  {
    v9 = v1[3];
    v10 = v1[5];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[6] = v8;
  }

  return v1;
}

uint64_t static MatcherModel.loadModel(key:)(uint64_t *a1)
{
  v2 = sub_1ABF21CF4();
  v3 = sub_1ABA7BB64(v2);
  v44 = v4;
  v45 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7D178();
  }

  v15 = sub_1ABF237F4();
  sub_1ABA7AA24(v15, qword_1ED871B40);

  v16 = sub_1ABF237D4();
  v17 = sub_1ABF24654();

  v18 = os_log_type_enabled(v16, v17);
  v41 = v14;
  v42 = v13;
  v39 = v12;
  v40 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v10;
    v21 = v20;
    v50 = v20;
    *v19 = 136315138;
    v46 = v11;
    v47 = v12;
    v48 = v13;
    v49 = v14;

    v22 = sub_1ABF23C74();
    v24 = sub_1ABADD6D8(v22, v23, &v50);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1ABA78000, v16, v17, "MatcherModel: loadModel: %s", v19, 0xCu);
    sub_1ABA84B54(v21);
    v10 = v38;
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v26 = v39;
  v25 = v40;
  v28 = v41;
  v27 = v42;
  v29 = sub_1ABE0BE14(v40, v39, v42, v41, qword_1ED871EA8);
  if (v29)
  {
    v30 = v29;
    sub_1ABF21CA4();

    v31 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v31 setComputeUnits_];
    [v31 setAllowBackgroundGPUCompute_];
    v32 = objc_autoreleasePoolPush();
    sub_1ABD32890();
    v33 = v43;
    (*(v44 + 16))(v43, v10, v45);
    v34 = v31;
    v35 = sub_1ABE0BB90(v33, v34);
    objc_autoreleasePoolPop(v32);

    (*(v44 + 8))(v10, v45);
    return v35;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1ABF24AB4();

    v46 = 0xD000000000000025;
    v47 = 0x80000001ABF91F10;
    MEMORY[0x1AC5A9410](v25, v26);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](v27, v28);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

id sub_1ABE0BB90(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF21C54();
  v16[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v16];

  v6 = v16[0];
  if (v5)
  {
    v7 = sub_1ABF21CF4();
    sub_1ABA7BBB0(v7);
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v16[0];
    sub_1ABF21BE4();

    swift_willThrow();
    v12 = sub_1ABF21CF4();
    sub_1ABA7BBB0(v12);
    (*(v13 + 8))(a1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t MatcherModel.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return v0;
}

uint64_t MatcherModel.__deallocating_deinit()
{
  MatcherModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE0BD58(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8188, &qword_1ABF67410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABE0BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();
  v7 = sub_1ABF23BD4();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1ABE0BE90()
{
  result = qword_1EB4DA750;
  if (!qword_1EB4DA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA750);
  }

  return result;
}

void sub_1ABE0BF0C()
{
  sub_1ABE0BFE8(319, &qword_1EB4CE770, MEMORY[0x1E69E6448], MEMORY[0x1E695FD58], MEMORY[0x1E695FCE8]);
  if (v0 <= 0x3F)
  {
    sub_1ABE0BFE8(319, &qword_1EB4DA768, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABE0BFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Embedding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE0C214()
{
  result = qword_1EB4DA770;
  if (!qword_1EB4DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA770);
  }

  return result;
}

unint64_t sub_1ABE0C26C()
{
  result = qword_1EB4DA778;
  if (!qword_1EB4DA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA778);
  }

  return result;
}

unint64_t sub_1ABE0C2C4()
{
  result = qword_1EB4DA780;
  if (!qword_1EB4DA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA780);
  }

  return result;
}

uint64_t sub_1ABE0C318()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABE0C364(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6C65646F6DLL;
}

uint64_t sub_1ABE0C3C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACF934();
}

uint64_t sub_1ABE0C3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABE0C318();
  *a2 = result;
  return result;
}

uint64_t sub_1ABE0C418@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABE0C364(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE0C4F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1;
  }

  v6 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v5 << 16);
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34740;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = 15;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v8;
  *(v9 + 96) = 0;
  *(v9 + 104) = 1;

  return v9;
}

uint64_t sub_1ABE0C5E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v55 - v8;
  v67 = a1;
  v68 = a2;
  v71 = 9;
  v72 = 0xE100000000000000;
  v62 = sub_1ABAE28EC();
  v10 = sub_1ABF24884();
  result = sub_1ABE8AE5C(v10);
  v12 = 0;
  v14 = result + 56;
  v13 = *(result + 56);
  v60 = result;
  v15 = 1 << *(result + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v19 = HIBYTE(a2) & 0xF;
  v73 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v65 = v20 | (v19 << 16);
  v66 = a1;
  v63 = 4 * v19;
  v58 = result + 56;
  v59 = a3;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v56 = v21;
  v57 = v18;
  v61 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v22 = v12;
  if (!v17)
  {
    goto LABEL_13;
  }

  do
  {
    v12 = v22;
LABEL_16:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = (*(v60 + 48) + ((v12 << 10) | (16 * v23)));
    v25 = v24[1];
    v64 = *v24;

    v26 = 15;
    v27 = MEMORY[0x1E69E7CC0];
    while (v63 > v26 >> 14)
    {
      v67 = sub_1ABF23EC4();
      v68 = v28;
      v69 = v29;
      v70 = v30;
      v71 = v64;
      v72 = v25;
      v31 = sub_1ABF21F54();
      sub_1ABA7B9B4(v9, 1, 1, v31);
      sub_1ABBA2890();
      v32 = sub_1ABF248C4();
      v26 = v33;
      v35 = v34;
      sub_1ABA925A4(v9, &qword_1EB4D3EC8, &unk_1ABF41180);

      if (v35)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = v27[2];
        sub_1ABADA538();
        v27 = v41;
      }

      v36 = v27[2];
      if (v36 >= v27[3] >> 1)
      {
        sub_1ABADA538();
        v27 = v42;
      }

      v27[2] = v36 + 1;
      v37 = &v27[2 * v36];
      v37[4] = v32;
      v37[5] = v26;
      if (v32 >> 14 >= v26 >> 14)
      {
        v26 = v65;
        v38 = sub_1ABF23D74();
        if ((v39 & 1) == 0)
        {
          v26 = v38;
        }
      }
    }

    v43 = v27[2];
    if (v43)
    {
      v44 = v43 - 1;
      for (i = v27 + 5; ; i += 2)
      {
        v46 = *i;
        v64 = *(i - 1);
        LOBYTE(v67) = 1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v61 + 16);
          sub_1ABADA5F4();
          v61 = v53;
        }

        v47 = *(v61 + 16);
        if (v47 >= *(v61 + 24) >> 1)
        {
          sub_1ABADA5F4();
          v61 = v54;
        }

        v48 = v61;
        *(v61 + 16) = v47 + 1;
        v49 = v48 + 80 * v47;
        v50 = v73;
        *(v49 + 32) = v66;
        *(v49 + 40) = v50;
        *(v49 + 48) = v64;
        *(v49 + 56) = v46;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
        v51 = v56;
        *(v49 + 80) = 0;
        *(v49 + 88) = v51;
        *(v49 + 96) = 0;
        *(v49 + 104) = 1;
        if (!v44)
        {
          break;
        }

        --v44;
      }

      v18 = v57;
      v14 = v58;
      goto LABEL_11;
    }

    v22 = v12;
    v18 = v57;
    v14 = v58;
  }

  while (v17);
LABEL_13:
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v18)
    {

      return v61;
    }

    v17 = *(v14 + 8 * v12);
    ++v22;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE0CA30(uint64_t a1, uint64_t a2)
{
  v6 = sub_1ABE0CBF8(a1, a2);
  if (!v3)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    v12 = objc_autoreleasePoolPush();
    type metadata accessor for MentionGeneratorModel();
    swift_allocObject();
    v2 = sub_1ABE0E35C();
    if (*(v2 + 24) >= *(v10 + 16))
    {
      sub_1ABE0E2DC(v10);
      v16 = v14;

      objc_autoreleasePoolPop(v12);
      v2 = sub_1ABE0D4A0(a1, a2, v16, v9, v10, v11);
    }

    else
    {
      sub_1ABB32C5C();
      swift_allocError();
      *v13 = 0xD00000000000003FLL;
      *(v13 + 8) = 0x80000001ABF92010;
      *(v13 + 16) = 3;
      swift_willThrow();

      objc_autoreleasePoolPop(v12);
    }
  }

  return v2;
}

uint64_t sub_1ABE0CBF8(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v6 = sub_1ABE858D0();
  v7 = v2;
  if (!v2)
  {
    v80 = v6;
    v81 = a1;
    v86 = a1;
    v87 = isUniquelyReferenced_nonNull_native;
    sub_1ABAE28EC();
    v8 = &v86;
    v9 = sub_1ABF24884();
    v82 = *(v9 + 16);
    v84 = v9;
    v3 = (v9 + 40);
    v10 = MEMORY[0x1E69E7CC0];
    for (i = isUniquelyReferenced_nonNull_native; ; isUniquelyReferenced_nonNull_native = i)
    {
      v11 = v84[2];
      if (v82 == v7)
      {
        break;
      }

      if (v7 >= v11)
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
LABEL_72:
        sub_1ABD8EE6C(v84);
        v84 = v76;
        goto LABEL_27;
      }

      v8 = *(v3 - 1);
      v11 = *v3;
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = v10;
        v10 = *(v10 + 16 + 16 * v12 + 8);
        v14 = *v3;

        v15 = sub_1ABF23D84();
        if (__OFADD__(sub_1ABF23D44(), 1))
        {
          goto LABEL_65;
        }

        v16 = sub_1ABF23D84();
        if (v16 >> 14 < v15 >> 14)
        {
          goto LABEL_66;
        }

        v8 = v16;
        v10 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = v13[2];
          sub_1ABADA538();
          v10 = v23;
        }

        v17 = *(v10 + 16);
        v18 = v17 + 1;
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1ABADA538();
          v10 = v19;
        }
      }

      else
      {
        v20 = *v3;

        sub_1ABF23D44();
        v8 = sub_1ABF23D84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v10 + 16);
          sub_1ABADA538();
          v10 = v25;
        }

        v17 = *(v10 + 16);
        v18 = v17 + 1;
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1ABADA538();
          v10 = v26;
        }

        v15 = 15;
      }

      *(v10 + 16) = v18;
      v21 = (v10 + 16 * v17);
      v21[4] = v15;
      v21[5] = v8;

      v3 += 2;
      ++v7;
    }

    if (v11)
    {
      v85 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v27 = v85;
      v28 = v84 + 5;
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v86 = 32;
        v87 = 0xE100000000000000;

        MEMORY[0x1AC5A9410](v29, v30);

        v31 = v86;
        v3 = v87;
        v32 = v85[2];
        if (v32 >= v85[3] >> 1)
        {
          sub_1ABADDBD4();
        }

        v85[2] = v32 + 1;
        v33 = &v85[2 * v32];
        v33[4] = v31;
        v33[5] = v3;
        v28 += 2;
        --v11;
      }

      while (v11);

      isUniquelyReferenced_nonNull_native = i;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v10 = v80;
    if (!v27[2])
    {

      sub_1ABB32C5C();
      swift_allocError();
      *v71 = xmmword_1ABF67750;
      *(v71 + 16) = 3;
      swift_willThrow();
LABEL_62:

      return v3;
    }

    v35 = v27[4];
    v34 = v27[5];

    v36 = sub_1ABAA958C(1uLL, v35, v34);
    v11 = MEMORY[0x1AC5A9330](v36);
    v37 = v27;
    v8 = v38;

    v84 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_27:
    if (!v84[2])
    {
      __break(1u);
LABEL_74:
      result = sub_1ABF25104();
      __break(1u);
      return result;
    }

    v40 = v84 + 5;
    v39 = v84[5];
    v84[4] = v11;
    v84[5] = v8;

    swift_bridgeObjectRetain_n();
    v3 = sub_1ABF239C4();
    v41 = 0;
    v42 = 0;
    v83 = v84[2];
LABEL_29:
    v8 = &v40[2 * v41];
    while (v83 != v41)
    {
      if (v41 >= v84[2])
      {
        goto LABEL_67;
      }

      v43 = *(v8 - 1);
      v44 = *v8;

      sub_1ABE85A28(v43, v44, v10);
      v11 = v45;
      v46 = *(v45 + 16);
      if (v46)
      {
        v78 = v40;
        v47 = 0;
        v77 = v41 + 1;
        v8 = v42;
        v79 = v41;
        while (v47 < *(v11 + 16))
        {
          v48 = v11;
          v11 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v3;
          v49 = v8;
          v50 = v8;
          v8 = v3;
          v51 = sub_1ABAFF5A4(v50);
          if (__OFADD__(v3[2], (v52 & 1) == 0))
          {
            goto LABEL_69;
          }

          v10 = v51;
          v53 = v52;
          sub_1ABAD219C(&qword_1EB4DA7A0, &qword_1ABF67788);
          if (sub_1ABF24C64())
          {
            v54 = sub_1ABAFF5A4(v49);
            isUniquelyReferenced_nonNull_native = i;
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_74;
            }

            v10 = v54;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = i;
          }

          v46 = v11;
          v8 = v49;
          v3 = v86;
          v11 = v48;
          if (v53)
          {
            *(*(v86 + 56) + 8 * v10) = v79;
          }

          else
          {
            *(v86 + 8 * (v10 >> 6) + 64) |= 1 << v10;
            *(v3[6] + 8 * v10) = v49;
            *(v3[7] + 8 * v10) = v79;
            v56 = v3[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_71;
            }

            v3[2] = v58;
          }

          v10 = v80;
          if (v49 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_70;
          }

          ++v47;
          v8 = (v49 + 1);
          if (v46 == v47)
          {
            v42 = (v49 + 1);

            v41 = v77;
            v40 = v78;
            goto LABEL_29;
          }
        }

        goto LABEL_68;
      }

      v8 += 2;
      ++v41;
    }

    v86 = v84;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v59 = sub_1ABF23B54();
    v61 = v60;

    v62 = v59 == v81 && v61 == isUniquelyReferenced_nonNull_native;
    if (!v62 && (sub_1ABF25054() & 1) == 0)
    {

      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000002CLL, 0x80000001ABF92110);
      MEMORY[0x1AC5A9410](v81, isUniquelyReferenced_nonNull_native);
      MEMORY[0x1AC5A9410](0xD000000000000029, 0x80000001ABF92140);
      MEMORY[0x1AC5A9410](v59, v61);

      v72 = v86;
      v73 = v87;
      sub_1ABB32C5C();
      swift_allocError();
      *v74 = v72;
      *(v74 + 8) = v73;
      *(v74 + 16) = 6;
      swift_willThrow();
      goto LABEL_62;
    }

    sub_1ABE85A28(v59, v61, v10);
    v64 = v63;

    v65 = *(v64 + 16);
    if (v65)
    {
      v86 = MEMORY[0x1E69E7CC0];
      sub_1ABADDE7C(0, v65, 0);
      v66 = v86;
      v67 = *(v86 + 16);
      v68 = 32;
      do
      {
        v69 = *(v64 + v68);
        v86 = v66;
        v70 = *(v66 + 24);
        if (v67 >= v70 >> 1)
        {
          sub_1ABADDE7C((v70 > 1), v67 + 1, 1);
          v66 = v86;
        }

        *(v66 + 16) = v67 + 1;
        *(v66 + 4 * v67 + 32) = v69;
        v68 += 4;
        ++v67;
        --v65;
      }

      while (v65);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1ABE0D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAD219C(&qword_1EB4DA788, &qword_1ABF67760);
  v8 = sub_1ABF239C4();
  v9 = 0;
  v75 = *(a3 + 16);
  v10 = (a3 + 36);
  v74 = a4;
  while (v75 != v9)
  {
    if (!*(a4 + 16) || (v11 = *(v10 - 1), v12 = *v10, v13 = sub_1ABAFF5A4(v9), (v14 & 1) == 0))
    {
      v27 = 0x80000001ABF92050;
      sub_1ABB32C5C();
      swift_allocError();
      v29 = 0xD000000000000030;
LABEL_34:
      *v28 = v29;
      *(v28 + 8) = v27;
      *(v28 + 16) = 3;
      swift_willThrow();
    }

    v15 = *(*(a4 + 56) + 8 * v13);
    swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v8;
    v16 = sub_1ABAFF5A4(v15);
    if (__OFADD__(v8[2], (v17 & 1) == 0))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v18 = v16;
    v19 = v17;
    sub_1ABAD219C(&qword_1EB4DA790, &qword_1ABF67768);
    if (sub_1ABF24C64())
    {
      v20 = sub_1ABAFF5A4(v15);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_52;
      }

      v18 = v20;
    }

    v8 = *&__dst[0];
    if (v19)
    {
      v22 = (*(*&__dst[0] + 56) + 8 * v18);
      *v22 = v11;
      v22[1] = v12;
    }

    else
    {
      *(*&__dst[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      *(v8[6] + 8 * v18) = v15;
      v23 = (v8[7] + 8 * v18);
      *v23 = v11;
      v23[1] = v12;
      v24 = v8[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_44;
      }

      v8[2] = v26;
    }

    v10 += 2;
    ++v9;
    a4 = v74;
  }

  sub_1ABAD219C(&qword_1EB4DA798, &unk_1ABF67770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3BFB0;
  *(inited + 32) = 1;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_48;
  }

  v31 = inited;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), __dst);
  v32 = __dst[1];
  v33 = __dst[2];
  *(v31 + 40) = __dst[0];
  *(v31 + 56) = v32;
  *(v31 + 72) = v33;
  *(v31 + 80) = 2;
  if (!_Records_GDEntityClass_records)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), __dst);
  v34 = __dst[1];
  v35 = __dst[2];
  *(v31 + 88) = __dst[0];
  *(v31 + 104) = v34;
  *(v31 + 120) = v35;
  *(v31 + 128) = 3;
  if (!_Records_GDEntityClass_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), __dst);
  v36 = __dst[1];
  v37 = __dst[2];
  *(v31 + 136) = __dst[0];
  *(v31 + 152) = v36;
  *(v31 + 168) = v37;
  *(v31 + 176) = 4;
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), __dst);
    v38 = __dst[1];
    v39 = __dst[2];
    *(v31 + 184) = __dst[0];
    *(v31 + 200) = v38;
    *(v31 + 216) = v39;
    v40 = sub_1ABF239C4();
    v41 = 0;
    v42 = *(a6 + 16);
    v43 = a6 + 32;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    while (v42 != v41)
    {
      if (v41 >= v42)
      {
        goto LABEL_45;
      }

      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_46;
      }

      if (!v8[2] || (v76 = *(v43 + 16 * v41), v47 = sub_1ABAFF5A4(v41), (v48 & 1) == 0))
      {

        v27 = 0x80000001ABF92090;
        sub_1ABB32C5C();
        swift_allocError();
        v29 = 0xD00000000000002DLL;
        goto LABEL_34;
      }

      if (*(v40 + 16) && (v49 = v8[7] + 8 * v47, v50 = *(v49 + 4), v51 = sub_1ABAF88A0(*v49), (v52 & 1) != 0))
      {
        v53 = *(v40 + 56) + 40 * v51;
        v54 = *(v53 + 8);
        v73 = *v53;
        v55 = *(v53 + 24);
        v68 = *(v53 + 16);
        v67 = *(v53 + 32);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1ABF34740;
        *(v56 + 32) = v73;
        *(v56 + 40) = v54;
        *(v56 + 48) = v68;
        *(v56 + 56) = v55;
        *(v56 + 64) = v67;
        LOBYTE(__dst[0]) = 0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = *(v45 + 16);
          sub_1ABADA5F4();
          v45 = v60;
        }

        v57 = *(v45 + 16);
        if (v57 >= *(v45 + 24) >> 1)
        {
          sub_1ABADA5F4();
          v45 = v61;
        }

        *(v45 + 16) = v57 + 1;
        v58 = v45 + 80 * v57;
        *(v58 + 32) = a1;
        *(v58 + 40) = a2;
        *(v58 + 48) = v76;
        *(v58 + 64) = 0;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        *(v58 + 88) = v56;
        *(v58 + 96) = v50;
        *(v58 + 104) = 0;
        v41 = v46;
        v44 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        ++v41;
      }
    }

    v63 = v44;
    v64 = 0;
    v80 = v63;
    v65 = *(v45 + 16);
    for (i = 32; ; i += 80)
    {
      if (v65 == v64)
      {

        return v80;
      }

      if (v64 >= *(v45 + 16))
      {
        goto LABEL_47;
      }

      memcpy(__dst, (v45 + i), 0x49uLL);
      memcpy(__src, __dst, 0x49uLL);
      sub_1ABB3E11C(__dst, v77);
      sub_1ABE0DB4C(&v80, __src, a1, a2);
      if (v69)
      {
        break;
      }

      ++v64;
      memcpy(v77, __src, 0x49uLL);
      sub_1ABBC3DD0(v77);
    }

    memcpy(v77, __src, 0x49uLL);
    sub_1ABBC3DD0(v77);
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABE0DB4C(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, 0x49uLL);
  if (!*(*a1 + 16))
  {
    sub_1ABB3E11C(__dst, __src);
    sub_1ABB4DDD0();
    v24 = *(*a1 + 16);
    sub_1ABB4E1D4(v24);
    v25 = *a1;
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 80 * v24;
LABEL_21:
    memcpy((v26 + 32), __dst, 0x49uLL);
    *a1 = v25;
    return;
  }

  sub_1ABE0DEF4(__src);
  v7 = __src[1];
  v45 = a3;
  if (__src[1] != 1)
  {
    v18 = __src[0];
    v23 = __src[2];
    v19 = __src[3];
    v16 = __src[4];
    v14 = __src[5];
    v15 = __src[6];
    v21 = __src[7];
    v22 = __src[8];
    v20 = __src[9];
    goto LABEL_9;
  }

  memcpy(v48, __src, 0x49uLL);
  sub_1ABA925A4(v48, &qword_1EB4D4C60, &qword_1ABF67780);
  v8 = *a1;
  v9 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F164(v8);
    v8 = v41;
  }

  v10 = *(v8 + 16);
  if (v9 - 1 < v10)
  {
    v44 = a4;
    v43 = v10 - 1;
    v11 = v10 - v9;
    v12 = v8 + 80 * v9;
    v46 = *(v12 + 24);
    v13 = *(v12 + 8);
    v51 = *(v12 + 16);
    v14 = *(v12 - 8);
    v15 = *v12;
    v17 = *(v12 - 24);
    v16 = *(v12 - 16);
    v7 = *(v12 - 40);
    v42 = *(v12 - 32);
    v18 = *(v12 - 48);
    sub_1ABADD4E4((v12 + 32), v11, (v12 - 48));
    v19 = v17;
    v20 = v46;
    v21 = v13;
    v22 = v51;
    *(v8 + 16) = v43;
    a4 = v44;
    *a1 = v8;
    v23 = v42;
LABEL_9:
    __src[0] = v18;
    __src[1] = v7;
    __src[2] = v23;
    __src[3] = v19;
    __src[4] = v16;
    __src[5] = v14;
    __src[6] = v15;
    __src[7] = v21;
    __src[8] = v22;
    LOBYTE(__src[9]) = v20 & 1;
    if (!v7 || !__dst[1])
    {
      sub_1ABBC3DD0(__src);
      sub_1ABB32C5C();
      swift_allocError();
      *v31 = 0xD000000000000041;
      *(v31 + 8) = 0x80000001ABF920C0;
      *(v31 + 16) = 3;
      swift_willThrow();
      return;
    }

    v47 = v20;
    v27 = v23;
    v51 = v22;
    v28 = __dst[3];
    if (v21)
    {
      if (!__dst[7])
      {
        goto LABEL_20;
      }

      v29 = v21;
      v30 = sub_1ABB49178(v21, __dst[7]);
      v21 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (__dst[7])
    {
      goto LABEL_20;
    }

    v32 = v21;

    v33 = a4;
    v34 = sub_1ABF23E34();

    if (v34 <= 1)
    {
      if (v28 >> 14 >= v27 >> 14)
      {

        sub_1ABBC3DD0(__src);
        v48[0] = v47 & 1;
        sub_1ABB4DDD0();
        v35 = *(*a1 + 16);
        sub_1ABB4E1D4(v35);
        v36 = *a1;
        *(v36 + 16) = v35 + 1;
        v37 = v36 + 80 * v35;
        *(v37 + 32) = v45;
        *(v37 + 40) = v33;
        *(v37 + 48) = v27;
        *(v37 + 56) = v28;
        *(v37 + 64) = 0;
        *(v37 + 72) = 0;
        *(v37 + 80) = 0;
        *(v37 + 88) = v32;
        *(v37 + 96) = v51;
        *(v37 + 104) = v47 & 1;
        *a1 = v36;
        return;
      }

      goto LABEL_23;
    }

LABEL_20:
    sub_1ABB4DDD0();
    v38 = *(*a1 + 16);
    sub_1ABB4E1D4(v38);
    v39 = *a1;
    *(v39 + 16) = v38 + 1;
    memcpy((v39 + 80 * v38 + 32), __src, 0x49uLL);
    *a1 = v39;
    sub_1ABB3E11C(__dst, v48);
    sub_1ABB4DDD0();
    v40 = *(*a1 + 16);
    sub_1ABB4E1D4(v40);
    v25 = *a1;
    *(v25 + 16) = v40 + 1;
    v26 = v25 + 80 * v40;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1ABE0DEF4(void *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F164(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    memcpy(a1, (v3 + 80 * v4 - 48), 0x49uLL);
    *(v3 + 16) = v5;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

_BYTE *storeEnumTagSinglePayload for MentionGenerationAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE0E04C()
{
  result = qword_1EB4DA7A8;
  if (!qword_1EB4DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA7A8);
  }

  return result;
}

unint64_t sub_1ABE0E0A0()
{
  result = qword_1ED871610;
  if (!qword_1ED871610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871610);
  }

  return result;
}

uint64_t sub_1ABE0E0F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1ABADEBEC(0, v6, 0);
  result = v32;
  v30 = a1;
  v31 = a2;
  if (!v6)
  {
    v13 = v4;
    v14 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v4;
  v12 = v5;
  v13 = v4;
  v14 = v5;
  while (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v15 = *v8;
    v16 = *v9;
    v33 = result;
    v18 = *(result + 16);
    v17 = *(result + 24);
    if (v18 >= v17 >> 1)
    {
      v28 = v14;
      v29 = v13;
      v27 = *v8;
      sub_1ABADEBEC((v17 > 1), v18 + 1, 1);
      v15 = v27;
      v14 = v28;
      v13 = v29;
      result = v33;
    }

    *(result + 16) = v18 + 1;
    v19 = result + 8 * v18;
    --v12;
    *(v19 + 32) = v15;
    *(v19 + 36) = v16;
    --v11;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v13 != v6)
      {
        if (v6 >= v13)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v14 == v6)
        {
          return result;
        }

        if (v6 >= v14)
        {
          goto LABEL_26;
        }

        v20 = *(v30 + 32 + 4 * v6);
        v21 = *(v31 + 32 + 4 * v6);
        v34 = result;
        v23 = *(result + 16);
        v22 = *(result + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = v13;
          v26 = v14;
          sub_1ABADEBEC((v22 > 1), v23 + 1, 1);
          v14 = v26;
          v13 = v25;
          result = v34;
        }

        *(result + 16) = v23 + 1;
        v24 = result + 8 * v23;
        *(v24 + 32) = v20;
        *(v24 + 36) = v21;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABE0E2DC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_autoreleasePoolPush();
  sub_1ABE0E7A0(a1, v2, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

unsigned __int8 *sub_1ABE0E35C()
{
  v2 = *v0;
  type metadata accessor for MentionGenerationModel();
  v3 = sub_1ABED4DD0([objc_allocWithZone(MEMORY[0x1E695FEB0]) initWithComputeUnits_]);
  if (v1)
  {
    goto LABEL_79;
  }

  v0[2] = v3;
  v4 = [*(v3 + 16) modelDescription];
  v5 = [v4 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABBA4FB8();
  v6 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDB0], v6);

  if (v36[3])
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    if (swift_dynamicCast())
    {
      v7 = sub_1ABA94FF4(0x74676E654C78616DLL, 0xE900000000000068, v35);
      v9 = v8;

      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1ABB384B8(v36);
  }

  v7 = 0;
  v9 = 0xE000000000000000;
LABEL_8:
  v11 = HIBYTE(v9) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_78:
    sub_1ABBA4EBC();
    swift_allocError();
    *v32 = 5;
    swift_willThrow();
    v33 = v0[2];

LABEL_79:
    swift_deallocPartialClassInstance();
    return v0;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v15 = sub_1ABB81A68(v7, v9, 10);
    v31 = v34;
LABEL_77:

    if ((v31 & 1) == 0)
    {
      v0[3] = v15;
      return v0;
    }

    goto LABEL_78;
  }

  if ((v9 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v17 & v16)
              {
                goto LABEL_75;
              }

              sub_1ABA8F22C();
              if (!v17)
              {
                goto LABEL_75;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_75;
              }

              sub_1ABA7E4F0();
              if (v17)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_75;
      }

      goto LABEL_87;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_75;
            }

            v28 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_75;
            }

            v15 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_75:
      v15 = 0;
      v20 = 1;
      goto LABEL_76;
    }

    if (v12 >= 1)
    {
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v17 & v16)
            {
              goto LABEL_75;
            }

            sub_1ABA8F22C();
            if (!v17)
            {
              goto LABEL_75;
            }

            v15 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_75;
            }

            sub_1ABA7E4F0();
            if (v17)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_76:
        v31 = v20;
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v36[0] = v7;
  v36[1] = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v11)
      {
        while (1)
        {
          sub_1ABA7D44C();
          if (!v17 & v16)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v17)
          {
            break;
          }

          v15 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v17)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        sub_1ABA8095C();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v17 & v16)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v17)
          {
            break;
          }

          v15 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v17)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_86;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      sub_1ABA8095C();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v17 & v16)
        {
          break;
        }

        sub_1ABA8F22C();
        if (!v17)
        {
          break;
        }

        v15 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v17)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_88:
  __break(1u);
  return result;
}

void sub_1ABE0E7A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ABF3BF80;
  sub_1ABB373C8();
  *(v8 + 32) = sub_1ABF24794();
  v9 = *(a1 + 16);
  *(v8 + 40) = sub_1ABF24404();
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v11 = sub_1ABE0F040(v8, 131104);
  if (v4)
  {

LABEL_3:
    sub_1ABBA4EBC();
    v12 = swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = a3;
LABEL_14:
    *v14 = v12;
    return;
  }

  if (!v11)
  {
    goto LABEL_3;
  }

  v58 = a4;
  v15 = v11;
  v16 = [v11 count];
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v17 = v16;
  v18 = v15;
  if (!v16)
  {
    goto LABEL_11;
  }

  if (!v9)
  {
    goto LABEL_44;
  }

  if (v16 > v9)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v19 = 0;
  v20 = a1 + 32;
  v18 = v15;
  do
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    [v18 setObject:v21 atIndexedSubscript:v19];

    ++v19;
  }

  while (v17 != v19);
LABEL_11:
  v22 = *(a2 + 16);

  sub_1ABED5398(v18);

  v24 = sub_1ABED467C();

  v14 = a3;
  if (!v24 || (v25 = [v24 multiArrayValue], v24, !v25))
  {
    sub_1ABBA4EBC();
    v12 = swift_allocError();
    *v23 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  v26 = [v25 count];
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v27 = v26;
  v57 = v18;
  v60 = v25;
  v28 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1ABF3BF80;
      *(v31 + 32) = sub_1ABF24794();
      *(v31 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v32 = sub_1ABF240C4();

      v33 = [v60 objectForKeyedSubscript_];

      v34 = sub_1ABF251B4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v30 + 16);
        sub_1ABAD9278();
        v30 = v37;
      }

      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        sub_1ABAD9278();
        v30 = v38;
      }

      ++v29;
      *(v30 + 16) = v35 + 1;
      *(v30 + 4 * v35 + 32) = v34;
    }

    while (v27 != v29);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1ABED467C();

  if (!v39 || (v40 = [v39 multiArrayValue], v39, !v40))
  {

    sub_1ABBA4EBC();
    v12 = swift_allocError();
    *v54 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  v41 = [v40 count];
  if ((v41 & 0x8000000000000000) == 0)
  {
    v42 = v41;
    if (v41)
    {
      v43 = 0;
      v28 = MEMORY[0x1E69E7CC0];
      do
      {
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1ABF3BF80;
        *(v44 + 32) = sub_1ABF24794();
        *(v44 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v45 = sub_1ABF240C4();

        v46 = [v40 objectForKeyedSubscript_];

        sub_1ABF24364();
        v48 = v47;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = *(v28 + 16);
          sub_1ABADA2B4();
          v28 = v52;
        }

        v49 = *(v28 + 16);
        v50 = v49 + 1;
        if (v49 >= *(v28 + 24) >> 1)
        {
          sub_1ABADA2B4();
          v28 = v53;
        }

        ++v43;
        *(v28 + 16) = v50;
        *(v28 + 4 * v49 + 32) = v48;
      }

      while (v42 != v43);
    }

    else
    {
      v50 = *(v28 + 16);
    }

    if (v50 == *(v30 + 16))
    {

      v55 = sub_1ABE0E0F4(v30, v28);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      *v58 = v55;
      return;
    }

    sub_1ABBA4EBC();
    v12 = swift_allocError();
    *v56 = 6;
    swift_willThrow();

LABEL_13:

    goto LABEL_14;
  }

LABEL_47:
  __break(1u);
}

id sub_1ABE0EF20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (v3 || (sub_1ABF25054()) && (v4 = *(v2 + 16)) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1ABE0F040(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1ABB373C8();
  v4 = sub_1ABF240C4();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t MLFeatureProvider.dictionary.getter()
{
  v1 = [v0 featureNames];
  v2 = sub_1ABF24394();

  sub_1ABBA043C();
  v13 = sub_1ABF239C4();
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; i = v8)
  {
    v8 = i;
LABEL_8:
    v9 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = v9[1];
    v12[0] = *v9;
    v12[1] = v10;

    sub_1ABE0F2D8(&v13, v12, v0);
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v13;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABE0F2D8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1ABF23BD4();
  v8 = [a3 featureValueForName_];

  if (v8)
  {
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    sub_1ABAFBF70();
    *a1 = v10;
  }

  else
  {
  }
}

uint64_t ModelError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE0F438()
{
  result = qword_1EB4DA7B0;
  if (!qword_1EB4DA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA7B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_1ABE0F568(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for KGQ.Value() - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v18, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v19;
    ++v6;
    if (v19)
    {
      v20 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v8 + 16);
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v8 = v16;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v13 = v12 + 1;
        v8 = v17;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v20;
      *(v14 + 40) = v11;
      v6 = v10;
    }
  }
}

uint64_t sub_1ABE0F6E0(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v22 = *v6;

      a1(&v18, &v22);
      if (v3)
      {
        break;
      }

      if (*(&v19 + 1))
      {
        v14 = v18;
        v15 = v19;
        v16 = v20;
        v17 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v7 + 16);
          sub_1ABA7BEF0();
          sub_1ABADBA0C();
          v7 = v11;
        }

        v8 = *(v7 + 16);
        if (v8 >= *(v7 + 24) >> 1)
        {
          sub_1ABADBA0C();
          v7 = v12;
        }

        *(v7 + 16) = v8 + 1;
        v9 = (v7 + (v8 << 6));
        v9[4] = v16;
        v9[5] = v17;
        v9[2] = v14;
        v9[3] = v15;
      }

      else
      {
        sub_1ABAB480C(&v18, &qword_1EB4D9310, &unk_1ABF5FD70);
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_1ABE0F86C()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8176C();
  v11 = sub_1ABF22424();
  v12 = sub_1ABA7BB64(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7AC18();
  v39 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v34 - v18;
  v36 = v19;
  v20 = *(v3 + 16);
  v21 = (v3 + 32);
  v38 = (v19 + 32);
  v44 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  if (v20)
  {
    while (1)
    {
      memcpy(v43, v21, 0x69uLL);
      memcpy(v42, v21, 0x69uLL);
      sub_1ABE10DCC(v43, v41);
      v6(v42);
      if (v0)
      {
        break;
      }

      memcpy(v41, v42, 0x69uLL);
      sub_1ABE10E28(v41);
      v22 = sub_1ABA9A69C();
      if (sub_1ABA7E1E0(v22, v23, v11) == 1)
      {
        sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
      }

      else
      {
        v24 = v11;
        v25 = *v38;
        v26 = v35;
        (*v38)(v35, v1, v24);
        v27 = v26;
        v28 = v24;
        v25(v39, v27, v24);
        v29 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v44 + 16);
          sub_1ABA7BEF0();
          sub_1ABADC9D0();
          v29 = v32;
        }

        v30 = *(v29 + 16);
        v44 = v29;
        if (v30 >= *(v29 + 24) >> 1)
        {
          sub_1ABADC9D0();
          v44 = v33;
        }

        *(v44 + 16) = v30 + 1;
        v25((v44 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30), v39, v28);
        v11 = v28;
        v6 = v37;
      }

      v21 += 112;
      if (!--v20)
      {
        goto LABEL_13;
      }
    }

    memcpy(v41, v42, 0x69uLL);
    sub_1ABE10E28(v41);
  }

LABEL_13:
  sub_1ABA7BC90();
}

uint64_t MorphunTokenizer.tokenize(_:noWordNormalization:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = objc_autoreleasePoolPush();
  v8 = 8;
  if ((a3 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = *(v5 + v8);

  v10 = sub_1ABF22F34();
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1ABA7E918();
    *(v11 - 16) = v5;
    sub_1ABAAA034();
    v5 = v12;
  }

  objc_autoreleasePoolPop(v7);
  return v5;
}

uint64_t sub_1ABE0FC54()
{
  sub_1ABAD219C(&qword_1EB4DA7E0, &qword_1ABF67A68);
  v0 = sub_1ABF22F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3BF90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69B28F8], v0);
  v6(v5 + v2, *MEMORY[0x1E69B2898], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69B28C8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69B28A0], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69B28D8], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x1E69B28D0], v0);
  qword_1ED870AD8 = v4;
  return result;
}

uint64_t sub_1ABE0FDF0()
{
  sub_1ABAD219C(&qword_1EB4DA7E0, &qword_1ABF67A68);
  v0 = sub_1ABF22F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3EB10;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69B28F8], v0);
  v6(v5 + v2, *MEMORY[0x1E69B28C8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69B28A0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69B28D8], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x1E69B28D0], v0);
  qword_1ED870AC0 = v4;
  return result;
}

void sub_1ABE0FF74()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v58 = v3;
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v59 = v57 - v8;
  v9 = sub_1ABF21F54();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABC2F83C(0xD000000000000016, 0x80000001ABF92210);
  p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
  if (v0)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v21 = sub_1ABF237F4();
    sub_1ABA7AA24(v21, qword_1ED871B20);
    v22 = v0;
    v23 = sub_1ABF237D4();
    v24 = sub_1ABF24664();

    if (os_log_type_enabled(v23, v24))
    {
      sub_1ABA8C938();
      v25 = swift_slowAlloc();
      v26 = v9;
      v27 = swift_slowAlloc();
      *v25 = 138412290;
      v28 = v0;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1ABA78000, v23, v24, "MorphunTokenizer: Failed to check app id entitlement: %@. Will use XPC to request asset.", v25, 0xCu);
      sub_1ABAB480C(v27, &unk_1EB4D57F0, &qword_1ABF390C0);
      v9 = v26;
      p_cache = (&OBJC_METACLASS____TtC20IntelligencePlatform3Add + 16);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (v19)
  {
    if (v18 == 0xD00000000000001FLL && v19 == 0x80000001ABF92230)
    {

LABEL_26:
      static MorphunTokenizer.requestAssetDownloadInProcess(locale:)(v58, v2);
      goto LABEL_27;
    }

    v31 = sub_1ABF25054();

    if (v31)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  if (p_cache[355] != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v32 = sub_1ABF237F4();
  sub_1ABA7AA24(v32, qword_1ED871B20);
  v33 = *(v12 + 16);
  v57[1] = v2;
  v33(v17, v2, v9);
  v34 = sub_1ABF237D4();
  v35 = sub_1ABF24664();
  if (os_log_type_enabled(v34, v35))
  {
    sub_1ABA8C938();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60[0] = v37;
    *v36 = 136315138;
    sub_1ABA7F830();
    sub_1ABAAA2F8(v38, v39);
    v40 = sub_1ABF24FF4();
    v41 = v9;
    v43 = v42;
    (*(v12 + 8))(v17, v41);
    v44 = sub_1ABADD6D8(v40, v43, v60);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_1ABA78000, v34, v35, "MorphunTokenizer: requesting asset path %s via entity resolution XPC service.", v36, 0xCu);
    sub_1ABA84B54(v37);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {

    (*(v12 + 8))(v17, v9);
  }

  v45 = [objc_allocWithZone(GDXPCEntityResolutionService) init];
  v46 = sub_1ABF23BD4();
  sub_1ABF21F24();
  v47 = sub_1ABF23BD4();

  v60[0] = 0;
  v48 = [v45 requestAssetDownloadForAssetType:v46 localeIdentifier:v47 error:v60];

  v49 = v59;
  if (v48)
  {
    v50 = v60[0];
    [v48 isEmbedded];
    v51 = [v48 filepathURL];
    if (v51)
    {
      v52 = v51;
      sub_1ABF21CA4();

      v53 = 0;
      v48 = v52;
    }

    else
    {
      v53 = 1;
    }

    v55 = sub_1ABF21CF4();
    sub_1ABA7B9B4(v49, v53, 1, v55);
    sub_1ABE10E7C(v49, v58);
  }

  else
  {
    v54 = v60[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

LABEL_27:
  v56 = *MEMORY[0x1E69E9840];
  sub_1ABA7BC90();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MorphunTokenizer.process(_:separator:noWordNormalization:)(Swift::String _, Swift::String separator, Swift::Bool noWordNormalization)
{
  object = separator._object;
  v7 = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v9 = objc_autoreleasePoolPush();
  MorphunTokenizer.tokenize(_:noWordNormalization:)(countAndFlagsBits, v7, noWordNormalization);
  if (!v4)
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v3 = sub_1ABF23B54();
    object = v10;
  }

  objc_autoreleasePoolPop(v9);
  v11 = v3;
  v12 = object;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

id static MorphunTokenizer.requestAssetDownloadInProcess(locale:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = sub_1ABF21F54();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = sub_1ABF21CF4();
  v16 = sub_1ABA7BB64(v15);
  v59 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v23 = objc_opt_self();
  v24 = sub_1ABF21F34();
  v25 = [v23 isLocaleEmbedded_];

  if (v25)
  {
    sub_1ABA7B9B4(v60, 1, 1, v15);
  }

  else
  {
    v57 = 0;
    v58 = v15;
    v26 = sub_1ABF21F34();
    v27 = [v23 getAssetPathForLocale_];

    if (v27)
    {
      sub_1ABF21CA4();

      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v28 = sub_1ABF237F4();
      sub_1ABA7AA24(v28, qword_1ED871B20);
      (*(v6 + 16))(v14, a2, v3);
      v29 = sub_1ABF237D4();
      v30 = sub_1ABF24684();
      if (os_log_type_enabled(v29, v30))
      {
        sub_1ABA8C938();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v61 = v32;
        *v31 = 136315138;
        sub_1ABA7F830();
        sub_1ABAAA2F8(v33, v34);
        v35 = sub_1ABF24FF4();
        v37 = v36;
        (*(v6 + 8))(v14, v3);
        v38 = sub_1ABADD6D8(v35, v37, &v61);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_1ABA78000, v29, v30, "MorphunTokenizer: asset URL path %s", v31, 0xCu);
        sub_1ABA84B54(v32);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {

        (*(v6 + 8))(v14, v3);
      }

      v49 = v58;
      v50 = v60;
      (v59[4])(v60, v22, v58);
      v51 = v50;
      v52 = 0;
      v53 = v49;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v39 = sub_1ABF237F4();
      sub_1ABA7AA24(v39, qword_1ED871B20);
      (*(v6 + 16))(v11, a2, v3);
      v40 = sub_1ABF237D4();
      v41 = sub_1ABF24684();
      if (os_log_type_enabled(v40, v41))
      {
        sub_1ABA8C938();
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v42 = 136315138;
        sub_1ABA7F830();
        sub_1ABAAA2F8(v43, v44);
        v45 = sub_1ABF24FF4();
        v47 = v46;
        (*(v6 + 8))(v11, v3);
        v48 = sub_1ABADD6D8(v45, v47, &v61);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_1ABA78000, v40, v41, "MorphunTokenizer: asking MorphunAssets to download %s locale for future requests.", v42, 0xCu);
        sub_1ABA84B54(v59);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {

        (*(v6 + 8))(v11, v3);
      }

      v54 = sub_1ABF21F34();
      [v23 onDemandDownloadForLocale:v54 withProgress:0 withCompletion:0];

      v51 = v60;
      v52 = 1;
      v53 = v58;
    }

    sub_1ABA7B9B4(v51, v52, 1, v53);
    return v57;
  }

  return v25;
}

uint64_t sub_1ABE10B70()
{
  result = sub_1ABF22F44();
  if (v1 <= 0x3F)
  {
    result = sub_1ABF21F54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE10BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA7B8, &qword_1ABF67A38);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABE10C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DA7B8, &qword_1ABF67A38);

  return sub_1ABA7B9B4(a1, a2, a3, v6);
}

uint64_t sub_1ABE10CCC(uint64_t a1)
{
  sub_1ABE10D84();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1ABF21F54();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1ABE10D84()
{
  if (!qword_1EB4DA7D0)
  {
    v0 = sub_1ABF21F54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4DA7D0);
    }
  }
}

uint64_t sub_1ABE10E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE10EEC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4DA800);
  sub_1ABA7AA24(v0, qword_1EB4DA800);
  return sub_1ABF22CE4();
}

uint64_t MUIDIdentifierMapView.identifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v8 = v3[1];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1ABB2C7F4();
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DA820, &qword_1ABF3A5C8);
  sub_1ABF22464();

  if (!v4)
  {
    sub_1ABB2B94C(v12, a3);
  }

  return result;
}

uint64_t sub_1ABE110B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v42 = a1;
  v37 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  if (qword_1EB4D03E0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v9 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v9, qword_1EB4DA800);
  v49 = a2;
  v44[3] = sub_1ABF22D14();
  v44[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v44);
  sub_1ABF22D24();
  v47 = sub_1ABF22424();
  v48 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v45);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABF23EE4();
  sub_1ABA84B54(v44);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v45);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v10 = v43;
  a2 = v8;
  v11 = sub_1ABF22294();
  v12 = v10;
  v13 = *(v5 + 8);
  v5 += 8;
  result = v13(v8, v4);
  if (!v10)
  {
    v15 = sub_1ABAAB7C8(v11);
    v16 = 0;
    v41 = v11 & 0xC000000000000001;
    v42 = v15;
    v4 = MEMORY[0x1E69E7CC8];
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v8 = 0x6E6564496469756DLL;
    v38 = v11;
    while (1)
    {
      if (v42 == v16)
      {

        *v37 = v4;
        return result;
      }

      if (v41)
      {
        v5 = MEMORY[0x1AC5AA170](v16, v11);
      }

      else
      {
        if (v16 >= *(v40 + 16))
        {
          goto LABEL_28;
        }

        v5 = *(v11 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB32E40();
      if (v12)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1ABB370C4(&v45);
      v43 = 0;
      if (v46)
      {
        v21 = sub_1ABA94FC8(v19, v20);
        a2 = v22;

        if (a2)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v44[0] = v4;
          v23 = v4[3];
          sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
          a2 = v44;
          v11 = v38;
          sub_1ABF24C64();
          v4 = v44[0];
          v24 = *(*(v44[0] + 48) + 16 * v21 + 8);

          sub_1ABF24C84();
        }
      }

      else
      {
        v39 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v4;
        a2 = v4;
        v25 = sub_1ABA94FC8(v19, v20);
        v27 = v4[2];
        v28 = (v26 & 1) == 0;
        v4 = (v27 + v28);
        if (__OFADD__(v27, v28))
        {
          goto LABEL_29;
        }

        v8 = v25;
        v29 = v26;
        sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
        a2 = v44;
        if (sub_1ABF24C64())
        {
          a2 = v44[0];
          v30 = sub_1ABA94FC8(v19, v20);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_33;
          }

          v8 = v30;
        }

        if (v29)
        {

          v4 = v44[0];
          *(*(v44[0] + 56) + 8 * v8) = v39;
        }

        else
        {
          v4 = v44[0];
          *(v44[0] + 8 * (v8 >> 6) + 64) |= 1 << v8;
          v32 = (v4[6] + 16 * v8);
          *v32 = v19;
          v32[1] = v20;
          *(v4[7] + 8 * v8) = v39;

          v33 = v4[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_30;
          }

          v4[2] = v35;
        }

        v8 = 0x6E6564496469756DLL;
        v11 = v38;
      }

      v12 = v43;
      ++v16;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t MUIDIdentifierMapView.muidIdentifier(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v3;
  sub_1ABB2C288();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DA830, qword_1ABF67A78);
  v7 = v4;
  sub_1ABF22464();

  if (!v2)
  {
    v7 = sub_1ABB2BBF4(v9);
  }

  return v7;
}

uint64_t sub_1ABE117B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = v3[1];
  swift_getObjectType();
  sub_1ABAD219C(a2, a3);
  result = sub_1ABF22464();
  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1ABE11860@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v43 = a1;
  v38 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  isUniquelyReferenced_nonNull_native = *(v4 - 8);
  v6 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  if (qword_1EB4D03E0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v9 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v9, qword_1EB4DA800);
  v46[6] = a2;
  v45[3] = sub_1ABF22D14();
  v45[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v45);
  sub_1ABF22D24();
  v46[3] = sub_1ABF22424();
  v46[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v46);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v45);
  sub_1ABF22CA4();
  sub_1ABA84B54(v46);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v10 = v44;
  a2 = v8;
  v11 = sub_1ABF22294();
  v12 = *(isUniquelyReferenced_nonNull_native + 8);
  isUniquelyReferenced_nonNull_native += 8;
  v13 = v4;
  v4 = v10;
  result = v12(v8, v13);
  if (!v10)
  {
    v15 = sub_1ABAAB7C8(v11);
    v8 = 0;
    v41 = v11 & 0xC000000000000001;
    v42 = v15;
    v16 = MEMORY[0x1E69E7CC8];
    v39 = v11;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v42 == v8)
      {

        *v38 = v16;
        return result;
      }

      if (v41)
      {
        MEMORY[0x1AC5AA170](v8, v11);
      }

      else
      {
        if (v8 >= *(v40 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v11 + 8 * v8 + 32);
      }

      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB33F2C();
      if (v4)
      {
        break;
      }

      v18 = v46[0];
      v19 = sub_1ABB36D74();
      if (v20)
      {
        v21 = v20;
        v43 = v8;
        v44 = 0;
        v8 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v16;
        a2 = v16;
        v22 = sub_1ABAF81A8();
        if (__OFADD__(v16[2], (v23 & 1) == 0))
        {
          goto LABEL_29;
        }

        v24 = v22;
        v4 = v23;
        sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
        a2 = v45;
        if (sub_1ABF24C64())
        {
          a2 = v45[0];
          v25 = sub_1ABAF81A8();
          if ((v4 & 1) != (v26 & 1))
          {
            goto LABEL_33;
          }

          v24 = v25;
        }

        v16 = v45[0];
        if (v4)
        {
          v27 = (*(v45[0] + 56) + 16 * v24);
          a2 = v27[1];
          *v27 = v8;
          v27[1] = v21;
        }

        else
        {
          *(v45[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
          *(v16[6] + 8 * v24) = v18;
          v33 = (v16[7] + 16 * v24);
          *v33 = v8;
          v33[1] = v21;

          v34 = v16[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_30;
          }

          v16[2] = v36;
        }

        v8 = v43;
        v4 = v44;
        v11 = v39;
      }

      else
      {
        a2 = v16;
        v28 = sub_1ABAF81A8();
        if (v29)
        {
          v30 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45[0] = v16;
          v31 = v16[3];
          sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
          a2 = v45;
          v11 = v39;
          sub_1ABF24C64();
          v16 = v45[0];
          v32 = *(*(v45[0] + 56) + 16 * v30 + 8);

          sub_1ABB668FC();
          sub_1ABF24C84();
        }
      }

      ++v8;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

double sub_1ABE11E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1.0;
  }

  v2 = (a1 + 32);
  result = 1.0;
  do
  {
    v4 = *v2++;
    result = result * v4;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1ABE11E90(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 34) != 1)
  {
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v2 = *a1;
  v3 = a1[10];
  v4 = *(a1 + 96);
  v5 = a1[11];
  v7 = a1[5];
  v6 = a1[6];
  v8 = *(a1 + 16);
  v9 = a1[3];
  v125 = *(a1 + 1);

  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  v10 = MEMORY[0x1E69E7CC0];
  v123 = v2;
  v134[0] = v2;
  *&v134[1] = v125;
  v134[3] = v9;
  LOWORD(v134[4]) = v8;
  BYTE2(v134[4]) = 1;
  v134[5] = v7;
  v134[6] = v6;
  v134[9] = sub_1ABF239C4();
  v134[10] = v10;
  v134[11] = v5;
  LOBYTE(v134[12]) = v4;
  v134[13] = v10;
  v134[8] = 0;
  v134[7] = 0;
  if (!*(v3 + 16))
  {
    v110 = v10;
    goto LABEL_107;
  }

  v11 = 0;
  v120 = v3 + 32;
  v12 = *(v3 + 16);
  v121 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v118 = v3;
  v119 = v12;
  while (2)
  {
    if (v11 >= v12)
    {
      goto LABEL_121;
    }

    memcpy(__dst, (v120 + 112 * v11), sizeof(__dst));
    v13 = __dst[9];
    v122 = v11 + 1;
    v14 = __dst[9] + 64;
    v15 = 1 << *(__dst[9] + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(__dst[9] + 64);
    swift_bridgeObjectRetain_n();
    sub_1ABAE441C(__dst, __src);
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (v17)
    {
LABEL_14:
      v21 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
      v22 = *(*(v13 + 56) + v21);
      v23 = *(v22 + 16);
      v24 = *(v19 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_116;
      }

      v25 = *(*(v13 + 56) + v21);

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v19 + 24) >> 1)
      {
        sub_1ABAD88DC();
        v19 = v26;
      }

      v17 &= v17 - 1;
      if (*(v22 + 16))
      {
        if ((*(v19 + 24) >> 1) - *(v19 + 16) < v23)
        {
          goto LABEL_119;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v27 = *(v19 + 16);
          v28 = __OFADD__(v27, v23);
          v29 = v27 + v23;
          if (v28)
          {
            goto LABEL_120;
          }

          *(v19 + 16) = v29;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_117;
        }
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_112:
        __break(1u);
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
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
        return;
      }

      if (v20 >= ((v15 + 63) >> 6))
      {
        break;
      }

      v17 = *(v14 + 8 * v20);
      ++v18;
      if (v17)
      {
        v18 = v20;
        goto LABEL_14;
      }
    }

    sub_1ABC6D404(__dst);

    v30 = 0;
    v124 = *(v19 + 16);
    while (2)
    {
      v31 = 144 * v30 + 32;
LABEL_27:
      if (v124 != v30)
      {
        if (v30 >= *(v19 + 16))
        {
          goto LABEL_112;
        }

        memcpy(__src, (v19 + v31), sizeof(__src));
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_122;
        }

        if (*(_Records_GDEntityPredicate_records + 25) >= 3481)
        {
          goto LABEL_113;
        }

        if (*(_Records_GDEntityPredicate_records + 26) >= 4281)
        {
          goto LABEL_114;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_123;
        }

        v32 = __src[7];
        v33 = __src[8];
        sub_1ABAE42A8(__src, v131);

        v34 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_124;
        }

        v36 = v34;
        v37 = v35;
        sub_1ABF23DD4();
        if (v32 == v36 && v33 == v37)
        {
        }

        else
        {
          v39 = sub_1ABF25054();

          if ((v39 & 1) == 0)
          {
LABEL_56:
            if (BYTE2(__src[6]) == 1 && __src[2] == v123)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native)
              {
                v86 = v121;
              }

              else
              {
                sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v84, v85, v121);
                sub_1ABAD88DC();
                v86 = v104;
              }

              v87 = *(v86 + 16);
              if (v87 >= *(v86 + 24) >> 1)
              {
                sub_1ABA7F848();
                v86 = v105;
              }

              ++v30;
              *(v86 + 16) = v87 + 1;
              v121 = v86;
              memcpy((v86 + 144 * v87 + 32), __src, 0x90uLL);
              continue;
            }

            sub_1ABAE4304(__src);
            v31 += 144;
            ++v30;
            goto LABEL_27;
          }
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_125;
        }

        if (*(_Records_GDEntityPredicate_records + 136) >= 3481 || *(_Records_GDEntityPredicate_records + 137) >= 4281)
        {
          goto LABEL_115;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_126;
        }

        v41 = _Records_GDEntityPredicate_records[540];
        v42 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_127;
        }

        v44 = v42;
        v45 = v43;
        v46 = __src[17];
        v47 = sub_1ABF23DD4();
        v137[0] = v44;
        v137[1] = v45;
        v137[2] = v47;
        v137[3] = v48;
        v138 = v41;
        if (*(v46 + 16))
        {
          v49 = sub_1ABAF8208();
          v51 = v50;
          sub_1ABAE4478(v137);
          if (v51)
          {
            v52 = *(*(v46 + 56) + 8 * v49);
            if (*(v52 + 16))
            {
              memcpy(v131, (v52 + 32), sizeof(v131));
              v53 = v131[12];
              v54 = v131[13];
              switch(BYTE2(v131[16]))
              {
                case 1:
                  v65 = 3826797;
                  if ((v131[12] & 0x80000000000000) == 0)
                  {
                    v65 = 3828069;
                  }

                  v127 = v131[12];
                  v128 = v65;
                  v129 = 0xE300000000000000;
                  v66 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v66, v67);
                  v68 = sub_1ABF24FF4();
                  MEMORY[0x1AC5A9410](v68);

                  v53 = v128;
                  v54 = v129;
                  goto LABEL_64;
                case 2:
                case 3:
                  v55 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v55, v56);

                  goto LABEL_64;
                case 4:
                  v58 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v58, v59);
                  goto LABEL_68;
                default:
                  v60 = v131[15];
                  v61 = v131[14];
                  v62 = LOWORD(v131[16]);
                  v63 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v63, v64);
                  sub_1ABAE4358(v53, v54, v61, v60, v62, 0);
LABEL_64:
                  if (v53 == 0x44495F6D616441 && v54 == 0xE700000000000000)
                  {

                    sub_1ABAE4304(v131);
                  }

                  else
                  {
LABEL_68:
                    v70 = sub_1ABF25054();

                    sub_1ABAE4304(v131);
                    if ((v70 & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  if (!_Records_GDEntityPredicate_records)
                  {
                    goto LABEL_128;
                  }

                  if (*(_Records_GDEntityPredicate_records + 70) >= 3481 || *(_Records_GDEntityPredicate_records + 71) >= 4281)
                  {
                    goto LABEL_118;
                  }

                  if (!_Records_GDEntityPredicate_predicateIds)
                  {
                    goto LABEL_130;
                  }

                  v72 = _Records_GDEntityPredicate_records[276];
                  v73 = sub_1ABF23DD4();
                  if (!_Records_GDEntityPredicate_labels)
                  {
                    goto LABEL_129;
                  }

                  v75 = v73;
                  v76 = v74;
                  v77 = sub_1ABF23DD4();
                  v135[0] = v75;
                  v135[1] = v76;
                  v135[2] = v77;
                  v135[3] = v78;
                  v136 = v72;
                  if (!*(v46 + 16))
                  {
                    v57 = v135;
                    goto LABEL_55;
                  }

                  v79 = sub_1ABAF8208();
                  v81 = v80;
                  sub_1ABAE4478(v135);
                  if ((v81 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v82 = *(*(v46 + 56) + 8 * v79);
                  if (!*(v82 + 16))
                  {
                    goto LABEL_56;
                  }

                  memcpy(v130, (v82 + 32), sizeof(v130));
                  sub_1ABAE42A8(v130, &v128);
                  v88 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v88 & 1) == 0)
                  {
                    sub_1ABA7C494(v88, v89, v90, v116);
                    sub_1ABAD88DC();
                    v116 = v106;
                  }

                  v91 = v116;
                  v92 = *(v116 + 16);
                  if (v92 >= *(v116 + 24) >> 1)
                  {
                    sub_1ABA7F848();
                    v91 = v107;
                  }

                  ++v30;
                  v93 = v130[12];
                  v94 = v130[13];
                  v95 = BYTE2(v130[16]);
                  v116 = v91;
                  *(v91 + 16) = v92 + 1;
                  memcpy((v91 + 144 * v92 + 32), __src, 0x90uLL);
                  v96 = 0xE000000000000000;
                  v97 = 0;
                  switch(v95)
                  {
                    case 1:
                      v128 = v93;
                      v97 = EntityIdentifier.stringValue.getter();
                      v96 = v98;
                      break;
                    case 4:
                      break;
                    default:

                      v97 = v93;
                      v96 = v94;
                      break;
                  }

                  v99 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v99 & 1) == 0)
                  {
                    sub_1ABA7C494(v99, v100, v101, v115);
                    sub_1ABAAA4F4();
                    v115 = v108;
                  }

                  v102 = *(v115 + 16);
                  if (v102 >= *(v115 + 24) >> 1)
                  {
                    sub_1ABAAA4F4();
                    v115 = v109;
                  }

                  sub_1ABAE4304(v130);
                  *(v115 + 16) = v102 + 1;
                  v103 = v115 + 16 * v102;
                  *(v103 + 32) = v97;
                  *(v103 + 40) = v96;
                  v134[13] = v115;
                  break;
              }

              continue;
            }
          }
        }

        else
        {
          v57 = v137;
LABEL_55:
          sub_1ABAE4478(v57);
        }

        goto LABEL_56;
      }

      break;
    }

    v11 = v122;
    if (v122 != v119)
    {
      v12 = *(v118 + 16);
      continue;
    }

    break;
  }

  v10 = v116;
  v110 = v121;
LABEL_107:
  sub_1ABD88954(v110);

  if (*(v10 + 16))
  {
    v111 = MEMORY[0x1E69E7CC0];
    memset(v126, 0, 34);
    BYTE2(v126[2]) = 4;
    *(&v126[2] + 1) = 0;
    memset(&v126[3], 0, 24);
    *(&v126[4] + 1) = sub_1ABF239C4();
    v126[5] = v111;
    LOBYTE(v126[6]) = 0;
    *(&v126[6] + 1) = v111;
    sub_1ABD88954(v10);

    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1ABF34740;
    memcpy((v112 + 32), v126, 0x70uLL);

    v134[10] = v112;
  }

  else
  {
  }

  memcpy(v131, v134, 0x70uLL);
  memcpy(a2, v134, 0x70uLL);
  memcpy(__src, v134, 0x70uLL);
  v113 = sub_1ABA7DE60();
  sub_1ABAE441C(v113, v114);
  sub_1ABC6D404(__src);
}

Swift::String __swiftcall Double.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_1ABA81BE0();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](102, 0xE100000000000000);
  sub_1ABAD219C(&qword_1EB4DA838, &qword_1ABF67B10);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  *(v4 + 16) = xmmword_1ABF34740;
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_1ABF23C34();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Float.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_1ABA81BE0();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](102, 0xE100000000000000);
  sub_1ABAD219C(&qword_1EB4DA838, &qword_1ABF67B10);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6448];
  *(v4 + 16) = xmmword_1ABF34740;
  v6 = MEMORY[0x1E69E64A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_1ABF23C34();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static RuntimeNumericError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_1ABF25054();
        sub_1ABA7BE8C();
        sub_1ABA7DE6C();
        sub_1ABA7DE6C();
        sub_1ABB95F08();
        sub_1ABA7BE8C();
        goto LABEL_16;
      }

      sub_1ABA7DE6C();
      sub_1ABA7DE6C();
      sub_1ABB95F08();
      sub_1ABB95F08();
      return 1;
    }

LABEL_9:
    sub_1ABA7BE8C();
    sub_1ABA7DE6C();
    sub_1ABA7DE6C();
    sub_1ABB95F08();
    sub_1ABA7BE8C();
    sub_1ABB95F08();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABB95F08();
    sub_1ABA7D230();
    sub_1ABB95F08();
    return v10;
  }

  v8 = *a1;
  v9 = sub_1ABF25054();
  sub_1ABA7BE8C();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABB95F08();
  sub_1ABA7BE8C();
LABEL_16:
  sub_1ABB95F08();
  return v9 & 1;
}

void Array<A>.dotProduct(with:)(uint64_t a1, uint64_t a2)
{
  sub_1ABA7EB24(a1, a2);
  if (v2)
  {
    sub_1ABA7F868();
    sub_1ABE130BC(v3, v5, v4);
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004DLL, 0x80000001ABF922E0);
    v6 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v6);

    sub_1ABA83C48();
    v7 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v7);

    sub_1ABE13524();
    v8 = sub_1ABA7BD00();
    sub_1ABA81094(v8, v9);
  }
}

void Array<A>.cosineSimilarity(with:)(uint64_t a1, uint64_t a2)
{
  __C[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1ABA7EB24(a1, a2);
  if (v5)
  {
    v6 = v4;
    v7 = v3;
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v4 + 32), 1, __C, v2);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v7 + 32), 1, __C, v2);
    sub_1ABA7F868();
    sub_1ABE130BC(v6, v7, v8);
  }

  else
  {
    __C[0] = 0;
    __C[1] = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000053, 0x80000001ABF92330);
    v9 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v9);

    sub_1ABA83C48();
    v10 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v10);

    sub_1ABE13524();
    v11 = sub_1ABA7BD00();
    sub_1ABA81094(v11, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void Array<A>.euclideanDistance(with:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABA7EB24(a1, a2);
  if (v4)
  {
    v5 = sub_1ABE130BC(v3, v2, MEMORY[0x1E6958C10]);
    sqrtf(v5);
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000054, 0x80000001ABF92390);
    v6 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v6);

    sub_1ABA83C48();
    v7 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v7);

    sub_1ABE13524();
    v8 = sub_1ABA7BD00();
    sub_1ABA81094(v8, v9);
  }
}

float sub_1ABE130BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, float *))
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != *(a2 + 16))
  {
    __break(1u);
  }

  v5 = NAN;
  a3(a1 + 32, 1, a2 + 32, 1, &v5);
  result = v5;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Array<A>.padding(totalSize:padValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  v6 = a1 - v5;
  if (a1 <= v5)
  {

    return v4;
  }

  if (a1 - v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  sub_1ABADA1CC();
  v4 = v10;
LABEL_4:
  v7 = *(v4 + 16);
  do
  {
    if (v7 >= *(v4 + 24) >> 1)
    {
      sub_1ABADA1CC();
      v4 = v8;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7++ + 32) = v3;
    --v6;
  }

  while (v6);
  return v4;
}

void Array<A>.to2D(numRows:numColumns:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = a2;
  v5 = *(a3 + 16);
  if (v5 != a1 * a2)
  {
    sub_1ABF24AB4();

    v19 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v19);

    MEMORY[0x1AC5A9410](540877088, 0xE400000000000000);
    v20 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v20);

    MEMORY[0x1AC5A9410](2107936, 0xE300000000000000);
    v21 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v21);

    sub_1ABE13524();
    sub_1ABA7BD00();
    *v22 = 0xD000000000000025;
    *(v22 + 8) = 0x80000001ABF923F0;
    *(v22 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (a1 < 0)
  {
    goto LABEL_25;
  }

  if (a1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC0C();
    if (v4 < 0)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = 0;
    v8 = v28;
    v9 = a1;
    v10 = MEMORY[0x1E69E7CC0];
    v23 = v4;
    while (!v4)
    {
      v11 = v10;
LABEL_16:
      v29 = v8;
      v17 = *(v8 + 16);
      if (v17 >= *(v8 + 24) >> 1)
      {
        v18 = v6;
        sub_1ABADEC0C();
        v6 = v18;
        v10 = MEMORY[0x1E69E7CC0];
        v9 = a1;
        v8 = v29;
      }

      ++v7;
      *(v8 + 16) = v17 + 1;
      *(v8 + 8 * v17 + 32) = v11;
      v6 += v4;
      if (v7 == v9)
      {
        return;
      }
    }

    v25 = v8;
    v26 = v6;
    v27 = v10;
    sub_1ABADE0CC(0, v4, 0);
    if ((v7 * v4) >> 64 == (v7 * v4) >> 63)
    {
      v6 = v26;
      v11 = v27;
      v12 = v4;
      v13 = v26;
      v9 = a1;
      v8 = v25;
      v10 = MEMORY[0x1E69E7CC0];
      while (v13 < v5)
      {
        v14 = *(a3 + 32 + 4 * v13);
        v16 = *(v27 + 16);
        v15 = *(v27 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1ABADE0CC((v15 > 1), v16 + 1, 1);
          v8 = v25;
          v6 = v26;
          v10 = MEMORY[0x1E69E7CC0];
          v9 = a1;
        }

        *(v27 + 16) = v16 + 1;
        *(v27 + 4 * v16 + 32) = v14;
        ++v13;
        if (!--v12)
        {
          v4 = v23;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

unint64_t sub_1ABE13524()
{
  result = qword_1EB4DA840;
  if (!qword_1EB4DA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSimilarity(_BYTE *result, int a2, int a3)
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

unint64_t ObjectSynthesisDictionaryMapping.init()@<X0>(void *a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DA848, &qword_1ABF67C28);
  result = swift_allocObject();
  *(result + 16) = xmmword_1ABF3EBB0;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = result;
  v4 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), v575);
  *(v3 + 32) = sub_1ABA7DE88(v4, v5, v6, v7, v8, v9, v10, v11, v532, v575[0]);
  *(v3 + 48) = v12;
  *(v3 + 56) = v13;
  *(v3 + 64) = v14;
  v15 = type metadata accessor for CustomGraphEvent(0);
  result = sub_1ABE149F0(&qword_1ED86DAF8, type metadata accessor for CustomGraphEvent);
  *(v3 + 72) = v15;
  *(v3 + 80) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v575);
  *(v3 + 88) = sub_1ABA7DE88(v16, v17, v18, v19, v20, v21, v22, v23, v533, v575[0]);
  *(v3 + 104) = v24;
  *(v3 + 112) = v25;
  *(v3 + 120) = v26;
  v27 = type metadata accessor for CustomGraphActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent);
  *(v3 + 128) = v27;
  *(v3 + 136) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v28 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v575);
  *(v3 + 144) = sub_1ABA7DE88(v28, v29, v30, v31, v32, v33, v34, v35, v534, v575[0]);
  *(v3 + 160) = v36;
  *(v3 + 168) = v37;
  *(v3 + 176) = v38;
  v39 = type metadata accessor for CustomGraphSportsGameEvent(0);
  result = sub_1ABE149F0(&qword_1ED86D1D0, type metadata accessor for CustomGraphSportsGameEvent);
  *(v3 + 184) = v39;
  *(v3 + 192) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v575);
  *(v3 + 200) = sub_1ABA7DE88(v40, v41, v42, v43, v44, v45, v46, v47, v535, v575[0]);
  *(v3 + 216) = v48;
  *(v3 + 224) = v49;
  *(v3 + 232) = v50;
  v51 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent);
  *(v3 + 240) = v51;
  *(v3 + 248) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v52 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v575);
  *(v3 + 256) = sub_1ABA7DE88(v52, v53, v54, v55, v56, v57, v58, v59, v536, v575[0]);
  *(v3 + 272) = v60;
  *(v3 + 280) = v61;
  *(v3 + 288) = v62;
  v63 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent);
  *(v3 + 296) = v63;
  *(v3 + 304) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v64 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v575);
  sub_1ABA8F96C(v64, v65, v66, v67, v68, v69, v70, v71, v537, v72);
  *(v3 + 328) = v73;
  *(v3 + 336) = v74;
  *(v3 + 344) = v75;
  v76 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent);
  *(v3 + 352) = v76;
  *(v3 + 360) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v77 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v575);
  *(v3 + 368) = sub_1ABA7DE88(v77, v78, v79, v80, v81, v82, v83, v84, v538, v575[0]);
  *(v3 + 384) = v85;
  *(v3 + 392) = v86;
  *(v3 + 400) = v87;
  v88 = type metadata accessor for CustomGraphEatingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent);
  *(v3 + 408) = v88;
  *(v3 + 416) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v89 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v575);
  sub_1ABA8F96C(v89, v90, v91, v92, v93, v94, v95, v96, v539, v97);
  *(v3 + 440) = v98;
  *(v3 + 448) = v99;
  *(v3 + 456) = v100;
  v101 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent);
  *(v3 + 464) = v101;
  *(v3 + 472) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v102 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v575);
  *(v3 + 480) = sub_1ABA7DE88(v102, v103, v104, v105, v106, v107, v108, v109, v540, v575[0]);
  *(v3 + 496) = v110;
  *(v3 + 504) = v111;
  *(v3 + 512) = v112;
  v113 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent);
  *(v3 + 520) = v113;
  *(v3 + 528) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v114 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v575);
  sub_1ABA8F96C(v114, v115, v116, v117, v118, v119, v120, v121, v541, v122);
  *(v3 + 552) = v123;
  *(v3 + 560) = v124;
  *(v3 + 568) = v125;
  v126 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent);
  *(v3 + 576) = v126;
  *(v3 + 584) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v127 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v575);
  *(v3 + 592) = sub_1ABA7DE88(v127, v128, v129, v130, v131, v132, v133, v134, v542, v575[0]);
  *(v3 + 608) = v135;
  *(v3 + 616) = v136;
  *(v3 + 624) = v137;
  v138 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent);
  *(v3 + 632) = v138;
  *(v3 + 640) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v139 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v575);
  sub_1ABA8F96C(v139, v140, v141, v142, v143, v144, v145, v146, v543, v147);
  *(v3 + 664) = v148;
  *(v3 + 672) = v149;
  *(v3 + 680) = v150;
  v151 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent);
  *(v3 + 688) = v151;
  *(v3 + 696) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v152 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v575);
  *(v3 + 704) = sub_1ABA7DE88(v152, v153, v154, v155, v156, v157, v158, v159, v544, v575[0]);
  *(v3 + 720) = v160;
  *(v3 + 728) = v161;
  *(v3 + 736) = v162;
  v163 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent);
  *(v3 + 744) = v163;
  *(v3 + 752) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v164 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v575);
  sub_1ABA8F96C(v164, v165, v166, v167, v168, v169, v170, v171, v545, v172);
  *(v3 + 776) = v173;
  *(v3 + 784) = v174;
  *(v3 + 792) = v175;
  v176 = type metadata accessor for CustomGraphReadingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent);
  *(v3 + 800) = v176;
  *(v3 + 808) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v177 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v575);
  *(v3 + 816) = sub_1ABA7DE88(v177, v178, v179, v180, v181, v182, v183, v184, v546, v575[0]);
  *(v3 + 832) = v185;
  *(v3 + 840) = v186;
  *(v3 + 848) = v187;
  v188 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent);
  *(v3 + 856) = v188;
  *(v3 + 864) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v189 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v575);
  sub_1ABA8F96C(v189, v190, v191, v192, v193, v194, v195, v196, v547, v197);
  *(v3 + 888) = v198;
  *(v3 + 896) = v199;
  *(v3 + 904) = v200;
  v201 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent);
  *(v3 + 912) = v201;
  *(v3 + 920) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v202 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v575);
  *(v3 + 928) = sub_1ABA7DE88(v202, v203, v204, v205, v206, v207, v208, v209, v548, v575[0]);
  *(v3 + 944) = v210;
  *(v3 + 952) = v211;
  *(v3 + 960) = v212;
  v213 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent);
  *(v3 + 968) = v213;
  *(v3 + 976) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v214 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v575);
  sub_1ABA8F96C(v214, v215, v216, v217, v218, v219, v220, v221, v549, v222);
  *(v3 + 1000) = v223;
  *(v3 + 1008) = v224;
  *(v3 + 1016) = v225;
  v226 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent);
  *(v3 + 1024) = v226;
  *(v3 + 1032) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v227 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v575);
  *(v3 + 1040) = sub_1ABA7DE88(v227, v228, v229, v230, v231, v232, v233, v234, v550, v575[0]);
  *(v3 + 1056) = v235;
  *(v3 + 1064) = v236;
  *(v3 + 1072) = v237;
  v238 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent);
  *(v3 + 1080) = v238;
  *(v3 + 1088) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v239 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v575);
  sub_1ABA8F96C(v239, v240, v241, v242, v243, v244, v245, v246, v551, v247);
  *(v3 + 1112) = v248;
  *(v3 + 1120) = v249;
  *(v3 + 1128) = v250;
  v251 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent);
  *(v3 + 1136) = v251;
  *(v3 + 1144) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v252 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v575);
  *(v3 + 1152) = sub_1ABA7DE88(v252, v253, v254, v255, v256, v257, v258, v259, v552, v575[0]);
  *(v3 + 1168) = v260;
  *(v3 + 1176) = v261;
  *(v3 + 1184) = v262;
  v263 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent);
  *(v3 + 1192) = v263;
  *(v3 + 1200) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v264 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v575);
  sub_1ABA8F96C(v264, v265, v266, v267, v268, v269, v270, v271, v553, v272);
  *(v3 + 1224) = v273;
  *(v3 + 1232) = v274;
  *(v3 + 1240) = v275;
  v276 = type metadata accessor for CustomGraphDiningActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent);
  *(v3 + 1248) = v276;
  *(v3 + 1256) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v277 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v575);
  *(v3 + 1264) = sub_1ABA7DE88(v277, v278, v279, v280, v281, v282, v283, v284, v554, v575[0]);
  *(v3 + 1280) = v285;
  *(v3 + 1288) = v286;
  *(v3 + 1296) = v287;
  v288 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent);
  *(v3 + 1304) = v288;
  *(v3 + 1312) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v289 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v575);
  sub_1ABA8F96C(v289, v290, v291, v292, v293, v294, v295, v296, v555, v297);
  *(v3 + 1336) = v298;
  *(v3 + 1344) = v299;
  *(v3 + 1352) = v300;
  v301 = type metadata accessor for CustomGraphStationaryActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent);
  *(v3 + 1360) = v301;
  *(v3 + 1368) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v302 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v575);
  *(v3 + 1376) = sub_1ABA7DE88(v302, v303, v304, v305, v306, v307, v308, v309, v556, v575[0]);
  *(v3 + 1392) = v310;
  *(v3 + 1400) = v311;
  *(v3 + 1408) = v312;
  v313 = type metadata accessor for CustomGraphLocationVisitActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent);
  *(v3 + 1416) = v313;
  *(v3 + 1424) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v314 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v575);
  sub_1ABA8F96C(v314, v315, v316, v317, v318, v319, v320, v321, v557, v322);
  *(v3 + 1448) = v323;
  *(v3 + 1456) = v324;
  *(v3 + 1464) = v325;
  v326 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent);
  *(v3 + 1472) = v326;
  *(v3 + 1480) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v327 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v575);
  *(v3 + 1488) = sub_1ABA7DE88(v327, v328, v329, v330, v331, v332, v333, v334, v558, v575[0]);
  *(v3 + 1504) = v335;
  *(v3 + 1512) = v336;
  *(v3 + 1520) = v337;
  v338 = type metadata accessor for CustomGraphRunningActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent);
  *(v3 + 1528) = v338;
  *(v3 + 1536) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v339 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v575);
  sub_1ABA8F96C(v339, v340, v341, v342, v343, v344, v345, v346, v559, v347);
  *(v3 + 1560) = v348;
  *(v3 + 1568) = v349;
  *(v3 + 1576) = v350;
  v351 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent);
  *(v3 + 1584) = v351;
  *(v3 + 1592) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v352 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v575);
  *(v3 + 1600) = sub_1ABA7DE88(v352, v353, v354, v355, v356, v357, v358, v359, v560, v575[0]);
  *(v3 + 1616) = v360;
  *(v3 + 1624) = v361;
  *(v3 + 1632) = v362;
  v363 = type metadata accessor for CustomGraphHikingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent);
  *(v3 + 1640) = v363;
  *(v3 + 1648) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v364 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v575);
  sub_1ABA8F96C(v364, v365, v366, v367, v368, v369, v370, v371, v561, v372);
  *(v3 + 1672) = v373;
  *(v3 + 1680) = v374;
  *(v3 + 1688) = v375;
  v376 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent);
  *(v3 + 1696) = v376;
  *(v3 + 1704) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v377 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v575);
  *(v3 + 1712) = sub_1ABA7DE88(v377, v378, v379, v380, v381, v382, v383, v384, v562, v575[0]);
  *(v3 + 1728) = v385;
  *(v3 + 1736) = v386;
  *(v3 + 1744) = v387;
  v388 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent);
  *(v3 + 1752) = v388;
  *(v3 + 1760) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v389 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v575);
  sub_1ABA8F96C(v389, v390, v391, v392, v393, v394, v395, v396, v563, v397);
  *(v3 + 1784) = v398;
  *(v3 + 1792) = v399;
  *(v3 + 1800) = v400;
  v401 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent);
  *(v3 + 1808) = v401;
  *(v3 + 1816) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v402 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v575);
  *(v3 + 1824) = sub_1ABA7DE88(v402, v403, v404, v405, v406, v407, v408, v409, v564, v575[0]);
  *(v3 + 1840) = v410;
  *(v3 + 1848) = v411;
  *(v3 + 1856) = v412;
  v413 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent);
  *(v3 + 1864) = v413;
  *(v3 + 1872) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v414 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v575);
  sub_1ABA8F96C(v414, v415, v416, v417, v418, v419, v420, v421, v565, v422);
  *(v3 + 1896) = v423;
  *(v3 + 1904) = v424;
  *(v3 + 1912) = v425;
  result = sub_1ABC6B7C4();
  *(v3 + 1920) = &type metadata for CustomGraphCalendarEvent;
  *(v3 + 1928) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v426 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), v575);
  *(v3 + 1936) = sub_1ABA7DE88(v426, v427, v428, v429, v430, v431, v432, v433, v566, v575[0]);
  *(v3 + 1952) = v434;
  *(v3 + 1960) = v435;
  *(v3 + 1968) = v436;
  result = sub_1ABC6B898();
  *(v3 + 1976) = &type metadata for CustomGraphLocation;
  *(v3 + 1984) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v437 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), v575);
  sub_1ABA8F96C(v437, v438, v439, v440, v441, v442, v443, v444, v567, v445);
  *(v3 + 2008) = v446;
  *(v3 + 2016) = v447;
  *(v3 + 2024) = v448;
  result = sub_1ABC6B914();
  *(v3 + 2032) = &type metadata for CustomGraphOrganization;
  *(v3 + 2040) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v449 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), v575);
  *(v3 + 2048) = sub_1ABA7DE88(v449, v450, v451, v452, v453, v454, v455, v456, v568, v575[0]);
  *(v3 + 2064) = v457;
  *(v3 + 2072) = v458;
  *(v3 + 2080) = v459;
  result = sub_1ABC6B990();
  *(v3 + 2088) = &type metadata for CustomGraphSportsTeam;
  *(v3 + 2096) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v460 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v575);
  sub_1ABA8F96C(v460, v461, v462, v463, v464, v465, v466, v467, v569, v468);
  *(v3 + 2120) = v469;
  *(v3 + 2128) = v470;
  *(v3 + 2136) = v471;
  v472 = type metadata accessor for CustomGraphPerson(0);
  result = sub_1ABE149F0(&qword_1ED86D6C8, type metadata accessor for CustomGraphPerson);
  *(v3 + 2144) = v472;
  *(v3 + 2152) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v473 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), v575);
  *(v3 + 2160) = sub_1ABA7DE88(v473, v474, v475, v476, v477, v478, v479, v480, v570, v575[0]);
  *(v3 + 2176) = v481;
  *(v3 + 2184) = v482;
  *(v3 + 2192) = v483;
  result = sub_1ABC6BA64();
  *(v3 + 2200) = &type metadata for CustomGraphTopic;
  *(v3 + 2208) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v484 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), v575);
  sub_1ABA8F96C(v484, v485, v486, v487, v488, v489, v490, v491, v571, v492);
  *(v3 + 2232) = v493;
  *(v3 + 2240) = v494;
  *(v3 + 2248) = v495;
  result = sub_1ABC6BAE0();
  *(v3 + 2256) = &type metadata for CustomGraphSong;
  *(v3 + 2264) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v496 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4F8), *(_Records_GDEntityClass_records + 0x500), *(_Records_GDEntityClass_records + 0x508), v575);
  *(v3 + 2272) = sub_1ABA7DE88(v496, v497, v498, v499, v500, v501, v502, v503, v572, v575[0]);
  *(v3 + 2288) = v504;
  *(v3 + 2296) = v505;
  *(v3 + 2304) = v506;
  result = sub_1ABC6BB5C();
  *(v3 + 2312) = &type metadata for CustomGraphActivityEventType;
  *(v3 + 2320) = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v507 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8B8), *(_Records_GDEntityClass_records + 0x8C0), *(_Records_GDEntityClass_records + 0x8C8), v575);
  sub_1ABA8F96C(v507, v508, v509, v510, v511, v512, v513, v514, v573, v515);
  *(v3 + 2344) = v516;
  *(v3 + 2352) = v517;
  *(v3 + 2360) = v518;
  result = sub_1ABC6BBD8();
  *(v3 + 2368) = &type metadata for CustomGraphModeOfTransportation;
  *(v3 + 2376) = result;
  if (_Records_GDEntityClass_records)
  {
    v519 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), v575);
    *(v3 + 2384) = sub_1ABA7DE88(v519, v520, v521, v522, v523, v524, v525, v526, v574, v575[0]);
    *(v3 + 2400) = v527;
    *(v3 + 2408) = v528;
    *(v3 + 2416) = v529;
    v530 = sub_1ABC6BC54();
    *(v3 + 2424) = &type metadata for CustomGraphSoftware;
    *(v3 + 2432) = v530;
    sub_1ABAD219C(&qword_1EB4DA850, &unk_1ABF67C30);
    sub_1ABBD8A8C();
    v531 = sub_1ABF239C4();
    result = ObjectSynthesisDictionaryMapping.init(mapping:)(v531, v575);
    *a1 = *&v575[0];
    return result;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1ABE149F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ObjectSynthesisDictionaryMapping.init(mapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
  sub_1ABBD8A8C();
  result = sub_1ABF239C4();
  v6 = 0;
  v7 = *(a1 + 64);
  v26 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v7) != 0)
  {
    do
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(a1 + 48) + 40 * v14;
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      LOBYTE(v15) = *(v15 + 32);
      v19 = (*(a1 + 56) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = v15;
      result = ObjectSynthesisDictionaryMapping.set<A>(entityClass:graphObjectType:)(&v22, v5, v20, v21);
    }

    while (v10);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *a2 = v26;
      return result;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectSynthesisDictionaryMapping.set<A>(entityClass:graphObjectType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v8;
  v19 = *(a1 + 32);
  sub_1ABA7D9B8();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1ABA7D9B8();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_1ABA7D9B8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ABE14FCC;
  *(v11 + 24) = v9;
  sub_1ABA7D9B8();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1ABE15120;
  *(v12 + 24) = v10;
  v13 = *v5;
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  v16[5] = v12;
  v17 = v14;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = sub_1ABE1513C;
  v16[3] = v11;
  v16[4] = sub_1ABE15168;
  result = sub_1ABAFAB44(v16, v18);
  *v5 = v17;
  return result;
}

uint64_t sub_1ABE14CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ABF247E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1ABAE2BF0(a1, v11);
  if (swift_dynamicCast())
  {
    sub_1ABA7B9B4(v9, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  }

  else
  {
    sub_1ABA7B9B4(v9, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v9, v5);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t *sub_1ABE14E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v19 - v13;
  v20 = a1;

  sub_1ABE14CA8(a2, v14);
  v15 = *(a4 + 48);
  a5[3] = a3;
  a5[4] = a4;
  sub_1ABA93DC0(a5);
  v16 = sub_1ABAD219C(&qword_1EB4DA860, &qword_1ABF67CB8);
  v17 = sub_1ABE15B54();
  result = v15(&v20, v14, v16, &type metadata for ExtendedTriple, v17, &protocol witness table for ExtendedTriple, a3, a4);
  if (v5)
  {
    return sub_1ABD5B8D0(a5);
  }

  return result;
}

uint64_t *sub_1ABE14FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v16 = &v19[-v15];
  v20 = a1;
  v21 = a2;
  sub_1ABE14CA8(a3, &v19[-v15]);
  v17 = *(a5 + 56);
  a6[3] = a4;
  a6[4] = a5;
  sub_1ABA93DC0(a6);
  result = v17(sub_1ABE15B38, v19, v16, &type metadata for ExtendedTriple, &protocol witness table for ExtendedTriple, a4, a5);
  if (v6)
  {
    return sub_1ABD5B8D0(a6);
  }

  return result;
}

uint64_t sub_1ABE1513C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1ABE15168(_OWORD *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[1] = *a1;
  return v3(sub_1ABE15AE4, v6, a2);
}

uint64_t sub_1ABE151BC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1ABE15B00;
  v8[1] = v6;
  a3(v8);
}

Swift::Void __swiftcall ObjectSynthesisDictionaryMapping.clear()()
{
  v1 = *v0;

  sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
  sub_1ABBD8A8C();
  *v0 = sub_1ABF239C4();
}

unint64_t ObjectSynthesisDictionaryMapping.remove(entityClass:)(__int128 *a1)
{
  v2 = v1;
  v16 = *a1;
  v17 = a1[1];
  v18 = *(a1 + 32);
  v3 = *v1;
  result = sub_1ABAF8328();
  if (v5)
  {
    v6 = result;
    v7 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v8 = *(*v2 + 24);
    sub_1ABAD219C(&qword_1EB4D1F88, &qword_1ABF35178);
    sub_1ABF24C64();
    v9 = *(v15 + 48) + 40 * v6;
    v10 = *(v9 + 8);
    v11 = *(v9 + 24);

    v12 = *(v15 + 56) + 48 * v6;
    v13 = *(v12 + 24);
    v14 = *(v12 + 40);
    sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
    sub_1ABBD8A8C();
    sub_1ABF24C84();

    *v2 = v15;
  }

  return result;
}

uint64_t ObjectSynthesisDictionaryMapping.type(for:)(__int128 *a1)
{
  v2 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 32);
  if (!*(*v1 + 16))
  {
    return 0;
  }

  v3 = sub_1ABAF8328();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABA8EE70(v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

uint64_t ObjectSynthesisDictionaryMapping.factory<A, B>(for:triples:initializationResources:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v30 = a6;
  v36 = a3;
  v32 = a7;
  v8 = *(a1 + 32);
  v35 = v8;
  v9 = *(a1 + 1);
  v34[0] = *a1;
  v34[1] = v9;
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  if (*(*v7 + 16) && (v16 = sub_1ABAF8328(), (v17 & 1) != 0))
  {
    v18 = sub_1ABA8EE70(v16);
    v21 = v19[2];
    v20 = v19[3];
    v22 = v19[5];
    MEMORY[0x1EEE9AC00](v18);
    v29[2] = a4;
    v29[3] = a5;
    v29[4] = v30;
    v29[5] = v23;

    v25 = sub_1ABB444E4(sub_1ABE159A0, v29, a4, &type metadata for ExtendedTriple, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v24);
    sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v33[0] = v26;
    v21(v33, v36);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v28 = v10;
    *(v28 + 8) = v11;
    *(v28 + 16) = v13;
    *(v28 + 24) = v12;
    *(v28 + 32) = v8;
    swift_willThrow();
    return sub_1ABAFF06C(v34, v33);
  }
}

uint64_t ObjectSynthesisDictionaryMapping.factory<A>(for:enumerator:initializationResources:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a3;
  v7 = *(a1 + 32);
  v33 = *(a1 + 32);
  v8 = *(a1 + 1);
  v32[0] = *a1;
  v32[1] = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  if (*(*v6 + 16) && (v28 = v7, v16 = sub_1ABAF8328(), (v17 & 1) != 0))
  {
    v18 = sub_1ABA8EE70(v16);
    v21 = v19[3];
    v20 = v19[4];
    v22 = v19[5];
    MEMORY[0x1EEE9AC00](v18);
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v23;
    v27[5] = a2;
    sub_1ABA7D9B8();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1ABE159D8;
    *(v24 + 24) = v27;
    v31[0] = sub_1ABE159F8;
    v31[1] = v24;

    v20(v31, v30);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v26 = v9;
    *(v26 + 8) = v10;
    *(v26 + 16) = v11;
    *(v26 + 24) = v12;
    *(v26 + 32) = v7;
    swift_willThrow();
    return sub_1ABAFF06C(v32, v31);
  }
}

uint64_t sub_1ABE157C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = sub_1ABE15A94;
  v16[5] = v12;
  a3(sub_1ABE15AC0, v16);
  if (v6)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE158DC(uint64_t a1, uint64_t (*a2)(_BYTE *, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1ABC3D5B8(a5, __src);
  v7 = a2(__src, v6);
  memcpy(v9, __src, sizeof(v9));
  sub_1ABB34634(v9);
  return v7 & 1;
}

double sub_1ABE159A0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *&result = sub_1ABC3D5B8(*(v1 + 40), a1).n128_u64[0];
  return result;
}

uint64_t sub_1ABE159F8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[1] = *a1;
  return v2(sub_1ABE15A58, v5);
}

uint64_t sub_1ABE15A58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(&var1);
  if (!v1)
  {
    v4 = var1;
  }

  return v4 & 1;
}

uint64_t sub_1ABE15A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1ABE15B00@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_1ABE15B54()
{
  result = qword_1EB4DA868[0];
  if (!qword_1EB4DA868[0])
  {
    sub_1ABAE2850(&qword_1EB4DA860, &qword_1ABF67CB8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DA868);
  }

  return result;
}

unint64_t sub_1ABE15BB8(uint64_t a1)
{
  result = sub_1ABC8229C();
  *(a1 + 8) = result;
  return result;
}

uint64_t OneOf.init(_:potentiallyPreferred:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1ABF247E4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  *a4 = a1;
  (*(v11 + 16))(v15, a2, v8, v17);
  if (sub_1ABA7E1E0(v15, 1, a3) == 1)
  {

    sub_1ABE15EF8();

    v20 = *(v11 + 8);
    v20(a2, v8);
    if (sub_1ABA7E1E0(v15, 1, a3) != 1)
    {
      v20(v15, v8);
    }
  }

  else
  {
    (*(v11 + 8))(a2, v8);
    (*(*(a3 - 8) + 32))(v19, v15, a3);
    sub_1ABA7B9B4(v19, 0, 1, a3);
  }

  v21 = type metadata accessor for OneOf();
  return (*(v11 + 32))(&a4[*(v21 + 28)], v19, v8);
}

uint64_t OneOf.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_1ABF247E4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_1ABE15EF8()
{
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF23F84();
}

uint64_t OneOf.init(_:preferred:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = *(type metadata accessor for OneOf() + 28);
  (*(*(a3 - 8) + 32))(&a4[v7], a2, a3);

  return sub_1ABA7B9B4(&a4[v7], 0, 1, a3);
}

uint64_t sub_1ABE16038()
{
  v0 = sub_1ABF24D84();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE16090(char a1)
{
  if (a1)
  {
    return 0x6572726566657270;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1ABE160C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1ABE161A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABE16038();
  *a2 = result;
  return result;
}

uint64_t sub_1ABE162B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABE16090(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE162E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABE1608C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABE16310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABE16364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t OneOf<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a2;
  v6 = *(a2 + 16);
  _s10CodingKeysOMa();
  sub_1ABA7DE98();
  swift_getWitnessTable();
  v7 = sub_1ABF24FC4();
  sub_1ABA7BB64(v7);
  v21 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v15 = v20[1];
  sub_1ABF252E4();
  v25 = *v15;
  v24 = 0;
  sub_1ABF241F4();
  v23 = a4;
  swift_getWitnessTable();
  v16 = v22;
  sub_1ABF24F84();
  if (v16)
  {
    return (*(v21 + 8))(v13, v7);
  }

  v18 = v21;
  v19 = *(v20[0] + 28);
  LOBYTE(v25) = 1;
  sub_1ABF24F14();
  return (*(v18 + 8))(v13, v7);
}

uint64_t OneOf<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_1ABF247E4();
  v6 = sub_1ABA7BB64(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v30 - v11;
  v37 = a2;
  _s10CodingKeysOMa();
  sub_1ABA7DE98();
  swift_getWitnessTable();
  v38 = sub_1ABF24EB4();
  sub_1ABA7BB64(v38);
  v35 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for OneOf();
  sub_1ABA7BB64(v16);
  v31 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  v23 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v24 = v39;
  sub_1ABF252C4();
  if (v24)
  {
    return sub_1ABA84B54(a1);
  }

  v39 = a1;
  v25 = v36;
  sub_1ABF241F4();
  v41 = 0;
  v40 = v37;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v22 = v42;
  LOBYTE(v42) = 1;
  sub_1ABF24DF4();
  v26 = sub_1ABA7F880();
  v27(v26);
  (*(v32 + 32))(&v22[*(v16 + 28)], v25, v33);
  v28 = v31;
  (*(v31 + 16))(v34, v22, v16);
  sub_1ABA84B54(v39);
  return (*(v28 + 8))(v22, v16);
}

uint64_t sub_1ABE16928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 16);
  v5 = *(a2 + 16);
  return OneOf<A>.init(from:)(a1, *(a3 - 8), a4);
}

uint64_t sub_1ABE1696C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1ABF241F4();
  if (v3 <= 0x3F)
  {
    result = sub_1ABF247E4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE169FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = sub_1ABA7E1E0((a1 + v9 + 8) & ~v9, v6, v4);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1ABE16BB0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 8] & ~v12;

              sub_1ABA7B9B4(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1ABE16E9C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABE16FCC(uint64_t *a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CD0];
  if (*(a2 + 8))
  {
    v44 = *a1;
    v48 = *(a2 + 40);
    v46 = *(a2 + 48);
    v45 = *(a2 + 56);
    v50 = *(a2 + 64);
    v5 = *(a2 + 16);
    v83 = MEMORY[0x1E69E7CD0];
    v69 = MEMORY[0x1E69E7CD0];
    v6 = sub_1ABF239C4();
    v7 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 56);
    v11 = (v8 + 63) >> 6;
    v51 = v5;

    v12 = 0;
    while (1)
    {
      v53 = v6;
      if (!v10)
      {
        break;
      }

      v13 = v12;
LABEL_11:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (*(v51 + 48) + ((v13 << 11) | (32 * v14)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      swift_bridgeObjectRetain_n();

      sub_1ABB1840C(v57, v18, v19);

      swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v6;
      sub_1ABAFB0A4();

      v6 = v57[0];
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    v20 = v69;
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1ABF34740;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_32;
    }

    v21 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), v68);
    v22 = v68[0];
    v23 = v68[1];

    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    sub_1ABB2C7F4();
    LOBYTE(v59[0]) = 0;
    v59[1] = v20;
    LOBYTE(v60) = 0;
    v61 = v24;
    LOBYTE(v62) = 0;
    v63 = 0;
    LOBYTE(v64) = 0;
    v65 = 0;
    LOBYTE(v66) = 0;
    v67 = 0;
    v55[0] = v44;
    LOBYTE(__src[0]) = 1;
    __src[1] = -50;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = v48;
    __src[4] = v46;
    LOBYTE(__src[5]) = v45;
    __src[6] = v50;
    v57[0] = v59[0];
    v57[1] = v20;
    v57[2] = v60;
    v57[3] = v24;
    v57[4] = v62;
    v57[5] = 0;
    v57[6] = v64;
    v57[7] = 0;
    v57[8] = v66;
    v57[9] = 0;
    v57[11] = 0;
    v58 = 32;

    sub_1ABB3F4DC(v48, v46, v45);

    sub_1ABD25C88(__src, v57, v54);
    v25 = __src[3];
    v26 = __src[4];
    v27 = __src[5];

    sub_1ABB3F860(v25, v26, v27);
    if (v2)
    {

      sub_1ABB420A4(v59);
    }

    sub_1ABB420A4(v59);
    v28 = v54[0];

    v29 = v53;
    if (!v28)
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v28 + 16);
    if (!v30)
    {
LABEL_27:

      return v83;
    }

    v49 = *(v28 + 16);
    v31 = 0;
    v32 = (v28 + 32);
    v47 = v28;
    while (v31 < *(v28 + 16))
    {
      result = memcpy(__dst, v32, sizeof(__dst));
      if (*(v29 + 16))
      {
        v33 = *&__dst[24];
        v34 = *&__dst[32];
        sub_1ABB242A4(__dst, v57);

        v35 = sub_1ABA94FC8(v33, v34);
        v37 = v36;

        if ((v37 & 1) != 0 && (v82 = *&__dst[64], *&__dst[72]))
        {
          v52 = *(&v82 + 1);
          v38 = (*(v29 + 56) + 16 * v35);
          v39 = *v38;
          v40 = v38[1];
          v41 = v82;

          sub_1ABE175C4(&v82, v57);
          sub_1ABB18D34();
          memcpy(v57, __src, 0x58uLL);
          result = sub_1ABB24250(v57);
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_31;
          }

          sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), v55);
          v43 = v55[0];
          v42 = v55[1];

          __src[0] = v39;
          __src[1] = v40;

          MEMORY[0x1AC5A9410](126, 0xE100000000000000);
          sub_1ABA8F980();
          MEMORY[0x1AC5A9410](v43, v42);

          sub_1ABA8F980();
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          sub_1ABA8F980();
          MEMORY[0x1AC5A9410](v41, v52);

          v70 = __src[0];
          v71 = __src[1];
          v72 = 0;
          v73 = v39;
          v74 = v40;
          v75 = 0;
          v76 = v43;
          v77 = v42;
          v78 = v41;
          v79 = v52;
          v80 = MEMORY[0x1E69E7CC0];
          sub_1ABB18D34();
          memcpy(v54, __src, sizeof(v54));
          result = sub_1ABB24250(v54);
          v29 = v53;
          v28 = v47;
          v30 = v49;
        }

        else
        {
          result = sub_1ABB24250(__dst);
        }
      }

      ++v31;
      v32 += 88;
      if (v30 == v31)
      {
        goto LABEL_27;
      }
    }

LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE175C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE17650(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 0xE900000000000072;
  v4 = 0x6F72724574696E69;
  switch(a3)
  {
    case 1:
      v3 = 0xEC000000726F7272;
      v4 = 0x45656D69746E7572;
      break;
    case 2:
      v3 = 0x80000001ABF924A0;
      v4 = 0xD000000000000015;
      break;
    case 3:
      v3 = 0x80000001ABF92480;
      v4 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v4 = 0x726F727245677261;
      break;
    default:
      break;
  }

  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v4, v3);

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1ABE177BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= 25)
  {
    sub_1ABF24AB4();

    *&__dst[0] = 0xD00000000000001BLL;
    *(&__dst[0] + 1) = 0x80000001ABF8DBE0;
    __src[0] = 25;
    v22 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v22);

    MEMORY[0x1AC5A9410](0x6465686361657220, 0xE800000000000000);
    sub_1ABAF2860();
    swift_allocError();
    *v23 = 0xD00000000000001BLL;
    *(v23 + 8) = 0x80000001ABF8DBE0;
    *(v23 + 16) = 1;
    swift_willThrow();
LABEL_6:

    return v9;
  }

  v9 = a7;
  sub_1ABE1AB8C(a3, a7, v168);
  if (v8)
  {
    goto LABEL_6;
  }

  v172 = a4;
  v154 = a1;
  v156 = a5;
  sub_1ABA7DEB0();
  v18 = *(v17 + 24);
  v19 = sub_1ABA810B4();
  v21 = v20(v19);
  v25 = a6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = *(*a3 + 16);
  v26 = *(*a3 + 24);

  sub_1ABE1A204(v27, v26, v9, __dst);

  if (*(&__dst[1] + 1))
  {
    sub_1ABA84B54(v168);
    sub_1ABA946C0(__dst, v168);
LABEL_10:
    v28 = *a3;
    switch(*(*a3 + 64))
    {
      case 2:

        break;
      default:
        v29 = sub_1ABF25054();

        if ((v29 & 1) == 0)
        {
          v30 = v170;
          sub_1ABA93E20(v168, v169);
          v31 = *(v30 + 32);
          v32 = sub_1ABA810B4();
          v33(v32);
          *(v28 + 64) = __dst[0];
        }

        break;
    }

    if (qword_1ED86BE18 != -1)
    {
      swift_once();
    }

    v34 = *(v28 + 16);
    v35 = *(v28 + 24);

    sub_1ABB130E0();
    LOBYTE(v34) = v36;

    if ((v34 & 1) == 0)
    {
      v37 = v169;
      v38 = v170;
      sub_1ABA93E20(v168, v169);
      v130 = v38;
      (*(v38 + 56))(a2, v25, v9, a8, v28, v172, v156, v37);
    }

    v39 = sub_1ABE71478();
    v41 = v40;
    v42 = sub_1ABA810B4();
    v44 = sub_1ABEBF1A0(v42, v43);
    if (v44)
    {
      v52 = sub_1ABA8F99C(v44, v45, v46, v47, v48, v49, v50, v51, v130, v131, v132, v134, v136, v139, v142, v144, v150, v152, v9, v154, v156, v157, v158, v159, *v160, *&v160[8], *&v160[16], *&v160[24], *&v160[32], *&v160[40], *&v160[48], *&v160[56], *&v160[64], *&v160[72], *&v160[80], *&v160[88], *&v160[96], *&v160[104], *v161, *&v161[8], *&v161[16], *&v161[24], *&v161[32], *&v161[40], *&v161[48], *&v161[56], *&v161[64], *&v161[72], *&v161[80], *&v161[88], *&v161[96], *&v161[104], v162, v163, v164, v165, __src[0]);
      sub_1ABEBF224(v52, v53, v54, v55, v56, v57);
      v59 = v58;
      v153 = v39;
    }

    else
    {
      v60 = sub_1ABA7DEB0();
      v62 = *(v61 + 64);
      v70 = sub_1ABA8F99C(v60, v63, v64, v65, v66, v67, v68, v69, v9, v131, v132, v134, v136, v139, v142, v144, v150, v39, v9, v154, v156, v157, v158, v159, *v160, *&v160[8], *&v160[16], *&v160[24], *&v160[32], *&v160[40], *&v160[48], *&v160[56], *&v160[64], *&v160[72], *&v160[80], *&v160[88], *&v160[96], *&v160[104], *v161, *&v161[8], *&v161[16], *&v161[24], *&v161[32], *&v161[40], *&v161[48], *&v161[56], *&v161[64], *&v161[72], *&v161[80], *&v161[88], *&v161[96], *&v161[104], v162, v163, v164, v165, __src[0]);
      v59 = v71(v70);
    }

    memcpy(__dst, __src, 0x69uLL);
    if (v59)
    {
      v72 = a2 + *(type metadata accessor for QueryContext() + 32);
      if (*(v72 + 88) >> 1 == 0xFFFFFFFFLL && (*(v72 + 104) & 0x1E) == 0)
      {
        memcpy(__src, v72, 0x69uLL);
        sub_1ABB52954(__dst, v161);
        sub_1ABE1859C(__src);
        memcpy(v72, __dst, 0x69uLL);
      }
    }

    sub_1ABA7DEB0();
    v74 = *(v73 + 40);
    v75 = sub_1ABA810B4();
    v77 = v76(v75);
    v151 = v28;
    v172 = a2;
    v140 = v77;
    if (*(&__dst[5] + 1) >> 1 != 0xFFFFFFFFLL || (BYTE8(__dst[6]) & 0x1E) != 0) && (memcpy(v171, __dst, 0x58uLL), v171[11] = *(&__dst[5] + 1), v171[12] = *&__dst[6], LOBYTE(v171[13]) = BYTE8(__dst[6]), (v77))
    {
      sub_1ABD92104();
      v143 = v78;
      v80 = v79;
      memcpy(v161, v171, 0x69uLL);
      sub_1ABE3D210(v151, v161, v160);
      sub_1ABE1859C(__dst);
      v81 = *v160;
      v82 = *&v160[8];
      strcpy(v160, "indexResult: ");
      *&v160[14] = -4864;
      v83 = v81;
      *v161 = v81;
      *&v161[8] = v82;
      v145 = v82;
      v137 = *&v160[16];
      *&v161[16] = *&v160[16];
      v84 = IndexResult.description.getter();
      MEMORY[0x1AC5A9410](v84);

      v133 = *&v160[8];
      v135 = *v160;
      sub_1ABAAA4F4();
      v86 = v85;
      v87 = *(v85 + 16);
      if (v87 >= *(v85 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v86 = v129;
      }

      *(v86 + 16) = v87 + 1;
      v88 = v86 + 16 * v87;
      *(v88 + 32) = v135;
      *(v88 + 40) = v133;
      v90 = v169;
      v89 = v170;
      sub_1ABA93E20(v168, v169);
      *v160 = v83;
      *&v160[8] = v145;
      *&v160[16] = v137;
      v149 = (*(v89 + 72))(v172, v151, v160, v90, v89);

      v120 = (v172 + *(type metadata accessor for QueryContext() + 32));
      memcpy(v161, v120, 0x69uLL);
      sub_1ABE1859C(v161);
      *v120 = 0u;
      v120[1] = 0u;
      v120[2] = 0u;
      v120[3] = 0u;
      v120[4] = 0u;
      *(v120 + 10) = 0;
      *(v120 + 88) = xmmword_1ABF34940;
      *(v120 + 104) = 0;
      memset(__src, 0, 88);
      *&__src[11] = xmmword_1ABF34940;
      LOBYTE(__src[13]) = 0;
    }

    else
    {
      if (*(v172 + 8))
      {
        v149 = sub_1ABE491D0();
      }

      else
      {
        v149 = MEMORY[0x1E69E7CC0];
      }

      memcpy(__src, __dst, 0x69uLL);
      v143 = 0;
      v86 = MEMORY[0x1E69E7CC0];
      v80 = 0xE000000000000000;
    }

    v91 = v169;
    v92 = v170;
    sub_1ABA93E20(v168, v169);
    v93 = (*(v92 + 80))(v172, v151, v149, v91, v92);
    v9 = v94;
    v138 = v93;

    v95 = v151[6];

    sub_1ABE48E88(v95);

    if (v140)
    {
      sub_1ABE4933C();
      swift_beginAccess();
      v95 = v151[11];
      v151[11] = *(v9 + 24);
    }

    v96 = *(v138 + 16);

    if (!v96 && sub_1ABE47EF0())
    {
      type metadata accessor for ResultGraph();
      v97 = swift_allocObject();
      v98 = MEMORY[0x1E69E7CC0];
      *(v97 + 16) = sub_1ABF239C4();
      *(v97 + 24) = v98;
      v99 = v172;
      v100 = *(v172 + 8);

      *(v99 + 8) = v97;
    }

    if (!*(v172 + 8) || sub_1ABE47EF0())
    {

      *(v172 + 8) = v9;
    }

    strcpy(v161, "entities: ");
    v161[11] = 0;
    *&v161[12] = -369098752;
    swift_beginAccess();
    v101 = *(v9 + 24);

    v146 = MEMORY[0x1AC5A9750](v102, MEMORY[0x1E69E6158]);
    v104 = v103;

    MEMORY[0x1AC5A9410](v146, v104);

    v141 = *&v161[8];
    v147 = *v161;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = *(v86 + 16);
      sub_1ABAAA4F4();
      v86 = v127;
    }

    v105 = *(v86 + 16);
    if (v105 >= *(v86 + 24) >> 1)
    {
      sub_1ABAAA4F4();
      v86 = v128;
    }

    *(v86 + 16) = v105 + 1;
    v106 = v86 + 16 * v105;
    *(v106 + 32) = v147;
    *(v106 + 40) = v141;
    v107 = v172 + *(type metadata accessor for QueryContext() + 48);

    sub_1ABB4DCC8();
    v148 = *(*(v107 + 16) + 16);
    sub_1ABB4E0B4(v148);
    v108 = *(v107 + 16);
    *(v108 + 16) = v148 + 1;
    v109 = (v108 + 40 * v148);
    v109[4] = v153;
    v109[5] = v41;
    v109[6] = v143;
    v109[7] = v80;
    v109[8] = v86;
    *(v107 + 16) = v108;
    v110 = v151[5];
    if (v110)
    {
      v111 = v151[5];

      sub_1ABE1859C(__src);
      v162 = v110;

      *(v172 + 8) = v9;
      sub_1ABA7F890();
      sub_1ABE18AE8(v112, v113, v114, v115, v116, v117, v118, v119);
      if (v95)
      {

        sub_1ABA84B54(v168);
      }

      else
      {
        sub_1ABA7F890();
        v121 = sub_1ABE177BC();
        memcpy(v160, v161, 0x69uLL);
        type metadata accessor for ResultGraph();
        v122 = swift_allocObject();
        v123 = MEMORY[0x1E69E7CC0];
        *(v122 + 16) = sub_1ABF239C4();
        *(v122 + 24) = v123;

        sub_1ABA84B54(v168);
        v124 = v172;
        v125 = *(v172 + 8);

        *(v124 + 8) = v122;
        memcpy(v155, v160, 0x69uLL);
        v9 = v121;
      }
    }

    else
    {
      sub_1ABA84B54(v168);
      memcpy(v155, __src, 0x69uLL);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE18470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  sub_1ABE18604(a1, a2, 1, a3, a4, a5);
  if (!v5)
  {
    type metadata accessor for KnosisQueryParam();
    v11 = sub_1ABF239C4();
    type metadata accessor for QueryNode();
    swift_initStackObject();
    v12 = sub_1ABE73A74(0, 0xE000000000000000, v11);
    v6 = sub_1ABE177BC(__src, a1, a2, v12, 1, a3, a4, v6);
    memcpy(v14, __src, 0x69uLL);
    sub_1ABE1859C(v14);
  }

  return v6;
}

uint64_t sub_1ABE1859C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3430, &unk_1ABF6B740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE18604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 25)
  {
    sub_1ABF24AB4();

    sub_1ABA81C08();
    v67 = v38;
    v68 = v37;
    *&v65 = 25;
    v39 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v39);

    v40 = sub_1ABA84340();
    v41 = 0xE800000000000000;
  }

  else
  {
    result = sub_1ABE190A8(a2, a4, a5, a6);
    if (v6)
    {
      return result;
    }

    v71 = a1;
    sub_1ABA7F8A4();
    sub_1ABE19420(v14, v15, v16);
    v17 = *a2;
    if (!*(*a2 + 48))
    {
      v17[6] = 20;
    }

    v19 = v17[2];
    v18 = v17[3];

    sub_1ABA7ECFC();
    sub_1ABA7F8A4();
    sub_1ABE1A204(v20, v21, v22, v23);

    if (v66)
    {
      v63 = a3;
      sub_1ABA946C0(&v65, &v67);
      v25 = v69;
      v24 = v70;
      sub_1ABA93E20(&v67, v69);
      v26 = v71;
      if ((*(v24 + 24))(v71, a4, a5, a6, a2, v25, v24))
      {
        v28 = *(*a2 + 16);
        v27 = *(*a2 + 24);

        sub_1ABA7ECFC();
        sub_1ABA7F8A4();
        sub_1ABE1A204(v29, v30, v31, v32);

        if (!v66)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        sub_1ABA84B54(&v67);
        sub_1ABA946C0(&v65, &v67);
        sub_1ABA7F8A4();
        sub_1ABE19420(v33, v34, v35);
      }

      v36 = *a2;
      switch(*(v36 + 64))
      {
        case 1:
          sub_1ABA8A488();
          break;
        case 2:

          goto LABEL_25;
        case 3:
          v48 = sub_1ABA8C3E0();
          goto LABEL_21;
        case 4:
          sub_1ABA7EB34();
          sub_1ABA947B0();
          break;
        case 5:
          sub_1ABA7C6F4();
          break;
        case 6:
          v48 = sub_1ABA903A8();
LABEL_21:
          sub_1ABA80704(v48);
          break;
        case 7:
          sub_1ABA8A488();
          sub_1ABA81BF4();
          break;
        case 8:
          sub_1ABA8A488();
          sub_1ABA99674();
          break;
        default:
          break;
      }

      sub_1ABA8BE94();
      sub_1ABAA61B4();
      v49 = sub_1ABF25054();

      if ((v49 & 1) == 0)
      {
        v50 = v69;
        v51 = v70;
        sub_1ABA93E20(&v67, v69);
        (*(v51 + 32))(&v65, v26, v36, v50, v51);
        *(v36 + 64) = v65;
      }

LABEL_25:
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v36 + 32))
      {
        v64 = *(v36 + 32);
      }

      else
      {
        type metadata accessor for KnosisQueryParam();
        v64 = sub_1ABF239C4();
      }

      v52 = *(v64 + 64);
      v53 = *(v64 + 32);
      sub_1ABA7D32C();
      v56 = v55 & v54;
      v58 = (v57 + 63) >> 6;

      v59 = 0;
      while (v56)
      {
LABEL_34:
        v61 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v62 = *(*(v64 + 56) + ((v59 << 9) | (8 * v61)));
        sub_1ABA7EF0C();
        result = swift_beginAccess();
        if (*(v62 + 24))
        {
          sub_1ABAA5A3C();
          swift_beginAccess();

          sub_1ABE18604(v71, v62 + 24, v63 + 1, a4, a5, a6);
          swift_endAccess();
        }
      }

      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v58)
        {

          return sub_1ABA84B54(&v67);
        }

        v56 = *(v64 + 64 + 8 * v60);
        ++v59;
        if (v56)
        {
          v59 = v60;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    sub_1ABE19D0C(&v65);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA810C0();
    v67 = v44;
    v68 = v45;
    v47 = v17[2];
    v46 = v17[3];

    MEMORY[0x1AC5A9410](v47, v46);

    v40 = sub_1ABA8F9BC();
  }

  MEMORY[0x1AC5A9410](v40, v41);
  sub_1ABAF2860();
  v42 = swift_allocError();
  return sub_1ABA7C6A8(v42, v43);
}