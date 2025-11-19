uint64_t sub_224CABF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v45 = a4;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v44 = a3;
  v14 = sub_224CB262C(a3);
  v15 = qword_2813516C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  v17 = __swift_project_value_buffer(v16, qword_281365120);
  v41 = v7[2];
  v41(v13, a1, v6);
  v42 = v17;
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v38 = a1;
    v39 = v11;
    v20 = v7;
    v40 = v14;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46[0] = v22;
    v23 = 0xEB00000000726564;
    v24 = v44;
    *v21 = 136446466;
    v25 = 0xE800000000000000;
    v26 = 0x656E696C656D6974;
    v27 = 0xEF77656976657270;
    if (v24 != 3)
    {
      v27 = 0xEC0000006576696CLL;
    }

    if (v24 != 2)
    {
      v26 = 0x2D6C6F72746E6F63;
      v25 = v27;
    }

    v28 = 0x746F687370616E73;
    if (v24)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v28 = 0x6C6F686563616C70;
    }

    if (v24 <= 1)
    {
      v29 = v28;
    }

    else
    {
      v29 = v26;
    }

    if (v24 <= 1)
    {
      v30 = v23;
    }

    else
    {
      v30 = v25;
    }

    v31 = sub_224A33F74(v29, v30, v46);

    *(v21 + 4) = v31;
    *(v21 + 12) = 2082;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v32 = sub_224DAFD28();
    v34 = v33;
    v43 = v20[1];
    v43(v13, v6);
    v35 = sub_224A33F74(v32, v34, v46);

    *(v21 + 14) = v35;
    _os_log_impl(&dword_224A2F000, v18, v19, "Requesting replication of %{public}s archive for key: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v22, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);

    a1 = v38;
  }

  else
  {

    v43 = v7[1];
    v43(v13, v6);
  }

  sub_224CA1CC0(a1, v45);
}

uint64_t sub_224CAC608()
{
  v0 = sub_224DAC268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    v12 = sub_224DAC248();
    v13 = *(v1 + 8);
    v13(v10, v0);
    v14 = [v12 extensionIdentity];

    v15 = &v14[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v15 + 1))
    {
    }

    else
    {
      v34 = v13;
      v16 = v35;
      sub_224DAC838();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);
      (*(v1 + 16))(v5, v16, v0);
      v18 = sub_224DAB228();
      v19 = sub_224DAF2A8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v32 = v20;
        v33 = swift_slowAlloc();
        v36 = v33;
        *v20 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
        v21 = sub_224DAFD28();
        v23 = v22;
        v24 = v5;
        v25 = v34;
        v34(v24, v0);
        v26 = sub_224A33F74(v21, v23, &v36);

        v27 = v32;
        *(v32 + 1) = v26;
        v28 = v27;
        _os_log_impl(&dword_224A2F000, v18, v19, "Received local snapshot archive removal for %{public}s", v27, 0xCu);
        v29 = v33;
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x22AA5EED0](v29, -1, -1);
        MEMORY[0x22AA5EED0](v28, -1, -1);
      }

      else
      {

        v30 = v5;
        v25 = v34;
        v34(v30, v0);
      }

      sub_224CAC9D8(v16, 1);

      return v25(v16, v0);
    }
  }

  return result;
}

uint64_t sub_224CAC9D8(uint64_t a1, int a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v26 = a2;
  sub_224CB262C(a2);
  v12 = qword_2813516C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_224DAB258();
  v14 = __swift_project_value_buffer(v13, qword_281365120);
  v28 = v5[2];
  v28(v11, a1, v4);
  v29 = v14;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v5;
    v18 = v17;
    v25[0] = swift_slowAlloc();
    v25[1] = v9;
    v31 = v25[0];
    *v18 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v19 = sub_224DAFD28();
    v21 = v20;
    v30 = v27[1];
    v30(v11, v4);
    v22 = sub_224A33F74(v19, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_224A2F000, v15, v16, "Requesting deletion of archive for: %{public}s", v18, 0xCu);
    v23 = v25[0];
    __swift_destroy_boxed_opaque_existential_1(v25[0]);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  else
  {

    v30 = v5[1];
    v30(v11, v4);
  }

  sub_224CA2C54(a1);
}

void sub_224CACFB0()
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v122 = *(v116 - 8);
  v0 = *(v122 + 64);
  MEMORY[0x28223BE20](v116);
  v125 = &v99 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v113 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v99 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v115 = *(v118 - 8);
  v8 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v118);
  v128 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v114 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = &v99 - v16;
  v126 = sub_224DACB98();
  v17 = *(v126 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v126);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DACC88();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_224DAB0B8();
  v100 = *(v101 - 8);
  v26 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DABE18();
  v102 = *(v119 - 8);
  v29 = *(v102 + 64);
  v30 = MEMORY[0x28223BE20](v119);
  v124 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v99 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v127 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
  MEMORY[0x22AA5BB00]();
  sub_224DAD788();
  sub_224DACC68();
  (*(v22 + 8))(v25, v21);
  sub_224A6B3FC(v28);
  (*(v17 + 8))(v20, v126);
  v35 = sub_224DABDB8();
  v36 = &v35[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v37 = *(v36 + 1);

  if (v37)
  {

LABEL_4:
    (*(v102 + 8))(v33, v119);
LABEL_5:
    (*(v100 + 8))(v28, v101);
    return;
  }

  v38 = v127[20];
  v39 = v127[21];
  __swift_project_boxed_opaque_existential_1(v127 + 17, v38);
  (*(v39 + 32))(&v131, 512, v38, v39);
  if (!*(&v133 + 1))
  {
    (*(v102 + 8))(v33, v119);

    sub_224A3311C(&v131, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_5;
  }

  v134[0] = v131;
  v134[1] = v132;
  v135 = v133;
  v40 = sub_224A86CAC();
  if (!v40)
  {

    sub_224A699F0(v134);
    goto LABEL_4;
  }

  v112 = v33;
  v126 = v28;
  v41 = 0;
  v104 = v40;
  v44 = *(v40 + 64);
  v42 = v40 + 64;
  v43 = v44;
  v45 = 1 << *(v42 - 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v99 = (v45 + 63) >> 6;
  v103 = v115 + 16;
  v120 = (v115 + 32);
  v111 = (v102 + 16);
  v110 = (v122 + 56);
  v109 = (v102 + 56);
  v108 = (v122 + 32);
  v107 = (v102 + 32);
  v105 = (v115 + 8);
  v48 = v118;
  v49 = v117;
  v50 = v123;
  v106 = v42;
  v129 = v7;
  while (v47)
  {
    v51 = v41;
LABEL_24:
    v122 = (v47 - 1) & v47;
    v54 = __clz(__rbit64(v47)) | (v51 << 6);
    v55 = v104;
    v56 = v115;
    v57 = v114;
    (*(v115 + 16))(v114, *(v104 + 48) + *(v115 + 72) * v54, v48);
    v58 = *(*(v55 + 56) + 8 * v54);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v60 = *(v59 + 48);
    (*(v56 + 32))(v49, v57, v48);
    *(v49 + v60) = v58;
    (*(*(v59 - 8) + 56))(v49, 0, 1, v59);
    v61 = v58;
    v50 = v123;
LABEL_25:
    sub_224A44E4C(v49, v50, &qword_27D6F4930, &unk_224DB8D00);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v62 - 8) + 48))(v50, 1, v62) == 1)
    {

      sub_224A699F0(v134);
      (*(v102 + 8))(v112, v119);
      v28 = v126;
      goto LABEL_5;
    }

    (*v120)(v128, v50, v48);
    sub_224DAA238();
    v63 = v119;
    (*v111)(v124, v112, v119);
    v121 = *v110;
    v64 = v129;
    v65 = v116;
    v121(v129, 1, 1, v116);
    v66 = type metadata accessor for HostDescriptorPredicate();
    *(v64 + v66[5]) = 3;
    *(v64 + v66[6]) = 3;
    v67 = v66[7];
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v68 - 8) + 56))(v64 + v67, 1, 1, v68);
    v69 = v66[8];
    v70 = *v109;
    (*v109)(&v129[v69], 1, 1, v63);
    v71 = v66[9];
    v72 = sub_224DAC268();
    (*(*(v72 - 8) + 56))(&v129[v71], 1, 1, v72);
    v73 = &v129[v66[10]];
    *v73 = 0;
    v73[8] = 1;
    sub_224A3311C(v129, &qword_27D6F3390, &qword_224DB35B8);
    (*v108)(v129, v125, v65);
    v121(v129, 0, 1, v65);
    sub_224A3311C(&v129[v69], &unk_27D6F6130, &unk_224DBB6A0);
    (*v107)(&v129[v69], v124, v63);
    v74 = &v129[v69];
    v75 = v129;
    v70(v74, 0, 1, v63);
    v76 = *(v66 - 1);
    (*(v76 + 56))(v75, 0, 1, v66);
    v77 = *(&v135 + 1);
    if (!*(*(&v135 + 1) + 16))
    {
      sub_224A3311C(v75, &qword_27D6F46D0, &unk_224DBD6D0);
LABEL_47:
      v48 = v118;
      v50 = v123;
      v49 = v117;
      goto LABEL_13;
    }

    v130 = 0;
    v78 = v75;
    v79 = v113;
    sub_224A3796C(v78, v113, &qword_27D6F46D0, &unk_224DBD6D0);
    if ((*(v76 + 48))(v79, 1, v66) == 1)
    {
      v80 = sub_224A3311C(v79, &qword_27D6F46D0, &unk_224DBD6D0);
      v81 = v129;
    }

    else
    {
      v82 = v79 + v66[10];
      v83 = *v82;
      v84 = *(v82 + 8);
      v80 = sub_224CB2720(v79, type metadata accessor for HostDescriptorPredicate);
      v81 = v129;
      if ((v84 & 1) == 0)
      {
        sub_224A3796C(v134, &v131, &qword_27D6F52B8, &unk_224DBB690);
        if (*(&v132 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v131, *(&v132 + 1));
          v85 = sub_224DADE28();
          __swift_destroy_boxed_opaque_existential_1(&v131);
        }

        else
        {
          sub_224A3311C(&v131, &qword_27D6F52B8, &unk_224DBB690);
          v85 = MEMORY[0x277D84F90];
        }

        v87 = sub_224AE8AF4(v85);

        v130 = v87;
      }
    }

    MEMORY[0x28223BE20](v80);
    *(&v99 - 2) = v81;

    v88 = sub_224A6C07C(sub_224A6CCF4, (&v99 - 4), v77);
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v90 = sub_224A6CF18(v88);

    MEMORY[0x28223BE20](v91);
    *(&v99 - 4) = v81;
    *(&v99 - 3) = &v130;
    *(&v99 - 2) = v89;
    sub_224A6D2D0(sub_224A6D3D0, (&v99 - 6), v90);

    swift_beginAccess();
    v92 = *(v89 + 16);

    sub_224A3311C(v81, &qword_27D6F46D0, &unk_224DBD6D0);
    if (!v92)
    {
      goto LABEL_47;
    }

    if (v92 >> 62)
    {
      v93 = sub_224DAF838();
      if (v93)
      {
LABEL_39:
        v94 = 0;
        while (1)
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v95 = MEMORY[0x22AA5DCC0](v94, v92);
          }

          else
          {
            if (v94 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v95 = *(v92 + 8 * v94 + 32);
          }

          v96 = v95;
          v97 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            break;
          }

          v98 = MEMORY[0x22AA5E4C0]();
          sub_224CAE08C(v96, v128, v127, v126);
          objc_autoreleasePoolPop(v98);

          ++v94;
          if (v97 == v93)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v93)
      {
        goto LABEL_39;
      }
    }

LABEL_12:

    v48 = v118;
    v49 = v117;
    v50 = v123;
