uint64_t sub_22B151084()
{
  v62 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 504);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 360);
  v8 = *(v0 + 232);
  v9 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v4, v9, v5);

  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 504);
  v14 = *(v0 + 472);
  v15 = *(v0 + 480);
  if (v12)
  {
    v59 = *(v0 + 352);
    v60 = *(v0 + 360);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v61);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_22B1A7B20(v16, v17, v61);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_22B1A7B20(v59, v60, v61);
    _os_log_impl(&dword_22B116000, v10, v11, "%s site %s could not get placemark from %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v15 + 8))(v13, v14);
  }

  else
  {

    (*(v15 + 8))(v13, v14);
  }

  if (*(v0 + 376))
  {
    v20 = *(v0 + 600);
    v21 = *(v0 + 368);
    v22 = *(v0 + 376);

    sub_22B35F1DC();
  }

  if (*(v0 + 392))
  {
    v23 = *(v0 + 600);
    v24 = *(v0 + 384);
    v25 = *(v0 + 392);

    sub_22B35F1BC();
  }

  v26 = *(v0 + 528);
  v27 = *(v0 + 432);
  v28 = *(v0 + 440);
  sub_22B170BE0(*(v0 + 552), v26, &qword_27D8BA340, &qword_22B363FB0);
  v29 = *(v28 + 48);
  if (v29(v26, 1, v27) == 1)
  {
    sub_22B123284(*(v0 + 528), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v30 = *(v0 + 600);
    v31 = *(v0 + 584);
    v32 = *(v0 + 576);
    v33 = *(v0 + 536);
    v34 = *(v0 + 464);
    v35 = *(v0 + 432);
    v36 = *(v0 + 440);
    (*(v36 + 32))(v34, *(v0 + 528), v35);
    (*(v36 + 16))(v33, v34, v35);
    v32(v33, 0, 1, v35);
    sub_22B35F2BC();
    (*(v36 + 8))(v34, v35);
  }

  v37 = *(v0 + 520);
  v38 = *(v0 + 432);
  sub_22B170BE0(*(v0 + 560), v37, &qword_27D8BA340, &qword_22B363FB0);
  if (v29(v37, 1, v38) == 1)
  {
    sub_22B123284(*(v0 + 520), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v39 = *(v0 + 600);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    v42 = *(v0 + 536);
    v43 = *(v0 + 456);
    v44 = *(v0 + 432);
    v45 = *(v0 + 440);
    (*(v45 + 32))(v43, *(v0 + 520), v44);
    (*(v45 + 16))(v42, v43, v44);
    v41(v42, 0, 1, v44);
    sub_22B35F23C();
    (*(v45 + 8))(v43, v44);
  }

  v46 = *(v0 + 512);
  v47 = *(v0 + 432);
  sub_22B170BE0(*(v0 + 544), v46, &qword_27D8BA340, &qword_22B363FB0);
  if (v29(v46, 1, v47) == 1)
  {
    sub_22B123284(*(v0 + 512), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v48 = *(v0 + 600);
    v49 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 536);
    v53 = *(v0 + 440);
    v52 = *(v0 + 448);
    v54 = *(v0 + 432);
    (*(v53 + 32))(v52, *(v0 + 512), v54);
    (*(v53 + 16))(v51, v52, v54);
    v50(v51, 0, 1, v54);
    sub_22B35F10C();
    (*(v53 + 8))(v52, v54);
  }

  v55 = *(v0 + 600);
  v56 = swift_task_alloc();
  *(v0 + 632) = v56;
  *v56 = v0;
  v56[1] = sub_22B151658;
  v57 = *(v0 + 656);

  return EKEnergySite.save(reset:tokenUpdate:)(0, v57);
}

uint64_t sub_22B151658()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 568);
  if (v0)
  {
    v6 = sub_22B1518F8;
  }

  else
  {
    v6 = sub_22B151784;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B151784()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[64];
  v10 = v0[63];
  v11 = v0[62];
  v12 = v0[61];
  v13 = v0[58];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[52];
  sub_22B123284(v0[68], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);

  v7 = v0[1];
  v8 = v0[75];

  return v7(v8);
}

uint64_t sub_22B1518F8()
{
  *(v0 + 648) = *(v0 + 640);
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_22B123284(*(v0 + 544), &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B1519B8, 0, 0);
}

uint64_t sub_22B1519B8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[61];
  v10 = v0[62];
  v13 = v0[58];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[52];
  v18 = v0[81];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B151D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, const void *a13, void *a14)
{
  v14[2] = a14;
  v19 = sub_22B35DE9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64) + 15;
  v67 = swift_task_alloc();
  v14[3] = v67;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v23 = swift_task_alloc();
  v14[4] = v23;
  v14[5] = _Block_copy(a13);
  v24 = sub_22B36084C();
  v76 = v25;
  v77 = v24;
  v14[6] = v25;
  if (a2)
  {
    v73 = sub_22B36084C();
  }

  else
  {
    v73 = 0;
    v26 = 0;
  }

  v72 = v26;
  v14[7] = v26;
  if (a3)
  {
    v71 = sub_22B36084C();
  }

  else
  {
    v71 = 0;
    v27 = 0;
  }

  v28 = a9;
  v74 = v23;
  v75 = v20;
  v78 = v19;
  v70 = v27;
  v14[8] = v27;
  if (a4)
  {
    v69 = sub_22B36084C();
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v34 = a9;
    v35 = a10;
    v28 = a11;
    v37 = a12;
    v36 = a14;
  }

  else
  {
    v69 = 0;
    v29 = 0;
    v30 = a12;
    v31 = a14;
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v35 = a8;
    v37 = a10;
    v36 = a11;
  }

  v68 = v29;
  v14[9] = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v28;
  v45 = v37;
  v46 = v36;
  if (a5)
  {
    sub_22B36084C();
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v14[10] = v48;
  if (a6)
  {
    sub_22B36084C();
    v50 = v49;

    v14[11] = v50;
    if (a7)
    {
LABEL_15:
      sub_22B36084C();
      v52 = v51;

      goto LABEL_18;
    }
  }

  else
  {
    v14[11] = 0;
    if (a7)
    {
      goto LABEL_15;
    }
  }

  v52 = 0;
LABEL_18:
  v14[12] = v52;
  if (a8)
  {
    sub_22B36084C();
    v54 = v53;

    v14[13] = v54;
    if (a9)
    {
      goto LABEL_20;
    }

LABEL_23:
    v14[14] = 0;
    if (a10)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v14[13] = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_22B36084C();
  v56 = v55;

  v14[14] = v56;
  if (a10)
  {
LABEL_21:
    sub_22B36084C();
    v58 = v57;

    goto LABEL_25;
  }

LABEL_24:
  v58 = 0;
LABEL_25:
  v14[15] = v58;
  if (a11)
  {
    sub_22B36084C();
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v14[16] = v60;
  if (a12)
  {
    sub_22B35DE5C();

    v61 = v74;
    v62 = v75;
    v63 = v78;
    (*(v75 + 32))(v74, v67, v78);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v63 = v78;
    v61 = v74;
    v62 = v75;
  }

  (*(v62 + 56))(v61, v64, 1, v63);
  v65 = swift_task_alloc();
  v14[17] = v65;
  *v65 = v14;
  v65[1] = sub_22B152184;

  return sub_22B14F600(v77, v76, v73, v72, v71, v70, v69, v68);
}

uint64_t sub_22B152184(void *a1)
{
  v25 = *v1;
  v2 = *v1;
  v3 = *(*v1 + 136);
  v24 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  v8 = v2[12];
  v9 = v2[11];
  v19 = v2[10];
  v20 = v2[9];
  v21 = v2[8];
  v22 = v2[7];
  v10 = v2[6];
  v11 = v2[5];
  v12 = v2[2];
  sub_22B123284(v2[4], &qword_27D8BA340, &qword_22B363FB0);

  if (v23)
  {
    v13 = sub_22B35DB8C();

    (v11)[2](v11, 0, v13);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v15 = v25[3];
  v14 = v25[4];

  v16 = *(v24 + 8);

  return v16();
}

uint64_t sub_22B15262C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1526D4;

  return sub_22B1683F0();
}

uint64_t sub_22B1526D4(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B152800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v103 = a5;
  v7 = v6;
  v108 = a4;
  v124 = a3;
  v113 = a6;
  v105 = sub_22B3604BC();
  v109 = *(v105 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v105);
  v107 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22B36047C();
  v111 = *(v112 - 8);
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  v14 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = &v102 - v18;
  MEMORY[0x28223BE20](v19);
  v118 = &v102 - v20;
  v106 = a1;
  v21 = sub_22B36048C();
  v22 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v23 = v16;
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v21, v22, v25, "Start: Encode AMI Data", "", v24, 2u);
    v26 = v24;
    v16 = v23;
    MEMORY[0x23188F650](v26, -1, -1);
  }

  v104 = a2;

  v27 = sub_22B35D82C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v123 = sub_22B35D81C();
  v30 = v124;
  v31 = *(v124 + 16);
  v32 = sub_22B35DE9C();
  v33 = sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578]);
  v34 = MEMORY[0x23188E030](v31, v32, MEMORY[0x277CC9318], v33);
  v35 = v30 + 64;
  v36 = 1 << *(v30 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v30 + 64);
  v39 = (v36 + 63) >> 6;
  v132 = v32;
  v116 = v32 - 8;

  v40 = 0;
  v114 = v39;
  v115 = v30 + 64;
  v117 = v16;
  while (v38)
  {
    v129 = v34;
    v130 = v7;
LABEL_14:
    v47 = __clz(__rbit64(v38)) | (v40 << 6);
    v48 = v124;
    v49 = *(v124 + 48);
    v50 = *(v132 - 8);
    v51 = v50;
    v120 = *(v50 + 72);
    v53 = v50 + 16;
    v52 = *(v50 + 16);
    v54 = v118;
    v121 = v53;
    v122 = v52;
    v52(v118, v49 + v120 * v47, v132);
    v55 = *(v48 + 56);
    v56 = sub_22B35F00C();
    v57 = *(v56 - 8);
    v58 = v55 + *(v57 + 72) * v47;
    v59 = v119;
    v60 = *(v119 + 48);
    (*(v57 + 16))(&v54[v60], v58, v56);
    v61 = *(v59 + 48);
    v128 = v51;
    v62 = *(v51 + 32);
    v63 = v131;
    v62(v131, v54, v132);
    v126 = v57;
    (*(v57 + 32))(v63 + v61, &v54[v60], v56);
    v64 = v117;
    sub_22B170BE0(v63, v117, &qword_27D8BA350, &unk_22B364020);
    v65 = *(v59 + 48);
    sub_22B172464(&qword_27D8BA378, MEMORY[0x277D073A8]);
    v127 = v56;
    v66 = v130;
    v67 = sub_22B35D80C();
    if (v66)
    {
      sub_22B123284(v131, &qword_27D8BA350, &unk_22B364020);

      (*(v126 + 8))(v64 + v65, v127);
      result = (*(v128 + 8))(v64, v132);
      *v103 = v66;
      return result;
    }

    v69 = v67;
    v130 = v68;
    v125 = v65;
    v70 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v70;
    v72 = v64;
    v74 = sub_22B33B348(v64);
    v75 = v70[2];
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_22B3613BC();
      __break(1u);
      return result;
    }

    v78 = v73;
    if (v70[3] >= v77)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22B341430();
      }
    }

    else
    {
      sub_22B33C2F4(v77, isUniquelyReferenced_nonNull_native);
      v79 = sub_22B33B348(v72);
      if ((v78 & 1) != (v80 & 1))
      {
        goto LABEL_36;
      }

      v74 = v79;
    }

    v7 = 0;
    v34 = v133;
    if (v78)
    {
      v41 = (v133[7] + 16 * v74);
      v42 = *v41;
      v43 = v41[1];
      v44 = v130;
      *v41 = v69;
      v41[1] = v44;
      sub_22B12F174(v42, v43);
      sub_22B123284(v131, &qword_27D8BA350, &unk_22B364020);
      v45 = v72;
    }

    else
    {
      v133[(v74 >> 6) + 8] |= 1 << v74;
      v45 = v72;
      v122(v34[6] + v74 * v120, v72, v132);
      v81 = (v34[7] + 16 * v74);
      v83 = v130;
      v82 = v131;
      *v81 = v69;
      v81[1] = v83;
      sub_22B123284(v82, &qword_27D8BA350, &unk_22B364020);
      v84 = v34[2];
      v85 = __OFADD__(v84, 1);
      v86 = v84 + 1;
      if (v85)
      {
        goto LABEL_35;
      }

      v34[2] = v86;
    }

    v38 &= v38 - 1;
    (*(v128 + 8))(v45, v132);
    (*(v126 + 8))(v45 + v125, v127);
    v39 = v114;
    v35 = v115;
  }

  while (1)
  {
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v46 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v46);
    ++v40;
    if (v38)
    {
      v129 = v34;
      v130 = v7;
      v40 = v46;
      goto LABEL_14;
    }
  }

  v87 = sub_22B36048C();
  v88 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v87, v88, v90, "End: Encode AMI Data", "", v89, 2u);
    MEMORY[0x23188F650](v89, -1, -1);
  }

  v91 = sub_22B36048C();
  v92 = v110;
  sub_22B3604CC();
  v93 = sub_22B360E1C();
  v94 = sub_22B360FDC();
  v95 = v109;
  v96 = v107;
  if (v94)
  {

    sub_22B3604FC();

    v97 = v105;
    if ((*(v95 + 88))(v96, v105) == *MEMORY[0x277D85B00])
    {
      v98 = "[Error] Interval already ended";
    }

    else
    {
      (*(v95 + 8))(v96, v97);
      v98 = "";
    }

    v99 = swift_slowAlloc();
    *v99 = 0;
    v100 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v91, v93, v100, "LeanHistoricalEnergyUsage", v98, v99, 2u);
    MEMORY[0x23188F650](v99, -1, -1);
  }

  result = (*(v111 + 8))(v92, v112);
  *v113 = v34;
  return result;
}

void sub_22B153384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_22B35E0BC();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64) + 15;
  v10[5] = swift_task_alloc();
  v14 = sub_22B35DE9C();
  v10[6] = v14;
  v15 = *(v14 - 8);
  v10[7] = v15;
  v16 = *(v15 + 64) + 15;
  v10[8] = swift_task_alloc();
  v10[9] = swift_task_alloc();
  v10[10] = _Block_copy(a9);
  sub_22B36084C();
  v10[11] = v17;
  sub_22B35DE5C();
  sub_22B35DE5C();
  sub_22B36084C();
  v10[12] = v18;
  sub_22B36084C();
  v10[13] = v19;
  sub_22B35E0AC();
  sub_22B36084C();
  v10[14] = v20;
  v21 = a10;
  v22 = swift_task_alloc();
  v10[15] = v22;
  *v22 = v10;
  v22[1] = sub_22B1535F4;

  JUMPOUT(0x22B1689A8);
}

uint64_t sub_22B1535F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v23 = *(*v1 + 88);
  v25 = *(*v1 + 72);
  v24 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v22 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 24);
  v11 = *(*v1 + 16);
  v12 = *v1;

  (*(v9 + 8))(v22, v10);
  v13 = *(v7 + 8);
  v13(v24, v8);
  v13(v25, v8);
  if (a1)
  {
    v14 = v2[6];
    sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578]);
    v15 = sub_22B3606CC();
  }

  else
  {
    v15 = 0;
  }

  v17 = v2[9];
  v16 = v2[10];
  v18 = v2[8];
  v19 = v2[5];
  (v16)[2](v16, v15);

  _Block_release(v16);

  v20 = *(v12 + 8);

  return v20();
}

uint64_t sub_22B153AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = _Block_copy(a6);
  sub_22B35DE5C();
  (*(v9 + 8))(v11, v8);
  v12[2](v12, 0);
  _Block_release(v12);

  v13 = *(v6 + 8);

  return v13();
}

uint64_t sub_22B153D8C(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_22B36084C();
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_22B153E08, 0, 0);
}

uint64_t sub_22B153E08()
{
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B153ED4;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B23B1D4(v3, v2);
}

uint64_t sub_22B153ED4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B15404C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 16);

    (*(v8 + 16))(v8, a1 & 1, 0);
    _Block_release(*(v4 + 16));
    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_22B15404C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = sub_22B35DB8C();

  (*(v3 + 16))(v3, 0, v4);
  _Block_release(*(v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:refreshToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v16;
  v9[13] = v8;
  v9[10] = a8;
  v9[11] = v15;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_22B35DE9C();
  v9[14] = v10;
  v11 = *(v10 - 8);
  v9[15] = v11;
  v12 = *(v11 + 64) + 15;
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1541DC, 0, 0);
}

