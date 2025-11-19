uint64_t sub_20CCA1890(uint64_t a1)
{
  v3 = sub_20CCDACD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v55 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v40 - v8;
  v9 = sub_20CCDB2B4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v60 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v40[1] = v1;
    v63 = MEMORY[0x277D84F90];
    v53 = v11;
    sub_20CCA57CC(0, v13, 0);
    v15 = v53;
    v62 = v63;
    v16 = -1 << *(a1 + 32);
    v59 = a1 + 56;
    result = sub_20CCDB914();
    v17 = result;
    v18 = 0;
    v50 = v4 + 88;
    v51 = v4 + 16;
    v49 = *MEMORY[0x277D0DFD8];
    v43 = *MEMORY[0x277D0E008];
    v41 = *MEMORY[0x277D0A5D0];
    v48 = (v15 + 104);
    v54 = (v4 + 8);
    v44 = *MEMORY[0x277D0A5D8];
    v46 = v4;
    v47 = v15 + 32;
    v42 = a1 + 64;
    v52 = a1;
    v45 = v13;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      v20 = v17 >> 6;
      if ((*(v59 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_27;
      }

      v56 = v18;
      v21 = v9;
      v57 = *(a1 + 36);
      v58 = 1 << v17;
      v22 = *(v4 + 16);
      v23 = v61;
      v22(v61, *(a1 + 48) + *(v4 + 72) * v17, v3);
      v24 = v55;
      v22(v55, v23, v3);
      v25 = (*(v4 + 88))(v24, v3);
      if (v25 == v49)
      {
        v9 = v21;
        (*v48)(v60, v44, v21);
      }

      else
      {
        v26 = *v48;
        v9 = v21;
        if (v25 == v43)
        {
          v26(v60, v44, v21);
        }

        else
        {
          v26(v60, v41, v21);
          (*v54)(v55, v3);
        }
      }

      a1 = v52;
      v27 = v53;
      v28 = v3;
      (*v54)(v61, v3);
      v29 = v62;
      v63 = v62;
      v31 = *(v62 + 16);
      v30 = *(v62 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_20CCA57CC(v30 > 1, v31 + 1, 1);
        v27 = v53;
        v29 = v63;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v62 = v29;
      result = (*(v27 + 32))(v29 + v32 + *(v27 + 72) * v31, v60, v9);
      v19 = 1 << *(a1 + 32);
      if (v17 >= v19)
      {
        goto LABEL_28;
      }

      v33 = *(v59 + 8 * v20);
      if ((v33 & v58) == 0)
      {
        goto LABEL_29;
      }

      if (v57 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v34 = v33 & (-2 << (v17 & 0x3F));
      if (v34)
      {
        v19 = __clz(__rbit64(v34)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v20 << 6;
        v36 = v20 + 1;
        v37 = (v42 + 8 * v20);
        while (v36 < (v19 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_20CCA70CC(v17, v57, 0);
            v19 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_20CCA70CC(v17, v57, 0);
      }

LABEL_4:
      v18 = v56 + 1;
      v17 = v19;
      v3 = v28;
      v4 = v46;
      if (v56 + 1 == v45)
      {
        return v62;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CCA1DA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20CCDA7D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CCDA7F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F690, &qword_20CCDCC90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v16 = sub_20CCDB584();
  v52 = __swift_project_value_buffer(v16, qword_28110EE00);
  v17 = sub_20CCDB564();
  v18 = sub_20CCDB8B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51 = v3;
    v20 = v7;
    v21 = v2;
    v22 = a1;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_20CC86000, v17, v18, "Querying Locale availability", v19, 2u);
    v24 = v23;
    a1 = v22;
    v2 = v21;
    v7 = v20;
    v3 = v51;
    MEMORY[0x20F30FD70](v24, -1, -1);
  }

  sub_20CCDA7B4();
  sub_20CCDA7E4();
  (*(v8 + 8))(v11, v7);
  sub_20CCDA7C4();
  (*(v3 + 8))(v6, v2);
  v25 = sub_20CCDA7A4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v15, 1, v25) == 1)
  {
    sub_20CC89568(v15, &qword_27C80F690, &qword_20CCDCC90);
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = sub_20CCDA794();
    v29 = v31;
    (*(v26 + 8))(v15, v25);
    v28 = 28261;
    if (v30 == 28261 && v29 == 0xE200000000000000)
    {
      v27 = 1;
      v29 = 0xE200000000000000;
    }

    else
    {
      v27 = sub_20CCDBA64();
      v28 = v30;
    }
  }

  v32 = sub_20CCDB564();
  v33 = sub_20CCDB8B4();

  if (!os_log_type_enabled(v32, v33))
  {

    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v46 = MEMORY[0x277D0A5A8];
    goto LABEL_16;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v55 = v35;
  *v34 = 136315650;
  *(v34 + 4) = sub_20CC88C4C(0xD000000000000017, 0x800000020CCDCC40, &v55);
  *(v34 + 12) = 2080;
  v53 = v28;
  v54 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A0, &qword_20CCDCCA0);
  v36 = sub_20CCDB8F4();
  v38 = v37;

  v39 = sub_20CC88C4C(v36, v38, &v55);

  *(v34 + 14) = v39;
  *(v34 + 22) = 1024;
  *(v34 + 24) = v27 & 1;
  _os_log_impl(&dword_20CC86000, v32, v33, "%s Current Language %s, localeIsSupported %{BOOL}d", v34, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x20F30FD70](v35, -1, -1);
  MEMORY[0x20F30FD70](v34, -1, -1);

  if (v27)
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
  v40 = sub_20CCDB2B4();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20CCDC580;
  (*(v41 + 104))(v44 + v43, *MEMORY[0x277D0A5C8], v40);
  v45 = sub_20CCB2028(v44);
  swift_setDeallocating();
  (*(v41 + 8))(v44 + v43, v40);
  swift_deallocClassInstance();
  *a1 = v45;
  v46 = MEMORY[0x277D0A5A0];
LABEL_16:
  v47 = *v46;
  v48 = sub_20CCDB294();
  return (*(*(v48 - 8) + 104))(a1, v47, v48);
}

uint64_t sub_20CCA23F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CCDAEC4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D0, &qword_20CCDCCD8);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_20CCDADC4();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D8, &qword_20CCDCCE0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = sub_20CCDB2C4();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v16 = sub_20CCDB294();
  v3[22] = v16;
  v17 = *(v16 - 8);
  v3[23] = v17;
  v18 = *(v17 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA26D0, 0, 0);
}

uint64_t sub_20CCA26D0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[32] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing device availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[4];
  v18 = v0[3];
  v8 = v0[2];

  (*(v18 + 16))(v8);
  (*(v18 + 24))(v8);
  v9 = *(v18 + 32);
  v17 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_20CCA28F8;
  v12 = v0[29];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return v17(v12, v15, v13);
}

uint64_t sub_20CCA28F8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCA29F4, 0, 0);
}

uint64_t sub_20CCA29F4()
{
  v132 = v0;
  v101 = v0[31];
  v105 = v0[30];
  v109 = v0[29];
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v119 = v0[20];
  v124 = v0[32];
  v127 = v0[18];
  v114 = v0[17];
  v9 = v0[4];
  (*(v0[3] + 40))(v0[2]);
  v10 = *(v6 + 16);
  v10(v2, v101, v8);
  v10(v3, v105, v8);
  v10(v4, v109, v8);
  v10(v5, v1, v8);
  sub_20CCDB2A4();
  v11 = v119;
  v120 = *(v127 + 16);
  v120(v11, v7, v114);
  v12 = sub_20CCDB564();
  v13 = sub_20CCDB8B4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[20];
  if (v14)
  {
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v131 = v20;
    *v19 = 136315138;
    v120(v16, v15, v18);
    v21 = sub_20CCDB684();
    v23 = v22;
    v125 = *(v17 + 8);
    v125(v15, v18);
    v24 = sub_20CC88C4C(v21, v23, &v131);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20CC86000, v12, v13, "Current availability: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F30FD70](v20, -1, -1);
    MEMORY[0x20F30FD70](v19, -1, -1);
  }

  else
  {
    v25 = v0[17];
    v26 = v0[18];

    v125 = *(v26 + 8);
    v125(v15, v25);
  }

  v27 = v0[17];
  v28 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[13];
  v32 = v0[10];
  v33 = v0[11];
  v34 = v0[9];
  v110 = v0[21];
  v115 = v0[8];
  v35 = v0[4];
  v106 = (v0[3] + 8);
  v99 = *v106;
  (*v106)(v0[2]);
  sub_20CCDB344();
  v102 = *(v33 + 8);
  v102(v31, v32);
  v120(v30, v110, v27);
  (*(v28 + 56))(v30, 0, 1, v27);
  v36 = *(v115 + 48);
  sub_20CCA70D8(v30, v34);
  sub_20CCA70D8(v29, v34 + v36);
  v37 = *(v28 + 48);
  v38 = v37(v34, 1, v27);
  v39 = v0[17];
  if (v38 == 1)
  {
    sub_20CC89568(v0[15], &qword_27C80F6D8, &qword_20CCDCCE0);
    if (v37(v34 + v36, 1, v39) == 1)
    {
      sub_20CC89568(v0[9], &qword_27C80F6D8, &qword_20CCDCCE0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_20CCA70D8(v0[9], v0[14]);
  if (v37(v34 + v36, 1, v39) == 1)
  {
    v40 = v0[17];
    v41 = v0[18];
    v42 = v0[14];
    sub_20CC89568(v0[15], &qword_27C80F6D8, &qword_20CCDCCE0);
    v125(v42, v40);
LABEL_9:
    sub_20CC89568(v0[9], &qword_27C80F6D0, &qword_20CCDCCD8);
    goto LABEL_10;
  }

  v54 = v0[19];
  v55 = v0[17];
  v57 = v0[14];
  v56 = v0[15];
  v58 = v0[9];
  (*(v0[18] + 32))(v54, v34 + v36, v55);
  sub_20CCA7148(&qword_28110ED30, MEMORY[0x277D0A5F8]);
  v59 = sub_20CCDB654();
  v125(v54, v55);
  sub_20CC89568(v56, &qword_27C80F6D8, &qword_20CCDCCE0);
  v125(v57, v55);
  sub_20CC89568(v58, &qword_27C80F6D8, &qword_20CCDCCE0);
  if (v59)
  {
LABEL_14:
    v60 = v0[32];
    v61 = sub_20CCDB564();
    v62 = sub_20CCDB8B4();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[31];
    v128 = v0[30];
    v116 = v0[28];
    v121 = v0[29];
    v65 = v0[22];
    v66 = v0[23];
    v67 = v0[21];
    v69 = v0[17];
    v68 = v0[18];
    v70 = v0[16];
    if (v63)
    {
      v111 = v0[31];
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_20CC86000, v61, v62, "Availability unchanged, not writing", v71, 2u);
      MEMORY[0x20F30FD70](v71, -1, -1);

      sub_20CC89568(v70, &qword_27C80F6D8, &qword_20CCDCCE0);
      v125(v67, v69);
      v72 = *(v66 + 8);
      v72(v116, v65);
      v72(v121, v65);
      v72(v128, v65);
      v72(v111, v65);
    }

    else
    {

      sub_20CC89568(v70, &qword_27C80F6D8, &qword_20CCDCCE0);
      v125(v67, v69);
      v86 = *(v66 + 8);
      v86(v116, v65);
      v86(v121, v65);
      v86(v128, v65);
      v86(v64, v65);
    }

    goto LABEL_21;
  }

LABEL_10:
  v43 = v0[32];
  v44 = sub_20CCDB564();
  v45 = sub_20CCDB8B4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20CC86000, v44, v45, "Writing availibility", v46, 2u);
    MEMORY[0x20F30FD70](v46, -1, -1);
  }

  v47 = v0[21];
  v48 = v0[12];
  v49 = v0[10];
  v51 = v0[3];
  v50 = v0[4];
  v52 = v0[2];

  v99(v52, v51);
  sub_20CCDB354();
  v102(v48, v49);
  v53 = v0[32];
  v73 = sub_20CCDB564();
  v74 = sub_20CCDB8B4();
  if (os_log_type_enabled(v73, v74))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_20CC86000, v73, v74, "Posting darwin notification", v76, 2u);
    MEMORY[0x20F30FD70](v76, -1, -1);
  }

  v129 = v0[31];
  v117 = v0[29];
  v122 = v0[30];
  v77 = v0[22];
  v78 = v0[23];
  v107 = v0[21];
  v112 = v0[28];
  v79 = v0[18];
  v103 = v0[17];
  v80 = v0[16];
  v82 = v0[6];
  v81 = v0[7];
  v83 = v0[5];

  (*(v82 + 104))(v81, *MEMORY[0x277D0A170], v83);
  sub_20CCDAEB4();
  (*(v82 + 8))(v81, v83);
  v84 = sub_20CCDB694();

  notify_post((v84 + 32));
  sub_20CC89568(v80, &qword_27C80F6D8, &qword_20CCDCCE0);
  v125(v107, v103);
  v85 = *(v78 + 8);
  v85(v112, v77);
  v85(v117, v77);
  v85(v122, v77);
  v85(v129, v77);

LABEL_21:
  v88 = v0[30];
  v87 = v0[31];
  v90 = v0[28];
  v89 = v0[29];
  v92 = v0[26];
  v91 = v0[27];
  v93 = v0[24];
  v94 = v0[25];
  v96 = v0[20];
  v95 = v0[21];
  v100 = v0[19];
  v104 = v0[16];
  v108 = v0[15];
  v113 = v0[14];
  v118 = v0[13];
  v123 = v0[12];
  v126 = v0[9];
  v130 = v0[7];

  v97 = v0[1];

  return v97();
}

