uint64_t sub_24EC7D0B8(uint64_t a1, void *a2, double a3)
{
  v92 = a1;
  v6 = 0;
  v89 = sub_24F92CDB8();
  v7 = *(v89 - 8);
  *&v8 = MEMORY[0x28223BE20](v89).n128_u64[0];
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a2;
  v10 = [a2 traitCollection];
  v11 = sub_24EAEE040(v10);

  v94 = v3;
  v12 = *v3;
  if (v11)
  {
    v13 = v12[2];

    v14 = sub_24EC7FB4C(0, v13, v11, v11, v12);

    v91 = *(v14 + 16);
    if (!v91)
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93DE60;
    *(v14 + 32) = v12;

    v91 = 1;
  }

  v16 = 0;
  v93 = v14 + 32;
  v87 = (v7 + 8);
  v15 = MEMORY[0x277D84F90];
  v90 = v14;
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      goto LABEL_61;
    }

    v96 = v15;
    v97 = v16;
    v98 = v6;
    v19 = *(v93 + 8 * v16);

    v21 = sub_24EC7DB04(v20, v95, a3);
    v22 = v21;
    v23 = *(v21 + 16) >= *(v19 + 16) ? *(v19 + 16) : *(v21 + 16);
    v127 = MEMORY[0x277D84F90];
    result = sub_24F4582CC(0, v23, 0);
    v25 = v127;
    v100 = v22;
    if (v23)
    {
      break;
    }

LABEL_21:
    v44 = *(v19 + 16);
    if (v23 != v44)
    {
      v45 = v19 + 88 * v23 + 32;
      v46 = v100;
      while (v23 < v44)
      {
        sub_24EC7DA34(v45, &v115);
        v47 = *(v46 + 16);
        if (v23 == v47)
        {

          sub_24E601704(&v115, &qword_27F22CB40);
          goto LABEL_32;
        }

        if (v23 >= v47)
        {
          goto LABEL_60;
        }

        v48 = v46 + 32 * v23;
        v49 = *(v48 + 48);
        v101 = *(v48 + 32);
        v102 = v49;
        LOWORD(v126[0]) = v120[0];
        v123 = v117;
        v124 = v118;
        v125 = v119;
        v121 = v115;
        v122 = v116;
        *(&v126[1] + 8) = v49;
        *(v126 + 8) = v101;
        v50 = v120[0];
        v51 = BYTE1(v120[0]);
        sub_24E65864C(&v121, &v109);
        sub_24E615E00(&v123 + 8, &v111 + 8);
        LOBYTE(v114) = v50;
        HIBYTE(v114) = v51;
        v108 = v114;
        v105 = v111;
        v106 = v112;
        v107 = v113;
        v103 = v109;
        v104 = v110;
        *&v117 = v111;
        v115 = v109;
        v116 = v110;
        sub_24E612E28((&v105 + 8), &v117 + 8);
        LOBYTE(v120[0]) = v50;
        BYTE1(v120[0]) = v51;
        *(v120 + 8) = v101;
        *(&v120[1] + 8) = v102;
        sub_24E601704(&v121, &qword_27F22CB48);
        v127 = v25;
        v53 = *(v25 + 16);
        v52 = *(v25 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_24F4582CC((v52 > 1), v53 + 1, 1);
          v25 = v127;
        }

        ++v23;
        *(v25 + 16) = v53 + 1;
        v54 = v25 + 120 * v53;
        v55 = v115;
        v56 = v116;
        v57 = v118;
        *(v54 + 64) = v117;
        *(v54 + 80) = v57;
        *(v54 + 32) = v55;
        *(v54 + 48) = v56;
        v58 = v119;
        v59 = v120[0];
        v60 = v120[1];
        *(v54 + 144) = *&v120[2];
        *(v54 + 112) = v59;
        *(v54 + 128) = v60;
        *(v54 + 96) = v58;
        v44 = *(v19 + 16);
        v45 += 88;
        if (v23 == v44)
        {
          goto LABEL_22;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = sub_24E601704(&v109, &qword_27F22CB40);
      goto LABEL_63;
    }

LABEL_22:

LABEL_32:
    v61 = *(v25 + 16);
    v15 = v96;
    if (v61 >= 3)
    {
      *&v115 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v61, 0);
      v68 = v115;
      v69 = v25 + 32;
      v70 = v61;
      do
      {
        sub_24EC7D9FC(v69, &v121);
        v71 = *(&v126[0] + 1);
        sub_24EC7DAA4(&v121);
        *&v115 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_24F45824C((v72 > 1), v73 + 1, 1);
          v68 = v115;
        }

        *(v68 + 16) = v73 + 1;
        *(v68 + 8 * v73 + 32) = v71;
        v69 += 120;
        --v70;
      }

      while (v70);
      if (v73 <= 2)
      {
        v74 = 0;
        v75 = 0.0;
        goto LABEL_47;
      }

      v74 = (v73 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v76 = (v68 + 48);
      v75 = 0.0;
      v77 = v74;
      do
      {
        v75 = v75 + *(v76 - 2) + *(v76 - 1) + *v76 + v76[1];
        v76 += 4;
        v77 -= 4;
      }

      while (v77);
      if (v73 + 1 != v74)
      {
LABEL_47:
        v78 = v73 - v74 + 1;
        v79 = (v68 + 8 * v74 + 32);
        do
        {
          v80 = *v79++;
          v75 = v75 + v80;
          --v78;
        }

        while (v78);
      }

      v81 = (a3 - v75) / (v61 - 1);
      __swift_project_boxed_opaque_existential_1((v92 + 8), *(v92 + 32));
      v82 = v88;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v84 = v83;
      (*v87)(v82, v89);
      if (v81 > v84)
      {
        v84 = v81;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_24E617D94(0, *(v15 + 2) + 1, 1, v15);
      }

      v14 = v90;
      v86 = *(v15 + 2);
      v85 = *(v15 + 3);
      if (v86 >= v85 >> 1)
      {
        v15 = sub_24E617D94((v85 > 1), v86 + 1, 1, v15);
      }

      *(v15 + 2) = v86 + 1;
      v17 = &v15[48 * v86];
      *(v17 + 4) = v25;
      *(v17 + 5) = v84;
      *(v17 + 3) = v121;
      *(v17 + 8) = MEMORY[0x277D85048];
      *(v17 + 9) = MEMORY[0x277D225F8];
      v18 = v97;
      v6 = v98;
      goto LABEL_7;
    }

    sub_24E615E00(v92 + 8, &v121 + 8);
    *&v121 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24E617D94(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = v97;
    v6 = v98;
    v64 = *(v15 + 2);
    v63 = *(v15 + 3);
    if (v64 >= v63 >> 1)
    {
      v15 = sub_24E617D94((v63 > 1), v64 + 1, 1, v15);
    }

    *(v15 + 2) = v64 + 1;
    v65 = &v15[48 * v64];
    v66 = v121;
    v67 = v123;
    *(v65 + 3) = v122;
    *(v65 + 4) = v67;
    *(v65 + 2) = v66;
LABEL_7:
    v16 = v18 + 1;
    if (v16 == v91)
    {

      return v15;
    }
  }

  v26 = 0;
  v99 = *(v19 + 16);
  v27 = v19 + 32;
  v28 = v22 + 32;
  while (v99 != v26)
  {
    if (v26 >= *(v19 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    sub_24EC7DA34(v27, &v109);
    v29 = *(v100 + 16);
    if (v26 == v29)
    {
      goto LABEL_62;
    }

    if (v26 >= v29)
    {
      goto LABEL_58;
    }

    v30 = v19;
    v31 = (v28 + 32 * v26);
    v32 = v31[1];
    v101 = *v31;
    v102 = v32;
    LOWORD(v120[0]) = v114;
    v117 = v111;
    v118 = v112;
    v119 = v113;
    v115 = v109;
    v116 = v110;
    *(v120 + 8) = v101;
    *(&v120[1] + 8) = v32;
    v33 = v114;
    v34 = HIBYTE(v114);
    sub_24E65864C(&v115, &v109);
    sub_24E615E00(&v117 + 8, &v111 + 8);
    LOBYTE(v114) = v33;
    HIBYTE(v114) = v34;
    v108 = v114;
    v105 = v111;
    v106 = v112;
    v107 = v113;
    v103 = v109;
    v104 = v110;
    *&v123 = v111;
    v121 = v109;
    v122 = v110;
    sub_24E612E28((&v105 + 8), &v123 + 8);
    LOBYTE(v126[0]) = v33;
    BYTE1(v126[0]) = v34;
    *(v126 + 8) = v101;
    *(&v126[1] + 8) = v102;
    result = sub_24E601704(&v115, &qword_27F22CB48);
    v127 = v25;
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_24F4582CC((v35 > 1), v36 + 1, 1);
      v25 = v127;
    }

    ++v26;
    *(v25 + 16) = v36 + 1;
    v37 = v25 + 120 * v36;
    v38 = v121;
    v39 = v122;
    v40 = v124;
    *(v37 + 64) = v123;
    *(v37 + 80) = v40;
    *(v37 + 32) = v38;
    *(v37 + 48) = v39;
    v41 = v125;
    v42 = v126[0];
    v43 = v126[1];
    *(v37 + 144) = *&v126[2];
    *(v37 + 112) = v42;
    *(v37 + 128) = v43;
    *(v37 + 96) = v41;
    v27 += 88;
    v19 = v30;
    if (v23 == v26)
    {
      goto LABEL_21;
    }
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_24EC7DA34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC7DB04(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a1;
  v12 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_24E8ED7D8();
  v132 = a2;
  sub_24F9223A8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = a3 - v14 * (v12 - 1);
  v16 = *(v4 + 64);
  v137 = v12;
  if (v16)
  {
    LODWORD(v136) = 1;
    v17 = v132;
  }

  else
  {
    v17 = v132;
    v18 = [v132 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    LOBYTE(v18) = sub_24F92C138();
    LODWORD(v136) = (v18 & 1) != 0;
  }

  v20 = sub_24E60BDD0(MEMORY[0x277D84F90]);
  *&v156 = v133;

  v21 = 0;
  sub_24EC7C260(&v156);
  v22 = v156;
  *&v135 = *(v156 + 16);
  if (v135)
  {
    v23 = 0;
    v24 = v156 + 32;
    v134 = v156;
    while (v23 < *(v22 + 16))
    {
      sub_24EC7DA34(v24, &v156);
      v25 = v160;
      v26 = v161;
      v148 = v156;
      v149 = v157;
      v150 = v158;
      sub_24E612E28(v159, &v151);
      v154 = v25;
      v155 = v26;
      sub_24EC7DA34(&v148, &v142);
      __swift_destroy_boxed_opaque_existential_1(v145);
      sub_24E6585F8(&v142);
      __swift_project_boxed_opaque_existential_1(&v151, v152);
      v21 = v17;
      sub_24F922288();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      sub_24EC7DA34(&v148, &v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v20;
      v37 = sub_24E76D934(&v142);
      v38 = v20[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_90;
      }

      v41 = v36;
      if (v20[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8AFFC4();
        }
      }

      else
      {
        sub_24E89CD10(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_24E76D934(&v142);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_97;
        }

        v37 = v42;
      }

      v17 = v21;
      v20 = v138;
      if (v41)
      {
        v44 = *(v138 + 56) + 32 * v37;
        *v44 = v28;
        *(v44 + 8) = v30;
        *(v44 + 16) = v32;
        *(v44 + 24) = v34;
      }

      else
      {
        *(v138 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        sub_24E65864C(&v142, v20[6] + 40 * v37);
        v45 = v20[7] + 32 * v37;
        *v45 = v28;
        *(v45 + 8) = v30;
        *(v45 + 16) = v32;
        *(v45 + 24) = v34;
        v46 = v20[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_91;
        }

        v20[2] = v48;
      }

      sub_24E6585F8(&v142);
      __swift_destroy_boxed_opaque_existential_1(v145);
      v15 = v15 - v28;
      v22 = v134;
      if (v137 - v20[2] < 1)
      {
        sub_24E601704(&v148, &qword_27F22CB40);
        goto LABEL_21;
      }

      ++v23;
      sub_24E601704(&v148, &qword_27F22CB40);
      v24 += 88;
      if (v135 == v23)
      {
        goto LABEL_21;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_21:
  v49 = v133;
  if (v15 <= 0.0 || v137 != v20[2])
  {

    v21 = MEMORY[0x277D84F90];
    v81 = v20;
    v82 = v137;
    if (v137)
    {
      v141 = MEMORY[0x277D84F90];
      sub_24F457B3C(0, v137, 0);
      v21 = v141;
      v83 = v49 + 32;
      v84 = v82;
      do
      {
        sub_24EC7DA34(v83, &v156);
        sub_24EC7DA34(&v156, &v148);
        v85 = v154;
        v86 = v155;
        v142 = v148;
        v143 = v149;
        v144 = v150;
        sub_24E612E28(&v151, v145);
        v146 = v85;
        v147 = v86;
        sub_24E65864C(&v142, &v138);
        sub_24E601704(&v142, &qword_27F22CB40);
        sub_24E601704(&v156, &qword_27F22CB40);
        v141 = v21;
        v88 = *(v21 + 16);
        v87 = *(v21 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_24F457B3C((v87 > 1), v88 + 1, 1);
          v21 = v141;
        }

        *(v21 + 16) = v88 + 1;
        v89 = (v21 + 40 * v88);
        v90 = v138;
        v91 = v139;
        v89[8] = v140;
        *(v89 + 2) = v90;
        *(v89 + 3) = v91;
        v83 += 88;
        --v84;
      }

      while (v84);
      v20 = v81;
    }

    v92 = *(v21 + 16);
    if (v92)
    {
      v93 = 0;
      v94 = v21 + 32;
      v95 = MEMORY[0x277D84F90];
      v137 = (v21 + 32);
      do
      {
        v96 = v94 + 40 * v93;
        v97 = v93;
        while (1)
        {
          if (v97 >= v92)
          {
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v93 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_88;
          }

          if (v20[2])
          {
            v98 = sub_24E76D934(v96);
            v20 = v81;
            if (v99)
            {
              break;
            }
          }

          ++v97;
          v96 += 40;
          if (v93 == v92)
          {
            goto LABEL_86;
          }
        }

        v100 = (v81[7] + 32 * v98);
        v101 = *v100;
        v135 = v100[1];
        v136 = v101;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_24E617C90(0, *(v95 + 2) + 1, 1, v95);
        }

        v94 = v137;
        v103 = *(v95 + 2);
        v102 = *(v95 + 3);
        if (v103 >= v102 >> 1)
        {
          v95 = sub_24E617C90((v102 > 1), v103 + 1, 1, v95);
        }

        *(v95 + 2) = v103 + 1;
        v104 = &v95[32 * v103];
        v105 = v135;
        *(v104 + 2) = v136;
        *(v104 + 3) = v105;
        v20 = v81;
      }

      while (v93 != v92);
      goto LABEL_86;
    }

LABEL_85:
    v95 = MEMORY[0x277D84F90];
LABEL_86:

    return v95;
  }

  v50 = *(v22 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = v22 + 32;
    while (v51 < *(v22 + 16))
    {
      v53 = v20;
      sub_24EC7DA34(v52, &v156);
      v54 = v160;
      v21 = v161;
      v148 = v156;
      v149 = v157;
      v150 = v158;
      sub_24E612E28(v159, &v151);
      v154 = v54;
      v155 = v21;
      if (v15 <= 0.0)
      {
        v20 = v53;
      }

      else
      {
        sub_24EC7DA34(&v148, &v142);
        v20 = v53;
        if (v53[2] && (v55 = sub_24E76D934(&v142), v20 = v53, (v56 & 1) != 0))
        {
          v57 = *(v53[7] + 32 * v55);
          __swift_destroy_boxed_opaque_existential_1(v145);
          sub_24E6585F8(&v142);
          v21 = v153;
          __swift_project_boxed_opaque_existential_1(&v151, v152);
          *&v136 = v15 + v57;
          sub_24F922288();
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v65 = v64;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            v66 = v22;
            sub_24EC7DA34(&v148, &v142);
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v138 = v53;
            v68 = sub_24E76D934(&v142);
            v70 = v53[2];
            v71 = (v69 & 1) == 0;
            v47 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v47)
            {
              goto LABEL_95;
            }

            v73 = v69;
            if (v53[3] >= v72)
            {
              if ((v67 & 1) == 0)
              {
                v21 = v68;
                sub_24E8AFFC4();
                v68 = v21;
              }
            }

            else
            {
              sub_24E89CD10(v72, v67);
              v68 = sub_24E76D934(&v142);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_97;
              }
            }

            v22 = v66;
            v20 = v138;
            if (v73)
            {
              v75 = *(v138 + 56) + 32 * v68;
              *v75 = v59;
              *(v75 + 8) = v61;
              *(v75 + 16) = v65;
              *(v75 + 24) = v63;
            }

            else
            {
              *(v138 + 8 * (v68 >> 6) + 64) |= 1 << v68;
              v76 = v68;
              sub_24E65864C(&v142, v20[6] + 40 * v68);
              v77 = v20[7] + 32 * v76;
              *v77 = v59;
              *(v77 + 8) = v61;
              *(v77 + 16) = v65;
              *(v77 + 24) = v63;
              v78 = v20[2];
              v47 = __OFADD__(v78, 1);
              v79 = v78 + 1;
              if (v47)
              {
                goto LABEL_96;
              }

              v20[2] = v79;
            }

            v80 = *&v136;
            sub_24E6585F8(&v142);
            __swift_destroy_boxed_opaque_existential_1(v145);
            v15 = v80 - v59;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v145);
          sub_24E6585F8(&v142);
        }
      }

      ++v51;
      sub_24E601704(&v148, &qword_27F22CB40);
      v52 += 88;
      if (v50 == v51)
      {
        goto LABEL_65;
      }
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_65:

  v21 = MEMORY[0x277D84F90];
  v106 = v20;
  v107 = v137;
  if (v137)
  {
    v141 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v137, 0);
    v21 = v141;
    v108 = v133 + 32;
    v109 = v107;
    do
    {
      sub_24EC7DA34(v108, &v156);
      sub_24EC7DA34(&v156, &v148);
      v110 = v154;
      v111 = v155;
      v142 = v148;
      v143 = v149;
      v144 = v150;
      sub_24E612E28(&v151, v145);
      v146 = v110;
      v147 = v111;
      sub_24E65864C(&v142, &v138);
      sub_24E601704(&v142, &qword_27F22CB40);
      sub_24E601704(&v156, &qword_27F22CB40);
      v141 = v21;
      v113 = *(v21 + 16);
      v112 = *(v21 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_24F457B3C((v112 > 1), v113 + 1, 1);
        v21 = v141;
      }

      *(v21 + 16) = v113 + 1;
      v114 = (v21 + 40 * v113);
      v115 = v138;
      v116 = v139;
      v114[8] = v140;
      *(v114 + 2) = v115;
      *(v114 + 3) = v116;
      v108 += 88;
      --v109;
    }

    while (v109);
    v20 = v106;
  }

  v117 = *(v21 + 16);
  if (!v117)
  {
    goto LABEL_85;
  }

  v118 = 0;
  v119 = v21 + 32;
  v95 = MEMORY[0x277D84F90];
  v137 = (v21 + 32);
LABEL_73:
  v120 = v119 + 40 * v118;
  v121 = v118;
  while (v121 < v117)
  {
    v118 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      goto LABEL_94;
    }

    if (v20[2])
    {
      v122 = sub_24E76D934(v120);
      v20 = v106;
      if (v123)
      {
        v124 = (v106[7] + 32 * v122);
        v125 = *v124;
        v135 = v124[1];
        v136 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_24E617C90(0, *(v95 + 2) + 1, 1, v95);
        }

        v127 = *(v95 + 2);
        v126 = *(v95 + 3);
        if (v127 >= v126 >> 1)
        {
          v95 = sub_24E617C90((v126 > 1), v127 + 1, 1, v95);
        }

        *(v95 + 2) = v127 + 1;
        v128 = &v95[32 * v127];
        v129 = v135;
        *(v128 + 2) = v136;
        *(v128 + 3) = v129;
        v20 = v106;
        v119 = v137;
        if (v118 != v117)
        {
          goto LABEL_73;
        }

        goto LABEL_86;
      }
    }

    ++v121;
    v120 += 40;
    if (v118 == v117)
    {
      goto LABEL_86;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
  return result;
}

double MetadataRibbonViewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v2 + 16))
  {
    return *MEMORY[0x277D22A78];
  }

  v22 = v8;
  v23 = v7;
  v11 = sub_24EC7D0B8((v2 + 1), a1, a2);
  v12 = *(v11 + 16);
  v13 = 0.0;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      sub_24EC7D9C4(v11 + 32 + 48 * i, v26);
      v15 = *(v26[0] + 16);
      v16 = 0.0;
      if (v15)
      {
        v17 = v26[0] + 32;
        do
        {
          sub_24EC7D9FC(v17, v24);
          v18 = v25;
          sub_24EC7DAA4(v24);
          if (v16 <= v18)
          {
            v16 = v18;
          }

          v17 += 120;
          --v15;
        }

        while (v15);
      }

      sub_24EC7DAD4(v26);
      v13 = v13 + v16;
    }
  }

  __swift_project_boxed_opaque_existential_1(v3 + 19, v3[22]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19 = *(v22 + 8);
  v20 = v23;
  v19(v10, v23);
  __swift_project_boxed_opaque_existential_1(v3 + 24, v3[27]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19(v10, v20);

  __swift_project_boxed_opaque_existential_1(v3 + 14, v3[17]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19(v10, v20);
  return a2;
}

uint64_t sub_24EC7EA48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_24EC7EA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_24EC7EB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7EB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7EC24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24EC7EC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7ECD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24EC7ED20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7ED7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24EC7F00C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24EC7EE84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24EC7EE84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      sub_24EC7DA34(v5, &v17);
      v7 = (v5 - 88);
      sub_24EC7DA34(v5 - 88, v16);
      v8 = HIBYTE(v22);
      v9 = v16[81];
      sub_24E601704(v16, &qword_27F22CB40);
      result = sub_24E601704(&v17, &qword_27F22CB40);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v15 + 88;
        v6 = v14 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v5 + 32);
      v20 = *(v5 + 48);
      v21 = *(v5 + 64);
      v22 = *(v5 + 80);
      v17 = *v5;
      v18 = *(v5 + 16);
      v10 = *(v5 - 40);
      *(v5 + 32) = *(v5 - 56);
      *(v5 + 48) = v10;
      *(v5 + 64) = *(v5 - 24);
      *(v5 + 80) = *(v5 - 8);
      v11 = *(v5 - 72);
      *v5 = *v7;
      *(v5 + 16) = v11;
      *(v5 - 56) = v19;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 8) = v22;
      *v7 = v17;
      *(v5 - 72) = v18;
      v5 -= 88;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EC7F00C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v8 = *v92;
    if (!*v92)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v83 = v5;
    v104 = v9;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v84];
        v5 = *&v9[16 * v84 + 24];
        sub_24EC7F7EC((v85 + 88 * v6), (v85 + 88 * *&v9[16 * v84 + 16]), (v85 + 88 * v5), v8);
        if (v83)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v86 = &v9[16 * v84];
        *v86 = v6;
        *(v86 + 1) = v5;
        v104 = v9;
        result = sub_24E8615C0(v84 - 1);
        v9 = v104;
        v84 = *(v104 + 2);
        v6 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
      goto LABEL_21;
    }

    v11 = *v6;
    sub_24EC7DA34(*v6 + 88 * (v8 + 1), &v98);
    v12 = v8;
    v13 = 88 * v8;
    sub_24EC7DA34(v11 + 88 * v8, v96);
    LODWORD(v105) = HIBYTE(v103) | v97 ^ 1;
    v8 = &unk_24F9917D0;
    sub_24E601704(v96, &qword_27F22CB40);
    result = sub_24E601704(&v98, &qword_27F22CB40);
    v90 = v12;
    v14 = v12 + 2;
    v15 = v11 + v13 + 176;
    while (v7 != v14)
    {
      sub_24EC7DA34(v15, &v98);
      sub_24EC7DA34(v15 - 88, v96);
      v16 = HIBYTE(v103) & 1 | ((v97 & 1) == 0);
      v8 = &unk_24F9917D0;
      sub_24E601704(v96, &qword_27F22CB40);
      result = sub_24E601704(&v98, &qword_27F22CB40);
      ++v14;
      v15 += 88;
      if ((v105 & 1) != v16)
      {
        v7 = v14 - 1;
        break;
      }
    }

    v6 = a3;
    if (v105)
    {
      if (v7 < v90)
      {
        goto LABEL_122;
      }

      if (v90 >= v7)
      {
        v10 = v90;
        goto LABEL_21;
      }

      v17 = v9;
      v18 = v5;
      v19 = 88 * v7 - 88;
      v20 = v7;
      v21 = v90;
      do
      {
        if (v21 != --v20)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v23 = v22 + v19;
          v100 = *(v22 + v13 + 32);
          v8 = &v98;
          v101 = *(v22 + v13 + 48);
          v102 = *(v22 + v13 + 64);
          v103 = *(v22 + v13 + 80);
          v98 = *(v22 + v13);
          v99 = *(v22 + v13 + 16);
          result = memmove((v22 + v13), (v22 + v19), 0x58uLL);
          *(v23 + 32) = v100;
          *(v23 + 48) = v101;
          *(v23 + 64) = v102;
          *(v23 + 80) = v103;
          *v23 = v98;
          *(v23 + 16) = v99;
        }

        ++v21;
        v19 -= 88;
        v13 += 88;
      }

      while (v21 < v20);
      v5 = v18;
      v6 = a3;
      v9 = v17;
    }

    v10 = v90;
