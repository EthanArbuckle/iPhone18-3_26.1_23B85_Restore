int64_t sub_1CF409C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1CF409D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v55 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v50 - v19;
  swift_beginAccess();
  v20 = *(a3 + 16);
  v50 = v6;
  v62 = (v6 + 48);
  v63 = (v6 + 56);
  v59 = v20;

  v22 = 0;
  v54 = v16;
  v51 = a2;
  while (1)
  {
    v23 = *(v59 + 16);
    if (v22 == v23)
    {
      v61 = v22;
      v24 = 1;
      goto LABEL_6;
    }

    if (v22 >= v23)
    {
      break;
    }

    sub_1CEFCCBDC(v59 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v22, v16, &qword_1EC4BE670, &qword_1CF9FE4D0);
    v24 = 0;
    v61 = v22 + 1;
LABEL_6:
    v25 = *v63;
    v26 = 1;
    (*v63)(v16, v24, 1, v5);
    v27 = *v62;
    if ((*v62)(v16, 1, v5) != 1)
    {
      v28 = *(v5 + 64);
      v29 = *(v5 + 80);
      v30 = v16[1];
      *&v60 = *v16;
      v52 = v29;
      v53 = v30;
      v31 = sub_1CF9E6448();
      v32 = *(*(v31 - 8) + 32);
      v32(&v11[v28], v16 + v28, v31);
      v33 = swift_allocObject();
      *(v33 + 16) = *(v16 + v52);
      v34 = *(v5 + 64);
      v35 = v58;
      v36 = &v58[*(v5 + 80)];
      v37 = v53;
      *v58 = v60;
      *(v35 + 1) = v37;
      v38 = &v11[v28];
      a2 = v51;
      v32(&v35[v34], v38, v31);
      v26 = 0;
      *v36 = sub_1CF485B44;
      v36[1] = v33;
    }

    v39 = v58;
    v25(v58, v26, 1, v5);
    v40 = v57;
    sub_1CEFE55D0(v39, v57, &unk_1EC4C04F0, &qword_1CFA12B10);
    if (v27(v40, 1, v5) == 1)
    {
    }

    v41 = *(v5 + 64);
    v42 = *(v5 + 80);
    *v11 = *v40;
    v43 = sub_1CF9E6448();
    v44 = *(v43 - 8);
    v45 = *(v44 + 32);
    v60 = *&v40[v42];
    v45(&v11[v41], &v40[v41], v43);
    *&v11[v42] = v60;
    v46 = v55;
    sub_1CEFCCBDC(v11, v55, &qword_1EC4BE670, &qword_1CF9FE4D0);
    sub_1CEFD0A98(*v46);
    v47 = *(v5 + 64);
    v48 = v46 + *(v5 + 80);
    v49 = *(v48 + 1);
    (*v48)(v56, a2);

    sub_1CEFCCC44(v11, &qword_1EC4BE670, &qword_1CF9FE4D0);
    result = (*(v44 + 8))(v46 + v47, v43);
    v16 = v54;
    v22 = v61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF40A1C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v89 = a3;
  v88 = a1;
  v92 = sub_1CF9E6118();
  v5 = *(v92 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v8 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = &qword_1CF9FE4D0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v82[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v82[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v82[-v18];
  v95 = &v82[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v98 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v97 = &v82[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v82[-v26];
  swift_beginAccess();
  v27 = *(a2 + 16);
  v28 = *(v27 + 16);
  v84 = v19 + 8;
  v103 = (v11 + 56);
  v85 = v11;
  v102 = (v11 + 48);
  v91 = (v5 + 8);
  v86 = v27;

  v30 = 0;
  *&v31 = 136315394;
  v83 = v31;
  v93 = v8;
  v96 = v15;
  v87 = v28;
  while (1)
  {
    v53 = v98;
    if (v30 == v28)
    {
      v54 = 1;
      v100 = v28;
      goto LABEL_9;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v30 >= *(v86 + 16))
    {
      goto LABEL_16;
    }

    sub_1CEFCCBDC(v86 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v30, v98, &qword_1EC4BE670, v9);
    v54 = 0;
    v100 = v30 + 1;
LABEL_9:
    v55 = *v103;
    v56 = 1;
    (*v103)(v53, v54, 1, v10);
    v106 = *v102;
    if (v106(v53, 1, v10) != 1)
    {
      v57 = *(v10 + 64);
      v58 = *(v10 + 80);
      v59 = *(v53 + 1);
      v104 = *v53;
      *&v99 = v59;
      v60 = sub_1CF9E6448();
      v61 = *(*(v60 - 8) + 32);
      v62 = v95;
      v61(&v95[v57], &v53[v57], v60);
      v63 = swift_allocObject();
      v64 = v97;
      *(v63 + 16) = *&v98[v58];
      v65 = *(v10 + 64);
      v66 = (v64 + *(v10 + 80));
      v67 = v99;
      *v64 = v104;
      v64[1] = v67;
      v68 = &v62[v57];
      v8 = v93;
      v61(v64 + v65, v68, v60);
      v15 = v96;
      v9 = &qword_1CF9FE4D0;
      v56 = 0;
      *v66 = sub_1CF485B44;
      v66[1] = v63;
    }

    v69 = v97;
    v55(v97, v56, 1, v10);
    v70 = v94;
    sub_1CEFE55D0(v69, v94, &unk_1EC4C04F0, &qword_1CFA12B10);
    if (v106(v70, 1, v10) == 1)
    {
    }

    v71 = *(v10 + 64);
    v72 = *(v10 + 80);
    v73 = v101;
    *v101 = *v70;
    v74 = sub_1CF9E6448();
    v104 = *(v74 - 8);
    v75 = *(v104 + 32);
    v99 = *&v70[v72];
    v106 = v74;
    v75(&v73[v71], &v70[v71]);
    *&v73[v72] = v99;
    v76 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(v73, v15, &qword_1EC4BE670, v9);
    v77 = v15;
    v78 = v89;
    v79 = sub_1CF9E6108();
    v80 = v9;
    v81 = sub_1CF9E7288();
    if (os_log_type_enabled(v79, v81))
    {
      v32 = swift_slowAlloc();
      *&v99 = swift_slowAlloc();
      v105[0] = v99;
      *v32 = v83;
      v33 = NSFileProviderItemIdentifier.description.getter();
      v35 = v34;

      v36 = sub_1CEFD0DF0(v33, v35, v105);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = v80;
      v38 = v95;
      sub_1CEFCCBDC(v77, v95, &qword_1EC4BE670, v37);
      v39 = *v38;
      v40 = *(v10 + 64);
      v41 = *&v84[*(v10 + 80)];

      (*(v104 + 8))(v38 + v40, v106);
      sub_1CEFCCC44(v77, &qword_1EC4BE670, v37);
      v42 = sub_1CF913458(v39);
      v44 = v43;
      sub_1CEFD0A98(v39);
      v45 = v42;
      v8 = v93;
      v46 = sub_1CEFD0DF0(v45, v44, v105);

      *(v32 + 14) = v46;
      _os_log_impl(&dword_1CEFC7000, v79, v81, "propagation <fp:%s reason:%s> completed and flushed", v32, 0x16u);
      v47 = v99;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);

      (*v91)(v8, v92);
      v9 = &qword_1CF9FE4D0;
    }

    else
    {
      sub_1CEFCCC44(v77, &qword_1EC4BE670, v80);

      (*v91)(v8, v92);
      v9 = v80;
      v38 = v95;
    }

    v48 = v101;
    sub_1CEFCCBDC(v101, v38, &qword_1EC4BE670, v9);
    sub_1CEFD0A98(*v38);
    v49 = *(v10 + 64);
    v50 = v38 + *(v10 + 80);
    v52 = *v50;
    v51 = *(v50 + 1);
    sub_1CF1A91AC(v88, v105);
    v52(v105, v90);

    sub_1CEFCCC44(v105, &unk_1EC4C1B30, &qword_1CFA05300);
    sub_1CEFCCC44(v48, &qword_1EC4BE670, v9);
    result = (*(v104 + 8))(v38 + v49, v106);
    v15 = v96;
    v28 = v87;
    v30 = v100;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF40AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v57 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - v18;
  swift_beginAccess();
  v19 = *(a3 + 16);
  v20 = *(v19 + 16);
  v51 = v6;
  v64 = (v6 + 48);
  v65 = (v6 + 56);
  v53 = v19;

  v22 = 0;
  v56 = v20;
  v52 = a1;
  while (1)
  {
    v23 = v61;
    if (v22 == v20)
    {
      v24 = 1;
      v63 = v20;
      goto LABEL_7;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *(v53 + 16))
    {
      goto LABEL_13;
    }

    sub_1CEFCCBDC(v53 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v22, v61, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v24 = 0;
    v63 = v22 + 1;
LABEL_7:
    v25 = *v65;
    v26 = 1;
    (*v65)(v23, v24, 1, v5);
    v27 = *v64;
    if ((*v64)(v23, 1, v5) != 1)
    {
      v28 = *(v5 + 64);
      v29 = *(v5 + 80);
      v30 = v61;
      v31 = *(v61 + 1);
      *&v62 = *v61;
      v54 = v29;
      v55 = v31;
      v32 = sub_1CF9E6448();
      v33 = *(*(v32 - 8) + 32);
      v33(&v11[v28], &v30[v28], v32);
      v34 = swift_allocObject();
      *(v34 + 16) = *&v30[v54];
      v35 = *(v5 + 64);
      v36 = v60;
      v37 = &v60[*(v5 + 80)];
      v38 = v55;
      *v60 = v62;
      *(v36 + 1) = v38;
      v33(&v36[v35], &v11[v28], v32);
      v26 = 0;
      *v37 = sub_1CF485B44;
      v37[1] = v34;
      a1 = v52;
    }

    v39 = v60;
    v25(v60, v26, 1, v5);
    v40 = v59;
    sub_1CEFE55D0(v39, v59, &unk_1EC4C04D0, &unk_1CFA12B00);
    if (v27(v40, 1, v5) == 1)
    {
    }

    v41 = *(v5 + 64);
    v42 = *(v5 + 80);
    *v11 = *v40;
    v43 = sub_1CF9E6448();
    v44 = *(v43 - 8);
    v45 = *(v44 + 32);
    v62 = *&v40[v42];
    v45(&v11[v41], &v40[v41], v43);
    *&v11[v42] = v62;
    v46 = v57;
    sub_1CEFCCBDC(v11, v57, &unk_1EC4C5230, &unk_1CF9FE4C0);
    sub_1CEFD0A98(*v46);
    v47 = *(v5 + 64);
    v48 = v46 + *(v5 + 80);
    v49 = *(v48 + 1);
    (*v48)(a1, v58);

    sub_1CEFCCC44(v11, &unk_1EC4C5230, &unk_1CF9FE4C0);
    result = (*(v44 + 8))(v46 + v47, v43);
    v20 = v56;
    v22 = v63;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1CF40AF0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v100 = a5;
  v93 = a4;
  v101 = a1;
  v103 = sub_1CF9E6118();
  v7 = *(v103 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v99 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v109 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v106 = (&v87 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v87 - v27;
  swift_beginAccess();
  v28 = *(a2 + 16);
  v105 = v19;
  v92 = v19 + 8;
  v113 = (v12 + 56);
  v94 = v12;
  v112 = (v12 + 48);
  v29 = *(v28 + 16);
  v102 = (v7 + 8);
  v90 = a3;
  v30 = 1953460082;
  if (a3)
  {
    v30 = 0x6873617274;
  }

  v89 = v30;
  v31 = 0xE500000000000000;
  if (!a3)
  {
    v31 = 0xE400000000000000;
  }

  v88 = v31;
  v95 = v28;

  v33 = 0;
  *&v34 = 136315394;
  v91 = v34;
  v110 = v10;
  v111 = v24;
  v115 = v11;
  v98 = v29;
  while (1)
  {
    if (v33 == v29)
    {
      v42 = 1;
      v108 = v29;
      goto LABEL_13;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= *(v95 + 16))
    {
      goto LABEL_24;
    }

    sub_1CEFCCBDC(v95 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v33, v24, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v42 = 0;
    v108 = v33 + 1;
LABEL_13:
    v43 = *v113;
    v44 = 1;
    (*v113)(v24, v42, 1, v11);
    v45 = *v112;
    if ((*v112)(v24, 1, v11) != 1)
    {
      v46 = *(v11 + 64);
      v47 = *(v11 + 80);
      v48 = *(v24 + 1);
      v114 = *v24;
      *&v107 = v48;
      v49 = sub_1CF9E6448();
      v50 = *(*(v49 - 8) + 32);
      v51 = v105;
      v50(v105 + v46, &v111[v46], v49);
      v52 = swift_allocObject();
      *(v52 + 16) = *&v111[v47];
      v53 = *(v115 + 64);
      v54 = v106;
      v55 = (v106 + *(v115 + 80));
      v56 = v107;
      *v106 = v114;
      v54[1] = v56;
      v57 = v51 + v46;
      v10 = v110;
      v50(v54 + v53, v57, v49);
      v11 = v115;
      v44 = 0;
      *v55 = sub_1CF485B44;
      v55[1] = v52;
    }

    v58 = v106;
    v43(v106, v44, 1, v11);
    v59 = v104;
    sub_1CEFE55D0(v58, v104, &unk_1EC4C04D0, &unk_1CFA12B00);
    if (v45(v59, 1, v11) == 1)
    {
    }

    v60 = *(v11 + 64);
    v61 = *(v11 + 80);
    v62 = v109;
    *v109 = *v59;
    v63 = sub_1CF9E6448();
    v64 = *(v63 - 8);
    v65 = *(v64 + 32);
    v107 = *&v59[v61];
    v65(&v62[v60], &v59[v60], v63);
    *&v62[v61] = v107;
    v66 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v67 = v99;
    sub_1CEFCCBDC(v62, v99, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v68 = sub_1CF9E6108();
    v69 = sub_1CF9E7288();
    v70 = os_log_type_enabled(v68, v69);
    v114 = v63;
    if (v70)
    {
      LODWORD(v107) = v69;
      v71 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v119 = v97;
      *v71 = v91;
      v96 = v68;
      v35 = v64;
      if (v93)
      {
        v72 = v89;
        v73 = v88;
        v36 = v105;
        if (v93 == 1)
        {
          v117 = 0x284449656C6966;
          v118 = 0xE700000000000000;
          v116 = v90;
          v74 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v74);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v72 = v117;
          v73 = v118;
        }
      }

      else
      {
        v117 = 0x284449636F64;
        v118 = 0xE600000000000000;
        LODWORD(v116) = v90;
        v75 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v75);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v72 = v117;
        v73 = v118;
        v36 = v105;
      }

      v76 = sub_1CEFD0DF0(v72, v73, &v119);

      *(v71 + 4) = v76;
      *(v71 + 12) = 2080;
      sub_1CEFCCBDC(v67, v36, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v77 = *v36;
      v11 = v115;
      v78 = v67;
      v79 = *(v115 + 64);
      v80 = *&v92[*(v115 + 80)];

      (*(v35 + 8))(v36 + v79, v114);
      sub_1CEFCCC44(v78, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v81 = sub_1CEFD11AC(v77);
      v83 = v82;
      sub_1CEFD0A98(v77);
      v84 = sub_1CEFD0DF0(v81, v83, &v119);

      *(v71 + 14) = v84;
      v85 = v96;
      _os_log_impl(&dword_1CEFC7000, v96, v107, "propagation <fs:%s reason:%s> completed and flushed", v71, 0x16u);
      v86 = v97;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v86, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);

      (*v102)(v110, v103);
    }

    else
    {
      sub_1CEFCCC44(v67, &unk_1EC4C5230, &unk_1CF9FE4C0);

      (*v102)(v10, v103);
      v35 = v64;
      v11 = v115;
      v36 = v105;
    }

    v37 = v109;
    sub_1CEFCCBDC(v109, v36, &unk_1EC4C5230, &unk_1CF9FE4C0);
    sub_1CEFD0A98(*v36);
    v38 = *(v11 + 64);
    v39 = v36 + *(v11 + 80);
    v41 = *v39;
    v40 = *(v39 + 1);
    sub_1CF1A91AC(v101, &v117);
    v41(&v117, v100);

    sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
    sub_1CEFCCC44(v37, &unk_1EC4C5230, &unk_1CF9FE4C0);
    result = (*(v35 + 8))(v36 + v38, v114);
    v29 = v98;
    v33 = v108;
    v10 = v110;
    v24 = v111;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF40B8D0(uint64_t (*a1)(void *), uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4[82] & 0x20) == 0)
  {
    return a1(a3);
  }

  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Materialization or eviction waiting for flush", v17, 2u);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = *(*a4 + 456);
  swift_retain_n();
  v21 = a3;
  v20("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF481760, v18, sub_1CF481768, v19);
}

uint64_t sub_1CF40BB34(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = a2;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 4) = v20;
    *v18 = v21;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "materializtion after injection failed with %@ skipping error", v17, 0xCu);
    sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);
    a3 = v25;
  }

  (*(v9 + 8))(v12, v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  return a3(*(a5 + *(v22 + 96)), *(a5 + *(v22 + 96) + 8), 0);
}

uint64_t sub_1CF40BD4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  sub_1CEFCCBDC(a2, &v29 - v15, &unk_1EC4C04C0, &qword_1CFA07B10);
  sub_1CEFCCBDC(v16, v14, &unk_1EC4C04C0, &qword_1CFA07B10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = a3;
  sub_1CEFE55D0(v16, v18 + v17, &unk_1EC4C04C0, &qword_1CFA07B10);
  if ((*(a3 + 82) & 0x20) != 0)
  {
    sub_1CEFCCC44(v14, &unk_1EC4C04C0, &qword_1CFA07B10);
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "Materialization or eviction waiting for flush", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v29 + 8))(v9, v30);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1CF4816E4;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    v26[2] = sub_1CF4816E4;
    v26[3] = v18;
    v26[4] = a1;
    v27 = *(*v19 + 456);
    swift_retain_n();
    v28 = a1;
    v27("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF481760, v25, sub_1CF481768, v26);
  }

  else
  {
    sub_1CF40C108(a1, v14);

    return sub_1CEFCCC44(v14, &unk_1EC4C04C0, &qword_1CFA07B10);
  }
}

uint64_t sub_1CF40C108(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v67 = (&v55 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - v16;
  v17 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) + 56));
  v18 = *(v17 + 64);
  v56 = v17 + 64;
  v57 = v4;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v55 = (v19 + 63) >> 6;
  v70 = (v4 + 48);
  v71 = (v4 + 56);
  v58 = v17;

  v23 = 0;
  v62 = v13;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_11:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_1CEFCCBDC(*(v58 + 56) + *(v57 + 72) * (v26 | (v24 << 6)), v13, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v27 = 0;
      v69 = v24;
LABEL_12:
      v28 = *v71;
      v29 = 1;
      (*v71)(v13, v27, 1, v3);
      v30 = *v70;
      if ((*v70)(v13, 1, v3) != 1)
      {
        v31 = *(v3 + 80);
        v32 = *(v3 + 96);
        v61 = *v13;
        v33 = *(v13 + 2);
        v59 = v32;
        v60 = v33;
        v34 = sub_1CF9E6448();
        v35 = *(*(v34 - 8) + 32);
        *&v68 = v30;
        v36 = v66;
        v35(&v66[v31], &v13[v31], v34);
        v37 = swift_allocObject();
        *(v37 + 16) = *&v13[v59];
        v38 = *(v3 + 80);
        v39 = v67;
        v40 = (v67 + *(v3 + 96));
        *v67 = v61;
        *(v39 + 2) = v60;
        v35(v39 + v38, &v36[v31], v34);
        v30 = v68;
        v29 = 0;
        *v40 = sub_1CF485B60;
        v40[1] = v37;
      }

      v41 = v67;
      v28(v67, v29, 1, v3);
      v42 = v65;
      sub_1CEFE55D0(v41, v65, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v30(v42, 1, v3) == 1)
      {
      }

      v43 = *(v42 + 16);
      v44 = *(v3 + 80);
      v45 = *(v3 + 96);
      v46 = v66;
      *v66 = *v42;
      *(v46 + 16) = v43;
      v47 = sub_1CF9E6448();
      v48 = *(v47 - 8);
      v49 = *(v48 + 32);
      v68 = *(v42 + v45);
      v49(v46 + v44, v42 + v44, v47);
      *(v46 + v45) = v68;
      v50 = v63;
      sub_1CEFCCBDC(v46, v63, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CEFD0A98(*v50);

      v51 = *(v3 + 80);
      v52 = v50 + *(v3 + 96);
      v53 = *(v52 + 8);
      (*v52)(v64);

      v54 = v46;
      v13 = v62;
      sub_1CEFCCC44(v54, &unk_1EC4C04B0, &unk_1CF9FCB20);
      result = (*(v48 + 8))(v50 + v51, v47);
      v23 = v69;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v55 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v55;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v55)
      {
        v69 = v25 - 1;
        v21 = 0;
        v27 = 1;
        goto LABEL_12;
      }

      v21 = *(v56 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF40C648(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, unsigned __int8 a11)
{
  v53 = a7;
  v54 = a8;
  v48 = a4;
  v49 = a5;
  v44 = a3;
  v47 = a2;
  v45 = a1;
  v52 = a11;
  v50 = a9;
  v51 = a10;
  v57 = sub_1CF9E63A8();
  v60 = *(v57 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v43 - v22;
  v46 = *(a3 + 64);
  sub_1CEFCCBDC(a6, &v43 - v22, &unk_1EC4C04C0, &qword_1CFA07B10);
  v24 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v25 = (v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v29 = v47 & 1;
  *(v28 + 24) = v47 & 1;
  v30 = v49;
  *(v28 + 32) = v48;
  *(v28 + 40) = v30;
  sub_1CEFE55D0(v23, v28 + v24, &unk_1EC4C04C0, &qword_1CFA07B10);
  v31 = (v28 + v25);
  v32 = v54;
  *v31 = v53;
  v31[1] = v32;
  v34 = v50;
  v33 = v51;
  *(v28 + v26) = v50;
  *(v28 + v27) = v44;
  v35 = v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v35 = v33;
  *(v35 + 8) = v52;
  aBlock[4] = sub_1CF48134C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_984;
  v36 = _Block_copy(aBlock);
  v37 = v46;
  sub_1CEFCF530(v45, v29);

  v38 = v34;

  v39 = v55;
  sub_1CF9E63F8();
  v61 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v41 = v56;
  v40 = v57;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v39, v41, v36);
  _Block_release(v36);

  (*(v60 + 8))(v41, v40);
  (*(v58 + 8))(v39, v59);
}

char *sub_1CF40CAC4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), void (**a4)(uint64_t, uint64_t, uint64_t, uint64_t), id *a5, void (*a6)(void, id, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v198 = a8;
  v197 = a7;
  v196 = a6;
  v250 = a3;
  v251 = a5;
  v248 = a4;
  v194 = sub_1CF9E63D8();
  *&v253 = *(v194 - 8);
  v13 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v222 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v245 = &v190 - v19;
  v221 = sub_1CF9E6068();
  v20 = *(v221 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v219 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v237 = &v190 - v27;
  v218 = type metadata accessor for Signpost(0);
  v217 = *(v218 - 8);
  v28 = *(v217 + 64);
  v29 = MEMORY[0x1EEE9AC00](v218);
  v216 = &v190 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v215 = &v190 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v236 = &v190 - v32;
  v255 = sub_1CF9E6448();
  v33 = *(v255 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v214 = v35;
  v213 = &v190 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v36 = *(v252 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v252);
  v40 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v190 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v254 = (&v190 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v190 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v190 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v242 = (&v190 - v54);
  MEMORY[0x1EEE9AC00](v53);
  v230 = &v190 - v55;
  if (a2)
  {
    return v250(a1);
  }

  v211 = a11;
  v235 = a10;
  v244 = a9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v58 = *(v251 + *(v57 + 56));
  v59 = *(v58 + 64);
  v229 = v58 + 64;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v250 = (v61 & v59);
  v210 = qword_1EDEBBC38;
  v227 = v43;
  v226 = v43 + 8;
  v223 = v40 + 8;
  v231 = v47;
  v209 = v47 + 8;
  v195 = (v60 + 63) >> 6;
  v247 = (v36 + 48);
  v248 = (v36 + 56);
  v251 = (v33 + 32);
  v62 = (v33 + 8);
  v234 = &v257;
  v208 = v33 + 16;
  v207 = (v20 + 56);
  v206 = (v20 + 48);
  v192 = (v20 + 32);
  v205 = (v20 + 16);
  v204 = (v20 + 8);
  v203 = (v33 + 56);
  v202 = v28 + 7;
  v201 = (v33 + 48);
  v191 = (v253 + 8);
  v224 = v58;

  v63 = 0;
  v199 = a1;
  v190 = (a1 + 40);
  v200 = xmmword_1CF9FA450;
  v212 = v33;
  v64 = v252;
  v225 = v36;
  v228 = v40;
  v249 = v52;
  v238 = (v33 + 8);
  while (1)
  {
    v65 = v250;
    if (!v250)
    {
      break;
    }

    v66 = v63;
LABEL_18:
    v250 = ((v65 - 1) & v65);
    v69 = *(v224 + 56) + *(v36 + 72) * (__clz(__rbit64(v65)) | (v66 << 6));
    v70 = v249;
    sub_1CEFCCBDC(v69, v249, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v71 = 0;
LABEL_19:
    v72 = *v248;
    v73 = 1;
    (*v248)(v70, v71, 1, v64);
    v74 = *v247;
    if ((*v247)(v70, 1, v64) != 1)
    {
      v75 = *(v64 + 80);
      v76 = *(v64 + 96);
      v253 = *v70;
      v77 = *(v70 + 16);
      v246 = *v251;
      v78 = v231;
      v79 = v255;
      v246(v231 + v75, &v249[v75], v255);
      v80 = swift_allocObject();
      *(v80 + 16) = *&v249[v76];
      v81 = *(v252 + 80);
      v82 = v242;
      v83 = (v242 + *(v252 + 96));
      *v242 = v253;
      *(v82 + 2) = v77;
      v246(v82 + v81, v78 + v75, v79);
      v62 = v238;
      v64 = v252;
      v73 = 0;
      *v83 = sub_1CF485B60;
      v83[1] = v80;
    }

    v84 = v242;
    v72(v242, v73, 1, v64);
    v85 = v230;
    sub_1CEFE55D0(v84, v230, &qword_1EC4BE1C0, &unk_1CFA058B0);
    if (v74(v85, 1, v64) == 1)
    {
    }

    v86 = *(v85 + 8);
    v87 = *(v85 + 16);
    v88 = *(v64 + 80);
    v89 = *(v64 + 96);
    v91 = *(v85 + v89);
    v90 = *(v85 + v89 + 8);
    v92 = v254;
    v93 = (v254 + v89);
    v241 = *v85;
    *v254 = v241;
    v92[1] = v86;
    v243 = v86;
    v92[2] = v87;
    v94 = *v251;
    v239 = v92 + v88;
    v95 = v255;
    v240 = v94;
    v94();
    *&v253 = v91;
    *v93 = v91;
    v93[1] = v90;
    v246 = v90;
    v96 = v227;
    sub_1CEFCCBDC(v92, v227, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v97 = *v96;

    v98 = *(v64 + 80);
    v99 = *&v226[*(v64 + 96)];

    v100 = sub_1CF90C94C(v97);
    sub_1CEFD0A98(v97);
    if (v100)
    {
      v101 = *v62;
      (*v62)(v96 + v98, v95);
      v102 = [v100 selectedForMaterialization];
      v103 = v228;
      if (v102)
      {
        v196(v253, v246, v198);

        goto LABEL_7;
      }
    }

    else
    {
      v101 = *v62;
      (*v62)(v96 + v98, v95);
      v103 = v228;
    }

    sub_1CEFCCBDC(v254, v103, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v104 = *v103;

    v105 = *(v64 + 80);
    v106 = *&v223[*(v64 + 96)];

    v107 = sub_1CF90C94C(v104);
    sub_1CEFD0A98(v104);
    if (v107)
    {
      v108 = [v107 requestedExtent];
      v110 = v109;

      result = (v101)(v103 + v105, v95);
      if (v108 != -1 && v110 != -1)
      {
        v111 = &v108[v110];
        if (__OFADD__(v108, v110))
        {
          goto LABEL_58;
        }

        if (v111 < v108)
        {
          goto LABEL_59;
        }

        v112 = *(v199 + 16) + 1;
        v113 = v190;
        while (--v112)
        {
          v114 = *(v113 - 1);
          if (v111 < v114)
          {
            break;
          }

          v116 = *v113;
          v113 += 2;
          v115 = v116;
          if (v108 >= v114 && v108 < v115 && v115 >= v111)
          {
            v196(v253, v246, v198);
            v64 = v252;
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v101(v103 + v105, v95);
    }

    v119 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v119 setCancellable_];
    v120 = swift_allocObject();
    v121 = v244;
    swift_weakInit();
    v122 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v123 = swift_allocObject();
    *(v123 + 16) = v120;
    *(v123 + 24) = v122;
    *(v123 + 32) = v235;
    v124 = v211;
    *(v123 + 40) = v211;
    v259 = sub_1CF481424;
    v260 = v123;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v257 = sub_1CEFCA444;
    v258 = &block_descriptor_1024;
    v125 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF481424);

    [v119 setCancellationHandler_];
    _Block_release(v125);

    v126 = v255;

    v127 = v212;
    v128 = v213;
    (*(v212 + 16))(v213, v239, v126);
    v129 = (*(v127 + 80) + 80) & ~*(v127 + 80);
    v130 = swift_allocObject();
    v131 = v253;
    v132 = v246;
    *(v130 + 16) = v253;
    *(v130 + 24) = v132;
    v133 = v235;
    *(v130 + 32) = v121;
    *(v130 + 40) = v133;
    *(v130 + 48) = v124;
    v134 = v241;
    v135 = v243;
    *(v130 + 56) = v241;
    *(v130 + 64) = v135;
    *(v130 + 72) = v119;
    v243 = v130;
    (v240)(v130 + v129, v128, v126);
    v136 = swift_allocObject();
    *(v136 + 16) = v131;
    *(v136 + 24) = v132;
    *&v253 = v136;
    v137 = *(v121 + v210);
    swift_retain_n();

    sub_1CEFD09A0(v134);
    v138 = v119;
    v246 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v139 = qword_1EDEBBE40;
    v140 = v237;
    v141 = v221;
    (*v207)(v237, 1, 1, v221);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v142 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v142);

    v143 = *(&aBlock + 1);
    v241 = aBlock;
    v144 = v219;
    sub_1CEFCCBDC(v140, v219, &unk_1EC4BED20, &unk_1CFA00700);
    v145 = *v206;
    v146 = (*v206)(v144, 1, v141);
    v147 = v220;
    v232 = v138;
    if (v146 == 1)
    {
      v148 = v139;
      sub_1CF9E6048();
      if (v145(v144, 1, v141) != 1)
      {
        sub_1CEFCCC44(v144, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*v192)(v220, v144, v141);
    }

    v149 = v236;
    (*v205)(v236, v147, v141);
    v150 = v218;
    *(v149 + *(v218 + 20)) = v139;
    v151 = v149 + *(v150 + 24);
    *v151 = "DB queue wait";
    *(v151 + 8) = 13;
    *(v151 + 16) = 2;
    v152 = v139;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v153 = swift_allocObject();
    *(v153 + 16) = v200;
    *(v153 + 56) = MEMORY[0x1E69E6158];
    *(v153 + 64) = sub_1CEFD51C4();
    *(v153 + 32) = v241;
    *(v153 + 40) = v143;
    sub_1CF9E6028();

    (*v204)(v147, v141);
    sub_1CEFCCC44(v237, &unk_1EC4BED20, &unk_1CFA00700);
    v239 = *(v244 + 168);
    v241 = *(v244 + 64);
    (*v203)(v245, 1, 1, v126);
    v154 = v215;
    sub_1CEFDA214(v149, v215, type metadata accessor for Signpost);
    v155 = (*(v217 + 80) + 16) & ~*(v217 + 80);
    v156 = (v202 + v155) & 0xFFFFFFFFFFFFFFF8;
    v157 = swift_allocObject();
    v233 = type metadata accessor for Signpost;
    sub_1CEFD9F8C(v154, v157 + v155, type metadata accessor for Signpost);
    v158 = (v157 + v156);
    v240 = sub_1CF4814BC;
    v159 = v253;
    *v158 = sub_1CF4814BC;
    v158[1] = v159;
    v160 = v216;
    sub_1CEFDA214(v149, v216, type metadata accessor for Signpost);
    v161 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
    v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
    v163 = (v162 + 25) & 0xFFFFFFFFFFFFFFF8;
    v164 = (v163 + 23) & 0xFFFFFFFFFFFFFFF8;
    v165 = swift_allocObject();
    sub_1CEFD9F8C(v160, v165 + v155, v233);
    v166 = (v165 + v156);
    v167 = v255;
    *v166 = sub_1CF045408;
    v166[1] = 0;
    *(v165 + v161) = v244;
    v168 = v165 + v162;
    *v168 = "materialize(_:request:options:qos:completion:)";
    *(v168 + 8) = 46;
    *(v168 + 16) = 2;
    v169 = (v165 + v163);
    v170 = v253;
    *v169 = v240;
    v169[1] = v170;
    v171 = v165;
    v172 = (v165 + v164);
    v173 = v243;
    *v172 = sub_1CF481430;
    v172[1] = v173;
    v174 = swift_allocObject();
    v174[2] = sub_1CF485AA8;
    v174[3] = v157;
    v175 = v239;
    v174[4] = v239;
    swift_retain_n();

    v240 = v157;

    v176 = fpfs_current_log();
    v239 = *(v175 + 2);
    v177 = v222;
    sub_1CEFCCBDC(v245, v222, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*v201)(v177, 1, v167) == 1)
    {
      sub_1CEFCCC44(v177, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v233) = 0;
    }

    else
    {
      v178 = v193;
      sub_1CF9E6438();
      (*v238)(v177, v167);
      LODWORD(v233) = sub_1CF9E63C8();
      (*v191)(v178, v194);
    }

    v64 = v252;
    v179 = v231;
    v180 = swift_allocObject();
    v180[2] = v176;
    v180[3] = sub_1CF4858EC;
    v180[4] = v171;
    v259 = sub_1CF2BA17C;
    v260 = v180;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v257 = sub_1CEFCA444;
    v258 = &block_descriptor_1018;
    v181 = _Block_copy(&aBlock);
    v182 = v176;

    v259 = sub_1CF2BA180;
    v260 = v174;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v257 = sub_1CEFCA444;
    v258 = &block_descriptor_1021_0;
    v183 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v239, v241, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v233, v181, v183);
    _Block_release(v183);
    _Block_release(v181);

    sub_1CEFCCC44(v245, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5278(v236, type metadata accessor for Signpost);
    v184 = v246;
    v185 = fpfs_adopt_log();

    sub_1CEFCCBDC(v254, v179, &unk_1EC4C04B0, &unk_1CF9FCB20);
    sub_1CEFD0A98(*v179);
    v186 = v179[2];
    v187 = *(v64 + 80);
    v188 = *&v209[*(v64 + 96)];

    v62 = v238;
    (*v238)(v179 + v187, v255);
    result = [v186 totalUnitCount];
    if (__OFADD__(result, 1))
    {
      goto LABEL_57;
    }

    [v186 setTotalUnitCount_];
    v189 = v232;
    [v186 addChild:v232 withPendingUnitCount:1];

LABEL_7:
    result = sub_1CEFCCC44(v254, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v36 = v225;
  }

  if (v195 <= v63 + 1)
  {
    v67 = v63 + 1;
  }

  else
  {
    v67 = v195;
  }

  v68 = v67 - 1;
  while (1)
  {
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v66 >= v195)
    {
      v250 = 0;
      v71 = 1;
      v63 = v68;
      v70 = v249;
      goto LABEL_19;
    }

    v65 = *(v229 + 8 * v66);
    ++v63;
    if (v65)
    {
      v63 = v66;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void sub_1CF40E274(int a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v499) = a8;
  v496 = a6;
  v497 = a7;
  v494 = a3;
  v495 = a5;
  v500 = a4;
  v491 = a2;
  LODWORD(v498) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v490 = &v468 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v483 = &v468 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v485 = &v468 - v14;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *&v488 = *(v489 - 8);
  v15 = *(v488 + 64);
  MEMORY[0x1EEE9AC00](v489);
  v484 = &v468 - v16;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v17 = *(*(v486 - 8) + 64);
  MEMORY[0x1EEE9AC00](v486);
  v487 = (&v468 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v468 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v468 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v468 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v468 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v492 = *(v32 - 8);
  v493 = v32;
  v33 = *(v492 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v468 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v468 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v468 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v468 - v43;
  v45 = sub_1CF9E6118();
  v46 = v497;
  v47 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v60 = &v468 - v59;
  v519 = v46;
  v520 = v499;
  v61 = *v56;
  v62 = *(v56 + 8);
  v63 = *(v56 + 24);
  v64 = *(v56 + 136);
  if (*(v56 + 137) == 6)
  {
    v65 = 4096;
  }

  else
  {
    v65 = 69632;
  }

  v66 = v498;
  if (v498 > 5u)
  {
    if (v498 <= 0x16u)
    {
      v67 = v496;
      if (v498 == 6)
      {
        if (v62 != 255)
        {
          if (*(v495[4] + 32) == 1 && (!*(v56 + 272) || v64 == 3))
          {
            ++v65;
          }

          v69 = v56;
          LOBYTE(v517[0]) = 0;
          *&v518[0] = v61;
          WORD4(v518[0]) = v62;
          LOBYTE(v518[1]) = 1;
          WORD1(v518[7]) = 2570;
          v70 = v61;
          v71 = v62;
          v72 = *(*v496 + 136);
          v73 = v65;
          v72(v518);
          v499 = v73;
          if ((v73 & 0x10000) != 0)
          {
            LOBYTE(v516[0]) = 0;
            *&v518[0] = v70;
            WORD4(v518[0]) = v71;
            LOBYTE(v518[1]) = 3;
            BYTE2(v518[5]) = 10;
            BYTE3(v518[7]) = 9;
            v72(v518);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
          v74 = swift_allocObject();
          *(v74 + 152) = v71;
          *(v74 + 16) = 0u;
          *(v74 + 32) = 0u;
          *(v74 + 48) = 1;
          *(v74 + 56) = 0u;
          *(v74 + 72) = 0u;
          *(v74 + 88) = 0;
          *(v74 + 120) = *(v69 + 472);
          *(v74 + 136) = v499;
          *(v74 + 144) = v70;
          *(v74 + 96) = xmmword_1CFA04E20;
          *(v74 + 112) = 0;
          v75 = sub_1CF47AFBC(0x2000);

LABEL_17:
          (*(*v67 + 144))(v75);
LABEL_63:

          return;
        }

        goto LABEL_290;
      }

      if (v498 == 12)
      {
        if (v62 == 255)
        {
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
          goto LABEL_296;
        }

        v161 = 128;
        if (!*(v56 + 248))
        {
          v161 = 32;
        }

        v162 = v161 | v65;
        LOBYTE(v517[0]) = 0;
        *&v518[0] = v61;
        WORD4(v518[0]) = v62;
        v518[1] = 0uLL;
        LOBYTE(v518[2]) = 2;
        WORD1(v518[7]) = 2571;
        v163 = v61;
        v164 = v62;
        v165 = v56;
        (*(*v496 + 136))(v518);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
        v166 = swift_allocObject();
        *(v166 + 160) = 0;
        *(v166 + 168) = -1;
        *(v166 + 152) = v164;
        *(v166 + 16) = 0u;
        *(v166 + 32) = 0u;
        *(v166 + 48) = 1;
        *(v166 + 56) = 0u;
        *(v166 + 72) = 0u;
        *(v166 + 88) = 0;
        *(v166 + 96) = xmmword_1CF9FEC30;
        *(v166 + 112) = 0;
        *(v166 + 120) = *(v165 + 472);
        *(v166 + 136) = v162;
        *(v166 + 144) = v163;
        (*(*v67 + 144))();

        return;
      }

LABEL_301:
      sub_1CF9E7B68();
      __break(1u);
LABEL_302:
      sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v406, 162);
    }

    v67 = v496;
    if (v498 != 23)
    {
      if (v498 == 75)
      {
        v167 = *(v56 + 248);
        if (v167)
        {
          v168 = v65;
          v169 = (v56 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCA0, &unk_1CFA053F0);
          v170 = swift_allocObject();
          *(v170 + 16) = 0u;
          *(v170 + 32) = 0u;
          *(v170 + 48) = 1;
          *(v170 + 56) = 0u;
          *(v170 + 72) = 0u;
          *(v170 + 88) = 0;
          *(v170 + 96) = xmmword_1CF9FEC30;
          *(v170 + 112) = 0;
          *(v170 + 120) = *v169;
          *(v170 + 136) = v168;
          *(v170 + 144) = v167;
          v171 = *(*v67 + 152);
          v172 = v167;
          v171(v170);

          goto LABEL_63;
        }

        goto LABEL_295;
      }

      goto LABEL_301;
    }

    if (v62 == 255)
    {
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v501 = *v56;
    LOBYTE(v502) = v62;
    v107 = *(v56 + 248);
    v108 = *(v56 + 272);
    if ((~*(v56 + 448) & 0xCLL) != 0)
    {
      v109 = v65;
    }

    else
    {
      v109 = v65 | 0x8000000000;
    }

    v110 = v495;
    v111 = v495[4];
    v112 = v499;
    if (v111[32] == 1)
    {
      v113 = *(v56 + 456);
      v473 = v63;
      v474 = v64;
      if (v113 == 2)
      {
        v186 = v46;
        v187 = v526;
        (*(*v111 + 288))(v518, &v501, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v187)
        {
          return;
        }

        if (BYTE8(v518[0]) == 255)
        {
          v526 = 0;
        }

        else
        {
          v188 = v110[2];
          sub_1CF7EB934(*&v518[0], BYTE8(v518[0]), v186, v112, v518);
          v526 = 0;
          memcpy(v517, v518, 0x208uLL);
          if (sub_1CF08B99C(v517) == 1)
          {
            memcpy(v516, v518, sizeof(v516));
            sub_1CEFCCC44(v516, &unk_1EC4BFC20, &unk_1CFA0A290);
          }

          else
          {
            memcpy(v516, v518, sizeof(v516));
            sub_1CEFCCC44(v516, &unk_1EC4BFC20, &unk_1CFA0A290);
            if (!LOBYTE(v516[34]))
            {
              v109 |= 1uLL;
            }
          }
        }
      }

      else
      {
        if (v113 == 4)
        {
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

        if (!v108)
        {
          ++v109;
        }
      }

      v114 = v110[3];
      v115 = v526;
      v116 = (*(*v114 + 344))(&v501, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v115)
      {
        return;
      }

      if (v117 & 1 | ((v116 & ~v109) == 0))
      {
        v118 = 0;
      }

      else
      {
        v118 = v116;
      }

      v109 |= v118;
      v526 = 0;
      if (!v107)
      {
LABEL_171:
        LOBYTE(v517[0]) = 0;
        *&v518[0] = v501;
        WORD4(v518[0]) = v502;
        LOBYTE(v518[1]) = 1;
        WORD1(v518[7]) = 2570;
        v307 = *(*v67 + 136);
        v307(v518);
        if ((v109 & 0x10000) != 0)
        {
          LOBYTE(v516[0]) = 0;
          *&v518[0] = v501;
          WORD4(v518[0]) = v502;
          LOBYTE(v518[1]) = 3;
          BYTE2(v518[5]) = 10;
          BYTE3(v518[7]) = 9;
          v307(v518);
        }

        v308 = v501;
        v309 = v502;
        v524 = *(v500 + 472);
        v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
        v311 = *(v310 + 48);
        v312 = *(v310 + 52);
        v75 = swift_allocObject();
        (*(v492 + 56))(v75 + *(*v75 + 632), 1, 1, v493);
        *(v75 + 152) = v309;
        *(v75 + 16) = 0u;
        *(v75 + 32) = 0u;
        *(v75 + 48) = 1;
        *(v75 + 56) = 0u;
        *(v75 + 72) = 0u;
        *(v75 + 88) = 0;
        *(v75 + 96) = xmmword_1CF9FEC30;
        *(v75 + 112) = 0;
        *(v75 + 120) = v524;
        *(v75 + 136) = v109;
        *(v75 + 144) = v308;
        if ((v109 & 0x8000) != 0)
        {
          *(v75 + 96) = 2359552;
          *(v75 + 112) = 0;
        }

        goto LABEL_17;
      }

      *&v518[0] = v107;
      v119 = sub_1CF8DCAC4();
      v120 = *(v119 + 52);
      v121 = (*(v119 + 48) + 7) & 0x1FFFFFFF8;
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1CF9FA450;
      *(v122 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
      v123 = *(*v114 + 304);
      v124 = v107;
      v125 = v526;
      v126 = v123(v518, v122, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v526 = v125;
      if (v125)
      {
LABEL_44:

        return;
      }

      v253 = v126;

      v254 = sub_1CF663828(v253);

      if (v254)
      {
        v255 = v254;
        v256 = *(v254 + 112);
        v110 = v495;
        v67 = v496;
        if (v256 == 3 || v256 == 4 && !(v255[12] & 0xFFFFFFFFFFFFFFFELL | v255[13]))
        {
        }

        else
        {
          v257 = v255[17];

          if ((v257 & 0x10000000000) != 0)
          {
            v109 |= 0x10000000000uLL;
          }
        }
      }

      else
      {
        v110 = v495;
        v67 = v496;
      }

      LOBYTE(v63) = v473;
      v64 = v474;
    }

    if (v108 || v64 != 2 || !v107)
    {
      goto LABEL_171;
    }

    v299 = v63;
    *&v517[0] = v107;
    v300 = *(*v110[5] + 240);
    v182 = v107;
    v301 = v490;
    v302 = v526;
    v300(v517, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = v302;
    if (v302)
    {
LABEL_69:

      return;
    }

    v303 = v489;
    if ((*(v488 + 48))(v301, 1, v489) == 1)
    {

      sub_1CEFCCC44(v301, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      goto LABEL_171;
    }

    v304 = v301 + *(v303 + 48);
    LOBYTE(v304) = *(v304 + *(type metadata accessor for ItemMetadata() + 80));
    sub_1CEFCCC44(v301, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (v304)
    {
      goto LABEL_170;
    }

    LOBYTE(v516[0]) = 0;
    *&v518[0] = v501;
    WORD4(v518[0]) = v502;
    LOWORD(v518[1]) = 1280;
    *(&v518[1] + 8) = *(v500 + 472);
    BYTE2(v518[5]) = 12;
    BYTE3(v518[7]) = 9;
    (*(*v67 + 136))(v518);
    if ((v299 & 8) != 0)
    {
LABEL_170:

      goto LABEL_171;
    }

    v305 = v502;
    v306 = v487;
    *v487 = v501;
    *(v306 + 8) = v305;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(*v495 + 520))(v306, 0);
    v183 = &unk_1EC4BF650;
    v184 = &unk_1CF9FCB40;
    v185 = v306;
LABEL_68:
    sub_1CEFCCC44(v185, v183, v184);
    goto LABEL_69;
  }

  v480 = v44;
  v481 = v42;
  v498 = v31;
  v478 = v36;
  v479 = v23;
  v490 = v26;
  v482 = v39;
  v76 = *(v56 + 192);
  if (!v66)
  {
    v476 = v52;
    v477 = v57;
    v475 = v76;
    if (v62 == 255)
    {
      goto LABEL_289;
    }

    v127 = v60;
    v128 = v53;
    v129 = v65;
    v130 = v46;
    v131 = v63;
    v512 = v61;
    v513 = v62;
    v132 = v495;
    v133 = v495[4];
    v134 = v526;
    v135 = (*(*v133 + 312))(&v512, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v134)
    {
      return;
    }

    v526 = 0;
    if (v136)
    {
      v137 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v138 = v512;
      v139 = v513;
      v140 = v500;
      sub_1CEFCCBDC(v500, v518, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v141 = sub_1CF9E6108();
      v142 = sub_1CF9E72A8();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v499 = v138;
        v144 = v143;
        v145 = swift_slowAlloc();
        LODWORD(v498) = v139;
        v146 = v145;
        *&v517[0] = v145;
        *v144 = 136446466;
        v147 = sub_1CF38B634();
        v149 = v148;
        sub_1CEFCCC44(v140, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v150 = sub_1CEFD0DF0(v147, v149, v517);

        *(v144 + 4) = v150;
        *(v144 + 12) = 2082;
        *&v518[0] = v499;
        BYTE8(v518[0]) = v498;
        v153 = VFSItemID.description.getter(v151, v152);
        v155 = sub_1CEFD0DF0(v153, v154, v517);

        *(v144 + 14) = v155;
        _os_log_impl(&dword_1CEFC7000, v141, v142, "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v144, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v146, -1, -1);
        MEMORY[0x1D386CDC0](v144, -1, -1);
      }

      else
      {

        sub_1CEFCCC44(v140, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      (*(v477 + 8))(v127, v476);
      return;
    }

    v490 = v135;
    (*(*v133 + 288))(&v510, &v512, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = 0;
    sub_1CF095754(v518);
    if (v511 == 255)
    {
      v191 = v518;
    }

    else
    {
      v189 = v132[2];
      v190 = v526;
      sub_1CF7EB934(v510, v511, v130, v499, v516);
      if (v190)
      {
        return;
      }

      v526 = 0;
      v191 = v516;
    }

    memcpy(v517, v191, 0x208uLL);
    v258 = v132[5];
    if (*(v258 + 32))
    {
      memcpy(v516, v517, sizeof(v516));
      v259 = sub_1CF08B99C(v516);
      v260 = v496;
      if (v259 == 1)
      {
        goto LABEL_216;
      }
    }

    else
    {
      memcpy(v516, v517, sizeof(v516));
      if (sub_1CF08B99C(v516) == 1 || !*(&v517[15] + 1))
      {
        v281 = v500;
        v283 = *(v500 + 472);
        v282 = *(v500 + 480);
        v509 = 0;
        v501 = v512;
        v502 = v513;
        v503 = 2;
        v504 = v283;
        v499 = v282;
        v505 = v282;
        v507 = 2560;
        v284 = *(*v496 + 136);
        v497 = *v496 + 136;
        v498 = v284;
        v284(&v501);
        v285 = fpfs_current_or_default_log();
        v286 = v128;
        sub_1CF9E6128();
        sub_1CEFCCBDC(v281, &v501, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v287 = sub_1CF9E6108();
        v288 = sub_1CF9E72A8();
        if (os_log_type_enabled(v287, v288))
        {
          v289 = swift_slowAlloc();
          v491 = swift_slowAlloc();
          v501 = v491;
          *v289 = 136446210;
          v290 = sub_1CF38B634();
          v291 = v283;
          v293 = v292;
          sub_1CEFCCC44(v281, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v294 = sub_1CEFD0DF0(v290, v293, &v501);
          v283 = v291;

          *(v289 + 4) = v294;
          _os_log_impl(&dword_1CEFC7000, v287, v288, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v289, 0xCu);
          v295 = v491;
          __swift_destroy_boxed_opaque_existential_1(v491);
          MEMORY[0x1D386CDC0](v295, -1, -1);
          MEMORY[0x1D386CDC0](v289, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v281, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        }

        (*(v477 + 8))(v286, v476);
        v316 = v495;
        if (*(v281 + 272) == 2)
        {
          v508 = 0;
          v501 = v512;
          v502 = v513;
          LOWORD(v503) = 1282;
          v504 = v283;
          v505 = v499;
          v506 = 12;
          HIBYTE(v507) = 9;
          v498(&v501);
        }

        v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
        v318 = v317[12];
        v319 = v317[16];
        v320 = v317[20];
        v321 = v513;
        v322 = v487;
        *v487 = v512;
        *(v322 + 8) = v321;
        (*(v492 + 56))(v322 + v318, 1, 1, v493);
        *(v322 + v319) = v490;
        v323 = v494;
        *(v322 + v320) = v494;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v324 = *(*v316 + 520);
        v325 = v323;
        v324(v322, 0);
        v326 = &unk_1EC4BF650;
        v327 = &unk_1CF9FCB40;
        v328 = v322;
LABEL_233:
        sub_1CEFCCC44(v328, v326, v327);
        v232 = &unk_1EC4BFC20;
        v233 = &unk_1CFA0A290;
        v234 = v517;
        goto LABEL_281;
      }

      if (!LOBYTE(v517[17]))
      {
        v129 |= 1uLL;
      }

      v260 = v496;
    }

    *&v488 = v258;
    memcpy(v525, v517, 0x208uLL);
    v489 = *(*v133 + 240);
    memcpy(v516, v517, sizeof(v516));
    sub_1CEFCCBDC(v516, &v501, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v343 = v498;
    v344 = v526;
    (v489)(&v512, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = v344;
    if (v344)
    {
LABEL_194:
      sub_1CEFCCC44(v517, &unk_1EC4BFC20, &unk_1CFA0A290);
      v234 = v517;
      v232 = &unk_1EC4BFC20;
      v233 = &unk_1CFA0A290;
      goto LABEL_281;
    }

    if ((*(v492 + 48))(v343, 1, v493) == 1)
    {
      sub_1CEFCCC44(v517, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v343, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v345 = v343;
      v346 = v480;
      sub_1CEFE55D0(v345, v480, &unk_1EC4BE360, &qword_1CF9FE650);
      v347 = v526;
      v348 = sub_1CF416BE4(&v501, v500, v346, v525, v495, v130, v499);
      v526 = v347;
      if (v347)
      {
        sub_1CEFCCC44(v346, &unk_1EC4BE360, &qword_1CF9FE650);
        goto LABEL_194;
      }

      v370 = v348;
      sub_1CF47FDFC(v501, v502);
      sub_1CEFCCC44(v346, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v517, &unk_1EC4BFC20, &unk_1CFA0A290);

      if (v370)
      {
        v129 |= 0x40000000000uLL;
      }
    }

    v258 = v488;
LABEL_216:
    v371 = (v129 >> 9) & 1;
    if ((v131 & 0x8000) == 0)
    {
      LODWORD(v371) = 1;
    }

    if (v371)
    {
      v372 = v129 | (v131 >> 22) & 0x200000;
    }

    else
    {
      v372 = v129 | (v131 >> 22) & 0x200000 | 0x200;
    }

    v373 = v500;
    v374 = *(v500 + 456);
    if (v374 != 1)
    {
      if (v374 == 4)
      {
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      if (v475 >> 60 != 11)
      {
        v372 |= 0x8000000uLL;
      }
    }

    if (v374 != 2 && (*(v258 + 32) & 1) == 0)
    {
      LOBYTE(v501) = 0;
      v516[0] = v512;
      LOWORD(v516[1]) = v513;
      LOBYTE(v516[2]) = 0;
      WORD1(v516[14]) = 2570;
      (*(*v260 + 136))(v516);
      v373 = v500;
    }

    v375 = v512;
    v376 = v513;
    v521 = *(v373 + 472);
    v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v378 = *(v377 + 48);
    v379 = *(v377 + 52);
    v380 = swift_allocObject();
    *(v380 + 176) = 0u;
    *(v380 + 192) = 0u;
    *(v380 + 208) = 0u;
    *(v380 + 224) = 0u;
    *(v380 + 240) = 0u;
    *(v380 + 256) = 0u;
    *(v380 + 272) = 0;
    *(v380 + 280) = -1;
    v381 = *(*v380 + 664);
    v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v382 - 8) + 56))(v380 + v381, 1, 1, v382);
    v383 = v380 + *(*v380 + 672);
    *v383 = 0;
    *(v383 + 8) = 0;
    *(v383 + 16) = 0;
    *(v383 + 24) = 0xB000000000000000;
    *(v383 + 32) = 0u;
    *(v383 + 48) = 0u;
    v384 = v380 + *(*v380 + 680);
    *(v384 + 64) = 0;
    *(v384 + 32) = 0u;
    *(v384 + 48) = 0u;
    *v384 = 0u;
    *(v384 + 16) = 0u;
    *(v380 + *(*v380 + 688)) = 0;
    *(v380 + 152) = v376;
    v385 = v490;
    v386 = v494;
    *(v380 + 160) = v494;
    *(v380 + 168) = v385;
    *(v380 + 16) = 0u;
    *(v380 + 32) = 0u;
    *(v380 + 48) = 1;
    *(v380 + 72) = 0u;
    *(v380 + 56) = 0u;
    *(v380 + 120) = v521;
    *(v380 + 136) = v372;
    *(v380 + 144) = v375;
    *(v380 + 96) = 0;
    *(v380 + 104) = 0;
    *(v380 + 88) = 0;
    *(v380 + 112) = 0;
    if (*(v258 + 32) == 1)
    {
      *(v380 + 96) = 1;
      *(v380 + 112) = 0;
    }

    v387 = v496;
    v388 = *(*v496 + 152);
    v389 = v386;
    v388(v380);
    v509 = 0;
    v516[0] = v512;
    LOWORD(v516[1]) = v513;
    v516[3] = 0;
    v516[2] = 0;
    LOBYTE(v516[4]) = 2;
    WORD1(v516[14]) = 2571;
    v500 = *(*v387 + 136);
    (v500)(v516);
    v390 = v512;
    v391 = v513;
    v508 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
    v392 = swift_allocObject();
    *(v392 + 16) = xmmword_1CF9FA440;
    *(v392 + 32) = v491;
    if (qword_1EDEABDE0 != -1)
    {
      v467 = v392;
      swift_once();
      v392 = v467;
    }

    *(v392 + 40) = qword_1EDEABDE8;
    sub_1CEFF5464(v392, &v501);
    v393 = v501;
    v394 = v508;
    v516[0] = v390;
    LOBYTE(v516[1]) = v391;
    BYTE1(v516[1]) = v508;
    v516[2] = v501;
    WORD1(v516[14]) = 2561;
    (v500)(v516);

    v516[0] = v390;
    LOBYTE(v516[1]) = v391;
    BYTE1(v516[1]) = v394;
    v516[2] = v393;
    WORD1(v516[14]) = 2561;
    v326 = &qword_1EC4BE6D0;
    v327 = &qword_1CF9FE560;
    v328 = v516;
    goto LABEL_233;
  }

  if (v66 != 1)
  {
    v156 = v496;
    if (v66 != 2)
    {
      goto LABEL_301;
    }

    if (v62 == 255)
    {
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    v157 = *(v56 + 248);
    if (!v157)
    {
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v158 = *(v56 + 16);
    if ((v158 & 0x10) != 0)
    {
      v159 = *(v56 + 472);
      v160 = *(v56 + 480);
      if ((v158 & 1) == 0)
      {
        v173 = 0x2000000;
LABEL_67:
        v174 = v494;
        v175 = v61;
        v176 = v62;
        v177 = sub_1CF389E84(v61, v62, v494, v159, v160, v173);
        v178 = *(*v156 + 152);
        v179 = v174;
        v180 = v157;
        v178(v177);

        LOBYTE(v516[0]) = 0;
        *&v518[0] = v175;
        WORD4(v518[0]) = v176;
        v518[1] = 0uLL;
        LOBYTE(v518[2]) = 2;
        WORD1(v518[7]) = 2571;
        v181 = *(*v156 + 136);
        v181(v518);
        *&v517[0] = v157;
        WORD4(v517[0]) = 256;
        memset(&v517[1], 0, 98);
        BYTE2(v517[7]) = 15;
        memset(&v518[4], 0, 48);
        *(&v518[6] + 15) = *(&v517[6] + 15);
        v518[0] = v517[0];
        memset(&v518[1], 0, 48);
        BYTE3(v518[7]) = 10;
        v182 = v180;
        v181(v518);
        v183 = &unk_1EC4BFD00;
        v184 = &unk_1CFA05420;
        v185 = v517;
        goto LABEL_68;
      }
    }

    else
    {
      v159 = *(v56 + 472);
      v160 = *(v56 + 480);
    }

    v173 = 4096;
    goto LABEL_67;
  }

  v498 = v58;
  v499 = v55;
  v472 = v54;
  v473 = v63;
  v474 = v64;
  v476 = v52;
  v477 = v57;
  v475 = v76;
  if (v62 == 255)
  {
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v501 = v61;
  LOBYTE(v502) = v62;
  v78 = *(v56 + 240);
  v77 = *(v56 + 248);
  v79 = *(v56 + 272);
  v80 = *(v56 + 344);
  v81 = *(v56 + 345);
  if ((~*(v56 + 448) & 0xCLL) != 0)
  {
    v82 = v65;
  }

  else
  {
    v82 = v65 | 0x8000000000;
  }

  v83 = v495[4];
  v84 = v526;
  v85 = (*(*v83 + 312))(&v501, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v84)
  {
    return;
  }

  v497 = v83;
  v471 = v81;
  v470 = v77;
  v469 = v80;
  LODWORD(v480) = v79;
  v526 = 0;
  if (v86)
  {
    v87 = fpfs_current_or_default_log();
    v88 = v499;
    sub_1CF9E6128();
    v90 = v500;
    v89 = v501;
    v91 = v502;
    sub_1CEFCCBDC(v500, v518, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v92 = sub_1CF9E6108();
    v93 = sub_1CF9E72A8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v498 = v89;
      v95 = v94;
      v96 = swift_slowAlloc();
      LODWORD(v497) = v91;
      v97 = v96;
      *&v517[0] = v96;
      *v95 = 136446466;
      v98 = sub_1CF38B634();
      v100 = v99;
      sub_1CEFCCC44(v90, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v101 = sub_1CEFD0DF0(v98, v100, v517);

      *(v95 + 4) = v101;
      *(v95 + 12) = 2082;
      *&v518[0] = v498;
      BYTE8(v518[0]) = v497;
      v104 = VFSItemID.description.getter(v102, v103);
      v106 = sub_1CEFD0DF0(v104, v105, v517);

      *(v95 + 14) = v106;
      _os_log_impl(&dword_1CEFC7000, v92, v93, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v97, -1, -1);
      MEMORY[0x1D386CDC0](v95, -1, -1);
    }

    else
    {

      sub_1CEFCCC44(v90, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    (*(v477 + 8))(v88, v476);
    return;
  }

  v192 = v491;
  v468 = v85;
  if ((v491 & 0x10) != 0)
  {
    if ((v480 | 2) != 3)
    {
      v240 = v495[3];
      v241 = (*(*v240 + 344))(&v501, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v526 = 0;
      if (v242 & 1 | ((v241 & ~(v82 | 0x8000001)) == 0))
      {
        v243 = 0;
      }

      else
      {
        v243 = v241;
      }

      v210 = v243 | v82 | 0x8000001;
      if (v470)
      {
        *&v518[0] = v470;
        v244 = v470;
        v245 = sub_1CF8DCAC4();
        v246 = *(v245 + 52);
        v247 = (*(v245 + 48) + 7) & 0x1FFFFFFF8;
        v248 = swift_allocObject();
        *(v248 + 16) = xmmword_1CF9FA450;
        *(v248 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
        v249 = *(*v240 + 304);
        v124 = v244;
        v250 = v526;
        v251 = v249(v518, v248, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v526 = v250;
        if (v250)
        {
          goto LABEL_44;
        }

        v353 = v251;

        v354 = sub_1CF663828(v353);

        if (v354)
        {
          v355 = *(v354 + 112);
          if (v355 == 3 || v355 == 4 && !(*(v354 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v354 + 104)))
          {
          }

          else
          {
            v356 = *(v354 + 136);

            if ((v356 & ~v210) != 0)
            {
              v357 = v356;
            }

            else
            {
              v357 = 0;
            }

            v210 |= v357;
          }
        }
      }

      goto LABEL_100;
    }

    if ((v473 & 8) != 0)
    {
      v208 = 134217730;
    }

    else
    {
      v208 = 2;
    }

    v209 = v82 | v208;
    if (v480 == 3)
    {
      v210 = v209 | 0x100000000000;
    }

    else
    {
      v210 = v209;
    }

    if (v474 || !v470)
    {
LABEL_100:
      v211 = v501;
      if (v471 == 6)
      {
        v212 = v210;
      }

      else
      {
        v212 = v210 | 0x20000;
      }

      v213 = v502;
      v522 = *(v500 + 472);
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v215 = *(v214 + 48);
      v216 = *(v214 + 52);
      v217 = swift_allocObject();
      *(v217 + 200) = 0u;
      *(v217 + 216) = 0u;
      *(v217 + 232) = 0u;
      *(v217 + 248) = 0u;
      *(v217 + 280) = 0;
      *(v217 + 184) = 0u;
      *(v217 + 264) = 0u;
      v218 = *(*v217 + 672);
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      (*(*(v219 - 8) + 56))(v217 + v218, 1, 1, v219);
      v220 = v217 + *(*v217 + 680);
      *v220 = 0;
      *(v220 + 8) = 0;
      *(v220 + 16) = 0;
      *(v220 + 24) = 0xB000000000000000;
      *(v220 + 32) = 0u;
      *(v220 + 48) = 0u;
      v221 = v217 + *(*v217 + 688);
      *v221 = 0;
      *(v221 + 8) = 0;
      *(v221 + 16) = 1;
      *(v221 + 24) = 0u;
      *(v221 + 40) = 0u;
      *(v221 + 56) = 0;
      *(v217 + *(*v217 + 712)) = 0;
      *(v217 + 168) = v468;
      *(v217 + 176) = 16;
      *(v217 + *(*v217 + 696)) = 0;
      *(v217 + *(*v217 + 704)) = 0;
      *(v217 + 152) = v213;
      v223 = v494;
      v222 = v495;
      *(v217 + 160) = v494;
      *(v217 + 16) = 0u;
      *(v217 + 32) = 0u;
      *(v217 + 48) = 1;
      *(v217 + 72) = 0u;
      *(v217 + 56) = 0u;
      *(v217 + 120) = v522;
      *(v217 + 136) = v212;
      *(v217 + 144) = v211;
      *(v217 + 96) = 0;
      *(v217 + 104) = 0;
      *(v217 + 88) = 0;
      *(v217 + 112) = 0;
      if ((*(v222[5] + 32) & 1) != 0 || (v475 & 0xF000000000000000) == 0xB000000000000000)
      {
        *(v217 + 96) = xmmword_1CF9FD920;
        *(v217 + 112) = 0;
      }

      v224 = v496;
      v225 = *(*v496 + 152);
      v226 = v223;
      v225(v217);
      LOBYTE(v516[0]) = 0;
      *&v518[0] = v501;
      WORD4(v518[0]) = v502;
      v518[1] = 0uLL;
      LOBYTE(v518[2]) = 2;
      WORD1(v518[7]) = 2571;
      v227 = *(*v224 + 136);
      v227(v518);
      v228 = v501;
      v229 = v502;
      LOBYTE(v512) = 0;
      sub_1CEFF5464(&unk_1F4BED0D8, v517);
      v230 = *&v517[0];
      v231 = v512;
      *&v518[0] = v228;
      BYTE8(v518[0]) = v229;
      BYTE9(v518[0]) = v512;
      *&v518[1] = *&v517[0];
      WORD1(v518[7]) = 2561;
      v227(v518);

      *&v518[0] = v228;
      BYTE8(v518[0]) = v229;
      BYTE9(v518[0]) = v231;
      *&v518[1] = v230;
      WORD1(v518[7]) = 2561;
      v232 = &qword_1EC4BE6D0;
      v233 = &qword_1CF9FE560;
      v234 = v518;
      goto LABEL_281;
    }

    v516[0] = v470;
    v261 = *(*v495[5] + 240);
    v262 = v470;
    v263 = v485;
    v264 = v526;
    v261(v516, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = v264;
    if (v264)
    {

      return;
    }

    v313 = v489;
    v314 = (*(v488 + 48))(v263, 1, v489);
    v315 = v480;
    if (v314 == 1)
    {

      sub_1CEFCCC44(v263, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      goto LABEL_100;
    }

    v358 = v484;
    sub_1CEFE55D0(v263, v484, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v359 = v358 + *(v313 + 48);
    if ((*(v359 + *(type metadata accessor for ItemMetadata() + 80)) & 1) == 0)
    {
      sub_1CEFCCC44(v358, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      goto LABEL_100;
    }

    *&v517[0] = v470;
    WORD4(v517[0]) = 256;
    LOBYTE(v517[1]) = v315;
    BYTE1(v517[1]) = 5;
    *(&v517[1] + 8) = *(v500 + 472);
    BYTE2(v517[5]) = 12;
    v518[2] = v517[2];
    v518[3] = v517[3];
    v518[4] = v517[4];
    *(&v518[4] + 15) = *(&v517[4] + 15);
    v518[0] = v517[0];
    v518[1] = v517[1];
    BYTE3(v518[7]) = 9;
    v360 = *(*v496 + 136);
    v361 = v262;
    v360(v518);
    sub_1CEFCCC44(v517, &unk_1EC4BFCF0, &unk_1CFA05410);
    v362 = v495[3];
    v363 = sub_1CF8DCAC4();
    v364 = *(v363 + 52);
    v365 = (*(v363 + 48) + 7) & 0x1FFFFFFF8;
    v366 = swift_allocObject();
    *(v366 + 16) = xmmword_1CF9FA450;
    *(v366 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF60, &qword_1CF9FB450);
    v367 = v526;
    v368 = (*(*v362 + 304))(v516, v366, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = v367;
    if (v367)
    {

      v369 = v358;
LABEL_259:
      sub_1CEFCCC44(v369, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      return;
    }

    v401 = v368;

    if (!sub_1CF55B584(v401))
    {
LABEL_258:

      v369 = v484;
      goto LABEL_259;
    }

    v402 = 0;
    if (v401 < 0)
    {
      v403 = v401;
    }

    else
    {
      v403 = v401 & 0xFFFFFFFFFFFFFF8;
    }

    v498 = v403;
    v499 = (v401 >> 62);
    v500 = v401 & 0xC000000000000001;
    while (1)
    {
      if (v500)
      {
        v404 = MEMORY[0x1D3869C30](v402, v401);
      }

      else
      {
        if (v402 >= *((v401 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_288;
        }

        v404 = *(v401 + 8 * v402 + 32);
      }

      v405 = v402 + 1;
      if (__OFADD__(v402, 1))
      {
        break;
      }

      v406 = *(v404 + 112);
      if (v406 == 2)
      {
        goto LABEL_302;
      }

      v407 = *(v404 + 96);
      v408 = *(v404 + 104);
      *(v404 + 96) = 0;
      *(v404 + 104) = 0;
      *(v404 + 112) = 4;
      sub_1CF03D7A8(v407, v408, v406);
      v409 = *(*v496 + 152);

      v409(v410);

      if (v499)
      {
        v411 = sub_1CF9E7818();
      }

      else
      {
        v411 = *((v401 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v402;
      if (v405 == v411)
      {
        goto LABEL_258;
      }
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  if ((v78 & 0x20) == 0)
  {
    v193 = v497;
    if ((v78 & 0x10) == 0)
    {
      goto LABEL_80;
    }

LABEL_108:
    v82 |= 0x800000000000uLL;
    LOBYTE(v517[0]) = 0;
    LOBYTE(v516[0]) = 1;
    *&v518[0] = v501;
    WORD4(v518[0]) = v502;
    *&v518[1] = 16;
    BYTE8(v518[1]) = 1;
    BYTE3(v518[7]) = 11;
    (*(*v496 + 136))(v518);
    v194 = v495;
    if ((v192 & 0x10000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_109;
  }

  v82 |= 0x1000000000000uLL;
  LOBYTE(v517[0]) = 0;
  LOBYTE(v516[0]) = 1;
  *&v518[0] = v501;
  WORD4(v518[0]) = v502;
  *&v518[1] = 32;
  BYTE8(v518[1]) = 1;
  BYTE3(v518[7]) = 11;
  (*(*v496 + 136))(v518);
  v192 = v491;
  v193 = v497;
  if ((v78 & 0x10) != 0)
  {
    goto LABEL_108;
  }

LABEL_80:
  v194 = v495;
  if ((v192 & 0x10000000000) == 0)
  {
LABEL_81:
    v195 = v192;
    v196 = v500;
LABEL_82:
    v197 = v474;
    goto LABEL_83;
  }

LABEL_109:
  v235 = v526;
  (*(*v193 + 240))(&v501, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v235)
  {
    return;
  }

  v526 = 0;
  v236 = v493;
  if ((*(v492 + 48))(v29, 1, v493) == 1)
  {
    v237 = &qword_1EC4C1B40;
    v238 = &unk_1CF9FCB70;
    v239 = v29;
  }

  else
  {
    v296 = v481;
    sub_1CEFE55D0(v29, v481, &unk_1EC4BE360, &qword_1CF9FE650);
    v297 = *(v296 + *(v236 + 48));
    v298 = *(v500 + 456);
    if (v297 == 4)
    {
      if (v298 != 4)
      {
        goto LABEL_189;
      }
    }

    else if (v298 == 4 || qword_1CFA05EB0[v297] != qword_1CFA05EB0[v298])
    {
      goto LABEL_189;
    }

    v237 = &unk_1EC4BE360;
    v238 = &qword_1CF9FE650;
    v239 = v296;
  }

  sub_1CEFCCC44(v239, v237, v238);
  v329 = v194[5];
  v196 = v500;
  v197 = v474;
  if (v329[32])
  {
LABEL_185:
    v195 = v192;
    goto LABEL_83;
  }

  LODWORD(v297) = *(v500 + 456);
  if (v297 == 2)
  {
    if (!v470)
    {
      goto LABEL_185;
    }

    *&v518[0] = v470;
    v349 = *(*v329 + 240);
    v350 = v470;
    v351 = v483;
    v352 = v526;
    v349(v518, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v526 = v352;
    if (v352)
    {

      return;
    }

    v400 = v489;
    if ((*(v488 + 48))(v351, 1, v489) == 1)
    {

      sub_1CEFCCC44(v351, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    }

    else
    {
      v466 = v351 + *(v400 + 48);
      LOBYTE(v466) = *(v466 + *(type metadata accessor for ItemMetadata() + 80));

      sub_1CEFCCC44(v351, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v466)
      {
        v192 = v491;
        v195 = v491 | 8;
LABEL_286:
        v196 = v500;
        v194 = v495;
        goto LABEL_82;
      }
    }

    v192 = v491;
    v195 = v491;
    goto LABEL_286;
  }

  v195 = v192;
  if (v297 == 4)
  {
    __break(1u);
LABEL_189:
    LOBYTE(v517[0]) = 0;
    *&v518[0] = v501;
    WORD4(v518[0]) = v502;
    BYTE10(v518[0]) = v297;
    BYTE3(v518[7]) = 3;
    (*(*v496 + 136))(v518);
    v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v331 = v330[12];
    v332 = v330[16];
    v333 = v487;
    v334 = v487 + v330[20];
    v335 = v330[24];
    v336 = v192;
    v337 = v330[28];
    v338 = v330[32];
    v339 = v502;
    *v487 = v501;
    *(v333 + 8) = v339;
    (*(v492 + 56))(v333 + v331, 1, 1, v493);
    *(v333 + v332) = 0;
    *v334 = 0;
    *(v334 + 1) = 0;
    *(v334 + 2) = 1;
    *(v334 + 24) = 0u;
    *(v334 + 40) = 0u;
    *(v334 + 7) = 0;
    *(v333 + v335) = v336;
    *(v333 + v337) = v468;
    v340 = v494;
    *(v333 + v338) = v494;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v341 = *(*v194 + 520);
    v342 = v340;
    v341(v333, 0);
    sub_1CEFCCC44(v333, &unk_1EC4BF650, &unk_1CF9FCB40);
    v232 = &unk_1EC4BE360;
    v233 = &qword_1CF9FE650;
    v234 = v481;
LABEL_281:
    sub_1CEFCCC44(v234, v232, v233);
    return;
  }

LABEL_83:
  v198 = v194[5];
  if (*(v198 + 32))
  {
    if ((v192 & 0x16180000D034200) != 0)
    {
      v199 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v200 = sub_1CF9E6108();
      v201 = sub_1CF9E72B8();
      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v499 = swift_slowAlloc();
        *&v518[0] = v499;
        *v202 = 136446210;
        v203 = sub_1CF071470(v192 & 0x16180000D034200);
        *&v488 = v200;
        v205 = sub_1CEFD0DF0(v203, v204, v518);

        *(v202 + 4) = v205;
        v200 = v488;
        _os_log_impl(&dword_1CEFC7000, v488, v201, "☢️  file providers don't support setting the bit: %{public}s", v202, 0xCu);
        v206 = v499;
        __swift_destroy_boxed_opaque_existential_1(v499);
        MEMORY[0x1D386CDC0](v206, -1, -1);
        v192 = v491;
        MEMORY[0x1D386CDC0](v202, -1, -1);
      }

      (*(v477 + 8))(v472, v476);
      v207 = v482;
      v195 &= 0xFE9E7FFFF2FCBDFFLL;
      v196 = v500;
    }

    else
    {
      v207 = v482;
    }

    if ((v195 & 8) != 0)
    {
      v265 = *(v196 + 456);
      if (v265 != 1)
      {
        if (v265 == 4)
        {
LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

        if (v475 >> 60 == 11 && (v469 | 4) == 4)
        {
          v489 = v198;
          v266 = fpfs_current_or_default_log();
          v267 = v498;
          sub_1CF9E6128();
          v268 = v500;
          sub_1CEFCCBDC(v500, v518, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v269 = sub_1CF9E6108();
          v270 = sub_1CF9E72A8();
          v271 = os_log_type_enabled(v269, v270);
          v485 = v82;
          if (v271)
          {
            v272 = swift_slowAlloc();
            v499 = v195;
            v273 = v272;
            v274 = v267;
            v275 = swift_slowAlloc();
            *&v518[0] = v275;
            *v273 = 136315138;
            v276 = sub_1CF38B634();
            v278 = v277;
            sub_1CEFCCC44(v268, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v279 = sub_1CEFD0DF0(v276, v278, v518);

            *(v273 + 4) = v279;
            _os_log_impl(&dword_1CEFC7000, v269, v270, "☢️  trying to propagate content from a dataless item %s", v273, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v275);
            MEMORY[0x1D386CDC0](v275, -1, -1);
            v280 = v273;
            v195 = v499;
            MEMORY[0x1D386CDC0](v280, -1, -1);

            (*(v477 + 8))(v274, v476);
          }

          else
          {
            sub_1CEFCCC44(v268, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

            (*(v477 + 8))(v267, v476);
          }

          v395 = v479;
          v396 = v526;
          (*(*v497 + 240))(&v501, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v396)
          {
            return;
          }

          v526 = 0;
          v195 &= ~8uLL;
          if ((*(v492 + 48))(v395, 1, v493) == 1)
          {
            v397 = &qword_1EC4C1B40;
            v398 = &unk_1CF9FCB70;
            v399 = v395;
          }

          else
          {
            v499 = v195;
            v412 = v478;
            sub_1CEFE55D0(v395, v478, &unk_1EC4BE360, &qword_1CF9FE650);
            v498 = v501;
            v413 = v502;
            LOBYTE(v512) = 0;
            v414 = v412[5];
            v517[2] = v412[4];
            v517[3] = v414;
            v415 = v412[7];
            v517[4] = v412[6];
            v517[5] = v415;
            v416 = v412[3];
            v517[0] = v412[2];
            v517[1] = v416;
            *&v514[6] = v517[0];
            *&v514[22] = v416;
            *&v514[86] = v415;
            *&v514[70] = v517[4];
            *&v514[54] = v414;
            *&v514[38] = v517[2];
            *&v518[0] = v501;
            WORD4(v518[0]) = v502;
            *(&v518[3] + 10) = *&v514[48];
            *(&v518[4] + 10) = *&v514[64];
            *(&v518[5] + 10) = *&v514[80];
            *(&v518[6] + 1) = *(&v415 + 1);
            *(&v417 + 1) = v517[0] >> 16;
            *(v518 + 10) = *v514;
            *(&v518[1] + 10) = *&v514[16];
            *(&v518[2] + 10) = *&v514[32];
            *&v417 = 168296449;
            v488 = v417;
            LODWORD(v518[7]) = 168296449;
            v418 = *(*v496 + 136);
            sub_1CEFCCBDC(v517, v516, &unk_1EC4BE330, &unk_1CF9FF010);
            v418(v518);
            *(&v518[3] + 10) = *&v514[48];
            *(&v518[4] + 10) = *&v514[64];
            *(&v518[5] + 10) = *&v514[80];
            *(v518 + 10) = *v514;
            *(&v518[1] + 10) = *&v514[16];
            *&v518[0] = v498;
            WORD4(v518[0]) = v413;
            *(&v518[6] + 1) = *&v514[94];
            *(&v518[2] + 10) = *&v514[32];
            LODWORD(v518[7]) = v488;
            sub_1CEFCCC44(v518, &qword_1EC4BE6D0, &qword_1CF9FE560);
            v399 = v412;
            v195 = v499;
            v397 = &unk_1EC4BE360;
            v398 = &qword_1CF9FE650;
          }

          sub_1CEFCCC44(v399, v397, v398);
          v192 = v491;
          v207 = v482;
          v82 = v485;
          v198 = v489;
        }
      }
    }
  }

  else
  {
    if (v197)
    {
      v252 = (v195 & 0x4000) == 0;
    }

    else
    {
      v252 = 1;
    }

    if (!v252)
    {
      v195 &= ~0x4000uLL;
    }

    v207 = v482;
  }

  LOBYTE(v512) = 0;
  *&v518[0] = v501;
  WORD4(v518[0]) = v502;
  *&v518[1] = v192;
  WORD1(v518[7]) = 2561;
  v419 = *(*v496 + 136);
  (v419)(v518);
  if (v195)
  {
    v489 = v198;
    v499 = v419;
    if ((v195 & 8) != 0)
    {
      v422 = v500;
      v428 = *(v500 + 456);
      if (v428 == 1)
      {
        goto LABEL_271;
      }

      if (v428 == 4)
      {
LABEL_298:
        __break(1u);
        goto LABEL_299;
      }

      if (v475 >> 60 == 11)
      {
LABEL_271:
        v420 = v195;
        v421 = v82;
      }

      else
      {
        v420 = v195;
        if (v480 == 3)
        {
          v429 = v501;
          v430 = v502;
          LOBYTE(v517[0]) = 0;
          v431 = sub_1CF93D7F4();
          v433 = v432;
          v485 = v82;
          v434 = v517[0];
          *&v518[0] = v429;
          BYTE8(v518[0]) = v430;
          BYTE9(v518[0]) = v517[0];
          LOWORD(v518[1]) = 1283;
          *(&v518[1] + 1) = v431;
          *&v518[2] = v432;
          BYTE2(v518[5]) = 12;
          BYTE3(v518[7]) = 9;
          (v499)(v518);
          *&v518[0] = v429;
          BYTE8(v518[0]) = v430;
          BYTE9(v518[0]) = v434;
          v82 = v485;
          LOWORD(v518[1]) = 1283;
          *(&v518[1] + 1) = v431;
          *&v518[2] = v433;
          BYTE2(v518[5]) = 12;
          BYTE3(v518[7]) = 9;
          sub_1CEFCCC44(v518, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v422 = v500;
        }

        v421 = v82 | 0x8000000;
      }
    }

    else
    {
      v420 = v195;
      v421 = v82;
      v422 = v500;
    }

    v435 = v501;
    v436 = v502;
    v523 = *(v422 + 472);
    v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
    v438 = *(v437 + 48);
    v439 = *(v437 + 52);
    v440 = swift_allocObject();
    *(v440 + 200) = 0u;
    *(v440 + 216) = 0u;
    *(v440 + 232) = 0u;
    *(v440 + 248) = 0u;
    *(v440 + 280) = 0;
    *(v440 + 184) = 0u;
    *(v440 + 264) = 0u;
    v441 = *(*v440 + 672);
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v442 - 8) + 56))(v440 + v441, 1, 1, v442);
    v443 = v440 + *(*v440 + 680);
    *v443 = 0;
    *(v443 + 8) = 0;
    *(v443 + 16) = 0;
    *(v443 + 24) = 0xB000000000000000;
    *(v443 + 32) = 0u;
    *(v443 + 48) = 0u;
    v444 = v440 + *(*v440 + 688);
    *v444 = 0;
    *(v444 + 8) = 0;
    *(v444 + 16) = 1;
    *(v444 + 24) = 0u;
    *(v444 + 40) = 0u;
    *(v444 + 56) = 0;
    *(v440 + *(*v440 + 712)) = 0;
    *(v440 + 168) = v468;
    *(v440 + 176) = v420;
    *(v440 + *(*v440 + 696)) = 0;
    *(v440 + *(*v440 + 704)) = 0;
    *(v440 + 152) = v436;
    v445 = v494;
    *(v440 + 160) = v494;
    *(v440 + 16) = 0u;
    *(v440 + 32) = 0u;
    *(v440 + 48) = 1;
    *(v440 + 72) = 0u;
    *(v440 + 56) = 0u;
    *(v440 + 120) = v523;
    *(v440 + 136) = v421;
    *(v440 + 144) = v435;
    *(v440 + 96) = 0;
    *(v440 + 104) = 0;
    *(v440 + 88) = 0;
    *(v440 + 112) = 0;
    if ((*(v489 + 32) & 1) != 0 || (v475 & 0xF000000000000000) == 0xB000000000000000)
    {
      *(v440 + 96) = 1;
      *(v440 + 112) = 0;
    }

    v446 = *(*v496 + 152);
    v447 = v445;
    v446(v440);
    LOBYTE(v517[0]) = 0;
    *&v518[0] = v501;
    WORD4(v518[0]) = v502;
    v518[1] = 0uLL;
    LOBYTE(v518[2]) = 2;
    WORD1(v518[7]) = 2571;
    (v499)(v518);
    goto LABEL_63;
  }

  v423 = v490;
  v424 = v526;
  (*(*v497 + 240))(&v501, 1, &v519, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v424)
  {
    v526 = 0;
    if ((*(v492 + 48))(v423, 1, v493) == 1)
    {
      v425 = &qword_1EC4C1B40;
      v426 = &unk_1CF9FCB70;
      v427 = v423;
    }

    else
    {
      sub_1CEFE55D0(v423, v207, &unk_1EC4BE360, &qword_1CF9FE650);
      v448 = v502;
      LOBYTE(v510) = 0;
      v449 = v207[5];
      v517[2] = v207[4];
      v517[3] = v449;
      v450 = v207[7];
      v517[4] = v207[6];
      v517[5] = v450;
      v451 = v207[3];
      v517[0] = v207[2];
      v517[1] = v451;
      *&v515[6] = v517[0];
      *&v515[22] = v451;
      *&v515[86] = v450;
      *&v515[70] = v517[4];
      *&v515[54] = v449;
      *&v515[38] = v517[2];
      v499 = v419;
      v452 = (v473 & ~v491 & 8) == 0;
      *&v518[0] = v501;
      v453 = v501;
      WORD4(v518[0]) = v502;
      *(&v518[3] + 10) = *&v515[48];
      *(&v518[4] + 10) = *&v515[64];
      *(&v518[5] + 10) = *&v515[80];
      *(&v518[6] + 1) = *(&v450 + 1);
      *(v518 + 10) = *v515;
      *(&v518[1] + 10) = *&v515[16];
      *(&v518[2] + 10) = *&v515[32];
      LOBYTE(v518[7]) = v452;
      *(&v518[7] + 1) = 2049;
      BYTE3(v518[7]) = 10;
      sub_1CEFCCBDC(v517, v516, &unk_1EC4BE330, &unk_1CF9FF010);
      (v499)(v518);
      *&v518[0] = v453;
      WORD4(v518[0]) = v448;
      *(&v518[3] + 10) = *&v515[48];
      *(&v518[4] + 10) = *&v515[64];
      *(&v518[5] + 10) = *&v515[80];
      *(&v518[6] + 1) = *&v515[94];
      *(v518 + 10) = *v515;
      *(&v518[1] + 10) = *&v515[16];
      *(&v518[2] + 10) = *&v515[32];
      LOBYTE(v518[7]) = v452;
      *(&v518[7] + 1) = 2049;
      BYTE3(v518[7]) = 10;
      sub_1CEFCCC44(v518, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v427 = v482;
      v425 = &unk_1EC4BE360;
      v426 = &qword_1CF9FE650;
    }

    sub_1CEFCCC44(v427, v425, v426);
    v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v455 = v454[12];
    v456 = v454[16];
    v457 = v487;
    v458 = v487 + v454[20];
    v459 = v454[24];
    v460 = v454[28];
    v461 = v454[32];
    v462 = v502;
    *v487 = v501;
    *(v457 + 8) = v462;
    (*(v492 + 56))(v457 + v455, 1, 1, v493);
    *(v457 + v456) = 0;
    *v458 = 0;
    *(v458 + 1) = 0;
    *(v458 + 2) = 1;
    *(v458 + 24) = 0u;
    *(v458 + 40) = 0u;
    *(v458 + 7) = 0;
    *(v457 + v459) = v491;
    *(v457 + v460) = v468;
    v463 = v494;
    *(v457 + v461) = v494;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v464 = *(*v495 + 520);
    v465 = v463;
    v464(v457, 0);
    v232 = &unk_1EC4BF650;
    v233 = &unk_1CF9FCB40;
    v234 = v457;
    goto LABEL_281;
  }
}

void sub_1CF411C70(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, int64_t a7, int a8)
{
  LODWORD(v506) = a8;
  v505 = a7;
  v502 = a5;
  v503 = a6;
  v507 = a4;
  v501 = a3;
  v498 = a2;
  LODWORD(v504) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v497 = &v472 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v490 = &v472 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v492 = (&v472 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v495 = *(v15 - 1);
  v496 = v15;
  v16 = v495[8];
  MEMORY[0x1EEE9AC00](v15);
  v491 = &v472 - v17;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  v18 = *(*(v493 - 8) + 64);
  MEMORY[0x1EEE9AC00](v493);
  v494 = (&v472 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v472 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v472 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v472 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v472 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v499 = *(v33 - 8);
  v500 = v33;
  v34 = *(v499 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v472 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v472 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v472 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v472 - v44;
  v46 = sub_1CF9E6118();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v472 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v53 = MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  v61 = &v472 - v60;
  v534 = v505;
  v535 = v506;
  v62 = *v57;
  v63 = *(v57 + 16);
  v64 = *(v57 + 96);
  if (*(v57 + 97) == 6)
  {
    v65 = 4096;
  }

  else
  {
    v65 = 69632;
  }

  v66 = v504;
  if (v504 > 5u)
  {
    if (v504 <= 0x16u)
    {
      v67 = v503;
      if (v504 == 6)
      {
        if (v62)
        {
          if (*(v502[4] + 32) == 1)
          {
            v68 = !*(v57 + 240) || v64 == 3;
            if (v68)
            {
              ++v65;
            }
          }

          *&v531[0] = *v57;
          WORD4(v531[0]) = 0;
          LOBYTE(v531[1]) = 1;
          BYTE2(v531[5]) = 10;
          v533[2] = v531[2];
          v533[3] = v531[3];
          v533[4] = v531[4];
          *(&v533[4] + 15) = *(&v531[4] + 15);
          v533[0] = v531[0];
          v533[1] = v531[1];
          BYTE3(v533[7]) = 10;
          v69 = *(*v503 + 136);
          v70 = v62;
          v71 = v65;
          v72 = v62;
          v69(v533);
          sub_1CEFCCC44(v531, &qword_1EC4BFD48, &qword_1CFA05460);
          v504 = v71;
          if ((v71 & 0x10000) != 0)
          {
            *&v532[0] = v70;
            WORD4(v532[0]) = 0;
            LOBYTE(v532[1]) = 3;
            BYTE2(v532[7]) = 10;
            v533[4] = v532[4];
            v533[5] = v532[5];
            v533[6] = v532[6];
            *(&v533[6] + 15) = *(&v532[6] + 15);
            v533[0] = v532[0];
            v533[1] = v532[1];
            v533[2] = v532[2];
            v533[3] = v532[3];
            BYTE3(v533[7]) = 9;
            v73 = v72;
            v69(v533);
            sub_1CEFCCC44(v532, &unk_1EC4BFD60, &qword_1CFA05468);
          }

          v74 = (v507 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
          v75 = swift_allocObject();
          *(v75 + 16) = 0u;
          *(v75 + 32) = 0u;
          *(v75 + 48) = 1;
          *(v75 + 56) = 0u;
          *(v75 + 72) = 0u;
          *(v75 + 88) = 0;
          *(v75 + 120) = *v74;
          *(v75 + 136) = v504;
          *(v75 + 144) = v72;
          *(v75 + 96) = xmmword_1CFA04E20;
          *(v75 + 112) = 0;
          v76 = sub_1CF47AFBC(0x2000);
          v77 = v72;

          (*(*v67 + 144))(v76);
LABEL_61:

          return;
        }

        goto LABEL_298;
      }

      if (v504 == 12)
      {
        if (v62)
        {
          v114 = 128;
          if (*(v57 + 216) == 255)
          {
            v114 = 32;
          }

          v115 = v114 | v65;
          *&v532[0] = *v57;
          WORD4(v532[0]) = 0;
          v532[1] = 0uLL;
          LOBYTE(v532[2]) = 2;
          BYTE2(v532[5]) = 11;
          v533[2] = v532[2];
          v533[3] = v532[3];
          v533[4] = v532[4];
          *(&v533[4] + 15) = *(&v532[4] + 15);
          v533[0] = v532[0];
          v533[1] = 0u;
          BYTE3(v533[7]) = 10;
          v116 = *(*v503 + 136);
          v117 = v57;
          v118 = v62;
          v116(v533);
          sub_1CEFCCC44(v532, &qword_1EC4BFD48, &qword_1CFA05460);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
          v119 = swift_allocObject();
          *(v119 + 144) = v118;
          *(v119 + 152) = 0;
          *(v119 + 16) = 0u;
          *(v119 + 32) = 0u;
          *(v119 + 48) = 1;
          *(v119 + 56) = 0u;
          *(v119 + 72) = 0u;
          *(v119 + 88) = 0;
          *(v119 + 96) = xmmword_1CF9FEC30;
          *(v119 + 112) = 0;
          *(v119 + 120) = *(v117 + 472);
          *(v119 + 136) = v115;
          v120 = *(*v67 + 144);
          v77 = v118;
          v120(v119);
          goto LABEL_61;
        }

        goto LABEL_302;
      }

LABEL_309:
      sub_1CF9E7B68();
      __break(1u);
LABEL_310:
      sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v465, 162);
    }

    v90 = v503;
    if (v504 != 23)
    {
      if (v504 == 75)
      {
        v121 = *(v57 + 216);
        if (v121 != 255)
        {
          v122 = v65;
          v123 = *(v57 + 208);
          v124 = (v57 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD40, &qword_1CF9FAC38);
          v125 = swift_allocObject();
          *(v125 + 152) = v121;
          *(v125 + 16) = 0u;
          *(v125 + 32) = 0u;
          *(v125 + 48) = 1;
          *(v125 + 56) = 0u;
          *(v125 + 72) = 0u;
          *(v125 + 88) = 0;
          *(v125 + 96) = xmmword_1CF9FEC30;
          *(v125 + 112) = 0;
          *(v125 + 120) = *v124;
          *(v125 + 136) = v122;
          *(v125 + 144) = v123;
          (*(*v90 + 152))();

          return;
        }

        goto LABEL_303;
      }

      goto LABEL_309;
    }

    if (!v62)
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    *&v520 = *v57;
    v91 = *(v57 + 208);
    v92 = *(v57 + 216);
    v93 = *(v57 + 240);
    if ((~*(v57 + 448) & 0xCLL) != 0)
    {
      v94 = v65;
    }

    else
    {
      v94 = v65 | 0x8000000000;
    }

    v95 = v502[4];
    v96 = v95[32];
    v489 = v63;
    if ((v96 & 1) == 0)
    {
      v126 = v62;
      v127 = v64;
      v128 = v62;
      v129 = v127;
      v130 = v126;
      if (v93)
      {
LABEL_55:
        v504 = v94;
LABEL_56:
        *&v531[0] = v130;
        WORD4(v531[0]) = 0;
        LOBYTE(v531[1]) = 1;
        BYTE2(v531[5]) = 10;
        v533[2] = v531[2];
        v533[3] = v531[3];
        v533[4] = v531[4];
        *(&v533[4] + 15) = *(&v531[4] + 15);
        v533[0] = v531[0];
        v533[1] = v531[1];
        BYTE3(v533[7]) = 10;
        v131 = *(*v90 + 136);
        v132 = v130;
        v133 = v130;
        v131(v533);
        sub_1CEFCCC44(v531, &qword_1EC4BFD48, &qword_1CFA05460);
        if ((v504 & 0x10000) != 0)
        {
          *&v532[0] = v132;
          WORD4(v532[0]) = 0;
          LOBYTE(v532[1]) = 3;
          BYTE2(v532[7]) = 10;
          v533[4] = v532[4];
          v533[5] = v532[5];
          v533[6] = v532[6];
          *(&v533[6] + 15) = *(&v532[6] + 15);
          v533[0] = v532[0];
          v533[1] = v532[1];
          v533[2] = v532[2];
          v533[3] = v532[3];
          BYTE3(v533[7]) = 9;
          v134 = v133;
          v131(v533);
          sub_1CEFCCC44(v532, &unk_1EC4BFD60, &qword_1CFA05468);
        }

        v539 = *(v507 + 472);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
        v136 = *(v135 + 48);
        v137 = *(v135 + 52);
        v138 = swift_allocObject();
        (*(v499 + 56))(v138 + *(*v138 + 632), 1, 1, v500);
        *(v138 + 16) = 0u;
        *(v138 + 32) = 0u;
        *(v138 + 48) = 1;
        *(v138 + 56) = 0u;
        *(v138 + 72) = 0u;
        *(v138 + 88) = 0;
        *(v138 + 96) = xmmword_1CF9FEC30;
        *(v138 + 112) = 0;
        *(v138 + 120) = v539;
        v139 = v504;
        *(v138 + 136) = v504;
        *(v138 + 144) = v133;
        if (v139 < 0)
        {
          *(v138 + 96) = 2359552;
          *(v138 + 112) = 0;
        }

        v140 = *(*v90 + 144);
        v77 = v133;
        v140(v138);
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    v97 = *(v57 + 456);
    v480 = v64;
    if (v97 != 2)
    {
      if (v97 == 4)
      {
LABEL_305:
        __break(1u);
        goto LABEL_306;
      }

      v481 = v62;
      if (!v93)
      {
        v94 |= 1uLL;
      }

      v98 = v62;
LABEL_126:
      v245 = v502[3];
      v246 = v541;
      v247 = (*(*v245 + 344))(&v520, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v541 = v246;
      if (v246)
      {
        v249 = v481;
LABEL_244:

        return;
      }

      if (v248 & 1 | ((v247 & ~v94) == 0))
      {
        v250 = 0;
      }

      else
      {
        v250 = v247;
      }

      v94 |= v250;
      if (v92 == 255)
      {
        if (v93)
        {
          v504 = v94;
          v130 = v481;
        }

        else
        {
          v130 = v481;
          v504 = v94;
        }

        goto LABEL_56;
      }

      *&v533[0] = v91;
      BYTE8(v533[0]) = v92;
      v251 = sub_1CF8DCAA0();
      v252 = *(v251 + 52);
      v253 = (*(v251 + 48) + 7) & 0x1FFFFFFF8;
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_1CF9FA450;
      *(v254 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
      v255 = v541;
      v256 = (*(*v245 + 304))(v533, v254, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v255)
      {
        v257 = v481;
LABEL_136:

        return;
      }

      v541 = 0;
      v258 = v256;

      v259 = sub_1CF663828(v258);

      if (v259)
      {
        v260 = *(v259 + 112);
        if (v260 == 3 || v260 == 4 && !(*(v259 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v259 + 104)))
        {
        }

        else
        {
          v261 = *(v259 + 136);

          if ((v261 & 0x10000000000) != 0)
          {
            v94 |= 0x10000000000uLL;
          }
        }
      }

      v130 = v481;
      v129 = v480;
      if (v93)
      {
        goto LABEL_55;
      }

LABEL_53:
      if (v129 != 2 || v92 == 255)
      {
        goto LABEL_55;
      }

      v202 = v130;
      *&v531[0] = v91;
      BYTE8(v531[0]) = v92;
      v217 = v497;
      v218 = v541;
      (*(*v502[5] + 240))(v531, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v218)
      {
LABEL_89:

        return;
      }

      v541 = 0;
      v228 = v496;
      v229 = (v495[6])(v217, 1, v496);
      v504 = v94;
      if (v229 == 1)
      {
        sub_1CEFCCC44(v217, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_121:
        v130 = v202;
        goto LABEL_56;
      }

      v236 = v217 + *(v228 + 12);
      LOBYTE(v236) = *(v236 + *(type metadata accessor for ItemMetadata() + 80));
      sub_1CEFCCC44(v217, &unk_1EC4BE360, &qword_1CF9FE650);
      if (v236)
      {
        goto LABEL_121;
      }

      *&v532[0] = v202;
      WORD4(v532[0]) = 0;
      LOWORD(v532[1]) = 1280;
      *(&v532[1] + 8) = *(v507 + 472);
      BYTE2(v532[7]) = 12;
      v533[4] = v532[4];
      v533[5] = v532[5];
      v533[6] = v532[6];
      *(&v533[6] + 15) = *(&v532[6] + 15);
      v533[0] = v532[0];
      v533[1] = v532[1];
      v533[2] = v532[2];
      v533[3] = v532[3];
      BYTE3(v533[7]) = 9;
      v237 = *(*v90 + 136);
      v238 = v202;
      v237(v533);
      sub_1CEFCCC44(v532, &unk_1EC4BFD60, &qword_1CFA05468);
      if ((v489 & 8) != 0)
      {
        goto LABEL_121;
      }

      v239 = v494;
      *v494 = v238;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v240 = *(*v502 + 520);
      v241 = v238;
      v240(v239, 0);
      v242 = &qword_1EC4BFD38;
      v243 = &unk_1CFA05450;
      v244 = v239;
      goto LABEL_271;
    }

    v504 = v94;
    v184 = *(*v95 + 288);
    v185 = v62;
    v186 = v62;
    v187 = v541;
    v184(v533, &v520, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v187)
    {
      v481 = v185;
      v541 = 0;
      v226 = *&v533[0];
      if (*&v533[0])
      {
        v227 = v502[2];
        sub_1CF7EBA74(*&v533[0], v505, v506, v533);

        memcpy(v532, v533, 0x208uLL);
        v68 = sub_1CF08B99C(v532) == 1;
        v541 = 0;
        if (!v68)
        {
          memcpy(v531, v533, 0x208uLL);
          sub_1CEFCCC44(v531, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v90 = v503;
          v94 = v504;
          if (!LOBYTE(v531[15]))
          {
            v94 = v504 | 1;
          }

          goto LABEL_126;
        }

        memcpy(v531, v533, 0x208uLL);
        sub_1CEFCCC44(v531, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      v90 = v503;
      v94 = v504;
      goto LABEL_126;
    }

LABEL_73:

    return;
  }

  v486 = v45;
  v487 = v43;
  v497 = v32;
  v484 = v37;
  v485 = v24;
  v504 = v27;
  v488 = v40;
  v78 = *(v57 + 152);
  if (v66)
  {
    if (v66 == 1)
    {
      v497 = v56;
      v475 = v50;
      v476 = v54;
      v480 = v64;
      v482 = v59;
      v483 = v58;
      v489 = v63;
      v479 = v78;
      if (!v62)
      {
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      *&v508 = v62;
      v79 = *(v57 + 208);
      v506 = *(v57 + 200);
      v477 = v79;
      v478 = *(v57 + 216);
      LODWORD(v486) = *(v57 + 240);
      v80 = *(v57 + 344);
      v81 = *(v57 + 345);
      if ((~*(v57 + 448) & 0xCLL) != 0)
      {
        v82 = v65;
      }

      else
      {
        v82 = v65 | 0x8000000000;
      }

      v505 = v82;
      v83 = v502[4];
      v84 = *(*v83 + 312);
      v85 = v62;
      v86 = v62;
      v87 = v541;
      v88 = v84(&v508, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v87)
      {

        return;
      }

      v473 = v83;
      v474 = v86;
      v481 = v85;
      v541 = 0;
      if (v89)
      {
        v166 = fpfs_current_or_default_log();
        v167 = v497;
        sub_1CF9E6128();
        v168 = v474;
        v169 = v507;
        sub_1CEFCCBDC(v507, v533, &unk_1EC4BFC90, &unk_1CFA053E0);
        v170 = v168;
        v171 = sub_1CF9E6108();
        v172 = sub_1CF9E72A8();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v506 = v174;
          *&v533[0] = v174;
          *v173 = 136446466;
          v175 = sub_1CF38C048(v174);
          v177 = v176;
          sub_1CEFCCC44(v169, &unk_1EC4BFC90, &unk_1CFA053E0);
          v178 = sub_1CEFD0DF0(v175, v177, v533);

          *(v173 + 4) = v178;
          *(v173 + 12) = 2082;
          v179 = NSFileProviderItemIdentifier.description.getter();
          v181 = v180;

          v182 = sub_1CEFD0DF0(v179, v181, v533);

          *(v173 + 14) = v182;
          _os_log_impl(&dword_1CEFC7000, v171, v172, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v173, 0x16u);
          v183 = v506;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v183, -1, -1);
          MEMORY[0x1D386CDC0](v173, -1, -1);
        }

        else
        {

          sub_1CEFCCC44(v169, &unk_1EC4BFC90, &unk_1CFA053E0);
        }

        (*(v483 + 8))(v167, v482);

        return;
      }

      v192 = v498;
      v472 = v88;
      if ((v498 & 0x10) == 0)
      {
        LODWORD(v497) = v80;
        v193 = v506;
        if ((v506 & 0x20) != 0)
        {
          v505 |= 0x1000000000000uLL;
          LOBYTE(v532[0]) = 0;
          LOBYTE(v531[0]) = 1;
          *&v533[0] = v481;
          WORD4(v533[0]) = 0;
          *&v533[1] = 32;
          BYTE8(v533[1]) = 1;
          BYTE3(v533[7]) = 11;
          v194 = *(*v503 + 136);
          v195 = v474;
          v194(v533);
        }

        v196 = v481;
        if ((v193 & 0x10) != 0)
        {
          v505 |= 0x800000000000uLL;
          LOBYTE(v532[0]) = 0;
          LOBYTE(v531[0]) = 1;
          *&v533[0] = v481;
          WORD4(v533[0]) = 0;
          *&v533[1] = 16;
          BYTE8(v533[1]) = 1;
          BYTE3(v533[7]) = 11;
          v197 = *(*v503 + 136);
          v198 = v474;
          v197(v533);
          v192 = v498;

          v196 = v481;
        }

        v199 = v507;
        v200 = v502;
        if ((v192 & 0x10000000000) == 0)
        {
          v201 = v192;
LABEL_83:
          v202 = v474;
          v203 = v488;
          v204 = v480;
LABEL_84:
          v205 = *(v200[5] + 32);
          v506 = v200[5];
          if (v205)
          {
            if ((v192 & 0x16180000D034200) != 0)
            {
              v206 = fpfs_current_or_default_log();
              v207 = v476;
              sub_1CF9E6128();
              v208 = sub_1CF9E6108();
              v209 = sub_1CF9E72B8();
              if (os_log_type_enabled(v208, v209))
              {
                v210 = swift_slowAlloc();
                v496 = swift_slowAlloc();
                *&v533[0] = v496;
                *v210 = 136446210;
                v211 = sub_1CF071470(v192 & 0x16180000D034200);
                v213 = v200;
                v214 = sub_1CEFD0DF0(v211, v212, v533);

                *(v210 + 4) = v214;
                v200 = v213;
                _os_log_impl(&dword_1CEFC7000, v208, v209, "☢️  file providers don't support setting the bit: %{public}s", v210, 0xCu);
                v215 = v496;
                __swift_destroy_boxed_opaque_existential_1(v496);
                MEMORY[0x1D386CDC0](v215, -1, -1);
                v216 = v210;
                v203 = v488;
                MEMORY[0x1D386CDC0](v216, -1, -1);

                (*(v483 + 8))(v476, v482);
              }

              else
              {

                (*(v483 + 8))(v207, v482);
              }

              v289 = v497;
              v235 = v201 & 0xFE9E7FFFF2FCBDFFLL;
              v196 = v481;
              v199 = v507;
              v202 = v474;
            }

            else
            {
              v235 = v201;
              v289 = v497;
            }

            if ((v235 & 8) != 0)
            {
              v308 = *(v199 + 456);
              if (v308 != 1)
              {
                if (v308 == 4)
                {
LABEL_308:
                  __break(1u);
                  goto LABEL_309;
                }

                if (v479 >> 60 == 11 && (v289 | 4) == 4)
                {
                  v309 = fpfs_current_or_default_log();
                  v310 = v475;
                  sub_1CF9E6128();
                  v311 = v507;
                  sub_1CEFCCBDC(v507, v533, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v312 = sub_1CF9E6108();
                  v313 = sub_1CF9E72A8();
                  if (os_log_type_enabled(v312, v313))
                  {
                    v314 = swift_slowAlloc();
                    v497 = v235;
                    v315 = v314;
                    v316 = swift_slowAlloc();
                    *&v533[0] = v316;
                    *v315 = 136315138;
                    v317 = sub_1CF38C048(v316);
                    v319 = v318;
                    sub_1CEFCCC44(v311, &unk_1EC4BFC90, &unk_1CFA053E0);
                    v320 = sub_1CEFD0DF0(v317, v319, v533);

                    *(v315 + 4) = v320;
                    _os_log_impl(&dword_1CEFC7000, v312, v313, "☢️  trying to propagate content from a dataless item %s", v315, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v316);
                    MEMORY[0x1D386CDC0](v316, -1, -1);
                    v321 = v315;
                    v235 = v497;
                    v202 = v474;
                    MEMORY[0x1D386CDC0](v321, -1, -1);
                  }

                  else
                  {
                    sub_1CEFCCC44(v311, &unk_1EC4BFC90, &unk_1CFA053E0);
                  }

                  (*(v483 + 8))(v310, v482);
                  v410 = v485;
                  v411 = v541;
                  (*(*v473 + 240))(&v508, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                  if (v411)
                  {
                    goto LABEL_89;
                  }

                  v541 = 0;
                  v235 &= ~8uLL;
                  if ((*(v499 + 48))(v410, 1, v500) == 1)
                  {
                    sub_1CEFCCC44(v410, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                    v196 = v481;
                  }

                  else
                  {
                    v412 = v484;
                    sub_1CEFE55D0(v410, v484, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                    LOBYTE(v520) = 0;
                    v413 = v412[2];
                    v532[0] = v412[1];
                    v532[1] = v413;
                    v414 = v412[4];
                    v532[2] = v412[3];
                    v532[3] = v414;
                    *&v529[6] = v532[0];
                    *&v529[22] = v413;
                    *&v529[38] = v532[2];
                    *&v529[54] = v414;
                    v497 = v235;
                    v415 = v481;
                    *&v533[0] = v481;
                    WORD4(v533[0]) = 0;
                    *(&v533[1] + 10) = *&v529[16];
                    *(&v533[2] + 10) = *&v529[32];
                    *(&v533[3] + 10) = *&v529[48];
                    *(&v533[4] + 1) = *(&v414 + 1);
                    *(v533 + 10) = *v529;
                    LOWORD(v533[5]) = 1;
                    BYTE2(v533[5]) = 8;
                    BYTE3(v533[7]) = 10;
                    v416 = *(*v503 + 136);
                    v417 = v474;
                    sub_1CEFCCBDC(v532, v531, &unk_1EC4BF250, &unk_1CFA01B50);
                    v416(v533);
                    *(&v533[1] + 10) = *&v529[16];
                    *(&v533[2] + 10) = *&v529[32];
                    *(&v533[3] + 10) = *&v529[48];
                    *&v533[0] = v415;
                    WORD4(v533[0]) = 0;
                    *(&v533[4] + 1) = *&v529[62];
                    *(v533 + 10) = *v529;
                    LOWORD(v533[5]) = 1;
                    BYTE2(v533[5]) = 8;
                    BYTE3(v533[7]) = 10;
                    sub_1CEFCCC44(v533, &qword_1EC4BE730, &unk_1CFA05490);
                    sub_1CEFCCC44(v412, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                    v196 = v415;
                    v235 = v497;
                    v202 = v474;
                  }

                  v200 = v502;
                  v192 = v498;
                  v203 = v488;
                }
              }
            }
          }

          else
          {
            if (v204)
            {
              v234 = (v201 & 0x4000) == 0;
            }

            else
            {
              v234 = 1;
            }

            if (v234)
            {
              v235 = v201;
            }

            else
            {
              v235 = v201 & 0xFFFFFFFFFFFFBFFFLL;
            }
          }

          *&v532[0] = v196;
          WORD4(v532[0]) = 0;
          *&v532[1] = v192;
          BYTE2(v532[5]) = 1;
          v533[2] = v532[2];
          v533[3] = v532[3];
          v533[4] = v532[4];
          *(&v533[4] + 15) = *(&v532[4] + 15);
          v533[0] = v532[0];
          v533[1] = v532[1];
          BYTE3(v533[7]) = 10;
          v418 = *(*v503 + 136);
          v186 = v202;
          v418(v533);
          sub_1CEFCCC44(v532, &qword_1EC4BFD48, &qword_1CFA05460);
          if (v235)
          {
            if ((v235 & 8) != 0)
            {
              v421 = v507;
              v426 = *(v507 + 456);
              v422 = v479;
              if (v426 == 1)
              {
                v419 = v418;
              }

              else
              {
                if (v426 == 4)
                {
LABEL_306:
                  __break(1u);
                  goto LABEL_307;
                }

                v419 = v418;
                if (v479 >> 60 != 11)
                {
                  v420 = v235;
                  if (v486 == 3)
                  {
                    LOBYTE(v531[0]) = 0;
                    v427 = v186;
                    v504 = sub_1CF93D7F4();
                    v429 = v428;
                    v430 = v531[0];
                    v431 = v481;
                    *&v533[0] = v481;
                    BYTE8(v533[0]) = 0;
                    BYTE9(v533[0]) = v531[0];
                    LOWORD(v533[1]) = 1283;
                    *(&v533[1] + 1) = v504;
                    *&v533[2] = v428;
                    WORD1(v533[7]) = 2316;
                    v419(v533);
                    *&v533[0] = v431;
                    BYTE8(v533[0]) = 0;
                    BYTE9(v533[0]) = v430;
                    v422 = v479;
                    LOWORD(v533[1]) = 1283;
                    *(&v533[1] + 1) = v504;
                    *&v533[2] = v429;
                    WORD1(v533[7]) = 2316;
                    sub_1CEFCCC44(v533, &qword_1EC4BE730, &unk_1CFA05490);
                    v421 = v507;
                  }

                  v505 |= 0x8000000uLL;
                  goto LABEL_267;
                }
              }

              v420 = v235;
            }

            else
            {
              v419 = v418;
              v420 = v235;
              v421 = v507;
              v422 = v479;
            }

LABEL_267:
            v538 = *(v421 + 472);
            v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
            v433 = *(v432 + 48);
            v434 = *(v432 + 52);
            v435 = swift_allocObject();
            *(v435 + 176) = 0;
            *(v435 + 184) = -1;
            *(v435 + 192) = 0;
            *(v435 + 200) = 0;
            *(v435 + 208) = 1;
            *(v435 + 216) = 0u;
            *(v435 + 232) = 0u;
            *(v435 + 248) = 0;
            v436 = *(*v435 + 672);
            v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
            (*(*(v437 - 8) + 56))(v435 + v436, 1, 1, v437);
            v438 = v435 + *(*v435 + 680);
            *v438 = 0;
            *(v438 + 8) = 0;
            *(v438 + 16) = 0;
            *(v438 + 24) = 0xB000000000000000;
            *(v438 + 32) = 0u;
            *(v438 + 48) = 0u;
            v439 = (v435 + *(*v435 + 688));
            *v439 = 0u;
            v439[1] = 0u;
            v439[2] = 0u;
            v439[3] = 0u;
            v439[4] = 0u;
            v439[5] = 0u;
            *(v435 + *(*v435 + 712)) = 0;
            *(v435 + 160) = v472;
            *(v435 + 168) = v420;
            *(v435 + *(*v435 + 696)) = 0;
            *(v435 + *(*v435 + 704)) = 0;
            v440 = v501;
            *(v435 + 144) = v186;
            *(v435 + 152) = v440;
            *(v435 + 16) = 0u;
            *(v435 + 32) = 0u;
            *(v435 + 48) = 1;
            *(v435 + 72) = 0u;
            *(v435 + 56) = 0u;
            *(v435 + 120) = v538;
            v441 = v506;
            *(v435 + 136) = v505;
            *(v435 + 96) = 0;
            *(v435 + 104) = 0;
            *(v435 + 88) = 0;
            *(v435 + 112) = 0;
            if ((*(v441 + 32) & 1) != 0 || (v422 & 0xF000000000000000) == 0xB000000000000000)
            {
              *(v435 + 96) = 1;
              *(v435 + 112) = 0;
            }

            v442 = *(*v503 + 152);
            v443 = v440;
            v444 = v186;
            v442(v435);
            *&v531[0] = v481;
            WORD4(v531[0]) = 0;
            v531[1] = 0uLL;
            LOBYTE(v531[2]) = 2;
            BYTE2(v531[5]) = 11;
            v533[2] = v531[2];
            v533[3] = v531[3];
            v533[4] = v531[4];
            *(&v533[4] + 15) = *(&v531[4] + 15);
            v533[0] = v531[0];
            v533[1] = 0u;
            BYTE3(v533[7]) = 10;
            v241 = v444;
            v419(v533);

            v242 = &qword_1EC4BFD48;
            v243 = &qword_1CFA05460;
            v244 = v531;
            goto LABEL_271;
          }

          v423 = v504;
          v424 = v541;
          (*(*v473 + 240))(&v508, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v424)
          {
            goto LABEL_73;
          }

          v541 = 0;
          if ((*(v499 + 48))(v423, 1, v500) == 1)
          {
            sub_1CEFCCC44(v423, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            v425 = v200;
          }

          else
          {
            sub_1CEFE55D0(v423, v203, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            LOBYTE(v515) = 0;
            v445 = v203[2];
            v531[0] = v203[1];
            v531[1] = v445;
            v446 = v203[4];
            v531[2] = v203[3];
            v531[3] = v446;
            *&v530[6] = v531[0];
            *&v530[22] = v445;
            *&v530[38] = v531[2];
            *&v530[54] = v446;
            LODWORD(v507) = (v489 & ~v498 & 8) == 0;
            v447 = v481;
            *&v533[0] = v481;
            WORD4(v533[0]) = 0;
            *(&v533[1] + 10) = *&v530[16];
            *(&v533[2] + 10) = *&v530[32];
            *(&v533[3] + 10) = *&v530[48];
            *(&v533[4] + 1) = *(&v446 + 1);
            *(v533 + 10) = *v530;
            LOBYTE(v533[5]) = (v489 & ~v498 & 8) == 0;
            *(&v533[5] + 1) = 2049;
            BYTE3(v533[7]) = 10;
            v448 = v186;
            sub_1CEFCCBDC(v531, &v520, &unk_1EC4BF250, &unk_1CFA01B50);
            v418(v533);
            *&v533[0] = v447;
            WORD4(v533[0]) = 0;
            *(&v533[1] + 10) = *&v530[16];
            *(&v533[2] + 10) = *&v530[32];
            *(&v533[3] + 10) = *&v530[48];
            *(&v533[4] + 1) = *&v530[62];
            *(v533 + 10) = *v530;
            LOBYTE(v533[5]) = v507;
            v425 = v502;
            *(&v533[5] + 1) = 2049;
            BYTE3(v533[7]) = 10;
            sub_1CEFCCC44(v533, &qword_1EC4BE730, &unk_1CFA05490);
            sub_1CEFCCC44(v488, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          }

          v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v450 = v449[12];
          v451 = v494;
          v452 = v494 + v449[16];
          v453 = (v494 + v449[20]);
          v454 = v449[24];
          v455 = v449[28];
          v456 = v449[32];
          *v494 = v186;
          (*(v499 + 56))(&v451[v450], 1, 1, v500);
          *v452 = 0;
          v452[8] = -1;
          v453[4] = 0u;
          v453[5] = 0u;
          v453[2] = 0u;
          v453[3] = 0u;
          *v453 = 0u;
          v453[1] = 0u;
          *&v451[v454] = v498;
          *&v451[v455] = v472;
          v457 = v501;
          *&v451[v456] = v501;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v458 = *(*v425 + 520);
          v459 = v457;
          v241 = v186;
          v458(v451, 0);
          v242 = &qword_1EC4BFD38;
          v243 = &unk_1CFA05450;
          v244 = v451;
LABEL_271:
          sub_1CEFCCC44(v244, v242, v243);

          return;
        }

        v230 = v541;
        (*(*v473 + 240))(&v508, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v230)
        {
LABEL_109:

          return;
        }

        v262 = v500;
        v263 = (*(v499 + 48))(v30, 1, v500);
        v202 = v474;
        v541 = 0;
        if (v263 == 1)
        {
          sub_1CEFCCC44(v30, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v203 = v488;
        }

        else
        {
          v322 = v487;
          sub_1CEFE55D0(v30, v487, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v323 = *(v322 + *(v262 + 48));
          v324 = *(v507 + 456);
          if (v323 == 4)
          {
            v325 = v481;
            v203 = v488;
            if (v324 != 4)
            {
              goto LABEL_198;
            }
          }

          else
          {
            v325 = v481;
            v203 = v488;
            if (v324 == 4 || qword_1CFA05EB0[v323] != qword_1CFA05EB0[v324])
            {
              goto LABEL_198;
            }
          }

          sub_1CEFCCC44(v322, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v202 = v474;
        }

        v343 = v200[5];
        v199 = v507;
        v204 = v480;
        v325 = v477;
        if (v343[32])
        {
          v201 = v192;
          v196 = v481;
          goto LABEL_84;
        }

        LODWORD(v323) = *(v507 + 456);
        v196 = v481;
        if (v323 != 2)
        {
          v201 = v192;
          if (v323 != 4)
          {
            goto LABEL_84;
          }

          __break(1u);
LABEL_198:
          LOBYTE(v532[0]) = 0;
          *&v533[0] = v325;
          WORD4(v533[0]) = 0;
          BYTE10(v533[0]) = v323;
          BYTE3(v533[7]) = 3;
          v344 = *(*v503 + 136);
          v345 = v474;
          v344(v533);

          v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v347 = v346[12];
          v348 = v494;
          v349 = v494 + v346[16];
          v350 = (v494 + v346[20]);
          v351 = v346[24];
          v507 = v346[28];
          v352 = v200;
          v353 = v346[32];
          *v494 = v345;
          (*(v499 + 56))(v348 + v347, 1, 1, v500);
          *v349 = 0;
          v349[8] = -1;
          v350[4] = 0u;
          v350[5] = 0u;
          v350[2] = 0u;
          v350[3] = 0u;
          *v350 = 0u;
          v350[1] = 0u;
          *(v348 + v351) = v192;
          *(v348 + v507) = v472;
          v354 = v501;
          *(v348 + v353) = v501;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v355 = *(*v352 + 520);
          v356 = v354;
          v241 = v345;
          v355(v348, 0);
          sub_1CEFCCC44(v348, &qword_1EC4BFD38, &unk_1CFA05450);
          v242 = &unk_1EC4BFBD0;
          v243 = &unk_1CF9FCBC0;
          v244 = v487;
          goto LABEL_271;
        }

        if (v478 == 255)
        {
          v201 = v192;
          goto LABEL_84;
        }

        *&v533[0] = v477;
        BYTE8(v533[0]) = v478;
        v376 = v490;
        v377 = v541;
        (*(*v343 + 240))(v533, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v377)
        {
          goto LABEL_89;
        }

        v541 = 0;
        if ((v495[6])(v376, 1, v496) == 1)
        {
          sub_1CEFCCC44(v376, &qword_1EC4C1B40, &unk_1CF9FCB70);
        }

        else
        {
          v471 = v376 + *(v496 + 12);
          LOBYTE(v471) = *(v471 + *(type metadata accessor for ItemMetadata() + 80));
          sub_1CEFCCC44(v376, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v471)
          {
            v192 = v498;
            v201 = v498 | 8;
LABEL_294:
            v196 = v481;
            v199 = v507;
            v200 = v502;
            goto LABEL_83;
          }
        }

        v192 = v498;
        v201 = v498;
        goto LABEL_294;
      }

      v219 = v81;
      v220 = v486;
      if ((v486 | 2) == 3)
      {
        if ((v489 & 8) != 0)
        {
          v221 = 134217730;
        }

        else
        {
          v221 = 2;
        }

        v222 = v505 | v221;
        if (v486 == 3)
        {
          v223 = v222 | 0x100000000000;
        }

        else
        {
          v223 = v222;
        }

        v224 = v502;
        if (!v480 && v478 != 255)
        {
          *&v532[0] = v477;
          BYTE8(v532[0]) = v478;
          v225 = v492;
          (*(*v502[5] + 240))(v532, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v541 = 0;
          v357 = v496;
          if ((v495[6])(v225, 1, v496) == 1)
          {
            sub_1CEFCCC44(v225, &qword_1EC4C1B40, &unk_1CF9FCB70);
            v270 = v503;
            goto LABEL_158;
          }

          v366 = v491;
          sub_1CEFE55D0(v225, v491, &unk_1EC4BE360, &qword_1CF9FE650);
          v367 = v366 + *(v357 + 12);
          v368 = *(v367 + *(type metadata accessor for ItemMetadata() + 80));
          v270 = v503;
          if ((v368 & 1) == 0)
          {
            sub_1CEFCCC44(v366, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_158;
          }

          LOBYTE(v531[0]) = 1;
          *&v533[0] = *&v532[0];
          BYTE8(v533[0]) = BYTE8(v532[0]);
          BYTE9(v533[0]) = 1;
          LOBYTE(v533[1]) = v220;
          BYTE1(v533[1]) = 5;
          *(&v533[1] + 8) = *(v507 + 472);
          WORD1(v533[7]) = 2316;
          (*(*v503 + 136))(v533);
          v369 = v224[3];
          v370 = sub_1CF8DCAA0();
          v371 = *(v370 + 52);
          v372 = (*(v370 + 48) + 7) & 0x1FFFFFFF8;
          v373 = swift_allocObject();
          *(v373 + 16) = xmmword_1CF9FA450;
          *(v373 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
          v374 = v541;
          v375 = (*(*v369 + 304))(v532, v373, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v374)
          {

            sub_1CEFCCC44(v366, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_109;
          }

          v460 = v375;
          v541 = 0;

          if (!sub_1CF55B584(v460))
          {
LABEL_290:

            sub_1CEFCCC44(v491, &unk_1EC4BE360, &qword_1CF9FE650);
            v249 = v474;
            goto LABEL_244;
          }

          v461 = 0;
          if (v460 < 0)
          {
            v462 = v460;
          }

          else
          {
            v462 = v460 & 0xFFFFFFFFFFFFFF8;
          }

          v506 = v462;
          v507 = v460 >> 62;
          while (1)
          {
            if ((v460 & 0xC000000000000001) != 0)
            {
              v463 = MEMORY[0x1D3869C30](v461, v460);
            }

            else
            {
              if (v461 >= *((v460 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_296;
              }

              v463 = *(v460 + 8 * v461 + 32);
            }

            v464 = v461 + 1;
            if (__OFADD__(v461, 1))
            {
              break;
            }

            v465 = *(v463 + 112);
            if (v465 == 2)
            {
              goto LABEL_310;
            }

            v466 = *(v463 + 96);
            v467 = *(v463 + 104);
            *(v463 + 96) = 0;
            *(v463 + 104) = 0;
            *(v463 + 112) = 4;
            sub_1CF03D7A8(v466, v467, v465);
            v468 = *(*v503 + 152);

            v468(v469);

            if (v507)
            {
              v470 = sub_1CF9E7818();
            }

            else
            {
              v470 = *((v460 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v461;
            if (v464 == v470)
            {
              goto LABEL_290;
            }
          }

          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }
      }

      else
      {
        v224 = v502;
        v231 = v502[3];
        v232 = (*(*v231 + 344))(&v508, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v541 = 0;
        if (v233 & 1 | ((v232 & ~(v505 | 0x8000001)) == 0))
        {
          v269 = 0;
        }

        else
        {
          v269 = v232;
        }

        v223 = v269 | v505 | 0x8000001;
        if (v478 != 255)
        {
          *&v533[0] = v477;
          BYTE8(v533[0]) = v478;
          v326 = sub_1CF8DCAA0();
          v327 = *(v326 + 52);
          v328 = (*(v326 + 48) + 7) & 0x1FFFFFFF8;
          v329 = swift_allocObject();
          *(v329 + 16) = xmmword_1CF9FA450;
          *(v329 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
          v330 = v541;
          v331 = (*(*v231 + 304))(v533, v329, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v257 = v474;
          if (v330)
          {
            goto LABEL_136;
          }

          v541 = 0;
          v361 = v331;

          v362 = sub_1CF663828(v361);

          if (v362)
          {
            v363 = *(v362 + 112);
            v270 = v503;
            if (v363 == 3 || v363 == 4 && !(*(v362 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v362 + 104)))
            {
            }

            else
            {
              v364 = *(v362 + 136);

              if ((v364 & ~v223) != 0)
              {
                v365 = v364;
              }

              else
              {
                v365 = 0;
              }

              v223 |= v365;
            }

            goto LABEL_158;
          }
        }
      }

      v270 = v503;
LABEL_158:
      if (v219 != 6)
      {
        v223 |= 0x20000uLL;
      }

      v537 = *(v507 + 472);
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
      v272 = *(v271 + 48);
      v273 = *(v271 + 52);
      v274 = swift_allocObject();
      *(v274 + 176) = 0;
      *(v274 + 184) = -1;
      *(v274 + 192) = 0;
      *(v274 + 200) = 0;
      *(v274 + 208) = 1;
      *(v274 + 216) = 0u;
      *(v274 + 232) = 0u;
      *(v274 + 248) = 0;
      v275 = *(*v274 + 672);
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
      (*(*(v276 - 8) + 56))(v274 + v275, 1, 1, v276);
      v277 = v274 + *(*v274 + 680);
      *v277 = 0;
      *(v277 + 8) = 0;
      *(v277 + 16) = 0;
      *(v277 + 24) = 0xB000000000000000;
      *(v277 + 32) = 0u;
      *(v277 + 48) = 0u;
      v278 = (v274 + *(*v274 + 688));
      *v278 = 0u;
      v278[1] = 0u;
      v278[2] = 0u;
      v278[3] = 0u;
      v278[4] = 0u;
      v278[5] = 0u;
      *(v274 + *(*v274 + 712)) = 0;
      *(v274 + 160) = v472;
      *(v274 + 168) = 16;
      *(v274 + *(*v274 + 696)) = 0;
      *(v274 + *(*v274 + 704)) = 0;
      v279 = v501;
      *(v274 + 16) = 0u;
      *(v274 + 32) = 0u;
      *(v274 + 48) = 1;
      *(v274 + 72) = 0u;
      *(v274 + 56) = 0u;
      *(v274 + 120) = v537;
      v280 = v474;
      *(v274 + 144) = v474;
      *(v274 + 152) = v279;
      *(v274 + 136) = v223;
      *(v274 + 96) = 0;
      *(v274 + 104) = 0;
      *(v274 + 88) = 0;
      *(v274 + 112) = 0;
      if ((*(v224[5] + 32) & 1) != 0 || (v479 & 0xF000000000000000) == 0xB000000000000000)
      {
        *(v274 + 96) = xmmword_1CF9FD920;
        *(v274 + 112) = 0;
      }

      v281 = *(*v270 + 152);
      v282 = v279;
      v283 = v280;
      v281(v274);
      v284 = v481;
      *&v532[0] = v481;
      WORD4(v532[0]) = 0;
      v532[1] = 0uLL;
      LOBYTE(v532[2]) = 2;
      BYTE2(v532[5]) = 11;
      v533[2] = v532[2];
      v533[3] = v532[3];
      v533[4] = v532[4];
      *(&v533[4] + 15) = *(&v532[4] + 15);
      v533[0] = v532[0];
      v533[1] = 0u;
      BYTE3(v533[7]) = 10;
      v285 = *(*v270 + 136);
      v286 = v283;
      v285(v533);
      sub_1CEFCCC44(v532, &qword_1EC4BFD48, &qword_1CFA05460);
      LOBYTE(v520) = 0;
      v507 = v286;
      sub_1CEFF5464(&unk_1F4BED110, v531);
      v287 = *&v531[0];
      v288 = v520;
      *&v533[0] = v284;
      BYTE8(v533[0]) = 0;
      BYTE9(v533[0]) = v520;
      *&v533[1] = *&v531[0];
      BYTE2(v533[5]) = 1;
      BYTE3(v533[7]) = 10;
      v285(v533);

      *&v533[0] = v284;
      BYTE8(v533[0]) = 0;
      BYTE9(v533[0]) = v288;
      *&v533[1] = v287;
      BYTE2(v533[5]) = 1;
      BYTE3(v533[7]) = 10;
      sub_1CEFCCC44(v533, &qword_1EC4BE730, &unk_1CFA05490);
      v249 = v507;
      goto LABEL_244;
    }

    v108 = v503;
    if (v66 != 2)
    {
      goto LABEL_309;
    }

    if (!v62)
    {
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v109 = *(v57 + 216);
    if (v109 == 255)
    {
LABEL_304:
      __break(1u);
      goto LABEL_305;
    }

    v110 = *(v57 + 8);
    v111 = *(v57 + 208);
    if ((v110 & 0x10) != 0)
    {
      v112 = *(v57 + 472);
      v113 = *(v57 + 480);
      if ((v110 & 1) == 0)
      {
        v141 = 0x2000000;
LABEL_65:
        v142 = v501;
        v143 = v62;
        v144 = sub_1CF389FBC(v62, v501, v112, v113, v141);
        v145 = *(*v108 + 152);
        v146 = v142;
        v147 = v143;
        v145(v144);

        *&v532[0] = v143;
        WORD4(v532[0]) = 0;
        v532[1] = 0uLL;
        LOBYTE(v532[2]) = 2;
        BYTE2(v532[5]) = 11;
        v533[2] = v532[2];
        v533[3] = v532[3];
        v533[4] = v532[4];
        *(&v533[4] + 15) = *(&v532[4] + 15);
        v533[0] = v532[0];
        v533[1] = 0u;
        BYTE3(v533[7]) = 10;
        v148 = *(*v108 + 136);
        v149 = v147;
        v148(v533);
        sub_1CEFCCC44(v532, &qword_1EC4BFD48, &qword_1CFA05460);
        LOBYTE(v531[0]) = 1;
        *&v533[0] = v111;
        BYTE8(v533[0]) = v109;
        BYTE9(v533[0]) = 1;
        memset(&v533[1], 0, 66);
        BYTE2(v533[5]) = 15;
        BYTE3(v533[7]) = 10;
        v148(v533);

        return;
      }
    }

    else
    {
      v112 = *(v57 + 472);
      v113 = *(v57 + 480);
    }

    v141 = 4096;
    goto LABEL_65;
  }

  v504 = v65;
  v482 = v59;
  v483 = v58;
  v489 = v63;
  if (!v62)
  {
    goto LABEL_297;
  }

  v99 = v61;
  v100 = v55;
  v528 = v62;
  v101 = v502[4];
  v102 = *(*v101 + 312);
  v103 = v62;
  v104 = v62;
  v105 = v541;
  v106 = v102(&v528, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v105)
  {

    return;
  }

  v481 = v103;
  v541 = 0;
  if ((v107 & 1) == 0)
  {
    v496 = v106;
    v188 = v101;
    (*(*v101 + 288))(&v527, &v528, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v495 = v104;
    sub_1CF095754(v533);
    v189 = v527;
    if (v527)
    {
      v190 = v502[2];
      v191 = v527;
      sub_1CF7EBA74(v191, v505, v506, v531);

      v264 = v531;
    }

    else
    {
      v264 = v533;
    }

    memcpy(v532, v264, 0x208uLL);
    v265 = v502[5];
    if (*(v265 + 32))
    {
      memcpy(v531, v532, 0x208uLL);
      v266 = sub_1CF08B99C(v531);
      v267 = v506;
      if (v266 == 1)
      {
        v492 = v189;
        v268 = v504;
LABEL_226:
        v380 = v268 | (v489 >> 22) & 0x200000;
        v381 = (v268 >> 9) & 1;
        if ((v489 & 0x8000) == 0)
        {
          LODWORD(v381) = 1;
        }

        if (v381)
        {
          v382 = v380;
        }

        else
        {
          v382 = v380 | 0x200;
        }

        v383 = v507;
        v384 = *(v507 + 456);
        v385 = v503;
        if (v384 != 1)
        {
          if (v384 == 4)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          if (v78 >> 60 != 11)
          {
            v382 |= 0x8000000uLL;
          }
        }

        v541 = 0;
        if (v384 != 2 && (*(v265 + 32) & 1) == 0)
        {
          *&v520 = v481;
          WORD4(v520) = 0;
          LOBYTE(v521) = 0;
          BYTE2(v524[1]) = 10;
          v531[2] = v522;
          v531[3] = v523;
          v531[4] = v524[0];
          *(&v531[4] + 15) = *(v524 + 15);
          v531[0] = v520;
          v531[1] = v521;
          BYTE3(v531[7]) = 10;
          v386 = *(*v503 + 136);
          v387 = v495;
          v386(v531);
          sub_1CEFCCC44(&v520, &qword_1EC4BFD48, &qword_1CFA05460);
          v383 = v507;
        }

        v536 = *(v383 + 472);
        v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v389 = *(v388 + 48);
        v390 = *(v388 + 52);
        v391 = swift_allocObject();
        *(v391 + 168) = 0;
        *(v391 + 176) = 0;
        *(v391 + 184) = 1;
        *(v391 + 192) = 0u;
        *(v391 + 208) = 0u;
        *(v391 + 224) = 0u;
        v392 = *(*v391 + 664);
        v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        (*(*(v393 - 8) + 56))(v391 + v392, 1, 1, v393);
        v394 = v391 + *(*v391 + 672);
        *v394 = 0;
        *(v394 + 8) = 0;
        *(v394 + 16) = 0;
        *(v394 + 24) = 0xB000000000000000;
        *(v394 + 32) = 0u;
        *(v394 + 48) = 0u;
        v395 = (v391 + *(*v391 + 680));
        *v395 = 0u;
        v395[1] = 0u;
        v395[2] = 0u;
        v395[3] = 0u;
        v395[4] = 0u;
        v395[5] = 0u;
        v395[6] = 0u;
        *(v391 + *(*v391 + 688)) = 0;
        v396 = v495;
        v397 = v496;
        v398 = v501;
        *(v391 + 152) = v501;
        *(v391 + 160) = v397;
        *(v391 + 16) = 0u;
        *(v391 + 32) = 0u;
        *(v391 + 48) = 1;
        *(v391 + 72) = 0u;
        *(v391 + 56) = 0u;
        *(v391 + 120) = v536;
        *(v391 + 136) = v382;
        *(v391 + 144) = v396;
        *(v391 + 96) = 0;
        *(v391 + 104) = 0;
        *(v391 + 88) = 0;
        *(v391 + 112) = 0;
        if (*(v265 + 32) == 1)
        {
          *(v391 + 96) = 1;
          *(v391 + 112) = 0;
        }

        v399 = *(*v385 + 152);
        v400 = v398;
        v401 = v495;
        v399(v391);
        v402 = v481;
        *&v520 = v481;
        WORD4(v520) = 0;
        v521 = 0uLL;
        LOBYTE(v522) = 2;
        BYTE2(v524[1]) = 11;
        v531[2] = v522;
        v531[3] = v523;
        v531[4] = v524[0];
        *(&v531[4] + 15) = *(v524 + 15);
        v531[0] = v520;
        v531[1] = 0u;
        BYTE3(v531[7]) = 10;
        v403 = *(*v385 + 136);
        v404 = *v385 + 136;
        v405 = v401;
        v506 = v404;
        v507 = v403;
        (v403)(v531);
        sub_1CEFCCC44(&v520, &qword_1EC4BFD48, &qword_1CFA05460);
        LOBYTE(v515) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        v406 = swift_allocObject();
        *(v406 + 16) = xmmword_1CF9FA440;
        *(v406 + 32) = v498;
        v407 = qword_1EDEABDE0;
        v505 = v405;
        if (v407 != -1)
        {
          swift_once();
        }

        *(v406 + 40) = qword_1EDEABDE8;
        sub_1CEFF5464(v406, &v508);
        v408 = v508;
        v409 = v515;
        *&v531[0] = v402;
        BYTE8(v531[0]) = 0;
        BYTE9(v531[0]) = v515;
        *&v531[1] = v508;
        BYTE2(v531[5]) = 1;
        BYTE3(v531[7]) = 10;
        (v507)(v531);

        *&v531[0] = v402;
        BYTE8(v531[0]) = 0;
        BYTE9(v531[0]) = v409;
        *&v531[1] = v408;
        BYTE2(v531[5]) = 1;
        BYTE3(v531[7]) = 10;
        sub_1CEFCCC44(v531, &qword_1EC4BE730, &unk_1CFA05490);
        sub_1CEFCCC44(v532, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        goto LABEL_243;
      }
    }

    else
    {
      memcpy(v531, v532, 0x208uLL);
      if (sub_1CF08B99C(v531) == 1 || BYTE8(v532[13]) == 255)
      {
        v541 = 0;
        v290 = v507;
        v292 = *(v507 + 472);
        v291 = *(v507 + 480);
        WORD4(v515) = 0;
        *&v516 = 2;
        *(&v516 + 1) = v292;
        v506 = v291;
        *&v517 = v291;
        v522 = v517;
        v523 = v518;
        *&v515 = v481;
        v519[18] = 0;
        v524[0] = *v519;
        *(v524 + 15) = *&v519[15];
        v520 = v515;
        v521 = v516;
        v526 = 10;
        v293 = *(*v503 + 136);
        v294 = *v503 + 136;
        v295 = v495;
        v504 = v294;
        v505 = v293;
        v293(&v520);
        sub_1CEFCCC44(&v515, &qword_1EC4BFD48, &qword_1CFA05460);
        v296 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        sub_1CEFCCBDC(v290, &v520, &unk_1EC4BFC90, &unk_1CFA053E0);
        v297 = sub_1CF9E6108();
        v298 = sub_1CF9E72A8();
        v299 = os_log_type_enabled(v297, v298);
        v492 = v189;
        if (v299)
        {
          v300 = swift_slowAlloc();
          v497 = v292;
          v301 = v300;
          v302 = swift_slowAlloc();
          *&v520 = v302;
          *v301 = 136446210;
          v303 = sub_1CF38C048(v302);
          v498 = v295;
          v305 = v304;
          sub_1CEFCCC44(v290, &unk_1EC4BFC90, &unk_1CFA053E0);
          v306 = sub_1CEFD0DF0(v303, v305, &v520);
          v295 = v498;

          *(v301 + 4) = v306;
          _os_log_impl(&dword_1CEFC7000, v297, v298, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v301, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v302);
          MEMORY[0x1D386CDC0](v302, -1, -1);
          v307 = v301;
          v292 = v497;
          MEMORY[0x1D386CDC0](v307, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v290, &unk_1EC4BFC90, &unk_1CFA053E0);
        }

        (*(v483 + 8))(v100, v482);
        v332 = v502;
        if (*(v290 + 240) == 2)
        {
          *&v508 = v481;
          WORD4(v508) = 0;
          LOWORD(v509) = 1282;
          *(&v509 + 1) = v292;
          *&v510 = v506;
          v514[18] = 12;
          v524[0] = v512;
          v524[1] = v513;
          *v525 = *v514;
          *&v525[15] = *&v514[15];
          v520 = v508;
          v521 = v509;
          v522 = v510;
          v523 = v511;
          v526 = 9;
          v333 = v295;
          (v505)(&v520);
          sub_1CEFCCC44(&v508, &unk_1EC4BFD60, &qword_1CFA05468);
        }

        v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
        v335 = v334[12];
        v336 = v334[16];
        v337 = v334[20];
        v338 = v494;
        *v494 = v295;
        (*(v499 + 56))(v338 + v335, 1, 1, v500);
        *(v338 + v336) = v496;
        v339 = v501;
        *(v338 + v337) = v501;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v340 = *(*v332 + 520);
        v341 = v339;
        v342 = v295;
        v340(v338, 0);
        sub_1CEFCCC44(v338, &qword_1EC4BFD38, &unk_1CFA05450);
        sub_1CEFCCC44(v532, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_243:
        v249 = v492;
        goto LABEL_244;
      }

      if (!LOBYTE(v532[15]))
      {
        v504 |= 1uLL;
      }

      v267 = v506;
    }

    v541 = v265;
    memcpy(v540, v532, 0x208uLL);
    v358 = *(*v188 + 240);
    memcpy(v531, v532, 0x208uLL);
    sub_1CEFCCBDC(v531, &v520, &unk_1EC4BFC90, &unk_1CFA053E0);
    v359 = v497;
    v358(&v528, 1, &v534, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if ((*(v499 + 48))(v359, 1, v500) == 1)
    {
      v492 = v189;
      sub_1CEFCCC44(v532, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v359, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v268 = v504;
    }

    else
    {
      v360 = v486;
      sub_1CEFE55D0(v359, v486, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CF415C48(&v520, v507, v360, v540, v502, v505, v267);
      v379 = v378;
      v492 = v189;
      sub_1CF4804C0(v520, WORD4(v520));
      sub_1CEFCCC44(v360, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFCCC44(v532, &unk_1EC4BFD80, &unk_1CFA0A2A0);

      v268 = v504;
      if (v379)
      {
        v268 = v504 | 0x40000000000;
      }
    }

    v265 = v541;
    goto LABEL_226;
  }

  v150 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v151 = v104;
  v152 = v507;
  sub_1CEFCCBDC(v507, v533, &unk_1EC4BFC90, &unk_1CFA053E0);
  v153 = sub_1CF9E6108();
  v154 = sub_1CF9E72A8();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v506 = v156;
    *&v533[0] = v156;
    *v155 = 136446466;
    v157 = sub_1CF38C048(v156);
    v159 = v158;
    sub_1CEFCCC44(v152, &unk_1EC4BFC90, &unk_1CFA053E0);
    v160 = sub_1CEFD0DF0(v157, v159, v533);

    *(v155 + 4) = v160;
    *(v155 + 12) = 2082;
    v161 = NSFileProviderItemIdentifier.description.getter();
    v163 = v162;

    v164 = sub_1CEFD0DF0(v161, v163, v533);

    *(v155 + 14) = v164;
    _os_log_impl(&dword_1CEFC7000, v153, v154, "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v155, 0x16u);
    v165 = v506;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v165, -1, -1);
    MEMORY[0x1D386CDC0](v155, -1, -1);
  }

  else
  {

    sub_1CEFCCC44(v152, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  (*(v483 + 8))(v99, v482);
}

void sub_1CF415C48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v128 = a6;
  v129 = a7;
  v8 = *(a4 + 216);
  if (v8 == 255 || (v126 = *(a4 + 208), v127 = v8, !*(a2 + 97)))
  {
    *a1 = 0;
    *(a1 + 8) = -256;
    return;
  }

  v9 = a5;
  v110 = v7;
  v105 = a2[1];
  v106 = *a2;
  v107 = *(a2 + 120);
  (*(*a5 + 248))();
  sub_1CF9E7B08();

  sub_1CF9E7C08();
  v11 = __src[0];
  v130 = v9;
  if ((~__src[0] & 0xF000000000000007) != 0)
  {
    v108 = a3;
    while (1)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          goto LABEL_40;
        }

        v28 = v32;
        v33 = v32 + *(*v32 + 672);
        swift_beginAccess();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
        if (v35)
        {
          if (v127 != 255)
          {
            goto LABEL_40;
          }

          if (v35 == 1)
          {
            goto LABEL_173;
          }
        }

        else
        {
          v49 = *(v33 + 8);
          if (v49 == 255)
          {
            goto LABEL_40;
          }

          v65 = *v33;
          if (*(v33 + 8))
          {
            if (v49 == 1)
            {
              if (v127 != 1 || v65 != v126)
              {
                goto LABEL_40;
              }
            }

            else if (v65)
            {
              if (v127 != 2 || v126 != 1)
              {
                goto LABEL_40;
              }
            }

            else if (v127 != 2 || v126)
            {
              goto LABEL_40;
            }
          }

          else if (v127 || v65 != v126)
          {
            goto LABEL_40;
          }
        }

        v50 = *(v9[5] + 16);
        v51 = *(v33 + 16);
        v52 = *(v33 + 24);
        v53 = *(a3 + 88);
        v103 = *(a3 + 80);
        v54 = a3;
        v55 = *(*v50 + 112);
        sub_1CF095774(v11);

        v118 = v52;

        v115 = v53;

        v57 = v55(v56);
        if (v57 == 2 || (v57 & 1) == 0)
        {
          __src[0] = v51;
          __src[1] = v52;
          v120[0] = v103;
          v120[1] = v53;
          sub_1CEFE4E68();
          v26 = sub_1CF9E7678();

          sub_1CF09575C(v11);

          a3 = v54;
LABEL_39:
          v9 = v130;
          if (!v26)
          {
            goto LABEL_166;
          }

          goto LABEL_40;
        }

        v58 = v52;
        v59 = v51;
        if ((v52 & 0x2000000000000000) != 0)
        {
          v60 = HIBYTE(v52) & 0xF;
        }

        else
        {
          v60 = v51 & 0xFFFFFFFFFFFFLL;
        }

        a3 = v54;
        v9 = v130;
        v61 = v115;
        v62 = v103;
        if (v60)
        {
          if (sub_1CF9E6B38() == 12565487 && v63 == 0xA300000000000000)
          {
          }

          else
          {
            v98 = sub_1CF9E8048();

            v58 = v118;
            if ((v98 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          if (4 * v60 < sub_1CF9E69E8() >> 14)
          {
            goto LABEL_170;
          }

          v75 = sub_1CF9E6B58();
          v59 = MEMORY[0x1D3868C10](v75);
          v100 = v76;

          v61 = v115;
        }

        else
        {
LABEL_84:

          v100 = v58;
        }

        if ((v61 & 0x2000000000000000) != 0)
        {
          v77 = HIBYTE(v61) & 0xF;
        }

        else
        {
          v77 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (!v77)
        {
          goto LABEL_138;
        }

        if (sub_1CF9E6B38() == 12565487 && v78 == 0xA300000000000000)
        {

          goto LABEL_136;
        }

        v97 = sub_1CF9E8048();

        if (v97)
        {
LABEL_136:
          if (4 * v77 < sub_1CF9E69E8() >> 14)
          {
            goto LABEL_171;
          }

          v79 = sub_1CF9E6B58();
          v62 = MEMORY[0x1D3868C10](v79);
          v81 = v80;
        }

        else
        {
LABEL_138:

          v81 = v61;
        }

        if (v59 == v62 && v100 == v81)
        {
LABEL_165:

          sub_1CF09575C(v11);

LABEL_166:

          v96 = *(v28 + 144);
          sub_1CF09575C(v11);
          *a1 = v96;
          *(a1 + 9) = 0;
          return;
        }

        goto LABEL_141;
      }

      v28 = v27;
      v29 = v27 + *(*v27 + 664);
      swift_beginAccess();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
      v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
      if (v31)
      {
        if (v127 != 255)
        {
          goto LABEL_40;
        }

        if (v31 == 1)
        {
          goto LABEL_172;
        }
      }

      else
      {
        v36 = *(v29 + 8);
        if (v36 == 255)
        {
          goto LABEL_40;
        }

        v48 = *v29;
        if (*(v29 + 8))
        {
          if (v36 == 1)
          {
            if (v127 != 1 || v48 != v126)
            {
              goto LABEL_40;
            }
          }

          else if (v48)
          {
            if (v127 != 2 || v126 != 1)
            {
              goto LABEL_40;
            }
          }

          else if (v127 != 2 || v126)
          {
            goto LABEL_40;
          }
        }

        else if (v127 || v48 != v126)
        {
          goto LABEL_40;
        }
      }

      v37 = *(v29 + 16);
      v38 = *(v29 + 24);
      v39 = *(a3 + 88);
      v117 = *(a3 + 80);
      v40 = *(**(v9[5] + 16) + 112);

      sub_1CF095774(v11);

      v114 = v39;

      v42 = v40(v41);
      if (v42 == 2 || (v42 & 1) == 0)
      {
        __src[0] = v37;
        __src[1] = v38;
        v120[0] = v117;
        v120[1] = v39;
        sub_1CEFE4E68();
        v26 = sub_1CF9E7678();

        sub_1CF09575C(v11);

        a3 = v108;
        goto LABEL_39;
      }

      v43 = v37;
      v44 = (v38 & 0x2000000000000000) != 0 ? HIBYTE(v38) & 0xF : v37 & 0xFFFFFFFFFFFFLL;
      a3 = v108;
      v45 = v114;
      if (!v44)
      {
        break;
      }

      if (sub_1CF9E6B38() == 12565487 && v46 == 0xA300000000000000)
      {
      }

      else
      {
        v99 = sub_1CF9E8048();

        if ((v99 & 1) == 0)
        {
          break;
        }
      }

      if (4 * v44 < sub_1CF9E69E8() >> 14)
      {
        goto LABEL_168;
      }

      v66 = sub_1CF9E6B58();
      v43 = MEMORY[0x1D3868C10](v66);
      v102 = v67;

      v45 = v114;
LABEL_101:
      v9 = v130;
      v68 = v117;
      if ((v45 & 0x2000000000000000) != 0)
      {
        v69 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v69 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (!v69)
      {
LABEL_111:

        v74 = v45;
        goto LABEL_112;
      }

      if (sub_1CF9E6B38() == 12565487 && v70 == 0xA300000000000000)
      {
      }

      else
      {
        v101 = sub_1CF9E8048();

        v68 = v117;
        if ((v101 & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      v116 = v43;
      if (4 * v69 < sub_1CF9E69E8() >> 14)
      {
        goto LABEL_169;
      }

      v71 = sub_1CF9E6B58();
      v72 = MEMORY[0x1D3868C10](v71);
      v74 = v73;

      v68 = v72;
      v43 = v116;
LABEL_112:
      if (v43 == v68 && v102 == v74)
      {
        goto LABEL_165;
      }

LABEL_141:
      v82 = sub_1CF9E8048();

      sub_1CF09575C(v11);

      if (v82)
      {
        goto LABEL_166;
      }

LABEL_40:
      sub_1CF09575C(v11);
      sub_1CF9E7C08();
      v11 = __src[0];
      if ((~__src[0] & 0xF000000000000007) == 0)
      {
        goto LABEL_5;
      }
    }

    v102 = v38;
    goto LABEL_101;
  }

LABEL_5:

  v12 = a1;
  if (v107 != 2 && (!v106 || *(a2 + 216) == 255) && v105)
  {
LABEL_37:
    *v12 = 0;
    *(v12 + 8) = -256;
    return;
  }

  v13 = v9[4];
  if (v13[32])
  {
LABEL_12:
    v14 = v9[5];
    v15 = *(a3 + 88);
    __src[0] = *(a3 + 80);
    __src[1] = v15;
    v120[0] = 0;
    LOBYTE(v120[1]) = -1;
    v16 = *(*v14 + 256);

    v17 = v16(&v126, __src, v120, &v128, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    if (v110)
    {
      return;
    }

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = a2[26];
      v20 = *(a2 + 216);
      v21 = v20 == 2;
      v22 = v19 == 1 && v20 == 2;
      if (v19)
      {
        v21 = 0;
      }

      v23 = (v17 + 40);
      do
      {
        v24 = *v23;
        if (v24 == 255)
        {
          if (v20 == 255)
          {
            goto LABEL_36;
          }
        }

        else if (v20 != 255)
        {
          v25 = *(v23 - 1);
          if (*v23)
          {
            if (v24 == 1)
            {
              if (v20 == 1 && v25 == v19)
              {
                goto LABEL_36;
              }
            }

            else if (v25)
            {
              if (v22)
              {
                goto LABEL_36;
              }
            }

            else if (v21)
            {
              goto LABEL_36;
            }
          }

          else if (!*(a2 + 216) && v25 == v19)
          {
            goto LABEL_36;
          }
        }

        v23 += 16;
        --v18;
      }

      while (v18);
      *a1 = 0;
      *(a1 + 8) = -256;
      return;
    }

LABEL_36:

    v12 = a1;
    goto LABEL_37;
  }

  v83 = *(a3 + 88);
  __src[0] = *(a3 + 80);
  __src[1] = v83;
  v120[0] = *a3;
  v84 = *(*v13 + 256);
  v85 = v120[0];

  v86 = v84(a3 + 8, __src, v120, &v128, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  if (v110)
  {
    return;
  }

  v109 = a3;
  v87 = *(v86 + 16);
  if (!v87)
  {
LABEL_161:

    a3 = v109;
    goto LABEL_12;
  }

  v88 = 4;
  v89 = a7;
  while (v88 - 4 < v87)
  {
    v91 = v89 == 2;
    v92 = *(v86 + 8 * v88);
    v93 = v9[2];
    v124 = a6;
    v125 = v89;
    v121 = v92;
    v122 = 0;
    v94 = *(*v93 + 168);
    v95 = v92;
    v94(__src, &v121, v91, &v124, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    sub_1CF1E53F8(v121, v122, SHIBYTE(v122));
    memcpy(v120, __src, sizeof(v120));
    if (sub_1CF08B99C(v120) != 1)
    {
      memcpy(__dst, __src, 0x208uLL);
      if (LOBYTE(__dst[27]) == 255)
      {
        if (LOBYTE(__dst[15]))
        {
          if (LOBYTE(__dst[15]) == 2)
          {
            goto LABEL_164;
          }

          goto LABEL_159;
        }

        if ((__dst[13] & 0x400) == 0)
        {
LABEL_159:
          if (!__dst[1])
          {
LABEL_164:

            sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
            *a1 = v92;
            *(a1 + 8) = 0;
            return;
          }
        }
      }

      sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
      goto LABEL_151;
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1CEFCCC44(__dst, &qword_1EC4BFDC8, &unk_1CFA054A0);

LABEL_151:
    v87 = *(v86 + 16);
    v90 = v88 - 3;
    ++v88;
    v9 = v130;
    v89 = a7;
    if (v90 == v87)
    {
      goto LABEL_161;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
}

uint64_t sub_1CF416BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v98 = a6;
  v99 = a7;
  v7 = *(a4 + 248);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v100 = *(a4 + 248);
  v8 = *(a2 + 137);
  if (!v8)
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 8) = -256;
    return v8 & 1;
  }

  v76 = *(a2 + 16);
  v78 = *(a2 + 8);
  v79 = *(a2 + 160);
  v9 = *(*a5 + 248);
  v89 = v7;
  v9();
  sub_1CF9E7B08();

  sub_1CF9E7C08();
  for (i = __src[0]; (~__src[0] & 0xF000000000000007) != 0; i = __src[0])
  {
    if ((i & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = v18 + *(*v18 + 664);
      swift_beginAccess();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v22 = *(*(v21 - 8) + 48);
      if (v22(v20, 1, v21))
      {
        goto LABEL_17;
      }

      v80 = v22;
      v23 = *v20;
      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;
      if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
      {
        v85 = 1;
      }

      else
      {
        v85 = sub_1CF9E8048();
      }

      v38 = v23;
      v39 = v89;
      v40 = v38;
      v41 = v39;
      v42 = v40;
      sub_1CF095774(i);

      if ((v85 & 1) == 0)
      {
LABEL_16:
        sub_1CF09575C(i);
        goto LABEL_17;
      }

      result = v80(v20, 1, v21);
      if (result == 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
        goto LABEL_17;
      }

      v19 = v29;
      v20 = v29 + *(*v29 + 672);
      swift_beginAccess();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v31 = *(*(v30 - 8) + 48);
      if (v31(v20, 1, v30))
      {
        goto LABEL_17;
      }

      v81 = v31;
      v32 = *v20;
      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;
      if (v33 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v35 == v36)
      {
        v86 = 1;
      }

      else
      {
        v86 = sub_1CF9E8048();
      }

      v43 = v32;
      v44 = v89;
      v45 = v43;
      v41 = v44;
      sub_1CF095774(i);

      if ((v86 & 1) == 0)
      {
        goto LABEL_16;
      }

      result = v81(v20, 1, v30);
      if (result == 1)
      {
        goto LABEL_79;
      }
    }

    v46 = *(v20 + 16);
    v47 = *(a3 + 128);
    v48 = *(a3 + 136);
    __src[0] = *(v20 + 8);
    __src[1] = v46;
    v91[0] = v47;
    v91[1] = v48;
    sub_1CEFE4E68();

    v49 = sub_1CF9E7678();
    sub_1CF09575C(i);

    if (!v49)
    {

      v50 = *(v19 + 144);
      v51 = *(v19 + 152);
      sub_1CF09575C(i);
      *a1 = v50;
      *(a1 + 8) = v51;
      v8 = 1;
      *(a1 + 9) = 0;
      return v8 & 1;
    }

LABEL_17:
    sub_1CF09575C(i);
    sub_1CF9E7C08();
  }

  v11 = a5;
  if (v79 != 2 && (v78 == 255 || !*(a2 + 248)) && v76)
  {

    v8 = 0;
    *a1 = 0;
    *(a1 + 8) = -256;
    return v8 & 1;
  }

  v13 = a5[4];
  if ((v13[32] & 1) == 0)
  {
    v52 = *(a3 + 136);
    __src[0] = *(a3 + 128);
    __src[1] = v52;
    v91[0] = *a3;
    LOBYTE(v91[1]) = *(a3 + 8);
    v53 = *(*v13 + 256);

    v54 = v53(a3 + 16, __src, v91, &v98, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v84)
    {

      return v8 & 1;
    }

    v66 = v54;

    v67 = *(v66 + 16);
    if (!v67)
    {
LABEL_69:

      v11 = a5;
      goto LABEL_13;
    }

    v68 = 0;
    v69 = (v66 + 40);
    while (1)
    {
      if (v68 >= v67)
      {
        goto LABEL_77;
      }

      v72 = *(v69 - 1);
      v73 = *v69;
      v74 = a5[2];
      v96 = a6;
      v97 = a7;
      v92 = v72;
      v93 = v73;
      v94 = 0;
      (*(*v74 + 168))(__src, &v92, a7 == 2, &v96, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      sub_1CEFD0994(v92, v93, v94);
      memcpy(v91, __src, sizeof(v91));
      if (sub_1CF08B99C(v91) != 1)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v70 = &unk_1EC4BFD20;
      v71 = &unk_1CFA05440;
LABEL_58:
      result = sub_1CEFCCC44(__dst, v70, v71);
      ++v68;
      v67 = *(v66 + 16);
      v69 += 16;
      if (v68 == v67)
      {
        goto LABEL_69;
      }
    }

    memcpy(__dst, __src, 0x208uLL);
    if (!__dst[31])
    {
      if (LOBYTE(__dst[20]))
      {
        if (LOBYTE(__dst[20]) == 2)
        {

LABEL_75:
          sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          *a1 = v72;
          *(a1 + 8) = v73;
          v8 = 1;
          return v8 & 1;
        }

        goto LABEL_66;
      }

      if ((__dst[18] & 0x400) == 0)
      {
LABEL_66:
        if (!__dst[2])
        {

          goto LABEL_75;
        }
      }
    }

    v70 = &qword_1EC4BFBC0;
    v71 = &unk_1CF9FCAC0;
    goto LABEL_58;
  }

LABEL_13:
  v14 = v11[5];
  v15 = *(a3 + 136);
  __src[0] = *(a3 + 128);
  __src[1] = v15;
  v91[0] = 0;
  v16 = *(*v14 + 256);

  v17 = v16(&v100, __src, v91, &v98, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v84)
  {

    return v8 & 1;
  }

  v55 = v17;

  v56 = *(v55 + 16);
  if (!v56)
  {

LABEL_73:
    v8 = 0;
    *a1 = 0;
    *(a1 + 8) = -256;
    return v8 & 1;
  }

  v57 = *(a2 + 248);

  v58 = 0;
  while (v58 < v56)
  {
    if (v57)
    {
      v59 = *(v55 + 8 * v58 + 32);
      v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v62 = v61;
      if (v60 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v62 == v63)
      {

LABEL_72:

        swift_bridgeObjectRelease_n();
        goto LABEL_73;
      }

      v65 = sub_1CF9E8048();

      if (v65)
      {
        goto LABEL_72;
      }
    }

    ++v58;
    v56 = *(v55 + 16);
    if (v58 == v56)
    {

      *a1 = 0;
      *(a1 + 8) = -256;
      v8 = 1;
      return v8 & 1;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1CF4175D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
  result = swift_allocObject();
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 144) = a1;
  *(result + 152) = 0;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  if ((a4 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1CF417670(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
  result = swift_allocObject();
  *(result + 160) = 0;
  *(result + 168) = -1;
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  if ((a5 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1CF417728@<X0>(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = *v5;
  v10 = *(v5 + 8);
  v138[0] = *(v5 + 9);
  *(v138 + 3) = *(v5 + 12);
  v11 = *(v5 + 208);
  v134 = *(v5 + 192);
  v135 = v11;
  v12 = *(v5 + 240);
  v136 = *(v5 + 224);
  v137 = v12;
  v13 = *(v5 + 144);
  v130 = *(v5 + 128);
  v131 = v13;
  v14 = *(v5 + 176);
  v132 = *(v5 + 160);
  v133 = v14;
  v15 = *(v5 + 80);
  v126 = *(v5 + 64);
  v127 = v15;
  v16 = *(v5 + 112);
  v128 = *(v5 + 96);
  v129 = v16;
  v17 = *(v5 + 48);
  v124 = *(v5 + 32);
  v125 = v17;
  v19 = *(v5 + 256);
  v18 = *(v5 + 264);
  v20 = *(v5 + 480);
  v120 = *(v5 + 464);
  v121 = v20;
  v122 = *(v5 + 496);
  v123 = *(v5 + 512);
  v21 = *(v5 + 416);
  v116 = *(v5 + 400);
  v117 = v21;
  v22 = *(v5 + 448);
  v118 = *(v5 + 432);
  v119 = v22;
  v23 = *(v5 + 352);
  v112 = *(v5 + 336);
  v113 = v23;
  v24 = *(v5 + 384);
  v114 = *(v5 + 368);
  v115 = v24;
  v25 = *(v5 + 288);
  v108 = *(v5 + 272);
  v109 = v25;
  v26 = *(v5 + 320);
  v110 = *(v5 + 304);
  v111 = v26;
  v66 = v18;
  if ((v8 & 0x51) != 0 || v10 == 255)
  {
    result = sub_1CEFCCBDC(v5, &v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_3;
  }

  v62 = v8;
  v69 = v9;
  v70 = v10;
  v67 = a2;
  v68 = a3;
  v38 = *(*a1[3] + 264);
  sub_1CEFCCBDC(v5, &v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v39 = v139;
  result = v38(&v69, &v67, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v139 = v39;
  if (v39)
  {
    v71 = v9;
    v72 = v10;
    *v73 = v138[0];
    *&v73[3] = *(v138 + 3);
    v74 = v62;
    v75 = v7;
    v86 = v134;
    v87 = v135;
    v88 = v136;
    v89 = v137;
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v85 = v133;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v81 = v129;
    v76 = v124;
    v77 = v125;
    v90 = v19;
    goto LABEL_10;
  }

  v8 = v62;
  if (!result)
  {
    v59 = 0;
LABEL_34:
    v7 |= v59;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = (v43 + 176);
LABEL_33:
    v59 = *v44;

    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1EDEABDE8;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_39;
  }

  v8 = v62 | 1;
LABEL_3:
  v28 = *(v5 + 256);
  if ((v28 & 0x51) != 0)
  {
    v30 = v19;
    goto LABEL_12;
  }

  v29 = *(v5 + 248);
  v30 = v19;
  if (!v29)
  {
LABEL_12:
    v40 = v66;
LABEL_27:
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 9) = v138[0];
    *(a4 + 12) = *(v138 + 3);
    *(a4 + 16) = v8;
    *(a4 + 24) = v7;
    v45 = v135;
    *(a4 + 192) = v134;
    *(a4 + 208) = v45;
    v46 = v137;
    *(a4 + 224) = v136;
    *(a4 + 240) = v46;
    v47 = v131;
    *(a4 + 128) = v130;
    *(a4 + 144) = v47;
    v48 = v133;
    *(a4 + 160) = v132;
    *(a4 + 176) = v48;
    v49 = v127;
    *(a4 + 64) = v126;
    *(a4 + 80) = v49;
    v50 = v129;
    *(a4 + 96) = v128;
    *(a4 + 112) = v50;
    v51 = v125;
    *(a4 + 32) = v124;
    *(a4 + 48) = v51;
    *(a4 + 256) = v30;
    *(a4 + 264) = v40;
    v52 = v121;
    *(a4 + 464) = v120;
    *(a4 + 480) = v52;
    *(a4 + 496) = v122;
    *(a4 + 512) = v123;
    v53 = v117;
    *(a4 + 400) = v116;
    *(a4 + 416) = v53;
    v54 = v119;
    *(a4 + 432) = v118;
    *(a4 + 448) = v54;
    v55 = v113;
    *(a4 + 336) = v112;
    *(a4 + 352) = v55;
    v56 = v115;
    *(a4 + 368) = v114;
    *(a4 + 384) = v56;
    v57 = v109;
    *(a4 + 272) = v108;
    *(a4 + 288) = v57;
    v58 = v111;
    *(a4 + 304) = v110;
    *(a4 + 320) = v58;
    return result;
  }

  v60 = v19;
  v61 = v9;
  v31 = v8;
  v32 = *(v5 + 264);
  v33 = (*a1)[22];
  v34 = v29;
  v35 = v33();
  v67 = v34;
  v69 = a2;
  v70 = a3;
  v36 = v139;
  v37 = (*(**(v35 + 24) + 264))(&v67, &v69, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v139 = v36;
  if (v36)
  {

    v71 = v61;
    v72 = v10;
    *v73 = v138[0];
    *&v73[3] = *(v138 + 3);
    v74 = v31;
    v75 = v7;
    v86 = v134;
    v87 = v135;
    v88 = v136;
    v89 = v137;
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v85 = v133;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v81 = v129;
    v76 = v124;
    v77 = v125;
    v90 = v60;
LABEL_10:
    v91 = v66;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    return sub_1CEFCCC44(&v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  }

  v8 = v31;
  if (!v37)
  {

    v42 = 0;
LABEL_25:

    v40 = v42 | v32;
    v30 = v60;
LABEL_26:
    v9 = v61;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = *(v41 + 168);
LABEL_24:

    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDEABDE8;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  if (swift_dynamicCastClass())
  {

    v30 = v28 | 1;
    v40 = v32;
    goto LABEL_26;
  }

LABEL_39:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void *sub_1CF417EF0@<X0>(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v9 = *v4;
  v8 = *(v4 + 8);
  v82 = *(v4 + 16);
  v78 = *(v4 + 152);
  v79 = *(v4 + 168);
  v80 = *(v4 + 184);
  v10 = *(v4 + 208);
  v81 = *(v4 + 200);
  v74 = *(v4 + 88);
  v75 = *(v4 + 104);
  v76 = *(v4 + 120);
  v77 = *(v4 + 136);
  v70 = *(v4 + 24);
  v71 = *(v4 + 40);
  v72 = *(v4 + 56);
  v73 = *(v4 + 72);
  v11 = *(v4 + 216);
  v69[0] = *(v4 + 217);
  *(v69 + 3) = *(v4 + 220);
  v12 = *(v4 + 224);
  v39 = *(v4 + 232);
  memcpy(__dst, (v4 + 240), sizeof(__dst));
  v40 = v12;
  v42 = v8;
  if ((v8 & 0x51) != 0)
  {
    v38 = v9;
    v13 = sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_3:
    v14 = v10;
    v15 = a3;
    goto LABEL_4;
  }

  v21 = v9;
  if (!v9)
  {
    v38 = 0;
    v13 = sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
    v6 = v5;
    goto LABEL_3;
  }

  v35 = v11;
  v34 = v10;
  v43 = v9;
  v45 = a2;
  v15 = a3;
  v46 = a3;
  v22 = *(*a1[3] + 264);
  sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
  v23 = v21;
  v24 = v22(&v43, &v45, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v5)
  {

    v47 = v21;
    v48 = v8;
    v49 = v82;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v54 = v74;
    v61 = v81;
    v62 = v34;
    v63 = v35;
    *v64 = v69[0];
    *&v64[3] = *(v69 + 3);
    v65 = v12;
    v66 = v39;
    goto LABEL_11;
  }

  v38 = v21;
  v14 = v34;
  if (!v24)
  {

    v31 = 0;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = *(v30 + 168);

LABEL_30:
    v6 = 0;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  v6 = 0;
  if (!swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_41;
    }

    v42 = v8 | 1;
    goto LABEL_32;
  }

  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDEABDE8;

LABEL_31:
  v82 |= v31;
LABEL_32:
  v11 = v35;
LABEL_4:
  v16 = *(v4 + 224);
  if ((v16 & 0x51) != 0)
  {
    v27 = v39;
    v26 = v40;
    goto LABEL_28;
  }

  v17 = v6;
  if (v11 == 255)
  {
    v27 = v39;
    v26 = v40;
LABEL_28:
    *a4 = v38;
    *(a4 + 8) = v42;
    *(a4 + 16) = v82;
    *(a4 + 152) = v78;
    *(a4 + 168) = v79;
    *(a4 + 184) = v80;
    v33 = v81;
    *(a4 + 88) = v74;
    *(a4 + 104) = v75;
    *(a4 + 120) = v76;
    *(a4 + 136) = v77;
    *(a4 + 24) = v70;
    *(a4 + 40) = v71;
    *(a4 + 56) = v72;
    *(a4 + 72) = v73;
    *(a4 + 200) = v33;
    *(a4 + 208) = v14;
    *(a4 + 216) = v11;
    *(a4 + 217) = v69[0];
    *(a4 + 220) = *(v69 + 3);
    *(a4 + 224) = v26;
    *(a4 + 232) = v27;
    return memcpy((a4 + 240), __dst, 0x118uLL);
  }

  v18 = *(v4 + 232);
  v19 = ((*a1)[22])(v13);
  v45 = v14;
  v46 = v11;
  v43 = a2;
  v44 = v15;
  v20 = (*(**(v19 + 24) + 264))(&v45, &v43, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v17)
  {

    v47 = v38;
    v48 = v42;
    v49 = v82;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v54 = v74;
    v61 = v81;
    v62 = v14;
    v63 = v11;
    *v64 = v69[0];
    *&v64[3] = *(v69 + 3);
    v65 = v40;
    v66 = v39;
LABEL_11:
    memcpy(v67, __dst, sizeof(v67));
    return sub_1CEFCCC44(&v47, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  if (!v20)
  {
    v32 = 0;
LABEL_27:

    v27 = v32 | v18;
    v26 = v40;
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = (v28 + 176);
LABEL_26:
    v32 = *v29;

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EDEABDE8;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastClass())
  {

    v26 = v16 | 1;
    v27 = v18;
    goto LABEL_28;
  }

LABEL_41:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF41864C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (((*(*a2 + 152))() & 0x4000) == 0)
  {
    goto LABEL_5;
  }

  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 216);
  if (v10 == 255)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 224);
  if (((v11 | v12) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v15 = *(a1 + 208);
  if ((v11 & 0x80) != 0 && (*(*(a2 + 32) + 32) & 1) == 0 && (v11 & 9) != 0)
  {
    v28 = *(*a2 + 176);
    v30 = v9;
    v16 = v28();
    v29 = v15;
    v17 = sub_1CF39A4F4(v15, v10, v16, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v19 = v17;
    v27 = v18;

    if (v19)
    {
      if (v27)
      {
        sub_1CF41AC6C(a2, v29, v10, v27, a3, a4);
        sub_1CF41B1EC(a2, v30, v29, v10, a3, a4);

LABEL_28:
        v13 = 1;
        return v13 & 1;
      }
    }

    else
    {
    }

    v15 = v29;
  }

  v13 = 0;
  if ((*(*(a2 + 40) + 32) & 1) == 0 && (v12 & 0x80) != 0 && (v12 & 9) != 0)
  {
    v20 = v9;
    v21 = sub_1CF39AA68(v20, a2, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v31 = *(*a2 + 176);
        v24 = v31();
        sub_1CF41AF30(v24, v20, v23, a3, a4);

        v26 = (v31)(v25);
        sub_1CF41B6F8(v26, v15, v10, v20, a3, a4);

        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF41896C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (((*(*a2 + 152))() & 0x4000) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 8);
  if (v9 == 255)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 248);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 256);
  if (((v11 | v12) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a1;
  if ((v11 & 0x80) != 0 && (*(*(a2 + 32) + 32) & 1) == 0 && (v11 & 9) != 0)
  {
    v29 = v15;
    v30 = *(*a2 + 176);
    v16 = v10;
    v17 = v30();
    v18 = sub_1CF39AA68(v16, v17, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v31 = v19;
    v28 = v16;
    v20 = v18;

    if (v20)
    {
      if (v31)
      {
        sub_1CF41AF30(a2, v28, v31, a3, a4);
        sub_1CF41B6F8(a2, v29, v9, v28, a3, a4);

LABEL_28:
        v13 = 1;
        return v13 & 1;
      }
    }

    else
    {
    }

    v15 = v29;
  }

  v13 = 0;
  if ((*(*(a2 + 40) + 32) & 1) == 0 && (v12 & 0x80) != 0 && (v12 & 9) != 0)
  {
    v21 = v10;
    v22 = sub_1CF39A4F4(v15, v9, a2, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v24 = v23;
    if (v22)
    {
      if (v23)
      {
        v32 = *(*a2 + 176);
        v25 = v32();
        sub_1CF41AC6C(v25, v15, v9, v24, a3, a4);

        v27 = (v32)(v26);
        sub_1CF41B1EC(v27, v21, v15, v9, a3, a4);

        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF418C98(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v10 = sub_1CF9E5CF8();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  if (*(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48)) == 1)
  {
    v42 = v10;
    v14 = *(v8 + 2);
    v15 = *v9;
    sub_1CF7EBA74(*v9, v6, v4, v67);
    if (!v1)
    {
      memcpy(v62, v67, sizeof(v62));
      v16 = v62[97];
      v63[3] = *&v67[48];
      v63[4] = *&v67[64];
      v63[5] = *&v67[80];
      v64 = v67[96];
      v63[0] = *v67;
      v63[1] = *&v67[16];
      v63[2] = *&v67[32];
      memcpy(v66, &v67[98], sizeof(v66));
      v65 = v62[97];
      if (sub_1CF08B99C(v63) == 1)
      {
        *&v61[64] = *&v67[64];
        *&v61[80] = *&v67[80];
        v61[96] = v67[96];
        *v61 = *v67;
        *&v61[16] = *&v67[16];
        *&v61[32] = *&v67[32];
        *&v61[48] = *&v67[48];
        v61[97] = v16;
        memcpy(&v61[98], &v67[98], 0x1A6uLL);
        sub_1CEFCCBDC(v62, v60, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v61, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v61[48] = *&v67[48];
        *&v61[64] = *&v67[64];
        *&v61[80] = *&v67[80];
        v61[96] = v67[96];
        *v61 = *v67;
        *&v61[16] = *&v67[16];
        *&v61[32] = *&v67[32];
        v61[97] = v16;
        memcpy(&v61[98], &v67[98], 0x1A6uLL);
        sub_1CEFCCBDC(v62, v60, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v61, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v16 != 6)
        {
          goto LABEL_15;
        }
      }

      v41 = v8;
      memcpy(v60, v67, sizeof(v60));
      v17 = v60[96];
      *&v61[32] = *&v67[32];
      *&v61[48] = *&v67[48];
      *&v61[64] = *&v67[64];
      *&v61[80] = *&v67[80];
      *v61 = *v67;
      *&v61[16] = *&v67[16];
      memcpy(&v61[97], &v67[97], 0x1A7uLL);
      v61[96] = v60[96];
      if (sub_1CF08B99C(v61) == 1)
      {
        *&v59[32] = *&v67[32];
        *&v59[48] = *&v67[48];
        *&v59[64] = *&v67[64];
        *&v59[80] = *&v67[80];
        *v59 = *v67;
        *&v59[16] = *&v67[16];
        v59[96] = v17;
        memcpy(&v59[97], &v67[97], 0x1A7uLL);
        sub_1CEFCCBDC(v60, v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v59, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v59[32] = *&v67[32];
        *&v59[48] = *&v67[48];
        *&v59[64] = *&v67[64];
        *&v59[80] = *&v67[80];
        *v59 = *v67;
        *&v59[16] = *&v67[16];
        v59[96] = v17;
        memcpy(&v59[97], &v67[97], 0x1A7uLL);
        sub_1CEFCCBDC(v60, v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v59, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v17 == 3)
        {
          goto LABEL_15;
        }
      }

      memcpy(v58, v67, sizeof(v58));
      v18 = v58[345];
      memcpy(v59, v67, 0x159uLL);
      *&v59[474] = *&v67[474];
      *&v59[490] = *&v67[490];
      *&v59[504] = *&v67[504];
      *&v59[410] = *&v67[410];
      *&v59[426] = *&v67[426];
      *&v59[442] = *&v67[442];
      *&v59[458] = *&v67[458];
      *&v59[346] = *&v67[346];
      *&v59[362] = *&v67[362];
      *&v59[378] = *&v67[378];
      *&v59[394] = *&v67[394];
      v59[345] = v58[345];
      if (sub_1CF08B99C(v59) == 1)
      {
        memcpy(v56, v67, sizeof(v56));
        v57[0] = v18;
        *&v57[129] = *&v67[474];
        *&v57[145] = *&v67[490];
        *&v57[159] = *&v67[504];
        *&v57[65] = *&v67[410];
        *&v57[81] = *&v67[426];
        *&v57[97] = *&v67[442];
        *&v57[113] = *&v67[458];
        *&v57[1] = *&v67[346];
        *&v57[17] = *&v67[362];
        *&v57[33] = *&v67[378];
        *&v57[49] = *&v67[394];
        sub_1CEFCCBDC(v58, v55, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v56, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v19 = v41;
LABEL_12:
        memcpy(v55, v67, sizeof(v55));
        v20 = v55[344];
        memcpy(v56, v67, 0x158uLL);
        *&v57[128] = *&v67[473];
        *&v57[144] = *&v67[489];
        *&v57[159] = *&v67[504];
        *&v57[64] = *&v67[409];
        *&v57[80] = *&v67[425];
        *&v57[96] = *&v67[441];
        *&v57[112] = *&v67[457];
        *v57 = *&v67[345];
        *&v57[16] = *&v67[361];
        *&v57[32] = *&v67[377];
        *&v57[48] = *&v67[393];
        v56[344] = v55[344];
        if (sub_1CF08B99C(v56) == 1)
        {
          memcpy(v54, v67, 0x158uLL);
          v54[344] = v20;
          *&v54[473] = *&v67[473];
          *&v54[489] = *&v67[489];
          *&v54[504] = *&v67[504];
          *&v54[409] = *&v67[409];
          *&v54[425] = *&v67[425];
          *&v54[441] = *&v67[441];
          *&v54[457] = *&v67[457];
          *&v54[345] = *&v67[345];
          *&v54[361] = *&v67[361];
          *&v54[377] = *&v67[377];
          *&v54[393] = *&v67[393];
          sub_1CEFCCBDC(v55, v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v54, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_16;
        }

        memcpy(v54, v67, 0x158uLL);
        v54[344] = v20;
        *&v54[473] = *&v67[473];
        *&v54[489] = *&v67[489];
        *&v54[504] = *&v67[504];
        *&v54[409] = *&v67[409];
        *&v54[425] = *&v67[425];
        *&v54[441] = *&v67[441];
        *&v54[457] = *&v67[457];
        *&v54[345] = *&v67[345];
        *&v54[361] = *&v67[361];
        *&v54[377] = *&v67[377];
        *&v54[393] = *&v67[393];
        sub_1CEFCCBDC(v55, v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v54, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v20 != 3)
        {
LABEL_16:
          v21 = v15;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v23 = v22;
          v24 = v42;
          v25 = v43 + 8;
          v26 = *(v43 + 8);
          v27 = v26(v13, v42);
          v28 = v23 * 1000000000.0;
          if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v28 > -9.22337204e18)
          {
            v41 = v26;
            v43 = v25;
            if (v28 < 9.22337204e18)
            {
              v29 = v28;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF70, &qword_1CF9FB468);
              v30 = swift_allocObject();
              *(v30 + 16) = 0u;
              *(v30 + 32) = 0u;
              *(v30 + 48) = 1;
              *(v30 + 56) = 0u;
              *(v30 + 72) = 0u;
              *(v30 + 88) = 0;
              *(v30 + 120) = 0;
              *(v30 + 128) = v29;
              *(v30 + 136) = 0x8000;
              *(v30 + 144) = v21;
              *(v30 + 96) = xmmword_1CFA04EB0;
              *(v30 + 112) = 0;
              MEMORY[0x1D3868FA0]();
              v27 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v27 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_20;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            v40[1] = v27;
            sub_1CF9E6D88();
LABEL_20:
            sub_1CF9E6DE8();
            if (*(*(v19 + 4) + 32) == 1)
            {
              v14 = v68;
              memcpy(v53, v67, sizeof(v53));
              v31 = v53[96];
              *&v54[32] = *&v67[32];
              *&v54[48] = *&v67[48];
              *&v54[64] = *&v67[64];
              *&v54[80] = *&v67[80];
              *v54 = *v67;
              *&v54[16] = *&v67[16];
              memcpy(&v54[97], &v67[97], 0x1A7uLL);
              v54[96] = v53[96];
              if (sub_1CF08B99C(v54) == 1)
              {
                v47 = *&v67[32];
                v48 = *&v67[48];
                v49 = *&v67[64];
                v50 = *&v67[80];
                v45 = *v67;
                v46 = *&v67[16];
                v51 = v31;
                memcpy(v52, &v67[97], sizeof(v52));
                sub_1CEFCCBDC(v53, v44, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                sub_1CEFCCC44(&v45, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              }

              else
              {
                v47 = *&v67[32];
                v48 = *&v67[48];
                v49 = *&v67[64];
                v50 = *&v67[80];
                v45 = *v67;
                v46 = *&v67[16];
                v51 = v31;
                memcpy(v52, &v67[97], sizeof(v52));
                sub_1CEFCCBDC(v53, v44, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                sub_1CEFCCC44(&v45, &unk_1EC4BFC90, &unk_1CFA053E0);
                if (!v31)
                {
                  memcpy(v44, v67, sizeof(v44));
                  v38 = v44;
                  goto LABEL_29;
                }
              }
            }

            v32 = v21;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v34 = v33;
            v41(v13, v24);
            v35 = v34 * 1000000000.0;
            if (COERCE__INT64(fabs(v34 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v35 > -9.22337204e18)
            {
              if (v35 < 9.22337204e18)
              {
                v36 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
                v37 = swift_allocObject();
                *(v37 + 48) = 1;
                *(v37 + 16) = 0u;
                *(v37 + 32) = 0u;
                *(v37 + 56) = 0u;
                *(v37 + 72) = 0u;
                *(v37 + 88) = 0;
                *(v37 + 120) = 0;
                *(v37 + 128) = v36;
                *(v37 + 136) = 0x8000;
                *(v37 + 144) = v32;
                *(v37 + 96) = xmmword_1CFA04E30;
                *(v37 + 112) = 0;
                MEMORY[0x1D3868FA0]();
                if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_28:
                  sub_1CF9E6DE8();
                  v14 = v68;
                  memcpy(v54, v67, sizeof(v54));
                  v38 = v54;
LABEL_29:
                  sub_1CEFCCC44(v38, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                  return v14;
                }

LABEL_39:
                sub_1CF9E6D88();
                goto LABEL_28;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_15;
      }

      memcpy(v56, v67, sizeof(v56));
      v57[0] = v18;
      *&v57[129] = *&v67[474];
      *&v57[145] = *&v67[490];
      *&v57[159] = *&v67[504];
      *&v57[65] = *&v67[410];
      *&v57[81] = *&v67[426];
      *&v57[97] = *&v67[442];
      *&v57[113] = *&v67[458];
      *&v57[1] = *&v67[346];
      *&v57[17] = *&v67[362];
      *&v57[33] = *&v67[378];
      *&v57[49] = *&v67[394];
      sub_1CEFCCBDC(v58, v55, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v56, &unk_1EC4BFC90, &unk_1CFA053E0);
      v19 = v41;
      if (v18 == 6)
      {
        goto LABEL_12;
      }

LABEL_15:
      memcpy(v61, v67, sizeof(v61));
      sub_1CEFCCC44(v61, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v14;
}

uint64_t sub_1CF41990C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  LODWORD(v47) = v3;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  if (*(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48)) == 1)
  {
    v15 = v8;
    v45 = v8;
    v46 = v10;
    v16 = *(v7 + 16);
    v17 = *v15;
    v14 = *(v15 + 8);
    sub_1CF7EB934(*v15, *(v15 + 8), v5, v47, v74);
    if (!v1)
    {
      v41 = v17;
      v42 = v7;
      v47 = 0;
      v43 = v9;
      v44 = v13;
      memcpy(v69, v74, sizeof(v69));
      v18 = v69[137];
      v70[5] = *&v74[80];
      v70[6] = *&v74[96];
      *v71 = *&v74[112];
      *&v71[9] = *&v74[121];
      v70[2] = *&v74[32];
      v70[3] = *&v74[48];
      v70[4] = *&v74[64];
      v70[0] = *v74;
      v70[1] = *&v74[16];
      memcpy(v73, &v74[138], sizeof(v73));
      v72 = v69[137];
      if (sub_1CF08B99C(v70) == 1)
      {
        *&v68[96] = *&v74[96];
        *&v68[112] = *&v74[112];
        *&v68[121] = *&v74[121];
        *&v68[32] = *&v74[32];
        *&v68[48] = *&v74[48];
        *&v68[64] = *&v74[64];
        *&v68[80] = *&v74[80];
        v68[137] = v18;
        *v68 = *v74;
        *&v68[16] = *&v74[16];
        memcpy(&v68[138], &v74[138], 0x17EuLL);
        sub_1CEFCCBDC(v69, v67, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v68, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        *&v68[80] = *&v74[80];
        *&v68[96] = *&v74[96];
        *&v68[112] = *&v74[112];
        *&v68[121] = *&v74[121];
        *&v68[32] = *&v74[32];
        *&v68[48] = *&v74[48];
        *&v68[64] = *&v74[64];
        *v68 = *v74;
        *&v68[16] = *&v74[16];
        v68[137] = v18;
        memcpy(&v68[138], &v74[138], 0x17EuLL);
        sub_1CEFCCBDC(v69, v67, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v68, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        if (v18 != 6)
        {
          goto LABEL_17;
        }
      }

      memcpy(v67, v74, sizeof(v67));
      v19 = v67[136];
      *&v68[96] = *&v74[96];
      *&v68[112] = *&v74[112];
      *&v68[128] = *&v74[128];
      *&v68[32] = *&v74[32];
      *&v68[48] = *&v74[48];
      *&v68[64] = *&v74[64];
      *&v68[80] = *&v74[80];
      *v68 = *v74;
      *&v68[16] = *&v74[16];
      memcpy(&v68[137], &v74[137], 0x17FuLL);
      v68[136] = v67[136];
      if (sub_1CF08B99C(v68) == 1)
      {
        *&v66[80] = *&v74[80];
        *&v66[96] = *&v74[96];
        *&v66[112] = *&v74[112];
        *&v66[16] = *&v74[16];
        *&v66[32] = *&v74[32];
        *&v66[48] = *&v74[48];
        *&v66[64] = *&v74[64];
        *&v66[128] = *&v74[128];
        *v66 = *v74;
        v66[136] = v19;
        memcpy(&v66[137], &v74[137], 0x17FuLL);
        sub_1CEFCCBDC(v67, v65, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v66, &unk_1EC4BFC20, &unk_1CFA0A290);
        v20 = v44;
      }

      else
      {
        *&v66[80] = *&v74[80];
        *&v66[96] = *&v74[96];
        *&v66[112] = *&v74[112];
        *&v66[16] = *&v74[16];
        *&v66[32] = *&v74[32];
        *&v66[48] = *&v74[48];
        *&v66[64] = *&v74[64];
        *&v66[128] = *&v74[128];
        *v66 = *v74;
        v66[136] = v19;
        memcpy(&v66[137], &v74[137], 0x17FuLL);
        sub_1CEFCCBDC(v67, v65, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v66, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v20 = v44;
        if (v19 == 3)
        {
          goto LABEL_17;
        }
      }

      memcpy(v65, v74, sizeof(v65));
      v21 = v65[345];
      memcpy(v66, v74, 0x159uLL);
      *&v66[474] = *&v74[474];
      *&v66[490] = *&v74[490];
      *&v66[504] = *&v74[504];
      *&v66[410] = *&v74[410];
      *&v66[426] = *&v74[426];
      *&v66[442] = *&v74[442];
      *&v66[458] = *&v74[458];
      *&v66[346] = *&v74[346];
      *&v66[362] = *&v74[362];
      *&v66[378] = *&v74[378];
      *&v66[394] = *&v74[394];
      v66[345] = v65[345];
      if (sub_1CF08B99C(v66) == 1)
      {
        memcpy(v63, v74, sizeof(v63));
        v64[0] = v21;
        *&v64[129] = *&v74[474];
        *&v64[145] = *&v74[490];
        *&v64[159] = *&v74[504];
        *&v64[65] = *&v74[410];
        *&v64[81] = *&v74[426];
        *&v64[97] = *&v74[442];
        *&v64[113] = *&v74[458];
        *&v64[1] = *&v74[346];
        *&v64[17] = *&v74[362];
        *&v64[33] = *&v74[378];
        *&v64[49] = *&v74[394];
        sub_1CEFCCBDC(v65, v62, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v63, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        memcpy(v63, v74, sizeof(v63));
        v64[0] = v21;
        *&v64[129] = *&v74[474];
        *&v64[145] = *&v74[490];
        *&v64[159] = *&v74[504];
        *&v64[65] = *&v74[410];
        *&v64[81] = *&v74[426];
        *&v64[97] = *&v74[442];
        *&v64[113] = *&v74[458];
        *&v64[1] = *&v74[346];
        *&v64[17] = *&v74[362];
        *&v64[33] = *&v74[378];
        *&v64[49] = *&v74[394];
        sub_1CEFCCBDC(v65, v62, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v63, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        if (v21 != 6)
        {
          goto LABEL_17;
        }
      }

      memcpy(v62, v74, sizeof(v62));
      v22 = v62[344];
      memcpy(v63, v74, 0x158uLL);
      *&v64[128] = *&v74[473];
      *&v64[144] = *&v74[489];
      *&v64[159] = *&v74[504];
      *&v64[64] = *&v74[409];
      *&v64[80] = *&v74[425];
      *&v64[96] = *&v74[441];
      *&v64[112] = *&v74[457];
      *v64 = *&v74[345];
      *&v64[16] = *&v74[361];
      *&v64[32] = *&v74[377];
      *&v64[48] = *&v74[393];
      v63[344] = v62[344];
      if (sub_1CF08B99C(v63) == 1)
      {
        memcpy(v61, v74, 0x158uLL);
        v61[344] = v22;
        *&v61[473] = *&v74[473];
        *&v61[489] = *&v74[489];
        *&v61[504] = *&v74[504];
        *&v61[409] = *&v74[409];
        *&v61[425] = *&v74[425];
        *&v61[441] = *&v74[441];
        *&v61[457] = *&v74[457];
        *&v61[345] = *&v74[345];
        *&v61[361] = *&v74[361];
        *&v61[377] = *&v74[377];
        *&v61[393] = *&v74[393];
        sub_1CEFCCBDC(v62, v60, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v61, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_18;
      }

      memcpy(v61, v74, 0x158uLL);
      v61[344] = v22;
      *&v61[473] = *&v74[473];
      *&v61[489] = *&v74[489];
      *&v61[504] = *&v74[504];
      *&v61[409] = *&v74[409];
      *&v61[425] = *&v74[425];
      *&v61[441] = *&v74[441];
      *&v61[457] = *&v74[457];
      *&v61[345] = *&v74[345];
      *&v61[361] = *&v74[361];
      *&v61[377] = *&v74[377];
      *&v61[393] = *&v74[393];
      sub_1CEFCCBDC(v62, v60, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v61, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      if (v22 != 3)
      {
LABEL_18:
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v24 = v23;
        v25 = *(v46 + 8);
        v25(v20, v43);
        v26 = v24 * 1000000000.0;
        if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v27 = v42;
          if (v26 > -9.22337204e18)
          {
            if (v26 < 9.22337204e18)
            {
              v28 = v26;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640);
              v29 = swift_allocObject();
              *(v29 + 152) = v14;
              *(v29 + 16) = 0u;
              *(v29 + 32) = 0u;
              *(v29 + 48) = 1;
              *(v29 + 56) = 0u;
              *(v29 + 72) = 0u;
              *(v29 + 88) = 0;
              *(v29 + 120) = 0;
              *(v29 + 128) = v28;
              v30 = v41;
              *(v29 + 136) = 0x8000;
              *(v29 + 144) = v30;
              *(v29 + 96) = xmmword_1CFA04EB0;
              *(v29 + 112) = 0;
              MEMORY[0x1D3868FA0]();
              if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            sub_1CF9E6D88();
            v27 = v42;
LABEL_22:
            sub_1CF9E6DE8();
            if (*(*(v27 + 32) + 32) == 1)
            {
              v31 = v75;
              memcpy(v60, v74, sizeof(v60));
              *&v61[80] = *&v74[80];
              *&v61[96] = *&v74[96];
              *&v61[112] = *&v74[112];
              *&v61[16] = *&v74[16];
              *&v61[32] = *&v74[32];
              *&v61[48] = *&v74[48];
              *&v61[64] = *&v74[64];
              v32 = v60[136];
              *&v61[128] = *&v74[128];
              *v61 = *v74;
              memcpy(&v61[137], &v74[137], 0x17FuLL);
              v61[136] = v60[136];
              if (sub_1CF08B99C(v61) == 1)
              {
                v55 = *&v74[96];
                v56 = *&v74[112];
                v57 = *&v74[128];
                v51 = *&v74[32];
                v52 = *&v74[48];
                v53 = *&v74[64];
                v54 = *&v74[80];
                v49 = *v74;
                v50 = *&v74[16];
                v58 = v32;
                memcpy(v59, &v74[137], sizeof(v59));
                sub_1CEFCCBDC(v60, v48, &unk_1EC4BFC20, &unk_1CFA0A290);
                sub_1CEFCCC44(&v49, &unk_1EC4BFC20, &unk_1CFA0A290);
              }

              else
              {
                v55 = *&v74[96];
                v56 = *&v74[112];
                v57 = *&v74[128];
                v51 = *&v74[32];
                v52 = *&v74[48];
                v53 = *&v74[64];
                v54 = *&v74[80];
                v49 = *v74;
                v50 = *&v74[16];
                v58 = v32;
                memcpy(v59, &v74[137], sizeof(v59));
                sub_1CEFCCBDC(v60, v48, &unk_1EC4BFC20, &unk_1CFA0A290);
                sub_1CEFCCC44(&v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                if (!v32)
                {
                  memcpy(v48, v74, sizeof(v48));
                  sub_1CEFCCC44(v48, &unk_1EC4BFC20, &unk_1CFA0A290);
                  return v31;
                }
              }
            }

            v33 = *v45;
            v34 = *(v45 + 8);
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v36 = v35;
            v25(v20, v43);
            v37 = v36 * 1000000000.0;
            if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v37 > -9.22337204e18)
            {
              if (v37 < 9.22337204e18)
              {
                v38 = v37;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
                v39 = swift_allocObject();
                *(v39 + 152) = v34;
                *(v39 + 16) = 0u;
                *(v39 + 32) = 0u;
                *(v39 + 48) = 1;
                *(v39 + 56) = 0u;
                *(v39 + 72) = 0u;
                *(v39 + 88) = 0;
                *(v39 + 120) = 0;
                *(v39 + 128) = v38;
                *(v39 + 136) = 0x8000;
                *(v39 + 144) = v33;
                *(v39 + 96) = xmmword_1CFA04E30;
                *(v39 + 112) = 0;
                MEMORY[0x1D3868FA0]();
                if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_30:
                  sub_1CF9E6DE8();
                  v14 = v75;
                  memcpy(v61, v74, sizeof(v61));
                  sub_1CEFCCC44(v61, &unk_1EC4BFC20, &unk_1CFA0A290);
                  return v14;
                }

LABEL_40:
                sub_1CF9E6D88();
                goto LABEL_30;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_17:
      memcpy(v68, v74, sizeof(v68));
      sub_1CEFCCC44(v68, &unk_1EC4BFC20, &unk_1CFA0A290);
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v14;
}

uint64_t sub_1CF41A5CC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v35 = a3;
  v34 = sub_1CF9E5CF8();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v34);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  v39 = a5;
  v16 = *(a2 + 32);
  if ((v16[32] & 1) == 0)
  {
    v17 = a1[11];
    v37[0] = a1[10];
    v37[1] = v17;
    v36 = *a1;
    v18 = v36;
    v19 = *(*v16 + 256);

    v20 = v18;
    v21 = v19(a1 + 1, v37, &v36, &v38, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    if (!v6)
    {
      v31[1] = 0;
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v33 = v21 + 32;
        v24 = *(*v35 + 144);
        v32 = xmmword_1CFA04E20;
        while (v23 < v22)
        {
          v25 = *(v33 + 8 * v23);
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v27 = v26;
          result = (*(v11 + 8))(v15, v34);
          v28 = v27 * 1000000000.0;
          if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v28 <= -9.22337204e18)
          {
            goto LABEL_14;
          }

          if (v28 >= 9.22337204e18)
          {
            goto LABEL_15;
          }

          ++v23;
          v29 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
          v30 = swift_allocObject();
          *(v30 + 16) = 0u;
          *(v30 + 32) = 0u;
          *(v30 + 48) = 1;
          *(v30 + 56) = 0u;
          *(v30 + 72) = 0u;
          *(v30 + 88) = 0;
          *(v30 + 120) = 0x2000000000000000;
          *(v30 + 128) = v29;
          *(v30 + 136) = 0;
          *(v30 + 144) = v25;
          *(v30 + 96) = v32;
          *(v30 + 112) = 0;
          v24();

          v22 = *(v21 + 16);
          if (v23 == v22)
          {
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1CF41A8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v37 = a3;
  v36 = sub_1CF9E5CF8();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v36);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  v42 = a5;
  v16 = *(a2 + 32);
  if ((v16[32] & 1) == 0)
  {
    v17 = a1[17];
    v40[0] = a1[16];
    v40[1] = v17;
    v38 = *a1;
    v39 = *(a1 + 8);
    v18 = *(*v16 + 256);

    v19 = v18(a1 + 2, v40, &v38, &v41, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    if (!v6)
    {
      v32[1] = 0;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = *(*v37 + 144);
        v34 = *v37 + 144;
        v35 = v22;
        v23 = (v11 + 8);
        v24 = (v19 + 40);
        v33 = xmmword_1CFA04E20;
        while (v21 < v20)
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v28 = v27;
          result = (*v23)(v15, v36);
          v29 = v28 * 1000000000.0;
          if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v29 <= -9.22337204e18)
          {
            goto LABEL_14;
          }

          if (v29 >= 9.22337204e18)
          {
            goto LABEL_15;
          }

          ++v21;
          v30 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v31 = swift_allocObject();
          *(v31 + 152) = v26;
          *(v31 + 16) = 0u;
          *(v31 + 32) = 0u;
          *(v31 + 48) = 1;
          *(v31 + 56) = 0u;
          *(v31 + 72) = 0u;
          *(v31 + 88) = 0;
          *(v31 + 120) = 0x2000000000000000;
          *(v31 + 128) = v30;
          *(v31 + 136) = 0;
          *(v31 + 144) = v25;
          *(v31 + 96) = v33;
          *(v31 + 112) = 0;
          v35();

          v20 = *(v19 + 16);
          v24 += 16;
          if (v21 == v20)
          {
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

BOOL sub_1CF41ABB8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 48));
  v8 = type metadata accessor for ItemMetadata();
  if (v7[v8[20]])
  {
    return 0;
  }

  if (v7[v8[21]])
  {
    return 0;
  }

  if (v7[v8[16]])
  {
    return 0;
  }

  v9 = v7[v8[17]];
  if (v9 != 2 && (v9 & 1) != 0)
  {
    return 0;
  }

  return *v7 - 1 >= 2 && (*&a3 & 0x10008) == 0x10000;
}

uint64_t sub_1CF41AC6C(void **a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  v33 = a4;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v37 = a3;
  v34 = a5;
  v35 = a6;
  result = (*(*a1[5] + 384))(&v36, 1, &v34, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v6)
  {
    v31 = v12;
    v32 = v13;
    if (result)
    {
      v18 = v36;
      v19 = v37;
      v21 = v33[15];
      v20 = v33[16];
      v29[1] = 0;
      v30 = v20;
      v22 = v33[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD978, &qword_1CF9FACB0);
      v23 = swift_allocObject();
      v24 = v23;
      *(v23 + 152) = v19;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *(v23 + 48) = 1;
      *(v23 + 56) = 0u;
      *(v23 + 72) = 0u;
      *(v23 + 88) = 0;
      *(v23 + 96) = xmmword_1CF9FEC30;
      *(v23 + 112) = 0;
      v25 = v30;
      *(v23 + 120) = v21;
      *(v23 + 128) = v25;
      *(v23 + 136) = v22;
      *(v23 + 144) = v18;
      if ((v22 & 0x8000) != 0)
      {
        *(v23 + 96) = 2359552;
        *(v23 + 112) = 0;
      }

      ((*a1)[22])();
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v27 = v26;
      result = (*(v32 + 8))(v16, v31);
      v28 = v27 * 1000000000.0;
      if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          sub_1CF902E70(v24, v28, a5, a6);
        }

LABEL_12:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1CF41AF30(void **a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v29 = a3;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v30 = a4;
  v31 = a5;
  result = (*(*a1[5] + 384))(&v32, 1, &v30, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v5)
  {
    v27 = v10;
    v28 = v11;
    if (result)
    {
      v16 = a2;
      HIDWORD(v25) = a5;
      v26 = 0;
      v18 = v29[15];
      v17 = v29[16];
      v19 = v29[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 1;
      *(v20 + 56) = 0u;
      *(v20 + 72) = 0u;
      *(v20 + 88) = 0;
      *(v20 + 96) = xmmword_1CF9FEC30;
      *(v20 + 112) = 0;
      *(v20 + 120) = v18;
      *(v20 + 128) = v17;
      *(v20 + 136) = v19;
      *(v20 + 144) = v16;
      if ((v19 & 0x8000) != 0)
      {
        *(v20 + 96) = 2359552;
        *(v20 + 112) = 0;
      }

      ((*a1)[22])(v16);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v23 = v22;
      result = (*(v28 + 8))(v14, v27);
      v24 = v23 * 1000000000.0;
      if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v24 > -9.22337204e18)
      {
        if (v24 < 9.22337204e18)
        {
          sub_1CF902E70(v21, v24, a4, SBYTE4(v25));
        }

LABEL_12:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1CF41B1EC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  v35 = a6;
  v34 = a5;
  v38 = a2;
  v41 = a1;
  v8 = sub_1CF9E5CF8();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = (&v33 - v12);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  v13 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v33 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v16 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v20 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v20;
  inited[4] = v20;
  inited[5] = v20;
  inited[6] = 0;
  v51 = 0;
  *&v48 = a3;
  WORD4(v48) = a4;
  v49 = 0;
  v50 = 6;
  swift_beginAccess();
  sub_1CF7E2EB0(&v48);
  swift_endAccess();
  *v18 = a3;
  v18[8] = a4;
  strcpy(v18 + 16, "lazily deleted");
  v18[31] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v18, v15, &qword_1EC4BFC88, &qword_1CFA053D8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF7E31D8(v15);
  swift_endAccess();
  sub_1CEFCCC44(v18, &qword_1EC4BFC88, &qword_1CFA053D8);
  v52 = 1;
  v21 = v38;
  *&v45 = v38;
  WORD4(v45) = 256;
  v46 = 2;
  v47 = 6;
  swift_beginAccess();
  v22 = v21;
  sub_1CF7E2EB0(&v45);
  swift_endAccess();
  v23 = v37;
  *v37 = v22;
  strcpy((v23 + 8), "lazily deleted");
  *(v23 + 23) = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v23, v15, &qword_1EC4BFC80, &qword_1CFA053D0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v24 = v22;
  sub_1CF7E31D8(v15);
  swift_endAccess();
  v25 = sub_1CEFCCC44(v23, &qword_1EC4BFC80, &qword_1CFA053D0);
  (*(*v41 + 176))(v25);
  v26 = v40;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v28 = v27;
  result = (*(v42 + 8))(v26, v43);
  v30 = v28 * 1000000000.0;
  if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v30 < 9.22337204e18)
  {
    sub_1CF7F6588(inited, v30, v34, v35);

    swift_setDeallocating();
    v31 = inited[3];

    v32 = inited[4];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF41B6F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6)
{
  v34 = a6;
  v33 = a5;
  v38 = a3;
  v37 = a2;
  v40 = a1;
  v7 = sub_1CF9E5CF8();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v32 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  v13 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v32 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v16 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v18 = &v32 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0570, qword_1CFA18A50);
  inited = swift_initStackObject();
  v20 = MEMORY[0x1E69E7CC0];
  inited[3] = MEMORY[0x1E69E7CC0];
  inited[2] = v20;
  inited[4] = v20;
  inited[5] = v20;
  inited[6] = 0;
  v50 = 0;
  *&v47 = a4;
  WORD4(v47) = 0;
  v48 = 0;
  v49 = 6;
  swift_beginAccess();
  v21 = a4;
  sub_1CF7E30EC(&v47);
  swift_endAccess();
  *v18 = v21;
  strcpy(v18 + 8, "lazily deleted");
  v18[23] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v18, v15, &qword_1EC4BFC80, &qword_1CFA053D0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v22 = v21;
  sub_1CF7E2FA0(v15);
  swift_endAccess();
  sub_1CEFCCC44(v18, &qword_1EC4BFC80, &qword_1CFA053D0);
  v51 = 1;
  v23 = v37;
  *&v44 = v37;
  LOBYTE(v21) = v38;
  BYTE8(v44) = v38;
  BYTE9(v44) = 1;
  v45 = 2;
  v46 = 6;
  swift_beginAccess();
  sub_1CF7E30EC(&v44);
  swift_endAccess();
  *v12 = v23;
  v12[8] = v21;
  strcpy(v12 + 16, "lazily deleted");
  v12[31] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v12, v15, &qword_1EC4BFC88, &qword_1CFA053D8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF7E2FA0(v15);
  swift_endAccess();
  v24 = sub_1CEFCCC44(v12, &qword_1EC4BFC88, &qword_1CFA053D8);
  (*(*v40 + 176))(v24);
  v25 = v39;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v27 = v26;
  result = (*(v41 + 8))(v25, v42);
  v29 = v27 * 1000000000.0;
  if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v29 < 9.22337204e18)
  {
    sub_1CF7F6A3C(inited, v29, v33, v34);

    swift_setDeallocating();
    v30 = inited[3];

    v31 = inited[4];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF41BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v1051 = v10;
  v1049 = v12;
  v1021 = v13;
  v1028 = v14;
  v1029 = v15;
  v17 = v16;
  v1641 = v18;
  v1048 = v11;
  LODWORD(v1050) = a10;
  LODWORD(v1046) = v19;
  v1027 = type metadata accessor for ItemMetadata();
  v20 = *(*(v1027 - 1) + 64);
  v21 = MEMORY[0x1EEE9AC00](v1027);
  v1002 = &v1000 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v1005 = &v1000 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v1013 = &v1000 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v1006 = &v1000 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v1009 = &v1000 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v1010 = &v1000 - v32;
  v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v1011 = *(v1015 - 8);
  v33 = *(v1011 + 64);
  v34 = MEMORY[0x1EEE9AC00](v1015);
  v1012 = &v1000 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v1007 = &v1000 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v1008 = &v1000 - v38;
  v1024 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v39 = *(*(v1024 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1024);
  v1025 = (&v1000 - v40);
  v41 = sub_1CF9E6118();
  v42 = *(v41 - 8);
  v1036 = v41;
  v1037 = v42;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v1004 = &v1000 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v1003 = &v1000 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v1032 = &v1000 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v1031 = &v1000 - v50;
  v1038 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v51 = *(*(v1038 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1038);
  v1039 = &v1000 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v1035 = *(v53 - 8);
  v54 = *(v1035 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v1017 = &v1000 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v1019 = &v1000 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v1018 = &v1000 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v1026 = &v1000 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v1034 = &v1000 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v1000 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v1016 = &v1000 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v1022 = &v1000 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v1044 = (&v1000 - v71);
  v1033 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1030 = *(v1033 - 8);
  v72 = *(v1030 + 64);
  v73 = MEMORY[0x1EEE9AC00](v1033);
  v1014 = &v1000 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v1020 = &v1000 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v1023 = &v1000 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v1041 = (&v1000 - v80);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v1040 = &v1000 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v1045 = (&v1000 - v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0590, &qword_1CFA05958);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v87 = (&v1000 - v86);
  v1090 = v1641;
  v1043 = a9;
  v1088 = a9;
  v1089 = v1050;
  v89 = *(v17 + 24);
  v88 = *(v17 + 32);
  v1047 = v17;
  v1042 = v88;
  sub_1CEFCCBDC(v1048, v87, &qword_1EC4C0590, &qword_1CFA05958);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v138 = *v87;
      v139 = v87[1];
      v140 = v1641;
      v141 = v1039;
      *v1039 = v1641;
      *(v141 + 1) = v138;
      *(v141 + 2) = v139;
      swift_storeEnumTagMultiPayload();
      v142 = *(*v1049 + 120);
      v143 = v140;
      v142(v141);
      v144 = &qword_1EC4BFC80;
      v145 = &qword_1CFA053D0;
      v146 = v141;
LABEL_17:
      sub_1CEFCCC44(v146, v144, v145);
      v147 = 0;
      return v147 & 1;
    }

    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05A8, &qword_1CFA05978);
    LODWORD(v1044) = *(v87 + *(v104 + 48));
    v105 = (v87 + *(v104 + 64));
    v107 = *v105;
    v106 = v105[1];
    v1041 = v107;
    v1048 = v106;
    v108 = v1045;
    sub_1CEFE55D0(v87, v1045, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v109 = *v108;
    v110 = v1051;
    v111 = v1641;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v114 = v113;
    v115 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v117 = v1042;
    v118 = v1046;
    if (v112 != v115 || v114 != v116)
    {
      v148 = sub_1CF9E8048();

      if (v148)
      {
        goto LABEL_19;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v179 = v178;
      if (v177 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v179 != v180)
      {
        v181 = sub_1CF9E8048();

        if ((v181 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    if (!sub_1CF902E34() && v118 != 4)
    {
      goto LABEL_21;
    }

LABEL_36:
    v182 = v1047;
    v183 = *(*v1047 + 152);
    v184 = v183();
    if ((sub_1CF06D930(0x4000, v184) & 1) != 0 && v118 != 4)
    {
      v185 = *(v182 + 16);
      sub_1CF7EBA74(v111, v1043, v1050, v1086);
      if (v110)
      {
LABEL_39:

        v162 = v1045;
LABEL_374:
        sub_1CEFCCC44(v162, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        return v147 & 1;
      }

      memcpy(v1085, v1086, sizeof(v1085));
      if (sub_1CF08B99C(v1085) == 1)
      {
        memcpy(v1084, v1086, sizeof(v1084));
        sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        memcpy(v1084, v1086, sizeof(v1084));
        memcpy(v1169, v1086, sizeof(v1169));
        v251 = sub_1CF41864C(v1169, v182, v1043, v1050);
        v291 = v251;
        sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v291)
        {

          sub_1CEFCCC44(v1045, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v147 = 1;
          return v147 & 1;
        }
      }
    }

    v1051 = v183;
    if (sub_1CF902E34())
    {
      v215 = *(v182 + 16);
      v216 = v1045;
      sub_1CF7EBA74(v1045[1], v1043, v1050, v1086);
      if (v110)
      {

        v162 = v216;
        goto LABEL_374;
      }

      memcpy(v1085, v1086, sizeof(v1085));
      if (sub_1CF08B99C(v1085) == 1)
      {
        memcpy(v1084, v1086, sizeof(v1084));
        sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        v256 = *&v1086[8];
        memcpy(v1084, v1086, sizeof(v1084));
        sub_1CEFCCC44(v1084, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (sub_1CF06D930(16, v256))
        {
          if (v118 == 3)
          {
            v257 = 1;
            goto LABEL_106;
          }

          if (v118 != 4)
          {
LABEL_21:

            v149 = v1045;
            goto LABEL_22;
          }
        }
      }
    }

    v257 = 0;
LABEL_106:
    sub_1CF7E6950(v1086);
    if (sub_1CF06DA5C(v1086[0], 1))
    {
      if (v118 == 3)
      {
        if ((v257 & 1) == 0)
        {
          if (*(v1045 + *(v1033 + 48) + v1027[20]))
          {
            LODWORD(v1641) = 0;
            v258 = v1045;
            goto LABEL_119;
          }

          (*(*v117 + 240))(v1045 + 1, 1, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v110)
          {
            goto LABEL_39;
          }

          v328 = v1016;
          if ((*(v1030 + 48))(v1016, 1, v1033) == 1)
          {
            sub_1CEFCCC44(v328, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            LODWORD(v1040) = sub_1CF7E69A4();
            sub_1CEFCCC44(v328, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            if (v1040)
            {
              v389 = sub_1CF436240(v111, v1028, v1029, 0x10000, &unk_1EC4BFE80, &qword_1CF9FB420);
              v390 = v111;
              sub_1CF903274(v1049, v389);
            }
          }
        }

        goto LABEL_117;
      }

      if (sub_1CF902E34())
      {
        if (v118 == 4)
        {
          goto LABEL_117;
        }

        v1040 = sub_1CF611848(v1028, 0x2000000000000000uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
        v259 = swift_allocObject();
        v260 = sub_1CF06DA80(v259, 2);
        *v261 = v1021;
        v261[1] = 4;
        v262 = nullsub_1(v260);
        v263 = sub_1CEFF8C8C(v262);

        *v1086 = v263;
        if (*(v1045 + *(v1033 + 48) + v1027[15]) == 1)
        {
          sub_1CF948150(v1085, 0x1000000000);
          v263 = *v1086;
        }

        v264 = sub_1CF3F7A48(v111, v1040, v1029, v263);
        v265 = v111;
        sub_1CF903274(v1049, v264);

        v182 = v1047;
      }
    }

    if (!v118)
    {
      v258 = v1045;
      sub_1CF7E6950(v1086);
      sub_1CF06DA5C(v1086[0], 0);
      LODWORD(v1641) = 1;
LABEL_119:
      v266 = sub_1CF902E34();
      if ((v266 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        v267 = swift_allocObject();
        v268 = sub_1CF06DA80(v267, 2);
        *v269 = xmmword_1CFA04EC0;
        v270 = nullsub_1(v268);
        sub_1CEFF5464(v270, v1086);
        v271 = v1022;
        (*(v1030 + 56))(v1022, 1, 1, v1033);
        sub_1CF3F42D0(v271, v258, v1086, v182, v1049, 1, v1043, v1050);
        if (v110)
        {

          sub_1CEFCCC44(v271, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_136:
          v162 = v258;
          goto LABEL_374;
        }

        v266 = sub_1CEFCCC44(v271, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      }

      v272 = (v1051)(v266);
      if (sub_1CF06D930(0x40000, v272))
      {
        v273 = v258 + *(v1033 + 48);
        if (sub_1CF06DA5C(*v273, 0))
        {
          LODWORD(v1040) = v257;
          v1051 = v110;
          v274 = v258[11];
          *v1086 = v258[10];
          v275 = *&v273[v1027[26]];
          *&v1086[8] = v274;
          v276 = v1027[30];
          v277 = *(*v182 + 608);

          v278 = v277(v1086, v275, &v273[v276]);

          if (v278)
          {
            v279 = *v258;
            v280 = *v258;
            v281 = sub_1CF656C80(0);
            v282 = sub_1CEFF8C8C(v281);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0560, qword_1CFA0E160);
            v283 = swift_allocObject();
            v284 = sub_1CF06DA80(v283, 1);
            *v285 = 4;
            v286 = nullsub_1(v284);
            v287 = sub_1CEFF8C8C(v286);

            v1084[0] = 0;
            v1145 = v279;
            v1146 = 0;
            v1147 = *v1085;
            v1148 = *&v1085[4];
            v1149 = v282;
            v1150 = v287;
            v1153 = *&v1086[32];
            v1154 = *&v1086[48];
            *v1155 = *&v1086[64];
            *&v1155[15] = *&v1086[79];
            v1151 = *v1086;
            v1152 = *&v1086[16];
            v1156 = 14;
            sub_1CF903278(v1049, &v1145);
          }

          else
          {
            v292 = *v258;
            v293 = *v258;
            v294 = sub_1CF656C80(0);
            v295 = sub_1CEFF8C8C(v294);

            v1165 = *&v1086[32];
            v1166 = *&v1086[48];
            *v1167 = *&v1086[64];
            v1163 = *v1086;
            v1084[0] = 0;
            v1157 = v292;
            v1158 = 0;
            v1159 = *v1085;
            v1160 = *&v1085[4];
            v1161 = 4;
            v1162 = v295;
            *&v1167[15] = *&v1086[79];
            v1164 = *&v1086[16];
            v1168 = 14;
            sub_1CF903278(v1049, &v1157);
          }

          v110 = v1051;
          v182 = v1047;
          v118 = v1046;
          v257 = v1040;
        }
      }

      v296 = v182;
      v297 = v1049;
      sub_1CF3F2AA0(v258, v296, v1049, v1043, v1050);
      if (v110)
      {

        goto LABEL_136;
      }

      LODWORD(v1040) = v257;
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
      v299 = v1039;
      v300 = &v1039[*(v298 + 48)];
      sub_1CEFCCBDC(v258, v1039, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v301 = v1048;
      *v300 = v1041;
      *(v300 + 1) = v301;
      swift_storeEnumTagMultiPayload();
      (*(*v297 + 120))(v299);
      sub_1CEFCCC44(v299, &qword_1EC4BFC80, &qword_1CFA053D0);
      *v1085 = *v258;
      v302 = *v1085;
      *&v1085[8] = 0;
      sub_1CF7E6950(&v1085[10]);
      v1085[115] = 0;
      v1143[4] = *&v1085[64];
      v1143[5] = *&v1085[80];
      v1143[6] = *&v1085[96];
      v1143[0] = *v1085;
      v1143[1] = *&v1085[16];
      v1143[2] = *&v1085[32];
      v1143[3] = *&v1085[48];
      v1144 = *&v1085[112];
      v303 = v302;
      sub_1CF903278(v297, v1143);
      *&v1086[64] = *&v1085[64];
      *&v1086[80] = *&v1085[80];
      *&v1086[96] = *&v1085[96];
      *&v1086[112] = *&v1085[112];
      *v1086 = *v1085;
      *&v1086[16] = *&v1085[16];
      *&v1086[32] = *&v1085[32];
      *&v1086[48] = *&v1085[48];
      sub_1CEFCCC44(v1086, &qword_1EC4BE730, &unk_1CFA05490);
      if (sub_1CF902E34())
      {
        v1084[0] = 0;
        v304 = (*(*v1047 + 272))(v303);
        v1137 = v302;
        v1138 = 0;
        v305 = v1084[0];
        v1139 = v1084[0];
        v1140 = v304;
        v1141 = 9;
        v1142 = 10;
        sub_1CF903278(v1049, &v1137);
        *v1085 = v302;
        v1085[8] = 0;
        v1085[9] = v305;
        *&v1085[16] = v304;
        v1085[82] = 9;
        v258 = v1045;
        v1085[115] = 10;
        v118 = v1046;
        sub_1CEFCCC44(v1085, &qword_1EC4BE730, &unk_1CFA05490);
      }

      *v1082 = *sub_1CF06EDF4();
      v306 = v1044;
      if (v118 == 3)
      {
        v306 = 0;
      }

      v307 = v1047;
      if (v306 == 1)
      {
        sub_1CF948150(v1085, 0x80000000000);
      }

      v308 = v258 + *(v1033 + 48);
      if (v308[v1027[36]] == 1)
      {
        sub_1CF948150(v1085, 0x8000);
      }

      sub_1CF7E6950(v1085);
      if (!FileItemKind.hasContent.getter())
      {
        (*(**(v307 + 16) + 160))(v1085, v258, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v1085[8] != 255)
        {
          sub_1CF7F5D14(8, v1085);
        }
      }

      *v1084 = v302;
      *&v1084[8] = 0;
      *&v1084[16] = *v1082;
      *&v1084[24] = v1028;
      *&v1084[32] = v1029;
      v1084[82] = 0;
      v1134[3] = *&v1084[48];
      v1135[0] = *&v1084[64];
      v1134[2] = *&v1084[32];
      *(v1135 + 15) = *&v1084[79];
      v1134[0] = *v1084;
      v1134[1] = *&v1084[16];
      v1136 = 10;
      v309 = v303;
      sub_1CF903278(v1049, v1134);
      sub_1CEFCCC44(v1084, &qword_1EC4BFD48, &qword_1CFA05460);
      v310 = v1046 - 3;
      if (v1046 == 3 && ((v1040 | v308[v1027[16]]) & 1) == 0)
      {
        v1051 = 0;
        v1083[0] = 0;
        v1131 = v302;
        v1132 = 0;
        v1133 = 15;
        v345 = v309;
        sub_1CF903278(v1049, &v1131);

        if (v308[v1027[20]] == 1)
        {
          *v1085 = v302;
          *&v1085[8] = 0;
          *&v1085[16] = 1;
          memset(&v1085[24], 0, 58);
          v1085[82] = 15;
          v1128[2] = *&v1085[32];
          v1128[3] = *&v1085[48];
          v1129[0] = *&v1085[64];
          *(v1129 + 15) = *&v1085[79];
          v1128[0] = *v1085;
          v1128[1] = *&v1085[16];
          v1130 = 10;
          v346 = v345;
          sub_1CF903278(v1049, v1128);
          sub_1CEFCCC44(v1085, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        sub_1CF7E6950(v1085);
        if (!sub_1CF68245C())
        {
          v384 = sub_1CF902E34();
          v110 = v1051;
          v318 = v1641;
          if (v384)
          {
            *v1085 = v302;
            *&v1085[8] = 0;
            v1085[16] = 2;
            v1085[82] = 10;
            v1125[2] = *&v1085[32];
            v1125[3] = *&v1085[48];
            v1126[0] = *&v1085[64];
            *(v1126 + 15) = *&v1085[79];
            v1125[0] = *v1085;
            v1125[1] = *&v1085[16];
            v1127 = 10;
            v385 = v345;
            v317 = v1049;
            sub_1CF903278(v1049, v1125);
            sub_1CEFCCC44(v1085, &qword_1EC4BFD48, &qword_1CFA05460);
          }

          else
          {
            v317 = v1049;
          }

LABEL_160:
          v319 = v308[v1027[16]];
          *v1083 = v302;
          *&v1083[8] = 0;
          v1083[16] = v319;
          v1083[82] = 5;
          v1116[2] = *&v1083[32];
          v1116[3] = *&v1083[48];
          v1117[0] = *&v1083[64];
          *(v1117 + 15) = *&v1083[79];
          v1116[0] = *v1083;
          v1116[1] = *&v1083[16];
          v1118 = 10;
          v320 = v309;
          sub_1CF903278(v317, v1116);
          sub_1CEFCCC44(v1083, &qword_1EC4BFD48, &qword_1CFA05460);
          if (v318)
          {
            v258 = v1045;
            sub_1CF41A5CC(v1045, v1047, v317, v1043, v1050);
            if (v110)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v258 = v1045;
          }

          if ((sub_1CF06D930(1, v1021) & 1) != 0 && !sub_1CF902E34())
          {
            *v1085 = v302;
            *&v1085[8] = 0;
            *&v1085[16] = 517;
            *&v1085[24] = v1028;
            *&v1085[32] = v1029;
            v1113[4] = *&v1085[64];
            v1113[5] = *&v1085[80];
            *v1114 = *&v1085[96];
            v1113[3] = *&v1085[48];
            v1113[0] = *v1085;
            v1113[1] = *&v1085[16];
            v1085[114] = 12;
            *&v1114[15] = *&v1085[111];
            v1113[2] = *&v1085[32];
            v1115 = 9;
            v321 = v320;
            sub_1CF903278(v1049, v1113);
            sub_1CEFCCC44(v1085, &unk_1EC4BFD60, &qword_1CFA05468);
          }

          v322 = v1027;
          if (sub_1CF06EE7C(v308[v1027[22]], 2))
          {
            v323 = v320;
            v324 = sub_1CF656C80(0);
            v325 = sub_1CEFF8C8C(v324);

            v1080[0] = 0;
            v1101 = v302;
            v1102 = 0;
            v1103 = *v1081;
            v1104 = *&v1081[4];
            v1105 = 2;
            v1106 = v325;
            v258 = v1045;
            v1109 = *&v1085[32];
            v1110 = *&v1085[48];
            *v1111 = *&v1085[64];
            *&v1111[15] = *&v1085[79];
            v1107 = *v1085;
            v1108 = *&v1085[16];
            v1112 = 14;
            sub_1CF903278(v1049, &v1101);

            v322 = v1027;
          }

          if (v308[v322[24]] == 1)
          {
            v1085[0] = 0;
            v1081[0] = 0;
            v1096 = v302;
            v1097 = 0;
            v1098 = 4;
            v1099 = 0;
            v1100 = 11;
            v326 = v320;
            sub_1CF903278(v1049, &v1096);

            v322 = v1027;
          }

          if (v308[v322[25]] == 1)
          {
            v1085[0] = 0;
            v1081[0] = 0;
            v1091 = v302;
            v1092 = 0;
            v1093 = 8;
            v1094 = 0;
            v1095 = 11;
            v327 = v320;
            sub_1CF903278(v1049, &v1091);
          }

          v149 = v258;
          goto LABEL_22;
        }

        v110 = v1051;
        v317 = v1049;
      }

      else
      {
        if (sub_1CF902E34() || (sub_1CF7E6950(v1085), !FileItemKind.supportsMaterialization.getter()))
        {
          *v1085 = v302;
          *&v1085[8] = 0;
          v1085[16] = 2;
          v1085[82] = 10;
          v1122[2] = *&v1085[32];
          v1122[3] = *&v1085[48];
          v1123[0] = *&v1085[64];
          *(v1123 + 15) = *&v1085[79];
          v1122[0] = *v1085;
          v1122[1] = *&v1085[16];
          v1124 = 10;
          v311 = v309;
          sub_1CF903278(v1049, v1122);
          sub_1CEFCCC44(v1085, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        if (v310 > 1 && sub_1CF902E34() && (sub_1CF7E69A4() & 1) != 0 && (sub_1CF7E6950(v1085), FileItemKind.hasContent.getter()) || v1040 && (sub_1CF7E69A4() & 1) != 0)
        {
          v312 = v309;
          v313 = sub_1CF93DAB0(v312);
          v315 = sub_1CF4175D0(v312, v313, v314, 0x10000000);
          sub_1CF903274(v1049, v315);
        }

        *v1085 = v302;
        *&v1085[8] = 0;
        v1085[16] = 0;
        v1085[82] = 3;
        v1119[2] = *&v1085[32];
        v1119[3] = *&v1085[48];
        v1120[0] = *&v1085[64];
        *(v1120 + 15) = *&v1085[79];
        v1119[0] = *v1085;
        v1119[1] = *&v1085[16];
        v1121 = 10;
        v316 = v309;
        v317 = v1049;
        sub_1CF903278(v1049, v1119);
        sub_1CEFCCC44(v1085, &qword_1EC4BFD48, &qword_1CFA05460);
      }

      v318 = v1641;
      goto LABEL_160;
    }

LABEL_117:
    LODWORD(v1641) = 0;
    v258 = v1045;
    goto LABEL_119;
  }

  v1001 = v89;
  if (EnumCaseMultiPayload)
  {
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05A0, &qword_1CFA05970);
    v120 = v119[12];
    v121 = *(v87 + v119[16]);
    v122 = *(v87 + v119[20] + 8);

    v1048 = *v87;
    v123 = v1044;
    sub_1CEFE55D0(v87 + v120, v1044, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    LODWORD(v1045) = v121;
    if (v121)
    {
      v124 = v1031;
      sub_1CF19BFD0();
      sub_1CEFCCBDC(v123, v66, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v125 = (*(v1035 + 80) + 16) & ~*(v1035 + 80);
      v126 = swift_allocObject();
      sub_1CEFE55D0(v66, v126 + v125, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v127 = sub_1CF9E6108();
      v128 = sub_1CF9E7298();
      v129 = swift_allocObject();
      *(v129 + 16) = 32;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_1CF482ADC;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_1CF485960;
      *(v132 + 24) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
      v133 = swift_allocObject();
      sub_1CF06DA80(v133, 3);
      *v134 = sub_1CF485A70;
      v134[1] = v129;
      v134[2] = sub_1CF485A70;
      v134[3] = v130;
      v134[4] = sub_1CF485884;
      v134[5] = v132;

      if (os_log_type_enabled(v127, v128))
      {
        LODWORD(v1041) = v128;
        v135 = sub_1CF1B5D40();
        v136 = swift_slowAlloc();
        *v1084 = 0;
        *v1083 = v136;
        *v135 = 258;
        *v1085 = v135 + 2;
        *v1086 = sub_1CF485A70;
        *&v1086[8] = v129;
        v137 = v1051;
        sub_1CF1B5D64(v1086, v1085, v1084, v1083);
        if (!v137)
        {

          *v1086 = sub_1CF485A70;
          *&v1086[8] = v130;
          sub_1CF1B5D64(v1086, v1085, v1084, v1083);

          *v1086 = sub_1CF485884;
          *&v1086[8] = v132;
          sub_1CF1B5D64(v1086, v1085, v1084, v1083);
          v1051 = 0;

          _os_log_impl(&dword_1CEFC7000, v127, v1041, "Recursive delete of %s", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v136);
          MEMORY[0x1D386CDC0](v136, -1, -1);
          sub_1CF1B5D48();
        }

        __break(1u);
        goto LABEL_785;
      }

      (*(v1037 + 8))(v124, v1036);
      v186 = v1049;
      v187 = v1047;
      v188 = v1641;
      *v1083 = v1641;
      *&v1083[8] = 0;
      v1083[16] = 1;
      v1083[82] = 3;
      v1206[2] = *&v1083[32];
      v1206[3] = *&v1083[48];
      v1207[0] = *&v1083[64];
      *(v1207 + 15) = *&v1083[79];
      v1206[0] = *v1083;
      v1206[1] = *&v1083[16];
      v1208 = 10;
      v189 = v1641;
      v190 = v186;
      sub_1CF903278(v186, v1206);
      v191 = sub_1CEFCCC44(v1083, &qword_1EC4BFD48, &qword_1CFA05460);
      v192 = (*(*v187 + 152))(v191);
      if ((sub_1CF06D930(0x4000, v192) & 1) != 0 && v1046 != 4 && sub_1CF902E34())
      {
        v193 = v1019;
        sub_1CEFCCBDC(v1044, v1019, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v194 = v1033;
        if ((*(v1030 + 48))(v193, 1, v1033) == 1)
        {
          sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          goto LABEL_48;
        }

        v253 = v193;
        v254 = v1020;
        sub_1CEFE55D0(v253, v1020, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v255 = v254 + *(v194 + 48);
        if ((*(v255 + v1027[16]) & 1) != 0 && *(v255 + v1027[15]) == 1)
        {
          goto LABEL_101;
        }

        v288 = v187[2];
        v289 = v1051;
        sub_1CF7EBA74(v189, v1043, v1050, v1086);
        v1051 = v289;
        if (v289)
        {
LABEL_226:
          sub_1CEFCCC44(v1020, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          goto LABEL_60;
        }

        memcpy(v1085, v1086, sizeof(v1085));
        if (sub_1CF08B99C(v1085) == 1)
        {
          memcpy(v1084, v1086, sizeof(v1084));
          sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v290 = v1042;
        }

        else
        {
          memcpy(v1084, v1086, sizeof(v1084));
          sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v386 = sub_1CF06D930(16, *&v1084[8]);
          v290 = v1042;
          if (v386)
          {
            goto LABEL_101;
          }
        }

        v387 = v1051;
        v388 = (*(*v290 + 488))(&v1090, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1051 = v387;
        if (v387)
        {
          goto LABEL_226;
        }

        if ((v388 & 1) == 0)
        {
          *v1084 = v188;
          *&v1084[8] = 0;
          v1084[16] = 1;
          v1084[82] = 14;
          v1203[2] = *&v1084[32];
          v1203[3] = *&v1084[48];
          v1204[0] = *&v1084[64];
          *(v1204 + 15) = *&v1084[79];
          v1203[0] = *v1084;
          v1203[1] = *&v1084[16];
          v1205 = 10;
          v391 = v189;
          sub_1CF903278(v190, v1203);
          sub_1CEFCCC44(v1084, &qword_1EC4BFD48, &qword_1CFA05460);
        }

LABEL_101:
        sub_1CEFCCC44(v1020, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      }
    }

    else
    {
      v163 = v1032;
      sub_1CF19BFD0();
      sub_1CEFCCBDC(v123, v66, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v164 = (*(v1035 + 80) + 16) & ~*(v1035 + 80);
      v165 = swift_allocObject();
      sub_1CEFE55D0(v66, v165 + v164, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v166 = sub_1CF9E6108();
      v167 = sub_1CF9E7298();
      v168 = swift_allocObject();
      *(v168 + 16) = 32;
      v169 = swift_allocObject();
      *(v169 + 16) = 8;
      v170 = swift_allocObject();
      *(v170 + 16) = sub_1CF4858F8;
      *(v170 + 24) = v165;
      v171 = swift_allocObject();
      *(v171 + 16) = sub_1CF485960;
      *(v171 + 24) = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
      v172 = swift_allocObject();
      sub_1CF06DA80(v172, 3);
      *v173 = sub_1CF485A70;
      v173[1] = v168;
      v173[2] = sub_1CF485A70;
      v173[3] = v169;
      v173[4] = sub_1CF485884;
      v173[5] = v171;

      if (os_log_type_enabled(v166, v167))
      {
        LODWORD(v1041) = v167;
        v174 = sub_1CF1B5D40();
        v175 = swift_slowAlloc();
        *v1084 = 0;
        *v1083 = v175;
        *v174 = 258;
        *v1085 = v174 + 2;
        *v1086 = sub_1CF485A70;
        *&v1086[8] = v168;
        v176 = v1051;
        sub_1CF1B5D64(v1086, v1085, v1084, v1083);
        v127 = v176;
        if (!v176)
        {

          *v1086 = sub_1CF485A70;
          *&v1086[8] = v169;
          sub_1CF1B5D64(v1086, v1085, v1084, v1083);

          *v1086 = sub_1CF485884;
          *&v1086[8] = v171;
          sub_1CF1B5D64(v1086, v1085, v1084, v1083);

          _os_log_impl(&dword_1CEFC7000, v166, v1041, "Delete of %s", v174, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v175);
          MEMORY[0x1D386CDC0](v175, -1, -1);
          sub_1CF1B5D48();
        }

        goto LABEL_785;
      }

      (*(v1037 + 8))(v163, v1036);
      v190 = v1049;
      v188 = v1641;
    }

LABEL_48:
    *v1079 = v188;
    *&v1079[8] = 0;
    v1079[16] = 0;
    v1079[82] = 5;
    v1200[2] = *&v1079[32];
    v1200[3] = *&v1079[48];
    v1201[0] = *&v1079[64];
    *(v1201 + 15) = *&v1079[79];
    v1200[0] = *v1079;
    v1200[1] = *&v1079[16];
    v1202 = 10;
    v195 = v188;
    sub_1CF903278(v190, v1200);
    sub_1CEFCCC44(v1079, &qword_1EC4BFD48, &qword_1CFA05460);
    if (sub_1CF902E34())
    {
      v1085[0] = 0;
      v196 = (*(*v1047 + 272))(v195);
      v197 = v1641;
      v1194 = v1641;
      v1195 = 0;
      v198 = v1085[0];
      v1196 = v1085[0];
      v1197 = v196;
      v1198 = 9;
      v1199 = 10;
      sub_1CF903278(v1049, &v1194);
      *v1086 = v197;
      v1086[8] = 0;
      v1086[9] = v198;
      *&v1086[16] = v196;
      v1086[82] = 9;
      v190 = v1049;
      v1086[115] = 10;
      sub_1CEFCCC44(v1086, &qword_1EC4BE730, &unk_1CFA05490);
    }

    if (v1046 == 4)
    {
      v199 = *(v1047 + 16);
      v200 = v1051;
      sub_1CF7EBA74(v195, v1043, v1050, v1086);
      v1051 = v200;
      v201 = v1034;
      if (!v200)
      {
        v1046 = v195;
        memcpy(v1085, v1086, sizeof(v1085));
        if (sub_1CF08B99C(v1085) != 1)
        {
          memcpy(v1082, v1086, sizeof(v1082));
          memcpy(v1083, v1086, sizeof(v1083));
          memcpy(v1184, v1086, sizeof(v1184));
          sub_1CF7F6024(v1081);
          v202 = v1030;
          if (v1081[8] == 255 || !*&v1081[248] || (*&v1081[192] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(v1084, v1081, sizeof(v1084));
            v209 = &qword_1EC4BFBC0;
            v210 = &unk_1CF9FCAC0;
            v208 = v1084;
          }

          else
          {
            v203 = v1081[344];
            memcpy(v1084, v1081, sizeof(v1084));
            sub_1CEFCCC44(v1084, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (v203 || *&v1083[400] >> 60 == 11)
            {
              goto LABEL_83;
            }

            v1179 = *&v1083[376];
            v1180 = *&v1083[392];
            v1181 = *&v1083[400];
            v1182 = *&v1083[408];
            v1183 = *&v1083[424];
            sub_1CEFCCBDC(&v1083[376], v1081, &unk_1EC4BF260, &unk_1CFA01B60);
            v204 = sub_1CEFCCBDC(&v1083[376], v1081, &unk_1EC4BF260, &unk_1CFA01B60);
            v205 = sub_1CF93DAB0(v204);
            v207 = sub_1CF205DCC(&v1179, v205, v206, 0x4000);
            sub_1CF903270(v190, v207);

            v208 = &v1083[376];
            v209 = &unk_1EC4BF260;
            v210 = &unk_1CFA01B60;
          }

          sub_1CEFCCC44(v208, v209, v210);
LABEL_83:
          sub_1CEFCCC44(v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_84:
          v214 = v1033;
LABEL_85:
          sub_1CEFCCBDC(v1044, v201, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v227 = *(v202 + 48);
          if (v227(v201, 1, v214) == 1)
          {
            sub_1CEFCCC44(v201, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            sub_1CF7E6950(v1086);
            v228 = v1086[0];
            sub_1CEFCCC44(v201, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v675 = v228 == 1;
            v214 = v1033;
            if (v675)
            {
              v229 = v1048;
              v230 = v1028;
              v231 = v1029;
              v232 = sub_1CF436240(v1048, v1028, v1029, 8, &qword_1EC4BDF70, &qword_1CF9FB468);
              v1050 = v229;
              sub_1CF903274(v190, v232);

              v233 = v1641;
              *v1085 = v1641;
              *&v1085[8] = 0;
              v1085[16] = v1045;
              v1085[82] = 3;
              v1176[2] = *&v1085[32];
              v1176[3] = *&v1085[48];
              v1177[0] = *&v1085[64];
              *(v1177 + 15) = *&v1085[79];
              v1176[0] = *v1085;
              v1176[1] = *&v1085[16];
              v1178 = 10;
              v234 = v1046;
              sub_1CF903278(v1049, v1176);
              sub_1CEFCCC44(v1085, &qword_1EC4BFD48, &qword_1CFA05460);
              *v1086 = v233;
              *&v1086[8] = 0;
              v1086[16] = 1;
              v1086[82] = 4;
              v1173[2] = *&v1086[32];
              v1173[3] = *&v1086[48];
              v1174[0] = *&v1086[64];
              *(v1174 + 15) = *&v1086[79];
              v1173[0] = *v1086;
              v1173[1] = *&v1086[16];
              v1175 = 10;
              v235 = v1049;
              v236 = v234;
              sub_1CF903278(v235, v1173);
              v237 = v1050;
              sub_1CEFCCC44(v1086, &qword_1EC4BFD48, &qword_1CFA05460);
              v238 = sub_1CF436240(v237, v230, v231, 8, &qword_1EC4BDF78, &qword_1CF9FB470);
              if (*(v238 + 112))
              {
                goto LABEL_786;
              }

              *(v238 + 96) |= 8uLL;
              v239 = v238;
              v240 = v237;
              sub_1CF903274(v235, v239);

              sub_1CEFCCC44(v1044, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_94:
              v147 = 0;
              return v147 & 1;
            }
          }

          v241 = v1641;
          *v1086 = v1641;
          *&v1086[8] = 0;
          *&v1086[16] = v1028;
          *&v1086[24] = v1029;
          v1086[82] = 2;
          v1170[2] = *&v1086[32];
          v1170[3] = *&v1086[48];
          v1171[0] = *&v1086[64];
          *(v1171 + 15) = *&v1086[79];
          v1170[0] = *v1086;
          v1170[1] = *&v1086[16];
          v1172 = 10;
          v242 = v1046;
          sub_1CF903278(v190, v1170);
          sub_1CEFCCC44(v1086, &qword_1EC4BFD48, &qword_1CFA05460);
          v243 = v1044;
          v244 = v1026;
          sub_1CEFCCBDC(v1044, v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          if (v227(v244, 1, v214) == 1)
          {
            sub_1CEFCCC44(v243, &unk_1EC4BFBB0, &qword_1CF9FCB90);

            sub_1CEFCCC44(v244, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            v245 = v1023;
            sub_1CEFE55D0(v244, v1023, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v246 = v1025;
            *v1025 = v241;
            *(v246 + 8) = 0;
            v247 = *(v245 + 8);
            *(v246 + 16) = v247;
            *(v246 + 24) = 0;
            swift_storeEnumTagMultiPayload();
            v248 = *(*v1047 + 312);
            v249 = v242;
            v250 = v247;
            v248(v246);
            sub_1CEFCCC44(v246, &unk_1EC4C4E20, &unk_1CFA05350);
            sub_1CEFCCC44(v245, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            sub_1CEFCCC44(v243, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          goto LABEL_94;
        }

        goto LABEL_63;
      }

LABEL_60:
      sub_1CEFCCC44(v1044, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      return v147 & 1;
    }

    v211 = *(v1047 + 16);
    v212 = v1051;
    sub_1CF7EBA74(v195, v1043, v1050, v1086);
    v1051 = v212;
    v201 = v1034;
    if (v212)
    {
      goto LABEL_60;
    }

    v1046 = v195;
    memcpy(v1085, v1086, sizeof(v1085));
    if (sub_1CF08B99C(v1085) == 1)
    {
LABEL_63:
      memcpy(v1084, v1086, sizeof(v1084));
      sub_1CEFCCC44(v1084, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_64:
      v214 = v1033;
LABEL_65:
      v202 = v1030;
      goto LABEL_85;
    }

    memcpy(v1083, v1086, sizeof(v1083));
    memcpy(v1084, v1086, sizeof(v1084));
    memcpy(v1190, v1086, sizeof(v1190));
    if (!sub_1CF75C2AC() && v1084[120] == 2)
    {
      v217 = v1051;
      v218 = (*(*v1001 + 264))(&v1090, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1051 = v217;
      if (v217)
      {
        goto LABEL_254;
      }

      if (v218)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v219 = swift_dynamicCastClass();
        if (v219)
        {
          v220 = v219;
          v223 = *(v219 + 96);
          v222 = *(v219 + 104);
          v221 = (v219 + 96);
          LODWORD(v1041) = *(v219 + 112);
          if (sub_1CF95EEF8(v223, v222, v1041) || (v1039 = v223, v1040 = v222, v224 = v222, v225 = v1041, (sub_1CF95EEB4(v223, v224, v1041) & 1) != 0))
          {

            v190 = v1049;
          }

          else
          {
            if (v225 == 2)
            {
              v455 = 2;
              goto LABEL_787;
            }

            *v221 = 0;
            v221[1] = 0;
            *(v220 + 112) = 4;
            sub_1CF03D7A8(v1039, v1040, v225);

            v190 = v1049;
            (sub_1CF903270)();

            *v1082 = v1641;
            *&v1082[8] = 0;
            *&v1082[16] = xmmword_1CF9FD920;
            v1082[32] = 4;
            v1082[82] = 11;
            v1191[3] = *&v1082[48];
            v1192[0] = *&v1082[64];
            v1191[2] = *&v1082[32];
            *(v1192 + 15) = *&v1082[79];
            v1191[0] = *v1082;
            v1191[1] = xmmword_1CF9FD920;
            v1193 = 10;
            v396 = v1046;
            sub_1CF903278(v190, v1191);

            sub_1CEFCCC44(v1082, &qword_1EC4BFD48, &qword_1CFA05460);
          }

          v201 = v1034;
        }

        else
        {

          v190 = v1049;
        }
      }
    }

    v397 = (*(*v1047 + 152))();
    v398 = sub_1CF06D930(0x4000, v397);
    v399 = v1050;
    if ((v398 & 1) != 0 && !sub_1CF902E34())
    {
      v401 = v1051;
      v402 = sub_1CF41864C(v1190, v1047, v1043, v399);
      v1051 = v401;
      if (v401)
      {
        goto LABEL_254;
      }

      v214 = v1033;
      v400 = v1018;
      if (v402)
      {
        sub_1CEFCCC44(v1044, &unk_1EC4BFBB0, &qword_1CF9FCB90);

        v394 = &unk_1EC4BFD80;
        v395 = &unk_1CFA0A2A0;
        v393 = v1083;
        goto LABEL_251;
      }
    }

    else
    {
      v214 = v1033;
      v400 = v1018;
    }

    if (!v1190[0] || LOBYTE(v1190[27]) == 255 || (v1190[19] & 0xF000000000000000) == 0xB000000000000000 || LOBYTE(v1190[43]))
    {
      goto LABEL_247;
    }

    sub_1CEFCCBDC(v1044, v400, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v1030 + 48))(v400, 1, v214) == 1)
    {
      sub_1CEFCCC44(v400, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_247:
      sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_65;
    }

    v403 = *(v400 + 8);
    sub_1CEFCCC44(v400, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v404 = v1051;
    sub_1CF7EBA74(v403, v1043, v1050, v1082);
    v1051 = v404;
    if (!v404)
    {
      memcpy(v1081, v1082, sizeof(v1081));
      if (sub_1CF08B99C(v1081) == 1)
      {

        sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1080, v1082, sizeof(v1080));
        v408 = v1080;
      }

      else
      {
        memcpy(v1080, v1082, sizeof(v1080));
        if (sub_1CF06D930(2, *&v1080[8]))
        {
          v202 = v1030;
          if (*&v1084[152] >> 60 != 11)
          {
            v1185 = *&v1084[128];
            v1186 = *&v1084[144];
            v1187 = *&v1084[152];
            v1188 = *&v1084[160];
            v1189 = *&v1084[176];
            sub_1CEFCCBDC(&v1084[128], v1078, &unk_1EC4BF260, &unk_1CFA01B60);
            v409 = sub_1CEFCCBDC(&v1084[128], v1078, &unk_1EC4BF260, &unk_1CFA01B60);
            v410 = sub_1CF93DAB0(v409);
            v412 = sub_1CF205DE0(&v1185, v410, v411, 0x4000);
            sub_1CF903274(v1049, v412);

            v190 = v1049;
            sub_1CEFCCC44(&v1084[128], &unk_1EC4BF260, &unk_1CFA01B60);
          }

          sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_84;
        }

        sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        v408 = v1083;
      }

      sub_1CEFCCC44(v408, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_64;
    }

LABEL_254:
    sub_1CEFCCC44(v1044, &unk_1EC4BFBB0, &qword_1CF9FCB90);

    v405 = &unk_1EC4BFD80;
    v406 = &unk_1CFA0A2A0;
    v407 = v1083;
    goto LABEL_527;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0598, &unk_1CFA05960);
  v92 = v91[12];
  v93 = *(v87 + v91[16]);
  v94 = v87 + v91[20];
  v95 = *(v94 + 1);
  v1045 = *v94;
  v96 = v1040;
  sub_1CEFE55D0(v87, v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v97 = v1041;
  sub_1CEFE55D0(v87 + v92, v1041, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1087 = v93;
  v98 = v96;
  sub_1CF7E6950(v1086);
  sub_1CF7E6950(v1085);
  if ((sub_1CF6823E4(v1085) & 1) == 0)
  {

    if (v1046 != 4)
    {
      *v1086 = 0;
      *&v1086[8] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D386A280](0x1000000000000025, 0x80000001CFA45DE0);
      sub_1CF9613D8(v96);
      MEMORY[0x1D386A280](544175136, 0xE400000000000000);
      sub_1CF9613D8(v97);
      MEMORY[0x1D386A280](0, 0xE000000000000000);
      v150 = v1049;
      (*(*v1049 + 168))(*v1086, *&v1086[8]);

      v151 = *v97;
      v152 = sub_1CF93D7F4();
      v154 = v153;
      v155 = sub_1CF656C68(0);
      v156 = sub_1CEFF8C8C(v155);

      v157 = sub_1CF905084(v151, v152, v154, v156);
      sub_1CF903274(v150, v157);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    swift_allocError();
    *v158 = 4;
    *(v158 + 8) = 0u;
    *(v158 + 24) = 0u;
    *(v158 + 40) = 0u;
    *(v158 + 56) = 0u;
    *(v158 + 72) = 0u;
    *(v158 + 88) = 11;
    swift_willThrow();
LABEL_26:
    v159 = v98;
    v160 = &unk_1EC4BFBD0;
    v161 = &unk_1CF9FCBC0;
LABEL_27:
    sub_1CEFCCC44(v159, v160, v161);
    v162 = v97;
    goto LABEL_374;
  }

  v1048 = v95;
  v99 = v1047;
  v100 = *(v1047 + 16);
  v101 = v1043;
  v102 = v1050;
  v103 = v1051;
  sub_1CF7EBA74(*(v97 + 8), v1043, v1050, v1086);
  if (v103)
  {

    goto LABEL_26;
  }

  sub_1CF7EBA74(*v97, v101, v102, v1085);
  v1034 = v100;
  v226 = sub_1CF902E34();
  if (v226)
  {
    v1051 = 0;
  }

  else
  {
    v252 = v1017;
    sub_1CEFCCBDC(v98, v1017, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(v1030 + 56))(v252, 0, 1, v1033);
    sub_1CF3F42D0(v252, v97, &v1087, v99, v1049, 1, v101, v102);
    v1051 = 0;
    v226 = sub_1CEFCCC44(v252, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  }

  v329 = (*v99)[19];
  v1035 = (*v99 + 19);
  v1044 = v329;
  v330 = v329(v226);
  v331 = sub_1CF06D930(0x40000, v330);
  v1032 = (v97 + 8);
  if (v331)
  {
    v333 = *(v97 + 80);
    v332 = *(v97 + 88);
    v334 = v97 + *(v1033 + 48);
    v335 = *(v334 + v1027[26]);
    *v1084 = v333;
    *&v1084[8] = v332;
    v336 = v1027[30];
    v337 = (*v99)[76];

    v338 = v337(v1084, v335, v334 + v336);

    if (v338)
    {
      memcpy(v1083, v1085, sizeof(v1083));
      memcpy(v1084, v1085, sizeof(v1084));
      if (sub_1CF08B99C(v1084) != 1)
      {
        v339 = sub_1CF06D930(4, *&v1083[512]);
        v97 = v1041;
        if (v339)
        {
          v340 = *v1041;
          sub_1CEFCCBDC(v1083, v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v341 = v340;
          v342 = sub_1CF656C80(0);
          v343 = sub_1CEFF8C8C(v342);

          v1080[0] = 0;
          v1617 = v340;
          v1618 = 0;
          v1619 = *v1081;
          v1620 = *&v1081[4];
          v1621 = v343;
          v1622 = 4;
          v1625 = *&v1082[32];
          v1626 = *&v1082[48];
          *v1627 = *&v1082[64];
          *&v1627[15] = *&v1082[79];
          v1623 = *v1082;
          v1624 = *&v1082[16];
          v1628 = 14;
          v344 = &v1617;
LABEL_192:
          sub_1CF903278(v1049, v344);

          sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_193;
        }

        goto LABEL_193;
      }
    }

    else
    {
      memcpy(v1083, v1085, sizeof(v1083));
      memcpy(v1084, v1085, sizeof(v1084));
      if (sub_1CF08B99C(v1084) != 1)
      {
        v347 = sub_1CF06D930(4, *&v1083[512]);
        v97 = v1041;
        if ((v347 & 1) == 0)
        {
          v348 = *v1041;
          sub_1CEFCCBDC(v1083, v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v341 = v348;
          v349 = sub_1CF656C80(0);
          v350 = sub_1CEFF8C8C(v349);

          v1637 = *&v1082[32];
          v1638 = *&v1082[48];
          *v1639 = *&v1082[64];
          v1635 = *v1082;
          v1080[0] = 0;
          v1629 = v348;
          v1630 = 0;
          v1631 = *v1081;
          v1632 = *&v1081[4];
          v1633 = 4;
          v1634 = v350;
          *&v1639[15] = *&v1082[79];
          v1636 = *&v1082[16];
          v1640 = 14;
          v344 = &v1629;
          goto LABEL_192;
        }

LABEL_193:
        v99 = v1047;
        v102 = v1050;
        v101 = v1043;
        goto LABEL_194;
      }
    }

    v99 = v1047;
    v102 = v1050;
    v101 = v1043;
    v97 = v1041;
LABEL_194:
    v98 = v1040;
  }

  memcpy(v1084, v1085, sizeof(v1084));
  v351 = sub_1CF08B99C(v1084);
  if (v351 == 1)
  {
    if (v1046 - 3) >= 2 && sub_1CF902E34() && (sub_1CF7E69A4())
    {
      sub_1CF7E6950(v1083);
      if (FileItemKind.hasContent.getter())
      {

        v352 = *v97;
        v353 = sub_1CF93DAB0(v352);
        v355 = sub_1CF4175D0(v352, v353, v354, 0x10000000);
        sub_1CF903274(v1049, v355);

        sub_1CEFCCC44(v98, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1082, v1085, sizeof(v1082));
        sub_1CEFCCC44(v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1083, v1086, sizeof(v1083));
        sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v146 = v97;
        v144 = &unk_1EC4BFBD0;
        v145 = &unk_1CF9FCBC0;
        goto LABEL_17;
      }
    }

    *v1081 = *v97;
    v356 = *v1081;
    *&v1081[8] = 0;
    sub_1CF7E6950(&v1081[10]);
    v1081[115] = 0;
    v1615[4] = *&v1081[64];
    v1615[5] = *&v1081[80];
    v1615[6] = *&v1081[96];
    v1615[0] = *v1081;
    v1615[1] = *&v1081[16];
    v1615[2] = *&v1081[32];
    v1615[3] = *&v1081[48];
    v1616 = *&v1081[112];
    v357 = v356;
    v358 = v1049;
    sub_1CF903278(v1049, v1615);
    *&v1082[64] = *&v1081[64];
    *&v1082[80] = *&v1081[80];
    *&v1082[96] = *&v1081[96];
    *&v1082[112] = *&v1081[112];
    *v1082 = *v1081;
    *&v1082[16] = *&v1081[16];
    *&v1082[32] = *&v1081[32];
    *&v1082[48] = *&v1081[48];
    sub_1CEFCCC44(v1082, &qword_1EC4BE730, &unk_1CFA05490);
    v359 = *v1041;
    v1081[0] = 0;
    v360 = v359;
    v361 = *sub_1CF06EDF4();
    v362 = sub_1CF93D7F4();
    v364 = v363;
    v1607 = v359;
    v1608 = 0;
    LOBYTE(v356) = v1081[0];
    v1609 = v1081[0];
    v1610 = v361;
    v1611 = v362;
    v1612 = v363;
    v1613 = 0;
    v1614 = 10;
    v97 = v1041;
    sub_1CF903278(v358, &v1607);
    *v1083 = v359;
    v1083[8] = 0;
    v1083[9] = v356;
    *&v1083[16] = v361;
    *&v1083[24] = v362;
    *&v1083[32] = v364;
    v1083[82] = 0;
    v1083[115] = 10;
    sub_1CEFCCC44(v1083, &qword_1EC4BE730, &unk_1CFA05490);
    if (sub_1CF902E34())
    {
      v365 = *v97;
      v1080[0] = 0;
      v366 = (*(*v1047 + 272))(v365);
      v1601 = v365;
      v1602 = 0;
      v367 = v1080[0];
      v1603 = v1080[0];
      v1604 = v366;
      v1605 = 9;
      v1606 = 10;
      sub_1CF903278(v1049, &v1601);
      *v1081 = v365;
      v1081[8] = 0;
      v1081[9] = v367;
      *&v1081[16] = v366;
      v1081[82] = 9;
      v1081[115] = 10;
      sub_1CEFCCC44(v1081, &qword_1EC4BE730, &unk_1CFA05490);
    }

    v368 = sub_1CF902E34();
    v99 = v1047;
    v102 = v1050;
    v101 = v1043;
    if (v368 || (sub_1CF7E6950(v1081), v351 = FileItemKind.supportsMaterialization.getter(), (v351 & 1) == 0))
    {
      *v1081 = *v97;
      *&v1081[8] = 0;
      v1081[16] = 2;
      v1081[82] = 10;
      v1598[2] = *&v1081[32];
      v1598[3] = *&v1081[48];
      v1599[0] = *&v1081[64];
      *(v1599 + 15) = *&v1081[79];
      v1598[0] = *v1081;
      v1598[1] = *&v1081[16];
      v1600 = 10;
      v369 = *v1081;
      sub_1CF903278(v1049, v1598);
      v351 = sub_1CEFCCC44(v1081, &qword_1EC4BFD48, &qword_1CFA05460);
    }

    v98 = v1040;
  }

  v370 = v1044(v351);
  if (sub_1CF06D930(0x4000, v370))
  {
    memcpy(v1082, v1085, sizeof(v1082));
    memcpy(v1083, v1085, sizeof(v1083));
    if (sub_1CF08B99C(v1083) != 1)
    {
      memcpy(v1597, v1082, sizeof(v1597));
      if (v1046 != 4)
      {
        sub_1CEFCCBDC(v1082, v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v381 = v1051;
        v382 = sub_1CF41864C(v1597, v99, v101, v102);
        v1051 = v381;
        if (v381)
        {

          sub_1CEFCCC44(v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v98, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1080, v1085, sizeof(v1080));
          sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1081, v1086, sizeof(v1081));
          v383 = v1081;
LABEL_548:
          sub_1CEFCCC44(v383, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v407 = v97;
          goto LABEL_549;
        }

        v392 = v382;
        sub_1CEFCCC44(v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v392)
        {

          sub_1CEFCCC44(v98, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1080, v1085, sizeof(v1080));
          sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1081, v1086, sizeof(v1081));
          sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v393 = v97;
          v394 = &unk_1EC4BFBD0;
          v395 = &unk_1CF9FCBC0;
LABEL_251:
          sub_1CEFCCC44(v393, v394, v395);
          v147 = 1;
          return v147 & 1;
        }
      }
    }
  }

  v371 = *v97;
  v372 = *(v97 + 8);
  v373 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v375 = v374;
  if (v373 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v375 != v376)
  {
    v378 = sub_1CF9E8048();

    v377 = v1047;
    if ((v378 & 1) != 0 || (sub_1CF06D930(2, v1087) & 1) == 0)
    {
      goto LABEL_269;
    }

    memcpy(v1083, v1086, sizeof(v1083));
    if (sub_1CF08B99C(v1083) != 1)
    {
      memcpy(v1081, v1086, sizeof(v1081));
      v379 = v1081[96];
      *&v1082[32] = *&v1086[32];
      *&v1082[48] = *&v1086[48];
      *&v1082[64] = *&v1086[64];
      *&v1082[80] = *&v1086[80];
      *v1082 = *v1086;
      *&v1082[16] = *&v1086[16];
      memcpy(&v1082[97], &v1086[97], 0x1A7uLL);
      v1082[96] = v1081[96];
      if (sub_1CF08B99C(v1082) == 1)
      {
        *&v1080[32] = *&v1086[32];
        *&v1080[48] = *&v1086[48];
        *&v1080[64] = *&v1086[64];
        *&v1080[80] = *&v1086[80];
        *v1080 = *v1086;
        *&v1080[16] = *&v1086[16];
        v1080[96] = v379;
        memcpy(&v1080[97], &v1086[97], 0x1A7uLL);
        sub_1CEFCCBDC(v1081, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v380 = v1080;
LABEL_218:
        sub_1CEFCCC44(v380, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_264:
        v377 = v1047;
        goto LABEL_265;
      }

      *&v1080[32] = *&v1086[32];
      *&v1080[48] = *&v1086[48];
      *&v1080[64] = *&v1086[64];
      *&v1080[80] = *&v1086[80];
      *v1080 = *v1086;
      *&v1080[16] = *&v1086[16];
      v1080[96] = v379;
      memcpy(&v1080[97], &v1086[97], 0x1A7uLL);
      sub_1CEFCCBDC(v1081, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v379 != 2)
      {
        goto LABEL_264;
      }

      memcpy(v1078, v1086, sizeof(v1078));
      v413 = v1078[344];
      memcpy(v1079, v1086, 0x158uLL);
      *&v1079[473] = *&v1086[473];
      *&v1079[489] = *&v1086[489];
      *&v1079[504] = *&v1086[504];
      *&v1079[409] = *&v1086[409];
      *&v1079[425] = *&v1086[425];
      *&v1079[441] = *&v1086[441];
      *&v1079[457] = *&v1086[457];
      *&v1079[345] = *&v1086[345];
      *&v1079[361] = *&v1086[361];
      *&v1079[377] = *&v1086[377];
      *&v1079[393] = *&v1086[393];
      v1079[344] = v1078[344];
      if (sub_1CF08B99C(v1079) == 1)
      {
        memcpy(v1077, v1086, 0x158uLL);
        BYTE8(v1077[21]) = v413;
        *(&v1077[29] + 9) = *&v1086[473];
        *(&v1077[30] + 9) = *&v1086[489];
        *(&v1077[31] + 8) = *&v1086[504];
        *(&v1077[25] + 9) = *&v1086[409];
        *(&v1077[26] + 9) = *&v1086[425];
        *(&v1077[27] + 9) = *&v1086[441];
        *(&v1077[28] + 9) = *&v1086[457];
        *(&v1077[21] + 9) = *&v1086[345];
        *(&v1077[22] + 9) = *&v1086[361];
        *(&v1077[23] + 9) = *&v1086[377];
        *(&v1077[24] + 9) = *&v1086[393];
        sub_1CEFCCBDC(v1078, v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v380 = v1077;
        goto LABEL_218;
      }

      memcpy(v1077, v1086, 0x158uLL);
      BYTE8(v1077[21]) = v413;
      *(&v1077[29] + 9) = *&v1086[473];
      *(&v1077[30] + 9) = *&v1086[489];
      *(&v1077[31] + 8) = *&v1086[504];
      *(&v1077[25] + 9) = *&v1086[409];
      *(&v1077[26] + 9) = *&v1086[425];
      *(&v1077[27] + 9) = *&v1086[441];
      *(&v1077[28] + 9) = *&v1086[457];
      *(&v1077[21] + 9) = *&v1086[345];
      *(&v1077[22] + 9) = *&v1086[361];
      *(&v1077[23] + 9) = *&v1086[377];
      *(&v1077[24] + 9) = *&v1086[393];
      sub_1CEFCCBDC(v1078, v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1077, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v413 == 2)
      {
        memcpy(v1075, v1086, sizeof(v1075));
        v526 = *v1075;
        v525 = *&v1075[8];
        memcpy(&v1076[16], &v1086[16], 0x1F8uLL);
        *v1076 = *v1075;
        *&v1076[8] = *&v1075[8];
        if (sub_1CF08B99C(v1076) == 1)
        {
          *&v1074[0] = v526;
          *(&v1074[0] + 1) = v525;
          memcpy(&v1074[1], &v1086[16], 0x1F8uLL);
          sub_1CEFCCBDC(v1075, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v377 = v1047;
          LOBYTE(v102) = v1050;
          v98 = v1040;
          v97 = v1041;
          goto LABEL_269;
        }

        *&v1074[0] = v526;
        *(&v1074[0] + 1) = v525;
        memcpy(&v1074[1], &v1086[16], 0x1F8uLL);
        sub_1CEFCCBDC(v1075, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
        v741 = sub_1CF06D930(16, v525);
        v377 = v1047;
        LOBYTE(v102) = v1050;
        v98 = v1040;
        v97 = v1041;
        if ((v741 & 1) == 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        v377 = v1047;
        LOBYTE(v102) = v1050;
        v98 = v1040;
      }
    }

LABEL_265:
    if (sub_1CF902E34() || (memcpy(v1081, v1085, sizeof(v1081)), memcpy(v1082, v1085, sizeof(v1082)), sub_1CF08B99C(v1082) != 1) && (memcpy(v1596, v1081, sizeof(v1596)), sub_1CF75C2AC()))
    {
      v414 = sub_1CF436240(v372, v1028, v1029, v1021, &qword_1EC4BDF30, &qword_1CF9FB3E8);
      v415 = v372;
      sub_1CF903274(v1049, v414);
    }

    goto LABEL_269;
  }

  v377 = v1047;
LABEL_269:
  v416 = v97;
  v417 = v97;
  v418 = v1049;
  v419 = v1051;
  sub_1CF3F2C78(v98, v416, &v1087, v377, v1049, v1043, v102);
  v1051 = v419;
  if (v419)
  {

    sub_1CEFCCC44(v98, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1082, v1085, sizeof(v1082));
    sub_1CEFCCC44(v1082, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1083, v1086, sizeof(v1083));
    sub_1CEFCCC44(v1083, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v407 = v417;
    v405 = &unk_1EC4BFBD0;
    goto LABEL_526;
  }

  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v421 = v420[12];
  v422 = v420[16];
  v423 = v1039;
  v424 = &v1039[v420[20]];
  sub_1CEFCCBDC(v98, v1039, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCBDC(v417, &v423[v421], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *&v423[v422] = v1087;
  v425 = v1048;
  *v424 = v1045;
  *(v424 + 1) = v425;
  swift_storeEnumTagMultiPayload();
  v426 = *(*v418 + 120);

  v426(v423);
  sub_1CEFCCC44(v423, &qword_1EC4BFC80, &qword_1CFA053D0);
  v427 = v1042;
  v428 = sub_1CF902E34();
  v429 = v1044;
  if (!v428)
  {
    goto LABEL_278;
  }

  memcpy(v1082, v1085, sizeof(v1082));
  memcpy(v1083, v1085, sizeof(v1083));
  if (sub_1CF08B99C(v1083) != 1)
  {
    v1595[10] = *&v1085[160];
    v1595[11] = *&v1085[176];
    v1595[12] = *&v1085[192];
    v1595[6] = *&v1085[96];
    v1595[7] = *&v1085[112];
    v1595[8] = *&v1085[128];
    v1595[9] = *&v1085[144];
    v1595[2] = *&v1085[32];
    v1595[3] = *&v1085[48];
    v1595[4] = *&v1085[64];
    v1595[5] = *&v1085[80];
    v1595[0] = *v1085;
    v1595[1] = *&v1085[16];
    memcpy(v1081, v1085, sizeof(v1081));
    sub_1CEFCCBDC(v1082, v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCBDC(v1595, v1080, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    if (qword_1EDEABDE0 != -1)
    {
      goto LABEL_731;
    }

    goto LABEL_275;
  }

  memcpy(v1081, v1085, sizeof(v1081));
  sub_1CEFCCBDC(v1082, v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v430 = v1081;
  v431 = &unk_1EC4BFD80;
  v432 = &unk_1CFA0A2A0;
LABEL_277:
  sub_1CEFCCC44(v430, v431, v432);
LABEL_278:
  memcpy(v1082, v1086, sizeof(v1082));
  v438 = *v1082;
  v437 = *&v1082[8];
  memcpy(&v1083[16], &v1086[16], 0x1F8uLL);
  *v1083 = *v1082;
  *&v1083[8] = *&v1082[8];
  if (sub_1CF08B99C(v1083) == 1)
  {
    *v1081 = v438;
    *&v1081[8] = v437;
    memcpy(&v1081[16], &v1086[16], 0x1F8uLL);
    sub_1CEFCCBDC(v1082, v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  }

  else
  {
    *v1081 = v438;
    *&v1081[8] = v437;
    memcpy(&v1081[16], &v1086[16], 0x1F8uLL);
    sub_1CEFCCBDC(v1082, v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    v439 = sub_1CF06D930(4, v437);
    v440 = v1040;
    if (v439)
    {
      v441 = sub_1CF8DCAC4();
      v442 = *(v441 + 52);
      v443 = (*(v441 + 48) + 7) & 0x1FFFFFFF8;
      v444 = swift_allocObject();
      v445 = sub_1CF06DA80(v444, 1);
      *v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
      v447 = nullsub_1(v445);
      v448 = v1041;
      v449 = v1051;
      v450 = (*(*v1001 + 312))(v1041, v447, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1051 = v449;
      if (v449)
      {

        sub_1CEFCCC44(v440, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1079, v1085, sizeof(v1079));
        sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1080, v1086, sizeof(v1080));
        sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v407 = v448;
        goto LABEL_525;
      }

      v451 = v450;

      if (!sub_1CF55B584(v451))
      {

        goto LABEL_296;
      }

      v452 = sub_1CF902E8C(v451);
      for (i = 4; ; ++i)
      {
        sub_1CF903340(i - 4, v452, v451);
        if (v452)
        {
          v454 = *(v451 + 8 * i);
        }

        else
        {
          v454 = MEMORY[0x1D3869C30](i - 4, v451);
        }

        if (__OFADD__(i - 4, 1))
        {
          break;
        }

        v455 = *(v454 + 112);
        if (v455 == 2)
        {
          goto LABEL_787;
        }

        v456 = *(v454 + 96);
        v457 = *(v454 + 104);
        *(v454 + 96) = 0;
        *(v454 + 104) = 0;
        *(v454 + 112) = 4;
        sub_1CF03D7A8(v456, v457, v455);

        v458 = v1049;
        sub_1CF903274(v1049, v454);

        *v1080 = *(v454 + 144);
        *&v1080[8] = 0;
        v1080[16] = 0;
        v1080[82] = 4;
        v1586[2] = *&v1080[32];
        v1586[3] = *&v1080[48];
        v1587[0] = *&v1080[64];
        *(v1587 + 15) = *&v1080[79];
        v1586[0] = *v1080;
        v1586[1] = *&v1080[16];
        v1588 = 10;
        v459 = *v1080;
        sub_1CF903278(v458, v1586);

        sub_1CEFCCC44(v1080, &qword_1EC4BFD48, &qword_1CFA05460);
        if (i - 3 == sub_1CF55B584(v451))
        {

          v427 = v1042;
          v429 = v1044;
          goto LABEL_296;
        }
      }

      __break(1u);
LABEL_600:
      __break(1u);
      goto LABEL_601;
    }
  }

LABEL_296:
  memcpy(v1080, v1085, sizeof(v1080));
  memcpy(v1081, v1085, sizeof(v1081));
  v460 = sub_1CF08B99C(v1081);
  v461 = v1021;
  if (v460 != 1)
  {
    v462 = *&v1080[8];
    if (!sub_1CF902E40(*&v1080[8]))
    {
      v1045 = v462;
      if ((sub_1CF06D930(4, v462) & 1) == 0)
      {
        sub_1CEFCCBDC(v1080, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_302;
      }

      v463 = sub_1CF8DCAC4();
      v464 = *(v463 + 52);
      v465 = (*(v463 + 48) + 7) & 0x1FFFFFFF8;
      v466 = swift_allocObject();
      v467 = sub_1CF06DA80(v466, 1);
      *v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
      v469 = nullsub_1(v467);
      v470 = *(*v1001 + 312);
      sub_1CEFCCBDC(v1080, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v471 = v1041;
      v472 = v1051;
      v473 = v470(v1041, v469, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1051 = v472;
      if (v472)
      {

        sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1078, v1085, sizeof(v1078));
        sub_1CEFCCC44(v1078, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1079, v1086, sizeof(v1079));
        sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v407 = v471;
        goto LABEL_549;
      }

      v499 = v473;

      if (sub_1CF55B584(v499))
      {
        v500 = sub_1CF902E8C(v499);
        v501 = 4;
        for (j = 4; ; ++j)
        {
          sub_1CF903340(j - 4, v500, v499);
          if (v500)
          {
            v503 = *(v499 + 8 * j);
          }

          else
          {
            v503 = MEMORY[0x1D3869C30](j - 4, v499);
          }

          if (__OFADD__(j - 4, 1))
          {
            break;
          }

          v455 = *(v503 + 112);
          if (v455 == 2)
          {
            goto LABEL_787;
          }

          v504 = *(v503 + 96);
          v505 = *(v503 + 104);
          *(v503 + 96) = 0;
          *(v503 + 104) = 0;
          *(v503 + 112) = 4;
          sub_1CF03D7A8(v504, v505, v455);

          v506 = v1049;
          sub_1CF903274(v1049, v503);

          *v1079 = *(v503 + 144);
          *&v1079[8] = 0;
          v1079[16] = 0;
          v1079[82] = 4;
          v1583[2] = *&v1079[32];
          v1583[3] = *&v1079[48];
          v1584[0] = *&v1079[64];
          *(v1584 + 15) = *&v1079[79];
          v1583[0] = *v1079;
          v1583[1] = *&v1079[16];
          v1585 = 10;
          v507 = *v1079;
          sub_1CF903278(v506, v1583);

          sub_1CEFCCC44(v1079, &qword_1EC4BFD48, &qword_1CFA05460);
          if (j - 3 == sub_1CF55B584(v499))
          {

            v427 = v1042;
            v461 = v1021;
            v429 = v1044;
            goto LABEL_302;
          }
        }

        __break(1u);
LABEL_609:
        sub_1CEFCCC44(v501 + 128, &unk_1EC4BF260, &unk_1CFA01B60);
LABEL_610:
        if (sub_1CF06D930(8, v1039))
        {
          memcpy(v1076, v1085, sizeof(v1076));
          memcpy(v1077, v1085, 0x208uLL);
          if (sub_1CF08B99C(v1077) != 1)
          {
            memcpy(v1503, v1076, sizeof(v1503));
            if (sub_1CF75C2AC())
            {
              v772 = *v1041;
              LOBYTE(v1072[0]) = 0;
              v773 = *(v1041 + 2);
              v1073[0] = *(v1041 + 1);
              v1073[1] = v773;
              v774 = *(v1041 + 4);
              v1073[2] = *(v1041 + 3);
              v1073[3] = v774;
              *(v1074 + 6) = v1073[0];
              *(&v1074[1] + 6) = v773;
              *(&v1074[2] + 6) = v1073[2];
              *(&v1074[3] + 6) = v774;
              v1493 = v772;
              v1494 = 0;
              v1495 = 0;
              v1496 = v1074[0];
              *&v1499[14] = *(&v774 + 1);
              *v1499 = v1074[3];
              v1498 = v1074[2];
              v1497 = v1074[1];
              v1500 = 1;
              v1501 = 8;
              v1502 = 10;
              v775 = v772;
              sub_1CEFCCBDC(v1073, v1075, &unk_1EC4BF250, &unk_1CFA01B50);
              sub_1CF903278(v1049, &v1493);
              *&v1075[26] = v1074[1];
              *&v1075[42] = v1074[2];
              *&v1075[58] = v1074[3];
              *v1075 = v772;
              v1075[8] = 0;
              v1075[9] = 0;
              *&v1075[72] = *(&v1074[3] + 14);
              *&v1075[10] = v1074[0];
              *&v1075[80] = 1;
              v1075[82] = 8;
              v1075[115] = 10;
              sub_1CEFCCC44(v1075, &qword_1EC4BE730, &unk_1CFA05490);
            }
          }
        }

        sub_1CF7F5D14(8, v1077);
        v617 = v1039;
LABEL_615:
        if (sub_1CF06D930(8, v617))
        {
          v776 = v1041[4];
          if (v776)
          {
            v777 = *(v1040 + 16);
            v778 = *(v1040 + 24);
            v779 = v1041[4];

            LOBYTE(v778) = sub_1CF384708(v777, v778, v776);

            if (v778)
            {
              memcpy(v1076, v1085, sizeof(v1076));
              memcpy(v1075, v1085, sizeof(v1075));
              memcpy(v1077, v1085, 0x208uLL);
              if (sub_1CF08B99C(v1077) == 1)
              {
                memcpy(v1074, v1075, 0x208uLL);
                sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v780 = v1074;
                v781 = &unk_1EC4BFD80;
                v782 = &unk_1CFA0A2A0;
                goto LABEL_622;
              }

              v1072[10] = *&v1075[160];
              v1072[11] = *&v1075[176];
              v1072[12] = *&v1075[192];
              v1072[6] = *&v1075[96];
              v1072[7] = *&v1075[112];
              v1072[8] = *&v1075[128];
              v1072[9] = *&v1075[144];
              v1072[2] = *&v1075[32];
              v1072[3] = *&v1075[48];
              v1072[4] = *&v1075[64];
              v1072[5] = *&v1075[80];
              v1072[0] = *v1075;
              v1072[1] = *&v1075[16];
              memcpy(v1074, v1075, 0x208uLL);
              sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFCCBDC(v1072, v1073, &unk_1EC4C4E60, &unk_1CF9FCAD0);
              sub_1CEFCCC44(v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
              v1034 = *(&v1072[2] + 1);
              v783 = *&v1072[2];
              v784 = *&v1072[3];
              v1067[0] = *(&v1072[3] + 8);
              v1067[1] = *(&v1072[4] + 8);
              *&v1067[2] = *(&v1072[5] + 1);
              sub_1CEFCCBDC(&v1072[2], v1073, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              sub_1CEFCCC44(v1072, &unk_1EC4C4E60, &unk_1CF9FCAD0);
              if (v784 == 1)
              {
                *&v1073[0] = v783;
                *(&v1073[0] + 1) = v1034;
                *&v1073[1] = 1;
                *(&v1073[1] + 8) = v1067[0];
                *(&v1073[2] + 8) = v1067[1];
                *(&v1073[3] + 1) = *&v1067[2];
                v781 = &unk_1EC4BF2D0;
                v782 = &unk_1CF9FEF20;
                v780 = v1073;
LABEL_622:
                sub_1CEFCCC44(v780, v781, v782);
              }

              else
              {
                v785 = v1034;
                *&v1070[0] = v783;
                *(&v1070[0] + 1) = v1034;
                *&v1070[1] = v784;
                *(&v1070[1] + 8) = v1067[0];
                *(&v1070[2] + 8) = v1067[1];
                *(&v1070[3] + 1) = *&v1067[2];
                sub_1CEFE42D4(v783, v1034);
                sub_1CEFCCC44(v1070, &unk_1EC4BF250, &unk_1CFA01B50);

                LOBYTE(v785) = sub_1CF384708(v783, v785, v776);

                if (v785)
                {
                  v786 = *v1041;
                  LOBYTE(v1069[0]) = 0;
                  v787 = *(v1041 + 2);
                  v1068[0] = *(v1041 + 1);
                  v1068[1] = v787;
                  v788 = *(v1041 + 4);
                  v1068[2] = *(v1041 + 3);
                  v1068[3] = v788;
                  *(v1071 + 6) = v1068[0];
                  *(&v1071[1] + 6) = v787;
                  *(&v1071[2] + 6) = v1068[2];
                  *(&v1071[3] + 6) = v788;
                  v1483 = v786;
                  v1484 = 0;
                  v1485 = 0;
                  v1486 = v1071[0];
                  *&v1489[14] = *(&v788 + 1);
                  *v1489 = v1071[3];
                  v1488 = v1071[2];
                  v1487 = v1071[1];
                  v1490 = 1;
                  v1491 = 8;
                  v1492 = 10;
                  v789 = v786;
                  sub_1CEFCCBDC(v1068, v1073, &unk_1EC4BF250, &unk_1CFA01B50);
                  sub_1CF903278(v1049, &v1483);
                  *(&v1073[1] + 10) = v1071[1];
                  *(&v1073[2] + 10) = v1071[2];
                  *(&v1073[3] + 10) = v1071[3];
                  *&v1073[0] = v786;
                  WORD4(v1073[0]) = 0;
                  *(&v1073[4] + 1) = *(&v1071[3] + 14);
                  *(v1073 + 10) = v1071[0];
                  LOWORD(v1073[5]) = 1;
                  BYTE2(v1073[5]) = 8;
                  BYTE3(v1073[7]) = 10;
                  sub_1CEFCCC44(v1073, &qword_1EC4BE730, &unk_1CFA05490);
                }

                sub_1CEFE4714(v783, v1034);
              }

              sub_1CF7F5D14(8, v1075);
              v617 = v1039;
            }
          }
        }

        if (sub_1CF06D930(0x20000000000, v617))
        {
          v790 = v1041[7];
          if (v790)
          {
            v791 = *(v1040 + 40);
            v792 = *(v1040 + 48);
            v793 = v1041[7];

            LOBYTE(v792) = sub_1CF384708(v791, v792, v790);

            if (v792)
            {
              memcpy(v1076, v1085, sizeof(v1076));
              memcpy(v1075, v1085, sizeof(v1075));
              memcpy(v1077, v1085, 0x208uLL);
              if (sub_1CF08B99C(v1077) == 1)
              {
                memcpy(v1074, v1075, 0x208uLL);
                sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v794 = v1074;
                v795 = &unk_1EC4BFD80;
                v796 = &unk_1CFA0A2A0;
                goto LABEL_634;
              }

              v1072[10] = *&v1075[160];
              v1072[11] = *&v1075[176];
              v1072[12] = *&v1075[192];
              v1072[6] = *&v1075[96];
              v1072[7] = *&v1075[112];
              v1072[8] = *&v1075[128];
              v1072[9] = *&v1075[144];
              v1072[2] = *&v1075[32];
              v1072[3] = *&v1075[48];
              v1072[4] = *&v1075[64];
              v1072[5] = *&v1075[80];
              v1072[0] = *v1075;
              v1072[1] = *&v1075[16];
              memcpy(v1074, v1075, 0x208uLL);
              sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFCCBDC(v1072, v1073, &unk_1EC4C4E60, &unk_1CF9FCAD0);
              sub_1CEFCCC44(v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
              v1069[0] = v1072[2];
              v1031 = *(&v1072[3] + 1);
              v797 = *&v1072[3];
              v1034 = *&v1072[4];
              v1067[0] = *(&v1072[4] + 8);
              *&v1067[1] = *(&v1072[5] + 1);
              sub_1CEFCCBDC(&v1072[2], v1073, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              sub_1CEFCCC44(v1072, &unk_1EC4C4E60, &unk_1CF9FCAD0);
              if (v797 == 1)
              {
                v1073[0] = v1069[0];
                *&v1073[1] = 1;
                *(&v1073[1] + 1) = v1031;
                *&v1073[2] = v1034;
                *(&v1073[2] + 8) = v1067[0];
                *(&v1073[3] + 1) = *&v1067[1];
                v795 = &unk_1EC4BF2D0;
                v796 = &unk_1CF9FEF20;
                v794 = v1073;
LABEL_634:
                sub_1CEFCCC44(v794, v795, v796);
              }

              else
              {
                v1070[0] = v1069[0];
                v798 = v1031;
                *&v1070[1] = v797;
                *(&v1070[1] + 1) = v1031;
                v799 = v1034;
                *&v1070[2] = v1034;
                *(&v1070[2] + 8) = v1067[0];
                *(&v1070[3] + 1) = *&v1067[1];
                sub_1CEFE42D4(v1031, v1034);
                sub_1CEFCCC44(v1070, &unk_1EC4BF250, &unk_1CFA01B50);

                LOBYTE(v799) = sub_1CF384708(v798, v799, v790);

                if (v799)
                {
                  v800 = *v1041;
                  LOBYTE(v1054) = 0;
                  v801 = *(v1041 + 2);
                  v1068[0] = *(v1041 + 1);
                  v1068[1] = v801;
                  v802 = *(v1041 + 4);
                  v1068[2] = *(v1041 + 3);
                  v1068[3] = v802;
                  *(v1071 + 6) = v1068[0];
                  *(&v1071[1] + 6) = v801;
                  *(&v1071[2] + 6) = v1068[2];
                  *(&v1071[3] + 6) = v802;
                  v1473 = v800;
                  v1474 = 0;
                  v1475 = 0;
                  v1476 = v1071[0];
                  *&v1479[14] = *(&v802 + 1);
                  *v1479 = v1071[3];
                  v1478 = v1071[2];
                  v1477 = v1071[1];
                  v1480 = 256;
                  v1481 = 8;
                  v1482 = 10;
                  v803 = v800;
                  sub_1CEFCCBDC(v1068, v1073, &unk_1EC4BF250, &unk_1CFA01B50);
                  sub_1CF903278(v1049, &v1473);
                  *(&v1073[1] + 10) = v1071[1];
                  *(&v1073[2] + 10) = v1071[2];
                  *(&v1073[3] + 10) = v1071[3];
                  *&v1073[0] = v800;
                  WORD4(v1073[0]) = 0;
                  *(&v1073[4] + 1) = *(&v1071[3] + 14);
                  *(v1073 + 10) = v1071[0];
                  LOWORD(v1073[5]) = 256;
                  BYTE2(v1073[5]) = 8;
                  BYTE3(v1073[7]) = 10;
                  sub_1CEFCCC44(v1073, &qword_1EC4BE730, &unk_1CFA05490);
                }

                sub_1CEFE4714(v1031, v1034);
              }

              sub_1CF7F5D14(0x20000000000, v1075);
              v617 = v1039;
            }
          }
        }

        sub_1CF946F40(0x160000000010000, v617, v1077);
        if (sub_1CF9526EC(*&v1077[0], 0x20000000000))
        {
          memcpy(v1076, v1085, sizeof(v1076));
          memcpy(v1077, v1085, 0x208uLL);
          if (sub_1CF08B99C(v1077) != 1)
          {
            v1437 = *v1076;
            v1441 = *&v1076[56];
            v1442 = *&v1076[72];
            v1443 = *&v1076[88];
            v1439 = *&v1076[24];
            v1440 = *&v1076[40];
            v1456 = *&v1076[265];
            v1457 = *&v1076[281];
            v1459 = *&v1076[313];
            *v1460 = *&v1076[329];
            v1458 = *&v1076[297];
            v1449 = *&v1076[153];
            v1448 = *&v1076[137];
            v1447 = *&v1076[121];
            v1453 = *&v1076[217];
            v1452 = *&v1076[201];
            v1451 = *&v1076[185];
            v1450 = *&v1076[169];
            v1455 = *&v1076[249];
            v1454 = *&v1076[233];
            v804 = *&v1076[360];
            v1470 = *&v1076[465];
            v1471 = *&v1076[481];
            *v1472 = *&v1076[497];
            v805 = v1076[368];
            v1466 = *&v1076[401];
            v1467 = *&v1076[417];
            v1468 = *&v1076[433];
            v1469 = *&v1076[449];
            v1464 = *&v1076[369];
            v1465 = *&v1076[385];
            *&v1472[15] = *&v1076[512];
            v806 = *&v1076[16];
            v1438 = *&v1076[16];
            v807 = *&v1076[104];
            v1444 = *&v1076[104];
            v1445 = *&v1076[112];
            v808 = *&v1076[112];
            v809 = v1076[120];
            v1446 = v1076[120];
            *&v1460[15] = *&v1076[344];
            v1461 = *&v1076[352];
            v1034 = *&v1076[352];
            v1462 = *&v1076[360];
            v1463 = v1076[368];
            if (sub_1CF75C2AC() && sub_1CF946F54(0x160000000010000, v806) && !sub_1CF95EF34(v807, v808, v809) && !sub_1CF95EF34(v1034, v804, v805))
            {
              v810 = *v1041;
              LOBYTE(v1072[0]) = 0;
              v811 = *(v1041 + 2);
              v1073[0] = *(v1041 + 1);
              v1073[1] = v811;
              v812 = *(v1041 + 4);
              v1073[2] = *(v1041 + 3);
              v1073[3] = v812;
              *(v1074 + 6) = v1073[0];
              *(&v1074[1] + 6) = v811;
              *(&v1074[2] + 6) = v1073[2];
              *(&v1074[3] + 6) = v812;
              v1427 = v810;
              v1428 = 0;
              v1429 = 0;
              v1430 = v1074[0];
              *&v1433[14] = *(&v812 + 1);
              *v1433 = v1074[3];
              v1432 = v1074[2];
              v1431 = v1074[1];
              v1434 = 256;
              v1435 = 8;
              v1436 = 10;
              sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v813 = v810;
              sub_1CEFCCBDC(v1073, v1075, &unk_1EC4BF250, &unk_1CFA01B50);
              sub_1CF903278(v1049, &v1427);
              *&v1075[26] = v1074[1];
              *&v1075[42] = v1074[2];
              *&v1075[58] = v1074[3];
              *v1075 = v810;
              v1075[8] = 0;
              v1075[9] = 0;
              *&v1075[72] = *(&v1074[3] + 14);
              *&v1075[10] = v1074[0];
              *&v1075[80] = 256;
              v1075[82] = 8;
              v1075[115] = 10;
              sub_1CEFCCC44(v1075, &qword_1EC4BE730, &unk_1CFA05490);
              sub_1CF7F5D14(0x20000000000, v1074);
              sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            }
          }

          LODWORD(v617) = v1039;
        }

        if (sub_1CF41ABB8(v1042, v1041, v617, &unk_1EC4BFBD0, &unk_1CF9FCBC0))
        {
          sub_1CF7F5D14(0x10000, v1075);
          memcpy(v1076, v1085, sizeof(v1076));
          memcpy(v1077, v1085, 0x208uLL);
          if (sub_1CF08B99C(v1077) != 1)
          {
            memcpy(v1426, v1076, sizeof(v1426));
            if (sub_1CF75C2AC())
            {
              memcpy(v1074, v1085, 0x208uLL);
              v1070[10] = *&v1085[160];
              v1070[11] = *&v1085[176];
              v1070[12] = *&v1085[192];
              v1070[13] = *&v1085[208];
              v1070[6] = *&v1085[96];
              v1070[7] = *&v1085[112];
              v1070[8] = *&v1085[128];
              v1070[9] = *&v1085[144];
              v1070[2] = *&v1085[32];
              v1070[3] = *&v1085[48];
              v1070[4] = *&v1085[64];
              v1070[5] = *&v1085[80];
              v1070[0] = *v1085;
              v1070[1] = *&v1085[16];
              v814 = *&v1074[14];
              memcpy(v1071, &v1085[232], 0x120uLL);
              *&v1075[160] = *&v1085[160];
              *&v1075[176] = *&v1085[176];
              *&v1075[192] = *&v1085[192];
              *&v1075[208] = *&v1085[208];
              *&v1075[96] = *&v1085[96];
              *&v1075[112] = *&v1085[112];
              *&v1075[128] = *&v1085[128];
              *&v1075[144] = *&v1085[144];
              *&v1075[32] = *&v1085[32];
              *&v1075[48] = *&v1085[48];
              *&v1075[64] = *&v1085[64];
              *&v1075[80] = *&v1085[80];
              *v1075 = *v1085;
              *&v1075[16] = *&v1085[16];
              memcpy(&v1075[232], &v1085[232], 0x120uLL);
              *&v1075[224] = *&v1074[14];
              if (sub_1CF08B99C(v1075) == 1)
              {
                v1073[10] = v1070[10];
                v1073[11] = v1070[11];
                v1073[12] = v1070[12];
                v1073[13] = v1070[13];
                v1073[6] = v1070[6];
                v1073[7] = v1070[7];
                v1073[8] = v1070[8];
                v1073[9] = v1070[9];
                v1073[2] = v1070[2];
                v1073[3] = v1070[3];
                v1073[4] = v1070[4];
                v1073[5] = v1070[5];
                *&v1073[14] = v814;
                v1073[0] = v1070[0];
                v1073[1] = v1070[1];
                memcpy(&v1073[14] + 8, v1071, 0x120uLL);
                sub_1CEFCCBDC(v1074, v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v815 = v1073;
                v816 = &unk_1EC4BFD80;
                v817 = &unk_1CFA0A2A0;
                goto LABEL_654;
              }

              v1073[10] = v1070[10];
              v1073[11] = v1070[11];
              v1073[12] = v1070[12];
              v1073[13] = v1070[13];
              v1073[6] = v1070[6];
              v1073[7] = v1070[7];
              v1073[8] = v1070[8];
              v1073[9] = v1070[9];
              v1073[2] = v1070[2];
              v1073[3] = v1070[3];
              v1073[4] = v1070[4];
              v1073[5] = v1070[5];
              v1073[0] = v1070[0];
              v1073[1] = v1070[1];
              *&v1073[14] = v814;
              memcpy(&v1073[14] + 8, v1071, 0x120uLL);
              sub_1CEFCCBDC(v1074, v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFCCC44(v1073, &unk_1EC4BFC90, &unk_1CFA053E0);
              if (sub_1CF902E40(v814))
              {
                *&v1072[0] = *v1041;
                WORD4(v1072[0]) = 0;
                *&v1072[1] = 0x10000;
                *(&v1072[1] + 1) = v1028;
                *&v1072[2] = v1029;
                BYTE2(v1072[7]) = 0;
                v1423[4] = v1072[4];
                v1423[5] = v1072[5];
                *v1424 = v1072[6];
                *&v1424[15] = *(&v1072[6] + 15);
                v1423[2] = v1072[2];
                v1423[3] = v1072[3];
                v1423[0] = v1072[0];
                v1423[1] = v1072[1];
                v1425 = 9;
                v818 = *&v1072[0];
                sub_1CF903278(v1049, v1423);
                v816 = &unk_1EC4BFD60;
                v817 = &qword_1CFA05468;
                v815 = v1072;
LABEL_654:
                sub_1CEFCCC44(v815, v816, v817);
              }
            }
          }
        }

        v819 = v1053;
        if (sub_1CF06D930(0x2000000, v1053))
        {
          sub_1CF948150(v1077, 0x100000D000000);
          v819 = v1053;
        }

        *&v1077[0] = v819;
        Fields.removingNonPropagatedFields.getter(v1076);
        v820 = *v1076;
        v1053 = *v1076;
        sub_1CF946F40(0x100000000000, *v1076, v1077);
        v821 = sub_1CF902E40(*&v1077[0]);
        v822 = v1041;
        if (!v821 || (sub_1CF06D930(0x100000000000, v820) & 1) != 0 && *(v822 + *(v1033 + 48) + v1027[15]) != 1 || (sub_1CF06D930(0x800000, v1039) & 1) != 0)
        {
          v823 = v822 + *(v1033 + 48);
          v824 = v1027[16];
          v825 = v823[v824];
          *&v1072[0] = *v822;
          WORD4(v1072[0]) = 0;
          LOBYTE(v1072[1]) = v825;
          v1420[2] = v1072[2];
          v1420[3] = v1072[3];
          v1421[0] = v1072[4];
          v1420[0] = v1072[0];
          BYTE2(v1072[5]) = 5;
          *(v1421 + 15) = *(&v1072[4] + 15);
          v1420[1] = v1072[1];
          v1422 = 10;
          v826 = *&v1072[0];
          sub_1CF903278(v1049, v1420);
          sub_1CEFCCC44(v1072, &qword_1EC4BFD48, &qword_1CFA05460);
          memcpy(v1076, v1085, sizeof(v1076));
          v828 = *v1076;
          v827 = *&v1076[8];
          memcpy(v1073, &v1085[16], 0x1F8uLL);
          memcpy(&v1077[1], &v1085[16], 0x1F8uLL);
          v1077[0] = *v1076;
          if (sub_1CF08B99C(v1077) == 1)
          {
            *v1075 = v828;
            *&v1075[8] = v827;
            memcpy(&v1075[16], v1073, 0x1F8uLL);
            sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v829 = 0;
          }

          else
          {
            *v1075 = v828;
            *&v1075[8] = v827;
            memcpy(&v1075[16], v1073, 0x1F8uLL);
            sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
            v829 = sub_1CF06D930(16, v827);
          }

          v830 = v823[v824];
          sub_1CF7E6950(v1075);
          if (sub_1CF06DA5C(v1075[0], 1) && (v829 & 1) != 0 && (v830 & 1) == 0)
          {
            v831 = *v1041;
            v832 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v834 = v833;
            if (v832 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v834 == v835)
            {
LABEL_669:
            }

            else
            {
              v836 = sub_1CF9E8048();

              if ((v836 & 1) == 0)
              {
                v851 = *v1041;
                v852 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v854 = v853;
                if (v852 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v854 == v855)
                {
                  goto LABEL_669;
                }

                v857 = sub_1CF9E8048();

                if ((v857 & 1) == 0)
                {
                  sub_1CF948150(v1075, 0x100000000000);
                }
              }
            }
          }

          v822 = v1041;
        }

        if ((sub_1CF06D930(0x10000000000000, v1087) & 1) != 0 && (*(v822 + *(v1033 + 48) + v1027[18]) & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
          v837 = swift_allocObject();
          v838 = sub_1CF06DA80(v837, 3);
          *v839 = xmmword_1CFA04EE0;
          *(v839 + 16) = 1;
          v840 = nullsub_1(v838);
          sub_1CEFF5464(v840, v1076);
          sub_1CF948150(v1077, *v1076);
        }

        if (v1046 == 5)
        {
          v841 = *v1041;
          LOBYTE(v1074[0]) = 0;
          v842 = *(v1041 + 2);
          *v1075 = *(v1041 + 1);
          *&v1075[16] = v842;
          v843 = *(v1041 + 4);
          *&v1075[32] = *(v1041 + 3);
          *&v1075[48] = v843;
          *&v1076[6] = *v1075;
          *&v1076[22] = v842;
          *&v1076[38] = *&v1075[32];
          *&v1076[54] = v843;
          v1410 = v841;
          v1411 = 0;
          v1412 = 0;
          v1413 = *v1076;
          *&v1416[14] = *(&v843 + 1);
          *v1416 = *&v1076[48];
          v1415 = *&v1076[32];
          v1414 = *&v1076[16];
          v1417 = 1;
          v1418 = 8;
          v1419 = 10;
          v844 = v841;
          sub_1CEFCCBDC(v1075, v1077, &unk_1EC4BF250, &unk_1CFA01B50);
          sub_1CF903278(v1049, &v1410);
          *(&v1077[1] + 10) = *&v1076[16];
          *(&v1077[2] + 10) = *&v1076[32];
          *(&v1077[3] + 10) = *&v1076[48];
          *&v1077[0] = v841;
          WORD4(v1077[0]) = 0;
          *(&v1077[4] + 1) = *&v1076[62];
          *(v1077 + 10) = *v1076;
          LOWORD(v1077[5]) = 1;
          BYTE2(v1077[5]) = 8;
          BYTE3(v1077[7]) = 10;
          sub_1CEFCCC44(v1077, &qword_1EC4BE730, &unk_1CFA05490);
          sub_1CF7F5D14(8, v1076);
        }

        if (sub_1CF902E34())
        {
          sub_1CF7E6950(v1077);
          if (FileItemKind.canConflict.getter() && (sub_1CF06D930(16, v1087) & 1) != 0 && (sub_1CF7E69A4() & 1) == 0)
          {
            memcpy(v1076, v1085, sizeof(v1076));
            memcpy(v1077, v1085, 0x208uLL);
            if (sub_1CF08B99C(v1077) != 1 && v1076[216] != 255)
            {
              v845 = *v1076;
              v846 = *&v1076[152];
              v847 = v1076[344];
              *&v1071[0] = *&v1076[208];
              BYTE8(v1071[0]) = v1076[216];
              v848 = *(**(v1047 + 40) + 264);
              memcpy(v1075, v1076, sizeof(v1075));
              sub_1CEFCCBDC(v1075, v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
              v849 = v1051;
              v848(v1072, v1071, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1051 = v849;
              if (v849)
              {

                sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                memcpy(v1073, v1085, 0x208uLL);
                sub_1CEFCCC44(v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                memcpy(v1074, v1086, 0x208uLL);
                v850 = v1074;
                goto LABEL_685;
              }

              v1073[12] = v1072[12];
              v1073[13] = v1072[13];
              v1073[14] = v1072[14];
              v1073[8] = v1072[8];
              v1073[9] = v1072[9];
              v1073[10] = v1072[10];
              v1073[11] = v1072[11];
              v1073[4] = v1072[4];
              v1073[5] = v1072[5];
              v1073[6] = v1072[6];
              v1073[7] = v1072[7];
              v1073[0] = v1072[0];
              v1073[1] = v1072[1];
              v1073[2] = v1072[2];
              v1073[3] = v1072[3];
              v1074[12] = v1072[12];
              v1074[13] = v1072[13];
              v1074[14] = v1072[14];
              v1074[8] = v1072[8];
              v1074[9] = v1072[9];
              v1074[10] = v1072[10];
              v1074[11] = v1072[11];
              v1074[4] = v1072[4];
              v1074[5] = v1072[5];
              v1074[6] = v1072[6];
              v1074[7] = v1072[7];
              v1074[0] = v1072[0];
              v1074[1] = v1072[1];
              *&v1073[15] = *&v1072[15];
              *&v1074[15] = *&v1072[15];
              v1074[2] = v1072[2];
              v1074[3] = v1072[3];
              if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1074) != 1)
              {
                v860 = *&v1074[14];

                sub_1CEFCCC44(v1073, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                if (v860)
                {
                  v861 = sub_1CF6823A4(v860);

                  if (!v861 || v845 && (v846 & 0xF000000000000000) != 0xB000000000000000 && !v847)
                  {
                    v863 = *(v1041 + *(v1033 + 48) + v1027[21]);
                    if (v863 != 2 && v863 != 3)
                    {
                      v864 = *&v1071[0];
                      v865 = BYTE8(v1071[0]);
                      v866 = sub_1CF93DAB0(v862);
                      v868 = sub_1CF43659C(v864, v865, v866, v867, 1);
                      sub_1CF903270(v1049, v868);
                    }
                  }
                }
              }

              sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            }
          }
        }

        v869 = *v1041;
        v1075[0] = 0;
        v870 = v1053;
        *&v1077[0] = v1053;
        v871 = v869;
        Fields.removingNonPropagatedFields.getter(v1076);
        v872 = *v1076;
        v1402 = v869;
        v1403 = 0;
        v873 = v1075[0];
        v1404 = v1075[0];
        v874 = v1028;
        v875 = v1029;
        v1405 = *v1076;
        v1406 = v1028;
        v1407 = v1029;
        v1408 = 0;
        v1409 = 10;
        sub_1CF903278(v1049, &v1402);
        *&v1067[0] = v869;
        BYTE8(v1067[0]) = 0;
        BYTE9(v1067[0]) = v873;
        *&v1067[1] = v872;
        *(&v1067[1] + 1) = v874;
        *&v1067[2] = v875;
        BYTE2(v1067[5]) = 0;
        BYTE3(v1067[7]) = 10;
        sub_1CEFCCC44(v1067, &qword_1EC4BE730, &unk_1CFA05490);
        sub_1CF7E6950(v1077);
        if (!FileItemKind.hasContent.getter())
        {
          goto LABEL_709;
        }

        if ((sub_1CF06D930(8, v870) & 1) == 0)
        {
          goto LABEL_709;
        }

        *&v1069[0] = *v1041;
        WORD4(v1069[0]) = 0;
        memset(&v1069[1], 0, 24);
        *(&v1069[2] + 1) = 0xB000000000000000;
        memset(&v1069[3], 0, 34);
        BYTE2(v1069[5]) = 13;
        v1399[1] = 0u;
        *(v1400 + 15) = *(&v1069[4] + 15);
        v1399[3] = 0u;
        v1400[0] = 0u;
        v1399[2] = v1069[2];
        v1399[0] = v1069[0];
        v1401 = 10;
        v876 = *&v1069[0];
        sub_1CF903278(v1049, v1399);
        sub_1CEFCCC44(v1069, &qword_1EC4BFD48, &qword_1CFA05460);
        if (sub_1CF902E34())
        {
          goto LABEL_709;
        }

        sub_1CF7E6950(v1077);
        if ((sub_1CF682438(1) & 1) == 0)
        {
          goto LABEL_709;
        }

        memcpy(v1076, v1085, sizeof(v1076));
        memcpy(v1077, v1085, 0x208uLL);
        if (sub_1CF08B99C(v1077) == 1)
        {
          goto LABEL_709;
        }

        v1395 = *&v1076[32];
        v1396 = *&v1076[48];
        v1397 = *&v1076[64];
        v1398 = *&v1076[80];
        v1393 = *v1076;
        v1394 = *&v1076[16];
        v877 = v1076[96];
        v1387 = *&v1076[97];
        v1388 = *&v1076[113];
        v1389 = *&v1076[129];
        *(v1392 + 15) = *&v1076[192];
        v1391 = *&v1076[161];
        v1392[0] = *&v1076[177];
        v1390 = *&v1076[145];
        v1034 = *&v1076[208];
        LODWORD(v1039) = v1076[216];
        *(v1386 + 15) = *&v1076[232];
        v1386[0] = *&v1076[217];
        v878 = v1076[240];
        v1376 = *&v1076[273];
        v1377 = *&v1076[289];
        v1374 = *&v1076[241];
        v1375 = *&v1076[257];
        v1381 = *&v1076[353];
        v1382 = *&v1076[369];
        v1379 = *&v1076[321];
        v1380 = *&v1076[337];
        v1378 = *&v1076[305];
        *(v1385 + 15) = *&v1076[432];
        v1384 = *&v1076[401];
        v1385[0] = *&v1076[417];
        v1383 = *&v1076[385];
        v1038 = *&v1076[448];
        v1370 = *&v1076[456];
        v1371 = *&v1076[472];
        v1373 = *&v1076[504];
        v1372 = *&v1076[488];
        if ((v1076[96] | 4) == 4 || !v1076[240] || (v1038 & 0xC) != 0 || v1039 == 255)
        {
          goto LABEL_709;
        }

        v1031 = *&v1076[512];
        *&v1054 = v1034;
        BYTE8(v1054) = v1039;
        v887 = *(**(v1047 + 40) + 240);
        sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v888 = v1051;
        v887(&v1054, 1, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1051 = v888;
        if (v888)
        {

LABEL_725:
          sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1074, v1085, 0x208uLL);
          sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1075, v1086, sizeof(v1075));
          v850 = v1075;
LABEL_685:
          sub_1CEFCCC44(v850, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v407 = v1041;
LABEL_549:
          v405 = &unk_1EC4BFBD0;
          v406 = &unk_1CF9FCBC0;
LABEL_527:
          sub_1CEFCCC44(v407, v405, v406);
          return v147 & 1;
        }

        if ((*(v1011 + 48))(v1006, 1, v1015) == 1)
        {
          sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v899 = &qword_1EC4C1B40;
          v900 = &unk_1CF9FCB70;
          v901 = v1006;
          goto LABEL_765;
        }

        v902 = v1006;
        v903 = v1002;
        sub_1CEFDA214(&v1006[*(v1015 + 48)], v1002, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v902, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFD9F8C(v903, v1005, type metadata accessor for ItemMetadata);
        if (!sub_1CF677CD0())
        {
          goto LABEL_764;
        }

        v904 = v1040 + *(v1033 + 52);
        v905 = *(v904 + 208);
        v906 = *(v904 + 176);
        v1072[12] = *(v904 + 192);
        v1072[13] = v905;
        v907 = *(v904 + 208);
        v1072[14] = *(v904 + 224);
        v908 = *(v904 + 144);
        v909 = *(v904 + 112);
        v1072[8] = *(v904 + 128);
        v1072[9] = v908;
        v910 = *(v904 + 144);
        v911 = *(v904 + 176);
        v1072[10] = *(v904 + 160);
        v1072[11] = v911;
        v912 = *(v904 + 80);
        v913 = *(v904 + 48);
        v1072[4] = *(v904 + 64);
        v1072[5] = v912;
        v914 = *(v904 + 80);
        v915 = *(v904 + 112);
        v1072[6] = *(v904 + 96);
        v1072[7] = v915;
        v916 = *(v904 + 16);
        v1072[0] = *v904;
        v1072[1] = v916;
        v917 = *(v904 + 48);
        v919 = *v904;
        v918 = *(v904 + 16);
        v1072[2] = *(v904 + 32);
        v1072[3] = v917;
        v1073[12] = v1072[12];
        v1073[13] = v907;
        v1073[14] = *(v904 + 224);
        v1073[8] = v1072[8];
        v1073[9] = v910;
        v1073[10] = v1072[10];
        v1073[11] = v906;
        v1073[4] = v1072[4];
        v1073[5] = v914;
        v1073[6] = v1072[6];
        v1073[7] = v909;
        v1073[0] = v919;
        v1073[1] = v918;
        *&v1072[15] = *(v904 + 240);
        *&v1073[15] = *(v904 + 240);
        v1073[2] = v1072[2];
        v1073[3] = v913;
        enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1073);
        LODWORD(v1026) = enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1;
        if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
        {
          v1030 = 0;
        }

        else
        {
          v1071[12] = v1073[12];
          v1071[13] = v1073[13];
          v1071[14] = v1073[14];
          *&v1071[15] = *&v1073[15];
          v1071[8] = v1073[8];
          v1071[9] = v1073[9];
          v1071[10] = v1073[10];
          v1071[11] = v1073[11];
          v1071[4] = v1073[4];
          v1071[5] = v1073[5];
          v1071[6] = v1073[6];
          v1071[7] = v1073[7];
          v1071[0] = v1073[0];
          v1071[1] = v1073[1];
          v1071[2] = v1073[2];
          v1071[3] = v1073[3];
          v1030 = *v1047 + 600;
          v921 = *v1030;
          v1074[12] = v1072[12];
          v1074[13] = v1072[13];
          v1074[14] = v1072[14];
          *&v1074[15] = *&v1072[15];
          v1074[8] = v1072[8];
          v1074[9] = v1072[9];
          v1074[10] = v1072[10];
          v1074[11] = v1072[11];
          v1074[4] = v1072[4];
          v1074[5] = v1072[5];
          v1074[6] = v1072[6];
          v1074[7] = v1072[7];
          v1074[0] = v1072[0];
          v1074[1] = v1072[1];
          v1074[2] = v1072[2];
          v1074[3] = v1072[3];
          v922 = sub_1CEFF7474(v1074, v1075);
          LODWORD(v1030) = v921(v922);
          sub_1CF7E6950(v1075);
          v923 = sub_1CF06DA5C(v1075[0], 1);
          v924 = sub_1CF06D930(1, v1031);
          v1030 = sub_1CF68004C(v1030, v923, v924 & 1);
          *&v1075[192] = v1071[12];
          *&v1075[208] = v1071[13];
          *&v1075[224] = v1071[14];
          *&v1075[240] = *&v1071[15];
          *&v1075[128] = v1071[8];
          *&v1075[144] = v1071[9];
          *&v1075[160] = v1071[10];
          *&v1075[176] = v1071[11];
          *&v1075[64] = v1071[4];
          *&v1075[80] = v1071[5];
          *&v1075[96] = v1071[6];
          *&v1075[112] = v1071[7];
          *v1075 = v1071[0];
          *&v1075[16] = v1071[1];
          *&v1075[32] = v1071[2];
          *&v1075[48] = v1071[3];
          sub_1CF07574C(v1075);
        }

        if (sub_1CF06D930(2, v1087))
        {
          v925 = *(v904 + 208);
          v1071[12] = *(v904 + 192);
          v1071[13] = v925;
          v1071[14] = *(v904 + 224);
          *&v1071[15] = *(v904 + 240);
          v926 = *(v904 + 144);
          v1071[8] = *(v904 + 128);
          v1071[9] = v926;
          v927 = *(v904 + 176);
          v1071[10] = *(v904 + 160);
          v1071[11] = v927;
          v928 = *(v904 + 80);
          v1071[4] = *(v904 + 64);
          v1071[5] = v928;
          v929 = *(v904 + 112);
          v1071[6] = *(v904 + 96);
          v1071[7] = v929;
          v930 = *(v904 + 16);
          v1071[0] = *v904;
          v1071[1] = v930;
          v931 = *(v904 + 48);
          v1071[2] = *(v904 + 32);
          v1071[3] = v931;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1071) != 1 && !*&v1071[13])
          {
            v965 = v1051;
            (*(*v1042 + 264))(v1070, v1032, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1051 = v965;
            if (v965)
            {

              sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
              goto LABEL_725;
            }

            v1074[12] = v1070[12];
            v1074[13] = v1070[13];
            v1074[14] = v1070[14];
            v1074[8] = v1070[8];
            v1074[9] = v1070[9];
            v1074[10] = v1070[10];
            v1074[11] = v1070[11];
            v1074[4] = v1070[4];
            v1074[5] = v1070[5];
            v1074[6] = v1070[6];
            v1074[7] = v1070[7];
            v1074[0] = v1070[0];
            v1074[1] = v1070[1];
            v1074[2] = v1070[2];
            v1074[3] = v1070[3];
            *&v1075[192] = v1070[12];
            *&v1075[208] = v1070[13];
            *&v1075[224] = v1070[14];
            *&v1075[128] = v1070[8];
            *&v1075[144] = v1070[9];
            *&v1075[160] = v1070[10];
            *&v1075[176] = v1070[11];
            *&v1075[64] = v1070[4];
            *&v1075[80] = v1070[5];
            *&v1075[96] = v1070[6];
            *&v1075[112] = v1070[7];
            *v1075 = v1070[0];
            *&v1075[16] = v1070[1];
            *&v1074[15] = *&v1070[15];
            *&v1075[240] = *&v1070[15];
            *&v1075[32] = v1070[2];
            *&v1075[48] = v1070[3];
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1075) != 1)
            {
              v1068[12] = *&v1075[192];
              v1068[13] = *&v1075[208];
              v1068[14] = *&v1075[224];
              *&v1068[15] = *&v1075[240];
              v1068[8] = *&v1075[128];
              v1068[9] = *&v1075[144];
              v1068[10] = *&v1075[160];
              v1068[11] = *&v1075[176];
              v1068[4] = *&v1075[64];
              v1068[5] = *&v1075[80];
              v1068[6] = *&v1075[96];
              v1068[7] = *&v1075[112];
              v1068[0] = *v1075;
              v1068[1] = *&v1075[16];
              v1068[2] = *&v1075[32];
              v1068[3] = *&v1075[48];
              v995 = (*(*v1047 + 600))();
              sub_1CF7E6950(&v1060);
              v996 = sub_1CF06DA5C(v1060, 1);
              v997 = sub_1CF06D930(1, v1031);
              v1030 = sub_1CF68004C(v995, v996, v997 & 1);
              sub_1CEFCCC44(v1074, &qword_1EC4BECF0, &unk_1CF9FEEB0);
              LODWORD(v1026) = 0;
            }
          }
        }

        v932 = (v1044)();
        if (sub_1CF06D930(4096, v932))
        {
          if (v1026)
          {
            goto LABEL_759;
          }

          if (v1030 != 2)
          {
            if (v1030 == 1003 || v1030 == 502)
            {
              v933 = (v1044)();
              if (sub_1CF06D930(0x20000, v933))
              {
                sub_1CF19BFD0();
                v934 = swift_allocObject();
                v935 = v1396;
                *(v934 + 48) = v1395;
                *(v934 + 64) = v935;
                v936 = v1398;
                *(v934 + 80) = v1397;
                *(v934 + 96) = v936;
                v937 = v1394;
                *(v934 + 16) = v1393;
                *(v934 + 32) = v937;
                *(v934 + 112) = v877;
                v938 = v1388;
                *(v934 + 113) = v1387;
                *(v934 + 129) = v938;
                v939 = v1390;
                *(v934 + 145) = v1389;
                v940 = v1391;
                v941 = v1392[0];
                *(v934 + 208) = *(v1392 + 15);
                *(v934 + 193) = v941;
                *(v934 + 177) = v940;
                *(v934 + 161) = v939;
                *(v934 + 224) = v1034;
                *(v934 + 232) = v1039;
                *(v934 + 233) = v1386[0];
                *(v934 + 248) = *(v1386 + 15);
                *(v934 + 256) = v878;
                *(v934 + 448) = *(v1385 + 15);
                v942 = v934;
                v943 = v1385[0];
                *(v934 + 417) = v1384;
                *(v934 + 433) = v943;
                v944 = v1383;
                *(v934 + 385) = v1382;
                *(v934 + 401) = v944;
                v945 = v1381;
                *(v934 + 353) = v1380;
                *(v934 + 369) = v945;
                v946 = v1379;
                *(v934 + 321) = v1378;
                *(v934 + 337) = v946;
                v947 = v1377;
                *(v934 + 289) = v1376;
                *(v934 + 305) = v947;
                v948 = v1375;
                *(v934 + 257) = v1374;
                *(v934 + 273) = v948;
                *(v934 + 464) = v1038;
                v949 = v1371;
                *(v934 + 472) = v1370;
                *(v934 + 488) = v949;
                *(v934 + 504) = v1372;
                *(v934 + 520) = v1373;
                *(v934 + 528) = v1031;
                memcpy(v1075, v1076, sizeof(v1075));
                sub_1CEFCCBDC(v1075, v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
                v580 = sub_1CF9E6108();
                v950 = sub_1CF9E7288();
                v951 = swift_allocObject();
                *(v951 + 16) = 32;
                v952 = swift_allocObject();
                *(v952 + 16) = 8;
                v953 = swift_allocObject();
                *(v953 + 16) = sub_1CF4858F0;
                *(v953 + 24) = v942;
                v954 = swift_allocObject();
                *(v954 + 16) = sub_1CF485960;
                *(v954 + 24) = v953;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                v955 = swift_allocObject();
                sub_1CF06DA80(v955, 3);
                *v956 = sub_1CF485A70;
                v956[1] = v951;
                v956[2] = sub_1CF485A70;
                v956[3] = v952;
                v956[4] = sub_1CF485884;
                v956[5] = v954;

                if (!os_log_type_enabled(v580, v950))
                {
                  goto LABEL_779;
                }

                v957 = sub_1CF1B5D40();
                v958 = swift_slowAlloc();
                *&v1070[0] = 0;
                *&v1068[0] = v958;
                v959 = v957;
                *v957 = 258;
                *&v1071[0] = v957 + 2;
                *&v1074[0] = sub_1CF485A70;
                *(&v1074[0] + 1) = v951;
                v960 = v1051;
                sub_1CF1B5D64(v1074, v1071, v1070, v1068);
                v127 = v960;
                if (!v960)
                {

                  *&v1074[0] = sub_1CF485A70;
                  *(&v1074[0] + 1) = v952;
                  sub_1CF1B5D64(v1074, v1071, v1070, v1068);

                  *&v1074[0] = sub_1CF485884;
                  *(&v1074[0] + 1) = v954;
                  sub_1CF1B5D64(v1074, v1071, v1070, v1068);
                  v1051 = 0;

                  _os_log_impl(&dword_1CEFC7000, v580, v950, "marking item for speculative evictOnREmoteUpdate %s", v959, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v958);
                  MEMORY[0x1D386CDC0](v958, -1, -1);
                  sub_1CF1B5D48();
                }

LABEL_785:

                __break(1u);
LABEL_786:
                sub_1CF9E7B68();
                __break(1u);
LABEL_787:
                sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v455, 162);
              }

              sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v994 = v1027[21];
              if (sub_1CF06EE7C(*(v1005 + v994), 3))
              {
                sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
                goto LABEL_767;
              }

              v999 = *(v1005 + v994);
              sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
              if (sub_1CF06EE7C(v999, 2))
              {
                goto LABEL_767;
              }

LABEL_709:
              v879 = *(v1047 + 40);
              if (!sub_1CF902E34())
              {
                goto LABEL_719;
              }

              sub_1CF7E6950(v1077);
              if (!FileItemKind.canConflict.getter())
              {
                goto LABEL_719;
              }

              v880 = (*(*v1047 + 160))();
              if (!sub_1CF0BA664(v880 & 1, 0) || (sub_1CF06D930(0x4000000000000, v1087) & 1) == 0)
              {
                goto LABEL_719;
              }

              memcpy(v1076, v1085, sizeof(v1076));
              v1071[10] = *&v1085[160];
              v1071[11] = *&v1085[176];
              v1071[12] = *&v1085[192];
              v1071[6] = *&v1085[96];
              v1071[7] = *&v1085[112];
              v1071[8] = *&v1085[128];
              v1071[9] = *&v1085[144];
              v1071[2] = *&v1085[32];
              v1071[3] = *&v1085[48];
              v1071[4] = *&v1085[64];
              v1071[5] = *&v1085[80];
              v1071[0] = *v1085;
              v1071[1] = *&v1085[16];
              v881 = *&v1076[208];
              v882 = v1076[216];
              memcpy(v1072, &v1085[217], 0x12FuLL);
              v1077[10] = *&v1085[160];
              v1077[11] = *&v1085[176];
              v1077[12] = *&v1085[192];
              v1077[6] = *&v1085[96];
              v1077[7] = *&v1085[112];
              v1077[8] = *&v1085[128];
              v1077[9] = *&v1085[144];
              v1077[2] = *&v1085[32];
              v1077[3] = *&v1085[48];
              v1077[4] = *&v1085[64];
              v1077[5] = *&v1085[80];
              v1077[0] = *v1085;
              v1077[1] = *&v1085[16];
              memcpy(&v1077[13] + 9, &v1085[217], 0x12FuLL);
              *&v1077[13] = *&v1076[208];
              BYTE8(v1077[13]) = v1076[216];
              if (sub_1CF08B99C(v1077) == 1)
              {
                *&v1075[160] = v1071[10];
                *&v1075[176] = v1071[11];
                *&v1075[192] = v1071[12];
                *&v1075[96] = v1071[6];
                *&v1075[112] = v1071[7];
                *&v1075[128] = v1071[8];
                *&v1075[144] = v1071[9];
                *&v1075[32] = v1071[2];
                *&v1075[48] = v1071[3];
                *&v1075[64] = v1071[4];
                *&v1075[80] = v1071[5];
                *v1075 = v1071[0];
                *&v1075[16] = v1071[1];
                *&v1075[208] = v881;
                v1075[216] = v882;
                memcpy(&v1075[217], v1072, 0x12FuLL);
                sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v883 = v1075;
                v884 = &unk_1EC4BFD80;
                v885 = &unk_1CFA0A2A0;
                goto LABEL_715;
              }

              *&v1075[160] = v1071[10];
              *&v1075[176] = v1071[11];
              *&v1075[192] = v1071[12];
              *&v1075[96] = v1071[6];
              *&v1075[112] = v1071[7];
              *&v1075[128] = v1071[8];
              *&v1075[144] = v1071[9];
              *&v1075[32] = v1071[2];
              *&v1075[48] = v1071[3];
              *&v1075[64] = v1071[4];
              *&v1075[80] = v1071[5];
              *v1075 = v1071[0];
              *&v1075[16] = v1071[1];
              *&v1075[208] = v881;
              v1075[216] = v882;
              memcpy(&v1075[217], v1072, 0x12FuLL);
              sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
              if (v882 == 255)
              {
                goto LABEL_719;
              }

              *&v1070[0] = v881;
              BYTE8(v1070[0]) = v882;
              v886 = v1051;
              (*(*v879 + 240))(v1070, 1, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1051 = v886;
              if (!v886)
              {
                if ((*(v1011 + 48))(v1009, 1, v1015) == 1)
                {
                  v884 = &qword_1EC4C1B40;
                  v885 = &unk_1CF9FCB70;
                  v883 = v1009;
                }

                else
                {
                  sub_1CEFE55D0(v1009, v1007, &unk_1EC4BE360, &qword_1CF9FE650);
                  if ((sub_1CF7E6990() & 1) == 0)
                  {
                    v893 = v1007[*(v1015 + 48) + v1027[21]];
                    if (v893 != 2 && v893 != 3)
                    {
                      v894 = *v1041;
                      v895 = sub_1CF93DAB0(v894);
                      v897 = sub_1CF436488(v894, v895, v896, 0x8000000);
                      sub_1CF903274(v1049, v897);
                    }
                  }

                  v884 = &unk_1EC4BE360;
                  v885 = &qword_1CF9FE650;
                  v883 = v1007;
                }

                goto LABEL_715;
              }

              sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              memcpy(v1073, v1085, 0x208uLL);
              sub_1CEFCCC44(v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              memcpy(v1074, v1086, 0x208uLL);
              sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v407 = v1041;
LABEL_525:
              v405 = &unk_1EC4BFBD0;
LABEL_526:
              v406 = &unk_1CF9FCBC0;
              goto LABEL_527;
            }

LABEL_759:
            v962 = (v1044)();
            if (sub_1CF06D930(0x20000, v962))
            {
              v963 = v1026;
              if (v1030 != 1)
              {
                v963 = 1;
              }

              if ((v963 & 1) == 0 && v878 != 4)
              {
                sub_1CF19BFD0();
                v966 = swift_allocObject();
                v967 = v1396;
                *(v966 + 48) = v1395;
                *(v966 + 64) = v967;
                v968 = v1398;
                *(v966 + 80) = v1397;
                *(v966 + 96) = v968;
                v969 = v1394;
                *(v966 + 16) = v1393;
                *(v966 + 32) = v969;
                *(v966 + 112) = v877;
                v970 = v1388;
                *(v966 + 113) = v1387;
                *(v966 + 129) = v970;
                v971 = v1390;
                *(v966 + 145) = v1389;
                v972 = v1391;
                v973 = v1392[0];
                *(v966 + 208) = *(v1392 + 15);
                *(v966 + 193) = v973;
                *(v966 + 177) = v972;
                *(v966 + 161) = v971;
                *(v966 + 224) = v1034;
                *(v966 + 232) = v1039;
                *(v966 + 233) = v1386[0];
                *(v966 + 248) = *(v1386 + 15);
                *(v966 + 256) = v878;
                *(v966 + 448) = *(v1385 + 15);
                v974 = v966;
                v975 = v1385[0];
                *(v966 + 417) = v1384;
                *(v966 + 433) = v975;
                v976 = v1383;
                *(v966 + 385) = v1382;
                *(v966 + 401) = v976;
                v977 = v1381;
                *(v966 + 353) = v1380;
                *(v966 + 369) = v977;
                v978 = v1379;
                *(v966 + 321) = v1378;
                *(v966 + 337) = v978;
                v979 = v1377;
                *(v966 + 289) = v1376;
                *(v966 + 305) = v979;
                v980 = v1375;
                *(v966 + 257) = v1374;
                *(v966 + 273) = v980;
                *(v966 + 464) = v1038;
                v981 = v1371;
                *(v966 + 472) = v1370;
                *(v966 + 488) = v981;
                *(v966 + 504) = v1372;
                *(v966 + 520) = v1373;
                *(v966 + 528) = v1031;
                memcpy(v1075, v1076, sizeof(v1075));
                sub_1CEFCCBDC(v1075, v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
                v982 = sub_1CF9E6108();
                v983 = sub_1CF9E7288();
                v984 = swift_allocObject();
                *(v984 + 16) = 32;
                v985 = swift_allocObject();
                *(v985 + 16) = 8;
                v986 = swift_allocObject();
                *(v986 + 16) = sub_1CF4858F0;
                *(v986 + 24) = v974;
                v987 = swift_allocObject();
                *(v987 + 16) = sub_1CF485960;
                *(v987 + 24) = v986;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                v988 = swift_allocObject();
                sub_1CF06DA80(v988, 3);
                *v989 = sub_1CF485A70;
                v989[1] = v984;
                v989[2] = sub_1CF485A70;
                v989[3] = v985;
                v989[4] = sub_1CF485884;
                v989[5] = v987;

                if (!os_log_type_enabled(v982, v983))
                {

                  (*(v1037 + 8))(v1004, v1036);
                  goto LABEL_780;
                }

                v990 = sub_1CF1B5D40();
                v991 = swift_slowAlloc();
                *&v1070[0] = 0;
                *&v1068[0] = v991;
                v992 = v990;
                *v990 = 258;
                *&v1071[0] = v990 + 2;
                *&v1074[0] = sub_1CF485A70;
                *(&v1074[0] + 1) = v984;
                v993 = v1051;
                sub_1CF1B5D64(v1074, v1071, v1070, v1068);
                v127 = v993;
                if (!v993)
                {

                  *&v1074[0] = sub_1CF485A70;
                  *(&v1074[0] + 1) = v985;
                  sub_1CF1B5D64(v1074, v1071, v1070, v1068);

                  *&v1074[0] = sub_1CF485884;
                  *(&v1074[0] + 1) = v987;
                  sub_1CF1B5D64(v1074, v1071, v1070, v1068);
                  v1051 = 0;

                  _os_log_impl(&dword_1CEFC7000, v982, v983, "marking item for evictOnREmoteUpdate %s", v992, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v991);
                  MEMORY[0x1D386CDC0](v991, -1, -1);
                  sub_1CF1B5D48();
                }

                goto LABEL_785;
              }
            }

LABEL_764:
            sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
            v899 = &unk_1EC4BFD80;
            v900 = &unk_1CFA0A2A0;
            v901 = v1076;
LABEL_765:
            sub_1CEFCCC44(v901, v899, v900);
            goto LABEL_709;
          }
        }

        else
        {
          v961 = v1026;
          if (v1030 != 2)
          {
            v961 = 1;
          }

          if (v961)
          {
            goto LABEL_759;
          }
        }

        sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_767:
        v964 = 1;
        goto LABEL_781;
      }

      v461 = v1021;
LABEL_302:
      if (sub_1CF902E34())
      {
        *v1078 = *v1041;
        *&v1078[8] = 0;
        v1078[16] = 0;
        v1078[82] = 3;
        v1580[2] = *&v1078[32];
        v1580[3] = *&v1078[48];
        v1581[0] = *&v1078[64];
        *(v1581 + 15) = *&v1078[79];
        v1580[0] = *v1078;
        v1580[1] = *&v1078[16];
        v1582 = 10;
        v97 = v1041;
        v474 = *v1078;
        sub_1CF903278(v1049, v1580);
        v475 = sub_1CEFCCC44(v1078, &qword_1EC4BFD48, &qword_1CFA05460);
        v476 = (v429)(v475);
        if (sub_1CF06D930(0x4000, v476))
        {
          *v1079 = *v97;
          *&v1079[8] = 0;
          v1079[16] = 0;
          v1577[2] = *&v1079[32];
          v1577[3] = *&v1079[48];
          v1578[0] = *&v1079[64];
          v1577[1] = *&v1079[16];
          v1079[82] = 14;
          *(v1578 + 15) = *&v1079[79];
          v1577[0] = *v1079;
          v1579 = 10;
          v477 = *v1079;
          sub_1CF903278(v1049, v1577);
          sub_1CEFCCC44(v1079, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        if (sub_1CF06D930(8, v1045))
        {
          v478 = *v97;
          v1076[0] = 0;
          sub_1CF7E6950(v1079);
          v479 = v478;
          sub_1CF94706C(v1079, v1077);
          v480 = *&v1077[0];
          v1555 = v478;
          v1556 = 0;
          v481 = v1076[0];
          v1557 = v1076[0];
          v1558 = *&v1077[0];
          v483 = v1028;
          v482 = v1029;
          v1559 = v1028;
          v1560 = v1029;
          v1561 = 0;
          v1562 = 10;
          sub_1CF903278(v1049, &v1555);
          *v1079 = v478;
          v1079[8] = 0;
          v1079[9] = v481;
          *&v1079[16] = v480;
          *&v1079[24] = v483;
          *&v1079[32] = v482;
          v1079[82] = 0;
        }

        else
        {
          v508 = *v97;
          LOBYTE(v1073[0]) = 0;
          v509 = v508;
          v510 = sub_1CF656C5C(0);
          sub_1CEFF5464(v510, v1075);
          v1571 = v1077[0];
          *v1572 = v1077[1];
          *&v1572[10] = *(&v1077[1] + 10);
          v1574 = *v1076;
          v511 = *v1075;
          v1563 = v508;
          v1564 = 0;
          v512 = v1073[0];
          v1565 = v1073[0];
          v1566 = v1074[0];
          v1567 = WORD2(v1074[0]);
          v514 = v1028;
          v513 = v1029;
          v1568 = *v1075;
          v1569 = v1028;
          v1570 = v1029;
          v1573 = 0;
          v1575 = *&v1076[16];
          v1576 = 10;
          sub_1CF903278(v1049, &v1563);
          *v1079 = v508;
          v1079[8] = 0;
          v1079[9] = v512;
          *&v1079[10] = v1074[0];
          *&v1079[14] = WORD2(v1074[0]);
          *&v1079[16] = v511;
          *&v1079[24] = v514;
          *&v1079[32] = v513;
          v97 = v1041;
          *&v1079[40] = v1077[0];
          *&v1079[56] = v1077[1];
          *&v1079[66] = *(&v1077[1] + 10);
          v1079[82] = 0;
          *&v1079[99] = *&v1076[16];
          *&v1079[83] = *v1076;
        }

        v1079[115] = 10;
        sub_1CEFCCC44(v1079, &qword_1EC4BE730, &unk_1CFA05490);
        sub_1CF7E6950(v1079);
        v515 = sub_1CF06DA5C(v1079[0], 1);
        v427 = v1042;
        v461 = v1021;
        if (v515 && (sub_1CF7E69A4() & 1) == 0 && *(v97 + *(v1033 + 48) + v1027[16]) != 1)
        {
          v516 = *v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
          v517 = swift_allocObject();
          v518 = sub_1CF06DA80(v517, 2);
          *v519 = v461;
          v519[1] = 0x80000000;
          v520 = nullsub_1(v518);
          v521 = sub_1CEFF8C8C(v520);
          v522 = v516;

          v523 = v521;
          v461 = v1021;
          v524 = sub_1CF3F7A48(v522, v1028, v1029, v523);
          sub_1CF903274(v1049, v524);
        }

        sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_309;
      }

      sub_1CEFCCC44(v1080, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  v97 = v1041;
LABEL_309:
  memcpy(v1078, v1085, sizeof(v1078));
  memcpy(v1079, v1085, sizeof(v1079));
  if (sub_1CF08B99C(v1079) != 1 && (sub_1CF06EE7C(v1078[96], 2) & 1) != 0 && !v1046 && (sub_1CF06D930(0x2000, v461) & 1) != 0)
  {
    sub_1CF7E6950(v1077);
    if (sub_1CF06DA5C(v1077[0], 1))
    {
      v496 = *v97;
      v497 = sub_1CF3F7A48(*v97, v1028, v1029, v461);
      sub_1CEFCCBDC(v1078, v1077, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v498 = v496;
      sub_1CF903274(v1049, v497);
      v461 = v1021;

      sub_1CEFCCC44(v1078, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  if (sub_1CF06D930(0x4000000, v461))
  {
    sub_1CF7E6950(v1077);
    if (sub_1CF06DA5C(v1077[0], 1))
    {
      v484 = *v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
      v485 = swift_allocObject();
      v486 = sub_1CF06DA80(v485, 2);
      *v487 = v461;
      v487[1] = 0x1000000000;
      v488 = nullsub_1(v486);
      v489 = sub_1CEFF8C8C(v488);
      v490 = v484;

      v491 = v489;
      v461 = v1021;
      v492 = sub_1CF3F7A48(v490, v1028, v1029, v491);
      sub_1CF903274(v1049, v492);
    }
  }

  v493 = sub_1CF06D930(0x1000000000, v461);
  LODWORD(v1045) = sub_1CF06D930(0x2000000000, v461);
  if (sub_1CF902E34())
  {
    sub_1CF7E6950(v1077);
    if (sub_1CF06DA5C(v1077[0], 1) && (sub_1CF06D930(0x100000000000, v1087) & 1) != 0)
    {
      v494 = v97 + *(v1033 + 48);
      if ((*(v494 + v1027[16]) & 1) == 0)
      {
        if (*(v494 + v1027[15]))
        {
          v495 = *&v1085[8];
          memcpy(&v1077[1], &v1085[16], 0x1F8uLL);
          v1077[0] = *v1085;
          if (sub_1CF08B99C(v1077) == 1)
          {
            v493 = 1;
          }

          else
          {
            v493 |= sub_1CF06D930(16, v495) ^ 1;
          }
        }

        else
        {
          v493 = 1;
        }
      }
    }
  }

  if (!sub_1CF902E34() || (sub_1CF06D930(2, v1087) & 1) == 0)
  {
    v531 = v1045;
    if (v493)
    {
LABEL_352:
      v532 = 1;
      goto LABEL_383;
    }

LABEL_381:
    if (v1045)
    {
      goto LABEL_382;
    }

    goto LABEL_395;
  }

  v527 = v1040;
  v528 = v1051;
  v529 = (*(*v427 + 552))(v1040 + 8, v1032, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v1051 = v528;
  if (v528)
  {

    v530 = v527;
LABEL_524:
    sub_1CEFCCC44(v530, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1076, v1085, sizeof(v1076));
    sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1077, v1086, 0x208uLL);
    sub_1CEFCCC44(v1077, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v407 = v97;
    goto LABEL_525;
  }

  v533 = v529;
  if (sub_1CF6823A4(v529))
  {

    v534 = v493 ^ 1;
    if (((v493 ^ 1) & 1) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_372;
  }

  if (!sub_1CF55B5A0(v533))
  {
LABEL_368:

    goto LABEL_369;
  }

  v535 = 0;
  v1038 = v1011 + 48;
  v1039 = v533;
  v536 = v1034;
  while (1)
  {
    v537 = v1051;
    sub_1CF90333C(v535, 1, v533);
    v538 = *&v533[8 * v535 + 32];
    *&v1073[0] = v538;
    v539 = v535 + 1;
    if (__OFADD__(v535, 1))
    {
      __break(1u);
LABEL_731:
      swift_once();
LABEL_275:
      v433 = sub_1CF75C2CC(qword_1EDEABDE8 | 0x10, 0);
      sub_1CEFCCC44(v1595, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      if (!v433)
      {
        v434 = *v1041;
        v1079[0] = 0;
        v435 = (*(*v1047 + 272))(v434);
        v1589 = v434;
        v1590 = 0;
        v436 = v1079[0];
        v1591 = v1079[0];
        v1592 = v435;
        v1593 = 9;
        v1594 = 10;
        sub_1CF903278(v1049, &v1589);
        *v1080 = v434;
        v1080[8] = 0;
        v1080[9] = v436;
        *&v1080[16] = v435;
        v1080[82] = 9;
        v1080[115] = 10;
        v427 = v1042;
        v431 = &qword_1EC4BE730;
        v432 = &unk_1CFA05490;
        v430 = v1080;
        goto LABEL_277;
      }

      goto LABEL_278;
    }

    v540 = *(*v536 + 160);
    v541 = v538;
    v540(v1074, v1073, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v429 = v537;
    if (v537)
    {

      sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      memcpy(v1076, v1085, sizeof(v1076));
      sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      memcpy(v1077, v1086, 0x208uLL);
      v559 = v1077;
LABEL_487:
      sub_1CEFCCC44(v559, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v162 = v1041;
      goto LABEL_374;
    }

    v461 = v1021;
    v542 = v1015;
    if (BYTE8(v1074[0]) == 255)
    {
      v1051 = 0;
      v427 = v1042;
      goto LABEL_367;
    }

    *v1075 = *&v1074[0];
    v1075[8] = BYTE8(v1074[0]);
    v543 = v1013;
    (*(**(v1047 + 40) + 240))(v1075, 1, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v427 = v1042;
    v1051 = 0;
    v675 = (*v1038)(v543, 1, v542) == 1;
    v544 = v1027;
    v429 = v542;
    v97 = v1041;
    v545 = v543;
    if (!v675)
    {
      break;
    }

    sub_1CEFCCC44(v543, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v536 = v1034;
    v533 = v1039;
LABEL_359:
    ++v535;
    if (v539 == sub_1CF55B5A0(v533))
    {
      goto LABEL_368;
    }
  }

  v546 = v1012;
  sub_1CEFE55D0(v545, v1012, &unk_1EC4BE360, &qword_1CF9FE650);
  v547 = *(v546 + *(v429 + 12) + v544[15]);
  sub_1CEFCCC44(v546, &unk_1EC4BE360, &qword_1CF9FE650);
  if ((v547 & 1) == 0)
  {
    v536 = v1034;
    v533 = v1039;
LABEL_367:
    v97 = v1041;
    goto LABEL_359;
  }

  LODWORD(v1045) = 1;
  v97 = v1041;
LABEL_369:
  LOBYTE(v493) = 1;
  v534 = 0;
LABEL_370:
  if (v1045)
  {
    v531 = 1;
    LODWORD(v1045) = 1;
    v532 = 1;
    goto LABEL_383;
  }

LABEL_372:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
  v548 = swift_allocObject();
  v549 = sub_1CF06DA80(v548, 2);
  *v550 = xmmword_1CFA04ED0;
  v551 = nullsub_1(v549);
  v552 = sub_1CEFF8C8C(v551);

  v553 = v1040;
  v554 = v1051;
  v555 = (*(*v427 + 464))(v1040 + 8, v552, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v554)
  {

    sub_1CEFCCC44(v553, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1076, v1085, sizeof(v1076));
    sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1077, v1086, 0x208uLL);
    sub_1CEFCCC44(v1077, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v162 = v97;
    goto LABEL_374;
  }

  v556 = v555;
  v557 = v493 | sub_1CF06D930(0x1000000000, v555);
  v558 = sub_1CF06D930(0x2000000000, v556);
  v1051 = 0;
  if ((v558 & 1) == 0)
  {
    v531 = v534 & v1045;
    v97 = v1041;
    v461 = v1021;
    if (v557)
    {
      goto LABEL_352;
    }

    goto LABEL_381;
  }

  if (v557)
  {
    v531 = 1;
    LODWORD(v1045) = 1;
    v532 = 1;
    v97 = v1041;
    v461 = v1021;
    goto LABEL_383;
  }

  v97 = v1041;
  v461 = v1021;
LABEL_382:
  v532 = 0;
  v531 = 1;
  LODWORD(v1045) = 1;
LABEL_383:
  if (sub_1CF902E34())
  {
    sub_1CF7E6950(v1077);
    if (sub_1CF06DA5C(v1077[0], 1))
    {
      v560 = sub_1CF656C68(0);
      v561 = sub_1CEFF8C8C(v560);

      *&v1077[0] = v561;
      sub_1CF611880(0x1000000000, v532);
      sub_1CF611880(0x2000000000, v1045 & 1);
      v562 = *v97;
      v563 = sub_1CF93DAB0(v562);
      v564 = *&v1077[0];
      v566 = sub_1CF3F7A48(v562, v563, v565, *&v1077[0]);
      v567 = v1049;
      sub_1CF903274(v1049, v566);

      v568 = *v97;
      v569 = sub_1CF93DAB0(v568);
      v571 = sub_1CF436240(v568, v569, v570, v564, &qword_1EC4BDF70, &qword_1CF9FB468);
      sub_1CF903274(v567, v571);

      goto LABEL_394;
    }

    memcpy(v1076, v1085, sizeof(v1076));
    memcpy(v1077, v1085, 0x208uLL);
    if (sub_1CF08B99C(v1077) == 1)
    {
      goto LABEL_394;
    }

    v572 = *&v1076[8];
    v1550 = *&v1076[176];
    v1551 = *&v1076[192];
    v1552 = *&v1076[208];
    v1546 = *&v1076[112];
    v1547 = *&v1076[128];
    v1548 = *&v1076[144];
    v1549 = *&v1076[160];
    v1542 = *&v1076[48];
    v1543 = *&v1076[64];
    v1544 = *&v1076[80];
    v1545 = *&v1076[96];
    v1540 = *&v1076[16];
    v1541 = *&v1076[32];
    v573 = *&v1076[224];
    memcpy(v1554, &v1076[232], sizeof(v1554));
    v1538 = *v1076;
    v1539 = *&v1076[8];
    v1553 = *&v1076[224];
    if (!sub_1CF75C2AC())
    {
LABEL_394:
      v461 = v1021;
    }

    else
    {
      if (sub_1CF902E40(v572) && sub_1CF902E40(v573))
      {
        if (v532 & 1) != 0 && (sub_1CF7E6950(v1075), (sub_1CF682438(1)) && *(v1041 + *(v1033 + 48) + v1027[21]))
        {
          v574 = *v1041;
          LOBYTE(v1074[0]) = 0;
          sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v575 = sub_1CF93DAB0(v574);
          v577 = v576;
          v1531 = v574;
          v1532 = 0;
          v578 = v1074[0];
          v1533 = v1074[0];
          v1534 = 0x10000;
          v1535 = v575;
          v1536 = v576;
          v1537 = 2304;
          sub_1CF903278(v1049, &v1531);
          *v1075 = v574;
          v1075[8] = 0;
          v1075[9] = v578;
          *&v1075[16] = 0x10000;
          *&v1075[24] = v575;
          *&v1075[32] = v577;
          *&v1075[114] = 2304;
          sub_1CEFCCC44(v1075, &qword_1EC4BE730, &unk_1CFA05490);
        }

        else
        {
          sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }

        if ((v531 & 1) != 0 && (*(v1041 + *(v1033 + 48) + v1027[20]) & 1) == 0)
        {
          sub_1CF7E6950(v1075);
          if (FileItemKind.hasContent.getter())
          {
            v97 = v1041;
            v736 = *v1041;
            LOBYTE(v1074[0]) = 0;
            v737 = sub_1CF93DAB0(v736);
            v739 = v738;
            v1523 = v736;
            v1524 = 0;
            v740 = v1074[0];
            v1525 = v1074[0];
            v1526 = 8;
            v1527 = v737;
            v1528 = v738;
            v1529 = 0;
            v1530 = 10;
            sub_1CF903278(v1049, &v1523);
            *v1075 = v736;
            v1075[8] = 0;
            v1075[9] = v740;
            *&v1075[16] = 8;
            *&v1075[24] = v737;
            *&v1075[32] = v739;
            v1075[82] = 0;
            v1075[115] = 10;
            sub_1CEFCCC44(v1075, &qword_1EC4BE730, &unk_1CFA05490);
            sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            goto LABEL_394;
          }
        }

        sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      v461 = v1021;
      v97 = v1041;
    }
  }

LABEL_395:
  LODWORD(v1045) = sub_1CF06D930(1, v461);
  if ((v1045 & 1) != 0 && !sub_1CF902E34())
  {
    memcpy(v1076, v1085, sizeof(v1076));
    memcpy(v1077, v1085, 0x208uLL);
    if (sub_1CF08B99C(v1077) != 1)
    {
      memcpy(v1522, v1076, sizeof(v1522));
      if (!sub_1CF75C2AC())
      {
        *v1075 = *v97;
        *&v1075[8] = 0;
        *&v1075[16] = 517;
        *&v1075[24] = v1028;
        *&v1075[32] = v1029;
        v1075[114] = 12;
        v1519[4] = *&v1075[64];
        v1519[5] = *&v1075[80];
        *v1520 = *&v1075[96];
        *&v1520[15] = *&v1075[111];
        v1519[2] = *&v1075[32];
        v1519[3] = *&v1075[48];
        v1519[0] = *v1075;
        v1519[1] = *&v1075[16];
        v1521 = 9;
        v579 = *v1075;
        sub_1CF903278(v1049, v1519);
        sub_1CEFCCC44(v1075, &unk_1EC4BFD60, &qword_1CFA05468);
      }
    }
  }

  v580 = v1072;
  if (sub_1CF06D930(8, v1087))
  {
    memcpy(v1076, v1085, sizeof(v1076));
    v1065 = *v1085;
    v1066 = *&v1085[16];
    v581 = v1076[24];
    memcpy(v1068, &v1085[25], 0x1EFuLL);
    v1077[0] = *v1085;
    *&v1077[1] = *&v1085[16];
    memcpy(&v1077[1] + 9, &v1085[25], 0x1EFuLL);
    BYTE8(v1077[1]) = v1076[24];
    if (sub_1CF08B99C(v1077) == 1)
    {
      *v1075 = v1065;
      *&v1075[16] = v1066;
      v1075[24] = v581;
      memcpy(&v1075[25], v1068, 0x1EFuLL);
      sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_404;
    }

    *v1075 = v1065;
    *&v1075[16] = v1066;
    v1075[24] = v581;
    memcpy(&v1075[25], v1068, 0x1EFuLL);
    sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
    v582 = v1044;
    if (v581 == 5)
    {
LABEL_404:
      v580 = v1072;
      goto LABEL_405;
    }

    v580 = v1072;
    if (sub_1CF959514(v581))
    {
      *&v1060 = *v97;
      WORD4(v1060) = 0;
      LOBYTE(v1061) = v581;
      BYTE1(v1061) = 5;
      *(&v1061 + 1) = v1028;
      *&v1062 = v1029;
      v1516[3] = v1063;
      v1517[0] = *v1064;
      v1516[2] = v1062;
      v1516[1] = v1061;
      v1064[18] = 12;
      *(v1517 + 15) = *&v1064[15];
      v1516[0] = v1060;
      v1518 = 10;
      v619 = v1060;
      sub_1CF903278(v1049, v1516);
      v620 = sub_1CEFCCC44(&v1060, &qword_1EC4BFD48, &qword_1CFA05460);
      v621 = v582(v620);
      if ((sub_1CF06D930(0x40000, v621) & 1) == 0)
      {
        sub_1CF7E6950(v1074);
        if (sub_1CF06DA5C(v1074[0], 0))
        {
          memcpy(v1073, v1085, 0x208uLL);
          memcpy(v1070, v1085, 0x200uLL);
          v626 = *&v1073[32];
          memcpy(v1074, v1085, 0x200uLL);
          *&v1074[32] = *&v1073[32];
          if (sub_1CF08B99C(v1074) == 1)
          {
            memcpy(v1072, v1070, 0x200uLL);
            v580 = v1072;
            *&v1072[32] = v626;
            sub_1CEFCCBDC(v1073, v1071, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v97 = v1041;
            goto LABEL_405;
          }

          memcpy(v1072, v1070, 0x200uLL);
          *&v1072[32] = v626;
          sub_1CEFCCBDC(v1073, v1071, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1072, &unk_1EC4BFC90, &unk_1CFA053E0);
          if ((sub_1CF06D930(1, v626) & 1) == 0)
          {
            v742 = v1040 + *(v1033 + 52);
            v743 = *(v742 + 208);
            v744 = *(v742 + 176);
            v1067[12] = *(v742 + 192);
            v1067[13] = v743;
            v745 = *(v742 + 208);
            v1067[14] = *(v742 + 224);
            v746 = *(v742 + 144);
            v747 = *(v742 + 112);
            v1067[8] = *(v742 + 128);
            v1067[9] = v746;
            v748 = *(v742 + 144);
            v749 = *(v742 + 176);
            v1067[10] = *(v742 + 160);
            v1067[11] = v749;
            v750 = *(v742 + 80);
            v751 = *(v742 + 48);
            v1067[4] = *(v742 + 64);
            v1067[5] = v750;
            v752 = *(v742 + 80);
            v753 = *(v742 + 112);
            v1067[6] = *(v742 + 96);
            v1067[7] = v753;
            v754 = *(v742 + 16);
            v1067[0] = *v742;
            v1067[1] = v754;
            v755 = *(v742 + 48);
            v757 = *v742;
            v756 = *(v742 + 16);
            v1067[2] = *(v742 + 32);
            v1067[3] = v755;
            v1071[12] = v1067[12];
            v1071[13] = v745;
            v1071[14] = *(v742 + 224);
            v1071[8] = v1067[8];
            v1071[9] = v748;
            v1071[10] = v1067[10];
            v1071[11] = v744;
            v1071[4] = v1067[4];
            v1071[5] = v752;
            v1071[6] = v1067[6];
            v1071[7] = v747;
            v1071[0] = v757;
            v1071[1] = v756;
            *&v1067[15] = *(v742 + 240);
            *&v1071[15] = *(v742 + 240);
            v1071[2] = v1067[2];
            v1071[3] = v751;
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1071) != 1)
            {
              v1058[8] = v1071[12];
              v1058[9] = v1071[13];
              v1058[10] = v1071[14];
              v1059 = *&v1071[15];
              v1058[4] = v1071[8];
              v1058[5] = v1071[9];
              v1058[6] = v1071[10];
              v1058[7] = v1071[11];
              v1058[0] = v1071[4];
              v1058[1] = v1071[5];
              v1058[2] = v1071[6];
              v1058[3] = v1071[7];
              v1054 = v1071[0];
              v1055 = v1071[1];
              v1056 = v1071[2];
              v1057 = v1071[3];
              v758 = *(*v1047 + 600);
              v1069[12] = v1067[12];
              v1069[13] = v1067[13];
              v1069[14] = v1067[14];
              *&v1069[15] = *&v1067[15];
              v1069[8] = v1067[8];
              v1069[9] = v1067[9];
              v1069[10] = v1067[10];
              v1069[11] = v1067[11];
              v1069[4] = v1067[4];
              v1069[5] = v1067[5];
              v1069[6] = v1067[6];
              v1069[7] = v1067[7];
              v1069[0] = v1067[0];
              v1069[1] = v1067[1];
              v1069[2] = v1067[2];
              v1069[3] = v1067[3];
              v759 = sub_1CEFF7474(v1069, &v1053);
              v760 = v758(v759);
              v761 = sub_1CF68004C(v760, 0, 0);
              if (sub_1CF9526EC(v761, 501))
              {
                v97 = v1041;
                v762 = *v1041;
                v763 = *v1041;
                v764 = sub_1CF656C80(0);
                v765 = sub_1CEFF8C8C(v764);

                v1052 = 0;
                v1504 = v762;
                v1505 = 0;
                v1506 = v1053;
                v1507 = WORD2(v1053);
                v1508 = 1;
                v1509 = v765;
                v1512 = v1056;
                v1513 = v1057;
                *v1514 = v1058[0];
                *&v1514[15] = *(v1058 + 15);
                v1510 = v1054;
                v1511 = v1055;
                v1515 = 14;
                sub_1CF903278(v1049, &v1504);
                sub_1CEFCCC44(v1067, &qword_1EC4BECF0, &unk_1CF9FEEB0);

                goto LABEL_404;
              }

              sub_1CEFCCC44(v1067, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            }
          }
        }

        v97 = v1041;
        goto LABEL_404;
      }
    }
  }

LABEL_405:
  if (v1046)
  {
    v583 = v1087;
  }

  else
  {
    sub_1CF7E6950(v1077);
    v584 = sub_1CF06DA5C(v1077[0], 0);
    v583 = v1087;
    if (v584)
    {
      v585 = v1087;
      sub_1CF06D930(8, v1087);
      v583 = v585;
    }
  }

  if (!sub_1CF902E40(v583))
  {
    goto LABEL_414;
  }

  memcpy(v1076, v1085, sizeof(v1076));
  v586 = *v1076;
  v587 = *&v1076[8];
  memcpy(v1073, &v1085[16], 0x1F8uLL);
  memcpy(&v1077[1], &v1085[16], 0x1F8uLL);
  v1077[0] = *v1076;
  if (sub_1CF08B99C(v1077) == 1)
  {
    *v1075 = v586;
    *&v1075[8] = v587;
    memcpy(&v1075[16], v1073, 0x1F8uLL);
    sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_413;
  }

  *v1075 = v586;
  *&v1075[8] = v587;
  memcpy(&v1075[16], v1073, 0x1F8uLL);
  sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
  if (!sub_1CF902E40(v587))
  {
LABEL_414:
    v591 = *v97;
    if (qword_1EDEA34B0 != -1)
    {
      v859 = *v97;
      swift_once();
    }

    v592 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v594 = v593;
    if (v592 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v594 == v595)
    {
      goto LABEL_418;
    }

    v596 = sub_1CF9E8048();

    if (v596)
    {
      goto LABEL_420;
    }

    v610 = *v97;
    if (qword_1EDEA3498 != -1)
    {
      v898 = *v97;
      swift_once();
    }

    v611 = qword_1EDEA34A0;
    v612 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v614 = v613;
    if (v612 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v614 == v615)
    {
LABEL_418:

      goto LABEL_420;
    }

    v1038 = v611;
    v616 = sub_1CF9E8048();

    if (v616)
    {
LABEL_420:
      v597 = v1087;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
      v598 = swift_allocObject();
      v599 = sub_1CF06DA80(v598, 3);
      *v600 = xmmword_1CFA04EF0;
      *(v600 + 16) = 256;
      v601 = nullsub_1(v599);
      sub_1CEFF5464(v601, v1076);
      sub_1CF946F34(*v1076, v597, v1077);
      v602 = *&v1077[0];
      v603 = sub_1CF902E40(*&v1077[0]);
      v604 = v1047;
      if (v603)
      {
        v605 = v1049;
      }

      else
      {
        *&v1077[0] = *v97;
        WORD4(v1077[0]) = 0;
        *&v1077[1] = v602;
        *(&v1077[1] + 1) = v1028;
        *&v1077[2] = v1029;
        BYTE2(v1077[5]) = 0;
        v1364[3] = v1077[3];
        v1365[0] = v1077[4];
        v1364[2] = v1077[2];
        *(v1365 + 15) = *(&v1077[4] + 15);
        v1364[0] = v1077[0];
        v1364[1] = v1077[1];
        v1366 = 10;
        v606 = *&v1077[0];
        v605 = v1049;
        sub_1CF903278(v1049, v1364);
        sub_1CEFCCC44(v1077, &qword_1EC4BFD48, &qword_1CFA05460);
      }

      goto LABEL_423;
    }

    v617 = v1087;
    v1053 = v1087;
    if ((sub_1CF06D930(0x200000000000, v1087) & 1) != 0 && (sub_1CF06D930(8, v617) & 1) == 0)
    {
      sub_1CF7F5D14(0x200000000000, v1077);
    }

    v618 = sub_1CF06D930(16, v617);
    v1039 = v617;
    if ((v618 & 1) == 0 || (sub_1CF7E69A4() & 1) == 0)
    {
      goto LABEL_615;
    }

    sub_1CF7E6950(v1077);
    if (!FileItemKind.canConflict.getter() || ((*(*v1047 + 552))() & 1) == 0)
    {
      goto LABEL_610;
    }

    memcpy(v1076, v1085, sizeof(v1076));
    memcpy(v1075, v1085, sizeof(v1075));
    memcpy(v1077, v1085, 0x208uLL);
    if (sub_1CF08B99C(v1077) == 1)
    {
      memcpy(v1074, v1075, 0x208uLL);
      sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_602;
    }

LABEL_601:
    v1072[10] = *&v1075[160];
    v1072[11] = *&v1075[176];
    v1072[12] = *&v1075[192];
    v1072[6] = *&v1075[96];
    v1072[7] = *&v1075[112];
    v1072[8] = *&v1075[128];
    v1072[9] = *&v1075[144];
    v1072[2] = *&v1075[32];
    v1072[3] = *&v1075[48];
    v1072[4] = *&v1075[64];
    v1072[5] = *&v1075[80];
    v501 = v1072;
    v1072[0] = *v1075;
    v1072[1] = *&v1075[16];
    memcpy(v1074, v1075, 0x208uLL);
    sub_1CEFCCBDC(v1076, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCBDC(v1072, v1073, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCBDC(&v1072[8], v1073, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(v1072, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    if (*(&v1072[9] + 1) >> 60 != 11)
    {
      goto LABEL_609;
    }

LABEL_602:
    memcpy(v1074, v1085, 0x208uLL);
    v1070[0] = *v1085;
    *&v1070[1] = *&v1085[16];
    v767 = BYTE8(v1074[1]);
    memcpy(v1071, &v1085[25], 0x1EFuLL);
    *v1075 = *v1085;
    *&v1075[16] = *&v1085[16];
    memcpy(&v1075[25], &v1085[25], 0x1EFuLL);
    v1075[24] = BYTE8(v1074[1]);
    if (sub_1CF08B99C(v1075) == 1)
    {
      v1073[0] = v1070[0];
      *&v1073[1] = *&v1070[1];
      BYTE8(v1073[1]) = v767;
      memcpy(&v1073[1] + 9, v1071, 0x1EFuLL);
      sub_1CEFCCBDC(v1074, v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    else
    {
      v1073[0] = v1070[0];
      *&v1073[1] = *&v1070[1];
      BYTE8(v1073[1]) = v767;
      memcpy(&v1073[1] + 9, v1071, 0x1EFuLL);
      sub_1CEFCCBDC(v1074, v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1073, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v767 == 3)
      {
        goto LABEL_610;
      }
    }

    v768 = *v1041;
    v769 = sub_1CF93DAB0(v768);
    v771 = sub_1CF436240(v768, v769, v770, 2, &unk_1EC4C0310, &unk_1CF9FB360);
    sub_1CF903274(v1049, v771);

    goto LABEL_610;
  }

LABEL_413:
  v588 = *v97;
  v1075[0] = 0;
  v1294 = v588;
  v1295 = 0;
  v1296 = v1028;
  v1297 = v1029;
  v1298 = 12;
  v589 = v588;
  v590 = v1049;
  sub_1CF903278(v1049, &v1294);

  while (1)
  {
    v669 = *v97;
    if (qword_1EDEA3498 != -1)
    {
      v858 = *v97;
      swift_once();
    }

    v670 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v672 = v671;
    if (v670 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v672 == v673)
    {
    }

    else
    {
      v674 = sub_1CF9E8048();

      if ((v674 & 1) == 0)
      {
        goto LABEL_517;
      }
    }

    if ((sub_1CF06D930(8, v1087) & 1) == 0)
    {
LABEL_517:
      v675 = v1046 == 2;
      goto LABEL_518;
    }

    v675 = v1046 == 2;
    if (v1046 < 2)
    {
      memcpy(v1076, v1085, sizeof(v1076));
      memcpy(v1077, v1085, 0x208uLL);
      v676 = sub_1CF08B99C(v1077);
      v97 = v1041;
      if (v676 != 1)
      {
        memcpy(v1293, v1076, sizeof(v1293));
        if (sub_1CF75C2AC())
        {
          v677 = *v97;
          LOBYTE(v1072[0]) = 0;
          v678 = *(v97 + 32);
          v1073[0] = *(v97 + 16);
          v1073[1] = v678;
          v679 = *(v97 + 64);
          v1073[2] = *(v97 + 48);
          v1073[3] = v679;
          *(v1074 + 6) = v1073[0];
          *(&v1074[1] + 6) = v678;
          *(&v1074[2] + 6) = v1073[2];
          *(&v1074[3] + 6) = v679;
          v1283 = v677;
          v1284 = 0;
          v1285 = 0;
          v1286 = v1074[0];
          *&v1289[14] = *(&v679 + 1);
          *v1289 = v1074[3];
          v1288 = v1074[2];
          v1287 = v1074[1];
          v1290 = 1;
          v1291 = 8;
          v1292 = 10;
          v680 = v677;
          sub_1CEFCCBDC(v1073, v1075, &unk_1EC4BF250, &unk_1CFA01B50);
          sub_1CF903278(v1049, &v1283);
          *&v1075[26] = v1074[1];
          *&v1075[42] = v1074[2];
          *&v1075[58] = v1074[3];
          *v1075 = v677;
          v1075[8] = 0;
          v1075[9] = 0;
          *&v1075[72] = *(&v1074[3] + 14);
          *&v1075[10] = v1074[0];
          *&v1075[80] = 1;
          v1075[82] = 8;
          v590 = v1049;
          v1075[115] = 10;
          v97 = v1041;
          sub_1CEFCCC44(v1075, &qword_1EC4BE730, &unk_1CFA05490);
        }
      }

      if (sub_1CF902E34())
      {
        v681 = v1641;
        v683 = v1028;
        v682 = v1029;
        v684 = sub_1CF3F7A48(v1641, v1028, v1029, 2048);
        v685 = v681;
        sub_1CF903274(v590, v684);

        v686 = sub_1CF436240(v685, v683, v682, 2048, &qword_1EC4BDF70, &qword_1CF9FB468);
        v687 = v685;
        sub_1CF903274(v590, v686);
      }

      goto LABEL_536;
    }

LABEL_518:
    v97 = v1041;
    if (!v675)
    {
      goto LABEL_536;
    }

    v688 = v1014;
    sub_1CEFCCBDC(v1041, v1014, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (swift_weakLoadStrong())
    {
      break;
    }

    __break(1u);
LABEL_779:

    (*(v1037 + 8))(v1003, v1036);
LABEL_780:
    sub_1CEFD5278(v1005, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v964 = 3;
LABEL_781:
    *v1075 = *v1041;
    *&v1075[8] = 0;
    v1075[16] = 5;
    v1075[17] = v964;
    *&v1075[24] = v1028;
    *&v1075[32] = v1029;
    v1075[114] = 12;
    v1367[4] = *&v1075[64];
    v1367[5] = *&v1075[80];
    *v1368 = *&v1075[96];
    *&v1368[15] = *&v1075[111];
    v1367[2] = *&v1075[32];
    v1367[3] = *&v1075[48];
    v1367[0] = *v1075;
    v1367[1] = *&v1075[16];
    v1369 = 9;
    v998 = *v1075;
    sub_1CF903278(v1049, v1367);
    v884 = &unk_1EC4BFD60;
    v885 = &qword_1CFA05468;
    v883 = v1075;
LABEL_715:
    sub_1CEFCCC44(v883, v884, v885);
LABEL_719:
    v605 = v1049;
    v604 = v1047;
    v97 = v1041;
    v580 = v1072;
LABEL_423:
    v607 = v1087;
    if (sub_1CF06D930(16, v1087) & 1) != 0 && (sub_1CF7E69A4())
    {
      v1039 = v607;
      *&v1072[0] = *v97;
      WORD4(v1072[0]) = 0;
      LOBYTE(v1072[1]) = 0;
      BYTE2(v1072[7]) = 10;
      v1361[4] = v1072[4];
      v1361[5] = v1072[5];
      *v1362 = v1072[6];
      v1361[2] = v1072[2];
      v1361[3] = v1072[3];
      *&v1362[15] = *(&v1072[6] + 15);
      v1361[0] = v1072[0];
      v1361[1] = v1072[1];
      v1363 = 9;
      v608 = *&v1072[0];
      sub_1CF903278(v605, v1361);
      sub_1CEFCCC44(v1072, &unk_1EC4BFD60, &qword_1CFA05468);
      memcpy(v1076, v1085, sizeof(v1076));
      v1071[4] = *&v1085[64];
      v1071[5] = *&v1085[80];
      LOBYTE(v1071[6]) = v1085[96];
      v1071[0] = *v1085;
      v1071[1] = *&v1085[16];
      v1071[2] = *&v1085[32];
      v1071[3] = *&v1085[48];
      v609 = v1076[97];
      memcpy(v1073, &v1085[98], 0x1A6uLL);
      v1077[4] = *&v1085[64];
      v1077[5] = *&v1085[80];
      LOBYTE(v1077[6]) = v1085[96];
      v1077[0] = *v1085;
      v1077[1] = *&v1085[16];
      v1077[2] = *&v1085[32];
      v1077[3] = *&v1085[48];
      memcpy(&v1077[6] + 2, &v1085[98], 0x1A6uLL);
      BYTE1(v1077[6]) = v1076[97];
      if (sub_1CF08B99C(v1077) == 1)
      {
        *&v1075[64] = v1071[4];
        *&v1075[80] = v1071[5];
        v1075[96] = v1071[6];
        *v1075 = v1071[0];
        *&v1075[16] = v1071[1];
        *&v1075[32] = v1071[2];
        *&v1075[48] = v1071[3];
        v1075[97] = v609;
        memcpy(&v1075[98], v1073, 0x1A6uLL);
        sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v1075[64] = v1071[4];
        *&v1075[80] = v1071[5];
        v1075[96] = v1071[6];
        *v1075 = v1071[0];
        *&v1075[16] = v1071[1];
        *&v1075[32] = v1071[2];
        *&v1075[48] = v1071[3];
        v1075[97] = v609;
        memcpy(&v1075[98], v1073, 0x1A6uLL);
        sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (!v609 && v1046 != 3)
        {
          *&v1074[0] = *v97;
          WORD4(v1074[0]) = 0;
          *&v1074[1] = 1;
          *(&v1074[2] + 8) = 0u;
          *(&v1074[1] + 8) = 0u;
          *(&v1074[3] + 8) = 0u;
          *(&v1074[4] + 2) = 0u;
          BYTE2(v1074[5]) = 15;
          v1358[2] = v1074[2];
          v1358[3] = v1074[3];
          v1359[0] = v1074[4];
          *(v1359 + 15) = *(&v1074[4] + 15);
          v1358[0] = v1074[0];
          v1358[1] = v1074[1];
          v1360 = 10;
          v627 = *&v1074[0];
          sub_1CF903278(v605, v1358);
          sub_1CEFCCC44(v1074, &qword_1EC4BFD48, &qword_1CFA05460);
          v604 = v1047;
          v607 = v1039;
          goto LABEL_446;
        }
      }

      v604 = v1047;
      v607 = v1039;
    }

LABEL_446:
    if ((sub_1CF06D930(16, v607) & 1) != 0 && (sub_1CF7E69A4() & 1) == 0)
    {
      memcpy(v1076, v1085, sizeof(v1076));
      memcpy(v1077, v1085, 0x208uLL);
      if (sub_1CF08B99C(v1077) != 1)
      {
        memcpy(v1347, v1076, 0x158uLL);
        v622 = v1076[344];
        v1356 = *&v1076[473];
        *v1357 = *&v1076[489];
        *&v1357[15] = *&v1076[504];
        v1352 = *&v1076[409];
        v1353 = *&v1076[425];
        v1354 = *&v1076[441];
        v1355 = *&v1076[457];
        v1348 = *&v1076[345];
        v1349 = *&v1076[361];
        v1350 = *&v1076[377];
        v1351 = *&v1076[393];
        v1347[344] = v1076[344];
        if (sub_1CF75C2AC())
        {
          if (sub_1CF959940(v622))
          {
            v623 = v1041;
            *&v1074[0] = *v1041;
            v624 = *&v1074[0];
            WORD4(v1074[0]) = 0;
            LOBYTE(v1074[1]) = 2;
            BYTE2(v1074[7]) = 10;
            v1344[4] = v1074[4];
            v1344[5] = v1074[5];
            *v1345 = v1074[6];
            v1344[2] = v1074[2];
            v1344[3] = v1074[3];
            *&v1345[15] = *(&v1074[6] + 15);
            v1344[0] = v1074[0];
            v1344[1] = v1074[1];
            v1346 = 9;
            sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v625 = v624;
            v97 = v623;
            sub_1CF903278(v1049, v1344);
            sub_1CEFCCC44(v1074, &unk_1EC4BFD60, &qword_1CFA05468);
            sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v604 = v1047;
            goto LABEL_461;
          }

          v604 = v1047;
        }

        else
        {
          v604 = v1047;
        }

        v97 = v1041;
      }
    }

LABEL_461:
    v628 = (v1044)();
    if ((sub_1CF06D930(0x40000, v628) & 1) != 0 || (sub_1CF06D930(0x2000000000000, v607) & 1) == 0 || (sub_1CF7E6950(v1077), !sub_1CF06DA5C(v1077[0], 0)) || (memcpy(v1076, v1085, sizeof(v1076)), memcpy(v1077, v1085, 0x208uLL), sub_1CF08B99C(v1077) == 1))
    {
      v629 = v1033;
      goto LABEL_466;
    }

    v1337 = *&v1076[160];
    v1338 = *&v1076[176];
    v1339 = *&v1076[192];
    v1333 = *&v1076[96];
    v1334 = *&v1076[112];
    v1335 = *&v1076[128];
    v1336 = *&v1076[144];
    v1329 = *&v1076[32];
    v1330 = *&v1076[48];
    v1331 = *&v1076[64];
    v1332 = *&v1076[80];
    v1327 = *v1076;
    v1328 = *&v1076[16];
    v643 = *&v1076[208];
    v644 = v1076[216];
    memcpy(v1342, &v1076[217], sizeof(v1342));
    v645 = *&v1076[512];
    v1340 = *&v1076[208];
    v1341 = v1076[216];
    v1343 = *&v1076[512];
    if (sub_1CF75C2AC())
    {
      v646 = v1051;
      if (v644 == 255)
      {
        goto LABEL_482;
      }

      *&v1072[0] = v643;
      BYTE8(v1072[0]) = v644;
      v647 = v1041 + *(v1033 + 52);
      v648 = *(v647 + 208);
      v1073[12] = *(v647 + 192);
      v1073[13] = v648;
      v1073[14] = *(v647 + 224);
      *&v1073[15] = *(v647 + 240);
      v649 = *(v647 + 144);
      v1073[8] = *(v647 + 128);
      v1073[9] = v649;
      v650 = *(v647 + 176);
      v1073[10] = *(v647 + 160);
      v1073[11] = v650;
      v651 = *(v647 + 80);
      v1073[4] = *(v647 + 64);
      v1073[5] = v651;
      v652 = *(v647 + 112);
      v1073[6] = *(v647 + 96);
      v1073[7] = v652;
      v653 = *(v647 + 16);
      v1073[0] = *v647;
      v1073[1] = v653;
      v654 = *(v647 + 48);
      v1073[2] = *(v647 + 32);
      v1073[3] = v654;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1073) == 1 || !sub_1CF9526EC(*(v647 + 208), 501) || (sub_1CF06D930(1, v645) & 1) != 0)
      {
LABEL_482:
        v604 = v1047;
        v629 = v1033;
        v97 = v1041;
      }

      else
      {
        v766 = *(**(v1047 + 40) + 240);
        sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v766(v1072, 1, &v1088, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v646)
        {

          sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1074, v1085, 0x208uLL);
          sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1075, v1086, sizeof(v1075));
          sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v162 = v1041;
          goto LABEL_374;
        }

        v856 = (*(v1011 + 48))(v1010, 1, v1015);
        v1051 = 0;
        if (v856 == 1)
        {
          sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1010, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_482;
        }

        sub_1CEFE55D0(v1010, v1008, &unk_1EC4BE360, &qword_1CF9FE650);
        if (sub_1CF7E6990())
        {
          sub_1CEFCCC44(v1008, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_482;
        }

        v97 = v1041;
        v889 = *v1041;
        v890 = *v1041;
        v891 = sub_1CF656C80(0);
        v892 = sub_1CEFF8C8C(v891);

        v1323 = *&v1075[32];
        v1324 = *&v1075[48];
        *v1325 = *&v1075[64];
        v1321 = *v1075;
        LOBYTE(v1071[0]) = 0;
        v1315 = v889;
        v1316 = 0;
        v1317 = v1074[0];
        v1318 = WORD2(v1074[0]);
        v1319 = 1;
        v1320 = v892;
        *&v1325[15] = *&v1075[79];
        v1322 = *&v1075[16];
        v1326 = 14;
        sub_1CF903278(v1049, &v1315);

        sub_1CEFCCC44(v1008, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v607 = v1087;
        v604 = v1047;
        v629 = v1033;
      }

      v580 = v1072;
      goto LABEL_466;
    }

    v604 = v1047;
    v629 = v1033;
    v97 = v1041;
LABEL_466:
    if (sub_1CF06D930(0x100000000000, v607))
    {
      v630 = v97 + *(v629 + 48);
      v631 = v1027[16];
      if (*(v630 + v631) == 1)
      {
        *&v1070[0] = *v97;
        WORD4(v1070[0]) = 0;
        LOBYTE(v1070[1]) = 1;
        BYTE2(v1070[5]) = 5;
        v1312[2] = v1070[2];
        v1312[3] = v1070[3];
        v1313[0] = v1070[4];
        *(v1313 + 15) = *(&v1070[4] + 15);
        v1312[0] = v1070[0];
        v1312[1] = v1070[1];
        v1314 = 10;
        v632 = *&v1070[0];
        v590 = v1049;
        sub_1CF903278(v1049, v1312);
        sub_1CEFCCC44(v1070, &qword_1EC4BFD48, &qword_1CFA05460);
        if (*(v630 + v631) == 1)
        {
          v633 = *v97;
          v634 = sub_1CF93DAB0(v633);
          v636 = sub_1CF3F423C(v633, v634, v635, 0x2000000);
          sub_1CF903274(v590, v636);

          memcpy(v1076, v1085, sizeof(v1076));
          v1071[4] = *&v1085[64];
          v1071[5] = *&v1085[80];
          LOBYTE(v1071[6]) = v1085[96];
          v1071[0] = *v1085;
          v1071[1] = *&v1085[16];
          v1071[2] = *&v1085[32];
          v1071[3] = *&v1085[48];
          v637 = v1076[97];
          memcpy(v1072, &v1085[98], 0x1A6uLL);
          v1077[4] = *&v1085[64];
          v1077[5] = *&v1085[80];
          LOBYTE(v1077[6]) = v1085[96];
          v1077[0] = *v1085;
          v1077[1] = *&v1085[16];
          v1077[2] = *&v1085[32];
          v1077[3] = *&v1085[48];
          memcpy(&v1077[6] + 2, &v1085[98], 0x1A6uLL);
          BYTE1(v1077[6]) = v1076[97];
          if (sub_1CF08B99C(v1077) == 1)
          {
            *&v1075[64] = v1071[4];
            *&v1075[80] = v1071[5];
            v1075[96] = v1071[6];
            *v1075 = v1071[0];
            *&v1075[16] = v1071[1];
            *&v1075[32] = v1071[2];
            *&v1075[48] = v1071[3];
            v1075[97] = v637;
            memcpy(&v1075[98], v1072, 0x1A6uLL);
            sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v638 = &unk_1EC4BFD80;
            v639 = &unk_1CFA0A2A0;
LABEL_492:
            sub_1CEFCCC44(v1075, v638, v639);
            goto LABEL_493;
          }

          *&v1075[64] = v1071[4];
          *&v1075[80] = v1071[5];
          v1075[96] = v1071[6];
          *v1075 = v1071[0];
          *&v1075[16] = v1071[1];
          *&v1075[32] = v1071[2];
          *&v1075[48] = v1071[3];
          v1075[97] = v637;
          memcpy(&v1075[98], v1072, 0x1A6uLL);
          sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
          if (v637 != 6)
          {
            v655 = *v97;
            memcpy(v1302, v1085, sizeof(v1302));
            v656 = v1051;
            sub_1CF4366B8(v655, v1302, v1028, v1029, v1021, v1047, v590, v1043, v1050);
            if (v656)
            {

              sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              memcpy(v1073, v1085, 0x208uLL);
              sub_1CEFCCC44(v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              memcpy(v1074, v1086, 0x208uLL);
              v559 = v1074;
              goto LABEL_487;
            }

            v1051 = 0;
            v590 = v1049;
            v604 = v1047;
            v97 = v1041;
            goto LABEL_494;
          }

          goto LABEL_493;
        }

        sub_1CF7E6950(v1077);
        if (sub_1CF06DA5C(v1077[0], 1))
        {
          v640 = *v97;
          v641 = sub_1CF3F7A48(*v97, v1028, v1029, 0x4000000);
          v642 = v640;
          sub_1CF903274(v590, v641);
        }

        memcpy(v1076, v1085, sizeof(v1076));
        memcpy(v1077, v1085, 0x208uLL);
        if (sub_1CF08B99C(v1077) != 1)
        {
          memcpy(v1311, v1076, sizeof(v1311));
          if (!sub_1CF75C2AC())
          {
            v657 = *v97;
            LOBYTE(v1074[0]) = 0;
            v658 = v657;
            v659 = *sub_1CF06EDF4();
            v1303 = v657;
            v1304 = 0;
            v660 = v1074[0];
            v1305 = v1074[0];
            v1306 = v659;
            v661 = v1028;
            v662 = v1029;
            v1307 = v1028;
            v1308 = v1029;
            v1309 = 0;
            v1310 = 10;
            v590 = v1049;
            sub_1CF903278(v1049, &v1303);
            *v1075 = v657;
            v1075[8] = 0;
            v1075[9] = v660;
            v97 = v1041;
            *&v1075[16] = v659;
            *&v1075[24] = v661;
            *&v1075[32] = v662;
            v1075[82] = 0;
            v1075[115] = 10;
            v638 = &qword_1EC4BE730;
            v639 = &unk_1CFA05490;
            goto LABEL_492;
          }

          v590 = v1049;
LABEL_493:
          v604 = v1047;
LABEL_494:
          v580 = v1072;
          goto LABEL_495;
        }

        v604 = v1047;
      }

      else
      {
        v590 = v1049;
        v604 = v1047;
      }
    }

    else
    {
      v590 = v1049;
    }

LABEL_495:
    if (sub_1CF06D930(2, v607))
    {
      memcpy(v1076, v1085, sizeof(v1076));
      v1072[12] = *&v1085[192];
      v1072[13] = *&v1085[208];
      v1072[14] = *&v1085[224];
      v1072[8] = *&v1085[128];
      v1072[9] = *&v1085[144];
      v1072[10] = *&v1085[160];
      v1072[11] = *&v1085[176];
      v1072[4] = *&v1085[64];
      v1072[5] = *&v1085[80];
      v1072[6] = *&v1085[96];
      v1072[7] = *&v1085[112];
      v1072[0] = *v1085;
      v1072[1] = *&v1085[16];
      v1072[2] = *&v1085[32];
      v1072[3] = *&v1085[48];
      v663 = v1076[240];
      memcpy(v1073, &v1085[241], 0x117uLL);
      v1077[12] = *&v1085[192];
      v1077[13] = *&v1085[208];
      v1077[14] = *&v1085[224];
      v1077[8] = *&v1085[128];
      v1077[9] = *&v1085[144];
      v1077[10] = *&v1085[160];
      v1077[11] = *&v1085[176];
      v1077[4] = *&v1085[64];
      v1077[5] = *&v1085[80];
      v1077[6] = *&v1085[96];
      v1077[7] = *&v1085[112];
      v1077[0] = *v1085;
      v1077[1] = *&v1085[16];
      v1077[2] = *&v1085[32];
      v1077[3] = *&v1085[48];
      memcpy(&v1077[15] + 1, &v1085[241], 0x117uLL);
      LOBYTE(v1077[15]) = v1076[240];
      if (sub_1CF08B99C(v1077) == 1)
      {
        *&v1075[192] = v1072[12];
        *&v1075[208] = v1072[13];
        *&v1075[224] = v1072[14];
        *&v1075[128] = v1072[8];
        *&v1075[144] = v1072[9];
        *&v1075[160] = v1072[10];
        *&v1075[176] = v1072[11];
        *&v1075[64] = v1072[4];
        *&v1075[80] = v1072[5];
        *&v1075[96] = v1072[6];
        *&v1075[112] = v1072[7];
        *v1075 = v1072[0];
        *&v1075[16] = v1072[1];
        v1075[240] = v663;
        *&v1075[32] = v1072[2];
        *&v1075[48] = v1072[3];
        memcpy(&v1075[241], v1073, 0x117uLL);
        sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v604 = v1047;
        v580 = v1072;
      }

      else
      {
        *&v1075[192] = v1072[12];
        *&v1075[208] = v1072[13];
        *&v1075[224] = v1072[14];
        *&v1075[128] = v1072[8];
        *&v1075[144] = v1072[9];
        *&v1075[160] = v1072[10];
        *&v1075[176] = v1072[11];
        *&v1075[64] = v1072[4];
        *&v1075[80] = v1072[5];
        *&v1075[96] = v1072[6];
        *&v1075[112] = v1072[7];
        *v1075 = v1072[0];
        *&v1075[16] = v1072[1];
        *&v1075[32] = v1072[2];
        *&v1075[48] = v1072[3];
        v1075[240] = v663;
        memcpy(&v1075[241], v1073, 0x117uLL);
        sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1075, &unk_1EC4BFC90, &unk_1CFA053E0);
        v580 = v1072;
        if (v663 == 2)
        {
          v604 = v1047;
          if ((v1045 & 1) == 0)
          {
            *&v1074[0] = *v97;
            WORD4(v1074[0]) = 0;
            LOWORD(v1074[1]) = 1282;
            *(&v1074[1] + 1) = v1028;
            *&v1074[2] = v1029;
            BYTE2(v1074[7]) = 12;
            v1299[4] = v1074[4];
            v1299[5] = v1074[5];
            *v1300 = v1074[6];
            *&v1300[15] = *(&v1074[6] + 15);
            v1299[2] = v1074[2];
            v1299[3] = v1074[3];
            v1299[0] = v1074[0];
            v1299[1] = v1074[1];
            v1301 = 9;
            v718 = *&v1074[0];
            sub_1CF903278(v590, v1299);
            sub_1CEFCCC44(v1074, &unk_1EC4BFD60, &qword_1CFA05468);
          }
        }

        else
        {
          v604 = v1047;
        }
      }
    }

    if (!v1046)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
      v664 = swift_allocObject();
      v665 = sub_1CF06DA80(v664, 2);
      *v666 = xmmword_1CF9FA450;
      v667 = nullsub_1(v665);
      sub_1CEFF5464(v667, v1077);
      if (!sub_1CF95EDE0(*&v1077[0], v607))
      {
        v668 = v1051;
        sub_1CF41A5CC(v97, v604, v590, v1043, v1050);
        v1051 = v668;
        if (v668)
        {

LABEL_523:
          v530 = v1040;
          goto LABEL_524;
        }
      }
    }
  }

  v689 = v1051;
  v690 = sub_1CF418C98(v688);
  v1051 = v689;
  if (v689)
  {

    sub_1CEFCCC44(v688, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    goto LABEL_523;
  }

  v691 = v690;
  sub_1CEFCCC44(v688, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

  if (sub_1CF55B584(v691))
  {
    v692 = sub_1CF902E8C(v691);
    v693 = 4;
    do
    {
      sub_1CF903340(v693 - 4, v692, v691);
      if (v692)
      {
        v694 = *(v691 + 8 * v693);
      }

      else
      {
        v694 = MEMORY[0x1D3869C30](v693 - 4, v691);
      }

      v695 = v693 - 3;
      if (__OFADD__(v693 - 4, 1))
      {
        goto LABEL_600;
      }

      sub_1CF903274(v1049, v694);

      ++v693;
    }

    while (v695 != sub_1CF55B584(v691));
    v590 = v1049;
  }

LABEL_536:

  memcpy(v1076, v1085, sizeof(v1076));
  memcpy(v1077, v1085, 0x208uLL);
  if (sub_1CF08B99C(v1077) == 1)
  {
    goto LABEL_540;
  }

  v1264 = *&v1076[192];
  v1263[10] = *&v1076[160];
  v1263[11] = *&v1076[176];
  v1263[6] = *&v1076[96];
  v1263[7] = *&v1076[112];
  v1263[8] = *&v1076[128];
  v1263[9] = *&v1076[144];
  v1263[2] = *&v1076[32];
  v1263[3] = *&v1076[48];
  v1263[4] = *&v1076[64];
  v1263[5] = *&v1076[80];
  v1263[0] = *v1076;
  v1263[1] = *&v1076[16];
  memcpy(v1266, &v1076[208], sizeof(v1266));
  v1265 = *&v1076[200];
  v696 = sub_1CF06D930(4, *&v1076[200]);
  v697 = *(v97 + *(v1033 + 48) + v1027[24]);
  if ((v696 & 1) == v697)
  {
LABEL_540:
    v704 = v1050;
  }

  else
  {
    if (v697)
    {
      *&v1072[0] = *v97;
      v698 = *&v1072[0];
      WORD4(v1072[0]) = 0;
      memset(&v1072[1], 0, 24);
      *(&v1072[2] + 1) = 0xB000000000000000;
      memset(&v1072[3], 0, 34);
      BYTE2(v1072[5]) = 13;
      *(v1276 + 15) = *(&v1072[4] + 15);
      v1275[3] = 0u;
      v1276[0] = 0u;
      v1275[1] = 0u;
      v1275[2] = v1072[2];
      v1275[0] = v1072[0];
      v1277 = 10;
      sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v699 = v698;
      v590 = v1049;
      sub_1CF903278(v1049, v1275);
      sub_1CEFCCC44(v1072, &qword_1EC4BFD48, &qword_1CFA05460);
      *&v1073[0] = *v97;
      WORD4(v1073[0]) = 0;
      memset(&v1073[1], 0, 24);
      *(&v1073[2] + 1) = 0xB000000000000000;
      memset(&v1073[3], 0, 34);
      BYTE2(v1073[7]) = 13;
      *v1273 = v1073[6];
      v1272[5] = v1073[5];
      *&v1273[15] = *(&v1073[6] + 15);
      v1272[2] = v1073[2];
      memset(&v1272[3], 0, 32);
      v1272[0] = v1073[0];
      v1272[1] = 0u;
      v1274 = 9;
      v700 = *&v1073[0];
      sub_1CF903278(v590, v1272);
      sub_1CEFCCC44(v1073, &unk_1EC4BFD60, &qword_1CFA05468);
      v701 = *v97;
      LOBYTE(v1071[0]) = 0;
      LOBYTE(v1070[0]) = 0;
      v1267 = v701;
      v1268 = 0;
      v1269 = 4;
      v1270 = 0;
      v1271 = 11;
      v702 = v701;
      v703 = &v1267;
    }

    else
    {
      v710 = *v97;
      LOBYTE(v1073[0]) = 0;
      LOBYTE(v1072[0]) = 1;
      v1278 = v710;
      v1279 = 0;
      v1280 = 4;
      v1281 = 1;
      v1282 = 11;
      sub_1CEFCCBDC(v1076, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v702 = v710;
      v703 = &v1278;
    }

    sub_1CF903278(v590, v703);

    v704 = v1050;
    v711 = v1051;
    sub_1CF482574(v1263, v1047, v1043, v1050);
    v1051 = v711;
    if (v711)
    {
      sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      memcpy(v1074, v1085, 0x208uLL);
      sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      memcpy(v1075, v1086, sizeof(v1075));
      v383 = v1075;
      goto LABEL_548;
    }

    sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  }

  memcpy(v1074, v1085, 0x208uLL);
  memcpy(v1075, v1085, sizeof(v1075));
  if (sub_1CF08B99C(v1075) != 1)
  {
    v1256[12] = v1074[12];
    v1256[10] = v1074[10];
    v1256[11] = v1074[11];
    v1256[6] = v1074[6];
    v1256[7] = v1074[7];
    v1256[8] = v1074[8];
    v1256[9] = v1074[9];
    v1256[2] = v1074[2];
    v1256[3] = v1074[3];
    v1256[4] = v1074[4];
    v1256[5] = v1074[5];
    v1256[0] = v1074[0];
    v1256[1] = v1074[1];
    memcpy(v1257, &v1074[13], sizeof(v1257));
    v705 = sub_1CF06D930(8, *(&v1074[12] + 1));
    v706 = *(v97 + *(v1033 + 48) + v1027[25]);
    if ((v705 & 1) != v706)
    {
      v707 = *v97;
      LOBYTE(v1071[0]) = 0;
      LOBYTE(v1070[0]) = v706 ^ 1;
      v1258 = v707;
      v1259 = 0;
      v1260 = 8;
      v1261 = v706 ^ 1;
      v1262 = 11;
      sub_1CEFCCBDC(v1074, v1073, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v708 = v707;
      sub_1CF903278(v590, &v1258);

      v709 = v1051;
      sub_1CF482574(v1256, v1047, v1043, v704);
      v1051 = v709;
      if (v709)
      {
        sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1040, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1072, v1085, 0x208uLL);
        sub_1CEFCCC44(v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1073, v1086, 0x208uLL);
        v383 = v1073;
        goto LABEL_548;
      }

      sub_1CEFCCC44(v1074, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  v712 = v1040;
  memcpy(v1072, v1085, 0x208uLL);
  memcpy(v1073, v1085, 0x208uLL);
  if (sub_1CF08B99C(v1073) != 1)
  {
    v1253 = v1072[10];
    v1254 = v1072[11];
    v1249 = v1072[6];
    v1250 = v1072[7];
    v1251 = v1072[8];
    v1252 = v1072[9];
    v1245 = v1072[2];
    v1246 = v1072[3];
    v1247 = v1072[4];
    v1248 = v1072[5];
    v1243 = v1072[0];
    v1244 = v1072[1];
    v1255 = v1072[12];
    if (sub_1CF06D930(4, *(&v1072[12] + 1)))
    {
      sub_1CEFCCBDC(v1072, v1071, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v713 = sub_1CF75C2CC(qword_1EDEABDE8 | 0x10, 0);
      v714 = v1021;
      if (v713 || !sub_1CF95EDE0(0x200000010918, v1087))
      {
        if (sub_1CF06D930(0x800000000000, v714))
        {
          v715 = *v97;
          LOBYTE(v1071[0]) = 0;
          LOBYTE(v1070[0]) = 0;
          v1233 = v715;
          v1234 = 0;
          v1235 = 16;
          v1236 = 0;
          v1237 = 11;
          v716 = v715;
          v717 = &v1233;
          goto LABEL_564;
        }

        if (sub_1CF06D930(0x1000000000000, v714))
        {
          v719 = *v97;
          LOBYTE(v1071[0]) = 0;
          LOBYTE(v1070[0]) = 0;
          v1238 = v719;
          v1239 = 0;
          v1240 = 32;
          v1241 = 0;
          v1242 = 11;
          v716 = v719;
          v717 = &v1238;
LABEL_564:
          sub_1CF903278(v590, v717);
        }
      }

      sub_1CEFCCC44(v1072, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  if (sub_1CF902E34())
  {
    memcpy(v1070, v1085, 0x208uLL);
    memcpy(v1069, v1085, sizeof(v1069));
    v720 = *&v1070[32];
    memcpy(v1071, v1085, 0x200uLL);
    *&v1071[32] = *&v1070[32];
    v675 = sub_1CF08B99C(v1071) == 1;
    v721 = v1051;
    if (v675)
    {
      memcpy(v1068, v1069, 0x200uLL);
      *&v1068[32] = v720;
      sub_1CEFCCBDC(v1070, v1067, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1068, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v722 = 2;
    }

    else
    {
      memcpy(v1068, v1069, 0x200uLL);
      *&v1068[32] = v720;
      sub_1CEFCCBDC(v1070, v1067, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1068, &unk_1EC4BFC90, &unk_1CFA053E0);
      v722 = sub_1CF06D930(2, v720) & 1;
    }

    v723 = v97 + *(v1033 + 48);
    v724 = v1027[22];
    v725 = sub_1CF06EE7C(*(v723 + v724), 2);
    if (v722 == 2 || ((v725 ^ v722) & 1) != 0)
    {
      v726 = sub_1CF905310();
      if (sub_1CF06EE7C(*(v723 + v724), 2))
      {
        v727 = *v97;
        v728 = *v97;
        v729 = sub_1CF656C80(0);
        v730 = sub_1CEFF8C8C(v729);

        LOBYTE(v1069[0]) = 0;
        v1209 = v727;
        v1210 = 0;
        v1211 = v1067[0];
        v1212 = WORD2(v1067[0]);
        v1213 = 2;
        v1214 = v730;
        v1217 = v1068[2];
        v1218 = v1068[3];
        *v1219 = v1068[4];
        *&v1219[15] = *(&v1068[4] + 15);
        v1215 = v1068[0];
        v1216 = v1068[1];
        v1220 = 14;
        v731 = &v1209;
      }

      else
      {
        v732 = *v97;
        v728 = *v97;
        v733 = sub_1CF656C80(0);
        v734 = sub_1CEFF8C8C(v733);

        LOBYTE(v1069[0]) = 0;
        v1221 = v732;
        v721 = v1051;
        v1222 = 0;
        v1223 = v1067[0];
        v1224 = WORD2(v1067[0]);
        v1225 = v734;
        v1226 = 2;
        v1229 = v1068[2];
        v1230 = v1068[3];
        *v1231 = v1068[4];
        *&v1231[15] = *(&v1068[4] + 15);
        v1227 = v1068[0];
        v1228 = v1068[1];
        v1232 = 14;
        v731 = &v1221;
      }

      sub_1CF903278(v726, v731);

      v735 = sub_1CF4D3BC0();
      sub_1CF7F6A3C(v726, v735, v1043, v1050);
      v712 = v1040;
      if (v721)
      {

        sub_1CEFCCC44(v712, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1067, v1085, 0x208uLL);
        sub_1CEFCCC44(v1067, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1068, v1086, 0x208uLL);
        v159 = v1068;
        v160 = &unk_1EC4BFD80;
        v161 = &unk_1CFA0A2A0;
        goto LABEL_27;
      }
    }

    else
    {
      v712 = v1040;
    }
  }

  sub_1CEFCCC44(v712, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  memcpy(v1070, v1085, 0x208uLL);
  sub_1CEFCCC44(v1070, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  memcpy(v1071, v1086, 0x208uLL);
  sub_1CEFCCC44(v1071, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v149 = v97;
LABEL_22:
  sub_1CEFCCC44(v149, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v147 = 0;
  return v147 & 1;
}