LABEL_13:
    (*v105)(v128, v48);
    v42 = v106;
    v47 = v122;
  }

  if (v99 <= v41 + 1)
  {
    v52 = v41 + 1;
  }

  else
  {
    v52 = v99;
  }

  v53 = v52 - 1;
  while (1)
  {
    v51 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v51 >= v99)
    {
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v86 - 8) + 56))(v49, 1, 1, v86);
      v122 = 0;
      v41 = v53;
      goto LABEL_25;
    }

    v47 = *(v42 + 8 * v51);
    ++v41;
    if (v47)
    {
      v41 = v51;
      goto LABEL_24;
    }
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_224CAE08C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v63 = a4;
  v64 = a2;
  v6 = *a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v58 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v55[-v11];
  MEMORY[0x28223BE20](v10);
  v65 = &v55[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55[-v15];
  v70 = sub_224DAC268();
  v17 = *(v70 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v70);
  v60 = &v55[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v55[-v21];
  v23 = [a1 widget];
  v24 = [a1 metrics];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v26 = *(v25 - 8);
  (*(v26 + 16))(v16, v64, v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  sub_224DAC228();
  v27 = a3[16];
  v28 = *(v6 + 104);
  v64 = a3;
  v29 = *(*(v6 + 112) + 8);
  v30 = v61;
  sub_224DAC418();
  if (v30)
  {

    v61 = 0;
    v69 = 0;
    memset(v68, 0, sizeof(v68));
  }

  else
  {
    v61 = 0;
  }

  sub_224A3796C(v68, v66, &unk_27D6F3CB0, &unk_224DB7860);
  v31 = v65;
  v32 = v62;
  if (v67)
  {
    __swift_project_boxed_opaque_existential_1(v66, v67);
    sub_224DAEA88();
    v33 = sub_224DA9878();
    (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    sub_224A3311C(v66, &unk_27D6F3CB0, &unk_224DB7860);
    v34 = sub_224DA9878();
    (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  }

  v35 = v70;
  v36 = v60;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v37 = sub_224DAB258();
  __swift_project_value_buffer(v37, qword_281365120);
  (*(v17 + 16))(v36, v22, v35);
  sub_224A3796C(v31, v32, &qword_27D6F32B0, &qword_224DB3EA0);
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = v22;
    v41 = v40;
    v57 = swift_slowAlloc();
    v66[0] = v57;
    *v41 = 136446466;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
    v56 = v39;
    v42 = sub_224DAFD28();
    v44 = v43;
    v45 = *(v17 + 8);
    v45(v36, v70);
    v46 = sub_224A33F74(v42, v44, v66);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2082;
    sub_224A3796C(v32, v58, &qword_27D6F32B0, &qword_224DB3EA0);
    v47 = sub_224DAEE28();
    v49 = v48;
    sub_224A3311C(v32, &qword_27D6F32B0, &qword_224DB3EA0);
    v50 = v47;
    v31 = v65;
    v51 = sub_224A33F74(v50, v49, v66);

    *(v41 + 14) = v51;
    v35 = v70;
    _os_log_impl(&dword_224A2F000, v38, v56, "Received local timeline archive update for %{public}s; created %{public}s", v41, 0x16u);
    v52 = v57;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v52, -1, -1);
    v53 = v41;
    v22 = v60;
    MEMORY[0x22AA5EED0](v53, -1, -1);
  }

  else
  {

    sub_224A3311C(v32, &qword_27D6F32B0, &qword_224DB3EA0);
    v45 = *(v17 + 8);
    v45(v36, v35);
  }

  sub_224CABF44(v22, v31, 2, v63);
  sub_224A3311C(v31, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A3311C(v68, &unk_27D6F3CB0, &unk_224DB7860);
  return (v45)(v22, v35);
}

void sub_224CAE788(void *a1)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong[20];
    v14 = Strong[21];
    __swift_project_boxed_opaque_existential_1(Strong + 17, v13);
    (*(v14 + 32))(v41, 514, v13, v14);
    if (v42)
    {
      if (*(v42 + 16))
      {

        v16 = sub_224B3DF0C(v15);

        v17 = sub_224A699F0(v41);
        MEMORY[0x28223BE20](v17);
        *(&v37 - 2) = a1;
        v18 = sub_224B449EC(sub_224CB0AB4, (&v37 - 4), v16);

        if (v18)
        {

          return;
        }
      }

      else
      {
        sub_224A699F0(v41);
      }
    }

    else
    {
      sub_224A3311C(v41, &qword_27D6F50E0, &qword_224DB41A0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    v19 = sub_224DAC248();
    v20 = *(v3 + 8);
    v20(v11, v2);
    v21 = [v19 extensionIdentity];

    v22 = &v21[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v22 + 1))
    {
    }

    else
    {
      v37 = v21;
      v38 = v20;
      v23 = v39;
      sub_224DAC838();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v24 = sub_224DAB258();
      __swift_project_value_buffer(v24, qword_281365120);
      (*(v3 + 16))(v7, v23, v2);
      v25 = sub_224DAB228();
      v26 = sub_224DAF2A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v40 = v28;
        *v27 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
        v29 = sub_224DAFD28();
        v31 = v30;
        v32 = v7;
        v33 = v38;
        v38(v32, v2);
        v34 = sub_224A33F74(v29, v31, &v40);

        *(v27 + 4) = v34;
        _os_log_impl(&dword_224A2F000, v25, v26, "Received local timeline archive removal for %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x22AA5EED0](v28, -1, -1);
        v35 = v27;
        v23 = v39;
        MEMORY[0x22AA5EED0](v35, -1, -1);
      }

      else
      {

        v36 = v7;
        v33 = v38;
        v38(v36, v2);
      }

      sub_224CAC9D8(v23, 2);

      v33(v23, v2);
    }
  }
}

uint64_t sub_224CAEC48(id *a1, uint64_t a2)
{
  v3 = [*a1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  v7[2] = a2;
  v5 = sub_224B449EC(sub_224CB0AD4, v7, v4);

  return v5 & 1;
}

uint64_t sub_224CAED04(id *a1, uint64_t a2)
{
  v3 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v4 = sub_224DAF008();

  v7[2] = a2;
  v5 = sub_224B449EC(sub_224CB0AF4, v7, v4);

  return v5 & 1;
}

uint64_t sub_224CAEDC0(void **a1, void *a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v18[0] = v9;
  v11 = [v9 widget];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
  v18[2] = a2;
  sub_224DAC838();
  v12 = sub_224DAC248();
  v13 = *(v5 + 8);
  v19 = v4;
  v13(v8, v4);
  v18[1] = v10;
  LOBYTE(v9) = sub_224DAF6A8();

  if (v9)
  {
    v14 = [v18[0] metrics];
    sub_224DAC838();
    v15 = sub_224DAC258();
    v13(v8, v19);
    v16 = sub_224DAF6A8();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224CAEFB4(uint64_t a1, int a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v46 - v11;
  v12 = sub_224DAA428();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3808, &qword_224DB4188);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v53 = a1;
  sub_224A3796C(a1, &v46 - v25, &qword_27D6F3808, &qword_224DB4188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v49;
    v27 = v50;
    v29 = v51;
    (*(v50 + 32))(v49, v26, v51);
    v30 = v56[3];
    v31 = v56[4];
    __swift_project_boxed_opaque_existential_1(v56, v30);
    v57 = 0;
    (*(v13 + 104))(v17, *MEMORY[0x277CFA038], v12);
    (*(*(v31 + 8) + 56))(&v57, v17, v28, v30);
    (*(v13 + 8))(v17, v12);
    result = (*(v27 + 8))(v28, v29);
    v33 = v55;
    if (!v55)
    {
      return result;
    }

    return v33(v53);
  }

  v34 = v56;
  sub_224A44E4C(v26, v22, &qword_27D6F3828, &unk_224DBD6B0);
  if (v48)
  {
    v35 = v12;
    v36 = v13;
    v37 = v52;
    if (qword_27D6F2CE8 != -1)
    {
      swift_once();
    }

    v38 = *&v22[*(v19 + 36)];
    if (v38)
    {
      v38 = sub_224C92388(0xD000000000000024, 0x8000000224DCCB10, qword_27D6F71D0);
    }
  }

  else
  {
    v38 = *&v22[*(v19 + 36)];
    v39 = v38;
    v35 = v12;
    v36 = v13;
    v37 = v52;
  }

  (*(v36 + 104))(v37, *MEMORY[0x277CFA040], v35);
  v40 = &v22[*(v19 + 40)];
  if (v40[8] == 1)
  {
    v41 = v38;
  }

  else
  {
    v42 = *v40;
    v41 = v38;
    v43 = v47;
    sub_224DAA418();
    result = (*(v36 + 48))(v43, 1, v35);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v36 + 8))(v37, v35);
    (*(v36 + 32))(v37, v43, v35);
  }

  v44 = v34[3];
  v45 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v44);
  v57 = v38;
  (*(*(v45 + 8) + 56))(&v57, v37, v22, v44);

  (*(v36 + 8))(v37, v35);
  result = sub_224A3311C(v22, &qword_27D6F3828, &unk_224DBD6B0);
  v33 = v55;
  if (v55)
  {
    return v33(v53);
  }

  return result;
}

void sub_224CAF52C()
{
  v0 = sub_224DABDB8();
  v1 = sub_224DABDD8();
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_224B44674(Strong + 296, v6);

    v5 = *__swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_224A95C1C(v0, v1, v3);

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }
}

uint64_t sub_224CAF5F8(uint64_t a1, uint64_t a2, char a3)
{
  v134 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v129 = *(v4 - 8);
  v5 = *(v129 + 64);
  MEMORY[0x28223BE20](v4);
  v123 = &v120 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  v7 = *(*(v127 - 1) + 64);
  MEMORY[0x28223BE20](v127);
  v9 = &v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v125 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v16);
  v128 = &v120 - v19;
  v20 = sub_224DACB98();
  v131 = *(v20 - 8);
  v132 = v20;
  v21 = *(v131 + 64);
  MEMORY[0x28223BE20](v20);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v120 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v120 - v31;
  v33 = sub_224DAC268();
  v135 = *(v33 - 8);
  v136 = v33;
  v34 = *(v135 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v124 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v120 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v120 - v40;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v133 = result;
  if (result)
  {
    if (!a3)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v55 = sub_224DAB258();
      __swift_project_value_buffer(v55, qword_281365120);
      sub_224A3796C(v134, v27, &qword_27D6F56D8, &qword_224DBD790);
      v56 = sub_224DAB228();
      v57 = sub_224DAF2A8();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v133;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v138[0] = v61;
        *v60 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
        v62 = sub_224DAFD28();
        v64 = v63;
        sub_224A3311C(v27, &qword_27D6F56D8, &qword_224DBD790);
        v65 = sub_224A33F74(v62, v64, v138);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_224A2F000, v56, v57, "Received remote placeholder archive for %{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x22AA5EED0](v61, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      else
      {

        sub_224A3311C(v27, &qword_27D6F56D8, &qword_224DBD790);
      }

      v91 = v130;
      v90 = v131;
      v92 = sub_224DAC248();
      v93 = [v92 extensionIdentity];

      v94 = __swift_project_boxed_opaque_existential_1(v59 + 22, v59[25]);
      v95 = v132;
      (*(v90 + 104))(v91, *MEMORY[0x277CF9B60], v132);
      v96 = *v94;
      sub_224CEB668(v93, v91);

      (*(v90 + 8))(v91, v95);
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v138[0] = 0;
        v138[1] = 0xE000000000000000;
        sub_224DAF938();
        v137 = a3;
        sub_224DAFA48();
        MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
        result = sub_224DAFB58();
        __break(1u);
        return result;
      }

      v66 = v134;
      (*(v135 + 16))(v41, v134, v136);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v67 = sub_224DAB258();
      __swift_project_value_buffer(v67, qword_281365120);
      sub_224A3796C(v66, v32, &qword_27D6F56D8, &qword_224DBD790);
      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v138[0] = v71;
        *v70 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
        v72 = sub_224DAFD28();
        v74 = v73;
        sub_224A3311C(v32, &qword_27D6F56D8, &qword_224DBD790);
        v75 = sub_224A33F74(v72, v74, v138);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_224A2F000, v68, v69, "Received remote timeline archive for %{public}s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x22AA5EED0](v71, -1, -1);
        MEMORY[0x22AA5EED0](v70, -1, -1);
      }

      else
      {

        sub_224A3311C(v32, &qword_27D6F56D8, &qword_224DBD790);
      }

      v97 = v133;
      v98 = v133[48];
      __swift_project_boxed_opaque_existential_1(v133 + 43, v133[46]);
      v99 = sub_224DAC248();
      v101 = v130;
      v100 = v131;
      v102 = v132;
      (*(v131 + 104))(v130, *MEMORY[0x277CF9B60], v132);
      sub_224DAC718();

      (*(v100 + 8))(v101, v102);
      v103 = sub_224DAC248();
      v104 = [v103 extensionIdentity];

      v105 = sub_224DAC248();
      v106 = [v105 kind];

      v107 = sub_224DAEE18();
      v109 = v108;

      v110 = *__swift_project_boxed_opaque_existential_1(v97 + 37, v97[40]);
      sub_224D99640(v104, v107, v109);

      (*(v135 + 8))(v41, v136);
    }

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v43 = sub_224DAB258();
    __swift_project_value_buffer(v43, qword_281365120);
    sub_224A3796C(v134, v30, &qword_27D6F56D8, &qword_224DBD790);
    v44 = sub_224DAB228();
    v45 = sub_224DAF2A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v121 = v46;
      v122 = swift_slowAlloc();
      v138[0] = v122;
      *v46 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978]);
      v47 = v136;
      v48 = sub_224DAFD28();
      v50 = v49;
      sub_224A3311C(v30, &qword_27D6F56D8, &qword_224DBD790);
      v51 = sub_224A33F74(v48, v50, v138);

      v52 = v121;
      *(v121 + 1) = v51;
      v53 = v52;
      _os_log_impl(&dword_224A2F000, v44, v45, "Received remote snapshot archive for %{public}s", v52, 0xCu);
      v54 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x22AA5EED0](v54, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    else
    {

      sub_224A3311C(v30, &qword_27D6F56D8, &qword_224DBD790);
      v47 = v136;
    }

    v76 = v127;
    (*(v135 + 16))(v39, v134, v47);
    v77 = v128;
    sub_224DAC218();
    if (qword_27D6F2C98 != -1)
    {
      swift_once();
    }

    v78 = __swift_project_value_buffer(v4, qword_27D6F7198);
    v79 = v129;
    (*(v129 + 16))(v18, v78, v4);
    v80 = *(v79 + 56);
    v134 = v79 + 56;
    v127 = v80;
    (v80)(v18, 0, 1, v4);
    v81 = *(v76 + 12);
    sub_224A3796C(v77, v9, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3796C(v18, &v9[v81], &qword_27D6F56C0, &unk_224DB3580);
    v82 = *(v79 + 48);
    if (v82(v9, 1, v4) == 1)
    {
      sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3311C(v77, &qword_27D6F56C0, &unk_224DB3580);
      v83 = v82(&v9[v81], 1, v4);
      v84 = v133;
      v86 = v130;
      v85 = v131;
      if (v83 == 1)
      {
        sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
        v87 = v132;
        v88 = v136;
LABEL_31:
        v133 = sub_224DAC248();
        sub_224DAC258();
        (v127)(v125, 1, 1, v4);
        v116 = v124;
        sub_224DAC228();
        v117 = v135;
        (*(v135 + 8))(v39, v88);
        (*(v117 + 32))(v39, v116, v88);
        goto LABEL_32;
      }
    }

    else
    {
      v89 = v126;
      sub_224A3796C(v9, v126, &qword_27D6F56C0, &unk_224DB3580);
      if (v82(&v9[v81], 1, v4) != 1)
      {
        v111 = v129;
        v112 = &v9[v81];
        v113 = v123;
        (*(v129 + 32))(v123, v112, v4);
        sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
        v114 = sub_224DAEDD8();
        v115 = *(v111 + 8);
        v115(v113, v4);
        sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v128, &qword_27D6F56C0, &unk_224DB3580);
        v115(v89, v4);
        sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
        v87 = v132;
        v84 = v133;
        v86 = v130;
        v85 = v131;
        v88 = v136;
        if (v114)
        {
          goto LABEL_31;
        }

LABEL_32:
        v118 = __swift_project_boxed_opaque_existential_1(v84 + 32, v84[35]);
        (*(v85 + 104))(v86, *MEMORY[0x277CF9B60], v87);
        v119 = *v118;
        sub_224D68DAC(v39, v86);
        (*(v85 + 8))(v86, v87);
        (*(v135 + 8))(v39, v88);
      }

      sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3311C(v128, &qword_27D6F56C0, &unk_224DB3580);
      (*(v129 + 8))(v89, v4);
      v84 = v133;
      v86 = v130;
      v85 = v131;
    }

    sub_224A3311C(v9, &qword_27D6F33C8, &qword_224DB3600);
    v87 = v132;
    v88 = v136;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_224CB05CC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v15)
    {
    }

    else
    {
      sub_224CA8E00(a1, a3, v13);
      if (a4)
      {
        a4(v13);
      }

      sub_224C9ABA4(v13, a6, &qword_27D6F3828, &unk_224DBD6B0, MEMORY[0x277CFA0D8], &qword_27D6F5CE8, &unk_224DBD750, &qword_27D6F5CF0, sub_224C6BB2C, sub_224CB287C);

      return sub_224A3311C(v13, &qword_27D6F3828, &unk_224DBD6B0);
    }
  }

  return result;
}