uint64_t sub_22B1541DC()
{
  v1 = v0[13];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000057, 0x800000022B3692F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = qword_28140BDD8;
    v0[18] = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B154330, v2, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B154330()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v17 = *(v0 + 56);
  v18 = *(v0 + 72);
  v15 = *(v0 + 24);
  v16 = *(v0 + 40);
  sub_22B35DE6C();
  sub_22B35DE0C();
  v8 = *(v4 + 8);
  *(v0 + 152) = v8;
  *(v0 + 160) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  *(v10 + 56) = v17;
  *(v10 + 72) = v18;
  *(v10 + 88) = v7;
  *(v10 + 96) = v6;
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v10 + 120) = v1;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  v13 = sub_22B35F45C();
  *v12 = v0;
  v12[1] = sub_22B154500;

  return MEMORY[0x2822008A0](v0 + 16, v2, v9, 0xD000000000000085, 0x800000022B369350, sub_22B168350, v10, v13);
}

uint64_t sub_22B154500()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_22B1546B8;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 144);

    v5 = sub_22B154628;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B154628()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_22B1546B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];

  v3(v4, v5);
  v6 = v0[23];
  v8 = v0[16];
  v7 = v0[17];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B15490C(int a1, int a2, int a3, int a4, int a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v25 = sub_22B36084C();
  v12 = v11;
  v9[4] = v11;
  v24 = sub_22B36084C();
  v14 = v13;
  v9[5] = v13;
  v23 = sub_22B36084C();
  v16 = v15;
  v9[6] = v15;
  v17 = sub_22B36084C();
  v19 = v18;
  v9[7] = v18;
  sub_22B36084C();
  v9[8] = v20;
  a7;
  v21 = swift_task_alloc();
  v9[9] = v21;
  *v21 = v9;
  v21[1] = sub_22B154A78;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:refreshToken:)(v25, v12, v24, v14, v23, v16, v17, v19);
}

uint64_t sub_22B154A78(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v4 + 24);
  if (v3)
  {
    v14 = sub_22B35DB8C();

    (v13)[2](v13, 0, v14);
    _Block_release(v13);
  }

  else
  {
    (v13)[2](*(v4 + 24), a1, 0);
    _Block_release(v13);
  }

  v15 = *(v12 + 8);

  return v15();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 120) = v13;
  *(v9 + 128) = v8;
  *(v9 + 104) = v12;
  *(v9 + 88) = v11;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B154CFC, 0, 0);
}

uint64_t sub_22B154CFC()
{
  v1 = v0[16];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000085, 0x800000022B369350))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = qword_28140BDD8;
    v0[17] = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B154E40, v2, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22B154E40()
{
  v1 = *(v0 + 136);
  v14 = *(v0 + 112);
  v2 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v9 = *(v0 + 24);
  v3 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v10;
  *(v4 + 56) = v11;
  *(v4 + 72) = v12;
  *(v4 + 88) = v13;
  *(v4 + 104) = v14;
  *(v4 + 120) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = sub_22B35F45C();
  *v6 = v0;
  v6[1] = sub_22B154FD0;

  return MEMORY[0x2822008A0](v0 + 16, v1, v3, 0xD000000000000085, 0x800000022B369350, sub_22B1724EC, v4, v7);
}

uint64_t sub_22B154FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_22B155110;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);

    v5 = sub_22B1550F4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B155110()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B155358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, void *a9)
{
  v9[2] = a9;
  v12 = sub_22B35DE9C();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64) + 15;
  v9[5] = swift_task_alloc();
  v9[6] = _Block_copy(a8);
  v15 = sub_22B36084C();
  v31 = v16;
  v32 = v15;
  v9[7] = v16;
  v30 = sub_22B36084C();
  v18 = v17;
  v9[8] = v17;
  v29 = sub_22B36084C();
  v20 = v19;
  v9[9] = v19;
  v28 = sub_22B36084C();
  v22 = v21;
  v9[10] = v21;
  sub_22B35DE5C();
  sub_22B36084C();
  v9[11] = v23;
  if (a7)
  {
    sub_22B36084C();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v9[12] = v25;
  a9;
  v26 = swift_task_alloc();
  v9[13] = v26;
  *v26 = v9;
  v26[1] = sub_22B15555C;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(v32, v31, v30, v18, v29, v20, v28, v22);
}

uint64_t sub_22B15555C(void *a1)
{
  v19 = *v1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = v2[12];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[8];
  v10 = v2[7];
  v11 = v2[6];
  v12 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v18)
  {
    v13 = sub_22B35DB8C();

    (v11)[2](v11, 0, v13);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v14 = v19[5];

  v15 = *(v4 + 8);

  return v15();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v14;
  *(v9 + 144) = v8;
  *(v9 + 120) = v13;
  *(v9 + 104) = v12;
  *(v9 + 88) = v11;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B155858, 0, 0);
}

uint64_t sub_22B155858()
{
  v1 = v0[18];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000008DLL, 0x800000022B3693E0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = qword_28140BDD8;
    v0[19] = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B15599C, v2, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22B15599C()
{
  v1 = *(v0 + 152);
  v14 = *(v0 + 112);
  v15 = *(v0 + 128);
  v2 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v9 = *(v0 + 24);
  v3 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v10;
  *(v4 + 56) = v11;
  *(v4 + 72) = v12;
  *(v4 + 88) = v13;
  *(v4 + 104) = v15;
  *(v4 + 120) = v14;
  *(v4 + 136) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  v7 = sub_22B35F45C();
  *v6 = v0;
  v6[1] = sub_22B155B34;

  return MEMORY[0x2822008A0](v0 + 16, v1, v3, 0xD00000000000008DLL, 0x800000022B3693E0, sub_22B1683A0, v4, v7);
}

uint64_t sub_22B155B34()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_22B155C58;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_22B172500;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B155C58()
{
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B155EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_22B35DE9C();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64) + 15;
  v10[5] = swift_task_alloc();
  v10[6] = _Block_copy(a9);
  v14 = sub_22B36084C();
  v33 = v15;
  v34 = v14;
  v10[7] = v15;
  v16 = sub_22B36084C();
  v31 = v17;
  v32 = v16;
  v10[8] = v17;
  v30 = sub_22B36084C();
  v19 = v18;
  v10[9] = v18;
  v28 = sub_22B36084C();
  v21 = v20;
  v10[10] = v20;
  sub_22B35DE5C();
  sub_22B36084C();
  v10[11] = v22;
  sub_22B36084C();
  v10[12] = v23;
  if (a8)
  {
    sub_22B36084C();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v10[13] = v25;
  a10;
  v26 = swift_task_alloc();
  v10[14] = v26;
  *v26 = v10;
  v26[1] = sub_22B1560C8;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(v34, v33, v32, v31, v30, v19, v28, v21);
}

uint64_t sub_22B1560C8(void *a1)
{
  v20 = v1;
  v21 = *v2;
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;

  v19 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[9];
  v10 = v3[8];
  v11 = v3[7];
  v12 = v3[6];
  v13 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  if (v20)
  {
    v14 = sub_22B35DB8C();

    (v12)[2](v12, 0, v14);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](v12, a1, 0);
    _Block_release(v12);
  }

  v15 = v21[5];

  v16 = *(v5 + 8);

  return v16();
}

uint64_t HomeEnergyProxy.revokeUtilitySubscription(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1563BC, 0, 0);
}

uint64_t sub_22B1563BC()
{
  v1 = v0[4];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000022, 0x800000022B369470))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B1724F8;
    v4 = v0[2];
    v3 = v0[3];

    return sub_22B23653C(v4, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B1566BC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22B1724C4;

  return HomeEnergyProxy.revokeUtilitySubscription(siteID:)(v5, v7);
}

uint64_t HomeEnergyProxy.renewUtilityAccessToken(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1567B4, 0, 0);
}

uint64_t sub_22B1567B4()
{
  v1 = v0[4];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B3694A0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B15692C;
    v4 = v0[2];
    v3 = v0[3];

    return sub_22B239A1C(v4, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B15692C(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_22B156BB4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22B156C88;

  return HomeEnergyProxy.renewUtilityAccessToken(siteID:)(v5, v7);
}

uint64_t sub_22B156C88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_22B35DB8C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t HomeEnergyProxy.completedOnboarding(id:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B156E64, 0, 0);
}

uint64_t sub_22B156E64()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[4] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B149CC4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B20234C(v3, v2);
}

uint64_t sub_22B1570D8(int a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B157154, 0, 0);
}

uint64_t sub_22B157154()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BCB0;
  v0[5] = v1;
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22B15724C;

  return sub_22B20234C(v2, v1);
}

uint64_t sub_22B15724C(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;

  v6[2](v6, a1 & 1);
  _Block_release(v6);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t HomeEnergyProxy.updateCompletedOnboarding(id:value:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B1573D8, 0, 0);
}

uint64_t sub_22B1573D8()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_28140BCB0;

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22B1574C8;
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B20268C(v4, v3, v2);
}

uint64_t sub_22B1574C8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B157768(int a1, char a2, void *aBlock)
{
  *(v3 + 64) = a2;
  *(v3 + 32) = _Block_copy(aBlock);
  *(v3 + 16) = sub_22B36084C();
  *(v3 + 24) = v4;

  return MEMORY[0x2822009F8](sub_22B1577E8, 0, 0);
}

uint64_t sub_22B1577E8()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_28140BCB0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22B1578E4;
  v5 = *(v0 + 64);

  return sub_22B20268C(v2, v1, v5);
}

uint64_t sub_22B1578E4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  v4[2](v4);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t HomeEnergyProxy.utilitiesNearLocation(location:)(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B157A64, 0, 0);
}

uint64_t sub_22B157A64()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 4) = v1;
  *v1 = v0;
  v1[1] = sub_22B157B38;
  v2 = v0[2];
  v3 = v0[3];

  return sub_22B2029CC(v2, v3);
}

uint64_t sub_22B157B38(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B157DBC(const void *a1, double a2, double a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B157E28, 0, 0);
}

uint64_t sub_22B157E28()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 5) = v1;
  *v1 = v0;
  v1[1] = sub_22B157EFC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_22B2029CC(v2, v3);
}

uint64_t sub_22B157EFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *v1;

  if (a1)
  {
    v6 = sub_22B360A3C();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 32);
  (v7)[2](v7, v6);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t HomeEnergyProxy.utilityInformation(utilityID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1724CC;

  return (sub_22B169840)(a1, a2);
}

uint64_t sub_22B158284(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B15836C;

  return sub_22B169840(v5, v7);
}

uint64_t sub_22B15836C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (a2 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, v10);

  _Block_release(v11);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t HomeEnergyProxy.isTAFEnabled(utilityID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1585B4;

  return (sub_22B169B94)(a1, a2);
}

uint64_t sub_22B1585B4(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_22B158844(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B15892C;

  return sub_22B169B94(v5, v7);
}

uint64_t sub_22B15892C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_22B35DB8C();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t HomeEnergyProxy.getAllUtilities(countryCode:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1724E0;

  return (sub_22B16A06C)(a1, a2);
}

uint64_t sub_22B158D1C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_22B36084C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B158E10;

  return sub_22B16A06C(a1, v7);
}

uint64_t sub_22B158E10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (a1)
  {
    v8 = sub_22B360A3C();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22B158FAC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B119A60;

  return sub_22B2033E0();
}

uint64_t sub_22B1591F0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B159258, 0, 0);
}

uint64_t sub_22B159258()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B159328;

  return sub_22B2033E0();
}

uint64_t sub_22B159328()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

void sub_22B15962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, void *a9)
{
  v9[2] = a9;
  v11 = sub_22B35E0BC();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64) + 15;
  v9[5] = swift_task_alloc();
  v14 = sub_22B35DE9C();
  v9[6] = v14;
  v15 = *(v14 - 8);
  v9[7] = v15;
  v16 = *(v15 + 64) + 15;
  v9[8] = swift_task_alloc();
  v9[9] = swift_task_alloc();
  v9[10] = _Block_copy(a8);
  sub_22B36084C();
  v9[11] = v17;
  sub_22B36084C();
  v9[12] = v18;
  sub_22B36084C();
  v9[13] = v19;
  sub_22B35DE5C();
  sub_22B35DE5C();
  sub_22B35E0AC();
  sub_22B36084C();
  v9[14] = v20;
  v21 = a9;
  v22 = swift_task_alloc();
  v9[15] = v22;
  *v22 = v9;
  v22[1] = sub_22B159898;

  JUMPOUT(0x22B16A504);
}

uint64_t sub_22B159898()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v14 = *(*v0 + 104);
  v15 = *(*v0 + 96);
  v16 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v18 = *(*v0 + 72);
  v17 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v9 = *(*v0 + 16);
  v19 = *v0;

  (*(v7 + 8))(v6, v8);
  v10 = *(v4 + 8);
  v10(v17, v5);
  v10(v18, v5);
  sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578]);
  v11 = sub_22B3606CC();

  (v3)[2](v3, v11, 0);

  _Block_release(v3);

  v12 = *(v19 + 8);

  return v12();
}

uint64_t HomeEnergyProxy.generateMockAMIData(siteID:startDate:endDate:forceAllReadingsToConstant:recordInterval:batchSize:rateSchedule:netMetering:direction:randomization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_22B1724FC;

  return sub_22B16B568(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_22B159EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, void *a12)
{
  v12[2] = a12;
  v12[3] = _Block_copy(a11);
  sub_22B36084C();
  v12[4] = v13;
  sub_22B36084C();
  v12[5] = v14;
  sub_22B36084C();
  v12[6] = v15;
  sub_22B36084C();
  v12[7] = v16;
  v17 = a12;
  v18 = swift_task_alloc();
  v12[8] = v18;
  *v18 = v12;
  v18[1] = sub_22B15A080;

  JUMPOUT(0x22B16B568);
}

uint64_t sub_22B15A080(char a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v4 + 24);
  if (v3)
  {
    v14 = sub_22B35DB8C();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(*(v4 + 24), a1 & 1, 0);
  }

  _Block_release(*(v5 + 24));
  v15 = *(v12 + 8);

  return v15();
}

uint64_t HomeEnergyProxy.generateMultipleMeterMockAMIData(siteID:startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v16;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v15;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v10 = sub_22B36052C();
  v9[16] = v10;
  v11 = *(v10 - 8);
  v9[17] = v11;
  v12 = *(v11 + 64) + 15;
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15A370, 0, 0);
}

uint64_t sub_22B15A370()
{
  v1 = v0[15];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000066, 0x800000022B3694D0))
  {
    if (sub_22B35EEBC())
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v2 = v0[10];
      v3 = v0[8];
      v4 = swift_task_alloc();
      v0[19] = v4;
      *v4 = v0;
      v4[1] = sub_22B15A548;
      v5 = v0[11];
      v6 = v0[12];
      v7 = v0[9];
      v8 = v0[6];
      v9 = v0[7];
      v10 = v0[5];
      v17 = v0[13];
      v18 = v0[14];

      return sub_22B256A74(v10, v8, v9, v3, v7, v2, v5, v6);
    }

    v15 = v0[18];

    v14 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 9;
    v13 = v0[18];
    swift_willThrow();

    v14 = v0[1];
  }

  return v14(0);
}

uint64_t sub_22B15A548(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1724D8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 144);

    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_22B15A860(int a1, int a2, int a3, uint64_t a4, int a5, int a6, void *aBlock, void *a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  v23 = sub_22B36084C();
  v12 = v11;
  v9[4] = v11;
  v13 = sub_22B36084C();
  v15 = v14;
  v9[5] = v14;
  v16 = sub_22B36084C();
  v18 = v17;
  v9[6] = v17;
  v19 = sub_22B36084C();
  v9[7] = v20;
  a8;
  v21 = swift_task_alloc();
  v9[8] = v21;
  *v21 = v9;
  v21[1] = sub_22B1724D0;

  return HomeEnergyProxy.generateMultipleMeterMockAMIData(siteID:startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(v23, v12, v13, v15, v16, v18, a4, v19);
}

uint64_t sub_22B15A9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15AA6C, 0, 0);
}

uint64_t sub_22B15AA6C()
{
  v1 = v0[5];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000002FLL, 0x800000022B36A5C0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = sub_22B35DE9C();
    v6 = *(v5 - 8);
    (*(v6 + 16))(v2, v4, v5);
    v7 = *(v6 + 56);
    v7(v2, 0, 1, v5);
    v7(v3, 1, 1, v5);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_22B15ACAC;
    v10 = v0[6];
    v9 = v0[7];
    v12 = v0[2];
    v11 = v0[3];

    return sub_22B2263A0(v12, v11, 0, v9, v10);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();
    v16 = v0[6];
    v15 = v0[7];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B15ACAC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B15AE6C, 0, 0);
  }

  else
  {
    v8 = *(v2 + 48);
    v7 = *(v2 + 56);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_22B15AE6C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B15B068(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_22B35DE9C();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v4[6] = _Block_copy(a3);
  v11 = sub_22B36084C();
  v13 = v12;
  v4[7] = v12;
  sub_22B35DE5C();
  a4;
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = sub_22B172504;

  return sub_22B15A9C0(v11, v13, v10);
}

uint64_t sub_22B15B1BC()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15B258, 0, 0);
}

