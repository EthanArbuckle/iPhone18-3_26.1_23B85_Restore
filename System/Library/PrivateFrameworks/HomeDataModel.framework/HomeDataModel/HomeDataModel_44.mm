uint64_t HomeState.Stream.cameraProfile(for:)(uint64_t a1)
{
  v4 = 0;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v91 = &v72 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v72 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v87 = (&v72 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v72 - v19;
  swift_beginAccess();
  v20 = *(v1 + 64);
  v86 = v5;
  if (v20)
  {
    v21 = [v20 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v92 = sub_1D1749970(v22);
    sub_1D1747DDC(&v92);

    v23 = v92;
    v5 = v86;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(v6 + 2);
  (v24)(v74, a1, v5);
  v81 = v24;
  v82 = (v6 + 16);
  (v24)(v87, a1, v5);
  v73 = v23 >> 62;
  if (v23 >> 62)
  {
LABEL_77:
    v85 = v23 & 0xFFFFFFFFFFFFFF8;
    v84 = sub_1D1E6873C();
  }

  else
  {
    v85 = v23 & 0xFFFFFFFFFFFFFF8;
    v84 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  v83 = v23 & 0xC000000000000001;
  v79 = v23;
  v80 = v23 + 32;
  v26 = (v6 + 8);
  v77 = v16;
  v78 = (v6 + 8);
  while (1)
  {
    if (v25 == v84)
    {
      v37 = v84;
      goto LABEL_40;
    }

    v90 = v25;
    if (v83)
    {
      v27 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v25 >= *(v85 + 16))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v27 = *(v80 + 8 * v25);
    }

    v88 = v27;
    v28 = [v27 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v24 = sub_1D1E67C1C();

    v6 = v87;
    v29 = v81;
    v81(v16, v87, v5);
    v29(v91, v6, v5);
    v89 = v24 >> 62;
    v2 = v24 >> 62 ? sub_1D1E6873C() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    v23 = v24 & 0xC000000000000001;
    v76 = v24 + 32;
    while (v2 != v5)
    {
      if (v23)
      {
        v31 = MEMORY[0x1D3891EF0](v5, v24);
      }

      else
      {
        if (v5 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v31 = *(v24 + 8 * v5 + 32);
      }

      v6 = v31;
      v32 = [v31 cameraProfiles];
      if (v32)
      {
        v33 = v32;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v34 = sub_1D1E67C1C();

        v16 = &v72;
        MEMORY[0x1EEE9AC00](v35);
        *(&v72 - 2) = v91;
        v36 = sub_1D174A6C4(sub_1D1A8D280, (&v72 - 4), v34);

        if (v36)
        {
          v2 = v5;
          break;
        }
      }

      else
      {
      }

      v30 = __OFADD__(v5++, 1);
      if (v30)
      {
        goto LABEL_72;
      }
    }

    v5 = v86;
    if (!v89)
    {
      break;
    }

    if (v2 != sub_1D1E6873C())
    {
      goto LABEL_34;
    }

LABEL_28:
    v16 = v77;
    v26 = v78;
    v6 = *v78;
    (*v78)(v77, v5);

    v6(v91, v5);

    v25 = (v90 + 1);
    v23 = v79;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_74;
    }
  }

  if (v2 == *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v23)
  {
    goto LABEL_83;
  }

  if (v2 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_85:
    v69 = *v78;
    v39 = v86;
    (*v78)(v72, v86);

    v69(v75, v39);
    v69(v74, v39);

    v69(v87, v39);
    __break(1u);
LABEL_86:
    v67 = v78;
    v70 = *v78;
    v58 = v86;
    (*v78)(v75, v86);
    v70(v72, v58);

    __break(1u);
    goto LABEL_87;
  }

  for (i = *(v76 + 8 * v2); ; i = MEMORY[0x1D3891EF0](v2, v24))
  {
    v39 = i;
    v40 = [i cameraProfiles];
    v16 = v77;
    if (!v40)
    {
      goto LABEL_88;
    }

    v41 = v40;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v42 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v43);
    *(&v72 - 2) = v16;
    v44 = sub_1D174A6C4(sub_1D1A8D280, (&v72 - 4), v42);

    v45 = v78;
    v46 = *v78;
    v5 = v86;
    (*v78)(v16, v86);

    if (!v44)
    {
      goto LABEL_89;
    }

    v46(v91, v5);

    v23 = v79;
    v26 = v45;
    v37 = v90;
LABEL_40:
    if (v73)
    {
      if (v37 == sub_1D1E6873C())
      {
LABEL_59:
        v58 = *v26;
        (*v26)(v74, v5);

        v59 = 0;
LABEL_70:
        v58(v87, v5);
        return v59;
      }
    }

    else if (v37 == *(v85 + 16))
    {
      goto LABEL_59;
    }

    if (v83)
    {
      v47 = MEMORY[0x1D3891EF0](v37, v23);
      goto LABEL_45;
    }

    if (v37 >= *(v85 + 16))
    {
      break;
    }

    v47 = *(v80 + 8 * v37);
LABEL_45:
    v90 = v47;
    v48 = [v47 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v5 = sub_1D1E67C1C();

    v49 = v74;
    v6 = v86;
    v50 = v81;
    v81(v72, v74, v86);
    v50(v75, v49, v6);
    v91 = (v5 >> 62);
    v16 = (v5 & 0xFFFFFFFFFFFFFF8);
    if (v5 >> 62)
    {
      v23 = sub_1D1E6873C();
    }

    else
    {
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = 0;
    v52 = v5 & 0xC000000000000001;
    v89 = v5 + 32;
    while (v23 != v51)
    {
      if (v52)
      {
        v53 = MEMORY[0x1D3891EF0](v51, v5);
      }

      else
      {
        if (v51 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v53 = *(v5 + 8 * v51 + 32);
      }

      v6 = v53;
      v54 = [v53 cameraProfiles];
      if (v54)
      {
        v55 = v54;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v56 = sub_1D1E67C1C();

        v24 = &v72;
        MEMORY[0x1EEE9AC00](v57);
        *(&v72 - 2) = v75;
        v2 = sub_1D174A6C4(sub_1D1A8D280, (&v72 - 4), v56);

        if (v2)
        {
          v23 = v51;
          break;
        }
      }

      else
      {
      }

      v30 = __OFADD__(v51++, 1);
      if (v30)
      {
        goto LABEL_76;
      }
    }

    if (v91)
    {
      v60 = sub_1D1E6873C();
    }

    else
    {
      v60 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 == v60)
    {
      goto LABEL_85;
    }

    if (v52)
    {
      goto LABEL_81;
    }

    if (v23 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v89 + 8 * v23);
      goto LABEL_67;
    }

    __break(1u);
LABEL_83:
    ;
  }

  __break(1u);
LABEL_81:
  v61 = MEMORY[0x1D3891EF0](v23, v5);
LABEL_67:
  v39 = v61;
  v62 = [v61 cameraProfiles];
  if (!v62)
  {
    goto LABEL_86;
  }

  v63 = v62;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v64 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v65);
  v66 = v72;
  *(&v72 - 2) = v72;
  v59 = sub_1D174A6C4(sub_1D1A8D280, (&v72 - 4), v64);

  v58 = *v78;
  v67 = v86;
  (*v78)(v66, v86);

  if (v59)
  {

    v58(v75, v67);
    v58(v74, v67);

    v5 = v67;
    goto LABEL_70;
  }

LABEL_87:
  v58(v75, v67);
  __break(1u);
LABEL_88:
  v46 = v78;
  v71 = *v78;
  v4 = v86;
  (*v78)(v91, v86);
  v71(v16, v4);

  __break(1u);
LABEL_89:
  v46(v91, v5);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A86130@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v14 = sub_1D1E67C1C();

  v15 = *(v6 + 2);
  v41 = v12;
  v15(v12, a2, v5);
  v44 = v10;
  v42 = v5;
  v15(v10, a2, v5);
  v43 = v14 >> 62;
  v40 = v6;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_27:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v14 & 0xC000000000000001;
  v38 = v14 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v21 = MEMORY[0x1D3891EF0](v18, v14);
    }

    else
    {
      if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v21 = *(v14 + 8 * v18 + 32);
    }

    v22 = v21;
    v23 = [v21 cameraProfiles];
    if (v23)
    {
      v24 = v23;
      sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
      v25 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v26);
      *(&v38 - 2) = v44;
      v10 = sub_1D174A6C4(sub_1D1A8D280, (&v38 - 4), v25);

      if (v10)
      {
        v17 = v18;
        break;
      }
    }

    else
    {
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_26;
    }
  }

  if (!v43)
  {
    if (v17 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:
    v34 = *(v40 + 1);
    v16 = v42;
    v34(v41, v42);
    v33 = 0;
LABEL_24:
    v35 = v39;

    result = (v34)(v44, v16);
    *v35 = v33;
    return result;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v19)
  {
    v27 = MEMORY[0x1D3891EF0](v17, v14);
  }

  else
  {
    if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v27 = *(v38 + 8 * v17);
  }

  v17 = v27;
  v28 = [v27 cameraProfiles];
  v10 = v40;
  if (!v28)
  {
LABEL_30:
    v34 = *(v10 + 1);
    v37 = v42;
    v34(v44, v42);
    v34(v41, v37);

    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v41;
  *(&v38 - 2) = v41;
  v33 = sub_1D174A6C4(sub_1D1A8D280, (&v38 - 4), v30);

  v34 = *(v10 + 1);
  v16 = v42;
  v34(v32, v42);

  if (v33)
  {
    goto LABEL_24;
  }

LABEL_31:
  result = (v34)(v44, v16);
  __break(1u);
  return result;
}

uint64_t HomeState.Stream.mediaProfile(for:)(uint64_t a1)
{
  v138 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v2 = *(*(v134 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v134);
  v111 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v104 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v110 = &v104 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v118 = &v104 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v104 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v104 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v104 - v21);
  v23 = sub_1D1E66A7C();
  v140 = *(v23 - 8);
  v24 = *(v140 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v112 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v104 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v125 = &v104 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v139 = &v104 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v123 = &v104 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v119 = &v104 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v104 - v37;
  swift_beginAccess();
  v39 = *(v1 + 64);
  if (v39)
  {
    v40 = [v39 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v142 = sub_1D1749970(v41);
    sub_1D1747DDC(&v142);
    v104 = 0;

    v42 = v142;
  }

  else
  {
    v104 = 0;
    v42 = MEMORY[0x1E69E7CC0];
  }

  v44 = v140 + 16;
  v43 = *(v140 + 16);
  v45 = v138;
  v43(v38, v138, v23);
  v136 = v43;
  v137 = v44;
  v43(v119, v45, v23);
  v107 = v38;
  v109 = v11;
  v106 = v42 >> 62;
  if (v42 >> 62)
  {
    goto LABEL_94;
  }

  v117 = v42 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v46 = 0;
    v115 = v42 & 0xC000000000000001;
    v108 = v42;
    v114 = v42 + 32;
    v132 = (v140 + 48);
    v133 = (v140 + 56);
    v124 = (v140 + 32);
    v129 = (v140 + 8);
    v47 = qword_1D1E71260;
    v127 = v22;
LABEL_7:
    if (v46 == i)
    {
      v79 = i;
      v53 = v118;
      v20 = v132;
      goto LABEL_48;
    }

    v122 = v46;
    if (v115)
    {
      break;
    }

    if (v46 < *(v117 + 16))
    {
      v48 = *(v114 + 8 * v46);
      goto LABEL_11;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v117 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  v48 = MEMORY[0x1D3891EF0]();
LABEL_11:
  v120 = v48;
  v49 = [v48 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v50 = sub_1D1E67C1C();

  v51 = v119;
  v52 = v136;
  v53 = v137;
  v136(v123, v119, v23);
  v54 = v51;
  v55 = v50;
  v52(v139, v54, v23);
  v121 = v50 >> 62;
  v138 = v50 & 0xFFFFFFFFFFFFFF8;
  if (v50 >> 62)
  {
    v42 = sub_1D1E6873C();
  }

  else
  {
    v42 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = 0;
  v135 = v55 & 0xC000000000000001;
  v113 = v55 + 32;
  v130 = v55;
  v131 = v42;
  while (1)
  {
    if (v42 == v56)
    {
      goto LABEL_33;
    }

    if (v135)
    {
      v60 = MEMORY[0x1D3891EF0](v56, v55);
    }

    else
    {
      if (v56 >= *(v138 + 16))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v42 = v56;
LABEL_80:
        v6 = v107;
        if (v130)
        {
          v99 = sub_1D1E6873C();
        }

        else
        {
          v99 = *(v140 + 16);
        }

        if (v42 == v99)
        {
          goto LABEL_102;
        }

        if (v139)
        {
LABEL_98:
          v100 = MEMORY[0x1D3891EF0](v42, v47);
          goto LABEL_87;
        }

        if (v42 < *(v140 + 16))
        {
          v100 = v127[v42];
LABEL_87:
          v101 = v100;
          v141 = v100;
          v53 = v105;
          sub_1D1A87F50(&v141, v105, &v142);
          v42 = *v129;
          (*v129)(v53, v23);

          v98 = v142;
          if (!v142)
          {
            goto LABEL_103;
          }

          (v42)(v112, v23);
          (v42)(v6, v23);

          goto LABEL_89;
        }

        __break(1u);
        goto LABEL_100;
      }

      v60 = *(v55 + 8 * v56 + 32);
    }

    v61 = v60;
    v62 = [v60 mediaProfile];
    v140 = v61;
    if (v62)
    {
      v63 = v62;
      v64 = [v62 uniqueIdentifier];

      sub_1D1E66A5C();
      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = *v133;
    (*v133)(v22, v65, 1, v23);
    v136(v20, v139, v23);
    v66(v20, 0, 1, v23);
    v67 = *(v134 + 48);
    sub_1D17783E0(v22, v6);
    sub_1D17783E0(v20, &v6[v67]);
    v68 = *v132;
    if ((*v132)(v6, 1, v23) == 1)
    {
      break;
    }

    v70 = v128;
    sub_1D17783E0(v6, v128);
    if (v68(&v6[v67], 1, v23) == 1)
    {
      sub_1D1741A30(v20, &qword_1EC642590, v47);
      v57 = v127;
      sub_1D1741A30(v127, &qword_1EC642590, v47);
      v58 = v70;
      v22 = v57;
      (*v129)(v58, v23);
      v53 = v140;
LABEL_15:
      sub_1D1741A30(v6, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_16;
    }

    v71 = v129;
    v72 = v47;
    v73 = v125;
    (*v124)(v125, &v6[v67], v23);
    sub_1D1797998();
    v126 = sub_1D1E6775C();
    v74 = *v71;
    (*v71)(v73, v23);
    sub_1D1741A30(v20, &qword_1EC642590, v72);
    v75 = v127;
    sub_1D1741A30(v127, &qword_1EC642590, v72);
    v76 = v70;
    v22 = v75;
    v74(v76, v23);
    v47 = v72;
    v55 = v130;
    sub_1D1741A30(v6, &qword_1EC642590, v47);
    v53 = v140;
    if (v126)
    {
      goto LABEL_30;
    }

LABEL_16:

LABEL_17:
    v59 = __OFADD__(v56++, 1);
    v42 = v131;
    if (v59)
    {
      goto LABEL_78;
    }
  }

  sub_1D1741A30(v20, &qword_1EC642590, v47);
  v55 = v130;
  sub_1D1741A30(v22, &qword_1EC642590, v47);
  v69 = v68(&v6[v67], 1, v23);
  v53 = v140;
  if (v69 != 1)
  {
    goto LABEL_15;
  }

  sub_1D1741A30(v6, &qword_1EC642590, v47);
LABEL_30:
  v77 = [v53 mediaProfile];

  if (!v77)
  {
    goto LABEL_17;
  }

  v42 = v56;
LABEL_33:
  if (v121)
  {
    if (v42 != sub_1D1E6873C())
    {
      goto LABEL_43;
    }

LABEL_37:
    v42 = v129;
    v78 = *v129;
    (*v129)(v123, v23);

    v78(v139, v23);

    v46 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_7;
  }

  if (v42 == *(v138 + 16))
  {
    goto LABEL_37;
  }

LABEL_43:
  if (v135)
  {
LABEL_100:
    v80 = MEMORY[0x1D3891EF0](v42, v55);
    v53 = v118;
    v20 = v132;
LABEL_46:
    v141 = v80;
    v6 = v123;
    sub_1D1A87F50(&v141, v123, &v142);
    v42 = *v129;
    (*v129)(v6, v23);

    v81 = v142;
    if (!v142)
    {
      goto LABEL_104;
    }

    (v42)(v139, v23);

    v79 = v122;
LABEL_48:
    if (v106)
    {
      if (v79 != sub_1D1E6873C())
      {
        goto LABEL_50;
      }
    }

    else if (v79 != *(v117 + 16))
    {
LABEL_50:
      if (v115)
      {
        v82 = MEMORY[0x1D3891EF0](v79, v108);
        goto LABEL_53;
      }

      if (v79 < *(v117 + 16))
      {
        v82 = *(v114 + 8 * v79);
LABEL_53:
        v83 = v82;
        v84 = [v82 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v47 = sub_1D1E67C1C();

        v85 = v107;
        v86 = v136;
        v6 = v137;
        v136(v105, v107, v23);
        v86(v112, v85, v23);
        v130 = v47 >> 62;
        v128 = v83;
        v140 = v47 & 0xFFFFFFFFFFFFFF8;
        if (v47 >> 62)
        {
          v42 = sub_1D1E6873C();
        }

        else
        {
          v42 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v55 = v110;
        v56 = 0;
        v138 = v47;
        v139 = (v47 & 0xC000000000000001);
        v127 = (v47 + 32);
        v135 = v42;
        while (1)
        {
          if (v42 == v56)
          {
            goto LABEL_80;
          }

          if (v139)
          {
            v87 = MEMORY[0x1D3891EF0](v56, v47);
          }

          else
          {
            if (v56 >= *(v140 + 16))
            {
              goto LABEL_92;
            }

            v87 = *(v47 + 8 * v56 + 32);
          }

          v22 = v87;
          v88 = [v87 mediaProfile];
          if (v88)
          {
            v89 = v88;
            v90 = [v88 uniqueIdentifier];

            sub_1D1E66A5C();
            v20 = v132;
            v91 = 0;
          }

          else
          {
            v91 = 1;
          }

          v92 = *v133;
          (*v133)(v53, v91, 1, v23);
          v136(v55, v112, v23);
          v92(v55, 0, 1, v23);
          v93 = *(v134 + 48);
          v6 = v111;
          sub_1D17783E0(v53, v111);
          sub_1D17783E0(v55, &v6[v93]);
          v94 = *v20;
          if ((*v20)(v6, 1, v23) == 1)
          {
            sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
            if (v94(&v6[v93], 1, v23) != 1)
            {
              goto LABEL_57;
            }

            sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
            v47 = v138;
          }

          else
          {
            v53 = v109;
            sub_1D17783E0(v6, v109);
            if (v94(&v6[v93], 1, v23) == 1)
            {
              v55 = v110;
              sub_1D1741A30(v110, &qword_1EC642590, qword_1D1E71260);
              sub_1D1741A30(v118, &qword_1EC642590, qword_1D1E71260);
              (*v129)(v53, v23);
LABEL_57:
              sub_1D1741A30(v6, &qword_1EC642980, &unk_1D1E6E6E0);
              v47 = v138;
LABEL_58:

              goto LABEL_59;
            }

            v95 = v125;
            (*v124)(v125, &v6[v93], v23);
            sub_1D1797998();
            LODWORD(v131) = sub_1D1E6775C();
            v96 = *v129;
            (*v129)(v95, v23);
            v55 = v110;
            sub_1D1741A30(v110, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v118, &qword_1EC642590, qword_1D1E71260);
            v96(v53, v23);
            v47 = v138;
            v20 = v132;
            sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
            if ((v131 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v97 = [v22 mediaProfile];

          if (v97)
          {
            goto LABEL_79;
          }

LABEL_59:
          v59 = __OFADD__(v56++, 1);
          v53 = v118;
          v42 = v135;
          if (v59)
          {
            goto LABEL_93;
          }
        }
      }

      __break(1u);
      goto LABEL_98;
    }

    v42 = *v129;
    (*v129)(v107, v23);

    v98 = 0;
LABEL_89:
    (v42)(v119, v23);
    return v98;
  }

  v53 = v118;
  v20 = v132;
  if (v42 < *(v138 + 16))
  {
    v80 = *(v113 + 8 * v42);
    goto LABEL_46;
  }

  __break(1u);
LABEL_102:
  v42 = v129;
  v103 = *v129;
  (*v129)(v105, v23);

  v103(v112, v23);
  v103(v6, v23);

  v103(v119, v23);
  __break(1u);
LABEL_103:
  (v42)(v112, v23);
  __break(1u);
LABEL_104:
  (v42)(v139, v23);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A877DC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v54 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v27 = sub_1D1E67C1C();

  v28 = v17[2];
  v56 = v25;
  (v28)(v25, a2, v16);
  v71 = v23;
  v66 = v28;
  v67 = v17 + 2;
  (v28)(v23, a2, v16);
  v55 = a3;
  v57 = v27 >> 62;
  if (v27 >> 62)
  {
LABEL_35:
    v72 = v27 & 0xFFFFFFFFFFFFFF8;
    v73 = sub_1D1E6873C();
  }

  else
  {
    v72 = v27 & 0xFFFFFFFFFFFFFF8;
    v73 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v70 = v27 & 0xC000000000000001;
  v54 = v27 + 32;
  v64 = v17 + 6;
  v65 = (v17 + 7);
  v58 = (v17 + 4);
  v62 = v17 + 1;
  v30 = v63;
  v68 = v27;
  while (v73 != v29)
  {
    if (v70)
    {
      v32 = MEMORY[0x1D3891EF0](v29, v27);
    }

    else
    {
      if (v29 >= *(v72 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v32 = *(v27 + 8 * v29 + 32);
    }

    v17 = v32;
    v33 = [v32 mediaProfile];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 uniqueIdentifier];

      sub_1D1E66A5C();
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = *v65;
    (*v65)(v30, v36, 1, v16);
    v38 = v74;
    (v66)(v74, v71, v16);
    v37(v38, 0, 1, v16);
    v39 = *(v69 + 48);
    sub_1D17783E0(v30, v8);
    sub_1D17783E0(v38, &v8[v39]);
    v28 = v64;
    v40 = *v64;
    if ((*v64)(v8, 1, v16) == 1)
    {
      sub_1D1741A30(v74, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
      v41 = v40(&v8[v39], 1, v16);
      v27 = v68;
      if (v41 == 1)
      {
        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v46 = [v17 mediaProfile];

        if (v46)
        {
          v73 = v29;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v42 = v74;
    v43 = v61;
    sub_1D17783E0(v8, v61);
    if (v40(&v8[v39], 1, v16) == 1)
    {
      v28 = qword_1D1E71260;
      sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
      v30 = v63;
      sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
      (*v62)(v43, v16);
      v27 = v68;
LABEL_5:
      sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v44 = v59;
    (*v58)(v59, &v8[v39], v16);
    sub_1D1797998();
    v60 = sub_1D1E6775C();
    v28 = v62;
    v45 = *v62;
    (*v62)(v44, v16);
    sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
    v30 = v63;
    sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
    v45(v43, v16);
    sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
    v27 = v68;
    if (v60)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v29++, 1))
    {
      goto LABEL_34;
    }
  }

  v47 = v62;
  if (v57)
  {
    v48 = sub_1D1E6873C();
  }

  else
  {
    v48 = *(v72 + 16);
  }

  if (v73 == v48)
  {
    v28 = *v47;
    (*v47)(v56, v16);
    v49 = 0;
    goto LABEL_32;
  }

  if (v70)
  {
    v50 = MEMORY[0x1D3891EF0](v73, v27);
LABEL_31:
    v51 = v50;
    v75 = v50;
    v52 = v56;
    sub_1D1A87F50(&v75, v56, &v76);
    v28 = *v47;
    (*v47)(v52, v16);

    v49 = v76;
    if (!v76)
    {
      goto LABEL_38;
    }

LABEL_32:

    result = (v28)(v71, v16);
    *v55 = v49;
  }

  else
  {
    if (v73 < *(v72 + 16))
    {
      v50 = *(v54 + 8 * v73);
      goto LABEL_31;
    }

    __break(1u);
LABEL_38:
    result = (v28)(v71, v16);
    __break(1u);
  }

  return result;
}

id sub_1D1A87F50@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v35 = *a1;
  v22 = [v35 mediaProfile];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 uniqueIdentifier];

    sub_1D1E66A5C();
    v25 = *(v6 + 56);
    v25(v21, 0, 1, v5);
  }

  else
  {
    v25 = *(v6 + 56);
    v25(v21, 1, 1, v5);
  }

  (*(v6 + 16))(v19, a2, v5);
  v25(v19, 0, 1, v5);
  v26 = *(v9 + 48);
  sub_1D17783E0(v21, v12);
  sub_1D17783E0(v19, &v12[v26]);
  v27 = *(v6 + 48);
  if (v27(v12, 1, v5) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    if (v27(&v12[v26], 1, v5) == 1)
    {
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
      result = [v35 mediaProfile];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v28 = v36;
  sub_1D17783E0(v12, v36);
  if (v27(&v12[v26], 1, v5) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    (*(v6 + 8))(v28, v5);
LABEL_9:
    sub_1D1741A30(v12, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  v30 = v34;
  (*(v6 + 32))(v34, &v12[v26], v5);
  sub_1D1797998();
  v31 = v28;
  v32 = sub_1D1E6775C();
  v33 = *(v6 + 8);
  v33(v30, v5);
  sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
  v33(v31, v5);
  sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = 0;
LABEL_13:
  *v37 = result;
  return result;
}

uint64_t HomeState.Stream.characteristic(for:)(uint64_t a1)
{
  v5 = 0;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v154 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v148 = &v147 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v167 = &v147 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v147 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v155 = &v147 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v151 = &v147 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v156 = &v147 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v149 = &v147 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v184 = &v147 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v182 = &v147 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v177 = &v147 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v165 = &v147 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v162 = &v147 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v147 - v35;
  swift_beginAccess();
  v36 = *(v1 + 64);
  if (v36)
  {
    v37 = [v36 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v187 = sub_1D1749970(v38);
    sub_1D1747DDC(&v187);

    v39 = v187;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v7 + 16);
  v40(v153, a1, v6);
  v173 = v40;
  v174 = v7 + 16;
  v40(v162, a1, v6);
  v150 = v39 >> 62;
  if (v39 >> 62)
  {
    goto LABEL_169;
  }

  v161 = v39 & 0xFFFFFFFFFFFFFF8;
  v160 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v41 = 0;
  v159 = v39 & 0xC000000000000001;
  v152 = v39;
  v158 = v39 + 32;
  v42 = v7 + 8;
  v178 = v6;
  v172 = (v7 + 8);
  while (v41 != v160)
  {
    v164 = v41;
    if (v159)
    {
      v43 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v41 >= *(v161 + 16))
      {
        goto LABEL_160;
      }

      v43 = *(v158 + 8 * v41);
    }

    v44 = v43;
    v2 = 0x1E696CB98uLL;
    v45 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
    v46 = *(v45 + 168);
    v47 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v48 = v46(v47, v45);
    v7 = v162;
    v49 = v173;
    v39 = v174;
    v173(v165, v162, v6);
    v49(v177, v7, v6);
    v163 = v48 >> 62;
    v175 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 >> 62)
    {
      v176 = sub_1D1E6873C();
    }

    else
    {
      v176 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v48;
    v42 = v172;
    v51 = 0;
    v171 = v50 & 0xC000000000000001;
    v166 = v50;
    v170 = v50 + 32;
    v169 = v44;
    while (1)
    {
      if (v51 == v176)
      {
        v7 = v176;
        goto LABEL_46;
      }

      v181 = v51;
      if (v171)
      {
        v52 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v51 >= *(v175 + 16))
        {
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v52 = *(v170 + 8 * v51);
      }

      v2 = v52;
      v53 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
      v54 = *(v53 + 240);
      v55 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v56 = v54(v55, v53);
      v57 = v177;
      v39 = v173;
      v7 = v174;
      v173(v182, v177, v6);
      (v39)(v184, v57, v6);
      v179 = v2;
      v180 = v56 >> 62;
      v185 = v56 & 0xFFFFFFFFFFFFFF8;
      if (v56 >> 62)
      {
        v42 = sub_1D1E6873C();
      }

      else
      {
        v42 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = 0;
      v183 = v56 & 0xC000000000000001;
      v168 = v56 + 32;
      while (1)
      {
        if (v42 == v58)
        {
          goto LABEL_31;
        }

        if (v183)
        {
          v59 = v56;
          v60 = MEMORY[0x1D3891EF0](v58, v56);
        }

        else
        {
          if (v58 >= *(v185 + 16))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v59 = v56;
          v60 = *(v56 + 8 * v58 + 32);
        }

        v3 = v60;
        v187 = v60;
        v6 = 0x1E696CC40uLL;
        v2 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
        v61 = *(v2 + 104);
        v62 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v63 = v61(&v186, v62, v2);
        v7 = &v147;
        MEMORY[0x1EEE9AC00](v63);
        *(&v147 - 2) = v184;
        v39 = v186;
        v64 = sub_1D174A6C4(sub_1D1A8D1DC, (&v147 - 4), v186);

        if (v64)
        {
          break;
        }

        v65 = __OFADD__(v58++, 1);
        v56 = v59;
        if (v65)
        {
          goto LABEL_57;
        }
      }

      v42 = v58;
      v56 = v59;
LABEL_31:
      if (v180)
      {
        if (v42 != sub_1D1E6873C())
        {
          break;
        }

        goto LABEL_35;
      }

      if (v42 != *(v185 + 16))
      {
        break;
      }

LABEL_35:
      v42 = v172;
      v7 = *v172;
      v6 = v178;
      (*v172)(v182, v178);

      (v7)(v184, v6);

      v51 = (v181 + 1);
      v44 = v169;
      if (__OFADD__(v181, 1))
      {
        goto LABEL_157;
      }
    }

    if (!v183)
    {
      if (v42 < *(v185 + 16))
      {
        v66 = *(v168 + 8 * v42);
        goto LABEL_44;
      }

LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v161 = v39 & 0xFFFFFFFFFFFFFF8;
      v160 = sub_1D1E6873C();
      goto LABEL_6;
    }

    v66 = MEMORY[0x1D3891EF0](v42, v56);
LABEL_44:
    v67 = v66;
    v187 = v66;
    v68 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
    v69 = *(v68 + 104);
    v70 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v71 = v69(&v186, v70, v68);
    MEMORY[0x1EEE9AC00](v71);
    v72 = v182;
    *(&v147 - 2) = v182;
    v39 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

    v73 = v172;
    v42 = *v172;
    v74 = v72;
    v6 = v178;
    (*v172)(v74, v178);

    v44 = v169;
    if (!v39)
    {
      goto LABEL_185;
    }

    (v42)(v184, v6);

    v42 = v73;
    v7 = v181;
LABEL_46:
    if (v163)
    {
      if (v7 != sub_1D1E6873C())
      {
LABEL_59:
        if (v171)
        {
          goto LABEL_173;
        }

        if (v7 < *(v175 + 16))
        {
          v76 = *(v170 + 8 * v7);
          goto LABEL_62;
        }

        __break(1u);
        goto LABEL_176;
      }
    }

    else if (v7 != *(v175 + 16))
    {
      goto LABEL_59;
    }

    v7 = *v42;
    (*v42)(v165, v6);

    (v7)(v177, v6);

    v41 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      goto LABEL_161;
    }
  }

LABEL_58:
  for (i = &v188; ; i = &v189)
  {
    v92 = *(i - 32);
    if (v150)
    {
      v7 = *(i - 32);
      v111 = sub_1D1E6873C();
      v92 = v7;
      if (v7 == v111)
      {
LABEL_119:
        v5 = *v42;
        (*v42)(v153, v6);

        v112 = 0;
LABEL_155:
        v5(v162, v6);
        return v112;
      }
    }

    else if (v92 == *(v161 + 16))
    {
      goto LABEL_119;
    }

    if (v159)
    {
      break;
    }

    if (v92 < *(v161 + 16))
    {
      v93 = *(v158 + 8 * v92);
      goto LABEL_89;
    }

    __break(1u);
LABEL_173:
    v76 = MEMORY[0x1D3891EF0](v7, v166);
LABEL_62:
    v44 = v76;
    v77 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
    v78 = *(v77 + 240);
    v79 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v3 = v78(v79, v77);
    v42 = v165;
    v7 = v178;
    v67 = v173;
    v173(v149, v165, v178);
    (v67)(v156, v42, v7);
    v182 = (v3 >> 62);
    v183 = v44;
    v185 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v39 = sub_1D1E6873C();
    }

    else
    {
      v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v184 = (v3 & 0xC000000000000001);
    v181 = (v3 + 32);
    v2 = v39;
    while (v39 != v6)
    {
      if (v184)
      {
        v7 = v3;
        v80 = MEMORY[0x1D3891EF0](v6, v3);
      }

      else
      {
        if (v6 >= *(v185 + 16))
        {
          goto LABEL_163;
        }

        v7 = v3;
        v80 = *(v3 + 8 * v6 + 32);
      }

      v81 = v80;
      v187 = v80;
      v44 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
      v82 = v44[13];
      v83 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v84 = v82(&v186, v83, v44);
      v42 = &v147;
      MEMORY[0x1EEE9AC00](v84);
      *(&v147 - 2) = v156;
      v67 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

      if (v67)
      {
        v39 = v6;
        v3 = v7;
        break;
      }

      v65 = __OFADD__(v6++, 1);
      v3 = v7;
      v39 = v2;
      if (v65)
      {
        goto LABEL_164;
      }
    }

    v2 = v183;
    if (v182)
    {
      v85 = sub_1D1E6873C();
    }

    else
    {
      v85 = *(v185 + 16);
    }

    if (v39 == v85)
    {
      goto LABEL_186;
    }

    if (v184)
    {
LABEL_176:
      v86 = MEMORY[0x1D3891EF0](v39, v3);
    }

    else
    {
      if (v39 >= *(v185 + 16))
      {
        __break(1u);
        goto LABEL_178;
      }

      v86 = v181[v39];
    }

    v7 = v86;
    v187 = v86;
    v87 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
    v44 = *(v87 + 104);
    v88 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v89 = (v44)(&v186, v88, v87);
    MEMORY[0x1EEE9AC00](v89);
    v90 = v149;
    *(&v147 - 2) = v149;
    v39 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

    v42 = v172;
    v67 = *v172;
    v91 = v90;
    v6 = v178;
    (*v172)(v91, v178);

    if (!v39)
    {
      goto LABEL_187;
    }

    (v67)(v156, v6);
    (v67)(v165, v6);

    (v67)(v177, v6);
  }

  v93 = MEMORY[0x1D3891EF0](v92, v152);
LABEL_89:
  v44 = v93;
  v94 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  v95 = *(v94 + 168);
  v96 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v97 = v95(v96, v94);
  v7 = v153;
  v6 = v178;
  v67 = v173;
  v39 = v174;
  v173(v151, v153, v178);
  (v67)(v155, v7, v6);
  v169 = (v97 >> 62);
  v180 = v97 & 0xFFFFFFFFFFFFFF8;
  if (v97 >> 62)
  {
    v179 = sub_1D1E6873C();
  }

  else
  {
    v179 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v97;
  v42 = v172;
  v99 = 0;
  v177 = (v98 & 0xC000000000000001);
  v170 = v98;
  v175 = v44;
  v176 = v98 + 32;
  while (2)
  {
    if (v99 == v179)
    {
      v7 = v179;
      goto LABEL_126;
    }

    v183 = v99;
    if (v177)
    {
      v100 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v99 >= *(v180 + 16))
      {
        goto LABEL_165;
      }

      v100 = *(v176 + 8 * v99);
    }

    v101 = v100;
    v44 = &qword_1EE07B690;
    v102 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
    v42 = *(v102 + 240);
    v103 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v181 = v101;
    v104 = (v42)(v103, v102);
    v7 = v155;
    v105 = v173;
    v39 = v174;
    v173(v157, v155, v6);
    v105(v167, v7, v6);
    v182 = (v104 >> 62);
    v185 = v104 & 0xFFFFFFFFFFFFFF8;
    if (v104 >> 62)
    {
      v2 = sub_1D1E6873C();
    }

    else
    {
      v2 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = 0;
    v184 = (v104 & 0xC000000000000001);
    v171 = v104 + 32;
    while (v2 != v67)
    {
      if (v184)
      {
        v42 = v104;
        v106 = MEMORY[0x1D3891EF0](v67, v104);
      }

      else
      {
        if (v67 >= *(v185 + 16))
        {
          goto LABEL_158;
        }

        v42 = v104;
        v106 = *(v104 + 8 * v67 + 32);
      }

      v44 = v106;
      v187 = v106;
      v7 = 0x1E696CC40uLL;
      v3 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
      v107 = *(v3 + 104);
      v108 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v109 = v107(&v186, v108, v3);
      MEMORY[0x1EEE9AC00](v109);
      *(&v147 - 2) = v167;
      v39 = v186;
      v110 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

      if (v110)
      {
        v2 = v67;
        v6 = v178;
        v104 = v42;
        break;
      }

      v65 = __OFADD__(v67++, 1);
      v6 = v178;
      v104 = v42;
      if (v65)
      {
        goto LABEL_159;
      }
    }

    if (!v182)
    {
      if (v2 != *(v185 + 16))
      {
        break;
      }

      goto LABEL_113;
    }

    if (v2 == sub_1D1E6873C())
    {
LABEL_113:
      v42 = v172;
      v7 = *v172;
      (*v172)(v157, v6);

      (v7)(v167, v6);

      v99 = v183 + 1;
      v44 = v175;
      if (__OFADD__(v183, 1))
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  if (v184)
  {
    goto LABEL_183;
  }

  if (v2 < *(v185 + 16))
  {
    for (j = *(v171 + 8 * v2); ; j = MEMORY[0x1D3891EF0](v2, v104))
    {
      v114 = j;
      v187 = j;
      v115 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
      v116 = *(v115 + 104);
      v117 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v118 = v116(&v186, v117, v115);
      MEMORY[0x1EEE9AC00](v118);
      v119 = v157;
      *(&v147 - 2) = v157;
      v39 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

      v42 = v172;
      v67 = *v172;
      v120 = v119;
      v6 = v178;
      (*v172)(v120, v178);

      v44 = v175;
      v121 = v181;
      if (!v39)
      {
        goto LABEL_191;
      }

      (v67)(v167, v6);

      v7 = v183;
LABEL_126:
      if (v169)
      {
        v122 = sub_1D1E6873C();
      }

      else
      {
        v122 = *(v180 + 16);
      }

      if (v7 == v122)
      {
        goto LABEL_188;
      }

      if (v177)
      {
LABEL_178:
        v123 = MEMORY[0x1D3891EF0](v7, v170);
      }

      else
      {
        if (v7 >= *(v180 + 16))
        {
          __break(1u);
LABEL_181:
          v135 = MEMORY[0x1D3891EF0](v42, v3);
LABEL_153:
          v136 = v135;
          v187 = v135;
          v137 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
          v138 = *(v137 + 104);
          v139 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v140 = v138(&v186, v139, v137);
          MEMORY[0x1EEE9AC00](v140);
          v141 = v148;
          *(&v147 - 2) = v148;
          v112 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

          v67 = v172;
          v5 = *v172;
          v142 = v141;
          v6 = v178;
          (*v172)(v142, v178);

          if (!v112)
          {
            goto LABEL_190;
          }

          v5(v154, v6);
          v5(v151, v6);

          v5(v155, v6);
          v5(v153, v6);

          goto LABEL_155;
        }

        v123 = *(v176 + 8 * v7);
      }

      v124 = v123;
      v125 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
      v6 = *(v125 + 240);
      v126 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v3 = (v6)(v126, v125);
      v7 = v151;
      v39 = v178;
      v127 = v173;
      v173(v148, v151, v178);
      v127(v154, v7, v39);
      v182 = v124;
      v183 = v3 >> 62;
      v185 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v42 = sub_1D1E6873C();
      }

      else
      {
        v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = 0;
      v184 = (v3 & 0xC000000000000001);
      v181 = (v3 + 32);
      v104 = 0x1E696CC40uLL;
      v2 = v42;
      while (v42 != v67)
      {
        if (v184)
        {
          v7 = v3;
          v128 = MEMORY[0x1D3891EF0](v67, v3);
        }

        else
        {
          if (v67 >= *(v185 + 16))
          {
            goto LABEL_166;
          }

          v7 = v3;
          v128 = *(v3 + 8 * v67 + 32);
        }

        v129 = v128;
        v187 = v128;
        v130 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
        v131 = *(v130 + 104);
        v132 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v133 = v131(&v186, v132, v130);
        MEMORY[0x1EEE9AC00](v133);
        *(&v147 - 2) = v154;
        v6 = sub_1D174A6C4(sub_1D1A8D280, (&v147 - 4), v186);

        if (v6)
        {
          v42 = v67;
          v39 = v178;
          v3 = v7;
          break;
        }

        v65 = __OFADD__(v67++, 1);
        v39 = v178;
        v3 = v7;
        v42 = v2;
        if (v65)
        {
          goto LABEL_168;
        }
      }

      v2 = v175;
      if (v183)
      {
        v134 = sub_1D1E6873C();
      }

      else
      {
        v134 = *(v185 + 16);
      }

      if (v42 == v134)
      {
        goto LABEL_189;
      }

      if (v184)
      {
        goto LABEL_181;
      }

      if (v42 < *(v185 + 16))
      {
        v135 = v181[v42];
        goto LABEL_153;
      }

      __break(1u);
LABEL_183:
      ;
    }
  }

  __break(1u);
LABEL_185:
  (v42)(v184, v6);
  __break(1u);
LABEL_186:
  v144 = *v172;
  v39 = v178;
  (*v172)(v149, v178);

  v144(v156, v39);
  v144(v165, v39);

  v144(v177, v39);
  __break(1u);
LABEL_187:
  (v67)(v156, v6);
  __break(1u);
LABEL_188:
  v145 = *v42;
  (*v42)(v151, v6);

  v145(v155, v6);
  v145(v153, v6);

  v145(v162, v6);
  __break(1u);
LABEL_189:
  v5 = v172;
  v146 = *v172;
  (*v172)(v148, v39);

  v146(v154, v39);
  v146(v151, v39);

  v146(v155, v39);
  __break(1u);
LABEL_190:
  v5(v154, v6);
  __break(1u);
LABEL_191:
  (v67)(v167, v6);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8A054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v83 = a3;
  v5 = sub_1D1E66A7C();
  v103 = *(v5 - 8);
  v6 = *(v103 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v81 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v104 = &v81 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v81 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - v18;
  v20 = *a1;
  v21 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  v22 = *(v21 + 168);
  v23 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v24 = v21;
  v25 = v103;
  v26 = v22(v23, v24);
  v27 = *(v25 + 16);
  v85 = v19;
  v27(v19, a2, v5);
  v94 = v17;
  v91 = v27;
  v92 = v25 + 16;
  v27(v17, a2, v5);
  v84 = v26 >> 62;
  if (v26 >> 62)
  {
LABEL_72:
    v96 = v26 & 0xFFFFFFFFFFFFFF8;
    v95 = sub_1D1E6873C();
  }

  else
  {
    v96 = v26 & 0xFFFFFFFFFFFFFF8;
    v95 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = 0;
  v29 = 0;
  v93 = v26 & 0xC000000000000001;
  v86 = v26;
  v89 = v5;
  v90 = v26 + 32;
  v30 = (v25 + 8);
  v97 = (v25 + 8);
  while (1)
  {
    if (v28 == v95)
    {
      v48 = v95;
      goto LABEL_36;
    }

    v100 = v28;
    if (v93)
    {
      v31 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v28 >= *(v96 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v31 = *(v90 + 8 * v28);
    }

    v32 = v31;
    v33 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
    v25 = *(v33 + 240);
    v34 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v98 = v32;
    v35 = (v25)(v34, v33);
    v36 = v94;
    v37 = v91;
    v26 = v92;
    v91(v101, v94, v5);
    v37(v104, v36, v5);
    v99 = v35 >> 62;
    v103 = v35 & 0xFFFFFFFFFFFFFF8;
    v38 = v35 >> 62 ? sub_1D1E6873C() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = 0;
    v102 = (v35 & 0xC000000000000001);
    v88 = v35 + 32;
    while (v38 != v39)
    {
      if (v102)
      {
        v30 = v35;
        v40 = MEMORY[0x1D3891EF0](v39, v35);
      }

      else
      {
        if (v39 >= *(v103 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v30 = v35;
        v40 = *(v35 + 8 * v39 + 32);
      }

      v41 = v40;
      v106 = v40;
      v5 = 0x1E696CC40uLL;
      v42 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
      v25 = *(v42 + 104);
      v43 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v44 = (v25)(&v105, v43, v42);
      v37 = &v81;
      MEMORY[0x1EEE9AC00](v44);
      *(&v81 - 2) = v104;
      v26 = v105;
      v45 = sub_1D174A6C4(sub_1D1A8D280, (&v81 - 4), v105);

      if (v45)
      {
        v38 = v39;
        v35 = v30;
        break;
      }

      v46 = __OFADD__(v39++, 1);
      v35 = v30;
      if (v46)
      {
        goto LABEL_67;
      }
    }

    if (!v99)
    {
      break;
    }

    if (v38 != sub_1D1E6873C())
    {
      goto LABEL_31;
    }

LABEL_25:
    v30 = v97;
    v47 = *v97;
    v5 = v89;
    (*v97)(v101, v89);

    v47(v104, v5);

    v28 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      goto LABEL_69;
    }
  }

  if (v38 == *(v103 + 16))
  {
    goto LABEL_25;
  }

LABEL_31:
  if (v102)
  {
    goto LABEL_78;
  }

  if (v38 < *(v103 + 16))
  {
    for (i = *(v88 + 8 * v38); ; i = MEMORY[0x1D3891EF0](v38, v35))
    {
      v50 = i;
      v106 = i;
      v51 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
      v52 = *(v51 + 104);
      v53 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v54 = v52(&v105, v53, v51);
      MEMORY[0x1EEE9AC00](v54);
      v25 = v101;
      *(&v81 - 2) = v101;
      v26 = sub_1D174A6C4(sub_1D1A8D280, (&v81 - 4), v105);

      v30 = v97;
      v37 = *v97;
      v5 = v89;
      (*v97)(v25, v89);

      if (!v26)
      {
        goto LABEL_82;
      }

      (v37)(v104, v5);

      v48 = v100;
LABEL_36:
      if (v84)
      {
        if (v48 == sub_1D1E6873C())
        {
LABEL_54:
          v29 = *v30;
          (*v30)(v85, v5);

          v70 = 0;
          goto LABEL_65;
        }
      }

      else if (v48 == *(v96 + 16))
      {
        goto LABEL_54;
      }

      if (v93)
      {
        v55 = MEMORY[0x1D3891EF0](v48, v86);
      }

      else
      {
        if (v48 >= *(v96 + 16))
        {
          __break(1u);
LABEL_76:
          v72 = MEMORY[0x1D3891EF0](v26, v25);
LABEL_63:
          v73 = v72;
          v106 = v72;
          v74 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
          v75 = *(v74 + 104);
          v76 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v77 = v75(&v105, v76, v74);
          MEMORY[0x1EEE9AC00](v77);
          v78 = v82;
          *(&v81 - 2) = v82;
          v37 = v105;
          v70 = sub_1D174A6C4(sub_1D1A8D280, (&v81 - 4), v105);

          v29 = *v30;
          (*v30)(v78, v5);

          if (!v70)
          {
            goto LABEL_81;
          }

          v29(v87, v5);
          v29(v85, v5);

LABEL_65:
          result = (v29)(v94, v5);
          *v83 = v70;
          return result;
        }

        v55 = *(v90 + 8 * v48);
      }

      v56 = v55;
      v38 = 0x1E696CAC8uLL;
      v57 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8);
      v58 = *(v57 + 240);
      v59 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v25 = v58(v59, v57);
      v60 = v85;
      v61 = v91;
      v91(v82, v85, v5);
      v61(v87, v60, v5);
      v101 = (v25 >> 62);
      v102 = v56;
      v104 = (v25 & 0xFFFFFFFFFFFFFF8);
      if (v25 >> 62)
      {
        v26 = sub_1D1E6873C();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = 0;
      v103 = v25 & 0xC000000000000001;
      v100 = v25 + 32;
      v5 = 0x1E696CC40uLL;
      v35 = v26;
      while (v26 != v62)
      {
        if (v103)
        {
          v63 = v25;
          v64 = MEMORY[0x1D3891EF0](v62, v25);
        }

        else
        {
          if (v62 >= *(v104 + 2))
          {
            goto LABEL_70;
          }

          v63 = v25;
          v64 = *(v25 + 8 * v62 + 32);
        }

        v65 = v64;
        v106 = v64;
        v66 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40);
        v38 = *(v66 + 104);
        v67 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v68 = (v38)(&v105, v67, v66);
        MEMORY[0x1EEE9AC00](v68);
        *(&v81 - 2) = v87;
        v69 = sub_1D174A6C4(sub_1D1A8D280, (&v81 - 4), v105);

        if (v69)
        {
          v26 = v62;
          v30 = v97;
          v25 = v63;
          break;
        }

        v46 = __OFADD__(v62++, 1);
        v30 = v97;
        v25 = v63;
        v26 = v35;
        if (v46)
        {
          goto LABEL_71;
        }
      }

      v5 = v89;
      v37 = v102;
      if (v101)
      {
        v71 = sub_1D1E6873C();
      }

      else
      {
        v71 = *(v104 + 2);
      }

      if (v26 == v71)
      {
        goto LABEL_80;
      }

      if (v103)
      {
        goto LABEL_76;
      }

      if (v26 < *(v104 + 2))
      {
        v72 = *(v100 + 8 * v26);
        goto LABEL_63;
      }

      __break(1u);
LABEL_78:
      ;
    }
  }

  __break(1u);
LABEL_80:
  v80 = *v30;
  (*v30)(v82, v5);

  v80(v87, v5);
  v80(v85, v5);

  v80(v94, v5);
  __break(1u);
LABEL_81:
  v29(v87, v5);
  __break(1u);
LABEL_82:
  result = (v37)(v104, v5);
  __break(1u);
  return result;
}

uint64_t HomeState.Stream.room(for:)(void *a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  swift_beginAccess();
  v15 = *(v1 + 64);
  if (v15)
  {
    v16 = [v15 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v17);
    sub_1D1747DDC(&v45);

    v18 = v45;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = (v5 + 16);
  v20 = *(v5 + 16);
  v20(v14, a1, v4);
  v20(v12, a1, v4);
  v42 = v12;
  v38 = v14;
  v39 = v18 >> 62;
  if (v18 >> 62)
  {
LABEL_35:
    v43 = v18 & 0xFFFFFFFFFFFFFF8;
    v41 = sub_1D1E6873C();
  }

  else
  {
    v43 = v18 & 0xFFFFFFFFFFFFFF8;
    v41 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v40 = v18 & 0xC000000000000001;
  v44 = v18;
  v37 = v18 + 4;
  v18 = (v5 + 8);
  v22 = v4;
  while (v41 != v21)
  {
    if (v40)
    {
      v24 = MEMORY[0x1D3891EF0](v21, v44);
    }

    else
    {
      if (v21 >= *(v43 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v24 = v44[v21 + 4];
    }

    a1 = v24;
    v25 = [v24 rooms];
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v19 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v26);
    *(&v36 - 2) = v42;
    v27 = sub_1D174A6C4(sub_1D1A8D280, (&v36 - 4), v19);

    if (v27)
    {

      v4 = v22;
      if (v39)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v21 != *(v43 + 16))
      {
        goto LABEL_21;
      }

LABEL_28:
      v19 = *v18;
      (*v18)(v38, v4);

      v3 = 0;
LABEL_32:
      v19(v42, v4);
      return v3;
    }

    v28 = [a1 roomForEntireHome];
    v19 = [v28 uniqueIdentifier];

    sub_1D1E66A5C();
    v5 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v4 = v22;
    (*v18)(v9, v22);
    if (v5)
    {
      v5 = [a1 roomForEntireHome];

      if (v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (__OFADD__(v21++, 1))
    {
      goto LABEL_34;
    }
  }

  v21 = v41;
LABEL_19:
  if (!v39)
  {
    goto LABEL_20;
  }

LABEL_27:
  if (v21 == sub_1D1E6873C())
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v40)
  {
    v29 = MEMORY[0x1D3891EF0](v21, v44);
  }

  else
  {
    if (v21 >= *(v43 + 16))
    {
      __break(1u);
LABEL_38:
      v19(v42, v4);
      v19(a1, v4);

      __break(1u);
      goto LABEL_39;
    }

    v29 = v37[v21];
  }

  v21 = v29;
  v30 = [v29 rooms];
  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  v31 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v32);
  a1 = v38;
  *(&v36 - 2) = v38;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v36 - 4), v31);

  if (v3)
  {
    v19 = *v18;
    (*v18)(a1, v4);

    goto LABEL_32;
  }

  v3 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v33 = [v21 roomForEntireHome];
  v34 = [v33 uniqueIdentifier];

  sub_1D1E66A5C();
  LOBYTE(v33) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v19 = *v18;
  (*v18)(v9, v4);
  if ((v33 & 1) == 0)
  {
    goto LABEL_38;
  }

  v3 = [v21 roomForEntireHome];
  v19(a1, v4);

  if (v3)
  {

    goto LABEL_32;
  }

LABEL_39:
  v19(v42, v4);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8B334@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v14 = sub_1D1E67C1C();

  v15 = *(v6 + 16);
  v36 = v12;
  v15(v12, a2, v5);
  v40 = v10;
  v38 = v5;
  v15(v10, a2, v5);
  v39 = v14 >> 62;
  v37 = v6;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_26:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v14 & 0xC000000000000001;
  v34 = v14 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v14);
    }

    else
    {
      if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v20 = *(v14 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v15);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_25;
    }
  }

  if (!v39)
  {
    if (v17 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:
    v15 = *(v37 + 8);
    v16 = v38;
    (v15)(v36, v38);
    v32 = 0;
LABEL_23:

    result = (v15)(v40, v16);
    *v35 = v32;
    return result;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v14);
  }

  else
  {
    if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v26 = *(v34 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v32 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v16 = v38;
  v15 = *(v37 + 8);
  (v15)(v31, v38);

  if (v32)
  {
    goto LABEL_23;
  }

LABEL_29:
  result = (v15)(v40, v16);
  __break(1u);
  return result;
}

uint64_t HomeState.Stream.serviceGroup(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v13);
    sub_1D1747DDC(&v42);

    v14 = v42;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v39 = v4;
  v16(v41, a1, v4);
  v40 = v14 >> 62;
  v37 = v10;
  v38 = v5;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_29:
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v36 = v14 + 32;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1D3891EF0](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v14 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v41;
    v25 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v15);

    if (v25)
    {
      v18 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v40)
  {
    if (v18 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = *(v38 + 8);
    v17 = v39;
    v15(v37, v39);
    v3 = 0;
LABEL_26:

    v15(v41, v17);
    return v3;
  }

  if (v18 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v20)
  {
    v27 = MEMORY[0x1D3891EF0](v18, v14);
  }

  else
  {
    if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v36 + 8 * v18);
  }

  v28 = v27;
  v29 = [v27 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  v15 = *(v38 + 8);
  v33 = v32;
  v17 = v39;
  v15(v33, v39);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v15(v41, v17);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t HomeState.Stream.mediaSystem(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v13);
    sub_1D1747DDC(&v42);

    v14 = v42;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v39 = v4;
  v16(v41, a1, v4);
  v40 = v14 >> 62;
  v37 = v10;
  v38 = v5;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_29:
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v36 = v14 + 32;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1D3891EF0](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v14 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v41;
    v25 = sub_1D174A6C4(sub_1D1A8D1DC, (&v35 - 4), v15);

    if (v25)
    {
      v18 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v40)
  {
    if (v18 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = *(v38 + 8);
    v17 = v39;
    v15(v37, v39);
    v3 = 0;
LABEL_26:

    v15(v41, v17);
    return v3;
  }

  if (v18 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v20)
  {
    v27 = MEMORY[0x1D3891EF0](v18, v14);
  }

  else
  {
    if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v36 + 8 * v18);
  }

  v28 = v27;
  v29 = [v27 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  v15 = *(v38 + 8);
  v33 = v32;
  v17 = v39;
  v15(v33, v39);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v15(v41, v17);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t HomeState.Stream.user(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v13);
    sub_1D1747DDC(&v45);

    v14 = v45;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v39 = v5;
  v15 = *(v5 + 16);
  v15(v10, a1, v4);
  v40 = v4;
  v15(v44, a1, v4);
  v41 = v14 >> 62;
  v42 = v10;
  if (v14 >> 62)
  {
LABEL_29:
    v16 = sub_1D1E6873C();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = v14 & 0xC000000000000001;
  v38 = v14 + 32;
  v43 = xmmword_1D1E73FA0;
  while (v16 != v17)
  {
    if (v18)
    {
      v19 = MEMORY[0x1D3891EF0](v17, v14);
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v19 = *(v14 + 8 * v17 + 32);
    }

    v15 = v19;
    v20 = [v19 users];
    sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
    v21 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    *(inited + 32) = [v15 currentUser];
    v45 = v21;
    v23 = sub_1D17A3D50(inited);
    v24 = v45;
    MEMORY[0x1EEE9AC00](v23);
    *(&v37 - 2) = v44;
    v25 = sub_1D174A6C4(sub_1D1A8D280, (&v37 - 4), v24);

    if (v25)
    {
      v16 = v17;
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_28;
    }
  }

  v27 = v42;
  if (!v41)
  {
    if (v16 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v3 = *(v39 + 8);
    v15 = v40;
    v3(v27, v40);
    v35 = 0;
LABEL_26:

    v3(v44, v15);
    return v35;
  }

  if (v16 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v18)
  {
    v28 = MEMORY[0x1D3891EF0](v16, v14);
  }

  else
  {
    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v28 = *(v38 + 8 * v16);
  }

  v29 = v28;
  v30 = [v28 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v31 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v32 = swift_initStackObject();
  *(v32 + 16) = v43;
  *(v32 + 32) = [v29 currentUser];
  v45 = v31;
  v33 = sub_1D17A3D50(v32);
  v34 = v45;
  MEMORY[0x1EEE9AC00](v33);
  *(&v37 - 2) = v27;
  v35 = sub_1D174A6C4(sub_1D1A8D280, (&v37 - 4), v34);

  v3 = *(v39 + 8);
  v15 = v40;
  v3(v27, v40);

  if (v35)
  {
    goto LABEL_26;
  }

LABEL_32:
  v3(v44, v15);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t HomeState.Stream.resident(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v13);
    sub_1D1747DDC(&v42);

    v14 = v42;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v39 = v4;
  v16(v41, a1, v4);
  v40 = v14 >> 62;
  v37 = v10;
  v38 = v5;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_29:
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v36 = v14 + 32;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1D3891EF0](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v14 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v41;
    v25 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v15);

    if (v25)
    {
      v18 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v40)
  {
    if (v18 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = *(v38 + 8);
    v17 = v39;
    v15(v37, v39);
    v3 = 0;
LABEL_26:

    v15(v41, v17);
    return v3;
  }

  if (v18 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v20)
  {
    v27 = MEMORY[0x1D3891EF0](v18, v14);
  }

  else
  {
    if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v36 + 8 * v18);
  }

  v28 = v27;
  v29 = [v27 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  v15 = *(v38 + 8);
  v33 = v32;
  v17 = v39;
  v15(v33, v39);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v15(v41, v17);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8CA54(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t HomeState.Stream.matterDevice(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v13 = sub_1D1749970(v7);
    sub_1D1747DDC(&v13);

    v8 = v13;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v12[2] = a2;
  v9 = sub_1D174A6C4(sub_1D1A8D280, v12, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = HMHome.device(for:)(a1);

  return v10;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC11accessories3for2inSaySo11HMAccessoryCGAA11ServiceKindO_So6HMHomeCtF_0(char *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v4 = sub_1D1E67C1C();

  v15 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v2;
      v10 = HMAccessory.subscript.getter(&v14);
      if (v10)
      {

        sub_1D1E6896C();
        v11 = *(v15 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v12 = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v12;
}

unint64_t sub_1D1A8CE80(unint64_t isUniquelyReferenced_nonNull_bridgeObject, char a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v28 = v2;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v3, v27);
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v30 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v35[0] = a2;
      v7 = _s13HomeDataModel0A5StateV6StreamC11accessories3for2inSaySo11HMAccessoryCGAA11ServiceKindO_So6HMHomeCtF_0(v35, isUniquelyReferenced_nonNull_bridgeObject);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_1D1E6873C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_1D1E6873C();
          goto LABEL_22;
        }

        v12 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        v17 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v12 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v36)
          {
            goto LABEL_44;
          }

          v34 = v4;
          v18 = v12 + 8 * v14 + 32;
          v29 = v12;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_1D1A8D1FC();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646108, &qword_1D1E7E668);
              v20 = sub_1D1790D5C(v35, i, v7);
              v22 = *v21;
              (v20)(v35, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
            swift_arrayInitWithCopy();
          }

          v2 = v28;
          v4 = v34;
          if (v36 >= 1)
          {
            v23 = *(v29 + 16);
            v6 = __OFADD__(v23, v36);
            v24 = v23 + v36;
            if (v6)
            {
              goto LABEL_45;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v36 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1A8D1FC()
{
  result = qword_1EC646110;
  if (!qword_1EC646110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646108, &qword_1D1E7E668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646110);
  }

  return result;
}

uint64_t sub_1D1A8D2B8(uint64_t a1)
{
  v45 = sub_1D1E66A7C();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v34[1] = v1;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D178D3D8(0, v10, 0);
  v11 = v49;
  v12 = a1 + 64;
  v13 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v15 = result;
  v16 = 0;
  v41 = v3 + 16;
  v42 = v3;
  v39 = v9;
  v40 = v3 + 8;
  v35 = a1 + 72;
  v36 = v10;
  v37 = a1 + 64;
  v38 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v46 = v16;
    v47 = *(a1 + 36);
    v48 = v15 >> 6;
    v19 = v42;
    v20 = *(a1 + 48) + *(v42 + 72) * v15;
    v21 = *(v42 + 16);
    v22 = v44;
    v23 = v45;
    v21(v44, v20, v45);
    v21(v9, v22, v23);
    (*(v19 + 8))(v22, v23);
    v49 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D178D3D8(v24 > 1, v25 + 1, 1);
      v11 = v49;
    }

    *(v11 + 16) = v25 + 1;
    v26 = v11 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25;
    v9 = v39;
    result = sub_1D1AA4538(v39, v26, type metadata accessor for WriteInProgressStatusViewModel.ID);
    a1 = v38;
    v17 = 1 << *(v38 + 32);
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    v12 = v37;
    v27 = *(v37 + 8 * v48);
    if ((v27 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v15 & 0x3F));
    if (v28)
    {
      v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v36;
    }

    else
    {
      v29 = v48 << 6;
      v30 = v48 + 1;
      v18 = v36;
      v31 = (v35 + 8 * v48);
      while (v30 < (v17 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1D1716920(v15, v47, 0);
          v17 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v15, v47, 0);
    }

LABEL_4:
    v16 = v46 + 1;
    v15 = v17;
    if (v46 + 1 == v18)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D1A8D678(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v32 = v3;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v4, v31);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        break;
      }

      v9 = [isUniquelyReferenced_nonNull_bridgeObject services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v10 = sub_1D1E67C1C();

      v11 = v2;
      v12 = sub_1D1A8DA3C(v10);

      v13 = v12 >> 62;
      v36 = v8;
      if (v12 >> 62)
      {
        v14 = sub_1D1E6873C();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v15)
        {
          goto LABEL_21;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v15)
        {
LABEL_21:
          sub_1D1E6873C();
          goto LABEL_22;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v38 = v5;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v13)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v20 >> 1) - v19) < v14)
          {
            goto LABEL_44;
          }

          v22 = v17 + 8 * v19 + 32;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_46;
            }

            sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60);
            for (i = 0; i != v21; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
              v24 = sub_1D1790CDC(v37, i, v12);
              v26 = *v25;
              (v24)(v37, 0);
              *(v22 + 8 * i) = v26;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
            swift_arrayInitWithCopy();
          }

          v2 = v11;
          v3 = v32;
          v5 = v38;
          if (v14 >= 1)
          {
            v27 = *(v17 + 16);
            v7 = __OFADD__(v27, v14);
            v28 = v27 + v14;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v17 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      v5 = v38;
      if (v14 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v4 = v36;
      if (v36 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1A8DA3C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_1D1A93EB8(&v40, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_1D1E6873C();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_1D1E6873C();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_1D1E6873C();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v37)
        {
          goto LABEL_46;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
            v22 = sub_1D1790CDC(v38, j, v9);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v37 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v37);
          v26 = v25 + v37;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D1A8DDCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 457) = a7;
  *(v8 + 192) = a6;
  *(v8 + 200) = v7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  *(v8 + 456) = a3;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C98, &qword_1D1E96138);
  *(v8 + 208) = v9;
  v10 = *(v9 - 8);
  *(v8 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  *(v8 + 232) = v12;
  v13 = *(v12 - 8);
  *(v8 + 240) = v13;
  *(v8 + 248) = *(v13 + 64);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  *(v8 + 280) = v14;
  v15 = *(v14 - 8);
  *(v8 + 288) = v15;
  *(v8 + 296) = *(v15 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v16 = sub_1D1E66A7C();
  *(v8 + 320) = v16;
  v17 = *(v16 - 8);
  *(v8 + 328) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120) - 8) + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v22 = type metadata accessor for StateSnapshot(0);
  *(v8 + 408) = v22;
  v23 = *(v22 - 8);
  *(v8 + 416) = v23;
  *(v8 + 424) = *(v23 + 64);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A8E15C, v7, 0);
}

uint64_t sub_1D1A8E15C()
{
  if (*(*(v0 + 168) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 448) = v1;
    *v1 = v0;
    v1[1] = sub_1D1A8E378;
    v2 = *(v0 + 400);
    v3 = *(v0 + 200);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = *(v0 + 456);
    v7 = *(v0 + 168);

    return sub_1D1A9DA48(v2, v7, v6, v4, v5);
  }

  else
  {
    v9 = *(v0 + 160);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
    v22 = *(v0 + 336);
    v23 = *(v0 + 312);
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v26 = *(v0 + 264);
    v27 = *(v0 + 256);
    v28 = *(v0 + 224);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D1A8E378()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A8E488, v2, 0);
}

uint64_t sub_1D1A8E488()
{
  v221 = v0;
  v2 = *(v0 + 400);
  if ((*(*(v0 + 416) + 48))(v2, 1, *(v0 + 408)) == 1)
  {
    v3 = *(v0 + 160);
    sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v5 = *(v0 + 456);
  sub_1D1AA4538(v2, *(v0 + 440), type metadata accessor for StateSnapshot);
  v198 = v0;
  if (v5)
  {
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 424);
    v9 = *(v0 + 416);
    v10 = *(v0 + 392);
    v11 = *(v0 + 160);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    v13 = *(v12 + 48);
    sub_1D1AA43E0(v6, v11, type metadata accessor for StateSnapshot);
    v14 = sub_1D1E67E7C();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_1D1AA43E0(v6, v7, type metadata accessor for StateSnapshot);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_1D1AA4538(v7, v16 + v15, type metadata accessor for StateSnapshot);
    v17 = sub_1D1B02614(0, 0, v10, &unk_1D1E96170, v16);
    sub_1D1AA3F34(v6, type metadata accessor for StateSnapshot);
    *(v11 + v13) = v17;
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    goto LABEL_5;
  }

  v30 = *(v0 + 200);
  v165 = *(v30 + 128);
  if (v165 == -1)
  {
    goto LABEL_105;
  }

  v31 = *(v0 + 328);
  v32 = *(v0 + 168);
  v168 = *(v0 + 200);
  *(v30 + 128) = v165 + 1;
  v157 = v32 + 64;
  v158 = v32;
  v33 = -1 << *(v32 + 32);
  if (-v33 < 64)
  {
    v34 = ~(-1 << -v33);
  }

  else
  {
    v34 = -1;
  }

  v2 = (v34 & *(v32 + 64));
  v156 = (63 - v33) >> 6;
  v177 = (v31 + 16);
  v161 = (v31 + 32);
  v163 = v31;
  v35 = (v31 + 8);

  v36 = 0;
  v173 = v35;
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_13:
  v37 = v2;
  v1 = v36;
LABEL_20:
  v39 = *(v0 + 368);
  v40 = *(v0 + 376);
  v41 = *(v0 + 320);
  v160 = (v37 - 1) & v37;
  v42 = __clz(__rbit64(v37)) | (v1 << 6);
  (*(v163 + 16))(v39, *(v158 + 48) + *(v163 + 72) * v42, v41);
  v43 = *(*(v158 + 56) + 8 * v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v45 = *(v44 + 48);
  (*(v163 + 32))(v40, v39, v41);
  *(v40 + v45) = v43;
  (*(*(v44 - 8) + 56))(v40, 0, 1, v44);

  v159 = v1;
  v35 = v173;
  while (1)
  {
    v46 = *(v0 + 384);
    sub_1D1741A90(*(v0 + 376), v46, &qword_1EC649C90, &qword_1D1E96120);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      goto LABEL_96;
    }

    v48 = *(v0 + 320);
    v49 = *(*(v0 + 384) + *(v47 + 48));
    (*v161)(*(v0 + 360));
    v50 = 0;
    v51 = v49 + 64;
    v166 = v49;
    v52 = -1 << *(v49 + 32);
    if (-v52 < 64)
    {
      v53 = ~(-1 << -v52);
    }

    else
    {
      v53 = -1;
    }

    v54 = v53 & *(v49 + 64);
    v55 = (63 - v52) >> 6;
    v170 = v55;
    v172 = v49 + 64;
LABEL_28:
    if (v54)
    {
      v59 = v50;
      goto LABEL_38;
    }

    v60 = v55 <= v50 + 1 ? v50 + 1 : v55;
    v61 = v60 - 1;
    do
    {
      v59 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_96:
        v113 = *(v0 + 312);
        v114 = *(v0 + 272);
        v191 = *(v0 + 264);
        v205 = *(v0 + 256);
        v182 = *(v0 + 248);
        v116 = *(v0 + 232);
        v115 = *(v0 + 240);
        v117 = *(v0 + 216);
        v118 = *(v0 + 224);
        v119 = *(v0 + 208);
        v201 = *(v0 + 457);
        v196 = *(v0 + 184);
        v209 = *(v0 + 168);
        v213 = *(v0 + 176);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643340, &qword_1D1E717A0);
        (*(v117 + 104))(v118, *MEMORY[0x1E69E8790], v119);
        sub_1D1E6804C();
        (*(v117 + 8))(v118, v119);
        v120 = swift_allocObject();
        *(v120 + 16) = 0;
        v121 = *(v115 + 16);
        v122 = v116;
        v121(v191, v114, v116);
        v123 = *(v115 + 80);
        v124 = (v123 + 24) & ~v123;
        v125 = swift_allocObject();
        *(v125 + 16) = v120;
        v126 = *(v115 + 32);
        v126(v125 + v124, v191, v122);
        v192 = v121;
        v121(v205, v114, v122);
        v183 = v123;
        v127 = swift_allocObject();
        *(v127 + 16) = v120;
        v187 = v126;
        v126(v127 + v124, v205, v122);
        v128 = v213;
        v214 = v120;
        v215 = v209;
        v216 = 0;
        v217 = v128;
        *&v218 = sub_1D1AA3F94;
        *(&v218 + 1) = v125;
        v219 = sub_1D1AA407C;
        v220 = v127;
        v0 = v198;
        swift_retain_n();
        HMHome.perform(batchWriteRequest:handlers:)(&v215, &v218);
        if ((v201 & 1) == 0)
        {
          v129 = v198[49];
          v131 = v198[33];
          v130 = v198[34];
          v132 = v198[31];
          v133 = v198[29];
          v134 = v198[24];
          v135 = sub_1D1E67E7C();
          (*(*(v135 - 8) + 56))(v129, 1, 1, v135);
          v192(v131, v130, v133);
          v136 = swift_allocObject();
          *(v136 + 2) = 0;
          *(v136 + 3) = 0;
          *(v136 + 4) = v134;
          *(v136 + 5) = v214;
          v187(&v136[(v183 + 48) & ~v183], v131, v133);

          sub_1D1B1DFC0(0, 0, v129, &unk_1D1E96168, v136);

          sub_1D1741A30(v129, &unk_1EC6442C0, &qword_1D1E741A0);
        }

        v202 = v198[55];
        v137 = v198[49];
        v167 = v137;
        v139 = v198[38];
        v138 = v198[39];
        v140 = v198[36];
        v174 = v198[37];
        v141 = v198[35];
        v162 = v141;
        v164 = v139;
        v188 = v198[29];
        v193 = v198[34];
        v142 = v198[25];
        v180 = v198[23];
        v184 = v198[30];
        v176 = v198[21];
        v178 = v198[22];
        v197 = v198[20];
        *&v218 = 0;
        *(&v218 + 1) = 0xE000000000000000;
        sub_1D1E6884C();

        *&v218 = 0xD000000000000029;
        *(&v218 + 1) = 0x80000001D1EC3E50;
        v198[19] = v165;
        v143 = sub_1D1E68FAC();
        MEMORY[0x1D3890F70](v143);

        v169 = *(&v218 + 1);
        v171 = v218;
        v144 = sub_1D1E67E7C();
        (*(*(v144 - 8) + 56))(v137, 1, 1, v144);
        (*(v140 + 16))(v139, v138, v141);
        v145 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
        v146 = (*(v140 + 80) + 32) & ~*(v140 + 80);
        v147 = (v174 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
        v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
        v149 = (v148 + 15) & 0xFFFFFFFFFFFFFFF8;
        v150 = swift_allocObject();
        *(v150 + 16) = v142;
        *(v150 + 24) = v145;
        (*(v140 + 32))(v150 + v146, v164, v162);
        *(v150 + v147) = v165;
        *(v150 + v148) = v142;
        v151 = v150 + v149;
        *v151 = v176;
        *(v151 + 8) = 0;
        *(v151 + 16) = v178;
        *(v150 + ((v149 + 31) & 0xFFFFFFFFFFFFFFF8)) = v180;
        swift_retain_n();

        v152 = v180;
        v153 = sub_1D1B02614(v171, v169, v167, &unk_1D1E96158, v150);

        (*(v184 + 8))(v193, v188);
        (*(v140 + 8))(v138, v162);
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
        v155 = *(v154 + 48);
        sub_1D1AA4538(v202, v197, type metadata accessor for StateSnapshot);
        *(v197 + v155) = v153;
        (*(*(v154 - 8) + 56))(v197, 0, 1, v154);

LABEL_5:
        v19 = *(v0 + 432);
        v18 = *(v0 + 440);
        v21 = *(v0 + 392);
        v20 = *(v0 + 400);
        v23 = *(v0 + 376);
        v22 = *(v0 + 384);
        v24 = *(v0 + 360);
        v25 = *(v0 + 368);
        v27 = *(v0 + 344);
        v26 = *(v0 + 352);
        v185 = *(v0 + 336);
        v189 = *(v0 + 312);
        v194 = *(v0 + 304);
        v199 = *(v0 + 272);
        v203 = *(v0 + 264);
        v206 = *(v0 + 256);
        v210 = *(v0 + 224);

        v28 = *(v0 + 8);

        return v28();
      }

      if (v59 >= v55)
      {
        v186 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v50 = v61;
        *(v0 + 56) = 0u;
        goto LABEL_39;
      }

      v54 = *(v51 + 8 * v59);
      ++v50;
    }

    while (!v54);
    v50 = v59;
LABEL_38:
    v186 = (v54 - 1) & v54;
    v62 = __clz(__rbit64(v54)) | (v59 << 6);
    v63 = *(*(v166 + 48) + v62);
    sub_1D1741970(*(v166 + 56) + 32 * v62, v0 + 96);
    *(v0 + 56) = v63;
    sub_1D1742194((v0 + 96), (v0 + 64));
LABEL_39:
    *(v0 + 48) = *(v0 + 88);
    v64 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v64;
    v65 = *(v0 + 360);
    if (*(v0 + 48))
    {
      break;
    }

    (*v35)(*(v0 + 360), *(v0 + 320));

    v36 = v159;
    v2 = v160;
    if (v160)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v156 <= v36 + 1)
    {
      v38 = v36 + 1;
    }

    else
    {
      v38 = v156;
    }

    while (1)
    {
      v1 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_103;
      }

      if (v1 >= v156)
      {
        break;
      }

      v37 = *(v157 + 8 * v1);
      ++v36;
      if (v37)
      {
        goto LABEL_20;
      }
    }

    v159 = v38 - 1;
    v110 = *(v0 + 376);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    (*(*(v111 - 8) + 56))(v110, 1, 1, v111);
    v160 = 0;
  }

  v179 = v50;
  v207 = *(v0 + 352);
  v211 = *(v0 + 344);
  v66 = *(v0 + 320);
  v67 = *(v0 + 184);
  v68 = *(v0 + 16);
  v69 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  v70 = *(v69 + 168);
  v71 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v72 = v70(v71, v69);
  v2 = v177;
  v73 = *v177;
  (*v177)(v207, v65, v66);
  v73(v211, v65, v66);
  v175 = v73;
  v181 = v72 >> 62;
  v1 = v72 & 0xFFFFFFFFFFFFFF8;
  if (v72 >> 62)
  {
    v200 = sub_1D1E6873C();
  }

  else
  {
    v200 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = 0;
  v204 = v72 + 32;
  v208 = v72 & 0xC000000000000001;
  v0 = v198;
  v190 = v72 & 0xFFFFFFFFFFFFFF8;
  v195 = v72;
  while (1)
  {
    if (v74 == v200)
    {
      v74 = v200;
      if (!v181)
      {
        goto LABEL_65;
      }

LABEL_69:
      if (v74 == sub_1D1E6873C())
      {
        goto LABEL_26;
      }

LABEL_70:
      if (v208)
      {
        v86 = MEMORY[0x1D3891EF0](v74, v72);
      }

      else
      {
        if (v74 >= *(v1 + 16))
        {
          goto LABEL_101;
        }

        v86 = *(v204 + 8 * v74);
      }

      v87 = v86;
      v88 = *(v0 + 352);
      v89 = *(v0 + 320);
      v90 = sub_1D1A8F820(v86, v88, v68);
      v35 = v173;
      v1 = *v173;
      (*v173)(v88, v89);

      v2 = *(v0 + 344);
      if (!v90)
      {
        goto LABEL_106;
      }

      v91 = *(v0 + 336);
      v92 = *(v0 + 320);

      (v1)(v2, v92);
      v93 = [v90 uniqueIdentifier];
      sub_1D1E66A5C();

      swift_beginAccess();
      v94 = *(v168 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v218 = *(v168 + 136);
      v2 = v218;
      *(v168 + 136) = 0x8000000000000000;
      v96 = sub_1D1742188(v91);
      v98 = v2[2];
      v99 = (v97 & 1) == 0;
      v75 = __OFADD__(v98, v99);
      v100 = v98 + v99;
      if (v75)
      {
        goto LABEL_102;
      }

      v101 = v97;
      if (v2[3] >= v100)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v109 = v96;
          sub_1D1739E3C();
          v96 = v109;
          v2 = v218;
        }
      }

      else
      {
        v102 = v198[42];
        sub_1D172A2D0(v100, isUniquelyReferenced_nonNull_native);
        v2 = v218;
        v96 = sub_1D1742188(v102);
        if ((v101 & 1) != (v103 & 1))
        {
LABEL_92:
          v112 = v198[40];

          return sub_1D1E690FC();
        }
      }

      v104 = v198[42];
      v105 = v198[40];
      if (v101)
      {
        *(v2[7] + 8 * v96) = v165;
        (v1)(v104, v105);
      }

      else
      {
        v2[(v96 >> 6) + 8] |= 1 << v96;
        v0 = v96;
        v175(v2[6] + *(v163 + 72) * v96, v104, v105);
        *(v2[7] + 8 * v0) = v165;
        (v1)(v104, v105);
        v106 = v2[2];
        v75 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v75)
        {
          goto LABEL_104;
        }

        v2[2] = v107;
      }

      v108 = *(v168 + 136);
      *(v168 + 136) = v2;

      v0 = v198;
      swift_endAccess();

      goto LABEL_27;
    }

    if (!v208)
    {
      break;
    }

    v76 = MEMORY[0x1D3891EF0](v74, v72);
LABEL_49:
    v77 = *(v0 + 344);
    v212 = v76;
    v78 = [v76 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v79 = sub_1D1E67C1C();

    v2 = swift_task_alloc();
    v2[2] = v77;
    v80 = sub_1D174A6C4(sub_1D1AA43C0, v2, v79);

    if (v80)
    {
      v2 = [v80 characteristics];
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      v81 = sub_1D1E67C1C();

      if (v81 >> 62)
      {
        v82 = sub_1D1E6873C();
        if (v82)
        {
LABEL_52:
          v83 = 0;
          while (1)
          {
            if ((v81 & 0xC000000000000001) != 0)
            {
              v84 = MEMORY[0x1D3891EF0](v83, v81);
            }

            else
            {
              if (v83 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v84 = *(v81 + 8 * v83 + 32);
            }

            v2 = v84;
            v85 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            if (sub_1D1A8FA9C(v84))
            {
              break;
            }

            ++v83;
            if (v85 == v82)
            {
              v72 = v195;
              v0 = v198;
              v1 = v190;
              goto LABEL_43;
            }
          }

          v72 = v195;
          v0 = v198;
          v1 = v190;
          if (v181)
          {
            goto LABEL_69;
          }

LABEL_65:
          if (v74 != *(v1 + 16))
          {
            goto LABEL_70;
          }

LABEL_26:
          v56 = *(v0 + 344);
          v57 = *(v0 + 320);
          v35 = v173;
          v58 = *v173;
          (*v173)(*(v0 + 352), v57);

          v58(v56, v57);
LABEL_27:
          v55 = v170;
          v51 = v172;
          v50 = v179;
          __swift_destroy_boxed_opaque_existential_1((v0 + 24));
          v54 = v186;
          goto LABEL_28;
        }
      }

      else
      {
        v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v82)
        {
          goto LABEL_52;
        }
      }

LABEL_43:
    }

    v75 = __OFADD__(v74++, 1);
    if (v75)
    {
      goto LABEL_100;
    }
  }

  if (v74 < *(v1 + 16))
  {
    v76 = *(v204 + 8 * v74);
    goto LABEL_49;
  }

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
  result = (v1)(v2, *(v0 + 320));
  __break(1u);
  return result;
}

void *sub_1D1A8F820(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v5 = sub_1D1E67C1C();

  v28 = a2;
  v6 = sub_1D174A6C4(sub_1D1AA5568, v27, v5);

  if (v6)
  {
    v7 = [v6 characteristics];
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v8 = sub_1D1E67C1C();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D3891EF0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 characteristicType];
        v15 = sub_1D1E6781C();
        v17 = v16;

        v18._countAndFlagsBits = v15;
        v18._object = v17;
        CharacteristicKind.init(rawValue:)(v18);
        v19 = v30;
        if (v30 == 174)
        {
          v19 = 0;
        }

        v30 = v19;
        v29 = a3;
        v20 = CharacteristicKind.rawValue.getter();
        v22 = v21;
        if (v20 == CharacteristicKind.rawValue.getter() && v22 == v23)
        {

LABEL_18:

          return v12;
        }

        v24 = sub_1D1E6904C();

        if (v24)
        {
          goto LABEL_18;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_1D1A8FA9C(void *a1)
{
  v1 = [a1 characteristicType];
  v2 = sub_1D1E6781C();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  CharacteristicKind.init(rawValue:)(v5);
  v6 = CharacteristicKind.rawValue.getter();
  v8 = v7;
  if (v6 == CharacteristicKind.rawValue.getter() && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D1E6904C();
  }

  return v10 & 1;
}

uint64_t HomeState.Stream.fetchAllCharacteristics(in:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[8] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A8FC20, v3, 0);
}

uint64_t sub_1D1A8FC20()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[6];
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D1E73FA0;
      *(v4 + 32) = v3;
      v5 = v2;
    }

    else
    {
      v9 = [v2 homes];
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      v4 = sub_1D1E67C1C();
    }

    v0[10] = v4;
    v11 = v0[7];
    v10 = v0[8];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
    v13 = sub_1D1AA3AF8(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = v11;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
    v16 = *(MEMORY[0x1E69E87D8] + 4);
    v17 = v3;
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1D1A8FE88;

    return MEMORY[0x1EEE6DBF8](v0 + 5, v12, v15, v10, v13, &unk_1D1E96098, v14, v12);
  }

  else
  {
    v6 = sub_1D18DAA38(MEMORY[0x1E69E7CC0]);
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1D1A8FE88()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A8FFD8, v4, 0);
}

uint64_t sub_1D1A8FFD8()
{
  v7 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = *(v0[7] + 24);
  v6 = 7;
  sub_1D1AFCA44(&v6);

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1D1A90060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v4[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A90138, v6, 0);
}

void sub_1D1A90138()
{
  v22 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = v0[4];
    }

    v2 = sub_1D1E6873C();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v19 = v0[4] + 32;
  v20 = v1 & 0xC000000000000001;
  do
  {
    if (v20)
    {
      v4 = MEMORY[0x1D3891EF0](v3, v0[4]);
    }

    else
    {
      v4 = *(v19 + 8 * v3);
    }

    v5 = v4;
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    ++v3;
    v9 = [v4 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v10 = sub_1D1E67C1C();

    v11 = sub_1D1A8D678(v10);

    v12 = sub_1D1E67E7C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v7;
    v13[5] = v11;
    v13[6] = v5;

    sub_1D1DE29CC(v6, &unk_1D1E96238, v13);
    sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  while (v2 != v3);
LABEL_12:
  v15 = v0[3];
  v16 = *(v0[5] + 24);
  v21[0] = 6;
  sub_1D1AFCA44(v21);
  v17 = *v15;
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_1D1A903AC;

  sub_1D17C2F64(v17);
}

void sub_1D1A903AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
  }

  else
  {
    v6 = v3[7];

    MEMORY[0x1EEE6DFA0](sub_1D1AA5590, v6, 0);
  }
}

uint64_t sub_1D1A904E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A90648, 0, 0);
}

uint64_t sub_1D1A90648()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A9066C, v1, 0);
}

uint64_t sub_1D1A9066C()
{
  v62 = v0;
  v1 = v0[10];
  v61 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = v0[21];
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v53 = v0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v0 = (v0[10] + 32);
    v58 = v2;
    v60 = v3;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v56 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1D3891EF0](v4, v53[10]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_34;
        }

        v8 = v0[v4];
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v2 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v11 = *(v3 + 120);
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = *(v3 + 120);
        }

        v13 = *(v3 + 120);

        v1 = v9;
        v14 = sub_1D1E6878C();

        if (v14)
        {

          goto LABEL_7;
        }
      }

      else if (*(v11 + 16))
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v15 = *(v11 + 40);

        v16 = sub_1D1E684EC();
        v17 = -1 << *(v11 + 32);
        v18 = v16 & ~v17;
        if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = *(*(v11 + 48) + 8 * v18);
            v1 = sub_1D1E684FC();

            if (v1)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v2 = v58;
          v3 = v60;
          v6 = v55;
          v5 = v56;
          goto LABEL_7;
        }

LABEL_5:

        v2 = v58;
        v3 = v60;
        v6 = v55;
        v5 = v56;
      }

      sub_1D1E6896C();
      v7 = *(v61 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      v1 = &v61;
      sub_1D1E6897C();
LABEL_7:
      if (v4 == v2)
      {
        v21 = v61;
        v0 = v53;
        goto LABEL_27;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_27:
  swift_beginAccess();

  sub_1D19519A4(v22);
  swift_endAccess();

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_30;
    }
  }

  else if (*(v21 + 16))
  {
LABEL_30:
    v23 = v0[21];
    v24 = v0[16];
    v25 = v0[17];
    v26 = v0;
    v29 = v0 + 14;
    v27 = v0[14];
    v28 = v29[1];
    v30 = v26[12];
    v31 = v26[13];
    v51 = v31;
    v52 = v24;
    v32 = v26[11];
    v54 = v26[10];

    sub_1D1A97360(v33, v25);

    v59 = sub_1D1E67E7C();
    v57 = *(*(v59 - 8) + 56);
    v57(v30, 1, 1, v59);
    (*(v27 + 16))(v24, v25, v31);
    v34 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
    v35 = (*(v27 + 80) + 56) & ~*(v27 + 80);
    v36 = (v28 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 2) = v23;
    *(v37 + 3) = v34;
    *(v37 + 4) = 3;
    *(v37 + 5) = v54;
    *(v37 + 6) = v23;
    (*(v27 + 32))(&v37[v35], v52, v51);
    *&v37[v36] = v32;
    *&v37[(v36 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;
    swift_retain_n();

    v38 = v32;
    v39 = sub_1D1B02614(0, 0, v30, &unk_1D1E96240, v37);
    v26[22] = v39;
    v57(v30, 1, 1, v59);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v39;

    v41 = sub_1D1B02614(0, 0, v30, &unk_1D1E96248, v40);
    v26[23] = v41;
    v42 = *(MEMORY[0x1E69E86A8] + 4);
    v43 = swift_task_alloc();
    v26[24] = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v43 = v26;
    v43[1] = sub_1D1A90C60;
    v46 = v26[18];
    v45 = v26[19];
    v47 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v45, v41, v46, v44, v47);
  }

  v48 = v0[20];

  v49 = type metadata accessor for StateSnapshot(0);
  (*(*(v49 - 8) + 56))(v48, 1, 1, v49);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5560, 0, 0);
}

uint64_t sub_1D1A90C60()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = v0;

  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_1D1A90E60;
  }

  else
  {
    v7 = sub_1D1A90DA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1A90DA8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];

  (*(v6 + 8))(v4, v5);
  sub_1D1741A90(v2, v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5560, 0, 0);
}

uint64_t sub_1D1A90E60()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5564, 0, 0);
}

uint64_t sub_1D1A90EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 152) = a6;
  *(v7 + 160) = v6;
  *(v7 + 264) = a5;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v7 + 168) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  *(v7 + 192) = v11;
  v12 = *(v11 - 8);
  *(v7 + 200) = v12;
  *(v7 + 208) = *(v12 + 64);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A91050, v6, 0);
}

uint64_t sub_1D1A91050()
{
  v1 = v0[16];
  v76 = MEMORY[0x1E69E7CC0];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    v1 = v0[2];
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = v0[20];
  v68 = v9;
  v10 = (v3 + 64) >> 6;
  v72 = v1;
  v73 = v0;
  v70 = v2;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_18:
  while (2)
  {
    v17 = sub_1D1E6877C();
    if (v17)
    {
      v0[14] = v17;
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      swift_dynamicCast();
      v16 = v0[13];
      v14 = v4;
      v15 = v5;
      if (v16)
      {
        while (1)
        {
          v74 = v15;
          swift_beginAccess();
          v18 = *(v9 + 120);
          if ((v18 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (!*(v18 + 16))
          {
            goto LABEL_10;
          }

          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          v23 = *(v18 + 40);

          v24 = sub_1D1E684EC();
          v25 = -1 << *(v18 + 32);
          v26 = v24 & ~v25;
          if (((*(v18 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
LABEL_9:

            v1 = v72;
            v0 = v73;
            v9 = v68;
            v2 = v70;
            goto LABEL_10;
          }

          v27 = ~v25;
          while (1)
          {
            v28 = *(*(v18 + 48) + 8 * v26);
            v29 = sub_1D1E684FC();

            if (v29)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v18 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v4 = v14;
          v0 = v73;
          v5 = v74;
          v2 = v70;
          v1 = v72;
          v9 = v68;
          if (v72 < 0)
          {
            goto LABEL_18;
          }

LABEL_12:
          v12 = v4;
          v13 = v5;
          v14 = v4;
          if (!v5)
          {
            while (1)
            {
              v14 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v14 >= v10)
              {
                goto LABEL_33;
              }

              v13 = *(v2 + 8 * v14);
              ++v12;
              if (v13)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_43:
            if (!sub_1D1E6873C())
            {
              goto LABEL_44;
            }

LABEL_36:
            v31 = v0[28];
            v33 = v0[25];
            v32 = v0[26];
            v34 = v0[24];
            v35 = v73[20];
            v66 = v0[23];
            v67 = v73[19];
            v75 = *(v73 + 264);
            v36 = v73[17];
            v64 = v0[27];
            v65 = v73[16];

            sub_1D1A97360(v37, v31);

            v69 = sub_1D1E67E7C();
            v71 = *(*(v69 - 8) + 56);
            v71(v66, 1, 1, v69);
            v38 = v34;
            (*(v33 + 16))(v64, v31, v34);
            v39 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
            v40 = (*(v33 + 80) + 56) & ~*(v33 + 80);
            v41 = (v32 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
            v42 = swift_allocObject();
            *(v42 + 2) = v35;
            *(v42 + 3) = v39;
            *(v42 + 4) = v67;
            *(v42 + 5) = v65;
            *(v42 + 6) = v35;
            (*(v33 + 32))(&v42[v40], v64, v38);
            *&v42[v41] = v36;
            *&v42[(v41 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
            swift_retain_n();

            v43 = v36;
            v44 = sub_1D1B02614(0, 0, v66, &unk_1D1E96198, v42);
            v73[29] = v44;
            v71(v66, 1, 1, v69);
            v45 = v73[23];
            if (v75)
            {
              v46 = swift_allocObject();
              *(v46 + 16) = 0;
              *(v46 + 24) = 0;
              *(v46 + 32) = v44;

              v47 = &unk_1D1E961A0;
            }

            else
            {
              v48 = v73[18];
              v46 = swift_allocObject();
              *(v46 + 16) = 0;
              *(v46 + 24) = 0;
              *(v46 + 32) = v44;
              *(v46 + 40) = v48;
              *(v46 + 48) = 1;

              v47 = &unk_1D1E961A8;
            }

            v49 = sub_1D1B02614(0, 0, v45, v47, v46);
            v73[30] = v49;
            v50 = *(MEMORY[0x1E69E86A8] + 4);
            v51 = swift_task_alloc();
            v73[31] = v51;
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
            *v51 = v73;
            v51[1] = sub_1D1A9180C;
            v54 = v73[21];
            v53 = v73[22];
            v55 = MEMORY[0x1E69E7288];

            return MEMORY[0x1EEE6DA10](v53, v49, v54, v52, v55);
          }

LABEL_16:
          v15 = (v13 - 1) & v13;
          v16 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
          if (!v16)
          {
            goto LABEL_33;
          }
        }

        if (v18 < 0)
        {
          v19 = *(v9 + 120);
        }

        v20 = *(v9 + 120);

        v21 = v16;
        v22 = sub_1D1E6878C();

        if (v22)
        {
        }

        else
        {
LABEL_10:
          sub_1D1E6896C();
          v11 = *(v76 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        v4 = v14;
        v5 = v74;
        if (v1 < 0)
        {
          continue;
        }

        goto LABEL_12;
      }
    }

    break;
  }

LABEL_33:
  sub_1D1716918();
  v1 = v76;
  swift_beginAccess();

  sub_1D19519A4(v30);
  swift_endAccess();

  if (v76 < 0 || (v76 & 0x4000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (*(v76 + 16))
  {
    goto LABEL_36;
  }

LABEL_44:
  v56 = v0[15];
  v57 = type metadata accessor for StateSnapshot(0);
  (*(*(v57 - 8) + 56))(v56, 1, 1, v57);

  v59 = v0[27];
  v58 = v0[28];
  v61 = v0[22];
  v60 = v0[23];

  v62 = v0[1];

  return v62();
}

uint64_t sub_1D1A9180C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = v0;

  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_1D1A91A2C;
  }

  else
  {
    v7 = sub_1D1A91954;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1A91954()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[15];

  (*(v4 + 8))(v2, v3);
  sub_1D1741A90(v5, v6, &unk_1EC649E30, &unk_1D1E91250);
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1A91A2C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];

  (*(v5 + 8))(v2, v4);

  v8 = v0[1];
  v9 = v0[32];

  return v8();
}

uint64_t HomeState.Stream.fetchAllCharacteristics(for:limitToServiceIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v4[17] = *(v9 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A91D28, v14, 0);
}

uint64_t sub_1D1A91D28()
{
  v123 = v0;
  v1 = v0[10];
  if (!*(v1 + 16))
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC64A290);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D16EC000, v16, v17, "We should never invoke fetchAllCharacteristicsValues with an empty list of limitToServiceIDs", v18, 2u);
      v0 = v119;
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    v19 = v0[8];

LABEL_81:
    v83 = type metadata accessor for StateSnapshot(0);
    (*(*(v83 - 8) + 56))(v19, 1, 1, v83);
    v85 = v0[25];
    v84 = v0[26];
    v87 = v0[23];
    v86 = v0[24];
    v89 = v0[19];
    v88 = v0[20];
    v90 = v0[18];
    v92 = v0[13];
    v91 = v0[14];

    v93 = v0[1];

    return v93();
  }

  v2 = v0[10];
  if (qword_1EC642328 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64A290);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v119[21];
      v7 = v119[10];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v122[0] = v9;
      *v8 = 136315138;
      sub_1D1AA3AF8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v10 = sub_1D1E6817C();
      v12 = sub_1D1B1312C(v10, v11, v122);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D16EC000, v4, v5, "Fetching for only services with IDs: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      v13 = v8;
      v14 = v119;
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {

      v14 = v119;
    }

    v20 = [v14[9] accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = v21;
    v122[0] = MEMORY[0x1E69E7CC0];
    if (v21 >> 62)
    {
      break;
    }

    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_49;
    }

LABEL_13:
    v95 = v22;
    v24 = 0;
    v98 = v22 & 0xFFFFFFFFFFFFFF8;
    v99 = v22 & 0xC000000000000001;
    v97 = v22 + 32;
    v120 = v14[10];
    v118 = v120 + 56;
    v100 = v14[22];
    v101 = v1;
    v25 = (v100 + 8);
    v26 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v96 = v23;
    while (1)
    {
      if (v99)
      {
        v28 = MEMORY[0x1D3891EF0](v24, v95);
        v29 = __OFADD__(v24, 1);
        v30 = v24 + 1;
        if (v29)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v24 >= *(v98 + 16))
        {
          goto LABEL_46;
        }

        v28 = *(v97 + 8 * v24);
        v29 = __OFADD__(v24, 1);
        v30 = v24 + 1;
        if (v29)
        {
          goto LABEL_45;
        }
      }

      v102 = v28;
      v31 = [v28 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v32 = sub_1D1E67C1C();

      v103 = v30;
      v104 = v32;
      if (v32 >> 62)
      {
        break;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_21;
      }

LABEL_41:

LABEL_15:
      v24 = v103;
      if (v103 == v96)
      {
        v51 = v122[0];
        goto LABEL_50;
      }
    }

    v33 = sub_1D1E6873C();
    if (!v33)
    {
      goto LABEL_41;
    }

LABEL_21:
    v34 = 0;
    log = (v32 & 0xFFFFFFFFFFFFFF8);
    v112 = v32 & 0xC000000000000001;
    buf = v33;
    v108 = v32 + 32;
    while (v112)
    {
      v35 = MEMORY[0x1D3891EF0](v34, v104);
      v29 = __OFADD__(v34++, 1);
      if (v29)
      {
        goto LABEL_43;
      }

LABEL_25:
      v36 = v14[26];
      v115 = v35;
      v37 = [v35 v26[61]];
      sub_1D1E66A5C();

      if (*(v1 + 16) && (v38 = v14[26], v39 = v14[21], v40 = *(v120 + 40), sub_1D1AA3AF8(qword_1EE07DD78, MEMORY[0x1E69695A8]), v41 = sub_1D1E676DC(), v42 = -1 << *(v120 + 32), v43 = v41 & ~v42, ((*(v118 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
      {
        v44 = ~v42;
        v45 = *(v100 + 72);
        v46 = *(v100 + 16);
        do
        {
          v47 = v119[25];
          v48 = v119[21];
          v46(v47, *(v120 + 48) + v43 * v45, v48);
          sub_1D1AA3AF8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v49 = sub_1D1E6775C();
          v50 = *v25;
          (*v25)(v47, v48);
          if (v49)
          {
            v14 = v119;
            v50(v119[26], v119[21]);

            sub_1D1E6896C();
            v27 = *(v122[0] + 16);
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
            v1 = v101;
            v26 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            goto LABEL_15;
          }

          v43 = (v43 + 1) & v44;
        }

        while (((*(v118 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0);
        v14 = v119;
        v1 = v101;
        v26 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      }

      else
      {
        v50 = *v25;
      }

      v50(v14[26], v14[21]);

      if (v34 == buf)
      {
        goto LABEL_41;
      }
    }

    if (v34 >= log[2].isa)
    {
      goto LABEL_44;
    }

    v35 = *(v108 + 8 * v34);
    v29 = __OFADD__(v34++, 1);
    if (!v29)
    {
      goto LABEL_25;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
    v52 = v119[10];
  }

  v53 = v21;
  v23 = sub_1D1E6873C();
  v22 = v53;
  if (v23)
  {
    goto LABEL_13;
  }

LABEL_49:
  v51 = MEMORY[0x1E69E7CC0];
LABEL_50:

  v54 = sub_1D1E6707C();
  v0 = sub_1D1E6835C();

  if (!os_log_type_enabled(v54, v0))
  {
LABEL_72:

    v0 = v14;
    v79 = sub_1D1A8D678(v51);
    v14[27] = v79;

    if (v79 >> 62)
    {
      goto LABEL_79;
    }

    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14[28] = v80;
    if (v80)
    {
      goto LABEL_74;
    }

LABEL_80:
    v19 = v0[8];

    goto LABEL_81;
  }

  v55 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v122[0] = v105;
  bufa = v55;
  *v55 = 136315138;
  if ((v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
  {
    v56 = sub_1D1E6873C();
  }

  else
  {
    v56 = *(v51 + 16);
  }

  v109 = v0;
  loga = v54;
  if (!v56)
  {
    v121 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v75 = MEMORY[0x1D3891260](v121, v14[21]);
    v77 = v76;

    v78 = sub_1D1B1312C(v75, v77, v122);

    *(bufa + 4) = v78;
    v54 = loga;
    _os_log_impl(&dword_1D16EC000, loga, v109, "Accessories containing filtered services: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1D3893640](v105, -1, -1);
    MEMORY[0x1D3893640](bufa, -1, -1);
    goto LABEL_72;
  }

  v57 = 0;
  v58 = v14[22];
  v59 = (v58 + 32);
  v116 = (v58 + 56);
  v121 = MEMORY[0x1E69E7CC0];
  v113 = v58;
  v114 = (v58 + 48);
  v117 = v56;
  while ((v51 & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x1D3891EF0](v57, v51);
    v61 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_77;
    }

LABEL_61:
    v62 = v14[25];
    v0 = v14;
    v63 = v14[21];
    v64 = v0[20];
    v65 = v60;
    v66 = [v65 uniqueIdentifier];
    sub_1D1E66A5C();

    v67 = *v59;
    (*v59)(v64, v62, v63);

    (*v116)(v64, 0, 1, v63);
    if ((*v114)(v64, 1, v63) == 1)
    {
      sub_1D1741A30(v0[20], &qword_1EC642590, qword_1D1E71260);
      v14 = v0;
    }

    else
    {
      v68 = v0[23];
      v69 = v0[24];
      v70 = v0[21];
      v67(v69, v0[20], v70);
      v67(v68, v69, v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_1D177D0AC(0, v121[2] + 1, 1, v121);
      }

      v14 = v119;
      v72 = v121[2];
      v71 = v121[3];
      if (v72 >= v71 >> 1)
      {
        v121 = sub_1D177D0AC(v71 > 1, v72 + 1, 1, v121);
      }

      v73 = v119[23];
      v74 = v119[21];
      v121[2] = v72 + 1;
      v67(v121 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v72, v73, v74);
    }

    ++v57;
    if (v61 == v117)
    {
      goto LABEL_71;
    }
  }

  if (v57 >= *(v51 + 16))
  {
    goto LABEL_78;
  }

  v60 = *(v51 + 8 * v57 + 32);
  v61 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v82 = sub_1D1E6873C();
  v0[28] = v82;
  if (!v82)
  {
    goto LABEL_80;
  }

LABEL_74:
  v81 = *(v0[11] + 168);
  v0[29] = v81;

  return MEMORY[0x1EEE6DFA0](sub_1D1A928E4, v81, 0);
}

uint64_t sub_1D1A928E4()
{
  v1 = v0[29];
  v2 = v0[27];
  v72 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = v2 + 32;
  v69 = v1;
  v71 = v0;
  v66 = v2 & 0xFFFFFFFFFFFFFF8;
  v68 = v2 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v8 = MEMORY[0x1D3891EF0](v3, v0[27]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      if (sub_1D1E6873C())
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }

    v11 = *(v1 + 120);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(v1 + 120);
      }

      v13 = *(v1 + 120);

      v14 = v9;
      v15 = sub_1D1E6878C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (!*(v11 + 16))
      {
        goto LABEL_3;
      }

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      v16 = *(v11 + 40);

      v17 = sub_1D1E684EC();
      v18 = -1 << *(v11 + 32);
      v19 = v17 & ~v18;
      if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
LABEL_2:

        v1 = v69;
        v0 = v71;
        v5 = v66;
        v4 = v68;
LABEL_3:
        sub_1D1E6896C();
        v7 = *(v72 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        continue;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v11 + 48) + 8 * v19);
        v22 = sub_1D1E684FC();

        if (v22)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      v1 = v69;
      v0 = v71;
      v5 = v66;
      v4 = v68;
    }
  }

  while (v3 != v0[28]);
  v3 = v72;
  swift_beginAccess();

  sub_1D19519A4(v23);
  swift_endAccess();

  if ((v72 & 0x8000000000000000) != 0 || (v72 & 0x4000000000000000) != 0)
  {
    goto LABEL_30;
  }

  if (*(v72 + 16))
  {
LABEL_25:
    v24 = v0[29];
    v70 = v0[27];
    v25 = v0[18];
    v26 = v0[19];
    v63 = v25;
    v27 = v0;
    v30 = v0 + 16;
    v28 = v0[16];
    v29 = v30[1];
    v31 = v27[14];
    v32 = v27[15];
    v64 = v24;
    v33 = v27[9];

    sub_1D1A97360(v34, v26);

    v65 = sub_1D1E67E7C();
    v67 = *(*(v65 - 8) + 56);
    v67(v31, 1, 1, v65);
    (*(v28 + 16))(v25, v26, v32);
    v35 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
    v36 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v37 = (v29 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 2) = v64;
    *(v38 + 3) = v35;
    *(v38 + 4) = 3;
    *(v38 + 5) = v70;
    *(v38 + 6) = v64;
    (*(v28 + 32))(&v38[v36], v63, v32);
    *&v38[v37] = v33;
    *&v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v3;
    swift_retain_n();
    v39 = v33;
    v40 = sub_1D1B02614(0, 0, v31, &unk_1D1E960C0, v38);
    v27[30] = v40;
    v67(v31, 1, 1, v65);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v40;

    v42 = sub_1D1B02614(0, 0, v31, &unk_1D1E960C8, v41);
    v27[31] = v42;
    v43 = *(MEMORY[0x1E69E86A8] + 4);
    v44 = swift_task_alloc();
    v27[32] = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v44 = v27;
    v44[1] = sub_1D1A92EFC;
    v47 = v27[12];
    v46 = v27[13];
    v48 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v46, v42, v47, v45, v48);
  }

LABEL_31:
  v49 = v0[27];
  v50 = v0[8];

  v51 = type metadata accessor for StateSnapshot(0);
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  v53 = v0[25];
  v52 = v0[26];
  v55 = v0[23];
  v54 = v0[24];
  v57 = v0[19];
  v56 = v0[20];
  v58 = v0[18];
  v60 = v0[13];
  v59 = v0[14];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1D1A92EFC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 232);

  if (v0)
  {
    v7 = sub_1D1A9315C;
  }

  else
  {
    v7 = sub_1D1A93044;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1A93044()
{
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[8];

  (*(v4 + 8))(v2, v3);
  sub_1D1741A90(v5, v6, &unk_1EC649E30, &unk_1D1E91250);
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v15 = v0[13];
  v14 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1A9315C()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v14 = v0[14];
  v15 = v0[13];

  (*(v10 + 8))(v7, v9);

  v11 = v0[1];
  v12 = v0[33];

  return v11();
}

uint64_t HomeState.Stream.fetchCharacteristics<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[9] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A932FC, v5, 0);
}

uint64_t sub_1D1A932FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v0[3] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C78, &qword_1D1E960D8);
  v6 = *(v4 + 8);
  sub_1D1E67A9C();
  v7 = v0[2];
  v0[10] = v7;
  v8 = sub_1D1AA3AF8(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
  v12 = *(MEMORY[0x1E69E87D8] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1D1A934C8;

  return MEMORY[0x1EEE6DBF8](v0 + 4, v10, v11, v1, v8, &unk_1D1E960E8, v9, v10);
}

uint64_t sub_1D1A934C8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A93618, v4, 0);
}

id sub_1D1A93630(void *a1, void **a2)
{
  v37 = sub_1D1E66A7C();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v37);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v33 - v10;
  v12 = *a2;
  result = [v12 home];
  if (result)
  {
    v36 = v5;
    v33[0] = v2;
    v14 = result;
    v15 = [result uniqueIdentifier];
    sub_1D1E66A5C();

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1D1AA4B90;
    *(v17 + 24) = v16;
    v35 = v17;
    v34 = v14;
    v33[1] = v12;
    v18 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a1;
    v20 = v38;
    v22 = sub_1D1742188(v11);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
    }

    else
    {
      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D173B870();
          v20 = v38;
        }
      }

      else
      {
        sub_1D172CEC8(v25, isUniquelyReferenced_nonNull_native);
        v20 = v38;
        v27 = sub_1D1742188(v11);
        if ((v26 & 1) != (v28 & 1))
        {
          result = sub_1D1E690FC();
          __break(1u);
          return result;
        }

        v22 = v27;
      }

      *a1 = v20;
      a1 = v37;
      if ((v26 & 1) == 0)
      {
        v29 = sub_1D1AA4B90();
        v31 = v30;
        (*(v36 + 16))(v9, v11, a1);
        sub_1D19DBB64(v22, v9, v29, v31, v20);
      }

      v32 = v20[7] + 16 * v22;
      MEMORY[0x1D3891220]();
      if (*((*(v32 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v32 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_11;
      }
    }

    sub_1D1E67C5C();
LABEL_11:
    sub_1D1E67CAC();

    (*(v36 + 8))(v11, a1);
  }

  return result;
}

uint64_t sub_1D1A93948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v4[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A93A20, v6, 0);
}

uint64_t sub_1D1A93A20()
{
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 32) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v26 = *(v0 + 32);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = v27[5];
      v13 = v27[6];
      v28 = v27[3];
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(v26 + 56) + ((v11 << 10) | (16 * v14));
      v16 = *(v15 + 8);
      v17 = *v15;

      v19 = sub_1D1A8D678(v18);

      v20 = sub_1D1E67E7C();
      (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v12;
      v21[5] = v19;
      v21[6] = v17;

      sub_1D1DE29CC(v13, &unk_1D1E961F8, v21);
      result = sub_1D1741A30(v13, &unk_1EC6442C0, &qword_1D1E741A0);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v23 = v27[3];
  v22 = v27[4];

  v24 = *v23;
  v25 = swift_task_alloc();
  v27[8] = v25;
  *v25 = v27;
  v25[1] = sub_1D1A93C74;

  return sub_1D17C2F64(v24);
}

void sub_1D1A93C74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
  }

  else
  {
    v6 = v3[7];

    MEMORY[0x1EEE6DFA0](sub_1D1A93DAC, v6, 0);
  }
}

uint64_t sub_1D1A93DAC()
{
  v8 = v0;
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B68, &qword_1D1E6E8B0);
    v2 = sub_1D1E68BCC();
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = *(v0 + 80);
  v7 = v2;
  sub_1D1AA2F94(v1, 1, &v7);
  if (v3)
  {

    return MEMORY[0x1EEE6C130](v3, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {
    v4 = *(v0 + 48);
    **(v0 + 16) = v7;

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D1A93EB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 serviceType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  ServiceKind.init(rawValue:)(v7);
  v8 = v24;
  if (v24 == 53)
  {
    v8 = 0;
  }

  v23[1] = v8;
  v9 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  v10 = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v12 = v9 + 56;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (!v15)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23[0] = *(*(v10 + 48) + (v19 | (v18 << 6)));
      result = HMService.subscript.getter(v23);
      if (result)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_8;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    result = sub_1D1E67CAC();
    v11 = v22;
  }

  while (v15);
LABEL_8:
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      *a2 = v11;
      return result;
    }

    v15 = *(v12 + 8 * v20);
    ++v18;
    if (v15)
    {
      v18 = v20;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A9407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A941E0, 0, 0);
}

uint64_t sub_1D1A941E0()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A94204, v1, 0);
}

uint64_t sub_1D1A94204()
{
  v62 = v0;
  v1 = v0[10];
  v61 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = v0[21];
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v53 = v0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v0 = (v0[10] + 32);
    v58 = v2;
    v60 = v3;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v56 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1D3891EF0](v4, v53[10]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_34;
        }

        v8 = v0[v4];
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v2 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v11 = *(v3 + 120);
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = *(v3 + 120);
        }

        v13 = *(v3 + 120);

        v1 = v9;
        v14 = sub_1D1E6878C();

        if (v14)
        {

          goto LABEL_7;
        }
      }

      else if (*(v11 + 16))
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v15 = *(v11 + 40);

        v16 = sub_1D1E684EC();
        v17 = -1 << *(v11 + 32);
        v18 = v16 & ~v17;
        if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = *(*(v11 + 48) + 8 * v18);
            v1 = sub_1D1E684FC();

            if (v1)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v2 = v58;
          v3 = v60;
          v6 = v55;
          v5 = v56;
          goto LABEL_7;
        }

LABEL_5:

        v2 = v58;
        v3 = v60;
        v6 = v55;
        v5 = v56;
      }

      sub_1D1E6896C();
      v7 = *(v61 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      v1 = &v61;
      sub_1D1E6897C();
LABEL_7:
      if (v4 == v2)
      {
        v21 = v61;
        v0 = v53;
        goto LABEL_27;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_27:
  swift_beginAccess();

  sub_1D19519A4(v22);
  swift_endAccess();

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_30;
    }
  }

  else if (*(v21 + 16))
  {
LABEL_30:
    v23 = v0[21];
    v24 = v0[16];
    v25 = v0[17];
    v26 = v0;
    v29 = v0 + 14;
    v27 = v0[14];
    v28 = v29[1];
    v30 = v26[12];
    v31 = v26[13];
    v51 = v31;
    v52 = v24;
    v32 = v26[11];
    v54 = v26[10];

    sub_1D1A97360(v33, v25);

    v59 = sub_1D1E67E7C();
    v57 = *(*(v59 - 8) + 56);
    v57(v30, 1, 1, v59);
    (*(v27 + 16))(v24, v25, v31);
    v34 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
    v35 = (*(v27 + 80) + 56) & ~*(v27 + 80);
    v36 = (v28 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 2) = v23;
    *(v37 + 3) = v34;
    *(v37 + 4) = 3;
    *(v37 + 5) = v54;
    *(v37 + 6) = v23;
    (*(v27 + 32))(&v37[v35], v52, v51);
    *&v37[v36] = v32;
    *&v37[(v36 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;
    swift_retain_n();

    v38 = v32;
    v39 = sub_1D1B02614(0, 0, v30, &unk_1D1E96200, v37);
    v26[22] = v39;
    v57(v30, 1, 1, v59);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v39;

    v41 = sub_1D1B02614(0, 0, v30, &unk_1D1E96208, v40);
    v26[23] = v41;
    v42 = *(MEMORY[0x1E69E86A8] + 4);
    v43 = swift_task_alloc();
    v26[24] = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v43 = v26;
    v43[1] = sub_1D1A947F8;
    v46 = v26[18];
    v45 = v26[19];
    v47 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v45, v41, v46, v44, v47);
  }

  v48 = v0[20];

  v49 = type metadata accessor for StateSnapshot(0);
  (*(*(v49 - 8) + 56))(v48, 1, 1, v49);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94940, 0, 0);
}

uint64_t sub_1D1A947F8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = v0;

  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_1D1A94B14;
  }

  else
  {
    v7 = sub_1D1A94A5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1A94940()
{
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0) + 48);
  v5 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1741A90(v1, v3 + v4, &unk_1EC649E30, &unk_1D1E91250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  swift_storeEnumTagMultiPayload();
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1A94A5C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];

  (*(v6 + 8))(v4, v5);
  sub_1D1741A90(v2, v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94940, 0, 0);
}

uint64_t sub_1D1A94B14()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94BA4, 0, 0);
}

