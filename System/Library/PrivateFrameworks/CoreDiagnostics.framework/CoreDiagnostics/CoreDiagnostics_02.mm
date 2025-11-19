uint64_t sub_1D98362A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D70, &qword_1D984ED70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v56 = 1;
  v54 = 1;
  v53 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839200();
  sub_1D984A6F4();
  if (v2)
  {
    v57 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v41 = 0;
    v42 = v56;
    *v43 = *v55;
    *&v43[3] = *&v55[3];
    v44 = 0uLL;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v54;
    v49 = 0;
    v50 = v53;
    v51 = 0;
    v52 = 0;
    return sub_1D98382A8(&v41);
  }

  else
  {
    LOBYTE(v41) = 0;
    v34 = sub_1D984A4A4();
    v56 = v12 & 1;
    LOBYTE(v41) = 1;
    *&v33 = sub_1D984A444();
    *(&v33 + 1) = v13;
    v32 = a2;
    LOBYTE(v41) = 2;
    v14 = sub_1D984A444();
    v16 = v15;
    LOBYTE(v41) = 3;
    v17 = sub_1D984A494();
    v18 = v17;
    v54 = BYTE4(v17) & 1;
    LOBYTE(v41) = 4;
    v19 = sub_1D984A474();
    v20 = v19;
    v53 = HIBYTE(v19) & 1;
    v40 = 5;
    v21 = sub_1D984A444();
    v57 = 0;
    v22 = v21;
    v23 = v9;
    v25 = v24;
    (*(v6 + 8))(v23, v5);
    *&v35 = v34;
    HIDWORD(v31) = v56;
    BYTE8(v35) = v56;
    v36 = v33;
    *&v37 = v14;
    *(&v37 + 1) = v16;
    LODWORD(v38) = v18;
    v26 = v54;
    BYTE4(v38) = v54;
    BYTE5(v38) = v20;
    v27 = v53;
    BYTE6(v38) = v53;
    *(&v38 + 1) = v22;
    v39 = v25;
    sub_1D9838270(&v35, &v41);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v41 = v34;
    v42 = BYTE4(v31);
    v44 = v33;
    v45 = v14;
    v46 = v16;
    v47 = v18;
    v48 = v26;
    v49 = v20;
    v50 = v27;
    v51 = v22;
    v52 = v25;
    result = sub_1D98382A8(&v41);
    v28 = v38;
    v29 = v32;
    *(v32 + 32) = v37;
    *(v29 + 48) = v28;
    *(v29 + 64) = v39;
    v30 = v36;
    *v29 = v35;
    *(v29 + 16) = v30;
  }

  return result;
}

uint64_t sub_1D983673C()
{
  v0 = sub_1D984A414();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9836788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D20, &qword_1D984ED58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F54();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v29 = 0;
    sub_1D98245F8(&qword_1ECB419A8);
    sub_1D984A4D4();
    v11 = v23;
    LOBYTE(v23) = 1;
    v12 = sub_1D984A4A4();
    v28 = v13;
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D30, &qword_1D984ED60);
    v29 = 2;
    sub_1D9838FA8();
    sub_1D984A464();
    v14 = v23;
    v29 = 3;
    sub_1D9839080();
    sub_1D984A464();
    (*(v6 + 8))(v9, v5);
    v15 = v23;
    v21 = v25;
    v16 = v24;
    v17 = v27;
    v18 = v26;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v20 = v22;
    *a2 = v11;
    *(a2 + 8) = v20;
    *(a2 + 16) = v28 & 1;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 46) = v18;
    *(a2 + 44) = v21;
    *(a2 + 40) = v16;
    *(a2 + 47) = v17;
  }

  return result;
}

uint64_t sub_1D9836ABC()
{
  v0 = sub_1D984A414();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9836B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41CB8, &qword_1D984ED30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - v8;
  v123 = 1;
  v121 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D9838970();
  sub_1D984A6F4();
  if (v2)
  {
    v124 = v2;
    v76 = 0;
    v77 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0uLL;
    v74 = 0;
    v75 = 0uLL;
    v69 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v70 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v19 = MEMORY[0x1E69E7CC0];
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    *&v101 = v18;
    *(&v101 + 1) = v17;
    *&v102 = v16;
    *(&v102 + 1) = v15;
    *&v103 = v14;
    *(&v103 + 1) = v13;
    v104 = v12;
    v105 = v69;
    v106 = v75;
    v107 = v73;
    v108 = v74;
    v109 = v72;
    v110 = v70;
    v111 = v71;
    v112 = v77;
    v113 = v76;
    v114 = v19;
    v115 = 0;
    v116 = v123;
    *v117 = *v122;
    *&v117[3] = *&v122[3];
    v118 = 0;
    memset(v119, 0, sizeof(v119));
    v120 = v121;
    return sub_1D9838204(&v101);
  }

  LOBYTE(v101) = 0;
  *&v67 = sub_1D984A444();
  *(&v67 + 1) = v21;
  LOBYTE(v101) = 1;
  *&v66 = sub_1D984A444();
  *(&v66 + 1) = v22;
  LOBYTE(v101) = 2;
  *&v65 = sub_1D984A444();
  *(&v65 + 1) = v23;
  LOBYTE(v101) = 3;
  v64 = sub_1D984A444();
  v69 = v24;
  LOBYTE(v101) = 4;
  v25 = sub_1D984A444();
  v124 = 0;
  *&v75 = v25;
  *(&v75 + 1) = v26;
  LOBYTE(v78) = 5;
  sub_1D9838C54();
  v27 = v124;
  sub_1D984A464();
  v124 = v27;
  if (v27)
  {
    (*(v6 + 8))(v9, v5);
    v77 = 0;
    *(&v70 + 1) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0uLL;
    v74 = 0;
LABEL_11:
    v76 = 0;
    *&v70 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v17 = *(&v67 + 1);
    v18 = v67;
    v15 = *(&v66 + 1);
    v16 = v66;
    v13 = *(&v65 + 1);
    v14 = v65;
    v12 = v64;
    goto LABEL_4;
  }

  v63 = a2;
  v28 = v101;
  v29 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C80, &qword_1D984ED20);
  LOBYTE(v78) = 6;
  sub_1D9838CA8();
  v30 = v124;
  sub_1D984A464();
  v124 = v30;
  v74 = v29;
  v73 = v28;
  if (v30)
  {
    (*(v6 + 8))(v9, v5);
    v77 = 0;
    *(&v70 + 1) = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_11;
  }

  v31 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C98, &qword_1D984ED28);
  LOBYTE(v78) = 7;
  sub_1D9838D80();
  v32 = v124;
  sub_1D984A4D4();
  v72 = v31;
  if (v32)
  {
    v124 = v32;
    (*(v6 + 8))(v9, v5);
    v77 = 0;
    *(&v70 + 1) = 0;
    v71 = 0;
    goto LABEL_11;
  }

  *&v70 = v101;
  LOBYTE(v101) = 8;
  v33 = sub_1D984A444();
  v124 = 0;
  *(&v70 + 1) = v33;
  v71 = v34;
  LOBYTE(v101) = 9;
  v35 = sub_1D984A444();
  v76 = v36;
  v77 = v35;
  v124 = 0;
  v91 = 10;
  sub_1D9838E58();
  v37 = v124;
  sub_1D984A4D4();
  v124 = v37;
  if (v37)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_12;
  }

  (*(v6 + 8))(v9, v5);
  v60 = v93;
  v61 = v92;
  v38 = v94;
  v39 = v95;
  v62 = v96;
  v40 = v98 | (v99 << 16);
  v58 = v97;
  v59 = v95;
  v41 = v100;

  v123 = v38;
  v121 = v41;
  v42 = v67;
  v78 = v67;
  v43 = v66;
  v79 = v66;
  v44 = v65;
  v80 = v65;
  v45 = v69;
  *&v81 = v64;
  *(&v81 + 1) = v69;
  v82 = v75;
  v83 = v73;
  *&v84 = v74;
  *(&v84 + 1) = v72;
  v85 = v70;
  *&v86 = v71;
  *(&v86 + 1) = v77;
  *&v87 = v76;
  *(&v87 + 1) = v61;
  *&v88 = v60;
  v55 = v38;
  BYTE8(v88) = v38;
  *&v89 = v39;
  *(&v89 + 1) = v62;
  v57 = HIWORD(v40);
  BYTE6(v90) = BYTE2(v40);
  v56 = v40;
  WORD2(v90) = v40;
  v46 = v58;
  LODWORD(v90) = v58;
  HIBYTE(v90) = v41;
  sub_1D98381CC(&v78, &v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  v101 = v42;
  v102 = __PAIR128__(*(&v66 + 1), v43);
  v103 = v44;
  v104 = v64;
  v105 = v45;
  v106 = v75;
  v107 = v73;
  v108 = v74;
  v109 = v72;
  v110 = v70;
  v111 = v71;
  v112 = v77;
  v113 = v76;
  v114 = v61;
  v115 = v60;
  v116 = v55;
  *v117 = *v122;
  *&v117[3] = *&v122[3];
  v118 = v59;
  *v119 = v62;
  v119[14] = v57;
  *&v119[12] = v56;
  *&v119[8] = v46;
  v120 = v41;
  result = sub_1D9838204(&v101);
  v47 = v89;
  v48 = v63;
  *(v63 + 160) = v88;
  *(v48 + 176) = v47;
  *(v48 + 192) = v90;
  v49 = v85;
  *(v48 + 96) = v84;
  *(v48 + 112) = v49;
  v50 = v87;
  *(v48 + 128) = v86;
  *(v48 + 144) = v50;
  v51 = v81;
  *(v48 + 32) = v80;
  *(v48 + 48) = v51;
  v52 = v83;
  *(v48 + 64) = v82;
  *(v48 + 80) = v52;
  v53 = v79;
  *v48 = v78;
  *(v48 + 16) = v53;
  return result;
}

uint64_t sub_1D98373C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B70, &unk_1D984E760);
  v95 = *(v4 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  sub_1D98380D4(v93);
  v90 = v93[10];
  v91 = v93[11];
  v92 = v94;
  v86 = v93[6];
  v87 = v93[7];
  v89 = v93[9];
  v88 = v93[8];
  v82 = v93[2];
  v83 = v93[3];
  v85 = v93[5];
  v84 = v93[4];
  v81 = v93[1];
  v80 = v93[0];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D983802C();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v65 = 0;
    v66 = 0;
    v77 = v90;
    v78 = v91;
    v79 = v92;
    v73 = v86;
    v74 = v87;
    v75 = v88;
    v76 = v89;
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v72 = v85;
    v67 = v80;
    v68 = v81;
    return sub_1D98380F8(&v65);
  }

  else
  {
    LOBYTE(v65) = 0;
    v9 = sub_1D984A444();
    v11 = v10;
    v51 = 1;
    sub_1D9838128();
    sub_1D984A464();
    (*(v95 + 8))(v7, v4);
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    v31 = v61;
    v24 = v54;
    v25 = v55;
    v26 = v56;
    v27 = v57;
    v22 = v52;
    v23 = v53;
    v35[10] = v90;
    v35[11] = v91;
    v36 = v92;
    v35[6] = v86;
    v35[7] = v87;
    v35[8] = v88;
    v35[9] = v89;
    v35[2] = v82;
    v35[3] = v83;
    v35[4] = v84;
    v35[5] = v85;
    v35[0] = v80;
    v35[1] = v81;
    sub_1D981A4E8(v35, &qword_1ECB41B60, &qword_1D984E758);
    *&v37 = v9;
    *(&v37 + 1) = v11;
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v43 = v27;
    v38 = v22;
    v39 = v23;
    sub_1D983817C(&v37, &v65);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v65 = v9;
    v66 = v11;
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v73 = v28;
    v74 = v29;
    v75 = v30;
    v76 = v31;
    v69 = v24;
    v70 = v25;
    v71 = v26;
    v72 = v27;
    v67 = v22;
    v68 = v23;
    result = sub_1D98380F8(&v65);
    v13 = v48;
    v14 = v21;
    *(v21 + 160) = v47;
    *(v14 + 176) = v13;
    *(v14 + 192) = v49;
    *(v14 + 208) = v50;
    v15 = v44;
    *(v14 + 96) = v43;
    *(v14 + 112) = v15;
    v16 = v46;
    *(v14 + 128) = v45;
    *(v14 + 144) = v16;
    v17 = v40;
    *(v14 + 32) = v39;
    *(v14 + 48) = v17;
    v18 = v42;
    *(v14 + 64) = v41;
    *(v14 + 80) = v18;
    v19 = v38;
    *v14 = v37;
    *(v14 + 16) = v19;
  }

  return result;
}