LABEL_21:
    v24 = *(v6 + 8);
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 >= v24)
        {
          v8 = *(v6 + 8);
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v8)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_24E615ED8((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v70 = *&v9[16 * v30 + 40];
        sub_24EC7F7EC((*v6 + 88 * v69), (*v6 + 88 * *&v9[16 * v30 + 32]), (*v6 + 88 * v70), v29);
        if (v5)
        {
        }

        if (v70 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v71 = &v9[16 * v68];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        v104 = v9;
        result = sub_24E8615C0(v30);
        v9 = v104;
        v27 = *(v104 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v87 = v9;
  v88 = v5;
  v72 = v7;
  v73 = *v6;
  v74 = *v6 + 88 * v72;
  v91 = v10;
  v105 = v72;
  v75 = v10 - v72;
  v93 = v8;
LABEL_82:
  v76 = v75;
  v95 = v74;
  while (1)
  {
    sub_24EC7DA34(v74, &v98);
    v77 = (v74 - 88);
    sub_24EC7DA34(v74 - 88, v96);
    v78 = HIBYTE(v103);
    v79 = v97;
    sub_24E601704(v96, &qword_27F22CB40);
    result = sub_24E601704(&v98, &qword_27F22CB40);
    if ((v78 & 1) == 0 && v79)
    {
LABEL_81:
      v74 = v95 + 88;
      --v75;
      v8 = v93;
      if (++v105 != v93)
      {
        goto LABEL_82;
      }

      v9 = v87;
      v5 = v88;
      v6 = a3;
      v10 = v91;
      if (v93 < v91)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v73)
    {
      break;
    }

    v100 = *(v74 + 32);
    v101 = *(v74 + 48);
    v102 = *(v74 + 64);
    v103 = *(v74 + 80);
    v98 = *v74;
    v99 = *(v74 + 16);
    v80 = *(v74 - 40);
    *(v74 + 32) = *(v74 - 56);
    *(v74 + 48) = v80;
    *(v74 + 64) = *(v74 - 24);
    *(v74 + 80) = *(v74 - 8);
    v81 = *(v74 - 72);
    *v74 = *v77;
    *(v74 + 16) = v81;
    *(v74 - 56) = v100;
    *(v74 - 40) = v101;
    *(v74 - 24) = v102;
    *(v74 - 8) = v103;
    *v77 = v98;
    *(v74 - 72) = v99;
    v74 -= 88;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_24EC7F7EC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 >= v11)
  {
    v19 = 88 * v11;
    if (__dst != a2 || &a2[v19] <= __dst)
    {
      memmove(__dst, a2, 88 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 88 || v6 <= v7)
    {
      v18 = v6;
      goto LABEL_37;
    }

    v30 = v4;
    while (1)
    {
      v20 = (v6 - 88);
      v21 = v13 - 88;
      v5 -= 88;
      while (1)
      {
        v35 = v21 + 88;
        v24 = v5 + 88;
        sub_24EC7DA34(v21, v33);
        v25 = v20;
        sub_24EC7DA34(v20, v31);
        v26 = v34;
        v27 = v32;
        sub_24E601704(v31, &qword_27F22CB40);
        sub_24E601704(v33, &qword_27F22CB40);
        if ((v26 & 1) != 0 || !v27)
        {
          break;
        }

        if (v24 != v35)
        {
          memmove(v5, v21, 0x58uLL);
        }

        v22 = v21 - 88;
        v5 -= 88;
        v23 = v21 > v30;
        v21 -= 88;
        v20 = v25;
        if (!v23)
        {
          v13 = v22 + 88;
          v18 = v6;
          v4 = v30;
          goto LABEL_37;
        }
      }

      v18 = v25;
      if (v24 != v6)
      {
        memmove(v5, v25, 0x58uLL);
      }

      v4 = v30;
      v13 = v35;
      if (v35 > v30)
      {
        v6 = v18;
        if (v18 > v7)
        {
          continue;
        }
      }

      v13 = v21 + 88;
      goto LABEL_37;
    }
  }

  v12 = 88 * v9;
  if (__dst != __src || &__src[v12] <= __dst)
  {
    memmove(__dst, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 < 88 || v6 >= v5)
  {
    v18 = v7;
    goto LABEL_37;
  }

  do
  {
    sub_24EC7DA34(v6, v33);
    sub_24EC7DA34(v4, v31);
    v14 = v34;
    v15 = v32;
    sub_24E601704(v31, &qword_27F22CB40);
    sub_24E601704(v33, &qword_27F22CB40);
    if ((v14 & 1) == 0 && v15)
    {
      v16 = v4;
      v17 = v7 == v4;
      v4 += 88;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x58uLL);
      goto LABEL_14;
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 88;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v7 += 88;
  }

  while (v4 < v13 && v6 < v5);
  v18 = v7;
LABEL_37:
  v28 = 88 * ((v13 - v4) / 88);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

uint64_t sub_24EC7FB4C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x277D84F90];
  result = sub_24F4582EC(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_24F4582EC((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a5[2];
      if (v27 < v26)
      {
        v26 = a5[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a5;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_24F4582EC((v30 > 1), v31 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t JSONObject.adamId.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F928348();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t OverlayNowPlayingCacheDataIntent.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for OverlayNowPlayingCacheDataIntent()
{
  result = qword_27F22CB78;
  if (!qword_27F22CB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t OverlayNowPlayingCacheDataIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = *(type metadata accessor for OverlayNowPlayingCacheDataIntent() + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EC80A0C(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24EC801CC()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_24EC80204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EC802DC(uint64_t a1)
{
  v2 = sub_24EC809B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC80318(uint64_t a1)
{
  v2 = sub_24EC809B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayNowPlayingCacheDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC809B8();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for OverlayNowPlayingCacheDataIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t OverlayNowPlayingCacheDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB70);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for OverlayNowPlayingCacheDataIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC809B8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24EC80A0C(v10, v16, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EC80A74(v10);
}

unint64_t sub_24EC80830@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE800000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EC80A0C(v2 + v9, boxed_opaque_existential_1, type metadata accessor for Player);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24EC809B8()
{
  result = qword_27F22CB68;
  if (!qword_27F22CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB68);
  }

  return result;
}

uint64_t sub_24EC80A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC80A74(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNowPlayingCacheDataIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC80AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC80BA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EC80C5C()
{
  result = qword_27F22CB88;
  if (!qword_27F22CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB88);
  }

  return result;
}

unint64_t sub_24EC80CB4()
{
  result = qword_27F22CB90;
  if (!qword_27F22CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB90);
  }

  return result;
}

unint64_t sub_24EC80D0C()
{
  result = qword_27F22CB98;
  if (!qword_27F22CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB98);
  }

  return result;
}

uint64_t sub_24EC80D60()
{
  v1 = v0;
  v36 = *v0;
  v2 = sub_24F929AB8();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v30 - v6;
  v7 = sub_24F929158();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v11 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v35 = v11;
  v39 = v7;
  v37 = v8 + 16;
  v34 = v12;
  v12(v10, &v0[v11], v7);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v40 = v10;
  v14 = PendingPageRender.init(bag:metricsPipeline:)(v13, v10);
  swift_beginAccess();
  *(v0 + 2) = v14;

  if (v14)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = &v14[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v16 = sub_24EC853C0;
    v16[1] = v15;
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = (v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v31 = v5;
    v20 = *v19;
    *v19 = sub_24EC853C8;
    v19[1] = v18;

    v5 = v31;
    sub_24E824448(v20);
  }

  sub_24F92D1E8();
  sub_24F9286A8();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v21 = v38;
  sub_24F92A448();
  sub_24F92A408();
  (*(v5 + 8))(v21, v4);
  v34(v40, &v1[v35], v39);
  sub_24F92A0F8();
  swift_allocObject();
  v22 = sub_24F92A0E8();
  swift_beginAccess();
  *(v1 + 3) = v22;

  v23 = &v1[OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext];
  swift_beginAccess();
  v24 = v23[1];
  if (!v24 || !*(v1 + 3))
  {
  }

  v25 = *v23;
  v26 = qword_27F210658;

  if (v26 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F22E3B8);
  v41 = v25;
  v42 = v24;
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v27, qword_27F22E400);
  v28 = v33;
  sub_24F929A48();

  sub_24F92A098();

  return (*(v32 + 8))(v28, v2);
}

uint64_t sub_24EC8146C(uint64_t a1)
{
  swift_beginAccess();
  sub_24EA095A4(a1, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  return sub_24E601704(a1, &qword_27F224F98);
}

uint64_t (*sub_24EC814D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EC8152C;
}

uint64_t sub_24EC8152C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EC832DC();
  }

  return result;
}

uint64_t sub_24EC81560@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_24F929158();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EC815E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EC81798(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_24EC818C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F2108F8 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();

  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

uint64_t sub_24EC81B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + v6, a3, a2);
}

uint64_t sub_24EC81B8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_24E61DA68(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_24EC81D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t BasePresenter.deinit()
{

  sub_24E601704(v0 + 40, &qword_27F224F98);
  v1 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData, &qword_27F224FA0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData, qword_27F224FA8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_24EC81F9C(char a1)
{
  v3 = swift_beginAccess();
  v1[32] = a1;
  result = (*(*v1 + 256))(v3);
  v6 = v5;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v8 = swift_getObjectType();
    (*(v6 + 16))(v8, v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_24EC82130(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_24EC82190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_24EC821F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = &v64 - v3;
  v4 = sub_24F929AB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v68 = v2;
    v73 = a1;
    v82 = *(Strong + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker);
    v15 = Strong;
    swift_beginAccess();
    v78 = v15;
    sub_24E60169C(v15 + 40, v87, &qword_27F224F98);
    v16 = v88;
    if (v88)
    {
      v79 = v89;
      v17 = __swift_project_boxed_opaque_existential_1(v87, v88);
      v80 = &v64;
      v18 = v4;
      v19 = v5;
      v20 = *(v16 - 8);
      v21 = MEMORY[0x28223BE20](v17);
      v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      swift_unknownObjectRetain();
      sub_24E601704(v87, &qword_27F224F98);
      sub_24F92AD48();
      (*(v20 + 8))(v23, v16);
      v5 = v19;
      v4 = v18;
      v24 = sub_24F9286C8();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_24E601704(v87, &qword_27F224F98);
      v24 = 0;
    }

    v27 = v81;
    v77 = v24;
    v28 = v78;
    v29 = (v78 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
    swift_beginAccess();
    v30 = v29[1];
    v65 = *v29;
    v31 = (v28 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
    swift_beginAccess();
    v32 = v31[1];
    v66 = *v31;
    v33 = qword_27F210278;
    v34 = v82;
    swift_unknownObjectRetain();
    v80 = v30;

    v79 = v32;

    if (v33 != -1)
    {
      swift_once();
    }

    v35 = off_27F229AB8;
    swift_beginAccess();
    v70 = *(v35 + 88);
    v36 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_24E60169C(v28 + v36, v87, &qword_27F224FA0);
    v37 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
    swift_beginAccess();
    sub_24E60169C(v28 + v37, v86, qword_27F224FA8);
    swift_beginAccess();
    v38 = v35[18];
    v39 = (v28 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
    swift_beginAccess();
    v40 = *v39;
    v69 = v39[1];
    v41 = (v28 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
    swift_beginAccess();
    v42 = *v41;
    v67 = v41[1];
    v76 = v42;
    swift_unknownObjectRetain();
    v81 = v38;

    v71 = v40;
    swift_unknownObjectRetain();
    sub_24F929AA8();
    v43 = qword_27F210660;
    swift_unknownObjectRetain();
    if (v43 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
    __swift_project_value_buffer(v44, qword_27F22E3D0);
    v85[0] = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
    sub_24F929A48();
    v45 = *(v5 + 8);
    v45(v9, v4);
    v72 = v34;
    swift_unknownObjectRelease();
    v46 = *(v5 + 32);
    *&v82 = v5 + 32;
    v46(v9, v27, v4);
    if (v80)
    {
      *&v85[0] = v65;
      *(&v85[0] + 1) = v80;
      if (qword_27F210670 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v47, qword_27F22E400);
      sub_24F929A48();
      v45(v9, v4);
      v46(v9, v27, v4);
    }

    if (v79)
    {
      *&v85[0] = v66;
      *(&v85[0] + 1) = v79;
      if (qword_27F210678 != -1)
      {
        swift_once();
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v48, qword_27F22E418);
      sub_24F929A48();
      v45(v9, v4);
      v46(v9, v27, v4);
    }

    LOBYTE(v85[0]) = 0;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
    __swift_project_value_buffer(v49, qword_27F22E430);
    sub_24F929A48();
    v45(v9, v4);
    v46(v9, v27, v4);
    if (v77)
    {
      *&v85[0] = v77;
      v50 = v46;
      v51 = v45;
      v52 = v74;
      sub_24F929A78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      sub_24F929A48();
      v53 = v52;
      v45 = v51;
      v46 = v50;
      (*(v75 + 8))(v53, v68);
      v45(v9, v4);
      v50(v9, v27, v4);
    }

    if (v70 != 2)
    {
      LOBYTE(v85[0]) = v70 & 1;
      if (qword_27F210688 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v49, qword_27F22E448);
      sub_24F929A48();
      v45(v9, v4);
      v46(v9, v27, v4);
    }

    sub_24E60169C(v87, &v83, &qword_27F224FA0);
    if (v84)
    {
      sub_24E612C80(&v83, v85);
      v54 = v71;
      if (qword_27F210690 != -1)
      {
        swift_once();
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
      __swift_project_value_buffer(v55, qword_27F22E460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v85);
      v45(v9, v4);
      v46(v9, v27, v4);
    }

    else
    {
      sub_24E601704(&v83, &qword_27F224FA0);
      v54 = v71;
    }

    sub_24E60169C(v86, &v83, qword_27F224FA8);
    v56 = v81;
    if (v84)
    {
      sub_24E612C80(&v83, v85);
      if (qword_27F210698 != -1)
      {
        swift_once();
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
      __swift_project_value_buffer(v57, qword_27F22E478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v85);
      v45(v9, v4);
      v46(v9, v27, v4);
      v56 = v81;
      if (!v81)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_24E601704(&v83, qword_27F224FA8);
      if (!v56)
      {
LABEL_42:
        if (v76)
        {
          *&v85[0] = v76;
          *(&v85[0] + 1) = v67;
          v60 = qword_27F2106A8;
          swift_unknownObjectRetain();
          if (v60 != -1)
          {
            swift_once();
          }

          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
          __swift_project_value_buffer(v61, qword_27F22E4A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
          sub_24F929A48();
          v45(v9, v4);
          swift_unknownObjectRelease();
          v46(v9, v27, v4);
        }

        if (v54)
        {
          *&v85[0] = v54;
          *(&v85[0] + 1) = v69;
          v62 = qword_27F2106A0;
          swift_unknownObjectRetain();
          if (v62 != -1)
          {
            swift_once();
          }

          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
          __swift_project_value_buffer(v63, qword_27F22E490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
          sub_24F929A48();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v45(v9, v4);
          sub_24E601704(v86, qword_27F224FA8);
          sub_24E601704(v87, &qword_27F224FA0);
          swift_unknownObjectRelease();
          v46(v9, v27, v4);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_24E601704(v86, qword_27F224FA8);
          sub_24E601704(v87, &qword_27F224FA0);
        }

        return (v46)(v73, v9, v4);
      }
    }

    *&v85[0] = v56;
    v58 = qword_27F2106B0;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v59, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    v45(v9, v4);

    v46(v9, v27, v4);
    goto LABEL_42;
  }

  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v4, qword_27F22E3B8);
  return (*(v5 + 16))(a1, v25, v4);
}

uint64_t sub_24EC83178()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_24EC8324C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F224F98);
  v3 = *a2;
  swift_beginAccess();
  sub_24EA095A4(v5, v3 + 40);
  swift_endAccess();
  sub_24EC832DC();
  return sub_24E601704(v5, &qword_27F224F98);
}

uint64_t sub_24EC832DC()
{
  v1 = sub_24F9287F8();
  v43 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v38 - v4;
  v5 = sub_24F928738();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24E60169C(v0 + 40, &v58, &qword_27F224F98);
  if (v59)
  {
    v39 = v0;
    sub_24E8EA128(&v58, &v60);
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    sub_24F92AD48();
    v14 = sub_24F928768();
    result = (*(v11 + 8))(v13, v10);
    v49 = *(v14 + 16);
    if (v49)
    {
      v16 = 0;
      v45 = v50 + 16;
      v54 = v43 + 16;
      v56 = (v43 + 8);
      v40 = (v50 + 32);
      v42 = MEMORY[0x277D84F90];
      v44 = (v50 + 8);
      v48 = v5;
      v47 = v9;
      v46 = v14;
      v17 = v55;
      while (v16 < *(v14 + 16))
      {
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = v16;
        v51 = *(v50 + 72);
        (*(v50 + 16))(v9, v14 + v52 + v51 * v16, v5);
        v18 = sub_24F9286D8();
        sub_24F9287E8();
        if (*(v18 + 16) && (sub_24EC853D0(&qword_27F21E608, MEMORY[0x277D21BE0]), v19 = sub_24F92AEE8(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
        {
          v22 = ~v20;
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          while (1)
          {
            v24(v17, *(v18 + 48) + v23 * v21, v1);
            sub_24EC853D0(&qword_27F21E610, MEMORY[0x277D21BE0]);
            v25 = sub_24F92AFF8();
            v26 = *v56;
            (*v56)(v17, v1);
            if (v25)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v26(v57, v1);
          v27 = *v40;
          v9 = v47;
          v5 = v48;
          (*v40)(v41, v47, v48);
          v28 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v28;
          *&v58 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F458108(0, *(v28 + 16) + 1, 1);
            v30 = v58;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_24F458108(v31 > 1, v32 + 1, 1);
            v30 = v58;
          }

          *(v30 + 16) = v32 + 1;
          v42 = v30;
          result = v27((v30 + v52 + v32 * v51), v41, v5);
        }

        else
        {
LABEL_4:

          (*v56)(v57, v1);
          v9 = v47;
          v5 = v48;
          result = (*v44)(v47, v48);
        }

        v16 = v53 + 1;
        v14 = v46;
        if (v53 + 1 == v49)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
LABEL_21:

      v35 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
      v36 = v39;
      swift_beginAccess();
      if (*(v36 + v35))
      {
        v37 = *(v42 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v37 != 0);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v60);
    }
  }

  else
  {
    sub_24E601704(&v58, &qword_27F224F98);
    v33 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
    result = swift_beginAccess();
    v34 = *(v0 + v33);
    if (v34)
    {
      result = swift_beginAccess();
      *(v34 + 34) = 0;
    }
  }

  return result;
}

uint64_t sub_24EC83A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v5 = sub_24F929158();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24EC83A8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24EC83BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EC83C0C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_24EC83CB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  sub_24E60169C(a1, v13, a5);
  v10 = *a2;
  v11 = *a7;
  swift_beginAccess();
  sub_24E61DA68(v13, v10 + v11, a5);
  return swift_endAccess();
}

uint64_t sub_24EC83D3C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v5;
  v7[1] = v6;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC83EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24EC83F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_24EC84040@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + v6, a3, a2);
}

uint64_t sub_24EC8415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a2;
  v45 = a4;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_24F9288E8();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  v17 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate) = 0;
  v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
  *v22 = 0.0;
  v22[1] = 0.0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v14 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F928EF8();
  v23 = v46;
  v24 = v47;
  swift_beginAccess();
  *v22 = v23;
  *(v22 + 1) = v24;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  if (v44)
  {
    v25 = v44;
    v26 = v45;
    v27 = v41;
  }

  else
  {
    v28 = v40;
    sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v28 + 104))(v12, *MEMORY[0x277D21C38], v10);
    sub_24F92A368();
    (*(v28 + 8))(v12, v10);
    v29 = v43;
    sub_24F92A408();
    (*(v42 + 8))(v9, v29);
    v25 = sub_24F929EA8();
    v27 = MEMORY[0x277D221C0];
    v26 = v45;
  }

  v30 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker);
  *v30 = v25;
  v30[1] = v27;
  if (v26)
  {
    swift_unknownObjectRetain();
    v31 = v26;
  }

  else
  {
    v32 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v32 != -1)
    {
      swift_once();
    }

    sub_24F92A438();
    v33 = v43;
    sub_24F92A408();
    (*(v42 + 8))(v9, v33);
    v34 = v46;
    v35 = v30[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v36 = swift_unknownObjectRetain();
    v31 = sub_24EB0E424(v34, v36, v35);
    swift_unknownObjectRelease();
  }

  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsCalculator) = v31;
  type metadata accessor for MetricsPageEnterGate();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 32) = 0;
  *(v37 + 34) = 0;
  *(v37 + 24) = &protocol witness table for BasePresenter;
  swift_unknownObjectWeakAssign();
  v38 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v5 + v38) = v37;

  sub_24EC80D60();

  return v5;
}

uint64_t sub_24EC84734(uint64_t a1)
{
  result = sub_24EC853D0(&qword_27F22CBA0, type metadata accessor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BasePresenter()
{
  result = qword_27F22CBB0;
  if (!qword_27F22CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC847D8(uint64_t a1)
{
  result = sub_24EC853D0(&qword_27F22CBA8, type metadata accessor for BasePresenter);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_24EC84830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24EC84880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_24EC848D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24EC84978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 40, a2, &qword_27F224F98);
}

uint64_t sub_24EC84A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t keypath_get_11Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v6 + v7, a4, a3);
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

uint64_t sub_24EC84CB0()
{
  result = sub_24F929158();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EC85388()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC853D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC85418()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC8548C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC854E0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t HideCriteria.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = a1;
  sub_24F928398();
  sub_24EC859EC();
  sub_24F928218();
  if (v3)
  {
    v19 = sub_24F9285B8();
    (*(*(v19 - 8) + 8))(v34, v19);
    v20 = *(v9 + 8);
    v20(a1, v8);
    return (v20)(v17, v8);
  }

  else
  {
    v22 = v17;
    v23 = *(v9 + 8);
    v23(v22, v8);
    sub_24F928398();
    sub_24EC85A40();
    sub_24F928218();
    v23(v14, v8);
    v35 = v36;
    sub_24F928398();
    sub_24F9282B8();
    v24 = v7;
    v23(v11, v8);
    v25 = sub_24F92AC28();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      v27 = sub_24F9285B8();
      (*(*(v27 - 8) + 8))(v34, v27);
      v23(v18, v8);
      result = sub_24E8F2EE8(v7);
      v28 = 0;
    }

    else
    {
      v29 = v23;
      v30 = v24;
      v28 = sub_24F92ABB8();
      v31 = sub_24F9285B8();
      (*(*(v31 - 8) + 8))(v34, v31);
      v29(v18, v8);
      result = (*(v26 + 8))(v30, v25);
    }

    v32 = v33;
    *v33 = v35;
    *(v32 + 1) = v28;
  }

  return result;
}

unint64_t sub_24EC859EC()
{
  result = qword_27F22CBC0;
  if (!qword_27F22CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBC0);
  }

  return result;
}

unint64_t sub_24EC85A40()
{
  result = qword_27F22CBC8;
  if (!qword_27F22CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBC8);
  }

  return result;
}

id HideCriteria.isHidden.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();

  v3 = sub_24F92B588();

  v4 = [v2 isCapableOfAction:v1 capabilities:v3];

  return v4;
}

GameStoreKit::AppAction_optional __swiftcall AppAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C6174736E69;
  v3 = 0x65726F74736572;
  v4 = 0x68636E75616CLL;
  if (v1 != 3)
  {
    v4 = 0x7369747265766461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657461647075;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24EC85C54()
{
  result = qword_27F22CBD0;
  if (!qword_27F22CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBD0);
  }

  return result;
}

uint64_t sub_24EC85CA8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC85D88()
{
  sub_24F92B218();
}

uint64_t sub_24EC85E54()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC85F3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C6C6174736E69;
  v5 = 0xE700000000000000;
  v6 = 0x65726F74736572;
  v7 = 0xE600000000000000;
  v8 = 0x68636E75616CLL;
  if (v2 != 3)
  {
    v8 = 0x7369747265766461;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657461647075;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24EC85FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24EC86034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24EC860B8()
{
  result = qword_27F22CBD8;
  if (!qword_27F22CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBD8);
  }

  return result;
}

uint64_t MSOProviderData.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MSOProviderData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MSOProviderData.__allocating_init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 32))(v10 + v11, a3, v12);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = a5;
  return v10;
}

uint64_t MSOProviderData.init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = a4;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = a5;
  return v5;
}

uint64_t MSOProviderData.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MSOProviderData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *MSOProviderData.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = v2;
  v66 = *v3;
  v73 = sub_24F9285B8();
  v68 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v61 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v57 - v9;
  v11 = sub_24F91F4A8();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = v57 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v57 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  v24 = 0xE400000000000000;
  v25 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v31 = v23;
  v32 = v13;
  v33 = v30;
  v30(v31, v32);
  v67 = v30;
  if (!v28)
  {
    v35 = 1701667182;
    v34 = v25;
    goto LABEL_5;
  }

  v59 = v26;
  sub_24F928398();
  sub_24F928268();
  v33(v20, v32);
  v34 = v25;
  if ((*(v71 + 48))(v10, 1, v72) == 1)
  {
    v35 = 7107189;

    sub_24E70E058(v10);
    v24 = 0xE300000000000000;
LABEL_5:
    v36 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v37 = v35;
    v37[1] = v24;
    v37[2] = v66;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v68 + 8))(v69, v73);
    v67(v34, v32);
    v38 = v70;
    goto LABEL_8;
  }

  v57[1] = v29;
  v58 = v32;
  v40 = v71;
  v39 = v72;
  v41 = v65;
  (*(v71 + 32))(v65, v10, v72);
  v38 = v70;
  v70[2] = v59;
  v38[3] = v28;
  v42 = v40;
  v43 = v41;
  v44 = *(v42 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v44(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url, v41, v39);
  v45 = type metadata accessor for Artwork();
  v46 = v62;
  v66 = v34;
  sub_24F928398();
  v48 = v68;
  v47 = v69;
  v49 = *(v68 + 16);
  v50 = v63;
  v49(v63, v69, v73);
  v63 = v45;
  v51 = v64;
  v52 = Artwork.__allocating_init(deserializing:using:)(v46, v50);
  if (!v51)
  {
    *(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = v52;
    sub_24F928398();
    v56 = v73;
    v49(v61, v47, v73);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    (*(v48 + 8))(v47, v56);
    v67(v66, v58);
    (*(v71 + 8))(v65, v72);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = v74;
    return v38;
  }

  (*(v48 + 8))(v47, v73);
  v67(v66, v58);
  v53 = v72;
  v54 = *(v71 + 8);
  v54(v43, v72);

  v54(v38 + v59, v53);
LABEL_8:
  type metadata accessor for MSOProviderData();
  swift_deallocPartialClassInstance();
  return v38;
}

uint64_t type metadata accessor for MSOProviderData()
{
  result = qword_27F22CBE0;
  if (!qword_27F22CBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MSOProviderData.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MSOProviderData.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t *sub_24EC86C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MSOProviderData();
  v7 = swift_allocObject();
  result = MSOProviderData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EC86C98()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EC86DB4(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

char *sub_24EC86F58(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_24EC87108()
{
  type metadata accessor for LocalPlayerProvider();
  if (v0 <= 0x3F)
  {
    sub_24EC87348(319, &qword_27F22CC08, type metadata accessor for NicknameModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24E7D9B7C(319, &qword_27F254E10);
      if (v2 <= 0x3F)
      {
        sub_24EC8CFF4(319, &qword_27F22CC10, &unk_27F237670, &unk_24F989C80, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24EC8CFF4(319, &qword_27F22CC18, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24E7D9B7C(319, &qword_27F220798);
            if (v5 <= 0x3F)
            {
              sub_24E7D9B7C(319, &qword_27F218018);
              if (v6 <= 0x3F)
              {
                sub_24EC8CFF4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_24EC87348(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EC87348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24EC873C8()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t sub_24EC8743C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = *(v0 + 16);
  *&v18 = *(v0 + 8);
  *(&v18 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  v5 = v16;
  swift_getKeyPath();
  *&v18 = v5;
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v7 = *(v5 + 56);
  v6 = *(v5 + 64);

  v8 = (v0 + *(type metadata accessor for ProfileEditorView(0) + 36));
  v9 = *v8;
  v10 = *(v8 + 2);
  v18 = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
  sub_24F926F38();
  if (v7 == v16 && v6 == v17)
  {
  }

  else
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  sub_24F926F38();
  v12 = type metadata accessor for AvatarData(0);
  v13 = (*(*(v12 - 8) + 48))(v3, 1, v12) != 1;
  sub_24E601704(v3, &qword_27F22CC20);
  return v13;
}

double sub_24EC87690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  LOBYTE(v38) = 0;
  sub_24F926F28();
  v13 = *(&v40 + 1);
  *(a3 + 24) = v40;
  *(a3 + 32) = v13;
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
  sub_24F926F28();
  *(a3 + 40) = v40;
  v14 = type metadata accessor for ProfileEditorView(0);
  v15 = type metadata accessor for AvatarData(0);
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_24E60169C(v12, v10, &qword_27F22CC20);
  sub_24F926F28();
  sub_24E601704(v12, &qword_27F22CC20);
  v16 = (a3 + v14[10]);
  *&v38 = 0;
  sub_24F926F28();
  v17 = *(&v40 + 1);
  *v16 = v40;
  v16[1] = v17;
  v18 = v14[11];
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v19 = v14[12];
  *(a3 + v19) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v20 = v14[13];
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *a3 = v35;
  v21 = qword_27F210A50;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v22 = *(v34 + 8);
  v22(v6, v4);
  v23 = v40;
  if (qword_27F210A58 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v22(v6, v4);
  v24 = v40;
  type metadata accessor for NicknameModel();
  swift_allocObject();
  v25 = v35;
  *&v38 = sub_24F54A3C0(v35, v23, v24);
  sub_24F926F28();
  v26 = *(&v40 + 1);
  *(a3 + 8) = v40;
  *(a3 + 16) = v26;
  swift_getKeyPath();
  *&v40 = v25;
  sub_24EC8CA7C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = a3 + v14[9];
  v36 = v29;
  v37 = v28;

  sub_24F926F28();

  result = *&v38;
  v32 = v39;
  *v30 = v38;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_24EC87BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_24F923488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC28);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC30);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  sub_24EC8801C(v2, v13);
  LOBYTE(v2) = sub_24F9257F8();
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC38) + 36)];
  *v26 = v2;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v13[*(v11 + 36)] = 0;
  sub_24F923478();
  sub_24F927268();
  (*(v4 + 8))(v6, v3);
  sub_24F9235A8();
  v27 = sub_24EC8AC14();
  v28 = sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  sub_24F926658();
  (*(v8 + 8))(v10, v7);
  sub_24E601704(v13, &qword_27F22CC28);
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC90);
  v36 = v11;
  v37 = v7;
  v38 = v27;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22CC98, &qword_27F22CC90);
  v29 = v32;
  sub_24F926A58();
  return (*(v33 + 8))(v17, v29);
}

uint64_t sub_24EC8801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for ProfileEditorView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC78);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v10 = sub_24F923E98();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  sub_24F769764(&v19 - v14);
  sub_24F769788(v12);
  sub_24F52EC5C(v15, v12, &v22);
  if (v22 == 2)
  {
    sub_24EC8843C(v9);
    sub_24E60169C(v9, v7, &qword_27F22CC78);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC88);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88);
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F22CC78);
  }

  else
  {
    sub_24EC8BA1C(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v18 = swift_allocObject();
    sub_24EC8CA0C(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ProfileEditorView);
    *v7 = sub_24EC8BF5C;
    v7[1] = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC88);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88);
    return sub_24F924E28();
  }
}

uint64_t sub_24EC8843C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ProfileEditorView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCF8);
  sub_24EC894BC(v2, a1 + *(v8 + 44));
  v9 = sub_24F925818();
  v10 = (v2 + *(v5 + 48));
  v33[0] = v2;
  v11 = *v10;
  v12 = v10[1];
  v33[2] = v11;
  v33[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD00) + 36);
  *v21 = v9;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD08);
  sub_24F92C0F8();

  sub_24EC8BA1C(v2, v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  sub_24EC8CA0C(v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ProfileEditorView);
  v27 = (a1 + *(v24 + 56));
  *v27 = sub_24EC8BFDC;
  v27[1] = v26;
  v28 = [v22 defaultCenter];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC78);
  sub_24F92C0F8();

  sub_24EC8BA1C(v33[0], v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  result = sub_24EC8CA0C(v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v25, type metadata accessor for ProfileEditorView);
  v32 = (a1 + *(v29 + 56));
  *v32 = sub_24EC8BFF4;
  v32[1] = v30;
  return result;
}

uint64_t sub_24EC88744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCA0);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCA8);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_24F925018();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_24F924F88();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCB8);
  sub_24E602068(&qword_27F22CCC0, &qword_27F22CCB8);
  sub_24F923668();
  sub_24F924F98();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCC8);
  sub_24EC8AED8();
  sub_24F923668();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_24F924D18();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EC88A90()
{
  v0 = sub_24F9232F8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24F9232D8();
  sub_24EC88B28(v2);
  return sub_24F921798();
}