uint64_t sub_20CCA3638@<X0>(uint64_t *a1@<X8>)
{
  v113 = a1;
  v110 = sub_20CCDAD04();
  v102 = *(v110 - 8);
  v1 = *(v102 + 64);
  v2 = MEMORY[0x28223BE20](v110);
  v101 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v109 = &v98 - v4;
  v104 = sub_20CCDAD44();
  v100 = *(v104 - 8);
  v5 = *(v100 + 64);
  v6 = MEMORY[0x28223BE20](v104);
  v99 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v98 - v8;
  v9 = sub_20CCDAD94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20CCDAD74();
  v108 = *(v14 - 8);
  v15 = *(v108 + 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20CCDADB4();
  v106 = *(v18 - 8);
  v107 = v18;
  v19 = *(v106 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20CCDAD54();
  v111 = *(v22 - 8);
  v112 = v22;
  v23 = *(v111 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v29 = sub_20CCDB584();
  v105 = __swift_project_value_buffer(v29, qword_28110EE00);
  v30 = sub_20CCDB564();
  v31 = sub_20CCDB8B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v98 = v13;
    v33 = v14;
    v34 = v10;
    v35 = v9;
    v36 = v26;
    v37 = v28;
    v38 = v32;
    *v32 = 0;
    _os_log_impl(&dword_20CC86000, v30, v31, "Querying gms availability", v32, 2u);
    v39 = v38;
    v28 = v37;
    v26 = v36;
    v9 = v35;
    v10 = v34;
    v14 = v33;
    v13 = v98;
    MEMORY[0x20F30FD70](v39, -1, -1);
  }

  sub_20CCDB2F4();
  (*(v10 + 104))(v13, *MEMORY[0x277D0E2D8], v9);
  sub_20CCDAD64();
  sub_20CCDADA4();
  (*(v108 + 1))(v17, v14);
  sub_20CCDAD84();
  (*(v106 + 8))(v21, v107);
  v41 = v111;
  v40 = v112;
  (*(v111 + 16))(v26, v28, v112);
  v42 = (*(v41 + 88))(v26, v40);
  if (v42 == *MEMORY[0x277D0DFA8])
  {
    v108 = v28;
    (*(v41 + 96))(v26, v40);
    v43 = v102;
    v44 = v26;
    v45 = v109;
    v46 = v110;
    (*(v102 + 32))(v109, v44, v110);
    v47 = v101;
    (*(v43 + 16))(v101, v45, v46);
    v48 = sub_20CCDB564();
    v49 = sub_20CCDB8B4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v114[0] = v51;
      *v50 = 136315138;
      v52 = sub_20CCDACE4();
      v53 = v47;
      v55 = v54;
      v56 = *(v43 + 8);
      v56(v53, v110);
      v57 = sub_20CC88C4C(v52, v55, v114);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_20CC86000, v48, v49, "Generative models restricted: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v58 = v51;
      v46 = v110;
      MEMORY[0x20F30FD70](v58, -1, -1);
      MEMORY[0x20F30FD70](v50, -1, -1);
    }

    else
    {

      v56 = *(v43 + 8);
      v56(v47, v46);
    }

    v73 = v109;
    v74 = sub_20CCDACF4();
    v75 = sub_20CCA1890(v74);
LABEL_17:
    v80 = v75;

    v81 = sub_20CCA6F30(v80);

    v56(v73, v46);
    (*(v41 + 8))(v108, v40);
    v82 = v113;
    *v113 = v81;
    v83 = *MEMORY[0x277D0A5A0];
    v84 = sub_20CCDB294();
    return (*(*(v84 - 8) + 104))(v82, v83, v84);
  }

  if (v42 == *MEMORY[0x277D0DFB0])
  {
    v108 = v28;
    (*(v41 + 96))(v26, v40);
    v59 = v100;
    v60 = v26;
    v61 = v103;
    v46 = v104;
    (*(v100 + 32))(v103, v60, v104);
    v62 = v99;
    (*(v59 + 16))(v99, v61, v46);
    v63 = sub_20CCDB564();
    v64 = sub_20CCDB8B4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v114[0] = v66;
      *v65 = 136315138;
      v67 = sub_20CCDAD24();
      v68 = v62;
      v70 = v69;
      v56 = *(v59 + 8);
      v56(v68, v104);
      v71 = sub_20CC88C4C(v67, v70, v114);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_20CC86000, v63, v64, "Generative models unavailable: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v72 = v66;
      v46 = v104;
      MEMORY[0x20F30FD70](v72, -1, -1);
      MEMORY[0x20F30FD70](v65, -1, -1);
    }

    else
    {

      v56 = *(v59 + 8);
      v56(v62, v46);
    }

    v73 = v103;
    v79 = sub_20CCDAD34();
    v75 = sub_20CCA1488(v79);
    goto LABEL_17;
  }

  if (v42 == *MEMORY[0x277D0E278])
  {
    (*(v41 + 8))(v28, v40);
    v76 = *MEMORY[0x277D0A5A8];
    v77 = sub_20CCDB294();
    return (*(*(v77 - 8) + 104))(v113, v76, v77);
  }

  else
  {
    v85 = sub_20CCDB564();
    v86 = sub_20CCDB8B4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_20CC86000, v85, v86, "Generative models unavailable, unknown reason", v87, 2u);
      MEMORY[0x20F30FD70](v87, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v88 = sub_20CCDB2B4();
    v89 = *(v88 - 8);
    v90 = *(v89 + 72);
    v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_20CCDC580;
    (*(v89 + 104))(v92 + v91, *MEMORY[0x277D0A5D0], v88);
    v93 = sub_20CCB2028(v92);
    swift_setDeallocating();
    (*(v89 + 8))(v92 + v91, v88);
    swift_deallocClassInstance();
    v94 = *(v41 + 8);
    v94(v28, v40);
    v95 = v113;
    *v113 = v93;
    v96 = *MEMORY[0x277D0A5A0];
    v97 = sub_20CCDB294();
    (*(*(v97 - 8) + 104))(v95, v96, v97);
    return (v94)(v26, v40);
  }
}

uint64_t sub_20CCA41C0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CC86000, v3, v4, "Querying siri availability", v5, 2u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  if (v7)
  {
    v8 = MEMORY[0x277D0A5A8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v9 = sub_20CCDB2B4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20CCDC580;
    (*(v10 + 104))(v13 + v12, *MEMORY[0x277D0A5B8], v9);
    v14 = sub_20CCB2028(v13);
    swift_setDeallocating();
    (*(v10 + 8))(v13 + v12, v9);
    swift_deallocClassInstance();
    *a1 = v14;
    v8 = MEMORY[0x277D0A5A0];
  }

  v15 = *v8;
  v16 = sub_20CCDB294();
  v17 = *(*(v16 - 8) + 104);

  return v17(a1, v15, v16);
}

uint64_t sub_20CCA443C(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_20CCDAF54();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA4538, 0, 0);
}

uint64_t sub_20CCA4538()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[8] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Querying voice asset availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_20CCA46FC;
  v10 = v0[3];
  v9 = v0[4];

  return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v6, v10);
}

uint64_t sub_20CCA46FC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCA4814, 0, 0);
}

uint64_t sub_20CCA4814()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 64);
    sub_20CC89568(*(v0 + 32), &qword_27C80F468, &unk_20CCDCD30);
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CC86000, v5, v6, "No voice asset selected", v7, 2u);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v8 = *(v0 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v9 = sub_20CCDB2B4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20CCDC580;
    (*(v10 + 104))(v13 + v12, *MEMORY[0x277D0A5B8], v9);
    v14 = sub_20CCB2028(v13);
    swift_setDeallocating();
    (*(v10 + 8))(v13 + v12, v9);
    swift_deallocClassInstance();
    *v8 = v14;
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v15 = sub_20CCA7DA4();
    v16 = [v15 locallyAvailable];
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);
    v8 = *(v0 + 16);
    if (v16)
    {
      (*(v18 + 8))(*(v0 + 56), *(v0 + 40));

      v20 = MEMORY[0x277D0A5A8];
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v21 = sub_20CCDB2B4();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v33 = v8;
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20CCDC580;
    (*(v22 + 104))(v25 + v24, *MEMORY[0x277D0A5D8], v21);
    v26 = sub_20CCB2028(v25);
    swift_setDeallocating();
    (*(v22 + 8))(v25 + v24, v21);
    swift_deallocClassInstance();

    (*(v18 + 8))(v17, v19);
    v8 = v33;
    *v33 = v26;
  }

  v20 = MEMORY[0x277D0A5A0];
LABEL_9:
  v27 = *v20;
  v28 = sub_20CCDB294();
  (*(*(v28 - 8) + 104))(v8, v27, v28);
  v29 = *(v0 + 56);
  v30 = *(v0 + 32);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_20CCA4E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CCDAD14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D0E100])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D0E110])
  {
LABEL_4:
    v10 = MEMORY[0x277D0A5B0];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D0E1B8] || v9 == *MEMORY[0x277D0E1D0] || v9 == *MEMORY[0x277D0E088] || v9 == *MEMORY[0x277D0E130] || v9 == *MEMORY[0x277D0E120] || v9 == *MEMORY[0x277D0E1A0] || v9 == *MEMORY[0x277D0E0B0] || v9 == *MEMORY[0x277D0E188] || v9 == *MEMORY[0x277D0E1C8] || v9 == *MEMORY[0x277D0E138])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D0E0D8])
  {
LABEL_19:
    v10 = MEMORY[0x277D0A5C0];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D0E170])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D0E0B8])
  {
    goto LABEL_2;
  }

  v17 = v9;
  if (v9 == *MEMORY[0x277D0E160] || v9 == *MEMORY[0x277D0E178] || v9 == *MEMORY[0x277D0E0C0])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D0E180])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D0E198])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D0E098] || v9 == *MEMORY[0x277D0E0F8])
  {
    goto LABEL_19;
  }

  if (v9 == *MEMORY[0x277D0E0A8])
  {
    v10 = MEMORY[0x277D0A5B8];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D0E0E8] || v9 == *MEMORY[0x277D0E168])
  {
    v10 = MEMORY[0x277D0A5D8];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D0E0D0])
  {
    goto LABEL_19;
  }

  if (v9 == *MEMORY[0x277D0E1F8] || v9 == *MEMORY[0x277D0E1E0] || v9 == *MEMORY[0x277D0E1F0])
  {
LABEL_2:
    v10 = MEMORY[0x277D0A5C8];
LABEL_5:
    v11 = *v10;
    v12 = sub_20CCDB2B4();
    v13 = *(*(v12 - 8) + 104);
    v14 = a2;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  v18 = *MEMORY[0x277D0E148];
  v12 = sub_20CCDB2B4();
  v13 = *(*(v12 - 8) + 104);
  if (v17 != v18)
  {
    v13(a2, *MEMORY[0x277D0A5D0], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D0A5C0];
  v14 = a2;
  return v13(v14, v15, v12);
}

uint64_t sub_20CCA5284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CCDADC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CCA531C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CC8DF7C;

  return sub_20CCA443C(a1);
}

uint64_t sub_20CCA53B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_20CCA5404(a1, a2);
  sub_20CCA5534(&unk_2823B3ED8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20CCA5404(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CCA5620(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CCDB994();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CCDB6D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CCA5620(v10, 0);
        result = sub_20CCDB964();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CCA5534(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_20CCA5694(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20CCA5620(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A8, &qword_20CCDCCA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CCA5694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A8, &qword_20CCDCCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_20CCA5788(size_t a1, int64_t a2, char a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F6E0, &qword_20CCDCCE8, MEMORY[0x277D0A010]);
  *v3 = result;
  return result;
}

size_t sub_20CCA57CC(size_t a1, int64_t a2, char a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F698, &qword_20CCDCC98, MEMORY[0x277D0A5E0]);
  *v3 = result;
  return result;
}

uint64_t sub_20CCA5838(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20CCDB2B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0]);
  v36 = a2;
  v13 = sub_20CCDB644();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20CCA7148(&qword_27C80F6B0, MEMORY[0x277D0A5E0]);
      v23 = sub_20CCDB654();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20CCA6224(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20CCA5B18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v9 = sub_20CCDBB64();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20CCDBA64() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20CCA64C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CCA5C68(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20CCDB2B4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  result = sub_20CCDB944();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0]);
      result = sub_20CCDB644();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20CCA5FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  result = sub_20CCDB944();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CCA6224(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20CCDB2B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20CCA5C68(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20CCA6648();
      goto LABEL_12;
    }

    sub_20CCA69DC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0]);
  v15 = sub_20CCDB644();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20CCA7148(&qword_27C80F6B0, MEMORY[0x277D0A5E0]);
      v23 = sub_20CCDB654();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20CCDBA94();
  __break(1u);
  return result;
}

uint64_t sub_20CCA64C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20CCA5FC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CCA6880();
      goto LABEL_16;
    }

    sub_20CCA6CF8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20CCDBB44();
  sub_20CCDB6A4();
  result = sub_20CCDBB64();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20CCDBA64();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20CCDBA94();
  __break(1u);
  return result;
}