uint64_t sub_224CB077C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9E268(a1, v4, v5, v6);
}

uint64_t sub_224CB0830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9DDB4(a1, v4, v5, v6);
}

uint64_t sub_224CB08E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA616C(a1, v4, v5, v6);
}

uint64_t sub_224CB099C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9E268(a1, v4, v5, v6);
}

void sub_224CB0A60(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_224CAE788(a1);
}

uint64_t sub_224CB0A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224CB0B14(void **a1)
{
  v2 = *(sub_224DAAE38() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_224CB24E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_224CB0BBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_224CB0BBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_224DAFD18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_224DAAE38();
        v6 = sub_224DAF058();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_224DAAE38() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_224CB1088(v8, v9, a1, v4);
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
    return sub_224CB0CE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_224CB0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_224DA9908();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_224DAAE38();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_224DAAD98();
      v34 = v61;
      sub_224DAAD98();
      v64 = MEMORY[0x22AA57C30](v29, v34);
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224CB1088(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_224DA9908();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_224DAAE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_224CB23F0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_224CB1C88(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_224CB23F0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_224CB2364(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_224DAAD98();
      v36 = v160;
      sub_224DAAD98();
      LODWORD(v150) = MEMORY[0x22AA57C30](v35, v36);
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_224DAAD98();
        v48 = v160;
        sub_224DAAD98();
        LOBYTE(v163) = MEMORY[0x22AA57C30](v47, v48) & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_224AD92E0(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_224AD92E0((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_224CB1C88(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_224CB23F0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_224CB2364(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_224DAAD98();
    v122 = v160;
    sub_224DAAD98();
    LODWORD(v163) = MEMORY[0x22AA57C30](v121, v122);
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_224CB1C88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_224DA9908();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_224DAAE38();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_224DAAD98();
            v51 = v69;
            sub_224DAAD98();
            v71 = MEMORY[0x22AA57C30](v50, v51);
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_224DAAD98();
        v31 = v69;
        sub_224DAAD98();
        v71 = MEMORY[0x22AA57C30](v30, v31);
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_224CB2404(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_224CB2364(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_224CB23F0(v3);
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

uint64_t sub_224CB2404(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_224DAAE38();
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

uint64_t sub_224CB2510()
{
  v1 = v0;
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  (*(*(v3 + 8) + 80))(sub_224CB2950, v0, v2);
  v4 = v0[30];
  v5 = v1[31];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  v12 = v4;
  v13 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 80))(sub_224CB2950, v1, v8);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_224CB262C(char a1)
{
  if (a1 == 1)
  {
    v2 = 472;
    return *(v1 + v2);
  }

  if (a1 == 2)
  {
    v2 = 488;
    return *(v1 + v2);
  }

  sub_224DAF938();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
  result = sub_224DAFB58();
  __break(1u);
  return result;
}

void sub_224CB2714()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_224CACFB0();
}

uint64_t sub_224CB2720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224CB2780()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_224CAC608();
}

void sub_224CB278C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_224CAA8A0();
}

void sub_224CB2798()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_224CA93E0();
}

uint64_t sub_224CB27A4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_224CA904C(a1);
}

uint64_t sub_224CB27B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_224CA7E28();
}

uint64_t sub_224CB27BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA7F48(a1, v4, v5, v6);
}

uint64_t sub_224CB289C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA800C(a1, v4, v5, v6);
}

uint64_t sub_224CB2958(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_224CB05CC(a1, *(v1 + 32), (v1 + 40), *(v1 + 80), *(v1 + 88), *(v1 + 96));
}

uint64_t sub_224CB2970(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_224CAF5F8(a1, *(v1 + 32), *(v1 + 40));
}

void sub_224CB2980()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_224CAF52C();
}

uint64_t sub_224CB298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CB2AA0()
{
  v1 = [v0 controlItems];
  sub_224DAF5D8();
  v2 = sub_224DAF008();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_224DAF838();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v11 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA5DCC0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 controlIdentity];
      v9 = [v8 extensionIdentity];

      sub_224DAF9B8();
      v10 = *(v11 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v3 != v5);

    return v11;
  }

  return result;
}

uint64_t sub_224CB2C30()
{
  v1 = [v0 controlItems];
  sub_224DAF5D8();
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
    sub_224DAF838();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v4);

  return 0x203A736D657469;
}

void *sub_224CB2D08@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = sub_224DAA1C8();
  v6 = v5;
  v7 = [v3 description];
  v8 = sub_224DAEE18();
  v10 = v9;

  a2[3] = &type metadata for _ConfigurationItemForStateCapture;
  a2[4] = sub_224CB3584();
  result = swift_allocObject();
  *a2 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = v10;
  return result;
}

uint64_t sub_224CB2DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAD6B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_224CB2EC0(uint64_t a1)
{
  v3 = [*v1 controlItems];
  sub_224DAF5D8();
  v4 = sub_224DAF008();

  v8[2] = a1;
  sub_224D41B20(sub_224CB3564, v8, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_224CB2F60(uint64_t a1)
{
  v3 = *(v1 + qword_28135C9F0);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224D70330(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v4;
    v4 = sub_224A7AE9C(inited);
    swift_setDeallocating();
    v6 = *(inited + 16);
    swift_arrayDestroy();
  }

  return v4;
}

void sub_224CB303C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAE6E8();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA428();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + qword_28135C9F0);
  os_unfair_lock_lock(*(v14 + 16));
  v15 = sub_224D70330(v3, a1);
  if (v2)
  {

    os_unfair_lock_unlock(*(v14 + 16));
    __break(1u);
  }

  else
  {
    v16 = v15;
    os_unfair_lock_unlock(*(v14 + 16));
    if (v16)
    {
      v17 = *(*v16 + 112);
      (*(v10 + 104))(v13, *MEMORY[0x277CFA040], v9);
      sub_224CB348C(&qword_281351828, MEMORY[0x277CFA048]);
      sub_224DAEFA8();
      sub_224DAEFA8();

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_224AD1978();
      (*(v18 + 104))(v8, *MEMORY[0x277CE3BE8], v5);
      sub_224DAF638();
      swift_willThrow();
    }
  }
}

uint64_t sub_224CB3310()
{
  v0 = *sub_224D701A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHostService()
{
  result = qword_28135A000;
  if (!qword_28135A000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CB340C(uint64_t a1)
{
  v2 = *v1;
  sub_224CB303C(a1);
  return v3 & 1;
}

uint64_t sub_224CB3434(uint64_t a1)
{
  result = sub_224CB348C(&qword_28135A018, type metadata accessor for ControlHostService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224CB348C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_224CB34D4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224A7A7A8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_224CB3584()
{
  result = qword_281352B88[0];
  if (!qword_281352B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281352B88);
  }

  return result;
}

id sub_224CB35D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = *(v3 + 16);
  v9(v6, a1, v2);
  swift_beginAccess();
  sub_224ADC7EC(v8, v6);
  (*(v3 + 8))(v8, v2);
  swift_endAccess();
  v10 = swift_allocObject();
  swift_weakInit();
  v9(v8, a1, v2);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v3 + 32))(v12 + v11, v8, v2);
  aBlock[4] = sub_224CB3A2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 responderWithHandler_];
  _Block_release(v13);

  v16 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v15];

  return v16;
}

uint64_t sub_224CB3894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D68, qword_224DBD968);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B0299C(a3, v7);
    sub_224CB3AAC(v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224CB39C4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  LOBYTE(a1) = sub_224CD6C50(a1, v4);

  return a1 & 1;
}

uint64_t sub_224CB3A2C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224CB3894(a1, v4, v5);
}

uint64_t sub_224CB3AAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D68, qword_224DBD968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CB3C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_224ACED1C;

  return v11(a1, a2, a3);
}

uint64_t sub_224CB3D54()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224CB4154();
  }

  return result;
}

uint64_t sub_224CB3DAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224CB4154();
  }

  return result;
}

uint64_t sub_224CB3E04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  v4 = *a1;
  v5 = sub_224DAFF38();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0x746567646977203ELL, 0xED0000203A78614DLL);
  [a1[9] widgetMaxBudget];
  v6 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v6);

  MEMORY[0x22AA5D210](0x4D796C696164202CLL, 0xEC000000203A7861);
  [a1[9] dailyMaxBudget];
  v7 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v7);

  MEMORY[0x22AA5D210](0xD000000000000015, 0x8000000224DCCE30);
  v8 = a1[5];
  BSDispatchQueueAssert();
  v13 = a1[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
  sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0);
  sub_224AFC154();
  v9 = sub_224DAEF98();
  v11 = v10;

  MEMORY[0x22AA5D210](v9, v11);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_224CB4060(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 56))
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281365150);
    v2 = sub_224DAB228();
    v3 = sub_224DAF2A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_224A2F000, v2, v3, "Updating configuration explicitly due to unprocessed pending configurations present.", v4, 2u);
      MEMORY[0x22AA5EED0](v4, -1, -1);
    }

    sub_224CB5118();
  }
}

uint64_t sub_224CB4154()
{
  v1 = v0;
  v2 = sub_224DAF3B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB8, &qword_224DBDAF0);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DC0, &unk_224DBDAF8);
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x28223BE20](v18);
  v62 = &v49 - v20;
  v21 = v0[15];
  v22 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
  (*(v22 + 32))(v65, 768, v21, v22);
  if (!v66)
  {
    return sub_224A3311C(v65, &qword_27D6F50E0, &qword_224DB41A0);
  }

  if (!*(v66 + 16))
  {
    return sub_224A699F0(v65);
  }

  v23 = sub_224A79FA8(v66);
  sub_224A699F0(v65);
  if (v23 >> 62)
  {
    v48 = sub_224DAF838();

    if (!v48)
    {
      return result;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v24)
    {
      return result;
    }
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_281365150);
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  v29 = os_log_type_enabled(v27, v28);
  v53 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_224A2F000, v27, v28, "Configuration manager received first configuration update", v30, 2u);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  sub_224CB5118();
  if (v1[4])
  {
    v31 = v1[4];

    sub_224DAB328();

    v32 = v1[4];
  }

  v54 = v6;
  v55 = v3;
  v56 = v2;
  v1[4] = 0;

  v33 = sub_224DAB228();
  v34 = sub_224DAF2A8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_224A2F000, v33, v34, "Configuration manager first update handled, now debouncing requests.", v35, 2u);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  v36 = v1[15];
  v37 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v36);
  v65[0] = (*(*(v37 + 8) + 40))(768, v36);
  v64 = v1[5];
  v38 = v64;
  v50 = sub_224DAF358();
  v39 = *(v50 - 8);
  v51 = *(v39 + 56);
  v52 = v39 + 56;
  v51(v10, 1, 1, v50);
  v49 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);
  v40 = v58;
  v41 = v59;
  sub_224DAB3E8();

  (*(v57 + 8))(v14, v40);
  v42 = v54;
  sub_224DAF388();
  v65[0] = v1[5];
  v43 = v65[0];
  v51(v10, 1, 1, v50);
  sub_224A33088(&qword_281351378, &qword_27D6F5DB8, &qword_224DBDAF0);
  v44 = v43;
  v45 = v61;
  v46 = v62;
  sub_224DAB468();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  (*(v55 + 8))(v42, v56);
  (*(v60 + 8))(v41, v45);
  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351320, &qword_27D6F5DC0, &unk_224DBDAF8);
  v47 = v53;
  sub_224DAB488();

  (*(v63 + 8))(v46, v47);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CB4A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v3 = a1;
    *(a2 + 48) = v8;
    if (qword_281351700 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365150);

  v10 = sub_224DAB228();
  v11 = sub_224DAF278();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v4 + 48);

    _os_log_impl(&dword_224A2F000, v10, v11, "Configuration manager received pending update; pending sequence number: %lld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a3, v3, v13);
}

uint64_t sub_224CB4B94()
{
  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281365150);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Configuration manager received debounced update.", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224CB5118();
  }

  return result;
}

uint64_t sub_224CB4CA8()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 75;
}

uint64_t sub_224CB4DC4()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 40;
}

uint64_t sub_224CB4EE0()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 750;
}

uint64_t sub_224CB4FFC()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 2;
}

void sub_224CB5118()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = v0[5];
  BSDispatchQueueAssert();
  v7 = v0[6];
  if (v0[7] == v7)
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365150);
    v25 = sub_224DAB228();
    v9 = sub_224DAF278();
    if (os_log_type_enabled(v25, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224A2F000, v25, v9, "Update ignored because sequence numbers match.", v10, 2u);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    v11 = v25;
  }

  else
  {
    v0[7] = v7;
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365150);

    v13 = sub_224DAB228();
    v14 = sub_224DAF278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v1[7];

      _os_log_impl(&dword_224A2F000, v13, v14, "Updated last processed configuration number: %lld", v15, 0xCu);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    else
    {
    }

    v16 = v1[15];
    v17 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v16);
    (*(v17 + 32))(v26, 768, v16, v17);
    if (v26[5])
    {
      if (qword_281356838 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for HostDescriptorPredicate();
      v19 = __swift_project_value_buffer(v18, qword_281365218);
      sub_224CB9250(v19, v5);
      (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
      v20 = sub_224A6BAF8(v5);
      sub_224A3311C(v5, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v26);
      if (v20)
      {
        sub_224CB6338();

        sub_224CB6620();
        sub_224CB551C();
        return;
      }
    }

    else
    {
      sub_224A3311C(v26, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224A2F000, v21, v22, "Update ignored because no widgets configuration was present.", v23, 2u);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }
  }
}

uint64_t sub_224CB551C()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  (*(v2 + 32))(v159, 768, v1, v2);
  if (!v160)
  {
    return sub_224A3311C(v159, &qword_27D6F50E0, &qword_224DB41A0);
  }

  if (!*(v160 + 16))
  {
    return sub_224A699F0(v159);
  }

  v4 = sub_224B3DF0C(v3);

  sub_224A699F0(v159);
  v5 = v4;
  v130 = v4;
  if (v4 >> 62)
  {
    goto LABEL_133;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
  }