uint64_t sub_22B15B258()
{
  v1 = v0[2];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001CLL, 0x800000022B36A5A0))
  {
    if (sub_22B35EEBC())
    {
      v2 = v0[3];
      v3 = sub_22B360B6C();
      (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      sub_22B123DF0(0, 0, v2, &unk_22B363F80, v4);
    }

    v5 = v0[3];

    v6 = v0[1];
  }

  else
  {
    v7 = v0[3];
    sub_22B134CDC();
    swift_allocError();
    *v8 = 9;
    swift_willThrow();

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_22B15B3FC()
{
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B2E11D4(1);
}

uint64_t sub_22B15B638(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B1724DC;

  return sub_22B15B1BC();
}

uint64_t sub_22B15B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22B35DF1C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15B7E4, 0, 0);
}

uint64_t sub_22B15B7E4()
{
  v1 = v0[5];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000026, 0x800000022B36A570))
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = v0[4];
    v19 = v0[3];
    v8 = v0[2];
    type metadata accessor for ShareManager();
    v9 = swift_allocObject();
    sub_22B360B3C();
    v10 = sub_22B360B6C();
    (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
    (*(v4 + 16))(v3, v8, v6);
    v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v9;
    (*(v4 + 32))(&v12[v11], v3, v6);
    v13 = &v12[(v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v13 = v19;
    *(v13 + 1) = v7;

    sub_22B322A98(0, 0, v2, &unk_22B363F48, v12);

    sub_22B123284(v2, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    v15 = v0[9];
    v16 = v0[10];
    sub_22B134CDC();
    swift_allocError();
    *v17 = 9;
    swift_willThrow();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B15BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_22B124D88;

  return sub_22B1B2A80(a5, a6, a7);
}

uint64_t sub_22B15BC9C(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_22B35DF1C();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v4[6] = _Block_copy(a3);
  sub_22B35DEFC();
  v11 = sub_22B36084C();
  v13 = v12;
  v4[7] = v12;
  a4;
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = sub_22B14B094;

  return sub_22B15B6E0(v10, v11, v13);
}

uint64_t sub_22B15BDF0()
{
  v1[15] = v0;
  v2 = sub_22B3605EC();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = sub_22B36062C();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = sub_22B36064C();
  v1[22] = v8;
  v9 = *(v8 - 8);
  v1[23] = v9;
  v10 = *(v9 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v11 = type metadata accessor for CDEnergySite();
  v1[26] = v11;
  v12 = *(v11 - 8);
  v1[27] = v12;
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v14 = sub_22B35F01C();
  v1[32] = v14;
  v15 = *(v14 - 8);
  v1[33] = v15;
  v16 = *(v15 + 64) + 15;
  v1[34] = swift_task_alloc();
  v17 = sub_22B36052C();
  v1[35] = v17;
  v18 = *(v17 - 8);
  v1[36] = v18;
  v19 = *(v18 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15C0E8, 0, 0);
}

uint64_t sub_22B15C0E8()
{
  v1 = v0[15];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000012, 0x800000022B36A530))
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v3 = sub_22B36081C();
    v4 = [v2 initWithSuiteName_];

    if (!v4)
    {
LABEL_5:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v7 = v0[41];
      v8 = v0[35];
      v9 = v0[36];
      v10 = __swift_project_value_buffer(v8, qword_28140BD10);
      v0[43] = v10;
      swift_beginAccess();
      v11 = *(v9 + 16);
      v0[44] = v11;
      v0[45] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v11(v7, v10, v8);
      v12 = sub_22B36050C();
      v13 = sub_22B360D1C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22B116000, v12, v13, "Resetting all data!", v14, 2u);
        MEMORY[0x23188F650](v14, -1, -1);
      }

      v15 = v0[41];
      v16 = v0[35];
      v17 = v0[36];

      v18 = *(v17 + 8);
      v0[46] = v18;
      v18(v15, v16);
      if (qword_28140B2D8 != -1)
      {
        swift_once();
      }

      (*(v0[33] + 104))(v0[34], *MEMORY[0x277D073C8], v0[32]);
      v19 = swift_task_alloc();
      v0[47] = v19;
      *v19 = v0;
      v19[1] = sub_22B15C6BC;
      v20 = v0[34];

      return sub_22B141FF0(0, v20);
    }

    v5 = sub_22B36081C();
    v6 = [v4 BOOLForKey_];

    if (v6)
    {

      goto LABEL_5;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v31 = v0[42];
    v32 = v0[35];
    v33 = v0[36];
    v34 = __swift_project_value_buffer(v32, qword_28140BD10);
    swift_beginAccess();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_22B36050C();
    v36 = sub_22B360D1C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[42];
    v39 = v0[35];
    v40 = v0[36];
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22B116000, v35, v36, "Reset config not found! Skipping reset.", v41, 2u);
      MEMORY[0x23188F650](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    v43 = v0[41];
    v42 = v0[42];
    v45 = v0[39];
    v44 = v0[40];
    v47 = v0[37];
    v46 = v0[38];
    v48 = v0[34];
    v50 = v0[30];
    v49 = v0[31];
    v51 = v0[29];
    v56 = v0[28];
    v58 = v0[25];
    v60 = v0[24];
    v62 = v0[21];
    v64 = v0[18];

    v30 = v0[1];
  }

  else
  {
    v23 = v0[41];
    v22 = v0[42];
    v25 = v0[39];
    v24 = v0[40];
    v27 = v0[37];
    v26 = v0[38];
    v28 = v0[34];
    v52 = v0[31];
    v53 = v0[30];
    v54 = v0[29];
    v55 = v0[28];
    v57 = v0[25];
    v59 = v0[24];
    v61 = v0[21];
    v63 = v0[18];
    sub_22B134CDC();
    swift_allocError();
    *v29 = 9;
    swift_willThrow();

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_22B15C6BC(uint64_t a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 384) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_22B15C81C, 0, 0);
}

uint64_t sub_22B15C81C()
{
  v78 = v0;
  v1 = v0[48];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[49] = v2;
    if (v2)
    {
      v3 = v0[27];
      v0[50] = sub_22B35EAFC();
      v4 = *(v3 + 80);
      *(v0 + 112) = v4;
      v0[51] = *(v3 + 72);
      v0[52] = 0;
      v6 = v0[44];
      v5 = v0[45];
      v7 = v0[43];
      v8 = v0[40];
      v9 = v0[35];
      v11 = v0[30];
      v10 = v0[31];
      sub_22B16F4CC(v1 + ((v4 + 32) & ~v4), v10);
      v6(v8, v7, v9);
      sub_22B16F4CC(v10, v11);
      v12 = sub_22B36050C();
      v13 = sub_22B360D1C();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[46];
      v16 = v0[40];
      v17 = v0[35];
      v18 = v0[30];
      v19 = v0[36] + 8;
      if (v14)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v77 = v21;
        *v20 = 136315138;
        v69 = v16;
        v72 = v15;
        v23 = *v18;
        v22 = v18[1];

        sub_22B16F530(v18);
        v24 = sub_22B1A7B20(v23, v22, &v77);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_22B116000, v12, v13, "Resetting all data for site: %s!", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x23188F650](v21, -1, -1);
        MEMORY[0x23188F650](v20, -1, -1);

        v72(v69, v17);
      }

      else
      {

        sub_22B16F530(v18);
        v15(v16, v17);
      }

      v25 = v0[50];
      v26 = v0[31];
      v27 = *v26;
      v28 = v26[1];
      v29 = (v26 + *(v0[26] + 28));
      v30 = *v29;
      v31 = v29[1];
      v32 = v26[2];
      v33 = v26[3];
      v34 = sub_22B35EAEC();
      v0[53] = v34;
      v35 = v34;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v36 = swift_task_alloc();
      v0[54] = v36;
      *v36 = v0;
      v36[1] = sub_22B15D00C;

      return sub_22B23D0CC(v35);
    }
  }

  v38 = v0[45];
  (v0[44])(v0[37], v0[43], v0[35]);
  v39 = sub_22B36050C();
  v40 = sub_22B360D1C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_22B116000, v39, v40, "Reset complete. Restarting daemon!", v41, 2u);
    MEMORY[0x23188F650](v41, -1, -1);
  }

  v42 = v0[46];
  v43 = v0[36];
  v44 = v0[37];
  v45 = v0[35];
  v46 = v0[24];
  v47 = v0[25];
  v48 = v0[23];
  v62 = v0[21];
  v73 = v0[19];
  v75 = v0[22];
  v64 = v0[18];
  v67 = v0[17];
  v70 = v0[20];
  v65 = v0[16];

  v42(v44, v45);
  sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v49 = sub_22B360D9C();
  sub_22B36063C();
  sub_22B36065C();
  v63 = *(v48 + 8);
  v63(v46, v75);
  v0[6] = sub_22B15E3A8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B118A6C;
  v0[5] = &block_descriptor_3;
  v50 = _Block_copy(v0 + 2);
  sub_22B36060C();
  v0[14] = MEMORY[0x277D84F90];
  sub_22B172464(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6A0](v47, v62, v64, v50);
  _Block_release(v50);

  (*(v67 + 8))(v64, v65);
  (*(v70 + 8))(v62, v73);
  v63(v47, v75);
  v52 = v0[41];
  v51 = v0[42];
  v54 = v0[39];
  v53 = v0[40];
  v56 = v0[37];
  v55 = v0[38];
  v57 = v0[34];
  v59 = v0[30];
  v58 = v0[31];
  v60 = v0[29];
  v66 = v0[28];
  v68 = v0[25];
  v71 = v0[24];
  v74 = v0[21];
  v76 = v0[18];

  v61 = v0[1];

  return v61();
}

uint64_t sub_22B15D00C()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = sub_22B15DA70;
  }

  else
  {
    v3 = sub_22B15D128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B15D128()
{
  v123 = v0;
  v118 = *(v0 + 440);
  v1 = *(v0 + 360);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v0 + 352))(*(v0 + 312), *(v0 + 344), *(v0 + 280));
  sub_22B16F4CC(v2, v3);
  v4 = sub_22B36050C();
  v5 = sub_22B360D1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 424);
  v8 = *(v0 + 368);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 232);
  if (v6)
  {
    v111 = *(v0 + 368);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v122[0] = v14;
    *v13 = 136315138;
    v107 = v9;
    v15 = *v12;
    v16 = v12[1];

    sub_22B16F530(v12);
    v17 = sub_22B1A7B20(v15, v16, v122);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22B116000, v4, v5, "Reset all data for site: %s!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v111(v107, v11);
  }

  else
  {

    sub_22B16F530(v12);
    v8(v9, v11);
  }

  v18 = *(v0 + 392);
  v19 = *(v0 + 416) + 1;
  sub_22B16F530(*(v0 + 248));
  if (v19 == v18)
  {
LABEL_5:
    v20 = *(v0 + 384);

    v21 = *(v0 + 360);
    (*(v0 + 352))(*(v0 + 296), *(v0 + 344), *(v0 + 280));
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "Reset complete. Restarting daemon!", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v25 = *(v0 + 368);
    v26 = *(v0 + 288);
    v27 = *(v0 + 296);
    v28 = *(v0 + 280);
    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    v119 = *(v0 + 176);
    v102 = *(v0 + 168);
    v112 = *(v0 + 160);
    v116 = *(v0 + 152);
    v108 = *(v0 + 136);
    v104 = *(v0 + 144);
    v105 = *(v0 + 128);

    v25(v27, v28);
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v32 = sub_22B360D9C();
    sub_22B36063C();
    sub_22B36065C();
    v103 = *(v31 + 8);
    v103(v29, v119);
    *(v0 + 48) = sub_22B15E3A8;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B118A6C;
    *(v0 + 40) = &block_descriptor_3;
    v33 = _Block_copy((v0 + 16));
    sub_22B36060C();
    *(v0 + 112) = MEMORY[0x277D84F90];
    sub_22B172464(&qword_281409370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    sub_22B36104C();
    MEMORY[0x23188E6A0](v30, v102, v104, v33);
    _Block_release(v33);

    (*(v108 + 8))(v104, v105);
    (*(v112 + 8))(v102, v116);
    v103(v30, v119);
    v35 = *(v0 + 328);
    v34 = *(v0 + 336);
    v37 = *(v0 + 312);
    v36 = *(v0 + 320);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    v40 = *(v0 + 272);
    v42 = *(v0 + 240);
    v41 = *(v0 + 248);
    v43 = *(v0 + 232);
    v106 = *(v0 + 224);
    v109 = *(v0 + 200);
    v113 = *(v0 + 192);
    v117 = *(v0 + 168);
    v120 = *(v0 + 144);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    while (1)
    {
      v53 = *(v0 + 408);
      v54 = *(v0 + 416) + 1;
      *(v0 + 416) = v54;
      v56 = *(v0 + 352);
      v55 = *(v0 + 360);
      v57 = *(v0 + 344);
      v58 = *(v0 + 320);
      v59 = *(v0 + 280);
      v61 = *(v0 + 240);
      v60 = *(v0 + 248);
      sub_22B16F4CC(*(v0 + 384) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v53 * v54, v60);
      v56(v58, v57, v59);
      sub_22B16F4CC(v60, v61);
      v62 = sub_22B36050C();
      v63 = sub_22B360D1C();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 368);
      v66 = *(v0 + 320);
      v67 = *(v0 + 280);
      v68 = *(v0 + 240);
      v69 = *(v0 + 288) + 8;
      if (v64)
      {
        v70 = swift_slowAlloc();
        v110 = v65;
        v115 = v66;
        v71 = swift_slowAlloc();
        v122[0] = v71;
        *v70 = 136315138;
        v72 = *v68;
        v73 = v68[1];

        sub_22B16F530(v68);
        v74 = sub_22B1A7B20(v72, v73, v122);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_22B116000, v62, v63, "Resetting all data for site: %s!", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x23188F650](v71, -1, -1);
        MEMORY[0x23188F650](v70, -1, -1);

        v110(v115, v67);
      }

      else
      {

        sub_22B16F530(v68);
        v65(v66, v67);
      }

      v75 = *(v0 + 400);
      v76 = *(v0 + 248);
      v77 = *v76;
      v78 = v76[1];
      v79 = (v76 + *(*(v0 + 208) + 28));
      v80 = *v79;
      v81 = v79[1];
      v82 = v76[2];
      v83 = v76[3];
      v84 = sub_22B35EAEC();
      *(v0 + 424) = v84;
      if (!v118)
      {
        break;
      }

      v86 = *(v0 + 352);
      v85 = *(v0 + 360);
      v87 = *(v0 + 344);
      v88 = *(v0 + 304);
      v89 = *(v0 + 280);
      v90 = *(v0 + 248);
      v91 = *(v0 + 224);

      v86(v88, v87, v89);
      sub_22B16F4CC(v90, v91);
      v92 = sub_22B36050C();
      v93 = sub_22B360D1C();
      v94 = os_log_type_enabled(v92, v93);
      v95 = *(v0 + 368);
      v96 = *(v0 + 304);
      v97 = *(v0 + 280);
      v98 = *(v0 + 224);
      v99 = *(v0 + 288) + 8;
      if (v94)
      {
        v121 = *(v0 + 368);
        v46 = swift_slowAlloc();
        v114 = v96;
        v47 = swift_slowAlloc();
        v122[0] = v47;
        *v46 = 136315138;
        v48 = *v98;
        v49 = v98[1];

        sub_22B16F530(v98);
        v50 = sub_22B1A7B20(v48, v49, v122);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_22B116000, v92, v93, "Failed to reset all data for site: %s!", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23188F650](v47, -1, -1);
        MEMORY[0x23188F650](v46, -1, -1);

        v121(v114, v97);
      }

      else
      {

        sub_22B16F530(v98);
        v95(v96, v97);
      }

      v51 = *(v0 + 392);
      v52 = *(v0 + 416) + 1;
      sub_22B16F530(*(v0 + 248));
      v118 = 0;
      if (v52 == v51)
      {
        goto LABEL_5;
      }
    }

    v100 = v84;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v101 = swift_task_alloc();
    *(v0 + 432) = v101;
    *v101 = v0;
    v101[1] = sub_22B15D00C;

    return sub_22B23D0CC(v100);
  }
}

