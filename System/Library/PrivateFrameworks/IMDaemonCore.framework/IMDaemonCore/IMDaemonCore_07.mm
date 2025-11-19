uint64_t IMDPersistentTaskCriticalLimiter.Defaults.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t IMDPersistentTaskCriticalLimiter.Defaults.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22B6F3688()
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = sub_22B7DA968();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  sub_22B4D7E58(v0 + *(v19 + 24), v13, &qword_27D8CD5D0, &qword_22B7F9518);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22B4D0D64(v13, &qword_27D8CD5D0, &qword_22B7F9518);
    v20 = *(v0 + 8);
  }

  else
  {
    sub_22B6FC80C(v13, v18, &qword_27D8CD5D8, &qword_22B7F9530);
    v22 = *(v0 + 8);
    sub_22B6F0AD4(&qword_27D8CD618, &qword_22B7F95F8);
    v23 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
    v24 = *(*(v23 - 8) + 72);
    v25 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22B7F93B0;
    v40 = v22;

    sub_22B7DA938();
    sub_22B6FC35C(&qword_281420E90);
    result = sub_22B7DB618();
    if (result)
    {
      v27 = v26 + v25;
      v38 = v26;
      v39 = v18;
      v28 = v42;
      v29 = *(v42 + 16);
      v29(v6, v18, v7);
      v30 = v43;
      v29(&v6[*(v1 + 48)], v43, v7);
      v31 = v41;
      sub_22B4D7E58(v6, v41, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v32 = *(v1 + 48);
      v36 = v23;
      v37 = v1;
      v33 = *(v28 + 32);
      v33(v27, v31, v7);
      v34 = *(v28 + 8);
      v34(v31 + v32, v7);
      sub_22B6FC80C(v6, v31, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v33(v27 + *(v36 + 36), v31 + *(v37 + 48), v7);
      v34(v30, v7);
      v34(v31, v7);
      v44 = v40;
      sub_22B79B17C(v38);
      sub_22B4D0D64(v39, &qword_27D8CD5D8, &qword_22B7F9530);
      return v44;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B6F3B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v126 = *(v6 - 8);
  v127 = v6;
  v7 = *(v126 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v107 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v115 = &v102 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v102 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v120 = (&v102 - v15);
  MEMORY[0x28223BE20](v14);
  v125 = &v102 - v16;
  v114 = sub_22B7DA968();
  v119 = *(v114 - 8);
  v17 = *(v119 + 64);
  v18 = MEMORY[0x28223BE20](v114);
  v121 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v102 - v21;
  MEMORY[0x28223BE20](v20);
  v124 = &v102 - v22;
  v23 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v102 - v28;
  v30 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v31 = *(v30 + 24);
  v32 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v33 = *(v32 - 8);
  (*(v33 + 56))(a3 + v31, 1, 1, v32);
  *a3 = a2;
  a3[1] = sub_22B6F2CA8();
  v118 = (a3 + 1);
  sub_22B6F2724(v29);
  v105 = v29;
  sub_22B6FBA40(v29, a3 + v31, &qword_27D8CD5D0, &qword_22B7F9518);
  v34 = *(v30 + 28);
  *(a3 + v34) = a1;
  v104 = v31;
  sub_22B4D7E58(a3 + v31, v27, &qword_27D8CD5D0, &qword_22B7F9518);
  LODWORD(v31) = (*(v33 + 48))(v27, 1, v32);
  v109 = a1;

  sub_22B4D0D64(v27, &qword_27D8CD5D0, &qword_22B7F9518);
  v111 = v31;
  if (v31 != 1)
  {
    sub_22B6F4628(0);
  }

  v35 = a3[1];

  v36 = v113;
  sub_22B7DA938();
  v108 = *(a3 + v34);
  sub_22B6F25D0();
  v37 = v124;
  sub_22B7DA8A8();
  v38 = v119 + 8;
  v39 = v114;
  v117 = *(v119 + 8);
  v40 = v117(v36, v114);
  v110 = &v102;
  MEMORY[0x28223BE20](v40);
  *(&v102 - 2) = v37;
  result = sub_22B6F9990(sub_22B6FBA24, (&v102 - 4), v35);
  v112 = v35;
  v106 = 0;
  if (v42)
  {
    v43 = *(v35 + 16);
    v44 = v43;
    v45 = v35;
  }

  else
  {
    v43 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v123 = result;
    v119 = v38;
    v103 = a3;
    v45 = v112;
    v47 = v112 + 2;
    v46 = v112[2];
    if (v43 != v46)
    {
      while (v43 < v46)
      {
        v64 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v65 = v45;
        v66 = v45 + v64;
        v67 = *(v126 + 72);
        v122 = v67 * v43;
        v68 = v45 + v64 + v67 * v43;
        v69 = v125;
        sub_22B4D7E58(v68, v125, &unk_27D8CEEC0, &qword_22B7FA060);
        v70 = *(v127 + 36);
        v71 = sub_22B7DA8D8();
        result = sub_22B4D0D64(v69, &unk_27D8CEEC0, &qword_22B7FA060);
        if (v71)
        {
          v45 = v65;
        }

        else
        {
          v72 = v123;
          if (v43 == v123)
          {
            v45 = v65;
          }

          else
          {
            if (v123 < 0)
            {
              goto LABEL_65;
            }

            v73 = *v47;
            if (v123 >= v73)
            {
              goto LABEL_66;
            }

            v45 = v65;
            v74 = v67 * v123;
            result = sub_22B4D7E58(&v66[v67 * v123], v120, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v43 >= v73)
            {
              goto LABEL_67;
            }

            v75 = v122;
            v76 = v116;
            sub_22B4D7E58(&v66[v122], v116, &unk_27D8CEEC0, &qword_22B7FA060);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_22B7025B4(v45);
            }

            result = sub_22B6FBA40(v76, v45 + v64 + v74, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v43 >= v45[2])
            {
              goto LABEL_68;
            }

            result = sub_22B6FBA40(v120, v45 + v64 + v75, &unk_27D8CEEC0, &qword_22B7FA060);
            v72 = v123;
          }

          v123 = v72 + 1;
        }

        ++v43;
        v47 = v45 + 2;
        v46 = v45[2];
        if (v43 == v46)
        {
          goto LABEL_7;
        }
      }

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
      __break(1u);
      goto LABEL_69;
    }

LABEL_7:
    v44 = v123;
    if (v43 < v123)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    a3 = v103;
    v39 = v114;
    v38 = v119;
    if (v123 < 0)
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
      goto LABEL_76;
    }
  }

  v48 = v44;
  v49 = v44 - v43;
  v50 = v43 + v49;
  if (__OFADD__(v43, v49))
  {
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v118;
  *v118 = v45;
  if (!isUniquelyReferenced_nonNull_native || v50 > v45[3] >> 1)
  {
    if (v43 <= v50)
    {
      v53 = v50;
    }

    else
    {
      v53 = v43;
    }

    v54 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v53, 1, v45);
    v52 = v118;
    v45 = v54;
    *v118 = v54;
  }

  sub_22B6FA840(v48, v43, 0);
  *v52 = v45;
  v55 = sub_22B747814(v112, v45);

  v117(v124, v39);
  if (v111 == 1 && (v55 & 1) != 0)
  {
  }

  v56 = v113;
  sub_22B7DA938();
  v57 = -*(v108 + 64);
  v58 = v121;
  sub_22B7DA8A8();
  v59 = v117(v56, v39);
  MEMORY[0x28223BE20](v59);
  *(&v102 - 2) = v58;
  v60 = v45;
  result = sub_22B6F9990(sub_22B6FC9D8, (&v102 - 4), v45);
  v122 = v45;
  v120 = &v102;
  if (v61)
  {
    v62 = v45[2];
    v63 = v60[2];
    goto LABEL_39;
  }

  v62 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v124 = result;
    v119 = v38;
    v103 = a3;
    v60 = v122;
    v78 = (v122 + 16);
    v77 = *(v122 + 16);
    if (v62 == v77)
    {
LABEL_37:
      v63 = v124;
      if (v62 >= v124)
      {
        a3 = v103;
        v39 = v114;
        if ((v124 & 0x8000000000000000) == 0)
        {
LABEL_39:
          if (!__OFADD__(v62, v63 - v62))
          {
            v79 = swift_isUniquelyReferenced_nonNull_native();
            *v118 = v60;
            if (!v79 || v63 > v60[3] >> 1)
            {
              if (v62 <= v63)
              {
                v80 = v63;
              }

              else
              {
                v80 = v62;
              }

              v60 = sub_22B71B35C(v79, v80, 1, v60);
              *v118 = v60;
            }

            sub_22B6FA840(v63, v62, 0);
            a3[1] = v60;
            sub_22B747814(v122, v60);

            v117(v121, v39);
            sub_22B6F5864();
            v81 = *a3;
            v82 = v105;
            sub_22B4D7E58(a3 + v104, v105, &qword_27D8CD5D0, &qword_22B7F9518);
            sub_22B6F2A58(v82);

            sub_22B6F32AC(v83, v81);
          }

          goto LABEL_79;
        }

LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v84 = &unk_27D8CEEC0;
    v85 = &qword_22B7FA060;
    while (v62 < v77)
    {
      v86 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v87 = v60;
      v88 = v60 + v86;
      v89 = *(v126 + 72);
      v123 = v89 * v62;
      v90 = v60 + v86 + v89 * v62;
      v91 = v85;
      v92 = v84;
      v93 = v125;
      sub_22B4D7E58(v90, v125, v92, v91);
      v94 = *(v127 + 36);
      v95 = sub_22B7DA8D8();
      v96 = v93;
      v84 = v92;
      v85 = v91;
      result = sub_22B4D0D64(v96, v84, v91);
      if (v95)
      {
        v60 = v87;
      }

      else
      {
        v97 = v124;
        if (v62 == v124)
        {
          v60 = v87;
        }

        else
        {
          if (v124 < 0)
          {
            goto LABEL_72;
          }

          v98 = *v78;
          if (v124 >= v98)
          {
            goto LABEL_73;
          }

          v60 = v87;
          v99 = v89 * v124;
          result = sub_22B4D7E58(&v88[v89 * v124], v115, v84, v85);
          if (v62 >= v98)
          {
            goto LABEL_74;
          }

          v100 = v123;
          v101 = v107;
          sub_22B4D7E58(&v88[v123], v107, v84, v85);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_22B7025B4(v60);
          }

          result = sub_22B6FBA40(v101, v60 + v86 + v99, v84, v85);
          if (v62 >= v60[2])
          {
            goto LABEL_75;
          }

          result = sub_22B6FBA40(v115, v60 + v86 + v100, v84, v85);
          v97 = v124;
        }

        v124 = v97 + 1;
      }

      ++v62;
      v78 = v60 + 2;
      v77 = v60[2];
      if (v62 == v77)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_64;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_22B6F4628(int a1)
{
  v70 = a1;
  v1 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v57 - v3;
  v62 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v4 = *(*(v62 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v57 - v7;
  v64 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v69 = *(v64 - 8);
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v57 - v11;
  v12 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v21 = sub_22B7DA968();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v57 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v57 - v30;
  v57 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v32 = *(v57 + 24);
  v61 = v13;
  v33 = *(v13 + 48);
  v34 = v72;
  v63 = v12;
  v35 = v33(&v32[v72], 1, v12);
  v66 = v32;
  if (v35)
  {
    (*(v22 + 7))(v20, 1, 1, v21);
    sub_22B7DA938();
    sub_22B7DA8A8();
    (*(v22 + 1))(v29, v21);
    if ((*(v22 + 6))(v20, 1, v21) != 1)
    {
      sub_22B4D0D64(v20, &unk_27D8CF790, &qword_22B7F9578);
    }
  }

  else
  {
    sub_22B4D7E58(&v32[v34], v16, &qword_27D8CD5D8, &qword_22B7F9530);
    v36 = v22;
    v37 = *(v22 + 4);
    v37(v20, v16, v21);
    (*(v36 + 7))(v20, 0, 1, v21);
    v37(v31, v20, v21);
    v22 = v36;
  }

  sub_22B7DA938();
  if (sub_22B7DA8C8())
  {
    sub_22B7DA8A8();
    (*(v22 + 1))(v26, v21);
    (*(v22 + 4))(v26, v29, v21);
  }

  sub_22B6FC35C(&qword_281420E90);
  v38 = v21;
  if (sub_22B7DB618())
  {
    v39 = v22;
    v40 = *(v22 + 2);
    v41 = v65;
    v59 = v31;
    v40(v65, v31, v21);
    v42 = v62;
    v43 = v41 + *(v62 + 48);
    v60 = v26;
    v40(v43, v26, v21);
    v44 = v67;
    sub_22B4D7E58(v41, v67, &qword_27D8CD5F8, &qword_22B7FBAC0);
    v45 = *(v42 + 48);
    v46 = *(v39 + 4);
    v47 = v71;
    v46(v71, v44, v21);
    v34 = *(v39 + 1);
    v34(v44 + v45, v21);
    sub_22B6FC80C(v41, v44, &qword_27D8CD5F8, &qword_22B7FBAC0);
    v46(v47 + *(v64 + 36), v44 + *(v42 + 48), v21);
    v22 = v72;
    v34(v44, v21);
    v29 = v66;
    sub_22B4D0D64(&v66[v22], &qword_27D8CD5D0, &qword_22B7F9518);
    (*(v61 + 56))(&v29[v22], 1, 1, v63);
    v31 = v68;
    sub_22B4D7E58(v47, v68, &unk_27D8CEEC0, &qword_22B7FA060);
    v38 = *(v22 + 1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v38 = sub_22B71B35C(0, v38[2] + 1, 1, v38);
LABEL_9:
  v48 = v70;
  v50 = v38[2];
  v49 = v38[3];
  if (v50 >= v49 >> 1)
  {
    v38 = sub_22B71B35C(v49 > 1, v50 + 1, 1, v38);
  }

  v38[2] = v50 + 1;
  sub_22B6FC80C(v31, v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50, &unk_27D8CEEC0, &qword_22B7FA060);
  *(v22 + 1) = v38;
  if (v48)
  {
    sub_22B6F4E1C();
    sub_22B6F5864();
    v51 = v58;
    v52 = *(v22 + *(v57 + 28));
    v53 = *v22;
    sub_22B4D7E58(&v29[v22], v58, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v51);
    v54 = *(v22 + 1);

    sub_22B6F32AC(v55, v53);
  }

  sub_22B4D0D64(v71, &unk_27D8CEEC0, &qword_22B7FA060);
  v34(v60, v21);
  return (v34)(v59, v21);
}

int64_t sub_22B6F4E1C()
{
  v1 = sub_22B7DA968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v10 = (v0 + 8);
  v9 = *(v0 + 8);

  sub_22B7DA938();
  v11 = *(v0 + *(type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0) + 28));
  sub_22B6F25D0();
  sub_22B7DA8A8();
  v12 = *(v2 + 8);
  v12(v6, v1);
  v17 = v8;
  result = sub_22B6F9B3C(sub_22B6FC9D8, v16);
  v14 = *(*v10 + 16);
  if (v14 < result)
  {
    __break(1u);
  }

  else
  {
    sub_22B6FA994(result, v14);
    v15 = sub_22B747814(v9, *v10);

    v12(v8, v1);
    return (v15 & 1) == 0;
  }

  return result;
}

uint64_t sub_22B6F4FC0@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v68 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v68);
  v11 = &v58 - v10;
  v67 = sub_22B7DA968();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v67);
  v58 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v18 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  if (sub_22B6F4E1C())
  {
    sub_22B6F5864();
    v24 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
    v25 = *(v1 + *(v24 + 28));
    v26 = *v2;
    sub_22B4D7E58(v2 + *(v24 + 24), v23, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v23);
    v27 = v2[1];

    sub_22B6F32AC(v28, v26);
  }

  v59 = v7;
  v65 = a1;
  v69 = v17;
  sub_22B7DA888();
  v63 = v12;
  v64 = v2;
  v29 = v2[1];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v66 = (v12 + 8);
    v33 = (v12 + 16);
    v34 = 0.0;
    do
    {
      sub_22B4D7E58(v31, v11, &unk_27D8CEEC0, &qword_22B7FA060);
      v35 = *(v68 + 36);
      sub_22B7DA898();
      v37 = v36;
      if (sub_22B7DA8D8())
      {
        v38 = v67;
        v39 = v69;
        (*v66)(v69, v67);
        (*v33)(v39, &v11[v35], v38);
      }

      v34 = v34 + v37;
      sub_22B4D0D64(v11, &unk_27D8CEEC0, &qword_22B7FA060);
      v31 += v32;
      --v30;
    }

    while (v30);
  }

  else
  {
    v34 = 0.0;
  }

  v40 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v41 = v64;
  v42 = v60;
  sub_22B4D7E58(v64 + *(v40 + 24), v60, &qword_27D8CD5D0, &qword_22B7F9518);
  if ((*(v61 + 48))(v42, 1, v62) == 1)
  {
    sub_22B4D0D64(v42, &qword_27D8CD5D0, &qword_22B7F9518);
    v43 = v65;
    v44 = v67;
    v45 = v63;
    v46 = v69;
  }

  else
  {
    v68 = v40;
    v47 = v59;
    sub_22B6FC80C(v42, v59, &qword_27D8CD5D8, &qword_22B7F9530);
    v48 = v58;
    sub_22B7DA938();
    sub_22B7DA898();
    v50 = v49;
    v45 = v63;
    v51 = *(v63 + 8);
    v44 = v67;
    v51(v48, v67);
    v34 = v34 + v50;
    sub_22B7DA888();
    v46 = v69;
    v52 = sub_22B7DA918();
    v51(v48, v44);
    v43 = v65;
    if (v52)
    {
      v53 = v48;
      v54 = *(v41 + *(v68 + 28));
      sub_22B6F2558();
      sub_22B7DA8A8();
      sub_22B4D0D64(v47, &qword_27D8CD5D8, &qword_22B7F9530);
      v51(v46, v44);
      v40 = v68;
      (*(v45 + 32))(v46, v53, v44);
    }

    else
    {
      sub_22B4D0D64(v47, &qword_27D8CD5D8, &qword_22B7F9530);
      v40 = v68;
    }
  }

  sub_22B7DA868();
  v55 = *(v41 + *(v40 + 28));
  sub_22B6F25D0();
  v56 = v43 + *(type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport(0) + 20);
  sub_22B7DA858();
  result = (*(v45 + 8))(v46, v44);
  *v43 = v34;
  return result;
}

uint64_t sub_22B6F557C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B6F4FC0(v16);
  v17 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v18 = *(v1 + *(v17 + 28));
  sub_22B6F2558();
  v20 = v19 - *v16;
  if (v20 > 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  if (v21 <= 0.0)
  {
    v22 = *(v13 + 20);
    v23 = sub_22B7DA968();
    (*(*(v23 - 8) + 32))(a1, v16 + v22, v23);
  }

  else
  {
    sub_22B4D7E58(v2 + *(v17 + 24), v7, &qword_27D8CD5D0, &qword_22B7F9518);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22B6FC638(v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport);
      sub_22B4D0D64(v7, &qword_27D8CD5D0, &qword_22B7F9518);
    }

    else
    {
      sub_22B6FC80C(v7, v12, &qword_27D8CD5D8, &qword_22B7F9530);
      sub_22B7DA8A8();
      sub_22B4D0D64(v12, &qword_27D8CD5D8, &qword_22B7F9530);
      sub_22B6FC638(v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport);
    }
  }

  type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22B6F5864()
{
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v39 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = sub_22B7DA968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = *(v0 + *(type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0) + 28));
  v19 = v17[2];
  v18 = v17[3];

  v43 = "com.apple.imagent";
  v19(&v47, 0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0);

  if (!*(&v48 + 1))
  {
    sub_22B4D0D64(&v47, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_7;
  }

  v42 = "ults";
  v46 = v16;
  v20 = swift_dynamicCast();
  v21 = *(v10 + 56);
  v21(v8, v20 ^ 1u, 1, v9);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
LABEL_7:
    v30 = &unk_27D8CF790;
    v31 = &qword_22B7F9578;
    v32 = v8;
    return sub_22B4D0D64(v32, v30, v31);
  }

  v40 = *(v10 + 32);
  v41 = v10 + 32;
  v40(v46, v8, v9);
  v23 = COERCE_DOUBLE(sub_22B6F2648());
  if ((v24 & 1) == 0)
  {
    v25 = v23;
    sub_22B7DA938();
    sub_22B7DA898();
    v27 = v26;
    v28 = *(v10 + 8);
    v28(v14, v9);
    if (v27 < v25)
    {
      return (v28)(v46, v9);
    }
  }

  v33 = v45;
  v21(v45, 1, 1, v9);
  v35 = v17[4];
  v34 = v17[5];
  v36 = v44;
  sub_22B4D7E58(v33, v44, &unk_27D8CF790, &qword_22B7F9578);
  if (v22(v36, 1, v9) == 1)
  {

    sub_22B4D0D64(v36, &unk_27D8CF790, &qword_22B7F9578);
    v47 = 0u;
    v48 = 0u;
  }

  else
  {
    *(&v48 + 1) = v9;
    v37 = sub_22B6FC8CC(&v47);
    v40(v37, v36, v9);
  }

  v38 = v46;
  v35(0xD000000000000011, v42 | 0x8000000000000000, 0xD000000000000034, v43 | 0x8000000000000000, &v47);

  sub_22B4D0D64(v33, &unk_27D8CF790, &qword_22B7F9578);
  (*(v10 + 8))(v38, v9);
  v30 = &unk_27D8CCDC0;
  v31 = &qword_22B7F9580;
  v32 = &v47;
  return sub_22B4D0D64(v32, v30, v31);
}

uint64_t sub_22B6F5CDC()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v10 = *(v9 + 24);
  sub_22B4D7E58(v0 + v10, v8, &qword_27D8CD5D0, &qword_22B7F9518);
  v11 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  sub_22B4D0D64(v8, &qword_27D8CD5D0, &qword_22B7F9518);
  if (v13 != 1)
  {
    sub_22B6F4628(1);
  }

  sub_22B7DA938();
  sub_22B7DA968();
  sub_22B6FC35C(&qword_281420E88);
  result = sub_22B7DB658();
  if (result)
  {
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_22B6FBA40(v6, v0 + v10, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F4E1C();
    sub_22B6F5864();
    v15 = *(v0 + *(v9 + 28));
    v16 = *v1;
    sub_22B4D7E58(v1 + v10, v6, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v6);
    v17 = v1[1];

    return sub_22B6F32AC(v18, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6F5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22B7DC408();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F5FDC, 0, 0);
}

uint64_t sub_22B6F5FDC()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_22B7DA8E8();
  v3 = sub_22B7DC6E8();
  v5 = v4;
  sub_22B7DC5B8();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B6F60C0;
  v7 = v0[7];

  return (sub_22B729E90)(v3, v5, 0, 0, 1);
}

uint64_t sub_22B6F60C0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22B6F635C;
  }

  else
  {
    v6 = sub_22B6F6230;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B6F6230()
{
  if (sub_22B7DBAB8())
  {
    v1 = v0[7];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v7 = (v0[3] + *v0[3]);
    v4 = *(v0[3] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22B6F63C4;
    v6 = v0[4];

    return v7();
  }
}

uint64_t sub_22B6F635C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B6F63C4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B6F6540(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22B6F65A8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_22B6F6540(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3(v12, a2, v3, v7, v8);

  sub_22B4CFB78(a1);
  return v14;
}

uint64_t sub_22B6F66B4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();
  v7 = *(*(sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v8 = *(*(sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v9 = *(*(sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v10 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
  v3[46] = v10;
  v11 = *(v10 - 8);
  v3[47] = v11;
  v12 = *(v11 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v13 = sub_22B7DA968();
  v3[50] = v13;
  v14 = *(v13 - 8);
  v3[51] = v14;
  v3[52] = *(v14 + 64);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v15 = sub_22B6F0AD4(&qword_27D8CD608, &qword_22B7F95B0);
  v3[57] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v17 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v18 = *(*(sub_22B6F0AD4(&qword_27D8CD610, &qword_22B7F95B8) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v19 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v3[68] = v19;
  v20 = *(v19 - 8);
  v3[69] = v20;
  v21 = *(v20 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F6AE4, v2, 0);
}

uint64_t sub_22B6F6AE4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = sub_22B6F64D4();
  v6 = sub_22B6F8810((v0 + 88), v4);
  v7 = *(v2 + 48);
  if (v7(v8, 1, v1))
  {
    v9 = *(v0 + 552);
    (v6)(v0 + 88, 0);
    (v5)(v0 + 56, 0);
    v10 = *(v9 + 56);
    v11 = 1;
LABEL_3:
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 584);
    v17 = *(v0 + 576);
    v18 = *(v0 + 568);
    v19 = *(v0 + 560);
    v20 = *(v0 + 536);
    v172 = *(v0 + 528);
    v173 = *(v0 + 520);
    v174 = *(v0 + 512);
    v175 = *(v0 + 504);
    v176 = *(v0 + 496);
    v177 = *(v0 + 488);
    v178 = *(v0 + 480);
    v179 = *(v0 + 472);
    v180 = *(v0 + 464);
    v181 = *(v0 + 448);
    v183 = *(v0 + 440);
    v184 = *(v0 + 432);
    v187 = *(v0 + 424);
    v190 = *(v0 + 392);
    v192 = *(v0 + 384);
    v193 = *(v0 + 360);
    v197 = *(v0 + 352);
    v201 = *(v0 + 344);
    v205 = *(v0 + 336);
    v208 = *(v0 + 328);
    v210 = *(v0 + 320);
    v212 = *(v0 + 312);
    v10(*(v0 + 272), v11, 1, *(v0 + 544));

    v21 = *(v0 + 8);

    return v21();
  }

  v191 = v7;
  v23 = *(v0 + 616);
  v24 = *(v0 + 608);
  v25 = *(v0 + 288);
  sub_22B6F557C(v24);
  (v6)(v0 + 88, 0);
  (v5)(v0 + 56, 0);
  sub_22B6FC3A0(v24, v23, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  swift_beginAccess();
  v26 = *(v25 + 168);
  if (*(v26 + 16) && (v27 = sub_22B725570(*(v0 + 280)), (v28 & 1) != 0))
  {
    sub_22B6FC5D0(*(v26 + 56) + *(*(v0 + 376) + 72) * v27, *(v0 + 536), type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(v0 + 536);
  v31 = *(v0 + 528);
  v32 = *(v0 + 368);
  v33 = *(v0 + 376);
  v211 = *(v33 + 56);
  v211(v30, v29, 1, v32);
  sub_22B4D7E58(v30, v31, &qword_27D8CD610, &qword_22B7F95B8);
  v206 = *(v33 + 48);
  v34 = v206(v31, 1, v32);
  v35 = *(v0 + 528);
  if (v34 == 1)
  {
    sub_22B4D0D64(*(v0 + 528), &qword_27D8CD610, &qword_22B7F95B8);
    v36 = 1;
  }

  else
  {
    sub_22B6FC5D0(v35 + *(*(v0 + 368) + 24), *(v0 + 488), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    sub_22B6FC638(v35, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v36 = 0;
  }

  v37 = *(v0 + 616);
  v38 = *(v0 + 552);
  v39 = *(v0 + 544);
  v41 = *(v0 + 480);
  v40 = *(v0 + 488);
  v42 = *(v0 + 464);
  v209 = *(v0 + 456);
  v43 = *(v38 + 56);
  *(v0 + 624) = v43;
  v43(v40, v36, 1, v39);
  sub_22B6FC5D0(v37, v41, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  *(v0 + 632) = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v194 = v43;
  v43(v41, 0, 1, v39);
  v44 = *(v209 + 48);
  sub_22B4D7E58(v40, v42, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B4D7E58(v41, v42 + v44, &qword_27D8CEC50, qword_22B7FB600);
  v45 = *(v38 + 48);
  v46 = v45(v42, 1, v39);
  v47 = *(v0 + 544);
  if (v46 == 1)
  {
    v48 = *(v0 + 488);
    sub_22B4D0D64(*(v0 + 480), &qword_27D8CEC50, qword_22B7FB600);
    sub_22B4D0D64(v48, &qword_27D8CEC50, qword_22B7FB600);
    if (v45(v42 + v44, 1, v47) == 1)
    {
      sub_22B4D0D64(*(v0 + 464), &qword_27D8CEC50, qword_22B7FB600);
LABEL_27:
      v80 = *(v0 + 616);
      v81 = *(v0 + 272);
      sub_22B4D0D64(*(v0 + 536), &qword_27D8CD610, &qword_22B7F95B8);
      sub_22B6FC3A0(v80, v81, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      v11 = 0;
      v10 = v194;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  sub_22B4D7E58(*(v0 + 464), *(v0 + 472), &qword_27D8CEC50, qword_22B7FB600);
  if (v45(v42 + v44, 1, v47) == 1)
  {
    v49 = *(v0 + 488);
    v50 = *(v0 + 472);
    sub_22B4D0D64(*(v0 + 480), &qword_27D8CEC50, qword_22B7FB600);
    sub_22B4D0D64(v49, &qword_27D8CEC50, qword_22B7FB600);
    sub_22B6FC638(v50, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
LABEL_18:
    sub_22B4D0D64(*(v0 + 464), &qword_27D8CD608, &qword_22B7F95B0);
    goto LABEL_19;
  }

  v74 = *(v0 + 600);
  v76 = *(v0 + 480);
  v75 = *(v0 + 488);
  v78 = *(v0 + 464);
  v77 = *(v0 + 472);
  sub_22B6FC3A0(v42 + v44, v74, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v79 = sub_22B6FA498(v77, v74);
  sub_22B6FC638(v74, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B4D0D64(v76, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B4D0D64(v75, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B6FC638(v77, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B4D0D64(v78, &qword_27D8CEC50, qword_22B7FB600);
  if (v79)
  {
    goto LABEL_27;
  }

LABEL_19:
  v51 = *(v0 + 520);
  v52 = *(v0 + 368);
  sub_22B4D7E58(*(v0 + 536), v51, &qword_27D8CD610, &qword_22B7F95B8);
  v53 = v206(v51, 1, v52);
  v54 = *(v0 + 520);
  if (v53 == 1)
  {
    sub_22B4D0D64(*(v0 + 520), &qword_27D8CD610, &qword_22B7F95B8);
  }

  else
  {
    v55 = *(v54 + 8);
    sub_22B7DBA88();
    sub_22B6FC638(v54, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
  }

  v56 = *(v0 + 616);
  v57 = *(v0 + 592);
  v58 = *(v0 + 544);
  v59 = *(v0 + 512);
  v60 = *(v0 + 280);
  v61 = *(v0 + 376) + 56;
  v211(v59, 1, 1, *(v0 + 368));
  swift_beginAccess();
  sub_22B78680C(v59, v60);
  swift_endAccess();
  sub_22B6FC5D0(v56, v57, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v63 = *(v0 + 568);
      v64 = *(v0 + 560);
      v65 = *(v0 + 544);
      v66 = *(v0 + 384);
      v67 = *(v0 + 368);
      v69 = *(v0 + 280);
      v68 = *(v0 + 288);
      sub_22B6FC5D0(*(v0 + 616), v63, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      v70 = swift_allocObject();
      swift_weakInit();
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      *(v71 + 24) = v69;
      *v66 = v69;
      v72 = *(v67 + 24);
      sub_22B6FC5D0(v63, v66 + v72, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      sub_22B6FC5D0(v63, v64, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v73 = 1;
      }

      else
      {
        (*(*(v0 + 408) + 32))(*(v0 + 352), *(v0 + 560), *(v0 + 400));
        v73 = 0;
      }

      v97 = *(v0 + 400);
      v98 = *(v0 + 408);
      v99 = *(v0 + 352);
      (*(v98 + 56))(v99, v73, 1, v97);
      v100 = (*(v98 + 48))(v99, 1, v97);
      v101 = *(v0 + 568);
      v102 = *(v0 + 496);
      if (v100 == 1)
      {
        v103 = *(v0 + 368);
        v104 = *(v0 + 352);

        sub_22B6FC638(v101, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);

        sub_22B4D0D64(v104, &unk_27D8CF790, &qword_22B7F9578);
        sub_22B6FC638(v66 + v72, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
        v211(v102, 1, 1, v103);
      }

      else
      {
        v106 = *(v0 + 424);
        v105 = *(v0 + 432);
        v185 = *(v0 + 416);
        v203 = *(v0 + 496);
        v108 = *(v0 + 400);
        v107 = *(v0 + 408);
        v199 = *(v0 + 384);
        v207 = *(v0 + 368);
        v109 = *(v0 + 328);
        v195 = *(v0 + 568);
        v188 = *(v107 + 32);
        v188(v106, *(v0 + 352), v108);
        v110 = sub_22B7DBA58();
        (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
        v111 = v105;
        (*(v107 + 16))(v105, v106, v108);
        v112 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v113 = swift_allocObject();
        *(v113 + 16) = 0;
        *(v113 + 24) = 0;
        v188(v113 + v112, v111, v108);
        v114 = (v113 + ((v185 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v114 = &unk_22B7F95C8;
        v114[1] = v71;

        v115 = sub_22B77E3D4(0, 0, v109, &unk_22B7F95D8, v113);
        (*(v107 + 8))(v106, v108);
        sub_22B6FC638(v195, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
        *(v199 + 8) = v115;
        sub_22B6FC5D0(v199, v203, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
        v211(v203, 0, 1, v207);
        sub_22B6FC638(v199, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      }

      v116 = *(v0 + 592);
      v117 = *(v0 + 536);
      v118 = *(v0 + 496);
      v119 = *(v0 + 280);

      swift_beginAccess();
      sub_22B78680C(v118, v119);
      swift_endAccess();
      sub_22B4D0D64(v117, &qword_27D8CD610, &qword_22B7F95B8);
      sub_22B6FC638(v116, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    }

    else
    {
      sub_22B4D0D64(*(v0 + 536), &qword_27D8CD610, &qword_22B7F95B8);
    }

    sub_22B6FC3A0(*(v0 + 616), *(v0 + 272), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    v11 = 0;
    v120 = *(v0 + 632);
    v10 = *(v0 + 624);
    goto LABEL_3;
  }

  v82 = *(v0 + 616);
  v83 = *(v0 + 592);
  v84 = *(v0 + 584);
  v85 = *(v0 + 576);
  v86 = *(v0 + 448);
  v87 = *(v0 + 400);
  v88 = *(v0 + 408);
  v89 = *(v0 + 392);
  v198 = *(v0 + 368);
  v202 = *(v0 + 544);
  v91 = *(v0 + 280);
  v90 = *(v0 + 288);
  v92 = *(v88 + 32);
  *(v0 + 640) = v92;
  *(v0 + 648) = (v88 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v92(v86, v83, v87);
  sub_22B6FC5D0(v82, v84, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v93 = swift_allocObject();
  swift_weakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v91;
  *v89 = v91;
  v95 = *(v198 + 24);
  sub_22B6FC5D0(v84, v89 + v95, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B6FC5D0(v84, v85, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v96 = 1;
  }

  else
  {
    v92(*(v0 + 360), *(v0 + 576), *(v0 + 400));
    v96 = 0;
  }

  v121 = *(v0 + 400);
  v122 = *(v0 + 408);
  v123 = *(v0 + 360);
  v124 = *(v122 + 56);
  *(v0 + 656) = v124;
  v124(v123, v96, 1, v121);
  v125 = *(v122 + 48);
  *(v0 + 664) = v125;
  *(v0 + 672) = (v122 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v126 = v125(v123, 1, v121);
  v204 = *(v0 + 584);
  v127 = *(v0 + 504);
  if (v126 == 1)
  {
    v129 = *(v0 + 360);
    v128 = *(v0 + 368);

    sub_22B6FC638(v204, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);

    sub_22B4D0D64(v129, &unk_27D8CF790, &qword_22B7F9578);
    sub_22B6FC638(v89 + v95, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    v211(v127, 1, 1, v128);
  }

  else
  {
    v131 = *(v0 + 432);
    v130 = *(v0 + 440);
    v132 = *(v0 + 408);
    v182 = *(v0 + 416);
    v133 = *(v0 + 400);
    v196 = *(v0 + 392);
    v200 = *(v0 + 368);
    v134 = *(v0 + 328);
    v186 = v134;
    v92(v130, *(v0 + 360), v133);
    v135 = sub_22B7DBA58();
    (*(*(v135 - 8) + 56))(v134, 1, 1, v135);
    (*(v132 + 16))(v131, v130, v133);
    v189 = v127;
    v136 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v137 = swift_allocObject();
    *(v137 + 16) = 0;
    *(v137 + 24) = 0;
    v92(v137 + v136, v131, v133);
    v138 = (v137 + ((v182 + v136 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v138 = &unk_22B7F95E8;
    v138[1] = v94;

    v139 = sub_22B77E3D4(0, 0, v186, &unk_22B7F95F0, v137);
    (*(v132 + 8))(v130, v133);
    sub_22B6FC638(v204, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    *(v196 + 8) = v139;
    sub_22B6FC5D0(v196, v189, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v211(v189, 0, 1, v200);
    sub_22B6FC638(v196, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
  }

  v140 = *(v0 + 504);
  v142 = *(v0 + 280);
  v141 = *(v0 + 288);

  swift_beginAccess();
  sub_22B78680C(v140, v142);
  swift_endAccess();
  v143 = sub_22B6FBB04();
  v144 = *(v0 + 288);
  if (v143)
  {
    sub_22B4D0DE8((v144 + 14), v0 + 16);
    v145 = *(v0 + 40);
    v146 = *(v0 + 48);
    sub_22B4D2BCC((v0 + 16), v145);
    swift_beginAccess();
    v147 = v144[20];
    if (*(v147 + 16) && (v148 = sub_22B725570(*(v0 + 280)), (v149 & 1) != 0))
    {
      sub_22B6FC5D0(*(v147 + 56) + *(*(v0 + 304) + 72) * v148, *(v0 + 320), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v150 = 0;
    }

    else
    {
      v150 = 1;
    }

    v162 = *(v0 + 320);
    v163 = *(v0 + 296);
    (*(*(v0 + 304) + 56))(v162, v150, 1, v163);
    v164 = v191(v162, 1, v163);
    v165 = *(v0 + 320);
    if (v164)
    {
      sub_22B4D0D64(v165, &qword_27D8CD600, &unk_22B7F95A0);
      v166 = MEMORY[0x277D84F90];
    }

    else
    {
      v167 = *(v0 + 312);
      v168 = *(v0 + 320);
      sub_22B6FC5D0(v165, v167, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      sub_22B4D0D64(v168, &qword_27D8CD600, &unk_22B7F95A0);
      v166 = sub_22B6F3688();
      sub_22B6FC638(v167, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }

    *(v0 + 680) = v166;
    v169 = *(v146 + 24);
    v214 = (v169 + *v169);
    v170 = v169[1];
    v171 = swift_task_alloc();
    *(v0 + 688) = v171;
    *v171 = v0;
    v171[1] = sub_22B6F7F74;
    v157 = *(v0 + 280);
    v158 = *(v0 + 288);
    v156 = v166;
    v159 = v145;
    v160 = v146;
    v161 = v214;
  }

  else
  {
    v151 = v144[17];
    v152 = v144[18];
    sub_22B4D2BCC(v144 + 14, v151);
    v153 = *(v152 + 8);
    v213 = (v153 + *v153);
    v154 = v153[1];
    v155 = swift_task_alloc();
    *(v0 + 704) = v155;
    *v155 = v0;
    v155[1] = sub_22B6F81D8;
    v156 = *(v0 + 448);
    v157 = *(v0 + 280);
    v158 = *(v0 + 288);
    v159 = v151;
    v160 = v152;
    v161 = v213;
  }

  return v161(v158, v157, v156, v159, v160);
}

uint64_t sub_22B6F7F74()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v9 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);
    v5 = sub_22B6F8554;
  }

  else
  {
    v6 = *(v2 + 680);
    v7 = *(v2 + 288);

    v5 = sub_22B6F809C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B6F809C()
{
  sub_22B4CFB78(v0 + 2);
  v1 = v0[36];
  v2 = v1[17];
  v3 = v1[18];
  sub_22B4D2BCC(v1 + 14, v2);
  v4 = *(v3 + 8);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[88] = v6;
  *v6 = v0;
  v6[1] = sub_22B6F81D8;
  v7 = v0[56];
  v8 = v0[35];
  v9 = v0[36];

  return v11(v9, v8, v7, v2, v3);
}

uint64_t sub_22B6F81D8()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B6F82E8, v2, 0);
}

uint64_t sub_22B6F82E8()
{
  v1 = *(v0 + 536);
  (*(*(v0 + 408) + 8))(*(v0 + 448), *(v0 + 400));
  sub_22B4D0D64(v1, &qword_27D8CD610, &qword_22B7F95B8);
  sub_22B6FC3A0(*(v0 + 616), *(v0 + 272), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v2 = *(v0 + 632);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v11 = *(v0 + 536);
  v14 = *(v0 + 528);
  v15 = *(v0 + 520);
  v16 = *(v0 + 512);
  v17 = *(v0 + 504);
  v18 = *(v0 + 496);
  v19 = *(v0 + 488);
  v20 = *(v0 + 480);
  v21 = *(v0 + 472);
  v22 = *(v0 + 464);
  v23 = *(v0 + 448);
  v24 = *(v0 + 440);
  v25 = *(v0 + 432);
  v26 = *(v0 + 424);
  v27 = *(v0 + 392);
  v28 = *(v0 + 384);
  v29 = *(v0 + 360);
  v30 = *(v0 + 352);
  v31 = *(v0 + 344);
  v32 = *(v0 + 336);
  v33 = *(v0 + 328);
  v34 = *(v0 + 320);
  v35 = *(v0 + 312);
  (*(v0 + 624))(*(v0 + 272), 0, 1, *(v0 + 544));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B6F8554()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 288);

  sub_22B4CFB78((v0 + 16));
  v10 = *(v9 + 152);
  v4(v7, 1, 1, v5);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  sub_22B4D7E58(v7, v8, &unk_27D8CF790, &qword_22B7F9578);
  if (v3(v8, 1, v5) == 1)
  {
    v13 = *(v0 + 336);

    sub_22B4D0D64(v13, &unk_27D8CF790, &qword_22B7F9578);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
  }

  else
  {
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = *(v0 + 400);
    v17 = *(v0 + 336);
    *(v0 + 144) = v16;
    v18 = sub_22B6FC8CC((v0 + 120));
    v15(v18, v17, v16);
  }

  v19 = *(v0 + 696);
  v20 = *(v0 + 344);
  v12(0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0, v0 + 120);

  sub_22B4D0D64(v20, &unk_27D8CF790, &qword_22B7F9578);
  sub_22B4D0D64(v0 + 120, &unk_27D8CCDC0, &qword_22B7F9580);
  v21 = *(v0 + 288);
  v22 = v21[17];
  v23 = v21[18];
  sub_22B4D2BCC(v21 + 14, v22);
  v24 = *(v23 + 8);
  v31 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 704) = v26;
  *v26 = v0;
  v26[1] = sub_22B6F81D8;
  v27 = *(v0 + 448);
  v28 = *(v0 + 280);
  v29 = *(v0 + 288);

  return v31(v29, v28, v27, v22, v23);
}

void (*sub_22B6F8810(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_22B6F9E70(v4, a2);
  return sub_22B6F8888;
}

void sub_22B6F8888(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22B6F88D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22B6F88F4, 0, 0);
}

uint64_t sub_22B6F88F4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22B6F89AC, 0, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B6F89AC()
{
  v1 = v0[7];
  v2 = v1[17];
  v3 = v1[18];
  sub_22B4D2BCC(v1 + 14, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B6F8ADC;
  v7 = v0[6];
  v8 = v0[7];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_22B6F8ADC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B6F8BD8, 0, 0);
}

uint64_t sub_22B6F8BD8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B6F8C38(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F8CD4, 0, 0);
}

uint64_t sub_22B6F8CD4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22B6F8DCC;
    v5 = v0[6];
    v4 = v0[7];

    return sub_22B6F66B4(v4, v5);
  }

  else
  {
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B6F8DCC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  sub_22B4D0D64(v2, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6F8EF4, 0, 0);
}

uint64_t sub_22B6F8EF4()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B6F8F5C(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_22B6F9040;

  return sub_22B6F66B4(v5, a1);
}

uint64_t sub_22B6F9040()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B6F9150, v2, 0);
}

uint64_t sub_22B6F9150()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v3 = 1;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_22B6FC638(v1, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    v5 = *(v0 + 24);
  }

LABEL_7:

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_22B6F924C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F92E8, v1, 0);
}

uint64_t sub_22B6F92E8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = sub_22B6F64D4();
  v4 = sub_22B6F8810((v0 + 48), v2);
  v6 = v5;
  v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_22B6F5CDC();
  }

  (v4)(v0 + 48, 0);
  (v3)(v0 + 16, 0);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22B6F942C;
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);

  return sub_22B6F66B4(v9, v11);
}

uint64_t sub_22B6F942C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  sub_22B4D0D64(v2, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6F9568, v3, 0);
}

uint64_t sub_22B6F9568()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B6F95C8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F9664, v1, 0);
}

uint64_t sub_22B6F9664()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = sub_22B6F64D4();
  v4 = sub_22B6F8810((v0 + 48), v2);
  v6 = v5;
  v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_22B6F4628(1);
  }

  (v4)(v0 + 48, 0);
  (v3)(v0 + 16, 0);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22B6F97AC;
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);

  return sub_22B6F66B4(v9, v11);
}

uint64_t sub_22B6F97AC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  sub_22B4D0D64(v2, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6FC9D4, v3, 0);
}

uint64_t *IMDPersistentTaskCriticalLimiter.deinit()
{
  sub_22B4CFB78(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  v3 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IMDPersistentTaskCriticalLimiter.__deallocating_deinit()
{
  sub_22B4CFB78(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  v3 = v0[21];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B6F9990(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22B6F9A9C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22B7DC1C8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22B7DC318();
  *v1 = result;
  return result;
}

uint64_t sub_22B6F9B3C(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_22B6F9990(a1, a2, *v2);
  if (!v3)
  {
    v46 = 0;
    if (v19)
    {
      return v17[2];
    }

    v39 = v16;
    v40 = a1;
    v35 = v14;
    v36 = v11;
    v34 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v17 + 2;
      v21 = v17[2];
      if (v20 == v21)
      {
        return v44;
      }

      v37 = v7;
      v38 = a2;
      while (v20 < v21)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v45 = v17;
        v41 = v23;
        v24 = *(v7 + 72);
        v42 = v24 * v20;
        v43 = v17 + v23;
        v25 = v39;
        sub_22B4D7E58(v17 + v23 + v24 * v20, v39, &unk_27D8CEEC0, &qword_22B7FA060);
        v26 = v46;
        v27 = v40(v25);
        result = sub_22B4D0D64(v25, &unk_27D8CEEC0, &qword_22B7FA060);
        v46 = v26;
        if (v26)
        {
          return result;
        }

        if (v27)
        {
          v7 = v37;
          v17 = v45;
        }

        else
        {
          v28 = v44;
          if (v20 == v44)
          {
            v7 = v37;
            v17 = v45;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v30 = v24 * v44;
            v31 = v43;
            result = sub_22B4D7E58(&v43[v24 * v44], v35, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v20 >= v29)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_22B4D7E58(&v31[v42], v36, &unk_27D8CEEC0, &qword_22B7FA060);
            v17 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_22B7025B4(v17);
            }

            v33 = v17 + v41;
            result = sub_22B6FBA40(v36, v17 + v41 + v30, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v20 >= v17[2])
            {
              goto LABEL_29;
            }

            result = sub_22B6FBA40(v35, &v33[v32], &unk_27D8CEEC0, &qword_22B7FA060);
            *v34 = v17;
            v7 = v37;
            v28 = v44;
          }

          v44 = v28 + 1;
        }

        ++v20;
        v22 = v17 + 2;
        v21 = v17[2];
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void (*sub_22B6F9E70(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_22B6FA464(v6);
  v6[9] = sub_22B6F9F74(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_22B6F9F14;
}

void sub_22B6F9F14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22B6F9F74(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v3;
  v11 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v10[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[3] = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    v10[4] = swift_coroFrameAlloc();
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v12 + 64));
    v10[5] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[6] = v15;
  v16 = *(*(sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0) - 8) + 64);
  if (v8)
  {
    v10[7] = swift_coroFrameAlloc();
    v10[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v16);
    v10[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[9] = v17;
  v19 = *v4;
  v20 = sub_22B725570(a2);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      sub_22B7A3D04();
      v20 = v28;
      goto LABEL_17;
    }

    sub_22B7A1B64(v25, a3 & 1);
    v29 = *v4;
    v20 = sub_22B725570(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    type metadata accessor for IMPersistentTaskFlagGroup(0);
    result = sub_22B7DC578();
    __break(1u);
    return result;
  }

LABEL_17:
  v10[10] = v20;
  if (v26)
  {
    sub_22B6FC3A0(*(*v4 + 56) + *(v13 + 72) * v20, v18, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v13 + 56))(v18, v31, 1, v11);
  return sub_22B6FA22C;
}

void sub_22B6FA22C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_22B4D7E58(v5, v6, &qword_27D8CD600, &unk_22B7F95A0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_22B6FC3A0(v9, *(v2 + 5), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_22B6FC3A0(v13, v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
        sub_22B7695F0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_22B4D7E58(v5, v16, &qword_27D8CD600, &unk_22B7F95A0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_22B6FC3A0(v9, *(v2 + 6), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_22B6FC3A0(v13, v11[7] + *(*(v2 + 3) + 72) * v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      goto LABEL_10;
    }
  }

  sub_22B4D0D64(v9, &qword_27D8CD600, &unk_22B7F95A0);
  if (v8)
  {
    sub_22B787C70(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_22B4D0D64(v20, &qword_27D8CD600, &unk_22B7F95A0);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_22B6FA464(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B6FA48C;
}

uint64_t sub_22B6FA498(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B7DA968();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = sub_22B6F0AD4(&qword_27D8CD5E0, &qword_22B7F9570);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v33 - v21;
  v23 = *(v20 + 56);
  sub_22B6FC5D0(a1, &v33 - v21, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B6FC5D0(a2, &v22[v23], type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22B6FC5D0(v22, v17, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v33;
      v29 = v34;
      (*(v33 + 32))(v10, &v22[v23], v34);
      v27 = sub_22B7DA918();
      v31 = *(v30 + 8);
      v31(v10, v29);
      v31(v17, v29);
      goto LABEL_12;
    }

    v15 = v17;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22B6FC5D0(v22, v15, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v33;
      v25 = v34;
      (*(v33 + 32))(v8, &v22[v23], v34);
      v27 = sub_22B7DA918();
      v28 = *(v26 + 8);
      v28(v8, v25);
      v28(v15, v25);
LABEL_12:
      sub_22B6FC638(v22, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      return v27 & 1;
    }

LABEL_7:
    (*(v33 + 8))(v15, v34);
LABEL_10:
    sub_22B4D0D64(v22, &qword_27D8CD5E0, &qword_22B7F9570);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_22B6FC638(v22, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_22B6FA840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_22B6FA994(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_22B6FA840(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *sub_22B6FAA54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23[-v12];
  v24[3] = a4;
  v24[4] = a5;
  v14 = sub_22B6FC8CC(v24);
  (*(*(a4 - 8) + 32))(v14, a1, a4);
  swift_defaultActor_initialize();
  v15 = MEMORY[0x277D84F90];
  a3[20] = sub_22B71DBD4(MEMORY[0x277D84F90]);
  a3[21] = sub_22B71DDAC(v15);
  sub_22B4D0DE8(v24, (a3 + 14));
  a3[19] = a2;

  v16 = sub_22B7DBF58();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;

      sub_22B6F3B64(v20, v19, v13);
      v21 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
      swift_beginAccess();
      sub_22B7865A4(v13, v19);
      swift_endAccess();
      --v17;
    }

    while (v17);
  }

  sub_22B4CFB78(v24);
  return a3;
}

void *sub_22B6FAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13);
  type metadata accessor for IMDPersistentTaskCriticalLimiter();
  v15 = swift_allocObject();
  (*(v8 + 16))(v12, v14, a4);
  v16 = sub_22B6FAA54(v12, a2, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupCanExecute(_:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6FAF68;

  return v8(a1);
}

uint64_t sub_22B6FAF68(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupBeganExecuting(_:)(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return v8(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupStoppedExecuting(_:)(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return v8(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:deferredGroup:until:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22B6F12E8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:finishedDeferringGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22B6F12E8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:requestTTRForGroup:ranges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22B6F0D94;

  return v15(a1, a2, a3, a4, a5);
}

void sub_22B6FB69C()
{
  type metadata accessor for IMPersistentTaskFlagGroup(319);
  if (v0 <= 0x3F)
  {
    sub_22B6FB738();
    if (v1 <= 0x3F)
    {
      type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B6FB738()
{
  if (!qword_28141F2B0)
  {
    v0 = sub_22B7DBAA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28141F2B0);
    }
  }
}

void sub_22B6FB7C4()
{
  type metadata accessor for IMPersistentTaskFlagGroup(319);
  if (v0 <= 0x3F)
  {
    sub_22B6FB90C(319, &unk_28141F2D0, &unk_27D8CEEC0, &qword_22B7FA060, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22B6FB90C(319, &qword_28141EFB8, &qword_27D8CD5D8, &qword_22B7F9530, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22B6FB8C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_22B6FB90C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22B6FB8C4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22B6FB9C4()
{
  result = sub_22B7DA968();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B6FBA40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B6FBAA8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) + 36);
  return sub_22B7DA8D8() & 1;
}

uint64_t sub_22B6FBB04()
{
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_22B7DA968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(v0 + 152);
  v20 = sub_22B6F2648();
  if (v21)
  {
    return 0;
  }

  v40 = v5;
  v41 = v8;
  v37 = *&v20;
  v24 = v19[2];
  v23 = v19[3];

  v38 = "com.apple.imagent";
  v39 = "ults";
  v24(&v42, 0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0);

  if (!*(&v43 + 1))
  {
    sub_22B4D0D64(&v42, &unk_27D8CCDC0, &qword_22B7F9580);
    v26 = *(v12 + 56);
    v26(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v25 = swift_dynamicCast();
  v26 = *(v12 + 56);
  v26(v10, v25 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    v31 = v41;
    sub_22B4D0D64(v10, &unk_27D8CF790, &qword_22B7F9578);
    goto LABEL_9;
  }

  v27 = v37;
  (*(v12 + 32))(v18, v10, v11);
  sub_22B7DA938();
  sub_22B7DA898();
  v29 = v28;
  v30 = *(v12 + 8);
  v30(v16, v11);
  v30(v18, v11);
  v31 = v41;
  if (v29 <= v27)
  {
    return 0;
  }

LABEL_9:
  sub_22B7DA938();
  v26(v31, 0, 1, v11);
  v33 = v19[4];
  v32 = v19[5];
  v34 = v40;
  sub_22B4D7E58(v31, v40, &unk_27D8CF790, &qword_22B7F9578);
  if ((*(v12 + 48))(v34, 1, v11) == 1)
  {

    sub_22B4D0D64(v34, &unk_27D8CF790, &qword_22B7F9578);
    v42 = 0u;
    v43 = 0u;
  }

  else
  {
    *(&v43 + 1) = v11;
    v35 = sub_22B6FC8CC(&v42);
    (*(v12 + 32))(v35, v34, v11);
  }

  v33(0xD000000000000011, v39 | 0x8000000000000000, 0xD000000000000034, v38 | 0x8000000000000000, &v42);

  sub_22B4D0D64(v31, &unk_27D8CF790, &qword_22B7F9578);
  sub_22B4D0D64(&v42, &unk_27D8CCDC0, &qword_22B7F9580);
  return 1;
}

uint64_t sub_22B6FBF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ClientConnection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22B7DC1C8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22B7DC1C8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6FC070(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22B7DC1C8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_22B7DC1C8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_22B6F9A9C(result);

  return sub_22B6FBF70(v4, v2, 0);
}

uint64_t sub_22B6FC148(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_22B4D01A0(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22B7DC1C8();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_22B7DC1C8();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6FC278(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_22B7DC1C8();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_22B7DC1C8();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_22B6F9A9C(result);
    return sub_22B6FC148(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22B6FC35C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B7DA968();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B6FC3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B6FC408()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F0D94;

  return sub_22B6F8C38(v2, v3);
}

uint64_t sub_22B6FC4A0(uint64_t a1)
{
  v4 = *(sub_22B7DA968() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B6F12E8;

  return sub_22B6F5F18(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_22B6FC5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B6FC638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B6FC698()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B6F88D4(v2, v3);
}

uint64_t sub_22B6FC730()
{
  v1 = sub_22B7DA968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B6FC80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B6FC894(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_22B6FC8CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22B6FC958()
{
  result = sub_22B7DA968();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B6FC9F4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22B7AB6F4(0, v5, 0);
  v6 = v26;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *(i - 1);
    v10 = *i;
    v20 = *(i - 3);
    v21 = v9;
    v22 = v10;

    a1(&v23, &v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v23;
    v13 = v24;
    v12 = v25;
    v26 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v23;
      sub_22B7AB6F4((v14 > 1), v15 + 1, 1);
      v11 = v18;
      v6 = v26;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 32 * v15;
    *(v16 + 32) = v11;
    *(v16 + 48) = v13;
    *(v16 + 56) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B6FCB34()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F548);
  sub_22B4CFA74(v0, qword_28141F548);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B6FCBA0()
{
  v1 = *v0;
  sub_22B7DC668();
  sub_22B7DC698();
  return sub_22B7DC6B8();
}

uint64_t sub_22B6FCC14()
{
  v1 = *v0;
  sub_22B7DC668();
  sub_22B7DC698();
  return sub_22B7DC6B8();
}

id BackwardCompatibilityMessageIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void BackwardCompatibilityMessageIdentifier.init()()
{
  v1 = OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser;
  sub_22B6F0AD4(&qword_27D8CD628, &unk_22B7F9650);
  swift_allocObject();
  sub_22B6FE698(0, 0, 2048, 2048, sub_22B704BC8, sub_22B704BC4);
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages] = MEMORY[0x277D84F90];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BackwardCompatibilityMessageIdentifier();
  v3 = objc_msgSendSuper2(&v19, sel_init);
  v4 = OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser;
  v5 = *&v3[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser];
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  *(v5 + 16) = sub_22B6FE664;
  *(v5 + 24) = v6;
  v9 = v3;

  sub_22B4DDE5C(v7);

  v10 = OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages;
  v11 = IMSharedUtilitiesFrameworkBundle();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 localizations];
    v14 = sub_22B7DB918();

    v15 = *&v9[v10];
    *&v9[v10] = v14;

    v16 = *(*&v9[v10] + 16);
    if (!v16)
    {
LABEL_6:

      return;
    }

    v17 = 0;
    while (v17 != 0x8000000000)
    {
      v18 = *&v3[v4];
      sub_22B6FF854(v17);
      v17 += 256;
      if (!--v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_22B6FCE7C(unsigned int *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages];

  if (v1 >> 8 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = v1 >> 8;
  if (*(v3 + 16) <= v4)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_10:
    v17 = sub_22B7DB2B8();
    sub_22B4CFA74(v17, qword_28141F548);

    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();

    v20 = v43;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136315138;
      v23 = sub_22B4CFAAC(v42, v1, &v44);

      *(v21 + 4) = v23;
      v24 = "Backward compatibility message format is unlocalized in %s";
LABEL_12:
      _os_log_impl(&dword_22B4CC000, v18, v19, v24, v21, 0xCu);
      sub_22B4CFB78(v22);
      MEMORY[0x231898D60](v22, -1, -1);
      MEMORY[0x231898D60](v21, -1, -1);
LABEL_22:

      return 0;
    }

    goto LABEL_21;
  }

  v5 = v3 + 16 * v4;
  v6 = *(v5 + 32);
  v1 = *(v5 + 40);

  result = IMSharedUtilitiesFrameworkBundle();
  if (result)
  {
    v8 = result;

    v9 = sub_22B7DB678();
    v10 = sub_22B7DB678();
    v42 = v6;
    v11 = sub_22B7DB678();
    v43 = v8;
    v12 = [v8 localizedStringForKey:v9 value:0 table:v10 localization:v11];

    v13 = sub_22B7DB6A8();
    v15 = v14;

    v16 = v13 == 0xD00000000000002CLL && 0x800000022B80E480 == v15;
    if (v16 || (sub_22B7DC518() & 1) != 0)
    {

      if (qword_28141F540 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    v25 = sub_22B7DB678();
    v26 = sub_22B7DB678();
    v27 = sub_22B7DB678();
    v28 = [v43 localizedStringForKey:v25 value:0 table:v26 localization:v27];

    v29 = sub_22B7DB6A8();
    v31 = v30;

    if (v29 == 0xD00000000000002CLL && 0x800000022B80E4B0 == v31)
    {

      goto LABEL_17;
    }

    v32 = sub_22B7DC518();

    if (v32)
    {
LABEL_17:
      v20 = v43;

      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v33 = sub_22B7DB2B8();
      sub_22B4CFA74(v33, qword_28141F548);

      v18 = sub_22B7DB298();
      v19 = sub_22B7DBC98();

      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136315138;
        v34 = sub_22B4CFAAC(v42, v1, &v44);

        *(v21 + 4) = v34;
        v24 = "Backward compatibility message prefix is unlocalized in %s";
        goto LABEL_12;
      }

LABEL_21:

      goto LABEL_22;
    }

    sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22B7F93A0;
    v36 = MEMORY[0x277D837D0];
    *(v35 + 56) = MEMORY[0x277D837D0];
    v37 = sub_22B704A5C();
    *(v35 + 32) = v29;
    *(v35 + 40) = v31;
    *(v35 + 96) = v36;
    *(v35 + 104) = v37;
    *(v35 + 64) = v37;
    *(v35 + 72) = 16421;
    *(v35 + 80) = 0xE200000000000000;
    v38 = sub_22B7DB6B8();
    v40 = v39;

    v41 = sub_22B74B650(v38, v40);

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B6FD3F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 plainBody];
  if (v6)
  {
LABEL_4:
    v9 = sub_22B7DB6A8();
    v11 = v10;

    v12 = *(v3 + OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser);
    v60[0] = v9;
    v60[1] = v11;
    v13 = sub_22B7008D4(v9, v11, sub_22B704BC4);
    if (v14 && (v15 = v13, MEMORY[0x28223BE20](v13), v59[2] = v60, v17 = sub_22B6FC9F4(sub_22B703B48, v59, v16), , , , v17[2]))
    {
      v18 = v17[4];
      v19 = v17[5];
      v21 = v17[6];
      v20 = v17[7];

      if (v15)
      {
        __break(1u);
LABEL_32:
        swift_once();
LABEL_9:
        v26 = sub_22B7DB2B8();
        sub_22B4CFA74(v26, qword_28141F548);
        v27 = a1;
        v28 = sub_22B7DB298();
        v29 = sub_22B7DBC78();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v60[0] = v31;
          *v30 = 136315138;
          v32 = [v27 guid];

          if (v32)
          {
            v33 = sub_22B7DB6A8();
            v35 = v34;

            v36 = sub_22B4CFAAC(v33, v35, v60);

            *(v30 + 4) = v36;
            _os_log_impl(&dword_22B4CC000, v28, v29, "Found edited message matching backward compatibility message %s. Message can be dropped.", v30, 0xCu);
            sub_22B4CFB78(v31);
            MEMORY[0x231898D60](v31, -1, -1);
            MEMORY[0x231898D60](v30, -1, -1);
LABEL_29:

            return;
          }

          goto LABEL_34;
        }

LABEL_28:

        goto LABEL_29;
      }

      v22 = MEMORY[0x231895080](v18, v19, v21, v20);
      v24 = v23;

      sub_22B6FDB08(a1, v22, v24, a2);
      LOBYTE(v22) = v25;

      if (v22)
      {
        if (qword_28141F540 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_32;
      }

      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v47 = sub_22B7DB2B8();
      sub_22B4CFA74(v47, qword_28141F548);
      v27 = a1;
      v28 = sub_22B7DB298();
      v38 = sub_22B7DBC78();
      if (!os_log_type_enabled(v28, v38))
      {
        goto LABEL_28;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60[0] = v40;
      *v39 = 136315138;
      v48 = [v27 guid];

      if (!v48)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v49 = sub_22B7DB6A8();
      v51 = v50;

      v52 = sub_22B4CFAAC(v49, v51, v60);

      *(v39 + 4) = v52;
      v46 = "Could not find edited message matching backward compatibility message %s. Message cannot be dropped.";
    }

    else
    {

      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v37 = sub_22B7DB2B8();
      sub_22B4CFA74(v37, qword_28141F548);
      v27 = a1;
      v28 = sub_22B7DB298();
      v38 = sub_22B7DBC78();
      if (!os_log_type_enabled(v28, v38))
      {
        goto LABEL_28;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60[0] = v40;
      *v39 = 136315138;
      v41 = [v27 guid];

      if (!v41)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v42 = sub_22B7DB6A8();
      v44 = v43;

      v45 = sub_22B4CFAAC(v42, v44, v60);

      *(v39 + 4) = v45;
      v46 = "No backward compatibility message match found %s";
    }

LABEL_27:
    _os_log_impl(&dword_22B4CC000, v28, v38, v46, v39, 0xCu);
    sub_22B4CFB78(v40);
    MEMORY[0x231898D60](v40, -1, -1);
    MEMORY[0x231898D60](v39, -1, -1);
    goto LABEL_29;
  }

  v7 = [a1 body];
  if (v7)
  {
    v8 = v7;
    v6 = [v7 string];

    goto LABEL_4;
  }

  if (qword_28141F540 != -1)
  {
    swift_once();
  }

  v53 = sub_22B7DB2B8();
  sub_22B4CFA74(v53, qword_28141F548);
  v27 = a1;
  v28 = sub_22B7DB298();
  v38 = sub_22B7DBC78();
  if (!os_log_type_enabled(v28, v38))
  {
    goto LABEL_28;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v60[0] = v40;
  *v39 = 136315138;
  v54 = [v27 guid];

  if (v54)
  {
    v55 = sub_22B7DB6A8();
    v57 = v56;

    v58 = sub_22B4CFAAC(v55, v57, v60);

    *(v39 + 4) = v58;
    v46 = "No plain body found for message %s";
    goto LABEL_27;
  }

LABEL_36:
  __break(1u);
}

void sub_22B6FDB08(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_22B7DA968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = [a4 guid];
  if (v17)
  {
    v18 = [a1 time];
    if (!v18)
    {

      return;
    }

    v85 = v10;
    v86 = v9;
    v91 = v17;
    v19 = v18;
    sub_22B7DA928();

    v20 = -*MEMORY[0x277D19F58];
    sub_22B7DA8A8();
    sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
    v90 = a2;
    sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
    v21 = swift_allocObject();
    v93 = xmmword_22B7F93A0;
    *(v21 + 16) = xmmword_22B7F93A0;
    v22 = *MEMORY[0x277D19FA0];
    v23 = sub_22B7DB6A8();
    v88 = a3;
    v89 = ObjectType;
    v24 = v23;
    v26 = v25;
    v94 = v16;
    v87 = a1;
    v27 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v28 = sub_22B704A5C();
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    v29 = MEMORY[0x277D84A90];
    *(v21 + 96) = MEMORY[0x277D84A28];
    *(v21 + 104) = v29;
    *(v21 + 64) = v28;
    *(v21 + 72) = 0;
    v30 = sub_22B7DBC58();
    v31 = swift_allocObject();
    *(v31 + 16) = v93;
    v32 = *MEMORY[0x277D19F88];
    v33 = sub_22B7DB6A8();
    *(v31 + 56) = v27;
    *(v31 + 64) = v28;
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;
    v35 = sub_22B7DA8B8();
    v36 = sub_22B4D01A0(0, &qword_27D8CD668, 0x277CBEAA8);
    *(v31 + 96) = v36;
    v37 = sub_22B704AB0();
    v84 = v14;
    v38 = v37;
    *(v31 + 104) = v37;
    *(v31 + 72) = v35;
    v39 = sub_22B7DBC58();
    v40 = swift_allocObject();
    *(v40 + 16) = v93;
    v41 = sub_22B7DB6A8();
    *(v40 + 56) = v27;
    *(v40 + 64) = v28;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    v43 = sub_22B7DA8B8();
    *(v40 + 96) = v36;
    *(v40 + 104) = v38;
    *(v40 + 72) = v43;
    v44 = sub_22B7DBC58();
    sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_22B7F9610;
    *(v45 + 32) = v30;
    *(v45 + 40) = v39;
    *(v45 + 48) = v44;
    v83 = v30;
    v92 = v39;
    *&v93 = v44;
    v46 = sub_22B7DB8F8();

    v47 = [objc_opt_self() andPredicateWithSubpredicates_];

    v48 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:v32 ascending:0];
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22B7F9620;
    *(v49 + 32) = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = objc_opt_self();
    v52 = v48;
    v53 = [v51 synchronousDatabase];
    sub_22B4D01A0(0, &qword_27D8CD670, 0x277CCAC98);
    v54 = v47;
    v55 = sub_22B7DB8F8();

    v56 = swift_allocObject();
    v57 = v87;
    v58 = v88;
    v59 = v89;
    v60 = v90;
    v56[2] = v87;
    v56[3] = v60;
    v56[4] = v58;
    v56[5] = v50;
    v56[6] = v59;
    aBlock[4] = sub_22B704B18;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B766634;
    aBlock[3] = &unk_283F1C398;
    v61 = _Block_copy(aBlock);
    v62 = v57;

    v63 = v91;
    [v53 fetchMessageRecordsForChatRecordWithGUID:v91 filteredUsingPredicate:v54 sortedUsingDescriptors:v55 limit:50 completionHandler:v61];
    _Block_release(v61);

    swift_beginAccess();
    if (*(v50 + 16))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v91 = v53;
      v64 = v94;
      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v65 = sub_22B7DB2B8();
      sub_22B4CFA74(v65, qword_28141F548);
      v66 = v62;
      v67 = sub_22B7DB298();
      v68 = sub_22B7DBC98();
      v69 = os_log_type_enabled(v67, v68);
      v71 = v92;
      v70 = v93;
      if (!v69)
      {

        swift_unknownObjectRelease();
        v79 = *(v85 + 8);
        v80 = v86;
        v79(v84, v86);
        v81 = v64;
        goto LABEL_13;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v95 = v73;
      *v72 = 136315138;
      v74 = [v66 guid];

      if (!v74)
      {
        __break(1u);
        return;
      }

      v75 = sub_22B7DB6A8();
      v77 = v76;

      v78 = sub_22B4CFAAC(v75, v77, &v95);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_22B4CC000, v67, v68, "Backward compatibility message %s does not match any edited message in our database.", v72, 0xCu);
      sub_22B4CFB78(v73);
      MEMORY[0x231898D60](v73, -1, -1);
      MEMORY[0x231898D60](v72, -1, -1);

      swift_unknownObjectRelease();
    }

    v79 = *(v85 + 8);
    v80 = v86;
    v79(v84, v86);
    v81 = v94;
LABEL_13:
    v79(v81, v80);
    v82 = *(v50 + 16);
  }
}

void sub_22B6FE300(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v10 = sub_22B7DC1C8();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v10 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x231895C80](i, a1);
    }

    else
    {
      if (i >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_22B70412C(a2, a3, a4, v12);
    v15 = v14;

    if (v15)
    {
      swift_beginAccess();
      *(a5 + 16) = 1;
      return;
    }
  }
}

void sub_22B6FE414(void *a1)
{
  v3 = [v1 isFromMe];
  v4 = [a1 isFromMe];
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v5 = [v1 sender];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 sender];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 _stripFZIDPrefix];

        if (v9)
        {
          v10 = [v9 im_stripCategoryLabel];

          sub_22B7DB6A8();
          v11 = [v8 _stripFZIDPrefix];

          if (v11)
          {
            v12 = [v11 im_stripCategoryLabel];

            sub_22B7DB6A8();
            sub_22B704B70();
            sub_22B7DC0D8();

            return;
          }
        }

        else
        {

          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

id BackwardCompatibilityMessageIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackwardCompatibilityMessageIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22B6FE698(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = MEMORY[0x231894B30](0, 0x2000);
  *(v6 + 40) = v12;
  *(v6 + 48) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v6 + 64) = MEMORY[0x277D84F90];
  v14 = type metadata accessor for EvictionCounter();
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;
  *(v6 + 112) = [objc_allocWithZone(v14) init];
  sub_22B6F0AD4(&qword_27D8CD638, &qword_22B7F9740);
  v15 = sub_22B7DB958();
  *(v15 + 16) = 3;
  *(v15 + 32) = v13;
  *(v15 + 40) = v13;
  *(v15 + 48) = v13;
  *(v15 + 56) = xmmword_22B7F9630;
  *(v15 + 72) = v13;
  *(v15 + 80) = v13;
  *(v15 + 88) = v13;
  *(v15 + 96) = xmmword_22B7F9630;
  *(v15 + 112) = v13;
  *(v15 + 120) = v13;
  *(v15 + 128) = v13;
  *(v15 + 136) = xmmword_22B7F9630;
  *(v6 + 128) = v15;
  v17 = *(v6 + 16);
  v16 = *(v6 + 24);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_bridgeObjectRetain_n();
  a5(a1, a2);
  a6(v17, v16);
  v18 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v6 + 56) = v18;
  [v18 setTotalCostLimit_];
  if ((a3 - 0x10000000) >> 29 != 7)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(8 * a3, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = (8 * a3 - 1) | ((8 * a3 - 1) >> 1) | (((8 * a3 - 1) | ((8 * a3 - 1) >> 1)) >> 2);
  v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
  v21 = v20 | (v20 >> 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = MEMORY[0x231894B30](0, v23);
  v26 = v25;
  swift_beginAccess();
  v27 = *(v6 + 32);
  *(v6 + 32) = v24;
  *(v6 + 40) = v26;
  *(v6 + 48) = 0;

  v28 = *(v6 + 112);
  v29 = *(v6 + 56);
  v30 = v28;
  [v29 setDelegate_];
  a6(a1, a2);

  if ((a4 - 0x1000000000000000) >> 61 == 7)
  {
    *(v6 + 120) = 8 * a4;
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22B6FE8EC(unsigned int a1, uint64_t a2)
{
  v40 = *(a2 + 16);
  if (!v40)
  {
    return 0;
  }

  v4 = v2;
  v39 = a2 + 32;
  swift_beginAccess();
  v5 = 0;
  v36 = 0;
  v37 = 0;
  v6 = 0;
  v7 = 0;
  v38 = v2;
  while (1)
  {
    v8 = (v39 + 24 * v7);
    v9 = *v8;
    v10 = *(v4 + 128);
    if (*(v10 + 16) <= v9)
    {
      goto LABEL_85;
    }

    v42 = v6;
    v12 = *(v8 + 1);
    v11 = *(v8 + 2);
    v13 = (v10 + 40 * *v8);
    v14 = v13[4];
    v15 = v13[6];
    v4 = v13[7];
    v3 = v13[8];
    v43 = v13[5];
    v41 = v11;

    if (v3)
    {
      break;
    }

LABEL_11:
    v19 = 0;
LABEL_66:
    v4 = v38;
    v3 = v41;
    v6 = v42;
    if (v42)
    {
      if (v19 >= v5 && (v19 != v5 || v42[2] >= v41[2]))
      {

        v19 = v5;
        goto LABEL_5;
      }
    }

    v36 = v12;
    v37 = v9;
    v6 = v41;
LABEL_5:
    ++v7;
    v5 = v19;
    if (v7 == v40)
    {
      if (v6)
      {
        swift_beginAccess();
        v3 = *(v38 + 128);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 128) = v3;
        v5 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_73;
      }

      return v37;
    }
  }

  v16 = sub_22B7DC618();
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  v17 = sub_22B702144(v12, v16 % v3);
  if (v18)
  {

    goto LABEL_11;
  }

  v20 = 64 - v4;
  if (__OFSUB__(64, v4))
  {
    goto LABEL_88;
  }

  v19 = 0;
  v21 = v17 % v3;
  while (2)
  {
    v22 = __OFADD__(v19++, 1);
    if (v22)
    {
      goto LABEL_87;
    }

    v23 = 0;
    v24 = v21 + 1;
LABEL_16:
    v21 = v23 + v24;
    if (!__CFADD__(v23, v24))
    {
      v25 = v21 % v3 * v4;
      if (((v21 % v3) * v4) >> 64 != v25 >> 63)
      {
        goto LABEL_79;
      }

      if (v25 >= 0)
      {
        v26 = v21 % v3 * v4;
      }

      else
      {
        v26 = v25 + 63;
      }

      if (v25 < -63)
      {
        goto LABEL_80;
      }

      if (v26 >> 6 >= *(v15 + 16))
      {
        goto LABEL_81;
      }

      v27 = 64 - (v25 - (v26 & 0xFFFFFFFFFFFFFFC0));
      v22 = __OFSUB__(v27, v4);
      v28 = v27 - v4;
      if (v22)
      {
        goto LABEL_82;
      }

      if (v28 <= -65)
      {
        if (v20 < -64 || v20 > 64)
        {
          goto LABEL_65;
        }

        goto LABEL_31;
      }

      if (v28 > 64)
      {
        if (v20 <= -65 || v20 >= 65)
        {
          goto LABEL_65;
        }

LABEL_31:
        if ((v20 & 0x8000000000000000) == 0)
        {
LABEL_32:
          if (v20 == 64)
          {
            goto LABEL_65;
          }

          v29 = 0;
          goto LABEL_41;
        }

        if (v20 == -64)
        {
          goto LABEL_65;
        }

        v31 = 0;
LABEL_58:
        v29 = v31 << (v4 - 64);
LABEL_41:
        if (!v29)
        {
          goto LABEL_65;
        }

        v32 = v29 - 1;
        if (v32 < 0)
        {
          goto LABEL_83;
        }

        if (v32 >= *(v14 + 16))
        {
          goto LABEL_84;
        }

        if (*(v14 + 32 + 4 * v32) == v12)
        {
          if (v21 != -1)
          {
            continue;
          }

LABEL_65:

          goto LABEL_66;
        }

        if (v3 == ++v23)
        {
          goto LABEL_65;
        }

        goto LABEL_16;
      }

      v30 = *(v15 + 32 + 8 * (v26 >> 6));
      if (v28 < 0)
      {
        if (v28 != -64)
        {
          v31 = v30 >> -v28;
          if (v20 <= -65)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }

        if (v20 <= -65 || v20 >= 65)
        {
          goto LABEL_65;
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20 == 64)
          {
            goto LABEL_65;
          }

          v29 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        if (v28 != 64)
        {
          v31 = v30 << v28;
          if (v20 <= -65)
          {
            goto LABEL_65;
          }

LABEL_37:
          if (v20 > 64)
          {
            goto LABEL_65;
          }

          if ((v20 & 0x8000000000000000) == 0)
          {
            if (v20 == 64)
            {
              goto LABEL_65;
            }

            v29 = v31 >> v20;
            goto LABEL_41;
          }

          if (v20 == -64)
          {
            goto LABEL_65;
          }

          goto LABEL_58;
        }

        if (v20 <= -65 || v20 >= 65)
        {
          goto LABEL_65;
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }
      }

      if (v20 == -64)
      {
        goto LABEL_65;
      }

      v31 = 0;
      goto LABEL_58;
    }

    break;
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
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v3 = sub_22B7025DC(v3);
  *(v4 + 128) = v3;
LABEL_73:
  result = a1;
  if (v5 < *(v3 + 16))
  {
    sub_22B6FF288(a1, v36);
    *(v4 + 128) = v3;
    swift_endAccess();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B6FED4C(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = a1;
  if (*(a1 + 16) != 1 || (v6 = *(a1 + 24), !v6[2]))
  {
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (*(v5 + 32) == 1)
      {
        v20 = *(v5 + 24);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = (v20 + 32 * v21);
          v23 = *v22;
          v24 = v22[1];
          v26 = v22[2];
          v25 = v22[3];
          swift_beginAccess();
          v27 = *(v53 + 32);

          v4 = sub_22B703E38(v23, v24, v26, v25, 7411);

          v28 = sub_22B7034D0(v23, v24, v26, v25);
          if (v28)
          {
            v29 = v28;
            v30 = sub_22B703A6C(v28, 0);

            v31 = sub_22B75A09C(v54, (v30 + 4), v29, v23, v24, v26, v25);

            if (v31 != v29)
            {
              goto LABEL_44;
            }
          }

          else
          {

            v30 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = a2(0, *(v16 + 16) + 1, 1, v16);
          }

          i = *(v16 + 16);
          v32 = *(v16 + 24);
          v2 = i + 1;
          if (i >= v32 >> 1)
          {
            v16 = a2(v32 > 1, i + 1, 1, v16);
          }

          *(v16 + 16) = v2;
          v33 = v16 + 24 * i;
          *(v33 + 32) = 1;
          *(v33 + 40) = v4;
          *(v33 + 48) = v30;
        }
      }

      sub_22B74B1A4();
      v17 = v36 >> 1;
      v18 = ((v36 >> 1) - v35);
      if (v36 >> 1 == v35)
      {
        return v16;
      }

      if ((v36 >> 1) <= v35)
      {
        goto LABEL_41;
      }

      v37 = v34;
      v38 = v35;
      swift_unknownObjectRetain();
      swift_beginAccess();
      for (i = v37 + 32 * v38 + 16; ; i += 32)
      {
        v40 = *(i - 16);
        v39 = *(i - 8);
        v41 = *i;
        v42 = *(i + 8);
        v43 = *(v53 + 32);

        v44 = sub_22B703C30(v40, v39, v41, v42, 7829);

        v45 = sub_22B7034D0(v40, v39, v41, v42);
        if (v45)
        {
          break;
        }

        v46 = MEMORY[0x277D84F90];
LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = a2(0, *(v16 + 16) + 1, 1, v16);
        }

        v50 = *(v16 + 16);
        v49 = *(v16 + 24);
        if (v50 >= v49 >> 1)
        {
          v16 = a2(v49 > 1, v50 + 1, 1, v16);
        }

        *(v16 + 16) = v50 + 1;
        v51 = v16 + 24 * v50;
        *(v51 + 32) = 2;
        *(v51 + 40) = v44;
        *(v51 + 48) = v46;
        if (!--v18)
        {
          swift_unknownObjectRelease();
          return v16;
        }
      }

      v4 = v45;
      if (v45 < 1)
      {
        v46 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22B6F0AD4(&unk_27D8CEBF0, &qword_22B7F9738);
        v46 = swift_allocObject();
        v47 = j__malloc_size(v46);
        v48 = v47 - 32;
        if (v47 < 32)
        {
          v48 = v47 - 29;
        }

        v46[2] = v4;
        v46[3] = 2 * (v48 >> 2);
      }

      v2 = sub_22B7036E0(v54, (v46 + 4), v4, v40, v39, v41, v42);
      v5 = v55;

      if (v2 == v4)
      {
        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v16 = a2(v17 > 1, v18, 1, v16);
LABEL_9:
      *(v16 + 16) = v18;
      v19 = v16 + 24 * i;
      *(v19 + 32) = 0;
      *(v19 + 40) = v4;
      *(v19 + 48) = v2;
    }

    goto LABEL_33;
  }

  v7 = v6[4];
  v8 = v6[5];
  v10 = v6[6];
  v9 = v6[7];
  swift_beginAccess();
  v11 = *(v53 + 32);

  v4 = sub_22B703C30(v7, v8, v10, v9, 5417);

  v12 = sub_22B7034D0(v7, v8, v10, v9);
  if (!v12)
  {

    v2 = MEMORY[0x277D84F90];
LABEL_8:
    v16 = a2(0, 1, 1, MEMORY[0x277D84F90]);
    i = *(v16 + 16);
    v17 = *(v16 + 24);
    v18 = (i + 1);
    if (i >= v17 >> 1)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v13 = v12;
  v2 = sub_22B703A6C(v12, 0);
  v14 = sub_22B7036E0(v54, v2 + 32, v13, v7, v8, v10, v9);

  if (v14 == v13)
  {

    goto LABEL_8;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_22B6FF288(__int16 a1, int a2)
{
  sub_22B701D3C();
  v5 = *v2;
  v6 = *(*v2 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22B71B65C(0, v6 + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_22B71B65C((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[4 * v8 + 32] = a2;
  *v2 = v5;
  v9 = v2[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_22B71B560(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_22B71B560((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[2 * v11 + 32] = a1;
  v2[1] = v9;

  return sub_22B701F04(v6);
}

unint64_t sub_22B6FF3BC(uint64_t a1, uint64_t a2, void (*a3)(__objc2_class **, uint64_t))
{
  v42 = *(a2 + 16);
  if (!v42)
  {
LABEL_69:
    v4 = 0;
    v41 = 1;
    return v4 | (v41 << 16);
  }

  v5 = v3;
  v43 = a2 + 32;
  result = swift_beginAccess();
  v7 = 0;
  while (1)
  {
    v8 = (v43 + 24 * v7);
    v9 = *(v5 + 128);
    if (*(v9 + 16) <= *v8)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return result;
    }

    v45 = v7;
    v10 = *(v8 + 2);
    v11 = (v9 + 40 * *v8);
    v12 = v11[5];
    v14 = v11[6];
    v13 = v11[7];
    v15 = v11[8];
    v48 = v11[4];

    if (v15)
    {
      v49 = v13;

      result = sub_22B7DC618();
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v16 = sub_22B702144(v10, result % v15);
      v18 = v17;

      v19 = v49;
      if ((v18 & 1) == 0)
      {
        break;
      }
    }

LABEL_3:
    v7 = v45 + 1;

    if (v45 + 1 == v42)
    {
      goto LABEL_69;
    }
  }

  v20 = 64 - v49;
  if (__OFSUB__(64, v49))
  {
    goto LABEL_80;
  }

  v44 = v14 + 32;
  v21 = v16 % v15;
  v51 = v12 + 30;
  v52 = -1 - v49;
  v46 = v14;
  v47 = v12;
  v50 = 64 - v49;
  while (1)
  {
    v22 = v21 % v15 * v19;
    if (((v21 % v15) * v19) >> 64 != v22 >> 63)
    {
      goto LABEL_73;
    }

    if (v22 >= 0)
    {
      v23 = v21 % v15 * v19;
    }

    else
    {
      v23 = v22 + 63;
    }

    if (v22 < -63)
    {
      goto LABEL_74;
    }

    if (v23 >> 6 >= *(v14 + 16))
    {
      goto LABEL_75;
    }

    v24 = 64 - (v22 - (v23 & 0xFFFFFFFFFFFFFFC0));
    v25 = __OFSUB__(v24, v19);
    v26 = v24 - v19;
    if (v25)
    {
      goto LABEL_76;
    }

    if (v26 <= -65 || v26 > 64)
    {
LABEL_19:
      if (v52 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_67;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v20 >= 0x40)
        {
          goto LABEL_67;
        }

        goto LABEL_22;
      }

      if (v20 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_67;
      }

LABEL_56:
      v27 = 0;
      goto LABEL_60;
    }

    v28 = *(v44 + 8 * (v23 >> 6));
    if (v26 < 0)
    {
      break;
    }

    if (v26 == 64)
    {
      goto LABEL_19;
    }

    v27 = v28 << v26;
LABEL_26:
    if (v52 < 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_67;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      if (v20 >= 0x40)
      {
        goto LABEL_67;
      }

      goto LABEL_29;
    }

    if (v20 <= 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_67;
    }

LABEL_60:
    v29 = v27 << (v49 - 64);
    if ((v29 & 0x8000000000000000) != 0)
    {
LABEL_72:
      __break(1u);
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

LABEL_30:
    if (!v29)
    {
      goto LABEL_67;
    }

    if (v29 > *(v12 + 16))
    {
      goto LABEL_77;
    }

    v4 = *(v51 + 2 * v29);
    v21 = sub_22B702144(v10, v21 + 1);
    v31 = v30;
    result = sub_22B701320(v4, 0, a3);
    if (result)
    {
      v32 = v5;
      if (*(result + 16) == *(a1 + 16) && *(result + 32) == *(a1 + 32))
      {
        v33 = *(result + 24);
        v34 = *(a1 + 24);
        v35 = *(v33 + 16);
        if (v35 == *(v34 + 16))
        {
          if (!v35 || v33 == v34)
          {

            v41 = 0;
            return v4 | (v41 << 16);
          }

          v36 = (v33 + 56);
          v37 = (v34 + 56);
          while (1)
          {
            v38 = *(v36 - 1) == *(v37 - 1) && *v36 == *v37;
            v39 = v38 && *(v36 - 3) >> 16 == *(v37 - 3) >> 16;
            v40 = v39 && *(v36 - 2) >> 16 == *(v37 - 2) >> 16;
            if (!v40 && (sub_22B7DC4D8() & 1) == 0)
            {
              break;
            }

            v36 += 4;
            v37 += 4;
            if (!--v35)
            {
              goto LABEL_68;
            }
          }
        }
      }

      v5 = v32;
      v14 = v46;
      v12 = v47;
      v19 = v49;
    }

    v20 = 64 - v49;
    if ((v31 & 1) != 0 || v21 == -1)
    {
      goto LABEL_3;
    }
  }

  if (v26 != -64)
  {
    v27 = v28 >> -v26;
    goto LABEL_26;
  }

  if (v52 < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_67;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v19 = v49;
    LOBYTE(v20) = 64 - v49;
    v12 = v47;
    if (v50 >= 0x40)
    {
      goto LABEL_67;
    }

LABEL_22:
    v27 = 0;
LABEL_29:
    v29 = v27 >> v20;
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_30;
  }

  v19 = v49;
  v12 = v47;
  if (v50 > 0xFFFFFFFFFFFFFFC0)
  {
    goto LABEL_56;
  }

LABEL_67:
  __break(1u);
LABEL_68:

  v41 = 0;
  return v4 | (v41 << 16);
}

void sub_22B6FF854(int a1)
{
  v71 = a1;
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_99:
    __break(1u);
    return;
  }

  v3 = v1;
  LODWORD(v4) = a1;
  v61 = *(v1 + 80);
  v5 = *(v1 + 24);

  v6 = v2(&v71);
  sub_22B4DDE5C(v2);
  if (!v6)
  {
    goto LABEL_76;
  }

  v7 = sub_22B6FED4C(v6, sub_22B71B8BC);
  if ((sub_22B6FF3BC(v6, v7, sub_22B704BC4) & 0x10000) == 0)
  {

    goto LABEL_76;
  }

  v8 = *(v3 + 64);
  v9 = *(v8 + 16);
  if (v9 >> 15)
  {
    goto LABEL_89;
  }

  v10 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_22B71B8A8((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 16) = v13 + 1;
    *(v8 + 4 * v13 + 32) = v4;
    *(v3 + 64) = v8;
    v14 = sub_22B6FE8EC(v9, v7);
    v16 = v15;

    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [*(v3 + 56) setObject:v6 forKey:v7 cost:sub_22B74A1AC()];

    if (v16)
    {
      v7 = qword_22B7F9790[v14];
      swift_beginAccess();
      sub_22B70232C(v16, v7, 1);
      swift_endAccess();
    }

    swift_beginAccess();
    v17 = *(v3 + 40);
    if (v17 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v18 = 25 * v17;
    if ((v17 * 25) >> 64 != (25 * v17) >> 63)
    {
      goto LABEL_92;
    }

    v19 = *(v3 + 48);
    if (v19 <= (v18 / 0x64))
    {
      break;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_93;
    }

    v20 = 2 * v19;
    v21 = 200 * v19;
    if ((v20 * 100) >> 64 != v21 >> 63)
    {
      goto LABEL_94;
    }

    if (v21 >> 31 <= 0x18)
    {
      v13 = v21 / 0x19uLL;
      if (qword_27D8CCC18 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
LABEL_18:
    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_27D8CE680);
    v8 = sub_22B7DB298();
    v23 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v23))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v13 >> 3;
      _os_log_impl(&dword_22B4CC000, v8, v23, "The number of 1 bits in the bloom filter was too large. Increasing filter size to %d bytes.", v7, 8u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v24 = (v13 - 1) | ((v13 - 1) >> 1) | (((v13 - 1) | ((v13 - 1) >> 1)) >> 2);
    v25 = v24 | (v24 >> 4) | ((v24 | (v24 >> 4)) >> 8);
    v26 = v25 | HIWORD(v25);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v27 = MEMORY[0x231894B30](0, (v26 + 1));
    v28 = *(v3 + 32);
    *(v3 + 32) = v27;
    *(v3 + 40) = v29;
    *(v3 + 48) = 0;

    v30 = *(*(v3 + 64) + 16);
    if (v30 >> 15)
    {
      goto LABEL_98;
    }

    if (!v30)
    {
      break;
    }

    v9 = 0;
    LODWORD(v4) = 40;
    v59 = v3;
    v57 = v6;
    v58 = *(*(v3 + 64) + 16);
    while (1)
    {
      if (v9 >= v30)
      {
        goto LABEL_88;
      }

      v8 = v3;
      v31 = sub_22B701320(v9, 0, sub_22B704BC4);
      if (v31)
      {
        break;
      }

LABEL_25:
      v9 = (v9 + 1);
      LOWORD(v30) = v58;
      if (v9 == v58)
      {
        goto LABEL_75;
      }
    }

    v8 = v3;
    v32 = sub_22B6FED4C(v31, sub_22B71B8BC);
    v33 = v32;
    v63 = *(v32 + 16);
    if (!v63)
    {
LABEL_24:

      v6 = v57;
      goto LABEL_25;
    }

    v62 = v32 + 32;
    swift_beginAccess();
    v8 = 0;
    v60 = v33;
    while (1)
    {
      if (v8 >= *(v33 + 16))
      {
        goto LABEL_84;
      }

      v35 = (v62 + 24 * v8);
      v36 = *(v3 + 128);
      if (*(v36 + 16) <= *v35)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v67 = v8;
      v37 = *(v35 + 2);
      v7 = *(v35 + 2);
      v64 = *v35;
      v38 = (v36 + 40 * *v35);
      v39 = v38[5];
      v40 = v38[6];
      v6 = v38[7];
      v41 = v38[8];
      v73[0] = v38[4];
      v8 = v73[0];
      v73[1] = v39;
      v73[2] = v40;
      v73[3] = v6;
      v73[4] = v41;
      v66 = v37;

      v69 = v8;
      swift_bridgeObjectRetain_n();
      v68 = v39;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v41)
      {
        v42 = sub_22B7DC618();
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        v8 = v73;
        v43 = sub_22B702144(v7, v42 % v41);
        if ((v44 & 1) == 0)
        {
          break;
        }
      }

      v7 = v39;

LABEL_38:
      v34 = v67;

LABEL_31:
      v8 = v34 + 1;

      if (v8 == v63)
      {
        goto LABEL_24;
      }
    }

    v4 = 64 - v6;
    if (!__OFSUB__(64, v6))
    {
      v45 = v43 % v41;
      v72[0] = v69;
      v72[1] = v39;
      v72[2] = v40;
      v72[3] = v6;
      v72[4] = v41;
      v65 = v40 + 32;
      v70 = *(v40 + 16);
      v46 = *(v39 + 16);
      v47 = -1 - v6;
      while (1)
      {
        v48 = v45 % v41 * v6;
        if (((v45 % v41) * v6) >> 64 != v48 >> 63)
        {
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
          goto LABEL_85;
        }

        if (v48 >= 0)
        {
          v49 = v45 % v41 * v6;
        }

        else
        {
          v49 = v48 + 63;
        }

        if (v48 < -63)
        {
          goto LABEL_80;
        }

        if (v49 >> 6 >= v70)
        {
          goto LABEL_81;
        }

        v50 = 64 - (v48 - (v49 & 0xFFFFFFFFFFFFFFC0));
        v51 = __OFSUB__(v50, v6);
        v52 = v50 - v6;
        if (v51)
        {
          goto LABEL_82;
        }

        if (v52 <= -65 || v52 > 64)
        {
          break;
        }

        v54 = *(v65 + 8 * (v49 >> 6));
        if (v52 < 0)
        {
          if (v52 == -64)
          {
            break;
          }

          v53 = v54 >> -v52;
          if (v47 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v52 == 64)
          {
            break;
          }

          v53 = v54 << v52;
          if (v47 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v4 >= 0x40)
          {
            goto LABEL_79;
          }

LABEL_59:
          v55 = v53 >> v4;
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          goto LABEL_60;
        }

        if (v4 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_79;
        }

LABEL_72:
        v55 = v53 << (v6 - 64);
        if ((v55 & 0x8000000000000000) != 0)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_60:
        if (!v55)
        {
          goto LABEL_79;
        }

        if (v55 > v46)
        {
          goto LABEL_83;
        }

        v3 = *(v68 + 30 + 2 * v55);
        v8 = v72;
        v45 = sub_22B702144(v7, v45 + 1);
        if (v3 == v9)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v7 = qword_22B7F9790[v64];
          v3 = v59;
          swift_beginAccess();
          sub_22B70232C(v66, v7, 1);
          swift_endAccess();
          LODWORD(v4) = 40;
          v33 = v60;
          v34 = v67;
          goto LABEL_31;
        }

        if ((v56 & 1) != 0 || v45 == -1)
        {

          v7 = v68;

          v3 = v59;
          v33 = v60;
          LODWORD(v4) = 40;
          goto LABEL_38;
        }
      }

      if (v47 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_79;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          goto LABEL_79;
        }

        v53 = 0;
        goto LABEL_59;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_79;
      }

      v53 = 0;
      goto LABEL_72;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v8 = sub_22B71B8A8(0, v9 + 1, 1, v8);
    *(v3 + 64) = v8;
  }

LABEL_75:

LABEL_76:
  *(v3 + 80) = v61;
}

void sub_22B700088(int a1)
{
  v71 = a1;
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_99:
    __break(1u);
    return;
  }

  v3 = v1;
  LODWORD(v4) = a1;
  v61 = *(v1 + 80);
  v5 = *(v1 + 24);

  v6 = v2(&v71);
  sub_22B4DDE5C(v2);
  if (!v6)
  {
    goto LABEL_76;
  }

  v7 = sub_22B6FED4C(v6, sub_22B71C660);
  if ((sub_22B6FF3BC(v6, v7, sub_22B704BC4) & 0x10000) == 0)
  {

    goto LABEL_76;
  }

  v8 = *(v3 + 64);
  v9 = *(v8 + 16);
  if (v9 >> 15)
  {
    goto LABEL_89;
  }

  v10 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_22B71C550((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 16) = v13 + 1;
    *(v8 + 4 * v13 + 32) = v4;
    *(v3 + 64) = v8;
    v14 = sub_22B6FE8EC(v9, v7);
    v16 = v15;

    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [*(v3 + 56) setObject:v6 forKey:v7 cost:sub_22B74A1AC()];

    if (v16)
    {
      v7 = qword_22B7F9790[v14];
      swift_beginAccess();
      sub_22B70232C(v16, v7, 1);
      swift_endAccess();
    }

    swift_beginAccess();
    v17 = *(v3 + 40);
    if (v17 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v18 = 25 * v17;
    if ((v17 * 25) >> 64 != (25 * v17) >> 63)
    {
      goto LABEL_92;
    }

    v19 = *(v3 + 48);
    if (v19 <= (v18 / 0x64))
    {
      break;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_93;
    }

    v20 = 2 * v19;
    v21 = 200 * v19;
    if ((v20 * 100) >> 64 != v21 >> 63)
    {
      goto LABEL_94;
    }

    if (v21 >> 31 <= 0x18)
    {
      v13 = v21 / 0x19uLL;
      if (qword_27D8CCC18 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
LABEL_18:
    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_27D8CE680);
    v8 = sub_22B7DB298();
    v23 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v23))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v13 >> 3;
      _os_log_impl(&dword_22B4CC000, v8, v23, "The number of 1 bits in the bloom filter was too large. Increasing filter size to %d bytes.", v7, 8u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v24 = (v13 - 1) | ((v13 - 1) >> 1) | (((v13 - 1) | ((v13 - 1) >> 1)) >> 2);
    v25 = v24 | (v24 >> 4) | ((v24 | (v24 >> 4)) >> 8);
    v26 = v25 | HIWORD(v25);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v27 = MEMORY[0x231894B30](0, (v26 + 1));
    v28 = *(v3 + 32);
    *(v3 + 32) = v27;
    *(v3 + 40) = v29;
    *(v3 + 48) = 0;

    v30 = *(*(v3 + 64) + 16);
    if (v30 >> 15)
    {
      goto LABEL_98;
    }

    if (!v30)
    {
      break;
    }

    v9 = 0;
    LODWORD(v4) = 40;
    v59 = v3;
    v57 = v6;
    v58 = *(*(v3 + 64) + 16);
    while (1)
    {
      if (v9 >= v30)
      {
        goto LABEL_88;
      }

      v8 = v3;
      v31 = sub_22B701320(v9, 0, sub_22B704BC4);
      if (v31)
      {
        break;
      }

LABEL_25:
      v9 = (v9 + 1);
      LOWORD(v30) = v58;
      if (v9 == v58)
      {
        goto LABEL_75;
      }
    }

    v8 = v3;
    v32 = sub_22B6FED4C(v31, sub_22B71C660);
    v33 = v32;
    v63 = *(v32 + 16);
    if (!v63)
    {
LABEL_24:

      v6 = v57;
      goto LABEL_25;
    }

    v62 = v32 + 32;
    swift_beginAccess();
    v8 = 0;
    v60 = v33;
    while (1)
    {
      if (v8 >= *(v33 + 16))
      {
        goto LABEL_84;
      }

      v35 = (v62 + 24 * v8);
      v36 = *(v3 + 128);
      if (*(v36 + 16) <= *v35)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v67 = v8;
      v37 = *(v35 + 2);
      v7 = *(v35 + 2);
      v64 = *v35;
      v38 = (v36 + 40 * *v35);
      v39 = v38[5];
      v40 = v38[6];
      v6 = v38[7];
      v41 = v38[8];
      v73[0] = v38[4];
      v8 = v73[0];
      v73[1] = v39;
      v73[2] = v40;
      v73[3] = v6;
      v73[4] = v41;
      v66 = v37;

      v69 = v8;
      swift_bridgeObjectRetain_n();
      v68 = v39;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v41)
      {
        v42 = sub_22B7DC618();
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        v8 = v73;
        v43 = sub_22B702144(v7, v42 % v41);
        if ((v44 & 1) == 0)
        {
          break;
        }
      }

      v7 = v39;

LABEL_38:
      v34 = v67;

LABEL_31:
      v8 = v34 + 1;

      if (v8 == v63)
      {
        goto LABEL_24;
      }
    }

    v4 = 64 - v6;
    if (!__OFSUB__(64, v6))
    {
      v45 = v43 % v41;
      v72[0] = v69;
      v72[1] = v39;
      v72[2] = v40;
      v72[3] = v6;
      v72[4] = v41;
      v65 = v40 + 32;
      v70 = *(v40 + 16);
      v46 = *(v39 + 16);
      v47 = -1 - v6;
      while (1)
      {
        v48 = v45 % v41 * v6;
        if (((v45 % v41) * v6) >> 64 != v48 >> 63)
        {
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
          goto LABEL_85;
        }

        if (v48 >= 0)
        {
          v49 = v45 % v41 * v6;
        }

        else
        {
          v49 = v48 + 63;
        }

        if (v48 < -63)
        {
          goto LABEL_80;
        }

        if (v49 >> 6 >= v70)
        {
          goto LABEL_81;
        }

        v50 = 64 - (v48 - (v49 & 0xFFFFFFFFFFFFFFC0));
        v51 = __OFSUB__(v50, v6);
        v52 = v50 - v6;
        if (v51)
        {
          goto LABEL_82;
        }

        if (v52 <= -65 || v52 > 64)
        {
          break;
        }

        v54 = *(v65 + 8 * (v49 >> 6));
        if (v52 < 0)
        {
          if (v52 == -64)
          {
            break;
          }

          v53 = v54 >> -v52;
          if (v47 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v52 == 64)
          {
            break;
          }

          v53 = v54 << v52;
          if (v47 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v4 >= 0x40)
          {
            goto LABEL_79;
          }

LABEL_59:
          v55 = v53 >> v4;
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          goto LABEL_60;
        }

        if (v4 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_79;
        }

LABEL_72:
        v55 = v53 << (v6 - 64);
        if ((v55 & 0x8000000000000000) != 0)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_60:
        if (!v55)
        {
          goto LABEL_79;
        }

        if (v55 > v46)
        {
          goto LABEL_83;
        }

        v3 = *(v68 + 30 + 2 * v55);
        v8 = v72;
        v45 = sub_22B702144(v7, v45 + 1);
        if (v3 == v9)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v7 = qword_22B7F9790[v64];
          v3 = v59;
          swift_beginAccess();
          sub_22B70232C(v66, v7, 1);
          swift_endAccess();
          LODWORD(v4) = 40;
          v33 = v60;
          v34 = v67;
          goto LABEL_31;
        }

        if ((v56 & 1) != 0 || v45 == -1)
        {

          v7 = v68;

          v3 = v59;
          v33 = v60;
          LODWORD(v4) = 40;
          goto LABEL_38;
        }
      }

      if (v47 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_79;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          goto LABEL_79;
        }

        v53 = 0;
        goto LABEL_59;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_79;
      }

      v53 = 0;
      goto LABEL_72;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v8 = sub_22B71C550(0, v9 + 1, 1, v8);
    *(v3 + 64) = v8;
  }

LABEL_75:

LABEL_76:
  *(v3 + 80) = v61;
}

uint64_t sub_22B7008D4(unint64_t a1, unint64_t a2, void (*a3)(__objc2_class **, uint64_t))
{
  v5 = v3;
  swift_beginAccess();
  v8 = *(v3 + 32);
  v9 = *(v5 + 40);
  v10 = MEMORY[0x277D84F90];
  v55[0] = MEMORY[0x277D84F90];

  sub_22B7CDCB0(a1, a2, 0xFuLL, 5417, 1, v8, v9, v55);

  v11 = sub_22B700CB0(0, v55[0]);

  v55[8] = v11;
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v55[0] = v10;
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1;
  }

  v15 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v16 = v15 | (v14 << 16);

  sub_22B7CE088(a1, a2, v16, 7411, 1, v12, v13, v55);

  v17 = sub_22B700CB0(1u, v55[0]);

  v55[9] = v17;
  v18 = *(v5 + 32);
  v19 = *(v5 + 40);
  v20 = MEMORY[0x277D84FA0];
  v54 = v10;
  v55[0] = MEMORY[0x277D84FA0];

  sub_22B7CE9A0(a1, a2, 7829, 1, v18, v19, v55, &v54);

  v21 = v54;

  v22 = sub_22B700CB0(2u, v21);

  v55[10] = v22;
  v55[0] = v20;
  v23 = a1;

  sub_22B755E24(v24);

  sub_22B755E24(v25);

  sub_22B755E24(v26);
  sub_22B6F0AD4(&qword_27D8CD640, &qword_22B7F9748);
  swift_arrayDestroy();
  v27 = sub_22B700FA0(a1, a2, v55[0], a3);
  v29 = v28;
  v31 = v30;

  if (!v29)
  {
    return 0;
  }

  v32 = sub_22B747CA4(a1, a2, v29);

  v33 = sub_22B703FDC(0, a1, a2);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = sub_22B704078(v33, v35, v37, v39, *(v32 + 16));

  v41 = *(v31 + 40);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = *(v31 + 40);

    v52 = v27;
    v53 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v40 = sub_22B7025F0(v40);
    }

    v44 = 0;
    v45 = (v32 + 56);
    do
    {
      v46 = *(v41 + 32 + 8 * v44);
      if ((v46 & 0x8000000000000000) == 0 && v46 < v40[2])
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (v44 >= *(v32 + 16))
        {
          goto LABEL_20;
        }

        v48 = *(v45 - 1);
        v47 = *v45;
        v49 = &v40[4 * v46 + 4];
        v50 = *(v49 + 24);
        *v49 = *(v45 - 3);
        *(v49 + 16) = v48;
        *(v49 + 24) = v47;
      }

      ++v44;
      v45 += 4;
    }

    while (v42 != v44);

    v27 = v52;
    v23 = v53;
  }

  else
  {
  }

  sub_22B747CA4(v23, a2, v29);

  return v27;
}

unint64_t sub_22B700CB0(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  result = swift_beginAccess();
  v6 = *(v2 + 128);
  if (*(v6 + 16) <= v4)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v31 = *(a2 + 16);
  if (v31)
  {
    v7 = (v6 + 40 * v4);
    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v35 = v7[7];
    v11 = v7[8];
    v30 = a2 + 32;
    v33 = v9 + 30;

    v12 = 0;
    v13 = MEMORY[0x277D84FA0];
    while (1)
    {
      v14 = *(v30 + 8 * v12);

      v32 = v12;
      if (v11)
      {

        result = sub_22B7DC618();
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v15 = sub_22B702144(v14, result % v11);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

LABEL_4:
      v12 = v32 + 1;

      if (v32 + 1 == v31)
      {

        return v13;
      }
    }

    v34 = v14;
    v18 = v15 % v11;
    v19 = v13 + 56;
    while (1)
    {
      result = sub_22B714034(v18 % v11, v10, v35);
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!result)
      {
        goto LABEL_26;
      }

      if (result > *(v9 + 16))
      {
        goto LABEL_27;
      }

      v20 = v9;
      v21 = *(v33 + 2 * result);
      v22 = sub_22B702144(v34, v18 + 1);
      v18 = v22;
      if (v23)
      {
        v24 = -1;
      }

      else
      {
        v24 = v22;
      }

      v25 = MEMORY[0x231895FC0](*(v13 + 40), v21, 2);
      v26 = -1 << *(v13 + 32);
      v27 = v25 & ~v26;
      if ((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (*(*(v13 + 48) + 2 * v27) != v21)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v9 = v20;
        if (v24 == -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_20:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B7CAD44(v21, v27, isUniquelyReferenced_nonNull_native);
        v9 = v20;
        if (v24 == -1)
        {
          goto LABEL_4;
        }

        v19 = v13 + 56;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22B700FA0(unint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(__objc2_class **, uint64_t))
{
  v6 = v4;
  v7 = a3;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v54 = (v11 + 63) >> 6;

  v14 = 0;
  v53 = MEMORY[0x277D84F90];
  if (v13)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v16 = *(v7[6] + ((v14 << 7) | (2 * v15)));
        v17 = sub_22B701320(v16, 1, a4);
        if (v17)
        {
          break;
        }

        if (!v13)
        {
          goto LABEL_6;
        }
      }

      v47 = v16;
      v48 = v10;
      v49 = a4;
      v50 = v7;
      v51 = v6;
      v52 = v17;
      v19 = *(*(v17 + 24) + 16);

      v21 = 0;
      v22 = (v20 + 56);
      v55 = -v19;
      v56 = v20;
      v23 = -1;
      while (v55 + v23 != -1)
      {
        if (++v23 >= *(v56 + 16))
        {
          goto LABEL_36;
        }

        v57 = v22 + 4;
        v24 = a2;
        v7 = a1;
        v26 = *(v22 - 1);
        v25 = *v22;
        v27 = *(v22 - 3);
        v28 = *(v22 - 2);

        a1 = v7;
        v29 = sub_22B7DC088();
        a2 = v24;

        v22 = v57;
        v30 = __OFADD__(v21, v29);
        v21 += v29;
        if (v30)
        {
          goto LABEL_37;
        }
      }

      v31 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_22B71BC38(0, v53[2] + 1, 1, v53);
      }

      v6 = v51;
      v32 = v52;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22B71BC38((v33 > 1), v34 + 1, 1, v31);
        v32 = v52;
      }

      v31[2] = v34 + 1;
      v53 = v31;
      v35 = &v31[3 * v34];
      *(v35 + 16) = v47;
      v35[5] = v32;
      v35[6] = v21;
      a4 = v49;
      v7 = v50;
      v10 = v48;
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v18 >= v54)
    {
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v14;
    if (v13)
    {
      v14 = v18;
      goto LABEL_4;
    }
  }

  v58 = v53;

  sub_22B702668(&v58);

  v7 = v58;
  v36 = v58[2];
  if (!v36)
  {
LABEL_28:

    return 0;
  }

  v37 = 0;
  v38 = v58 + 5;
  while (v37 < v7[2])
  {
    v39 = *(v38 - 4);
    v40 = *v38;

    if (sub_22B70183C(a1, a2))
    {

      v44 = v6[12];
      v30 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v30)
      {
        goto LABEL_38;
      }

      v6[12] = v45;
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v46 = v6[8];
      if (*(v46 + 16) <= v39)
      {
        goto LABEL_40;
      }

      return *(v46 + 4 * v39 + 32);
    }

    v41 = v6[13];
    v30 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v30)
    {
      goto LABEL_35;
    }

    ++v37;
    v6[13] = v42;
    v38 += 3;
    if (v36 == v37)
    {
      goto LABEL_28;
    }
  }

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

  __break(1u);
  return result;
}

uint64_t sub_22B701320(__int16 a1, char a2, void (*a3)(__objc2_class **, uint64_t))
{
  v5 = v3;
  LOBYTE(v6) = a2;
  v8 = &off_278709000;
  p_prots = &OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol.prots;
  if ([*(v3 + 56) totalCostLimit] >= *(v3 + 120))
  {
    goto LABEL_16;
  }

  v11 = *(v3 + 80);
  v10 = *(v3 + 88);
  v12 = (v3 + 80);
  v13 = __OFADD__(v11, v10);
  v14 = v11 + v10;
  if (v13)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v14 < 101 || v10 / v14 <= 0.1 || (v6 & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(v3 + 56);
  v16 = [v15 totalCostLimit];
  if (v16 + 0x4000000000000000 < 0)
  {
    goto LABEL_43;
  }

  if (*(v5 + 120) >= 2 * v16)
  {
    v17 = 2 * v16;
  }

  else
  {
    v17 = *(v5 + 120);
  }

  [v15 setTotalCostLimit_];

  if (qword_27D8CCC18 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v18 = sub_22B7DB2B8();
    sub_22B4CFA74(v18, qword_27D8CE680);

    v19 = sub_22B7DB298();
    v20 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_15;
    }

    result = swift_slowAlloc();
    *result = 134218240;
    v23 = *(v5 + 80);
    v22 = *(v5 + 88);
    v13 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v13)
    {
      break;
    }

    *(result + 4) = round(v22 / v24 * 1000.0) / 10.0;
    *(result + 12) = 2048;
    v25 = v8[451];
    v26 = result;
    *(result + 14) = [*(v5 + 56) v25];

    _os_log_impl(&dword_22B4CC000, v19, v20, "Cache miss rate of %f%% is too high. Increasing cache size to %ld bytes", v26, 0x16u);
    MEMORY[0x231898D60](v26, -1, -1);

LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    *(&p_prots[211]->count + *(v5 + 112)) = 0;
LABEL_16:
    v8 = ((*(&p_prots[211]->count + *(v5 + 112)) > 1) & v6);
    v27 = a1;
    v12 = 0x277CCA000;
    p_prots = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v28 = [*(v5 + 56) objectForKey_];
    if (v28)
    {
      v29 = v28;

      if ((v8 & 1) == 0)
      {
        return v29;
      }

      v30 = *(v5 + 80);
      v13 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (!v13)
      {
        *(v5 + 80) = v31;
        return v29;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = *(v5 + 88);
    v13 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v13)
    {
      *(v5 + 88) = v33;
      if (__ROR8__(0x8F5C28F5C28F5C29 * v33 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        if (qword_27D8CCC18 != -1)
        {
          swift_once();
        }

        v37 = sub_22B7DB2B8();
        sub_22B4CFA74(v37, qword_27D8CE680);
        v38 = sub_22B7DBC78();

        v39 = sub_22B7DB298();
        if (os_log_type_enabled(v39, v38))
        {
          buf = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = v46;
          *buf = 136315138;
          v40 = sub_22B7426E0(*(v5 + 80), *(v5 + 88));
          v44 = v38;
          v42 = v41;

          v43 = sub_22B4CFAAC(v40, v42, &v47);

          *(buf + 4) = v43;
          _os_log_impl(&dword_22B4CC000, v39, v44, "Cache stats: %s", buf, 0xCu);
          sub_22B4CFB78(v46);
          MEMORY[0x231898D60](v46, -1, -1);
          MEMORY[0x231898D60](buf, -1, -1);
        }

        else
        {
        }

        v8 = *(v5 + 16);
        if (!v8)
        {
LABEL_36:

          return 0;
        }
      }

      else
      {
LABEL_23:
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      if ((a1 & 0x8000) == 0)
      {
        v34 = *(v5 + 64);
        if (*(v34 + 16) > a1)
        {
          v35 = *(v5 + 24);
          v48 = *(v34 + 4 * v27 + 32);

          v29 = (v8)(&v48);
          if (v29)
          {
            v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
            [*(v5 + 56) setObject:v29 forKey:v36 cost:sub_22B74A1AC()];
          }

          else
          {
          }

          a3(v8, v35);
          return v29;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  __break(1u);
  return result;
}

char *sub_22B70183C(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = 7;
  }

  if ((*(v2 + 16) & 1) == 0)
  {
    v16 = MEMORY[0x277D84F90];
    v14 = 15;
    goto LABEL_17;
  }

  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(v4 + 56);

  v14 = sub_22B7498A4(a1, v6, v9, v10, v11, v12);
  LOBYTE(v9) = v15;

  if (v9)
  {
    return 0;
  }

  v3 = v6;
  v16 = sub_22B71BB34(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v16 + 2);
  v4 = *(v16 + 3);
  v17 = v6 + 1;
  if (v6 >= v4 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *(v16 + 2) = v17;
    v18 = &v16[16 * v6];
    *(v18 + 4) = 15;
    *(v18 + 5) = v14;
    v4 = *(v2 + 24);
    v5 = *(v4 + 16);
    if (v5 == 1)
    {
      break;
    }

    v6 = v3;
LABEL_17:
    v45 = v7;
    v8 |= v7 << 16;
    v17 = v8;
    if (*(v2 + 32) == 1)
    {
      if (!v5)
      {
        goto LABEL_47;
      }

      v19 = (v4 + 32 * v5);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];

      v17 = sub_22B749DEC(a1, v6, v20, v21, v22, v23);
      LOBYTE(v21) = v24;

      if (v21)
      {
        goto LABEL_20;
      }
    }

    v44 = v8;
    sub_22B74B1A4();
    v3 = v25;
    v7 = v26;
    v2 = v27 >> 1;
    swift_unknownObjectRetain();
    v46 = v17;
    v47 = v17 >> 14;
    v6 = v2 - v7;
    if (v2 == v7)
    {
LABEL_22:
      swift_unknownObjectRelease();
      if (v47 < 4 * v45)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_22B71BB34(0, *(v16 + 2) + 1, 1, v16);
        }

        v29 = *(v16 + 2);
        v28 = *(v16 + 3);
        if (v29 >= v28 >> 1)
        {
          v16 = sub_22B71BB34((v28 > 1), v29 + 1, 1, v16);
        }

        *(v16 + 2) = v29 + 1;
        v30 = &v16[16 * v29];
        *(v30 + 4) = v46;
        *(v30 + 5) = v44;
      }

      return v16;
    }

    if (v7 <= v2)
    {
      v31 = v2;
    }

    else
    {
      v31 = v7;
    }

    v17 = v31 - v7;
    v4 = v3 + 32 * v7;
    v8 = v4 + 16;
    while (v17)
    {
      v4 = v47;
      if (v47 < v14 >> 14)
      {
        goto LABEL_46;
      }

      v32 = *v8;
      v33 = *(v8 + 8);
      v35 = *(v8 - 16);
      v34 = *(v8 - 8);

      v36 = sub_22B7DB738();
      v3 = sub_22B701BFC(v36, v37, v38, v39, v35, v34, v32, v33);
      v14 = v40;
      LOBYTE(v34) = v41;

      if (v34)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22B71BB34(0, *(v16 + 2) + 1, 1, v16);
      }

      v2 = *(v16 + 2);
      v42 = *(v16 + 3);
      v7 = v2 + 1;
      if (v2 >= v42 >> 1)
      {
        v16 = sub_22B71BB34((v42 > 1), v2 + 1, 1, v16);
      }

      *(v16 + 2) = v7;
      v4 = &v16[16 * v2];
      *(v4 + 32) = v3;
      *(v4 + 40) = v14;
      --v17;
      v8 += 32;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v16 = sub_22B71BB34((v4 > 1), v17, 1, v16);
  }

  if (*(v2 + 32) == 1 && v14 >> 14 < 4 * v7)
  {
LABEL_20:

    return 0;
  }

  return v16;
}

uint64_t sub_22B701BFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v27[1] = a1;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  sub_22B704A08();
  sub_22B7DBB78();
  v27[0] = v25;
  while (1)
  {
    v9 = v27[0];
    v10 = v27[0] >> 14;
    if (v27[0] >> 14 == v26 >> 14)
    {
      goto LABEL_7;
    }

    result = sub_22B74B0B8(v27, v23, v24);
    if (a2 >> 14 < v10)
    {
      break;
    }

    v12 = sub_22B7DC058();
    v16 = sub_22B749B7C(v12, v13, v14, v15, a5, a6, a7, a8);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      if (v10 > v16 >> 14)
      {
        __break(1u);
LABEL_7:

        return 0;
      }

      return v9;
    }
  }

  __break(1u);
  return result;
}

void sub_22B701D3C()
{
  v1 = *v0;
  v2 = *(*v0 + 16) + 1;
  v3 = 100 * v2;
  if ((v2 * 100) >> 64 != (100 * v2) >> 63)
  {
    goto LABEL_14;
  }

  v4 = __OFADD__(v3, 60);
  v5 = v3 + 60;
  if (v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5 - 1;
  if ((v5 - 1) > 0x1DF)
  {
    v7 = v6 / 0x3C;
    if (v0[4] >= (v6 / 0x3C))
    {
      return;
    }

    if (v6 >> 33 > 0xE)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    if (v0[4] >= 8)
    {
      return;
    }

    LODWORD(v7) = 8;
  }

  v8 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
  v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
  v10 = v9 | HIWORD(v9);
  v11 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
LABEL_17:
    __break(1u);
    return;
  }

  *&v14 = MEMORY[0x277D84F90];
  *(&v14 + 1) = 1;
  do
  {
    sub_22B713BE0(0);
    sub_22B713E60(0);
    --v11;
  }

  while (v11);
  v12 = v0[2];

  *(v0 + 1) = v14;
  v0[4] = 0;
  if (*(v1 + 16))
  {
    v13 = *(v1 + 32);
    sub_22B7DC618();
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_22B701F04(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = result;
  v4 = *v1;
  if (*(*v1 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v1[4];
  v6 = *(v4 + 4 * result + 32);
  result = sub_22B7DC618();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *v2;
  v11 = *(v2 + 1);
  v7 = v2[4];
  result = sub_22B701FE0(result % v5);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result % v7;
  if (((result % v7) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v3 + 1;
  if (((v7 | v9) & 0x8000000000000000) == 0)
  {
    sub_22B713BE0(v9);
    return sub_22B71411C(v9, v8);
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_22B701FE0(unint64_t result)
{
  v2 = v1[4];
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (!v2)
  {
    return -1;
  }

  v3 = v1[3];
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_42;
  }

  v5 = result;
  v6 = 0;
  v7 = v1[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v3;
  while (1)
  {
    result = v6 + v5;
    if (__CFADD__(v6, v5))
    {
      break;
    }

    v11 = result % v2 * v3;
    if (((result % v2) * v3) >> 64 != v11 >> 63)
    {
      goto LABEL_37;
    }

    if (v11 >= 0)
    {
      v12 = result % v2 * v3;
    }

    else
    {
      v12 = v11 + 63;
    }

    if (v11 < -63)
    {
      goto LABEL_38;
    }

    if (v12 >> 6 >= v9)
    {
      goto LABEL_39;
    }

    v13 = 64 - (v11 - (v12 & 0xFFFFFFFFFFFFFFC0));
    v14 = __OFSUB__(v13, v3);
    v15 = v13 - v3;
    if (v14)
    {
      goto LABEL_40;
    }

    if (v15 <= -65 || v15 > 64)
    {
LABEL_15:
      if (v10 < 0xFFFFFFFFFFFFFF7FLL || (v4 & 0x8000000000000000) == 0 || v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      v17 = 0;
      goto LABEL_32;
    }

    v16 = *(v8 + 8 * (v12 >> 6));
    if (v15 < 0)
    {
      if (v15 == -64)
      {
        goto LABEL_15;
      }

      v17 = v16 >> -v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    else
    {
      if (v15 == 64)
      {
        goto LABEL_15;
      }

      v17 = v16 << v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

LABEL_32:
      if (!(v17 << (v3 - 64)))
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v4 >= 0x40 || !(v17 >> v4))
    {
      return result;
    }

LABEL_24:
    if (v2 == ++v6)
    {
      return -1;
    }
  }

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
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22B702144(uint64_t result, uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v2[3];
  v5 = 64 - v4;
  if (__OFSUB__(64, v4))
  {
    goto LABEL_57;
  }

  v6 = 0;
  v7 = v2[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v4;
  while (1)
  {
    v11 = v6 + a2;
    if (__CFADD__(v6, a2))
    {
      break;
    }

    v12 = v11 % v3 * v4;
    if (((v11 % v3) * v4) >> 64 != v12 >> 63)
    {
      goto LABEL_50;
    }

    if (v12 >= 0)
    {
      v13 = v11 % v3 * v4;
    }

    else
    {
      v13 = v12 + 63;
    }

    if (v12 < -63)
    {
      goto LABEL_51;
    }

    if (v13 >> 6 >= v9)
    {
      goto LABEL_52;
    }

    v14 = 64 - (v12 - (v13 & 0xFFFFFFFFFFFFFFC0));
    v15 = __OFSUB__(v14, v4);
    v16 = v14 - v4;
    if (v15)
    {
      goto LABEL_53;
    }

    if (v16 <= -65 || v16 > 64)
    {
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }

      v17 = 0;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_35:
      if (v5 <= 0xFFFFFFFFFFFFFFC0)
      {
        return v17;
      }

      goto LABEL_38;
    }

    v18 = *(v8 + 8 * (v13 >> 6));
    if (v16 < 0)
    {
      if (v16 == -64)
      {
        if (v10 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        v17 = 0;
        if ((v5 & 0x8000000000000000) == 0)
        {
          if (v5 >= 0x40)
          {
            return v17;
          }

          goto LABEL_24;
        }

        if (v5 <= 0xFFFFFFFFFFFFFFC0)
        {
          return v17;
        }

        goto LABEL_38;
      }

      v17 = v18 >> -v16;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == 64)
      {
        if (v10 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        v17 = 0;
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_17:
          if (v5 >= 0x40)
          {
            return v17;
          }

          goto LABEL_24;
        }

        goto LABEL_35;
      }

      v17 = v18 << v16;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 >= 0x40)
      {
        return 0;
      }

LABEL_24:
      v17 >>= v5;
      if (!v17)
      {
        return v17;
      }

      goto LABEL_25;
    }

    if (v5 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

LABEL_38:
    v17 <<= v4 - 64;
    if (!v17)
    {
      return v17;
    }

LABEL_25:
    v19 = v17 - 1;
    if (v19 < 0)
    {
      goto LABEL_54;
    }

    if (v19 >= *(*v2 + 16))
    {
      goto LABEL_55;
    }

    if (*(*v2 + 4 * v19 + 32) == result)
    {
      return v6 + a2;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_22B70232C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = a1 + 32;
    v9 = v5 - 1;
    while (1)
    {
      v10 = *(v8 + 4 * v7);
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a2);
      sub_22B7DC698();
      result = sub_22B7DC6A8();
      a2 = result;
      if (v9 == v7)
      {
        break;
      }

      if (a3)
      {
        if (v7 > 0x7FFFFFFE)
        {
          goto LABEL_16;
        }

        v12 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
        v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
        v14 = v13 | HIWORD(v13);
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          goto LABEL_17;
        }

        if (v7 + 1 != v16)
        {
          goto LABEL_3;
        }
      }

      v17 = v3[1];
      if (v17 < 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = *v3;
      if (sub_22B7DB1C8())
      {
LABEL_3:
        ++v7;
      }

      else
      {
        result = sub_22B7DB1D8();
        v19 = v3[2];
        v15 = __OFADD__(v19, 1);
        v20 = v19 + 1;
        if (v15)
        {
          goto LABEL_19;
        }

        v3[2] = v20;
        ++v7;
      }
    }
  }

  sub_22B7DC6C8();
  MEMORY[0x231895FF0](a2);
  MEMORY[0x231895FF0](0);
  v21 = sub_22B7DC6A8();
  sub_22B6F1320();
  return v21;
}

char *sub_22B7024C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD680, &unk_22B7F9780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22B702604(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22B7DC1C8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22B7DC318();
}

uint64_t sub_22B702668(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B703C1C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_22B7DC4C8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 8);
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 4) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
      v7 = sub_22B7DB958();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_22B7027D8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22B7027D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22B702FD4(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22B702D98((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = *(v21 + 2);
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 8) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B702FE8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_22B702FE8((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_22B702D98((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 8) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 8);
    *v33 = *(v33 - 24);
    *(v33 + 16) = *(v33 - 8);
    *(v33 - 16) = v35;
    *(v33 - 8) = v31;
    *(v33 - 24) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_22B702D98(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
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

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

char *sub_22B702FE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD658, &qword_22B7FA090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_22B7030EC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B703184(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B703184(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B7C1398(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7031F8(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_53:
    v28 = result;
    v7 = sub_22B7C1398(v7, a4, a5);
    result = v28;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v29 = result;
    v11 = sub_22B7C1398(result, a4, a5);
    result = v29;
  }

  result = sub_22B7030EC(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    v19 = &v31 + 7;
    v20 = &v31 + 6;
    while (v18 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v31 = v19;
        v27 = v20;
        result = sub_22B7DB728();
        v20 = v27;
        v19 = v31;
      }

      else
      {
        v21 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v19[v21] & 0xC0) == 0x80)
          {
            v24 = &v20[v21];
            v25 = 1;
            do
            {
              ++v25;
              v26 = *v24--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v25 = 1;
          }

          v21 -= v25;
        }

        else
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v30 = v20;
            v31 = v19;
            v22 = sub_22B7DC328();
            v20 = v30;
            v19 = v31;
          }

          do
          {
            v23 = *(v22 - 1 + v21--) & 0xC0;
          }

          while (v23 == 128);
        }

        result = (v21 << 16) | 5;
      }

      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_52;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v32 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_22B7DC328();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B7034D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_22B7030EC(a1, a3, a4);
  v8 = sub_22B7030EC(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_22B7DC328();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB728();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_22B7DC328();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_22B7036E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v11 = 0;
    result = a4;
LABEL_69:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = result;
    return v11;
  }

  if (!a3)
  {
    result = a4;
    v11 = 0;
    goto LABEL_69;
  }

  if (a3 < 0)
  {
    goto LABEL_74;
  }

  v50 = result;
  v51 = a5;
  v11 = 0;
  v12 = a5 >> 14;
  v13 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a4 >> 14;
  v54 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a7 & 0xFFFFFFFFFFFFFFLL;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a7) & 0xF;
  }

  else
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  result = a4;
  v49 = a4;
  v17 = a3 - 1;
  v52 = v16;
  v53 = a4 >> 14;
  do
  {
    v18 = result >> 14;
    if (result >> 14 == v12)
    {
      goto LABEL_68;
    }

    v19 = result & 0xC;
    v20 = (result & 1) == 0 || v19 == v14;
    v21 = v20;
    if (v20)
    {
      v22 = result;
      if (v19 == v14)
      {
        v44 = result;
        v45 = sub_22B7C1398(result, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v45;
        result = v44;
        v18 = v22 >> 14;
        if (v22 >> 14 < v53)
        {
          goto LABEL_70;
        }
      }

      else if (v18 < v15)
      {
        goto LABEL_70;
      }

      if (v18 >= v12)
      {
        goto LABEL_70;
      }

      if ((v22 & 1) == 0)
      {
        v23 = result;
        v24 = sub_22B7C1670(v22, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v24;
        result = v23;
      }
    }

    else
    {
      if (v18 < v15)
      {
        goto LABEL_71;
      }

      v22 = result;
      if (v18 >= v12)
      {
        goto LABEL_71;
      }
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v47 = result;
      v38 = sub_22B7DC2D8();
      v16 = v52;
      v15 = v53;
      v29 = v38;
      result = v47;
      if ((v21 & 1) == 0)
      {
LABEL_46:
        if (v16 <= result >> 16)
        {
          goto LABEL_73;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v25 = v22 >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v26 = &v56;
      }

      else
      {
        v26 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v46 = result;
          v27 = sub_22B7DC328();
          v16 = v52;
          v15 = v53;
          v26 = v27;
          result = v46;
        }
      }

      v28 = v26 + v25;
      v29 = *v28;
      if (*v28 < 0)
      {
        v30 = (__clz(v29 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = v28[1];
            v32 = v28[2];
            v33 = ((v29 & 0xF) << 12) | ((v31 & 0x3F) << 6);
          }

          else
          {
            v34 = v28[1];
            v35 = v28[2];
            v32 = v28[3];
            v33 = ((v29 & 0xF) << 18) | ((v34 & 0x3F) << 12) | ((v35 & 0x3F) << 6);
          }

          v29 = v33 & 0xFFFFFFC0 | v32 & 0x3F;
        }

        else if (v30 != 1)
        {
          v29 = v28[1] & 0x3F | ((v29 & 0x1F) << 6);
          if ((v21 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    if (v19 == v14)
    {
      result = sub_22B7C1398(result, a6, a7);
      v16 = v52;
      v15 = v53;
      if (v52 <= result >> 16)
      {
        goto LABEL_72;
      }
    }

    else if (v16 <= result >> 16)
    {
      goto LABEL_72;
    }

    if ((result & 1) == 0)
    {
      v36 = result;
      v37 = sub_22B7C1670(result, a6, a7);
      v16 = v52;
      v15 = v53;
      result = v36 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_47:
    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22B7DB718();
      v16 = v52;
      v15 = v53;
    }

    else
    {
      v39 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v41 = *(&v56 + v39);
      }

      else
      {
        v40 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v40 = sub_22B7DC328();
          v16 = v52;
          v15 = v53;
        }

        v41 = *(v40 + v39);
      }

      v42 = v41;
      v43 = __clz(v41 ^ 0xFF) - 24;
      if (v42 >= 0)
      {
        LOBYTE(v43) = 1;
      }

      result = ((v39 + v43) << 16) | 5;
    }

    *(a2 + 4 * v11) = v29;
    if (v17 == v11)
    {
      v11 = a3;
LABEL_68:
      v9 = v50;
      a5 = v51;
      a4 = v49;
      goto LABEL_69;
    }

    ++v11;
  }

  while (!__OFADD__(v11, 1));
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
  return result;
}

void *sub_22B703A6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CEBF0, &qword_22B7F9738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_22B703AF0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if (a1[1] >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    result = sub_22B7DB898();
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

unint64_t sub_22B703BC8()
{
  result = qword_28141F5F0;
  if (!qword_28141F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F5F0);
  }

  return result;
}

unint64_t sub_22B703C30(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a2 >> 14;
  v7 = result >> 14;
  if (result >> 14 == a2 >> 14)
  {
LABEL_2:
    sub_22B7DC6C8();
    MEMORY[0x231895FF0](a5);
    MEMORY[0x231895FF0](0);
    return sub_22B7DC6A8();
  }

  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = result;
  while ((v12 & 0xC) != v11 && (v12 & 1) != 0)
  {
    if (v12 >> 14 < v7)
    {
      goto LABEL_27;
    }

    result = v12;
    if (v12 >> 14 >= v6)
    {
      goto LABEL_27;
    }

LABEL_21:
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_22B7DC2D8();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        sub_22B7DC328();
      }

      sub_22B7DC338();
    }

    sub_22B7DC6C8();
    MEMORY[0x231895FF0](a5);
    sub_22B7DC698();
    a5 = sub_22B7DC6A8();
    result = sub_22B7DC028();
    v12 = result;
    if (v6 == result >> 14)
    {
      goto LABEL_2;
    }
  }

  result = v12;
  if ((v12 & 0xC) == v11)
  {
    result = sub_22B7C1398(v12, a3, a4);
  }

  if (result >> 14 >= v7 && result >> 14 < v6)
  {
    if ((result & 1) == 0)
    {
      sub_22B7C1670(result, a3, a4);
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}