uint64_t sub_1D1A94BA4()
{
  v1 = v0[25];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0) + 48);
  v5 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v3 + v4) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  swift_storeEnumTagMultiPayload();
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t HomeState.Stream.fetchCharacteristics(for:characteristicsKindMap:timeout:snapshotPreference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  *(v7 + 72) = a4;
  *(v7 + 80) = v6;
  *(v7 + 216) = a5;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  v9 = *(type metadata accessor for StaticService(0) - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C80, &qword_1D1E960F8) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a6;
  *(v7 + 112) = v12;
  *(v7 + 120) = v13;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC64ABE8;
  *(v7 + 128) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A94DF4, v14, 0);
}

uint64_t sub_1D1A94DF4()
{
  v54 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v53 = sub_1D1749970(v5);
    sub_1D1747DDC(&v53);

    v6 = v53;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  v9 = sub_1D174A6C4(sub_1D1749C64, v8, v6);
  *(v0 + 136) = v9;

  if (v9)
  {
    if (v3 >> 62 && sub_1D1E6873C())
    {
      sub_1D179CED0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    *(v0 + 40) = v10;
    v13 = *(v12 + 32);
    *(v0 + 217) = v13;
    v14 = -1;
    v15 = -1 << v13;
    if (-(-1 << v13) < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v12 + 64);
    *(v0 + 144) = 0;

    if (v16)
    {
      v17 = 0;
LABEL_17:
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v29 = __clz(__rbit64(v16));
      v30 = (v16 - 1) & v16;
      v31 = v29 | (v17 << 6);
      sub_1D1AA43E0(*(v12 + 48) + *(v11 + 72) * v31, v28, type metadata accessor for StaticService);
      v32 = *(*(v12 + 56) + 8 * v31);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
      v34 = *(v33 + 48);
      sub_1D1AA4538(v28, v27, type metadata accessor for StaticService);
      *(v27 + v34) = v32;
      (*(*(v33 - 8) + 56))(v27, 0, 1, v33);

      v26 = v17;
    }

    else
    {
      v25 = 0;
      v26 = ((63 - v15) >> 6) - 1;
      while (v26 != v25)
      {
        v17 = v25 + 1;
        v16 = *(v12 + 72 + 8 * v25++);
        if (v16)
        {
          goto LABEL_17;
        }
      }

      v51 = *(v0 + 104);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
      v30 = 0;
    }

    *(v0 + 152) = v30;
    *(v0 + 160) = v26;
    v35 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 104), v35, &qword_1EC649C80, &qword_1D1E960F8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      v37 = *(v0 + 136);
      v38 = *(v0 + 80);
      v39 = *(v0 + 216);
      v40 = *(v0 + 64);

      v41 = *(v38 + 168);
      v42 = *(v0 + 40);
      *(v0 + 192) = v42;
      v43 = swift_task_alloc();
      *(v0 + 200) = v43;
      *v43 = v0;
      v43[1] = sub_1D1A958A0;
      v44 = *(v0 + 120);
      v45 = *(v0 + 72);
      v46 = *(v0 + 48);

      return sub_1D1A90EF0(v46, v42, v37, v45, v39 & 1, v44);
    }

    else
    {
      v47 = *(v0 + 112);
      v48 = *(v0 + 96);
      *(v0 + 168) = *(v47 + *(v36 + 48));
      sub_1D1AA4538(v47, v48, type metadata accessor for StaticService);
      v49 = swift_task_alloc();
      *(v0 + 176) = v49;
      *v49 = v0;
      v49[1] = sub_1D1A9539C;
      v50 = *(v0 + 96);

      return StaticService.service.getter();
    }
  }

  else
  {
    v18 = *(v0 + 48);
    v19 = type metadata accessor for StateSnapshot(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 96);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1D1A9539C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A954B4, v3, 0);
}