uint64_t sub_22B15DA70()
{
  v98 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v0 + 352))(*(v0 + 312), *(v0 + 344), *(v0 + 280));
  sub_22B16F4CC(v2, v3);
  v4 = sub_22B36050C();
  v5 = sub_22B360D1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 424);
  v8 = *(v0 + 368);
  v9 = *(v0 + 312);
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = *(v0 + 232);
  if (v6)
  {
    v13 = swift_slowAlloc();
    v91 = v8;
    v14 = swift_slowAlloc();
    v97[0] = v14;
    *v13 = 136315138;
    v87 = v9;
    v15 = *v12;
    v16 = v12[1];

    sub_22B16F530(v12);
    v17 = sub_22B1A7B20(v15, v16, v97);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22B116000, v4, v5, "Reset all data for site: %s!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v91(v87, v10);
  }

  else
  {

    sub_22B16F530(v12);
    v8(v9, v10);
  }

  v18 = *(v0 + 392);
  v19 = *(v0 + 416) + 1;
  sub_22B16F530(*(v0 + 248));
  if (v19 == v18)
  {
    v20 = *(v0 + 384);

    v21 = *(v0 + 360);
    (*(v0 + 352))(*(v0 + 296), *(v0 + 344), *(v0 + 280));
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "Reset complete. Restarting daemon!", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v25 = *(v0 + 368);
    v26 = *(v0 + 288);
    v27 = *(v0 + 296);
    v28 = *(v0 + 280);
    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    v80 = *(v0 + 168);
    v92 = *(v0 + 152);
    v95 = *(v0 + 176);
    v82 = *(v0 + 144);
    v85 = *(v0 + 136);
    v88 = *(v0 + 160);
    v83 = *(v0 + 128);

    v25(v27, v28);
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v32 = sub_22B360D9C();
    sub_22B36063C();
    sub_22B36065C();
    v81 = *(v31 + 8);
    v81(v29, v95);
    *(v0 + 48) = sub_22B15E3A8;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B118A6C;
    *(v0 + 40) = &block_descriptor_3;
    v33 = _Block_copy((v0 + 16));
    sub_22B36060C();
    *(v0 + 112) = MEMORY[0x277D84F90];
    sub_22B172464(&qword_281409370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    sub_22B36104C();
    MEMORY[0x23188E6A0](v30, v80, v82, v33);
    _Block_release(v33);

    (*(v85 + 8))(v82, v83);
    (*(v88 + 8))(v80, v92);
    v81(v30, v95);
    v35 = *(v0 + 328);
    v34 = *(v0 + 336);
    v37 = *(v0 + 312);
    v36 = *(v0 + 320);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    v40 = *(v0 + 272);
    v42 = *(v0 + 240);
    v41 = *(v0 + 248);
    v43 = *(v0 + 232);
    v84 = *(v0 + 224);
    v86 = *(v0 + 200);
    v89 = *(v0 + 192);
    v93 = *(v0 + 168);
    v96 = *(v0 + 144);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v46 = *(v0 + 408);
    v47 = *(v0 + 416) + 1;
    *(v0 + 416) = v47;
    v49 = *(v0 + 352);
    v48 = *(v0 + 360);
    v50 = *(v0 + 344);
    v51 = *(v0 + 320);
    v52 = *(v0 + 280);
    v54 = *(v0 + 240);
    v53 = *(v0 + 248);
    sub_22B16F4CC(*(v0 + 384) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v46 * v47, v53);
    v49(v51, v50, v52);
    sub_22B16F4CC(v53, v54);
    v55 = sub_22B36050C();
    v56 = sub_22B360D1C();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 368);
    v59 = *(v0 + 320);
    v60 = *(v0 + 280);
    v61 = *(v0 + 240);
    v62 = *(v0 + 288) + 8;
    if (v57)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v97[0] = v64;
      *v63 = 136315138;
      v90 = v59;
      v94 = v58;
      v66 = *v61;
      v65 = v61[1];

      sub_22B16F530(v61);
      v67 = sub_22B1A7B20(v66, v65, v97);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_22B116000, v55, v56, "Resetting all data for site: %s!", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23188F650](v64, -1, -1);
      MEMORY[0x23188F650](v63, -1, -1);

      v94(v90, v60);
    }

    else
    {

      sub_22B16F530(v61);
      v58(v59, v60);
    }

    v68 = *(v0 + 400);
    v69 = *(v0 + 248);
    v70 = *v69;
    v71 = v69[1];
    v72 = (v69 + *(*(v0 + 208) + 28));
    v73 = *v72;
    v74 = v72[1];
    v75 = v69[2];
    v76 = v69[3];
    v77 = sub_22B35EAEC();
    *(v0 + 424) = v77;
    v78 = v77;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v79 = swift_task_alloc();
    *(v0 + 432) = v79;
    *v79 = v0;
    v79[1] = sub_22B15D00C;

    return sub_22B23D0CC(v78);
  }
}

uint64_t sub_22B15E3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_22B360B6C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22B360B1C();
  v5 = sub_22B360B0C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_22B123DF0(0, 0, v3, &unk_22B363F10, v6);
}

uint64_t sub_22B15E4B4()
{
  v0[2] = sub_22B360B1C();
  v0[3] = sub_22B360B0C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22B15E56C;

  return sub_22B2EE02C();
}

uint64_t sub_22B15E56C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v5;
  v3[1] = sub_22B15E6A8;

  return sub_22B2EFE0C();
}

uint64_t sub_22B15E6A8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_22B360ACC();

  return MEMORY[0x2822009F8](sub_22B15E7E4, v5, v4);
}

uint64_t sub_22B15E988(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B15EA30;

  return sub_22B15BDF0();
}

uint64_t sub_22B15EA30()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_22B35DB8C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22B15EBB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_22B360B6C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_22B12B3CC(a1, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  sub_22B11A02C(v21, v17 + 48);
  *(v17 + 88) = a4;
  *(v17 + 96) = a5;
  *(v17 + 104) = a6;

  v18 = sub_22B145224(0, 0, v15, &unk_22B363EC0, v17);
  sub_22B123284(v15, &qword_27D8BA8D0, &qword_22B363610);
  return v18;
}

uint64_t sub_22B15ED38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v10;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22B15ED6C, 0, 0);
}

uint64_t sub_22B15ED6C()
{
  v1 = *(v0 + 40);
  if (*(v0 + 72))
  {
    v10 = sub_22B345C0C;

    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v3 = sub_22B15EF98;
  }

  else
  {
    v10 = sub_22B3455DC;

    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v3 = sub_22B15EE88;
  }

  v2[1] = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v7, v8, v6, v4, v5);
}

uint64_t sub_22B15EE88()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B15EF98()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B15F0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22B36052C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15F1EC, 0, 0);
}

uint64_t sub_22B15F1EC()
{
  v75 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v73 = v5;
  v72 = *(v2 + 16);
  v72(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  if (v8)
  {
    v13 = v0[5];
    v12 = v0[6];
    v69 = v0[16];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v74);
    _os_log_impl(&dword_22B116000, v6, v7, "Executing task %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v10 + 8);
    v16(v69, v11);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  if (v0[7] >= 1)
  {
    v17 = 0;
    v18 = (v0[9] + 8);
    v66 = v0[13] + 8;
    v67 = v16;
    while ((sub_22B360BFC() & 1) == 0)
    {
      v21 = v0[6];
      v72(v0[15], v73, v0[12]);

      v22 = sub_22B36050C();
      v23 = sub_22B360D2C();

      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[15];
      v26 = v0[12];
      if (v24)
      {
        v27 = v17;
        v29 = v0[5];
        v28 = v0[6];
        v30 = swift_slowAlloc();
        v70 = v26;
        v31 = swift_slowAlloc();
        v74 = v31;
        *v30 = 136315138;
        v32 = v29;
        v17 = v27;
        *(v30 + 4) = sub_22B1A7B20(v32, v28, &v74);
        _os_log_impl(&dword_22B116000, v22, v23, "Spinning CPU for 5s in task %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x23188F650](v31, -1, -1);
        v33 = v30;
        v16 = v67;
        MEMORY[0x23188F650](v33, -1, -1);

        v34 = v25;
        v35 = v70;
      }

      else
      {

        v34 = v25;
        v35 = v26;
      }

      v16(v34, v35);
      v36 = v0[11];
      sub_22B35DE6C();
      do
      {
        v38 = v0[10];
        v37 = v0[11];
        v39 = v0[8];
        sub_22B35DE6C();
        sub_22B35DD3C();
        v41 = v40;
        v42 = *v18;
        (*v18)(v38, v39);
      }

      while (v41 < 5.0);
      v43 = __OFADD__(v17, 5);
      v44 = v17 + 5;
      if (v43)
      {
        __break(1u);
        goto LABEL_22;
      }

      v71 = v44;
      v45 = v0[6];
      v72(v0[14], v73, v0[12]);

      v46 = sub_22B36050C();
      v47 = sub_22B360D2C();

      v48 = os_log_type_enabled(v46, v47);
      v68 = v0[14];
      v49 = v0[11];
      v50 = v0[12];
      v51 = v0[8];
      if (v48)
      {
        v65 = v0[11];
        v53 = v0[5];
        v52 = v0[6];
        v54 = swift_slowAlloc();
        v64 = v51;
        v55 = swift_slowAlloc();
        v74 = v55;
        *v54 = 136315138;
        v56 = v53;
        v16 = v67;
        *(v54 + 4) = sub_22B1A7B20(v56, v52, &v74);
        _os_log_impl(&dword_22B116000, v46, v47, "Finished spinning CPU in task %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23188F650](v55, -1, -1);
        MEMORY[0x23188F650](v54, -1, -1);

        v67(v68, v50);
        v20 = v64;
        v19 = v65;
      }

      else
      {

        v16(v68, v50);
        v19 = v49;
        v20 = v51;
      }

      v42(v19, v20);
      v17 = v71;
      if (v71 >= v0[7])
      {
        break;
      }
    }
  }

  v58 = v0[15];
  v57 = v0[16];
  v59 = v0[14];
  v61 = v0[10];
  v60 = v0[11];

  v62 = v0[1];

  return v62();
}

uint64_t sub_22B15F740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22B36052C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15F890, 0, 0);
}

uint64_t sub_22B15F890()
{
  v89 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v87 = v5;
  v86 = *(v2 + 16);
  v86(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v11 = v0[12];
  v10 = v0[13];
  if (v8)
  {
    v13 = v0[5];
    v12 = v0[6];
    v84 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v88 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v88);
    _os_log_impl(&dword_22B116000, v6, v7, "Executing task %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v10 + 8);
    v16(v84, v11);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  if (v0[7] < 1)
  {
LABEL_18:
    v58 = 1;
  }

  else
  {
    v17 = 0;
    v85 = v0[13] + 8;
    v18 = (v0[9] + 8);
    v81 = v16;
    while ((sub_22B360BFC() & 1) == 0)
    {
      v21 = v0[6];
      v86(v0[15], v87, v0[12]);

      v22 = sub_22B36050C();
      v23 = sub_22B360D2C();

      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[15];
      v26 = v0[12];
      if (v24)
      {
        v82 = v0[12];
        v27 = v17;
        v29 = v0[5];
        v28 = v0[6];
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v88 = v31;
        *v30 = 136315138;
        v32 = v29;
        v17 = v27;
        *(v30 + 4) = sub_22B1A7B20(v32, v28, &v88);
        _os_log_impl(&dword_22B116000, v22, v23, "Spinning CPU for 5s in task %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x23188F650](v31, -1, -1);
        v33 = v30;
        v16 = v81;
        MEMORY[0x23188F650](v33, -1, -1);

        v34 = v25;
        v35 = v82;
      }

      else
      {

        v34 = v25;
        v35 = v26;
      }

      v16(v34, v35);
      v36 = v0[11];
      sub_22B35DE6C();
      do
      {
        v38 = v0[10];
        v37 = v0[11];
        v39 = v0[8];
        sub_22B35DE6C();
        sub_22B35DD3C();
        v41 = v40;
        v42 = *v18;
        (*v18)(v38, v39);
      }

      while (v41 < 5.0);
      v43 = __OFADD__(v17, 5);
      v44 = v17 + 5;
      if (v43)
      {
        __break(1u);
        goto LABEL_27;
      }

      v83 = v44;
      v45 = v0[6];
      v86(v0[14], v87, v0[12]);

      v46 = sub_22B36050C();
      v47 = sub_22B360D2C();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[14];
      v50 = v0[11];
      v51 = v0[12];
      v52 = v0[8];
      if (v48)
      {
        v80 = v0[8];
        v54 = v0[5];
        v53 = v0[6];
        v79 = v0[11];
        v55 = swift_slowAlloc();
        v78 = v49;
        v56 = swift_slowAlloc();
        v88 = v56;
        *v55 = 136315138;
        v57 = v54;
        v16 = v81;
        *(v55 + 4) = sub_22B1A7B20(v57, v53, &v88);
        _os_log_impl(&dword_22B116000, v46, v47, "Woke up in task %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23188F650](v56, -1, -1);
        MEMORY[0x23188F650](v55, -1, -1);

        v81(v78, v51);
        v19 = v79;
        v20 = v80;
      }

      else
      {

        v16(v49, v51);
        v19 = v50;
        v20 = v52;
      }

      v42(v19, v20);
      v17 = v83;
      if (v83 >= v0[7])
      {
        goto LABEL_18;
      }
    }

    v67 = v0[6];
    v86(v0[16], v87, v0[12]);

    v68 = sub_22B36050C();
    v69 = sub_22B360D2C();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[16];
    v72 = v0[12];
    if (v70)
    {
      v73 = v16;
      v75 = v0[5];
      v74 = v0[6];
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_22B1A7B20(v75, v74, &v88);
      _os_log_impl(&dword_22B116000, v68, v69, "Task %s failed to complete due to task cancellation", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x23188F650](v77, -1, -1);
      MEMORY[0x23188F650](v76, -1, -1);

      v73(v71, v72);
    }

    else
    {

      v16(v71, v72);
    }

    v58 = 0;
  }

  v60 = v0[16];
  v59 = v0[17];
  v62 = v0[14];
  v61 = v0[15];
  v64 = v0[10];
  v63 = v0[11];

  v65 = v0[1];

  return v65(v58);
}

uint64_t sub_22B1600E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v13 = sub_22B36084C();
  v15 = v14;
  v7[4] = v14;
  v16 = a7;
  v17 = swift_task_alloc();
  v7[5] = v17;
  *v17 = v7;
  v17[1] = sub_22B160200;

  return sub_22B16CE8C(v13, v15, a2, a3, a4, a5);
}

uint64_t sub_22B160200()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_22B35DB8C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_22B160530(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = sub_22B3606EC();
  }

  v4[5] = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B160654;

  return sub_22B16D34C(v7, v9, a2);
}

uint64_t sub_22B160654()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_22B35DB8C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_22B1609A0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B160A88;

  return sub_22B16D544(v5, v7);
}

uint64_t sub_22B160A88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v3)
  {
    a1 = sub_22B35DB8C();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v12 = sub_22B3606CC();

  v11 = v12;
  v10 = 0;
  a1 = v12;
LABEL_6:
  v13 = *(v5 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_22B160DE4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_22B160EF4;

  return sub_22B16D734(v6, v8, v9, v11);
}

uint64_t sub_22B160EF4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 24);
  if (v3)
  {
    v13 = sub_22B35DB8C();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_22B161254(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DF1C();
  v3[2] = v5;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v3[4] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = _Block_copy(a3);
  v3[8] = sub_22B36084C();
  v3[9] = v9;
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161398, 0, 0);
}

uint64_t sub_22B161398()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 80) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B161430, v1, 0);
}

uint64_t sub_22B161430()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  sub_22B126FD4(v0[8], v0[9], v4, v2);

  v7 = *(v5 + 8);
  v7(v4, v6);
  sub_22B170CD0(v2, v3, &qword_27D8BA970, &unk_22B363560);
  if ((*(v5 + 48))(v3, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v0[5];
    v10 = v0[2];
    v8 = sub_22B35DEDC();
    v7(v9, v10);
  }

  v11 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  (v11)[2](v11, v8);
  _Block_release(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B161728(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DF1C();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161810, 0, 0);
}

uint64_t sub_22B161810()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 48) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B1618A8, v1, 0);
}

uint64_t sub_22B1618A8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_22B12708C(v3);
  (*(v4 + 8))(v3, v5);
  v1[2](v1);
  _Block_release(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B161AEC(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DF1C();
  v3[2] = v5;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v3[4] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = _Block_copy(a3);
  v3[8] = sub_22B36084C();
  v3[9] = v9;
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161C30, 0, 0);
}

uint64_t sub_22B161C30()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 80) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B161CC8, v1, 0);
}

uint64_t sub_22B161CC8()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  sub_22B1275EC(v0[8], v0[9], v4, v2);

  v7 = *(v5 + 8);
  v7(v4, v6);
  sub_22B170CD0(v2, v3, &qword_27D8BA970, &unk_22B363560);
  if ((*(v5 + 48))(v3, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v0[5];
    v10 = v0[2];
    v8 = sub_22B35DEDC();
    v7(v9, v10);
  }

  v11 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  (v11)[2](v11, v8);
  _Block_release(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B161FC0(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DF1C();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B1620A8, 0, 0);
}

uint64_t sub_22B1620A8()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 48) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B162140, v1, 0);
}

uint64_t sub_22B162140()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_22B127AEC(v2);
  v6 = v5;
  (*(v3 + 8))(v2, v4);
  if (v6)
  {
    v7 = sub_22B36081C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[5];
  (v8)[2](v8, v7);

  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B1623CC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v4[10] = a3;
  v6 = sub_22B35D8BC();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = sub_22B35DF1C();
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = _Block_copy(a4);
  sub_22B35DEFC();
  sub_22B35D85C();

  return MEMORY[0x2822009F8](sub_22B162530, 0, 0);
}

