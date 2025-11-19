uint64_t sub_226B2C0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_226D6F2FC();
  sub_226B2C178(v5, a3);
  return sub_226D6F35C();
}

uint64_t sub_226B2C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_226D6F2FC();
  sub_226B2C178(v6, a4);
  return sub_226D6F35C();
}

uint64_t sub_226B2C178(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = *v2;
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](v4[1]);
  v15 = a2(0);
  sub_226AC40E8(v4 + *(v15 + 24), v13, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_226D6F31C();
  sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226B2C420()
{
  v1 = v0;
  v43 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v41 = *(v43 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v38 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_226D6D4AC();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v36 - v23;
  v42 = v1;
  sub_226AC40E8(v1, &v36 - v23, &qword_27D7A6C20, &qword_226D72BF8);
  if ((*(v17 + 48))(v24, 1, v16) == 1)
  {
    sub_226D6F31C();
    v25 = v39;
  }

  else
  {
    sub_226B2FFD8(v24, v20, _s8MetadataV9LocalItemV7ConsentVMa);
    sub_226D6F31C();
    v26 = *v20;
    sub_226D6EC4C();
    MEMORY[0x22AA8B3E0](v20[1]);
    sub_226AC40E8(v20 + *(v16 + 24), v15, &qword_27D7A8BE0, &unk_226D718F0);
    v25 = v39;
    if ((*(v39 + 48))(v15, 1, v4) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v27 = v37;
      (*(v25 + 32))(v37, v15, v4);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v25 + 8))(v27, v4);
    }

    sub_226B2FF38(v20, _s8MetadataV9LocalItemV7ConsentVMa);
  }

  v28 = v43;
  v29 = v40;
  v30 = _s8MetadataV9LocalItemVMa_0(0);
  sub_226AC40E8(v42 + *(v30 + 20), v29, &qword_27D7A6C10, &unk_226D731E0);
  if ((*(v41 + 48))(v29, 1, v28) == 1)
  {
    return sub_226D6F31C();
  }

  v32 = v38;
  sub_226B2FFD8(v29, v38, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226D6F31C();
  v33 = *v32;
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](v32[1]);
  v34 = v36;
  sub_226AC40E8(v32 + *(v28 + 24), v36, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v25 + 48))(v34, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v35 = v37;
    (*(v25 + 32))(v37, v34, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v25 + 8))(v35, v4);
  }

  return sub_226B2FF38(v32, _s8MetadataV9LocalItemV14PendingConsentVMa);
}

uint64_t sub_226B2CA8C(uint64_t a1)
{
  v67 = a1;
  v1 = sub_226D6D4AC();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v1);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v65 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v59 = *(v65 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v65);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v56 - v24;
  v26 = _s8MetadataV9LocalItemVMa_0(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s8MetadataV15LocalItemStatusOMa_0(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B30080(v66, v34, _s8MetadataV15LocalItemStatusOMa_0);
  v35 = (*(v27 + 48))(v34, 2, v26);
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = 2;
    }

    return MEMORY[0x22AA8B3B0](v36);
  }

  v66 = v11;
  v57 = v16;
  v58 = v7;
  v37 = v60;
  v38 = v61;
  v39 = v62;
  sub_226B2FFD8(v34, v30, _s8MetadataV9LocalItemVMa_0);
  MEMORY[0x22AA8B3B0](1);
  sub_226AC40E8(v30, v25, &qword_27D7A6C20, &qword_226D72BF8);
  if ((*(v59 + 48))(v25, 1, v65) == 1)
  {
    sub_226D6F31C();
    v40 = v39;
    v41 = v38;
LABEL_11:
    v47 = v37;
    goto LABEL_13;
  }

  v43 = v25;
  v44 = v21;
  sub_226B2FFD8(v43, v21, _s8MetadataV9LocalItemV7ConsentVMa);
  sub_226D6F31C();
  v45 = *v21;
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](v21[1]);
  v46 = v18;
  sub_226AC40E8(v21 + *(v65 + 24), v18, &qword_27D7A8BE0, &unk_226D718F0);
  v41 = v38;
  v40 = v39;
  if ((*(v38 + 48))(v46, 1, v39) == 1)
  {
    sub_226D6F31C();
    sub_226B2FF38(v44, _s8MetadataV9LocalItemV7ConsentVMa);
    goto LABEL_11;
  }

  v48 = v44;
  v47 = v37;
  (*(v38 + 32))(v37, v46, v40);
  sub_226D6F31C();
  sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  (*(v38 + 8))(v37, v40);
  sub_226B2FF38(v48, _s8MetadataV9LocalItemV7ConsentVMa);
LABEL_13:
  v49 = v63;
  v50 = v66;
  sub_226AC40E8(&v30[*(v26 + 20)], v66, &qword_27D7A6C10, &unk_226D731E0);
  v51 = v64;
  if ((*(v49 + 48))(v50, 1, v64) == 1)
  {
    sub_226D6F31C();
    return sub_226B2FF38(v30, _s8MetadataV9LocalItemVMa_0);
  }

  else
  {
    v52 = v50;
    v53 = v58;
    sub_226B2FFD8(v52, v58, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226D6F31C();
    v54 = *v53;
    sub_226D6EC4C();
    MEMORY[0x22AA8B3E0](v53[1]);
    v55 = v57;
    sub_226AC40E8(v53 + *(v51 + 24), v57, &qword_27D7A8BE0, &unk_226D718F0);
    if ((*(v41 + 48))(v55, 1, v40) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v41 + 32))(v47, v55, v40);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v41 + 8))(v47, v40);
    }

    sub_226B2FF38(v30, _s8MetadataV9LocalItemVMa_0);
    return sub_226B2FF38(v53, _s8MetadataV9LocalItemV14PendingConsentVMa);
  }
}

uint64_t sub_226B2D260(uint64_t a1)
{
  v95 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v99 = *(v95 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v95);
  v96 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v89 - v7;
  v9 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9);
  v94 = (v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = v89 - v14;
  v109 = _s8MetadataV9LocalItemVMa_0(0);
  v106 = *(v109 - 8);
  v15 = *(v106 + 64);
  MEMORY[0x28223BE20](v109);
  v100 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D6D4AC();
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v101 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s8MetadataV15LocalItemStatusOMa_0(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v93 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v92 = v89 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v89 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v89 - v33;
  v35 = _s8MetadataV9CloudItemVMa_0(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = (v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v1;
  v45 = v1[1];
  sub_226D6E42C();
  v46 = *(v1 + 16);
  sub_226D6F31C();
  v104 = _s8MetadataVMa_0(0);
  v47 = *(v104 + 24);
  v108 = v1;
  sub_226B30080(v1 + v47, v43, _s8MetadataV15CloudItemStatusOMa_0);
  v48 = (*(v36 + 48))(v43, 2, v35);
  if (v48)
  {
    if (v48 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = 2;
    }

    MEMORY[0x22AA8B3B0](v49);
    v56 = v108;
    v57 = v109;
    v59 = v106;
    v58 = v107;
    v60 = v104;
    v61 = v105;
    v62 = v8;
  }

  else
  {
    v90 = v32;
    v91 = v8;
    sub_226B2FFD8(v43, v39, _s8MetadataV9CloudItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    MEMORY[0x22AA8B3E0](*v39);
    v50 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
    v51 = v50[5];
    v52 = sub_226D6D52C();
    v53 = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0]);
    v89[2] = v52;
    v89[1] = v53;
    sub_226D6E30C();
    sub_226AC40E8(v39 + v50[6], v34, &qword_27D7A8BE0, &unk_226D718F0);
    v55 = v102;
    v54 = v103;
    v89[0] = *(v103 + 48);
    if ((v89[0])(v34, 1, v102) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v63 = v101;
      (*(v54 + 32))(v101, v34, v55);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v54 + 8))(v63, v55);
    }

    v59 = v106;
    v64 = *(v39 + v50[7]);
    sub_226D6EC4C();
    v65 = (v39 + *(v35 + 20));
    MEMORY[0x22AA8B3E0](*v65);
    v66 = v65 + v50[5];
    sub_226D6E30C();
    v67 = v90;
    sub_226AC40E8(v65 + v50[6], v90, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v89[0])(v67, 1, v55) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v68 = v103;
      v69 = v101;
      (*(v103 + 32))(v101, v67, v55);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v68 + 8))(v69, v55);
    }

    v62 = v91;
    v57 = v109;
    v70 = *(v65 + v50[7]);
    sub_226D6EC4C();
    sub_226AF0EDC(a1, *(v39 + *(v35 + 24)));
    sub_226B2FF38(v39, _s8MetadataV9CloudItemVMa_0);
    v58 = v107;
    v56 = v108;
    v60 = v104;
    v61 = v105;
  }

  sub_226B30080(v56 + *(v60 + 28), v61, _s8MetadataV15LocalItemStatusOMa_0);
  v71 = (*(v59 + 48))(v61, 2, v57);
  if (v71)
  {
    if (v71 == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = 2;
    }

    return MEMORY[0x22AA8B3B0](v72);
  }

  else
  {
    v73 = v100;
    sub_226B2FFD8(v61, v100, _s8MetadataV9LocalItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    sub_226AC40E8(v73, v58, &qword_27D7A6C20, &qword_226D72BF8);
    v74 = v98;
    if ((*(v97 + 48))(v58, 1, v98) == 1)
    {
      sub_226D6F31C();
      v76 = v95;
      v75 = v96;
      v77 = v102;
      v78 = v103;
    }

    else
    {
      v80 = v94;
      sub_226B2FFD8(v58, v94, _s8MetadataV9LocalItemV7ConsentVMa);
      v81 = v74;
      sub_226D6F31C();
      v82 = *v80;
      sub_226D6EC4C();
      MEMORY[0x22AA8B3E0](v80[1]);
      v83 = v92;
      sub_226AC40E8(v80 + *(v81 + 24), v92, &qword_27D7A8BE0, &unk_226D718F0);
      v77 = v102;
      v78 = v103;
      v84 = (*(v103 + 48))(v83, 1, v102);
      v76 = v95;
      v75 = v96;
      if (v84 == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v85 = v101;
        (*(v78 + 32))(v101, v83, v77);
        sub_226D6F31C();
        sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
        sub_226D6E30C();
        (*(v78 + 8))(v85, v77);
      }

      sub_226B2FF38(v80, _s8MetadataV9LocalItemV7ConsentVMa);
      v57 = v109;
    }

    sub_226AC40E8(v73 + *(v57 + 20), v62, &qword_27D7A6C10, &unk_226D731E0);
    if ((*(v99 + 48))(v62, 1, v76) == 1)
    {
      sub_226D6F31C();
      return sub_226B2FF38(v73, _s8MetadataV9LocalItemVMa_0);
    }

    else
    {
      sub_226B2FFD8(v62, v75, _s8MetadataV9LocalItemV14PendingConsentVMa);
      sub_226D6F31C();
      v86 = *v75;
      sub_226D6EC4C();
      MEMORY[0x22AA8B3E0](v75[1]);
      v87 = v93;
      sub_226AC40E8(v75 + *(v76 + 24), v93, &qword_27D7A8BE0, &unk_226D718F0);
      if ((*(v78 + 48))(v87, 1, v77) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v88 = v101;
        (*(v78 + 32))(v101, v87, v77);
        sub_226D6F31C();
        sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
        sub_226D6E30C();
        (*(v78 + 8))(v88, v77);
      }

      sub_226B2FF38(v73, _s8MetadataV9LocalItemVMa_0);
      return sub_226B2FF38(v75, _s8MetadataV9LocalItemV14PendingConsentVMa);
    }
  }
}

uint64_t sub_226B2DF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_226D6F21C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_226B2BAF0(a1 + *(a3 + 24), a2 + *(a3 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 28);

  return sub_226B2CA88(a1 + v7, a2 + v7);
}