LABEL_5:
  v7 = 0;
  v131 = v5 & 0xC000000000000001;
  v127 = v5 + 32;
  v128 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = &off_27853F000;
  v9 = 0x277CFA000;
  v10 = &off_27853F000;
  v129 = v6;
  while (1)
  {
    if (v131)
    {
      v11 = v7;
      v12 = MEMORY[0x22AA5DCC0](v7, v5);
    }

    else
    {
      if (v7 >= *(v128 + 16))
      {
        goto LABEL_132;
      }

      v11 = v7;
      v12 = *(v127 + 8 * v7);
    }

    v133 = v12;
    v13 = __OFADD__(v11, 1);
    v14 = v11 + 1;
    if (v13)
    {
      goto LABEL_131;
    }

    v132 = v14;
    v15 = [v12 rateLimitPolicies];
    if (v15)
    {
      break;
    }

    v22 = MEMORY[0x277D84F98];
LABEL_74:
    v82 = [v133 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v83 = sub_224DAF008();

    v84 = v83;
    if (v83 >> 62)
    {
      v85 = sub_224DAF838();
      v84 = v83;
      if (v85)
      {
LABEL_76:
        v86 = 0;
        v140 = v84 & 0xC000000000000001;
        v134 = v84 + 32;
        v135 = v84 & 0xFFFFFFFFFFFFFF8;
        v137 = v85;
        do
        {
          if (v140)
          {
            v87 = MEMORY[0x22AA5DCC0](v86);
          }

          else
          {
            if (v86 >= *(v135 + 16))
            {
              goto LABEL_127;
            }

            v87 = *(v134 + 8 * v86);
          }

          v88 = v87;
          v13 = __OFADD__(v86, 1);
          v89 = v86 + 1;
          if (v13)
          {
            goto LABEL_124;
          }

          v90 = [v87 widgets];
          sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
          v91 = sub_224DAF008();

          v144 = v89;
          if (v91 >> 62)
          {
            v92 = sub_224DAF838();
            v142 = v88;
            if (v92)
            {
LABEL_85:
              if (v92 < 1)
              {
                goto LABEL_126;
              }

              v93 = 0;
              v152 = v91;
              v153 = v91 & 0xC000000000000001;
              v150 = v92;
              while (2)
              {
                if (v153)
                {
                  v94 = MEMORY[0x22AA5DCC0](v93, v91);
                }

                else
                {
                  v94 = *(v91 + 8 * v93 + 32);
                }

                v95 = v94;
                v96 = [v94 v8[388]];
                v97 = *(v9 + 1096);
                objc_opt_self();
                v98 = swift_dynamicCastObjCClass();
                if (v98)
                {
                  v99 = [v98 v10[389]];
                  if (v99)
                  {
                    v100 = v99;
                    v101 = sub_224DAEE18();
                    if (v22[2])
                    {
                      v103 = v8;
                      v104 = v10;
                      v105 = sub_224A3A40C(v101, v102);
                      v106 = v22;
                      v108 = v107;

                      if (v108)
                      {
                        v148 = *(v106[7] + 8 * v105);
                        v149 = v106;

                        v109 = [v95 extensionBundleIdentifier];
                        if (!v109)
                        {
                          sub_224DAEE18();
                          v109 = sub_224DAEDE8();
                        }

                        v110 = [v95 uniqueIdentifier];
                        v92 = v150;
                        if (!v110)
                        {
                          sub_224DAEE18();
                          v110 = sub_224DAEDE8();
                        }

                        v111 = _CHSUniqueWidgetRateLimitConfigurationName();

                        v112 = v111;
                        if (!v111)
                        {
                          sub_224DAEE18();
                          v112 = sub_224DAEDE8();
                        }

                        v113 = sub_224DAEE18();
                        v115 = v114;
                        if (qword_281351700 != -1)
                        {
                          swift_once();
                        }

                        v147 = v112;
                        v116 = sub_224DAB258();
                        __swift_project_value_buffer(v116, qword_281365150);

                        v117 = sub_224DAB228();
                        v118 = sub_224DAF2A8();

                        if (os_log_type_enabled(v117, v118))
                        {
                          v119 = v113;
                          v120 = swift_slowAlloc();
                          v121 = swift_slowAlloc();
                          v154[0] = v121;
                          *v120 = 136446210;
                          v122 = sub_224A33F74(v119, v115, v154);

                          *(v120 + 4) = v122;
                          _os_log_impl(&dword_224A2F000, v117, v118, "Updating rate limit configuration: %{public}s", v120, 0xCu);
                          __swift_destroy_boxed_opaque_existential_1(v121);
                          MEMORY[0x22AA5EED0](v121, -1, -1);
                          MEMORY[0x22AA5EED0](v120, -1, -1);
                        }

                        else
                        {
                        }

                        v22 = v149;
                        v91 = v152;
                        v123 = *(v145 + 64);
                        sub_224A3B79C(0, &qword_27D6F5D98, 0x277D06A10);
                        v124 = v123;
                        v125 = sub_224DAEFF8();

                        [v124 createRateLimitConfigurationWithName:v147 rateLimits:v125];
                        swift_unknownObjectRelease();

                        v8 = &off_27853F000;
                        v9 = 0x277CFA000;
                        v10 = &off_27853F000;
                      }

                      else
                      {

                        swift_unknownObjectRelease();
                        v9 = 0x277CFA000;
                        v22 = v106;
                        v10 = v104;
                        v8 = v103;
                        v92 = v150;
                        v91 = v152;
                      }

LABEL_89:
                      if (v92 == ++v93)
                      {
                        goto LABEL_77;
                      }

                      continue;
                    }
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_89;
                }

                break;
              }

              swift_unknownObjectRelease();
              goto LABEL_89;
            }
          }

          else
          {
            v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v142 = v88;
            if (v92)
            {
              goto LABEL_85;
            }
          }

LABEL_77:

          v86 = v144;
        }

        while (v144 != v137);
      }
    }

    else
    {
      v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v85)
      {
        goto LABEL_76;
      }
    }

    v5 = v130;
    v7 = v132;
    if (v132 == v129)
    {
    }
  }

  v16 = v15;
  sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
  sub_224A3B758(&unk_281350920, &qword_281350930, 0x277CFA408);
  v17 = sub_224DAF1B8();

  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v17 = v159[0];
    v18 = v159[1];
    v19 = v159[2];
    v20 = v159[3];
    v21 = v159[4];
  }

  else
  {
    v20 = 0;
    v23 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v17 + 56);
  }

  v26 = (v19 + 64) >> 6;
  v22 = MEMORY[0x277D84F98];
  v9 = 0x277CFA000;
  v138 = v18;
  v139 = v17;
  for (i = v26; ; v26 = i)
  {
    if (v17 < 0)
    {
      v34 = sub_224DAF878();
      if (!v34)
      {
        v9 = 0x277CFA000;
LABEL_73:
        sub_224A3B7E4();
        goto LABEL_74;
      }

      v155 = v34;
      swift_dynamicCast();
      v33 = v154[0];
      v141 = v21;
      v143 = v20;
      v9 = 0x277CFA000;
      if (!v154[0])
      {
        goto LABEL_73;
      }
    }

    else
    {
      v30 = v20;
      v31 = v21;
      v32 = v20;
      if (!v21)
      {
        while (1)
        {
          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v32 >= v26)
          {
            goto LABEL_73;
          }

          v31 = *(v18 + 8 * v32);
          ++v30;
          if (v31)
          {
            goto LABEL_28;
          }
        }

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
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        v6 = sub_224DAF838();
        v5 = v130;
        if (!v6)
        {
        }

        goto LABEL_5;
      }

LABEL_28:
      v141 = (v31 - 1) & v31;
      v143 = v32;
      v33 = *(*(v17 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (!v33)
      {
        goto LABEL_73;
      }
    }

    v146 = v33;
    v35 = [v33 rateLimits];
    sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
    sub_224A3B758(&unk_281350A10, &unk_281350A20, 0x277CFA400);
    v36 = sub_224DAF1B8();

    if ((v36 & 0xC000000000000001) != 0)
    {
      break;
    }

    v38 = *(v36 + 16);
    if (v38)
    {
      v158 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v40 = -1 << *(v36 + 32);
      v41 = sub_224DAF798();
      v42 = *(v36 + 36);
      v155 = v41;
      v156 = v42;
      v157 = 0;
      goto LABEL_38;
    }

LABEL_62:

    v65 = MEMORY[0x277D84F90];
LABEL_63:
    v66 = [v146 identifier];
    v67 = sub_224DAEE18();
    v69 = v68;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v22;
    v71 = sub_224A3A40C(v67, v69);
    v73 = v22[2];
    v74 = (v72 & 1) == 0;
    v13 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v13)
    {
      goto LABEL_128;
    }

    v76 = v72;
    if (v22[3] < v75)
    {
      sub_224B17CE0(v75, isUniquelyReferenced_nonNull_native);
      v71 = sub_224A3A40C(v67, v69);
      if ((v76 & 1) != (v77 & 1))
      {
        goto LABEL_137;
      }

LABEL_68:
      v18 = v138;
      v17 = v139;
      if (v76)
      {
        goto LABEL_21;
      }

      goto LABEL_69;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_68;
    }

    v81 = v71;
    sub_224B29530();
    v71 = v81;
    v18 = v138;
    v17 = v139;
    if (v76)
    {
LABEL_21:
      v27 = v71;

      v22 = v154[0];
      v28 = *(v154[0] + 7);
      v29 = *(v28 + 8 * v27);
      *(v28 + 8 * v27) = v65;

      goto LABEL_22;
    }

LABEL_69:
    v22 = v154[0];
    *(v154[0] + (v71 >> 6) + 8) |= 1 << v71;
    v78 = (v22[6] + 16 * v71);
    *v78 = v67;
    v78[1] = v69;
    *(v22[7] + 8 * v71) = v65;

    v79 = v22[2];
    v13 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v13)
    {
      goto LABEL_130;
    }

    v22[2] = v80;
LABEL_22:
    v21 = v141;
    v20 = v143;
    v8 = &off_27853F000;
    v9 = 0x277CFA000uLL;
  }

  v37 = sub_224DAF838();
  if (!v37)
  {
    goto LABEL_62;
  }

  v38 = v37;
  v158 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v155 = sub_224DAF7D8();
  v156 = v39;
  v157 = 1;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_129;
  }