uint64_t sub_1D98377E4()
{
  v0 = sub_1D984A614();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9837838(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 56);
    do
    {
      if (*(a2 + 16))
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v8 = *(v4 - 1);
        v7 = *v4;

        v9 = sub_1D98447E4(v5, v6);
        if (v10)
        {
          sub_1D981B108(*(a2 + 56) + 32 * v9, v11);
          sub_1D982799C(v11, v12);
          sub_1D982E48C(v12, v8, v7);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
        }
      }

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t _sSo22AirPodsCrashReportObjcC15CoreDiagnosticsE08generateD010withBinary8testMode9productId15applicationInfo11description10Foundation4DataVSgSDySSALG_Sbs6UInt32VSDyS2SGSgSSSgtFZ_0(uint64_t a1, char a2, int a3, unint64_t a4)
{

  AirPodsCrashReport.init(crashBinaryChunks:testMode:productId:applicationInfo:description:)(a1, a2, a3, a4, v14);
  v15[10] = v14[10];
  v15[11] = v14[11];
  v15[12] = v14[12];
  v15[13] = v14[13];
  v15[6] = v14[6];
  v15[7] = v14[7];
  v15[8] = v14[8];
  v15[9] = v14[9];
  v15[2] = v14[2];
  v15[3] = v14[3];
  v15[4] = v14[4];
  v15[5] = v14[5];
  v15[0] = v14[0];
  v15[1] = v14[1];
  if (sub_1D98381B4(v15) == 1)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D9849C54();
    __swift_project_value_buffer(v8, qword_1ECB47658);
    v9 = sub_1D9849C24();
    v10 = sub_1D984A124();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D97FA000, v9, v10, "Failed to create AirPods crash report", v11, 2u);
      MEMORY[0x1DA738F10](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = AirPodsCrashReport.saveReport()();
    sub_1D981A4E8(v14, &qword_1ECB41BC0, &qword_1D984E7C0);
    return v13;
  }
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

uint64_t sub_1D9837B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1D9837B98(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t type metadata accessor for AirPodsCrashReportObjc()
{
  result = qword_1ECB41B30;
  if (!qword_1ECB41B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB41B30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15CoreDiagnostics13CallStackInfo33_4B94F3FA0C0522D6805C0C914AB57E4FLLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15CoreDiagnostics16AirPodsCrashInfo33_4B94F3FA0C0522D6805C0C914AB57E4FLLVSg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D9837CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
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

uint64_t sub_1D9837D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsCrashReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsCrashReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9837F28()
{
  result = qword_1ECB41B38;
  if (!qword_1ECB41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B38);
  }

  return result;
}

unint64_t sub_1D9837F80()
{
  result = qword_1ECB41B40;
  if (!qword_1ECB41B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B40);
  }

  return result;
}

unint64_t sub_1D9837FD8()
{
  result = qword_1ECB41B48;
  if (!qword_1ECB41B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B48);
  }

  return result;
}

unint64_t sub_1D983802C()
{
  result = qword_1ECB41B58;
  if (!qword_1ECB41B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B58);
  }

  return result;
}

unint64_t sub_1D9838080()
{
  result = qword_1ECB41B68;
  if (!qword_1ECB41B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B68);
  }

  return result;
}

double sub_1D98380D4(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D9838128()
{
  result = qword_1ECB41B78;
  if (!qword_1ECB41B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B78);
  }

  return result;
}

uint64_t sub_1D98381B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D983830C()
{
  result = qword_1ECB41C30;
  if (!qword_1ECB41C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C30);
  }

  return result;
}

unint64_t sub_1D9838360()
{
  result = qword_1ECB41C38;
  if (!qword_1ECB41C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C38);
  }

  return result;
}

uint64_t sub_1D98383B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D9838420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D983847C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D9838500(uint64_t *a1, int a2)
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

uint64_t sub_1D9838548(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D98385C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1D9838624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

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

uint64_t sub_1D98386B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98386FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D98387A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98387E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D983886C()
{
  result = qword_1ECB41C50;
  if (!qword_1ECB41C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C50);
  }

  return result;
}

unint64_t sub_1D98388C4()
{
  result = qword_1ECB41C58;
  if (!qword_1ECB41C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C58);
  }

  return result;
}

unint64_t sub_1D983891C()
{
  result = qword_1ECB41C60;
  if (!qword_1ECB41C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C60);
  }

  return result;
}

unint64_t sub_1D9838970()
{
  result = qword_1ECB41C70;
  if (!qword_1ECB41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C70);
  }

  return result;
}

unint64_t sub_1D98389C4()
{
  result = qword_1ECB41C78;
  if (!qword_1ECB41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C78);
  }

  return result;
}

unint64_t sub_1D9838A18()
{
  result = qword_1ECB41C88;
  if (!qword_1ECB41C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C88);
  }

  return result;
}

unint64_t sub_1D9838A9C()
{
  result = qword_1ECB41C90;
  if (!qword_1ECB41C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C90);
  }

  return result;
}

unint64_t sub_1D9838AF0()
{
  result = qword_1ECB41CA0;
  if (!qword_1ECB41CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CA0);
  }

  return result;
}

unint64_t sub_1D9838B74()
{
  result = qword_1ECB41CA8;
  if (!qword_1ECB41CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CA8);
  }

  return result;
}

unint64_t sub_1D9838C00()
{
  result = qword_1ECB41CB0;
  if (!qword_1ECB41CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CB0);
  }

  return result;
}

unint64_t sub_1D9838C54()
{
  result = qword_1ECB41CC0;
  if (!qword_1ECB41CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CC0);
  }

  return result;
}

unint64_t sub_1D9838CA8()
{
  result = qword_1ECB41CC8;
  if (!qword_1ECB41CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CC8);
  }

  return result;
}

unint64_t sub_1D9838D2C()
{
  result = qword_1ECB41CD0;
  if (!qword_1ECB41CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CD0);
  }

  return result;
}

unint64_t sub_1D9838D80()
{
  result = qword_1ECB41CD8;
  if (!qword_1ECB41CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CD8);
  }

  return result;
}

unint64_t sub_1D9838E04()
{
  result = qword_1ECB41CE0;
  if (!qword_1ECB41CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CE0);
  }

  return result;
}

unint64_t sub_1D9838E58()
{
  result = qword_1ECB41CE8;
  if (!qword_1ECB41CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CE8);
  }

  return result;
}

unint64_t sub_1D9838EAC()
{
  result = qword_1ECB41CF8;
  if (!qword_1ECB41CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CF8);
  }

  return result;
}

unint64_t sub_1D9838F00()
{
  result = qword_1ECB41D10;
  if (!qword_1ECB41D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D10);
  }

  return result;
}

unint64_t sub_1D9838F54()
{
  result = qword_1ECB41D28;
  if (!qword_1ECB41D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D28);
  }

  return result;
}

unint64_t sub_1D9838FA8()
{
  result = qword_1ECB41D38;
  if (!qword_1ECB41D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D983902C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D38);
  }

  return result;
}

unint64_t sub_1D983902C()
{
  result = qword_1ECB41D40;
  if (!qword_1ECB41D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D40);
  }

  return result;
}

unint64_t sub_1D9839080()
{
  result = qword_1ECB41D48;
  if (!qword_1ECB41D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D48);
  }

  return result;
}

unint64_t sub_1D98390D4()
{
  result = qword_1ECB41D58;
  if (!qword_1ECB41D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D9839158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D58);
  }

  return result;
}

unint64_t sub_1D9839158()
{
  result = qword_1ECB41D60;
  if (!qword_1ECB41D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D60);
  }

  return result;
}

unint64_t sub_1D98391AC()
{
  result = qword_1ECB41D68;
  if (!qword_1ECB41D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D68);
  }

  return result;
}

unint64_t sub_1D9839200()
{
  result = qword_1ECB41D78;
  if (!qword_1ECB41D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScenarioInfo.EventInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScenarioInfo.EventInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsCrashInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsCrashInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_memcpy15_2(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ScenarioInfo.RoutedToSourceInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScenarioInfo.RoutedToSourceInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 15) = v3;
  return result;
}

uint64_t sub_1D983959C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D98395E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D9839638()
{
  result = qword_1ECB41D88;
  if (!qword_1ECB41D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D88);
  }

  return result;
}

unint64_t sub_1D9839690()
{
  result = qword_1ECB41D90;
  if (!qword_1ECB41D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D90);
  }

  return result;
}

unint64_t sub_1D98396E8()
{
  result = qword_1ECB41D98;
  if (!qword_1ECB41D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D98);
  }

  return result;
}

unint64_t sub_1D9839740()
{
  result = qword_1ECB41DA0;
  if (!qword_1ECB41DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DA0);
  }

  return result;
}

unint64_t sub_1D9839798()
{
  result = qword_1ECB41DA8;
  if (!qword_1ECB41DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DA8);
  }

  return result;
}

unint64_t sub_1D98397F0()
{
  result = qword_1ECB41DB0;
  if (!qword_1ECB41DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DB0);
  }

  return result;
}

unint64_t sub_1D9839848()
{
  result = qword_1ECB41DB8;
  if (!qword_1ECB41DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DB8);
  }

  return result;
}

unint64_t sub_1D98398A0()
{
  result = qword_1ECB41DC0;
  if (!qword_1ECB41DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DC0);
  }

  return result;
}

unint64_t sub_1D98398F8()
{
  result = qword_1ECB41DC8;
  if (!qword_1ECB41DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DC8);
  }

  return result;
}

unint64_t sub_1D9839950()
{
  result = qword_1ECB41DD0;
  if (!qword_1ECB41DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DD0);
  }

  return result;
}

unint64_t sub_1D98399A8()
{
  result = qword_1ECB41DD8;
  if (!qword_1ECB41DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DD8);
  }

  return result;
}

unint64_t sub_1D9839A00()
{
  result = qword_1ECB41DE0;
  if (!qword_1ECB41DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DE0);
  }

  return result;
}

unint64_t sub_1D9839A58()
{
  result = qword_1ECB41DE8;
  if (!qword_1ECB41DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DE8);
  }

  return result;
}

unint64_t sub_1D9839AB0()
{
  result = qword_1ECB41DF0;
  if (!qword_1ECB41DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DF0);
  }

  return result;
}

unint64_t sub_1D9839B08()
{
  result = qword_1ECB41DF8;
  if (!qword_1ECB41DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DF8);
  }

  return result;
}

unint64_t sub_1D9839B5C()
{
  result = qword_1ECB41E08;
  if (!qword_1ECB41E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E08);
  }

  return result;
}

unint64_t sub_1D9839BB0()
{
  result = qword_1ECB41E20;
  if (!qword_1ECB41E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E20);
  }

  return result;
}

unint64_t sub_1D9839C28()
{
  result = qword_1ECB41E30;
  if (!qword_1ECB41E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E30);
  }

  return result;
}