uint64_t sub_24EC88B28@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ProfileEditorView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = sub_24F928AD8();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  sub_24F928A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  sub_24F928A98();
  sub_24EC8BA1C(v1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24EC8CA0C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ProfileEditorView);
  v14 = sub_24F928B08();
  v15 = MEMORY[0x277D21CB8];
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F928AF8();
  v16 = v1 + *(v4 + 44);
  v17 = *v16;
  v18 = *(v16 + 16);
  v32 = v17;
  v33 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
  sub_24F926F38();
  v19 = v35;
  v20 = v36;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  sub_24F9271B8();
  v30 = v32;
  v21 = v33;
  v22 = v34;
  sub_24F928A98();
  v23 = type metadata accessor for SetNicknameAction();
  *(v11 + 96) = v23;
  *(v11 + 104) = sub_24EC8CA7C(&qword_27F216390, type metadata accessor for SetNicknameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  *boxed_opaque_existential_1 = v19;
  boxed_opaque_existential_1[1] = v20;
  *(boxed_opaque_existential_1 + 1) = v30;
  boxed_opaque_existential_1[4] = v21;
  boxed_opaque_existential_1[5] = v22;
  *(boxed_opaque_existential_1 + 48) = 1;
  (*(v7 + 32))(boxed_opaque_existential_1 + *(v23 + 28), v9, v31);
  sub_24F928A98();
  sub_24F92A678();
  v25 = sub_24F92A6B8();
  v26 = MEMORY[0x277D223D8];
  *(v11 + 136) = v25;
  *(v11 + 144) = v26;
  __swift_allocate_boxed_opaque_existential_1((v11 + 112));
  sub_24F92A668();
  v27 = sub_24F928DD8();
  v28 = MEMORY[0x277D21D10];
  a1[3] = v27;
  a1[4] = v28;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F928DC8();
}