LABEL_38:
  v43 = 0;
  v151 = objc_opt_self();
  while (2)
  {
    if (v43 >= v38)
    {
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
      goto LABEL_125;
    }

    v13 = __OFADD__(v43++, 1);
    if (v13)
    {
      goto LABEL_119;
    }

    v45 = v22;
    v47 = v155;
    v46 = v156;
    v48 = v157;
    sub_224CB9AFC(v155, v156, v157, v36);
    v50 = v49;
    v51 = [v49 maximumRefreshes];
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    v52 = v51;
    [v50 window];
    v53 = [v151 rateLimitWithMaximum:v52 perWindow:?];

    sub_224DAF9B8();
    v54 = *(v158 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
    if ((v36 & 0xC000000000000001) == 0)
    {
      if (v48)
      {
        goto LABEL_136;
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      v55 = 1 << *(v36 + 32);
      if (v47 >= v55)
      {
        goto LABEL_121;
      }

      v56 = v47 >> 6;
      v57 = *(v36 + 56 + 8 * (v47 >> 6));
      if (((v57 >> v47) & 1) == 0)
      {
        goto LABEL_122;
      }

      if (*(v36 + 36) != v46)
      {
        goto LABEL_123;
      }

      v58 = v57 & (-2 << (v47 & 0x3F));
      if (v58)
      {
        v55 = __clz(__rbit64(v58)) | v47 & 0x7FFFFFFFFFFFFFC0;
        v10 = &off_27853F000;
      }

      else
      {
        v59 = v56 << 6;
        v60 = v56 + 1;
        v61 = (v36 + 64 + 8 * v56);
        v10 = &off_27853F000;
        while (v60 < (v55 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            sub_224A3E204(v47, v46, 0);
            v55 = __clz(__rbit64(v62)) + v59;
            goto LABEL_60;
          }
        }

        sub_224A3E204(v47, v46, 0);
      }

LABEL_60:
      v64 = *(v36 + 36);
      v155 = v55;
      v156 = v64;
      v157 = 0;
LABEL_40:
      v22 = v45;
      if (v43 == v38)
      {
        sub_224A3E204(v155, v156, v157);

        v65 = v158;
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  if (v48)
  {
    if (sub_224DAF7F8())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    v10 = &off_27853F000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5DA0, &unk_224DBDAE0);
    v44 = sub_224DAF1E8();
    sub_224DAF8A8();
    v44(v154, 0);
    goto LABEL_40;
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CB6338()
{
  v1 = v0;
  v2 = *(v0 + 40);
  BSDispatchQueueAssert();
  v3 = sub_224CB4CA8();
  v4 = [*(v1 + 72) widgetMaxBudget];
  v5 = v3 != v4;
  if (v3 != v4)
  {
    [*(v1 + 72) setWidgetMaxBudget_];
  }

  v6 = sub_224CB4DC4();
  if (v6 != [*(v1 + 72) systemAddedWidgetMaxBudget])
  {
    [*(v1 + 72) setSystemAddedWidgetMaxBudget_];
    v5 = 1;
  }

  v25 = MEMORY[0x277D84F98];

  v8 = sub_224CB8EC0(v7, &v25);

  if (v8 >> 62)
  {
    v9 = sub_224DAF838();

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = [*(v1 + 72) widgetMaxBudget];
  if (!is_mul_ok(v9, v10))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  v11 = v9 * v10;
  v12 = sub_224CB4EE0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = [*(v1 + 72) widgetMaxBudget];
  if (v14 > v13)
  {
    v13 = v14;
  }

  if (v13 == [*(v1 + 72) dailyMaxBudget])
  {
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [*(v1 + 72) setDailyMaxBudget_];
  }

  if (qword_281351700 != -1)
  {
    goto LABEL_27;
  }

LABEL_18:
  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281365150);

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    v20 = sub_224CB8B80();
    v22 = sub_224A33F74(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_224A2F000, v16, v17, "Configuration manager updated budget: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  [*(v1 + 64) setBudget_];
LABEL_21:
}

uint64_t sub_224CB6620()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(v0 + 40);
  BSDispatchQueueAssert();
  v10 = *(v0 + 40);
  BSDispatchQueueAssert();
  v11 = *(v0 + 152);
  *(v0 + 152) = 1;
  sub_224DA9868();
  sub_224CB678C((v11 & 1) == 0, v8);
  sub_224CB73CC((v11 & 1) == 0);
  v12 = *(v2 + 8);
  result = v12(v8, v1);
  if (!*(v0 + 144))
  {
    sub_224DA9868();
    sub_224CB8614(v6, v8);
    v12(v6, v1);
    sub_224CB7BA8(v8);
    return v12(v8, v1);
  }

  return result;
}

uint64_t sub_224CB678C(int a1, unint64_t a2)
{
  v98 = a2;
  v94 = a1;
  v99 = sub_224DAD738();
  v92 = *(v99 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v99);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v91 - v8;
  v9 = sub_224DA99A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = sub_224DA99B8();
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v97);
  v17 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v91 - v20;
  v22 = sub_224DA9878();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22);
  v95 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2[5];
  BSDispatchQueueAssert();
  v96 = v2;
  if (sub_224CB4FFC() < 0)
  {
    __break(1u);
LABEL_24:
    v42 = sub_224DAF838();
    v91 = v23;
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_25:

    v43 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  sub_224DA9988();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9968], v9);
  sub_224DA9978();
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v97);
  if ((*(v23 + 6))(v21, 1, v22) == 1)
  {
    return sub_224A3311C(v21, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  v17 = v95;
  (*(v23 + 4))(v95, v21, v22);
  v28 = v96[15];
  v29 = v96[16];
  __swift_project_boxed_opaque_existential_1(v96 + 12, v28);
  (*(v29 + 32))(&v102, 768, v28, v29);
  if (v104)
  {
    sub_224DA9758();
    v31 = v30;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    v33 = v93;
    (*(*(v32 - 8) + 56))(v93, 1, 1, v32);
    v34 = type metadata accessor for HostDescriptorPredicate();
    *(v33 + v34[5]) = 3;
    *(v33 + v34[6]) = 3;
    v35 = v34[7];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
    v37 = v34[8];
    v38 = sub_224DABE18();
    (*(*(v38 - 8) + 56))(v33 + v37, 1, 1, v38);
    v39 = v34[9];
    v40 = sub_224DAC268();
    (*(*(v40 - 8) + 56))(v33 + v39, 1, 1, v40);
    v41 = v33 + v34[10];
    *v41 = v31;
    *(v41 + 8) = 0;
    (*(*(v34 - 1) + 56))(v33, 0, 1, v34);
    v21 = sub_224A6BAF8(v33);
    sub_224A3311C(v33, &qword_27D6F46D0, &unk_224DBD6D0);
    sub_224A699F0(&v102);
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_224A3311C(&v102, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_9:
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  v42 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v91 = v23;
  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_11:
  v102 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v93 = v22;
  v43 = v102;
  v44 = v21;
  v98 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v45 = 0;
    v46 = (v92 + 8);
    v97 = xmmword_224DB2780;
    do
    {
      v47 = MEMORY[0x22AA5DCC0](v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v48 = swift_allocObject();
      *(v48 + 16) = v97;
      *(v48 + 32) = v47;
      swift_unknownObjectRetain();
      sub_224DAD708();
      v49 = sub_224DAD6F8();
      v51 = v50;
      swift_unknownObjectRelease();
      (*v46)(v5, v99);
      v102 = v43;
      v53 = *(v43 + 16);
      v52 = *(v43 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_224A3DFD8((v52 > 1), v53 + 1, 1);
        v43 = v102;
      }

      ++v45;
      *(v43 + 16) = v53 + 1;
      v54 = v43 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v44 = v98;
    }

    while (v42 != v45);
  }

  else
  {
    v55 = (v92 + 8);
    v56 = 32;
    v97 = xmmword_224DB2780;
    do
    {
      v57 = *(v44 + v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v58 = swift_allocObject();
      *(v58 + 16) = v97;
      *(v58 + 32) = v57;
      v59 = v57;
      sub_224DAD708();
      v60 = sub_224DAD6F8();
      v62 = v61;

      (*v55)(v5, v99);
      v102 = v43;
      v64 = *(v43 + 16);
      v63 = *(v43 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_224A3DFD8((v63 > 1), v64 + 1, 1);
        v43 = v102;
      }

      *(v43 + 16) = v64 + 1;
      v65 = v43 + 16 * v64;
      *(v65 + 32) = v60;
      *(v65 + 40) = v62;
      v56 += 8;
      --v42;
      v44 = v98;
    }

    while (v42);
  }

  v22 = v93;
LABEL_26:
  v66 = sub_224AE8AF4(v43);

  if ((v94 & 1) == 0)
  {
    v67 = v96[10];

    v68 = sub_224CBDDB8(v66, v67);

    if (v68)
    {

      v17 = v91;
      v9 = v95;
      if (qword_281351700 == -1)
      {
LABEL_29:
        v69 = sub_224DAB258();
        __swift_project_value_buffer(v69, qword_281365150);
        v70 = sub_224DAB228();
        v71 = sub_224DAF2A8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_224A2F000, v70, v71, "Configuration manager found no changes to the exempt identifiers", v72, 2u);
          MEMORY[0x22AA5EED0](v72, -1, -1);
        }

        return v17[1](v9, v22);
      }

LABEL_46:
      swift_once();
      goto LABEL_29;
    }
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v73 = sub_224DAB258();
  __swift_project_value_buffer(v73, qword_281365150);

  v74 = sub_224DAB228();
  v75 = sub_224DAF2A8();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v101 = v77;
    *v76 = 136446210;
    if (*(v66 + 16))
    {
      v102 = 2314;
      v103 = 0xE200000000000000;
      v100 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
      sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0);
      sub_224AFC154();
      v78 = sub_224DAEF98();
      MEMORY[0x22AA5D210](v78);

      v79 = v102;
      v80 = v103;
    }

    else
    {
      v80 = 0xE600000000000000;
      v79 = 0x3E656E6F6E3CLL;
    }

    v81 = sub_224A33F74(v79, v80, &v101);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_224A2F000, v74, v75, "Configuration manager updating exempt identifiers: %{public}s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x22AA5EED0](v77, -1, -1);
    MEMORY[0x22AA5EED0](v76, -1, -1);
  }

  v82 = v96;
  v83 = v96[10];
  v96[10] = v66;

  v84 = v82[8];
  v85 = *(v66 + 16);
  if (!v85)
  {
    goto LABEL_42;
  }

  v86 = sub_224B0CC2C(*(v66 + 16), 0);
  v87 = sub_224B2F374(&v102, v86 + 4, v85, v66);
  v88 = v84;
  sub_224A3B7E4();
  if (v87 != v85)
  {
    __break(1u);
LABEL_42:
    v89 = v84;
  }

  v17 = v91;
  v9 = v95;
  v90 = sub_224DAEFF8();

  [v84 setOverridesForWidgetBudgetIDs_];

  return v17[1](v9, v22);
}

void sub_224CB73CC(int a1)
{
  v2 = v1;
  v56 = a1;
  v66 = sub_224DAD738();
  v3 = *(v66 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v66);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[5];
  BSDispatchQueueAssert();
  v72 = MEMORY[0x277D84FA0];
  v8 = v1[15];
  v9 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v8);
  (*(v9 + 4))(&v69, 768, v8, v9);
  if (v71)
  {
    if (*(v71 + 16))
    {
      v10 = sub_224A79FA8(v71);
      sub_224A699F0(&v69);
      if (v10 >> 62)
      {
        goto LABEL_31;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v55 = v2;
        v12 = 0;
        v61 = v10 & 0xC000000000000001;
        v58 = v10 & 0xFFFFFFFFFFFFFF8;
        v57 = v10 + 32;
        v65 = (v3 + 1);
        v3 = &selRef_pairingState;
        v64 = xmmword_224DB2780;
        v60 = v10;
        v59 = i;
        while (1)
        {
          if (v61)
          {
            v13 = MEMORY[0x22AA5DCC0](v12, v10);
          }

          else
          {
            if (v12 >= *(v58 + 16))
            {
              goto LABEL_30;
            }

            v13 = *(v57 + 8 * v12);
          }

          v2 = v13;
          v14 = __OFADD__(v12, 1);
          v15 = v12 + 1;
          if (v14)
          {
            break;
          }

          v10 = [v13 widgets];
          sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
          v16 = sub_224DAF008();

          v62 = v2;
          v63 = v15;
          if (v16 >> 62)
          {
            v17 = sub_224DAF838();
            if (!v17)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v17)
            {
              goto LABEL_6;
            }
          }

          if (v17 < 1)
          {
            goto LABEL_29;
          }

          for (j = 0; j != v17; ++j)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x22AA5DCC0](j, v16);
            }

            else
            {
              v19 = *(v16 + 8 * j + 32);
            }

            v20 = v19;
            if ([v19 v3[106]])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
              v21 = swift_allocObject();
              *(v21 + 16) = v64;
              *(v21 + 32) = v20;
              v22 = v20;
              sub_224DAD708();
              v23 = sub_224DAD6F8();
              v2 = v3;
              v25 = v24;
              (*v65)(v6, v66);
              v26 = v25;
              v3 = v2;
              sub_224ADAF60(&v69, v23, v26);
            }

            else
            {
            }
          }

LABEL_6:

          v12 = v63;
          v10 = v60;
          if (v63 == v59)
          {

            v2 = v55;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }
    }

    else
    {
      sub_224A699F0(&v69);
    }
  }

  else
  {
    sub_224A3311C(&v69, &qword_27D6F50E0, &qword_224DB41A0);
  }

LABEL_33:
  if ((v56 & 1) != 0 || (v27 = v72, v28 = v2[11], , , v29 = sub_224CBDDB8(v27, v28), , , (v29 & 1) == 0))
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v34 = sub_224DAB258();
    __swift_project_value_buffer(v34, qword_281365150);
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136446210;
      swift_beginAccess();
      if (*(v72 + 16))
      {
        v69 = 2314;
        v70 = 0xE200000000000000;
        v67 = v72;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
        sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0);
        sub_224AFC154();
        v40 = sub_224DAEF98();
        v42 = v41;

        MEMORY[0x22AA5D210](v40, v42);

        v43 = v69;
        v44 = v70;
      }

      else
      {
        v44 = 0xE600000000000000;
        v43 = 0x3E656E6F6E3CLL;
      }

      v45 = sub_224A33F74(v43, v44, &v68);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_224A2F000, v35, v36, "Configuration manager updating system added identifiers: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);

      v2 = v37;
    }

    else
    {
    }

    swift_beginAccess();
    v46 = v72;
    v47 = v2[11];
    v2[11] = v72;
    swift_bridgeObjectRetain_n();

    v48 = v2[8];
    v49 = *(v46 + 16);
    if (v49)
    {
      v50 = sub_224B0CC2C(*(v46 + 16), 0);
      v51 = sub_224B2F374(&v69, v50 + 4, v49, v46);
      v52 = v48;
      sub_224A3B7E4();
      if (v51 == v49)
      {
LABEL_52:
        v31 = sub_224DAEFF8();

        [v48 setSystemAddedWidgetBudgetIDs_];

        goto LABEL_53;
      }

      __break(1u);
    }

    v53 = v48;

    goto LABEL_52;
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v30 = sub_224DAB258();
  __swift_project_value_buffer(v30, qword_281365150);
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_224A2F000, v31, v32, "Configuration manager found no changes to the system added identifiers", v33, 2u);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

LABEL_53:
}

uint64_t sub_224CB7BA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_224DAB848();
  v65 = *(v67 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB798();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v55 - v13;
  v14 = sub_224DAB898();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAF438();
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v17);
  v70 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DA9878();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + 40);
  BSDispatchQueueAssert();
  if (*(v1 + 144))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_224DAF478();
    swift_unknownObjectRelease();
    v26 = *(v1 + 144);
    *(v1 + 144) = 0;
    swift_unknownObjectRelease();
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281365150);
  (*(v21 + 16))(v24, a1, v20);
  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();
  v30 = os_log_type_enabled(v28, v29);
  v73 = a1;
  if (!v30)
  {

    (*(v21 + 8))(v24, v20);
    goto LABEL_9;
  }

  v56 = v1;
  v2 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  aBlock[0] = v31;
  *v2 = 136446210;
  if (qword_281351A50 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v32 = qword_281351A58;
    v33 = sub_224DA9778();
    v34 = [v32 stringFromDate_];

    v35 = sub_224DAEE18();
    v37 = v36;

    (*(v21 + 8))(v24, v20);
    v38 = sub_224A33F74(v35, v37, aBlock);

    *(v2 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v28, v29, "Schedule next budget list refresh timer for: %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v2, -1, -1);

    v2 = v56;
LABEL_9:
    v31 = sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
    v39 = *(v2 + 40);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_224CB8E60();
    v24 = v39;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D80, &unk_224DBDAD0);
    sub_224A33088(&qword_281350B88, &unk_27D6F5D80, &unk_224DBDAD0);
    v40 = v70;
    v21 = v72;
    sub_224DAF788();
    v20 = sub_224DAF448();

    (*(v71 + 8))(v40, v21);
    sub_224DA97D8();
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v41 <= -9.22337204e18)
    {
      goto LABEL_14;
    }

    if (v41 < 9.22337204e18)
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v42 = v61;
  sub_224DAB888();
  ObjectType = swift_getObjectType();
  v44 = v57;
  *v57 = 10;
  v46 = v59;
  v45 = v60;
  v47 = *(v59 + 104);
  v47(v44, *MEMORY[0x277D85188], v60);
  v48 = v58;
  v47(v58, *MEMORY[0x277D85180], v45);
  MEMORY[0x22AA5D910](v42, v48, v44, ObjectType);
  v49 = *(v46 + 8);
  v49(v48, v45);
  v49(v44, v45);
  aBlock[4] = sub_224CB8EB8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_40;
  v50 = _Block_copy(aBlock);

  v51 = v64;
  sub_224AD5C90();
  v52 = v66;
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v50);
  (*(v68 + 8))(v52, v69);
  (*(v65 + 8))(v51, v67);

  sub_224DAF488();
  (*(v62 + 8))(v42, v63);
  v53 = *(v2 + 144);
  *(v2 + 144) = v20;
  return swift_unknownObjectRelease();
}