unint64_t sub_1D9839C80()
{
  result = qword_1ECB41E38;
  if (!qword_1ECB41E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E38);
  }

  return result;
}

unint64_t sub_1D9839CD8()
{
  result = qword_1ECB41E40;
  if (!qword_1ECB41E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E40);
  }

  return result;
}

unint64_t sub_1D9839D30()
{
  result = qword_1ECB41E48;
  if (!qword_1ECB41E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E48);
  }

  return result;
}

unint64_t sub_1D9839D88()
{
  result = qword_1ECB41E50;
  if (!qword_1ECB41E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E50);
  }

  return result;
}

unint64_t sub_1D9839DE0()
{
  result = qword_1ECB41E58;
  if (!qword_1ECB41E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E58);
  }

  return result;
}

unint64_t sub_1D9839E50()
{
  if (*v0)
  {
    result = 0xD000000000000027;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

unint64_t sub_1D9839EEC()
{
  result = qword_1ECB41E60;
  if (!qword_1ECB41E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E60);
  }

  return result;
}

uint64_t sub_1D9839F40()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB41E68);
  __swift_project_value_buffer(v0, qword_1ECB41E68);
  return sub_1D9849C34();
}

id TextualRepresentationBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextualRepresentationBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextualRepresentationBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextualRepresentationBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextualRepresentationBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D983A160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v5 = *(a1 + 32);
    v3 = (a1 + 32);
    v4 = v5;
    v6 = 0xF800000000000000;
    do
    {
      v7 = *v3++;
      if (v7 != v4)
      {
        if (v6 >> 60 == 15)
        {
          sub_1D984A354();

          v15 = sub_1D984A5D4();
          MEMORY[0x1DA737B20](v15);

          MEMORY[0x1DA737B20](0x736574796220, 0xE600000000000000);
          return 0xD000000000000017;
        }

        __break(1u);
        goto LABEL_17;
      }

      ++v6;
      v2 += 16;
      --v1;
    }

    while (v1);
    if (qword_1ECB415E0 == -1)
    {
      goto LABEL_6;
    }

LABEL_17:
    swift_once();
LABEL_6:
    v8 = sub_1D9849C54();
    __swift_project_value_buffer(v8, qword_1ECB41E68);
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Unable to determine malloc size class for uniform MTE tags";
  }

  else
  {
    if (qword_1ECB415E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9849C54();
    __swift_project_value_buffer(v13, qword_1ECB41E68);
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Unable to determine malloc size class for empty MTE tags";
  }

  _os_log_impl(&dword_1D97FA000, v9, v10, v12, v11, 2u);
  MEMORY[0x1DA738F10](v11, -1, -1);
LABEL_13:

  return 0;
}

uint64_t sub_1D983A3A0(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C20, &qword_1D984E828);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E76D8];
  *(v4 + 16) = xmmword_1D984E260;
  v6 = MEMORY[0x1E69E7738];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a2;
  v7 = sub_1D9849E14();
  result = sub_1D9849E94();
  if (__OFSUB__(32, result))
  {
    goto LABEL_40;
  }

  v9 = sub_1D9849F54();
  v11 = v10;
  MEMORY[0x1DA737B20](2099770, 0xE300000000000000);
  MEMORY[0x1DA737B20](0x756C615620676154, 0xEA00000000007365);
  MEMORY[0x1DA737B20](v9, v11);

  MEMORY[0x1DA737B20](32, 0xE100000000000000);
  MEMORY[0x1DA737B20](0xD00000000000001BLL, 0x80000001D98543F0);
  MEMORY[0x1DA737B20](10, 0xE100000000000000);
  result = v7;
  v34 = *(a1 + 16);
  if (v34)
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 & 0xFFFFFFFFFFFFC000;
    v33 = a1 + 32;
    v15 = a2 & 0xFFFFFFFFFFFFC000;
    while (1)
    {
      if (v13 == 0x800000000000000)
      {
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
        return result;
      }

      v16 = v14 + v12;
      if (__CFADD__(v14, v12))
      {
        goto LABEL_35;
      }

      v17 = *(v33 + 8 * v13);
      v18 = v16 + 16;
      if (v16 <= a2)
      {
        if (v16 >= 0xFFFFFFFFFFFFFFF0)
        {
          goto LABEL_37;
        }

        v19 = v18 > a2;
      }

      else
      {
        v19 = 0;
      }

      if (~(a2 & 0xFFFFFFFFFFFFC000) >> 4 == v13)
      {
        goto LABEL_36;
      }

      if (v18 > a2)
      {
        break;
      }

      v26 = __CFADD__(v16, 32);
      v27 = v16 + 32;
      if (v26)
      {
        goto LABEL_38;
      }

      v20 = v27 <= a2;
      v21 = v13 & 0xF;
      if ((v13 & 0xF) == 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D984E260;
      *(v23 + 56) = MEMORY[0x1E69E6530];
      *(v23 + 64) = MEMORY[0x1E69E65A8];
      *(v23 + 32) = v17;
      v24 = sub_1D9849E14();
      MEMORY[0x1DA737B20](v24);

      if (v19)
      {
        v25 = 93;
      }

      else
      {
        v28 = v21 == 15 || v20;
        if ((v28 & 1) == 0)
        {
          result = MEMORY[0x1DA737B20](91, 0xE100000000000000);
          goto LABEL_5;
        }

        v25 = 32;
      }

      result = MEMORY[0x1DA737B20](v25, 0xE100000000000000);
      if (v21 == 15)
      {
        if (v15 >= 0xFFFFFFFFFFFFFF00)
        {
          goto LABEL_39;
        }

        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D984F880;
        v30 = MEMORY[0x1E69E76D8];
        *(v29 + 56) = MEMORY[0x1E69E76D8];
        v31 = MEMORY[0x1E69E7738];
        *(v29 + 64) = MEMORY[0x1E69E7738];
        *(v29 + 72) = v15 + 256;
        *(v29 + 32) = v15;
        *(v29 + 96) = v30;
        *(v29 + 104) = v31;
        v32 = sub_1D9849E14();
        MEMORY[0x1DA737B20](v32);

        v15 += 256;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v34 == v13)
      {
        return v7;
      }
    }

    v20 = 1;
    v21 = v13 & 0xF;
    if ((v13 & 0xF) != 0)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v19)
    {
      v22 = 91;
    }

    else
    {
      v22 = 32;
    }

    MEMORY[0x1DA737B20](v22, 0xE100000000000000);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D983A748(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) || (v4 = sub_1D98447E4(0x6F69747065637865, 0xE90000000000006ELL), (v5 & 1) == 0) || (v6 = *(*(a2 + 56) + 8 * v4), ([v6 respondsToSelector_] & 1) == 0))
  {
    v25 = 0uLL;
    *&v26 = 0;
    *(&v26 + 1) = 1;
    goto LABEL_8;
  }

  *&v23 = 0x7365646F43776172;
  *(&v23 + 1) = 0xE800000000000000;
  swift_unknownObjectRetain();
  v7 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_17;
  }

  sub_1D984A284();
  swift_unknownObjectRelease();
  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1) == 1)
  {
LABEL_8:
    v8 = &unk_1ECB41E80;
    v9 = &unk_1D984F8C0;
    v10 = &v25;
LABEL_9:
    sub_1D981A4E8(v10, v8, v9);
LABEL_10:
    if (qword_1ECB415E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB41E68);
    v12 = sub_1D9849C24();
    v13 = sub_1D984A134();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D97FA000, v12, v13, "Report has missing or malformed exception codes.", v14, 2u);
      MEMORY[0x1DA738F10](v14, -1, -1);
    }

    return 0;
  }

LABEL_17:
  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    v8 = &qword_1ECB41A98;
    v9 = &qword_1D984E370;
    v10 = v27;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E88, qword_1D984F8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (MEMORY[0x7365646F43776182] < 2uLL)
  {

    goto LABEL_10;
  }

  v16 = MEMORY[0x7365646F4377619A];

  v17 = sub_1D983A160(a1);
  v19 = v18;
  result = sub_1D983A3A0(a1, v16);
  if (v19)
  {
    v21 = result;
    v22 = v20;
    MEMORY[0x1DA737B20](10, 0xE100000000000000);
    MEMORY[0x1DA737B20](v21, v22);

    return v17;
  }

  return result;
}

uint64_t sub_1D983AA70(void *a1)
{
  v2 = sub_1D9849C54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9849C44();
  v7 = a1;
  v8 = sub_1D9849C24();
  v9 = sub_1D984A124();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D97FA000, v8, v9, "Error connecting to remote object: %@", v10, 0xCu);
    sub_1D983AE10(v11);
    MEMORY[0x1DA738F10](v11, -1, -1);
    MEMORY[0x1DA738F10](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1D983AC08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D983AC78(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D983ACB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id CompatibilityBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompatibilityBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompatibilityBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CompatibilityBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompatibilityBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D983AE10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41628, &qword_1D984E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D983AE7C(void *a1)
{
  sub_1D983B278();
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    type metadata accessor for Pattern();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D983AF10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = v6 + 16;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v6 + 8) & ~v8) + ((*(*(*(a3 + 16) - 8) + 64) + (v9 & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    v19 = a1 + v8 + 8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v9 + (v19 & ~v8)) & ~v6);
    }

    v20 = *((v19 & ~v8) + 8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

_BYTE *sub_1D983B074(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = v8 | 7;
  v10 = ((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -32)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v19 = (&result[v9 + 8] & ~v9);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v19 + v8 + 16) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v19 = a2 & 0x7FFFFFFF;
        *((&result[v9 + 8] & ~v9) + 8) = 0;
      }

      else
      {
        *((&result[v9 + 8] & ~v9) + 8) = a2 - 1;
      }

      return result;
    }
  }

  if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -32)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != -32)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, v10);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_1D983B278()
{
  if (!qword_1EDCFE560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41EA0, qword_1D984F948);
    v0 = sub_1D984A1F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCFE560);
    }
  }
}