uint64_t sub_22B162530()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  v0[5] = v1;
  v0[6] = &off_283EF8EA8;
  v0[2] = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v0[18] = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v5 = *(v1 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v1);
  v8 = *v7;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v8;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  type metadata accessor for LoadEventManager();
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v3;
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_22B1626E0;
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[10];

  return sub_22B1A8FD4(v11, v12, v13);
}

uint64_t sub_22B1626E0(uint64_t a1)
{
  v4 = *(*v2 + 160);
  v5 = *v2;
  *(v5 + 168) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1628C0, 0, 0);
  }

  else
  {
    v7 = *(v5 + 136);
    v6 = *(v5 + 144);
    v9 = *(v5 + 120);
    v8 = *(v5 + 128);
    v11 = *(v5 + 104);
    v10 = *(v5 + 112);
    v12 = *(v5 + 88);
    v13 = *(v5 + 96);

    (*(v13 + 8))(v11, v12);
    (*(v9 + 8))(v8, v10);
    (*(v7 + 16))(v7, a1, 0);
    v14 = *(v5 + 128);
    v15 = *(v5 + 104);
    _Block_release(*(v5 + 136));

    v16 = *(v5 + 8);

    return v16();
  }
}

uint64_t sub_22B1628C0()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v10 = sub_22B35DB8C();

  (*(v3 + 16))(v3, 0, v10);
  v11 = *(v0 + 128);
  v12 = *(v0 + 104);
  _Block_release(*(v0 + 136));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B1629C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B1629EC, 0, 0);
}

uint64_t sub_22B1629EC()
{
  v1 = *(v0 + 32);
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000031, 0x800000022B36A4F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_22B1724F8;
    v3 = *(v0 + 48);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_22B225ED0(v5, v4, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22B162CF8(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_22B1724C4;

  return sub_22B1629C4(v7, v9, a2);
}

uint64_t sub_22B162F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v9 = sub_22B35D8BC();
  v6[3] = v9;
  v10 = *(v9 - 8);
  v6[4] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v6[5] = v12;
  v13 = sub_22B35DF1C();
  v6[6] = v13;
  v14 = *(v13 - 8);
  v6[7] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v6[8] = v16;
  v6[9] = _Block_copy(a5);
  sub_22B35DEFC();
  v17 = sub_22B36084C();
  v19 = v18;
  v6[10] = v18;
  v20 = sub_22B36084C();
  v22 = v21;
  v6[11] = v21;
  sub_22B35D85C();
  v23 = a6;
  v24 = swift_task_alloc();
  v6[12] = v24;
  *v24 = v6;
  v24[1] = sub_22B16318C;

  return sub_22B16E084(v16, v17, v19, v20, v22, v12);
}

uint64_t sub_22B16318C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v20 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v19 = *(*v0 + 48);
  v18 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v9 = *(*v0 + 16);
  v10 = *v0;

  (*(v7 + 8))(v18, v8);
  (*(v6 + 8))(v20, v19);
  v11 = v1[9];
  if (v21)
  {
    v12 = sub_22B35DB8C();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v1[9], 0);
  }

  v14 = v2[8];
  v13 = v2[9];
  v15 = v2[5];
  _Block_release(v13);

  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_22B1635B4(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DE9C();
  v3[2] = v5;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  v9 = sub_22B35DF1C();
  v3[5] = v9;
  v10 = *(v9 - 8);
  v3[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[7] = v12;
  v3[8] = _Block_copy(a3);
  sub_22B35DEFC();
  sub_22B35DE5C();
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_22B16375C;

  return sub_22B16E444(v12, v8);
}

uint64_t sub_22B16375C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 16);
  v11 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_22B163AC0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B163B68;

  return sub_22B16E764();
}

uint64_t sub_22B163B68()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = sub_22B36081C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B163E40(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DE9C();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DE5C();

  return MEMORY[0x2822009F8](sub_22B163F28, 0, 0);
}

uint64_t sub_22B163F28()
{
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1B0;
  *(v0 + 48) = qword_27D8BB1B0;

  return MEMORY[0x2822009F8](sub_22B163FC0, v1, 0);
}

uint64_t sub_22B163FC0()
{
  v1 = *(v0 + 48);
  sub_22B186D64();

  return MEMORY[0x2822009F8](sub_22B164028, 0, 0);
}

uint64_t sub_22B164028()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22B1640F4;
  v2 = *(v0 + 32);

  return sub_22B1758E0(v2);
}

uint64_t sub_22B1640F4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1641F0, 0, 0);
}

uint64_t sub_22B1641F0()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22B1642BC;
  v2 = *(v0 + 32);

  return sub_22B318D18(v2);
}

uint64_t sub_22B1642BC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_22B1645B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B16461C, 0, 0);
}

uint64_t sub_22B16461C()
{
  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B1646E0;

  return sub_22B243C7C();
}

uint64_t sub_22B1646E0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B1648B0, 0, 0);
  }

  else
  {
    sub_22B35DF1C();
    sub_22B172464(&unk_27D8BA320, MEMORY[0x277CC95F0]);
    v4 = sub_22B3606CC();

    v5 = v3[2];
    (v5)[2](v5, v4, 0);

    _Block_release(v5);
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22B1648B0()
{
  v1 = v0[4];
  v2 = sub_22B35DB8C();

  v3 = v0[2];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B164948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22B128014(0, &unk_27D8BA380, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_22B360A5C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22B164A38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22B164A84(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22B164AE4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22B164AF4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22B164B68(uint64_t a1, char a2, void *a3)
{
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA358, qword_22B368000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v56 - v16;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v60 = *(v15 + 72);
  v62 = a1;
  v56[0] = v19;
  v56[1] = v3;
  sub_22B170BE0(a1 + v19, v56 - v16, &qword_27D8BA358, qword_22B368000);
  v57 = v8;
  v20 = *(v8 + 32);
  v63 = v7;
  v20(v11, v17, v7);
  v59 = v18;
  v21 = *&v17[v18];
  v22 = *a3;
  v23 = sub_22B33B348(v11);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    sub_22B33C6DC(v28, a2 & 1);
    v30 = *a3;
    v23 = sub_22B33B348(v11);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_5:
      sub_22B3613BC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v34 = v23;
  sub_22B3416BC();
  v23 = v34;
  if (v29)
  {
LABEL_9:
    v32 = swift_allocError();
    swift_willThrow();
    v66 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v11, v63);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  v36 = v35[6];
  v58 = *(v57 + 72);
  v37 = v23;
  v20((v36 + v58 * v23), v11, v63);
  *(v35[7] + 8 * v37) = v21;
  v38 = v35[2];
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v27)
  {
    v35[2] = v39;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v62 + v60 + v56[0];
    v41 = 1;
    while (v41 < *(v62 + 16))
    {
      sub_22B170BE0(v40, v17, &qword_27D8BA358, qword_22B368000);
      v20(v11, v17, v63);
      v42 = *&v17[v59];
      v43 = *a3;
      v44 = sub_22B33B348(v11);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v27 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v27)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_22B33C6DC(v48, 1);
        v50 = *a3;
        v44 = sub_22B33B348(v11);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      v20((v52[6] + v58 * v44), v11, v63);
      *(v52[7] + 8 * v53) = v42;
      v54 = v52[2];
      v27 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v41;
      v52[2] = v55;
      v40 += v60;
      if (v61 == v41)
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
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22B36116C();
  MEMORY[0x23188E270](0xD00000000000001BLL, 0x800000022B36A630);
  sub_22B36122C();
  MEMORY[0x23188E270](39, 0xE100000000000000);
  sub_22B36126C();
  __break(1u);
}

id sub_22B1650BC()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Creating HomeEnergyProxy", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for HomeEnergyProxy();
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22B1652B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 192) = a3;
  *(v4 + 88) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v6 = sub_22B35DE9C();
  *(v4 + 120) = v6;
  v7 = *(v6 - 8);
  *(v4 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v9 = sub_22B36052C();
  *(v4 + 152) = v9;
  v10 = *(v9 - 8);
  *(v4 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B165430, 0, 0);
}

uint64_t sub_22B165430()
{
  v92 = v0;
  if (sub_22B35EEBC())
  {
    if (*(v0 + 192) == 1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 184);
      v2 = *(v0 + 152);
      v3 = *(v0 + 160);
      v4 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v1, v4, v2);
      v5 = sub_22B36050C();
      v6 = sub_22B360D2C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22B116000, v5, v6, "Disabling use of mock data", v7, 2u);
        MEMORY[0x23188F650](v7, -1, -1);
      }

      v8 = *(v0 + 184);
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);

      (*(v10 + 8))(v8, v9);
      v11 = objc_opt_self();
      v12 = [v11 standardUserDefaults];
      v13 = sub_22B36081C();
      [v12 removeObjectForKey_];

      v14 = [v11 standardUserDefaults];
      v15 = sub_22B36081C();
      [v14 removeObjectForKey_];

      v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v17 = sub_22B36081C();
      v18 = [v16 initWithSuiteName_];

      if (v18)
      {
        v19 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v20 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v21 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v22 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v23 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v24 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v25 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v26 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v27 = sub_22B36081C();
        [v18 removeObjectForKey_];
      }

      if (qword_28140AA30 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v28 = *(v0 + 96);
      if (v28)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v29 = *(v0 + 176);
        v30 = *(v0 + 152);
        v31 = *(v0 + 160);
        v32 = __swift_project_value_buffer(v30, qword_28140BD10);
        swift_beginAccess();
        (*(v31 + 16))(v29, v32, v30);

        v33 = sub_22B36050C();
        v34 = sub_22B360D2C();

        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 176);
        v37 = *(v0 + 152);
        v38 = *(v0 + 160);
        if (v35)
        {
          v39 = *(v0 + 88);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v91 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_22B1A7B20(v39, v28, &v91);
          _os_log_impl(&dword_22B116000, v33, v34, "Enabling use of mock data from file at %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23188F650](v41, -1, -1);
          MEMORY[0x23188F650](v40, -1, -1);
        }

        (*(v38 + 8))(v36, v37);
        v42 = *(v0 + 88);
        v43 = [objc_opt_self() standardUserDefaults];
        v44 = sub_22B36081C();
        v45 = sub_22B36081C();
        [v43 setObject:v44 forKey:v45];
      }

      else
      {
        v46 = *(v0 + 120);
        v47 = *(v0 + 128);
        v48 = *(v0 + 112);
        sub_22B170BE0(*(v0 + 104), v48, &qword_27D8BA340, &qword_22B363FB0);
        if ((*(v47 + 48))(v48, 1, v46) == 1)
        {
          sub_22B123284(*(v0 + 112), &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v50 = *(v0 + 160);
          v49 = *(v0 + 168);
          v52 = *(v0 + 144);
          v51 = *(v0 + 152);
          v54 = *(v0 + 128);
          v53 = *(v0 + 136);
          v55 = *(v0 + 120);
          v56 = __swift_project_value_buffer(v51, qword_28140BD10);
          swift_beginAccess();
          (*(v50 + 16))(v49, v56, v51);
          (*(v54 + 16))(v53, v52, v55);
          v57 = sub_22B36050C();
          v58 = sub_22B360D2C();
          v59 = os_log_type_enabled(v57, v58);
          v61 = *(v0 + 160);
          v60 = *(v0 + 168);
          v62 = *(v0 + 152);
          v64 = *(v0 + 128);
          v63 = *(v0 + 136);
          v65 = *(v0 + 120);
          if (v59)
          {
            v90 = *(v0 + 168);
            v66 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v91 = v89;
            *v66 = 136315138;
            sub_22B172464(&qword_28140B488, MEMORY[0x277CC9578]);
            v67 = sub_22B36131C();
            log = v57;
            v88 = v62;
            v69 = v68;
            v70 = *(v64 + 8);
            v70(v63, v65);
            v71 = v70;
            v72 = sub_22B1A7B20(v67, v69, &v91);

            *(v66 + 4) = v72;
            _os_log_impl(&dword_22B116000, log, v58, "Setting mock data validUntil date to %s", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x23188F650](v89, -1, -1);
            MEMORY[0x23188F650](v66, -1, -1);

            (*(v61 + 8))(v90, v88);
          }

          else
          {

            v73 = *(v64 + 8);
            v73(v63, v65);
            v71 = v73;
            (*(v61 + 8))(v60, v62);
          }

          v74 = *(v0 + 144);
          v75 = *(v0 + 120);
          v76 = [objc_opt_self() standardUserDefaults];
          v77 = sub_22B35DDDC();
          v78 = sub_22B36081C();
          [v76 setObject:v77 forKey:v78];

          v71(v74, v75);
        }
      }
    }
  }

  v80 = *(v0 + 176);
  v79 = *(v0 + 184);
  v81 = *(v0 + 168);
  v83 = *(v0 + 136);
  v82 = *(v0 + 144);
  v84 = *(v0 + 112);

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_22B165E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[98] = a3;
  v3[97] = a2;
  v3[96] = a1;
  v4 = sub_22B35DE9C();
  v3[99] = v4;
  v5 = *(v4 - 8);
  v3[100] = v5;
  v6 = *(v5 + 64) + 15;
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v7 = sub_22B36052C();
  v3[103] = v7;
  v8 = *(v7 - 8);
  v3[104] = v8;
  v9 = *(v8 + 64) + 15;
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B165F70, 0, 0);
}

uint64_t sub_22B165F70()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140A7B0 != -1)
    {
      swift_once();
    }

    v0[107] = qword_28140BD40;
    v1 = swift_task_alloc();
    v0[108] = v1;
    *v1 = v0;
    v1[1] = sub_22B1660B0;

    return sub_22B28C6E0();
  }

  else
  {
    v3 = v0[106];
    v4 = v0[105];
    v5 = v0[102];
    v6 = v0[101];

    v7 = v0[1];

    return v7(0, 0xE000000000000000);
  }
}

uint64_t sub_22B1660B0(char a1)
{
  v2 = *(*v1 + 864);
  v4 = *v1;
  *(*v1 + 82) = a1;

  return MEMORY[0x2822009F8](sub_22B1661B0, 0, 0);
}

uint64_t sub_22B1661B0()
{
  v80 = v0;
  if (*(v0 + 82))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 840);
    v2 = *(v0 + 832);
    v3 = *(v0 + 824);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Permission for notifications granted", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = 0xED00007473616365;
    v9 = *(v0 + 840);
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = *(v0 + 784);

    (*(v10 + 8))(v9, v11);
    v13 = 0x800000022B36A9F0;
    if (*(v12 + 16) && (v14 = *(v0 + 784), v15 = sub_22B33B28C(0x656C746974, 0xE500000000000000), (v16 & 1) != 0) && (sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v15, v0 + 304), swift_dynamicCast()))
    {
      v70 = *(v0 + 752);
      v8 = *(v0 + 760);
    }

    else
    {
      v70 = 0x726F462064697247;
    }

    if (!*(v12 + 16))
    {
      v72 = 0;
      v73 = 0;
      v74 = 0xD000000000000039;
      goto LABEL_42;
    }

    v30 = *(v0 + 784);
    v31 = sub_22B33B28C(2036625250, 0xE400000000000000);
    if (v32)
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v31, v0 + 336);
      v33 = swift_dynamicCast();
      v34 = 0xD000000000000039;
      if (v33)
      {
        v34 = *(v0 + 736);
        v13 = *(v0 + 744);
      }
    }

    else
    {
      v34 = 0xD000000000000039;
    }

    v74 = v34;
    if (*(v12 + 16) && (v35 = *(v0 + 784), v36 = sub_22B33B28C(0x4C5255706174, 0xE600000000000000), (v37 & 1) != 0))
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v36, v0 + 400);
      sub_22B172454((v0 + 400), (v0 + 368));
      sub_22B172454((v0 + 368), (v0 + 624));
      v38 = swift_dynamicCast();
      if (v38)
      {
        v39 = *(v0 + 720);
      }

      else
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = *(v0 + 728);
      }

      else
      {
        v40 = 0;
      }

      v72 = v40;
      v73 = v39;
      if (!*(v12 + 16))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v72 = 0;
      v73 = 0;
      if (!*(v12 + 16))
      {
        goto LABEL_42;
      }
    }

    v41 = *(v0 + 784);
    v42 = sub_22B33B28C(0x4449656D6F68, 0xE600000000000000);
    if (v43)
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v42, v0 + 464);
      sub_22B172454((v0 + 464), (v0 + 432));
      sub_22B172454((v0 + 432), (v0 + 592));
      v44 = swift_dynamicCast();
      if (v44)
      {
        v45 = *(v0 + 704);
      }

      else
      {
        v45 = 0;
      }

      if (v44)
      {
        v46 = *(v0 + 712);
      }

      else
      {
        v46 = 0;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_45;
      }