uint64_t sub_24EC88EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9232F8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24F9232E8();
  sub_24EC88FC4(v8);
  sub_24F921798();
  v3 = sub_24EC8743C();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v3 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCC8);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_24E600A48;
  v7[2] = v5;
  return result;
}

double sub_24EC88FC4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  MEMORY[0x28223BE20](v3 - 8);
  *&v36 = &v33 - v4;
  v35 = sub_24F928AD8();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  v10 = *(v1 + 16);
  *&v38 = *(v1 + 8);
  v9 = v38;
  *(&v38 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  v11 = v41;
  swift_getKeyPath();
  *&v38 = v11;
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v12 = *(v11 + 64);
  v34 = *(v11 + 56);

  *&v41 = v9;
  *(&v41 + 1) = v10;
  sub_24F926F58();
  v13 = v38;
  v14 = v39;
  swift_getKeyPath();
  v41 = v13;
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE0);
  sub_24F927188();

  v33 = v38;
  v15 = v39;
  v16 = v40;

  sub_24F928A98();
  v17 = type metadata accessor for SetNicknameAction();
  *(v8 + 56) = v17;
  *(v8 + 64) = sub_24EC8CA7C(&qword_27F216390, type metadata accessor for SetNicknameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v19 = v35;
  *boxed_opaque_existential_1 = v34;
  boxed_opaque_existential_1[1] = v12;
  *(boxed_opaque_existential_1 + 1) = v33;
  boxed_opaque_existential_1[4] = v15;
  boxed_opaque_existential_1[5] = v16;
  *(boxed_opaque_existential_1 + 48) = 0;
  v20 = *(v5 + 32);
  v20(boxed_opaque_existential_1 + *(v17 + 28), v7, v19);
  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  v21 = v36;
  sub_24F926F38();
  sub_24F928A98();
  v22 = type metadata accessor for SaveAvatarAction(0);
  *(v8 + 96) = v22;
  *(v8 + 104) = sub_24EC8CA7C(&qword_27F216378, type metadata accessor for SaveAvatarAction);
  v23 = __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_24E6009C8(v21, v23, &qword_27F22CC20);
  v20(v23 + *(v22 + 20), v7, v19);
  sub_24F928A98();
  sub_24F92A678();
  v24 = sub_24F92A6B8();
  v25 = MEMORY[0x277D223D8];
  *(v8 + 136) = v24;
  *(v8 + 144) = v25;
  __swift_allocate_boxed_opaque_existential_1((v8 + 112));
  sub_24F92A668();
  v26 = *(v2 + 32);
  LOBYTE(v41) = *(v2 + 24);
  *(&v41 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v27 = v38;
  LOBYTE(v7) = v39;
  v41 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
  sub_24F926F58();
  v36 = v38;
  v28 = v39;
  v29 = type metadata accessor for ProgressPerformAction();
  v30 = v37;
  v37[3] = v29;
  v30[4] = sub_24EC8CA7C(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  v31 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_24F928A98();
  *v31 = v8;
  *(v31 + 1) = v27;
  *(v31 + 24) = v7;
  result = *&v36;
  *(v31 + 2) = v36;
  v31[6] = v28;
  return result;
}

id sub_24EC894BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v54 = type metadata accessor for NicknameSection();
  MEMORY[0x28223BE20](v54);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD10);
  MEMORY[0x28223BE20](v55);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - v9;
  v10 = type metadata accessor for TitleAndAvatarSection(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD18);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - v18;
  sub_24EC8C0E4(v65);
  v19 = *a1;
  v20 = objc_opt_self();

  sub_24EC8C9B0(v65, v66);
  v63 = v20;
  result = [v20 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = result;
  v23 = [result isAccountModificationRestricted];

  v24 = 1;
  if ((v23 & 1) == 0)
  {
    result = [v63 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v25 = result;
    v26 = [result isProfileModificationRestricted];

    if (v26)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  sub_24F926F58();
  v27 = v65[3];
  *(v12 + 2) = v65[2];
  *(v12 + 3) = v27;
  *(v12 + 4) = v65[4];
  v28 = v65[1];
  *v12 = v65[0];
  *(v12 + 1) = v28;
  *(v12 + 10) = v19;
  v12[88] = v24;
  sub_24F9275A8();
  sub_24F9242E8();
  sub_24EC8CA0C(v12, v16, type metadata accessor for TitleAndAvatarSection);
  v29 = &v16[*(v61 + 36)];
  v30 = v65[8];
  v31 = v65[10];
  v32 = v65[11];
  *(v29 + 4) = v65[9];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
  v33 = v65[6];
  *v29 = v65[5];
  *(v29 + 1) = v33;
  *(v29 + 2) = v65[7];
  *(v29 + 3) = v30;
  v34 = v62;
  sub_24E6009C8(v16, v62, &qword_27F22CD18);
  v35 = a1[2];
  *&v66[0] = a1[1];
  *(&v66[0] + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  result = [v63 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = result;
  v37 = [result isAccountModificationRestricted];

  v38 = 1;
  if (v37)
  {
LABEL_11:
    *v4 = swift_getKeyPath();
    v4[40] = 0;
    v40 = v54;
    v41 = *(v54 + 20);
    *&v4[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NicknameModel();
    sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
    sub_24F927378();
    v4[*(v40 + 28)] = v38;
    v42 = &v4[*(v40 + 32)];
    v64 = 0;
    sub_24F926F28();
    v43 = *(&v66[0] + 1);
    *v42 = v66[0];
    *(v42 + 1) = v43;
    sub_24F9275A8();
    sub_24F9242E8();
    v44 = v56;
    sub_24EC8CA0C(v4, v56, type metadata accessor for NicknameSection);
    v45 = (v44 + *(v55 + 36));
    v46 = v66[5];
    v45[4] = v66[4];
    v45[5] = v46;
    v45[6] = v66[6];
    v47 = v66[1];
    *v45 = v66[0];
    v45[1] = v47;
    v48 = v66[3];
    v45[2] = v66[2];
    v45[3] = v48;
    v49 = v58;
    sub_24E6009C8(v44, v58, &qword_27F22CD10);
    v50 = v57;
    sub_24E60169C(v34, v57, &qword_27F22CD18);
    v51 = v59;
    sub_24E60169C(v49, v59, &qword_27F22CD10);
    v52 = v60;
    sub_24E60169C(v50, v60, &qword_27F22CD18);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD20);
    sub_24E60169C(v51, v52 + *(v53 + 48), &qword_27F22CD10);
    sub_24E601704(v49, &qword_27F22CD10);
    sub_24E601704(v34, &qword_27F22CD18);
    sub_24E601704(v51, &qword_27F22CD10);
    return sub_24E601704(v50, &qword_27F22CD18);
  }

  result = [v63 shared];
  if (result)
  {
    v39 = result;
    v38 = [result isProfileModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24EC89BCC()
{
  sub_24F9276F8();
  sub_24F923B18();
}

uint64_t sub_24EC89C2C()
{
  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  return sub_24F926F48();
}

uint64_t sub_24EC89CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v16 = a2;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD28);
  sub_24E602068(&qword_27F22CD30, &qword_27F22CD28);
  sub_24F923438();
  v9 = [objc_opt_self() defaultCenter];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD38);
  sub_24F92C0F8();

  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  result = (*(v7 + 32))(v12 + v11, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = (a3 + *(v10 + 56));
  *v14 = sub_24EC8CB54;
  v14[1] = v12;
  return result;
}

id sub_24EC89ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v70 = type metadata accessor for NicknameSection();
  MEMORY[0x28223BE20](v70);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD40);
  MEMORY[0x28223BE20](v71);
  v73 = &v70 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD48);
  MEMORY[0x28223BE20](v72);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - v10;
  v11 = type metadata accessor for TitleAndAvatarSection(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD50);
  MEMORY[0x28223BE20](v79);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v18);
  v80 = &v70 - v19;
  sub_24EC8C0E4(v81);
  v20 = *a1;
  v21 = objc_opt_self();

  sub_24EC8C9B0(v81, v84);
  result = [v21 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  v24 = [result isAccountModificationRestricted];

  if (v24)
  {
    v25 = 1;
  }

  else
  {
    result = [v21 shared];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v26 = result;
    v25 = [result isProfileModificationRestricted];
  }

  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);
  sub_24F926F58();
  v27 = v81[3];
  *(v13 + 2) = v81[2];
  *(v13 + 3) = v27;
  *(v13 + 4) = v81[4];
  v28 = v81[1];
  *v13 = v81[0];
  *(v13 + 1) = v28;
  *(v13 + 10) = v20;
  v13[88] = v25;
  v29 = sub_24F925818();
  sub_24EC8C0E4(&v82);
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24EC8CA0C(v13, v17, type metadata accessor for TitleAndAvatarSection);
  v38 = v80;
  v39 = &v17[*(v79 + 36)];
  *v39 = v29;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  sub_24E6009C8(v17, v38, &qword_27F22CD50);
  v40 = a1[2];
  *&v84[0] = a1[1];
  *(&v84[0] + 1) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  result = [v21 shared];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = result;
  v42 = [result isAccountModificationRestricted];

  v43 = 1;
  if (v42)
  {
LABEL_10:
    *v4 = swift_getKeyPath();
    v4[40] = 0;
    v45 = v70;
    v46 = *(v70 + 20);
    *&v4[v46] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NicknameModel();
    sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
    sub_24F927378();
    v4[*(v45 + 28)] = v43;
    v47 = &v4[*(v45 + 32)];
    v83[0] = 0;
    sub_24F926F28();
    v48 = *(&v84[0] + 1);
    *v47 = v84[0];
    *(v47 + 1) = v48;
    v49 = sub_24F925818();
    sub_24EC8C0E4(v83);
    sub_24F923318();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v73;
    sub_24EC8CA0C(v4, v73, type metadata accessor for NicknameSection);
    v59 = v58 + *(v71 + 36);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    sub_24F927628();
    sub_24F9242E8();
    v60 = v74;
    sub_24E6009C8(v58, v74, &qword_27F22CD40);
    v61 = (v60 + *(v72 + 36));
    v62 = v84[5];
    v61[4] = v84[4];
    v61[5] = v62;
    v61[6] = v84[6];
    v63 = v84[1];
    *v61 = v84[0];
    v61[1] = v63;
    v64 = v84[3];
    v61[2] = v84[2];
    v61[3] = v64;
    v65 = v76;
    sub_24E6009C8(v60, v76, &qword_27F22CD48);
    v66 = v75;
    sub_24E60169C(v38, v75, &qword_27F22CD50);
    v67 = v77;
    sub_24E60169C(v65, v77, &qword_27F22CD48);
    v68 = v78;
    sub_24E60169C(v66, v78, &qword_27F22CD50);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD58);
    sub_24E60169C(v67, v68 + *(v69 + 48), &qword_27F22CD48);
    sub_24E601704(v65, &qword_27F22CD48);
    sub_24E601704(v38, &qword_27F22CD50);
    sub_24E601704(v67, &qword_27F22CD48);
    return sub_24E601704(v66, &qword_27F22CD50);
  }

  result = [v21 shared];
  if (result)
  {
    v44 = result;
    v43 = [result isProfileModificationRestricted];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24EC8A678(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a2, v3);
  sub_24F92B7F8();
  v11 = sub_24F92B7E8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  (*(v4 + 32))(v13 + v12, v6, v3);
  sub_24EA998B8(0, 0, v9, &unk_24F992270, v13);
}

uint64_t sub_24EC8A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_24F92B7F8();
  *(v4 + 40) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC8A8FC, v6, v5);
}