uint64_t sub_1D1A954B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = v1;
  sub_1D1AA3B40(v2, v1);

  result = sub_1D1AA3F34(v4, type metadata accessor for StaticService);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  *(v0 + 144) = v3;
  if (v7)
  {
    v9 = *(v0 + 64);
LABEL_11:
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = (v7 - 1) & v7;
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1D1AA43E0(*(v9 + 48) + *(*(v0 + 88) + 72) * v17, v14, type metadata accessor for StaticService);
    v18 = *(*(v9 + 56) + 8 * v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    v20 = *(v19 + 48);
    sub_1D1AA4538(v14, v15, type metadata accessor for StaticService);
    *(v15 + v20) = v18;
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);

    v12 = v8;
LABEL_12:
    *(v0 + 152) = v16;
    *(v0 + 160) = v12;
    v21 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 104), v21, &qword_1EC649C80, &qword_1D1E960F8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      v23 = *(v0 + 136);
      v24 = *(v0 + 80);
      v25 = *(v0 + 216);
      v26 = *(v0 + 64);

      v27 = *(v24 + 168);
      v28 = *(v0 + 40);
      *(v0 + 192) = v28;
      v29 = swift_task_alloc();
      *(v0 + 200) = v29;
      *v29 = v0;
      v29[1] = sub_1D1A958A0;
      v30 = *(v0 + 120);
      v31 = *(v0 + 72);
      v32 = *(v0 + 48);

      return sub_1D1A90EF0(v32, v28, v23, v31, v25 & 1, v30);
    }

    else
    {
      v33 = *(v0 + 112);
      v34 = *(v0 + 96);
      *(v0 + 168) = *(v33 + *(v22 + 48));
      sub_1D1AA4538(v33, v34, type metadata accessor for StaticService);
      v35 = swift_task_alloc();
      *(v0 + 176) = v35;
      *v35 = v0;
      v35[1] = sub_1D1A9539C;
      v36 = *(v0 + 96);

      return StaticService.service.getter();
    }
  }

  else
  {
    v10 = ((1 << *(v0 + 217)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 217)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v37 = *(v0 + 104);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
        (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
        v16 = 0;
        goto LABEL_12;
      }

      v9 = *(v0 + 64);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1A958A0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1D1A95A54;
  }

  else
  {
    v6 = sub_1D1A959CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1A959CC()
{
  v1 = v0[24];
  v2 = v0[17];

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A95A54()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];

  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t HomeState.Stream.toggle(tileInfoID:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v3[16] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A95BC0, v5, 0);
}

uint64_t sub_1D1A95BC0()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 112) + 24);
  HomeState.AllHomesModel.currentStateSnapshot.getter(v1);
  v3 = type metadata accessor for StateSnapshot(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 120);
  if (v5 == 1)
  {
    sub_1D1741A30(*(v0 + 120), &unk_1EC649E30, &unk_1D1E91250);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
LABEL_7:
    v14 = *(v0 + 96);
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    (*(v4 + 56))(v14, 1, 1, v3);
    v15 = *(v0 + 120);

    v16 = *(v0 + 8);

    return v16();
  }

  StateSnapshot.tileInfo(for:)(*(v0 + 104), (v0 + 56));
  sub_1D1AA3F34(v6, type metadata accessor for StateSnapshot);
  if (!*(v0 + 80))
  {
    goto LABEL_7;
  }

  sub_1D16EEE20((v0 + 56), v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  v9 = *(v8 + 200);
  v17 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1D1A95E48;
  v12 = *(v0 + 96);

  return v17(v12, v7, v8);
}