LABEL_43:
      v47 = *(v0 + 784);
      v48 = sub_22B33B28C(0xD000000000000012, 0x800000022B36A9D0);
      if (v49)
      {
        sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v48, v0 + 528);
        sub_22B172454((v0 + 528), (v0 + 496));
        sub_22B172454((v0 + 496), (v0 + 560));
        v71 = swift_dynamicCast() & *(v0 + 81);
LABEL_46:
        v29 = *(v0 + 776);
        v69 = v13;
        v50 = v8;
        if (v46)
        {
          *&v75 = *(v0 + 768);
          *(&v75 + 1) = v29;

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v45, v46);
          v51 = v75;
        }

        else
        {

          v51 = *(v0 + 768);
        }

        v68 = v51;
        v67 = *(v0 + 856);
        v52 = *(v0 + 816);
        v53 = *(v0 + 808);
        v54 = *(v0 + 800);
        v55 = *(v0 + 792);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v56 = *(v54 + 8);
        v56(v53, v55);
        *(v0 + 160) = v70;
        *(v0 + 168) = v50;
        *(v0 + 176) = v74;
        *(v0 + 184) = v69;
        *(v0 + 192) = v73;
        *(v0 + 200) = v72;
        *(v0 + 208) = v45;
        *(v0 + 216) = v46;
        *(v0 + 224) = v71;
        v57 = *(v0 + 208);
        v77 = *(v0 + 192);
        v78 = v57;
        v79 = *(v0 + 224);
        v58 = *(v0 + 176);
        v75 = *(v0 + 160);
        v76 = v58;
        sub_22B1723A4(v0 + 160, v0 + 232);
        v28 = v68;
        sub_22B28E828(v52, v68, v29, &v75);

        v59 = v75;
        *(v0 + 104) = v76;
        v60 = v78;
        *(v0 + 120) = v77;
        *(v0 + 136) = v60;
        *(v0 + 152) = v79;
        *(v0 + 88) = v59;
        sub_22B172400(v0 + 88);
        v56(v52, v55);
        *(v0 + 16) = v70;
        *(v0 + 24) = v50;
        *(v0 + 32) = v74;
        *(v0 + 40) = v69;
        *(v0 + 48) = v73;
        *(v0 + 56) = v72;
        *(v0 + 64) = v45;
        *(v0 + 72) = v46;
        *(v0 + 80) = v71;
        sub_22B172400(v0 + 16);
        goto LABEL_50;
      }

LABEL_45:
      v71 = 0;
      goto LABEL_46;
    }

LABEL_42:
    v45 = 0;
    v46 = 0;
    if (!*(v12 + 16))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 848);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v20 = __swift_project_value_buffer(v19, qword_28140BD10);
  swift_beginAccess();
  (*(v18 + 16))(v17, v20, v19);
  v21 = sub_22B36050C();
  v22 = sub_22B360D1C();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 848);
  v25 = *(v0 + 832);
  v26 = *(v0 + 824);
  if (v23)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22B116000, v21, v22, "Permission for notifications denied", v27, 2u);
    MEMORY[0x23188F650](v27, -1, -1);
  }

  (*(v25 + 8))(v24, v26);
  v28 = 0;
  v29 = 0xE000000000000000;
LABEL_50:
  v61 = *(v0 + 848);
  v62 = *(v0 + 840);
  v63 = *(v0 + 816);
  v64 = *(v0 + 808);

  v65 = *(v0 + 8);

  return v65(v28, v29);
}

uint64_t sub_22B166900()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1669BC, 0, 0);
}

uint64_t sub_22B1669BC()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Setting mock url session", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
    sub_22B35E3EC();
    v11 = sub_22B360CDC();
    v0[8] = v11;
    if (qword_28140AA30 != -1)
    {
      v16 = v11;
      swift_once();
      v11 = v16;
    }

    v12 = qword_28140BD50;
    v0[9] = qword_28140BD50;
    v13 = v11;

    return MEMORY[0x2822009F8](sub_22B166BF4, v12, 0);
  }

  else
  {
    v14 = v0[7];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B166BF4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_22B166C64, 0, 0);
}

uint64_t sub_22B166C64()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B166CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[101] = a3;
  v3[100] = a2;
  v3[99] = a1;
  return MEMORY[0x2822009F8](sub_22B166CF4, 0, 0);
}

uint64_t sub_22B166CF4()
{
  v1 = *(v0 + 808);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 808);
    v3 = sub_22B33B28C(0x656C746974, 0xE500000000000000);
    if (v4)
    {
      v5 = *(v0 + 808);
      sub_22B170C58(*(v5 + 56) + 32 * v3, v0 + 376);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 728);
        *(v0 + 816) = v6;
        v7 = *(v0 + 736);
        *(v0 + 824) = v7;
        if (*(v1 + 16))
        {
          v8 = *(v0 + 808);
          v9 = sub_22B33B28C(2036625250, 0xE400000000000000);
          if (v10)
          {
            sub_22B170C58(*(v5 + 56) + 32 * v9, v0 + 408);
            if (swift_dynamicCast())
            {
              v36 = *(v0 + 744);
              *(v0 + 832) = v36;
              v35 = *(v0 + 752);
              *(v0 + 840) = v35;
              v11 = *(v1 + 16);
              if (v11)
              {
                v12 = *(v0 + 808);
                v13 = sub_22B33B28C(0x4C5255706174, 0xE600000000000000);
                if (v14)
                {
                  sub_22B170C58(*(v5 + 56) + 32 * v13, v0 + 472);
                  sub_22B172454((v0 + 472), (v0 + 440));
                  sub_22B172454((v0 + 440), (v0 + 696));
                  v15 = swift_dynamicCast();
                  v11 = *(v0 + 776);
                  if (v15)
                  {
                    v16 = *(v0 + 784);
                  }

                  else
                  {
                    v11 = 0;
                    v16 = 0;
                  }

                  goto LABEL_18;
                }

                v11 = 0;
              }

              v16 = 0;
LABEL_18:
              *(v0 + 856) = v16;
              v34 = v11;
              *(v0 + 848) = v11;
              if (*(v1 + 16) && (v19 = *(v0 + 808), v20 = sub_22B33B28C(0x4449656D6F68, 0xE600000000000000), (v21 & 1) != 0))
              {
                sub_22B170C58(*(v5 + 56) + 32 * v20, v0 + 536);
                sub_22B172454((v0 + 536), (v0 + 504));
                sub_22B172454((v0 + 504), (v0 + 664));
                v22 = swift_dynamicCast();
                if (v22)
                {
                  v23 = *(v0 + 760);
                }

                else
                {
                  v23 = 0;
                }

                if (v22)
                {
                  v24 = *(v0 + 768);
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v23 = 0;
                v24 = 0;
              }

              *(v0 + 872) = v24;
              *(v0 + 864) = v23;
              if (*(v1 + 16) && (v25 = *(v0 + 808), v26 = sub_22B33B28C(0xD000000000000012, 0x800000022B36A9D0), (v27 & 1) != 0))
              {
                sub_22B170C58(*(v5 + 56) + 32 * v26, v0 + 600);
                sub_22B172454((v0 + 600), (v0 + 568));
                sub_22B172454((v0 + 568), (v0 + 632));
                v28 = swift_dynamicCast() & *(v0 + 81);
              }

              else
              {
                v28 = 0;
              }

              *(v0 + 82) = v28;
              if (qword_28140A6A0 != -1)
              {
                swift_once();
              }

              *(v0 + 160) = v6;
              *(v0 + 168) = v7;
              *(v0 + 176) = v36;
              *(v0 + 184) = v35;
              *(v0 + 192) = v34;
              *(v0 + 200) = v16;
              *(v0 + 208) = v23;
              *(v0 + 216) = v24;
              v29 = *(v0 + 160);
              *(v0 + 248) = *(v0 + 176);
              v30 = *(v0 + 208);
              *(v0 + 264) = *(v0 + 192);
              *(v0 + 280) = v30;
              *(v0 + 880) = qword_28140BD38;
              *(v0 + 224) = v28;
              *(v0 + 296) = *(v0 + 224);
              *(v0 + 232) = v29;

              sub_22B1723A4(v0 + 160, v0 + 304);
              v31 = swift_task_alloc();
              *(v0 + 888) = v31;
              *v31 = v0;
              v31[1] = sub_22B167110;
              v32 = *(v0 + 800);
              v33 = *(v0 + 792);

              return sub_22B21365C(v33, v32, v0 + 232);
            }
          }
        }
      }
    }
  }

  v17 = *(v0 + 8);

  return v17(7);
}

uint64_t sub_22B167110(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 + 232;
  v4 = *(*v1 + 888);
  v5 = *(*v1 + 880);
  v8 = *v1;
  *(v2 + 896) = a1;

  *(v2 + 104) = *(v2 + 248);
  v6 = *(v3 + 48);
  *(v2 + 120) = *(v3 + 32);
  *(v2 + 136) = v6;
  *(v2 + 152) = *(v2 + 296);
  *(v2 + 88) = *(v2 + 232);
  sub_22B172400(v2 + 88);

  return MEMORY[0x2822009F8](sub_22B167268, 0, 0);
}

uint64_t sub_22B167268()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  *(v0 + 16) = *(v0 + 816);
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v4 = *(v0 + 864);
  *(v0 + 48) = *(v0 + 848);
  *(v0 + 64) = v4;
  *(v0 + 80) = v1;
  sub_22B172400(v0 + 16);
  v5 = *(v0 + 896);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22B1672F0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 138) = v16;
  *(v8 + 64) = a8;
  *(v8 + 72) = v15;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA390, &qword_22B364460) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v10 = sub_22B35E20C();
  *(v8 + 88) = v10;
  v11 = *(v10 - 8);
  *(v8 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B167408, 0, 0);
}

uint64_t sub_22B167408()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 136);
  sub_22B35E1EC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(*(v0 + 80), &qword_27D8BA390, &qword_22B364460);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7(0, 0xF000000000000000);
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_22B1675E0;
    v10 = *(v0 + 104);
    v11 = *(v0 + 138);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);

    return sub_22B294780(v17, v16, v10, v11, v14, v15, v12, v13);
  }
}

uint64_t sub_22B1675E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v6 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_22B1676E0, 0, 0);
}

uint64_t sub_22B1676E0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5(v1, v2);
}

uint64_t sub_22B167778(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 88) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B1677A4, 0, 0);
}

uint64_t sub_22B1677A4()
{
  if (sub_22B35EEBC())
  {
    if (*(v0 + 89) == 1)
    {
      sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
      sub_22B35E40C();
      v1 = sub_22B360CDC();
      *(v0 + 40) = v1;
      if (qword_281408858 != -1)
      {
        v10 = v1;
        swift_once();
        v1 = v10;
      }

      v2 = qword_28140BC40;
      *(v0 + 48) = qword_28140BC40;
      v3 = sub_22B1679C4;
    }

    else
    {
      if (*(v0 + 88) != 1)
      {
        if (qword_281408858 != -1)
        {
          swift_once();
        }

        *(v0 + 72) = qword_28140BC40;
        v8 = sub_22B167C4C;
        v9 = 0;
        goto LABEL_17;
      }

      sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
      sub_22B35E3FC();
      v1 = sub_22B360CDC();
      *(v0 + 56) = v1;
      if (qword_281408858 != -1)
      {
        v11 = v1;
        swift_once();
        v1 = v11;
      }

      v2 = qword_28140BC40;
      *(v0 + 64) = qword_28140BC40;
      v3 = sub_22B167B08;
    }

    v6 = v3;
    v7 = v1;
    v8 = v6;
    v9 = v2;
LABEL_17:

    return MEMORY[0x2822009F8](v8, v9, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1679C4()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_22B167A34, 0, 0);
}

uint64_t sub_22B167A34()
{
  v1 = *(v0 + 48);
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_22B167D18;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_22B35806C(v5, v3, v4);
}

uint64_t sub_22B167B08()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22B167B78, 0, 0);
}

uint64_t sub_22B167B78()
{
  v1 = *(v0 + 64);
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_22B167D18;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_22B35806C(v5, v3, v4);
}

uint64_t sub_22B167C4C()
{
  v1 = v0[9];
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22B167D18;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_22B35806C(v5, v3, v4);
}

uint64_t sub_22B167D18()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B167E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_22B35E0BC();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_22B35E04C();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610);
  v3[17] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B167FC8, 0, 0);
}

uint64_t sub_22B167FC8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v25 = v0[11];
  v26 = v0[17];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  sub_22B35DFFC();
  sub_22B35E00C();
  (*(v3 + 8))(v2, v4);
  sub_22B338E80(v5, v1);
  v10 = (*(v6 + 8))(v5, v25);
  v11 = MEMORY[0x23188EEB0](v10);
  v12 = sub_22B35D82C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22B35D81C();
  sub_22B1722F0();
  v15 = sub_22B35D80C();
  v17 = v16;
  v18 = v0[18];

  objc_autoreleasePoolPop(v11);
  sub_22B123284(v18, &qword_27D8BA3B0, &unk_22B364610);
  v19 = v0[18];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[10];

  v23 = v0[1];

  return v23(v15, v17);
}

uint64_t sub_22B1683F0()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1684B8, 0, 0);
}

uint64_t sub_22B1684B8()
{
  if (qword_281409E98 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD00;
  *(v0 + 72) = qword_28140BD00;

  return MEMORY[0x2822009F8](sub_22B168550, v1, 0);
}

uint64_t sub_22B168550()
{
  v1 = *(v0 + 72);
  *(v0 + 80) = sub_22B2A87C4();

  return MEMORY[0x2822009F8](sub_22B1685BC, 0, 0);
}

uint64_t sub_22B1685BC()
{
  v46 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v43 = *(v3 + 16);
  v43(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[10];
    v10 = v0[6];
    v40 = v0[5];
    v41 = v0[8];
    v11 = swift_slowAlloc();
    v42 = v5;
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36A710, &v45);
    *(v11 + 12) = 2080;
    v13 = sub_22B35EF5C();
    v15 = sub_22B1A7B20(v13, v14, &v45);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_22B116000, v7, v8, "%s returning location from CL...%s", v11, 0x16u);
    swift_arrayDestroy();
    v16 = v12;
    v5 = v42;
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v17 = *(v10 + 8);
    v17(v41, v40);
  }

  else
  {
    v18 = v0[8];
    v19 = v0[5];
    v20 = v0[6];

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v21 = v0[10];
  v43(v0[7], v5, v0[5]);
  v22 = v21;
  v23 = sub_22B36050C();
  v24 = sub_22B360D0C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[10];
    v26 = v0[6];
    v44 = v0[7];
    v27 = v0[5];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v30;
    *v28 = 136315394;
    *(v28 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36A710, &v45);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v25;
    v31 = v25;
    _os_log_impl(&dword_22B116000, v23, v24, "\t...%s returning %@", v28, 0x16u);
    sub_22B123284(v29, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v28, -1, -1);

    v32 = v44;
  }

  else
  {
    v34 = v0[6];
    v33 = v0[7];
    v27 = v0[5];

    v32 = v33;
  }

  v17(v32, v27);
  v36 = v0[7];
  v35 = v0[8];

  v37 = v0[1];
  v38 = v0[10];

  return v37(v38);
}

uint64_t sub_22B1689A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v25;
  *(v8 + 112) = v26;
  *(v8 + 88) = v24;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = sub_22B3604BC();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA370, &qword_22B364228) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v13 = sub_22B35FC0C();
  *(v8 + 168) = v13;
  v14 = *(v13 - 8);
  *(v8 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v16 = sub_22B36047C();
  *(v8 + 192) = v16;
  v17 = *(v16 - 8);
  *(v8 + 200) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v19 = sub_22B3604AC();
  *(v8 + 248) = v19;
  v20 = *(v19 - 8);
  *(v8 + 256) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B168C1C, 0, 0);
}