uint64_t sub_226B2DFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_226B300E8(&qword_27D7A6C50, MEMORY[0x277CC8058]);
    v22 = sub_226D6E35C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B2E200(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_226B30080(v14, v11, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226B30080(v15, v8, _s8MetadataV9CloudItemV6ObjectVMa);
      if ((sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if ((sub_226D6EC3C() & 1) == 0)
      {
        break;
      }

      v20 = *(v4 + 24);
      v21 = sub_226D6D44C();
      sub_226B2FF38(v8, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226B2FF38(v11, _s8MetadataV9CloudItemV6ObjectVMa);
      if (v21)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_226B2FF38(v8, _s8MetadataV9CloudItemV6ObjectVMa);
    sub_226B2FF38(v11, _s8MetadataV9CloudItemV6ObjectVMa);
    goto LABEL_12;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_226B2E43C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v16 = *(v5 + 72);
    while (1)
    {
      sub_226B30080(v14, v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B30080(v15, v9, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v17 = *v11;
      v18 = *v9;
      if ((sub_226D6EC3C() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 20);
      if ((sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      v20 = *(v4 + 24);
      v21 = sub_226D6D44C();
      sub_226B2FF38(v9, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B2FF38(v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
      if (v21)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_226B2FF38(v9, _s8MetadataV9CloudItemV6ObjectVMa_1);
    sub_226B2FF38(v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
    goto LABEL_12;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_226B2E674(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B2E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_226D6F21C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_226B2E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v40 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v40 - v13;
  v51 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v15 = *(*(v51 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v51);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v40 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (v22 && a1 != a2)
  {
    v43 = v8;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v49 = (v5 + 48);
    v41 = &v40 - v20;
    v42 = (v5 + 32);
    v44 = (v5 + 8);
    v46 = *(v19 + 72);
    while (1)
    {
      sub_226B30080(v24, v21, _s8MetadataV9CloudItemV6ObjectVMa_0);
      v48 = v24;
      sub_226B30080(v25, v18, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (*v21 != *v18)
      {
        break;
      }

      v26 = v51[5];
      if ((sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      v27 = v51[6];
      v28 = *(v47 + 48);
      sub_226AC40E8(v21 + v27, v14, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(v18 + v27, &v14[v28], &qword_27D7A8BE0, &unk_226D718F0);
      v29 = *v49;
      if ((*v49)(v14, 1, v4) == 1)
      {
        if (v29(&v14[v28], 1, v4) != 1)
        {
          goto LABEL_17;
        }

        sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        sub_226AC40E8(v14, v50, &qword_27D7A8BE0, &unk_226D718F0);
        if (v29(&v14[v28], 1, v4) == 1)
        {
          (*v44)(v50, v4);
LABEL_17:
          sub_226AC47B0(v14, &qword_27D7A6C30, &unk_226D74330);
          break;
        }

        v30 = &v14[v28];
        v31 = v4;
        v32 = v43;
        (*v42)(v43, v30, v31);
        sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578]);
        v45 = sub_226D6E35C();
        v33 = *v44;
        v34 = v32;
        v4 = v31;
        (*v44)(v34, v31);
        v33(v50, v31);
        v21 = v41;
        sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v35 = v51[7];
      v36 = *(v21 + v35);
      v37 = *(v18 + v35);
      v38 = sub_226D6EC3C();
      sub_226B2FF38(v18, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B2FF38(v21, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (v38)
      {
        v25 += v46;
        v24 = v48 + v46;
        if (--v22)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_226B2FF38(v18, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B2FF38(v21, _s8MetadataV9CloudItemV6ObjectVMa_0);
    goto LABEL_19;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_226B2ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v46 - v14;
  v54 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v16 = *(*(v54 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v54);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v47 = v8;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = v5;
  v26 = a1 + v24;
  v27 = a2 + v24;
  v46 = (v25 + 32);
  v48 = (v25 + 8);
  v49 = v12;
  v51 = *(v20 + 72);
  v52 = (v25 + 48);
  v53 = v15;
  v28 = v54;
  while (1)
  {
    result = sub_226B30080(v26, v22, _s8MetadataV9CloudItemV6ObjectVMa_2);
    if (!v23)
    {
      break;
    }

    v56 = v27;
    sub_226B30080(v27, v19, _s8MetadataV9CloudItemV6ObjectVMa_2);
    if ((sub_226D6D44C() & 1) == 0)
    {
      goto LABEL_22;
    }

    v30 = v28[5];
    if ((sub_226D6D4EC() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v31 = v28[6];
    v32 = *&v22[v31];
    v33 = *&v19[v31];
    if ((sub_226D6EC3C() & 1) == 0 || v22[v28[7]] != v19[v28[7]])
    {
      goto LABEL_22;
    }

    v55 = v26;
    v34 = v28[8];
    v35 = *(v57 + 48);
    sub_226AC40E8(&v22[v34], v15, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC40E8(&v19[v34], &v15[v35], &qword_27D7A8BE0, &unk_226D718F0);
    v36 = *v52;
    if ((*v52)(v15, 1, v4) == 1)
    {
      if (v36(&v15[v35], 1, v4) != 1)
      {
        goto LABEL_21;
      }

      sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
      v37 = v55;
    }

    else
    {
      v38 = v49;
      sub_226AC40E8(v15, v49, &qword_27D7A8BE0, &unk_226D718F0);
      if (v36(&v15[v35], 1, v4) == 1)
      {
        (*v48)(v38, v4);
LABEL_21:
        sub_226AC47B0(v15, &qword_27D7A6C30, &unk_226D74330);
LABEL_22:
        sub_226B2FF38(v19, _s8MetadataV9CloudItemV6ObjectVMa_2);
        sub_226B2FF38(v22, _s8MetadataV9CloudItemV6ObjectVMa_2);
        return 0;
      }

      v39 = &v15[v35];
      v40 = v47;
      (*v46)(v47, v39, v4);
      sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578]);
      v50 = sub_226D6E35C();
      v41 = *v48;
      (*v48)(v40, v4);
      v41(v38, v4);
      sub_226AC47B0(v53, &qword_27D7A8BE0, &unk_226D718F0);
      v28 = v54;
      v37 = v55;
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v42 = v28[9];
    v43 = *&v22[v42];
    v44 = *&v19[v42];
    sub_226B2FF38(v19, _s8MetadataV9CloudItemV6ObjectVMa_2);
    sub_226B2FF38(v22, _s8MetadataV9CloudItemV6ObjectVMa_2);
    result = v43 == v44;
    if (v43 == v44)
    {
      v27 = v56 + v51;
      v26 = v37 + v51;
      v45 = v23-- == 1;
      v15 = v53;
      if (!v45)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

BOOL sub_226B2F288(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v19 = *a1;
  v20 = *a2;
  if ((sub_226D6EC3C() & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v21 = v7;
  v22 = *(a3(0) + 24);
  v23 = *(v15 + 48);
  sub_226AC40E8(a1 + v22, v18, &qword_27D7A8BE0, &unk_226D718F0);
  v24 = v21;
  sub_226AC40E8(a2 + v22, &v18[v23], &qword_27D7A8BE0, &unk_226D718F0);
  v25 = *(v21 + 48);
  if (v25(v18, 1, v6) == 1)
  {
    if (v25(&v18[v23], 1, v6) == 1)
    {
      sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_226AC40E8(v18, v14, &qword_27D7A8BE0, &unk_226D718F0);
  if (v25(&v18[v23], 1, v6) == 1)
  {
    (*(v21 + 8))(v14, v6);
LABEL_8:
    sub_226AC47B0(v18, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v21 + 32))(v10, &v18[v23], v6);
  sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v27 = sub_226D6E35C();
  v28 = *(v24 + 8);
  v28(v10, v6);
  v28(v14, v6);
  sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
  return (v27 & 1) != 0;
}

BOOL sub_226B2F60C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = (&v41 - v9);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C18, &qword_226D72BF0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v11;
  v12 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v41 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C28, &qword_226D72C00);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v41 - v24;
  v26 = *(v23 + 56);
  v45 = a1;
  sub_226AC40E8(a1, &v41 - v24, &qword_27D7A6C20, &qword_226D72BF8);
  v46 = a2;
  sub_226AC40E8(a2, &v25[v26], &qword_27D7A6C20, &qword_226D72BF8);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_226AC40E8(v25, v20, &qword_27D7A6C20, &qword_226D72BF8);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_226B2FFD8(&v25[v26], v16, _s8MetadataV9LocalItemV7ConsentVMa);
      v31 = sub_226B2F288(v20, v16, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226B2FF38(v16, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226B2FF38(v20, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226AC47B0(v25, &qword_27D7A6C20, &qword_226D72BF8);
      if (!v31)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_226B2FF38(v20, _s8MetadataV9LocalItemV7ConsentVMa);
LABEL_6:
    v28 = &qword_27D7A6C28;
    v29 = &qword_226D72C00;
    v30 = v25;
LABEL_14:
    sub_226AC47B0(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_226AC47B0(v25, &qword_27D7A6C20, &qword_226D72BF8);
LABEL_8:
  v32 = *(_s8MetadataV9LocalItemVMa_0(0) + 20);
  v33 = v44;
  v34 = *(v43 + 48);
  sub_226AC40E8(v45 + v32, v44, &qword_27D7A6C10, &unk_226D731E0);
  sub_226AC40E8(v46 + v32, v33 + v34, &qword_27D7A6C10, &unk_226D731E0);
  v35 = v48;
  v36 = *(v47 + 48);
  if (v36(v33, 1, v48) == 1)
  {
    if (v36(v33 + v34, 1, v35) == 1)
    {
      sub_226AC47B0(v33, &qword_27D7A6C10, &unk_226D731E0);
      return 1;
    }

    goto LABEL_13;
  }

  v37 = v42;
  sub_226AC40E8(v33, v42, &qword_27D7A6C10, &unk_226D731E0);
  if (v36(v33 + v34, 1, v35) == 1)
  {
    sub_226B2FF38(v37, _s8MetadataV9LocalItemV14PendingConsentVMa);
LABEL_13:
    v28 = &qword_27D7A6C18;
    v29 = &qword_226D72BF0;
    v30 = v33;
    goto LABEL_14;
  }

  v39 = v41;
  sub_226B2FFD8(v33 + v34, v41, _s8MetadataV9LocalItemV14PendingConsentVMa);
  v40 = sub_226B2F288(v37, v39, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226B2FF38(v39, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226B2FF38(v37, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226AC47B0(v33, &qword_27D7A6C10, &unk_226D731E0);
  return v40;
}

BOOL sub_226B2FBE8(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa_0(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV15LocalItemStatusOMa_0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C08, &qword_226D72BE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_226B30080(a1, &v23 - v16, _s8MetadataV15LocalItemStatusOMa_0);
  sub_226B30080(a2, &v17[v18], _s8MetadataV15LocalItemStatusOMa_0);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_226B30080(v17, v12, _s8MetadataV15LocalItemStatusOMa_0);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226B2FFD8(&v17[v18], v8, _s8MetadataV9LocalItemVMa_0);
      v21 = sub_226B2F60C(v12, v8);
      sub_226B2FF38(v8, _s8MetadataV9LocalItemVMa_0);
      sub_226B2FF38(v12, _s8MetadataV9LocalItemVMa_0);
      sub_226B2FF38(v17, _s8MetadataV15LocalItemStatusOMa_0);
      return v21;
    }

    sub_226B2FF38(v12, _s8MetadataV9LocalItemVMa_0);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_226AC47B0(v17, &qword_27D7A6C08, &qword_226D72BE8);
    return 0;
  }

  sub_226B2FF38(v17, _s8MetadataV15LocalItemStatusOMa_0);
  return 1;
}

uint64_t sub_226B2FF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B2FFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B30080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B300E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B30130(void *a1, void *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v17 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v18 = *(v17 + 20);
  if ((sub_226D6D4EC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v19 = a1;
  v20 = v5;
  v34 = v17;
  v21 = *(v17 + 24);
  v22 = *(v13 + 48);
  v32 = v19;
  sub_226AC40E8(v19 + v21, v16, &qword_27D7A8BE0, &unk_226D718F0);
  v33 = a2;
  sub_226AC40E8(a2 + v21, &v16[v22], &qword_27D7A8BE0, &unk_226D718F0);
  v23 = *(v20 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_12:
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v28 = *(v34 + 28);
      v29 = *(v32 + v28);
      v30 = *(v33 + v28);
      v24 = sub_226D6EC3C();
      return v24 & 1;
    }

    goto LABEL_8;
  }

  sub_226AC40E8(v16, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v20 + 8))(v12, v4);
LABEL_8:
    sub_226AC47B0(v16, &qword_27D7A6C30, &unk_226D74330);
    goto LABEL_9;
  }

  (*(v20 + 32))(v8, &v16[v22], v4);
  sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v26 = sub_226D6E35C();
  v27 = *(v20 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_9:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_226B304DC(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa_0(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C48, &qword_226D72C10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_226B30080(a1, &v22 - v16, _s8MetadataV15CloudItemStatusOMa_0);
  sub_226B30080(a2, &v17[v18], _s8MetadataV15CloudItemStatusOMa_0);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226B2FF38(v17, _s8MetadataV15CloudItemStatusOMa_0);
      return 1;
    }

    if (v19(&v17[v18], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226B30080(v17, v12, _s8MetadataV15CloudItemStatusOMa_0);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_226B2FFD8(&v17[v18], v8, _s8MetadataV9CloudItemVMa_0);
      if ((sub_226B30130(v12, v8) & 1) == 0 || (sub_226B30130((v12 + *(v4 + 20)), (v8 + *(v4 + 20))) & 1) == 0 || (sub_226B2E760(*(v12 + *(v4 + 24)), *(v8 + *(v4 + 24))) & 1) == 0)
      {
        sub_226B2FF38(v8, _s8MetadataV9CloudItemVMa_0);
        sub_226B2FF38(v12, _s8MetadataV9CloudItemVMa_0);
        sub_226B2FF38(v17, _s8MetadataV15CloudItemStatusOMa_0);
        return 0;
      }

      sub_226B2FF38(v8, _s8MetadataV9CloudItemVMa_0);
      sub_226B2FF38(v12, _s8MetadataV9CloudItemVMa_0);
      goto LABEL_8;
    }

    sub_226B2FF38(v12, _s8MetadataV9CloudItemVMa_0);
  }

LABEL_9:
  sub_226AC47B0(v17, &qword_27D7A6C48, &qword_226D72C10);
  return 0;
}

void sub_226B30888()
{
  _s8MetadataV9CloudItemV6ObjectVMa_0(319);
  if (v0 <= 0x3F)
  {
    sub_226B30C24(319, &qword_27D7A6C68, _s8MetadataV9CloudItemV6ObjectVMa_0, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226B30AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_226B30B38()
{
  sub_226D6D52C();
  if (v0 <= 0x3F)
  {
    sub_226B30C24(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226B30C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_226B30CD8()
{
  sub_226B30C24(319, &qword_27D7A6CC0, _s8MetadataV9LocalItemV7ConsentVMa, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_226B30C24(319, &qword_27D7A6CC8, _s8MetadataV9LocalItemV14PendingConsentVMa, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_38Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_226B30F50()
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v0 <= 0x3F)
  {
    sub_226B30C24(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B31064()
{
  result = _s8MetadataV15CloudItemStatusOMa_0(319);
  if (v1 <= 0x3F)
  {
    result = _s8MetadataV15LocalItemStatusOMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_226B31344()
{
  v1 = v0;
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8];
  v10 = sub_226D6921C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226B31754(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return sub_226B224FC(MEMORY[0x277D84F90]);
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v16 = *(v3 + 32);
    v16(v9, v13, v2);
    v16(v7, (v13 + v15), v2);
    v17 = sub_226D6B46C();
    v19 = v18;
    if (v17 == sub_226D6B46C() && v19 == v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_226D6F21C();
    }

    v26 = sub_226D6B44C();
    v28 = v27;
    v30 = v26 == sub_226D6B44C() && v28 == v29;
    v41 = v3;
    if (v30)
    {

      v40 = 1;
    }

    else
    {
      v40 = sub_226D6F21C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    v43 = 0;
    v44 = 0xE000000000000000;
    if (v22)
    {
      v32 = 1702195828;
    }

    else
    {
      v32 = 0x65736C6166;
    }

    if (v22)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x22AA8A510](v32, v33);

    v34 = v44;
    *(inited + 48) = v43;
    *(inited + 56) = v34;
    *(inited + 64) = 0xD000000000000016;
    *(inited + 72) = 0x8000000226D7F9A0;
    v43 = 0;
    v44 = 0xE000000000000000;
    if (v40)
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    if (v40)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x22AA8A510](v35, v36);

    v37 = v44;
    *(inited + 80) = v43;
    *(inited + 88) = v37;
    v24 = sub_226B224FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
    swift_arrayDestroy();
    v38 = *(v41 + 8);
    v38(v7, v2);
    v38(v9, v2);
  }

  else
  {
    v23 = *v13;
    swift_getErrorValue();
    v24 = sub_226B317B8(v42);
  }

  return v24;
}

uint64_t sub_226B31754(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6921C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226B317B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D6F44726F727265;
  v31 = v2;
  v32 = inited + 32;
  *(inited + 16) = xmmword_226D71840;
  *(inited + 40) = 0xEB000000006E6961;
  v12 = *(v4 + 16);
  v12(v10, v2, a1);
  v13 = sub_226D6F1FC();
  if (v13)
  {
    v14 = v13;
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    v14 = swift_allocError();
    (*(v4 + 32))(v15, v10, a1);
  }

  v16 = sub_226D6D03C();

  v17 = [v16 domain];
  v18 = sub_226D6E39C();
  v20 = v19;

  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  v34 = 0;
  v35 = 0xE000000000000000;
  v12(v8, v31, a1);
  v21 = sub_226D6F1FC();
  if (v21)
  {
    v22 = v21;
    (*(v4 + 8))(v8, a1);
  }

  else
  {
    v22 = swift_allocError();
    (*(v4 + 32))(v23, v8, a1);
  }

  v24 = sub_226D6D03C();

  v25 = [v24 code];
  v33 = v25;
  v26 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v26);

  v27 = v35;
  *(inited + 80) = v34;
  *(inited + 88) = v27;
  v28 = sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  return v28;
}

id sub_226B31B0C()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D1AC();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = sub_226D6AE8C();
  sub_226D6AE5C();
  v12 = [objc_opt_self() ephemeralSessionConfiguration];
  sub_226D67E6C();
  sub_226D67F0C();
  v13 = sub_226D6E36C();

  [v12 set:v13 sourceApplicationBundleIdentifier:?];

  v14 = sub_226D1EA08();
  v37 = v12;
  [v12 set:v14 appleIDContext:?];

  v15 = *(v1 + 8);
  v36 = v0;
  v15(v4, v0);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v17 = sub_226D69BDC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v35 = sub_226D69BCC();
    v20 = sub_226D676FC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_226D676EC();
    v49 = sub_226D6B5EC();
    v50 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(v48);
    sub_226D6B58C();
    sub_226D67E8C();
    sub_226D67F0C();
    v15(v4, v36);
    sub_226D6704C();
    v24 = sub_226D6BE5C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_226D6BE4C();
    v29 = v40;
    v28 = v41;
    (*(v40 + 16))(v38, v10, v41);
    v50 = MEMORY[0x277CC79A0];
    v49 = v17;
    v47 = MEMORY[0x277CC6D98];
    v48[0] = v35;
    v46 = v20;
    v45 = v23;
    v43 = v24;
    v44 = MEMORY[0x277CC8180];
    v42 = v27;
    v30 = *(v39 + 16);
    v31 = *(v11 + 48);
    v32 = *(v11 + 52);
    swift_allocObject();

    v33 = sub_226D6AE6C();
    (*(v29 + 8))(v10, v28);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226B31F10()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_226B31FA8()
{
  result = qword_2810623D8;
  if (!qword_2810623D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810623D8);
  }

  return result;
}

void sub_226B32000(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6713C();
  v10 = v9;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  v12 = __swift_project_value_buffer(v11, qword_28105F5E0);

  v33[2] = v12;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_226AC4530(v8, v10, &v34);
    _os_log_impl(&dword_226AB4000, v13, v14, "Reloading timeline for: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  sub_226D67EAC();
  sub_226D67F0C();
  (*(v4 + 8))(v7, v3);
  v18 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v19 = sub_226D6E36C();

  v20 = sub_226D6E36C();
  v21 = [v18 initWithExtensionBundleIdentifier:v19 kind:v20];

  v22 = sub_226D6E36C();
  v23 = [v21 reloadTimelineBudgetedWithReason_];

  if (v23)
  {

    v24 = v23;
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9CC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v27 = 136315394;
      v30 = sub_226AC4530(v8, v10, &v34);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2112;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v32;
      *v28 = v32;
      _os_log_impl(&dword_226AB4000, v25, v26, "Failed to reload timeline for %s: %@.", v27, 0x16u);
      sub_226AC47B0(v28, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_226B3241C(uint64_t a1)
{
  v179 = sub_226D6714C();
  v178 = *(v179 - 8);
  v2 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6828C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v191 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D38, &qword_226D730A0);
  v8 = *(*(v206 - 8) + 64);
  MEMORY[0x28223BE20](v206);
  v215 = &v176 - v9;
  v235 = sub_226D6D4AC();
  v10 = *(v235 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v235);
  v193 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v13 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v214 = &v176 - v14;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D40, &qword_226D730A8);
  v15 = *(*(v190 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v190);
  v189 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v225 = &v176 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v221 = &v176 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v192 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v237 = &v176 - v25;
  MEMORY[0x28223BE20](v24);
  v230 = &v176 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D48, &unk_226D730B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v212 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v211 = &v176 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v210 = &v176 - v34;
  MEMORY[0x28223BE20](v33);
  v217 = &v176 - v35;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v36 = *(*(v188 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v188);
  v187 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v201 = &v176 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v200 = &v176 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v209 = &v176 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v236 = &v176 - v46;
  MEMORY[0x28223BE20](v45);
  v231 = &v176 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v216 = &v176 - v50;
  v219 = sub_226D67C0C();
  v51 = *(v219 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v219);
  v208 = &v176 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v207 = &v176 - v56;
  MEMORY[0x28223BE20](v55);
  v234 = &v176 - v57;
  v58 = sub_226D6A2EC();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v229 = &v176 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_226D6E07C();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v176 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v62, qword_28105F710);
  v180 = v63;
  v68 = *(v63 + 16);
  v181 = v62;
  v68(v66, v67, v62);

  v220 = v66;
  v69 = sub_226D6E05C();
  v70 = sub_226D6E9AC();
  v71 = os_log_type_enabled(v69, v70);
  v228 = v4;
  if (v71)
  {
    v72 = v58;
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = *(a1 + 16);

    _os_log_impl(&dword_226AB4000, v69, v70, "Processing %ld account changes during Bank Connect widget refresh", v73, 0xCu);
    v74 = v73;
    v58 = v72;
    MEMORY[0x22AA8BEE0](v74, -1, -1);
  }

  else
  {
  }

  v76 = v231;
  v77 = *(a1 + 16);
  if (v77)
  {
    v79 = *(v59 + 16);
    v78 = v59 + 16;
    v203 = v79;
    v202 = (v51 + 48);
    v198 = (v51 + 32);
    v233 = (v51 + 8);
    v226 = (v5 + 56);
    v227 = (v10 + 56);
    v197 = (v10 + 48);
    v185 = (v10 + 32);
    v186 = (v10 + 8);
    v196 = (v5 + 48);
    v183 = (v5 + 32);
    v184 = (v5 + 8);
    v205 = (v78 - 8);
    v80 = a1 + ((*(v78 + 64) + 32) & ~*(v78 + 64));
    v204 = v78;
    v195 = *(v78 + 56);
    *&v75 = 136315906;
    v182 = v75;
    v81 = v219;
    v82 = v217;
    v83 = v216;
    v199 = v58;
    v79(v229, v80, v58);
    while (1)
    {
      sub_226D6A2DC();
      if ((*v202)(v83, 1, v81) == 1)
      {
        break;
      }

      v223 = v80;
      (*v198)(v234, v83, v81);
      sub_226D67BBC();
      v86 = sub_226D69C2C();
      v87 = *(v86 - 8);
      v88 = *(v87 + 48);
      v89 = v88(v82, 1, v86);
      v224 = v77;
      if (v89 == 1)
      {
        sub_226AC47B0(v82, &qword_27D7A6D48, &unk_226D730B0);
        v90 = 1;
      }

      else
      {
        sub_226D69C0C();
        (*(v87 + 8))(v82, v86);
        v90 = 0;
      }

      v91 = v76;
      v92 = *v227;
      (*v227)(v91, v90, 1, v235);
      v93 = v207;
      sub_226D6A2BC();
      v94 = v210;
      sub_226D67BBC();
      v232 = *v233;
      v232(v93, v81);
      if (v88(v94, 1, v86) == 1)
      {
        sub_226AC47B0(v94, &qword_27D7A6D48, &unk_226D730B0);
        v95 = 1;
        v96 = v236;
      }

      else
      {
        v96 = v236;
        sub_226D69C0C();
        (*(v87 + 8))(v94, v86);
        v95 = 0;
      }

      v92(v96, v95, 1, v235);
      v97 = v211;
      sub_226D67BBC();
      if (v88(v97, 1, v86) == 1)
      {
        sub_226AC47B0(v97, &qword_27D7A6D48, &unk_226D730B0);
        v98 = 1;
        v99 = v230;
      }

      else
      {
        v99 = v230;
        sub_226D69C1C();
        (*(v87 + 8))(v97, v86);
        v98 = 0;
      }

      v100 = *v226;
      (*v226)(v99, v98, 1, v228);
      v101 = v208;
      sub_226D6A2BC();
      v102 = v212;
      sub_226D67BBC();
      v232(v101, v81);
      if (v88(v102, 1, v86) == 1)
      {
        sub_226AC47B0(v102, &qword_27D7A6D48, &unk_226D730B0);
        v103 = 1;
      }

      else
      {
        sub_226D69C1C();
        (*(v87 + 8))(v102, v86);
        v103 = 0;
      }

      v104 = v235;
      v105 = v197;
      v106 = v209;
      v107 = v228;
      v100(v237, v103, 1, v228);
      v108 = *(v213 + 48);
      v109 = v214;
      sub_226AC40E8(v231, v214, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(v236, v109 + v108, &qword_27D7A8BE0, &unk_226D718F0);
      v110 = *v105;
      if ((*v105)(v109, 1, v104) == 1)
      {
        v111 = v110(v109 + v108, 1, v104);
        v112 = v230;
        v113 = v215;
        if (v111 != 1)
        {
          goto LABEL_41;
        }

        sub_226AC47B0(v109, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        sub_226AC40E8(v109, v106, &qword_27D7A8BE0, &unk_226D718F0);
        v114 = v110(v109 + v108, 1, v104);
        v113 = v215;
        if (v114 == 1)
        {
          (*v186)(v106, v104);
          v112 = v230;
LABEL_41:
          v166 = &qword_27D7A6C30;
          v167 = &unk_226D74330;
          v168 = v109;
LABEL_44:
          sub_226AC47B0(v168, v166, v167);
LABEL_45:
          v159 = v220;
          v169 = sub_226D6E05C();
          v170 = sub_226D6E9EC();
          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            *v171 = 0;
            _os_log_impl(&dword_226AB4000, v169, v170, "The account balance was updated, refreshed Bank Connect widget", v171, 2u);
            MEMORY[0x22AA8BEE0](v171, -1, -1);
          }

          v172 = v178;
          v173 = v177;
          v174 = v179;
          (*(v178 + 104))(v177, *MEMORY[0x277CC6B40], v179);
          sub_226B32000(v173, 0xD000000000000013);
          (*(v172 + 8))(v173, v174);
          sub_226AC47B0(v237, &qword_27D7A6D40, &qword_226D730A8);
          sub_226AC47B0(v112, &qword_27D7A6D40, &qword_226D730A8);
          sub_226AC47B0(v236, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v231, &qword_27D7A8BE0, &unk_226D718F0);
          v232(v234, v219);
          v58 = v199;
          goto LABEL_48;
        }

        v115 = v193;
        (*v185)(v193, v109 + v108, v104);
        sub_226B33D28(&qword_27D7A6C38, MEMORY[0x277CC9578]);
        v116 = sub_226D6E35C();
        v117 = *v186;
        (*v186)(v115, v104);
        v117(v106, v104);
        sub_226AC47B0(v109, &qword_27D7A8BE0, &unk_226D718F0);
        v112 = v230;
        if ((v116 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v118 = *(v206 + 48);
      sub_226AC40E8(v112, v113, &qword_27D7A6D40, &qword_226D730A8);
      sub_226AC40E8(v237, v113 + v118, &qword_27D7A6D40, &qword_226D730A8);
      v119 = *v196;
      if ((*v196)(v113, 1, v107) == 1)
      {
        if (v119(v113 + v118, 1, v107) != 1)
        {
          goto LABEL_43;
        }

        sub_226AC47B0(v113, &qword_27D7A6D40, &qword_226D730A8);
      }

      else
      {
        v120 = v192;
        sub_226AC40E8(v113, v192, &qword_27D7A6D40, &qword_226D730A8);
        if (v119(v113 + v118, 1, v107) == 1)
        {
          (*v184)(v120, v107);
LABEL_43:
          v166 = &qword_27D7A6D38;
          v167 = &qword_226D730A0;
          v168 = v113;
          goto LABEL_44;
        }

        v121 = v191;
        (*v183)(v191, v113 + v118, v107);
        sub_226B33D28(&qword_27D7A6D58, MEMORY[0x277CC7258]);
        v122 = sub_226D6E35C();
        v123 = *v184;
        (*v184)(v121, v107);
        v123(v120, v107);
        sub_226AC47B0(v113, &qword_27D7A6D40, &qword_226D730A8);
        if ((v122 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v124 = v231;
      v125 = v200;
      sub_226AC40E8(v231, v200, &qword_27D7A8BE0, &unk_226D718F0);
      v126 = v236;
      v127 = v201;
      sub_226AC40E8(v236, v201, &qword_27D7A8BE0, &unk_226D718F0);
      v128 = v221;
      sub_226AC40E8(v112, v221, &qword_27D7A6D40, &qword_226D730A8);
      v129 = v225;
      sub_226AC40E8(v237, v225, &qword_27D7A6D40, &qword_226D730A8);
      v130 = sub_226D6E05C();
      v131 = sub_226D6E9AC();
      v222 = v130;
      v218 = v131;
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = v127;
        v194 = swift_slowAlloc();
        v238 = v194;
        *v132 = v182;
        v134 = v187;
        sub_226AC40E8(v125, v187, &qword_27D7A8BE0, &unk_226D718F0);
        v135 = sub_226D6E3FC();
        v137 = v136;
        sub_226AC47B0(v125, &qword_27D7A8BE0, &unk_226D718F0);
        v138 = sub_226AC4530(v135, v137, &v238);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2080;
        sub_226AC40E8(v133, v134, &qword_27D7A8BE0, &unk_226D718F0);
        v139 = sub_226D6E3FC();
        v141 = v140;
        sub_226AC47B0(v133, &qword_27D7A8BE0, &unk_226D718F0);
        v142 = sub_226AC4530(v139, v141, &v238);

        *(v132 + 14) = v142;
        *(v132 + 22) = 2080;
        v143 = v221;
        v144 = v189;
        sub_226AC40E8(v221, v189, &qword_27D7A6D40, &qword_226D730A8);
        v145 = sub_226D6E3FC();
        v147 = v146;
        sub_226AC47B0(v143, &qword_27D7A6D40, &qword_226D730A8);
        v148 = sub_226AC4530(v145, v147, &v238);

        *(v132 + 24) = v148;
        *(v132 + 32) = 2080;
        sub_226AC40E8(v225, v144, &qword_27D7A6D40, &qword_226D730A8);
        v149 = v225;
        v150 = sub_226D6E3FC();
        v152 = v151;
        sub_226AC47B0(v149, &qword_27D7A6D40, &qword_226D730A8);
        v153 = sub_226AC4530(v150, v152, &v238);
        v76 = v231;

        *(v132 + 34) = v153;
        v154 = v222;
        _os_log_impl(&dword_226AB4000, v222, v218, "Bank Connect widget refresh is not needed. Old timestamp: %s, new timestamp: %s. Old balance: %s, new balance: %s", v132, 0x2Au);
        v155 = v194;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v155, -1, -1);
        MEMORY[0x22AA8BEE0](v132, -1, -1);

        sub_226AC47B0(v237, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v230, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v236, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v76, &qword_27D7A8BE0, &unk_226D718F0);
        v81 = v219;
        v232(v234, v219);
        v84 = v229;
        v58 = v199;
        (*v205)(v229, v199);
        v82 = v217;
        v85 = v224;
      }

      else
      {

        sub_226AC47B0(v129, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v128, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v127, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v125, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v237, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v112, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v126, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v124, &qword_27D7A8BE0, &unk_226D718F0);
        v81 = v219;
        v232(v234, v219);
        v84 = v229;
        v58 = v199;
        (*v205)(v229, v199);
        v82 = v217;
        v85 = v224;
        v76 = v124;
      }

      v80 = v223 + v195;
      v77 = v85 - 1;
      v83 = v216;
      if (!v77)
      {
        goto LABEL_36;
      }

      v203(v84, v80, v58);
    }

    sub_226AC47B0(v83, &qword_27D7A6D50, &unk_226D75230);
    v160 = v178;
    v161 = v177;
    v162 = v179;
    (*(v178 + 104))(v177, *MEMORY[0x277CC6B40], v179);
    sub_226B32000(v161, 0xD000000000000017);
    (*(v160 + 8))(v161, v162);
    v159 = v220;
    v163 = sub_226D6E05C();
    v164 = sub_226D6E9EC();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_226AB4000, v163, v164, "New account was inserted, refreshed Bank Connect widget", v165, 2u);
      MEMORY[0x22AA8BEE0](v165, -1, -1);
    }

LABEL_48:
    v158 = v180;
    (*v205)(v229, v58);
    v156 = 1;
    v157 = v181;
  }

  else
  {
LABEL_36:
    v156 = 0;
    v157 = v181;
    v158 = v180;
    v159 = v220;
  }

  (*(v158 + 8))(v159, v157);
  return v156;
}

uint64_t sub_226B33D28(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_226B33D70(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x22AA8A610](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      result = sub_226D6E65C();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_226B33EB4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

double sub_226B33F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_226D6787C();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {

    goto LABEL_10;
  }

  v11 = sub_226D6F21C();

  if (v11)
  {
LABEL_10:
    v17 = &type metadata for AccountTombstone;
    v18 = &off_283A6EB28;
LABEL_11:
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    return result;
  }

  sub_226D697AC();
  v13 = [swift_getObjCClassFromMetadata() entityName];
  v14 = sub_226D6E39C();
  v16 = v15;

  if (v14 == a1 && v16 == a2)
  {

LABEL_13:
    v17 = &type metadata for AccountBalanceTombstone;
    v18 = &off_283A6EB48;
    goto LABEL_11;
  }

  v19 = sub_226D6F21C();

  if (v19)
  {
    goto LABEL_13;
  }

  sub_226D6845C();
  v20 = [swift_getObjCClassFromMetadata() entityName];
  v21 = sub_226D6E39C();
  v23 = v22;

  if (v21 == a1 && v23 == a2)
  {

LABEL_18:
    v17 = &type metadata for TransactionTombstone;
    v18 = &off_283A6EB68;
    goto LABEL_11;
  }

  v24 = sub_226D6F21C();

  if (v24)
  {
    goto LABEL_18;
  }

  sub_226D6794C();
  v25 = [swift_getObjCClassFromMetadata() entityName];
  v26 = sub_226D6E39C();
  v28 = v27;

  if (v26 == a1 && v28 == a2)
  {

LABEL_23:
    v17 = &type metadata for ConsentTombstone;
    v18 = &off_283A6EB88;
    goto LABEL_11;
  }

  v29 = sub_226D6F21C();

  if (v29)
  {
    goto LABEL_23;
  }

  sub_226D6C5CC();
  v30 = [swift_getObjCClassFromMetadata() entityName];
  v31 = sub_226D6E39C();
  v33 = v32;

  if (v31 == a1 && v33 == a2)
  {

LABEL_28:
    v17 = &type metadata for FinHealthTransactionEntityGroupTombstone;
    v18 = &off_283A6EBA8;
    goto LABEL_11;
  }

  v34 = sub_226D6F21C();

  if (v34)
  {
    goto LABEL_28;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

BOOL sub_226B34224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (sub_226D6EDFC())
  {
    return 0;
  }

LABEL_5:
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (sub_226D6EDFC())
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 16) == 0;
}

uint64_t sub_226B342A8(uint64_t a1, uint64_t a2)
{
  v235 = a2;
  *&v246 = a1;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D60, &qword_226D73118);
  v3 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v225 = &v217[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v238 = &v217[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v224 = &v217[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v236 = &v217[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v231 = &v217[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v232 = &v217[-v17];
  MEMORY[0x28223BE20](v16);
  v241 = &v217[-v18];
  v244 = sub_226D6D52C();
  v19 = *(v244 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v244);
  v223 = &v217[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v222 = &v217[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v229 = &v217[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v230 = &v217[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v217[-v30];
  MEMORY[0x28223BE20](v29);
  v237 = &v217[-v31];
  v32 = sub_226D6A34C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v217[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_226D67F1C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v217[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v261 = MEMORY[0x277D84FA0];
  v260 = MEMORY[0x277D84FA0];
  v42 = type metadata accessor for HistoricalChangesParser();
  v43 = *(v38 + 16);
  v227 = v42[7];
  v43(v41, &v2[v227], v37);
  (*(v33 + 16))(v36, &v2[v42[5]], v32);
  v243 = v42;
  v44 = v42[6];
  v249 = v2;
  v45 = *&v2[v44];
  v242 = sub_226B724B0(v41, v36, v45);
  v46 = *(v246 + 16);
  v239 = v19;
  v247 = v45;
  v251 = v46;
  if (v46)
  {
    v47 = 0;
    *&v250 = v246 + 32;
    v233 = (v19 + 48);
    v221 = (v19 + 32);
    v234 = (v19 + 8);
    v220 = (v19 + 16);
    v219 = (v19 + 56);
    v240 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_226AE532C(v250 + 40 * v47, &v257);
      v48 = v258;
      v49 = v259;
      __swift_project_boxed_opaque_existential_1(&v257, v258);
      v50 = (*(v49 + 8))(v48, v49);
      if (!v51)
      {
        goto LABEL_5;
      }

      v52 = v50;
      v53 = v51;
      v54 = v258;
      v55 = v259;
      __swift_project_boxed_opaque_existential_1(&v257, v258);
      v56 = (*(v55 + 32))(v45, v54, v55);
      v41 = v258;
      v57 = v259;
      __swift_project_boxed_opaque_existential_1(&v257, v258);
      v58 = (*(v57 + 16))(v41, v57);
      v59 = v249;
      v60 = v52 == *v249 && v53 == v249[1];
      v61 = v60;
      if (!v58)
      {
        break;
      }

      if (v58 != 1)
      {
        if (!v61)
        {
          v66 = sub_226D6F21C();

          if ((v66 & 1) == 0)
          {
LABEL_28:

            goto LABEL_5;
          }

          goto LABEL_4;
        }

LABEL_3:

        goto LABEL_4;
      }

      if (v61 || (sub_226D6F21C() & 1) != 0 || *(*(v59 + *(v243 + 32)) + 16) && (, sub_226C2FDD4(v52, v53), v41 = v62, , (v41 & 1) != 0))
      {
        sub_226B33F30(v52, v53, &v252);

        if (v253)
        {
          sub_226AC484C(&v252, &v254);
          v63 = v261;
          sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
          if ((v63 & 0xC000000000000001) != 0)
          {
            v41 = v56;
            v64 = sub_226D6EE3C();

            if (v64)
            {
              goto LABEL_22;
            }

LABEL_35:
            LODWORD(v245) = 0;
          }

          else
          {
            if (!*(v63 + 16))
            {
              goto LABEL_35;
            }

            v67 = *(v63 + 40);
            v68 = sub_226D6EC2C();
            v69 = -1 << *(v63 + 32);
            v70 = v68 & ~v69;
            if (((*(v63 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_35;
            }

            v71 = ~v69;
            while (1)
            {
              v41 = *(*(v63 + 48) + 8 * v70);
              v72 = sub_226D6EC3C();

              if (v72)
              {
                break;
              }

              v70 = (v70 + 1) & v71;
              if (((*(v63 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
              {
                goto LABEL_35;
              }
            }

LABEL_22:

            LODWORD(v245) = 1;
          }

          v73 = v260;
          if ((v260 & 0xC000000000000001) != 0)
          {
            v74 = v56;
            v75 = sub_226D6EE3C();

            if (v75)
            {
              goto LABEL_38;
            }

LABEL_44:
            if (v245)
            {

              goto LABEL_46;
            }

            v83 = v255;
            v84 = v256;
            __swift_project_boxed_opaque_existential_1(&v254, v255);
            v85 = v258;
            v86 = v259;
            __swift_project_boxed_opaque_existential_1(&v257, v258);
            v87 = (*(v86 + 24))(v85, v86);
            v88 = v248;
            (*(v84 + 8))(v87, v83, v84);
            if (v88)
            {

              __swift_destroy_boxed_opaque_existential_0Tm(&v254);
              return __swift_destroy_boxed_opaque_existential_0Tm(&v257);
            }

            v89 = v256;
            v248 = __swift_project_boxed_opaque_existential_1(&v254, v255);
            v90 = v258;
            v91 = v259;
            __swift_project_boxed_opaque_existential_1(&v257, v258);
            (*(v91 + 24))(v90, v91);
            (*(v89 + 16))();

            v41 = v256;
            v248 = __swift_project_boxed_opaque_existential_1(&v254, v255);
            v92 = v258;
            v93 = v259;
            __swift_project_boxed_opaque_existential_1(&v257, v258);
            (*(v93 + 24))(v92, v93);
            (*(v41 + 24))();
            v248 = 0;

            v94 = v244;
            if (!v242)
            {
              v45 = v247;
              v97 = v236;
              goto LABEL_54;
            }

            v95 = v232;
            sub_226B36DE0(v241, v232);
            v96 = (*v233)(v95, 1, v94);
            v45 = v247;
            v97 = v236;
            if (v96 == 1)
            {

              sub_226AC47B0(v95, &qword_27D7A6D68, &qword_226D75210);
              goto LABEL_60;
            }

            v98 = v228;
            v99 = (*v221)(v228, v95, v94);
            MEMORY[0x28223BE20](v99);
            v100 = v238;
            *&v217[-16] = v98;
            *&v217[-8] = v100;
            v101 = v248;
            v102 = sub_226CCB4D4(sub_226B36EA8, &v217[-32], v242);
            v248 = v101;
            v94 = v244;
            (*v234)(v98, v244);
            if (v102)
            {
LABEL_54:
              v103 = v231;
              sub_226B36DE0(v235, v231);
              v104 = *v233;
              if ((*v233)(v103, 1, v94) == 1)
              {
                sub_226AC47B0(v103, &qword_27D7A6D68, &qword_226D75210);
                goto LABEL_65;
              }

              v105 = v103;
              v106 = *v221;
              v107 = v230;
              (*v221)(v230, v105, v94);
              v245 = *v220;
              v245(v97, v107, v94);
              (*v219)(v97, 0, 1, v94);
              v108 = v94;
              v109 = *(v226 + 48);
              v110 = v97;
              v41 = v97;
              v111 = v225;
              sub_226B36DE0(v110, v225);
              sub_226B36DE0(v241, &v111[v109]);
              if (v104(v111, 1, v108) == 1)
              {
                sub_226AC47B0(v41, &qword_27D7A6D68, &qword_226D75210);
                if (v104(&v111[v109], 1, v108) == 1)
                {
                  sub_226AC47B0(v111, &qword_27D7A6D68, &qword_226D75210);
                  v45 = v247;
                  v41 = v234;
                  goto LABEL_70;
                }

LABEL_63:
                sub_226AC47B0(v111, &qword_27D7A6D60, &qword_226D73118);
                v113 = *v234;
                v45 = v247;
                goto LABEL_64;
              }

              v41 = v224;
              sub_226B36DE0(v111, v224);
              if (v104(&v111[v109], 1, v108) == 1)
              {
                sub_226AC47B0(v236, &qword_27D7A6D68, &qword_226D75210);
                (*v234)(v41, v108);
                goto LABEL_63;
              }

              v118 = v229;
              v106(v229, &v111[v109], v108);
              sub_226B36E50();
              v218 = sub_226D6E35C();
              v41 = v234;
              v113 = *v234;
              (*v234)(v118, v108);
              sub_226AC47B0(v236, &qword_27D7A6D68, &qword_226D75210);
              v113(v224, v108);
              sub_226AC47B0(v111, &qword_27D7A6D68, &qword_226D75210);
              v45 = v247;
              if (v218)
              {
LABEL_70:
                v119 = v229;
                v120 = v244;
                v245(v229, v237, v244);
                v121 = v240;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v252 = v121;
                sub_226BE5A6C(v119, v56, isUniquelyReferenced_nonNull_native);

                v123 = *v41;
                (*v41)(v230, v120);
                sub_226AC47B0(v241, &qword_27D7A6D68, &qword_226D75210);
                v123(v237, v120);
LABEL_71:
                v240 = v252;
LABEL_72:
                sub_226AC47B0(v238, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_73:
                __swift_destroy_boxed_opaque_existential_0Tm(&v254);
                goto LABEL_5;
              }

LABEL_64:
              v114 = v244;
              v113(v230, v244);
              v94 = v114;
LABEL_65:
              if (v104(v235, 1, v94) == 1)
              {
                v41 = v229;
                v115 = v237;
                (*v220)(v229, v237, v94);
                v116 = v240;
                v117 = swift_isUniquelyReferenced_nonNull_native();
                *&v252 = v116;
                sub_226BE5A6C(v41, v56, v117);

                sub_226AC47B0(v241, &qword_27D7A6D68, &qword_226D75210);
                (*v234)(v115, v94);
                goto LABEL_71;
              }

              v112 = v241;
            }

            else
            {

LABEL_60:
              v112 = v241;
            }

            sub_226AC47B0(v112, &qword_27D7A6D68, &qword_226D75210);
            (*v234)(v237, v94);
            goto LABEL_72;
          }

          if (!*(v260 + 16))
          {
            goto LABEL_44;
          }

          v77 = *(v260 + 40);
          v78 = sub_226D6EC2C();
          v79 = -1 << *(v73 + 32);
          v80 = v78 & ~v79;
          if (((*(v73 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
            goto LABEL_44;
          }

          v81 = ~v79;
          while (1)
          {
            v41 = *(*(v73 + 48) + 8 * v80);
            v82 = sub_226D6EC3C();

            if (v82)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v73 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

LABEL_38:
          v76 = sub_226D557F0(v56);

LABEL_46:
          v45 = v247;
          goto LABEL_73;
        }

        sub_226AC47B0(&v252, &qword_27D7A6D98, &unk_226D73140);
      }

      else
      {
      }

LABEL_5:
      ++v47;
      __swift_destroy_boxed_opaque_existential_0Tm(&v257);
      if (v47 == v251)
      {
        goto LABEL_76;
      }
    }

    if (v61)
    {
      goto LABEL_3;
    }

    v65 = sub_226D6F21C();

    if ((v65 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_4:
    sub_226C264CC(&v254, v56);

    goto LABEL_5;
  }

  v240 = MEMORY[0x277D84F98];
LABEL_76:

  v125 = v249;
  v126 = *(v249 + *(v243 + 32));
  MEMORY[0x28223BE20](v124);
  *&v217[-16] = v125;
  *&v217[-8] = v126;

  v127 = v248;
  v128 = sub_226B33EB4(MEMORY[0x277D84F98], sub_226B36DA8, &v217[-32], v246);
  v129 = v128;
  v130 = v127;
  v131 = *(v128 + 16);
  v251 = v126;
  if (v131)
  {
    v248 = v127;
    v132 = MEMORY[0x277D84F90];
    v257 = MEMORY[0x277D84F90];
    v133 = v128 + 64;
    v134 = 1 << *(v128 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & *(v128 + 64);
    v137 = (v134 + 63) >> 6;

    v138 = 0;
    v250 = xmmword_226D70840;
    while (v136)
    {
      v139 = v136;
LABEL_87:
      v136 = (v139 - 1) & v139;
      if (*(v126 + 16))
      {
        v141 = __clz(__rbit64(v139)) | (v138 << 6);
        v142 = (*(v129 + 48) + 16 * v141);
        v41 = *(*(v129 + 56) + 8 * v141);
        v143 = *v142;
        v144 = v142[1];

        v145 = sub_226C2FDD4(v143, v144);
        if (v146)
        {
          v147 = *(v251 + 56) + 16 * v145;
          v148 = *(v147 + 8);
          v245 = *v147;
          v243 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v149 = swift_allocObject();
          *(v149 + 16) = v250;
          *(v149 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D70, &qword_226D73128);
          *(v149 + 64) = sub_226AC4194(&qword_27D7A6D78, &qword_27D7A6D70, &qword_226D73128);
          *(v149 + 32) = v41;

          v245 = sub_226D6E91C();

          MEMORY[0x22AA8A610](v150);
          if (*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v151 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_226D6E61C();
          }

          sub_226D6E65C();
          v132 = v257;
          v126 = v251;
        }

        else
        {

          v126 = v251;
        }
      }
    }

    v45 = v247;
    while (1)
    {
      v140 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        __break(1u);
        goto LABEL_146;
      }

      if (v140 >= v137)
      {
        break;
      }

      v139 = *(v133 + 8 * v140);
      ++v138;
      if (v139)
      {
        v138 = v140;
        goto LABEL_87;
      }
    }

    v125 = v249;
    v152 = *v249;
    v153 = v249[1];
    v154 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v155 = sub_226D6E36C();
    v156 = [v154 initWithEntityName_];

    [v156 setResultType_];
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v157 = sub_226D6E5CC();

    v158 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v156 setPredicate_];
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v159 = v248;
    v160 = sub_226D6EBBC();
    v130 = v159;
    if (v159)
    {

      goto LABEL_137;
    }

    v132 = v160;
    if (!(v160 >> 62))
    {
      v161 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v161)
      {
        goto LABEL_98;
      }

LABEL_105:

      goto LABEL_106;
    }

    v161 = sub_226D6EDFC();
    if (!v161)
    {
      goto LABEL_105;
    }

LABEL_98:
    if (v161 >= 1)
    {
      if ((v132 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v161; ++i)
        {
          v163 = MEMORY[0x22AA8AFD0](i, v132);
          sub_226C264CC(&v257, v163);
        }
      }

      else
      {
        v164 = 32;
        do
        {
          sub_226C264CC(&v257, *(v132 + v164));

          v164 += 8;
          --v161;
        }

        while (v161);
      }

      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_106:

  sub_226D683BC();
  v165 = [swift_getObjCClassFromMetadata() entityName];
  if (!v165)
  {
    sub_226D6E39C();
    v165 = sub_226D6E36C();
  }

  v166 = [objc_opt_self() entityForName:v165 inManagedObjectContext:v45];

  v167 = *v125;
  v168 = v125[1];
  *&v250 = sub_226D6787C();
  v169 = [swift_getObjCClassFromMetadata() entityName];
  v170 = sub_226D6E39C();
  v172 = v171;

  if (v167 == v170 && v168 == v172)
  {
  }

  else
  {
    v174 = sub_226D6F21C();

    if ((v174 & 1) == 0)
    {

      goto LABEL_151;
    }
  }

  if (!v166)
  {
LABEL_151:

    return v261;
  }

  MEMORY[0x28223BE20](v173);
  *&v217[-16] = v125;
  *&v217[-8] = v166;
  v175 = sub_226B33D70(sub_226B36DC4, &v217[-32], v246);
  v176 = v175;
  if (!(v175 >> 62))
  {
    if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_115;
    }

LABEL_150:

    goto LABEL_151;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_150;
  }

LABEL_115:
  v245 = v166;
  v249 = sub_226D6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_226D71F40;
  v178 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v179 = swift_allocObject();
  v246 = xmmword_226D70840;
  *(v179 + 16) = xmmword_226D70840;
  *(v179 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D80, &qword_226D73138);
  *(v179 + 64) = sub_226AC4194(&qword_27D7A6D88, &qword_27D7A6D80, &qword_226D73138);
  *(v179 + 32) = v176;
  *(v177 + 32) = sub_226D6E91C();
  *(v177 + 40) = sub_226D6834C();
  v180 = sub_226D6E5CC();

  v181 = [objc_opt_self() andPredicateWithSubpredicates_];

  v41 = v249;
  [v249 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v182 = swift_allocObject();
  v183 = MEMORY[0x277D837D0];
  *(v182 + 16) = v246;
  *(v182 + 56) = v183;
  *(v182 + 32) = 0x49746E756F636361;
  *(v182 + 40) = 0xE900000000000044;
  v184 = sub_226D6E5CC();

  [v41 setPropertiesToFetch_];

  v185 = sub_226D6EBBC();
  if (v130)
  {
    goto LABEL_136;
  }

  v132 = v185;
  v242 = v178;
  v248 = 0;
  if (!(v185 >> 62))
  {
    v186 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_118;
  }

LABEL_155:
  v186 = sub_226D6EDFC();
LABEL_118:
  v187 = v223;
  v188 = v222;
  if (v186)
  {
    v257 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v186 & ~(v186 >> 63), 0);
    if (v186 < 0)
    {
      __break(1u);
      goto LABEL_157;
    }

    v189 = v257;
    if ((v132 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v186; ++j)
      {
        MEMORY[0x22AA8AFD0](j, v132);
        v191 = [swift_unknownObjectRetain() accountID];
        sub_226D6D4FC();
        swift_unknownObjectRelease_n();

        v257 = v189;
        v193 = v189[2];
        v192 = v189[3];
        if (v193 >= v192 >> 1)
        {
          sub_226AE20D4(v192 > 1, v193 + 1, 1);
          v189 = v257;
        }

        v189[2] = v193 + 1;
        (*(v239 + 32))(v189 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v193, v188, v244);
      }
    }

    else
    {
      v196 = 32;
      do
      {
        v197 = *(v132 + v196);
        v198 = [v197 accountID];
        sub_226D6D4FC();

        v257 = v189;
        v200 = v189[2];
        v199 = v189[3];
        if (v200 >= v199 >> 1)
        {
          sub_226AE20D4(v199 > 1, v200 + 1, 1);
          v189 = v257;
        }

        v189[2] = v200 + 1;
        (*(v239 + 32))(v189 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v200, v187, v244);
        v196 += 8;
        --v186;
      }

      while (v186);
    }

    v194 = v248;
  }

  else
  {

    v189 = MEMORY[0x277D84F90];
    v194 = v248;
  }

  v41 = sub_226D6786C();
  v201 = swift_allocObject();
  *(v201 + 16) = v246;
  *(v201 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6060, &qword_226D70A78);
  *(v201 + 64) = sub_226AC4194(&qword_27D7A6D90, &qword_27D7A6060, &qword_226D70A78);
  *(v201 + 32) = v189;
  v202 = sub_226D6E91C();
  [v41 setPredicate_];

  [v41 setReturnsObjectsAsFaults_];
  [v41 setIncludesPropertyValues_];
  v203 = sub_226D6EBBC();
  if (!v194)
  {
    v132 = v203;
    v188 = v249;
    if (!(v203 >> 62))
    {
      v45 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_140:
        v257 = MEMORY[0x277D84F90];
        result = sub_226D6EF8C();
        if (v45 < 0)
        {
          __break(1u);
          goto LABEL_173;
        }

        if ((v132 & 0xC000000000000001) != 0)
        {
          v204 = 0;
          do
          {
            v205 = v204 + 1;
            v206 = [MEMORY[0x22AA8AFD0]() objectID];
            swift_unknownObjectRelease();
            sub_226D6EF6C();
            v207 = *(v257 + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
            v204 = v205;
          }

          while (v45 != v205);
        }

        else
        {
LABEL_146:
          v208 = 32;
          do
          {
            v209 = [*(v132 + v208) objectID];
            sub_226D6EF6C();
            v210 = *(v257 + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
            v208 += 8;
            --v45;
          }

          while (v45);
        }

        v211 = v257;
        v212 = v245;
        v188 = v249;
        goto LABEL_159;
      }

LABEL_158:

      v211 = MEMORY[0x277D84F90];
      v212 = v245;
LABEL_159:
      if (v211 >> 62)
      {
        result = sub_226D6EDFC();
        v213 = result;
        if (result)
        {
LABEL_161:
          if (v213 >= 1)
          {
            if ((v211 & 0xC000000000000001) != 0)
            {
              for (k = 0; k != v213; ++k)
              {
                v215 = MEMORY[0x22AA8AFD0](k, v211);
                sub_226C264CC(&v257, v215);
              }
            }

            else
            {
              v216 = 32;
              do
              {
                sub_226C264CC(&v257, *(v211 + v216));

                v216 += 8;
                --v213;
              }

              while (v213);
            }

            goto LABEL_151;
          }

LABEL_173:
          __break(1u);
          return result;
        }
      }

      else
      {
        v213 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v213)
        {
          goto LABEL_161;
        }
      }

      goto LABEL_151;
    }

LABEL_157:
    v45 = sub_226D6EDFC();
    if (v45)
    {
      goto LABEL_140;
    }

    goto LABEL_158;
  }

LABEL_136:
LABEL_137:
}

void sub_226B36448(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  v13 = v6[3];
  v12 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  v14 = type metadata accessor for HistoricalChangesParser();
  v15 = (*(v12 + 32))(*(a3 + *(v14 + 24)), v13, v12);
  v16 = v6[3];
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v16);
  if ((*(v17 + 16))(v16, v17) != 2)
  {

    return;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(a4 + 16) || (sub_226C2FDD4(v9, v11), (v18 & 1) == 0))
  {

LABEL_12:

    return;
  }

  v19 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a1;
  v31 = v21;
  v23 = sub_226C2FDD4(v9, v11);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v6) = v22;
  if (v21[3] >= v26)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v21;
      if (v22)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_226C363E8(v23, v9, v11, MEMORY[0x277D84FA0], v21);
      goto LABEL_19;
    }

LABEL_17:
    sub_226C38928();
    v21 = v31;
    *a1 = v31;
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_226C32998(v26, isUniquelyReferenced_nonNull_native);
  v21 = v31;
  v27 = sub_226C2FDD4(v9, v11);
  if ((v6 & 1) == (v28 & 1))
  {
    v23 = v27;
    *a1 = v31;
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:

LABEL_19:
    v29 = v21[7] + 8 * v23;
    sub_226C264CC(&v31, v15);

    return;
  }

  sub_226D6F25C();
  __break(1u);
}

void sub_226B366A0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if ((*(v9 + 16))(v8, v9))
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  v10 = v13;
  if (v13)
  {
    v14 = objc_opt_self();
    v15 = sub_226D6E36C();

    v16 = *(a2 + *(type metadata accessor for HistoricalChangesParser() + 24));
    v10 = [v14 entityForName:v15 inManagedObjectContext:v16];

    if (v10)
    {
      sub_226AE59B4(0, &qword_28105F448, 0x277CBE408);
      v17 = v10;
      v18 = a3;
      v19 = sub_226D6EC3C();

      if (v19)
      {
        v20 = a1[3];
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v20);
        v10 = (*(v21 + 32))(v16, v20, v21);

        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

LABEL_3:
  *a4 = v10;
}

uint64_t sub_226B3685C()
{
  v1 = [v0 changeType];
  if (v1 < 3)
  {
    return 0x10200u >> (8 * v1);
  }

  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000014, 0x8000000226D7FAC0);
  [v0 changeType];
  type metadata accessor for NSPersistentHistoryChangeType(0);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B36960()
{
  v1 = [*v0 changedObjectID];
  v2 = [v1 entity];

  v3 = [v2 name];
  if (!v3)
  {
    return 0;
  }

  v4 = sub_226D6E39C();

  return v4;
}

uint64_t sub_226B36A2C()
{
  v1 = [*v0 tombstone];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_226D6E2BC();

  return v3;
}

id sub_226B36A9C()
{
  v1 = [*v0 changedObjectID];

  return v1;
}

uint64_t sub_226B36AD4(void *a1)
{
  v2 = v1;
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 persistentStoreCoordinator];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 objectIDURL];
    sub_226D6D14C();

    v12 = sub_226D6D0DC();
    (*(v5 + 8))(v8, v4);
    v13 = [v10 managedObjectIDForURIRepresentation_];

    if (v13)
    {
      return v13;
    }
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_226D6EEFC();

  v15 = [v2 description];
  v16 = sub_226D6E39C();
  v18 = v17;

  MEMORY[0x22AA8A510](v16, v18);

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B36CD8()
{
  v1 = [*v0 entityClassName];
  v2 = sub_226D6E39C();

  return v2;
}

uint64_t type metadata accessor for HistoricalChangesParser()
{
  result = qword_27D7A6DA8;
  if (!qword_27D7A6DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B36DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226B36E50()
{
  result = qword_27D7A6DA0;
  if (!qword_27D7A6DA0)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DA0);
  }

  return result;
}

void sub_226B36EF0()
{
  sub_226D6A34C();
  if (v0 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A64D8, 0x277CBE440);
    if (v1 <= 0x3F)
    {
      sub_226D67F1C();
      if (v2 <= 0x3F)
      {
        sub_226B36FC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226B36FC4()
{
  if (!qword_27D7A6DB8)
  {
    v0 = sub_226D6E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6DB8);
    }
  }
}

void sub_226B37020(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a3;
  v9 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8MetadataV9CloudItemVMa_0(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v54;
  sub_226B37494(a1, a2, a4, a5);
  if (!v18)
  {
    v48 = 0;
    v52 = v12;
    v53 = v13;
    v19 = v51[2];
    if (v19)
    {
      v20 = a5;
      v21 = (v14 + 48);
      v49 = v17;
      v50 = (v14 + 56);
      v22 = v51 + 7;
      v47 = (v14 + 48);
      do
      {
        v29 = *(v22 - 2);
        if (v29 >= 2)
        {
          if (*(v22 - 8))
          {
            if (*(v22 - 8) == 1)
            {
              v30 = *(_s8MetadataVMa_0(0) + 28);
              sub_226B3E154(v20 + v30, _s8MetadataV15LocalItemStatusOMa_0);
              v31 = _s8MetadataV9LocalItemVMa_0(0);
              (*(*(v31 - 8) + 56))(v20 + v30, 1, 2, v31);
            }
          }

          else
          {
            v54 = *(v22 - 3);
            v23 = *v22;
            v24 = *(_s8MetadataVMa_0(0) + 24);
            v25 = v20;
            v26 = v20 + v24;
            v27 = v52;
            sub_226B3E0EC(v26, v52, _s8MetadataV15CloudItemStatusOMa_0);
            v28 = v53;
            if ((*v21)(v27, 2, v53))
            {
              sub_226B3E154(v27, _s8MetadataV15CloudItemStatusOMa_0);
            }

            else
            {
              v32 = v49;
              sub_226B3E1DC(v27, v49, _s8MetadataV9CloudItemVMa_0);
              v33 = v32 + *(v28 + 20);
              v34 = *(v33 + *(_s8MetadataV9CloudItemV6ObjectVMa_0(0) + 28));
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              sub_226B3E1B4(v54, v29);
              v35 = v23;
              v36 = v34;
              v37 = v35;
              v38 = v36;
              LOBYTE(v33) = sub_226D6EC3C();

              if ((v33 & 1) == 0)
              {
                v51 = v37;
                v39 = v54;
                v20 = v25;
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v40 = sub_226D6E07C();
                __swift_project_value_buffer(v40, qword_28105F628);
                v41 = sub_226D6E05C();
                v42 = sub_226D6E9AC();
                v43 = os_log_type_enabled(v41, v42);
                v21 = v47;
                v44 = v39;
                if (v43)
                {
                  v45 = swift_slowAlloc();
                  *v45 = 0;
                  _os_log_impl(&dword_226AB4000, v41, v42, "Deleted duplicate cloud consent. Ignoring change.", v45, 2u);
                  MEMORY[0x22AA8BEE0](v45, -1, -1);
                }

                sub_226B3E1C8(v44, v29);
                sub_226B3E154(v49, _s8MetadataV9CloudItemVMa_0);
                goto LABEL_7;
              }

              sub_226B3E1C8(v54, v29);

              sub_226B3E154(v32, _s8MetadataV9CloudItemVMa_0);
              v28 = v53;
              v21 = v47;
            }

            v20 = v25;
            sub_226B3E154(v25 + v24, _s8MetadataV15CloudItemStatusOMa_0);
            (*v50)(v25 + v24, 1, 2, v28);
          }
        }

LABEL_7:
        v22 += 4;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_226B37494(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v127 = a3;
  v118 = a4;
  v6 = _s8MetadataV9CloudItemVMa_0(0);
  v7 = *(v6 - 8);
  v115 = v6;
  v116 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v114 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v124 = *(v10 - 8);
  v11 = v124[8];
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v113 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v125 = (&v102 - v15);
  MEMORY[0x28223BE20](v14);
  v120 = &v102 - v16;
  v17 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v117 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v119 = &v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v122 = &v102 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v121 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v102 - v33;
  v35 = _s8MetadataV9LocalItemVMa_0(0);
  v123 = *(v35 - 8);
  v36 = *(v123 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s8MetadataV15LocalItemStatusOMa_0(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v43 = v126;
  v44 = sub_226D6788C();
  if (!v43)
  {
    v108 = v30;
    v109 = v38;
    v111 = v34;
    v112 = v35;
    v126 = v44;
    v110 = v42;
    sub_226D6996C();
    v45 = sub_226D6991C();
    v46 = v45;
    v105 = a1;
    v106 = a2;
    v107 = 0;
    if (v126)
    {
      v47 = v126;
      v104 = [v47 objectID];
      v103 = [v47 refreshSequenceNumber];
      v48 = [v47 backgroundRefreshLastConfirmedAt];
      v49 = v124;
      v50 = v112;
      if (v48)
      {
        v51 = v48;
        v52 = v108;
        sub_226D6D45C();

        v53 = sub_226D6D4AC();
        (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      }

      else
      {
        v57 = sub_226D6D4AC();
        v52 = v108;
        (*(*(v57 - 8) + 56))(v108, 1, 1, v57);
      }

      v56 = v122;
      v58 = v111;
      v59 = v103;
      *v111 = v104;
      *(v58 + 8) = v59;
      v60 = _s8MetadataV9LocalItemV7ConsentVMa(0);
      sub_226AFD80C(v52, v58 + *(v60 + 24), &qword_27D7A8BE0, &unk_226D718F0);

      (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
      if (!v46)
      {
        v70 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
        (*(*(v70 - 8) + 56))(v56, 1, 1, v70);
        v66 = v109;
LABEL_14:
        sub_226AFD80C(v58, v66, &qword_27D7A6C20, &qword_226D72BF8);
        sub_226AFD80C(v56, v66 + *(v50 + 20), &qword_27D7A6C10, &unk_226D731E0);
        v73 = v110;
        sub_226B3E1DC(v66, v110, _s8MetadataV9LocalItemVMa_0);
        (*(v123 + 56))(v73, 0, 2, v50);
        v54 = v49;
        goto LABEL_15;
      }
    }

    else
    {
      v54 = v124;
      if (!v45)
      {
        v73 = v110;
        (*(v123 + 56))(v110, 2, 2, v112);
LABEL_15:
        v74 = v105;
        v76 = v106;
        v75 = v107;
        v77 = sub_226B39880(v105, v106, v127);
        if (v75)
        {
          sub_226B3E154(v73, _s8MetadataV15LocalItemStatusOMa_0);

          return;
        }

        v124 = v46;
        v107 = 0;
        v78 = *(v77 + 16);
        if (v78)
        {
          v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v80 = v77;
          v81 = v120;
          sub_226B3E0EC(v77 + v79, v120, _s8MetadataV9CloudItemV6ObjectVMa_0);
          sub_226B3876C(v80, v80 + v79, 1, (2 * v78) | 1, &qword_27D7A6070, &qword_226D70A88, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v83 = v82;

          sub_226B3E0EC(v81, v125, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v84 = *(v83 + 16);
          v85 = v113;
          if (v84)
          {
            v86 = v83 + v79;
            v87 = v54[9];
            do
            {
              sub_226B3E0EC(v86, v85, _s8MetadataV9CloudItemV6ObjectVMa_0);
              v88 = v125;
              if (*v125 >= *v85)
              {
                sub_226B3E154(v85, _s8MetadataV9CloudItemV6ObjectVMa_0);
              }

              else
              {
                sub_226B3E154(v125, _s8MetadataV9CloudItemV6ObjectVMa_0);
                sub_226B3E1DC(v85, v88, _s8MetadataV9CloudItemV6ObjectVMa_0);
              }

              v86 += v87;
              --v84;
            }

            while (v84);
          }

          v89 = v114;
          sub_226B3E1DC(v125, v114, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v90 = v115;
          sub_226B3E1DC(v120, v89 + *(v115 + 20), _s8MetadataV9CloudItemV6ObjectVMa_0);
          *(v89 + *(v90 + 24)) = v83;
          v91 = v89;
          v92 = v119;
          sub_226B3E1DC(v91, v119, _s8MetadataV9CloudItemVMa_0);
          v93 = *(v116 + 56);
          v93(v92, 0, 2, v90);
        }

        else
        {

          v90 = v115;
          v93 = *(v116 + 56);
          v92 = v119;
          v93(v119, 2, 2, v115);
        }

        v94 = v117;
        v93(v117, 2, 2, v90);
        v95 = sub_226B304DC(v92, v94);
        sub_226B3E154(v94, _s8MetadataV15CloudItemStatusOMa_0);
        v96 = v118;
        if (v95)
        {
          v97 = v124;
          if (!v124)
          {
            v101 = v107;
            v99 = sub_226B39F60(v74, v76);

            v107 = v101;
            if (v101)
            {
              sub_226B3E154(v92, _s8MetadataV15CloudItemStatusOMa_0);
              sub_226B3E154(v110, _s8MetadataV15LocalItemStatusOMa_0);
              return;
            }

LABEL_33:
            v100 = _s8MetadataVMa_0(0);
            sub_226B3E1DC(v92, v96 + *(v100 + 24), _s8MetadataV15CloudItemStatusOMa_0);
            sub_226B3E1DC(v110, v96 + *(v100 + 28), _s8MetadataV15LocalItemStatusOMa_0);
            *v96 = v74;
            *(v96 + 8) = v76;
            *(v96 + 16) = v99 & 1;

            return;
          }

          v98 = v126;
        }

        else
        {
          v97 = v126;
          v98 = v124;
        }

        v99 = 1;
        goto LABEL_33;
      }

      v49 = v124;
      v55 = _s8MetadataV9LocalItemV7ConsentVMa(0);
      (*(*(v55 - 8) + 56))(v111, 1, 1, v55);
      v56 = v122;
    }

    v61 = v46;
    v62 = v46;
    v63 = [v62 &selRef_updateBookmark_forSet_error_];
    v64 = [v62 refreshSequenceNumber];
    v65 = [v62 backgroundRefreshLastConfirmedAt];
    v66 = v109;
    if (v65)
    {
      v67 = v121;
      v68 = v65;
      sub_226D6D45C();

      v69 = 0;
    }

    else
    {
      v69 = 1;
      v67 = v121;
    }

    v71 = sub_226D6D4AC();
    (*(*(v71 - 8) + 56))(v67, v69, 1, v71);
    *v56 = v63;
    v56[1] = v64;
    v72 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
    sub_226AFD80C(v67, v56 + *(v72 + 24), &qword_27D7A8BE0, &unk_226D718F0);

    (*(*(v72 - 8) + 56))(v56, 0, 1, v72);
    v46 = v61;
    v58 = v111;
    v50 = v112;
    goto LABEL_14;
  }
}

uint64_t sub_226B38080@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s9OperationOMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B3E0EC(v2, v7, _s9OperationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_226B3E154(v7, _s9OperationOMa);
        v9 = MEMORY[0x277CC80C0];
      }

      else
      {
        sub_226B3E154(v7, _s9OperationOMa);
        v9 = MEMORY[0x277CC80B8];
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80E0];
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80C8];
    }

    else
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80E8];
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80B0];
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80D8];
    }

    else
    {
      sub_226B3E154(v7, _s9OperationOMa);
      v9 = MEMORY[0x277CC80D0];
    }

LABEL_21:
    v12 = *v9;
    v13 = sub_226D6BC4C();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  if (EnumCaseMultiPayload == 8)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v11 = MEMORY[0x277CC80F8];
  }

  else if (EnumCaseMultiPayload == 9)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v11 = MEMORY[0x277CC8100];
  }

  else
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v11 = MEMORY[0x277CC80F0];
  }

  v15 = *v11;
  v16 = sub_226D6BC4C();
  (*(*(v16 - 8) + 104))(a1, v15, v16);
  v17 = sub_226D6D4AC();
  return (*(*(v17 - 8) + 8))(v7 + v10, v17);
}

uint64_t sub_226B38420@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226B39004(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_226B38454(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v9 = [a2 changedObjectID];
  v10 = sub_226D6EC3C();

  if (v10)
  {
    v11 = sub_226B38910(a2);
    if (!v14)
    {
      sub_226B3E1B4(v5, v6);
      v14 = v8;
      v11 = v5;
      v12 = v6;
      v13 = v7;
    }

    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226B38534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226B39188(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_226B385EC(uint64_t a1, uint64_t a2)
{
  result = sub_226B3E308(&qword_27D7A6DC0, a2, type metadata accessor for ConsentMappingModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B38644(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_226D6EDFC();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_226C40E9C(v2, 0);

    v1 = sub_226C3AA60(&v5, (v3 + 32), v2, v1);
    sub_226AD3C20();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_226B3876C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_226B38910(void *a1)
{
  v2 = [a1 changedObjectID];
  v3 = [v2 entityName];
  v4 = sub_226D6E39C();
  v6 = v5;

  v7 = v4 == 0x746E65736E6F43 && v6 == 0xE700000000000000;
  if (v7 || (sub_226D6F21C() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v13 = v4 == 0x43676E69646E6550 && v6 == 0xEE00746E65736E6FLL;
    if (v13 || (sub_226D6F21C() & 1) != 0)
    {

      v9 = 0;
      v8 = 1;
    }

    else
    {
      if (v4 == 0x6E6F4364756F6C43 && v6 == 0xEC000000746E6573)
      {
      }

      else
      {
        v23 = sub_226D6F21C();

        if ((v23 & 1) == 0)
        {
          if (qword_28105F620 != -1)
          {
            swift_once();
          }

          v24 = sub_226D6E07C();
          __swift_project_value_buffer(v24, qword_28105F628);
          v25 = sub_226D6E05C();
          v26 = sub_226D6E9CC();
          if (!os_log_type_enabled(v25, v26))
          {
            goto LABEL_55;
          }

          v27 = swift_slowAlloc();
          *v27 = 0;
          v28 = "Change was not for a cloud, local or pending consent";
          goto LABEL_47;
        }
      }

      v8 = 0;
      v9 = 1;
    }
  }

  v10 = [a1 changeType];
  if (v10 < 2)
  {
    v11 = v10;

    sub_226B3E1C8(0, v11);
    return 0;
  }

  if (v10 != 2)
  {
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  if ((v8 & 1) == 0)
  {
    v14 = [a1 tombstone];
    if (v14)
    {
      v15 = v14;
      v16 = sub_226D6E2BC();

      if (v9)
      {
        sub_226D6EE8C();
        if (*(v16 + 16) && (v17 = sub_226C2FE4C(v40), (v18 & 1) != 0))
        {
          sub_226AC4708(*(v16 + 56) + 32 * v17, &v41);
          sub_226AE5030(v40);
          if (swift_dynamicCast())
          {
            v19 = 27491;

            v39 = 0;
LABEL_50:
            if (qword_28105F620 != -1)
            {
              swift_once();
            }

            v32 = sub_226D6E07C();
            __swift_project_value_buffer(v32, qword_28105F628);
            v25 = sub_226D6E05C();
            v33 = sub_226D6E9CC();
            if (!os_log_type_enabled(v25, v33))
            {
              goto LABEL_55;
            }

            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v40[0] = v35;
            *v34 = 136315138;
            v41 = v19;
            v42 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DE8, &unk_226D731F0);
            v36 = sub_226D6E3FC();
            v38 = sub_226AC4530(v36, v37, v40);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_226AB4000, v25, v33, "Deleted cloud consent has an unsupported ckSchemaVersion (%s, ignoring change.", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v35);
            MEMORY[0x22AA8BEE0](v35, -1, -1);
            v31 = v34;
LABEL_54:
            MEMORY[0x22AA8BEE0](v31, -1, -1);
LABEL_55:

            return 0;
          }
        }

        else
        {

          sub_226AE5030(v40);
        }

        v19 = 0;
        v39 = 1;
        goto LABEL_50;
      }

      sub_226D6EE8C();
      if (*(v16 + 16) && (v20 = sub_226C2FE4C(v40), (v21 & 1) != 0))
      {
        sub_226AC4708(*(v16 + 56) + 32 * v20, &v41);
        sub_226AE5030(v40);

        if (swift_dynamicCast())
        {

          return 0x49746E65736E6F63;
        }
      }

      else
      {

        sub_226AE5030(v40);
      }

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v30 = sub_226D6E07C();
      __swift_project_value_buffer(v30, qword_28105F628);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_55;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Received delete change but tombstone missing identifier.";
    }

    else
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F628);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_55;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Received delete change but no tombstone.";
    }

LABEL_47:
    _os_log_impl(&dword_226AB4000, v25, v26, v28, v27, 2u);
    v31 = v27;
    goto LABEL_54;
  }

  return 0;
}

uint64_t sub_226B39004(void *a1)
{
  v2 = [a1 changedObjectID];
  v3 = [v2 entity];

  v4 = [v3 name];
  if (!v4)
  {
    return 0;
  }

  v5 = sub_226D6E39C();
  v7 = v6;

  v8 = v5 == 0x746E65736E6F43 && v7 == 0xE700000000000000;
  if (v8 || (sub_226D6F21C() & 1) != 0 || (v5 == 0x6E6F4364756F6C43 ? (v9 = v7 == 0xEC000000746E6573) : (v9 = 0), v9 || (sub_226D6F21C() & 1) != 0 || (v5 == 0x43676E69646E6550 ? (v10 = v7 == 0xEE00746E65736E6FLL) : (v10 = 0), v10)))
  {
  }

  else
  {
    v11 = sub_226D6F21C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_226B38910(a1);
}

uint64_t sub_226B39188(uint64_t a1, unint64_t a2, unsigned __int8 a3, void *a4)
{
  v58 = a4;
  v59 = a1;
  v7 = sub_226D6CBBC();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v55 - v12;
  v14 = sub_226D6CBCC();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v20 = v55 - v19;
  if (a2 >= 2)
  {

    return v59;
  }

  v22 = a3;
  v21 = a3 == 0;
  v56 = v18;
  v23 = v17;
  if (v21)
  {
    sub_226D68F0C();
    v26 = sub_226D68EBC();
    if (!v4)
    {
      v27 = v26;
      v28 = [v26 consentID];

      if (v28)
      {
        v29 = sub_226D6E39C();

        return v29;
      }

      return 0;
    }
  }

  else if (v22 == 1)
  {
    sub_226D6794C();
    v24 = sub_226D678FC();
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_226D6996C();
    v24 = sub_226D6993C();
    if (!v4)
    {
LABEL_26:
      v52 = v24;
      v53 = [v24 consentID];

      v54 = sub_226D6E39C();
      return v54;
    }
  }

  v55[1] = 0;
  v62 = v4;
  v30 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v55[0] = v23;
    v31 = *(v23 + 32);
    v32 = v56;
    v31(v56, v20, v14);
    sub_226B3E308(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620]);
    sub_226D6D02C();
    sub_226D6CBAC();
    sub_226B3E308(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608]);
    sub_226D6E53C();
    sub_226D6E53C();
    v33 = *(v57 + 8);
    v33(v11, v7);
    v33(v13, v7);
    if (v61 == v60)
    {
      v34 = v32;
      v35 = v55[0];

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v36 = sub_226D6E07C();
      __swift_project_value_buffer(v36, qword_28105F628);
      v37 = v59;
      sub_226B3E1B4(v59, a2);
      v38 = v58;
      v39 = sub_226D6E05C();
      v40 = sub_226D6E9CC();
      sub_226B3E1C8(v37, a2);

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&dword_226AB4000, v39, v40, "Object %@ does not exist. Ignoring.", v41, 0xCu);
        sub_226AC47B0(v42, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v42, -1, -1);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
      }

      (*(v35 + 8))(v34, v14);
      return 0;
    }

    (*(v55[0] + 8))(v32, v14);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v44 = sub_226D6E07C();
  __swift_project_value_buffer(v44, qword_28105F628);
  v45 = v4;
  v46 = sub_226D6E05C();
  v47 = sub_226D6E9CC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v4;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_226AB4000, v46, v47, "Error fetching identifier: %@", v48, 0xCu);
    sub_226AC47B0(v49, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v49, -1, -1);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
  }

  else
  {
  }

  return 0;
}

size_t sub_226B39880(uint64_t a1, uint64_t a2, void *a3)
{
  v68 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = v55 - v5;
  v6 = sub_226D6D52C();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = v55 - v10;
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68F0C();
  v15 = sub_226D68EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D71F40;
  *(v16 + 32) = sub_226D68E9C();
  *(v16 + 40) = sub_226D68E8C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v17 = sub_226D6E5CC();

  v18 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v15 setPredicate_];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_226D71F20;
  v20 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v21 = sub_226D6E36C();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v19 + 32) = v22;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v23 = sub_226D6E5CC();

  [v15 setSortDescriptors_];

  v24 = v69;
  v25 = sub_226D6EBBC();
  v26 = v24;
  if (v24)
  {

    return v15;
  }

  else
  {
    v59 = v14;
    v60 = v11;
    v56 = v15;
    v27 = v25;
    if (v25 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v29 = v71;
      if (!i)
      {

        return MEMORY[0x277D84F90];
      }

      v55[1] = v26;
      v72 = MEMORY[0x277D84F90];
      result = sub_226AE2118(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v31 = 0;
      v15 = v72;
      v32 = v27;
      v61 = v27;
      v62 = v27 & 0xC000000000000001;
      v57 = v27 & 0xFFFFFFFFFFFFFF8;
      v58 = i;
      v69 = (v67 + 32);
      v70 = v6;
      v33 = v65;
      while (1)
      {
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v62)
        {
          v35 = MEMORY[0x22AA8AFD0](v31, v32);
        }

        else
        {
          if (v31 >= *(v57 + 16))
          {
            goto LABEL_27;
          }

          v35 = *(v32 + 8 * v31 + 32);
        }

        v36 = v35;
        v37 = [v35 refreshSequenceNumber];
        if (!v37)
        {
          goto LABEL_24;
        }

        v38 = v37;
        v39 = [v36 id];
        if (!v39)
        {

LABEL_24:
          sub_226B3E244();
          swift_allocError();
          *v54 = 2;
          swift_willThrow();

          return v15;
        }

        v40 = v39;
        v67 = v31;
        v68 = v15;
        sub_226D6D4FC();

        v41 = *v69;
        (*v69)(v29, v33, v6);
        v66 = [v36 objectID];
        v42 = [v38 longLongValue];
        v43 = [v36 backgroundRefreshLastConfirmedAt];
        if (v43)
        {
          v44 = v63;
          v45 = v43;
          sub_226D6D45C();

          v46 = 0;
        }

        else
        {
          v46 = 1;
          v44 = v63;
        }

        v47 = sub_226D6D4AC();
        v48 = *(*(v47 - 8) + 56);
        v48(v44, v46, 1, v47);
        v50 = v59;
        v49 = v60;
        v41(v59 + *(v60 + 20), v71, v70);
        v51 = v49;
        v52 = *(v49 + 24);
        v48(v50 + v52, 1, 1, v47);
        *(v50 + *(v51 + 28)) = v66;
        *v50 = v42;
        sub_226B3E298(v44, v50 + v52);
        v15 = v68;
        v72 = v68;
        v27 = v68[2];
        v53 = v68[3];
        v26 = (v27 + 1);
        if (v27 >= v53 >> 1)
        {
          sub_226AE2118(v53 > 1, v27 + 1, 1);
          v15 = v72;
        }

        v15[2] = v26;
        sub_226B3E1DC(v50, v15 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v27, _s8MetadataV9CloudItemV6ObjectVMa_0);
        v31 = v67 + 1;
        v6 = v70;
        v29 = v71;
        v33 = v65;
        v32 = v61;
        if (v34 == v58)
        {

          return v15;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_226B39F60(uint64_t a1, unint64_t a2)
{
  v5 = sub_226D6B5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v10 = sub_226D6B5CC();
  (*(v6 + 8))(v9, v5);
  sub_226D6842C();
  v11 = sub_226D683FC();
  if (!v2)
  {
    if (v11)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }

      a2 = v11;
      v12 = [v11 id];
      v13 = sub_226D6E39C();
      v15 = v14;

      LOBYTE(v12) = MEMORY[0x22AA83210](v13, v15);

      v11 = a2;
      if ((v12 & 1) == 0)
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v22 = sub_226D6E07C();
        __swift_project_value_buffer(v22, qword_28105F628);
        v23 = sub_226D6E05C();
        v24 = sub_226D6E9CC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_226AB4000, v23, v24, "Force consent syncing override enabled, returning true.", v25, 2u);
          MEMORY[0x22AA8BEE0](v25, -1, -1);
        }

        LOBYTE(a2) = 1;
      }

      else
      {
LABEL_5:
        v16 = v11;
        LOBYTE(a2) = [v11 consentSyncingEnabled];
      }
    }

    else
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F628);

      v18 = sub_226D6E05C();
      v19 = sub_226D6E9DC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_226AC4530(a1, a2, &v28);
        _os_log_impl(&dword_226AB4000, v18, v19, "Institution for consentID: %s missing, unable to determine if syncing is enabled. Returning default (false).", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      LOBYTE(a2) = 0;
    }
  }

  return a2 & 1;
}

uint64_t sub_226B3A2D8(uint64_t a1)
{
  v2 = _s8MetadataVMa_0(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v405 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v6 = *(*(v448 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v448);
  v450 = &v405 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v443 = &v405 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v430 = (&v405 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v458 = &v405 - v15;
  MEMORY[0x28223BE20](v14);
  v445 = &v405 - v16;
  v463 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v457 = *(v463 - 8);
  v17 = *(v457 + 64);
  v18 = MEMORY[0x28223BE20](v463);
  v453 = (&v405 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v434 = (&v405 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v440 = (&v405 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v439 = (&v405 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v446 = &v405 - v28;
  MEMORY[0x28223BE20](v27);
  v444 = &v405 - v29;
  v468 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v466 = *(v468 - 8);
  v30 = *(v466 + 64);
  v31 = MEMORY[0x28223BE20](v468);
  v452 = (&v405 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v435 = &v405 - v33;
  v34 = _s8MetadataV9LocalItemVMa_0(0);
  v482 = *(v34 - 8);
  v483 = v34;
  v35 = *(v482 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v479 = &v405 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v462 = &v405 - v38;
  v470 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v39 = *(*(v470 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v470);
  v451 = &v405 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v464 = (&v405 - v43);
  MEMORY[0x28223BE20](v42);
  v436 = &v405 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v427 = &v405 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v449 = &v405 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v447 = &v405 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v455 = (&v405 - v54);
  MEMORY[0x28223BE20](v53);
  v454 = &v405 - v55;
  v467 = sub_226D6D4AC();
  v471 = *(v467 - 8);
  v56 = *(v471 + 64);
  v57 = MEMORY[0x28223BE20](v467);
  v419 = &v405 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v420 = &v405 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v422 = &v405 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v423 = &v405 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v414 = &v405 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v413 = &v405 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v421 = &v405 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v416 = &v405 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v417 = &v405 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v431 = &v405 - v76;
  MEMORY[0x28223BE20](v75);
  v456 = &v405 - v77;
  v481 = _s9OperationOMa();
  v477 = *(v481 - 8);
  v78 = *(v477 + 64);
  v79 = MEMORY[0x28223BE20](v481);
  v461 = &v405 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v442 = (&v405 - v82);
  v83 = MEMORY[0x28223BE20](v81);
  v441 = (&v405 - v84);
  v85 = MEMORY[0x28223BE20](v83);
  v438 = (&v405 - v86);
  v87 = MEMORY[0x28223BE20](v85);
  v429 = (&v405 - v88);
  v89 = MEMORY[0x28223BE20](v87);
  v437 = (&v405 - v90);
  v91 = MEMORY[0x28223BE20](v89);
  v426 = &v405 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v418 = (&v405 - v94);
  v95 = MEMORY[0x28223BE20](v93);
  v411 = (&v405 - v96);
  v97 = MEMORY[0x28223BE20](v95);
  v410 = (&v405 - v98);
  v99 = MEMORY[0x28223BE20](v97);
  v415 = &v405 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v412 = &v405 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v433 = &v405 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v425 = (&v405 - v106);
  v107 = MEMORY[0x28223BE20](v105);
  v432 = &v405 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v424 = (&v405 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v428 = &v405 - v112;
  MEMORY[0x28223BE20](v111);
  v114 = (&v405 - v113);
  v115 = _s8MetadataV15LocalItemStatusOMa_0(0);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x28223BE20](v115 - 8);
  v460 = &v405 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x28223BE20](v117);
  v475 = &v405 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v478 = &v405 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v465 = &v405 - v124;
  MEMORY[0x28223BE20](v123);
  v126 = &v405 - v125;
  v127 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v128 = *(*(v127 - 8) + 64);
  v129 = MEMORY[0x28223BE20](v127 - 8);
  v476 = &v405 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = MEMORY[0x28223BE20](v129);
  v472 = &v405 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v459 = &v405 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v480 = &v405 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v139 = &v405 - v138;
  MEMORY[0x28223BE20](v137);
  v141 = &v405 - v140;
  v142 = _s8MetadataV9CloudItemVMa_0(0);
  v143 = *(v142 - 8);
  v144 = *(v143 + 64);
  v145 = MEMORY[0x28223BE20](v142);
  v146 = MEMORY[0x28223BE20](v145);
  v147 = MEMORY[0x28223BE20](v146);
  MEMORY[0x28223BE20](v147);
  v152 = (&v405 - v151);
  if (*(a1 + 16) != 1)
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v154 = sub_226D6E07C();
    __swift_project_value_buffer(v154, qword_28105F628);
    sub_226B3E0EC(a1, v5, _s8MetadataVMa_0);
    v155 = sub_226D6E05C();
    v156 = sub_226D6E9EC();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v487 = v158;
      *v157 = 136315138;
      v159 = *v5;
      v160 = v5[1];

      sub_226B3E154(v5, _s8MetadataVMa_0);
      v161 = sub_226AC4530(v159, v160, &v487);

      *(v157 + 4) = v161;
      _os_log_impl(&dword_226AB4000, v155, v156, "Syncing is disabled for consentID: %s, no operations needed.", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v158);
      MEMORY[0x22AA8BEE0](v158, -1, -1);
      MEMORY[0x22AA8BEE0](v157, -1, -1);
    }

    else
    {

      sub_226B3E154(v5, _s8MetadataVMa_0);
    }

    return MEMORY[0x277D84F90];
  }

  v408 = v150;
  v405 = v149;
  v409 = v148;
  v487 = MEMORY[0x277D84F90];
  v485 = *(v2 + 24);
  sub_226B3E0EC(a1 + v485, v141, _s8MetadataV15CloudItemStatusOMa_0);
  v153 = *(v143 + 48);
  v473 = v142;
  v469 = v143 + 48;
  v484 = v153;
  if (v153(v141, 2, v142))
  {
    sub_226B3E154(v141, _s8MetadataV15CloudItemStatusOMa_0);
    v474 = MEMORY[0x277D84F90];
LABEL_28:
    v187 = v479;
    v188 = v473;
    goto LABEL_29;
  }

  sub_226B3E1DC(v141, v152, _s8MetadataV9CloudItemVMa_0);
  v407 = v2;
  v163 = *(v2 + 28);
  (*(v482 + 56))(v126, 1, 2, v483);
  v406 = a1;
  LOBYTE(v163) = sub_226B2FBE8(a1 + v163, v126);
  sub_226B3E154(v126, _s8MetadataV15LocalItemStatusOMa_0);
  if (v163)
  {
    sub_226B3E154(v152, _s8MetadataV9CloudItemVMa_0);
    v474 = MEMORY[0x277D84F90];
LABEL_27:
    a1 = v406;
    v2 = v407;
    goto LABEL_28;
  }

  v164 = (v152 + *(v473 + 20));
  v165 = v471;
  if (*v164 >= *v152)
  {
    v474 = MEMORY[0x277D84F90];
    v177 = v467;
    v175 = v456;
  }

  else
  {
    v166 = *(v470 + 28);
    v167 = *(v164 + v166);
    v168 = *(v152 + v166);
    *v114 = v167;
    v114[1] = v168;
    swift_storeEnumTagMultiPayload();
    v169 = v167;
    v170 = v168;
    v171 = sub_226BBB6A8(0, 1, 1, MEMORY[0x277D84F90]);
    v173 = v171[2];
    v172 = v171[3];
    v474 = v171;
    v174 = v477;
    v175 = v456;
    if (v173 >= v172 >> 1)
    {
      v474 = sub_226BBB6A8(v172 > 1, v173 + 1, 1, v474);
    }

    v176 = v474;
    v474[2] = v173 + 1;
    sub_226B3E1DC(v114, v176 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v173, _s9OperationOMa);
    v487 = v176;
    v177 = v467;
  }

  v178 = v454;
  sub_226B2A968(v454);
  v179 = *(v165 + 48);
  v180 = v179(v178, 1, v177);
  v181 = v455;
  if (v180 == 1)
  {
    sub_226B3E154(v152, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v178, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_27;
  }

  v456 = *(v165 + 32);
  (v456)(v175, v178, v177);
  v182 = v164;
  v183 = v436;
  sub_226B3E0EC(v182, v436, _s8MetadataV9CloudItemV6ObjectVMa_0);
  sub_226AC40E8(v183 + *(v470 + 24), v181, &qword_27D7A8BE0, &unk_226D718F0);
  if (v179(v181, 1, v177) == 1)
  {
    sub_226B3E154(v183, _s8MetadataV9CloudItemV6ObjectVMa_0);
    (*(v165 + 8))(v175, v177);
    sub_226B3E154(v152, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v181, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_27;
  }

  v184 = v431;
  (v456)(v431, v181, v177);
  v185 = sub_226D6D40C();
  v186 = v175;
  v2 = v407;
  v187 = v479;
  v188 = v473;
  if (v185)
  {
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v190 = *(v183 + *(v470 + 28));
    v191 = v428;
    *v428 = v190;
    (*(v471 + 16))(&v191[v189], v186, v177);
    swift_storeEnumTagMultiPayload();
    v192 = v190;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
    }

    v193 = v477;
    v195 = v474[2];
    v194 = v474[3];
    if (v195 >= v194 >> 1)
    {
      v474 = sub_226BBB6A8(v194 > 1, v195 + 1, 1, v474);
    }

    v196 = *(v471 + 8);
    v196(v431, v177);
    sub_226B3E154(v436, _s8MetadataV9CloudItemV6ObjectVMa_0);
    v196(v186, v177);
    sub_226B3E154(v152, _s8MetadataV9CloudItemVMa_0);
    v197 = v474;
    v474[2] = v195 + 1;
    sub_226B3E1DC(v428, v197 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v195, _s9OperationOMa);
    v487 = v197;
    goto LABEL_27;
  }

  v224 = v184;
  v225 = v177;
  v226 = *(v471 + 8);
  v226(v224, v225);
  sub_226B3E154(v183, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v226(v186, v225);
  sub_226B3E154(v152, _s8MetadataV9CloudItemVMa_0);
  a1 = v406;
LABEL_29:
  sub_226B3E0EC(a1 + v485, v139, _s8MetadataV15CloudItemStatusOMa_0);
  v198 = v484(v139, 2, v188);
  v199 = v482;
  v200 = v478;
  v201 = v480;
  if (v198)
  {
    sub_226B3E154(v139, _s8MetadataV15CloudItemStatusOMa_0);
    v202 = v483;
    goto LABEL_98;
  }

  v203 = v2;
  v204 = v482;
  v205 = v187;
  v206 = v408;
  sub_226B3E1DC(v139, v408, _s8MetadataV9CloudItemVMa_0);
  v407 = v203;
  v207 = *(v203 + 28);
  v406 = a1;
  v208 = v465;
  sub_226B3E0EC(a1 + v207, v465, _s8MetadataV15LocalItemStatusOMa_0);
  v209 = v204;
  v210 = v483;
  if ((*(v204 + 48))(v208, 2))
  {
    sub_226B3E154(v206, _s8MetadataV9CloudItemVMa_0);
    sub_226B3E154(v208, _s8MetadataV15LocalItemStatusOMa_0);
    v187 = v205;
    a1 = v406;
    v202 = v210;
    v188 = v473;
    v2 = v407;
    v199 = v209;
    goto LABEL_98;
  }

  v211 = v462;
  sub_226B3E1DC(v208, v462, _s8MetadataV9LocalItemVMa_0);
  v212 = v464;
  sub_226B3E0EC(v206, v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v213 = v444;
  sub_226AC40E8(v211, v444, &qword_27D7A6C20, &qword_226D72BF8);
  v214 = *(v466 + 48);
  v215 = v214(v213, 1, v468);
  v455 = v214;
  if (v215 == 1)
  {
    sub_226AC47B0(v213, &qword_27D7A6C20, &qword_226D72BF8);
    v187 = v205;
    v216 = v446;
    v217 = v210;
  }

  else
  {
    v218 = v213;
    v219 = v435;
    sub_226B3E1DC(v218, v435, _s8MetadataV9LocalItemV7ConsentVMa);
    v220 = v219;
    v221 = *(v219 + 8);
    v187 = v205;
    v217 = v210;
    if (*v212 == v221)
    {
      sub_226B3E154(v220, _s8MetadataV9LocalItemV7ConsentVMa);
      v216 = v446;
    }

    else
    {
      if (*v212 < v221)
      {
        v222 = *(v408 + *(v473 + 20) + *(v470 + 28));
        v227 = *v220;
        v228 = v424;
        *v424 = v222;
        *(v228 + 8) = v227;
        swift_storeEnumTagMultiPayload();
        v223 = v222;
      }

      else
      {
        v227 = *(v212 + *(v470 + 28));
        v228 = v424;
        *v424 = v227;
        swift_storeEnumTagMultiPayload();
      }

      v216 = v446;
      v229 = v227;
      sub_226B3E0EC(v228, v432, _s9OperationOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v231 = v474[2];
      v230 = v474[3];
      if (v231 >= v230 >> 1)
      {
        v474 = sub_226BBB6A8(v230 > 1, v231 + 1, 1, v474);
      }

      sub_226B3E154(v228, _s9OperationOMa);
      sub_226B3E154(v435, _s8MetadataV9LocalItemV7ConsentVMa);
      v232 = v474;
      v474[2] = v231 + 1;
      sub_226B3E1DC(v432, v232 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v231, _s9OperationOMa);
      v487 = v232;
      v211 = v462;
    }
  }

  v233 = *(v217 + 20);
  v234 = v445;
  sub_226AC40E8(v233 + v211, v445, &qword_27D7A6C10, &unk_226D731E0);
  v235 = v457 + 48;
  v456 = *(v457 + 48);
  v236 = (v456)(v234, 1, v463);
  v237 = v458;
  v465 = v235;
  if (v236 == 1)
  {
    sub_226AC47B0(v234, &qword_27D7A6C10, &unk_226D731E0);
  }

  else
  {
    v238 = v434;
    sub_226B3E1DC(v234, v434, _s8MetadataV9LocalItemV14PendingConsentVMa);
    v239 = v238[1];
    if (*v464 == v239)
    {
      sub_226B3E154(v238, _s8MetadataV9LocalItemV14PendingConsentVMa);
    }

    else
    {
      if (*v464 < v239)
      {
        v240 = *(v408 + *(v473 + 20) + *(v470 + 28));
        v242 = *v238;
        v243 = v425;
        *v425 = v240;
        *(v243 + 8) = v242;
        swift_storeEnumTagMultiPayload();
        v241 = v240;
      }

      else
      {
        v242 = *(v464 + *(v470 + 28));
        v243 = v425;
        *v425 = v242;
        swift_storeEnumTagMultiPayload();
      }

      v244 = v242;
      sub_226B3E0EC(v243, v433, _s9OperationOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v246 = v474[2];
      v245 = v474[3];
      if (v246 >= v245 >> 1)
      {
        v474 = sub_226BBB6A8(v245 > 1, v246 + 1, 1, v474);
      }

      sub_226B3E154(v243, _s9OperationOMa);
      sub_226B3E154(v238, _s8MetadataV9LocalItemV14PendingConsentVMa);
      v247 = v474;
      v474[2] = v246 + 1;
      sub_226B3E1DC(v433, v247 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v246, _s9OperationOMa);
      v487 = v247;
      v187 = v479;
      v211 = v462;
    }
  }

  sub_226AC40E8(v211, v216, &qword_27D7A6C20, &qword_226D72BF8);
  v248 = v468;
  if (v455(v216, 1, v468) == 1)
  {
    sub_226AC47B0(v216, &qword_27D7A6C20, &qword_226D72BF8);
    v199 = v482;
    v201 = v480;
    goto LABEL_70;
  }

  v455 = v233;
  v249 = v452;
  sub_226B3E1DC(v216, v452, _s8MetadataV9LocalItemV7ConsentVMa);
  sub_226B3E0EC(v408 + *(v473 + 20), v451, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v250 = *(v248 + 24);
  v251 = v447;
  sub_226B2A968(v447);
  v252 = *(v448 + 48);
  v253 = v443;
  sub_226AC40E8(v249 + v250, v443, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(v251, v253 + v252, &qword_27D7A8BE0, &unk_226D718F0);
  v254 = v471;
  v255 = *(v471 + 48);
  v256 = v467;
  v257 = v255(v253, 1, v467);
  v258 = v255(v253 + v252, 1, v256);
  if (v257 != 1)
  {
    v259 = *(v254 + 32);
    v260 = v254;
    if (v258 != 1)
    {
      v288 = v417;
      v289 = v443;
      v290 = v467;
      v259(v417, v443, v467);
      v291 = v289 + v252;
      v292 = v416;
      v259(v416, v291, v290);
      sub_226B3E308(&qword_27D7A66D8, 255, MEMORY[0x277CC9578]);
      v293 = sub_226D6E33C();
      v294 = *(v260 + 16);
      if (v293)
      {
        v295 = v292;
      }

      else
      {
        v295 = v288;
      }

      v296 = v421;
      v294(v421, v295, v290);
      if (sub_226D6D40C())
      {
        v297 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
        v298 = *v452;
        v299 = v412;
        *v412 = *v452;
        v294(&v299[v297], v296, v290);
        swift_storeEnumTagMultiPayload();
        v300 = v298;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
        }

        v302 = v474[2];
        v301 = v474[3];
        if (v302 >= v301 >> 1)
        {
          v474 = sub_226BBB6A8(v301 > 1, v302 + 1, 1, v474);
        }

        v303 = v474;
        v474[2] = v302 + 1;
        sub_226B3E1DC(v412, v303 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v302, _s9OperationOMa);
        v487 = v303;
        v187 = v479;
        v211 = v462;
      }

      else
      {
        v187 = v479;
      }

      if ((sub_226D6D40C() & 1) == 0)
      {
        v402 = *(v471 + 8);
        v403 = v296;
        v404 = v467;
        v402(v403, v467);
        v402(v292, v404);
        v402(v288, v404);
        sub_226AC47B0(v447, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226B3E154(v451, _s8MetadataV9CloudItemV6ObjectVMa_0);
        sub_226B3E154(v452, _s8MetadataV9LocalItemV7ConsentVMa);
        v199 = v482;
        v201 = v480;
        v237 = v458;
        goto LABEL_69;
      }

      v392 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
      v393 = *(v451 + *(v470 + 28));
      v394 = v415;
      *v415 = v393;
      v395 = v467;
      v294(&v394[v392], v296, v467);
      swift_storeEnumTagMultiPayload();
      v396 = v393;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v237 = v458;
      v398 = v474[2];
      v397 = v474[3];
      if (v398 >= v397 >> 1)
      {
        v474 = sub_226BBB6A8(v397 > 1, v398 + 1, 1, v474);
      }

      v399 = *(v471 + 8);
      v399(v421, v395);
      v399(v292, v395);
      v399(v288, v395);
      sub_226AC47B0(v447, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v451, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v452, _s8MetadataV9LocalItemV7ConsentVMa);
      v400 = v474;
      v474[2] = v398 + 1;
      sub_226B3E1DC(v415, v400 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v398, _s9OperationOMa);
      v487 = v400;
      v199 = v482;
      v187 = v479;
      goto LABEL_68;
    }

    v261 = v413;
    v262 = v467;
    v259(v413, v443, v467);
    v263 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v264 = *(v451 + *(v470 + 28));
    v265 = v410;
    *v410 = v264;
    (*(v260 + 16))(v265 + v263, v261, v262);
    swift_storeEnumTagMultiPayload();
    v266 = v264;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = v479;
    v237 = v458;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
    }

    v199 = v482;
    v269 = v474[2];
    v268 = v474[3];
    v270 = v269 + 1;
    if (v269 < v268 >> 1)
    {
LABEL_67:
      (*(v471 + 8))(v261, v262);
      sub_226AC47B0(v447, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v451, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v452, _s8MetadataV9LocalItemV7ConsentVMa);
      v271 = v474;
      v474[2] = v270;
      sub_226B3E1DC(v265, v271 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v269, _s9OperationOMa);
      v487 = v271;
LABEL_68:
      v211 = v462;
      v201 = v480;
      goto LABEL_69;
    }

LABEL_81:
    v474 = sub_226BBB6A8(v268 > 1, v270, 1, v474);
    goto LABEL_67;
  }

  v187 = v479;
  v201 = v480;
  v237 = v458;
  if (v258 != 1)
  {
    v284 = v471;
    v261 = v414;
    v262 = v467;
    (*(v471 + 32))(v414, v443 + v252, v467);
    v285 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v286 = *v452;
    v265 = v411;
    *v411 = *v452;
    (*(v284 + 16))(v265 + v285, v261, v262);
    swift_storeEnumTagMultiPayload();
    v287 = v286;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
    }

    v269 = v474[2];
    v268 = v474[3];
    v270 = v269 + 1;
    v199 = v482;
    if (v269 < v268 >> 1)
    {
      goto LABEL_67;
    }

    goto LABEL_81;
  }

  sub_226AC47B0(v447, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226B3E154(v451, _s8MetadataV9CloudItemV6ObjectVMa_0);
  sub_226B3E154(v452, _s8MetadataV9LocalItemV7ConsentVMa);
  v199 = v482;
LABEL_69:
  v233 = v455;
LABEL_70:
  sub_226AC40E8(v233 + v211, v237, &qword_27D7A6C10, &unk_226D731E0);
  v272 = v463;
  if ((v456)(v237, 1, v463) == 1)
  {
    sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v211, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v237, &qword_27D7A6C10, &unk_226D731E0);
    v202 = v483;
    v188 = v473;
    v200 = v478;
    v2 = v407;
LABEL_97:
    a1 = v406;
    goto LABEL_98;
  }

  v273 = v237;
  v274 = v453;
  sub_226B3E1DC(v273, v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
  v275 = *(v272 + 24);
  v276 = v449;
  sub_226B2A968(v449);
  v277 = *(v448 + 48);
  v278 = v274 + v275;
  v279 = v450;
  sub_226AC40E8(v278, v450, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(v276, v279 + v277, &qword_27D7A8BE0, &unk_226D718F0);
  v280 = *(v471 + 48);
  v281 = v467;
  v282 = v280(v279, 1, v467);
  v188 = v473;
  if (v282 == 1)
  {
    if (v280(v279 + v277, 1, v281) != 1)
    {
      v304 = v471;
      v305 = v279 + v277;
      v306 = v419;
      (*(v471 + 32))(v419, v305, v281);
      v307 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
      v308 = *v453;
      v309 = v426;
      *v426 = *v453;
      (*(v304 + 16))(&v309[v307], v306, v281);
      swift_storeEnumTagMultiPayload();
      v310 = v308;
      v311 = swift_isUniquelyReferenced_nonNull_native();
      v2 = v407;
      if ((v311 & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v313 = v474[2];
      v312 = v474[3];
      if (v313 >= v312 >> 1)
      {
        v474 = sub_226BBB6A8(v312 > 1, v313 + 1, 1, v474);
      }

      (*(v471 + 8))(v306, v281);
      sub_226AC47B0(v449, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
      sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v462, _s8MetadataV9LocalItemVMa_0);
      sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
      v314 = v474;
      v474[2] = v313 + 1;
      sub_226B3E1DC(v426, v314 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v313, _s9OperationOMa);
      v487 = v314;
      sub_226AC47B0(v450, &qword_27D7A8BE0, &unk_226D718F0);
      v202 = v483;
      v200 = v478;
      v201 = v480;
      goto LABEL_96;
    }

    sub_226AC47B0(v449, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v462, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
LABEL_77:
    v202 = v483;
    v201 = v480;
    v2 = v407;
    sub_226AC47B0(v450, &qword_27D7A6C30, &unk_226D74330);
    v200 = v478;
LABEL_96:
    v187 = v479;
    goto LABEL_97;
  }

  v283 = v427;
  sub_226AC40E8(v279, v427, &qword_27D7A8BE0, &unk_226D718F0);
  if (v280(v279 + v277, 1, v281) == 1)
  {
    sub_226AC47B0(v449, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v462, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
    (*(v471 + 8))(v283, v281);
    goto LABEL_77;
  }

  v368 = v471;
  v369 = *(v471 + 32);
  v370 = v283;
  v371 = v423;
  v369(v423, v370, v281);
  v372 = v279 + v277;
  v373 = v422;
  v369(v422, v372, v281);
  sub_226B3E308(&qword_27D7A66D8, 255, MEMORY[0x277CC9578]);
  v374 = sub_226D6E33C();
  v375 = *(v368 + 16);
  if (v374)
  {
    v376 = v373;
  }

  else
  {
    v376 = v371;
  }

  v377 = v420;
  v482 = *(v368 + 16);
  v375(v420, v376, v281);
  v378 = sub_226D6D40C();
  v202 = v483;
  v2 = v407;
  if (v378)
  {
    v379 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v380 = v281;
    v381 = *v453;
    v382 = v418;
    *v418 = *v453;
    (v482)(v382 + v379, v377, v380);
    swift_storeEnumTagMultiPayload();
    v383 = v381;
    v384 = swift_isUniquelyReferenced_nonNull_native();
    v385 = v377;
    a1 = v406;
    if ((v384 & 1) == 0)
    {
      v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
    }

    v387 = v474[2];
    v386 = v474[3];
    if (v387 >= v386 >> 1)
    {
      v474 = sub_226BBB6A8(v386 > 1, v387 + 1, 1, v474);
    }

    v388 = *(v471 + 8);
    v389 = v385;
    v390 = v467;
    v388(v389, v467);
    v388(v422, v390);
    v388(v423, v390);
    sub_226AC47B0(v449, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v462, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
    v391 = v474;
    v474[2] = v387 + 1;
    sub_226B3E1DC(v418, v391 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v387, _s9OperationOMa);
    v487 = v391;
    v2 = v407;
  }

  else
  {
    v401 = *(v368 + 8);
    v401(v377, v281);
    v401(v373, v281);
    v401(v371, v281);
    sub_226AC47B0(v449, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v453, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v464, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v462, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v408, _s8MetadataV9CloudItemVMa_0);
    a1 = v406;
  }

  sub_226AC47B0(v450, &qword_27D7A8BE0, &unk_226D718F0);
  v200 = v478;
  v187 = v479;
  v201 = v480;
LABEL_98:
  sub_226B3E0EC(a1 + v485, v201, _s8MetadataV15CloudItemStatusOMa_0);
  if (!v484(v201, 2, v188))
  {
    sub_226B3E154(v201, _s8MetadataV15CloudItemStatusOMa_0);
    goto LABEL_125;
  }

  sub_226B3E0EC(a1 + *(v2 + 28), v200, _s8MetadataV15LocalItemStatusOMa_0);
  if ((*(v199 + 48))(v200, 2, v202))
  {
    sub_226B3E154(v200, _s8MetadataV15LocalItemStatusOMa_0);
    goto LABEL_125;
  }

  sub_226B3E1DC(v200, v187, _s8MetadataV9LocalItemVMa_0);
  v315 = v459;
  sub_226B3E0EC(a1 + v485, v459, _s8MetadataV15CloudItemStatusOMa_0);
  v316 = v484(v315, 2, v188);
  sub_226B3E154(v315, _s8MetadataV15CloudItemStatusOMa_0);
  v317 = (v466 + 48);
  if (v316 == 1)
  {
    v318 = v439;
    sub_226AC40E8(v187, v439, &qword_27D7A6C20, &qword_226D72BF8);
    if ((*v317)(v318, 1, v468) == 1)
    {
      sub_226AC47B0(v318, &qword_27D7A6C20, &qword_226D72BF8);
      v319 = v430;
      sub_226AC40E8(v187 + *(v202 + 20), v430, &qword_27D7A6C10, &unk_226D731E0);
      if ((*(v457 + 48))(v319, 1, v463) == 1)
      {
        sub_226B3E154(v187, _s8MetadataV9LocalItemVMa_0);
        v320 = &qword_27D7A6C10;
        v321 = &unk_226D731E0;
        v322 = v319;
LABEL_108:
        sub_226AC47B0(v322, v320, v321);
        goto LABEL_125;
      }

      v339 = *v319;
      sub_226B3E154(v319, _s8MetadataV9LocalItemV14PendingConsentVMa);
      *v429 = v339;
      swift_storeEnumTagMultiPayload();
      v340 = v339;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v342 = v474[2];
      v341 = v474[3];
      if (v342 >= v341 >> 1)
      {
        v474 = sub_226BBB6A8(v341 > 1, v342 + 1, 1, v474);
      }

      sub_226B3E154(v187, _s8MetadataV9LocalItemVMa_0);
      v330 = v474;
      v474[2] = v342 + 1;
      v331 = v330 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v342;
      v332 = &v461;
    }

    else
    {
      v324 = *v318;
      v325 = v318;
      v326 = v324;
      sub_226B3E154(v325, _s8MetadataV9LocalItemV7ConsentVMa);
      *v437 = v326;
      swift_storeEnumTagMultiPayload();
      v327 = v326;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
      }

      v329 = v474[2];
      v328 = v474[3];
      if (v329 >= v328 >> 1)
      {
        v474 = sub_226BBB6A8(v328 > 1, v329 + 1, 1, v474);
      }

      sub_226B3E154(v187, _s8MetadataV9LocalItemVMa_0);
      v330 = v474;
      v474[2] = v329 + 1;
      v331 = v330 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v329;
      v332 = &v469;
    }
  }

  else
  {
    v323 = v440;
    sub_226AC40E8(v187, v440, &qword_27D7A6C20, &qword_226D72BF8);
    if ((*v317)(v323, 1, v468) == 1)
    {
      sub_226B3E154(v187, _s8MetadataV9LocalItemVMa_0);
      v320 = &qword_27D7A6C20;
      v321 = &qword_226D72BF8;
      v322 = v323;
      goto LABEL_108;
    }

    v333 = *v323;
    v334 = v323;
    v335 = v333;
    sub_226B3E154(v334, _s8MetadataV9LocalItemV7ConsentVMa);
    *v438 = v335;
    swift_storeEnumTagMultiPayload();
    v336 = v335;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
    }

    v338 = v474[2];
    v337 = v474[3];
    if (v338 >= v337 >> 1)
    {
      v474 = sub_226BBB6A8(v337 > 1, v338 + 1, 1, v474);
    }

    sub_226B3E154(v187, _s8MetadataV9LocalItemVMa_0);
    v330 = v474;
    v474[2] = v338 + 1;
    v331 = v330 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v338;
    v332 = &v470;
  }

  sub_226B3E1DC(*(v332 - 32), v331, _s9OperationOMa);
  v487 = v330;
LABEL_125:
  v343 = *(v2 + 28);
  v344 = v475;
  sub_226B3E0EC(a1 + v343, v475, _s8MetadataV15LocalItemStatusOMa_0);
  v345 = *(v199 + 48);
  if (v345(v344, 2, v202))
  {
    v344 = v472;
    sub_226B3E0EC(a1 + v485, v472, _s8MetadataV15CloudItemStatusOMa_0);
    if (!v484(v344, 2, v188))
    {
      v348 = v405;
      sub_226B3E1DC(v344, v405, _s8MetadataV9CloudItemVMa_0);
      v349 = v460;
      sub_226B3E0EC(a1 + v343, v460, _s8MetadataV15LocalItemStatusOMa_0);
      v350 = v345(v349, 2, v202);
      sub_226B3E154(v349, _s8MetadataV15LocalItemStatusOMa_0);
      v351 = *(v348 + *(v188 + 20) + *(v470 + 28));
      if (v350 == 1)
      {
        v352 = v441;
        *v441 = v351;
      }

      else
      {
        v352 = v442;
        *v442 = v351;
      }

      swift_storeEnumTagMultiPayload();
      v353 = v351;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_134;
      }

      goto LABEL_174;
    }

    v346 = _s8MetadataV15CloudItemStatusOMa_0;
  }

  else
  {
    v346 = _s8MetadataV15LocalItemStatusOMa_0;
  }

  sub_226B3E154(v344, v346);
  v347 = v476;
  while (1)
  {
    sub_226B3E0EC(a1 + v485, v347, _s8MetadataV15CloudItemStatusOMa_0);
    if (v484(v347, 2, v188))
    {
      v358 = _s8MetadataV15CloudItemStatusOMa_0;
      v359 = v347;
      goto LABEL_172;
    }

    sub_226B3E1DC(v347, v409, _s8MetadataV9CloudItemVMa_0);
    v360 = sub_226B2A7EC();
    v361 = v360;
    if (v360 >> 62)
    {
      v352 = sub_226D6EDFC();
      a1 = v477;
      if (!v352)
      {
LABEL_170:

        v363 = MEMORY[0x277D84F90];
        goto LABEL_171;
      }
    }

    else
    {
      v352 = *((v360 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v477;
      if (!v352)
      {
        goto LABEL_170;
      }
    }

    v486 = MEMORY[0x277D84F90];
    sub_226AE215C(0, v352 & ~(v352 >> 63), 0);
    if ((v352 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_174:
    v474 = sub_226BBB6A8(0, v474[2] + 1, 1, v474);
LABEL_134:
    v347 = v476;
    v355 = v474[2];
    v354 = v474[3];
    v356 = v405;
    if (v355 >= v354 >> 1)
    {
      v474 = sub_226BBB6A8(v354 > 1, v355 + 1, 1, v474);
      v356 = v405;
    }

    sub_226B3E154(v356, _s8MetadataV9CloudItemVMa_0);
    v357 = v474;
    v474[2] = v355 + 1;
    sub_226B3E1DC(v352, v357 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v355, _s9OperationOMa);
    v487 = v357;
  }

  v362 = 0;
  v363 = v486;
  v364 = v461;
  do
  {
    if ((v361 & 0xC000000000000001) != 0)
    {
      v365 = MEMORY[0x22AA8AFD0](v362, v361);
    }

    else
    {
      v365 = *(v361 + 8 * v362 + 32);
    }

    *v364 = v365;
    swift_storeEnumTagMultiPayload();
    v486 = v363;
    v367 = *(v363 + 16);
    v366 = *(v363 + 24);
    if (v367 >= v366 >> 1)
    {
      sub_226AE215C(v366 > 1, v367 + 1, 1);
      v364 = v461;
      v363 = v486;
    }

    ++v362;
    *(v363 + 16) = v367 + 1;
    sub_226B3E1DC(v364, v363 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v367, _s9OperationOMa);
  }

  while (v352 != v362);

LABEL_171:
  sub_226CED8D8(v363);
  v358 = _s8MetadataV9CloudItemVMa_0;
  v359 = v409;
LABEL_172:
  sub_226B3E154(v359, v358);
  return v487;
}

void sub_226B3DCDC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_226D6BC4C();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9OperationOMa();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6E07C();
  v15 = __swift_project_value_buffer(v14, qword_28105F628);
  sub_226B3E0EC(a1, v13, _s9OperationOMa);
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = a2;
    v21 = v20;
    v44 = v20;
    *v19 = 136315138;
    v22 = sub_226B74384();
    v39[1] = v15;
    v24 = v23;
    sub_226B3E154(v13, _s9OperationOMa);
    v25 = sub_226AC4530(v22, v24, &v44);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_226AB4000, v16, v17, "Performing %s.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v26 = v21;
    a2 = v40;
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    v27 = v19;
    v3 = v41;
    MEMORY[0x22AA8BEE0](v27, -1, -1);
  }

  else
  {

    sub_226B3E154(v13, _s9OperationOMa);
  }

  v28 = v3;
  sub_226B74B68(a2);
  if (v3)
  {
    v29 = v3;
    v30 = sub_226D6E05C();
    v31 = sub_226D6E9DC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v28;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_226AB4000, v30, v31, "Error performing operation: %@.", v32, 0xCu);
      sub_226AC47B0(v33, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v33, -1, -1);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
    }

    v36 = sub_226D6BD1C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_226D6BD0C();
    sub_226B38080(v9);
    sub_226D6BC5C();

    (*(v42 + 8))(v9, v43);
    swift_willThrow();
  }
}

uint64_t sub_226B3E0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B3E154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B3E1B4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_226B3E1C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_226B3E1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226B3E244()
{
  result = qword_27D7A6DD0;
  if (!qword_27D7A6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DD0);
  }

  return result;
}

uint64_t sub_226B3E298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B3E308(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon22StoreMappingChangeTypeOySSG(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226B3E374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_226B3E3BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226B3E420()
{
  result = qword_27D7A6DF0;
  if (!qword_27D7A6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DF0);
  }

  return result;
}

uint64_t sub_226B3E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_226D6862C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6A12C();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectTransactionsBAASigner();
  v14 = (v2 + *(v13 + 20));
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  result = sub_226D6A0EC();
  if ((result & 1) == 0)
  {
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226AB4000, v21, v22, "BAA identity is not supported!", v23, 2u);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    sub_226B3EBC0();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  v17 = *(v13 + 24);
  v18 = *(v2 + v17);
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      v19 = *(v4 + v17);
      v20 = sub_226D6E63C();
      *(v20 + 16) = v18;
      bzero((v20 + 32), v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
      v18 = *(MEMORY[0x277D84F90] + 16);
    }

    v25 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v18, (v20 + 32));
    if (v25)
    {
      v26 = v25;

      v27 = sub_226D6E05C();
      v28 = sub_226D6E9CC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = v26;
        _os_log_impl(&dword_226AB4000, v27, v28, "Failed to generate random data: %d", v29, 8u);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
      }

      sub_226B3EBC0();
      swift_allocError();
      *v30 = 0;
      return swift_willThrow();
    }

    v69 = a2;

    v32 = sub_226B3F994(v31);
    v34 = v33;

    v68 = sub_226D6D20C();
    v36 = v35;
    MEMORY[0x28223BE20](v68);
    *(&v59 - 4) = v4;
    *(&v59 - 3) = v32;
    *(&v59 - 2) = v34;
    sub_226B3F1B0(0, 0xC000000000000000, sub_226B3FA44, a1, v73);
    if (v3)
    {

      sub_226B11B98(v32, v34);
    }

    else
    {
      v64 = v36;
      v66 = v32;
      v67 = v34;
      v37 = v73[0];
      v38 = v73[1];
      v62 = sub_226D6D20C();
      v63 = v39;
      v40 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v65 = v37;
      v41 = v38;
      sub_226D6A0FC();
      v42 = sub_226D6A10C();
      v43 = *(v42 + 16);
      v44 = v67;
      if (v43)
      {
        v60 = v41;
        v61 = 0;
        v73[0] = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v43, 0);
        v45 = v73[0];
        v59 = v42;
        v46 = (v42 + 40);
        do
        {
          v47 = *(v46 - 1);
          v48 = *v46;
          sub_226B11B44(v47, *v46);
          v49 = sub_226D6D20C();
          v51 = v50;
          sub_226B11B98(v47, v48);
          v73[0] = v45;
          v53 = *(v45 + 16);
          v52 = *(v45 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_226AE1D68((v52 > 1), v53 + 1, 1);
            v45 = v73[0];
          }

          v46 += 2;
          *(v45 + 16) = v53 + 1;
          v54 = v45 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
          --v43;
        }

        while (v43);

        v44 = v67;
        v41 = v60;
      }

      else
      {
      }

      v55 = v74;
      v56 = sub_226D6A11C();
      v58 = v57;
      sub_226D6D20C();
      sub_226B11B98(v56, v58);
      sub_226D6861C();
      sub_226D6892C();
      sub_226B11B98(v66, v44);
      sub_226B11B98(v65, v41);
      return (*(v71 + 8))(v55, v72);
    }
  }

  return result;
}

uint64_t type metadata accessor for BankConnectTransactionsBAASigner()
{
  result = qword_27D7A6E20;
  if (!qword_27D7A6E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226B3EBC0()
{
  result = qword_27D7A6DF8;
  if (!qword_27D7A6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DF8);
  }

  return result;
}

uint64_t sub_226B3EC14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v61 = a5;
  v6 = sub_226D6E29C();
  v58 = *(v6 - 8);
  v7 = v58[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_226D6E21C();
  v60 = *(v67 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v67);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6E3DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v56 = a1[1];
  v57 = v17;
  v18 = sub_226D6880C();
  v20 = v19;
  sub_226D6E3BC();
  v21 = sub_226D6E3AC();
  v23 = v22;
  (*(v13 + 8))(v16, v12);
  if (v23 >> 60 == 15)
  {

    v24 = sub_226D6E05C();
    v25 = sub_226D6E9CC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62[0] = v27;
      *v26 = 136315138;
      v28 = sub_226AC4530(v18, v20, v62);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_226AB4000, v24, v25, "Failed to calculate hash for %s!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    else
    {
    }

    sub_226B3EBC0();
    swift_allocError();
    *v48 = 2;
    return swift_willThrow();
  }

  else
  {
    v29 = v23;

    v65 = v21;
    v66 = v23;
    v51 = v23;
    v63 = MEMORY[0x277CC9318];
    v64 = MEMORY[0x277CC9300];
    v31 = v53;
    v30 = v54;
    v62[0] = v53;
    v62[1] = v54;
    v32 = __swift_project_boxed_opaque_existential_1(v62, MEMORY[0x277CC9318]);
    v33 = v21;
    v50 = v21;
    v34 = *v32;
    v35 = v32[1];
    sub_226B3FA64(v33, v29);
    sub_226B11B44(v31, v30);
    v36 = v55;
    sub_226B3F350(v34, v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v37 = v65;
    v38 = v66;
    sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540]);
    sub_226D6E20C();
    sub_226B11B44(v37, v38);
    sub_226B3F488(v37, v38);
    v55 = v36;
    sub_226B11B98(v37, v38);
    v39 = v59;
    sub_226D6E1FC();
    sub_226B11B98(v37, v38);
    (v58[1])(v9, v6);
    v40 = v61;
    v41 = v56;
    v42 = v57;
    *v61 = v57;
    v40[1] = v41;
    v43 = v67;
    v63 = v67;
    v64 = sub_226B3FA78(&qword_27D7A6E08, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
    v45 = v60;
    (*(v60 + 16))(boxed_opaque_existential_1, v39, v43);
    v46 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v58 = &v49;
    MEMORY[0x28223BE20](v46);
    *(&v49 - 2) = v40;
    sub_226B11B44(v42, v41);
    sub_226D6CEFC();
    sub_226B3FAEC(v50, v51);
    (*(v45 + 8))(v39, v43);
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }
}

uint64_t sub_226B3F1B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v19 = a2;
  v8 = a2;
  v9 = a1;
  v18 = a1;
  v11 = *(a4 + 16);
  result = sub_226B11B44(a1, a2);
  if (v11)
  {
    v13 = *(sub_226D6882C() - 8);
    v14 = a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    while (1)
    {
      a3(&v16, &v18, v14);
      result = sub_226B11B98(v18, v19);
      if (v5)
      {
        break;
      }

      v9 = v16;
      v8 = v17;
      v18 = v16;
      v19 = v17;
      v14 += v15;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *a5 = v9;
    a5[1] = v8;
  }

  return result;
}

_BYTE *sub_226B3F2BC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_226B3F7DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_226B3F894(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_226B3F910(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_226B3F350(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_226D6D1DC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_226B3F748(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B3F488(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_226D6E29C();
      sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540]);
      result = sub_226D6E1EC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_226B3F668(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B3F668(uint64_t a1, uint64_t a2)
{
  result = sub_226D6CDBC();
  if (!result || (result = sub_226D6CDDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226D6CDCC();
      sub_226D6E29C();
      sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540]);
      return sub_226D6E1EC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B3F748(uint64_t a1, uint64_t a2)
{
  result = sub_226D6CDBC();
  if (!result || (result = sub_226D6CDDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226D6CDCC();
      return sub_226D6D1DC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B3F7DC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B3F894(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_226D6CDEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_226D6CDAC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D1CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_226B3F910(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_226D6CDEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_226D6CDAC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_226B3F994(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E10, &qword_226D73310);
  v10 = sub_226B3FB00();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_226B3F2BC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_226B3FA64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226B11B44(a1, a2);
  }

  return a1;
}

uint64_t sub_226B3FA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B3FAEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226B11B98(a1, a2);
  }

  return a1;
}

unint64_t sub_226B3FB00()
{
  result = qword_27D7A6E18;
  if (!qword_27D7A6E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6E10, &qword_226D73310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon38BankConnectTransactionsBAASigningErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226B3FB7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226B3FBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_226B3FC28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_226B3FC80()
{
  result = sub_226D6E07C();
  if (v1 <= 0x3F)
  {
    result = sub_226B3FD0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_226B3FD0C()
{
  result = qword_27D7A6E30;
  if (!qword_27D7A6E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A6E30);
  }

  return result;
}

uint64_t sub_226B3FD70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_226B3FE5C;

  return v6();
}

uint64_t sub_226B3FE5C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_226B40070;
  }

  else
  {
    v3 = sub_226B3FF70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B3FF70()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v1[3] = v2;
  v1[4] = sub_226B401B8(&qword_281062BD8);
  v1[5] = sub_226B401B8(&qword_281062BE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B8], v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B40070()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v2[3] = v3;
  v2[4] = sub_226B401B8(&qword_281062BD8);
  v2[5] = sub_226B401B8(&qword_281062BE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v5 = v1;
  sub_226D66FBC();
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B0], v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B401B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6E38, &qword_226D73418);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226B40210(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for audit_token_t(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B40298(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_226B4039C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFE0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_226B40520()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226B40568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226B405B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226B40608(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 72) = v8;
  *v8 = v6;
  v8[1] = sub_226B406FC;

  return v10(v6 + 16);
}

uint64_t sub_226B406FC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B407F8, 0, 0);
}

uint64_t sub_226B407F8()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6E11C();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226B40884(uint64_t a1)
{
  v4 = *(sub_226D6E14C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226B40608(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_226B40988()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226B409C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226B40A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_226B40A50(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t BankConnectServiceImplementation.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226B40B88;

  return sub_226C00808(v9, a1, a2);
}

uint64_t sub_226B40B88()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B40CFC;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadPaymentInfo(for:)(v6);
  }
}

uint64_t sub_226B40CFC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_226B40EF4;
  }

  else
  {
    v3 = sub_226B40E10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B40E10()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B40E90()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B40EF4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t BankConnectServiceImplementation.loadPaymentInfo(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_226D6B9BC();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B41100, 0, 0);
}

uint64_t sub_226B41100()
{
  v54 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v3 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  sub_226D6D46C();
  v8 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v9 = sub_226D676AC();
  *(v0 + 144) = v9;
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v1;
  v10[4] = v4;
  sub_226D6EB7C();

  if (*(v0 + 192) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = sub_226D6E07C();
    *(v0 + 152) = __swift_project_value_buffer(v14, qword_27D7A7D10);
    v7(v11, v12, v13);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9AC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 112);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v21 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      v51 = v16;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = sub_226AC4530(v22, v24, v53);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_226AB4000, v15, v51, "Fetching payment information for %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x22AA8BEE0](v52, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    else
    {

      v25 = *(v19 + 8);
      v25(v18, v20);
    }

    *(v0 + 160) = v25;
    v39 = *(v0 + 48);
    v38 = *(v0 + 56);
    v40 = *(v0 + 40);
    v41 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v53[3] = &type metadata for BankConnectEnvironmentImplementation;
    v53[4] = sub_226B41FC0();
    v53[0] = swift_allocObject();
    sub_226B42014(v41, v53[0] + 16);
    v42 = sub_226D6BB5C();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_226D6BB4C();
    *(v0 + 16) = v45;
    *(v0 + 168) = v45;
    (*(v39 + 104))(v38, *MEMORY[0x277CC6D38], v40);
    v46 = *(MEMORY[0x277CC8168] + 4);
    v47 = swift_task_alloc();
    *(v0 + 176) = v47;
    *v47 = v0;
    v47[1] = sub_226B41618;
    v48 = *(v0 + 120);
    v49 = *(v0 + 56);
    v50 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v48, v49, v42, v50);
  }

  else
  {
    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    v35 = *(v0 + 56);

    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v28, v31);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_226B41618()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];
  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v6 = sub_226B4189C;
  }

  else
  {
    v6 = sub_226B4179C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226B4179C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  sub_226B41DF4(*(v0 + 32));
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v4, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226B4189C()
{
  v41 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v38 = *(v0 + 160);
    v39 = *(v0 + 184);
    v7 = *(v0 + 104);
    v37 = *(v0 + 96);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v9 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    v38(v7, v8);
    v15 = sub_226AC4530(v12, v14, &v40);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v39;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to fetch payment information for %s with: %@.", v9, 0x16u);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 160);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);

    v18(v19, v21);
  }

  v22 = *(v0 + 184);
  v23 = *(v0 + 144);
  v24 = *(v0 + 120);
  v25 = *(v0 + 80);
  v26 = *(v0 + 32);
  v27 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v28 = v22;
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277CC7AB0], v27);
  swift_willThrow();
  sub_226B41DF4(v26);

  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 88);
  v34 = *(v0 + 56);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  (*(v32 + 8))(v29, v33);

  v35 = *(v0 + 8);

  return v35();
}

void sub_226B41C24(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    sub_226D69F0C();
    v8 = v7;
    v9 = sub_226D69D9C();
    if (v2)
    {
    }

    else
    {
      v12 = v9;
      if (v9)
      {
        if ((sub_226D69E9C() & 1) == 0)
        {

          *a2 = 0;
          goto LABEL_6;
        }

        v13 = sub_226D6D3EC();
        [v12 setLastPaymentInfoRefreshDate_];

        v16[0] = 0;
        if (![a1 save_])
        {
          v15 = v16[0];
          sub_226D6D04C();

          swift_willThrow();
          goto LABEL_6;
        }

        v14 = v16[0];
      }
    }

    *a2 = 1;
  }

  else
  {
    v10 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B41DF4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v7 + 41), v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v8 = sub_226D6B97C();
  v10 = v9;
  sub_226D6D3BC();
  v12 = v11;
  v15[3] = &_s24InstitutionDurationEventVN;
  v15[4] = sub_226B420B8();
  v13 = swift_allocObject();
  v15[0] = v13;
  v13[2] = 0xD000000000000030;
  v13[3] = 0x8000000226D7FBA0;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = v12;
  sub_226D69AFC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void sub_226B41FA0(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_226B41C24(*(v1 + 16), a1);
}

unint64_t sub_226B41FC0()
{
  result = qword_28105FEF0;
  if (!qword_28105FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEF0);
  }

  return result;
}

uint64_t sub_226B42070(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226B420B8()
{
  result = qword_27D7A6E48;
  if (!qword_27D7A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E48);
  }

  return result;
}

double ManagedOrderDashboardItemUpdater.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_226B42120(void *a1, uint64_t a2)
{
  v31 = a2;
  v29 = sub_226D6D71C();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226D6D6DC();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D6D4AC();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v30);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v27 = a1;
  v18 = [a1 dashboardItem];
  v19 = [a1 orderContent];
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D6B2DC();

  (*(v3 + 8))(v6, v29);
  (*(v7 + 8))(v10, v28);
  v20 = sub_226D6D3EC();
  [v18 setStoredArchiveDate_];

  v21 = [v27 orderContent];
  v22 = [v21 orderUpdateDate];

  sub_226D6D45C();
  v23 = sub_226D6D3EC();
  v24 = *(v11 + 8);
  v25 = v30;
  v24(v15, v30);
  [v18 setStoredOrderUpdateDate_];

  sub_226D6D46C();
  sub_226D6A71C();
  v24(v15, v25);
  sub_226B42FD0(v18, v31);
  v24(v17, v25);
}

void ManagedOrderDashboardItemUpdater.updateShowsAsActive(context:now:)(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v45 = a2;
  v43 = a3;
  v4 = sub_226D6A6BC();
  v44 = *(v4 - 8);
  v5 = v44[8];
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67E6C();
  sub_226D67F0C();
  (*(v9 + 8))(v12, v8);
  v13 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v14 = sub_226D6E36C();

  v15 = [v13 initWithBundleIdentifier_];

  v16 = sub_226B42B94();
  v52[4] = MEMORY[0x277CC85E8];
  v52[3] = v16;
  v52[0] = v15;
  sub_226D6A72C();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = sub_226D6A70C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D837D0];
  *(v18 + 16) = xmmword_226D70840;
  *(v18 + 56) = v19;
  strcpy((v18 + 32), "classicOrder");
  *(v18 + 45) = 0;
  *(v18 + 46) = -5120;
  v20 = sub_226D6E5CC();

  [v17 setPropertiesToFetch_];

  v21 = sub_226D6E5CC();
  [v17 setRelationshipKeyPathsForPrefetching_];

  v22 = a1;
  v23 = v63;
  v24 = sub_226D6EBBC();
  if (v23)
  {
    sub_226B42BE0(v52);

    return;
  }

  v25 = v24;
  v26 = v44;
  v51 = 0;
  v49 = v7;
  v50 = v4;
  v42 = v22;
  if (v24 >> 62)
  {
LABEL_29:
    v27 = sub_226D6EDFC();
  }

  else
  {
    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v17;
  if (v27)
  {
    v28 = 0;
    v46 = 0;
    v29 = 0;
    v17 = (v25 & 0xC000000000000001);
    v63 = v25 & 0xFFFFFFFFFFFFFF8;
    v48 = (v26 + 11);
    v47 = *MEMORY[0x277CC7C50];
    v41 = *MEMORY[0x277CC7C58];
    v40 = (v26 + 1);
    v44 = v26 + 12;
    while (1)
    {
      if (v17)
      {
        v30 = MEMORY[0x22AA8AFD0](v28, v25);
      }

      else
      {
        if (v28 >= *(v63 + 16))
        {
          goto LABEL_28;
        }

        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = v30;
      if (sub_226D6A71C())
      {
        if ([v31 storedShowsAsActive])
        {
        }

        else
        {
          v33 = v49;
          sub_226D6A6DC();
          v26 = v50;
          v34 = (*v48)(v33, v50);
          if (v34 == v47)
          {
            (*v44)(v33, v26);
            v35 = *v33;
            v26 = v52;
            v36 = v51;
            v37 = sub_226B5AC68(v35, v42);
            v51 = v36;
            if (v36)
            {

              sub_226B42BE0(v52);
              return;
            }

            v46 = v37;
          }

          else
          {
            if (v34 != v41)
            {
              sub_226D6F0AC();
              __break(1u);
              return;
            }

            (*v40)(v33, v26);
          }
        }

        v29 = 1;
      }

      else
      {
      }

      ++v28;
      if (v32 == v27)
      {
        goto LABEL_24;
      }
    }
  }

  v46 = 0;
  v29 = 0;
LABEL_24:

  sub_226B42BE0(v52);
  v38 = v43;
  *v43 = v29 & 1;
  v38[1] = v46 & 1;
}

unint64_t sub_226B42B94()
{
  result = qword_28105F428;
  if (!qword_28105F428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F428);
  }

  return result;
}

void sub_226B42C34(void *a1, void *a2)
{
  v34 = a2;
  v32 = sub_226D68F4C();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_226D6D4AC();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v33);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v29 - v11;
  v12 = sub_226D6A6BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1;
  v18 = [a1 dashboardItem];
  v19 = v18;
  if (!v18)
  {
    v29 = sub_226D6A72C();
    *v16 = v17;
    (*(v13 + 104))(v16, *MEMORY[0x277CC7C50], v12);
    v20 = v17;
    v21 = v34;
    v19 = sub_226D6A6CC();
  }

  v22 = v18;
  v23 = [v17 archiveDate];
  v24 = v31;
  sub_226D6D45C();

  v25 = sub_226D6D3EC();
  [v19 setStoredArchiveDate_];

  sub_226D6749C();
  sub_226D68F2C();
  (*(v30 + 8))(v5, v32);
  v26 = sub_226D6D3EC();
  v27 = *(v6 + 8);
  v28 = v33;
  v27(v10, v33);
  [v19 setStoredOrderUpdateDate_];

  sub_226D6D46C();
  sub_226D6A71C();
  v27(v10, v28);
  sub_226B42FD0(v19, v34);
  v27(v24, v28);
}

uint64_t sub_226B42FD0(void *a1, uint64_t a2)
{
  v38 = a2;
  v41 = sub_226D6CEAC();
  v40 = *(v41 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D61C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D6DC();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D4AC();
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 storedArchiveDate];
  sub_226D6D45C();

  (*(v7 + 104))(v10, *MEMORY[0x277CC9810], v6);
  sub_226D6D62C();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E58, &qword_226D73670);
  v20 = sub_226D6D6CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D71840;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, *MEMORY[0x277CC9988], v20);
  v26(v25 + v22, *MEMORY[0x277CC9998], v20);
  sub_226B1E8E0(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_226D6D65C();

  result = sub_226D6CE2C();
  if (v28)
  {
    goto LABEL_14;
  }

  if (result < -32768)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= 0x8000)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_226D6CE4C();
  if (v29)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < -32768)
  {
    goto LABEL_12;
  }

  if (result >= 0x8000)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_226D6B77C();
  v30 = v39;
  v31 = sub_226D6B75C();
  if (!v30)
  {
    v32 = v31;
    sub_226D6B74C();
  }

  (*(v40 + 8))(v5, v41);
  (*(v36 + 8))(v14, v37);
  return (*(v34 + 8))(v18, v35);
}

Swift::Void __swiftcall ManagedOrderDashboardItemUpdater.postProcess(shouldRefreshWalletMessages:)(Swift::Bool shouldRefreshWalletMessages)
{
  v3 = sub_226D6714C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(v1, v9, &qword_27D7A6910, &unk_226D721C0);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 104))(v7, *MEMORY[0x277CC6B48], v3);
    sub_226D680BC();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    if (!shouldRefreshWalletMessages)
    {
      return;
    }
  }

  else
  {
    sub_226AC47B0(v9, &qword_27D7A6910, &unk_226D721C0);
    if (!shouldRefreshWalletMessages)
    {
      return;
    }
  }

  sub_226AC40E8(v1 + 40, v9, &qword_27D7A6E50, &unk_226D73598);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_226D69A5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_226AC47B0(v9, &qword_27D7A6E50, &unk_226D73598);
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_226B4368C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_226B436E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedOrderDashboardItemUpdater.UpdateResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ManagedOrderDashboardItemUpdater.UpdateResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226B438D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectPendingConsentProcessingTask();
  sub_226AC40E8(v1 + *(v12 + 28), v6, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + 32);
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

unint64_t sub_226B43AEC()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000033;
}

uint64_t sub_226B43B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectPendingConsentProcessingTask() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B43C44, 0, 0);
}

uint64_t sub_226B43C44()
{
  v23 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  v0[10] = __swift_project_value_buffer(v4, qword_28105F710);
  sub_226B4E088(v3, v2, type metadata accessor for BankConnectPendingConsentProcessingTask);
  sub_226B4E088(v3, v1, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  v9 = v0[9];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    v12 = *v9;
    v13 = v9[1];

    sub_226B4E318(v9, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v14 = sub_226AC4530(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *(v8 + 16);
    v16 = *(v8 + 24);

    sub_226B4E318(v8, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v17 = sub_226AC4530(v15, v16, &v22);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Processing pending consent validation task for with consentID: %s for institutionID: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {

    sub_226B4E318(v8, type metadata accessor for BankConnectPendingConsentProcessingTask);
    sub_226B4E318(v9, type metadata accessor for BankConnectPendingConsentProcessingTask);
  }

  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_226B43EF8;
  v20 = v0[3];
  v19 = v0[4];

  return sub_226B44534(v19);
}

uint64_t sub_226B43EF8()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B44220, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[6];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_226B44060()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226B44488;
  }

  else
  {
    v3 = sub_226B44174;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B44174()
{
  sub_226B4E318(*(v0 + 56), MEMORY[0x277CC6528]);

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226B44220()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    sub_226B4E528(v7, v8, MEMORY[0x277CC6528]);
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_226B44060;
    v10 = *(v0 + 56);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);

    return sub_226B451A4(v10, v11);
  }

  else
  {
    v14 = *(v0 + 80);

    v15 = v6;
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 96);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v18;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_226AB4000, v16, v17, "Failed to process pending consent with error: %@", v19, 0xCu);
      sub_226AC47B0(v20, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    v23 = *(v0 + 96);

    swift_willThrow();
    v24 = *(v0 + 96);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_226B44488()
{
  sub_226B4E318(*(v0 + 56), MEMORY[0x277CC6528]);

  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}