void *sub_20CCA6648()
{
  v1 = v0;
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  v7 = *v0;
  v8 = sub_20CCDB934();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_20CCA6880()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  v2 = *v0;
  v3 = sub_20CCDB934();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CCA69DC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20CCDB2B4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  v10 = sub_20CCDB944();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0]);
      result = sub_20CCDB644();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_20CCA6CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  result = sub_20CCDB944();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20CCDBB44();

      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20CCA6F30(uint64_t a1)
{
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0]);
  result = MEMORY[0x20F30F430](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_20CCA5838(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_20CCA70CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_20CCA70D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D8, &qword_20CCDCCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA7148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CCA7190()
{
  v0 = sub_20CCDADC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20CC86000, v6, v7, "Clearing watch availability", v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  (*(v1 + 104))(v4, *MEMORY[0x277D09FE8], v0);
  sub_20CCDB364();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_20CCA734C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_20CCDA8B4();
}

uint64_t sub_20CCA7494(unint64_t a1, uint64_t a2)
{
  v47[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v47[0] = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v47 - v7;
  v9 = sub_20CCDAF54();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = v47 - v15;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v13; v16; i = v41)
  {
    v17 = 0;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v57 = a1 & 0xC000000000000001;
    v54 = (v50 + 48);
    v55 = (v50 + 56);
    v18 = MEMORY[0x277D84F90];
    v53 = (v50 + 32);
    *&v14 = 138412290;
    v48 = v14;
    v51 = v16;
    v52 = a1;
    while (1)
    {
      if (v57)
      {
        v13 = MEMORY[0x20F30F560](v17, a1);
      }

      else
      {
        if (v17 >= *(v56 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(a1 + 8 * v17 + 32);
      }

      v19 = v13;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = v18;
      v22 = sub_20CCDA994();
      sub_20CCDA934();
      v24 = v23;

      if (v24)
      {
        v25 = sub_20CCDA994();
        sub_20CCDA954();

        v16 = v51;
        a1 = v52;
        sub_20CCDAF24();
        v26 = 0;
      }

      else
      {
        if (qword_28110E630 != -1)
        {
          swift_once();
        }

        v27 = sub_20CCDB584();
        __swift_project_value_buffer(v27, qword_28110EE00);
        v28 = v19;
        v29 = sub_20CCDB564();
        v30 = sub_20CCDB894();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = v48;
          *(v31 + 4) = v28;
          *v32 = v28;
          v33 = v28;
          _os_log_impl(&dword_20CC86000, v29, v30, "Voice subscription name missing: %@", v31, 0xCu);
          sub_20CC89568(v32, &qword_27C80F460, &unk_20CCDC700);
          v34 = v32;
          v16 = v51;
          MEMORY[0x20F30FD70](v34, -1, -1);
          v35 = v31;
          a1 = v52;
          MEMORY[0x20F30FD70](v35, -1, -1);
        }

        v26 = 1;
      }

      v36 = i;
      (*v55)(v8, v26, 1, i);

      v18 = v21;
      if ((*v54)(v8, 1, v36) == 1)
      {
        v13 = sub_20CC89568(v8, &qword_27C80F468, &unk_20CCDCD30);
      }

      else
      {
        v37 = *v53;
        v38 = v49;
        (*v53)(v49, v8, v36);
        v37(v58, v38, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20CCA7BC8(0, v21[2] + 1, 1, v21, &qword_27C80F6F8, &qword_20CCDCD40, MEMORY[0x277D0A278]);
        }

        v40 = v18[2];
        v39 = v18[3];
        if (v40 >= v39 >> 1)
        {
          v18 = sub_20CCA7BC8(v39 > 1, v40 + 1, 1, v18, &qword_27C80F6F8, &qword_20CCDCD40, MEMORY[0x277D0A278]);
        }

        v18[2] = v40 + 1;
        v13 = (v37)(v18 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40, v58, i);
      }

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v41 = v13;
    v16 = sub_20CCDB9F4();
    v13 = v41;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_28:
  if (v18[2])
  {
    v42 = v50;
    v43 = v47[0];
    v44 = i;
    (*(v50 + 16))(v47[0], v18 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), i);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v43 = v47[0];
    v42 = v50;
    v44 = i;
  }

  (*(v42 + 56))(v43, v45, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  return sub_20CCDB754();
}

void *sub_20CCA7A6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F708, &qword_20CCDCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F710, &qword_20CCDCD60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20CCA7BC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

_WORD *sub_20CCA7DA4()
{
  v0 = sub_20CCDAA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20CCDC570;
  sub_20CC92858();
  *(v1 + 32) = sub_20CCDB864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F470, &unk_20CCDC710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CCDCD00;
  *(inited + 32) = 0;
  v3 = sub_20CCDAF34();
  v4 = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  *(inited + 64) = v4;
  *(inited + 72) = 1;
  v6 = sub_20CCDAF44();
  *(inited + 104) = v4;
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  *(inited + 144) = MEMORY[0x277D613C0];
  *(inited + 112) = xmmword_20CCDC590;
  sub_20CC8974C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F478, &qword_20CCDCD20);
  swift_arrayDestroy();
  v8 = sub_20CCDA9F4();

  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    if (sub_20CCDB9F4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F30F560](0, v8);
LABEL_6:
      v0 = v10;
      if (v9)
      {
        if (sub_20CCDB9F4() != 1)
        {
          goto LABEL_8;
        }
      }

      else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
LABEL_8:
        if (qword_28110E630 != -1)
        {
          swift_once();
        }

        v11 = sub_20CCDB584();
        __swift_project_value_buffer(v11, qword_28110EE00);

        v12 = sub_20CCDB564();
        v13 = sub_20CCDB894();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          if (v9)
          {
            v15 = sub_20CCDB9F4();
          }

          else
          {
            v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v14 + 4) = v15;

          _os_log_impl(&dword_20CC86000, v12, v13, "Found multiple matches: %ld", v14, 0xCu);
          MEMORY[0x20F30FD70](v14, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_20CCA81C8();
        swift_allocError();
        *v16 = 0;
        swift_willThrow();

        return v0;
      }

      return v0;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v8 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_28110E630 != -1)
  {
LABEL_27:
    swift_once();
  }

  v17 = sub_20CCDB584();
  __swift_project_value_buffer(v17, qword_28110EE00);
  v18 = sub_20CCDB564();
  v19 = sub_20CCDB894();
  if (os_log_type_enabled(v18, v19))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_20CC86000, v18, v19, "No matching asset found", v0, 2u);
    MEMORY[0x20F30FD70](v0, -1, -1);
  }

  sub_20CCA81C8();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v0;
}

unint64_t sub_20CCA81C8()
{
  result = qword_27C80F6E8;
  if (!qword_27C80F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F6E8);
  }

  return result;
}

uint64_t sub_20CCA821C(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20CCA7494(a1, v4);
}

uint64_t getEnumTagSinglePayload for SiriVoiceAssetStore.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriVoiceAssetStore.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

unint64_t sub_20CCA83F8()
{
  result = qword_27C80F718[0];
  if (!qword_27C80F718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C80F718);
  }

  return result;
}

uint64_t sub_20CCA84A4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_20CCA84D4()
{
  sub_20CCA84A4();

  return MEMORY[0x282200960](v0);
}

void sub_20CCA85CC()
{
  type metadata accessor for AudioStreamBasicDescription(319);
  if (v0 <= 0x3F)
  {
    sub_20CCDAF54();
    if (v1 <= 0x3F)
    {
      sub_20CCDB114();
      if (v2 <= 0x3F)
      {
        sub_20CCAA210(319, qword_28110E9A0, MEMORY[0x277D613C8], type metadata accessor for ChannelBroadcaster);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20CCA86B8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20CCDA784();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_20CCDA6A4();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA8824, 0, 0);
}

uint64_t sub_20CCA8824()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + *(type metadata accessor for AudioSynthesisHandle(0) + 32));
  *(v0 + 176) = v2;

  return MEMORY[0x2822009F8](sub_20CCA8898, v2, 0);
}

uint64_t sub_20CCA8898()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v3 = sub_20CCDB464();
  v0[23] = v3;
  v4 = sub_20CCDB794();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_20CCA0384();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDCBF8, v6);

  return MEMORY[0x2822009F8](sub_20CCA89E4, 0, 0);
}

uint64_t sub_20CCA89E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_20CCDA694();
  sub_20CCDA774();
  sub_20CCDA754();
  (*(v5 + 8))(v3, v6);

  MEMORY[0x20F30F2A0](1717658414, 0xE400000000000000);

  sub_20CCDA684();

  v10 = *(v2 + 8);
  *(v0 + 192) = v10;
  *(v0 + 200) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  (*(v2 + 16))(v24, v23, v4);
  v11 = *(v7 + 32);
  v12 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v12;
  *(v0 + 48) = v11;
  v13 = sub_20CCDAAD4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_20CCDAAC4();
  v16 = *(v0 + 184);
  v17 = sub_20CCDB414();
  *(v0 + 216) = v17;
  *(v0 + 224) = v18;
  *(v0 + 56) = v17;
  *(v0 + 64) = v18;
  v19 = *(MEMORY[0x277CEF710] + 4);
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v20 = v0;
  v20[1] = sub_20CCA8CC4;

  return MEMORY[0x282141C38](v0 + 72, v21);
}

uint64_t sub_20CCA8CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_20CCA911C;
  }

  else
  {
    *(v2 + 248) = *(v2 + 72);
    v4 = sub_20CCA8DE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCA8DE0()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[31];
    v3 = sub_20CCDAA24();
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        sub_20CC9720C(v3, v4);
        goto LABEL_16;
      }

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      sub_20CC9720C(v3, v4);
      if (v15 == v14)
      {
        goto LABEL_16;
      }
    }

    else if (v5)
    {
      v16 = v3;
      sub_20CC9720C(v3, v4);
      if (v16 == v16 >> 32)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = v4;
      sub_20CC9720C(v3, v4);
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v17 = v0[30];
    v18 = v0[26];
    sub_20CCDAAB4();
    if (v17)
    {
      v20 = v0[27];
      v19 = v0[28];
      v22 = v0[25];
      v21 = v0[26];
      v23 = v0[23];
      v24 = v0[24];
      v25 = v0[20];
      v26 = v0[16];

      v24(v25, v26);
      goto LABEL_14;
    }

LABEL_16:

    v33 = *(MEMORY[0x277CEF710] + 4);
    v34 = swift_task_alloc();
    v0[29] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
    *v34 = v0;
    v34[1] = sub_20CCA8CC4;

    return MEMORY[0x282141C38](v0 + 9, v35);
  }

  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];

  sub_20CCDAAA4();
  v11 = v0[26];
  if (!v7)
  {
    v36 = v0[23];
    v37 = v0[20];
    v38 = v0[21];
    v39 = v0[19];
    v41 = v0[16];
    v40 = v0[17];
    v47 = v0[18];
    v48 = v0[15];
    v43 = v0[11];
    v42 = v0[12];

    v49 = *v42;
    v50 = v42[1];
    v51 = *(v42 + 4);
    (*(v40 + 32))(v43, v37, v41);
    (*(v40 + 56))(v43, 0, 1, v41);
    v44 = type metadata accessor for SynthesizedAudio(0);
    *(v43 + *(v44 + 20)) = xmmword_20CCDCF20;
    v45 = v43 + *(v44 + 24);
    *v45 = v49;
    *(v45 + 16) = v50;
    *(v45 + 32) = v51;

    v32 = v0[1];
    goto LABEL_20;
  }

  v12 = v0[25];
  v13 = v0[23];
  (v0[24])(v0[20], v0[16]);

LABEL_14:
  v28 = v0[20];
  v27 = v0[21];
  v30 = v0[18];
  v29 = v0[19];
  v31 = v0[15];

  v32 = v0[1];
LABEL_20:

  return v32();
}

uint64_t sub_20CCA911C()
{
  *(v0 + 80) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CCA91B0, 0, 0);
}

uint64_t sub_20CCA91B0()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[16];

  v6(v7, v8);
  v9 = v0[30];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CCA9290()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_20CCDA6A4();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA9394, 0, 0);
}

uint64_t sub_20CCA9394()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_20CCA9614(*(v0 + 56), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 56);
    sub_20CCA9684(*(v0 + 64));
    v5 = type metadata accessor for SynthesizedAudio(0);
    v6 = (v4 + *(v5 + 20));
    v7 = v6[1];
    if (v7 >> 60 == 15)
    {
      sub_20CCA9744();
      swift_allocError();
      swift_willThrow();
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = *(v0 + 64);

      v16 = *(v0 + 8);

      return v16();
    }

    v18 = v5;
    v19 = *(v0 + 56);
    v20 = *v6;
    v21 = objc_allocWithZone(sub_20CCDAA94());
    sub_20CC96DA4(v20, v7);
    v12 = [v21 init];
    sub_20CC96DA4(v20, v7);
    sub_20CCDAA34();
    v22 = (v19 + *(v18 + 24));
    v23 = *v22;
    v24 = v22[1];
    *(v0 + 48) = *(v22 + 4);
    *(v0 + 16) = v23;
    *(v0 + 32) = v24;
    sub_20CCDAA74();
    sub_20CCA9798(v20, v7);
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    (*(v11 + 32))(v9, *(v0 + 64), v10);
    sub_20CCDAA94();
    (*(v11 + 16))(v8, v9, v10);
    v12 = sub_20CCDAA54();
    (*(v11 + 8))(v9, v10);
  }

  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v27 = *(v0 + 64);

  v28 = *(v0 + 8);

  return v28(v12);
}

uint64_t sub_20CCA9614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA9684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CCA970C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CCA9744()
{
  result = qword_27C80F828;
  if (!qword_27C80F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F828);
  }

  return result;
}

uint64_t sub_20CCA9798(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CC9720C(a1, a2);
  }

  return a1;
}

uint64_t sub_20CCA97AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 208) = a3;
  *(v4 + 96) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_20CCDA6A4();
  *(v4 + 128) = v6;
  v7 = *(v6 - 8);
  *(v4 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v9 = type metadata accessor for SynthesizedAudio(0);
  *(v4 + 152) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v11 = sub_20CCDB114();
  *(v4 + 168) = v11;
  v12 = *(v11 - 8);
  *(v4 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA9938, 0, 0);
}

uint64_t sub_20CCA9938()
{
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = *(v0 + 112);
    v26 = *(v4 + 48);
    v27 = *(v4 + 40);
    v5 = type metadata accessor for AudioSynthesisHandle(0);
    v6 = *(v5 + 24);
    sub_20CCDAF34();
    sub_20CCDAF44();
    (*(v1 + 16))(v2, v4 + *(v5 + 28), v3);
    v7 = (*(v1 + 88))(v2, v3);
    v8 = 0;
    if (v7 != *MEMORY[0x277D0A4D8])
    {
      if (v7 == *MEMORY[0x277D0A4D0])
      {
        v8 = 2;
      }

      else if (v7 == *MEMORY[0x277D0A4C8])
      {
        v8 = 1;
      }

      else
      {
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        v8 = 0;
      }
    }

    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = objc_allocWithZone(MEMORY[0x277CEF428]);
    v16 = sub_20CCDB664();
    v17 = sub_20CCDB664();
    v18 = sub_20CCDB664();

    v19 = sub_20CCDB664();

    v20 = [v15 initWithVoiceFeedbackIdentifier:v16 text:v17 voiceName:v18 voiceLanguage:v19 intensity:v8];

    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v23 = *(v0 + 144);
    v24 = *(v0 + 120);

    v25 = *(v0 + 8);

    return v25(v20);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_20CCA9BF4;
    v10 = *(v0 + 160);
    v11 = *(v0 + 112);

    return sub_20CCA86B8(v10);
  }
}

uint64_t sub_20CCA9BF4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_20CCAA07C;
  }

  else
  {
    v3 = sub_20CCA9D08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCA9D08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_20CCA9614(*(v0 + 160), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    sub_20CCA9684(*(v0 + 120));
    v6 = (v5 + *(v4 + 20));
    v7 = v6[1];
    v8 = *(v0 + 160);
    if (v7 >> 60 == 15)
    {
      sub_20CCA9744();
      swift_allocError();
      swift_willThrow();
LABEL_6:
      sub_20CC9D2D0(v8);
      v12 = *(v0 + 184);
      v13 = *(v0 + 160);
      v14 = *(v0 + 144);
      v15 = *(v0 + 120);

      v16 = *(v0 + 8);

      return v16();
    }

    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *v6;
    v21 = v8 + *(*(v0 + 152) + 24);
    v42 = *v21;
    v44 = *(v21 + 16);
    v46 = *(v21 + 32);
    v22 = objc_allocWithZone(MEMORY[0x277CEF428]);
    sub_20CC96DA4(v20, v7);
    v23 = sub_20CCDB664();
    v24 = sub_20CCDA6D4();
    *(v0 + 16) = v42;
    *(v0 + 32) = v44;
    *(v0 + 48) = v46;
    v25 = [v22 initWithVoiceFeedbackIdentifier:v23 audioData:v24 asbd:v0 + 16];

    sub_20CCA9798(v20, v7);
  }

  else
  {
    v9 = *(v0 + 200);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    v10 = sub_20CCDA6B4();
    v8 = *(v0 + 160);
    if (v9)
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      goto LABEL_6;
    }

    v41 = *(v0 + 144);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = v8 + *(*(v0 + 152) + 24);
    v43 = *v30;
    v45 = *(v30 + 16);
    v47 = *(v30 + 32);
    v31 = v10;
    v32 = v11;
    v33 = objc_allocWithZone(MEMORY[0x277CEF428]);
    v34 = sub_20CCDB664();
    v35 = sub_20CCDA6D4();
    *(v0 + 56) = v43;
    *(v0 + 72) = v45;
    *(v0 + 88) = v47;
    v25 = [v33 initWithVoiceFeedbackIdentifier:v34 audioData:v35 asbd:v0 + 56];

    sub_20CC9720C(v31, v32);
    (*(v26 + 8))(v41, v27);
  }

  sub_20CC9D2D0(v8);
  v36 = *(v0 + 184);
  v37 = *(v0 + 160);
  v38 = *(v0 + 144);
  v39 = *(v0 + 120);

  v40 = *(v0 + 8);

  return v40(v25);
}