uint64_t sub_22B168C1C()
{
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v9, "LeanHistoricalEnergyUsage", "", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[21];
  v15 = v0[22];
  v16 = v0[20];
  v17 = v0[12];

  (*(v13 + 16))(v11, v10, v12);
  v18 = sub_22B3604EC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[34] = sub_22B3604DC();
  sub_22B35FBEC();
  v21 = (*(v15 + 48))(v16, 1, v14);
  v22 = v0[33];
  if (v21 == 1)
  {
    v23 = v0[26];
    sub_22B123284(v0[20], &qword_27D8BA370, &qword_22B364228);
    v24 = sub_22B36048C();
    sub_22B3604CC();
    v25 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v26 = v0[18];
      v27 = v0[15];
      v28 = v0[16];

      sub_22B3604FC();

      if ((*(v28 + 88))(v26, v27) == *MEMORY[0x277D85B00])
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[16] + 8))(v0[18], v0[15]);
        v29 = "";
      }

      v50 = v0[25];
      v49 = v0[26];
      v51 = v0[24];
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v24, v25, v53, "LeanHistoricalEnergyUsage", v29, v52, 2u);
      MEMORY[0x23188F650](v52, -1, -1);

      (*(v50 + 8))(v49, v51);
    }

    else
    {
      v47 = v0[25];
      v46 = v0[26];
      v48 = v0[24];

      (*(v47 + 8))(v46, v48);
    }

    v55 = v0[32];
    v54 = v0[33];
    v56 = v0[31];
    v58 = v0[28];
    v57 = v0[29];
    v60 = v0[26];
    v59 = v0[27];
    v61 = v0[23];
    v63 = v0[20];
    v64 = v0[19];
    v65 = v0[18];
    v66 = v0[17];
    (*(v0[25] + 8))(v0[30], v0[24]);
    (*(v55 + 8))(v54, v56);

    v62 = v0[1];

    return v62(0);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v30 = sub_22B36048C();
    v31 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v32 = v0[30];
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v30, v31, v34, "Start: Fetch AMI Data", "", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v35 = v0[14];
    v36 = swift_task_alloc();
    v0[35] = v36;
    *v36 = v0;
    v36[1] = sub_22B16919C;
    v37 = v0[10];
    v38 = v0[8];
    v39 = v0[9];
    v40 = v0[6];
    v41 = v0[7];
    v42 = v0[4];
    v43 = v0[5];
    v44 = v0[3];
    v70 = v0[13];
    v68 = v0[11];
    v69 = v0[23];

    return sub_22B11EF20(v44, v42, v43, v40, v41, v38, v39, v37);
  }
}

uint64_t sub_22B16919C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22B16929C, 0, 0);
}

uint64_t sub_22B16929C()
{
  v58 = v0;
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[33];
    v3 = sub_22B36048C();
    v4 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v5 = v0[30];
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v7, "End: Fetch AMI Data", "", v6, 2u);
      MEMORY[0x23188F650](v6, -1, -1);
    }

    v9 = v0[33];
    v8 = v0[34];
    if (*(v1 + 16))
    {
      v10 = v0[30];
      v11 = MEMORY[0x23188EEB0]();
      sub_22B152800(v9, v10, v1, v8, v0 + 2, &v57);
      v12 = v0[34];
      v24 = v0[22];
      v25 = v0[23];
      v26 = v0[21];

      objc_autoreleasePoolPop(v11);

      (*(v24 + 8))(v25, v26);
      v55 = v57;
      goto LABEL_14;
    }

    v14 = v0[28];

    v15 = sub_22B36048C();
    sub_22B3604CC();
    v16 = sub_22B360E1C();
    v17 = sub_22B360FDC();
    v18 = v0[34];
    if (v17)
    {
      v19 = v0[19];
      v20 = v0[15];
      v21 = v0[16];
      v22 = v0[34];

      sub_22B3604FC();

      if ((*(v21 + 88))(v19, v20) == *MEMORY[0x277D85B00])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[16] + 8))(v0[19], v0[15]);
        v23 = "";
      }

      v33 = v0[34];
      v34 = v0[28];
      v35 = v0[24];
      v36 = v0[25];
      v37 = v0[22];
      v53 = v0[21];
      v56 = v0[23];
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v15, v16, v39, "LeanHistoricalEnergyUsage", v23, v38, 2u);
      MEMORY[0x23188F650](v38, -1, -1);

      (*(v36 + 8))(v34, v35);
      (*(v37 + 8))(v56, v53);
    }

    else
    {
      v27 = v0[28];
      v28 = v0[24];
      v29 = v0[25];
      v31 = v0[22];
      v30 = v0[23];
      v32 = v0[21];

      (*(v29 + 8))(v27, v28);
      (*(v31 + 8))(v30, v32);
    }
  }

  else
  {
    v13 = v0[34];
    (*(v0[22] + 8))(v0[23], v0[21]);
  }

  v55 = 0;
LABEL_14:
  v41 = v0[32];
  v40 = v0[33];
  v42 = v0[31];
  v44 = v0[28];
  v43 = v0[29];
  v46 = v0[26];
  v45 = v0[27];
  v47 = v0[23];
  v50 = v0[20];
  v51 = v0[19];
  v52 = v0[18];
  v54 = v0[17];
  (*(v0[25] + 8))(v0[30], v0[24]);
  (*(v41 + 8))(v40, v42);

  v48 = v0[1];

  return v48(v55);
}

uint64_t sub_22B169840(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B169860, 0, 0);
}

uint64_t sub_22B169860()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[5] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B16994C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B202CC8(v3, v2);
}

uint64_t sub_22B16994C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_22B169A6C, 0, 0);
}

uint64_t sub_22B169A6C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = sub_22B35D82C();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_22B35D81C();
    v0[2] = v1;
    sub_22B35FFDC();
    sub_22B172464(&unk_27D8BA3A0, MEMORY[0x277D18158]);
    v5 = sub_22B35D80C();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = v0[1];

  return v10(v9, v8);
}

uint64_t sub_22B169B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B169BB4, 0, 0);
}

uint64_t sub_22B169BB4()
{
  sub_22B3602DC();
  v1 = sub_22B36029C();
  v0[4] = v1;
  v2 = *(MEMORY[0x277D18270] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B169C68;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282172650](v5, v4, v1);
}

uint64_t sub_22B169C68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_22B16A004;
  }

  else
  {

    v5 = sub_22B169D84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B169D84()
{
  if (v0[6])
  {
    v1 = *(MEMORY[0x277D18150] + 4);
    v6 = (*MEMORY[0x277D18150] + MEMORY[0x277D18150]);
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22B169E9C;

    return v6();
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v4 = 15;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_22B169E9C(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_22B169F9C, 0, 0);
}

uint64_t sub_22B169F9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_22B16A004()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22B16A06C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B16A08C, 0, 0);
}

uint64_t sub_22B16A08C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[5] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B16A178;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B202FC8(v3, v2);
}

uint64_t sub_22B16A178(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_22B16A298, 0, 0);
}

char *sub_22B16A298()
{
  v1 = v0[7];
  if (!v1)
  {
    v6 = 0;
LABEL_20:
    v19 = v0[1];

    return v19(v6);
  }

  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_19:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  while (1)
  {
    v22 = MEMORY[0x277D84F90];
    result = sub_22B3556E4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v4 = 0;
    v5 = v0[7];
    v6 = v22;
    v21 = v5 & 0xC000000000000001;
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v21)
      {
        v8 = MEMORY[0x23188EAC0](v4, v1);
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = sub_22B35D82C();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_22B35D81C();
      v0[2] = v9;
      sub_22B36025C();
      sub_22B172464(&qword_27D8BA398, MEMORY[0x277D18228]);
      v13 = sub_22B35D80C();
      v15 = v14;

      v17 = *(v22 + 16);
      v16 = *(v22 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22B3556E4((v16 > 1), v17 + 1, 1);
      }

      *(v22 + 16) = v17 + 1;
      v18 = v22 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      ++v4;
      if (v7 == v2)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v2 = sub_22B36109C();
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B16A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v20;
  *(v8 + 80) = v19;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  *(v8 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA358, qword_22B368000);
  *(v8 + 144) = v11;
  v12 = *(v11 - 8);
  *(v8 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v14 = sub_22B35FC0C();
  *(v8 + 168) = v14;
  v15 = *(v14 - 8);
  *(v8 + 176) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16A6AC, 0, 0);
}

uint64_t sub_22B16A6AC()
{
  v80 = v0;
  if ((sub_22B35EEBC() & 1) == 0)
  {
    v21 = MEMORY[0x277D84F98];
    v22 = *(MEMORY[0x277D84F98] + 16);
    if (v22)
    {
      v64 = *(v0 + 144);
      v65 = *(v0 + 152);
      v77 = *(v0 + 104);
      v79[0] = MEMORY[0x277D84F90];
      sub_22B355704(0, v22, 0);
      v23 = v79[0];
      v24 = -1 << *(v21 + 32);
      v25 = sub_22B36105C();
      v26 = 0;
      v27 = *(v21 + 36);
      v61 = v22;
      v62 = v27;
      v63 = v0;
      do
      {
        if ((v25 & 0x8000000000000000) != 0 || v25 >= 1 << *(v21 + 32))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if ((*(v21 + 8 * (v25 >> 6) + 64) & (1 << v25)) == 0)
        {
          goto LABEL_39;
        }

        if (v27 != *(v21 + 36))
        {
          goto LABEL_40;
        }

        v68 = 1 << v25;
        v69 = v21 + 8 * (v25 >> 6);
        v66 = v25 >> 6;
        v67 = v26;
        v28 = *(v77 + 48);
        v74 = v28;
        v72 = *(v0 + 160);
        v30 = *(v0 + 128);
        v29 = *(v0 + 136);
        v78 = *(v0 + 120);
        v76 = v23;
        v73 = *(v0 + 112);
        v31 = *(v21 + 48);
        v32 = sub_22B35DE9C();
        v33 = *(v32 - 8);
        (*(v33 + 16))(v29, v31 + *(v33 + 72) * v25, v32);
        v34 = *(v21 + 56);
        v35 = sub_22B35F00C();
        v36 = *(v35 - 8);
        (*(v36 + 16))(v29 + v28, v34 + *(v36 + 72) * v25, v35);
        v37 = *(v33 + 32);
        v37(v30, v29, v32);
        (*(v36 + 32))(v30 + *(v77 + 48), v29 + v74, v35);
        v70 = *(v64 + 48);
        v75 = v25;
        sub_22B170BE0(v30, v78, &qword_27D8BA350, &unk_22B364020);
        v71 = *(v77 + 48);
        v37(v72, v78, v32);
        sub_22B170BE0(v30, v73, &qword_27D8BA350, &unk_22B364020);
        v38 = *(v77 + 48);
        sub_22B35EFEC();
        v40 = v39;
        sub_22B123284(v30, &qword_27D8BA350, &unk_22B364020);
        *(v72 + v70) = v40;
        v41 = *(v36 + 8);
        v41(v73 + v38, v35);
        v23 = v76;
        (*(v33 + 8))(v73, v32);
        v41(v78 + v71, v35);
        v79[0] = v76;
        v0 = *(v76 + 16);
        v42 = *(v76 + 24);
        if (v0 >= v42 >> 1)
        {
          sub_22B355704(v42 > 1, v0 + 1, 1);
          v23 = v79[0];
        }

        v43 = v63[20];
        *(v23 + 16) = v0 + 1;
        sub_22B170CD0(v43, v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v0, &qword_27D8BA358, qword_22B368000);
        v25 = 1 << *(MEMORY[0x277D84F98] + 32);
        if (v75 >= v25)
        {
          goto LABEL_41;
        }

        v21 = MEMORY[0x277D84F98];
        v44 = *(v69 + 64);
        if ((v44 & v68) == 0)
        {
          goto LABEL_42;
        }

        v27 = v62;
        if (v62 != *(MEMORY[0x277D84F98] + 36))
        {
          goto LABEL_43;
        }

        v0 = v63;
        v45 = v44 & (-2 << (v75 & 0x3F));
        if (v45)
        {
          v25 = __clz(__rbit64(v45)) | v75 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v46 = v66 << 6;
          v47 = (v69 + 72);
          v48 = v66 + 1;
          while (v48 < (v25 + 63) >> 6)
          {
            v50 = *v47++;
            v49 = v50;
            v46 += 64;
            ++v48;
            if (v50)
            {
              sub_22B16FD40(v75, v62, 0);
              v25 = __clz(__rbit64(v49)) + v46;
              goto LABEL_15;
            }
          }

          sub_22B16FD40(v75, v62, 0);
        }

LABEL_15:
        v26 = v67 + 1;
      }

      while (v67 + 1 != v61);

      if (!*(v23 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {

      if (!*(MEMORY[0x277D84F90] + 16))
      {
LABEL_34:
        v51 = MEMORY[0x277D84F98];
        goto LABEL_35;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
    v51 = sub_22B3612BC();
LABEL_35:
    v79[0] = v51;

    sub_22B164B68(v52, 1, v79);
    v53 = *(v0 + 184);
    v54 = *(v0 + 160);
    v56 = *(v0 + 128);
    v55 = *(v0 + 136);
    v58 = *(v0 + 112);
    v57 = *(v0 + 120);

    v59 = v79[0];

    v60 = *(v0 + 8);

    return v60(v59);
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(*(v0 + 176) + 104);
  v3(*(v0 + 184), *MEMORY[0x277D074B0], *(v0 + 168));
  v4 = v2 == 0x4445535245564552 && v1 == 0xE800000000000000;
  if (v4 || (v5 = *(v0 + 88), v6 = *(v0 + 96), (sub_22B36134C() & 1) != 0))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    (*(*(v0 + 176) + 8))(v7, v8);
    v3(v7, *MEMORY[0x277D074A8], v8);
  }

  if (qword_27D8B9F60 != -1)
  {
LABEL_44:
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_22B16AE34;
  v10 = *(v0 + 184);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);
  v84 = 0;
  v85 = 0;
  v82 = v12;
  v83 = v10;

  return sub_22B11EF20(v16, v13, v14, v11, v19, v17, v18, v15);
}

uint64_t sub_22B16AE34(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_22B16AF34, 0, 0);
}

uint64_t sub_22B16AF34()
{
  v69 = v0;
  v1 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v55 = v0[18];
    v56 = v0[19];
    v65 = v0[13];
    v68[0] = MEMORY[0x277D84F90];
    sub_22B355704(0, v3, 0);
    v67 = v68[0];
    v4 = v2 + 64;
    v5 = -1 << *(v2 + 32);
    v6 = sub_22B36105C();
    v11 = v6;
    v12 = 0;
    v13 = *(v2 + 36);
    v49 = v2 + 72;
    v50 = v3;
    v53 = v0;
    v54 = v2 + 64;
    v51 = v13;
    v52 = v2;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v2 + 32))
    {
      if ((*(v4 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_32;
      }

      if (v13 != *(v2 + 36))
      {
        goto LABEL_33;
      }

      v58 = 1 << v11;
      v59 = v11 >> 6;
      v57 = v12;
      v14 = *(v65 + 48);
      v62 = v0[20];
      v16 = v0[16];
      v15 = v0[17];
      v66 = v0[15];
      v63 = v0[14];
      v17 = *(v2 + 48);
      v18 = sub_22B35DE9C();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v15, v17 + *(v19 + 72) * v11, v18);
      v20 = *(v2 + 56);
      v21 = sub_22B35F00C();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v15 + v14, v20 + *(v22 + 72) * v11, v21);
      v23 = *(v19 + 32);
      v23(v16, v15, v18);
      (*(v22 + 32))(v16 + *(v65 + 48), v15 + v14, v21);
      v60 = *(v55 + 48);
      v64 = v11;
      sub_22B170BE0(v16, v66, &qword_27D8BA350, &unk_22B364020);
      v61 = *(v65 + 48);
      v23(v62, v66, v18);
      sub_22B170BE0(v16, v63, &qword_27D8BA350, &unk_22B364020);
      v24 = *(v65 + 48);
      sub_22B35EFEC();
      v26 = v25;
      sub_22B123284(v16, &qword_27D8BA350, &unk_22B364020);
      *(v62 + v60) = v26;
      v27 = *(v22 + 8);
      v27(v63 + v24, v21);
      (*(v19 + 8))(v63, v18);
      v27(v66 + v61, v21);
      v68[0] = v67;
      v29 = *(v67 + 16);
      v28 = *(v67 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22B355704(v28 > 1, v29 + 1, 1);
        v67 = v68[0];
      }

      v30 = v53[20];
      *(v67 + 16) = v29 + 1;
      sub_22B170CD0(v30, v67 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v29, &qword_27D8BA358, qword_22B368000);
      v2 = v52;
      v11 = 1 << *(v52 + 32);
      v6 = v64;
      v4 = v54;
      if (v64 >= v11)
      {
        goto LABEL_34;
      }

      v31 = *(v54 + 8 * v59);
      if ((v31 & v58) == 0)
      {
        goto LABEL_35;
      }

      v13 = v51;
      if (v51 != *(v52 + 36))
      {
        goto LABEL_36;
      }

      v0 = v53;
      v32 = v31 & (-2 << (v64 & 0x3F));
      if (v32)
      {
        v11 = __clz(__rbit64(v32)) | v64 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v59 << 6;
        v34 = (v49 + 8 * v59);
        v35 = v59 + 1;
        while (v35 < (v11 + 63) >> 6)
        {
          v37 = *v34++;
          v36 = v37;
          v33 += 64;
          ++v35;
          if (v37)
          {
            v6 = sub_22B16FD40(v64, v51, 0);
            v11 = __clz(__rbit64(v36)) + v33;
            goto LABEL_7;
          }
        }

        v6 = sub_22B16FD40(v64, v51, 0);
      }

LABEL_7:
      v12 = v57 + 1;
      if (v57 + 1 == v50)
      {

        goto LABEL_25;
      }
    }

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
    return MEMORY[0x2821FEBD8](v6, v7, v8, v9, v10);
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
LABEL_25:
    if (*(v67 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
      v38 = sub_22B3612BC();
    }

    else
    {
      v38 = MEMORY[0x277D84F98];
    }

    v68[0] = v38;

    sub_22B164B68(v39, 1, v68);
    v40 = v0[23];
    v41 = v0[20];
    v43 = v0[16];
    v42 = v0[17];
    v45 = v0[14];
    v44 = v0[15];

    v46 = v68[0];

    v47 = v0[1];

    return v47(v46);
  }
}

uint64_t sub_22B16B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 170) = v18;
  *(v9 + 112) = v17;
  *(v9 + 120) = v8;
  *(v9 + 169) = v16;
  *(v9 + 96) = v15;
  *(v9 + 80) = a6;
  *(v9 + 88) = a8;
  *(v9 + 168) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 40) = a1;
  v10 = sub_22B36052C();
  *(v9 + 128) = v10;
  v11 = *(v10 - 8);
  *(v9 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16B65C, 0, 0);
}