uint64_t sub_24EC8A8FC()
{

  v0[2] = 0xD000000000000020;
  v0[3] = 0x800000024FA589F0;
  sub_24F924088();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC8A9A0(uint64_t *a1)
{
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v10[1] = v6;
  sub_24EC8CA7C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  v8 = type metadata accessor for Player(0);
  (*(v3 + 16))(v5, v7 + *(v8 + 24), v2);
  return LocalPlayerProvider.avatarMediaArtwork.setter(v5);
}

uint64_t sub_24EC8AB24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_24EC8ABD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F548D00(v1, v2);
}

unint64_t sub_24EC8AC14()
{
  result = qword_27F22CC40;
  if (!qword_27F22CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC28);
    sub_24EC8ACCC();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC40);
  }

  return result;
}

unint64_t sub_24EC8ACCC()
{
  result = qword_27F22CC48;
  if (!qword_27F22CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC38);
    sub_24EC8AD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC48);
  }

  return result;
}

unint64_t sub_24EC8AD58()
{
  result = qword_27F22CC50;
  if (!qword_27F22CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC58);
    sub_24EC8ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC50);
  }

  return result;
}

unint64_t sub_24EC8ADDC()
{
  result = qword_27F22CC60;
  if (!qword_27F22CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC68);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC60);
  }

  return result;
}

unint64_t sub_24EC8AED8()
{
  result = qword_27F22CCD0;
  if (!qword_27F22CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CCC8);
    sub_24E602068(&qword_27F22CCC0, &qword_27F22CCB8);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CCD0);
  }

  return result;
}

uint64_t sub_24EC8AFBC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v75 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v79);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD88) - 8;
  MEMORY[0x28223BE20](v84);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14._object = 0x800000024FA58A20;
  v14._countAndFlagsBits = 0xD000000000000020;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = localizedString(_:comment:)(v14, v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  sub_24F927628();
  sub_24F9242E8();
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x800000024FA58A50;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  v82 = v19._object;
  v83 = v19._countAndFlagsBits;
  v20 = *(a1 + 48);
  v140 = *(a1 + 32);
  v141 = v20;
  v142 = *(a1 + 64);
  v21 = *(a1 + 16);
  v139[0] = *a1;
  v139[1] = v21;
  v92 = v20;
  v93 = v142;
  v90 = v21;
  v91 = v140;
  v89 = v139[0];
  sub_24EC8C9B0(v139, &v101);
  v80 = sub_24F925818();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v130 = 0;
  sub_24F927628();
  v30 = *(&v140 + 1);
  sub_24F9242E8();
  *&v131[55] = v146;
  *&v131[71] = v147;
  *&v131[87] = v148;
  *&v131[103] = v149;
  *&v131[7] = v143;
  *&v131[23] = v144;
  *&v131[39] = v145;
  v76 = *(a1 + 80);
  v77 = *(a1 + 88);
  v31 = type metadata accessor for AvatarSection(0);
  v32 = v31[7];
  type metadata accessor for TitleAndAvatarSection(0);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  sub_24F927198();
  (*(*(v33 - 8) + 56))(&v13[v32], 0, 1, v33);
  v34 = &v13[v31[8]];
  LOBYTE(v95[0]) = 0;
  sub_24F926F28();
  v35 = v102;
  *v34 = v101;
  *(v34 + 1) = v35;
  v36 = sub_24F9289E8();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_24E60169C(v9, v78, &qword_27F213FB0);
  sub_24F926F28();
  sub_24E601704(v9, &qword_27F213FB0);
  v37 = &v13[v31[10]];
  *v37 = swift_getKeyPath();
  v37[40] = 0;
  v38 = v31[11];
  *&v13[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v39 = &v13[v31[12]];
  LOBYTE(v95[0]) = 0;
  sub_24F926F28();
  v40 = v102;
  *v39 = v101;
  *(v39 + 1) = v40;
  *v13 = v30;
  v41 = v76;
  *(v13 + 1) = v76;
  v42 = sub_24F92B858();
  v43 = v81;
  (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
  sub_24F92B7F8();

  v44 = sub_24F92B7E8();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D85700];
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v41;
  sub_24EA998B8(0, 0, v43, &unk_24F9923E0, v45);

  v13[16] = v77;
  LOBYTE(v44) = sub_24F925818();
  sub_24F923318();
  v47 = v85;
  v48 = &v13[*(v84 + 44)];
  *v48 = v44;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  sub_24E60169C(v13, v47, &qword_27F22CD88);
  *&v94[0] = countAndFlagsBits;
  *(&v94[0] + 1) = object;
  v53 = v132;
  v54 = v137;
  v55 = v136;
  v94[5] = v136;
  v94[6] = v137;
  v56 = v135;
  v57 = v138;
  v94[7] = v138;
  v58 = v134;
  v94[3] = v134;
  v94[4] = v135;
  v94[1] = v132;
  v94[2] = v133;
  a2[2] = v133;
  a2[3] = v58;
  a2[6] = v54;
  a2[7] = v57;
  a2[4] = v56;
  a2[5] = v55;
  *a2 = v94[0];
  a2[1] = v53;
  v59 = v82;
  v60 = v83;
  *&v95[0] = v83;
  *(&v95[0] + 1) = v82;
  v95[3] = v91;
  v96 = v92;
  v97 = v93;
  v95[1] = v89;
  v95[2] = v90;
  LOBYTE(v41) = v80;
  LOBYTE(v98) = v80;
  *(&v98 + 1) = *v88;
  DWORD1(v98) = *&v88[3];
  *(&v98 + 1) = v23;
  *&v99 = v25;
  *(&v99 + 1) = v27;
  *&v100[0] = v29;
  BYTE8(v100[0]) = 0;
  *(&v100[3] + 9) = *&v131[48];
  *(&v100[2] + 9) = *&v131[32];
  *(&v100[1] + 9) = *&v131[16];
  *(v100 + 9) = *v131;
  *(&v100[7] + 1) = *&v131[111];
  *(&v100[6] + 9) = *&v131[96];
  *(&v100[5] + 9) = *&v131[80];
  *(&v100[4] + 9) = *&v131[64];
  v61 = v95[0];
  v62 = v89;
  v63 = v91;
  a2[10] = v90;
  a2[11] = v63;
  a2[8] = v61;
  a2[9] = v62;
  v64 = v96;
  v65 = v97;
  v66 = v99;
  a2[14] = v98;
  a2[15] = v66;
  a2[12] = v64;
  a2[13] = v65;
  v67 = v100[0];
  v68 = v100[1];
  v69 = v100[3];
  a2[18] = v100[2];
  a2[19] = v69;
  a2[16] = v67;
  a2[17] = v68;
  v70 = v100[4];
  v71 = v100[5];
  v72 = v100[7];
  a2[22] = v100[6];
  a2[23] = v72;
  a2[20] = v70;
  a2[21] = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD90);
  sub_24E60169C(v47, a2 + *(v73 + 64), &qword_27F22CD88);
  sub_24E60169C(v94, &v101, &qword_27F22CD98);
  sub_24E60169C(v95, &v101, &qword_27F22CDA0);
  sub_24E601704(v13, &qword_27F22CD88);
  sub_24E601704(v47, &qword_27F22CD88);
  v101 = v60;
  v102 = v59;
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v103 = v89;
  v104 = v90;
  v108 = v41;
  *v109 = *v88;
  *&v109[3] = *&v88[3];
  v110 = v23;
  v111 = v25;
  v112 = v27;
  v113 = v29;
  v114 = 0;
  v119 = *&v131[64];
  v120 = *&v131[80];
  *v121 = *&v131[96];
  *&v121[15] = *&v131[111];
  v115 = *v131;
  v116 = *&v131[16];
  v117 = *&v131[32];
  v118 = *&v131[48];
  sub_24E601704(&v101, &qword_27F22CDA0);
  v122[0] = countAndFlagsBits;
  v122[1] = object;
  v127 = v136;
  v128 = v137;
  v129 = v138;
  v123 = v132;
  v124 = v133;
  v125 = v134;
  v126 = v135;
  return sub_24E601704(v122, &qword_27F22CD98);
}

uint64_t sub_24EC8B840@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD80);
  return sub_24EC8AFBC(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_24EC8B890@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_24EC8B93C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F549384(v1, v2);
}

uint64_t sub_24EC8B998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F549384(v1, v2);
}

uint64_t sub_24EC8B9DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F548D00(v1, v2);
}

