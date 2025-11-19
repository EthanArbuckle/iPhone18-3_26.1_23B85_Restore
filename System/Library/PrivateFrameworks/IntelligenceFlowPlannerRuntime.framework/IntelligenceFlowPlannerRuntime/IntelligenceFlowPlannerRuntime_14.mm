uint64_t sub_22C48EAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);

  sub_22C48FF20();
  v7 = sub_22C48EB6C();

  return v7 & 1;
}

uint64_t sub_22C48EB6C()
{
  sub_22C373394();
  if (sub_22C48CE88(v0, v1))
  {
    return 0;
  }

  v3 = sub_22C36A998();
  sub_22C48F890(v3, v4, v5, v6, v7, v8);
  v9 = sub_22C369D2C();
  v11 = sub_22C48CE88(v9, v10);

  return v11 & 1;
}

uint64_t sub_22C48EBCC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - 16;
  v6 = *(a4 - 16);
  v4 = *(v5 + 8);
  return sub_22C48EAF4(*a1, *a2);
}

unint64_t sub_22C48EBDC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v119 = a6;
  v113 = a5;
  v9 = a1;
  v117 = *(a3 - 8);
  v10 = *(v117 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v112 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v108 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v108 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  v118 = a4;
  type metadata accessor for PromptTree();
  swift_getTupleTypeMetadata2();
  v32 = v9 >> 61;
  v33 = a2 >> 61;
  if (!(v9 >> 61))
  {
    v34 = *(v9 + 16);
    v35 = *(v9 + 24);
    if (!v33)
    {
      v37 = *(a2 + 16);
      v36 = *(a2 + 24);
      v38 = v37 == v34 && v36 == v35;
      if (v38 || (v39 = *(a2 + 16), v40 = *(a2 + 24), (sub_22C90B4FC() & 1) == 0))
      {
        v36 = v35;
        v37 = v34;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = v37;
      *(v41 + 24) = v36;
      return v41;
    }

LABEL_13:

    v41 = swift_allocObject();
    *(v41 + 16) = v34;
    *(v41 + 24) = v35;
    return v41;
  }

  if (v33 == 1)
  {
    if (v32 == 1)
    {
      v42 = swift_projectBox();
      v43 = swift_projectBox();
      v44 = *(v22 + 16);
      v44(v29, v43, AssociatedTypeWitness);
      v44(v26, v42, AssociatedTypeWitness);
      v45 = swift_allocBox();
      sub_22C90B52C();
      v46 = *(v22 + 8);
      v46(v26, AssociatedTypeWitness);
      v46(v29, AssociatedTypeWitness);
      return v45 | 0x2000000000000000;
    }

LABEL_18:
    v47 = swift_projectBox();
    (*(v22 + 16))(v31, v47, AssociatedTypeWitness);
    v45 = swift_allocBox();
    (*(v22 + 32))(v48, v31, AssociatedTypeWitness);
    return v45 | 0x2000000000000000;
  }

  if (!v33)
  {
    v34 = *(a2 + 16);
    v35 = *(a2 + 24);
    goto LABEL_13;
  }

  if (v32 == 1)
  {
    goto LABEL_18;
  }

  if (v33 == 2)
  {
    if (v32 == 2)
    {
      v51 = v118;
      v110 = _s3BoxCMa();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v53 = swift_projectBox();
      v54 = swift_projectBox();
      v55 = *(TupleTypeMetadata2 + 48);
      v109 = *(v54 + v55);
      v56 = v109;
      v108 = *(v53 + v55);
      v57 = v117;
      v58 = *(v117 + 16);
      v59 = v114;
      v58(v114, v54, a3);
      v60 = v112;
      v58(v112, v53, a3);
      v61 = v116;
      v58(v116, v59, a3);
      v136 = v56;
      v138 = v61;
      v139 = &v136;
      v62 = v115;
      v58(v115, v60, a3);
      v131 = v108;
      v133 = v62;
      v134 = &v131;
      v63 = v113;
      v64 = v119;
      v65 = sub_22C48F75C(a3, v51, v113, v119);
      v111 = &v108;
      v66 = MEMORY[0x28223BE20](v65);
      *(&v108 - 6) = a3;
      *(&v108 - 5) = v51;
      *(&v108 - 4) = v63;
      *(&v108 - 3) = v64;
      *(&v108 - 2) = v66;
      *(&v108 - 1) = v67;
      swift_retain_n();
      swift_retain_n();
      v128 = a3;
      v129 = v110;
      v126 = v63;
      v120 = v63;
      v121 = v64;
      WitnessTable = swift_getWitnessTable();
      sub_22C48DF40(&v138, &v133, sub_22C48FE0C, (&v108 - 8), 2, &v128, &v126, &v140);

      v68 = *(v57 + 8);
      v68(v60, a3);
      v68(v114, a3);

      v68(v115, a3);

      v68(v116, a3);
      return v140;
    }

    goto LABEL_26;
  }

  if (v32 == 2)
  {
LABEL_26:
    _s3BoxCMa();
    v69 = swift_getTupleTypeMetadata2();
    v70 = swift_projectBox();
    v71 = *(v70 + *(v69 + 48));
    v72 = v117;
    (*(v117 + 16))(v20, v70, a3);
    _s3BoxCMa();
    v73 = swift_getTupleTypeMetadata2();
    v74 = swift_allocBox();
    v76 = v75;
    v77 = *(v73 + 48);
    (*(v72 + 32))(v75, v20, a3);
    *(v76 + v77) = v71;
    v140 = v74 | 0x4000000000000000;
LABEL_40:

    return v140;
  }

  if (v33 == 3)
  {
    if (v32 == 3)
    {
      v78 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v80 = swift_allocObject();
      v81 = v118;
      _s3BoxCMa_0();
      v82 = *(v79 + 16);
      v83 = *(v78 + 16);

      v84 = sub_22C48F890(v82, v83, a3, v81, v113, v119);

      *(v80 + 16) = sub_22C48C6B4(v84);
      return v80 | 0x6000000000000000;
    }

    v9 = a2;
    goto LABEL_38;
  }

  if (v32 == 3)
  {
LABEL_38:
    v87 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    v89 = v88 | 0x6000000000000000;
LABEL_39:
    v140 = v89;
    goto LABEL_40;
  }

  if (v33 == 4)
  {
    if (v32 == 4)
    {
      v85 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v86 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v85 == v86)
      {
        v105 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v106 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v107 = swift_allocObject();
        *(v107 + 16) = v86;
        v138 = v106;
        v133 = v105;
        _s3BoxCMa();
        v122 = v113;
        v123 = v119;
        swift_getWitnessTable();
        sub_22C90B52C();
        return v107 | 0x8000000000000000;
      }

      else if (v86 & 1) != 0 || ((v85 ^ 1))
      {
      }

      else
      {

        return v9;
      }

      return a2;
    }

    v9 = a2;
    goto LABEL_46;
  }

  if (v32 == 4)
  {
LABEL_46:
    v102 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v103 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v102;
    v89 = v104 | 0x8000000000000000;
    goto LABEL_39;
  }

  if (v33 == 5 && v32 == 5)
  {
    v90 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v91 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v92 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v93 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v94 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v135 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v136 = v93;
    v137 = v94;
    v138 = &v136;
    v139 = &v135;
    v130 = v90;
    v131 = v92;
    v132 = v91;
    v133 = &v131;
    v134 = &v130;
    v95 = v118;
    v96 = v113;
    v97 = v119;
    v98 = sub_22C48FB5C(a3, v118, v113, v119);
    v99 = MEMORY[0x28223BE20](v98);
    *(&v108 - 6) = a3;
    *(&v108 - 5) = v95;
    *(&v108 - 4) = v96;
    *(&v108 - 3) = v97;
    *(&v108 - 2) = v99;
    *(&v108 - 1) = v100;

    v128 = &unk_283FB61A0;
    v129 = _s3BoxCMa();
    v101 = sub_22C48FDB8();
    v125 = v97;
    v126 = v101;
    v124 = v96;
    WitnessTable = swift_getWitnessTable();
    sub_22C48DF40(&v138, &v133, sub_22C48FD78, (&v108 - 8), 2, &v128, &v126, &v140);

    return v140;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t (*sub_22C48F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FE48;
}

uint64_t sub_22C48F7B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  _s3BoxCMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = swift_allocBox();
  v9 = v8;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(v4 - 8) + 16))(v8, a1, v4);
  *(v9 + v10) = a2;

  return v7 | 0x4000000000000000;
}

uint64_t sub_22C48F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 16);
    if ((a2 & 0x8000000000000000) == 0)
    {
      v11 = *(a2 + 16);
      v41[0] = *(a1 + 16);
      v39 = v11;
      _s3BoxCMa();
      sub_22C90A68C();
      swift_getWitnessTable();
      v28 = a5;
      v29 = a6;
      swift_getWitnessTable();
      sub_22C90A54C();
    }

    goto LABEL_6;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = *(a2 + 16);
LABEL_6:

    result = swift_allocObject();
    *(result + 16) = v10;
    return result;
  }

  v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v39 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = v39;
  v40 = v16;
  v41[0] = &v39;
  v41[1] = &v38;
  v35 = v13;
  v36 = v14;
  v34 = v15;
  v37[0] = &v35;
  v37[1] = &v34;
  v38 = v18;
  v19 = sub_22C48FC30(a3, a4, a5, a6);
  v25[1] = v20;
  v27 = v25;
  v21 = MEMORY[0x28223BE20](v19);
  v26 = v24;
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = v21;
  v24[7] = v22;
  sub_22C480170(v17, v16);
  sub_22C480170(v13, v14);

  v33[0] = &unk_283FB6250;
  v33[1] = _s3BoxCMa_0();
  type metadata accessor for PromptTreeCollection();
  v23 = sub_22C48FE8C();
  v31 = a6;
  v32[0] = v23;
  v30 = a5;
  v32[1] = swift_getWitnessTable();
  sub_22C48DF40(v41, v37, sub_22C48FE50, v26, 2, v33, v32, &v42);

  sub_22C48FEE0(v35, v36);

  sub_22C48FEE0(v39, v40);
  return v42;
}

unint64_t (*sub_22C48FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FEFC;
}

unint64_t sub_22C48FBB0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  *(v6 + 32) = a3;

  return v6 | 0xA000000000000000;
}

unint64_t (*sub_22C48FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FEF4;
}

unint64_t sub_22C48FC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_22C480170(a1, a2);

  return v6 | 0x8000000000000000;
}

uint64_t sub_22C48FD78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(**a1, *(*a1 + 8), *a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22C48FDB8()
{
  result = qword_27D9BCE90;
  if (!qword_27D9BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE90);
  }

  return result;
}

uint64_t sub_22C48FE0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_22C48FE48(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22C48F7B0(a1, a2);
}

uint64_t sub_22C48FE50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(**a1, (*a1)[1], *a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22C48FE8C()
{
  result = qword_27D9BCE98[0];
  if (!qword_27D9BCE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D9BCE98);
  }

  return result;
}

uint64_t sub_22C48FEE0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_22C48FEF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_22C48FC84(a1, a2, a3);
}

unint64_t sub_22C48FEFC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_22C48FBB0(a1, a2 & 1, a3);
}

uint64_t sub_22C48FF50(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  sub_22C36A948();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  v34 = sub_22C90A95C();
  if (!v34)
  {
    return sub_22C90A63C();
  }

  v57 = v34;
  v61 = sub_22C90B05C();
  v48 = sub_22C90B06C();
  sub_22C90B00C();
  result = sub_22C90A93C();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_22C90A9CC();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = sub_22C377C8C();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = sub_22C377C8C();
      v40(v39);
      sub_22C90B04C();
      result = sub_22C90A98C();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C490324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369AEC();
  v6 = swift_allocObject();
  v12[5] = a1;
  v12[2] = a2;
  v12[3] = a3;
  type metadata accessor for PromptTree();
  v7 = sub_22C90A68C();
  v8 = _s3BoxCMa();
  WitnessTable = swift_getWitnessTable();
  *(v6 + 16) = sub_22C48FF50(sub_22C490750, v12, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  return v6;
}

uint64_t sub_22C490410(uint64_t a1)
{
  sub_22C369AEC();
  v2 = swift_allocObject();
  _s3BoxCMa_0();
  *(v2 + 16) = sub_22C48C6B4(a1);

  return v2 | 0x6000000000000000;
}

uint64_t sub_22C490480()
{
  sub_22C36A83C();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22C90A49C();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_22C4904F4()
{
  type metadata accessor for PromptTree();

  return sub_22C909E9C();
}

uint64_t sub_22C490528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36A83C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  type metadata accessor for PromptTree();
  sub_22C90A68C();

  return sub_22C90A67C();
}

uint64_t sub_22C4905A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22C490324(a1, a2, a3);

  v4 = sub_22C490410(v3);

  return v4;
}

uint64_t sub_22C490608()
{
  sub_22C36A83C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_22C490634@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_22C4904F4();
  *a2 = result;
  return result;
}

uint64_t sub_22C490674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C4905A8(*a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_22C4906FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _s3BoxCMa();
  *a2 = sub_22C48B850(v3);
}

uint64_t sub_22C490750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22C4906FC(a1, a2);
}

uint64_t sub_22C490770()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C4907C8(uint64_t a1, uint64_t a2)
{
  sub_22C4916C8();
  v4 = sub_22C490820(v3, a2);

  return v4;
}

uint64_t sub_22C490820(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v73 - v9;
  v73[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v73 - v18;
  switch(a1 >> 61)
  {
    case 1uLL:
      v57 = swift_projectBox();
      v4 = *(v13 + 16);
      (v4)(v19, v57, AssociatedTypeWitness);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      (v4)(v17, v19, AssociatedTypeWitness);
      *(inited + 32) = sub_22C90A1AC();
      *(inited + 40) = v59;
      sub_22C38B91C(0x696669746E656469, 0xEA00000000007265, inited);
      sub_22C36A9B4();
      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v13 + 8))(v19, AssociatedTypeWitness);
      return v4;
    case 2uLL:
      sub_22C4916BC();
      _s3BoxCMa();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v39 = swift_projectBox();
      v40 = *(v39 + *(TupleTypeMetadata2 + 48));
      v41 = *(v4 + 16);
      v41(v10, v39, a2);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_22C90F870;
      strcpy(v76, "identifier: ");
      BYTE5(v76[1]) = 0;
      HIWORD(v76[1]) = -5120;
      v41(v8, v10, a2);

      v43 = sub_22C90A1AC();
      v45 = v44;
      MEMORY[0x2318B7850](v43);

      v46 = v76[1];
      *(v42 + 32) = v76[0];
      *(v42 + 40) = v46;
      sub_22C369D44();
      sub_22C377CA0();
      v47 = *(v40 + 16);

      sub_22C4916BC();
      sub_22C490820();
      sub_22C36A9B4();

      MEMORY[0x2318B7850](v4, v45);

      v48 = v75;
      *(v42 + 48) = v74;
      *(v42 + 56) = v48;
      sub_22C38B91C(0x676E69646E6962, 0xE700000000000000, v42);
      sub_22C36A9B4();

      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v4 + 8))(v10, a2);
      return v4;
    case 3uLL:
      v49 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_22C90F800;
      v51 = *(v49 + 16);

      sub_22C4916BC();
      v55 = sub_22C491104(v52, v53, v54);
      v4 = v56;

      *(v50 + 32) = v55;
      *(v50 + 40) = v4;
      sub_22C38B91C(0x7461636E6F63, 0xE600000000000000, v50);
      sub_22C36A9B4();

      goto LABEL_13;
    case 4uLL:
      v27 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_22C90F870;
      v76[0] = 0;
      v76[1] = 0xE000000000000000;
      sub_22C90AF5C();

      sub_22C3733AC();
      v76[0] = v30;
      v76[1] = v29;
      if (v27)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v27)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x2318B7850](v31, v32);

      v33 = v76[1];
      *(v22 + 32) = v76[0];
      *(v22 + 40) = v33;
      sub_22C369D44();
      sub_22C377CA0();
      v34 = *(v28 + 16);

      sub_22C4916BC();
      v35 = sub_22C490820();
      v4 = v36;

      MEMORY[0x2318B7850](v35, v4);

      v37 = v75;
      *(v22 + 48) = v74;
      *(v22 + 56) = v37;
      v26 = 0x800000022C930CF0;
      v25 = 0xD000000000000010;
      goto LABEL_10;
    case 5uLL:
      v60 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v61 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v62 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_22C90F800;
      sub_22C377CA0();
      v64 = *(v62 + 16);

      sub_22C4916BC();
      v65 = sub_22C490820();
      v4 = v66;

      *(v63 + 32) = v65;
      *(v63 + 40) = v4;
      sub_22C491384(v60, v61);
      v68 = v67;
      v69 = sub_22C3717A8();
      sub_22C490F28(v69, v70, v63, v71, v68);
      sub_22C36A9B4();

      swift_setDeallocating();
      goto LABEL_17;
    default:
      v20 = *(a1 + 16);
      v21 = *(a1 + 24);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_22C90F800;

      v23 = sub_22C90A2AC();
      v4 = v24;

      *(v22 + 32) = v23;
      *(v22 + 40) = v4;
      v25 = 0x676E69727473;
      v26 = 0xE600000000000000;
LABEL_10:
      sub_22C38B91C(v25, v26, v22);
      sub_22C36A9B4();
LABEL_13:
      swift_setDeallocating();
LABEL_17:
      sub_22C58FFC4();
      return v4;
  }
}

uint64_t sub_22C490F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  MEMORY[0x2318B7850]();
  MEMORY[0x2318B7850](40, 0xE100000000000000);
  if (a5)
  {

    MEMORY[0x2318B7850](44, 0xE100000000000000);
    v8 = a4;
  }

  else
  {
    v8 = 0;
    a5 = 0xE000000000000000;
  }

  MEMORY[0x2318B7850](v8, a5);

  MEMORY[0x2318B7850](10, 0xE100000000000000);
  v9 = *(a3 + 16);
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v10 = (a3 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13 = sub_22C90A29C();
      v15 = v14;

      v16 = *(v22 + 16);
      if (v16 >= *(v22 + 24) >> 1)
      {
        sub_22C3B5E2C();
      }

      *(v22 + 16) = v16 + 1;
      v17 = v22 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v18 = sub_22C90A04C();
  v20 = v19;

  MEMORY[0x2318B7850](v18, v20);

  MEMORY[0x2318B7850](10506, 0xE200000000000000);
  return 46;
}

uint64_t sub_22C491104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v17 = *(v15 + 16);

    v18 = sub_22C491104(v17, a2, a3);
    v20 = v19;

    *(inited + 32) = v18;
    *(inited + 40) = v20;
    sub_22C491594(v13, v14);
    v22 = v21;
    v23 = sub_22C3717A8();
    v12 = sub_22C490F28(v23, v24, inited, v25, v22);

    swift_setDeallocating();
    sub_22C58FFC4();
  }

  else
  {
    v27 = *(a1 + 16);
    MEMORY[0x28223BE20](a1);
    KeyPath = swift_getKeyPath();
    _s3BoxCMa();
    v6 = sub_22C90A68C();

    WitnessTable = swift_getWitnessTable();
    sub_22C48FF50(sub_22C49169C, KeyPath, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    sub_22C90A04C();

    v9 = sub_22C90A29C();
    v11 = v10;

    MEMORY[0x2318B7850](v9, v11);

    MEMORY[0x2318B7850](2710794, 0xE300000000000000);
    return 0x5B2879617272612ELL;
  }

  return v12;
}

unint64_t sub_22C491384(uint64_t a1, char a2)
{
  if (a2)
  {
    result = 0x697469736E65732ELL;
    switch(a1)
    {
      case 1:
        result = 0x6E496B636F6C622ELL;
        break;
      case 2:
        result = 0xD000000000000010;
        break;
      case 3:
        return result;
      case 4:
        result = 0x6C6261746F75712ELL;
        break;
      case 5:
        result = 0x6465726F6E67692ELL;
        break;
      case 6:
        result = 0x616372657070752ELL;
        break;
      default:
        result = 0x746E65646E692ELL;
        break;
    }
  }

  else
  {
    sub_22C90AF5C();

    sub_22C3733AC();
    v6 = v4;
    v5 = sub_22C90B47C();
    MEMORY[0x2318B7850](v5);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    return v6;
  }

  return result;
}

uint64_t sub_22C491504@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  result = sub_22C490820(*a1, v6);
  *a4 = result;
  a4[1] = v9;
  return result;
}

uint64_t sub_22C491538(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_22C491594(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x646570756465642ELL;
    case 1:
      return 0x646574726F732ELL;
    case 2:
      return 0xD000000000000011;
  }

  sub_22C90AF5C();

  v3 = sub_22C90A2AC();
  MEMORY[0x2318B7850](v3);

  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_22C49171C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v1 >> 61 == 5 && *(v2 + 24) == 1 && *(v2 + 16) == 3)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = 0x455443414445523CLL;
    *(v1 + 24) = 0xEA00000000003E44;
  }

  else
  {
  }

  return v1;
}

unint64_t sub_22C4917AC(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22C49171C(a1);
}