uint64_t sub_22B16B65C()
{
  v1 = *(v0 + 120);
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000093, 0x800000022B36A930))
  {
    if (sub_22B35EEBC())
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 80);
      v3 = *(v0 + 64);
      v4 = swift_task_alloc();
      *(v0 + 152) = v4;
      *v4 = v0;
      v4[1] = sub_22B16B860;
      v5 = *(v0 + 88);
      v6 = *(v0 + 168);
      v7 = *(v0 + 72);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v21 = *(v0 + 170);
      v20 = *(v0 + 112);
      v19 = *(v0 + 169);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);

      JUMPOUT(0x22B2806F4);
    }

    v14 = *(v0 + 144);

    v13 = *(v0 + 8);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v11 = 9;
    v12 = *(v0 + 144);
    swift_willThrow();

    v13 = *(v0 + 8);
  }

  return v13(0);
}

uint64_t sub_22B16B860(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B16B9B8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 144);

    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_22B16B9B8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B116000, v7, v8, "[Mock Generate Error] Failed due to %@", v10, 0xCu);
    sub_22B123284(v11, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];

  (*(v15 + 8))(v14, v16);
  v17 = v0[20];
  v18 = v0[18];
  swift_willThrow();

  v19 = v0[1];

  return v19(0);
}

uint64_t dispatch thunk of HomeEnergyProxy.dumpAllData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B1724E0;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyProxy.useMockData(filePath:disableMock:validityDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B124D88;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.testNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B1724CC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyProxy.testDelegate(forGridIds:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B124D88;

  return v8(a1);
}

uint64_t dispatch thunk of HomeEnergyProxy.testSetMockURLSession()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyProxy.isNextCleanEnergyWindowNotificationEnabled(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B1490E4;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.enableNextCleanEnergyWindowNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xC0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B1724E0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableNextCleanEnergyWindowNotifications(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xC8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B1724E0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableNextCleanEnergyWindowNotifications(forGridID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B1724E0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableAllNextCleanEnergyWindowNotifications()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B1724E0;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyProxy.historicalGridQuality(for:from:withCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x100);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B1724CC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.gridIDLookup(coordinate:)(double a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B147ABC;
  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v9, v10);
}

uint64_t sub_22B16CAF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B1645B4(v2);
}

uint64_t sub_22B16CBA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B1816D0(v2, v3, v5);
}

uint64_t sub_22B16CC60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B1817B8(a1, v4, v5, v7);
}

uint64_t sub_22B16CD2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B163E40(v2, v3);
}

uint64_t sub_22B16CDE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B163AC0(v2);
}

uint64_t sub_22B16CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 217) = a6;
  *(v6 + 216) = a4;
  *(v6 + 176) = a3;
  *(v6 + 184) = a5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  v7 = sub_22B36052C();
  *(v6 + 192) = v7;
  v8 = *(v7 - 8);
  *(v6 + 200) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16CF58, 0, 0);
}

uint64_t sub_22B16CF58()
{
  v39 = v0;
  if (sub_22B35EEBC())
  {
    v1 = *(v0 + 217);
    v2 = MEMORY[0x23188EEB0]();
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    if (v1 == 1)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
      sub_22B349C14();
    }

    else
    {
      v7 = [objc_opt_self() sharedScheduler];
      v8 = sub_22B36081C();
      v9 = [v7 taskRequestForIdentifier_];

      if (v9)
      {

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v10 = *(v0 + 200);
        v11 = *(v0 + 208);
        v12 = *(v0 + 192);
        v13 = *(v0 + 168);
        v14 = __swift_project_value_buffer(v12, qword_28140BD10);
        swift_beginAccess();
        (*(v10 + 16))(v11, v14, v12);

        v15 = sub_22B36050C();
        v16 = sub_22B360D2C();

        v17 = os_log_type_enabled(v15, v16);
        v18 = *(v0 + 200);
        v19 = *(v0 + 208);
        v20 = *(v0 + 192);
        if (v17)
        {
          v22 = *(v0 + 160);
          v21 = *(v0 + 168);
          v37 = v2;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v38 = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_22B1A7B20(v22, v21, &v38);
          _os_log_impl(&dword_22B116000, v15, v16, "[BackgroundTask] %s is already scheduled", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x23188F650](v24, -1, -1);
          v25 = v23;
          v2 = v37;
          MEMORY[0x23188F650](v25, -1, -1);
        }

        (*(v18 + 8))(v19, v20);
      }

      else
      {
        v28 = *(v0 + 184);
        v29 = *(v0 + 216);
        v31 = *(v0 + 160);
        v30 = *(v0 + 168);
        *(v0 + 40) = &type metadata for BackgroundSystemTaskScheduler;
        *(v0 + 48) = &off_283EFE540;
        v32 = *(v0 + 176);
        type metadata accessor for BackgroundLaunchTask();
        v33 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, &type metadata for BackgroundSystemTaskScheduler);
        *(v0 + 80) = &type metadata for BackgroundSystemTaskScheduler;
        *(v0 + 88) = &off_283EFE540;
        swift_defaultActor_initialize();
        sub_22B11A02C((v0 + 56), v33 + 112);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v34 = swift_allocObject();
        *(v34 + 16) = v29;
        *(v34 + 24) = v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
        *(v34 + 48) = v28;

        sub_22B348848(v31, v30, sub_22B16F320, v34);
        *(v0 + 120) = &type metadata for BackgroundSystemTaskRequest;
        *(v0 + 128) = &off_283EFE7E8;
        v35 = swift_allocObject();
        *(v0 + 96) = v35;
        *(v35 + 16) = v31;
        *(v35 + 24) = v30;
        *(v35 + 32) = v32;
        *(v35 + 40) = 0;

        sub_22B348FC8((v0 + 96), 0, 0);

        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  v26 = *(v0 + 208);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22B16D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B16D370, 0, 0);
}

uint64_t sub_22B16D370()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_28140A1F0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_28140BD28 + 40);
    if (v3)
    {
      v4 = v0[4];
      v5 = *(v3 + 16);
      v6 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v9 = v0[2];
      v8 = v0[3];
      if (v4)
      {
        v17 = *(v6 + 120);

        v17(v4, v9, v8, ObjectType, v6);
      }

      else
      {
        v12 = *(v6 + 152);

        v12(v9, v8, ObjectType, v6);
      }

      v13 = *(v3 + 16);
      v14 = *(v3 + 24);
      v15 = swift_getObjectType();
      (*(v14 + 16))(v15, v14);
    }

    v11 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_22B16D544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B16D564, 0, 0);
}

uint64_t sub_22B16D564()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_28140A1F0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_28140BD28 + 40);
    if (v3)
    {
      v5 = v0[2];
      v4 = v0[3];
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);

      v9(ObjectType, v7);
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = swift_getObjectType();
      v13 = (*(v11 + 48))(v5, v4, v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v17 = v0[1];

    return v17(v13);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B16D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_22B36052C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16D81C, 0, 0);
}

uint64_t sub_22B16D81C()
{
  sub_22B36012C();
  v1 = [objc_opt_self() sharedSession];
  v0[18] = v1;
  v2 = *(MEMORY[0x277D181C0] + 4);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_22B16D8F0;
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2821724E8](v7, v6, v4, v5, v1);
}

uint64_t sub_22B16D8F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_22B16DE58;
  }

  else
  {

    v5 = sub_22B16DA0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B16DA0C()
{
  v54 = v0;
  v1 = *(v0 + 160);
  v2 = sub_22B36016C();
  v4 = v3;
  v45 = sub_22B36015C();
  v51 = v5;
  v46 = sub_22B36017C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v10 = *(v8 + 16);
  v10(v6, v9, v7);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v47 = v14;
  v49 = *(v0 + 136);
  v52 = v10;
  if (v13)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v2;
    v19 = v17;
    v53 = v17;
    *v16 = 136315138;
    v20 = v9;
    v21 = sub_22B1A7B20(v18, v4, &v53);

    *(v16 + 4) = v21;
    v9 = v20;
    _os_log_impl(&dword_22B116000, v11, v12, "New refresh token: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v22 = v16;
    v10 = v52;
    MEMORY[0x23188F650](v22, -1, -1);
  }

  else
  {
  }

  v23 = v49;
  v50 = *(v15 + 8);
  v50(v23, v47);
  v10(*(v0 + 128), v9, *(v0 + 96));

  v24 = sub_22B36050C();
  v25 = sub_22B360D2C();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v29 = *(v0 + 104);
  if (v26)
  {
    v48 = v9;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    v32 = sub_22B1A7B20(v45, v51, &v53);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_22B116000, v24, v25, "New access token: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v33 = v31;
    v10 = v52;
    MEMORY[0x23188F650](v33, -1, -1);
    v34 = v30;
    v9 = v48;
    MEMORY[0x23188F650](v34, -1, -1);
  }

  else
  {
  }

  v50(v27, v28);
  v10(*(v0 + 120), v9, *(v0 + 96));
  v35 = sub_22B36050C();
  v36 = sub_22B360D2C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = v46;
    _os_log_impl(&dword_22B116000, v35, v36, "Access token expires in: %ld", v37, 0xCu);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v38 = *(v0 + 104);

  v39 = *(v0 + 128);
  v40 = *(v0 + 136);
  v41 = *(v0 + 112);
  v50(*(v0 + 120), *(v0 + 96));

  v42 = *(v0 + 8);
  v43 = *(v0 + 168) == 0;

  return v42(v43);
}

uint64_t sub_22B16DE58()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B116000, v7, v8, "Failed to rotate token. %@", v11, 0xCu);
    sub_22B123284(v12, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v18 = *(v0 + 8);
  v19 = *(v0 + 168) == 0;

  return v18(v19);
}

uint64_t sub_22B16E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x2822009F8](sub_22B16E0AC, 0, 0);
}

uint64_t sub_22B16E0AC()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_283EF8EA8;
  *(v0 + 16) = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = *(v1 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v1);
  v8 = *v7;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v8;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v9 = swift_allocObject();
  *(v0 + 184) = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;
  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v9 + 112);
  *(v9 + 152) = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_22B16E2A4;
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);

  return sub_22B20368C(v16, v15, v13, v14, v11, v12);
}

uint64_t sub_22B16E2A4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B16E3E0, 0, 0);
  }

  else
  {
    v4 = v3[23];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22B16E3E0()
{
  v1 = v0[23];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t sub_22B16E444(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x2822009F8](sub_22B16E464, 0, 0);
}

uint64_t sub_22B16E464()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_283EF8EA8;
  *(v0 + 16) = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = *(v1 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v1);
  v8 = *v7;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v8;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;
  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v9 + 112);
  *(v9 + 152) = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_22B16E654;
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);

  return sub_22B1F12D0(v12, v11);
}

uint64_t sub_22B16E654()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B16E764()
{
  v1 = sub_22B35EE8C();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16E820, 0, 0);
}

uint64_t sub_22B16E820()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281409448 != -1)
    {
      swift_once();
    }

    v5 = 0xD000000000000026;
    v6 = 0x800000022B36A4C0;
    v7 = [objc_opt_self() sharedScheduler];
    v8 = sub_22B36081C();
    v9 = [v7 taskRequestForIdentifier_];

    if (v9)
    {

      sub_22B349C14();
    }

    v0[5] = &type metadata for BackgroundSystemTaskScheduler;
    v0[6] = &off_283EFE540;
    sub_22B220B58(0.0, (v0 + 2), 0xD000000000000026, 0x800000022B36A4C0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v10 = v0[9];

  v11 = v0[1];

  return v11(v5, v6);
}

uint64_t sub_22B16EA04()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B1635B4(v2, v3, v5);
}

uint64_t sub_22B16EAC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22B124D88;

  return sub_22B162F88(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_22B16EB98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B162CF8(v2, v3, v5, v4);
}

uint64_t sub_22B16EC5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B124D88;

  return sub_22B1623CC(v2, v3, v4, v5);
}

uint64_t sub_22B16ED24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B161FC0(v2, v3);
}

uint64_t sub_22B16EDD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B161AEC(v2, v3, v5);
}

uint64_t sub_22B16EE98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B161728(v2, v3);
}

uint64_t sub_22B16EF4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B161254(v2, v3, v5);
}

uint64_t sub_22B16F00C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B160DE4(v2, v3, v5, v4);
}

uint64_t sub_22B16F0CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1609A0(v2, v3, v4);
}

uint64_t sub_22B16F180()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B160530(v2, v3, v5, v4);
}

uint64_t sub_22B16F240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22B124D88;

  return sub_22B1600E8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_22B16F330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B119A60;

  return sub_22B15ED38(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

uint64_t sub_22B16F420()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15E988(v2, v3);
}

uint64_t sub_22B16F4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergySite();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B16F530(uint64_t a1)
{
  v2 = type metadata accessor for CDEnergySite();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B16F58C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15E4B4();
}

uint64_t sub_22B16F638()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B15BC9C(v2, v3, v5, v4);
}

uint64_t sub_22B16F6F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22B35DF1C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22B124D88;

  return sub_22B15BA58(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_22B16F834()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15B638(v2, v3);
}

uint64_t sub_22B16F8E0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15B3E0();
}

uint64_t sub_22B16F98C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B15B068(v2, v3, v5, v4);
}

uint64_t sub_22B16FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_22B124D88;

  return sub_22B15A860(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

void sub_22B16FB34()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);
  v11 = *(v0 + 32);
  v15 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B159EECLL);
}

void sub_22B16FC48()
{
  v2 = v0[3];
  v12 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B15962CLL);
}

uint64_t sub_22B16FD40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22B16FD4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B1591F0(v2);
}

uint64_t sub_22B16FDF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158D1C(v2, v3, v4);
}

uint64_t sub_22B16FEAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158844(v2, v3, v4);
}

uint64_t sub_22B16FF60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158284(v2, v3, v4);
}

uint64_t sub_22B170014()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B157DBC(v4, v2, v3);
}

uint64_t objectdestroy_154Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B17011C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B157768(v2, v3, v5);
}

uint64_t sub_22B1701E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1570D8(v2, v3);
}

uint64_t sub_22B170294()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B156BB4(v2, v3, v4);
}

uint64_t sub_22B170348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1566BC(v2, v3, v4);
}

void sub_22B1703FC()
{
  v11 = v0[3];
  v12 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B155EA0);
}

uint64_t objectdestroy_431Tm()
{
  _Block_release(*(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_22B170568()
{
  v2 = v0[3];
  v12 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B155358);
}

uint64_t sub_22B170660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v17 = v9[8];
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22B124D88;

  return sub_22B15490C(v11, v12, v13, v14, v15, v16, v17, sub_22B15490C, a9);
}

uint64_t sub_22B17073C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B153D8C(v2, v3);
}

uint64_t objectdestroy_612Tm()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B170858()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22B119A60;

  return sub_22B153AE0(v2, v3, v4, v5, v6, v7);
}

void sub_22B170934()
{
  v11 = v0[3];
  v12 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B153384);
}

uint64_t sub_22B170A28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15262C(v2);
}

void sub_22B170AD4()
{
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22B124D88;

  JUMPOUT(0x22B151D1CLL);
}

uint64_t sub_22B170BE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B170C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B170CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B170D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14F4F0(v2, v3, v5, v4);
}

uint64_t sub_22B170DF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14EDE4(v2, v3, v5, v4);
}

uint64_t sub_22B170EB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14E8B4(v2, v3, v5, v4);
}

uint64_t sub_22B170F78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14E2B8(v2, v3, v5, v4);
}

uint64_t sub_22B171038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14DC04(v2, v3, v4);
}

uint64_t sub_22B1710EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14D81C(v2, v3, v4);
}

uint64_t sub_22B1711A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B14D1D0(v2, v3);
}

uint64_t sub_22B17124C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14CDCC(v2, v3, v4);
}

uint64_t objectdestroy_507Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B171340()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14C2C0(v4, v2, v3);
}

uint64_t sub_22B171400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B124D88;

  return sub_22B14BBA8(v2, v3, v4, v6, v5);
}

uint64_t sub_22B1714C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B14B768(v2);
}

uint64_t sub_22B171574()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B14B414(v2);
}

uint64_t objectdestroy_171Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B171670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22B124D88;

  return sub_22B14AF08(v2, v3, v4, v5, v7, v6);
}