uint64_t sub_24EC8BA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm_2()
{
  v1 = type metadata accessor for ProfileEditorView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = (v3 + v1[8]);
  v5 = type metadata accessor for AvatarData(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_24F9289E8();
    v8 = (*(v7 - 8) + 8);
    v23 = *v8;
    (*v8)(v4 + v6, v7);
    v9 = v4 + *(v5 + 28);

    v10 = type metadata accessor for PlayerAvatar(0);
    v11 = *(v10 + 20);
    v12 = type metadata accessor for PlayerAvatar.Overlay(0);
    if (!(*(*(v12 - 8) + 48))(&v9[v11], 1, v12) && !swift_getEnumCaseMultiPayload())
    {
      v23(&v9[v11], v7);
    }

    v13 = &v9[*(v10 + 24)];
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0);

  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v3 + v14, 1, v15))
    {
      (*(v16 + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  v17 = v1[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F925218();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  else
  {
  }

  v20 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_24F923E98();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC8BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProfileEditorView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EC89CB0(a1, v6, a2);
}

__n128 sub_24EC8C0E4@<Q0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v62 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v60 = &v49[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v49[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v49[-v22];
  v58 = type metadata accessor for ProfileEditorView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v25;
  v54 = v3 + 13;
  v25(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v64 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v65, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v63 = v27;
      v51 = v24;
      v29 = v53;
      (v64[4])(v53, &v9[v26], v2);
      sub_24EC8CA7C(&qword_27F215650, MEMORY[0x277CE0570]);
      v30 = v65;
      v50 = sub_24F92AFF8();
      v31 = v64[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v64[1])(v65, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20);
    goto LABEL_15;
  }

  v51 = v24;
  v63 = v27;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v63(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v60;
  v56(v60, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598);
  v36 = v63;
  if (v63(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598);
LABEL_20:
      if (qword_27F210F38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DB50;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v52;
  sub_24E60169C(v35, v52, &qword_27F215598);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    (v64[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v43 = v33;
  v44 = v64;
  v45 = &v35[v34];
  v46 = v53;
  (v64[4])(v53, v45, v2);
  sub_24EC8CA7C(&qword_27F215650, MEMORY[0x277CE0570]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v2);
  sub_24E601704(v43, &qword_27F215598);
  sub_24E601704(v32, &qword_27F215598);
  v48(v37, v2);
  sub_24E601704(v35, &qword_27F215598);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210F30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DB00;
LABEL_18:
  v39 = v38[3];
  v69 = v38[2];
  v70 = v39;
  v71 = v38[4];
  v40 = v38[1];
  v67 = *v38;
  v68 = v40;
  v41 = v66;
  *(v66 + 32) = v69;
  *(v41 + 48) = v39;
  *(v41 + 64) = v71;
  result = v68;
  *v41 = v67;
  *(v41 + 16) = result;
  return result;
}

uint64_t sub_24EC8CA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC8CA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC8CACC()
{
  v1 = sub_24F924098();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EC8CB54(uint64_t a1)
{
  v3 = *(sub_24F924098() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EC8A678(a1, v4);
}

uint64_t sub_24EC8CBC4()
{
  v1 = sub_24F924098();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC8CC88(uint64_t a1)
{
  v4 = *(sub_24F924098() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EC8A864(a1, v6, v7, v1 + v5);
}

uint64_t sub_24EC8CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC8CE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EC8CF2C()
{
  type metadata accessor for LocalPlayerProvider();
  if (v0 <= 0x3F)
  {
    sub_24EC8CFF4(319, &qword_27F22CD78, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EC8CFF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EC8D058()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8);
  sub_24EC8AC14();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22CC98, &qword_27F22CC90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EC8D1D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EC8D214()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24EF9714C();
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0);
  sub_24EC8D470(a1, a7 + *(v14 + 36));
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E615E00(a3, a7 + 40);
  sub_24E615E00(a4, a7 + 80);
  sub_24E615E00(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_24EC8D4F4(a1);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_24EC8D470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC8D4F4(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.init(iconSize:titleSpace:subtitleSpace:offerTopSpace:offerButtonSize:descriptionSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  a5[1] = a7;
  v16 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v17 = v16[5];
  v18 = sub_24F922628();
  v22 = *(*(v18 - 8) + 32);
  (v22)((v18 - 8), a5 + v17, a1, v18);
  v22(a5 + v16[6], a2, v18);
  sub_24E612E28(a3, a5 + v16[7]);
  v19 = (a5 + v16[8]);
  *v19 = a8;
  v19[1] = a9;
  v20 = a5 + v16[9];

  return (v22)(v20, a4, v18);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612E28(a1, v1 + v3);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);

  return sub_24EC8D470(v3, a1);
}

double InAppPurchaseShowcaseLockupViewLayout.measurements(fitting:in:)(double a1)
{
  v2 = v1;
  v18 = sub_24F92CDB8();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24F922288();
  v17[2] = v7;
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_24F922288();
  v17[0] = v9;
  v17[1] = v8;
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_24F922288();
  v17[4] = v11;
  v17[5] = v10;
  v17[3] = v12;
  v17[6] = v13;
  v14 = v1 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);
  v15 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_24F922628();
  sub_24F9223C8();
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(&v14[*(v15 + 28)], *&v14[*(v15 + 28) + 24]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v4 + 8))(v6, v18);
  __swift_project_boxed_opaque_existential_1(v2 + 20, v2[23]);
  sub_24F922298();
  sub_24F9223C8();
  return a1;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_24F922888();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24EC8E1A8(a1, v13);
  sub_24F9227D8();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_24F922148();
  *v16 = Width;
  v15(v20, 0);
  sub_24F922158();
  v17 = sub_24F9221B8();
  sub_24F922BF8();
  v17(v20, 0);
  v18 = sub_24F9221B8();
  sub_24F922BC8();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC8E1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a1;
  v74 = a2;
  v70 = sub_24F92CDB8();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9227F8();
  v86 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922868();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v11;
  v72 = sub_24F922838();
  v73 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v14 = *MEMORY[0x277D22858];
  v16 = *(v15 + 104);
  v85 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v85, v14, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277D22868], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740);
  v17 = *(sub_24F922848() - 8);
  v81 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v66 = 4 * v81;
  v19 = swift_allocObject();
  v68 = v19;
  *(v19 + 16) = xmmword_24F942000;
  v20 = v19 + v18;
  v21 = (v3 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36));
  v22 = v21[1];
  v79 = v21;
  v92 = MEMORY[0x277D85048];
  v93 = MEMORY[0x277D225F8];
  v91 = v22;
  v88[0] = MEMORY[0x277D84F90];
  v76 = sub_24E8EF510();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  v77 = sub_24E8EF568();
  sub_24F92C6A8();
  v84 = v20;
  sub_24F922818();
  v24 = *(v86 + 8);
  v86 += 8;
  v75 = v24;
  v24(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v25 = v3[8];
  v26 = v3[9];
  v27 = __swift_project_boxed_opaque_existential_1(v3 + 5, v25);
  v92 = v25;
  v93 = *(v26 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v91);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v27, v25);
  v78 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v29 = v78[5];
  v30 = sub_24F922628();
  v89 = v30;
  v90 = MEMORY[0x277D22798];
  v31 = __swift_allocate_boxed_opaque_existential_1(v88);
  v80 = v30;
  v32 = *(v30 - 8);
  v82 = *(v32 + 16);
  v83 = v32 + 16;
  v82(v31, v21 + v29, v30);
  v87 = MEMORY[0x277D84F90];
  v63 = v23;
  sub_24F92C6A8();
  v33 = v81;
  sub_24F922818();
  v34 = v75;
  v75(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v62 = 2 * v33;
  v64 = v3;
  v35 = v3[13];
  v36 = v3[14];
  v37 = __swift_project_boxed_opaque_existential_1(v3 + 10, v35);
  v92 = v35;
  v93 = *(v36 + 8);
  v38 = __swift_allocate_boxed_opaque_existential_1(&v91);
  (*(*(v35 - 8) + 16))(v38, v37, v35);
  v39 = v78;
  v40 = v78[6];
  v41 = v80;
  v89 = v80;
  v90 = MEMORY[0x277D22798];
  v42 = __swift_allocate_boxed_opaque_existential_1(v88);
  v43 = v79;
  v82(v42, v79 + v40, v41);
  v87 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v44 = v62;
  sub_24F922818();
  v34(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v81 += v44;
  v45 = *(v43 + v39[8] + 8);
  __swift_project_boxed_opaque_existential_1((v43 + v39[7]), *(v43 + v39[7] + 24));
  v46 = v65;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v48 = v47;
  (*(v67 + 8))(v46, v70);
  v92 = MEMORY[0x277D85048];
  v93 = MEMORY[0x277D225F8];
  v91 = v45 + v48;
  v88[0] = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v49 = v64;
  sub_24F922818();
  v50 = v75;
  v75(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v51 = v49;
  v52 = v49[18];
  v53 = v51[19];
  v54 = __swift_project_boxed_opaque_existential_1(v51 + 15, v52);
  v92 = v52;
  v93 = *(v53 + 8);
  v55 = __swift_allocate_boxed_opaque_existential_1(&v91);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  v56 = v78[9];
  v57 = v80;
  v89 = v80;
  v90 = MEMORY[0x277D22798];
  v58 = __swift_allocate_boxed_opaque_existential_1(v88);
  v82(v58, v79 + v56, v57);
  v87 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v59 = v85;
  sub_24F922818();
  v50(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v92 = sub_24F922418();
  v93 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v91);
  sub_24F922408();
  sub_24F922878();
  return (*(v73 + 8))(v59, v72);
}

uint64_t sub_24EC8EB30(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_24F922888();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24EC8E1A8(a1, v13);
  sub_24F9227D8();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_24F922148();
  *v16 = Width;
  v15(v20, 0);
  sub_24F922158();
  v17 = sub_24F9221B8();
  sub_24F922BF8();
  v17(v20, 0);
  v18 = sub_24F9221B8();
  sub_24F922BC8();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC8ED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC8EDF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EC8EE9C()
{
  result = sub_24E8EFB54(319, &qword_27F237A20);
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24EC8EF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24EC8F04C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24EC8F10C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_24F922628();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OnboardingStep.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v4, a2, a3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v4);
}

uint64_t static OnboardingStep.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 24);
  v6(v9, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = MEMORY[0x253052150](v9, v8);
  sub_24E6585F8(v8);
  sub_24E6585F8(v9);
  return v4 & 1;
}

uint64_t sub_24EC8F318()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC8F398()
{
  sub_24F91EB38();
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_24E612C80(&v7, v10);
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v2 = v0[7];
        v1 = v0[8];
        sub_24E615E00(v10, &v7);
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        *(v3 + 24) = v1;
        sub_24E612C80(&v7, v3 + 32);

        sub_24F928C78();

        return __swift_destroy_boxed_opaque_existential_1(v10);
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_24E601704(v6, &qword_27F2129B0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_24E601704(&v7, &qword_27F22B760);
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A5A8();
}

void sub_24EC8F740()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_24EC8F7B0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24EC8F838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F648();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CreateCalendarEventAction.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name);

  return v1;
}

uint64_t CreateCalendarEventAction.location.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location);

  return v1;
}

uint64_t CreateCalendarEventAction.notes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes);

  return v1;
}

char *CreateCalendarEventAction.__allocating_init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v59 = a8;
  v55 = a7;
  v54 = a6;
  v52 = a5;
  v62 = a1;
  v63 = a2;
  v58 = a15;
  v56 = a13;
  v57 = a14;
  v53 = a11;
  v51 = a10;
  v50 = a9;
  v49 = sub_24F91F6B8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v21 = sub_24F91F648();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v61 = a3;
  v23(&v19[v20], a3, v21);
  v60 = a4;
  v23(&v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate], a4, v21);
  v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay] = v52;
  v24 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name];
  v25 = v55;
  *v24 = v54;
  *(v24 + 1) = v25;
  v26 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location];
  v27 = v50;
  *v26 = v59;
  *(v26 + 1) = v27;
  v28 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes];
  v29 = v53;
  *v28 = v51;
  *(v28 + 1) = v29;
  v59 = a12;
  sub_24E60169C(a12, &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url], &qword_27F228530);
  v30 = v57;
  *&v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v56;
  v31 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability];
  *v31 = v30;
  v31[8] = v58 & 1;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v33 = sub_24F928AD8();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v19[v32], a16, v33);
  v35 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(&v19[v35], 1, 1, v36);
  v37 = &v19[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = &v19[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v69, &v66, &qword_27F235830);
  if (*(&v67 + 1))
  {
    v39 = v67;
    *v38 = v66;
    *(v38 + 1) = v39;
    *(v38 + 4) = v68;
  }

  else
  {
    v40 = v47;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v48 + 8))(v40, v49);
    v64 = v41;
    v65 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v66, &qword_27F235830);
  }

  (*(v34 + 8))(a16, v33);
  sub_24E601704(v59, &qword_27F228530);
  v44 = *(v22 + 8);
  v44(v60, v21);
  v44(v61, v21);
  sub_24E601704(v69, &qword_27F235830);
  v45 = v63;
  *(v19 + 2) = v62;
  *(v19 + 3) = v45;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  return v19;
}

char *CreateCalendarEventAction.init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v69 = a8;
  v68 = a7;
  v67 = a6;
  v65 = a5;
  v62 = a3;
  v75 = a2;
  v74 = a1;
  v77 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v78 = a12;
  v66 = a11;
  v64 = a10;
  v63 = a9;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v58 - v21;
  v23 = sub_24F928AD8();
  v76 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v27 = sub_24F91F648();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v30 = &v17[v26];
  v31 = v62;
  v29(v30, v62, v27);
  v73 = a4;
  v29(&v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate], a4, v27);
  v32 = v22;
  v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay] = v65;
  v33 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name];
  v34 = v68;
  *v33 = v67;
  *(v33 + 1) = v34;
  v35 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location];
  v36 = v63;
  *v35 = v69;
  *(v35 + 1) = v36;
  v37 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes];
  v38 = v66;
  *v37 = v64;
  *(v37 + 1) = v38;
  v39 = v25;
  v40 = v23;
  v41 = v76;
  sub_24E60169C(v78, &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url], &qword_27F228530);
  *&v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v70;
  v42 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability];
  *v42 = v71;
  v42[8] = v72 & 1;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  (*(v41 + 16))(v39, v77, v40);
  v43 = sub_24F929608();
  (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
  v44 = &v17[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v44 = 0u;
  *(v44 + 1) = 0u;
  sub_24E60169C(v87, &v81, &qword_27F235830);
  if (*(&v82 + 1))
  {
    v84 = v81;
    v85 = v82;
    v86 = v83;
  }

  else
  {
    v45 = v59;
    sub_24F91F6A8();
    v46 = v31;
    v47 = sub_24F91F668();
    v48 = v40;
    v49 = v39;
    v50 = v32;
    v52 = v51;
    (*(v60 + 8))(v45, v61);
    v79 = v47;
    v80 = v52;
    v31 = v46;
    v32 = v50;
    v39 = v49;
    v40 = v48;
    v41 = v76;
    sub_24F92C7F8();
    sub_24E601704(&v81, &qword_27F235830);
  }

  (*(v41 + 8))(v77, v40);
  sub_24E601704(v78, &qword_27F228530);
  v53 = *(v28 + 8);
  v53(v73, v27);
  v53(v31, v27);
  sub_24E601704(v87, &qword_27F235830);
  v54 = &v17[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  *(v54 + 4) = v86;
  v55 = v85;
  *v54 = v84;
  *(v54 + 1) = v55;
  sub_24E6009C8(v32, &v17[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
  v56 = v75;
  *(v17 + 2) = v74;
  *(v17 + 3) = v56;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  (*(v41 + 32))(&v17[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v39, v40);
  return v17;
}

char *CreateCalendarEventAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v121 = v2;
  v115 = *v3;
  v5 = sub_24F9285B8();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v116 = (v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = v102 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v106 = v102 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v105 = v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = v102 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v113 = v102 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v102 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v102 - v29;
  v31 = sub_24F91F648();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v114 = v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v119 = v102 - v35;
  v123 = a1;
  sub_24F928398();
  sub_24F928288();
  v36 = v32;
  v108 = v15;
  v39 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v39;
  v124 = v14;
  v39(v30, v14);
  v40 = *(v32 + 48);
  v122 = v31;
  if (v40(v13, 1, v31) == 1)
  {
    sub_24E601704(v13, &unk_27F22EC30);
    v41 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v42 = 0x7461447472617473;
    v43 = v115;
    v42[1] = 0xE900000000000065;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
LABEL_14:
    swift_deallocPartialClassInstance();
    return v43;
  }

  v44 = v13;
  v45 = v122;
  v103 = *(v36 + 32);
  v103(v119, v44, v122);
  v112 = v36;
  sub_24F928398();
  v46 = v116;
  sub_24F928288();
  v38(v28, v124);
  if (v40(v46, 1, v45) == 1)
  {
    sub_24E601704(v116, &unk_27F22EC30);
    v47 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v48 = 0x65746144646E65;
    v43 = v115;
    v48[1] = 0xE700000000000000;
    v48[2] = v43;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
    (*(v112 + 8))(v119, v122);
    goto LABEL_14;
  }

  v49 = v38;
  v50 = v37;
  v51 = v114;
  v103(v114, v116, v122);
  v52 = v113;
  v53 = v123;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v49(v52, v124);
  if (!v56)
  {
    v91 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v92 = 1701667182;
    v92[1] = 0xE400000000000000;
    v92[2] = v115;
    (*(*(v91 - 8) + 104))(v92, *MEMORY[0x277D22530], v91);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v49(v53, v124);
    v43 = *(v112 + 8);
    v93 = v122;
    (v43)(v51, v122);
    (v43)(v119, v93);
    goto LABEL_14;
  }

  v116 = v54;
  v57 = *(v112 + 16);
  v58 = v50;
  v59 = v49;
  v60 = v121;
  v61 = v122;
  v57(v121 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate, v119, v122);
  v57(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v51, v61);
  v62 = v104;
  sub_24F928398();
  LOBYTE(v57) = sub_24F928278();
  v63 = v62;
  v64 = v124;
  v65 = v58;
  v59(v63, v124);
  *(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay) = v57 & 1;
  v66 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name);
  *v66 = v116;
  v66[1] = v56;
  v67 = v105;
  sub_24F928398();
  v68 = sub_24F928348();
  v70 = v69;
  v59(v67, v64);
  v71 = v65;
  v72 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location);
  *v72 = v68;
  v72[1] = v70;
  sub_24F928398();
  v73 = sub_24F928348();
  v75 = v74;
  v59(v67, v64);
  v76 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes);
  *v76 = v73;
  v76[1] = v75;
  sub_24F928398();
  v77 = v107;
  sub_24F928268();
  v59(v67, v64);
  sub_24E6009C8(v77, v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530);
  type metadata accessor for Action();
  sub_24F928398();
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v67, v120);
  v59(v67, v64);
  *(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction) = v78;
  v79 = v106;
  sub_24F928398();
  v80 = sub_24F928348();
  v82 = v81;
  v116 = v59;
  v59(v79, v64);
  v83 = v122;
  v84 = v64;
  v85 = v53;
  v102[1] = v71;
  if (v82)
  {
    v86 = v120;
    if (v80 == 2037609826 && v82 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {
      v87 = 0;
      v88 = v117;
    }

    else
    {
      v88 = v117;
      if (v80 != 1701147238 || v82 != 0xE400000000000000)
      {
        v101 = sub_24F92CE08();

        v87 = v101 & 1;
        v89 = v101 ^ 1;
        goto LABEL_12;
      }

      v87 = 1;
    }

    v89 = 0;
LABEL_12:
    v90 = v118;
    goto LABEL_17;
  }

  v87 = 0;
  v89 = 1;
  v88 = v117;
  v90 = v118;
  v86 = v120;
LABEL_17:
  v95 = v121 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability;
  *v95 = v87;
  *(v95 + 8) = v89 & 1;
  v96 = v109;
  (*(v108 + 16))(v109, v85, v84);
  v97 = v110;
  (*(v88 + 16))(v110, v86, v90);
  v98 = v111;
  v99 = Action.init(deserializing:using:)(v96, v97);
  if (v98)
  {
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v43 = *(v112 + 8);
    (v43)(v114, v83);
    (v43)(v119, v83);
  }

  else
  {
    v43 = v99;
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v100 = *(v112 + 8);
    v100(v114, v83);
    v100(v119, v83);
  }

  return v43;
}

uint64_t sub_24EC911C8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v2 = sub_24F91F648();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530);
}