uint64_t sub_22C4917C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C36E2B8(a3);
  v17 = result;
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {
      return a1;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318B8460](i, a3);
      v10 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_beginAccess();
    v11 = *(v10 + 16);

    v12 = sub_22C494E64(a1, a2, a4, v11);
    if (v4)
    {

      return a1;
    }

    v14 = v12;
    v15 = v13;

    a2 = v15;
    a1 = v14;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22C491938(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22C36E2B8(a2);
  v9 = result;
  for (i = 0; ; ++i)
  {
    v11 = a1;
    if (v9 == i)
    {
      return v11 & 1;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318B8460](i, a2);
      v12 = result;
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_beginAccess();
    v13 = *(v12 + 16);

    a1 = sub_22C496E50(a1 & 1, a3, v13, a4, a5);

    if (v5)
    {
      return v11 & 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C491AA0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

unint64_t sub_22C491AFC()
{
  v2 = sub_22C374410();
  v3 = type metadata accessor for PromptTreeIdentifier(v2);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  switch(v1 >> 61)
  {
    case 2uLL:
      v14 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v15 = swift_projectBox();
      v16 = *(v15 + *(v14 + 48));
      sub_22C49C7B0(v15, v9, type metadata accessor for PromptTreeIdentifier);
      v1 = swift_allocBox();
      v18 = v17;
      sub_22C49C7B0(v9, v17, type metadata accessor for PromptTreeIdentifier);
      sub_22C36CA70();
      v19 = *(v16 + 16);

      v20 = sub_22C491AFC(v19);
      if (v0)
      {

        sub_22C36BCD4();
        sub_22C49C758(v9, v21);
        sub_22C49C758(v18, v14);
        swift_deallocBox();
      }

      else
      {
        v31 = v20;

        v32 = *(v14 + 48);

        sub_22C3733C8();
        sub_22C49C758(v9, v33);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v34 = swift_allocObject();
        *(v34 + 16) = v31;
        *(v18 + v32) = v34;
        v1 |= 0x4000000000000000uLL;
      }

      break;
    case 3uLL:
      v22 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v23 = swift_allocObject();
      v24 = *(v22 + 16);

      sub_22C497468(v24);
      sub_22C49CA14();

      if (v0)
      {
        goto LABEL_10;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v35 = swift_allocObject();
      *(v35 + 16) = v1;
      *(v23 + 16) = v35;
      v1 = v23 | 0x6000000000000000;
      break;
    case 4uLL:
      v1 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v10 + 24);
      sub_22C36A83C();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      sub_22C36CA70();
      v13 = *(v11 + 16);

      sub_22C491AFC(v13);
      sub_22C49CA14();

      if (v0)
      {
        goto LABEL_10;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      *(v12 + 24) = v30;
      v1 = v12 | 0x8000000000000000;
      break;
    case 5uLL:
      v1 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v10 + 24);
      v26 = *(v10 + 32);
      sub_22C36D2A8();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      *(v27 + 24) = v25;
      sub_22C36CA70();
      v28 = *(v26 + 16);

      sub_22C491AFC(v28);
      sub_22C49CA14();

      if (v0)
      {
LABEL_10:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v36 = swift_allocObject();
        *(v36 + 16) = v1;
        *(v27 + 32) = v36;
        v1 = v27 | 0xA000000000000000;
        if (*(v27 + 24) == 1 && *(v27 + 16) == 3)
        {
          sub_22C36A83C();
          v1 = swift_allocObject();

          *(v1 + 16) = 0x455443414445523CLL;
          *(v1 + 24) = 0xEA00000000003E44;
        }
      }

      break;
    default:

      break;
  }

  return v1;
}

void sub_22C491ED0()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = type metadata accessor for PromptTreeIdentifier(0);
  v12 = sub_22C36985C(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C382FA8();
  swift_bridgeObjectRetain_n();
  switch(v6 >> 61)
  {
    case 2uLL:
      v33 = swift_projectBox();
      v34 = sub_22C49C99C(v33, *(v7 + 48));
      v36 = v35;
      sub_22C49C7B0(v34, v17, v35);
      v91 = swift_allocBox();
      v38 = v37;
      sub_22C49C7B0(v17, v37, v36);
      sub_22C374B18();
      v39 = *(v2 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      v48 = sub_22C491ED0(v40, v41, v42, v43, v44, v45, v46, v47);
      if (v0)
      {

        sub_22C372798();
        sub_22C49C758(v17, v49);
        sub_22C49C758(v38, v1);
        swift_deallocBox();
        goto LABEL_16;
      }

      v86 = v48;

      v79 = *(v7 + 48);

      sub_22C3733C8();
      sub_22C49C758(v17, v80);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v81 = swift_allocObject();
      *(v81 + 16) = v86;
      *(v38 + v79) = v81;
      v6 = v91 | 0x4000000000000000;
      goto LABEL_3;
    case 3uLL:
      v28 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v29 = swift_allocObject();
      v30 = *(v28 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      sub_22C4976E8(v31, v32);
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_15;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v78 = swift_allocObject();
      *(v78 + 16) = v17;
      *(v29 + 16) = v78;
      v6 = v29 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v64 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v66 = swift_allocObject();
      *(v66 + 16) = v64;
      sub_22C374B18();
      v67 = *(v65 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37667C();
      v76 = sub_22C491ED0(v68, v69, v70, v71, v72, v73, v74, v75);
      if (v0)
      {
        goto LABEL_14;
      }

      v84 = v76;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v66 + 24) = v85;
      v6 = v66 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v50 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v51 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v52 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v53 = swift_allocObject();
      *(v53 + 16) = v50;
      *(v53 + 24) = v51;
      sub_22C374B18();
      v54 = *(v52 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37667C();
      v63 = sub_22C491ED0(v55, v56, v57, v58, v59, v60, v61, v62);
      if (!v0)
      {
        v82 = v63;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v83 = swift_allocObject();
        *(v83 + 16) = v82;
        *(v53 + 32) = v83;
        v6 = v53 | 0xA000000000000000;
LABEL_3:
        if (v6 >> 61 == 2)
        {
          v18 = swift_projectBox();
          sub_22C49C688(v18, v1);
          v19 = *(v1 + *(v7 + 48));

          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v20 = *(v1 + 16);
            v87 = *v1;
            v88 = v20;
            v89 = *(v1 + 32);
            v90 = *(v1 + 48);
            v21 = sub_22C605834(&v87, v4);
            if (v22)
            {
              v24 = v21;
              v25 = v22;
              v26 = v23;
              v27 = sub_22C374168(&v87, *(&v88 + 1));
              sub_22C53EB6C(&v87, v24, v25, v26, *v27);

              sub_22C48A6C0(&v87);
              sub_22C382FA8();
              swift_bridgeObjectRelease_n();

LABEL_24:
              sub_22C388F38();
              swift_bridgeObjectRelease_n();
              goto LABEL_25;
            }

            sub_22C48A6C0(&v87);
          }

          else
          {
            sub_22C3733C8();
            sub_22C49C758(v1, v77);
          }
        }

        sub_22C382FA8();
        swift_bridgeObjectRelease_n();
        goto LABEL_24;
      }

LABEL_14:

LABEL_15:
      swift_deallocUninitializedObject();
LABEL_16:
      sub_22C388F38();
      swift_bridgeObjectRelease_n();
      sub_22C382FA8();
      swift_bridgeObjectRelease_n();
LABEL_25:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C382FA8();
      swift_bridgeObjectRetain_n();
      goto LABEL_3;
  }
}

void sub_22C4923C4()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C37B9F8();
  swift_bridgeObjectRetain_n();
  sub_22C382FA8();
  swift_bridgeObjectRetain_n();
  switch(v3 >> 61)
  {
    case 2uLL:
      v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v21 = swift_projectBox();
      v22 = *(v21 + *(v20 + 48));
      sub_22C49C7B0(v21, v10, type metadata accessor for PromptTreeIdentifier);
      swift_allocBox();
      v24 = v23;
      sub_22C49C7B0(v10, v23, type metadata accessor for PromptTreeIdentifier);
      sub_22C374B18();
      v25 = *(v22 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37FD58();
      v29 = sub_22C4923C4(v26, v27, v28);
      v1 = v0;
      if (v0)
      {

        sub_22C3721D8();
        sub_22C49C758(v10, v30);
        sub_22C49C758(v24, v25);
        swift_deallocBox();
        goto LABEL_15;
      }

      v49 = v29;

      v50 = *(v20 + 48);

      sub_22C3733C8();
      sub_22C49C758(v10, v51);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v52 = swift_allocObject();
      *(v52 + 16) = v49;
      *(v24 + v50) = v52;
      goto LABEL_3;
    case 3uLL:
      v14 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v15 = swift_allocObject();
      v16 = *(v14 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37FD58();
      sub_22C497728(v17, v18, v19);
      sub_22C37B270();

      if (v0)
      {
        goto LABEL_14;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v48 = swift_allocObject();
      *(v48 + 16) = v10;
      *(v15 + 16) = v48;
      goto LABEL_3;
    case 4uLL:
      v40 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      sub_22C374B18();
      v43 = *(v41 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37FD58();
      v47 = sub_22C4923C4(v44, v45, v46);
      v1 = v0;
      if (v0)
      {
        goto LABEL_13;
      }

      v55 = v47;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v42 + 24) = v56;
      goto LABEL_3;
    case 5uLL:
      v31 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v33 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v32;
      sub_22C374B18();
      v35 = *(v33 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37FD58();
      v39 = sub_22C4923C4(v36, v37, v38);
      v1 = v0;
      if (v0)
      {
LABEL_13:

LABEL_14:
        swift_deallocUninitializedObject();
LABEL_15:

        sub_22C37B9F8();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v53 = v39;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        *(v34 + 32) = v54;
LABEL_3:
        sub_22C37FD58();
        sub_22C49E81C(v11, v12, v13);
        sub_22C37B270();

        if (!v1)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          goto LABEL_17;
        }

        sub_22C37B9F8();
        swift_bridgeObjectRelease_n();
      }

      sub_22C49C9D8();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
LABEL_17:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C37B9F8();
      swift_bridgeObjectRetain_n();
      sub_22C382FA8();
      swift_bridgeObjectRetain_n();
      goto LABEL_3;
  }
}

void sub_22C492838()
{
  sub_22C370030();
  sub_22C38613C();
  v3 = type metadata accessor for PromptTreeIdentifier(0);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C370654();
  v7 = v0 >> 61;
  sub_22C382FA8();
  swift_retain_n();
  sub_22C37B9F8();
  swift_retain_n();
  swift_retain_n();
  switch(v0 >> 61)
  {
    case 2uLL:
      v20 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v21 = swift_projectBox();
      v22 = sub_22C49C99C(v21, *(v20 + 48));
      v24 = v23;
      sub_22C49C7B0(v22, v1, v23);
      swift_allocBox();
      v26 = v25;
      sub_22C49C7B0(v1, v25, v24);
      sub_22C374B18();
      v27 = *(v2 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();

      sub_22C49C9C4();
      v32 = sub_22C492838(v28, v29, v30, v31);
      if (v7)
      {

        sub_22C36BCD4();
        sub_22C49C758(v1, v33);
        sub_22C49C758(v26, v27);
        swift_deallocBox();
        goto LABEL_14;
      }

      v62 = v32;

      v55 = *(v20 + 48);

      sub_22C3733C8();
      sub_22C49C758(v1, v56);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v57 = swift_allocObject();
      *(v57 + 16) = v62;
      *(v26 + v55) = v57;
      goto LABEL_3;
    case 3uLL:
      v12 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v13 = swift_allocObject();
      v14 = *(v12 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();

      sub_22C49C9C4();
      sub_22C497AB8(v15, v16, v17, v18);
      if (v7)
      {

        goto LABEL_13;
      }

      v53 = v19;

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v13 + 16) = v54;
      goto LABEL_3;
    case 4uLL:
      v44 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      sub_22C374B18();
      v47 = *(v45 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();
      sub_22C49C9C4();
      v52 = sub_22C492838(v48, v49, v50, v51);
      if (v7)
      {
        goto LABEL_12;
      }

      v60 = v52;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v46 + 24) = v61;
      goto LABEL_3;
    case 5uLL:
      v34 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v35;
      sub_22C374B18();
      v38 = *(v36 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();
      sub_22C49C9C4();
      v43 = sub_22C492838(v39, v40, v41, v42);
      if (v7)
      {
LABEL_12:

LABEL_13:
        swift_deallocUninitializedObject();
      }

      else
      {
        v58 = v43;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v37 + 32) = v59;
LABEL_3:
        sub_22C49C9C4();
        sub_22C4AD5AC(v8, v9, v10, v11);

        if (!v7)
        {

          goto LABEL_15;
        }
      }

LABEL_14:

LABEL_15:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C382FA8();
      swift_retain_n();
      sub_22C37B9F8();
      swift_retain_n();
      swift_retain_n();
      goto LABEL_3;
  }
}

void sub_22C4930DC()
{
  sub_22C370030();
  v4 = v3;
  v5 = sub_22C374410();
  v6 = type metadata accessor for PromptTreeIdentifier(v5);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v12 = v11 - v10;
  switch(v1 >> 61)
  {
    case 2uLL:
      v17 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v18 = swift_projectBox();
      v19 = sub_22C377CBC(v18);
      sub_22C49C7B0(v19, v12, v20);
      v21 = swift_allocBox();
      sub_22C3881CC(v21, v22);
      sub_22C374B18();
      sub_22C37AC04();

      sub_22C37667C();
      v25 = sub_22C4930DC(v23, v24);
      if (!v0)
      {
        v42 = v25;

        v43 = *(v17 + 48);

        sub_22C3733C8();
        sub_22C49C758(v12, v44);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v45 = swift_allocObject();
        *(v45 + 16) = v42;
        *(v2 + v43) = v45;
        v1 |= 0x4000000000000000uLL;
        goto LABEL_3;
      }

      sub_22C36A9C0();
      sub_22C49C758(v12, v26);
      v27 = sub_22C37A004();
      sub_22C49C758(v27, v28);
      swift_deallocBox();
      goto LABEL_14;
    case 3uLL:
      v14 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      swift_allocObject();
      sub_22C49CA2C();

      sub_22C37667C();
      sub_22C498210(v15, v16);
      sub_22C49CA20();

      if (v0)
      {
        goto LABEL_13;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v41 = swift_allocObject();
      *(v41 + 16) = v12;
      *(v1 + 16) = v41;
      v1 |= 0x6000000000000000uLL;
      goto LABEL_3;
    case 4uLL:
      v36 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      sub_22C374B18();
      sub_22C382CA8();
      v39 = sub_22C37A004();
      sub_22C4930DC(v39, v40);
      sub_22C49CA20();

      if (v0)
      {
        goto LABEL_13;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v47 = swift_allocObject();
      *(v47 + 16) = v36;
      *(v38 + 24) = v47;
      v1 = v38 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v29 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v31 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v32 = swift_allocObject();
      *(v32 + 16) = v29;
      *(v32 + 24) = v30;
      sub_22C374B18();
      v33 = *(v31 + 16);

      v34 = sub_22C37A004();
      sub_22C4930DC(v34, v35);
      sub_22C49CA20();

      if (v0)
      {
LABEL_13:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v46 = swift_allocObject();
        *(v46 + 16) = v29;
        *(v32 + 32) = v46;
        v1 = v32 | 0xA000000000000000;
LABEL_3:
        if ((*v4 & 1) == 0 && (v1 & 0xE000000000000000) == 0x8000000000000000)
        {
          *v4 = 1;
          sub_22C36A83C();
          v13 = swift_allocObject();

          *(v13 + 16) = 0;
          *(v13 + 24) = 0xE000000000000000;
        }
      }

LABEL_14:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_3;
  }
}

void sub_22C4938BC()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_22C36A948();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C370654();
  switch(v17 >> 61)
  {
    case 2uLL:
      _s3BoxCMa();
      v58 = v3;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v22 = swift_projectBox();
      v23 = *(v22 + *(TupleTypeMetadata2 + 48));
      v61 = v11;
      v24 = *(v13 + 16);
      v24(v1, v22, v5);
      v57 = TupleTypeMetadata2;
      v25 = swift_allocBox();
      v59 = v26;
      v60 = v25;
      v24(v26, v1, v5);
      sub_22C374B18();
      sub_22C37AC04();

      v27 = sub_22C4938BC(v61, v9, v13 + 16, v5, v58);
      if (!v0)
      {
        v52 = v27;

        v53 = *(v57 + 48);

        v54 = *(v13 + 8);
        v55 = sub_22C37F760();
        v56(v55);
        *(v59 + v53) = sub_22C48B850(v52);
        v61(v60 | 0x4000000000000000);
        goto LABEL_4;
      }

      v28 = *(v13 + 8);
      v29 = sub_22C37F760();
      v28(v29);
      (v28)(v59, v5);
      swift_deallocBox();
      goto LABEL_13;
    case 3uLL:
      v18 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v19 = swift_allocObject();
      v20 = *(v18 + 16);

      sub_22C36EBF0();
      sub_22C36D760();
      sub_22C4984AC();
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_12;
      }

      sub_22C49C9E4();
      _s3BoxCMa_0();
      *(v19 + 16) = sub_22C48C6B4(v7);
      v7 = v19 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v41 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v42 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v43 = v11;
      v44 = *(v41 + 24);
      sub_22C36A83C();
      v45 = swift_allocObject();
      *(v45 + 16) = v42;
      sub_22C374B18();
      v46 = *(v44 + 16);
      v11 = v43;

      sub_22C36D760();
      sub_22C4938BC(v47, v48, v49, v50, v51);
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_12;
      }

      sub_22C49C9E4();
      _s3BoxCMa();
      *(v45 + 24) = sub_22C48B850(v43);
      v7 = v45 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v30 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = v11;
      v32 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v33 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v34 = swift_allocObject();
      *(v34 + 16) = v30;
      *(v34 + 24) = v32;
      v11 = v31;
      sub_22C374B18();
      v35 = *(v33 + 16);

      sub_22C36D760();
      sub_22C4938BC(v36, v37, v38, v39, v40);
      sub_22C49CA48();

      if (v0)
      {
LABEL_12:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C49C9E4();
        _s3BoxCMa();
        *(v34 + 32) = sub_22C48B850(v33);
        v7 = v34 | 0xA000000000000000;
LABEL_3:
        v11(v7);
LABEL_4:
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_3;
  }
}

uint64_t sub_22C493CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5 < 0)
  {
    v22 = *(*((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C493CE4(a1, a2, a3, a4, v22);

    return a1;
  }

  else
  {
    v11 = *(a5 + 16);
    v24 = v11 & 0xC000000000000001;
    v25 = sub_22C36E2B8(v11);
    v23 = v11 & 0xFFFFFFFFFFFFFF8;
    v26 = v11;

    v13 = 0;
    while (1)
    {
      if (v25 == v13)
      {

        return a1;
      }

      if (v24)
      {
        result = MEMORY[0x2318B8460](v13, v26);
        v14 = result;
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v26 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        break;
      }

      v27 = v13;
      swift_beginAccess();
      v15 = *(v14 + 16);

      v16 = sub_22C493F24(a1, a2, a3, a4, v15);
      if (v6)
      {

        return a1;
      }

      v19 = v16;
      v20 = v17;
      v21 = v18;

      v13 = v27 + 1;
      a3 = v21;
      a2 = v20;
      a1 = v19;
      v6 = 0;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

void sub_22C493F24()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for PromptTreeIdentifier(0);
  v13 = sub_22C3699B8(v12);
  v64 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v59 - v21;
  v23 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C3717BC();
  v61 = v11;
  v62 = v9;
  v63 = v7;
  sub_22C3A5AC4(*v5);

  sub_22C4ADEB0(&v61, v1, v3);
  if (!v0)
  {
    v60 = v19;
    sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
    v27 = 32;
    switch(v3 >> 61)
    {
      case 2uLL:
        v34 = v22;
        v35 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
        v36 = swift_projectBox();
        v37 = sub_22C49C99C(v36, *(v35 + 48));
        v39 = v38;
        sub_22C49C7B0(v37, v22, v38);

        v40 = v5;
        sub_22C3D0F38();
        v41 = *(*v5 + 16);
        sub_22C3D10FC(v41);
        v42 = *v5;
        *(*v5 + 16) = v41 + 1;
        v43 = *(v64 + 80);
        sub_22C36BA94();
        sub_22C49C7B0(v34, v42 + v44 + *(v64 + 72) * v41, v39);
        *v5 = v42;
        sub_22C36CA70();
        v45 = *(v11 + 16);
        v47 = v61;
        v46 = v62;
        v48 = v63;

        v59[1] = v48;
        v59[2] = v46;
        sub_22C493F24(v47, v46, v48, v40, v45);
        sub_22C49C9F4();

        v57 = v60;
        sub_22C4990DC(v60);

        sub_22C36A9C0();
        sub_22C49C758(v57, v58);
        sub_22C49C758(v34, v40);

        goto LABEL_12;
      case 3uLL:
        v28 = *(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

        sub_22C36D760();
        sub_22C493CE4(v29, v30, v31, v32, v33);
        sub_22C49C9F4();

        goto LABEL_3;
      case 4uLL:
        v27 = 24;
        goto LABEL_9;
      case 5uLL:
LABEL_9:
        v49 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + v27);
        sub_22C36CA70();
        v50 = *(v49 + 16);
        v51 = v62;

        sub_22C36D760();
        sub_22C493F24(v52, v53, v54, v55, v56);
        if (v51)
        {
        }

        else
        {
          sub_22C49C9F4();

LABEL_12:
        }

        goto LABEL_3;
      default:
        goto LABEL_4;
    }
  }

  sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);

LABEL_3:

LABEL_4:
  sub_22C3772F0();
  sub_22C36FB20();
}

uint64_t sub_22C494390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v10 = *(*((a4 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    v8 = sub_22C494390(a1, a2, a3, v10);
  }

  else
  {
    v7 = *(a4 + 16);

    v8 = sub_22C4917C8(a1, a2, v7, a3);
  }

  return v8;
}

uint64_t sub_22C4944DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v18 = *(*((a4 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C4944DC(a1, a2, a3, v18);

    return a1;
  }

  else
  {
    v8 = *(a4 + 16);
    v20 = v8 & 0xC000000000000001;
    v21 = sub_22C36E2B8(v8);
    v19 = v8 & 0xFFFFFFFFFFFFFF8;
    v22 = v8;

    v10 = 0;
    while (1)
    {
      if (v21 == v10)
      {

        return a1;
      }

      if (v20)
      {
        result = MEMORY[0x2318B8460](v10, v22);
        v11 = result;
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v22 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      swift_beginAccess();
      v12 = *(v11 + 16);

      v13 = a3;
      v14 = sub_22C495588(a1, a2, a3, v12);
      if (v4)
      {

        return a1;
      }

      v16 = v14;
      v17 = v15;

      ++v10;
      a2 = v17;
      a1 = v16;
      a3 = v13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4946D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for PromptTreeResolution.State();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  if (a3 < 0)
  {
    v22 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    sub_22C4946D4(a1, a2, v22);
  }

  else
  {
    v24 = a4;
    v25 = a2;
    v16 = *(a3 + 16);
    sub_22C49C7B0(a1, &v23 - v14, type metadata accessor for PromptTreeResolution.State);
    v17 = sub_22C36E2B8(v16);
    v26 = v16 & 0xC000000000000001;

    for (i = 0; ; ++i)
    {
      if (v17 == i)
      {
        sub_22C49C6F8(v15, v24, type metadata accessor for PromptTreeResolution.State);
      }

      if (v26)
      {
        result = MEMORY[0x2318B8460](i, v16);
        v20 = result;
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v20 = *(v16 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();
      v21 = *(v20 + 16);

      sub_22C495A5C(v15, v25, v21);
      if (v4)
      {

        sub_22C49C758(v15, type metadata accessor for PromptTreeResolution.State);
      }

      sub_22C49C758(v15, type metadata accessor for PromptTreeResolution.State);

      sub_22C49C6F8(v13, v15, type metadata accessor for PromptTreeResolution.State);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494A60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  if (a3 < 0)
  {
    v18 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a4(a1, a2, v18);
    sub_22C49CA14();

    return a1;
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = sub_22C36E2B8(v9);

    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return a1;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i, v9);
        v13 = result;
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v9 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_22C36CA70();
      v14 = *(v13 + 16);

      v15 = a5(a1, a2, v14);
      if (v6)
      {

        return a1;
      }

      v16 = v15;

      a1 = v16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494C14(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3 < 0)
  {
    v14 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C494C14(a1 & 1, a2, v14);

    return a1 & 1;
  }

  else
  {
    v7 = *(a3 + 16);
    v8 = sub_22C36E2B8(v7);

    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return a1 & 1;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i, v7);
        v11 = result;
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();
      v12 = *(v11 + 16);

      v13 = sub_22C496A94(a1 & 1, a2, v12);
      if (v4)
      {

        return a1 & 1;
      }

      a1 = v13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494DA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    v12 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    v10 = sub_22C494DA0(a1 & 1, a2, v12, a4, a5);
  }

  else
  {
    v9 = *(a3 + 16);

    v10 = sub_22C491938(a1 & 1, v9, a2, a4, a5);
  }

  return v10 & 1;
}

void sub_22C494E64()
{
  sub_22C370030();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22C38163C();
  sub_22C36A948();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = 32;
  switch(v5 >> 61)
  {
    case 2uLL:
      v60 = v1;
      v61 = v16;
      v31 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v32 = *(swift_projectBox() + *(v31 + 48));
      sub_22C369D5C();
      v62 = v32;
      v63 = v33;
      sub_22C49C7B0(v34, v24, v35);

      sub_22C3D0F38();
      v36 = *(*v7 + 16);
      sub_22C3D10FC(v36);
      v59 = v5;
      v37 = *v7;
      *(*v7 + 16) = v36 + 1;
      v38 = *(v18 + 80);
      sub_22C36BA94();
      v65 = v18;
      sub_22C49C7B0(v24, v37 + v39 + *(v18 + 72) * v36, v63);
      *v7 = v37;
      v40 = v62;
      sub_22C36CA70();
      v41 = *(v40 + 16);

      v42 = sub_22C3855B8();
      v45 = sub_22C494E64(v42, v43, v44, v41);
      if (!v3)
      {
        v11 = v45;
        v9 = v46;

        sub_22C4990DC(v2);

        sub_22C36BCD4();
        sub_22C49C758(v2, v53);
        sub_22C49C758(v24, v41);
        v5 = v59;
        v1 = v60;
        v16 = v61;
        goto LABEL_11;
      }

      sub_22C4990DC(v2);

      sub_22C36A9C0();
      sub_22C49C758(v2, v47);
      sub_22C49C758(v24, v7);
      goto LABEL_17;
    case 3uLL:
      v65 = v18;
      v26 = v16;
      v27 = *(*((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      v28 = sub_22C3855B8();
      sub_22C494390(v28, v29, v30, v27);
      sub_22C375E54();
      goto LABEL_8;
    case 4uLL:
      v25 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v65 = v18;
      v26 = v16;
      v48 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + v25);
      sub_22C36CA70();
      v49 = *(v48 + 16);

      v50 = sub_22C3855B8();
      sub_22C494E64(v50, v51, v52, v49);
      sub_22C375E54();
LABEL_8:

      if (v3)
      {
        goto LABEL_17;
      }

      v16 = v26;
LABEL_11:
      v18 = v65;
LABEL_12:
      v64[0] = v11;
      v64[1] = v9;
      if (*(*v7 + 16))
      {
        v54 = *(v18 + 80);
        v55 = *(v18 + 72);
        sub_22C369D5C();
        sub_22C49C7B0(v56, v1, v57);
        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      sub_22C36C640(v1, v58, 1, v16);
      sub_22C49CC54(v64, v5);
      sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
      if (v3)
      {
      }

LABEL_17:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_12;
  }
}

void sub_22C495588()
{
  sub_22C370030();
  v3 = v2;
  v81 = v4;
  v6 = v5;
  v8 = v7;
  v76 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v9 = sub_22C36985C(v76);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v77 = v13 - v12;
  v14 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v75 = v19 - v18;
  v20 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  v26 = type metadata accessor for PromptTreeIdentifier(0);
  v27 = sub_22C3699B8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v32);
  v34 = v71 - v33;
  v35 = 32;
  v78 = v3 >> 61;
  switch(v3 >> 61)
  {
    case 2uLL:
      v72 = v25;
      v42 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v74 = v0;
      v71[1] = v3;
      v43 = *(swift_projectBox() + *(v42 + 48));
      sub_22C369D5C();
      v73 = v44;
      sub_22C49C7B0(v45, v34, v46);

      v3 = v81;
      sub_22C3D0F38();
      v47 = *(*v81 + 16);
      sub_22C3D10FC(v47);
      v48 = *v81;
      *(*v81 + 16) = v47 + 1;
      v49 = *(v29 + 80);
      sub_22C36BA94();
      sub_22C49C7B0(v34, v48 + v50 + *(v29 + 72) * v47, v73);
      *v81 = v48;
      sub_22C36CA70();
      v51 = *(v43 + 16);

      v52 = sub_22C36EBF0();
      v53 = v74;
      v55 = sub_22C495588(v52, v54, v81, v51);
      if (!v53)
      {
        v8 = v55;
        v6 = v56;

        sub_22C4990DC(v1);

        sub_22C382664();
        sub_22C49C758(v1, v64);
        sub_22C49C758(v34, v47);
        v25 = v72;
        goto LABEL_11;
      }

      sub_22C4990DC(v1);

      sub_22C382664();
      sub_22C49C758(v1, v57);
      sub_22C49C758(v34, v47);
      goto LABEL_18;
    case 3uLL:
      v36 = v25;
      v37 = *(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      sub_22C36EBF0();
      sub_22C49CA54();
      sub_22C4944DC(v38, v39, v40, v41);
      sub_22C49CA7C();
      goto LABEL_8;
    case 4uLL:
      v35 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v36 = v25;
      v58 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + v35);
      sub_22C36CA70();
      v59 = *(v58 + 16);

      sub_22C36EBF0();
      sub_22C49CA54();
      sub_22C495588(v60, v61, v62, v63);
      sub_22C49CA7C();
LABEL_8:

      if (v0)
      {
        goto LABEL_18;
      }

      v25 = v36;
LABEL_11:
      v79 = v8;
      v80 = v6;
      sub_22C3A5AC4(*v3);
      if (v78 == 1)
      {
        v65 = swift_projectBox();
        v66 = v77;
        sub_22C49C7B0(v65, v77, type metadata accessor for PromptTreeIdentifier.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v75;
          v68 = sub_22C49C6F8(v66, v75, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
          MEMORY[0x28223BE20](v68);
          v71[-4] = v8;
          v71[-3] = v6;
          v71[-2] = v67;
          sub_22C7D5CF0(sub_22C49C8C0, &v71[-6], v6);
          if (v69)
          {
            sub_22C7D547C();
          }

          sub_22C49C758(v67, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
        }

        else
        {
          sub_22C3855A0();
          sub_22C49C758(v66, v70);
        }
      }

      sub_22C36DD28(v25, &qword_27D9BCF28, qword_22C9175E0);
LABEL_18:
      sub_22C36EBF0();
      sub_22C36FB20();
      return;
    default:

      v3 = v81;
      goto LABEL_11;
  }
}

void sub_22C495A5C()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v62 = v7;
  v9 = v8;
  v10 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = v58 - v14;
  v16 = type metadata accessor for PromptTreeIdentifier(0);
  v17 = sub_22C3699B8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v58 - v26;
  v28 = type metadata accessor for PromptTreeResolution.State();
  v29 = sub_22C369914(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  sub_22C370654();
  v32 = 32;
  switch(v4 >> 61)
  {
    case 2uLL:
      v59 = v9;
      v38 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v58[1] = v4;
      v39 = *(swift_projectBox() + *(v38 + 48));
      sub_22C369D5C();
      v60 = v39;
      v61 = v40;
      sub_22C49C7B0(v41, v27, v42);

      sub_22C3D0F38();
      v43 = *(*v6 + 16);
      sub_22C3D10FC(v43);
      v44 = *v6;
      *(*v6 + 16) = v43 + 1;
      v45 = *(v19 + 80);
      sub_22C36BA94();
      sub_22C49C7B0(v27, v44 + v46 + *(v19 + 72) * v43, v61);
      *v6 = v44;
      v47 = v60;
      sub_22C374B18();
      v48 = *(v47 + 16);

      sub_22C495A5C(v62, v6, v48);
      if (v0)
      {

        sub_22C4990DC(v24);

        sub_22C36A9C0();
        sub_22C49C758(v24, v49);
        v50 = v27;
        v51 = v6;
        goto LABEL_13;
      }

      sub_22C4990DC(v24);

      sub_22C372798();
      sub_22C49C758(v24, v57);
      sub_22C49C758(v27, v48);
      v9 = v59;
      goto LABEL_11;
    case 3uLL:
      v33 = *(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      sub_22C49C9B4();
      sub_22C4946D4(v34, v35, v36, v37);
      v2 = v0;

      goto LABEL_8;
    case 4uLL:
      v32 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v52 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + v32);
      sub_22C374B18();
      v53 = *(v52 + 16);

      sub_22C49C9B4();
      sub_22C495A5C(v54, v55, v56);
      v2 = v0;

LABEL_8:

      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    default:
      sub_22C49C7B0(v62, v1, type metadata accessor for PromptTreeResolution.State);
LABEL_11:
      sub_22C49C6F8(v1, v9, type metadata accessor for PromptTreeResolution.State);
      sub_22C3A5AC4(*v6);
      sub_22C4A71E0();
      sub_22C36DD28(v15, &qword_27D9BCF28, qword_22C9175E0);
      if (v2)
      {
        v51 = type metadata accessor for PromptTreeResolution.State;
        v50 = v9;
LABEL_13:
        sub_22C49C758(v50, v51);
      }

LABEL_14:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

uint64_t sub_22C495E70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v53 - v13;
  v14 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v61 = type metadata accessor for PromptTreeIdentifier(0);
  v18 = *(v61 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v61);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = a3 >> 61;
  v26 = 32;
  switch(a3 >> 61)
  {
    case 2uLL:
      v55 = v12;
      v58 = v4;
      v28 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v29 = a3;
      v30 = v28;
      v54 = v29;
      v31 = swift_projectBox();
      v56 = *(v31 + *(v30 + 48));
      v57 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C7B0(v31, v24, type metadata accessor for PromptTreeIdentifier);

      sub_22C3D0F38();
      v32 = *(*a2 + 16);
      sub_22C3D10FC(v32);
      v33 = *a2;
      *(v33 + 16) = v32 + 1;
      v34 = v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v59 = v18;
      v35 = v34 + *(v18 + 72) * v32;
      v36 = v56;
      sub_22C49C7B0(v24, v35, v57);
      *a2 = v33;
      swift_beginAccess();
      v37 = *(v36 + 16);

      v38 = v58;
      v39 = sub_22C495E70(a1, a2, v37);
      if (!v38)
      {
        a1 = v39;

        sub_22C4990DC(v22);

        sub_22C49C758(v22, type metadata accessor for PromptTreeIdentifier);
        sub_22C49C758(v24, type metadata accessor for PromptTreeIdentifier);
        v12 = v55;
        goto LABEL_11;
      }

      sub_22C4990DC(v22);

      sub_22C49C758(v22, type metadata accessor for PromptTreeIdentifier);
      return sub_22C49C758(v24, type metadata accessor for PromptTreeIdentifier);
    case 3uLL:
      v59 = v18;
      v27 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      a1 = sub_22C4949A0(a1, a2, v27);

      goto LABEL_8;
    case 4uLL:
      v26 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v59 = v18;
      v41 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + v26);
      swift_beginAccess();
      v42 = *(v41 + 16);

      a1 = sub_22C495E70(a1, a2, v42);

LABEL_8:

      if (v4)
      {
        return result;
      }

LABEL_11:
      v18 = v59;
LABEL_12:
      v65 = a1;
      v43 = *(*a2 + 16);
      if (v43)
      {
        sub_22C49C7B0(*a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * (v43 - 1), v17, type metadata accessor for PromptTreeIdentifier);
        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      sub_22C36C640(v17, v44, 1, v61);
      if (v25 == 1)
      {
        v45 = swift_projectBox();
        sub_22C49C7B0(v45, v12, type metadata accessor for PromptTreeIdentifier.Label);
        v46 = v60;
        sub_22C6A4738(v60, v12, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        sub_22C49C758(v46, type metadata accessor for PromptTreeIdentifier.Label);
      }

      sub_22C36DD28(v17, &qword_27D9BCF28, qword_22C9175E0);
      return v65;
    default:

      goto LABEL_12;
  }
}

void sub_22C4963B4()
{
  sub_22C370030();
  v6 = v5;
  v42 = v7;
  sub_22C38613C();
  v8 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C38163C();
  v13 = sub_22C3699B8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  v21 = 32;
  switch(v2 >> 61)
  {
    case 2uLL:
      v22 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v23 = *(swift_projectBox() + *(v22 + 48));
      sub_22C369D5C();
      v40 = v23;
      v41 = v24;
      sub_22C49C7B0(v25, v20, v26);

      sub_22C3D0F38();
      v27 = *(*v0 + 16);
      sub_22C3D10FC(v27);
      v39[1] = v2;
      v28 = *v0;
      *(*v0 + 16) = v27 + 1;
      v29 = *(v15 + 80);
      sub_22C36BA94();
      sub_22C49C7B0(v20, v28 + v30 + *(v15 + 72) * v27, v41);
      *v0 = v28;
      v31 = v40;
      sub_22C374B18();
      v32 = *(v31 + 16);

      v33 = sub_22C37A004();
      (v42)(v33);
      if (!v1)
      {

        sub_22C4990DC(v4);

        sub_22C38B934();
        sub_22C49C758(v4, v37);
        sub_22C49C758(v20, v32);
        goto LABEL_11;
      }

      sub_22C4990DC(v4);

      sub_22C36A9C0();
      sub_22C49C758(v4, v34);
      sub_22C49C758(v20, v0);
      goto LABEL_13;
    case 3uLL:
      sub_22C49CA9C();

      sub_22C49C9B4();
      v6();
      sub_22C37B270();

      goto LABEL_8;
    case 4uLL:
      v21 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v35 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + v21);
      sub_22C374B18();
      v36 = *(v35 + 16);

      sub_22C49C9B4();
      v42();
      sub_22C37B270();

LABEL_8:

      if (!v1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    default:

LABEL_11:
      sub_22C3A5AC4(*v0);
      v38 = sub_22C49CA68();
      sub_22C4972DC(v38);
      sub_22C36DD28(v3, &qword_27D9BCF28, qword_22C9175E0);
      if (v1)
      {
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

void sub_22C496728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v74 = v24;
  v26 = v25;
  v72 = v27;
  v28 = v20;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v73 = &v70 - v39;
  v40 = type metadata accessor for PromptTreeIdentifier(0);
  v41 = sub_22C3699B8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v46);
  v48 = &v70 - v47;
  v49 = 32;
  v50 = v30;
  switch(v30 >> 61)
  {
    case 2uLL:
      v53 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v70 = v30;
      v54 = *(swift_projectBox() + *(v53 + 48));
      sub_22C369D5C();
      v71 = v55;
      sub_22C49C7B0(v56, v48, v57);

      sub_22C3D0F38();
      v58 = *(*v32 + 16);
      sub_22C3D10FC(v58);
      v59 = *v32;
      *(*v32 + 16) = v58 + 1;
      v60 = *(v43 + 80);
      sub_22C36BA94();
      sub_22C49C7B0(v48, v59 + v61 + *(v43 + 72) * v58, v71);
      *v32 = v59;
      sub_22C374B18();
      v62 = *(v54 + 16);

      sub_22C49C9B4();
      v63 = v72();
      v28 = v20;
      if (!v20)
      {
        v34 = v63;

        sub_22C4990DC(v21);

        sub_22C372798();
        sub_22C49C758(v21, v67);
        sub_22C49C758(v48, v58);
        v50 = v70;
        goto LABEL_11;
      }

      sub_22C4990DC(v21);

      sub_22C36A9C0();
      sub_22C49C758(v21, v64);
      sub_22C49C758(v48, v32);
      goto LABEL_13;
    case 3uLL:
      v51 = *(*((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      v52 = sub_22C37F760();
      v34 = v26(v52);

      goto LABEL_8;
    case 4uLL:
      v49 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v65 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + v49);
      sub_22C374B18();
      v66 = *(v65 + 16);

      sub_22C49C9B4();
      v34 = v72();
      v28 = v20;

LABEL_8:

      if (!v28)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    default:

LABEL_11:
      a10 = v34;
      v68 = *v32;
      v69 = v73;
      sub_22C3A5AC4(v68);
      v74(&a10, v50);
      sub_22C36DD28(v69, &qword_27D9BCF28, qword_22C9175E0);
      if (v28)
      {
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

void sub_22C496A94()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C3717BC();
  v13 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36A948();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = v4 >> 61;
  v22 = 32;
  switch(v4 >> 61)
  {
    case 2uLL:
      v56 = v4 >> 61;
      v57 = v13;
      v23 = v18;
      v24 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v25 = *(swift_projectBox() + *(v24 + 48));
      sub_22C369D5C();
      v58 = v25;
      v59 = v26;
      sub_22C49C7B0(v27, v20, v28);

      sub_22C3D0F38();
      v29 = *(*v6 + 16);
      sub_22C3D10FC(v29);
      v55 = v4;
      v30 = *v6;
      *(*v6 + 16) = v29 + 1;
      v31 = *(v23 + 80);
      sub_22C36BA94();
      v60 = v23;
      sub_22C49C7B0(v20, v30 + v32 + *(v23 + 72) * v29, v59);
      *v6 = v30;
      v33 = v58;
      sub_22C374B18();
      v34 = *(v33 + 16);

      v35 = sub_22C496A94(v8 & 1, v6, v34);
      if (!v0)
      {
        v8 = v35;

        sub_22C4990DC(v2);

        sub_22C3721D8();
        sub_22C49C758(v2, v48);
        sub_22C49C758(v20, v34);
        v4 = v55;
        LODWORD(v21) = v56;
        v13 = v57;
        goto LABEL_10;
      }

      sub_22C4990DC(v2);

      sub_22C36A9C0();
      sub_22C49C758(v2, v36);
      sub_22C49C758(v20, v6);
      goto LABEL_18;
    case 3uLL:
      v60 = v18;
      v37 = v13;
      v38 = *(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      v39 = sub_22C36ECD8();
      v8 = sub_22C494C14(v39, v40, v41);
      v42 = v0;

      goto LABEL_7;
    case 4uLL:
      v22 = 24;
      goto LABEL_6;
    case 5uLL:
LABEL_6:
      v60 = v18;
      v37 = v13;
      v43 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + v22);
      sub_22C374B18();
      v44 = *(v43 + 16);

      v45 = sub_22C36ECD8();
      v8 = sub_22C496A94(v45, v46, v47);
      v42 = v0;

LABEL_7:

      if (v42)
      {
        goto LABEL_18;
      }

      v13 = v37;
LABEL_10:
      v18 = v60;
LABEL_11:
      if (*(*v6 + 16))
      {
        v49 = *(v18 + 80);
        v50 = *(v18 + 72);
        sub_22C369D5C();
        sub_22C49C7B0(v51, v1, v52);
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      sub_22C36C640(v1, v53, 1, v13);
      if ((v8 & 1) != 0 && !v21)
      {
        v54 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
        *(v4 + 24);
      }

      sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
LABEL_18:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:
      goto LABEL_11;
  }
}

uint64_t sub_22C496E50(char a1, uint64_t a2, unint64_t a3, void (*a4)(void *__return_ptr, void, void), uint64_t a5)
{
  v11 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v39 - v13;
  v14 = type metadata accessor for PromptTreeIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = 32;
  switch(a3 >> 61)
  {
    case 2uLL:
      v23 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v41 = a5;
      v24 = v23;
      v25 = swift_projectBox();
      v26 = *(v24 + 48);
      v39 = a3;
      v27 = *(v25 + v26);
      v40 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C7B0(v25, v21, type metadata accessor for PromptTreeIdentifier);

      sub_22C3D0F38();
      v28 = *(*a2 + 16);
      sub_22C3D10FC(v28);
      v42 = a4;
      v29 = *a2;
      *(v29 + 16) = v28 + 1;
      v30 = v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v28;
      a5 = v41;
      sub_22C49C7B0(v21, v30, v40);
      *a2 = v29;
      a4 = v42;
      swift_beginAccess();
      v40 = v27;
      v31 = *(v27 + 16);

      v32 = sub_22C496E50(a1 & 1, a2, v31, a4, a5);
      if (!v5)
      {
        a1 = v32;

        sub_22C4990DC(v19);

        sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
        sub_22C49C758(v21, type metadata accessor for PromptTreeIdentifier);
        a3 = v39;
        goto LABEL_10;
      }

      sub_22C4990DC(v19);

      a2 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
      sub_22C49C758(v21, type metadata accessor for PromptTreeIdentifier);
      return a2 & 1;
    case 3uLL:
      v33 = a5;
      v34 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      a1 = sub_22C494DA0(a1 & 1, a2, v34, a4, v33);

      goto LABEL_7;
    case 4uLL:
      v22 = 24;
      goto LABEL_6;
    case 5uLL:
LABEL_6:
      v35 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + v22);
      swift_beginAccess();
      v33 = a5;
      v36 = *(v35 + 16);

      a1 = sub_22C496E50(a1 & 1, a2, v36, a4, v33);

LABEL_7:

      if (v5)
      {
        return a2 & 1;
      }

      LOBYTE(a5) = v33;
LABEL_10:
      BYTE1(v44) = a1 & 1;
      v37 = v43;
      sub_22C3A5AC4(*a2);
      LOBYTE(a2) = a5;
      a4(&v44, &v44 + 1, a3);
      if (v5)
      {
        sub_22C36DD28(v37, &qword_27D9BCF28, qword_22C9175E0);
      }

      else
      {
        LOBYTE(a2) = v44;
        sub_22C36DD28(v37, &qword_27D9BCF28, qword_22C9175E0);
      }

      return a2 & 1;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_22C497280(char a1, unint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4)
{
  v6 = MEMORY[0x277D84F90];
  v4 = sub_22C496E50(a1, &v6, a2, a3, a4);

  return v4 & 1;
}

void sub_22C497468(uint64_t a1)
{
  if (a1 < 0)
  {
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v14;
    v17 = *(v15 + 16);
    sub_22C480170(v13, v14);

    v18 = sub_22C497468(v17);

    if (v1)
    {
      sub_22C48FEE0(v16[2], v16[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v16[4] = v19;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = sub_22C36E2B8(v2);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      v20 = MEMORY[0x277D84F90];

      sub_22C3B63D4();
      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v4 = v20;
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x2318B8460](v6, v2);
          }

          else
          {
            if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v8 = *(v2 + 8 * v6 + 32);
          }

          swift_beginAccess();
          v9 = *(v8 + 16);

          v10 = sub_22C491AFC(v9);
          if (v1)
          {

            return;
          }

          v11 = v10;

          v12 = *(v20 + 16);
          if (v12 >= *(v20 + 24) >> 1)
          {
            sub_22C3B63D4();
          }

          *(v20 + 16) = v12 + 1;
          *(v20 + 8 * v12 + 32) = v11;
          ++v6;
          if (v7 == v5)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v4);
    }
  }
}

void sub_22C497728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v17 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = v18;
    v21 = *(v19 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_22C480170(v17, v18);

    v22 = sub_22C497728(v21, a2, a3);

    if (v3)
    {
      sub_22C48FEE0(v20[2], v20[3]);
      swift_deallocUninitializedObject();

      swift_bridgeObjectRelease_n();
LABEL_19:

      swift_bridgeObjectRelease_n();
      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v20[4] = v23;

LABEL_22:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v5 = *(a1 + 16);
  v6 = sub_22C36E2B8(v5);
  if (!v6)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x277D84F90];
LABEL_20:
    sub_22C3DB9B0(v9);

    goto LABEL_22;
  }

  v7 = v6;
  v28 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_22C3B63D4();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v25 = v5;
    v26 = a2;
    v8 = 0;
    v9 = v28;
    v10 = v5 & 0xC000000000000001;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10)
      {
        v12 = MEMORY[0x2318B8460](v8, v5);
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v5 + 8 * v8 + 32);
      }

      swift_beginAccess();
      v13 = *(v12 + 16);

      v14 = sub_22C4923C4(v13, v26, a3);
      if (v3)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_19;
      }

      v15 = v14;

      v16 = *(v28 + 16);
      if (v16 >= *(v28 + 24) >> 1)
      {
        sub_22C3B63D4();
      }

      *(v28 + 16) = v16 + 1;
      *(v28 + 8 * v16 + 32) = v15;
      ++v8;
      v5 = v25;
      if (v11 == v7)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_22C497AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (a1 < 0)
  {
    v21 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v22;
    v25 = *(v23 + 16);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_22C480170(v21, v22);

    v26 = sub_22C497AB8(v25, a2, a3, a4);

    if (v4)
    {
      sub_22C48FEE0(v24[2], v24[3]);
      swift_deallocUninitializedObject();

LABEL_19:

      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v24[4] = v27;

LABEL_22:

    return;
  }

  v7 = *(a1 + 16);
  v8 = sub_22C36E2B8(v7);
  if (!v8)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v11 = MEMORY[0x277D84F90];
LABEL_20:
    sub_22C3DB9B0(v11);

    goto LABEL_22;
  }

  v9 = v8;
  v33 = MEMORY[0x277D84F90];
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_22C3B63D4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v30 = v7;
    v31 = a2;
    v10 = 0;
    v11 = v33;
    v12 = v7 & 0xC000000000000001;
    v28 = v7 & 0xFFFFFFFFFFFFFF8;
    v29 = v9;
    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12)
      {
        v14 = MEMORY[0x2318B8460](v10, v7);
      }

      else
      {
        if (v10 >= *(v28 + 16))
        {
          goto LABEL_24;
        }

        v14 = *(v7 + 8 * v10 + 32);
      }

      swift_beginAccess();
      v15 = *(v14 + 16);

      v16 = v5;
      v17 = sub_22C492838(v15, v31, a3, v5);
      if (v4)
      {

        goto LABEL_19;
      }

      v18 = v17;

      v19 = *(v33 + 16);
      if (v19 >= *(v33 + 24) >> 1)
      {
        sub_22C3B63D4();
      }

      *(v33 + 16) = v19 + 1;
      *(v33 + 8 * v19 + 32) = v18;
      ++v10;
      v7 = v30;
      v5 = v16;
      if (v13 == v29)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_22C497F30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    v19 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v21 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C36D2A8();
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v20;
    v23 = *(v21 + 16);
    sub_22C49C9D8();
    swift_bridgeObjectRetain_n();
    sub_22C480170(v19, v20);

    a3(v23, a2);
    sub_22C49CA20();

    if (v4)
    {
      sub_22C48FEE0(v22[2], v22[3]);
      sub_22C36D2A8();
      swift_deallocUninitializedObject();
      sub_22C49C9D8();
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    v22[4] = v24;
    sub_22C37B9F8();
    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

  v6 = *(a1 + 16);
  v7 = sub_22C36E2B8(v6);
  if (!v7)
  {
    sub_22C37B9F8();
    swift_bridgeObjectRetain_n();
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    sub_22C3DB9B0(v10);
    sub_22C37B9F8();
    swift_bridgeObjectRelease_n();

LABEL_21:

    return;
  }

  v8 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_22C37B9F8();
  swift_bridgeObjectRetain_n();

  sub_22C3B63D4();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v29;
    v11 = v6 & 0xC000000000000001;
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    v26 = v8;
    v27 = v6;
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11)
      {
        v13 = MEMORY[0x2318B8460](v9, v6);
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v13 = *(v6 + 8 * v9 + 32);
      }

      sub_22C36CA70();
      v14 = *(v13 + 16);

      v15 = a4(v14, a2);
      if (v4)
      {
        sub_22C49C9D8();
        swift_bridgeObjectRelease_n();

        return;
      }

      v16 = v15;

      v17 = *(v29 + 16);
      if (v17 >= *(v29 + 24) >> 1)
      {
        sub_22C3B63D4();
      }

      *(v29 + 16) = v17 + 1;
      *(v29 + 8 * v17 + 32) = v16;
      ++v9;
      v6 = v27;
      if (v12 == v26)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_22C498210(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v19 = swift_allocObject();
    v19[2] = v16;
    v19[3] = v17;
    v20 = *(v18 + 16);
    sub_22C480170(v16, v17);

    v21 = sub_22C498210(v20, a2);

    if (v2)
    {
      sub_22C48FEE0(v19[2], v19[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v19[4] = v22;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = sub_22C36E2B8(v4);
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v7 = v5;
      v24 = MEMORY[0x277D84F90];

      sub_22C3B63D4();
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v6 = v24;
        v23 = v7;
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x2318B8460](v8, v4);
          }

          else
          {
            if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v10 = *(v4 + 8 * v8 + 32);
          }

          swift_beginAccess();
          v11 = *(v10 + 16);

          v12 = a2;
          v13 = sub_22C4930DC(v11, a2);
          if (v2)
          {

            return;
          }

          v14 = v13;

          v15 = *(v24 + 16);
          if (v15 >= *(v24 + 24) >> 1)
          {
            sub_22C3B63D4();
          }

          *(v24 + 16) = v15 + 1;
          *(v24 + 8 * v15 + 32) = v14;
          ++v8;
          a2 = v12;
          if (v9 == v23)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v6);
    }
  }
}

void sub_22C4984AC()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  if (v2 < 0)
  {
    v15 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C36D2A8();
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v16;
    v19 = *(v17 + 16);
    sub_22C480170(v15, v16);

    v20 = sub_22C4984AC(v9, v8, v19, v6, v4);

    if (v0)
    {
      sub_22C48FEE0(v18[2], v18[3]);
      sub_22C36D2A8();
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C37EBD0();
      _s3BoxCMa_0();
      v18[4] = sub_22C48C6B4(v20);
    }
  }

  else
  {
    v25 = &v25;
    v10 = *(v2 + 16);
    MEMORY[0x28223BE20](v1);
    v24[2] = v6;
    v24[3] = v4;
    v24[4] = v9;
    v24[5] = v8;
    sub_22C37EBD0();
    _s3BoxCMa();
    v11 = sub_22C90A68C();
    sub_22C37EBD0();
    v12 = type metadata accessor for PromptTree();

    v13 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    WitnessTable = swift_getWitnessTable();
    sub_22C48FF50(sub_22C49878C, v24, v11, v12, v13, WitnessTable, MEMORY[0x277D84950], &v26);

    if (!v0)
    {
      sub_22C37EBD0();
      sub_22C490324(v21, v22, v23);
    }
  }

  sub_22C36FB20();
}

uint64_t sub_22C4986CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  swift_beginAccess();
  v15 = *(v14 + 16);

  v16 = sub_22C4938BC(a2, a3, v15, a4, a5);

  if (v7)
  {
    *a6 = v7;
  }

  else
  {
    *a7 = v16;
  }

  return result;
}

uint64_t sub_22C4987B0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C4987F4(uint64_t *a1, unint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  if (a2 >> 61 == 1)
  {
    v12 = swift_projectBox();
    sub_22C49C7B0(v12, v11, type metadata accessor for PromptTreeIdentifier.Label);
    result = sub_22C49C7B0(v11, v8, type metadata accessor for PromptTreeIdentifier.Label);
    v13 = *a1;
    v14 = *(*a1 + 16);
    if (v14)
    {
      result = sub_22C62832C(v11);
      if (v15)
      {
        v14 = *(*(v13 + 56) + 8 * result);
      }

      else
      {
        v14 = 0;
      }
    }

    if (v14 == -1)
    {
      __break(1u);
    }

    else
    {
      v16 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *a1;
      sub_22C62C3D4();
      *a1 = v18;
      sub_22C49C758(v8, type metadata accessor for PromptTreeIdentifier.Label);
      return sub_22C49C758(v11, type metadata accessor for PromptTreeIdentifier.Label);
    }
  }

  return result;
}

uint64_t sub_22C49896C(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 61 != 4 || (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 1) != 0)
  {

    return v2;
  }

  v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  swift_beginAccess();
  v5 = *(v4 + 16);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C49C8E4(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);

  v6 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  v13 = v6;
  v12[2] = sub_22C4966D4();
  if (!v1)
  {

    v12[1] = v4;
    v7 = *(v4 + 16);
    v13 = v6;

    sub_22C496374();
    v9 = v8;

    v12[0] = v12;
    v13 = v9;
    MEMORY[0x28223BE20](v10);
    sub_22C3A5908(&qword_27D9BCF30, &qword_22C917258);
    sub_22C3D32C8(&qword_27D9BCF38, &qword_27D9BCF30, &qword_22C917258);
    v11 = sub_22C90A50C();

    if (v11)
    {
    }

    else
    {
      v2 = swift_allocObject();

      *(v2 + 16) = 0;
      *(v2 + 24) = 0xE000000000000000;
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C498C18(uint64_t a1, uint64_t a2)
{
  v6 = a1;

  v7 = sub_22C498D1C(sub_22C49C94C, v5, a2);
  sub_22C3A5908(&qword_27D9BCF40, qword_22C917260);
  sub_22C3D32C8(qword_27D9BCF48, &qword_27D9BCF40, qword_22C917260);
  v3 = sub_22C90A50C();

  return v3 & 1;
}

uint64_t sub_22C498D1C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  v15 = 0;
  v40 = a3;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

LABEL_8:
    v24 = *(v39 + 72);
    sub_22C49C7B0(*(v40 + 48) + v24 * (__clz(__rbit64(v21)) | (v15 << 6)), v11, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C49C6F8(v11, v14, type metadata accessor for PromptTreeIdentifier.Label);
    v25 = v37(v14);
    if (v3)
    {
      sub_22C49C758(v14, type metadata accessor for PromptTreeIdentifier.Label);
      v32 = v36;

      return v32;
    }

    v21 &= v21 - 1;
    if (v25)
    {
      sub_22C49C6F8(v14, v35, type metadata accessor for PromptTreeIdentifier.Label);
      v26 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B674C(0, *(v26 + 16) + 1, 1);
        v26 = v41;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v36 = v29 + 1;
        v34 = v29;
        sub_22C3B674C(v28 > 1, v29 + 1, 1);
        v30 = v36;
        v29 = v34;
        v26 = v41;
      }

      *(v26 + 16) = v30;
      v31 = *(v39 + 80);
      v36 = v26;
      result = sub_22C49C6F8(v35, v26 + ((v31 + 32) & ~v31) + v29 * v24, type metadata accessor for PromptTreeIdentifier.Label);
    }

    else
    {
      result = sub_22C49C758(v14, type metadata accessor for PromptTreeIdentifier.Label);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v36;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22C499048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) && (v6 = sub_22C62832C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = sub_22C62832C(a1);
    if (v11)
    {
      v9 = *(*(a3 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  return v8 < v9;
}

void sub_22C4990DC(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - v5;
  if (*(*v1 + 16))
  {
    sub_22C49C580(&v8 - v5);
    v7 = type metadata accessor for PromptTreeIdentifier(0);
    if (sub_22C370B74(v6, 1, v7) == 1)
    {
      sub_22C36DD28(v6, &qword_27D9BCF28, qword_22C9175E0);
      sub_22C83ACAC(*(*v1 + 16) - 1, a1);
    }

    else
    {
      sub_22C49C6F8(v6, a1, type metadata accessor for PromptTreeIdentifier);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C4991DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_22C90B62C();

        sub_22C909FFC();
        v21 = sub_22C90B66C();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_22C90B4FC() & 1) != 0)
          {
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v26 = *(v5 + 32);
            v48 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v48;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x28223BE20](v25);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v53;
              while (1)
              {
                v50 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_22C90B62C();

                sub_22C909FFC();
                v36 = sub_22C90B66C();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v30 = v53;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_22C90B4FC();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v52[v7];
                v52[v7] = v41 & ~v8;
                v3 = v54;
                v12 = v55;
                v30 = v53;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  sub_22C7EBDD0(v52, v48, v50, v5);
                  v5 = v42;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_22C49C470(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x2318B9880](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_22C36A674();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22C4996B4(unint64_t a1, uint64_t a2)
{
  v214 = *MEMORY[0x277D85DE8];
  v163 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v4 = *(*(v163 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v163);
  v7 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v184 = &v160 - v8;
  v9 = sub_22C90430C();
  v193 = *(v9 - 8);
  v10 = *(v193 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v192 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v160 - v13;
  v162 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v15 = *(*(v162 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v162);
  v199 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v181 = &v160 - v18;
  v201 = sub_22C902D0C();
  v19 = *(v201 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v201);
  v172 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v164 = &v160 - v23;
  v24 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v196 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v160 - v28;
  v30 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v165 = (&v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v160 = &v160 - v34;
  v35 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v161 = *(v35 - 8);
  v36 = *(v161 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v187 = (&v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v37);
  v202 = (&v160 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v186 = &v160 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v208 = &v160 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v205 = &v160 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v174 = (&v160 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v185 = (&v160 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v173 = &v160 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v203 = &v160 - v54;
  MEMORY[0x28223BE20](v53);
  v197 = &v160 - v55;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_157;
  }

  v190 = v14;
  v191 = v9;
  v57 = a1 + 56;
  v56 = *(a1 + 56);
  v58 = -1 << *(a1 + 32);
  v169 = ~v58;
  if (-v58 < 64)
  {
    v59 = ~(-1 << -v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & v56;
  v166 = (63 - v58) >> 6;
  v207 = (a2 + 56);
  v189 = v193 + 16;
  v188 = (v193 + 8);
  v200 = (v19 + 8);
  v179 = (v19 + 32);

  v61 = 0;
  v183 = a2;
  v204 = v24;
  v198 = v35;
  v180 = v29;
  v62 = a1;
  v168 = a1;
  v178 = v7;
  for (i = a1 + 56; ; v57 = i)
  {
    v63 = v60;
    v64 = v61;
    v206 = v61;
    if (v60)
    {
LABEL_11:
      v66 = (v63 - 1) & v63;
      v67 = v160;
      sub_22C49C7B0(v62[6] + *(v161 + 72) * (__clz(__rbit64(v63)) | (v64 << 6)), v160, type metadata accessor for PromptTreeIdentifier.Label);
      v68 = 0;
    }

    else
    {
      v65 = v61;
      while (1)
      {
        v64 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_161;
        }

        if (v64 >= v166)
        {
          break;
        }

        v63 = *(v57 + 8 * v64);
        ++v65;
        if (v63)
        {
          goto LABEL_11;
        }
      }

      v66 = 0;
      v68 = 1;
      v64 = v65;
      v67 = v160;
    }

    sub_22C36C640(v67, v68, 1, v35);
    v209 = v62;
    v210 = v57;
    v211 = v169;
    v212 = v64;
    v182 = v64;
    v177 = v66;
    v213 = v66;
    if (sub_22C370B74(v67, 1, v35) == 1)
    {
      sub_22C36DD28(v67, &qword_27D9BCF20, &unk_22C922830);
      goto LABEL_156;
    }

    sub_22C49C6F8(v67, v197, type metadata accessor for PromptTreeIdentifier.Label);
    v69 = *(a2 + 40);
    sub_22C90B62C();
    sub_22C48640C();
    v70 = sub_22C90B66C();
    v71 = -1 << *(a2 + 32);
    v60 = v70 & ~v71;
    v72 = v60 >> 6;
    a1 = 1 << v60;
    v7 = v196;
    v73 = v180;
    if (((1 << v60) & v207[v60 >> 6]) != 0)
    {
      break;
    }

LABEL_73:
    sub_22C49C758(v197, type metadata accessor for PromptTreeIdentifier.Label);
    v61 = v182;
    v60 = v177;
    v62 = v168;
  }

  v195 = ~v71;
  v206 = *(v161 + 72);
  while (1)
  {
    v194 = v72;
    v74 = v35;
    v75 = v203;
    sub_22C49C7B0(*(a2 + 48) + v206 * v60, v203, type metadata accessor for PromptTreeIdentifier.Label);
    v76 = *(v24 + 48);
    v77 = v75;
    v35 = v74;
    sub_22C49C7B0(v77, v73, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C49C7B0(v197, v73 + v76, type metadata accessor for PromptTreeIdentifier.Label);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v89 = v173;
    sub_22C49C7B0(v73, v173, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
      (*v200)(v89, v201);
      goto LABEL_38;
    }

    v94 = v73 + v76;
    v95 = v164;
    v96 = v201;
    (*v179)(v164, v94, v201);
    v97 = sub_22C902CFC();
    v98 = *v200;
    (*v200)(v95, v96);
    sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
    v99 = v96;
    v35 = v198;
    v98(v89, v99);
    v73 = v180;
    v7 = v196;
    sub_22C49C758(v180, type metadata accessor for PromptTreeIdentifier.Label);
    if (v97)
    {
      v73 = v197;
      goto LABEL_77;
    }

LABEL_72:
    v60 = (v60 + 1) & v195;
    v72 = v60 >> 6;
    a1 = 1 << v60;
    if ((v207[v60 >> 6] & (1 << v60)) == 0)
    {
      goto LABEL_73;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    v62 = v174;
    sub_22C49C7B0(v73, v174, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
      v93 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_37:
      sub_22C49C758(v62, v93);
LABEL_38:
      sub_22C36DD28(v73, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_72;
    }

    v90 = v73 + v76;
    v91 = v184;
    sub_22C49C6F8(v90, v184, type metadata accessor for PromptTreeIdentifier.TurnChange);
    v92 = *v91;
    switch(*v62)
    {
      case 3:
        if (v92 != 3)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 4:
        if (v92 != 4)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 5:
        if (v92 != 5)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 6:
        if (v92 != 6)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      default:
        if (*v62 != v92 || (v92 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_70;
        }

LABEL_53:
        v101 = v62[1] == *(v184 + 1) && v62[2] == *(v184 + 2);
        if (v101 || (sub_22C90B4FC()) && (v62[3] == *(v184 + 3) ? (v102 = v62[4] == *(v184 + 4)) : (v102 = 0), (v102 || (sub_22C90B4FC()) && (v62[5] == *(v184 + 5) ? (v103 = v62[6] == *(v184 + 6)) : (v103 = 0), v103 || (sub_22C90B4FC())))
        {
          v104 = *(v163 + 32);
          v105 = sub_22C90067C();
          sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
          if (v105)
          {
            sub_22C49C758(v184, type metadata accessor for PromptTreeIdentifier.TurnChange);
            sub_22C49C758(v62, type metadata accessor for PromptTreeIdentifier.TurnChange);
            sub_22C49C758(v197, type metadata accessor for PromptTreeIdentifier.Label);
            goto LABEL_77;
          }
        }

        else
        {
LABEL_70:
          sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
        }

        sub_22C49C758(v184, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v62, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v73, type metadata accessor for PromptTreeIdentifier.Label);
        break;
    }

    goto LABEL_72;
  }

  v62 = v185;
  sub_22C49C7B0(v73, v185, type metadata accessor for PromptTreeIdentifier.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
    v93 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
    goto LABEL_37;
  }

  v79 = v73 + v76;
  v64 = v181;
  sub_22C49C6F8(v79, v181, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
  if ((sub_22C48819C(*v62, *v64) & 1) == 0 || (v80 = v62[1], v81 = v80[2], v176 = *(v181 + 1), v82 = v176[2], v175 = v81, v81 != v82))
  {
LABEL_39:
    sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
LABEL_40:
    sub_22C49C758(v181, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C49C758(v62, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C49C758(v73, type metadata accessor for PromptTreeIdentifier.Label);
    a2 = v183;
    v7 = v196;
    goto LABEL_72;
  }

  if (!v175 || v80 == v176)
  {
LABEL_27:
    v87 = *(v162 + 24);
    v88 = sub_22C90962C();
    sub_22C49C758(v203, type metadata accessor for PromptTreeIdentifier.Label);
    if (v88)
    {
      sub_22C49C758(v197, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49C758(v181, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v62, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      a2 = v183;
      v7 = v196;
LABEL_77:
      v106 = sub_22C49C758(v73, type metadata accessor for PromptTreeIdentifier.Label);
      v107 = *(a2 + 32);
      v64 = ((1 << v107) + 63) >> 6;
      v62 = (8 * v64);
      if ((v107 & 0x3Fu) > 0xD)
      {
        goto LABEL_164;
      }

LABEL_78:
      v175 = v64;
      v176 = &v160;
      MEMORY[0x28223BE20](v106);
      v108 = &v160 - ((v62 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v108, v207, v62);
      v109 = *&v108[8 * v194] & ~a1;
      v181 = v108;
      *&v108[8 * v194] = v109;
      v110 = *(a2 + 16) - 1;
      v64 = v168;
      v62 = v165;
      v60 = i;
      v111 = v166;
      v112 = v182;
      a1 = v177;
LABEL_79:
      v180 = v110;
LABEL_80:
      while (2)
      {
        if (a1)
        {
          v182 = v112;
          v113 = v112;
LABEL_86:
          v114 = __clz(__rbit64(a1));
          v115 = (a1 - 1) & a1;
          sub_22C49C7B0(*(v64 + 48) + (v114 | (v113 << 6)) * v206, v62, type metadata accessor for PromptTreeIdentifier.Label);
          v116 = 0;
        }

        else
        {
          while (1)
          {
            v113 = v112 + 1;
            if (__OFADD__(v112, 1))
            {
              __break(1u);
              goto LABEL_159;
            }

            if (v113 >= v111)
            {
              break;
            }

            a1 = *(v60 + 8 * v113);
            ++v112;
            if (a1)
            {
              v182 = v113;
              goto LABEL_86;
            }
          }

          v182 = v112;
          v115 = 0;
          v116 = 1;
        }

        sub_22C36C640(v62, v116, 1, v35);
        v209 = v64;
        v210 = v60;
        v211 = v169;
        v212 = v182;
        v213 = v115;
        if (sub_22C370B74(v62, 1, v35) == 1)
        {
          sub_22C36DD28(v62, &qword_27D9BCF20, &unk_22C922830);
          sub_22C7EBF94();
          a2 = v155;
          goto LABEL_156;
        }

        v177 = v115;
        sub_22C49C6F8(v62, v205, type metadata accessor for PromptTreeIdentifier.Label);
        v117 = *(a2 + 40);
        sub_22C90B62C();
        sub_22C48640C();
        v118 = sub_22C90B66C();
        v119 = -1 << *(a2 + 32);
        v60 = v118 & ~v119;
        v120 = v60 >> 6;
        a1 = 1 << v60;
        if (((1 << v60) & v207[v60 >> 6]) == 0)
        {
LABEL_148:
          sub_22C49C758(v205, type metadata accessor for PromptTreeIdentifier.Label);
          v64 = v168;
          v62 = v165;
          v60 = i;
          v111 = v166;
          v112 = v182;
          a1 = v177;
          continue;
        }

        break;
      }

      v203 = ~v119;
      while (1)
      {
        v121 = a2;
        v122 = *(a2 + 48) + v60 * v206;
        a2 = v208;
        sub_22C49C7B0(v122, v208, type metadata accessor for PromptTreeIdentifier.Label);
        v123 = *(v204 + 48);
        sub_22C49C7B0(a2, v7, type metadata accessor for PromptTreeIdentifier.Label);
        sub_22C49C7B0(v205, v7 + v123, type metadata accessor for PromptTreeIdentifier.Label);
        v124 = swift_getEnumCaseMultiPayload();
        if (v124)
        {
          if (v124 == 1)
          {
            v125 = v202;
            sub_22C49C7B0(v7, v202, type metadata accessor for PromptTreeIdentifier.Label);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
              v140 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
              goto LABEL_112;
            }

            v126 = v7 + v123;
            v62 = v125;
            v64 = v199;
            sub_22C49C6F8(v126, v199, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            if ((sub_22C48819C(*v62, *v64) & 1) != 0 && (v127 = *(v199 + 8), v197 = v202[1], v128 = *(v197 + 16), v195 = v127, v129 = *(v127 + 16), v194 = v128, v128 == v129))
            {
              if (v194 && v197 != v195)
              {
                v35 = 0;
                v130 = (*(v193 + 80) + 32) & ~*(v193 + 80);
                v185 = (v197 + v130);
                v184 = (v195 + v130);
                while (v35 < *(v197 + 16))
                {
                  v131 = *(v193 + 72) * v35;
                  v64 = *(v193 + 16);
                  a2 = v190;
                  v62 = v191;
                  v7 = v189;
                  (v64)(v190, v185 + v131, v191);
                  if (v35 >= *(v195 + 16))
                  {
                    goto LABEL_160;
                  }

                  v132 = v192;
                  (v64)(v192, &v184[v131], v62);
                  sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578]);
                  v64 = sub_22C90A0BC();
                  v7 = v188;
                  v133 = *v188;
                  (*v188)(v132, v62);
                  v133(a2, v62);
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

                  if (v194 == ++v35)
                  {
                    goto LABEL_102;
                  }
                }

LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
                goto LABEL_163;
              }

LABEL_102:
              v134 = *(v162 + 24);
              v135 = sub_22C90962C();
              sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
              if (v135)
              {
                sub_22C49C758(v205, type metadata accessor for PromptTreeIdentifier.Label);
                sub_22C49C758(v199, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
                sub_22C49C758(v202, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
                v7 = v196;
                v154 = v196;
                a2 = v183;
                v35 = v198;
                goto LABEL_151;
              }
            }

            else
            {
LABEL_114:
              sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
            }

            sub_22C49C758(v199, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            sub_22C49C758(v202, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            v7 = v196;
            sub_22C49C758(v196, type metadata accessor for PromptTreeIdentifier.Label);
            v121 = v183;
            v35 = v198;
          }

          else
          {
            v125 = v187;
            sub_22C49C7B0(v7, v187, type metadata accessor for PromptTreeIdentifier.Label);
            if (swift_getEnumCaseMultiPayload() != 2)
            {
              sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
              v140 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_112:
              sub_22C49C758(v125, v140);
LABEL_113:
              sub_22C36DD28(v7, &qword_27D9BCBA0, &unk_22C9166D0);
              goto LABEL_147;
            }

            v137 = v178;
            sub_22C49C6F8(v7 + v123, v178, type metadata accessor for PromptTreeIdentifier.TurnChange);
            v138 = *v137;
            v139 = v125;
            switch(*v125)
            {
              case 3:
                if (v138 == 3)
                {
                  goto LABEL_128;
                }

                goto LABEL_145;
              case 4:
                if (v138 != 4)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              case 5:
                if (v138 != 5)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              case 6:
                if (v138 != 6)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              default:
                if (*v125 != v138 || (v138 - 7) >= 0xFFFFFFFC)
                {
                  goto LABEL_145;
                }

LABEL_128:
                v148 = v125[1] == v137[1] && v125[2] == v137[2];
                if (v148 || (sub_22C90B4FC()) && (v125[3] == v137[3] ? (v149 = v125[4] == v137[4]) : (v149 = 0), (v149 || (sub_22C90B4FC()) && (v125[5] == v137[5] ? (v150 = v125[6] == v137[6]) : (v150 = 0), v150 || (sub_22C90B4FC())))
                {
                  v151 = *(v163 + 32);
                  v152 = sub_22C90067C();
                  sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
                  if (v152)
                  {
                    sub_22C49C758(v137, type metadata accessor for PromptTreeIdentifier.TurnChange);
                    sub_22C49C758(v139, type metadata accessor for PromptTreeIdentifier.TurnChange);
                    sub_22C49C758(v205, type metadata accessor for PromptTreeIdentifier.Label);
                    v154 = v7;
                    goto LABEL_150;
                  }
                }

                else
                {
LABEL_145:
                  sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
                }

                sub_22C49C758(v137, type metadata accessor for PromptTreeIdentifier.TurnChange);
                sub_22C49C758(v139, type metadata accessor for PromptTreeIdentifier.TurnChange);
                sub_22C49C758(v7, type metadata accessor for PromptTreeIdentifier.Label);
                break;
            }
          }
        }

        else
        {
          v136 = v186;
          sub_22C49C7B0(v7, v186, type metadata accessor for PromptTreeIdentifier.Label);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
            (*v200)(v136, v201);
            goto LABEL_113;
          }

          v141 = v7 + v123;
          v142 = v172;
          v143 = v201;
          (*v179)(v172, v141, v201);
          v144 = sub_22C902CFC();
          v145 = *v200;
          (*v200)(v142, v143);
          sub_22C49C758(v208, type metadata accessor for PromptTreeIdentifier.Label);
          v146 = v143;
          v35 = v198;
          v145(v136, v146);
          v7 = v196;
          sub_22C49C758(v196, type metadata accessor for PromptTreeIdentifier.Label);
          if (v144)
          {
            v154 = v205;
LABEL_150:
            a2 = v121;
LABEL_151:
            sub_22C49C758(v154, type metadata accessor for PromptTreeIdentifier.Label);
            v153 = *&v181[8 * v120];
            *&v181[8 * v120] = v153 & ~a1;
            v101 = (v153 & a1) == 0;
            v64 = v168;
            v62 = v165;
            v60 = i;
            v111 = v166;
            v112 = v182;
            a1 = v177;
            if (!v101)
            {
              v110 = (v180 - 1);
              if (__OFSUB__(v180, 1))
              {
                __break(1u);
              }

              if (v180 == 1)
              {

                a2 = MEMORY[0x277D84FA0];
                goto LABEL_156;
              }

              goto LABEL_79;
            }

            goto LABEL_80;
          }
        }

LABEL_147:
        v60 = (v60 + 1) & v203;
        v120 = v60 >> 6;
        a1 = 1 << v60;
        a2 = v121;
        if ((v207[v60 >> 6] & (1 << v60)) == 0)
        {
          goto LABEL_148;
        }
      }
    }

    goto LABEL_40;
  }

  v7 = 0;
  v83 = (*(v193 + 80) + 32) & ~*(v193 + 80);
  v171 = v80 + v83;
  v170 = v176 + v83;
  while (1)
  {
    if (v7 >= v80[2])
    {
      goto LABEL_162;
    }

    v35 = *(v193 + 72) * v7;
    v64 = *(v193 + 16);
    a2 = v190;
    v62 = v191;
    (v64)(v190, &v171[v35], v191);
    if (v7 >= v176[2])
    {
      break;
    }

    v84 = v192;
    (v64)(v192, &v170[v35], v62);
    sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578]);
    v64 = sub_22C90A0BC();
    v85 = *v188;
    v86 = v84;
    v24 = v204;
    (*v188)(v86, v62);
    v85(a2, v62);
    v73 = v180;
    v35 = v198;
    v62 = v185;
    if ((v64 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v175 == ++v7)
    {
      goto LABEL_27;
    }
  }

LABEL_163:
  __break(1u);
LABEL_164:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_78;
  }

  v158 = swift_slowAlloc();
  v159 = sub_22C49C4F8(v158, v64, v207, v64, a2, v60, &v209);

  MEMORY[0x2318B9880](v158, -1, -1);
  a2 = v159;
LABEL_156:
  sub_22C36A674();
LABEL_157:
  v156 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_22C49B404(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_22C90B62C();

    sub_22C909FFC();
    v17 = sub_22C90B66C();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_22C90B4FC();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = a1[v20];
    a1[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_22C7EBDD0(a1, a2, v27, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C49B5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v102[1] = a2;
  v106 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v9 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v112 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22C90430C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v114 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v130 = v102 - v16;
  v105 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v17 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v128 = (v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_22C902D0C();
  v19 = *(v122 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v122);
  v111 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  v22 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v24 = v102 - v23;
  v25 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v108 = v102 - v27;
  v124 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v109 = *(v124 - 8);
  v28 = *(v109 + 64);
  v29 = MEMORY[0x28223BE20](v124);
  v131 = (v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v129 = (v102 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v121 = v102 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v138 = v102 - v36;
  MEMORY[0x28223BE20](v35);
  v137 = v102 - v37;
  v38 = *(a3 + 16);
  v39 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v40 = *(a1 + v39) & ((-1 << a4) - 1);
  v104 = a1;
  *(a1 + v39) = v40;
  v41 = v38 - 1;
  v135 = a3 + 56;
  v136 = a3;
  v115 = v12 + 16;
  v119 = v12;
  v113 = (v12 + 8);
  v120 = (v19 + 8);
  v110 = (v19 + 32);
  v107 = a5;
  v116 = v11;
  while (2)
  {
    v103 = v41;
    while (1)
    {
LABEL_3:
      v42 = *a5;
      v43 = a5[1];
      v45 = a5[2];
      v44 = a5[3];
      v46 = a5[4];
      if (v46)
      {
        v47 = a5[3];
LABEL_9:
        v48 = (v46 - 1) & v46;
        v49 = v108;
        sub_22C49C7B0(*(v42 + 48) + *(v109 + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v108, type metadata accessor for PromptTreeIdentifier.Label);
        v50 = 0;
      }

      else
      {
        while (1)
        {
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            goto LABEL_80;
          }

          if (v47 >= ((v45 + 64) >> 6))
          {
            break;
          }

          v46 = *(v43 + 8 * v47);
          ++v44;
          if (v46)
          {
            v44 = v47;
            goto LABEL_9;
          }
        }

        v48 = 0;
        v50 = 1;
        v49 = v108;
      }

      v51 = v124;
      sub_22C36C640(v49, v50, 1, v124);
      *a5 = v42;
      a5[1] = v43;
      a5[2] = v45;
      a5[3] = v44;
      a5[4] = v48;
      if (sub_22C370B74(v49, 1, v51) == 1)
      {
        sub_22C36DD28(v49, &qword_27D9BCF20, &unk_22C922830);

        sub_22C7EBF94();
        return;
      }

      sub_22C49C6F8(v49, v137, type metadata accessor for PromptTreeIdentifier.Label);
      v52 = v136;
      v53 = *(v136 + 40);
      sub_22C90B62C();
      sub_22C48640C();
      v54 = sub_22C90B66C();
      v55 = -1 << *(v52 + 32);
      v56 = v54 & ~v55;
      v57 = v56 >> 6;
      v58 = 1 << v56;
      v59 = v123;
      if (((1 << v56) & *(v135 + 8 * (v56 >> 6))) != 0)
      {
        break;
      }

LABEL_71:
      sub_22C49C758(v137, type metadata accessor for PromptTreeIdentifier.Label);
      a5 = v107;
    }

    v133 = ~v55;
    v134 = *(v109 + 72);
    while (1)
    {
      v132 = v57;
      v60 = v138;
      sub_22C49C7B0(*(v136 + 48) + v134 * v56, v138, type metadata accessor for PromptTreeIdentifier.Label);
      v61 = *(v59 + 48);
      sub_22C49C7B0(v60, v24, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49C7B0(v137, &v24[v61], type metadata accessor for PromptTreeIdentifier.Label);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v82 = v121;
        sub_22C49C7B0(v24, v121, type metadata accessor for PromptTreeIdentifier.Label);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
          (*v120)(v82, v122);
LABEL_36:
          sub_22C36DD28(v24, &qword_27D9BCBA0, &unk_22C9166D0);
          goto LABEL_70;
        }

        v87 = v111;
        v88 = v122;
        (*v110)(v111, &v24[v61], v122);
        v89 = sub_22C902CFC();
        v90 = *v120;
        (*v120)(v87, v88);
        sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
        v91 = v88;
        v59 = v123;
        v90(v82, v91);
        sub_22C49C758(v24, type metadata accessor for PromptTreeIdentifier.Label);
        if (v89)
        {
          v98 = v137;
          goto LABEL_74;
        }

        goto LABEL_70;
      }

      v63 = v131;
      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v63 = v129;
      sub_22C49C7B0(v24, v129, type metadata accessor for PromptTreeIdentifier.Label);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
        v86 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
LABEL_35:
        sub_22C49C758(v63, v86);
        goto LABEL_36;
      }

      v64 = &v24[v61];
      v65 = v63;
      v66 = v128;
      sub_22C49C6F8(v64, v128, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v67 = sub_22C48819C(*v65, *v66);
      v68 = v130;
      if ((v67 & 1) != 0 && (v69 = v129[1], v126 = v128[1], v127 = v69, v70 = *(v126 + 16), v125 = *(v69 + 16), v125 == v70))
      {
        if (v125 && v127 != v126)
        {
          v71 = 0;
          v72 = (*(v119 + 80) + 32) & ~*(v119 + 80);
          v118 = v127 + v72;
          v117 = v126 + v72;
          while (v71 < *(v127 + 16))
          {
            v73 = *(v119 + 72) * v71;
            v74 = *(v119 + 16);
            v75 = v116;
            v74(v68, v118 + v73, v116);
            if (v71 >= *(v126 + 16))
            {
              goto LABEL_81;
            }

            v76 = v114;
            v74(v114, v117 + v73, v75);
            sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578]);
            v77 = sub_22C90A0BC();
            v78 = *v113;
            v79 = v76;
            v68 = v130;
            (*v113)(v79, v75);
            v78(v68, v75);
            if ((v77 & 1) == 0)
            {
              goto LABEL_37;
            }

            if (v125 == ++v71)
            {
              goto LABEL_25;
            }
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

LABEL_25:
        v80 = *(v105 + 24);
        v81 = sub_22C90962C();
        sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
        if (v81)
        {
          sub_22C49C758(v137, type metadata accessor for PromptTreeIdentifier.Label);
          sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
          v99 = v129;
          v100 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
          goto LABEL_73;
        }
      }

      else
      {
LABEL_37:
        sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
      }

      sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v129, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v24, type metadata accessor for PromptTreeIdentifier.Label);
      v59 = v123;
LABEL_70:
      v56 = (v56 + 1) & v133;
      v57 = v56 >> 6;
      v58 = 1 << v56;
      if ((*(v135 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
      {
        goto LABEL_71;
      }
    }

    sub_22C49C7B0(v24, v131, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
      v86 = type metadata accessor for PromptTreeIdentifier.TurnChange;
      goto LABEL_35;
    }

    v83 = &v24[v61];
    v84 = v112;
    sub_22C49C6F8(v83, v112, type metadata accessor for PromptTreeIdentifier.TurnChange);
    v85 = *v84;
    switch(*v63)
    {
      case 3:
        if (v85 == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_68;
      case 4:
        if (v85 != 4)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      case 5:
        if (v85 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      case 6:
        if (v85 != 6)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      default:
        if (*v63 != v85 || (v85 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_68;
        }

LABEL_51:
        v93 = v63[1] == v84[1] && v63[2] == v84[2];
        if (!v93 && (sub_22C90B4FC() & 1) == 0 || (v63[3] == v84[3] ? (v94 = v63[4] == v84[4]) : (v94 = 0), !v94 && (sub_22C90B4FC() & 1) == 0 || (v63[5] == v84[5] ? (v95 = v63[6] == v84[6]) : (v95 = 0), !v95 && (sub_22C90B4FC() & 1) == 0)))
        {
LABEL_68:
          sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
LABEL_69:
          sub_22C49C758(v84, type metadata accessor for PromptTreeIdentifier.TurnChange);
          sub_22C49C758(v131, type metadata accessor for PromptTreeIdentifier.TurnChange);
          sub_22C49C758(v24, type metadata accessor for PromptTreeIdentifier.Label);
          goto LABEL_70;
        }

        v96 = *(v106 + 32);
        v97 = sub_22C90067C();
        sub_22C49C758(v138, type metadata accessor for PromptTreeIdentifier.Label);
        if ((v97 & 1) == 0)
        {
          goto LABEL_69;
        }

        sub_22C49C758(v84, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v131, type metadata accessor for PromptTreeIdentifier.TurnChange);
        v100 = type metadata accessor for PromptTreeIdentifier.Label;
        v99 = v137;
LABEL_73:
        sub_22C49C758(v99, v100);
        v98 = v24;
LABEL_74:
        sub_22C49C758(v98, type metadata accessor for PromptTreeIdentifier.Label);
        v101 = *(v104 + 8 * v132);
        *(v104 + 8 * v132) = v101 & ~v58;
        a5 = v107;
        if ((v101 & v58) == 0)
        {
          goto LABEL_3;
        }

        v41 = v103 - 1;
        if (__OFSUB__(v103, 1))
        {
          goto LABEL_82;
        }

        if (v103 != 1)
        {
          continue;
        }

        return;
    }
  }
}

uint64_t sub_22C49C470(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_22C49B404(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_22C49C4F8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_22C49B5F0(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void sub_22C49C580(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C887608(v3);
    v3 = v7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for PromptTreeIdentifier(0);
    sub_22C49C6F8(v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, type metadata accessor for PromptTreeIdentifier);
    *(v3 + 16) = v5;
    *v1 = v3;

    sub_22C36C640(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C49C688(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C49C6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C49C758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C49C7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_22C49C810(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {

    sub_22C7DC1A4();
    v4 = v3;
    v6 = v5;
    v8 = v7;
  }

  else
  {
    sub_22C7D9C10();
    v4 = v9;
    v6 = v10;
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
}

void sub_22C49C8C0(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_22C49C810(v1[2], a1);
}

uint64_t sub_22C49C8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C49C94C()
{
  v1 = *(v0 + 16);
  sub_22C48495C();
  return v2 & 1;
}

uint64_t sub_22C49CA2C()
{
  v2 = *(v0 + 16);
}

uint64_t sub_22C49CA7C()
{
}

uint64_t sub_22C49CA9C()
{
  v2 = *(*((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);
}

uint64_t sub_22C49CABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_22C49CBAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_22C49CC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t sub_22C49CC54(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v23 - v12;
  if (a2 >> 61 == 5 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 4)
  {
    v24 = v5;
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    swift_beginAccess();
    v15 = *(v14 + 16);
    type metadata accessor for PromptTreeIdentifier.Label(0);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C49CF3C();
    sub_22C909F0C();
    sub_22C4A0390();
    if (v2)
    {

      sub_22C49CF94(v13);
      sub_22C903F7C();
      v18 = sub_22C9063CC();
      v19 = sub_22C90AACC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_22C366000, v18, v19, "Could not generate a prompt string for a quotable string!", v20, 2u);
        MEMORY[0x2318B9880](v20, -1, -1);
      }

      else
      {
      }

      return (*(v24 + 8))(v8, v4);
    }

    else
    {
      v21 = v17;
      v22 = v16;

      sub_22C47715C(v22, v21);

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

unint64_t sub_22C49CF3C()
{
  result = qword_27D9BC4A0;
  if (!qword_27D9BC4A0)
  {
    type metadata accessor for PromptTreeIdentifier.Label(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4A0);
  }

  return result;
}

uint64_t sub_22C49CF94(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C49CFFC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD000, &qword_22C917398);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v55 - v4;
  v67 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v56 = *(v67 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x28223BE20](v67);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  v9 = &qword_27D9BD010;
  v69 = sub_22C3A5908(&qword_27D9BD010, &qword_22C9173A0);
  v10 = *(*(v69 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v69);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = &v55 - v15;
  v60 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v70 = a1;

  v22 = 0;
  v63 = v20;
  for (i = a1 + 64; ; v16 = i)
  {
    v23 = v22;
    if (!v19)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v9;
      v22 = v23;
LABEL_11:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v70;
      v28 = *(v70 + 48);
      v29 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
      v30 = *(v29 - 8);
      v61 = *(v30 + 72);
      v62 = v30;
      v31 = v65;
      (*(v30 + 16))(v65, v28 + v61 * v26, v29);
      v32 = v69;
      *(v31 + *(v69 + 48)) = *(*(v27 + 56) + 8 * v26);
      v33 = v66;
      sub_22C3D7EEC(v31, v66, v24, &qword_22C9173A0);
      v34 = *(v32 + 48);
      swift_getKeyPath();
      v71 = *(v33 + v34);

      v35 = v68;
      swift_getAtKeyPath();

      if (sub_22C370B74(v35, 1, v67) != 1)
      {
        break;
      }

      sub_22C36DD28(v33, v24, &qword_22C9173A0);
      result = sub_22C36DD28(v35, &qword_27D9BD000, &qword_22C917398);
      v23 = v22;
      v9 = v24;
      v20 = v63;
      v16 = i;
      if (!v19)
      {
LABEL_7:
        while (1)
        {
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v22 >= v20)
          {

            return v60;
          }

          v19 = *(v16 + 8 * v22);
          ++v23;
          if (v19)
          {
            v24 = v9;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v36 = v57;
    sub_22C49F054(v35, v57, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    sub_22C3D7EEC(v33, v59, v24, &qword_22C9173A0);
    sub_22C49F054(v36, v58, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    v37 = v60;
    v9 = v24;
    if (v60[3] <= v60[2])
    {
      sub_22C88BF00();
      v37 = v72;
    }

    v38 = v37[5];
    v39 = v37;
    sub_22C3D32C8(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388);
    result = sub_22C909F7C();
    v40 = v39 + 8;
    v60 = v39;
    v41 = -1 << *(v39 + 32);
    v42 = result & ~v41;
    v43 = v42 >> 6;
    if (((-1 << v42) & ~v39[(v42 >> 6) + 8]) == 0)
    {
      break;
    }

    v44 = __clz(__rbit64((-1 << v42) & ~v39[(v42 >> 6) + 8])) | v42 & 0x7FFFFFFFFFFFFFC0;
    v46 = v61;
    v45 = v62;
LABEL_25:
    v51 = *(v69 + 48);
    *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v52 = v60;
    v53 = v59;
    (*(v45 + 32))(v60[6] + v44 * v46, v59, v29);
    sub_22C49F054(v58, v52[7] + *(v56 + 72) * v44, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    ++v52[2];
    v54 = *(v53 + v51);

    v20 = v63;
  }

  v47 = 0;
  v48 = (63 - v41) >> 6;
  v46 = v61;
  v45 = v62;
  while (++v43 != v48 || (v47 & 1) == 0)
  {
    v49 = v43 == v48;
    if (v43 == v48)
    {
      v43 = 0;
    }

    v47 |= v49;
    v50 = v40[v43];
    if (v50 != -1)
    {
      v44 = __clz(__rbit64(~v50)) + (v43 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22C49D5DC(uint64_t a1)
{
  v141 = sub_22C3A5908(&qword_27D9BCFD0, &qword_22C917370);
  sub_22C36985C(v141);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36D5B4();
  v131 = v5;
  v6 = sub_22C3A5908(&qword_27D9BCFD8, &qword_22C917378);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v143 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v14 = v122 - v13;
  v15 = sub_22C3A5908(&qword_27D9BCFE0, &qword_22C917380);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  v139 = v19;
  v20 = sub_22C36BA0C();
  v21 = type metadata accessor for PromptTreeIdentifier(v20);
  v22 = sub_22C36985C(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v27 = v26 - v25;
  v124 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v28 = sub_22C369824(v124);
  v144 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v137 = v32 - v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  v138 = v122 - v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  v134 = v122 - v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v135 = v39;
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C3A5908(&qword_27D9BAEE0, &qword_22C90D788);
  sub_22C3D32C8(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388);
  v40 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  v148[0] = v40;
  v122[1] = a1;
  v41 = sub_22C495534();

  v122[0] = sub_22C49CFFC(v41);
  v123 = 0;
  v42 = 1 << *(v41 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v41 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  v127 = MEMORY[0x277D84F90];
  v140 = v14;
  while (v44)
  {
LABEL_9:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = *(*(v41 + 56) + ((v46 << 9) | (8 * v48)));
    if (*(v49 + 16))
    {
      v50 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) - 8);
      v51 = v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v52 = *(v50 + 72);
      sub_22C49F0B4();
      sub_22C49EF54(v53, v27, v54);
      v146 = v21;
      swift_storeEnumTagMultiPayload();

      v55 = v135;
      sub_22C486784();
      sub_22C374B34();
      sub_22C49EFFC(v27, v56);
      sub_22C38708C();
      sub_22C49EFB4(&qword_27D9BC4A0, v57);
      v58 = sub_22C909F0C();
      v59 = MEMORY[0x28223BE20](v58);
      v122[-2] = v55;
      v60 = v123;
      v145 = sub_22C60440C(v59, sub_22C49E800, &v122[-4], v49);
      v123 = v60;

      sub_22C3733E0();
      sub_22C49EFFC(v55, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = *(v127 + 16);
        sub_22C5913D8();
        v127 = v66;
      }

      sub_22C37B968();
      v63 = *(v62 + 16);
      v21 = v146;
      if (v63 >= *(v62 + 24) >> 1)
      {
        sub_22C5913D8();
        v127 = v67;
      }

      sub_22C37B968();
      *(v64 + 16) = v63 + 1;
      *(v64 + 8 * v63 + 32) = v145;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v41 + 64 + 8 * v47);
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_9;
    }
  }

  sub_22C38708C();
  sub_22C49EFB4(v68, v69);
  v70 = sub_22C909F0C();
  sub_22C37B968();
  v126 = *(v72 + 16);
  v125 = v72 + 32;
LABEL_16:
  if (v71 == v126)
  {
LABEL_44:

    sub_22C4923C4();
    v120 = v119;

    return v120;
  }

  sub_22C37B968();
  if (v73 < *(v74 + 16))
  {
    v75 = *(v125 + 8 * v73);
    v130 = v73 + 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v70;
    sub_22C8920A0(v148, v75, sub_22C49EE74, 0);
    v77 = v148[1];
    v136 = v148[0];
    v78 = v150;
    v79 = v151;
    v132 = v152;
    v133 = v153;
    v128 = v149;
    v80 = (v149 + 64) >> 6;
    v129 = v75;

    while (1)
    {
      LODWORD(v146) = isUniquelyReferenced_nonNull_native;
      v142 = v78;
      if (!v79)
      {
        v83 = v78;
        while (1)
        {
          v82 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          if (v82 >= v80)
          {
            v145 = 0;
            v94 = 1;
            v92 = v140;
            v89 = v141;
            goto LABEL_26;
          }

          v81 = *(v77 + 8 * v82);
          ++v83;
          if (v81)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v81 = v79;
      v82 = v78;
LABEL_25:
      v145 = (v81 - 1) & v81;
      v84 = v135;
      v85 = v136;
      v86 = *(v144 + 72) * (__clz(__rbit64(v81)) | (v82 << 6));
      sub_22C49EF54(*(v136 + 48) + v86, v135, type metadata accessor for PromptTreeIdentifier.Label);
      v87 = *(v85 + 56) + v86;
      v88 = v134;
      sub_22C49EF54(v87, v134, type metadata accessor for PromptTreeIdentifier.Label);
      v89 = v141;
      v90 = *(v141 + 48);
      sub_22C369D74();
      v91 = v84;
      v92 = v140;
      sub_22C49F054(v91, v140, v93);
      sub_22C49F054(v88, v92 + v90, type metadata accessor for PromptTreeIdentifier.Label);
      v94 = 0;
      v83 = v82;
LABEL_26:
      v95 = 1;
      sub_22C36C640(v92, v94, 1, v89);
      v96 = v143;
      sub_22C3D7EEC(v92, v143, &qword_27D9BCFD8, &qword_22C917378);
      v97 = sub_22C370B74(v96, 1, v89);
      v98 = v139;
      if (v97 != 1)
      {
        v99 = v131;
        sub_22C3D7EEC(v143, v131, &qword_27D9BCFD0, &qword_22C917370);
        v132(v99);
        sub_22C36DD28(v99, &qword_27D9BCFD0, &qword_22C917370);
        v95 = 0;
      }

      v100 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
      sub_22C36C640(v98, v95, 1, v100);
      v101 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
      v102 = sub_22C370B74(v98, 1, v101);
      v103 = v138;
      if (v102 == 1)
      {
        sub_22C36A674();

        v71 = v130;
        goto LABEL_16;
      }

      v104 = *(v101 + 48);
      sub_22C369D74();
      sub_22C49F054(v98, v103, v105);
      v106 = v137;
      sub_22C49F054(v98 + v104, v137, v101);
      v108 = sub_22C62832C(v103);
      v109 = v70[2];
      v110 = (v107 & 1) == 0;
      if (__OFADD__(v109, v110))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v111 = v107;
      if (v70[3] >= v109 + v110)
      {
        if (v146)
        {
          if (v107)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
          sub_22C90B16C();
          if (v111)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_22C88C24C();
        v112 = sub_22C62832C(v103);
        if ((v111 & 1) != (v113 & 1))
        {
          goto LABEL_49;
        }

        v108 = v112;
        if (v111)
        {
LABEL_36:
          sub_22C3733E0();
          sub_22C49EFFC(v103, v114);
          v70 = v147;
          sub_22C49EEF0(v106, v147[7] + *(v144 + 72) * v108);
          goto LABEL_41;
        }
      }

      v70 = v147;
      v147[(v108 >> 6) + 8] |= 1 << v108;
      v115 = *(v144 + 72) * v108;
      sub_22C49F054(v103, v70[6] + v115, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49F054(v106, v70[7] + v115, type metadata accessor for PromptTreeIdentifier.Label);
      v116 = v70[2];
      v117 = __OFADD__(v116, 1);
      v118 = v116 + 1;
      if (v117)
      {
        goto LABEL_46;
      }

      v70[2] = v118;
LABEL_41:
      isUniquelyReferenced_nonNull_native = 1;
      v78 = v83;
      v79 = v145;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  sub_22C90B54C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C49E0DC(uint64_t *a1, unint64_t a2)
{
  v83 = a1;
  v3 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C369838();
  v84 = v6 - v5;
  v7 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  v8 = sub_22C369824(v7);
  v79 = v9;
  v80 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v78 = v12 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v82 = v15;
  v16 = sub_22C36BA0C();
  v17 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v16);
  v18 = sub_22C36985C(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v23 = v22 - v21;
  v24 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v25 = sub_22C36985C(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v85 = v32;
  v33 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C(v33);
  v35 = *(v34 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v38 = &v78 - v37;
  v39 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C(v39);
  v41 = *(v40 + 64);
  sub_22C36D5A8();
  result = MEMORY[0x28223BE20](v42);
  v45 = &v78 - v44;
  if (a2 >> 61 != 2)
  {
    return result;
  }

  v46 = swift_projectBox();
  sub_22C49C688(v46, v38);
  v47 = *&v38[*(v33 + 48)];

  type metadata accessor for PromptTreeIdentifier(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C374B34();
    v50 = v38;
    return sub_22C49EFFC(v50, v49);
  }

  sub_22C3D7EEC(v38, v45, &qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C49F0CC();
  sub_22C49EF54(v45, v23, v48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C36DD28(v45, &qword_27D9BCBA8, &qword_22C9166E0);
    sub_22C38867C();
    v50 = v23;
    return sub_22C49EFFC(v50, v49);
  }

  sub_22C3727B0();
  v51 = v85;
  sub_22C49F054(v23, v85, v52);
  v53 = &v45[*(v39 + 36)];
  v54 = *(v53 + 1);
  v86 = *v53;
  v87 = v54;
  sub_22C36BCEC();
  sub_22C49EF54(v51, v30, v55);
  sub_22C38B94C();
  sub_22C49EFB4(v56, v57);

  v58 = v82;
  sub_22C90678C();
  sub_22C49F0B4();
  v59 = v84;
  sub_22C49EF54(v45, v84, v60);
  v61 = v83;
  v62 = *v83;
  swift_isUniquelyReferenced_nonNull_native();
  v86 = *v61;
  v63 = v86;
  v64 = sub_22C628A00();
  if (__OFADD__(*(v63 + 16), (v65 & 1) == 0))
  {
    __break(1u);
    goto LABEL_17;
  }

  v66 = v64;
  v67 = v65;
  sub_22C3A5908(&qword_27D9BD020, &unk_22C9173E0);
  v68 = sub_22C90B15C();
  v69 = v86;
  if ((v68 & 1) == 0)
  {
    v73 = v79;
    v72 = v80;
    goto LABEL_12;
  }

  v70 = sub_22C628A00();
  v73 = v79;
  v72 = v80;
  if ((v67 & 1) != (v71 & 1))
  {
LABEL_17:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v66 = v70;
LABEL_12:
  *v61 = v69;
  if ((v67 & 1) == 0)
  {
    (*(v73 + 16))(v78, v58, v72);
    sub_22C62F728();
  }

  v74 = *(v69 + 56) + 8 * v66;
  sub_22C3D0F50();
  v75 = *(*v74 + 16);
  sub_22C3D1114(v75);
  (*(v73 + 8))(v58, v72);
  sub_22C49F0E4();
  sub_22C49EFFC(v85, v76);
  sub_22C36DD28(v45, &qword_27D9BCBA8, &qword_22C9166E0);
  v77 = *v74;
  *(v77 + 16) = v75 + 1;
  return sub_22C49F054(v59, v77 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v75, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
}

uint64_t sub_22C49E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for PromptTreeIdentifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C49EF54(a2, v14, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  swift_storeEnumTagMultiPayload();
  sub_22C486784();
  sub_22C49EFFC(v14, type metadata accessor for PromptTreeIdentifier);
  sub_22C49EF54(a3, v8, type metadata accessor for PromptTreeIdentifier.Label);
  sub_22C36C640(v8, 0, 1, v9);
  return sub_22C603470();
}

uint64_t sub_22C49E81C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a2;
  v108 = a3;
  v4 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - v8;
  v109 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v10 = sub_22C36985C(v109);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v97 - v17;
  v19 = sub_22C3A5908(&qword_27D9BD000, &qword_22C917398);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D5B4();
  v106 = v23;
  v24 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  v25 = sub_22C369824(v24);
  v104 = v26;
  v105 = v25;
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v102 = v30;
  v31 = sub_22C36BA0C();
  v103 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v31);
  v32 = sub_22C36985C(v103);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v98 = v36 - v35;
  v37 = sub_22C36BA0C();
  v38 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v37);
  v39 = sub_22C36985C(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v44 = v43 - v42;
  v100 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v45 = sub_22C36985C(v100);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C369ABC();
  v99 = v48 - v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  v101 = v51;
  v52 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C(v52);
  v54 = *(v53 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v55);
  sub_22C36D5B4();
  v57 = v56;
  v58 = sub_22C36BA0C();
  v110 = type metadata accessor for PromptTreeIdentifier(v58);
  v59 = sub_22C36985C(v110);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v64 = v63 - v62;
  if (a1 >> 61 == 1)
  {
    v70 = swift_projectBox();
    sub_22C49EF54(v70, v18, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C605778(v18, v108);
    sub_22C3733E0();
    sub_22C49EFFC(v18, v71);
    if (sub_22C370B74(v9, 1, v109) != 1)
    {
      sub_22C369D74();
      sub_22C49F054(v9, v15, v73);
      v74 = swift_allocBox();
      sub_22C49F054(v15, v75, v15);
      return v74 | 0x2000000000000000;
    }

    sub_22C36DD28(v9, &qword_27D9BCF20, &unk_22C922830);
    goto LABEL_8;
  }

  if (a1 >> 61 != 2 || (v65 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300), v66 = swift_projectBox(), v109 = *(v66 + *(v65 + 48)), swift_getEnumCaseMultiPayload() != 1))
  {
LABEL_8:

    return a1;
  }

  sub_22C49EF54(v66, v64, type metadata accessor for PromptTreeIdentifier);
  sub_22C3D7EEC(v64, v57, &qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C49F0CC();
  sub_22C49EF54(v57, v44, v67);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = v109;

    sub_22C38867C();
    sub_22C49EFFC(v44, v69);
  }

  else
  {
    sub_22C3727B0();
    v76 = v101;
    sub_22C49F054(v44, v101, v77);
    v78 = (v57 + *(v52 + 36));
    v79 = v78[1];
    v111 = *v78;
    v112 = v79;
    sub_22C36BCEC();
    sub_22C49EF54(v76, v99, v80);
    sub_22C38B94C();
    sub_22C49EFB4(v81, v82);
    v68 = v109;

    v83 = v102;
    sub_22C90678C();
    v84 = v106;
    sub_22C605738(v83, v107);
    (*(v104 + 8))(v83, v105);
    sub_22C49F0E4();
    sub_22C49EFFC(v76, v85);
    if (sub_22C370B74(v84, 1, v103) != 1)
    {
      sub_22C36DD28(v57, &qword_27D9BCBA8, &qword_22C9166E0);
      v92 = v98;
      sub_22C49F054(v84, v98, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      v93 = swift_allocBox();
      v95 = v94;
      v96 = *(v65 + 48);
      sub_22C49F054(v92, v94, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      swift_storeEnumTagMultiPayload();
      *(v95 + v96) = v68;
      return v93 | 0x4000000000000000;
    }

    sub_22C36DD28(v84, &qword_27D9BD000, &qword_22C917398);
  }

  v86 = swift_allocBox();
  v88 = v87;
  v89 = *(v65 + 48);
  sub_22C49F0B4();
  sub_22C49EF54(v57, v90, v91);
  sub_22C36DD28(v57, &qword_27D9BCBA8, &qword_22C9166E0);
  swift_storeEnumTagMultiPayload();
  *(v88 + v89) = v68;
  return v86 | 0x4000000000000000;
}

uint64_t sub_22C49EE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BCFD0, &qword_22C917370) + 48);
  v5 = a2 + *(sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0) + 48);

  return sub_22C88FB60(a2, v5, a1);
}

uint64_t sub_22C49EEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C49EF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C49EFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C49EFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C49F054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_22C49F0FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v116 = a8;
  v124 = a5;
  v126 = a7;
  v133 = a6;
  v120 = a2;
  v131 = a9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1;
    v70 = a4;
    v74 = v9;
    v135 = MEMORY[0x277D84F90];
    sub_22C3B628C();
    v128 = v135;
    v19 = sub_22C57D74C(v11);
    v20 = 0;
    v21 = v11 + 56;
    v78 = v11 + 64;
    v82 = v11 + 56;
    v86 = v10;
    v90 = v11;
    if ((v19 & 0x8000000000000000) == 0)
    {
      while (v19 < 1 << *(v11 + 32))
      {
        if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v11 + 36) != v12)
        {
          goto LABEL_32;
        }

        v22 = *(v11 + 48) + 24 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        LODWORD(v110) = *(v22 + 16);
        HIDWORD(v110) = v13;
        sub_22C38614C(15, *v22, v13, v14, v15, v16, v17, v18, v70, v74, v78, v82, v86, v90, v20, 1 << v19, v19 >> 6, v12, v110, v116, v120);
        v25 = sub_22C90A47C();
        sub_22C37BA04(v25, v26, v27, v28, v29, v30, v31, v32, v71, v75, v79, v83, v87, v91, v94, v98, v102, v106, v111, v117, v121, v124, v126, v128, v131, v133);
        sub_22C3858B4();
        v33 = *(sub_22C90AD0C() + 16);

        sub_22C4A7C6C(0xFuLL, v23, v10, v11);
        sub_22C37B5E0();
        if (!v36)
        {
          goto LABEL_33;
        }

        if (__OFADD__(v34, v35))
        {
          goto LABEL_34;
        }

        sub_22C4A7E20(0xFuLL, v34 + v35, v118, v132);
        v38 = v37;
        sub_22C38614C(15, v24, v39, v40, v41, v42, v43, v44, v72, v76, v80, v84, v88, v92, v95, v99, v103, v107, v112, v118, v122);
        v45 = sub_22C90A47C();
        sub_22C37BA04(v45, v46, v47, v48, v49, v50, v51, v52, v73, v77, v81, v85, v89, v93, v96, v100, v104, v108, v113, v119, v123, v125, v127, v129, v132, v134);
        v53 = *(sub_22C90AD0C() + 16);

        sub_22C4A7C6C(0xFuLL, v24, v10, v11);
        sub_22C37B5E0();
        if (!v36)
        {
          goto LABEL_35;
        }

        if (__OFADD__(v54, v55))
        {
          goto LABEL_36;
        }

        sub_22C4A7E20(0xFuLL, v54 + v55, v116, v131);
        if (v56 >> 14 < v38 >> 14)
        {
          goto LABEL_37;
        }

        v57 = v56;
        v58 = v130;
        v59 = *(v130 + 16);
        if (v59 >= *(v130 + 24) >> 1)
        {
          sub_22C3B628C();
          v58 = v130;
        }

        *(v58 + 16) = v59 + 1;
        v60 = v58 + 24 * v59;
        *(v60 + 32) = v38;
        *(v60 + 40) = v57;
        *(v60 + 48) = v114;
        if (v115)
        {
          goto LABEL_41;
        }

        v10 = v86;
        v11 = v90;
        v61 = 1 << *(v90 + 32);
        v21 = v82;
        if (v19 >= v61)
        {
          goto LABEL_38;
        }

        if ((*(v82 + 8 * v105) & v101) == 0)
        {
          goto LABEL_39;
        }

        v128 = v58;
        if (*(v90 + 36) != v109)
        {
          goto LABEL_40;
        }

        sub_22C3855C8();
        if (v36)
        {
          v65 = v64 << 6;
          v66 = v64 + 1;
          v67 = (v78 + 8 * v64);
          while (v66 < (v61 + 63) >> 6)
          {
            v69 = *v67++;
            v68 = v69;
            v65 += 64;
            ++v66;
            if (v69)
            {
              sub_22C3A5038(v19, v62, 0);
              v61 = __clz(__rbit64(v68)) + v65;
              goto LABEL_26;
            }
          }

          sub_22C3A5038(v19, v62, 0);
        }

        else
        {
          v61 = __clz(__rbit64(v63)) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

LABEL_26:
        v20 = v97 + 1;
        if (v97 + 1 == v86)
        {
          goto LABEL_29;
        }

        v13 = 0;
        v12 = *(v90 + 36);
        v19 = v61;
        if (v61 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_22C49F4D4()
{
  sub_22C370030();
  v1 = v0;
  v36 = sub_22C902D0C();
  v2 = sub_22C369824(v36);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v35 = v8 - v7;
  v9 = *(v1 + 16);
  if (v9)
  {
    v40 = MEMORY[0x277D84F90];
    sub_22C3B7290();
    v12 = sub_22C4AAD90(v1);
    v13 = v40;
    v14 = 0;
    v15 = v1 + 64;
    v33 = v9;
    v34 = v4;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v1 + 32))
      {
        v16 = v12 >> 6;
        if ((*(v15 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v1 + 36) != v10)
        {
          goto LABEL_24;
        }

        v37 = v11;
        v38 = v14;
        v39 = v10;
        v17 = v13;
        v18 = (*(v4 + 16))(v35, *(v1 + 56) + *(v4 + 72) * v12, v36);
        v19 = sub_22C4A60B4(v18);
        (*(v4 + 8))(v35, v36);
        v20 = v17;
        v21 = *(v17 + 16);
        if (v21 >= *(v17 + 24) >> 1)
        {
          sub_22C3B7290();
          v20 = v17;
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21 + 32) = v19;
        v22 = 1 << *(v1 + 32);
        if (v12 >= v22)
        {
          goto LABEL_25;
        }

        v15 = v1 + 64;
        if ((*(v1 + 64 + 8 * v16) & (1 << v12)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v1 + 36) != v39)
        {
          goto LABEL_27;
        }

        sub_22C3855C8();
        if (v25)
        {
          v26 = v16 << 6;
          v27 = v16 + 1;
          v28 = (v1 + 72 + 8 * v16);
          v4 = v34;
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              v31 = v13;
              sub_22C3A5038(v12, v23, v37 & 1);
              v13 = v31;
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_18;
            }
          }

          v32 = v13;
          sub_22C3A5038(v12, v23, v37 & 1);
          v13 = v32;
        }

        else
        {
          v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v4 = v34;
        }

LABEL_18:
        v14 = v38 + 1;
        if (v38 + 1 == v33)
        {
          goto LABEL_21;
        }

        v11 = 0;
        v10 = *(v1 + 36);
        v12 = v22;
        if (v22 < 0)
        {
          break;
        }
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22C36FB20();
  }
}

void sub_22C49F7C8(uint64_t a1)
{
  v48 = sub_22C902D0C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C902C4C();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = v1;
    v52 = MEMORY[0x277D84F90];
    sub_22C3B7290();
    v10 = v52;
    v13 = sub_22C4AAD90(a1);
    v14 = 0;
    v15 = a1 + 64;
    v41 = (v3 + 8);
    v42 = v6 + 16;
    v43 = a1 + 64;
    v44 = v6;
    v39 = a1;
    v40 = v6 + 8;
    v37 = a1 + 72;
    v38 = v9;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(a1 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_24;
        }

        v49 = v12;
        v50 = v14;
        v51 = v11;
        v17 = v44;
        v18 = *(a1 + 56) + *(v44 + 72) * v13;
        v19 = v10;
        v21 = v45;
        v20 = v46;
        (*(v44 + 16))(v45, v18, v46);
        v22 = v47;
        v23 = sub_22C902C1C();
        v24 = sub_22C4A60B4(v23);
        (*v41)(v22, v48);
        v25 = v21;
        v10 = v19;
        (*(v17 + 8))(v25, v20);
        v52 = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        a1 = v39;
        if (v27 >= v26 >> 1)
        {
          sub_22C3B7290();
          v10 = v52;
        }

        *(v10 + 16) = v27 + 1;
        *(v10 + 8 * v27 + 32) = v24;
        v28 = 1 << *(a1 + 32);
        v15 = v43;
        if (v13 >= v28)
        {
          goto LABEL_25;
        }

        v29 = *(v43 + 8 * v16);
        if ((v29 & (1 << v13)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v51)
        {
          goto LABEL_27;
        }

        v30 = v29 & (-2 << (v13 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v16 << 6;
          v32 = v16 + 1;
          v33 = (v37 + 8 * v16);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_22C3A5038(v13, v51, v49 & 1);
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_18;
            }
          }

          sub_22C3A5038(v13, v51, v49 & 1);
        }

LABEL_18:
        v14 = v50 + 1;
        if (v50 + 1 == v38)
        {
          return;
        }

        v12 = 0;
        v11 = *(a1 + 36);
        v13 = v28;
        if (v28 < 0)
        {
          break;
        }
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
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_22C49FE24(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_22C90963C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v37 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v48 = *(a2 + 16);
  v45 = (v4 + 16);
  v40 = v4 + 32;
  v41 = v4;
  v39 = (v4 + 8);
  v38 = xmmword_22C90F800;
  v42 = v3;
  v43 = a2;
  while (1)
  {
    if (v48 == v12)
    {

      return v13;
    }

    if (v12 >= *(a2 + 16))
    {
      break;
    }

    v14 = *(v46 + 80);
    v15 = *(v46 + 72);
    v16 = v49;
    sub_22C4AB80C();
    (*v45)(v50, &v16[*(v47 + 24)], v3);
    sub_22C628358();
    v19 = v18;
    v20 = v13[2];
    v21 = (v17 & 1) == 0;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v13[3] < v20 + v21)
    {
      sub_22C88C544();
      v13 = v51;
      sub_22C628358();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v19 = v23;
    }

    if (v22)
    {
      (*v39)(v50, v3);
      v25 = v13[7];
      sub_22C4AB198();
      v26 = *(v25 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v19) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v26 + 16);
        sub_22C591554();
        v26 = v34;
        *(v25 + 8 * v19) = v34;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C591554();
        v26 = v35;
        *(v25 + 8 * v19) = v35;
      }

      a2 = v43;
      *(v26 + 16) = v28 + 1;
      sub_22C4AB198();
      v3 = v42;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAE98, &qword_22C90D740);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      sub_22C4AB198();
      v13[(v19 >> 6) + 8] |= 1 << v19;
      (*(v41 + 32))(v13[6] + *(v41 + 72) * v19, v50, v3);
      *(v13[7] + 8 * v19) = v29;
      v30 = v13[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v13[2] = v32;
    }

    ++v12;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4A02E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, void, void), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *(result + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = a3(0, v8 & ~(v8 >> 63), 0, MEMORY[0x277D84F90]);

    a4(v11);

    a5(v12);
    return v13;
  }

  return result;
}

void sub_22C4A0390()
{
  sub_22C370030();
  v253 = v3;
  sub_22C36D770();
  v5 = v4;
  v262 = v6;
  v7 = sub_22C9063DC();
  v8 = sub_22C369824(v7);
  v249 = v9;
  v250 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v251 = v13 - v12;
  v252 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v14 = sub_22C36985C(v252);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v247 = v17 - v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v20);
  v246 = v233 - v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v245 = v233 - v23;
  sub_22C369930();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v233 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v233 - v29;
  MEMORY[0x28223BE20](v28);
  sub_22C3804A4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v233 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v233 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v233 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = v233 - v41;
  v43 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v44 = sub_22C369914(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v49 = v48 - v47;
  switch(v5 >> 61)
  {
    case 1uLL:
      v67 = v49;
      swift_projectBox();
      sub_22C369D8C();
      sub_22C4AB80C();
      v247 = v67;
      v68 = sub_22C6053F8(v67, v262);
      if ((~v68 & 0xF000000000000007) == 0)
      {
        v69 = v251;
        sub_22C903F7C();

        v70 = sub_22C9063CC();
        v71 = sub_22C90AADC();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v260 = v73;
          *v72 = 136315138;
          sub_22C4AB8EC();
          v74 = sub_22C491AFC();
          v75 = sub_22C4A25D4(v74);
          v77 = v76;

          v78 = sub_22C36F9F4(v75, v77, &v260);

          *(v72 + 4) = v78;
          sub_22C36FF94(v73);
          MEMORY[0x2318B9880](v73, -1, -1);
          MEMORY[0x2318B9880](v72, -1, -1);
        }

        (*(v249 + 8))(v69, v250);
        sub_22C369D8C();
        v79 = v247;
        sub_22C4AB80C();
        sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240);
        swift_willThrowTypedImpl();
        sub_22C3733F8();
        sub_22C4AB864(v79, v80);
        goto LABEL_97;
      }

      v90 = v68;
      sub_22C4AB8EC();
      v93 = sub_22C4A0390(v91, v92, v34);
      if (v0)
      {
        sub_22C3733F8();
        sub_22C4AB864(v247, v94);
        sub_22C4546F8(v90);
        goto LABEL_77;
      }

      v248 = v93;
      sub_22C36D770();
      sub_22C3733F8();
      sub_22C4AB864(v247, v159);
      sub_22C4546F8(v90);
      goto LABEL_96;
    case 2uLL:
      v56 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v57 = *(swift_projectBox() + *(v56 + 48));
      sub_22C3870A4();
      swift_beginAccess();
      v58 = *(v57 + 16);

      sub_22C4AB8EC();
      v61 = sub_22C4A0390(v59, v60, v42);

      if (v0)
      {
        goto LABEL_77;
      }

      v248 = v61;
      v239 = 0;
      goto LABEL_96;
    case 3uLL:
      v62 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v63 = *(v62 + 16);

      sub_22C4AB8EC();
      v66 = sub_22C4A3004(v64, v65, v40);
      if (v0)
      {

        goto LABEL_77;
      }

      v100 = v66;
      v233[1] = v62;
      sub_22C36D770();

      v101 = 0;
      v102 = 0;
      v235 = *(v100 + 16);
      v236 = v100;
      v234 = v100 + 32;
      v103 = MEMORY[0x277D84FA0];
      v104 = 0xE000000000000000;
      while (2)
      {
        v248 = v102;
        if (v101 == v235)
        {

          goto LABEL_95;
        }

        if (v101 >= *(v236 + 16))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v238 = v101;
        v105 = (v234 + 24 * v101);
        v106 = *v105;
        v107 = v105[1];
        v108 = v105[2];
        v260 = v102;
        v261 = v104;

        v244 = v106;
        v247 = v107;
        MEMORY[0x2318B7850](v106, v107);
        v245 = v261;
        v246 = v260;
        v109 = *(v108 + 16);
        v249 = v108;
        if (!v109)
        {
          v110 = MEMORY[0x277D84F90];
LABEL_57:
          v102 = v246;
          if (!__OFADD__(*(v110 + 16), *(v103 + 16)))
          {
            sub_22C591170();
            v260 = v146;

            sub_22C3CCEC4(v147);
            sub_22C3CCE08(v110);
            v148 = v260;
            v149 = *(v260 + 16);
            v150 = sub_22C3AF8F8();
            v151 = MEMORY[0x2318B7DB0](v149, &type metadata for PromptString.TaggedRange, v150);
            v258 = v151;
            v152 = *(v148 + 16);
            if (v152)
            {
              v153 = (v148 + 48);
              do
              {
                v154 = *(v153 - 2);
                v155 = *(v153 - 1);
                v156 = *v153;
                v153 += 24;
                sub_22C6A45F4();
                --v152;
              }

              while (v152);

              v157 = v258;
            }

            else
            {
              v157 = v151;
            }

            v158 = v238 + 1;

            v101 = v158;
            v104 = v245;
            v103 = v157;
            continue;
          }

          goto LABEL_99;
        }

        break;
      }

      v237 = v103;
      v260 = MEMORY[0x277D84F90];
      sub_22C3B628C();
      v110 = v260;
      v111 = sub_22C57D74C(v108);
      v114 = v111;
      v253 = 0;
      v115 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v115 = v102;
      }

      v263 = v108 + 56;
      v116 = 7;
      if (((v104 >> 60) & ((v102 & 0x800000000000000) == 0)) != 0)
      {
        v116 = 11;
      }

      v243 = v116 | (v115 << 16);
      v240 = v108 + 64;
      v242 = v104;
      v241 = v109;
      if ((v111 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if (v114 >= 1 << *(v108 + 32))
          {
            goto LABEL_78;
          }

          v117 = v114 >> 6;
          if ((*(v263 + 8 * (v114 >> 6)) & (1 << v114)) == 0)
          {
            goto LABEL_79;
          }

          if (*(v108 + 36) != v112)
          {
            goto LABEL_80;
          }

          v250 = 1 << v114;
          v251 = v112;
          LODWORD(v252) = v113;
          v118 = *(v108 + 48) + 24 * v114;
          v119 = *v118;
          v120 = *(v118 + 8);
          v121 = *(v118 + 16);
          sub_22C4A7C6C(0xFuLL, v243, v102, v104);
          v123 = v122;
          v124 = v119;
          v125 = v244;
          v126 = v247;
          sub_22C4A7C6C(0xFuLL, v124, v244, v247);
          v128 = v127;
          sub_22C4A7C6C(0xFuLL, v120, v125, v126);
          v112 = v123 + v128;
          if (__OFADD__(v123, v128))
          {
            goto LABEL_81;
          }

          v129 = v111;
          v131 = v245;
          v130 = v246;
          sub_22C4A7E20(0xFuLL, v112, v246, v245);
          v112 = v123 + v129;
          if (__OFADD__(v123, v129))
          {
            goto LABEL_82;
          }

          v132 = v111;
          sub_22C4A7E20(0xFuLL, v112, v130, v131);
          if (v111 >> 14 < v132 >> 14)
          {
            goto LABEL_83;
          }

          v133 = v111;
          v260 = v110;
          v134 = *(v110 + 16);
          if (v134 >= *(v110 + 24) >> 1)
          {
            sub_22C3B628C();
            v110 = v260;
          }

          *(v110 + 16) = v134 + 1;
          v135 = v110 + 24 * v134;
          *(v135 + 32) = v132;
          *(v135 + 40) = v133;
          *(v135 + 48) = v121;
          if (v252)
          {
            goto LABEL_100;
          }

          v102 = v248;
          v108 = v249;
          v136 = 1 << *(v249 + 32);
          v104 = v242;
          v112 = v251;
          if (v114 >= v136)
          {
            goto LABEL_84;
          }

          if ((*(v263 + 8 * v117) & v250) == 0)
          {
            goto LABEL_85;
          }

          if (*(v249 + 36) != v251)
          {
            goto LABEL_86;
          }

          sub_22C3855C8();
          if (v139)
          {
            v141 = v117 << 6;
            v142 = v117 + 1;
            v143 = (v240 + 8 * v117);
            v140 = v241;
            while (v142 < (v136 + 63) >> 6)
            {
              v145 = *v143++;
              v144 = v145;
              v141 += 64;
              ++v142;
              if (v145)
              {
                v111 = sub_22C3A5038(v114, v137, 0);
                v136 = __clz(__rbit64(v144)) + v141;
                goto LABEL_51;
              }
            }

            v111 = sub_22C3A5038(v114, v137, 0);
LABEL_51:
            v108 = v249;
          }

          else
          {
            v136 = __clz(__rbit64(v138)) | v114 & 0x7FFFFFFFFFFFFFC0;
            v140 = v241;
          }

          if (v253 + 1 == v140)
          {
            break;
          }

          ++v253;
          v113 = 0;
          v112 = *(v108 + 36);
          v114 = v136;
          if (v136 < 0)
          {
            goto LABEL_78;
          }
        }

        v103 = v237;
        goto LABEL_57;
      }

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
LABEL_86:
      __break(1u);
LABEL_87:
      v191 = v111;
      v192 = v112;
      v193 = v113;

      v194 = sub_22C5722F0(0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v191, v192, v193);
      v196 = v195;
      v198 = v197;

      v258 = v194;
      v259 = v196;
      v256 = 10;
      v257 = 0xE100000000000000;
      v254 = 0x202020200ALL;
      v255 = 0xE500000000000000;
      sub_22C3858B4();
      sub_22C3870A4();
      v199 = sub_22C90AD4C();
      v201 = v200;
      sub_22C4A7C6C(0xFuLL, 327687, 0x202020200AuLL, 0xE500000000000000);
      v203 = v202;
      sub_22C4A7C6C(0xFuLL, 65543, 0xAuLL, 0xE100000000000000);
      v205 = v203 - v204;
      if (!__OFSUB__(v203, v204))
      {

        v248 = v199;
        sub_22C49F0FC(v198, v194, v196, v198, 10, 0xE100000000000000, v205, v199, v201);
        sub_22C36D770();
        sub_22C3AD898(v206);

        goto LABEL_96;
      }

LABEL_101:
      __break(1u);
      return;
    case 4uLL:
      v51 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C3870A4();
      swift_beginAccess();
      v52 = *(v51 + 16);

      sub_22C4AB8EC();
      v55 = sub_22C4A0390(v53, v54, v37);
      if (v0)
      {
        goto LABEL_76;
      }

      v248 = v55;
      sub_22C36D770();

      goto LABEL_96;
    case 5uLL:
      v81 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v82 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v83 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (v82 == 1)
      {
        v248 = 0;
        switch(v81)
        {
          case 1:
            sub_22C36BD04();
            sub_22C4AB93C();
            v174 = sub_22C4AB8D8();
            v111 = sub_22C4A0390(v174, v175, v2);
            if (v0)
            {
              goto LABEL_76;
            }

            goto LABEL_87;
          case 2:
            sub_22C36BD04();
            sub_22C4AB93C();
            v176 = sub_22C4AB8D8();
            v178 = sub_22C4A0390(v176, v177, v245);
            if (v0)
            {
              goto LABEL_76;
            }

            v207 = v178;
            v208 = v179;

            sub_22C573C54(v207, v208);
            v210 = v209;
            v212 = v211;
            v214 = v213;

            v215 = MEMORY[0x277D84FA0];
            v216 = sub_22C5722F0(0x22uLL, 0xE100000000000000, MEMORY[0x277D84FA0], v210, v212, v214);
            v218 = v217;
            v220 = v219;

            sub_22C57A24C(v215, 34, 0xE100000000000000);
            sub_22C36D770();
            v222 = sub_22C3AD898(v221);
            v248 = sub_22C5722F0(v216, v218, v220, 34, 0xE100000000000000, v222);

            break;
          case 3:
            sub_22C36BD04();
            v164 = *(v83 + 16);

            sub_22C4AB8EC();
            v167 = sub_22C4A0390(v165, v166, v246);
            if (v0)
            {
              goto LABEL_76;
            }

            v170 = v167;
            v171 = v168;
            v172 = v169;
            sub_22C36D770();

            v173 = sub_22C572494(&unk_283FAEDA8, v170, v171, v172);
            goto LABEL_93;
          case 4:
            sub_22C36BD04();
            sub_22C4AB93C();
            v180 = sub_22C4AB8D8();
            v182 = sub_22C4A0390(v180, v181, v27);
            if (v0)
            {
              goto LABEL_76;
            }

            v227 = v182;
            v228 = v183;
            v229 = v184;
            sub_22C36D770();

            v248 = sub_22C572494(&unk_283FAED80, v227, v228, v229);

            goto LABEL_95;
          case 5:
            goto LABEL_96;
          case 6:
            sub_22C36BD04();
            v185 = *(v83 + 16);

            sub_22C4AB8EC();
            v188 = sub_22C4A0390(v186, v187, v247);
            if (v0)
            {
              goto LABEL_76;
            }

            v230 = v188;
            v231 = v189;
            v232 = v190;
            sub_22C36D770();

            sub_22C572C64(v230, v231, v232);
LABEL_93:
            sub_22C3721F0(v173);
            break;
          default:
            sub_22C36BD04();
            v84 = *(v83 + 16);

            sub_22C4AB8EC();
            v87 = sub_22C4A0390(v85, v86, v30);
            if (v0)
            {
              goto LABEL_76;
            }

            v223 = v87;
            v224 = v88;
            v225 = v89;
            sub_22C36D770();

            v226 = sub_22C5722F0(0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v223, v224, v225);
            sub_22C3721F0(v226);
            break;
        }
      }

      else
      {
        sub_22C36BD04();
        sub_22C4AB93C();
        v95 = sub_22C4AB8D8();
        v97 = sub_22C4A0390(v95, v96, v1);
        if (v0)
        {
LABEL_76:

LABEL_77:
          sub_22C407C2C();
          goto LABEL_97;
        }

        v160 = v97;
        v161 = v98;
        v162 = v99;
        sub_22C36D770();

        sub_22C572798(v81, v160, v161, v162);
        sub_22C3721F0(v163);
      }

LABEL_95:

LABEL_96:
      sub_22C4AB8EC();
LABEL_97:
      sub_22C36FB20();
      return;
    default:
      v50 = *(v5 + 24);
      v248 = *(v5 + 16);

      goto LABEL_96;
  }
}

void sub_22C4A1448(void *a1, unint64_t a2, uint64_t a3)
{
  v220 = a3;
  v229 = a1;
  v4 = sub_22C9063DC();
  v216 = *(v4 - 8);
  v217 = v4;
  v5 = *(v216 + 64);
  MEMORY[0x28223BE20](v4);
  v218 = v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v7 = *(*(v219 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v219);
  v214 = v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v200 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v213 = v200 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v212 = v200 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v200 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v200 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v200 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v200 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v200 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v200 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v200 - v35;
  v37 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 61)
  {
    case 1uLL:
      v56 = v40;
      swift_projectBox();
      sub_22C4AB80C();
      v214 = v56;
      v57 = sub_22C48AFE4(v56, v229);
      if ((~v57 & 0xF000000000000007) != 0)
      {
        v77 = v57;
        v78 = v206;
        sub_22C4A1448(v229, v57, v28);
        if (v78)
        {
          sub_22C4AB864(v214, type metadata accessor for PromptTreeIdentifier.Label);
          sub_22C4546F8(v77);
          goto LABEL_77;
        }

        v215 = v79;
        v206 = 0;
        sub_22C4AB864(v214, type metadata accessor for PromptTreeIdentifier.Label);
        sub_22C4546F8(v77);
      }

      else
      {
        v58 = v218;
        sub_22C903F7C();

        v59 = sub_22C9063CC();
        v60 = sub_22C90AADC();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v227 = v62;
          *v61 = 136315138;
          v63 = sub_22C491AFC();
          v64 = sub_22C4A25D4(v63);
          v66 = v65;

          v67 = sub_22C36F9F4(v64, v66, &v227);

          *(v61 + 4) = v67;
          sub_22C36FF94(v62);
          MEMORY[0x2318B9880](v62, -1, -1);
          MEMORY[0x2318B9880](v61, -1, -1);
        }

        (*(v216 + 8))(v58, v217);
        v68 = v214;
        sub_22C4AB80C();
        sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240);
        swift_willThrowTypedImpl();
        sub_22C4AB864(v68, type metadata accessor for PromptTreeIdentifier.Label);
      }

      return;
    case 2uLL:
      v46 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v47 = *(swift_projectBox() + *(v46 + 48));
      swift_beginAccess();
      v48 = *(v47 + 16);

      v49 = v206;
      sub_22C4A1448(v229, v48, v36);
      v51 = v50;

      if (v49)
      {
        goto LABEL_77;
      }

      v215 = v51;
      v206 = 0;
      return;
    case 3uLL:
      v52 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *(v52 + 16);

      v54 = v206;
      v55 = sub_22C4A35F0(v229, v53, v34);
      if (v54)
      {

        goto LABEL_77;
      }

      v85 = v55;
      v200[1] = v52;
      v206 = 0;

      v86 = 0;
      v87 = 0;
      v202 = *(v85 + 16);
      v203 = v85;
      v201 = v85 + 32;
      v88 = MEMORY[0x277D84FA0];
      v89 = 0xE000000000000000;
      while (2)
      {
        v215 = v89;
        if (v86 == v202)
        {

          goto LABEL_94;
        }

        if (v86 >= *(v203 + 16))
        {
          __break(1u);
          goto LABEL_97;
        }

        v205 = v86;
        v90 = (v201 + 24 * v86);
        v91 = *v90;
        v92 = v90[1];
        v93 = v90[2];
        v227 = v87;
        v228 = v89;

        v211 = v91;
        v214 = v92;
        MEMORY[0x2318B7850](v91, v92);
        v212 = v228;
        v213 = v227;
        v94 = *(v93 + 16);
        v216 = v93;
        if (!v94)
        {
          v95 = MEMORY[0x277D84F90];
LABEL_57:
          if (!__OFADD__(*(v95 + 16), *(v88 + 16)))
          {
            sub_22C591170();
            v227 = v130;

            sub_22C3CCEC4(v131);
            sub_22C3CCE08(v95);
            v132 = v227;
            v133 = *(v227 + 16);
            v134 = sub_22C3AF8F8();
            v135 = MEMORY[0x2318B7DB0](v133, &type metadata for PromptString.TaggedRange, v134);
            v225 = v135;
            v136 = *(v132 + 16);
            if (v136)
            {
              v137 = (v132 + 48);
              do
              {
                v138 = *(v137 - 2);
                v139 = *(v137 - 1);
                v140 = *v137;
                v137 += 24;
                sub_22C6A45F4();
                --v136;
              }

              while (v136);

              v141 = v225;
            }

            else
            {
              v141 = v135;
            }

            v142 = v205 + 1;

            v86 = v142;
            v89 = v212;
            v87 = v213;
            v88 = v141;
            continue;
          }

LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        break;
      }

      v204 = v88;
      v227 = MEMORY[0x277D84F90];
      sub_22C3B628C();
      v95 = v227;
      v96 = sub_22C57D74C(v93);
      v99 = v96;
      v220 = 0;
      v100 = HIBYTE(v89) & 0xF;
      if ((v89 & 0x2000000000000000) == 0)
      {
        v100 = v87;
      }

      v229 = (v93 + 56);
      v101 = 7;
      if (((v89 >> 60) & ((v87 & 0x800000000000000) == 0)) != 0)
      {
        v101 = 11;
      }

      v210 = v101 | (v100 << 16);
      v207 = v93 + 64;
      v209 = v87;
      v208 = v94;
      if ((v96 & 0x8000000000000000) == 0)
      {
        while (v99 < 1 << *(v93 + 32))
        {
          v102 = v99 >> 6;
          if ((v229[v99 >> 6] & (1 << v99)) == 0)
          {
            goto LABEL_79;
          }

          if (*(v93 + 36) != v97)
          {
            goto LABEL_80;
          }

          v217 = 1 << v99;
          v218 = v97;
          LODWORD(v219) = v98;
          v103 = *(v93 + 48) + 24 * v99;
          v104 = *v103;
          v105 = *(v103 + 8);
          v106 = *(v103 + 16);
          sub_22C4A7C6C(0xFuLL, v210, v87, v89);
          v108 = v107;
          v109 = v104;
          v110 = v211;
          v111 = v214;
          sub_22C4A7C6C(0xFuLL, v109, v211, v214);
          v113 = v112;
          sub_22C4A7C6C(0xFuLL, v105, v110, v111);
          v97 = v108 + v113;
          if (__OFADD__(v108, v113))
          {
            goto LABEL_81;
          }

          v114 = v96;
          v116 = v212;
          v115 = v213;
          sub_22C4A7E20(0xFuLL, v97, v213, v212);
          v97 = v108 + v114;
          if (__OFADD__(v108, v114))
          {
            goto LABEL_82;
          }

          v117 = v96;
          sub_22C4A7E20(0xFuLL, v97, v115, v116);
          if (v96 >> 14 < v117 >> 14)
          {
            goto LABEL_83;
          }

          v118 = v96;
          v227 = v95;
          v119 = *(v95 + 16);
          if (v119 >= *(v95 + 24) >> 1)
          {
            sub_22C3B628C();
            v95 = v227;
          }

          *(v95 + 16) = v119 + 1;
          v120 = v95 + 24 * v119;
          *(v120 + 32) = v117;
          *(v120 + 40) = v118;
          *(v120 + 48) = v106;
          if (v219)
          {
            goto LABEL_98;
          }

          v89 = v215;
          v93 = v216;
          v121 = 1 << *(v216 + 32);
          v87 = v209;
          v97 = v218;
          if (v99 >= v121)
          {
            goto LABEL_84;
          }

          v122 = v229[v102];
          if ((v122 & v217) == 0)
          {
            goto LABEL_85;
          }

          if (*(v216 + 36) != v218)
          {
            goto LABEL_86;
          }

          v123 = v122 & (-2 << (v99 & 0x3F));
          if (v123)
          {
            v121 = __clz(__rbit64(v123)) | v99 & 0x7FFFFFFFFFFFFFC0;
            v124 = v208;
          }

          else
          {
            v125 = v102 << 6;
            v126 = v102 + 1;
            v127 = (v207 + 8 * v102);
            v124 = v208;
            while (v126 < (v121 + 63) >> 6)
            {
              v129 = *v127++;
              v128 = v129;
              v125 += 64;
              ++v126;
              if (v129)
              {
                v96 = sub_22C3A5038(v99, v218, 0);
                v121 = __clz(__rbit64(v128)) + v125;
                goto LABEL_51;
              }
            }

            v96 = sub_22C3A5038(v99, v218, 0);
LABEL_51:
            v93 = v216;
          }

          if (v220 + 1 == v124)
          {
            v88 = v204;
            goto LABEL_57;
          }

          ++v220;
          v98 = 0;
          v97 = *(v93 + 36);
          v99 = v121;
          if (v121 < 0)
          {
            break;
          }
        }
      }

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
LABEL_86:
      __break(1u);
LABEL_87:
      v173 = v96;
      v174 = v97;
      v175 = v98;
      v176 = v92;

      v177 = sub_22C5723D4(v173, v174, v175);
      v179 = v178;
      v181 = v180;

      v225 = v177;
      v226 = v179;
      v223 = 10;
      v224 = 0xE100000000000000;
      v221 = 0x202020200ALL;
      v222 = 0xE500000000000000;
      sub_22C3858B4();
      v182 = sub_22C90AD4C();
      v184 = v183;
      sub_22C4A7C6C(0xFuLL, 327687, 0x202020200AuLL, 0xE500000000000000);
      v186 = v185;
      sub_22C4A7C6C(0xFuLL, 65543, 0xAuLL, 0xE100000000000000);
      v188 = v186 - v187;
      if (!__OFSUB__(v186, v187))
      {

        v215 = v184;
        sub_22C49F0FC(v181, v177, v179, v181, 10, 0xE100000000000000, v188, v182, v184);
        v206 = v176;
        sub_22C3AD898(v189);

        goto LABEL_94;
      }

LABEL_99:
      __break(1u);
      return;
    case 4uLL:
      v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_beginAccess();
      v43 = *(v42 + 16);

      v44 = v206;
      sub_22C4A1448(v229, v43, v31);
      if (v44)
      {
        goto LABEL_76;
      }

      v215 = v45;
      v206 = 0;

      return;
    case 5uLL:
      v69 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v71 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (v70 == 1)
      {
        v215 = 0xE000000000000000;
        switch(v69)
        {
          case 1:
            swift_beginAccess();
            v156 = *(v71 + 16);

            v92 = v206;
            v96 = sub_22C4A1448(v229, v156, v25);
            if (v92)
            {
              goto LABEL_76;
            }

            goto LABEL_87;
          case 2:
            swift_beginAccess();
            v157 = *(v71 + 16);

            v158 = v206;
            v159 = sub_22C4A1448(v229, v157, v212);
            if (v158)
            {
              goto LABEL_76;
            }

            v161 = v159;
            v162 = v160;
            v206 = 0;

            sub_22C5725E4(v161, v162);
            goto LABEL_92;
          case 3:
            swift_beginAccess();
            v147 = *(v71 + 16);

            v148 = v206;
            v149 = sub_22C4A1448(v229, v147, v213);
            if (v148)
            {
              goto LABEL_76;
            }

            v152 = v149;
            v153 = v150;
            v154 = v151;
            v206 = 0;

            sub_22C572494(&unk_283FAEB88, v152, v153, v154);
            goto LABEL_92;
          case 4:
            swift_beginAccess();
            v163 = *(v71 + 16);

            v164 = v206;
            v165 = sub_22C4A1448(v229, v163, v19);
            if (v164)
            {
              goto LABEL_76;
            }

            v193 = v165;
            v194 = v166;
            v195 = v167;
            v206 = 0;

            sub_22C572494(&unk_283FAEB60, v193, v194, v195);
            v215 = v196;

            goto LABEL_94;
          case 5:
            return;
          case 6:
            swift_beginAccess();
            v168 = *(v71 + 16);

            v169 = v206;
            v170 = sub_22C4A1448(v229, v168, v214);
            if (v169)
            {
              goto LABEL_76;
            }

            v197 = v170;
            v198 = v171;
            v199 = v172;
            v206 = 0;

            sub_22C572C64(v197, v198, v199);
            goto LABEL_92;
          default:
            swift_beginAccess();
            v72 = *(v71 + 16);

            v73 = v206;
            v74 = sub_22C4A1448(v229, v72, v22);
            if (v73)
            {
              goto LABEL_76;
            }

            v190 = v74;
            v191 = v75;
            v192 = v76;
            v206 = 0;

            sub_22C5723D4(v190, v191, v192);
LABEL_92:
            v215 = v155;
            break;
        }
      }

      else
      {
        swift_beginAccess();
        v80 = *(v71 + 16);

        v81 = v206;
        v82 = sub_22C4A1448(v229, v80, v12);
        if (v81)
        {
LABEL_76:

LABEL_77:
          sub_22C407C2C();
          return;
        }

        v143 = v82;
        v144 = v83;
        v145 = v84;
        v206 = 0;

        sub_22C572798(v69, v143, v144, v145);
        v215 = v146;
      }

LABEL_94:

      return;
    default:
      v41 = *(a2 + 16);
      v215 = *(a2 + 24);

      return;
  }
}

uint64_t sub_22C4A25D4(unint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v62[-v5];
  v7 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v62[-v10];
  switch(a1 >> 61)
  {
    case 1uLL:
      swift_projectBox();
      sub_22C4AB80C();
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      sub_22C4AB80C();
      *(inited + 32) = sub_22C90A1AC();
      *(inited + 40) = v50;
      v18 = sub_22C490F28(0x696669746E656469, 0xEA00000000007265, inited, 0, 0);
      swift_setDeallocating();
      sub_22C58FFC4();
      v40 = type metadata accessor for PromptTreeIdentifier.Label;
      v41 = v11;
      goto LABEL_14;
    case 2uLL:
      v30 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v31 = *(swift_projectBox() + *(v30 + 48));
      sub_22C4AB80C();
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_22C90F870;
      strcpy(v65, "identifier: ");
      BYTE5(v65[1]) = 0;
      HIWORD(v65[1]) = -5120;
      sub_22C4AB80C();

      v33 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v33);

      v34 = v65[1];
      *(v32 + 32) = v65[0];
      *(v32 + 40) = v34;
      v63 = 0x203A65646F6ELL;
      v64 = 0xE600000000000000;
      swift_beginAccess();
      v35 = *(v31 + 16);

      v36 = sub_22C4A25D4(v35);
      v38 = v37;

      MEMORY[0x2318B7850](v36, v38);

      v39 = v64;
      *(v32 + 48) = v63;
      *(v32 + 56) = v39;
      v18 = sub_22C490F28(0x676E69646E6962, 0xE700000000000000, v32, 0, 0);

      swift_setDeallocating();
      sub_22C58FFC4();
      v40 = type metadata accessor for PromptTreeIdentifier;
      v41 = v6;
LABEL_14:
      sub_22C4AB864(v41, v40);
      return v18;
    case 3uLL:
      v42 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_22C90F800;
      v44 = *(v42 + 16);

      sub_22C4A2CE8(v44);
      v46 = v45;
      v48 = v47;

      *(v43 + 32) = v46;
      *(v43 + 40) = v48;
      v18 = sub_22C490F28(0x7461636E6F63, 0xE600000000000000, v43, 0, 0);

      goto LABEL_12;
    case 4uLL:
      v19 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_22C90F870;
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      sub_22C90AF5C();

      v65[0] = 0xD00000000000001ALL;
      v65[1] = 0x800000022C930CD0;
      if (v19)
      {
        v22 = 1702195828;
      }

      else
      {
        v22 = 0x65736C6166;
      }

      if (v19)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      MEMORY[0x2318B7850](v22, v23);

      v24 = v65[1];
      *(v21 + 32) = v65[0];
      *(v21 + 40) = v24;
      v63 = 0x203A65646F6ELL;
      v64 = 0xE600000000000000;
      swift_beginAccess();
      v25 = *(v20 + 16);

      v26 = sub_22C4A25D4(v25);
      v28 = v27;

      MEMORY[0x2318B7850](v26, v28);

      v29 = v64;
      *(v21 + 48) = v63;
      *(v21 + 56) = v29;
      v18 = sub_22C490F28(0xD000000000000010, 0x800000022C930CF0, v21, 0, 0);
LABEL_12:
      swift_setDeallocating();
      break;
    case 5uLL:
      v51 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v52 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v53 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_22C90F800;
      swift_beginAccess();
      v55 = *(v53 + 16);

      v56 = sub_22C4A25D4(v55);
      v58 = v57;

      *(v54 + 32) = v56;
      *(v54 + 40) = v58;
      v59 = sub_22C491384(v51, v52);
      v18 = sub_22C490F28(0x796C707061, 0xE500000000000000, v54, v59, v60);

      swift_setDeallocating();
      break;
    default:
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_22C90F800;

      v15 = sub_22C90A2AC();
      v17 = v16;

      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v18 = sub_22C490F28(0x676E69727473, 0xE600000000000000, v14, 0, 0);
      swift_setDeallocating();
      break;
  }

  sub_22C58FFC4();
  return v18;
}

void sub_22C4A2CE8(uint64_t a1)
{
  if (a1 < 0)
  {
    v15 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v19 = *(v17 + 16);

    v20 = sub_22C4A2CE8(v19);
    v22 = v21;

    *(inited + 32) = v20;
    *(inited + 40) = v22;
    v23 = sub_22C491594(v15, v16);
    sub_22C490F28(0x796C707061, 0xE500000000000000, inited, v23, v24);

    swift_setDeallocating();
    sub_22C58FFC4();
    return;
  }

  v1 = *(a1 + 16);
  v2 = sub_22C36E2B8(v1);
  if (!v2)
  {
LABEL_14:
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C90A04C();

    v12 = sub_22C90A29C();
    v14 = v13;

    MEMORY[0x2318B7850](v12, v14);

    MEMORY[0x2318B7850](2710794, 0xE300000000000000);
    return;
  }

  v3 = v2;
  v25 = MEMORY[0x277D84F90];

  sub_22C3B5E2C();
  if (v3 < 0)
  {
    goto LABEL_18;
  }

  v4 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318B8460](v4, v1);
      goto LABEL_10;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v5 = *(v1 + 8 * v4 + 32);

LABEL_10:
    swift_beginAccess();
    v6 = *(v5 + 16);

    v7 = sub_22C4A25D4(v6);
    v9 = v8;
    swift_endAccess();

    v10 = *(v25 + 16);
    if (v10 >= *(v25 + 24) >> 1)
    {
      sub_22C3B5E2C();
    }

    ++v4;
    *(v25 + 16) = v10 + 1;
    v11 = v25 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    if (v3 == v4)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}