uint64_t sub_20CCAA07C()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

void sub_20CCAA144()
{
  sub_20CCAA210(319, &qword_27C80F840, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20CCAA274();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AudioStreamBasicDescription(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CCAA210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CCAA274()
{
  if (!qword_27C80F848)
  {
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80F848);
    }
  }
}

unint64_t sub_20CCAA2C8()
{
  result = qword_27C80F850;
  if (!qword_27C80F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F850);
  }

  return result;
}

uint64_t sub_20CCAA31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20CC89500(a3, v27 - v11, &qword_27C80F448, &unk_20CCDCF60);
  v13 = sub_20CCDB794();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20CCB3650(v12);
  }

  else
  {
    sub_20CCDB784();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CCDB734();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CCDB694() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CCB3650(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CCB3650(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CCAA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20CC89500(a3, v27 - v11, &qword_27C80F448, &unk_20CCDCF60);
  v13 = sub_20CCDB794();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20CCB3650(v12);
  }

  else
  {
    sub_20CCDB784();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CCDB734();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CCDB694() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8A0, &qword_20CCDD268);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_20CCB3650(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CCB3650(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8A0, &qword_20CCDD268);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t InferenceServiceListener.__allocating_init()()
{
  v0 = swift_allocObject();
  InferenceServiceListener.init()();
  return v0;
}

void *InferenceServiceListener.init()()
{
  v1 = v0;
  v2 = sub_20CCDA784();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F858, &qword_20CCDD050);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 104))(&v41 - v9, *MEMORY[0x277D09E80]);
  sub_20CCB2348(&unk_2823B3F00);
  sub_20CCB24B0(&unk_2823B3F20);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F860, &qword_20CCDD058));
  v0[2] = sub_20CCDAB44();
  v12 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v13 = type metadata accessor for InferenceDatabaseClient();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider] = 0;
  sub_20CCDA774();
  (*(v3 + 32))(&v14[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_identifier], v6, v2);
  *&v14[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_healthStore] = v12;
  v41.receiver = v14;
  v41.super_class = v13;
  v15 = objc_msgSendSuper2(&v41, sel_init);
  v16 = type metadata accessor for StreamingAudioPublisher();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = MEMORY[0x277D84F90];
  *(v19 + 112) = sub_20CCB180C(MEMORY[0x277D84F90]);
  v21 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
  v1[11] = type metadata accessor for PhoneAvailabilitySystem();
  v1[12] = &off_2823B4708;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 8);
  v26 = *MEMORY[0x277D09FE0];
  v27 = sub_20CCDADC4();
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
  v28 = v1[2];
  type metadata accessor for CancellationRegistry();
  v29 = swift_allocObject();
  v30 = v15;

  v31 = v28;
  swift_defaultActor_initialize();
  v32 = MEMORY[0x277D84FA0];
  *(v29 + 112) = MEMORY[0x277D84FA0];
  *(v29 + 120) = v32;
  v1[3] = v30;
  v1[4] = v19;
  v1[5] = v31;
  v1[6] = v29;
  v33 = v1[2];
  type metadata accessor for VoiceAssetSystem();
  v34 = swift_allocObject();
  v35 = v33;
  swift_defaultActor_initialize();
  v34[14] = v35;
  v36 = v35;
  v34[15] = sub_20CCB11D8(v20);

  v34[16] = v20;
  v1[7] = v34;
  v37 = v1[2];
  type metadata accessor for StreamingSystem();
  swift_allocObject();
  v38 = v37;
  v39 = sub_20CCD9C2C(v19, v38);

  v1[13] = v39;
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InferenceServiceListener.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v203 = v189 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F878, &qword_20CCDD068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v202 = v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v201 = v189 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v199 = v189 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v197 = v189 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v205 = v189 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v207 = v189 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v209 = v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v211 = v189 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v213 = v189 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v215 = v189 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v217 = v189 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v219 = v189 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v221 = v189 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v223 = v189 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v225 = v189 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v227 = v189 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v229 = v189 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v231 = v189 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v233 = v189 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v235 = v189 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = v189 - v48;
  v50 = sub_20CCDAEA4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v200 = v189 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v198 = v189 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v195 = v189 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v194 = v189 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v204 = v189 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v206 = v189 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v208 = v189 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v210 = v189 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v212 = v189 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v214 = v189 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v216 = v189 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v218 = v189 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v220 = v189 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v222 = v189 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v224 = v189 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v226 = v189 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v228 = v189 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v230 = v189 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v232 = v189 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v234 = v189 - v92;
  MEMORY[0x28223BE20](v91);
  v94 = v189 - v93;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v95 = sub_20CCDB584();
  v196 = __swift_project_value_buffer(v95, qword_28110EE00);
  v96 = sub_20CCDB564();
  v97 = sub_20CCDB8B4();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v241 = v94;
    v99 = v49;
    v100 = v5;
    v101 = v1;
    v102 = v50;
    v103 = v51;
    v104 = v6;
    v105 = v98;
    *v98 = 0;
    _os_log_impl(&dword_20CC86000, v96, v97, "Registering dispatch table", v98, 2u);
    v106 = v105;
    v6 = v104;
    v51 = v103;
    v50 = v102;
    v1 = v101;
    v5 = v100;
    v49 = v99;
    v94 = v241;
    MEMORY[0x20F30FD70](v106, -1, -1);
  }

  v242 = v5;
  v243 = v50;

  v236 = *(v1 + 16);
  sub_20CCDAB24();
  v107 = *MEMORY[0x277D0A070];
  v240 = *(v51 + 104);
  v241 = (v51 + 104);
  v240(v94, v107, v50);
  v108 = *(v6 + 104);
  v238 = *MEMORY[0x277D09E78];
  v239 = v6 + 104;
  v237 = v108;
  v108(v49);
  sub_20CCDAE94();
  v109 = v94;
  v110 = v1;
  sub_20CCDAE04();
  sub_20CCB3770(&qword_28110EDF8, MEMORY[0x277D0A050]);
  v111 = v51;
  sub_20CCB3770(&qword_28110EDA0, MEMORY[0x277D0A020]);

  v112 = v244;
  sub_20CCDAAE4();
  v244 = v112;
  if (v112)
  {

    (*(v6 + 8))(v49, v242);
    (*(v51 + 8))(v109, v243);
    return;
  }

  v114 = *(v6 + 8);
  v113 = (v6 + 8);
  v115 = v242;
  v192 = v114;
  v114(v49, v242);
  v116 = *(v51 + 8);
  v117 = v243;
  v193 = v111 + 8;
  v191 = v116;
  v116(v109, v243);
  sub_20CCDAB24();
  v118 = v234;
  v240(v234, *MEMORY[0x277D0A078], v117);
  v119 = v235;
  v237(v235, v238, v115);
  v120 = sub_20CCDB284();
  v121 = sub_20CCDB264();
  v122 = sub_20CCB3770(&qword_28110ED40, MEMORY[0x277D0A598]);
  v123 = v110;
  v124 = sub_20CCB3770(&qword_28110ED48, MEMORY[0x277D0A588]);

  v190 = v123;
  v125 = v244;
  sub_20CCDAAE4();
  if (v125)
  {

    v192(v119, v242);
    v191(v118, v243);
    v244 = v125;
    return;
  }

  v189[1] = v124;
  v189[2] = v122;
  v189[3] = v121;
  v189[4] = v120;

  v126 = v242;
  v192(v119, v242);
  v127 = v243;
  v191(v118, v243);
  sub_20CCDAB24();
  v128 = v232;
  v240(v232, *MEMORY[0x277D0A0B0], v127);
  v129 = v233;
  v237(v233, v238, v126);
  sub_20CCDA784();
  sub_20CCDADE4();
  sub_20CCB3770(&qword_28110EDB0, MEMORY[0x277CC95F0]);
  v235 = v113;
  sub_20CCB3770(&qword_28110EDA8, MEMORY[0x277D0A010]);

  sub_20CCDAAE4();
  v244 = 0;

  v130 = v242;
  v192(v129, v242);
  v131 = v243;
  v191(v128, v243);
  sub_20CCDAB24();
  v132 = v230;
  v240(v230, *MEMORY[0x277D0A0C0], v131);
  v133 = v231;
  v237(v231, v238, v130);
  sub_20CCDB084();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F880, &qword_20CCDD0B0);
  sub_20CCB3770(&qword_28110ED78, MEMORY[0x277D0A3F0]);
  sub_20CCB2838();
  v134 = v244;
  sub_20CCDAAE4();
  v244 = v134;
  if (v134)
  {

    v192(v133, v130);
    v135 = v132;
LABEL_11:
    v191(v135, v243);
    return;
  }

  v192(v133, v130);
  v136 = v243;
  v137 = v191;
  v191(v132, v243);
  sub_20CCDAB24();
  v138 = v228;
  v240(v228, *MEMORY[0x277D0A0E8], v136);
  v139 = v130;
  v140 = v229;
  v237(v229, v238, v139);
  sub_20CCDB334();
  sub_20CCB3770(&qword_28110ED28, MEMORY[0x277D0A638]);

  v141 = v244;
  sub_20CCDAB14();
  v244 = v141;
  if (v141)
  {

    v192(v140, v242);
    v137(v138, v243);
    return;
  }

  v142 = v242;
  v192(v140, v242);
  v143 = v243;
  v137(v138, v243);
  sub_20CCDAB24();
  v144 = v226;
  v240(v226, *MEMORY[0x277D0A090], v143);
  v145 = v227;
  v237(v227, v238, v142);
  sub_20CCDB1E4();
  sub_20CCDB0E4();
  sub_20CCB3770(&qword_28110ED58, MEMORY[0x277D0A510]);
  sub_20CCB3770(&qword_28110ED68, MEMORY[0x277D0A4A8]);

  v146 = v244;
  sub_20CCDAAE4();
  v244 = v146;
  if (v146)
  {

    v192(v145, v242);
    v135 = v144;
    goto LABEL_11;
  }

  v147 = v145;
  v148 = v242;
  v192(v147, v242);
  v149 = v144;
  v150 = v148;
  v151 = v243;
  v191(v149, v243);
  sub_20CCDAB24();
  v152 = v224;
  v240(v224, *MEMORY[0x277D0A0D8], v151);
  v153 = v225;
  v237(v225, v238, v150);

  v154 = v244;
  sub_20CCDAAE4();
  if (v154)
  {

    v192(v153, v150);
    v191(v152, v151);
    v244 = v154;
    return;
  }

  v192(v153, v150);
  v191(v152, v151);
  sub_20CCDAB24();
  v155 = v222;
  v240(v222, *MEMORY[0x277D0A080], v151);
  v156 = v223;
  v237(v223, v238, v150);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F888, &qword_20CCDD0F8);
  sub_20CCB2BA8();
  sub_20CCDAAF4();

  v192(v156, v150);
  v157 = v243;
  v191(v155, v243);
  sub_20CCDAB24();
  v158 = v220;
  v240(v220, *MEMORY[0x277D0A088], v157);
  v159 = v221;
  v237(v221, v238, v150);
  sub_20CCDAF54();
  sub_20CCB3770(&qword_28110ED90, MEMORY[0x277D0A278]);

  sub_20CCDAB14();

  v192(v159, v150);
  v160 = v243;
  v191(v158, v243);
  sub_20CCDAB24();
  v161 = v218;
  v240(v218, *MEMORY[0x277D0A098], v160);
  v162 = v219;
  v237(v219, v238, v150);

  sub_20CCDAB14();

  v192(v162, v150);
  v163 = v243;
  v191(v161, v243);
  sub_20CCDAB24();
  v240(v216, *MEMORY[0x277D0A0F0], v163);
  v164 = v150;
  v237(v217, v238, v150);
  sub_20CCDAB04();

  v192(v217, v150);
  v165 = v243;
  v191(v216, v243);
  sub_20CCDAB24();
  v240(v214, *MEMORY[0x277D0A110], v165);
  v237(v215, v238, v164);
  sub_20CCB2E58();

  sub_20CCDAAF4();

  v192(v215, v164);
  v166 = v243;
  v191(v214, v243);
  sub_20CCDAB24();
  v240(v212, *MEMORY[0x277D0A148], v166);
  v237(v213, v238, v164);

  sub_20CCDAB04();

  v192(v213, v164);
  v167 = v243;
  v191(v212, v243);
  sub_20CCDAB24();
  v240(v210, *MEMORY[0x277D0A0D0], v167);
  v237(v211, v238, v164);

  sub_20CCDAB04();

  v192(v211, v164);
  v168 = v243;
  v191(v210, v243);
  sub_20CCDAB24();
  v240(v208, *MEMORY[0x277D0A0B8], v168);
  v237(v209, v238, v164);

  sub_20CCDAB04();

  v192(v209, v164);
  v169 = v243;
  v191(v208, v243);
  sub_20CCDAB24();
  v240(v206, *MEMORY[0x277D0A140], v169);
  v237(v207, v238, v164);

  sub_20CCDAB04();
  v244 = 0;

  v192(v207, v164);
  v170 = v243;
  v191(v206, v243);
  sub_20CCDAB24();
  v240(v204, *MEMORY[0x277D0A0C8], v170);
  v237(v205, v238, v164);
  sub_20CCDB014();
  sub_20CCB3770(&qword_28110ED80, MEMORY[0x277D0A3D0]);

  v171 = v244;
  sub_20CCDAB14();
  v244 = v171;
  if (v171)
  {

    v192(v205, v164);
    v172 = &v236;
LABEL_28:
    v191(*(v172 - 32), v243);
    return;
  }

  v192(v205, v164);
  v173 = v243;
  v191(v204, v243);
  sub_20CCDAB24();
  v240(v194, *MEMORY[0x277D0A118], v173);
  v237(v197, v238, v164);
  sub_20CCDB184();
  sub_20CCB3770(&qword_28110ED60, MEMORY[0x277D0A500]);

  v174 = v244;
  sub_20CCDAB14();
  v244 = v174;
  if (v174)
  {

    v192(v197, v164);
    v172 = &v226;
    goto LABEL_28;
  }

  v192(v197, v164);
  v175 = v243;
  v191(v194, v243);
  sub_20CCDAB24();
  v240(v195, *MEMORY[0x277D0A100], v175);
  v237(v199, v238, v164);
  sub_20CCDAEF4();
  sub_20CCB3770(&qword_28110ED98, MEMORY[0x277D0A260]);

  v176 = v244;
  sub_20CCDAB14();
  v244 = v176;
  if (v176)
  {

    v192(v199, v164);
    v172 = &v227;
    goto LABEL_28;
  }

  v192(v199, v164);
  v177 = v243;
  v191(v195, v243);
  sub_20CCDAB24();
  v240(v198, *MEMORY[0x277D0A0E0], v177);
  v237(v201, v238, v164);
  sub_20CCDB0C4();
  sub_20CCB3770(&qword_28110ED70, MEMORY[0x277D0A448]);

  v178 = v244;
  sub_20CCDAB14();
  v244 = v178;
  if (v178)
  {

    v192(v201, v164);
    v172 = &v230;
    goto LABEL_28;
  }

  v192(v201, v164);
  v179 = v243;
  v191(v198, v243);
  sub_20CCDAB24();
  v240(v200, *MEMORY[0x277D0A128], v179);
  v237(v202, v238, v164);
  sub_20CCB3454();

  v180 = v244;
  sub_20CCDAB14();
  v244 = v180;
  if (v180)
  {

    v192(v202, v164);
    v172 = &v232;
    goto LABEL_28;
  }

  v181 = v190;

  v192(v202, v164);
  v191(v200, v243);
  v182 = *(v181 + 56);
  v183 = sub_20CCDB794();
  v184 = v203;
  (*(*(v183 - 8) + 56))(v203, 1, 1, v183);
  v185 = swift_allocObject();
  v185[2] = 0;
  v185[3] = 0;
  v185[4] = v182;
  v185[5] = &unk_20CCDD1D0;
  v185[6] = v181;

  sub_20CCAA31C(0, 0, v184, &unk_20CCDD1D8, v185);

  v186 = sub_20CCDB564();
  v187 = sub_20CCDB8B4();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_20CC86000, v186, v187, "Starting listener", v188, 2u);
    MEMORY[0x20F30FD70](v188, -1, -1);
  }

  sub_20CCDAB34();
}