uint64_t CreateCalendarEventAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530);

  return v0;
}

uint64_t CreateCalendarEventAction.__deallocating_deinit()
{
  CreateCalendarEventAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CreateCalendarEventAction()
{
  result = qword_27F22CDD8;
  if (!qword_27F22CDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC91524()
{
  sub_24F91F648();
  if (v0 <= 0x3F)
  {
    sub_24E6D4C08();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EC91690()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t ProductPageSectionType.rawValue.getter()
{
  v1 = 0x7975426F546B7361;
  v2 = 0x68736E6565726373;
  if (*v0 != 2)
  {
    v2 = 0x666C656873;
  }

  if (*v0)
  {
    v1 = 0x756B636F4C706F74;
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

uint64_t ProductPageSection.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageSection.init(deserializing:using:)(a1, a2);
  return v4;
}

GameStoreKit::ProductPageSectionType_optional __swiftcall ProductPageSectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC9183C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC91914()
{
  sub_24F92B218();
}

uint64_t sub_24EC919D8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC91AB8(uint64_t *a1@<X8>)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = 0xEB0000000073746FLL;
  v5 = 0x68736E6565726373;
  if (*v1 != 2)
  {
    v5 = 0x666C656873;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
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

uint64_t ProductPageSection.shelfId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t *ProductPageSection.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v35 = *v4;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  sub_24F928398();
  sub_24EC922D0();
  sub_24F928218();
  if (!v3)
  {
    v34 = a2;
    v16 = *(v8 + 8);
    v16(v13, v7);
    v17 = v36;
    v33 = a1;
    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v21 = v11;
    v22 = v16;
    v23 = v17;
    v16(v21, v7);
    if (v20)
    {
LABEL_5:
      v24 = sub_24F9285B8();
      (*(*(v24 - 8) + 8))(v34, v24);
      v22(v33, v7);
      *(v4 + 16) = v23;
      v4[3] = v18;
      v4[4] = v20;
      return v4;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {

        goto LABEL_14;
      }

      v31 = 0;
      v32 = v22;
    }

    else
    {
      v31 = 0;
      v32 = v22;
    }

    v26 = sub_24F92CE08();

    v20 = v31;
    v22 = v32;
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x6449666C656873;
    v28[1] = 0xE700000000000000;
    v28[2] = v35;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v29 = sub_24F9285B8();
    (*(*(v29 - 8) + 8))(v34, v29);
    v22(v33, v7);
    goto LABEL_3;
  }

  v14 = sub_24F9285B8();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(v8 + 8);
  v15(a1, v7);
  v15(v13, v7);
LABEL_3:
  type metadata accessor for ProductPageSection();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ProductPageSection.__allocating_init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t ProductPageSection.init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ProductPageSection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EC92080@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageSection();
  v7 = swift_allocObject();
  result = ProductPageSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s12GameStoreKit18ProductPageSectionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_24F92CE08();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

unint64_t sub_24EC922D0()
{
  result = qword_27F22CDE8;
  if (!qword_27F22CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CDE8);
  }

  return result;
}

unint64_t sub_24EC9234C()
{
  result = qword_27F22CDF0;
  if (!qword_27F22CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CDF0);
  }

  return result;
}

uint64_t NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, double a6)
{
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_24F92B098();
  v13 = [v11 initWithString_];

  if (a6 > 0.0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v14 setImage_];

    [v14 setBounds_];
    v16 = [objc_opt_self() attributedStringWithAttachment_];

    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v17 = v19;
    v18 = a1;
    if (a1 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = 1.0;
  v18 = a1;
  if (a1 < 0)
  {
    goto LABEL_39;
  }

LABEL_7:
  if ((v18 & 0x4000000000000000) == 0)
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_39:
  v20 = sub_24F92C738();
LABEL_9:
  v56 = a4;
  v59 = v16;
  if (v20)
  {
    sub_24E69A5C4(0, &qword_27F22CDF8);
    result = swift_getObjCClassFromMetadata();
    v57 = result;
    if (v20 < 1)
    {
      __break(1u);
      return result;
    }

    v54 = a2;
    v22 = 0;
    v23 = a1;
    v55 = *MEMORY[0x277D740A8];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x253052270](v22);
      }

      else
      {
        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      [v24 size];
      v27 = v26;
      [v25 size];
      v29 = v17 * v28;
      if ([v25 _hasBaseline] && (v30 = sub_24F92C3C8(), (v31 & 1) == 0))
      {
        *&v36 = v30 ^ 0x8000000000000000;
      }

      else if (*(a4 + 16) && (v32 = sub_24E7728E8(v55), (v33 & 1) != 0) && (sub_24E643A9C(*(a4 + 56) + 32 * v32, v61), sub_24E69A5C4(0, &qword_27F217E58), (swift_dynamicCast() & 1) != 0))
      {
        [v60 capHeight];
        v35 = v34;

        v36 = floor((v35 - v29) * 0.5);
      }

      else
      {
        v36 = 0.0;
      }

      v37 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      v38 = v37;
      if (a5)
      {
        v39 = [v25 imageWithRenderingMode_];
        [v38 setImage_];
      }

      else
      {
        [v37 setImage_];
      }

      [v38 setBounds_];
      v40 = [v57 attributedStringWithAttachment_];
      [v13 appendAttributedString_];
      if (v59)
      {
        v41 = v59;
        [v13 appendAttributedString_];

        a4 = v56;
      }

      ++v22;

      v23 = a1;
    }

    while (v20 != v22);

    a2 = v54;
  }

  else
  {
  }

  if (*(a4 + 16))
  {
    v42 = *MEMORY[0x277D740C0];
    v43 = sub_24E7728E8(*MEMORY[0x277D740C0]);
    if (v44)
    {
      sub_24E643A9C(*(a4 + 56) + 32 * v43, v61);
      sub_24E69A5C4(0, &qword_27F2394A0);
      if (swift_dynamicCast())
      {
        v45 = v60;
        [v13 addAttribute:v42 value:v45 range:{0, objc_msgSend(v13, sel_length)}];
      }
    }
  }

  v46 = [a2 layoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v47 = swift_allocObject();
  v48 = v46 == 1;
  v49 = *MEMORY[0x277D74200];
  *(v47 + 16) = xmmword_24F941C80;
  if (v48)
  {
    v50 = 3;
  }

  else
  {
    v50 = 2;
  }

  *(v47 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_24E69A5C4(0, &qword_27F22BD50);
  v51 = sub_24F92B588();

  v52 = v13;
  [v52 addAttribute:v49 value:v51 range:{0, objc_msgSend(v52, sel_length)}];

  v53 = sub_24F92BFE8();
  return v53;
}

char *sub_24EC92A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a1 + 32; ; i += 40)
  {
    sub_24EC97BEC(i, a2, &v14);
    if (v2)
    {
      break;
    }

    if (*(&v15 + 1))
    {
      v11 = v14;
      v12 = v15;
      v13 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E616FEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_24E616FEC((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      v9 = &v5[40 * v8];
      *(v9 + 8) = v13;
      *(v9 + 2) = v11;
      *(v9 + 3) = v12;
    }

    else
    {
      sub_24E601704(&v14, &qword_27F228658);
    }

    if (!--v3)
    {
      return v5;
    }
  }

  return v5;
}

void *sub_24EC92B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v5 = a1 + 32;
  do
  {
    sub_24E615E00(v5, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 44));
    if (*(v6 + 16) && (v7 = sub_24E76DD40(v19), (v8 & 1) != 0))
    {
      sub_24E60169C(*(v6 + 56) + 88 * v7, &v13, &qword_27F21EC48);
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    sub_24E772780(v19);
    if (*(&v14 + 1))
    {
      sub_24E60169C(&v13, v12, &qword_27F21EC48);
      sub_24E601704(&v13, &qword_27F223230);
      sub_24E615E00(v12, v20);
      sub_24E601704(v12, &qword_27F21EC48);
      sub_24E612C80(v20, &v13);
      sub_24E612C80(&v13, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E61710C(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E61710C((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      sub_24E612C80(v12, &v4[5 * v10 + 4]);
    }

    else
    {
      sub_24E601704(&v13, &qword_27F223230);
    }

    v5 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

char *sub_24EC92D98(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v17 = a1 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    while (v17)
    {
      v5 = MEMORY[0x253052270](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if (sub_24EC96C6C(v5))
      {
        sub_24E65864C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, &v14);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      if (*(&v15 + 1))
      {
        v11 = v14;
        v12 = v15;
        v13 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_24E616FEC(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_24E616FEC((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v9 = &v4[40 * v8];
        *(v9 + 8) = v13;
        *(v9 + 2) = v11;
        *(v9 + 3) = v12;
      }

      else
      {
        sub_24E601704(&v14, &qword_27F228658);
      }

      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v58 = a2;
  v52 = a4;
  v50 = a1;
  v8 = sub_24F92BEE8();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F92BE88();
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v47 = &v46 - v14;
  *(v5 + qword_27F39C290) = 2;
  *(v5 + qword_27F39C298) = 0;
  *(v5 + qword_27F39C2A0) = 0;
  *(v5 + qword_27F22CE00) = 0;
  *(v5 + qword_27F22CE08) = 0;
  *(v5 + qword_27F39C2A8) = 0;
  v16 = v5 + qword_27F39C2B0;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = qword_27F39C2B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE10);
  swift_allocObject();
  *(v5 + v17) = sub_24F92ADA8();
  v18 = qword_27F39C2C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE18);
  swift_allocObject();
  *(v5 + v18) = sub_24F92ADA8();
  v19 = qword_27F39C2C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE20);
  swift_allocObject();
  *(v5 + v19) = sub_24F92ADA8();
  v20 = qword_27F39C2D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A650);
  swift_allocObject();
  *(v5 + v20) = sub_24F92ADA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24F93A400;
  *(v21 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  *(v21 + 40) = type metadata accessor for ImpressionsCalculator();
  *&v61[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB60);
  sub_24E602068(&qword_27F22CE28, &unk_27F22EB60);
  v49 = sub_24F928F38();

  sub_24E60169C(a4, v15, &qword_27F228530);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  *(v5 + qword_27F39CC00) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v5 + qword_27F2326C8) = 0;
  v23 = *(*v5 + 640);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA0);
  v25 = *(*(v24 - 8) + 56);
  v25(v6 + v23, 1, 1, v24);
  v26 = *(*v6 + 648);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v27 - 8) + 56))(v6 + v26, 1, 1, v27);
  v28 = *(*v6 + 656);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE98);
  (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);
  v25(v6 + *(*v6 + 664), 1, 1, v24);
  v30 = *(*v6 + 672);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  v32 = *(*v6 + 680);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v33 - 8) + 56))(v6 + v32, 1, 1, v33);
  v34 = *(*v6 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  v60 = v22;
  sub_24EC97ED4(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v55 + 104))(v54, *MEMORY[0x277D85260], v56);
  *(v6 + v34) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v35 = (v6 + *(*v6 + 704));
  *v35 = 0u;
  v35[1] = 0u;
  *(v35 + 25) = 0u;
  v36 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v6 + v36) = sub_24F92ADA8();
  v37 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v6 + v37) = sub_24F92ADA8();
  v38 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v38) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v39 = (v6 + *(*v6 + 752));
  *v39 = 0;
  v39[1] = 0;
  v40 = v47;
  sub_24E60169C(v47, v6 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v61, v6 + *(*v6 + 744), &qword_27F229490);
  v41 = type metadata accessor for InlineUnifiedMessagePresenter();
  v59.receiver = objc_allocWithZone(v41);
  v59.super_class = v41;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v59, sel_init);

  v43 = sub_24EBBA108(v42, 0, 0, 0);
  v44 = *(*v43 + 1112);

  *(v43 + qword_27F39CC00) = v44(v57);

  sub_24EBC2DEC(0);

  swift_unknownObjectRelease();

  sub_24E601704(v52, &qword_27F228530);
  sub_24E601704(v61, &qword_27F229490);
  sub_24E601704(v40, &qword_27F228530);
  return v43;
}

uint64_t ArticleDiffablePagePresenter.touchMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39C290;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ArticleDiffablePagePresenter.shouldTerminateOnClose.getter()
{
  v1 = qword_27F39C298;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.getter()
{
  v1 = v0 + qword_27F39C2B0;
  swift_beginAccess();
  return *v1;
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.setter(uint64_t a1, char a2)
{
  v5 = v2 + qword_27F39C2B0;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24EC93C28(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v45 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v44 - v9, &qword_27F228530);
  swift_beginAccess();
  v51 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArticleDiffablePageContentPresenter();
  v12 = swift_allocObject();
  sub_24E60169C(v10, v7, &qword_27F228530);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_24E911D90(v7, v15 + v13);
  v16 = v45;
  v47 = v15;
  *(v15 + v14) = v45;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v17 = v10;
  sub_24E60169C(v10, v50, &qword_27F228530);
  *(v12 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v12 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;

  v20 = v16;
  swift_retain_n();
  v48 = v11;
  swift_retain_n();
  *(v12 + v19) = sub_24E60986C(v18);
  v21 = (v12 + qword_27F22F1A8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v12 + qword_27F22F1B0);
  *v22 = 0;
  v22[1] = 0;
  v46 = v22;
  v23 = (v12 + qword_27F22F1B8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_27F22F1C0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v12 + qword_27F22F1C8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_27F39C788);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v27 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8);
  swift_allocObject();
  *(v12 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v12 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0);
  swift_allocObject();
  *(v12 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v12 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v33 = sub_24F92ADA8();

  sub_24E601704(v17, &qword_27F228530);
  *(v12 + v32) = v33;
  v34 = qword_27F22F1E0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v36 = *(*(v35 - 8) + 56);
  v36(v12 + v34, 1, 1, v35);
  v37 = v35;
  v38 = v49;
  v36(v12 + qword_27F22F1E8, 1, 1, v37);
  *(v12 + 16) = v20;
  sub_24E911D90(v50, v12 + qword_27F39C7D0);
  v39 = v47;
  *v21 = sub_24EC98058;
  v21[1] = v39;
  *v23 = 0;
  v23[1] = 0;
  if (v38)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v41 = sub_24E965688;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = v46;
  *v46 = v41;
  v42[1] = v40;
  *v24 = sub_24EC9810C;
  v24[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  *(v12 + qword_27F22F1F0) = v51;
  *(v12 + qword_27F39C7D8) = v48;

  return v12;
}

uint64_t sub_24EC941EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  result = sub_24F2F3E28(*a1, v1, *(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    result = sub_24EC94258();
    if ((v2 & 1) == 0)
    {

      return sub_24EC94390(v1);
    }
  }

  return result;
}

uint64_t sub_24EC94258()
{
  v1 = v0;
  v2 = qword_27F39C2A0;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_24F92AD88();
  }

  if (*(v1 + qword_27F22CE00) || *(v1 + qword_27F22CE08))
  {
    swift_retain_n();
    sub_24F92AD88();
  }

  v3 = qword_27F39C2A8;
  result = swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_24F92AD88();
  }

  return result;
}

uint64_t sub_24EC94390(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v36 = v2;
    v37 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v32 = v1;
    while (1)
    {
      if (v37)
      {
        v6 = MEMORY[0x253052270](v4, v1);
        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_59;
        }

        v6 = *(v33 + 8 * v4);

        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v2 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      v38 = v8;
      v9 = *(v6 + 24);
      v43 = v3;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;
        v12 = v3;
        do
        {
          sub_24E615E00(v11, v42);
          sub_24E612C80(v42, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
          type metadata accessor for EditorialLink();
          if ((swift_dynamicCast() & 1) != 0 && v41)
          {
            MEMORY[0x253050F00]();
            if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();
            v12 = v43;
          }

          v11 += 40;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = v3;
      }

      v13 = v12 >> 62 ? sub_24F92C738() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v5 >> 62;
      if (v5 >> 62)
      {
        v30 = sub_24F92C738();
        v3 = v30 + v13;
        if (__OFADD__(v30, v13))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v3 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_50;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_31;
      }

LABEL_32:
      v5 = sub_24F92C8F8();
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
      v17 = *(v16 + 16);
      v18 = (*(v16 + 24) >> 1) - v17;
      v39 = v16;
      if (v12 >> 62)
      {
        v20 = sub_24F92C738();
        if (!v20)
        {
LABEL_5:

          v3 = MEMORY[0x277D84F90];
          if (v13 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }

        v21 = v20;
        v22 = sub_24F92C738();
        if (v18 < v22)
        {
          goto LABEL_60;
        }

        if (v21 < 1)
        {
          goto LABEL_62;
        }

        v19 = v22;
        v35 = v5;
        v23 = v39 + 8 * v17 + 32;
        sub_24E602068(&qword_27F22CE78, &qword_27F22CE70);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE70);
          v25 = sub_24E951A7C(v42, i, v12);
          v27 = *v26;

          (v25)(v42, 0);
          *(v23 + 8 * i) = v27;
        }

        v1 = v32;
        v5 = v35;
      }

      else
      {
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_5;
        }

        if (v18 < v19)
        {
          goto LABEL_61;
        }

        type metadata accessor for EditorialLink();
        swift_arrayInitWithCopy();
      }

      v3 = MEMORY[0x277D84F90];
      if (v19 < v13)
      {
        goto LABEL_57;
      }

      if (v19 > 0)
      {
        v28 = *(v39 + 16);
        v7 = __OFADD__(v28, v19);
        v29 = v28 + v19;
        if (v7)
        {
          goto LABEL_58;
        }

        *(v39 + 16) = v29;
      }

LABEL_6:

      v4 = v38;
      if (v38 == v36)
      {
        goto LABEL_52;
      }
    }

    if (!v14)
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v3 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:
    sub_24F92C738();
    goto LABEL_32;
  }

LABEL_51:
  v5 = v3;
LABEL_52:
  if (v5 >> 62)
  {
    if (!sub_24F92C738())
    {
    }

    goto LABEL_54;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:
    *&v42[0] = v5;
    sub_24F92AD88();
  }
}