uint64_t sub_224CB8434(uint64_t a1)
{
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 40);
  BSDispatchQueueAssert();
  sub_224DA9868();
  sub_224CB8614(v7, v9);
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281365150);
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_224A2F000, v13, v14, "Scheduled event fired.", v15, 2u);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  sub_224CB6620();
  sub_224CB7BA8(v9);
  return (v11)(v9, v2);
}

uint64_t sub_224CB8614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v51 = a2;
  v2 = sub_224DA99A8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v42 - v11;
  v55 = sub_224DA9878();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v55);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = sub_224DA9A08();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_224DA9948();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DA99B8();
  v48 = *(v25 - 8);
  v49 = v25;
  v26 = *(v48 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x277CC9830], v20);
  sub_224DA9958();
  (*(v21 + 8))(v24, v20);
  sub_224DA99F8();
  sub_224DA9998();
  sub_224DA9968();
  v29 = *MEMORY[0x277CC9980];
  v43 = v3[13];
  v43(v6, v29, v2);
  v30 = v53;
  v50 = v17;
  sub_224DA9978();
  v31 = v55;
  v32 = v3[1];
  v44 = v2;
  v45 = v6;
  v47 = v3 + 1;
  v32(v6, v2);
  v33 = *(v12 + 48);
  result = v33(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v52;
    v53 = *(v12 + 32);
    (v53)(v52, v30, v31);
    if (sub_224DA9818() == -1)
    {
      v40 = v55;
      (*(v12 + 8))(v50, v55);
      goto LABEL_6;
    }

    v54 = v12;
    v36 = v35;
    v38 = v44;
    v37 = v45;
    v43(v45, *MEMORY[0x277CC9968], v44);
    v39 = v46;
    sub_224DA9978();
    v32(v37, v38);
    v40 = v55;
    result = v33(v39, 1, v55);
    if (result != 1)
    {
      v41 = *(v54 + 8);
      v41(v36, v40);
      v41(v50, v40);
      v35 = v39;
LABEL_6:
      (*(v48 + 8))(v28, v49);
      return (v53)(v51, v35, v40);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CB8B80()
{
  v1 = *(v0 + 40);
  BSDispatchQueueAssert();
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD000000000000017, 0x8000000224DCCE50);
  [*(v0 + 72) systemAddedWidgetMaxBudget];
  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](0x746567646977202CLL, 0xED0000203A78614DLL);
  [*(v0 + 72) widgetMaxBudget];
  v3 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v3);

  MEMORY[0x22AA5D210](0x4D796C696164202CLL, 0xEC000000203A7861);
  [*(v0 + 72) dailyMaxBudget];
  v4 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v4);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_224CB8D14()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v4 = *(v0 + 136);

  v5 = *(v0 + 144);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_224CB8D7C()
{
  sub_224CB8D14();

  return swift_deallocClassInstance();
}

uint64_t sub_224CB8DD4()
{
  v1 = *(*v0 + 40);
  sub_224DAF3E8();

  return v3;
}

unint64_t sub_224CB8E60()
{
  result = qword_2813509E8;
  if (!qword_2813509E8)
  {
    sub_224DAF438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813509E8);
  }

  return result;
}

uint64_t sub_224CB8EC0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = sub_224DAC268();
  v34 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v10 = sub_224DAF838();
    if (v10)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v11 = 0;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 & 0xC000000000000001;
  v32 = v3;
  v33 = v34 + 16;
  v35 = (v34 + 8);
  v36 = v10;
  v37 = a1;
  while (1)
  {
    if (v39)
    {
      v12 = MEMORY[0x22AA5DCC0](v11, a1);
      v3 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v11 >= *(v38 + 16))
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 8 * v11 + 32);
      v3 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v40 = v3;
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = v12;
    v15 = [v12 widget];
    v3 = v14;
    v16 = [v14 metrics];
    sub_224DAC238();
    v17 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a2;
    v41 = *a2;
    a1 = v41;
    v19 = v9;
    a2 = sub_224A61E5C(v9);
    v21 = *(a1 + 16);
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v20;
    if (*(a1 + 24) < v23)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224B296A4();
    }

LABEL_15:
    isUniquelyReferenced_nonNull_native = v13;
    a1 = v41;
    if (v24)
    {
      *(v41[7] + a2) = 1;
      a2 = v18;
      *v18 = a1;
      v9 = v19;
      (*v35)(v19, v13);
    }

    else
    {
      v41[(a2 >> 6) + 8] |= 1 << a2;
      v9 = v19;
      (*(v34 + 16))(*(a1 + 48) + *(v34 + 72) * a2, v19, v13);
      *(*(a1 + 56) + a2) = 1;
      v27 = *(a1 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_25;
      }

      *(a1 + 16) = v29;
      a2 = v18;
      *v18 = a1;
      (*v35)(v19, v13);
      sub_224DAF9B8();
      v30 = *(v42 + 16);
      sub_224DAF9F8();
      v9 = v19;
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    v3 = v40;
    ++v11;
    a1 = v37;
    if (v40 == v36)
    {
      return v42;
    }
  }

  sub_224B17CF4(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_224A61E5C(v19);
  if ((v24 & 1) == (v26 & 1))
  {
    a2 = v25;
    goto LABEL_15;
  }

  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CB9250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostDescriptorPredicate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224CB93B4(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_224DAF7D8();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_224A3DFF8(v39, v40, v41, v1, MEMORY[0x277CFA140]);
        v13 = v12;
        v14 = [v12 tokenString];
        v15 = sub_224DAEE18();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_224A3DFD8((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_224DAF7F8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DC8, &qword_224DBDB98);
          v7 = sub_224DAF1E8();
          sub_224DAF8A8();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_224A3E204(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_224A3E204(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_224A3E204(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_224CB9730()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DD0, &qword_224DBDBA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DD8, &qword_224DBDBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224CB9B10();
  sub_224DA9EB8();
  *(v0 + 16) = sub_224DA9EA8();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v1 + 24) = v4;
  return v1;
}

uint64_t sub_224CB986C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 16);

  sub_224DA9E88();

  v4 = 0;
  v5 = v14;
  v6 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
LABEL_2:
  v8 = (v5 + 40 + 16 * v4);
  while (1)
  {
    if (v7 == v4)
    {

      v13 = sub_224A3DADC(v6);

      os_unfair_lock_unlock(*(v1 + 16));
      return v13;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    ++v4;
    v9 = v8 + 2;
    v11 = *(v8 - 1);
    v10 = *v8;
    sub_224DAF538();

    result = sub_224DAF4F8();
    v8 = v9;
    if (result)
    {
      MEMORY[0x22AA5D350]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      result = sub_224DAF078();
      v6 = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CB99CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_224CB9A30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  sub_224CB93B4(a1);

  v5 = *(v3 + 16);

  sub_224DA9E98();

  os_unfair_lock_unlock(*(v4 + 16));
}

unint64_t sub_224CB9B10()
{
  result = qword_281350B98;
  if (!qword_281350B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4710, &unk_224DB65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B98);
  }

  return result;
}

uint64_t sub_224CB9B8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_224CB9BE0()
{
  v1 = v0;
  v2 = sub_224DAB7C8();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351630 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365000);
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224A2F000, v7, v8, "Start", v9, 2u);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  aBlock = *(v1[2] + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58F0, &qword_224DBDC20);
  sub_224A33088(&qword_281350F28, &unk_27D6F58F0, &qword_224DBDC20);
  aBlock = sub_224DAB3A8();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DE0, &qword_224DBDC28);
  sub_224A33088(&qword_281351060, &qword_27D6F5DE0, &qword_224DBDC28);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224AEDEB0();
  v10 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  aBlock = sub_224D277EC();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DE8, &unk_224DBDC30);
  sub_224A33088(&qword_281351148, &qword_27D6F5DE8, &unk_224DBDC30);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  if ([objc_opt_self() isHealthDataAvailable])
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_weakInit();
    v25 = sub_224CBB588;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_224CB9B8C;
    v24 = &block_descriptor_17;
    v13 = _Block_copy(&aBlock);

    [v11 setAuthorizationStreamEventHandler_];
    _Block_release(v13);
    [v11 subscribeToAuthorizationStreamWithIdentifier_];
  }

  sub_224AC319C();
  v15 = v19;
  v14 = v20;
  (*(v19 + 104))(v5, *MEMORY[0x277D851D0], v20);
  v16 = sub_224DAF428();
  (*(v15 + 8))(v5, v14);
  v17 = swift_allocObject();
  swift_weakInit();
  v25 = sub_224CBB580;
  v26 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224CBAE3C;
  v24 = &block_descriptor_13;
  v18 = _Block_copy(&aBlock);

  tcc_events_subscribe();
  _Block_release(v18);
}

uint64_t sub_224CBA174(uint64_t *a1)
{
  v2 = type metadata accessor for NetworkAuthorizationChangeInfo();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v15 = *(v3 + 72);
      *&v12 = 136446210;
      v28 = v12;
      v31 = v7;
      v29 = result;
      do
      {
        sub_224AEFCBC(v14, v9);
        if ((*v9 & 1) == 0 && v9[v2[6]] != 1 && v9[v2[7]] == 1)
        {
          if (qword_281351630 != -1)
          {
            swift_once();
          }

          v17 = sub_224DAB258();
          __swift_project_value_buffer(v17, qword_281365000);
          sub_224AEFCBC(v9, v7);
          v18 = sub_224DAB228();
          v19 = sub_224DAF2A8();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v32 = v30;
            *v20 = v28;
            v21 = v2[5];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
            v22 = sub_224DAFD28();
            v24 = v23;
            sub_224AEFD20(v31);
            v25 = sub_224A33F74(v22, v24, &v32);

            *(v20 + 4) = v25;
            v26 = v30;
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x22AA5EED0](v26, -1, -1);
            v27 = v20;
            v7 = v31;
            MEMORY[0x22AA5EED0](v27, -1, -1);
          }

          else
          {

            sub_224AEFD20(v7);
          }

          v16 = v2[5];
          sub_224CBAEAC();
        }

        sub_224AEFD20(v9);
        v14 += v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_224CBA4B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_281351630 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365000);
    (*(v3 + 16))(v6, a1, v2);
    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18[1] = a1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
      v14 = sub_224DAFD28();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_224A33F74(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v9, v10, "[appAuth:%{public}s] location authorization changed", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_224CBAEAC();
  }

  return result;
}

uint64_t sub_224CBA764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224DAEEB8();
    if (sub_224DAEE88() < 1)
    {
    }

    else
    {
      sub_224DA9FF8();
      if (qword_281351630 != -1)
      {
        swift_once();
      }

      v9 = sub_224DAB258();
      __swift_project_value_buffer(v9, qword_281365000);
      (*(v1 + 16))(v5, v7, v0);
      v10 = sub_224DAB228();
      v11 = sub_224DAF2A8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v23 = v12;
        v24 = swift_slowAlloc();
        v25 = v24;
        *v12 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
        v22 = v11;
        v13 = sub_224DAFD28();
        v15 = v14;
        v16 = *(v1 + 8);
        v16(v5, v0);
        v17 = sub_224A33F74(v13, v15, &v25);

        v18 = v23;
        *(v23 + 1) = v17;
        v19 = v18;
        _os_log_impl(&dword_224A2F000, v10, v22, "[appAuth:%{public}s] healthkit authorization changed", v18, 0xCu);
        v20 = v24;
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x22AA5EED0](v20, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      else
      {

        v16 = *(v1 + 8);
        v16(v5, v0);
      }

      sub_224CBAEAC();

      return (v16)(v7, v0);
    }
  }

  return result;
}

uint64_t sub_224CBAAA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (tcc_authorization_record_get_subject_identity())
    {
      if (tcc_identity_get_type())
      {

        return swift_unknownObjectRelease();
      }

      tcc_identity_get_identifier();
      sub_224DAEEB8();
      if (sub_224DAEE88() < 1)
      {

        return swift_unknownObjectRelease();
      }

      sub_224DA9FF8();
      if (qword_281351630 != -1)
      {
        swift_once();
      }

      v9 = sub_224DAB258();
      __swift_project_value_buffer(v9, qword_281365000);
      (*(v1 + 16))(v5, v7, v0);
      v10 = sub_224DAB228();
      v11 = sub_224DAF2A8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v25 = v12;
        v26 = swift_slowAlloc();
        v27 = v26;
        *v12 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
        v24 = v10;
        v13 = sub_224DAFD28();
        v15 = v14;
        v16 = *(v1 + 8);
        v23 = v11;
        v16(v5, v0);
        v17 = sub_224A33F74(v13, v15, &v27);

        v19 = v24;
        v18 = v25;
        *(v25 + 1) = v17;
        v20 = v18;
        _os_log_impl(&dword_224A2F000, v19, v23, "[appAuth:%{public}s] tcc authorization(s) changed", v18, 0xCu);
        v21 = v26;
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      else
      {

        v16 = *(v1 + 8);
        v16(v5, v0);
      }

      sub_224CBAEAC();
      swift_unknownObjectRelease();

      return (v16)(v7, v0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224CBAE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_224CBAEAC()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_224DAB848();
  v39 = *(v41 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DAB798();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_224DAB878();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v31 - v16;
  v17 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v18 = sub_224DAC668();
  v19 = *(v18 + 16);
  if (v19)
  {
    v32 = v2;
    v33 = v1;
    sub_224A865C4(0, v19, 0, MEMORY[0x277D84F90]);

    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = v18 + 32;
      do
      {
        sub_224A3317C(v21, aBlock);
        __swift_project_boxed_opaque_existential_1(aBlock, v44);
        sub_224DAE3C8();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v21 += 40;
        --v20;
      }

      while (v20);
    }

    v31 = v0[20];
    sub_224DAB858();
    *v10 = 2;
    v22 = v34;
    (*(v7 + 104))(v10, *MEMORY[0x277D85188], v34);
    v23 = v35;
    sub_224DAB868();
    (*(v7 + 8))(v10, v22);
    v24 = v37;
    v36 = *(v36 + 8);
    (v36)(v15, v37);
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v0;
    v45 = sub_224CBB568;
    v46 = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v44 = &block_descriptor_41;
    v26 = _Block_copy(aBlock);

    v27 = v38;
    sub_224DAB7E8();
    v42 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v28 = v40;
    v29 = v33;
    sub_224DAF788();
    MEMORY[0x22AA5D6A0](v23, v27, v28, v26);
    _Block_release(v26);
    (*(v32 + 8))(v28, v29);
    (*(v39 + 8))(v27, v41);
    (v36)(v23, v24);
  }

  else
  {
  }
}

uint64_t sub_224CBB3E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v6 = a1 + 32;
    do
    {
      sub_224A3317C(v6, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_224DAF9B8();
      v7 = *(v11 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v6 += 40;
      --v3;
    }

    while (v3);
    v4 = v11;
  }

  v8 = *(a2 + 152);
  v10[0] = v4;
  sub_224DAB348();
}

uint64_t sub_224CBB4DC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  return swift_deallocClassInstance();
}