uint64_t sub_20CCAD65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20CCAD680, 0, 0);
}

uint64_t sub_20CCAD680()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for inference", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[3];

  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = sub_20CCDAB64();
  v13 = v12;
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_20CCAD814;
  v15 = v0[4];
  v16 = v0[2];

  return sub_20CCB46EC(v16, v15, v11, v13 & 1, v7, v8, v9, v10, 25.0);
}

uint64_t sub_20CCAD814()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCAD944, 0, 0);
  }
}

uint64_t sub_20CCAD944()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDAE04();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCAD9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCADA08, 0, 0);
}

uint64_t sub_20CCADA08()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to cancel inference", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCADB74;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCB91B0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCADB74()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCADCA4, 0, 0);
  }
}

uint64_t sub_20CCADCA4()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDB264();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCADD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCADD68, 0, 0);
}

uint64_t sub_20CCADD68()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for query inference record", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = sub_20CCDADE4();
  v0[7] = v11;
  *v10 = v0;
  v10[1] = sub_20CCADF20;
  v12 = v0[2];

  return MEMORY[0x2822008A0](v12, 0, 0, 0xD00000000000001BLL, 0x800000020CCDE510, sub_20CCB38C4, v8, v11);
}

uint64_t sub_20CCADF20()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20CCAE0D0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20CCAE03C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCAE03C()
{
  (*(*(v0[7] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCAE0D0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20CCAE134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x2822009F8](sub_20CCAE158, 0, 0);
}

uint64_t sub_20CCAE158()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for query inference records", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F880, &qword_20CCDD0B0);
  *v10 = v0;
  v10[1] = sub_20CCAE318;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000020CCDE4F0, sub_20CCB38BC, v8, v11);
}

uint64_t sub_20CCAE318()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20CC8ECE4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20CCAE434;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCAE454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAE474, 0, 0);
}

uint64_t sub_20CCAE474()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for update feedback", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCAE624;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000019, 0x800000020CCDE4D0, sub_20CCB38B4, v8, v11);
}

uint64_t sub_20CCAE624()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_20CCAE758;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_20CCAE740;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCAE758()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_20CCAE7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCAE7E0, 0, 0);
}

uint64_t sub_20CCAE7E0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for announce utterance", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCAE94C;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCB97B0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCAE94C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCAEA7C, 0, 0);
  }
}

uint64_t sub_20CCAEA7C()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDB0E4();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCAEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCAEB40, 0, 0);
}

uint64_t sub_20CCAEB40()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to cancel announce utterance", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCAECAC;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCBCDF0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCAECAC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCB3950, 0, 0);
  }
}

uint64_t sub_20CCAEDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAEDFC, 0, 0);
}

uint64_t sub_20CCAEDFC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for list voice assets", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_20CCAEF4C;

  return sub_20CC892AC();
}

uint64_t sub_20CCAEF4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_20CCAF098, 0, 0);
  }
}

uint64_t sub_20CCAF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAF0DC, 0, 0);
}

uint64_t sub_20CCAF0DC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for select voice asset", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB3948;
  v8 = v0[2];

  return sub_20CC8C4D4(v8);
}

uint64_t sub_20CCAF234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAF254, 0, 0);
}

uint64_t sub_20CCAF254()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for preview voice asset", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB3948;
  v8 = v0[2];

  return sub_20CC8D52C(v8);
}

uint64_t sub_20CCAF3C8()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to observe voice asset changes", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCAF500()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to query inference availability.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *v5 = sub_20CCC9688();
  v5[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20CCAF644()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh device inference availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v7 = v5[11];
  v6 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_20CCAF7B0;

  return sub_20CCA23F4(v7, v6);
}

uint64_t sub_20CCAF7B0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CCAF8C8()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh voice asset cache", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_20CCAFA18;

  return sub_20CC8B0F0();
}

uint64_t sub_20CCAFA18()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CCAFB2C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh selected voice", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_20CCB394C;

  return sub_20CC8B574();
}

uint64_t sub_20CCAFC98()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to remove watch inference availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  sub_20CCA7190();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCAFDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAFDD4, 0, 0);
}

uint64_t sub_20CCAFDD4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to observe streaming audio.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 104);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB3948;
  v8 = v0[2];

  return sub_20CCD1180(v8);
}

uint64_t sub_20CCAFF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAFF4C, 0, 0);
}

uint64_t sub_20CCAFF4C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC notification that streaming audio is available.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 104);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB3948;
  v8 = v0[2];

  return sub_20CCD1BC4(v8);
}

uint64_t sub_20CCB00A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCB00C4, 0, 0);
}

uint64_t sub_20CCB00C4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request handle streaming data.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 104);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB021C;
  v8 = v0[2];

  return sub_20CCD2868(v8);
}

uint64_t sub_20CCB021C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CCB0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCB0330, 0, 0);
}

uint64_t sub_20CCB0330()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC notification that streaming finished.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 104);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB3948;
  v8 = v0[2];

  return sub_20CCD383C(v8);
}

uint64_t sub_20CCB0488(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3[2] = a3;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x2822009F8](sub_20CCB04B0, 0, 0);
}

uint64_t sub_20CCB04B0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received synchronize streaming audio start.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 104);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB0608;
  v9 = v0[3];
  v8 = v0[4];

  return sub_20CCD3BAC(v9, v8);
}

uint64_t sub_20CCB0608()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CCB071C()
{
  v1 = *(v0 + 16);
  v3 = v1[11];
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_20CCAFA18;

  return sub_20CCA23F4(v3, v2);
}

uint64_t InferenceServiceListener.deinit()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v6 = *(v0 + 104);

  return v0;
}

uint64_t InferenceServiceListener.__deallocating_deinit()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v6 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_20CCB08B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCB09AC;

  return v7(a1);
}

uint64_t sub_20CCB09AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_20CCB0AA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20CCDAF54();
  v5 = MEMORY[0x277D0A278];
  sub_20CCB3770(&qword_27C80F8E8, MEMORY[0x277D0A278]);
  v6 = sub_20CCDB644();
  return sub_20CCB0D0C(a1, v6, MEMORY[0x277D0A278], &qword_27C80F490, v5, MEMORY[0x277D0A288]);
}

unint64_t sub_20CCB0B78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20CCDA784();
  v5 = MEMORY[0x277CC95F0];
  sub_20CCB3770(&qword_27C80F8A8, MEMORY[0x277CC95F0]);
  v6 = sub_20CCDB644();
  return sub_20CCB0D0C(a1, v6, MEMORY[0x277CC95F0], &qword_27C80F8B0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_20CCB0C4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v6 = sub_20CCDBB64();

  return sub_20CCB0EAC(a1, a2, v6);
}

unint64_t sub_20CCB0CC4(unsigned int a1)
{
  v3 = MEMORY[0x20F30F710](*(v1 + 40), a1, 4);

  return sub_20CCB0F64(a1, v3);
}

unint64_t sub_20CCB0D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_20CCB3770(v24, v25);
      v20 = sub_20CCDB654();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_20CCB0EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20CCDBA64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CCB0F64(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_20CCB0FD0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20CCB10C4;

  return v6(v2 + 32);
}

uint64_t sub_20CCB10C4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_20CCB11D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F920, &qword_20CCDD2F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F928, &qword_20CCDD300);
    v8 = sub_20CCDBA24();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v10, v6, &qword_27C80F920, &qword_20CCDD2F8);
      result = sub_20CCB0AA4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20CCDAF54();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20CCDB214();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB13F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C8, &unk_20CCDD290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D0, &unk_20CCDDD50);
    v8 = sub_20CCDBA24();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v10, v6, &qword_27C80F8C8, &unk_20CCDD290);
      result = sub_20CCB0B78(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20CCDA784();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB15E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8B8, &qword_20CCDD278);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C0, &unk_20CCDD280);
    v8 = sub_20CCDBA24();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v10, v6, &qword_27C80F8B8, &qword_20CCDD278);
      result = sub_20CCB0B78(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20CCDA784();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB180C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F930, &qword_20CCDD308);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F938, qword_20CCDD310);
    v8 = sub_20CCDBA24();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v10, v6, &qword_27C80F930, &qword_20CCDD308);
      v12 = *v6;
      v13 = v6[1];
      result = sub_20CCB0C4C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AudioSynthesisHandle(0);
      result = sub_20CCB38E4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB19E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F910, &qword_20CCDD2E8);
    v3 = sub_20CCDBA24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CCB0C4C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB1AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F918, &qword_20CCDD2F0);
    v3 = sub_20CCDBA24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CCB0C4C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB1BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F900, &qword_20CCDD2D8);
    v3 = sub_20CCDBA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CC89500(v4, &v13, &qword_27C80F908, &qword_20CCDD2E0);
      v5 = v13;
      v6 = v14;
      result = sub_20CCB0C4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CC898D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB1D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D8, &qword_20CCDD2A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8E0, &qword_20CCDD2A8);
    v8 = sub_20CCDBA24();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_20CC89500(v10, v6, &qword_27C80F8D8, &qword_20CCDD2A0);
      v12 = *v6;
      result = sub_20CCB0CC4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = sub_20CCDAFB4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CCB1EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8F0, &qword_20CCDD2C8);
    v3 = sub_20CCDBA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CC89500(v4, &v13, &qword_27C80F8F8, &qword_20CCDD2D0);
      v5 = v13;
      v6 = v14;
      result = sub_20CCB0C4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CCB38CC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20CCB2028(uint64_t a1)
{
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
    v10 = sub_20CCDB954();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20CCB3770(&qword_28110ED38, MEMORY[0x277D0A5E0]);
      v18 = sub_20CCDB644();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20CCB3770(&qword_27C80F6B0, MEMORY[0x277D0A5E0]);
          v25 = sub_20CCDB654();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CCB2348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
    v3 = sub_20CCDB954();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_20CCDBB44();

      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_20CCDBA64();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20CCB2568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAD65C(a1, a2, a3, v3);
}

uint64_t sub_20CCB261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAD9E4(a1, a2, a3, v3);
}

uint64_t sub_20CCB26D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCADD44(a1, a2, a3, v3);
}

uint64_t sub_20CCB2784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAE134(a1, a2, a3, v3);
}

unint64_t sub_20CCB2838()
{
  result = qword_28110E628;
  if (!qword_28110E628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F880, &qword_20CCDD0B0);
    sub_20CCB3770(&qword_28110EDA8, MEMORY[0x277D0A010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110E628);
  }

  return result;
}

uint64_t sub_20CCB28EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAE454(a1, a2, v2);
}

uint64_t sub_20CCB2994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAE7BC(a1, a2, a3, v3);
}

uint64_t sub_20CCB2A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAEB1C(a1, a2, a3, v3);
}

uint64_t sub_20CCB2AFC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAEDDC(a1, a2, v2);
}

unint64_t sub_20CCB2BA8()
{
  result = qword_28110E620;
  if (!qword_28110E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F888, &qword_20CCDD0F8);
    sub_20CCB3770(&qword_28110ED50, MEMORY[0x277D0A548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110E620);
  }

  return result;
}

uint64_t sub_20CCB2C5C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAF0BC(a1, a2, v2);
}

uint64_t sub_20CCB2D04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAF234(a1, a2, v2);
}

uint64_t sub_20CCB2DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CC8DF7C;

  return sub_20CCAF4E0(a1);
}

unint64_t sub_20CCB2E58()
{
  result = qword_28110ED88;
  if (!qword_28110ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110ED88);
  }

  return result;
}

uint64_t sub_20CCB2EAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAF624(a1, v1);
}

uint64_t sub_20CCB2F44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAF8A8(a1, v1);
}

uint64_t sub_20CCB2FDC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAFB0C(a1, v1);
}

uint64_t sub_20CCB3074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CC92A0C;

  return sub_20CCAFC7C();
}

uint64_t sub_20CCB310C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAFDB4(a1, a2, v2);
}

uint64_t sub_20CCB31B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAFF2C(a1, a2, v2);
}

uint64_t sub_20CCB325C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB00A4(a1, a2, v2);
}

uint64_t sub_20CCB3304(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB0310(a1, a2, v2);
}

uint64_t sub_20CCB33AC(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB0488(a1, a2, v2);
}

unint64_t sub_20CCB3454()
{
  result = qword_27C80F890;
  if (!qword_27C80F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F890);
  }

  return result;
}

uint64_t sub_20CCB34A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20CC8DF7C;

  return sub_20CCB06FC(v0);
}

uint64_t sub_20CCB3538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC92A0C;

  return sub_20CC8DD38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20CCB3650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CCB36B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB0FD0(a1, v5);
}