uint64_t sub_1D983B2F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D983B374(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1D983B4BC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1D983B68C()
{
  v0 = sub_1D984A414();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D983B6DC(char a1)
{
  if (!a1)
  {
    return 0x736E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x6E726574746170;
  }

  return 0x7274656D656C6574;
}

uint64_t sub_1D983B740(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v19[1] = *(a2 + 24);
  v19[2] = v4;
  v19[0] = v5;
  type metadata accessor for Payload.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D984A5B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v19[3];
  sub_1D984A704();
  v23 = *v12;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41EA0, qword_1D984F948);
  sub_1D983CB00(qword_1ECB41EA8);
  v13 = v19[4];
  sub_1D984A534();
  if (!v13)
  {
    v14 = *(a2 + 44);
    v21 = 1;
    type metadata accessor for Pattern();
    swift_getWitnessTable();
    sub_1D984A5A4();
    v15 = (v12 + *(a2 + 48));
    v16 = *v15;
    v17 = v15[1];
    v20 = 2;
    sub_1D984A584();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D983B99C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Pattern();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v5;
  type metadata accessor for Payload.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_1D984A4F4();
  v32 = *(v36 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Payload();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v8;
  v14 = v38;
  sub_1D984A6F4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v32;
  v16 = v33;
  v29 = v12;
  v38 = a1;
  v18 = v34;
  v17 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41EA0, qword_1D984F948);
  v41 = 0;
  sub_1D983CB00(&qword_1EDCFE568);
  sub_1D984A464();
  v28 = v42;
  *v29 = v42;
  v40 = 1;
  swift_getWitnessTable();
  sub_1D984A4D4();
  v19 = v16;
  v20 = v9;
  v21 = v29;
  (*(v18 + 32))(v29 + *(v9 + 44), v19, v17);
  v39 = 2;
  v22 = sub_1D984A4B4();
  v24 = v23;
  (*(v15 + 8))(v37, v36);
  v25 = (v21 + *(v20 + 48));
  *v25 = v22;
  v25[1] = v24;
  v26 = v30;
  (*(v30 + 16))(v31, v21, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return (*(v26 + 8))(v21, v20);
}

uint64_t sub_1D983BE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954677562 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D983BF6C(unsigned __int8 a1)
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](a1);
  return sub_1D984A6D4();
}

uint64_t sub_1D983BFB4(char a1)
{
  if (!a1)
  {
    return 0x65707954677562;
  }

  if (a1 == 1)
  {
    return 0x6974696E69666564;
  }

  return 1684632949;
}

uint64_t sub_1D983C008(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21[0] = *(a2 + 32);
  v21[1] = v4;
  type metadata accessor for Pattern.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D984A5B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v21[2];
  sub_1D984A704();
  v13 = *v12;
  v14 = v12[1];
  v24 = 0;
  v15 = v21[3];
  sub_1D984A584();
  if (!v15)
  {
    v16 = *(a2 + 44);
    v23 = 1;
    sub_1D984A5A4();
    v17 = (v12 + *(a2 + 48));
    v18 = *v17;
    v19 = v17[1];
    v22 = 2;
    sub_1D984A584();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D983C1CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = *(a2 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Pattern.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1D984A4F4();
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v31 - v10;
  v36 = a2;
  v38 = a3;
  v12 = type metadata accessor for Pattern();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - v14);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v11;
  v17 = v42;
  sub_1D984A6F4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v37;
  v32 = v15;
  v45 = 0;
  v19 = sub_1D984A4B4();
  v20 = v32;
  *v32 = v19;
  v20[1] = v21;
  v42 = v21;
  v44 = 1;
  v22 = v36;
  sub_1D984A4D4();
  (*(v35 + 32))(v32 + *(v12 + 44), v18, v22);
  v43 = 2;
  v23 = v40;
  v24 = sub_1D984A4B4();
  v26 = v25;
  (*(v39 + 8))(v23, v41);
  v28 = v32;
  v27 = v33;
  v29 = (v32 + *(v12 + 48));
  *v29 = v24;
  v29[1] = v26;
  (*(v27 + 16))(v34, v28, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v27 + 8))(v28, v12);
}

uint64_t sub_1D983C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D983C64C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D983C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D983C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D983C798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D983B68C();
  *a2 = result;
  return result;
}

uint64_t sub_1D983C7C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D983B6DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D983C7FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D983B6D8();
  *a1 = result;
  return result;
}

uint64_t sub_1D983C824@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D983CC2C();
  *a2 = result;
  return result;
}

uint64_t sub_1D983C858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D983C8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D983C900@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return sub_1D983B99C(a1, a3);
}

BOOL sub_1D983C93C(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D983BF34(*a1, *a2);
}

uint64_t sub_1D983C954(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D983BF6C(*v1);
}

uint64_t sub_1D983C964(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D983BF44(a1, *v2);
}

uint64_t sub_1D983C974(uint64_t a1, void *a2)
{
  sub_1D984A6A4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D983BF44(v8, *v2);
  return sub_1D984A6D4();
}

uint64_t sub_1D983C9C0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D983BFB4(*v1);
}

uint64_t sub_1D983C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D983BE14(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D983CA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D983CA58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D983CB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41EA0, qword_1D984F948);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D983CC38(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D984A3B4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D983FEE0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1D983CF38(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  sub_1D98499B4();
  v5 = sub_1D9849E54();

  v6 = sub_1D9849E54();
  v7 = getxattr((v5 + 32), (v6 + 32), 0, 0, 0, 0);

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      if (v7 > 0x400)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if (!isStackAllocationSafe)
        {
          v18 = swift_slowAlloc();
          sub_1D983D1B4(v18, v18 + v7, a1, a2, v21);
          result = MEMORY[0x1DA738F10](v18, -1, -1);
          if (!v2)
          {
            result = v21[0];
          }

          goto LABEL_10;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1D983D1B4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v19 + v7 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, &v20);
      if (!v2)
      {
        result = v20;
        goto LABEL_10;
      }
    }

    else
    {
      sub_1D984A354();

      v21[0] = 0xD00000000000001ELL;
      v21[1] = 0x80000001D9854540;
      MEMORY[0x1DA737B20](a1, a2);
      sub_1D9842464();
      swift_allocError();
      *v16 = 0xD00000000000001ELL;
      *(v16 + 8) = 0x80000001D9854540;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
    }

LABEL_9:
    result = swift_willThrow();
LABEL_10:
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = MEMORY[0x1DA737960](isStackAllocationSafe);
  v10 = MEMORY[0x1DA737960]();
  result = strerror(v10);
  if (result)
  {
    v12 = sub_1D9849ED4();
    v14 = v13;
    sub_1D9842464();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D983D1B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1D98499B4();
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1D9849E54();

  v12 = sub_1D9849E54();
  v13 = getxattr((v11 + 32), (v12 + 32), a1, v10, 0, 0);

  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = sub_1D9849E34();
    v16 = *(*(v15 - 8) + 64);
    MEMORY[0x1EEE9AC00](v15 - 8);
    sub_1D9849E24();
    result = sub_1D9849E04();
    if (v18)
    {
      *a5 = result;
      a5[1] = v18;
      return result;
    }

    sub_1D984A354();

    MEMORY[0x1DA737B20](a3, a4);
    v24 = 0xD000000000000028;
    v21 = 0x80000001D9854560;
    sub_1D9842464();
    swift_allocError();
    v23 = 0;
    goto LABEL_10;
  }

  v19 = MEMORY[0x1DA737960](v14);
  v20 = MEMORY[0x1DA737960]();
  result = strerror(v20);
  if (result)
  {
    v21 = sub_1D9849ED4();
    v23 = v22;
    v24 = v19;
    sub_1D9842464();
    swift_allocError();
LABEL_10:
    *v25 = v24;
    *(v25 + 8) = v21;
    *(v25 + 16) = v23;
    *(v25 + 24) = v13 < 0;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_1D983D3D8()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = objc_opt_self();
  v4 = qword_1F550AF50;
  v3 = unk_1F550AF58;

  v5 = sub_1D9833E5C(v1);
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = *MEMORY[0x1E69B7C58];
    v8 = sub_1D9849DF4();
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v5;
    sub_1D9847408(v4, v3, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  sub_1D98482A0(v5);

  v12 = sub_1D9849D94();

  aBlock[4] = sub_1D98424B8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D983E24C;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  [v2 iterateLogsWithOptions:v12 usingBlock:v13];
  _Block_release(v13);

  sub_1D98424C8(&qword_1F550AF50);
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    v15 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    sub_1D98408E0(&v15);

    return v15;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D983D63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9849C54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1D983CF38(0x657079745F677562, 0xE800000000000000);
  v81 = v5;
  v11 = v10;
  v13 = v12;
  v78 = v4;
  v79 = 0;
  v73 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  v80 = &v72;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v72 - v16;
  v18 = sub_1D9849A54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v74 = v18;
  v20(v17, 1, 1);
  v77 = v17;
  if (v11 == 3487795 && v13 == 0xE300000000000000 || ((v45 = sub_1D984A5F4(), v11 == 3617331) ? (v46 = v13 == 0xE300000000000000) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), (v45 & 1) != 0 || (v47 & 1) != 0 || (v48 = sub_1D984A5F4(), (v48 & 1) != 0)))
  {
    v72 = v19;
    v76 = v13;
    v21 = sub_1D9849944();
    v75 = &v72;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x1EEE9AC00](v21);
    v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D984E260;
    v27 = *MEMORY[0x1E695DAA8];
    *(inited + 32) = *MEMORY[0x1E695DAA8];
    v28 = v27;
    sub_1D98421F0(inited);
    swift_setDeallocating();
    sub_1D98423E4(inited + 32);
    v29 = v79;
    sub_1D9849974();
    if (v29)
    {
      v79 = v29;

      sub_1D9849C44();
      v30 = sub_1D98499C4();
      v31 = *(v30 - 8);
      v32 = *(v31 + 64);
      MEMORY[0x1EEE9AC00](v30);
      v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34, a1, v30);
      v35 = sub_1D9849C24();
      v36 = sub_1D984A124();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v75 = &v72;
        v38 = v37;
        v39 = swift_slowAlloc();
        v82 = v39;
        *v38 = 136315138;
        v40 = sub_1D9849964();
        v42 = v41;
        (*(v31 + 8))(v34, v30);
        v43 = sub_1D9819F0C(v40, v42, &v82);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1D97FA000, v35, v36, "Cannot retrieve creationDateKey for file %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1DA738F10](v39, -1, -1);
        MEMORY[0x1DA738F10](v38, -1, -1);
      }

      else
      {

        (*(v31 + 8))(v34, v30);
      }

      (v81[1])(v9, v78);
      return sub_1D981A4E8(v77, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    MEMORY[0x1EEE9AC00](v49);
    sub_1D9849924();
    (*(v22 + 8))(v25, v21);
    v17 = v77;
    sub_1D981A4E8(v77, &qword_1ECB41A50, &unk_1D984FCF0);
    v48 = sub_1D984258C(&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v19 = v72;
  }

  v81 = &v72;
  v50 = *(v19 + 64);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v52 = v19;
  v53 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v72 - v53;
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D984251C(v17, v55);
  v56 = v74;
  if ((*(v52 + 48))(v55, 1, v74) == 1)
  {
    sub_1D981A4E8(v17, &qword_1ECB41A50, &unk_1D984FCF0);

    return sub_1D981A4E8(v55, &qword_1ECB41A50, &unk_1D984FCF0);
  }

  else
  {
    v57 = (*(v52 + 32))(&v72 - v53, v55, v56);
    MEMORY[0x1EEE9AC00](v57);
    v58 = &v72 - v53;
    sub_1D9849A44();
    sub_1D9849A14();
    v60 = v59;
    v61 = *(v52 + 8);
    v61(v58, v56);
    if (v60 <= 86400.0)
    {
      v62 = sub_1D98499C4();
      v79 = &v72;
      v63 = *(v62 - 8);
      v64 = *(v63 + 64);
      MEMORY[0x1EEE9AC00](v62);
      v66 = &v72 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v66, a1, v62);
      v67 = v73;
      swift_beginAccess();
      v68 = *(v67 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v67 + 16) = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_1D98330F8(0, v68[2] + 1, 1, v68);
        *(v73 + 16) = v68;
      }

      v71 = v68[2];
      v70 = v68[3];
      if (v71 >= v70 >> 1)
      {
        v68 = sub_1D98330F8(v70 > 1, v71 + 1, 1, v68);
      }

      v68[2] = v71 + 1;
      (*(v63 + 32))(v68 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v71, v66, v62);
      *(v73 + 16) = v68;

      v61(v54, v74);
      return sub_1D981A4E8(v77, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    else
    {

      v61(v54, v56);
      return sub_1D981A4E8(v17, &qword_1ECB41A50, &unk_1D984FCF0);
    }
  }
}

uint64_t sub_1D983E24C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1D98499C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D98499A4();

  v2(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D983E33C(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v62 = a1;
  v2 = sub_1D9849C54();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = v60[8];
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9849944();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
  inited = swift_initStackObject();
  v56 = xmmword_1D984E260;
  *(inited + 16) = xmmword_1D984E260;
  v9 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v10 = v9;
  sub_1D98421F0(inited);
  swift_setDeallocating();
  sub_1D98423E4(inited + 32);
  v11 = v63;
  sub_1D9849974();
  if (v11)
  {

    v16 = v59;
    sub_1D9849C44();
    v17 = v11;
    v18 = sub_1D9849C24();
    v19 = sub_1D984A124();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v11;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1D97FA000, v18, v19, "Error retrieving file CreationDate: %@", v20, 0xCu);
      sub_1D981A4E8(v21, &qword_1ECB41628, &qword_1D984E3B0);
      MEMORY[0x1DA738F10](v21, -1, -1);
      MEMORY[0x1DA738F10](v20, -1, -1);
    }

    else
    {
    }

    (v60[1])(v16, v61);
  }

  else
  {
    v63 = &v50 - v7;
    v62 = v5;

    MEMORY[0x1EEE9AC00](v12);
    v13 = &v50 - v7;
    v14 = swift_initStackObject();
    *(v14 + 16) = v56;
    *(v14 + 32) = v10;
    v15 = v10;
    sub_1D98421F0(v14);
    swift_setDeallocating();
    sub_1D98423E4(v14 + 32);
    sub_1D9849974();
    v60 = &v50;

    v26 = sub_1D9849A54();
    v59 = &v50;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x1EEE9AC00](v26);
    v54 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
    v55 = &v50 - v54;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
    v61 = &v50;
    v30 = *(*(v29 - 8) + 64);
    MEMORY[0x1EEE9AC00](v29 - 8);
    v53 = v31;
    v32 = &v50 - v31;
    v33 = v63;
    sub_1D9849924();
    *&v56 = v27;
    v34 = *(v27 + 48);
    v57 = v26;
    if (v34(v32, 1, v26) == 1)
    {
      v35 = v62;
      v36 = *(v58 + 8);
      v36(v13, v62);
      v36(v33, v35);
      sub_1D981A4E8(v32, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    else
    {
      v37 = *(v56 + 32);
      v38 = v57;
      v52 = v56 + 32;
      v51 = v37;
      v39 = (v37)(v55, v32, v57);
      v61 = &v50;
      v40 = MEMORY[0x1EEE9AC00](v39);
      v41 = &v50 - v54;
      MEMORY[0x1EEE9AC00](v40);
      v42 = &v50 - v53;
      sub_1D9849924();
      if (v34(v42, 1, v38) != 1)
      {
        v45 = v57;
        v51(v41, v42, v57);
        v46 = v55;
        v24 = sub_1D9849A24();
        v47 = *(v56 + 8);
        v47(v41, v45);
        v47(v46, v45);
        v48 = *(v58 + 8);
        v49 = v62;
        v48(v13, v62);
        v48(v63, v49);
        return v24 & 1;
      }

      (*(v56 + 8))(v55, v57);
      v43 = *(v58 + 8);
      v44 = v62;
      v43(v13, v62);
      v43(v63, v44);
      sub_1D981A4E8(v42, &qword_1ECB41A50, &unk_1D984FCF0);
    }
  }

  v24 = 0;
  return v24 & 1;
}

Swift::OpaquePointer_optional __swiftcall ExcResourceReportPaths()()
{
  v139 = sub_1D9849C54();
  v0 = *(v139 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v139);
  v4 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v126 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v126 - v8;
  v10 = sub_1D983D3D8();
  if (!v10)
  {
    sub_1D9849C44();
    v115 = sub_1D9849C24();
    v116 = sub_1D984A114();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_1D97FA000, v115, v116, "No ExcResource reports found", v117, 2u);
      MEMORY[0x1DA738F10](v117, -1, -1);
    }

    (*(v0 + 8))(v9, v139);
LABEL_52:
    v146 = 0;
LABEL_53:
    v63 = v146;
    goto LABEL_56;
  }

  v11 = v10[2];
  if (!v11)
  {

    v113 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v146 = MEMORY[0x1E69E7CC0];
    v114 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v114)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v140 = v7;
  v131 = v4;
  v143 = *MEMORY[0x1E695DB50];
  v12 = v10;
  v13 = sub_1D98499C4();
  v133 = 0;
  v153 = 0;
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v129 = v12;
  v144 = (v14 + 8);
  v137 = (v0 + 8);
  v17 = *(v14 + 64);
  v141 = *(v14 + 72);
  v132 = *MEMORY[0x1E69B7C78];
  *(&v18 + 1) = 2;
  v142 = xmmword_1D984E260;
  *&v18 = 136315650;
  v128 = v18;
  *&v18 = 136446466;
  v134 = v18;
  v146 = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v147 = v13;
  v138 = v14 + 16;
  v145 = v17;
  do
  {
    v150 = v11;
    v148 = &v126;
    MEMORY[0x1EEE9AC00](v13);
    v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v149 = v22;
    v15(&v126 - v21);
    v23 = sub_1D9849944();
    v151 = &v126;
    v24 = *(v23 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v23);
    v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
    inited = swift_initStackObject();
    *(inited + 16) = v142;
    v29 = v143;
    *(inited + 32) = v143;
    v30 = v29;
    sub_1D98421F0(inited);
    swift_setDeallocating();
    sub_1D98423E4(inited + 32);
    v152 = &v126 - v21;
    v31 = v153;
    sub_1D9849974();
    v153 = v31;
    if (!v31)
    {
      v59 = v152;

      v60 = sub_1D9849934();
      v62 = v61;
      v63 = (*(v24 + 8))(v27, v23);
      if (v62)
      {
        v13 = (*v144)(v59, v147);
      }

      else
      {
        v65 = v133 + v60;
        v66 = v147;
        v17 = v145;
        if (__OFADD__(v133, v60))
        {
          goto LABEL_55;
        }

        v67 = v59;
        if (v65 > 10485760)
        {
          v13 = (*v144)(v59, v147);
          v20 = v150;
          goto LABEL_6;
        }

        v68 = sub_1D9849DF4();
        v69 = v153;
        v71 = sub_1D983CF38(v68, v70);
        v153 = v69;
        if (v69)
        {

          v73 = v153;
          v74 = sub_1D9849C44();
          MEMORY[0x1EEE9AC00](v74);
          v75 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v15)(v75, v67, v66);
          v76 = v73;
          v77 = sub_1D9849C24();
          v78 = sub_1D984A124();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            LODWORD(v135) = v78;
            v80 = v79;
            v133 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v154[0] = v136;
            *v80 = v128;
            v81 = sub_1D9849DF4();
            v151 = &v126;
            v83 = sub_1D9819F0C(v81, v82, v154);
            v127 = v77;
            v84 = v83;

            *(v80 + 4) = v84;
            *(v80 + 12) = 2080;
            v85 = sub_1D9849964();
            v87 = v86;
            (*v144)(v75, v66);
            v88 = sub_1D9819F0C(v85, v87, v154);

            *(v80 + 14) = v88;
            *(v80 + 22) = 2112;
            v89 = v73;
            v90 = _swift_stdlib_bridgeErrorToNSError();
            *(v80 + 24) = v90;
            v91 = v133;
            *v133 = v90;
            v92 = v127;
            _os_log_impl(&dword_1D97FA000, v127, v135, "Unable to retrieve extended attribute %s for file %s with Error: %@", v80, 0x20u);
            sub_1D981A4E8(v91, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v91, -1, -1);
            v93 = v136;
            swift_arrayDestroy();
            MEMORY[0x1DA738F10](v93, -1, -1);
            MEMORY[0x1DA738F10](v80, -1, -1);
          }

          else
          {

            (*v144)(v75, v66);
          }

          (*v137)(v131, v139);
          v153 = 0;
        }

        else
        {
          v94 = v71;
          v95 = v72;

          v96 = sub_1D983CC38(v94, v95);
          if ((v97 & 1) == 0 && !v96)
          {
            v98 = sub_1D98499B4();
            v100 = v99;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v101 = v130;
            }

            else
            {
              v101 = sub_1D98332F0(0, v130[2] + 1, 1, v130);
            }

            v130 = v101;
            v103 = v101[2];
            v102 = v101[3];
            if (v103 >= v102 >> 1)
            {
              v130 = sub_1D98332F0((v102 > 1), v103 + 1, 1, v130);
            }

            v13 = (*v144)(v67, v66);
            v104 = v130;
            v130[2] = v103 + 1;
            v105 = &v104[3 * v103];
            v105[4] = v98;
            v105[5] = v100;
            v105[6] = v60;
            goto LABEL_32;
          }
        }

        v106 = sub_1D98499B4();
        v108 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1D9832DC0(0, *(v146 + 2) + 1, 1, v146);
        }

        v110 = *(v146 + 2);
        v109 = *(v146 + 3);
        if (v110 >= v109 >> 1)
        {
          v146 = sub_1D9832DC0((v109 > 1), v110 + 1, 1, v146);
        }

        v13 = (*v144)(v67, v66);
        v111 = v146;
        *(v146 + 2) = v110 + 1;
        v112 = &v111[16 * v110];
        *(v112 + 4) = v106;
        *(v112 + 5) = v108;
        v133 = v65;
      }