uint64_t sub_1D1A95E48()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A95F58, v2, 0);
}

uint64_t sub_1D1A95F58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];

  v2 = v0[1];

  return v2();
}

uint64_t HomeState.Stream.write(characteristicValueSet:timeout:)(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 184) = a4;
  *(v5 + 40) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v5 + 72) = v8;
  v9 = *(v8 - 8);
  *(v5 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 112) = v11;
  *(v5 + 120) = v12;
  *(v5 + 185) = *(a2 + 8);
  *(v5 + 128) = a2[2];
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC64ABE8;
  *(v5 + 136) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A96134, v13, 0);
}

uint64_t sub_1D1A96134()
{
  v73 = v0;
  v1 = *(v0 + 64);
  sub_1D1771FF8(*(v0 + 120), v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(*(v0 + 64), &qword_1EC649C90, &qword_1D1E96120);
LABEL_33:
    if (qword_1EC642328 != -1)
    {
LABEL_41:
      swift_once();
    }

    v49 = *(v0 + 120);
    v50 = sub_1D1E6709C();
    __swift_project_value_buffer(v50, qword_1EC64A290);

    v51 = sub_1D1E6707C();
    v52 = sub_1D1E6833C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 185);
      v55 = *(v0 + 120);
      v54 = *(v0 + 128);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71 = v54;
      v72[0] = v57;
      *v56 = 136315138;
      v69 = v55;
      v70 = v53;
      v58 = CharacteristicValueSet.description.getter();
      v60 = sub_1D1B1312C(v58, v59, v72);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1D16EC000, v51, v52, "Exit early in write characteristic due to missing home, characteristicValueSet: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v56, -1, -1);
    }

    v61 = *(v0 + 40);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v64 = *(v0 + 104);
    v63 = *(v0 + 112);
    v66 = *(v0 + 88);
    v65 = *(v0 + 96);
    v67 = *(v0 + 64);

    v68 = *(v0 + 8);

    return v68();
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v7 + *(v2 + 48));

    v10 = *(v6 + 32);
    v10(v4, v7, v5);
    v10(v3, v4, v5);
    swift_beginAccess();
    v11 = *(v8 + 64);
    if (v11)
    {
      v12 = [v11 homes];
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      sub_1D1E67C1C();

      v69 = sub_1D1749970(v13);
      sub_1D1747DDC(&v69);

      v14 = v69;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    v18 = *(*(v0 + 80) + 16);
    v18(*(v0 + 96), v15, v17);
    v18(v16, v15, v17);
    if (v14 >> 62)
    {
      v19 = sub_1D1E6873C();
    }

    else
    {
      v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v21 = v14 & 0xC000000000000001;
    v22 = (v14 + 32);
    while (1)
    {
      if (v19 == v20)
      {
        goto LABEL_19;
      }

      if (v21)
      {
        v23 = MEMORY[0x1D3891EF0](v20, v14);
      }

      else
      {
        if (v20 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v23 = *(v14 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = *(v0 + 88);
      v69 = v23;
      sub_1D1A8B334(&v69, v25, v72);

      v17 = v72[0];
      if (v17)
      {
        break;
      }

      if (__OFADD__(v20++, 1))
      {
        goto LABEL_40;
      }
    }

    v19 = v20;
LABEL_19:
    if (!(v14 >> 62))
    {
      if (v19 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

LABEL_31:
      v45 = *(v0 + 112);
      v46 = *(v0 + 88);
      v47 = *(v0 + 72);
      v48 = *(*(v0 + 80) + 8);
      v48(*(v0 + 96), v47);

      v48(v46, v47);
      v48(v45, v47);
      goto LABEL_33;
    }

    if (v19 == sub_1D1E6873C())
    {
      goto LABEL_31;
    }

LABEL_21:
    if (!v21)
    {
      if (v19 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = v22[v19];
        goto LABEL_24;
      }

      __break(1u);
LABEL_45:
      result = (v22)(v20, v17);
      __break(1u);
      return result;
    }

    v27 = MEMORY[0x1D3891EF0](v19, v14);
LABEL_24:
    v28 = v27;
    v29 = *(v0 + 96);
    v30 = *(v0 + 72);
    v31 = *(v0 + 80);
    v69 = v27;
    sub_1D1A8B334(&v69, v29, v72);
    v22 = *(v31 + 8);
    *(v0 + 144) = v22;
    *(v0 + 152) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v22)(v29, v30);

    v32 = v72[0];
    *(v0 + 160) = v72[0];
    v20 = *(v0 + 88);
    v17 = *(v0 + 72);
    if (!v32)
    {
      goto LABEL_45;
    }

    (v22)(v20, v17);
    v33 = [v32 accessory];
    if (!v33 || (v34 = v33, v35 = [v33 home], *(v0 + 168) = v35, v34, !v35))
    {
      (v22)(*(v0 + 112), *(v0 + 72));

      goto LABEL_33;
    }

    v36 = *(v0 + 184);
    v37 = *(*(v0 + 56) + 168);
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_1D1A9681C;
    v39 = *(v0 + 185);
    v40 = *(v0 + 120);
    v41 = *(v0 + 128);
    v42 = *(v0 + 40);
    v43 = *(v0 + 48);

    return sub_1D1A8DDCC(v42, v40, v39, v41, v35, v43, v36 & 1);
  }
}

uint64_t sub_1D1A9681C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A9692C, v2, 0);
}

uint64_t sub_1D1A9692C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);

  v3(v4, v5);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t HomeState.Stream.refreshActionSets(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[7] = updated;
  v4 = *(*(updated - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v2[10] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A96AE0, v6, 0);
}

uint64_t sub_1D1A96AE0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[12] = *(*(v0[6] + 144) + qword_1EC6BE170);
    v33 = v2;

    v4 = [v3 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v5 = sub_1D1E67C1C();

    v6 = sub_1D18DA708(MEMORY[0x1E69E7CC0]);
    if (v5 >> 62)
    {
LABEL_33:
      v7 = sub_1D1E6873C();
      v34 = v0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v0;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3891EF0](v8, v5);
          }

          else
          {
            if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v0 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = sub_1D171D3B8(v10);
          v14 = v6[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (__OFADD__(v14, v15))
          {
            goto LABEL_31;
          }

          v17 = v12;
          if (v6[3] >= v16)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v12)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_1D173BB28();
              if (v17)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_1D172D590(v16, isUniquelyReferenced_nonNull_native);
            v18 = sub_1D171D3B8(v10);
            if ((v17 & 1) != (v19 & 1))
            {

              return sub_1D1E690FC();
            }

            v13 = v18;
            if (v17)
            {
LABEL_5:
              *(v6[7] + 2 * v13) = 0x8000;

              goto LABEL_6;
            }
          }

          v6[(v13 >> 6) + 8] |= 1 << v13;
          *(v6[6] + 8 * v13) = v10;
          *(v6[7] + 2 * v13) = 0x8000;
          v20 = v6[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_32;
          }

          v6[2] = v22;
LABEL_6:
          ++v8;
        }

        while (v0 != v7);
      }
    }

    v28 = v34[7];
    v27 = v34[8];

    *v27 = v6;
    swift_storeEnumTagMultiPayload();
    v29 = swift_task_alloc();
    v34[13] = v29;
    *v29 = v34;
    v29[1] = sub_1D1A96E7C;
    v31 = v34[8];
    v30 = v34[9];
    v32 = v34[5];

    return sub_1D1E5A250(v30, v31, v33, v32, 0);
  }

  v24 = v0[8];
  v23 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1D1A96E7C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v7 = *v0;

  sub_1D1AA3F34(v5, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A97010, v3, 0);
}