id sub_224CBB5FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v76 = a4;
  v82 = a2;
  v93 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v79 = v14;
  v80 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v75 - v15;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  v18 = __swift_project_value_buffer(v17, qword_281364DF0);
  v19 = *(v11 + 16);
  v84 = a1;
  v77 = v19;
  v78 = v11 + 16;
  v19(v16, a1, v10);

  v75[1] = v18;
  v20 = sub_224DAB228();
  v21 = sub_224DAF2A8();

  v22 = os_log_type_enabled(v20, v21);
  v81 = v11;
  v83 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v75[0] = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136446722;
    *(v24 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, &aBlock);
    *(v24 + 12) = 2082;
    sub_224CBC2FC();
    v26 = sub_224DAFD28();
    v27 = v11;
    v29 = v28;
    (*(v27 + 8))(v16, v10);
    v30 = sub_224A33F74(v26, v29, &aBlock);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2082;
    *(v24 + 24) = sub_224A33F74(v76, a5, &aBlock);
    _os_log_impl(&dword_224A2F000, v20, v21, "%{public}s - Acquiring keep-alive assertion for %{public}s, reason: %{public}s", v24, 0x20u);
    swift_arrayDestroy();
    v31 = v25;
    v6 = v83;
    MEMORY[0x22AA5EED0](v31, -1, -1);
    v32 = v24;
    a3 = v75[0];
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v33 = v84;
  if (!*(v6 + 24))
  {
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v6;
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446210;
      *(v36 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, &aBlock);
      _os_log_impl(&dword_224A2F000, v34, v35, "%{public}s - Creating KeepAliveTransaction for chronod", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v39 = v38;
      v6 = v37;
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    sub_224DAD198();
    v40 = sub_224DAD188();
    v41 = *(v6 + 24);
    *(v6 + 24) = v40;
  }

  swift_beginAccess();
  v42 = *(v6 + 16);
  if (*(v42 + 16))
  {
    v43 = *(v6 + 16);

    v44 = sub_224B0B830(v33);
    if (v45)
    {
      v46 = *(*(v42 + 56) + 8 * v44);

      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_224DB2780;
  v48 = sub_224DAEDE8();
  v49 = sub_224DAEDE8();
  v50 = [objc_opt_self() attributeWithDomain:v48 name:v49];

  *(v47 + 32) = v50;
  aBlock = 0;
  v88 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD00000000000002DLL;
  v88 = 0x8000000224DCD0A0;
  sub_224CBC2FC();
  v51 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v51);

  v52 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v53 = sub_224DAEDE8();

  sub_224CBC360();
  v54 = sub_224DAEFF8();

  v55 = [v52 initWithExplanation:v53 target:v82 attributes:v54];

  aBlock = 0;
  v56 = [v55 acquireWithError_];
  v57 = aBlock;
  if (!v56)
  {
    v71 = aBlock;
    v72 = sub_224DA9528();

    v85 = v72;
    swift_willThrow();

    goto LABEL_18;
  }

  v58 = v83;
  swift_beginAccess();
  v59 = v57;
  v46 = v55;
  v60 = *(v58 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v58 + 16);
  *(v58 + 16) = 0x8000000000000000;
  sub_224B21AF4(v46, v33, isUniquelyReferenced_nonNull_native);
  *(v58 + 16) = v86;
  swift_endAccess();
LABEL_16:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = v80;
  v77(v80, v33, v10);
  v64 = v81;
  v65 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = a3;
  (*(v64 + 32))(v66 + v65, v63, v10);
  v91 = sub_224CBC3AC;
  v92 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_224A3837C;
  v90 = &block_descriptor_42;
  v67 = _Block_copy(&aBlock);
  v68 = objc_opt_self();

  v69 = a3;
  v70 = [v68 responderWithHandler_];
  _Block_release(v67);

  [v70 setQueue_];
  v55 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v70];

LABEL_18:
  v73 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t sub_224CBBE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    BSDispatchQueueAssert();
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    v13 = __swift_project_value_buffer(v12, qword_281364DF0);
    (*(v6 + 16))(v9, a4, v5);
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29[1] = v13;
      v17 = v16;
      v29[0] = swift_slowAlloc();
      v30[0] = v29[0];
      *v17 = 136446466;
      *(v17 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, v30);
      *(v17 + 12) = 2082;
      sub_224CBC2FC();
      v18 = sub_224DAFD28();
      v20 = v19;
      (*(v6 + 8))(v9, v5);
      v21 = sub_224A33F74(v18, v20, v30);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_224A2F000, v14, v15, "%{public}s - Invalidating keep-alive assertion for %{public}s", v17, 0x16u);
      v22 = v29[0];
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v22, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    swift_beginAccess();
    v23 = sub_224B3E288(a4);
    swift_endAccess();
    [v23 invalidate];

    if (!*(*(v11 + 16) + 16))
    {
      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v30[0] = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, v30);
        _os_log_impl(&dword_224A2F000, v24, v25, "%{public}s - No active keep-alive assertions, dropping KeepAliveTransaction", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x22AA5EED0](v27, -1, -1);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      v28 = *(v11 + 24);
      *(v11 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_224CBC274()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_224CBC2FC()
{
  result = qword_27D6F5DF0;
  if (!qword_27D6F5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F6570, &qword_224DB3C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5DF0);
  }

  return result;
}

unint64_t sub_224CBC360()
{
  result = qword_281350B00;
  if (!qword_281350B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350B00);
  }

  return result;
}

uint64_t sub_224CBC3AC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_224CBBE7C(a1, v4, v5, v6);
}

id sub_224CBC42C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v7 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v8;
  *(inited + 48) = sub_224CBC5D0(a1);
  *(inited + 56) = v9;
  v10 = sub_224D9FE14(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
  if (a3)
  {
    v11 = *MEMORY[0x277CCA068];
    v12 = sub_224DAEE18();
    sub_224B07D10(a2, a3, v12, v13);
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_224DAEDE8();
  sub_224D9F01C(v10);

  v16 = sub_224DAECC8();

  v17 = [v14 initWithDomain:v15 code:a1 + 1 userInfo:v16];

  return v17;
}

unint64_t sub_224CBC5D0(char a1)
{
  result = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000002ELL;
      break;
    case 6:
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 25:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000031;
      break;
    case 9:
    case 20:
      result = 0xD000000000000016;
      break;
    case 10:
      v3 = 34;
      goto LABEL_19;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
    case 23:
      result = 0xD000000000000012;
      break;
    case 15:
    case 18:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      v3 = 10;
LABEL_19:
      result = v3 | 0xD000000000000011;
      break;
    case 19:
    case 26:
      result = 0xD00000000000001FLL;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 27:
      result = 0x7573657220646142;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

id sub_224CBC8D8(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v10;
  v11 = sub_224CBC5D0(a1);
  v12 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  if (a4)
  {
    v14 = *MEMORY[0x277CCA068];
    v15 = sub_224DAEE18();
    v17 = v16;
    v37 = v12;
    *&v36 = a3;
    *(&v36 + 1) = a4;
    sub_224A739A4(&v36, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_224B20218(v33, v15, v17, isUniquelyReferenced_nonNull_native);
  }

  v19 = *MEMORY[0x277CCA7E8];
  v20 = sub_224DAEE18();
  v22 = v21;
  swift_getErrorValue();
  v23 = v34;
  v24 = v35;
  v37 = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v23, v24);
  sub_224A739A4(&v36, v33);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_224B20218(v33, v20, v22, v26);

  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = sub_224DAEDE8();
  v29 = a1;
  v30 = sub_224DAECC8();

  v31 = [v27 initWithDomain:v28 code:v29 + 1 userInfo:v30];

  return v31;
}

uint64_t sub_224CBCB58()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1 + 1);
  return sub_224DAFEA8();
}

uint64_t sub_224CBCBD0()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1 + 1);
  return sub_224DAFEA8();
}

uint64_t sub_224CBCC14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224CBCF20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_224CBCC74()
{
  sub_224B67BEC();
  sub_224B67C40();

  return sub_224DA93D8();
}