LABEL_32:
      v20 = v150;
      v17 = v145;
      goto LABEL_6;
    }

    v32 = v140;
    v33 = sub_1D9849C44();
    v151 = &v126;
    v34 = v145;
    MEMORY[0x1EEE9AC00](v33);
    v35 = &v126 - v21;
    v36 = v147;
    (v15)(&v126 - v21, v152, v147);
    v37 = v153;
    v38 = v153;
    v39 = sub_1D9849C24();
    v40 = sub_1D984A124();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v154[0] = v136;
      *v41 = v134;
      v135 = v39;
      v43 = sub_1D98499B4();
      v44 = v15;
      v46 = v45;
      v47 = v153;
      v48 = *v144;
      (*v144)(v35, v147);
      v49 = sub_1D9819F0C(v43, v46, v154);
      v15 = v44;

      *(v41 + 4) = v49;
      *(v41 + 12) = 2112;
      v50 = v47;
      v51 = v47;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v52;
      *v42 = v52;
      v53 = v40;
      v54 = v135;
      _os_log_impl(&dword_1D97FA000, v135, v53, "Cannot retrieve file size for %{public}s: %@", v41, 0x16u);
      sub_1D981A4E8(v42, &qword_1ECB41628, &qword_1D984E3B0);
      v55 = v42;
      v56 = v147;
      MEMORY[0x1DA738F10](v55, -1, -1);
      v57 = v136;
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      MEMORY[0x1DA738F10](v57, -1, -1);
      v58 = v41;
      v17 = v145;
      MEMORY[0x1DA738F10](v58, -1, -1);

      (*v137)(v140, v139);
      v13 = v48(v152, v56);
    }

    else
    {
      v17 = v34;

      v19 = *v144;
      (*v144)(&v126 - v21, v36);
      (*v137)(v32, v139);
      v13 = v19(v152, v36);
    }

    v20 = v150;
    v153 = 0;
LABEL_6:
    v11 = v20 - 1;
  }

  while (v11);

  v113 = v133;
  if (v133 >= 10485760 || (v63 = v130, (v114 = v130[2]) == 0))
  {
LABEL_50:

    if (!*(v146 + 2))
    {

      goto LABEL_52;
    }

    goto LABEL_53;
  }

LABEL_41:
  v118 = v63 + 48;
  while (1)
  {
    v121 = v113 + *v118;
    if (__OFADD__(v113, *v118))
    {
      break;
    }

    if (v121 <= 10485760)
    {
      v123 = *(v118 - 2);
      v122 = *(v118 - 1);
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1D9832DC0(0, *(v146 + 2) + 1, 1, v146);
      }

      v125 = *(v146 + 2);
      v124 = *(v146 + 3);
      if (v125 >= v124 >> 1)
      {
        v146 = sub_1D9832DC0((v124 > 1), v125 + 1, 1, v146);
      }

      v119 = v146;
      *(v146 + 2) = v125 + 1;
      v120 = &v119[16 * v125];
      *(v120 + 4) = v123;
      *(v120 + 5) = v122;

      v113 = v121;
    }

    v118 += 3;
    if (!--v114)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result.value._rawValue = v63;
  result.is_nil = v64;
  return result;
}

id DiagnosticReportCollectorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticReportCollectorBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticReportCollectorBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticReportCollectorBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticReportCollectorBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D983F8E8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41710, &qword_1D984FCE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1D983F95C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1D9849F74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D984046C();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D984A3B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D983FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D9849F74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D984046C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D984A3B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D984046C()
{
  v0 = sub_1D9849F84();
  v4 = sub_1D98404EC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D98404EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D9849E74();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D984A214();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D983F8E8(v9, 0);
  v12 = sub_1D9840644(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D9849E74();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D984A3B4();
LABEL_4:

  return sub_1D9849E74();
}

unint64_t sub_1D9840644(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D9840864(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D9849F14();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D984A3B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D9840864(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D9849EF4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D9840864(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D9849F24();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA737B60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D98408E0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D98421DC(v2);
  }

  v3 = v2[2];
  v4 = *(sub_1D98499C4() - 8);
  v6[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6[1] = v3;
  result = sub_1D9840984(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1D9840984(int64_t *a1)
{
  v2 = a1[1];
  result = sub_1D984A5C4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D98499C4();
        v6 = sub_1D984A024();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D98499C4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9840D8C(v8, v9, a1, v4);
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
    return sub_1D9840AB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D9840AB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v31 = a2;
  if (a3 != a2)
  {
    v6 = a3;
    v7 = result;
    v8 = *a4;
    result = sub_1D98499C4();
    v9 = result;
    v10 = *(result - 8);
    v11 = v10[2];
    v39 = v10 + 2;
    v40 = v11;
    v13 = v10[8];
    v12 = v10[9];
    v41 = (v10 + 1);
    v14 = (v8 + v12 * (v6 - 1));
    v36 = -v12;
    v37 = (v10 + 4);
    v15 = v7 - v6;
    v38 = v8;
    v30 = v12;
    v16 = v8 + v12 * v6;
    while (2)
    {
      v34 = v14;
      v35 = v6;
      v32 = v16;
      v33 = v15;
      v17 = v15;
      while (1)
      {
        v45 = v5;
        v42 = v17;
        v44 = &v29;
        MEMORY[0x1EEE9AC00](result);
        v18 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = v40;
        v20 = (v40)(v18, v16, v9);
        v43 = &v29;
        MEMORY[0x1EEE9AC00](v20);
        v19(v18, v14, v9);
        v21 = v45;
        v22 = sub_1D983E33C(v18, v18);
        if (v21)
        {
          v28 = *v41;
          (*v41)(v18, v9);
          return (v28)(v18, v9);
        }

        v23 = v22;
        v45 = 0;
        v24 = *v41;
        (*v41)(v18, v9);
        result = (v24)(v18, v9);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v25 = v42;
        if (!v38)
        {
          __break(1u);
          return result;
        }

        MEMORY[0x1EEE9AC00](result);
        v26 = *v37;
        (*v37)(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = v26(v14, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        v14 += v36;
        v16 += v36;
        v27 = __CFADD__(v25, 1);
        v17 = v25 + 1;
        v5 = v45;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      v5 = v45;
LABEL_11:
      v6 = v35 + 1;
      v14 = &v34[v30];
      v15 = v33 - 1;
      v16 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D9840D8C(uint64_t result, uint64_t a2, int64_t *a3, int64_t a4)
{
  v5 = v4;
  v135 = result;
  v149 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v7 = *v135;
    if (*v135)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v134 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7 + 1;
    v137 = v8;
    if (v7 + 1 >= v6)
    {
      goto LABEL_25;
    }

    v143 = v6;
    v150 = v5;
    v148 = *v149;
    v10 = v148;
    v11 = sub_1D98499C4();
    v147 = &v130;
    v12 = *(v11 - 8);
    v13 = v12;
    v14 = *(v12 + 9);
    v136 = v7;
    v15 = v10 + v14 * v9;
    v16 = *(v12 + 8);
    MEMORY[0x1EEE9AC00](v11);
    v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *(v13 + 2);
    v19 = v18(v17, v15, v11);
    v144 = &v130;
    v145 = v16;
    MEMORY[0x1EEE9AC00](v19);
    v140 = v18;
    v141 = v13 + 16;
    (v18)(v17);
    v20 = v150;
    LODWORD(v142) = sub_1D983E33C(v17, v17);
    v150 = v20;
    if (v20)
    {
      v129 = *(v13 + 1);
      v129(v17, v11);
      v129(v17, v11);
    }

    v133 = v13;
    v21 = *(v13 + 1);
    v21(v17, v11);
    v146 = v11;
    v138 = v21;
    v139 = (v13 + 8);
    result = (v21)(v17, v11);
    v22 = v136 + 2;
    v23 = v148 + v14 * (v136 + 2);
    v24 = v14;
    v144 = v14;
    do
    {
      v9 = v143;
      v5 = v150;
      if (v143 == v22)
      {
        goto LABEL_11;
      }

      v148 = &v130;
      v25 = v145;
      MEMORY[0x1EEE9AC00](result);
      v26 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = v146;
      v28 = v140;
      v29 = (v140)(v26, v23, v146);
      v147 = &v130;
      MEMORY[0x1EEE9AC00](v29);
      v28(v26, v15, v27);
      v30 = v150;
      v31 = sub_1D983E33C(v26, v26);
      v150 = v30;
      if (v30)
      {
        v127 = v138;
        v138(v26, v27);
        v127(v26, v27);
      }

      v32 = v31;
      v33 = v138;
      v138(v26, v27);
      result = v33(v26, v27);
      ++v22;
      v24 = v144;
      v23 = v144 + v23;
      v15 = v144 + v15;
    }

    while (((v142 ^ v32) & 1) == 0);
    v9 = v22 - 1;
    v5 = v150;
LABEL_11:
    v7 = v136;
    v8 = v137;
    if (v142)
    {
      if (v9 >= v136)
      {
        if (v136 < v9)
        {
          v150 = v5;
          v148 = (v133 + 32);
          v34 = v9;
          v35 = v24 * (v9 - 1);
          v36 = v9 * v24;
          v143 = v9;
          v37 = v136;
          v38 = v136 * v24;
          do
          {
            if (v37 != --v34)
            {
              v40 = *v149;
              if (!*v149)
              {
                goto LABEL_137;
              }

              v147 = &v130;
              MEMORY[0x1EEE9AC00](result);
              v42 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
              v142 = *v148;
              v142(v42, &v40[v38], v146);
              if (v38 < v35 || &v40[v38] >= &v40[v36])
              {
                v39 = v146;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v39 = v146;
                if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v142)(&v40[v35], v42, v39);
              v8 = v137;
              v24 = v144;
            }

            ++v37;
            v35 -= v24;
            v36 -= v24;
            v38 += v24;
          }

          while (v37 < v34);
          v5 = v150;
          v7 = v136;
          v9 = v143;
        }

        goto LABEL_25;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

LABEL_25:
    v43 = v149[1];
    if (v9 >= v43)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v9, v7))
    {
      goto LABEL_129;
    }

    if (v9 - v7 >= v134)
    {
LABEL_34:
      v45 = v9;
      if (v9 < v7)
      {
        goto LABEL_128;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v7, v134))
    {
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v7 + v134 >= v43)
    {
      v44 = v149[1];
    }

    else
    {
      v44 = (v7 + v134);
    }

    if (v44 < v7)
    {
      goto LABEL_132;
    }

    if (v9 == v44)
    {
      goto LABEL_34;
    }

    v150 = v5;
    v98 = *v149;
    result = sub_1D98499C4();
    v99 = result;
    v100 = *(result - 8);
    v101 = v100[2];
    v100 += 2;
    v144 = v101;
    v103 = v100[6];
    v102 = v100[7];
    v145 = (v100 - 1);
    v141 = v98;
    v142 = v100;
    v104 = v98 + v102 * (v9 - 1);
    v139 = -v102;
    v140 = (v100 + 2);
    v136 = v7;
    v105 = v7 - v9;
    v130 = v102;
    v106 = v98 + v9 * v102;
    v138 = v44;
    while (2)
    {
      v143 = v9;
      v131 = v106;
      v132 = v105;
      v107 = v105;
      v133 = v104;
      while (2)
      {
        v146 = v107;
        v148 = &v130;
        MEMORY[0x1EEE9AC00](result);
        v108 = &v130 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
        v109 = v144;
        v110 = (v144)(v108, v106, v99);
        v147 = &v130;
        v111 = v103;
        MEMORY[0x1EEE9AC00](v110);
        (v109)(v108, v104, v99);
        v112 = v150;
        v113 = sub_1D983E33C(v108, v108);
        v150 = v112;
        if (v112)
        {
          v128 = *v145;
          (*v145)(v108, v99);
          v128(v108, v99);
        }

        v114 = v113;
        v115 = *v145;
        (*v145)(v108, v99);
        result = (v115)(v108, v99);
        if (v114)
        {
          v103 = v111;
          v116 = v146;
          if (!v141)
          {
            goto LABEL_135;
          }

          v148 = &v130;
          MEMORY[0x1EEE9AC00](result);
          v117 = *v140;
          (*v140)(&v130 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0), v106, v99);
          swift_arrayInitWithTakeFrontToBack();
          result = v117(v104, &v130 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0), v99);
          v104 += v139;
          v106 += v139;
          v118 = __CFADD__(v116, 1);
          v107 = v116 + 1;
          if (v118)
          {
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      v103 = v111;
LABEL_93:
      v9 = v143 + 1;
      v104 = &v133[v130];
      v105 = v132 - 1;
      v106 = &v131[v130];
      v45 = v138;
      if ((v143 + 1) != v138)
      {
        continue;
      }

      break;
    }

    v5 = v150;
    v7 = v136;
    v8 = v137;
    if (v138 < v136)
    {
      goto LABEL_128;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    v138 = v45;
    if ((result & 1) == 0)
    {
      result = sub_1D9832FF4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v47 = *(v8 + 16);
    v46 = *(v8 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_1D9832FF4((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v48;
    v49 = v8 + 16 * v47;
    v50 = v138;
    *(v49 + 32) = v7;
    *(v49 + 40) = v50;
    v51 = *v135;
    if (!*v135)
    {
      goto LABEL_138;
    }

    if (v47)
    {
      break;
    }

LABEL_3:
    v6 = v149[1];
    v7 = v138;
    if (v138 >= v6)
    {
      goto LABEL_97;
    }
  }

  while (2)
  {
    v52 = v48 - 1;
    if (v48 >= 4)
    {
      v57 = v8 + 32 + 16 * v48;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_115;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_116;
      }

      v64 = (v8 + 16 * v48);
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_118;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_121;
      }

      if (v68 >= v60)
      {
        v86 = (v8 + 32 + 16 * v52);
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_127;
        }

        if (v55 < v89)
        {
          v52 = v48 - 2;
        }
      }

      else
      {
LABEL_54:
        if (v56)
        {
          goto LABEL_117;
        }

        v69 = (v8 + 16 * v48);
        v71 = *v69;
        v70 = v69[1];
        v72 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        v74 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v75 = (v8 + 32 + 16 * v52);
        v77 = *v75;
        v76 = v75[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_123;
        }

        if (__OFADD__(v73, v78))
        {
          goto LABEL_124;
        }

        if (v73 + v78 < v55)
        {
          goto LABEL_68;
        }

        if (v55 < v78)
        {
          v52 = v48 - 2;
        }
      }
    }

    else
    {
      if (v48 == 3)
      {
        v53 = *(v8 + 32);
        v54 = *(v8 + 40);
        v63 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        v56 = v63;
        goto LABEL_54;
      }

      v79 = (v8 + 16 * v48);
      v81 = *v79;
      v80 = v79[1];
      v63 = __OFSUB__(v80, v81);
      v73 = v80 - v81;
      v74 = v63;
LABEL_68:
      if (v74)
      {
        goto LABEL_119;
      }

      v82 = v8 + 16 * v52;
      v84 = *(v82 + 32);
      v83 = *(v82 + 40);
      v63 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v63)
      {
        goto LABEL_122;
      }

      if (v85 < v73)
      {
        goto LABEL_3;
      }
    }

    v90 = v52 - 1;
    if (v52 - 1 < v48)
    {
      v7 = *v149;
      if (!*v149)
      {
        goto LABEL_134;
      }

      v91 = v8;
      v92 = v8 + 32;
      v8 = *(v8 + 32 + 16 * v90);
      v93 = (v92 + 16 * v52);
      v95 = *v93;
      v94 = v93[1];
      v96 = sub_1D98499C4();
      sub_1D984198C(v7 + *(*(v96 - 8) + 72) * v8, v7 + *(*(v96 - 8) + 72) * v95, (v7 + *(*(v96 - 8) + 72) * v94), v51);
      if (v5)
      {
      }

      if (v94 < v8)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_1D98420E4(v91);
      }

      if (v90 >= *(v91 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v91[16 * v90];
      *(v97 + 4) = v8;
      *(v97 + 5) = v94;
      v151 = v91;
      result = sub_1D9842058(v52);
      v8 = v151;
      v48 = *(v151 + 16);
      if (v48 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_1D98420E4(v8);
  v8 = result;
LABEL_99:
  v151 = v8;
  v119 = *(v8 + 16);
  if (v119 < 2)
  {
  }

  while (1)
  {
    v120 = *v149;
    if (!*v149)
    {
      break;
    }

    v121 = v8;
    v8 = *(v8 + 16 * v119);
    v122 = &v121[16 * v119 - 16];
    v124 = *(v122 + 4);
    v123 = *(v122 + 5);
    v125 = sub_1D98499C4();
    sub_1D984198C(v120 + *(*(v125 - 8) + 72) * v8, v120 + *(*(v125 - 8) + 72) * v124, (v120 + *(*(v125 - 8) + 72) * v123), v7);
    if (v5)
    {
    }

    if (v123 < v8)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = sub_1D98420E4(v121);
    }

    if (v119 - 2 >= *(v121 + 2))
    {
      goto LABEL_126;
    }

    v126 = &v121[16 * v119];
    *v126 = v8;
    v126[1] = v123;
    v151 = v121;
    result = sub_1D9842058(v119 - 1);
    v8 = v151;
    v119 = *(v151 + 16);
    if (v119 <= 1)
    {
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1D984198C(unint64_t a1, unint64_t a2, void (*a3)(char *, unint64_t, uint64_t), unint64_t a4)
{
  v5 = v4;
  result = sub_1D98499C4();
  v68 = *(result - 8);
  v11 = v68[9];
  if (!v11)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = result;
  v13 = a2;
  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_68;
  }

  v14 = a3 - a2;
  if ((a3 - a2) != 0x8000000000000000 || v11 != -1)
  {
    v15 = (a2 - a1) / v11;
    v76 = a1;
    v75 = a4;
    if (v15 < v14 / v11)
    {
      v16 = v15 * v11;
      if (a4 < a1 || a1 + v16 <= a4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v13 = a2;
LABEL_17:
      v69 = a4 + v16;
      v73 = v4;
      v74 = a4 + v16;
      if (v16 >= 1 && v13 < a3)
      {
        v19 = v68[2];
        v65 = v68[8];
        v66 = v19;
        v68 += 2;
        v67 = (v68 - 1);
        v63 = v11;
        v64 = a3;
        while (1)
        {
          v70 = a1;
          v20 = a4;
          v72 = &v58;
          v21 = v65;
          MEMORY[0x1EEE9AC00](result);
          v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
          v71 = v23;
          v24 = v66;
          v25 = (v66)(v22);
          MEMORY[0x1EEE9AC00](v25);
          v26 = v20;
          v24(v22, v20, v12);
          v27 = v73;
          v28 = sub_1D983E33C(v22, v22);
          v73 = v27;
          if (v27)
          {
            break;
          }

          v29 = v28;
          v30 = *v67;
          (*v67)(v22, v12);
          result = (v30)(v22, v12);
          if (v29)
          {
            v31 = v70;
            v32 = v63;
            v33 = v64;
            v34 = &v63[v71];
            a4 = v26;
            if (v70 < v71 || v70 >= v34)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v71)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v35 = v34;
          }

          else
          {
            v32 = v63;
            v33 = v64;
            a4 = &v63[v26];
            v31 = v70;
            if (v70 < v26 || v70 >= a4)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v26)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v75 = a4;
            v35 = v71;
          }

          a1 = &v32[v31];
          v76 = a1;
          if (a4 >= v69 || v35 >= v33)
          {
            goto LABEL_66;
          }
        }

        v56 = *v67;
        (*v67)(v22, v12);
        v56(v22, v12);
      }

LABEL_66:
      sub_1D98420F8(&v76, &v75, &v74);
      return 1;
    }

    v17 = v14 / v11 * v11;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        if (v17 < 1)
        {
          v38 = a4 + v17;
        }

        else
        {
          v36 = -v11;
          v62 = v68 + 2;
          v63 = (v68 + 1);
          v37 = (a4 + v17);
          v38 = a4 + v17;
          v70 = a1;
          v60 = -v11;
          v61 = a4;
          do
          {
            v59 = v38;
            v39 = v13 + v36;
            v71 = v13 + v36;
            v65 = v13;
            while (1)
            {
              v73 = v5;
              if (v13 <= a1)
              {
                v76 = v13;
                v74 = v59;
                goto LABEL_66;
              }

              v66 = a3;
              v67 = v37;
              v64 = v38;
              v72 = &v58;
              v40 = v68[8];
              MEMORY[0x1EEE9AC00](result);
              v41 = &v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = *(v42 + 16);
              v69 = v44;
              v45 = v43(v41);
              MEMORY[0x1EEE9AC00](v45);
              (v43)(v41, v39, v12);
              v46 = v73;
              v47 = sub_1D983E33C(v41, v41);
              if (v46)
              {
                v57 = *v63;
                (*v63)(v41, v12);
                v57(v41, v12);
                v76 = v65;
                v74 = v64;
                goto LABEL_66;
              }

              v48 = v47;
              v73 = 0;
              v49 = v66;
              v50 = v66 + v36;
              v51 = *v63;
              (*v63)(v41, v12);
              result = v51(v41, v12);
              if (v48)
              {
                break;
              }

              v38 = v69;
              v52 = v61;
              a3 = v50;
              if (v49 < v67 || v50 >= v67)
              {
                result = swift_arrayInitWithTakeFrontToBack();
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
              }

              else
              {
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
                if (v49 != v67)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v38;
              v13 = v65;
              if (v69 <= v52)
              {
                goto LABEL_61;
              }
            }

            v53 = v61;
            a3 = v50;
            if (v49 < v65 || v50 >= v65)
            {
              v55 = v71;
              result = swift_arrayInitWithTakeFrontToBack();
              v13 = v55;
              v5 = v73;
              a1 = v70;
              v36 = v60;
            }

            else
            {
              v5 = v73;
              a1 = v70;
              v13 = v71;
              v36 = v60;
              if (v49 != v65)
              {
                v54 = v71;
                result = swift_arrayInitWithTakeBackToFront();
                v13 = v54;
              }
            }

            v37 = v67;
            v38 = v64;
          }

          while (v67 > v53);
        }

LABEL_61:
        v73 = v5;
        v74 = v38;
        v76 = v13;
        goto LABEL_66;
      }

      result = swift_arrayInitWithTakeBackToFront();
    }

    v13 = a2;
    goto LABEL_41;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1D9842058(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D98420E4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D98420F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1D98499C4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D98421F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F40, &qword_1D984FCE8);
    v3 = sub_1D984A334();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1D9849DF4();
      sub_1D984A6A4();
      v29 = v7;
      sub_1D9849E84();
      v9 = sub_1D984A6D4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1D9849DF4();
        v20 = v19;
        if (v18 == sub_1D9849DF4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1D984A5F4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D98423E4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9842464()
{
  result = qword_1ECB41F38;
  if (!qword_1ECB41F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F38);
  }

  return result;
}

uint64_t sub_1D984251C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D984258C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9842608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9842650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id PanicPatternInfo.init(panicString:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter);
  *v3 = 0xD000000000000010;
  v3[1] = 0x80000001D98545A0;
  v78[0] = a1;
  v78[1] = a2;
  v76 = 0xD000000000000010;
  v77 = 0x80000001D98545A0;
  sub_1D984448C();
  v4 = sub_1D984A0D4();
  v5 = *(v4 + 16);
  if (v5)
  {
    v78[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D98444E0(0, v5, 0);
    v7 = 0;
    v8 = v78[0];
    v9 = (v4 + 56);
    do
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x1DA737AC0](v10, v11, v12, v13);
      v16 = v15;

      v78[0] = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1D98444E0((v17 > 1), v18 + 1, 1);
        v8 = v78[0];
      }

      ++v7;
      v8[2] = v18 + 1;
      v19 = &v8[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v9 += 4;
    }

    while (v5 != v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v20 = v8[2];
  if (v20)
  {
    v21 = v8[5];
    v22 = &v73[OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString];
    *v22 = v8[4];
    *(v22 + 1) = v21;
    v23 = &v8[2 * v20 + 4];
    v24 = *(v23 - 16);
    v25 = *(v23 - 8);
  }

  else
  {
    v24 = 0;
    v26 = &v73[OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString];
    v25 = 0xE000000000000000;
    *v26 = 0;
    *(v26 + 1) = 0xE000000000000000;
  }

  v27 = 0xEC0000006564696CLL;

  v28 = sub_1D9844A78(v24, v25);

  v29 = 0;
  v74 = v28;
  do
  {
    v41 = byte_1F550AF88[v29 + 32];
    if (v41 <= 1)
    {
      v42 = 0x73206C656E72654BLL;
      v43 = v27;
      if (byte_1F550AF88[v29 + 32])
      {
        v42 = 0xD000000000000010;
        v43 = 0x80000001D98545C0;
        if (!*(v28 + 16))
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v41 == 2)
    {
      v42 = 0x657620746F6F4269;
      v43 = 0xED00006E6F697372;
LABEL_35:
      if (!*(v28 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v42 = 0x6220657275636573;
    v43 = 0xEB00000000746F6FLL;
    if (!*(v28 + 16))
    {
LABEL_39:

      goto LABEL_40;
    }

LABEL_36:
    v44 = sub_1D98447E4(v42, v43);
    v46 = v45;

    if (v46)
    {
      v47 = (*(v28 + 56) + 16 * v44);
      v48 = *v47;
      v49 = v47[1];

      goto LABEL_41;
    }

LABEL_40:
    v48 = 0;
    v49 = 0xE000000000000000;
LABEL_41:
    if (qword_1ECB415B0 != -1)
    {
      swift_once();
    }

    v50 = sub_1D9849C54();
    __swift_project_value_buffer(v50, qword_1ECB47618);

    v51 = sub_1D9849C24();
    v52 = sub_1D984A134();

    if (os_log_type_enabled(v51, v52))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v78[0] = v31;
      *v30 = 136315394;
      v32 = 0x657620746F6F4269;
      if (v41 != 2)
      {
        v32 = 0x6220657275636573;
      }

      v33 = 0xED00006E6F697372;
      if (v41 != 2)
      {
        v33 = 0xEB00000000746F6FLL;
      }

      v34 = 0xD000000000000010;
      if (!v41)
      {
        v34 = 0x73206C656E72654BLL;
      }

      v35 = 0x80000001D98545C0;
      if (!v41)
      {
        v35 = v27;
      }

      if (v41 <= 1)
      {
        v36 = v34;
      }

      else
      {
        v36 = v32;
      }

      if (v41 <= 1)
      {
        v37 = v35;
      }

      else
      {
        v37 = v33;
      }

      v38 = v27;
      v39 = sub_1D9819F0C(v36, v37, v78);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2080;
      v40 = sub_1D9819F0C(v48, v49, v78);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_1D97FA000, v51, v52, "key %s -> %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v31, -1, -1);
      MEMORY[0x1DA738F10](v30, -1, -1);

      v27 = v38;
      v28 = v74;
    }

    else
    {
    }

    ++v29;
  }

  while (v29 != 4);
  if (*(v28 + 16) && (v53 = sub_1D98447E4(0x73206C656E72654BLL, v27), (v54 & 1) != 0))
  {
    v55 = (*(v28 + 56) + 16 * v53);
    v57 = *v55;
    v56 = v55[1];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v59 = &v73[OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide];
  *v59 = v57;
  *(v59 + 1) = v58;
  if (*(v28 + 16) && (v60 = sub_1D98447E4(0xD000000000000010, 0x80000001D98545C0), (v61 & 1) != 0))
  {
    v62 = (*(v28 + 56) + 16 * v60);
    v64 = *v62;
    v63 = v62[1];
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v66 = &v73[OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase];
  *v66 = v64;
  *(v66 + 1) = v65;
  if (*(v28 + 16) && (v67 = sub_1D98447E4(0x657620746F6F4269, 0xED00006E6F697372), (v68 & 1) != 0))
  {
    v69 = (*(v28 + 56) + 16 * v67);
    v71 = *v69;
    v70 = v69[1];
  }

  else
  {
    v71 = 0;
    v70 = 0;
  }

  v72 = &v73[OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion];
  *v72 = v71;
  *(v72 + 1) = v70;
  v75.receiver = v73;
  v75.super_class = type metadata accessor for PanicPatternInfo();
  return objc_msgSendSuper2(&v75, sel_init);
}

uint64_t sub_1D9842D84(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v66 = 58;
  v67 = 0xE100000000000000;
  v65 = &v66;

  v9 = sub_1D9844084(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D98451F8, v64, v4, v5, v6, v8);
  v10 = v9;
  v68 = v2;
  v11 = *(v9 + 2);
  if (v11)
  {
    v12 = *(v9 + 4);
    v13 = *(v9 + 5);
    v14 = *(v9 + 6);
    v15 = *(v9 + 7);
  }

  else
  {
    v12 = sub_1D984A234();
    v13 = v16;
    v14 = v17;
    v15 = v18;
  }

  v19 = 0x73206C656E72654BLL;
  v20 = MEMORY[0x1DA737AC0](v12, v13, v14, v15);
  v22 = v21;

  v23 = 0x657620746F6F4269;
  v24 = 0xED00006E6F697372;
  if (byte_1F550AF80 != 2)
  {
    v23 = 0x6220657275636573;
    v24 = 0xEB00000000746F6FLL;
  }

  v25 = 0xD000000000000010;
  if (byte_1F550AF80)
  {
    v26 = 0x80000001D98545C0;
  }

  else
  {
    v25 = 0x73206C656E72654BLL;
    v26 = 0xEC0000006564696CLL;
  }

  if (byte_1F550AF80 <= 1u)
  {
    v27 = v25;
  }

  else
  {
    v27 = v23;
  }

  if (byte_1F550AF80 <= 1u)
  {
    v28 = v26;
  }

  else
  {
    v28 = v24;
  }

  if (v27 == v20 && v28 == v22)
  {
    goto LABEL_28;
  }

  v30 = sub_1D984A5F4();

  if (v30)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF81 > 1u)
  {
    if (byte_1F550AF81 != 2)
    {
      v33 = 0xEB00000000746F6FLL;
      if (v20 != 0x6220657275636573)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    v32 = 0x657620746F6F4269;
    v33 = 0xED00006E6F697372;
LABEL_26:
    if (v32 != v20)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v32 = 0x73206C656E72654BLL;
  v33 = 0xEC0000006564696CLL;
  if (!byte_1F550AF81)
  {
    goto LABEL_26;
  }

  v33 = 0x80000001D98545C0;
  if (v20 != 0xD000000000000010)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (v33 == v22)
  {
    goto LABEL_28;
  }

LABEL_35:
  v56 = sub_1D984A5F4();

  if (v56)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF82 > 1u)
  {
    if (byte_1F550AF82 == 2)
    {
      v57 = 0x657620746F6F4269;
      v58 = 0xED00006E6F697372;
    }

    else
    {
      v57 = 0x6220657275636573;
      v58 = 0xEB00000000746F6FLL;
    }
  }

  else
  {
    v57 = 0x73206C656E72654BLL;
    v58 = 0xEC0000006564696CLL;
    if (byte_1F550AF82)
    {
      v57 = 0xD000000000000010;
      v58 = 0x80000001D98545C0;
    }
  }

  if (v57 == v20 && v58 == v22)
  {
    goto LABEL_28;
  }

  v59 = sub_1D984A5F4();

  if (v59)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF83 > 1u)
  {
    if (byte_1F550AF83 == 2)
    {
      v19 = 0x657620746F6F4269;
      v60 = 0xED00006E6F697372;
    }

    else
    {
      v19 = 0x6220657275636573;
      v60 = 0xEB00000000746F6FLL;
    }
  }

  else
  {
    v60 = 0xEC0000006564696CLL;
    if (byte_1F550AF83)
    {
      v19 = 0xD000000000000010;
      v60 = 0x80000001D98545C0;
    }
  }

  if (v19 == v20 && v60 == v22)
  {
LABEL_28:

    goto LABEL_29;
  }

  v61 = sub_1D984A5F4();

  if ((v61 & 1) == 0)
  {
  }

LABEL_29:
  v62 = v20;
  v63 = v22;
  if (!v11)
  {
    v34 = a1;

    v36 = sub_1D984A234();
    v37 = v40;
    v39 = v41;
    v38 = v42;
    goto LABEL_33;
  }

  if (v11 <= *(v10 + 2))
  {
    v34 = a1;
    v35 = &v10[32 * v11];
    v36 = *v35;
    v37 = v35[1];
    v39 = v35[2];
    v38 = v35[3];

LABEL_33:
    v43 = MEMORY[0x1DA737AC0](v36, v37, v39, v38);
    v45 = v44;

    v66 = v43;
    v67 = v45;
    v46 = sub_1D98498B4();
    v47 = *(v46 - 8);
    v48 = *(v47 + 64);
    MEMORY[0x1EEE9AC00](v46);
    v50 = &v62 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D98498A4();
    sub_1D9838360();
    v51 = sub_1D984A274();
    v53 = v52;
    (*(v47 + 8))(v50, v46);

    v54 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *v34;
    sub_1D9847408(v51, v53, v62, v63, isUniquelyReferenced_nonNull_native);

    *v34 = v66;
    return result;
  }

  __break(1u);
  return result;
}

id PanicPatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D98433B4()
{
  v1 = *v0;
  v2 = 0x6C536C656E72656BLL;
  v3 = 0x65546C656E72656BLL;
  if (v1 != 3)
  {
    v3 = 0x726556746F6F4269;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9843478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9844F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D98434AC(uint64_t a1)
{
  v2 = sub_1D9844BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D98434E8(uint64_t a1)
{
  v2 = sub_1D9844BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9843524()
{
  v1 = *(v0 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter + 8);

  v2 = *(v0 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString + 8);

  v3 = *(v0 + OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide + 8);

  v4 = *(v0 + OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase + 8);

  v5 = *(v0 + OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion + 8);
}

id PanicPatternInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanicPatternInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D984366C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F78, &qword_1D984FDD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9844BC0();
  sub_1D984A704();
  v11 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter);
  v12 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter + 8);
  v22[15] = 0;
  sub_1D984A584();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString);
  v14 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString + 8);
  v22[14] = 1;
  sub_1D984A584();
  v15 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide);
  v16 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide + 8);
  v22[13] = 2;
  sub_1D984A514();
  v17 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase);
  v18 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase + 8);
  v22[12] = 3;
  sub_1D984A514();
  v20 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion);
  v21 = *(v3 + OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion + 8);
  v22[11] = 4;
  sub_1D984A514();
  return (*(v6 + 8))(v9, v5);
}

id PanicPatternInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F88, &qword_1D984FDD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9844BC0();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for PanicPatternInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = 0;
    v11 = sub_1D984A4B4();
    v13 = &v1[OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter];
    *v13 = v11;
    v13[1] = v14;
    v29 = 1;
    v15 = sub_1D984A4B4();
    v16 = &v1[OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString];
    *v16 = v15;
    v16[1] = v17;
    v29 = 2;
    v18 = sub_1D984A444();
    v19 = &v1[OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide];
    *v19 = v18;
    v19[1] = v20;
    v29 = 3;
    v21 = sub_1D984A444();
    v22 = &v1[OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase];
    *v22 = v21;
    v22[1] = v23;
    v29 = 4;
    v24 = sub_1D984A444();
    v25 = &v1[OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion];
    *v25 = v24;
    v25[1] = v26;
    v27 = type metadata accessor for PanicPatternInfo();
    v28.receiver = v1;
    v28.super_class = v27;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

id sub_1D9843C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PanicPatternInfo());
  result = PanicPatternInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D9843CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D9849F84();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D9832B8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D9832B8C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D9849F64();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D9849EA4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D9849EA4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D9849F84();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D9832B8C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D9849F84();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D9832B8C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D9832B8C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D9849EA4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D9844084@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1D984A224();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1D984A204() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1D984A204();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1D984A244();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D9832B8C(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1D9832B8C((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1D984A204();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1D984A244();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1D9832B8C((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1D9832B8C(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1D984A244();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1D9832B8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D984448C()
{
  result = qword_1ECB41F50;
  if (!qword_1ECB41F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F50);
  }

  return result;
}

char *sub_1D98444E0(char *a1, int64_t a2, char a3)
{
  result = sub_1D98446D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D9844500(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB8, &qword_1D984E7B8);
  v10 = *(sub_1D98499C4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1D98499C4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D98446D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA0, &qword_1D984E7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D98447E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D984A6A4();
  sub_1D9849E84();
  v6 = sub_1D984A6D4();

  return sub_1D98448A0(a1, a2, v6);
}

unint64_t sub_1D984485C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D984A304();

  return sub_1D9844958(a1, v5);
}

unint64_t sub_1D98448A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D984A5F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D9844958(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D98450D4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA737F70](v9, a1);
      sub_1D9845130(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1D9844A20(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

uint64_t sub_1D9844A78(uint64_t a1, unint64_t a2)
{
  *&v15 = 10;
  *(&v15 + 1) = 0xE100000000000000;
  v14[2] = &v15;

  v5 = sub_1D9843CC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D9845184, v14, a1, a2, v4);
  v6 = v5;
  v7 = MEMORY[0x1E69E7CC8];
  v18 = MEMORY[0x1E69E7CC8];
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v5 + 56);
    while (v9 < *(v6 + 16))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v15 = *(v10 - 3);
      v16 = v11;
      v17 = v12;

      sub_1D9842D84(&v18, &v15);

      ++v9;
      v10 += 4;
      if (v8 == v9)
      {
        v7 = v18;
        goto LABEL_6;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_6:

    return v7;
  }

  return result;
}

unint64_t sub_1D9844BC0()
{
  result = qword_1ECB41F80;
  if (!qword_1ECB41F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PanicPatternInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PanicPatternInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9844E04()
{
  result = qword_1ECB41F90;
  if (!qword_1ECB41F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F90);
  }

  return result;
}

unint64_t sub_1D9844E5C()
{
  result = qword_1ECB41F98;
  if (!qword_1ECB41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F98);
  }

  return result;
}

unint64_t sub_1D9844EB4()
{
  result = qword_1ECB41FA0;
  if (!qword_1ECB41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FA0);
  }

  return result;
}