uint64_t sub_1D1A97010()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A97080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v42 = a1;

  v9 = 0;
  v40 = v8;
  v41 = v4;
  while (v7)
  {
LABEL_11:
    v16 = __clz(__rbit64(v7)) | (v9 << 6);
    v17 = *(*(v42 + 48) + 8 * v16);
    v18 = *(v42 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    sub_1D17418FC(*v18, v19, v21, v22);
    sub_1D17418FC(v20, v19, v21, v22);
    v23 = v17;
    sub_1D1757A60(v20, v19, v21, v22);
    v24 = v23;
    sub_1D17418FC(v20, v19, v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D171D368(v24);
    v28 = v3[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v3[3] < v31)
    {
      sub_1D172629C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D171D368(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v32)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = v26;
    sub_1D1737AA0();
    v26 = v37;
    if (v32)
    {
LABEL_4:
      v10 = v3[7] + 32 * v26;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v20;
      *(v10 + 8) = v19;
      *(v10 + 16) = v21;
      v14 = *(v10 + 24);
      *(v10 + 24) = v22;
      sub_1D1757A60(v11, v12, v13, v14);

      sub_1D1757A60(v20, v19, v21, v22);
      goto LABEL_5;
    }

LABEL_17:
    v3[(v26 >> 6) + 8] |= 1 << v26;
    *(v3[6] + 8 * v26) = v24;
    v34 = v3[7] + 32 * v26;
    *v34 = v20;
    *(v34 + 8) = v19;
    *(v34 + 16) = v21;
    *(v34 + 24) = v22;

    sub_1D1757A60(v20, v19, v21, v22);
    v35 = v3[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_24;
    }

    v3[2] = v36;
LABEL_5:
    v7 &= v7 - 1;

    v8 = v40;
    v4 = v41;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      *a2 = v3;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return result;
    }

    v7 = *(v4 + 8 * v15);
    ++v9;
    if (v7)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A97360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v182 = &v153 - v5;
  v194 = sub_1D1E66FDC();
  v184 = *(v194 - 8);
  v6 = *(v184 + 64);
  v7 = MEMORY[0x1EEE9AC00](v194);
  v192 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C98, &qword_1D1E96138);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v153 - v13;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v188 = *(v197 - 8);
  v15 = *(v188 + 64);
  v16 = MEMORY[0x1EEE9AC00](v197);
  v167 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v153 - v19;
  v166 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v153 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v177 = *(v23 - 8);
  v24 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v195 = &v153 - v25;
  v196 = sub_1D1E66A7C();
  v202 = *(v196 - 8);
  v26 = *(v202 + 64);
  v27 = MEMORY[0x1EEE9AC00](v196);
  v191 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v171 = &v153 - v30;
  v181 = v31;
  MEMORY[0x1EEE9AC00](v29);
  v205 = &v153 - v32;
  v33 = sub_1D1E6709C();
  v200 = *(v33 - 8);
  v34 = *(v200 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v199 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v206 = &v153 - v37;
  v38 = sub_1D1E6701C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v198 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v153 - v43;
  if (qword_1EC642350 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v38, qword_1EC6BE198);
  v187 = v39;
  v47 = *(v39 + 16);
  v46 = v39 + 16;
  v201 = v38;
  v179 = v47;
  v47(v44, v45, v38);
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v204 = v22;
  v48 = __swift_project_value_buffer(v33, qword_1EC6BE180);
  v50 = v200 + 16;
  v49 = *(v200 + 16);
  v203 = v33;
  v189 = v49;
  v49(v206, v48, v33);
  sub_1D1E66A6C();
  v183 = a1;
  if (a1 >> 62)
  {
    v51 = sub_1D1E6873C();
  }

  else
  {
    v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643340, &qword_1D1E717A0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8790], v10);
  v52 = v204;
  sub_1D1E6804C();
  (*(v11 + 8))(v14, v10);
  if (v51 < 1)
  {
    sub_1D1E67D8C();
    sub_1D1AA3AF8(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    v92 = swift_allocError();
    sub_1D1E6759C();
    v207 = v92;
    v93 = v197;
    sub_1D1E680AC();
    (*(v188 + 8))(v52, v93);
    (*(v202 + 8))(v205, v196);
    (*(v187 + 8))(v44, v201);
    v94 = v203;
    v95 = v200;
  }

  else
  {
    v185 = v50;
    v176 = v46;
    sub_1D1E66FFC();
    v53 = v193;
    sub_1D1E66FAC();
    v54 = sub_1D1E66FFC();
    v55 = sub_1D1E683EC();
    v56 = sub_1D1E6855C();
    v57 = v196;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v51;
      v59 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v54, v55, v59, "BatchCharacteristicRead", "#characteristics: %ld", v58, 0xCu);
      MEMORY[0x1D3893640](v58, -1, -1);
    }

    v186 = v44;
    v164 = v23;

    v60 = *(v184 + 16);
    v162 = v184 + 16;
    v161 = v60;
    v60(v192, v53, v194);
    v61 = sub_1D1E6705C();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v175 = sub_1D1E6704C();
    v64 = v202;
    v65 = *(v202 + 16);
    v66 = v171;
    v173 = v202 + 16;
    v172 = v65;
    v65(v171, v205, v57);
    v67 = v174;
    v68 = v206;
    v69 = sub_1D1E6707C();
    v70 = sub_1D1E6831C();
    v71 = os_log_type_enabled(v69, v70);
    v174 = v67;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v207 = v170;
      *v72 = 134218754;
      *(v72 + 4) = v51;
      *(v72 + 12) = 2082;
      v169 = sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v73 = sub_1D1E68FAC();
      v75 = v74;
      v160 = *(v202 + 8);
      v163 = (v202 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v66, v57);
      v76 = sub_1D1B1312C(v73, v75, &v207);

      *(v72 + 14) = v76;
      *(v72 + 22) = 2080;
      v77 = [v67 name];
      v78 = v67;
      v79 = sub_1D1E6781C();
      v81 = v80;

      v82 = sub_1D1B1312C(v79, v81, &v207);

      *(v72 + 24) = v82;
      *(v72 + 32) = 2082;
      v83 = [v78 uniqueIdentifier];
      v84 = v191;
      sub_1D1E66A5C();

      v85 = sub_1D1E68FAC();
      v87 = v86;

      v160(v84, v57);
      v68 = v206;
      v64 = v202;
      v88 = sub_1D1B1312C(v85, v87, &v207);

      *(v72 + 34) = v88;
      _os_log_impl(&dword_1D16EC000, v69, v70, "Starting batch characteristic read operation with %ld characteristics (ID: %{public}s, home: %s (%{public}s))", v72, 0x2Au);
      v89 = v170;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v89, -1, -1);
      MEMORY[0x1D3893640](v72, -1, -1);

      v91 = v187;
    }

    else
    {

      v96 = *(v64 + 8);
      v163 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v90 = v96(v66, v57);
      v91 = v187;
      v84 = v191;
    }

    MEMORY[0x1EEE9AC00](v90);
    *(&v153 - 2) = v68;
    sub_1D1D3926C(sub_1D1AA4BC4, (&v153 - 4), v183);
    v172(v84, v205, v57);
    v189(v199, v68, v203);
    v97 = v201;
    v179(v198, v186, v201);
    v98 = *(v64 + 80);
    v99 = (v98 + 16) & ~v98;
    v158 = v98;
    v100 = v64;
    v101 = v200;
    v169 = *(v200 + 80);
    v102 = (v181 + v169 + v99) & ~v169;
    v155 = *(v91 + 80);
    v103 = v91;
    v104 = (v190 + v155 + v102) & ~v155;
    v159 = v169 | v98 | v155 | 7;
    v154 = (v104 + v180 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = ((v104 + v180 + 31) & 0xFFFFFFFFFFFFFFF8);
    v105 = swift_allocObject();
    v106 = *(v100 + 32);
    v202 = v100 + 32;
    v160 = v106;
    (v106)(v105 + v99, v84, v57);
    v107 = *(v101 + 32);
    v170 = v101 + 32;
    v171 = v107;
    v108 = v105 + v102;
    v109 = v199;
    v110 = v203;
    (v107)(v108, v199, v203);
    v111 = *(v103 + 32);
    v156 = v103 + 32;
    v157 = v111;
    v111(v105 + v104, v198, v97);
    v112 = v105 + v154;
    *v112 = "BatchCharacteristicRead";
    *(v112 + 8) = 23;
    *(v112 + 16) = 2;
    *(v153 + v105) = v175;

    v113 = v197;
    v114 = v204;
    sub_1D1E6807C();
    v189(v109, v206, v110);
    v115 = v188;
    v153 = *(v188 + 16);
    v116 = v165;
    v153(v165, v114, v113);
    v117 = (v169 + 16) & ~v169;
    v118 = *(v115 + 80);
    v119 = (v117 + v190 + v118) & ~v118;
    v120 = swift_allocObject();
    v154 = v120;
    v121 = v109;
    v122 = v203;
    (v171)(v120 + v117, v121, v203);
    v123 = *(v115 + 32);
    v124 = v120 + v119;
    v125 = v197;
    v123(v124, v116, v197);
    v126 = v167;
    v153(v167, v204, v125);
    v166 = swift_allocObject();
    v123(v166 + ((v118 + 16) & ~v118), v126, v125);
    v207 = 0x6165526863746142;
    v208 = 0xEA00000000002D64;
    v127 = [v174 name];
    v128 = sub_1D1E6781C();
    v130 = v129;

    MEMORY[0x1D3890F70](v128, v130);

    v167 = v207;
    v165 = v208;
    v131 = v182;
    sub_1D1E67F8C();
    v132 = sub_1D1E67E7C();
    (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
    v179(v198, v186, v201);
    v161(v192, v193, v194);
    v189(v199, v206, v122);
    v172(v191, v205, v196);
    v133 = (v155 + 32) & ~v155;
    v134 = (v180 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = v184;
    v136 = (v134 + *(v184 + 80) + 17) & ~*(v184 + 80);
    v137 = (v168 + v169 + v136) & ~v169;
    v138 = (v190 + v158 + v137) & ~v158;
    v139 = (v181 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
    v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    *(v141 + 16) = 0;
    *(v141 + 24) = 0;
    v142 = v141 + v133;
    v94 = v203;
    v157(v142, v198, v201);
    v143 = v141 + v134;
    *v143 = "BatchCharacteristicRead";
    *(v143 + 8) = 23;
    *(v143 + 16) = 2;
    v144 = v194;
    (*(v135 + 32))(v141 + v136, v192, v194);
    (v171)(v141 + v137, v199, v94);
    v145 = v196;
    v146 = v202;
    (v160)(v141 + v138, v191, v196);
    v147 = v174;
    *(v141 + v139) = v174;
    *(v141 + v140) = v183;
    v148 = (v141 + ((v140 + 15) & 0xFFFFFFFFFFFFFFF8));
    v149 = v154;
    *v148 = sub_1D1AA4D6C;
    v148[1] = v149;
    v150 = v166;
    v148[2] = sub_1D1AA4E4C;
    v148[3] = v150;
    v151 = v147;

    sub_1D17C6EF0(v167, v165, v182, &unk_1D1E96220, v141);

    v95 = v200;

    (*(v135 + 8))(v193, v144);
    (*(v188 + 8))(v204, v197);
    (*(v146 - 24))(v205, v145);
    (*(v187 + 8))(v186, v201);
    v23 = v164;
  }

  (*(v177 + 32))(v178, v195, v23);
  return (*(v95 + 8))(v206, v94);
}

uint64_t sub_1D1A9878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v26;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v10 = sub_1D1E66A7C();
  v8[29] = v10;
  v11 = *(v10 - 8);
  v8[30] = v11;
  v12 = *(v11 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
  v8[34] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  v8[36] = v15;
  v8[37] = *(*(v15 - 8) + 64);
  v8[38] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v8[39] = v16;
  v17 = *(v16 - 8);
  v8[40] = v17;
  v18 = *(v17 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD8, &qword_1D1E961C8);
  v8[43] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[44] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[49] = updated;
  v23 = *(*(updated - 8) + 64) + 15;
  v8[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A98A34, a6, 0);
}

uint64_t sub_1D1A98A34()
{
  if (*(v0 + 184))
  {
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);
    v26 = *(v0 + 200);
    v27 = sub_1D1A9CFA8(*(v0 + 192), 0, 0, 0, 0);
    *(v0 + 408) = *(v26 + 112);

    sub_1D1A97080(v27, v0 + 136);

    v28 = *(v0 + 152);
    *v24 = *(v0 + 136);
    *(v24 + 16) = v28;
    swift_storeEnumTagMultiPayload();
    v29 = swift_task_alloc();
    *(v0 + 416) = v29;
    *v29 = v0;
    v29[1] = sub_1D1A98E9C;
    v30 = *(v0 + 400);

    return sub_1D1AB6894(v30, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 352);
    v31 = *(v0 + 344);
    v32 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    __n = *(v0 + 296);
    v6 = *(v0 + 280);
    v33 = *(v0 + 328);
    v34 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 208);
    v9 = type metadata accessor for StateSnapshot(0);
    *(v0 + 424) = v9;
    v10 = *(v9 - 8);
    *(v0 + 432) = v10;
    v11 = *(v10 + 56);
    *(v0 + 440) = v11;
    *(v0 + 448) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v1, 1, 1, v9);
    v12 = *(v4 + 16);
    v12(v2, v8, v3);
    *(v2 + *(v31 + 36)) = 1;
    v12(v32, v2, v3);
    v12(v33, v32, v3);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    *(v0 + 456) = v16;
    *(v6 + *(v7 + 36)) = 0;
    *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
    *v5 = 0;
    v17 = *(v34 + 28);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
    bzero(v5 + v17, *(*(v18 - 8) + 64));
    sub_1D1741A90(v6, v5 + v17, &qword_1EC649CC8, &qword_1D1E961B8);
    memcpy((v16 + *(*v16 + 96)), v5, __n);
    (*(v4 + 32))(v16 + *(*v16 + 104), v33, v3);
    (*(v4 + 8))(v32, v3);
    sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
    v19 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
    v20 = MEMORY[0x1E69E7CC8];
    *(v0 + 464) = v19;
    *(v0 + 472) = v20;
    v21 = swift_task_alloc();
    *(v0 + 480) = v21;
    *v21 = v0;
    v21[1] = sub_1D1A99368;
    v22 = *(v0 + 456);

    return sub_1D1ACDA64();
  }
}