uint64_t sub_224CBCCD0(uint64_t a1)
{
  v2 = sub_224B67B98();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224CBCD0C(uint64_t a1)
{
  v2 = sub_224B67B98();
  v3 = sub_224B67BEC();
  v4 = sub_224B67C40();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for ChronoCoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChronoCoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224CBCECC()
{
  result = qword_27D6F5DF8;
  if (!qword_27D6F5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5DF8);
  }

  return result;
}

uint64_t sub_224CBCF20(uint64_t a1)
{
  if ((a1 - 1) >= 0x1C)
  {
    return 28;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_224CBCF38(void (*a1)(id, char *))
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
  v2 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = sub_224A3311C(v4, &qword_27D6F5E78, &qword_224DBDFB0))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v5 + 56);
    v16 = *(*(v5 + 48) + 8 * v14);
    v17 = sub_224DAC378();
    v18 = *(v17 - 8);
    v19 = v15 + *(v18 + 72) * v14;
    v20 = *(v23 + 48);
    (*(v18 + 16))(&v4[v20], v19, v17);
    *v4 = v16;
    v21 = v16;
    v24(v21, &v4[v20]);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBD15C(uint64_t a1, uint64_t a2)
{
  v60 = sub_224DAE178();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E80, &qword_224DBDFB8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_224A44E4C(v35, v53, &qword_27D6F5E80, &qword_224DBDFB8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_224B0B2F8(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_224CBD748(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBD5E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_224A8D408(v4, v5);

  return v6 & 1;
}

uint64_t sub_224CBD680()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_224DAF538();
  sub_224DAC378();
  sub_224A839FC(&unk_2813509A0, MEMORY[0x277CFA140]);

  v3 = sub_224DAECF8();

  return v3;
}

uint64_t sub_224CBD748(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE0D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_224A839FC(&qword_281350C70, MEMORY[0x277CF9E98]);
      v28 = sub_224DAED88();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_224A839FC(&qword_281350C68, MEMORY[0x277CF9E98]);
        v33 = sub_224DAEDD8();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDAF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v43 = a2 + 56;
  v36 = result + 56;
  v37 = result;
  v40 = a2;
  v35 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v38 = v2;
    v39 = (v6 - 1) & v6;
    v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_13:
    v12 = *(result + 48) + 48 * v8;
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = a2;
    v20 = *(a2 + 40);
    sub_224DAFE68();

    sub_224DAEE78();
    v44 = v16;
    v21 = v15;
    sub_224DAEE78();
    v42 = v18;
    v41 = v17;
    sub_224DAFE88();
    if (v18 != 1)
    {
      MEMORY[0x22AA5E200](v17);
    }

    v22 = sub_224DAFEA8();
    v23 = -1 << *(v19 + 32);
    v24 = v22 & ~v23;
    if (((*(v43 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v25 = ~v23;
    v26 = *(v40 + 48);
    while (1)
    {
      v28 = v26 + 48 * v24;
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v33 = *v28 == v14 && *(v28 + 8) == v13;
      if (!v33 && (sub_224DAFD88() & 1) == 0)
      {
        goto LABEL_20;
      }

      v34 = v29 == v44 && v30 == v21;
      if (!v34 && (sub_224DAFD88() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((v32 & 1) == 0)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_33;
      }

LABEL_20:
      v24 = (v24 + 1) & v25;
      if (((*(v43 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v27 = v42;
    if (v31 != v41)
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_20;
    }

LABEL_33:

    v3 = v36;
    result = v37;
    v6 = v39;
    a2 = v40;
    v7 = v35;
    v2 = v38;
  }

  while (v39);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v10);
    ++v9;
    if (v11)
    {
      v38 = v10;
      v39 = (v11 - 1) & v11;
      v8 = __clz(__rbit64(v11)) | (v10 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDDB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_224DAFE68();

    sub_224DAEE78();
    v17 = sub_224DAFEA8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_224DAFD88() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDF70(uint64_t (**a1)(void, void, void))
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v41 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v35 - v7;
  v46 = a1;
  v44 = 0;
  v9 = a1[2];
  v42 = a1 + 2;
  if (v9(a1, &v44, 8))
  {
    v40 = 0;
    v35[0] = v3 + 40;
    v35[1] = v3 + 32;
    v37 = (v3 + 16);
    v38 = (v3 + 8);
    v10 = MEMORY[0x277D84F98];
    v36 = v3;
    while ((v44 & 0x8000000000000000) == 0)
    {
      if (v44)
      {
        MEMORY[0x28223BE20](v44);
        v35[-4] = sub_224CBE3AC;
        v35[-3] = &v45;
        v35[-2] = &v44;
        v12 = v40;
        sub_224DAEE68();
        v40 = v12;
      }

      sub_224DAF538();
      v13 = sub_224DAF4F8();
      if (!v13)
      {
        break;
      }

      v14 = v13;
      sub_224DAC2E8();
      if (((a1)[2](a1, v8, v39) & 1) == 0)
      {

        (*v38)(v8, v2);
        goto LABEL_23;
      }

      v15 = a1;
      v16 = v8;
      v17 = v8;
      v18 = v2;
      (*v37)(v41, v17, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v10;
      v21 = sub_224A3E7EC(v14);
      v22 = v10[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v25 = v20;
      if (v10[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224B29914();
        }
      }

      else
      {
        sub_224B180B4(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_224A3E7EC(v14);
        if ((v25 & 1) != (v27 & 1))
        {
          _Block_release(v15);
          result = sub_224DAFDD8();
          __break(1u);
          return result;
        }

        v21 = v26;
      }

      v28 = v36;
      v10 = v43;
      if (v25)
      {
        v11 = v43[7] + *(v36 + 72) * v21;
        v2 = v18;
        (*(v36 + 40))(v11, v41, v18);
      }

      else
      {
        v43[(v21 >> 6) + 8] |= 1 << v21;
        *(v10[6] + 8 * v21) = v14;
        v29 = v10[7] + *(v28 + 72) * v21;
        v2 = v18;
        (*(v28 + 32))(v29, v41, v18);
        v30 = v10[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_26;
        }

        v10[2] = v32;
      }

      v8 = v16;
      (*v38)(v16, v2);
      a1 = v15;
      if (((v15)[2](v15, &v44, 8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  v10 = MEMORY[0x277D84F98];
LABEL_20:
  type metadata accessor for LocationGraceRegistry();
  result = swift_allocObject();
  *(result + 16) = v10;
LABEL_24:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CBE3D8(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    if ((*(v1 + 16))(result, *v3))
    {
      return *v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CBE434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = sub_224DAC2A8();
  v13 = sub_224D6FDFC();

  sub_224DAC288();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_224AB4294(v9);
    v16 = 1;
  }

  else
  {
    sub_224DAA1E8();
    v18[0] = sub_224B44F14(&qword_2813519C0);
    sub_224B44F14(&unk_281351998);
    v18[1] = v13;
    sub_224B44F14(&qword_2813519B8);
    sub_224B44F14(&qword_2813519B0);
    sub_224DAA1D8();
    (*(v15 + 8))(v9, v14);
    v16 = 0;
  }

  (*(v15 + 56))(v11, v16, 1, v14);
  sub_224CBE734(v11, v6);
  sub_224DAC298();
  return sub_224AB4294(v11);
}

uint64_t sub_224CBE734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224CBE7B8()
{
  result = qword_27D6F5EF0;
  if (!qword_27D6F5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5EF0);
  }

  return result;
}

void sub_224CBE80C()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_281358D28 = v5;
}

uint64_t sub_224CBE918(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 24);
    v9 = *(v8 + 16);

    os_unfair_lock_lock(v9);
    [*(v7 + 16) invalidate];
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;

    os_unfair_lock_unlock(*(v8 + 16));

    v11 = *(v7 + 40);
    if (v11)
    {
      v12 = *(v7 + 48);

      v11(a4);
      sub_224A3D418(v11);
    }

    a1(1);
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364E20);
    v15 = sub_224DAB228();
    v16 = sub_224DAF298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224A2F000, v15, v16, "Wake scheduler unexpectedly deallocated", v17, 2u);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    return (a1)(1);
  }
}

uint64_t sub_224CBEAD4(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_224CBEEE8, v5);
}

uint64_t sub_224CBEB68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  sub_224A3D418(*(v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_224CBEBDC()
{
  v1 = sub_224DAF3C8();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_224DAB848();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  v0[3] = v9;
  v13 = sub_224AC319C();
  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A9BB34(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  v11 = sub_224DAF418();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

uint64_t sub_224CBEE64(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DA9878() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_224CBE918(a1, a2, v6, v7);
}

uint64_t sub_224CBEEFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_224CBEF88()
{
  sub_224A3311C(v0 + 24, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3311C(v0 + 64, &qword_27D6F5EF8, &qword_224DBE1F0);
  sub_224A3311C(v0 + 104, &qword_27D6F5F00, qword_224DBE1F8);
  v1 = *(v0 + 144);

  sub_224A3311C(v0 + 152, &qword_27D6F3AE8, &unk_224DB9600);
  sub_224A3311C(v0 + 192, &qword_27D6F3AE8, &unk_224DB9600);
  sub_224A3311C(v0 + 232, &qword_27D6F3AE8, &unk_224DB9600);

  return swift_deallocClassInstance();
}

id sub_224CBF0EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaskSessionQueuePool();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_224CBF154(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v32 = sub_224DAF318();
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAF3C8();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12 - 8);
  v28 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  *&v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize] = 0;
  if (a3)
  {
    result = sub_224DA9DC8();
    a2 = result;
  }

  *&v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize] = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v17 = sub_224AC319C();
      v18 = 0;
      v25 = 0x8000000224DCD7D0;
      v26 = v17;
      v24 = *MEMORY[0x277D85268];
      v23 = (v9 + 104);
      v27 = a2;
      do
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_224DAF938();

        v34 = 0xD000000000000016;
        v35 = v25;
        v36 = v18;
        v19 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v19);

        sub_224DAB7F8();
        (*v23)(v29, v24, v30);
        v34 = MEMORY[0x277D84F90];
        sub_224AC31E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
        sub_224AC3240();
        sub_224DAF788();
        v20 = sub_224DAF418();
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x22AA5D350]();
        if (*((*(v4 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        ++v18;
        sub_224DAF078();
        swift_endAccess();
      }

      while (v27 != v18);
    }

    v22 = type metadata accessor for TaskSessionQueuePool();
    v33.receiver = v4;
    v33.super_class = v22;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  return result;
}

uint64_t sub_224CBF580(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 24);
    os_unfair_lock_lock(*(v5 + 16));
    sub_224CC00D4(v4, a2);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

uint64_t sub_224CBF61C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a4;
  v7 = sub_224DAB7B8();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v16 = a1[4];
  if (*(v16 + 16))
  {
    v17 = a1[4];

    v18 = sub_224A3E7EC(a2);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v21 = a1[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = a1[4];
    a1[4] = 0x8000000000000000;
    sub_224A8A0B0(v20 + 1, a2, isUniquelyReferenced_nonNull_native);
    a1[4] = v33;
    swift_endAccess();
    swift_beginAccess();
    if (!v20)
    {
      v23 = a1[5];
      v27 = a1[2];
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      aBlock[4] = sub_224CC0970;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A39F40;
      aBlock[3] = &block_descriptor_44;
      v25 = _Block_copy(aBlock);

      v26 = a2;
      sub_224DAB7E8();
      v34 = MEMORY[0x277D84F90];
      sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v14, v10, v25);
      _Block_release(v25);
      (*(v30 + 8))(v10, v7);
      (*(v28 + 8))(v14, v29);
    }

    *v31 = a3;
  }

  return result;
}

uint64_t sub_224CBF9E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    do
    {
      sub_224CC097C(v6, v10);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v11;
        ObjectType = swift_getObjectType();
        v9[3] = type metadata accessor for ControlVisibilityMonitor();
        v9[4] = &off_283832620;
        v9[0] = a2;

        sub_224CC09B4(v10);
        (*(v7 + 8))(v9, a3, ObjectType, v7);
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v9);
      }

      else
      {
        result = sub_224CC09B4(v10);
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_224CBFAD4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = *a1;
  v21 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v5 + 16))(v19, a2, v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_224AFD468(v20 + v21, v12);
  sub_224AFD468(v19, &v12[v22]);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) != 1)
  {
    sub_224AFD468(v12, v17);
    if (v23(&v12[v22], 1, v4) != 1)
    {
      v25 = v28;
      (*(v5 + 32))(v28, &v12[v22], v4);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v24 = sub_224DAEDD8();
      v26 = *(v5 + 8);
      v26(v25, v4);
      sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
      v26(v17, v4);
      sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
      return v24 & 1;
    }

    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    (*(v5 + 8))(v17, v4);
    goto LABEL_6;
  }

  sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
  if (v23(&v12[v22], 1, v4) != 1)
  {
LABEL_6:
    sub_224A3311C(v12, &qword_27D6F5B90, &qword_224DB5C50);
    v24 = 0;
    return v24 & 1;
  }

  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_224CBFEB8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v9 = *(a1 + 40);

    v10 = 0;
    while (v10 < *(v6 + 16))
    {
      sub_224CC097C(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_224CC09B4(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
        }
      }

      ++v10;
      v8 += 16;
      if (v7 == v10)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a3;
  swift_unknownObjectWeakInit();
  sub_224CC097C(v18, v17);
  swift_beginAccess();
  a2 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a2 = sub_224AD94BC(0, a2[2] + 1, 1, a2);
    *(a1 + 40) = a2;
  }

  v15 = a2[2];
  v14 = a2[3];
  if (v15 >= v14 >> 1)
  {
    a2 = sub_224AD94BC((v14 > 1), v15 + 1, 1, a2);
  }

  a2[2] = v15 + 1;
  sub_224CC0CB4(v17, &a2[2 * v15 + 4]);
  *(a1 + 40) = a2;
  swift_endAccess();
  return sub_224CC09B4(v18);
}

uint64_t sub_224CC006C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRelease();
    if (v4 == a2)
    {
      return 1;
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_224CC00D4(void *a1, void *a2)
{
  v5 = sub_224DAB7B8();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v15 = a1[4];
  if (*(v15 + 16))
  {
    v16 = a1[4];

    v17 = sub_224A3E7EC(a2);
    if (v18)
    {
      v28[2] = v2;
      v19 = *(*(v15 + 56) + 8 * v17);

      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21)
      {
        if (v20)
        {
          __break(1u);
        }

        else
        {
          swift_beginAccess();
          v26 = a1[4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = a1[4];
          a1[4] = 0x8000000000000000;
          sub_224A8A0B0(v21, a2, isUniquelyReferenced_nonNull_native);
          a1[4] = v31;
          return swift_endAccess();
        }
      }

      else
      {
        swift_beginAccess();
        sub_224A7D664(a2);
        swift_endAccess();
        swift_beginAccess();
        v22 = a1[5];
        v28[1] = a1[2];
        v23 = swift_allocObject();
        v23[2] = v22;
        v23[3] = a1;
        v23[4] = a2;
        aBlock[4] = sub_224CC09E4;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        aBlock[3] = &block_descriptor_24_0;
        v28[0] = _Block_copy(aBlock);

        v24 = a2;
        sub_224DAB7E8();
        v32 = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        sub_224DAF788();
        v25 = v28[0];
        MEMORY[0x22AA5D760](0, v13, v8, v28[0]);
        _Block_release(v25);
        (*(v29 + 8))(v8, v5);
        (*(v10 + 8))(v13, v9);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224CC04C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    do
    {
      sub_224CC097C(v6, v11);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v12;
        ObjectType = swift_getObjectType();
        v10[3] = type metadata accessor for ControlVisibilityMonitor();
        v10[4] = &off_283832620;
        v10[0] = a2;
        v9 = *(v7 + 16);

        v9(v10, a3, ObjectType, v7);
        swift_unknownObjectRelease();
        sub_224CC09B4(v11);
        result = __swift_destroy_boxed_opaque_existential_1(v10);
      }

      else
      {
        result = sub_224CC09B4(v11);
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_224CC05B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_224CC0628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224CC0674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_224CC06C4()
{
  v1 = v0;
  v16 = sub_224DAF3C8();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAF318();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_224DAB848();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_224AC319C();
  v15[0] = "Map";
  v15[1] = v10;
  sub_224DAB818();
  v17 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v16);
  v0[2] = sub_224DAF418();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v13;
  v1[5] = MEMORY[0x277D84F90];
  return v1;
}

uint64_t sub_224CC09F0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = a2;
  v7 = *v2;
  result = sub_224BC7E00(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v19 = a1;
    v13 = 16 * result + 48;
    while (v10 < v11)
    {
      sub_224CC097C(v7 + v13, v18);
      v14 = v5;
      v15 = v19(v18);
      result = sub_224CC09B4(v18);
      if (v15)
      {
        v5 = v14;
      }

      else
      {
        if (v10 == v4)
        {
          v5 = v14;
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v16 = *v12;
          if (v4 >= v16)
          {
            goto LABEL_24;
          }

          result = sub_224CC097C(&v7[2 * v4 + 4], v18);
          if (v10 >= v16)
          {
            goto LABEL_25;
          }

          sub_224CC097C(v7 + v13, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_224B42ED0(v7);
          }

          v5 = v14;
          result = sub_224CC0C7C(v17, &v7[2 * v4 + 4]);
          if (v10 >= v7[2])
          {
            goto LABEL_26;
          }

          result = sub_224CC0C7C(v18, v7 + v13);
          *v2 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 16;
      if (v10 == v11)
      {
        return v4;
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
  }

  __break(1u);
  return result;
}

void sub_224CC0BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  v10[2] = a1;
  v10[3] = a4;
  swift_beginAccess();
  v8 = sub_224CC09F0(sub_224CC0C5C, v10);
  v9 = *(*(a2 + 40) + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_224D78DF0(v8, v9);
    swift_endAccess();
    os_unfair_lock_unlock(*(v7 + 16));
  }
}

uint64_t sub_224CC0CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = _s17ArchiveChangeTypeOMa();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CC0D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_224DA9688();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_224CC0FDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_224DA9688() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = (v16 & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

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
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v30 + 56);

        v28(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, (v16 & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

uint64_t _s17ArchiveChangeTypeOMa()
{
  result = qword_2813591E8;
  if (!qword_2813591E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CC13F4()
{
  v0 = sub_224DA9688();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_224CC1450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17ArchiveChangeTypeOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224CC1C94(v2 + *(a1 + 44), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    v13 = *(a1 + 16);
    v14 = sub_224DAFF38();
    MEMORY[0x22AA5D210](v14);

    MEMORY[0x22AA5D210](8250, 0xE200000000000000);
    v15 = *(*(a1 + 24) + 8);
    sub_224DAFD58();
    MEMORY[0x22AA5D210](0x6574656C6564203BLL, 0xE900000000000064);
    return v22;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_224DAF938();
    v17 = *(a1 + 16);
    v18 = sub_224DAFF38();
    MEMORY[0x22AA5D210](v18);

    MEMORY[0x22AA5D210](8250, 0xE200000000000000);
    v19 = *(*(a1 + 24) + 8);
    sub_224DAFD58();
    MEMORY[0x22AA5D210](0x657461647075203BLL, 0xEA00000000002064);
    sub_224B32DE8();
    v20 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v20);

    v16 = v22;
    (*(v5 + 8))(v8, v4);
  }

  return v16;
}

uint64_t sub_224CC16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  if ((sub_224DAEDD8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(_s13ArchiveChangeVMa() + 44);

  return sub_224CC1A1C(a1 + v8, a2 + v8);
}

uint64_t sub_224CC1784(uint64_t a1)
{
  v2 = sub_224CC1DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224CC17C0(uint64_t a1)
{
  v2 = sub_224CC1DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224CC1840(uint64_t a1)
{
  v2 = sub_224CC1E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224CC187C(uint64_t a1)
{
  v2 = sub_224CC1E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224CC18FC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_224DAFF08();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224CC1A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17ArchiveChangeTypeOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5F20, &unk_224DBE450);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_224CC1C94(a1, &v23 - v16);
  sub_224CC1C94(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_224CC1C94(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_224DA9628();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_224CC1D60(v17);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_224CC1CF8(v17);
    v20 = 0;
    return v20 & 1;
  }

  sub_224CC1D60(v17);
  v20 = 1;
  return v20 & 1;
}