uint64_t sub_20CCB3770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CCB37B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB08B4(a1, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20CCB38CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20CCB38E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCB39D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_20CCDA784();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F660, &qword_20CCDD400);
  v9 = sub_20CCDB474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_20CCDB904();
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = sub_20CCDB764();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 144) != 255)
  {
LABEL_19:
    v52 = v1[14];

    v53 = v1[15];

    v54 = v1[16];

    sub_20CCA11B4(v1[17], *(v1 + 144));
    swift_defaultActor_destroy();
    return v1;
  }

  v70 = v15;
  v71 = v11;
  v63 = v7;
  v57 = v9;
  v72 = v22;
  v23 = v20;
  sub_20CCDB604();
  swift_beginAccess();
  v58 = v1;
  v24 = v1[16];
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v59 = v4 + 32;
  v60 = v4 + 16;
  v68 = (v73 + 32);
  v69 = TupleTypeMetadata2 - 8;
  v56 = v23;
  v64 = v4;
  v65 = v24;
  v66 = (v4 + 8);
  v67 = (v23 + 16);

  v31 = 0;
  v73 = v3;
  v32 = v18;
  v61 = v17;
  v62 = v18;
  v33 = v17;
  if (v28)
  {
    while (1)
    {
      v34 = v31;
LABEL_13:
      v37 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v38 = v37 | (v34 << 6);
      v40 = v64;
      v39 = v65;
      v41 = v63;
      (*(v64 + 16))(v63, *(v65 + 48) + *(v64 + 72) * v38, v3);
      v42 = *(*(v39 + 56) + 8 * v38);
      v43 = v3;
      v44 = *(TupleTypeMetadata2 + 48);
      v45 = v70;
      (*(v40 + 32))(v70, v41, v43);
      *&v45[v44] = v42;
      v46 = *(TupleTypeMetadata2 - 8);
      (*(v46 + 56))(v45, 0, 1, TupleTypeMetadata2);

      v36 = v34;
      v47 = v45;
      v33 = v61;
      v32 = v62;
LABEL_14:
      (*v68)(v33, v47, v71);
      if ((*(v46 + 48))(v33, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v48 = *&v33[*(TupleTypeMetadata2 + 48)];
      sub_20CCB4070(&qword_27C80F940, MEMORY[0x277D85678]);
      v49 = swift_allocError();
      (*v67)(v50, v72, v32);
      sub_20CCDB424();

      v3 = v73;
      result = (*v66)(v33, v73);
      v31 = v36;
      if (!v28)
      {
        goto LABEL_6;
      }
    }

    v1 = v58;
    swift_beginAccess();
    sub_20CCB4070(&qword_27C80F8A8, MEMORY[0x277CC95F0]);
    sub_20CCDB634();
    sub_20CCDB624();
    swift_endAccess();
    (*(v56 + 8))(v72, v32);
    goto LABEL_19;
  }

LABEL_6:
  if (v29 <= v31 + 1)
  {
    v35 = v31 + 1;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      v51 = v70;
      v46 = *(TupleTypeMetadata2 - 8);
      (*(v46 + 56))(v70, 1, 1, TupleTypeMetadata2);
      v47 = v51;
      v28 = 0;
      goto LABEL_14;
    }

    v28 = *(v25 + 8 * v34);
    ++v31;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CCB402C()
{
  sub_20CCB39D8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCB4070(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20CCB40BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _sSo27AudioStreamBasicDescriptionV28FitnessIntelligenceInferenceE2eeoiySbAB_ABtFZ_0(v5, v7);
}

uint64_t sub_20CCB41A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v5 = 0;
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v4 = sub_20CCB0C4C(0x52656C706D61536DLL, 0xEB00000000657461);
  v5 = 0;
  if (v6)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v4, v33);
    if (swift_dynamicCast())
    {
      v5 = v32;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_20CCB0C4C(0x4974616D726F466DLL, 0xE900000000000044);
  if (v8 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v7, v33), (swift_dynamicCast()))
  {
    v9 = v32;
    if (!*(a1 + 16))
    {
LABEL_9:
      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v18 = sub_20CCB0C4C(0x4674616D726F466DLL, 0xEC0000007367616CLL);
  if (v19)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v18, v33);
    if (swift_dynamicCast())
    {
      v10 = v32;
      if (!*(a1 + 16))
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }
  }

LABEL_12:
  v10 = 0;
  if (!*(a1 + 16))
  {
LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

LABEL_13:
  v11 = sub_20CCB0C4C(0x655073657479426DLL, 0xEF74656B63615072);
  if ((v12 & 1) == 0 || (sub_20CC89458(*(a1 + 56) + 32 * v11, v33), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v13 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  v14 = sub_20CCB0C4C(0xD000000000000010, 0x800000020CCDE5A0);
  if ((v15 & 1) == 0 || (sub_20CC89458(*(a1 + 56) + 32 * v14, v33), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:
    v16 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v16 = v32;
  if (!*(a1 + 16))
  {
LABEL_21:
    v17 = 0;
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

LABEL_28:
  v20 = sub_20CCB0C4C(0x655073657479426DLL, 0xEE00656D61724672);
  if (v21 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v20, v33), (swift_dynamicCast()))
  {
    v17 = v32;
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v17 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }
  }

  v28 = sub_20CCB0C4C(0xD000000000000011, 0x800000020CCDE5C0);
  if (v29 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v28, v33), (swift_dynamicCast()))
  {
    v22 = v32;
    if (!*(a1 + 16))
    {
LABEL_40:
      v23 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v22 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }
  }

  v30 = sub_20CCB0C4C(0x726550737469426DLL, 0xEF6C656E6E616843);
  if (v31)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v30, v33);
    if (swift_dynamicCast())
    {
      v23 = v32;
      if (!*(a1 + 16))
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  v23 = 0;
  if (!*(a1 + 16))
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_33:
  v24 = sub_20CCB0C4C(0x657672657365526DLL, 0xE900000000000064);
  if ((v25 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_20CC89458(*(a1 + 56) + 32 * v24, v33);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_42:
    v27 = 0;
    goto LABEL_43;
  }

  v27 = v32;
LABEL_43:
  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v13;
  *(a2 + 20) = v16;
  *(a2 + 24) = v17;
  *(a2 + 28) = v22;
  *(a2 + 32) = v23;
  *(a2 + 36) = v27;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CCB4654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20CCB469C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_20CCB46EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v40 = *MEMORY[0x277D85DE8];
  *(v9 + 1368) = a8;
  *(v9 + 1320) = a7;
  *(v9 + 1272) = a6;
  *(v9 + 1224) = a5;
  *(v9 + 2036) = a4;
  *(v9 + 1176) = a3;
  *(v9 + 1128) = a9;
  *(v9 + 1080) = a2;
  *(v9 + 1032) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30) - 8) + 64) + 15;
  *(v9 + 1416) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F948, &qword_20CCDD4D0) - 8) + 64) + 15;
  *(v9 + 1424) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SynthesizedAudio(0) - 8) + 64) + 15;
  *(v9 + 1432) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50) - 8) + 64) + 15;
  *(v9 + 1440) = swift_task_alloc();
  *(v9 + 1448) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F960, &qword_20CCDD548) - 8) + 64) + 15;
  *(v9 + 1456) = swift_task_alloc();
  *(v9 + 1464) = swift_task_alloc();
  v15 = type metadata accessor for PlayAudioResult(0);
  *(v9 + 1472) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 1480) = swift_task_alloc();
  *(v9 + 1488) = swift_task_alloc();
  v17 = type metadata accessor for AudioSynthesisHandle(0);
  *(v9 + 1496) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 1504) = swift_task_alloc();
  v19 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
  *(v9 + 1512) = v19;
  v20 = *(v19 - 8);
  *(v9 + 1520) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 1528) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F968, &qword_20CCDD550);
  *(v9 + 1536) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  v24 = sub_20CCDB504();
  *(v9 + 1560) = v24;
  v25 = *(v24 - 8);
  *(v9 + 1568) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 1576) = swift_task_alloc();
  v27 = sub_20CCDB4E4();
  *(v9 + 1584) = v27;
  v28 = *(v27 - 8);
  *(v9 + 1592) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 1600) = swift_task_alloc();
  v30 = sub_20CCDA744();
  *(v9 + 1608) = v30;
  v31 = *(v30 - 8);
  *(v9 + 1616) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 1624) = swift_task_alloc();
  v33 = sub_20CCDAE94();
  *(v9 + 1632) = v33;
  v34 = *(v33 - 8);
  *(v9 + 1640) = v34;
  *(v9 + 1648) = *(v34 + 64);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  v35 = sub_20CCDB584();
  *(v9 + 1680) = v35;
  v36 = *(v35 - 8);
  *(v9 + 1688) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  v38 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB4BD4, 0, 0);
}

uint64_t sub_20CCB4BD4()
{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1640);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1080);
  sub_20CCDB394();
  v6 = *(v3 + 16);
  *(v0 + 1720) = v6;
  *(v0 + 1728) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1688);
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1672);
  if (v9)
  {
    v49 = *(v0 + 1680);
    v14 = *(v0 + 1664);
    v15 = *(v0 + 1640);
    log = v7;
    v16 = *(v0 + 1632);
    v48 = *(v0 + 1712);
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50[0] = v46;
    *v17 = 136380675;
    v6(v14, v13, v16);
    v18 = sub_20CCDB684();
    v19 = v8;
    v21 = v20;
    (*(v15 + 8))(v13, v16);
    v22 = sub_20CC88C4C(v18, v21, v50);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20CC86000, log, v19, "Received inference request: %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x20F30FD70](v46, -1, -1);
    MEMORY[0x20F30FD70](v17, -1, -1);

    v23 = *(v11 + 8);
    v23(v48, v49);
  }

  else
  {
    v24 = *(v0 + 1640);
    v25 = *(v0 + 1632);

    (*(v24 + 8))(v13, v25);
    v23 = *(v11 + 8);
    v23(v10, v12);
  }

  v26 = *(v0 + 1128);
  *(v0 + 1736) = [objc_allocWithZone(MEMORY[0x277D3F038]) initWithResourceType:17 andState:1];
  *(v0 + 2032) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F970, &unk_20CCDD558);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E747265737341;
  *(inited + 16) = xmmword_20CCDD450;
  v28 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x800000020CCDE6A0;
  *(inited + 72) = v28;
  *(inited + 80) = 0x7954747265737341;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x800000020CCDE6C0;
  *(inited + 120) = v28;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000020CCDE6E0;
  *(inited + 144) = 0xD00000000000001DLL;
  *(inited + 152) = 0x800000020CCDDEC0;
  *(inited + 168) = v28;
  strcpy((inited + 176), "TimeoutAction");
  *(inited + 190) = -4864;
  *(inited + 192) = 0xD000000000000014;
  *(inited + 200) = 0x800000020CCDE700;
  *(inited + 216) = v28;
  strcpy((inited + 224), "TimeoutSeconds");
  *(inited + 239) = -18;
  *(inited + 264) = MEMORY[0x277D839F8];
  *(inited + 240) = v26;
  sub_20CCB1BE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F908, &qword_20CCDD2E0);
  swift_arrayDestroy();
  v29 = sub_20CCDB614();

  v30 = IOPMAssertionCreateWithProperties(v29, (v0 + 2032));

  if (v30)
  {
    v31 = (v0 + 1696);
    v32 = *(v0 + 1696);
    sub_20CCDB394();
    v33 = sub_20CCDB564();
    v34 = sub_20CCDB894();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Failed to take power assertion for inference pipeline";
LABEL_9:
      _os_log_impl(&dword_20CC86000, v33, v34, v36, v35, 2u);
      v38 = *v31;
      MEMORY[0x20F30FD70](v35, -1, -1);
      goto LABEL_11;
    }
  }

  else
  {
    v31 = (v0 + 1704);
    v37 = *(v0 + 1704);
    sub_20CCDB394();
    v33 = sub_20CCDB564();
    v34 = sub_20CCDB8B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Successfully created power assertion for inference pipeline";
      goto LABEL_9;
    }
  }

  v38 = *v31;
LABEL_11:
  v39 = *(v0 + 1688);
  v40 = *(v0 + 1680);
  v41 = *(v0 + 1368);
  v42 = *(v0 + 1080);

  v23(v38, v40);
  *(v0 + 1744) = sub_20CCDAE44();
  *(v0 + 1752) = v43;
  v44 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB515C, v41, 0);
}

uint64_t sub_20CCB515C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = v0[171];
  sub_20CCCB2D0(v0[218], v0[219]);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB520C, 0, 0);
}

uint64_t sub_20CCB520C()
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = *(v0 + 1720);
  v31 = *(v0 + 1728);
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1656);
  v3 = *(v0 + 1600);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1568);
  v6 = *(v0 + 1560);
  v35 = *(v0 + 1552);
  v36 = *(v0 + 1624);
  v33 = *(v0 + 1368);
  v34 = *(v0 + 1536);
  v32 = *(v0 + 1320);
  v7 = *(v0 + 1272);
  v8 = *(v0 + 1224);
  v29 = *(v0 + 2036);
  v9 = *(v0 + 1128);
  v10 = *(v0 + 1080);
  sub_20CCDA734();
  sub_20CCDB374();
  sub_20CCDB4F4();
  sub_20CCDB4C4();
  (*(v5 + 8))(v4, v6);
  v11 = type metadata accessor for AudioSynthesizer();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v0 + 1760) = v14;
  swift_defaultActor_initialize();
  *(v14 + 152) = 0;
  *(v14 + 136) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 160) = 1;
  v15 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder) = 0;
  *(v14 + 112) = [objc_allocWithZone(sub_20CCDA904()) init];
  v30(v38, v10, v37);
  v17 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v18 = swift_allocObject();
  *(v0 + 1768) = v18;
  *(v18 + 2) = v8;
  *(v18 + 3) = v7;
  *(v18 + 4) = v32;
  *(v18 + 5) = v33;
  (*(v2 + 32))(&v18[v17], v38, v37);
  *&v18[(v1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;
  v19 = v8;

  v20 = v32;

  swift_asyncLet_begin();
  v21 = swift_task_alloc();
  *(v0 + 1776) = v21;
  v21[2] = v19;
  v21[3] = v7;
  v21[4] = v20;
  v21[5] = v33;
  v21[6] = v10;
  v21[7] = v36;
  v21[8] = v9;
  v22 = swift_task_alloc();
  *(v0 + 1784) = v22;
  *v22 = v0;
  v22[1] = sub_20CCB557C;
  v23 = *(v0 + 1600);
  v24 = *(v0 + 1224);
  v25 = *(v0 + 1176);
  v26 = *(v0 + 1080);
  v27 = *MEMORY[0x277D85DE8];
  v42 = *(v0 + 1320);
  v43 = *(v0 + 1368);
  v41 = *(v0 + 1272);

  return sub_20CCBE428(v0 + 968, v26, v25, v29 & 1, v23, &unk_20CCDD580, v21, v24);
}

uint64_t sub_20CCB557C()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1784);
  v5 = *(*v1 + 1776);
  v6 = *v1;
  v3[224] = v0;
  v3[225] = v3[121];
  v3[226] = v2[122];
  v7 = v2[123];
  v8 = *(v3 + 63);
  *(v3 + 114) = *(v3 + 62);
  v3[227] = v7;
  *(v3 + 115) = v8;
  v3[232] = v2[128];

  if (v0)
  {
    v9 = v3[194];
    v10 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200920](v3 + 2, v9, sub_20CCB8768, v3 + 82);
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_20CCB5794, 0, 0);
  }
}

uint64_t sub_20CCB5794()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 135);
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v0 + 233) = v3;
  v5 = swift_task_alloc();
  *(v0 + 234) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB587C;
  v6 = *(v0 + 203);
  v7 = *(v0 + 171);
  v8 = v0[141];
  v9 = *MEMORY[0x277D85DE8];

  return sub_20CCC50A4(v2, v4, v6, v7, v8);
}

uint64_t sub_20CCB587C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1872);
  v4 = *(*v1 + 1864);
  v10 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v5 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_20CCB5ACC, 0, 0);
  }

  else
  {
    v6 = *(v2 + 1552);
    v7 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200930](v2 + 16, v6, sub_20CCB5A28, v2 + 1088);
  }
}