uint64_t sub_1D1A98E9C()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 200);
  v6 = *v0;

  sub_1D1AA3F34(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9900C, v4, 0);
}

uint64_t sub_1D1A9900C()
{
  v1 = v0[48];
  v2 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  __n = v0[37];
  v6 = v0[35];
  v26 = v0[41];
  v27 = v0[36];
  v7 = v0[34];
  v8 = v0[26];
  v9 = type metadata accessor for StateSnapshot(0);
  v0[53] = v9;
  v10 = *(v9 - 8);
  v0[54] = v10;
  v11 = *(v10 + 56);
  v0[55] = v11;
  v0[56] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v12 = *(v4 + 16);
  v12(v2, v8, v3);
  *(v2 + *(v24 + 36)) = 1;
  v12(v25, v2, v3);
  v12(v26, v25, v3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v0[57] = v16;
  *(v6 + *(v7 + 36)) = 0;
  *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
  *v5 = 0;
  v17 = *(v27 + 28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
  bzero(v5 + v17, *(*(v18 - 8) + 64));
  sub_1D1741A90(v6, v5 + v17, &qword_1EC649CC8, &qword_1D1E961B8);
  memcpy((v16 + *(*v16 + 96)), v5, __n);
  (*(v4 + 32))(v16 + *(*v16 + 104), v26, v3);
  (*(v4 + 8))(v25, v3);
  sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
  v19 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
  v20 = MEMORY[0x1E69E7CC8];
  v0[58] = v19;
  v0[59] = v20;
  v21 = swift_task_alloc();
  v0[60] = v21;
  *v21 = v0;
  v21[1] = sub_1D1A99368;
  v22 = v0[57];

  return sub_1D1ACDA64();
}