uint64_t sub_24EC9485C(uint64_t a1, char a2)
{
  sub_24F2F5BDC(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  if (v4)
  {
    v5 = qword_27F39C2A0;
    swift_beginAccess();
    *(v2 + v5) = v4;
  }

  v6 = qword_27F22CE00;
  *(v2 + qword_27F22CE00) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);

  v7 = qword_27F22CE08;
  *(v2 + qword_27F22CE08) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);

  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
  v9 = qword_27F39C2A8;
  swift_beginAccess();
  *(v2 + v9) = v8;

  LOBYTE(v8) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v10 = qword_27F39C290;
  swift_beginAccess();
  *(v2 + v10) = v8;
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v12 = qword_27F39C298;
  result = swift_beginAccess();
  *(v2 + v12) = v11;
  if (!*(v2 + v6) && !*(v2 + v7))
  {
    return result;
  }

  v14 = *(v2 + qword_27F39CC10);
  if (v14 >> 62)
  {
LABEL_37:
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    v18 = 0;
    v19 = 1;
    v24 = 1;
LABEL_31:
    v29 = v24;
LABEL_32:
    v25 = v18;
    goto LABEL_33;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  while (2)
  {
    v21 = v18;
    v18 = v17;
    while (2)
    {
      v17 = v18;
      v18 = v16;
      while ((v14 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = v18 + 1;
        v22 = *(*(v14 + 32 + 8 * v18) + 16);
        switch(v22)
        {
          case '\'':
            goto LABEL_25;
          case '4':
            goto LABEL_27;
          case 'C':
            goto LABEL_25;
        }

LABEL_17:
        v18 = v16;
        if (v16 == v15)
        {
          v18 = v21;
          v24 = v20;
          goto LABEL_28;
        }
      }

      v30 = v17;
      v31 = v21;
      v32 = v20;
      result = MEMORY[0x253052270](v18, v14);
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(result + 16);
      swift_unknownObjectRelease();
      if (v23 == 39)
      {
        v20 = v32;
        v21 = v31;
LABEL_25:
        v19 = 0;
        if (v16 != v15)
        {
          continue;
        }

        v28 = v20;

        v29 = v28;
        v19 = 0;
        goto LABEL_32;
      }

      break;
    }

    v20 = v32;
    v21 = v31;
    if (v23 == 67)
    {
      goto LABEL_25;
    }

    v17 = v30;
    if (v23 != 52)
    {
      goto LABEL_17;
    }

LABEL_27:
    v20 = 0;
    v24 = 0;
    if (v16 != v15)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v25 = v17;

  v29 = v24;
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_33:
  v26 = v19 & v29;
  v27 = v2 + qword_27F39C2B0;
  result = swift_beginAccess();
  *v27 = v25;
  *(v27 + 8) = v26 & 1;
  return result;
}

uint64_t ArticleDiffablePagePresenter.reloadLink(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F93DE60;
  sub_24E65864C(a1 + 64, v3 + 32);
  v4 = *(v1 + *(*v1 + 688));
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = 65856;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24EC96B08;
  *(v6 + 24) = v5;
  v10[4] = sub_24E972460;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_65;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectCardOverlay()()
{
  v1 = qword_27F39C2A0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v13[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_24E601704(&v10, &qword_27F22CE30);
    return;
  }

  sub_24E612C80(&v10, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = *(v8 + 16);

    v9(&v10 + 1, v7, v8);
    *&v10 = v6;
    sub_24F92AD88();

    sub_24E601704(&v10, &qword_27F22CE40);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectFooterLockup()()
{
  v1 = *(v0 + qword_27F22CE00);
  if (v1)
  {
    if (*(v1 + 264))
    {
      v2[0] = *(v1 + 264);
      v2[1] = v1;
      v2[4] = type metadata accessor for Lockup();
      swift_retain_n();

      sub_24F92AD88();

      sub_24E601704(v2, &qword_27F22CE40);
    }
  }
}

uint64_t sub_24EC95000()
{
}

uint64_t ArticleDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBEE18();

  return v0;
}

uint64_t ArticleDiffablePagePresenter.__deallocating_deinit()
{
  ArticleDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC951A0(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v60 = a5;
  v61 = a6;
  v62 = a4;
  LODWORD(v63) = a3;
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60);
  MEMORY[0x28223BE20](v58);
  v59 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v25 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = *(*a1 + 696);
  swift_beginAccess();
  v64 = v20;
  v65 = a1;
  sub_24E60169C(a1 + v20, v16, &qword_27F22ACF0);
  sub_24E60169C(v16, v19, &qword_27F22ACF0);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v21 = sub_24F91F668();
  v23 = v22;
  v24 = v25;
  LOBYTE(v25) = v63;
  (*(v11 + 8))(v24, v10);
  MEMORY[0x253050C20](v21, v23);

  v26 = v67;
  v27 = v68;
  v28 = *(v14 + 60);
  v29 = v19;
  v30 = &v19[v28];

  *v30 = v26;
  *(v30 + 1) = v27;
  sub_24EC97180();
  sub_24E601704(v16, &qword_27F22ACF0);
  v31 = v25 >> 4;
  if (v31 <= 3)
  {
LABEL_18:
    v39 = v55;
    v40 = v56;
    v41 = v57;
    if (v31 > 1)
    {
LABEL_33:
      v33 = v64;
      v32 = v65;
      if (v31 != 2)
      {
        v48 = MEMORY[0x277D74C68];
        goto LABEL_44;
      }

      sub_24EC96504(v66);
    }

    else
    {
      v33 = v64;
      v32 = v65;
      if (!v31)
      {
        v67 = MEMORY[0x277D84F90];
        v34 = v66;
        v35 = v66 & 0xFFFFFFFFFFFFFF8;
        if (v66 >> 62)
        {
          goto LABEL_51;
        }

        v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_52:
          v50 = MEMORY[0x277D84F90];
LABEL_53:
          sub_24EC961AC(v50);

          v49 = 0;
          goto LABEL_57;
        }

LABEL_22:
        v63 = v16;
        v16 = v29;
        v29 = 0;
        v43 = v34 & 0xC000000000000001;
        while (1)
        {
          if (v43)
          {
            v44 = MEMORY[0x253052270](v29, v34);
            v45 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v29 >= *(v35 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_52;
              }

              goto LABEL_22;
            }

            v44 = *(v34 + 8 * v29 + 32);

            v45 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            v34 = v66;
            sub_24F92C998();
            sub_24F92C958();
          }

          ++v29;
          if (v45 == v42)
          {
            v50 = v67;
            v29 = v16;
            v16 = v63;
            goto LABEL_53;
          }
        }
      }

      v47 = sub_24EC92D98(v66);
      sub_24EC97704(v47);
      if (v25)
      {
      }

      else
      {
        (*(v40 + 16))(v39, v29, v41);
        sub_24F922DC8();

        (*(v40 + 40))(v29, v39, v41);
      }
    }

LABEL_45:
    v49 = 0;
    goto LABEL_58;
  }

  if ((v25 >> 4) <= 5u)
  {
    v33 = v64;
    v32 = v65;
    if (v31 == 4)
    {
      v46 = MEMORY[0x277D74C68];
LABEL_38:
      sub_24EC96948(v66, v46);
      goto LABEL_45;
    }

    v48 = MEMORY[0x277D74C88];
LABEL_44:
    sub_24EC96774(v66, v48);
    goto LABEL_45;
  }

  v33 = v64;
  v32 = v65;
  if (v31 == 6)
  {
    v46 = MEMORY[0x277D74C88];
    goto LABEL_38;
  }

  if (v31 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_45;
  }

  v67 = MEMORY[0x277D84F90];
  v34 = v66;
  v35 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
    v36 = sub_24F92C738();
    if (v36)
    {
LABEL_7:
      v63 = v16;
      v16 = v29;
      v29 = 0;
      v25 = v34 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v37 = MEMORY[0x253052270](v29, v34);
          v38 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v29 >= *(v35 + 16))
          {
            goto LABEL_50;
          }

          v37 = *(v34 + 8 * v29 + 32);

          v38 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          v34 = v66;
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v29;
      }

      while (v38 != v36);
      v51 = v67;
      v29 = v16;
      v16 = v63;
      goto LABEL_56;
    }
  }

  else
  {
    v36 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_7;
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_56:
  sub_24EC961AC(v51);

  v49 = 1;
LABEL_57:
  v33 = v64;
  v32 = v65;
LABEL_58:
  sub_24E60169C(v29, v16, &qword_27F22ACF0);
  swift_beginAccess();
  sub_24E61DA68(v16, v32 + v33, &qword_27F22ACF0);
  swift_endAccess();
  if (v62)
  {
    swift_beginAccess();
    v52 = v59;
    sub_24E60169C(v32 + v33, v59, &qword_27F22ACF0);
    v53 = v58;
    *(v52 + *(v58 + 36)) = v60 & 1;
    *(v52 + *(v53 + 40)) = v49;
    *(v52 + *(v53 + 44)) = v61 & 1;

    sub_24F92AD88();

    sub_24E601704(v52, &qword_27F22CE60);
  }

  return sub_24E601704(v29, &qword_27F22ACF0);
}

uint64_t sub_24EC959A4(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  LODWORD(v65) = a3;
  v68 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v57 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60);
  MEMORY[0x28223BE20](v60);
  v61 = &v57 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = *(*a1 + 696);
  swift_beginAccess();
  v66 = v21;
  v67 = a1;
  sub_24E60169C(a1 + v21, v17, &qword_27F22ACF0);
  sub_24E60169C(v17, v20, &qword_27F22ACF0);
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v22 = sub_24F91F668();
  v24 = v23;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x253050C20](v22, v24);
  v25 = v17;

  v26 = v69;
  v27 = v70;
  v28 = (v20 + *(v15 + 60));

  *v28 = v26;
  v28[1] = v27;
  sub_24EC97180();
  sub_24E601704(v17, &qword_27F22ACF0);
  v29 = v65 >> 4;
  if (v29 <= 3)
  {
LABEL_18:
    v40 = v57;
    v39 = v58;
    v41 = v59;
    if (v29 > 1)
    {
LABEL_33:
      v31 = v66;
      v30 = v67;
      v47 = v68;
      if (v29 != 2)
      {
        v50 = MEMORY[0x277D74C68];
        goto LABEL_44;
      }

      sub_24EC96504(v68);
    }

    else
    {
      v31 = v66;
      v30 = v67;
      v32 = v68;
      if (!v29)
      {
        v69 = MEMORY[0x277D84F90];
        v33 = v68 & 0xFFFFFFFFFFFFFF8;
        if (v68 >> 62)
        {
          goto LABEL_51;
        }

        v42 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_52:
          v52 = MEMORY[0x277D84F90];
LABEL_53:
          sub_24EC961AC(v52);

          v51 = 0;
          goto LABEL_57;
        }

LABEL_22:
        v65 = v25;
        v43 = v20;
        v20 = 0;
        v44 = v32 & 0xC000000000000001;
        v25 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v44)
          {
            v45 = MEMORY[0x253052270](v20, v32);
            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v20 >= *(v33 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_52;
              }

              goto LABEL_22;
            }

            v45 = *(v32 + 8 * v20 + 32);

            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            v32 = v68;
          }

          ++v20;
          if (v46 == v42)
          {
            v52 = v69;
            v20 = v43;
            v25 = v65;
            goto LABEL_53;
          }
        }
      }

      v49 = sub_24EC92D98(v68);
      sub_24EC97704(v49);
      if (v65)
      {
      }

      else
      {
        (*(v39 + 16))(v40, v20, v41);
        sub_24F922DC8();

        (*(v39 + 40))(v20, v40, v41);
      }
    }

LABEL_45:
    v51 = 0;
    goto LABEL_58;
  }

  if ((v65 >> 4) <= 5u)
  {
    v31 = v66;
    v30 = v67;
    v47 = v68;
    if (v29 == 4)
    {
      v48 = MEMORY[0x277D74C68];
LABEL_38:
      sub_24EC96948(v47, v48);
      goto LABEL_45;
    }

    v50 = MEMORY[0x277D74C88];
LABEL_44:
    sub_24EC96774(v47, v50);
    goto LABEL_45;
  }

  v31 = v66;
  v30 = v67;
  v32 = v68;
  if (v29 == 6)
  {
    v48 = MEMORY[0x277D74C88];
    v47 = v68;
    goto LABEL_38;
  }

  if (v29 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_45;
  }

  v69 = MEMORY[0x277D84F90];
  v33 = v68 & 0xFFFFFFFFFFFFFF8;
  if (v68 >> 62)
  {
    v34 = sub_24F92C738();
    if (v34)
    {
LABEL_7:
      v65 = v25;
      v35 = v20;
      v20 = 0;
      v36 = v32 & 0xC000000000000001;
      v25 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x253052270](v20, v32);
          v38 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v20 >= *(v33 + 16))
          {
            goto LABEL_50;
          }

          v37 = *(v32 + 8 * v20 + 32);

          v38 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
          v32 = v68;
        }

        ++v20;
      }

      while (v38 != v34);
      v53 = v69;
      v20 = v35;
      v25 = v65;
      goto LABEL_56;
    }
  }

  else
  {
    v34 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_7;
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_56:
  sub_24EC961AC(v53);

  v51 = 1;
LABEL_57:
  v31 = v66;
  v30 = v67;
LABEL_58:
  sub_24E60169C(v20, v25, &qword_27F22ACF0);
  swift_beginAccess();
  sub_24E61DA68(v25, v30 + v31, &qword_27F22ACF0);
  swift_endAccess();
  if (v64)
  {
    swift_beginAccess();
    v54 = v61;
    sub_24E60169C(v30 + v31, v61, &qword_27F22ACF0);
    v55 = v60;
    *(v54 + *(v60 + 36)) = v62 & 1;
    *(v54 + *(v55 + 40)) = v51;
    *(v54 + *(v55 + 44)) = v63 & 1;

    sub_24F92AD88();

    sub_24E601704(v54, &qword_27F22CE60);
  }

  return sub_24E601704(v20, &qword_27F22ACF0);
}