uint64_t sub_20CCB5A28()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 1888) = v0;
  if (v0)
  {
    v2 = sub_20CCB8A48;
  }

  else
  {
    v2 = sub_20CCB5E6C;
  }

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB5ACC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];

  v5 = v0[194];
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v5, sub_20CCB5B8C, v0 + 130);
}

uint64_t sub_20CCB5B8C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB5C18, 0, 0);
}

uint64_t sub_20CCB5C18()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1880);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB5E6C()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 193);
  v2 = *(v0 + 190);
  v3 = *(v0 + 189);
  sub_20CC89500(*(v0 + 194), v1, &qword_27C80F968, &qword_20CCDD550);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 193);
  if (v4 == 1)
  {
    sub_20CC89568(v5, &qword_27C80F968, &qword_20CCDD550);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 210), qword_28110EE00);
    v6 = sub_20CCDB564();
    v7 = sub_20CCDB8B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CC86000, v6, v7, "No voice requested/available, skipping synthesis and playback", v8, 2u);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }

    v9 = *(v0 + 232);
    v10 = *(v0 + 230);
    v39 = *(v0 + 228);
    v11 = *(v0 + 227);
    v12 = *(v0 + 226);
    v13 = *(v0 + 225);
    v14 = *(v0 + 182);
    v15 = *(v0 + 177);
    v37 = *(v0 + 231);
    v38 = *(v0 + 171);
    v35 = *(v0 + 203);
    v36 = *(v0 + 165);
    v33 = *(v0 + 229);
    v34 = *(v0 + 159);
    v32 = *(v0 + 153);
    v16 = *(v0 + 135);
    v17 = *(v0 + 129);

    v18 = sub_20CCDB0E4();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = sub_20CCDAF54();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);

    sub_20CCDADF4();
    sub_20CCBEC38(v35, v16, v17, v32, v34, v36, v38);

    v20 = *(v0 + 194);
    v21 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200920](v0 + 2, v20, sub_20CCB86DC, v0 + 148);
  }

  else
  {
    v22 = *(v0 + 135);
    sub_20CCC5BD0(v5, *(v0 + 191), type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
    v23 = sub_20CCDAE44();
    v25 = v24;
    *(v0 + 237) = v24;
    v26 = swift_task_alloc();
    *(v0 + 238) = v26;
    *v26 = v0;
    v26[1] = sub_20CCB6268;
    v27 = *(v0 + 203);
    v28 = *(v0 + 171);
    v29 = v0[141];
    v30 = *MEMORY[0x277D85DE8];

    return sub_20CCC50A4(v23, v25, v27, v28, v29);
  }
}

uint64_t sub_20CCB6268()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1904);
  v3 = *(*v1 + 1896);
  v8 = *v1;
  *(*v1 + 1912) = v0;

  if (v0)
  {
    v4 = sub_20CCB6634;
  }

  else
  {
    v4 = sub_20CCB63CC;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCB63CC()
{
  v1 = v0;
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1512);
  v4 = *(v1 + 1080);
  *(v1 + 2037) = sub_20CCDAE34() & 1;
  v5 = *(v3 + 20);
  v6 = swift_task_alloc();
  *(v1 + 1920) = v6;
  *v6 = v1;
  v6[1] = sub_20CCB64F4;
  v7 = *(v1 + 1824);
  v8 = *(v1 + 1816);
  v9 = *(v1 + 1808);
  v10 = *(v1 + 1760);
  v11 = *(v1 + 1600);
  v12 = *(v1 + 1528);
  v13 = *(v1 + 1504);
  v14 = *MEMORY[0x277D85DE8];
  v20 = *(v1 + 1320);
  v21 = *(v1 + 1368);
  v18 = *(v1 + 1224);
  v19 = *(v1 + 1272);

  return sub_20CCBF008(v13, v9, v8, v7, v10, v12, v2 + v5, v11);
}

uint64_t sub_20CCB64F4()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1920);
  v7 = *v1;
  *(*v1 + 1928) = v0;

  if (v0)
  {
    v3 = sub_20CCB8DE8;
  }

  else
  {
    v3 = sub_20CCB69FC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCB6634()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[191];

  sub_20CCC56A8(v5, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  v6 = v0[194];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v6, sub_20CCB671C, v0 + 154);
}

uint64_t sub_20CCB671C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB67A8, 0, 0);
}

uint64_t sub_20CCB67A8()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1912);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB69FC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 135);
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v0 + 242) = v3;
  v5 = swift_task_alloc();
  *(v0 + 243) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB6AE4;
  v6 = *(v0 + 203);
  v7 = *(v0 + 171);
  v8 = v0[141];
  v9 = *MEMORY[0x277D85DE8];

  return sub_20CCC50A4(v2, v4, v6, v7, v8);
}

uint64_t sub_20CCB6AE4()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1944);
  v3 = *(*v1 + 1936);
  v8 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v4 = sub_20CCB6F94;
  }

  else
  {
    v4 = sub_20CCB6C48;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCB6C48()
{
  v1 = v0;
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 1080);
  v3 = sub_20CCDAE44();
  v5 = v4;
  *(v0 + 1960) = v4;
  v6 = swift_task_alloc();
  *(v1 + 1968) = v6;
  *v6 = v1;
  v6[1] = sub_20CCB6D5C;
  v7 = *(v1 + 2037);
  v8 = *(v1 + 1760);
  v9 = *(v1 + 1600);
  v10 = *(v1 + 1504);
  v11 = *(v1 + 1488);
  v12 = *MEMORY[0x277D85DE8];
  v18 = *(v1 + 1320);
  v19 = *(v1 + 1368);
  v16 = *(v1 + 1224);
  v17 = *(v1 + 1272);

  return sub_20CCC0628(v11, v3, v5, v8, v10, v9, 0, v7);
}

uint64_t sub_20CCB6D5C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 1968);
  v3 = *(*v0 + 1960);
  v4 = *(*v0 + 1504);
  v5 = *(*v0 + 1496);
  v10 = *v0;

  v6 = *(v4 + *(v5 + 32));
  *(v1 + 1976) = v6;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB6EE0, v6, 0);
}

uint64_t sub_20CCB6EE0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1976);
  if (*(v1 + 168))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v1 = *(v0 + 1976);
  }

  else
  {
    Current = *(v1 + 160);
  }

  *(v0 + 1984) = Current;
  *(v0 + 1992) = *(v1 + 152);
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB737C, 0, 0);
}

uint64_t sub_20CCB6F94()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[191];
  v6 = v0[188];

  sub_20CCC56A8(v5, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  sub_20CCC56A8(v6, type metadata accessor for AudioSynthesisHandle);
  v7 = v0[194];
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v7, sub_20CCB709C, v0 + 166);
}

uint64_t sub_20CCB709C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB7128, 0, 0);
}

uint64_t sub_20CCB7128()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1952);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB737C()
{
  v57 = *MEMORY[0x277D85DE8];
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1680), qword_28110EE00);
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1984) - *(v0 + 1992);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_20CC86000, v1, v2, "Audio synthesis duration=%f", v4, 0xCu);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 1488);
  v6 = *(v0 + 1480);

  sub_20CCC575C(v5, v6, type metadata accessor for PlayAudioResult);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1480);
  if (v9)
  {
    v11 = *(v0 + 1472);
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(v10 + *(v11 + 24));
    sub_20CCC56A8(v10, type metadata accessor for PlayAudioResult);
    *(v12 + 4) = v13;
    _os_log_impl(&dword_20CC86000, v7, v8, "Playback duration=%f", v12, 0xCu);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    sub_20CCC56A8(v10, type metadata accessor for PlayAudioResult);
  }

  v14 = *(v0 + 1816);

  if (sub_20CCDB3D4())
  {
    v15 = swift_task_alloc();
    *(v0 + 2000) = v15;
    *v15 = v0;
    v15[1] = sub_20CCB798C;
    v16 = *(v0 + 1504);
    v17 = *(v0 + 1432);
    v18 = *MEMORY[0x277D85DE8];

    return sub_20CCA86B8(v17);
  }

  else
  {
    v20 = *(v0 + 1448);
    v21 = sub_20CCDA6A4();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v46 = *(v0 + 1856);
    v56 = *(v0 + 1848);
    v51 = *(v0 + 1816);
    v48 = *(v0 + 1840);
    v49 = *(v0 + 1808);
    v22 = *(v0 + 1800);
    v54 = *(v0 + 1832);
    v55 = *(v0 + 1624);
    v23 = *(v0 + 1488);
    v24 = *(v0 + 1472);
    v41 = *(v0 + 1464);
    v25 = *(v0 + 1448);
    v26 = *(v0 + 1440);
    v27 = *(v0 + 1424);
    v42 = *(v0 + 1416);
    v43 = *(v0 + 1528);
    v52 = *(v0 + 1272);
    v53 = *(v0 + 1320);
    v50 = *(v0 + 1224);
    v47 = *(v0 + 1080);
    v44 = *(v0 + 1368);
    v45 = *(v0 + 1032);
    v28 = *(v0 + 1984) - *(v0 + 1992);
    v29 = (v23 + v24[7]);
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *(v23 + v24[6]);
    v33 = *(v23 + v24[5]);
    v34 = sub_20CCDB104();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v27, v23, v34);
    (*(v35 + 56))(v27, 0, 1, v34);
    sub_20CC89500(v25, v26, &qword_27C80F820, &qword_20CCDCF50);
    sub_20CCDB0D4();
    sub_20CC89568(v25, &qword_27C80F820, &qword_20CCDCF50);
    v36 = sub_20CCDB0E4();
    (*(*(v36 - 8) + 56))(v41, 0, 1, v36);
    v37 = sub_20CCDAF54();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v42, v43, v37);
    (*(v38 + 56))(v42, 0, 1, v37);

    sub_20CCDADF4();
    sub_20CCBEC38(v55, v47, v45, v50, v52, v53, v44);
    *(v0 + 2016) = sub_20CCDAE44();
    *(v0 + 2024) = v39;
    v40 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_20CCB8224, v44, 0);
  }
}

uint64_t sub_20CCB798C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 2000);
  v7 = *v1;
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v3 = sub_20CCB7E70;
  }

  else
  {
    v3 = sub_20CCB7ACC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCB7ACC()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1432);
  sub_20CC89500(v1, *(v0 + 1448), &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v1, type metadata accessor for SynthesizedAudio);
  v27 = *(v0 + 1856);
  v37 = *(v0 + 1848);
  v32 = *(v0 + 1816);
  v29 = *(v0 + 1840);
  v30 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v35 = *(v0 + 1832);
  v36 = *(v0 + 1624);
  v3 = *(v0 + 1488);
  v4 = *(v0 + 1472);
  v22 = *(v0 + 1464);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1424);
  v23 = *(v0 + 1416);
  v24 = *(v0 + 1528);
  v33 = *(v0 + 1272);
  v34 = *(v0 + 1320);
  v31 = *(v0 + 1224);
  v28 = *(v0 + 1080);
  v25 = *(v0 + 1368);
  v26 = *(v0 + 1032);
  v8 = *(v0 + 1984) - *(v0 + 1992);
  v9 = (v3 + v4[7]);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v3 + v4[6]);
  v13 = *(v3 + v4[5]);
  v14 = sub_20CCDB104();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7, v3, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  sub_20CC89500(v5, v6, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();
  sub_20CC89568(v5, &qword_27C80F820, &qword_20CCDCF50);
  v16 = sub_20CCDB0E4();
  (*(*(v16 - 8) + 56))(v22, 0, 1, v16);
  v17 = sub_20CCDAF54();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v23, v24, v17);
  (*(v18 + 56))(v23, 0, 1, v17);

  sub_20CCDADF4();
  sub_20CCBEC38(v36, v28, v26, v31, v33, v34, v25);
  *(v0 + 2016) = sub_20CCDAE44();
  *(v0 + 2024) = v19;
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB8224, v25, 0);
}

uint64_t sub_20CCB7E70()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1448);

  v2 = sub_20CCDA6A4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v28 = *(v0 + 1856);
  v38 = *(v0 + 1848);
  v33 = *(v0 + 1816);
  v30 = *(v0 + 1840);
  v31 = *(v0 + 1808);
  v3 = *(v0 + 1800);
  v36 = *(v0 + 1832);
  v37 = *(v0 + 1624);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1472);
  v23 = *(v0 + 1464);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1424);
  v24 = *(v0 + 1416);
  v25 = *(v0 + 1528);
  v34 = *(v0 + 1272);
  v35 = *(v0 + 1320);
  v32 = *(v0 + 1224);
  v29 = *(v0 + 1080);
  v26 = *(v0 + 1368);
  v27 = *(v0 + 1032);
  v9 = *(v0 + 1984) - *(v0 + 1992);
  v10 = (v4 + v5[7]);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v4 + v5[6]);
  v14 = *(v4 + v5[5]);
  v15 = sub_20CCDB104();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v8, v4, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  sub_20CC89500(v6, v7, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();
  sub_20CC89568(v6, &qword_27C80F820, &qword_20CCDCF50);
  v17 = sub_20CCDB0E4();
  (*(*(v17 - 8) + 56))(v23, 0, 1, v17);
  v18 = sub_20CCDAF54();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v24, v25, v18);
  (*(v19 + 56))(v24, 0, 1, v18);

  sub_20CCDADF4();
  sub_20CCBEC38(v37, v29, v27, v32, v34, v35, v26);
  *(v0 + 2016) = sub_20CCDAE44();
  *(v0 + 2024) = v20;
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB8224, v26, 0);
}

uint64_t sub_20CCB8224()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = v0[171];
  sub_20CCCB530(v0[252], v0[253]);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB82D4, 0, 0);
}

uint64_t sub_20CCB82D4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[191];
  v6 = v0[188];
  v7 = v0[186];

  sub_20CCC56A8(v7, type metadata accessor for PlayAudioResult);
  sub_20CCC56A8(v5, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  sub_20CCC56A8(v6, type metadata accessor for AudioSynthesisHandle);
  v8 = v0[194];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v8, sub_20CCB8404, v0 + 172);
}

uint64_t sub_20CCB8404()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB8490, 0, 0);
}

uint64_t sub_20CCB8490()
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1544);
  v25 = *(v0 + 1528);
  v26 = *(v0 + 1504);
  v27 = *(v0 + 1488);
  v28 = *(v0 + 1480);
  v29 = *(v0 + 1464);
  v30 = *(v0 + 1456);
  v31 = *(v0 + 1448);
  v32 = *(v0 + 1440);
  v33 = *(v0 + 1432);
  v34 = *(v0 + 1424);
  v35 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB86DC()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCC6264, 0, 0);
}

uint64_t sub_20CCB8768()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB87F4, 0, 0);
}

uint64_t sub_20CCB87F4()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1792);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB8A48()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];

  v5 = v0[194];
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v5, sub_20CCB8B08, v0 + 142);
}

uint64_t sub_20CCB8B08()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB8B94, 0, 0);
}

uint64_t sub_20CCB8B94()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1888);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB8DE8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[191];

  sub_20CCC56A8(v5, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  v6 = v0[194];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 2, v6, sub_20CCB8ED0, v0 + 160);
}

uint64_t sub_20CCB8ED0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CCB8F5C, 0, 0);
}

uint64_t sub_20CCB8F5C()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_20CCBD37C((v0 + 2032));
  v9 = *(v0 + 1768);
  if (v2)
  {
    v10 = *(v0 + 1736);
    [v10 updateState_];
  }

  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1664);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1552);
  v24 = *(v0 + 1928);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1488);
  v29 = *(v0 + 1480);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1456);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1440);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_20CCB91B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v7 = sub_20CCDB284();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCB9274, 0, 0);
}

uint64_t sub_20CCB9274()
{
  v23 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDB274();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to cancel inference for request ID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[3];
  v18 = v0[4];
  v0[8] = sub_20CCDB274();
  v0[9] = v20;

  return MEMORY[0x2822009F8](sub_20CCB9480, v18, 0);
}

uint64_t sub_20CCB9480()
{
  v1 = *(v0 + 32);
  *(v0 + 105) = sub_20CCCB808(*(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_20CCB9500, 0, 0);
}

uint64_t sub_20CCB9500()
{
  v1 = v0[3];
  v2 = sub_20CCDB274();
  v4 = v3;
  v0[10] = v3;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_20CCB9608;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 13, 0, 0, 0xD00000000000001ALL, 0x800000020CCDE5E0, sub_20CCC62E0, v5, v8);
}

uint64_t sub_20CCB9608()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CCB973C, 0, 0);
}

uint64_t sub_20CCB973C()
{
  v1 = *(v0 + 105);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  sub_20CCDB254();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CCB97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F948, &qword_20CCDD4D0) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SynthesizedAudio(0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v10 = sub_20CCDA784();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = sub_20CCDB514();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F950, &qword_20CCDD4D8);
  v6[30] = v17;
  v18 = *(v17 - 8);
  v6[31] = v18;
  v19 = *(v18 + 64) + 15;
  v6[32] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  v6[33] = v20;
  v21 = *(v20 - 8);
  v6[34] = v21;
  v22 = *(v21 + 64) + 15;
  v6[35] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  v6[36] = v23;
  v24 = *(v23 - 8);
  v6[37] = v24;
  v6[38] = *(v24 + 64);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v25 = type metadata accessor for PlayAudioResult(0);
  v6[41] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v27 = sub_20CCDB114();
  v6[44] = v27;
  v28 = *(v27 - 8);
  v6[45] = v28;
  v29 = *(v28 + 64) + 15;
  v6[46] = swift_task_alloc();
  v30 = type metadata accessor for AudioSynthesisHandle(0);
  v6[47] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v32 = *(*(sub_20CCDB2D4() - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v33 = sub_20CCDB054();
  v6[51] = v33;
  v34 = *(v33 - 8);
  v6[52] = v34;
  v35 = *(v34 + 64) + 15;
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v36 = sub_20CCDAF54();
  v6[55] = v36;
  v37 = *(v36 - 8);
  v6[56] = v37;
  v38 = *(v37 + 64) + 15;
  v6[57] = swift_task_alloc();
  v39 = sub_20CCDB504();
  v6[58] = v39;
  v40 = *(v39 - 8);
  v6[59] = v40;
  v41 = *(v40 + 64) + 15;
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v42 = sub_20CCDB4E4();
  v6[65] = v42;
  v43 = *(v42 - 8);
  v6[66] = v43;
  v44 = *(v43 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCB9DDC, 0, 0);
}

uint64_t sub_20CCB9DDC()
{
  v1 = v0[17];
  v2 = v0[13];
  v0[71] = sub_20CCDB1B4();
  v0[72] = v3;

  return MEMORY[0x2822009F8](sub_20CCB9E50, v1, 0);
}

uint64_t sub_20CCB9E50()
{
  v1 = v0[17];
  sub_20CCCB2D0(v0[71], v0[72]);

  return MEMORY[0x2822009F8](sub_20CCB9ECC, 0, 0);
}

uint64_t sub_20CCB9ECC()
{
  v1 = v0[70];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[58];
  v5 = v0[59];
  sub_20CCDB374();
  sub_20CCDB4F4();
  sub_20CCDB4C4();
  v6 = *(v5 + 8);
  v0[73] = v6;
  v0[74] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = v6;
  v6(v2, v4);
  sub_20CCDB374();
  v7 = sub_20CCDB4F4();
  v8 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v9 = v0[70];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v7, v8, v11, "announceUtterance", "", v10, 2u);
    MEMORY[0x20F30FD70](v10, -1, -1);
  }

  v12 = v0[70];
  v13 = v0[69];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[63];
  v17 = v0[58];
  v18 = v0[52];
  v42 = v0[51];
  v39 = v0[54];
  v40 = v0[50];
  v38 = v0[13];

  v19 = *(v14 + 16);
  v0[75] = v19;
  v0[76] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v13, v12, v15);
  v20 = sub_20CCDB544();
  v0[77] = v20;
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[78] = sub_20CCDB534();
  v41(v16, v17);
  v23 = type metadata accessor for AudioSynthesizer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v0[79] = v26;
  swift_defaultActor_initialize();
  *(v26 + 152) = 0;
  *(v26 + 136) = 0u;
  *(v26 + 120) = 0u;
  *(v26 + 160) = 1;
  v27 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder) = 0;
  *(v26 + 112) = [objc_allocWithZone(sub_20CCDA904()) init];
  sub_20CCDB1C4();
  sub_20CCDB034();
  v29 = *(v18 + 8);
  v0[80] = v29;
  v0[81] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v39, v42);
  v30 = swift_task_alloc();
  v0[82] = v30;
  *v30 = v0;
  v30[1] = sub_20CCBA1FC;
  v31 = v0[57];
  v32 = v0[50];
  v33 = v0[16];
  v34 = v0[17];
  v35 = v0[14];
  v36 = v0[15];

  return sub_20CCC2958(v31, v32);
}

uint64_t sub_20CCBA1FC()
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 400);
  v6 = *v1;
  *(*v1 + 664) = v0;

  sub_20CCC56A8(v3, MEMORY[0x277D0A608]);
  if (v0)
  {
    v4 = sub_20CCBCBCC;
  }

  else
  {
    v4 = sub_20CCBA340;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCBA340()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 496);
  v4 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 368);
  v7 = *(v0 + 104);
  *(v0 + 888) = sub_20CCDB1A4() & 1;
  *(v0 + 672) = sub_20CCDB1D4();
  *(v0 + 680) = v8;
  sub_20CCDB1C4();
  sub_20CCDB044();
  v2(v4, v5);
  sub_20CCDB374();
  v9 = sub_20CCDB4F4();
  v10 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v11 = *(v0 + 560);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v9, v10, v13, "audioSynthesis", "", v12, 2u);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = *(v0 + 600);
  v33 = *(v0 + 584);
  v34 = *(v0 + 592);
  v17 = *(v0 + 560);
  v18 = *(v0 + 552);
  v19 = *(v0 + 520);
  v20 = *(v0 + 496);
  v21 = *(v0 + 464);

  v16(v18, v17, v19);
  v22 = *(v14 + 48);
  v23 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 728) = sub_20CCDB534();
  v33(v20, v21);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v24 = sub_20CCDB584();
  *(v0 + 736) = __swift_project_value_buffer(v24, qword_28110EE00);
  v25 = sub_20CCDB564();
  v26 = sub_20CCDB8B4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_20CC86000, v25, v26, "Requesting audio synthesis…", v27, 2u);
    MEMORY[0x20F30FD70](v27, -1, -1);
  }

  v28 = *(v0 + 632);
  v29 = *(v0 + 456);

  *(v0 + 744) = sub_20CCDAF34();
  *(v0 + 752) = v30;
  *(v0 + 760) = sub_20CCDAF44();
  *(v0 + 768) = v31;

  return MEMORY[0x2822009F8](sub_20CCBAD80, v28, 0);
}

uint64_t sub_20CCBA5E4()
{
  v2 = *(*v1 + 696);
  v3 = *(*v1 + 688);
  v6 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v4 = sub_20CCBAB08;
  }

  else
  {
    v4 = sub_20CCBA714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCBA714()
{
  v1 = *(v0 + 104);
  v2 = sub_20CCDB1B4();
  v4 = v3;
  *(v0 + 712) = v3;
  v5 = sub_20CCDB194();
  v6 = swift_task_alloc();
  *(v0 + 720) = v6;
  *v6 = v0;
  v6[1] = sub_20CCBA7FC;
  v7 = *(v0 + 888);
  v8 = *(v0 + 632);
  v9 = *(v0 + 560);
  v10 = *(v0 + 392);
  v11 = *(v0 + 344);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v14 = *(v0 + 112);

  return sub_20CCC0628(v11, v2, v4, v8, v10, v9, v5 & 1, v7);
}

uint64_t sub_20CCBA7FC()
{
  v1 = *(*v0 + 720);
  v2 = *(*v0 + 712);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCBA914, 0, 0);
}

uint64_t sub_20CCBA914()
{
  v1 = v0[78];
  v2 = v0[68];
  v3 = v0[61];
  sub_20CCDB374();
  v4 = sub_20CCDB4F4();
  sub_20CCDB524();
  v5 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v6 = v0[78];
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];

    sub_20CCDB554();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      v10 = "";
    }

    v11 = v0[68];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v4, v5, v13, "announceUtterance", v10, v12, 2u);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  v14 = v0[101];
  v15 = v0[74];
  v16 = v4;
  v17 = v0[73];
  v18 = v0[68];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[61];
  v22 = v0[58];
  v26 = v0[17];
  v23 = v0[13];

  v14(v18, v20);
  v17(v21, v22);
  v0[104] = sub_20CCDB1B4();
  v0[105] = v24;

  return MEMORY[0x2822009F8](sub_20CCBBB68, v26, 0);
}

uint64_t sub_20CCBAB08()
{
  v1 = v0[101];
  v43 = v0[98];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[70];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[56];
  v8 = v0[57];
  v9 = v0[55];
  v10 = v0[49];

  (*(v7 + 8))(v8, v9);
  v1(v4, v6);
  sub_20CCC56A8(v10, type metadata accessor for AudioSynthesisHandle);

  v44 = v0[88];
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[61];
  v18 = v0[62];
  v19 = v0[60];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[46];
  v29 = v0[43];
  v30 = v0[42];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[35];
  v34 = v0[32];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[27];
  v38 = v0[24];
  v39 = v0[21];
  v40 = v0[20];
  v41 = v0[19];
  v42 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CCBAD80()
{
  v24 = *(v0 + 744);
  v25 = *(v0 + 760);
  v22 = *(v0 + 672);
  v1 = *(v0 + 632);
  v23 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v17 = *(v0 + 288);
  v18 = *(v0 + 312);
  v20 = *(v0 + 304);
  v21 = *(v0 + 280);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  sub_20CCDAA94();
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v7);
  sub_20CCDB804();
  (*(v5 + 8))(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v8 = sub_20CCDB464();
  *(v0 + 776) = v8;
  sub_20CCDB774();
  v9 = sub_20CCDB794();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  (*(v3 + 16))(v18, v2, v17);
  v19 = sub_20CCC5E3C(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v1;
  *(v11 + 3) = v19;
  *(v11 + 4) = v1;
  (*(v3 + 32))(&v11[v10], v18, v17);
  *&v11[(v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v6, &unk_20CCDD4F8, v11);

  v12 = swift_task_alloc();
  *(v0 + 784) = v12;
  *(v12 + 16) = v1;
  *(v12 + 24) = v21;
  *(v12 + 32) = v22;
  *(v12 + 48) = v24;
  *(v12 + 64) = v25;
  *(v12 + 80) = v23;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 792) = v14;
  type metadata accessor for AudioStreamBasicDescription(0);
  *v14 = v0;
  v14[1] = sub_20CCBB0CC;

  return MEMORY[0x2822008A0](v0 + 16, v1, v19, 0xD000000000000038, 0x800000020CCDE630, sub_20CCC4CF8, v12, v15);
}

uint64_t sub_20CCBB0CC()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v11 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v4 = v2[98];
    v5 = v2[96];
    v6 = v2[94];
    v7 = v2[79];

    v8 = sub_20CCBB6A4;
    v9 = v7;
  }

  else
  {
    v9 = v2[79];
    v8 = sub_20CCBB214;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_20CCBB214()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 680);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v12 = *(v0 + 352);
  v22 = *(v0 + 320);
  v23 = *(v0 + 672);
  v13 = *(v0 + 296);
  v21 = *(v0 + 288);
  v14 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 280);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 48);
  v15 = v8 + v9[6];
  sub_20CCDAF24();
  (*(v11 + 16))(v8 + v9[7], v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v16 = sub_20CCD9DE8(v2);

  (*(v13 + 8))(v22, v21);
  *(v8 + v9[8]) = v16;
  *(v8 + 40) = v23;
  *(v8 + 48) = v7;
  v17 = *(v0 + 56);
  v18 = *(v0 + 72);
  *(v8 + 32) = *(v0 + 88);
  *v8 = v17;
  *(v8 + 16) = v18;
  v19 = *(v14 + 8);

  v19(v25, v24);

  return MEMORY[0x2822009F8](sub_20CCBB3A4, 0, 0);
}

uint64_t sub_20CCBB3A4()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 536);
  v3 = *(v0 + 480);
  sub_20CCDB374();
  v4 = sub_20CCDB4F4();
  sub_20CCDB524();
  v5 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v6 = *(v0 + 728);
    v7 = *(v0 + 224);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);

    sub_20CCDB554();

    if ((*(v9 + 88))(v7, v8) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
      v10 = "";
    }

    v11 = *(v0 + 536);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v4, v5, v13, "audioSynthesis", v10, v12, 2u);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  v14 = *(v0 + 888);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 520);
  v20 = *(v0 + 480);
  v21 = *(v0 + 464);

  v22 = *(v18 + 8);
  *(v0 + 808) = v22;
  v22(v17, v19);
  v16(v20, v21);
  if (v14 == 1)
  {
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 176);
    v26 = *(v0 + 120);
    sub_20CCDA774();
    *(v0 + 816) = sub_20CCDA754();
    *(v0 + 824) = v27;
    (*(v24 + 8))(v23, v25);

    return MEMORY[0x2822009F8](sub_20CCBB9DC, v26, 0);
  }

  else
  {
    v28 = *(v0 + 728);

    v29 = *(v0 + 680);
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(v0 + 352);
    v33 = *(v0 + 104);
    sub_20CCC5BD0(*(v0 + 384), *(v0 + 392), type metadata accessor for AudioSynthesisHandle);
    (*(v31 + 8))(v30, v32);

    v34 = sub_20CCDB1B4();
    v36 = v35;
    *(v0 + 688) = v35;
    v37 = swift_task_alloc();
    *(v0 + 696) = v37;
    *v37 = v0;
    v37[1] = sub_20CCBA5E4;
    v38 = *(v0 + 136);

    return sub_20CCC4CFC(v34, v36, v38);
  }
}