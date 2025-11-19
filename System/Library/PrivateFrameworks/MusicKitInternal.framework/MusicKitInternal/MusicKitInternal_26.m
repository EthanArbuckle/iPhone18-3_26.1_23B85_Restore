void sub_1D50A6414()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v103 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v104 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v101 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v100 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v100 - v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v106 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v107 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF528, &qword_1D56319C8);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v100 - v38;
  v40 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  v41 = OUTLINED_FUNCTION_14(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = (v45 - v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF530, &unk_1D56319D0);
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000003BLL, 0x80000001D56835E0);
    v109 = v6;
    v98 = *(v7 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v99 = 85;
    goto LABEL_53;
  }

  v1 = v47;
  sub_1D4E628D4(v4, v108);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
    sub_1D4E50004(v39, &qword_1EC7EF528, &qword_1D56319C8);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D5683620);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v99 = 88;
    goto LABEL_53;
  }

  v48 = OUTLINED_FUNCTION_33_27();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v40);
  sub_1D50A8B30(v39, v46);
  v51 = qword_1EC7E8F80;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  v108[0] = qword_1EC87C258;
  v109 = v1;
  sub_1D50A8B94(&unk_1EC7EF538);
  sub_1D5614D18();
  OUTLINED_FUNCTION_48_14();
  if (v51)
  {

    v52 = *v46;
    sub_1D50A8BE4(v46);
    if (v52 == 4)
    {
      LOBYTE(v52) = *v2;
    }

    *v2 = v52;
    goto LABEL_50;
  }

  v100 = v40;
  v53 = qword_1EC7E8F88;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_6_48();
  }

  v108[0] = qword_1EC87C260;
  v109 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  sub_1D50A8B94(&unk_1EC7EF548);
  sub_1D5614D18();
  OUTLINED_FUNCTION_48_14();
  if ((&qword_1EC7EF540 & 1) == 0)
  {
    v55 = qword_1EC7E8FA0;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_5_50();
    }

    OUTLINED_FUNCTION_14_37(qword_1EC7F0F78);
    OUTLINED_FUNCTION_48_14();
    if (v55)
    {

      v56 = v100;
      sub_1D4F1C460(&v46[v100[8]], v32, &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D50A8BE4(v46);
      v57 = sub_1D560C0A8();
      OUTLINED_FUNCTION_1(v32);
      if (v58)
      {
        v64 = v107;
        sub_1D4F1C460(&v2[v56[8]], v107, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_1(v32);
        if (!v58)
        {
          sub_1D4E50004(v32, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0(v57);
        v64 = v107;
        (*(v63 + 32))(v107, v32, v57);
        __swift_storeEnumTagSinglePayload(v64, 0, 1, v57);
      }

      v65 = &unk_1EC7E9CA8;
      v66 = &unk_1D561D1D0;
      v67 = &v2[v56[8]];
      v68 = v64;
      goto LABEL_49;
    }

    v59 = qword_1EC7E8FA8;

    v60 = v100;
    if (v59 != -1)
    {
      OUTLINED_FUNCTION_4_46();
    }

    OUTLINED_FUNCTION_14_37(qword_1EC7F0F80);
    OUTLINED_FUNCTION_48_14();
    if (v59)
    {

      v61 = v105;
      sub_1D4F1C460(&v46[v60[9]], v105, &qword_1EC7EC8D0, &unk_1D5623AD0);
      sub_1D50A8BE4(v46);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_1(v61);
      if (v58)
      {
        v74 = v106;
        sub_1D4F1C460(&v2[v60[9]], v106, &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v61);
        if (!v58)
        {
          sub_1D4E50004(v61, &qword_1EC7EC8D0, &unk_1D5623AD0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0(v62);
        v73 = *(v72 + 32);
        v74 = v106;
        v75 = OUTLINED_FUNCTION_42_18();
        v76(v75);
        v77 = OUTLINED_FUNCTION_33_27();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v62);
      }

      v80 = v60[9];
    }

    else
    {
      v69 = qword_1EC7E8FB8;

      if (v69 != -1)
      {
        OUTLINED_FUNCTION_3_57();
      }

      OUTLINED_FUNCTION_14_37(qword_1EC7F0F90);
      OUTLINED_FUNCTION_48_14();
      if ((v69 & 1) == 0)
      {
        v81 = qword_1EC7E8FB0;

        if (v81 != -1)
        {
          OUTLINED_FUNCTION_2_55();
        }

        OUTLINED_FUNCTION_14_37(qword_1EC7F0F88);
        OUTLINED_FUNCTION_48_14();
        if ((v81 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            OUTLINED_FUNCTION_16_6();
            MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5683660);
            v109 = v1;
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v99 = 107;
LABEL_53:
            v100 = v99;
            OUTLINED_FUNCTION_35_23();
            __break(1u);
          }
        }

        v82 = v103;
        sub_1D4F1C460(&v46[v60[11]], v103, &qword_1EC7EB620, &unk_1D561E5B0);
        sub_1D50A8BE4(v46);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
        OUTLINED_FUNCTION_1(v82);
        v74 = v104;
        if (v58)
        {
          sub_1D4F1C460(&v2[v60[11]], v104, &qword_1EC7EB620, &unk_1D561E5B0);
          OUTLINED_FUNCTION_1(v82);
          if (!v58)
          {
            sub_1D4E50004(v82, &qword_1EC7EB620, &unk_1D561E5B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_24_0(v83);
          v92 = *(v91 + 32);
          v93 = OUTLINED_FUNCTION_42_18();
          v94(v93);
          v95 = OUTLINED_FUNCTION_33_27();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v83);
        }

        v80 = v60[11];
        v65 = &qword_1EC7EB620;
        v66 = &unk_1D561E5B0;
        goto LABEL_48;
      }

      v70 = v101;
      sub_1D4F1C460(&v46[v60[10]], v101, &qword_1EC7EC8D0, &unk_1D5623AD0);
      sub_1D50A8BE4(v46);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_1(v70);
      if (v58)
      {
        v74 = v102;
        sub_1D4F1C460(&v2[v60[10]], v102, &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v70);
        if (!v58)
        {
          sub_1D4E50004(v70, &qword_1EC7EC8D0, &unk_1D5623AD0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0(v71);
        v85 = *(v84 + 32);
        v74 = v102;
        v86 = OUTLINED_FUNCTION_42_18();
        v87(v86);
        v88 = OUTLINED_FUNCTION_33_27();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v71);
      }

      v80 = v60[10];
    }

    v65 = &qword_1EC7EC8D0;
    v66 = &unk_1D5623AD0;
LABEL_48:
    v67 = &v2[v80];
    v68 = v74;
LABEL_49:
    sub_1D4F1C350(v68, v67, v65, v66);
    goto LABEL_50;
  }

  v54 = v46[1];
  sub_1D50A8BE4(v46);
  if (v54 == 2)
  {
    LOBYTE(v54) = v2[1];
  }

  v2[1] = v54;
LABEL_50:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50A6E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5631850;
  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  *(v0 + 32) = qword_1EC87C258;
  v1 = qword_1EC7E8F88;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_6_48();
  }

  *(v0 + 40) = qword_1EC87C260;
  v2 = qword_1EC7E8F90;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_32_24();
  }

  *(v0 + 48) = qword_1EC87C268;
  v3 = qword_1EC7E8F98;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_31_24();
  }

  *(v0 + 56) = qword_1EC87C270;
  v4 = qword_1EC7E8FA0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_5_50();
  }

  *(v0 + 64) = qword_1EC7F0F78;
  v5 = qword_1EC7E8FA8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_4_46();
  }

  *(v0 + 72) = qword_1EC7F0F80;
  v6 = qword_1EC7E8FB8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_3_57();
  }

  *(v0 + 80) = qword_1EC7F0F90;
  v7 = qword_1EC7E8FB0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_2_55();
  }

  *(v0 + 88) = qword_1EC7F0F88;
  qword_1EC87C090 = v0;
}

void sub_1D50A7068()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4(v4);
  v159 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v157 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v158 = v14;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14(v160);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v161 = v18;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4(v172);
  v167 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v163 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v162 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v165 = v30;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF550, &qword_1D5669880);
  v31 = OUTLINED_FUNCTION_14(v171);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v164 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  v168 = v36;
  v174 = sub_1D560C0A8();
  v37 = OUTLINED_FUNCTION_4(v174);
  v170 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v166 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v169 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  v173 = v52;
  v53 = sub_1D560C328();
  v54 = OUTLINED_FUNCTION_4(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v61 = v60 - v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v152 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v152 - v72;
  v74 = *v3;
  v75 = *v1;
  if (v74 == 4)
  {
    if (v75 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v74 != v75)
  {
    goto LABEL_20;
  }

  v76 = v3[1];
  v77 = v1[1];
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v77 == 2 || ((v77 ^ v76) & 1) != 0)
  {
    goto LABEL_20;
  }

  v153 = v4;
  v78 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  v156 = v1;
  v79 = *(v78 + 24);
  v80 = v3;
  v81 = *(v68 + 48);
  v154 = v78;
  v155 = v80;
  sub_1D4F1C460(&v80[v79], v73, &qword_1EC7EA3B8, &unk_1D561E370);
  v82 = &v156[v79];
  v83 = v156;
  sub_1D4F1C460(v82, &v73[v81], &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(v73);
  if (v84)
  {
    OUTLINED_FUNCTION_10(&v73[v81]);
    if (v84)
    {
      sub_1D4E50004(v73, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_22;
    }

LABEL_18:
    v85 = &qword_1EC7EB578;
    v86 = &unk_1D5644D10;
    v87 = v73;
LABEL_19:
    sub_1D4E50004(v87, v85, v86);
    goto LABEL_20;
  }

  sub_1D4F1C460(v73, v67, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(&v73[v81]);
  if (v84)
  {
    (*(v56 + 8))(v67, v53);
    goto LABEL_18;
  }

  (*(v56 + 32))(v61, &v73[v81], v53);
  OUTLINED_FUNCTION_23_30();
  sub_1D50A8D50(v88);
  OUTLINED_FUNCTION_26_27();
  v89 = sub_1D5614D18();
  v90 = *(v56 + 8);
  v90(v61, v53);
  v90(v67, v53);
  sub_1D4E50004(v73, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v89 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v92 = v154;
  v91 = v155;
  v93 = v154[7];
  v94 = v155[v93];
  v95 = v83[v93];
  if (v94 == 2)
  {
    if (v95 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v95 == 2 || ((v95 ^ v94) & 1) != 0)
  {
    goto LABEL_20;
  }

  v96 = v154[8];
  v97 = *(v48 + 48);
  v98 = v173;
  OUTLINED_FUNCTION_47_4(&v155[v96], v173);
  OUTLINED_FUNCTION_47_4(&v83[v96], v98 + v97);
  if (__swift_getEnumTagSinglePayload(v98, 1, v174) == 1)
  {
    OUTLINED_FUNCTION_43_0(v98 + v97);
    if (!v84)
    {
      goto LABEL_34;
    }

    sub_1D4E50004(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    sub_1D4F1C460(v98, v169, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_43_0(v98 + v97);
    if (v84)
    {
      v99 = *(v170 + 8);
      v100 = OUTLINED_FUNCTION_26_27();
      v101(v100);
LABEL_34:
      v85 = &qword_1EC7E9FB0;
      v86 = &qword_1D562C590;
LABEL_35:
      v87 = v98;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_39_18();
    v102(v166);
    OUTLINED_FUNCTION_21_29();
    sub_1D50A8D50(v103);
    OUTLINED_FUNCTION_28_28();
    v104 = OUTLINED_FUNCTION_221();
    (unk_1D561D1D0)(v104);
    v105 = OUTLINED_FUNCTION_26_27();
    (unk_1D561D1D0)(v105);
    sub_1D4E50004(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((&unk_1EC7E9CA8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v106 = v92[9];
  v107 = *(v171 + 48);
  v108 = v168;
  OUTLINED_FUNCTION_47_4(&v91[v106], v168);
  v109 = v108;
  sub_1D4F1C460(&v83[v106], v108 + v107, &qword_1EC7EC8D0, &unk_1D5623AD0);
  v110 = v172;
  if (__swift_getEnumTagSinglePayload(v108, 1, v172) == 1)
  {
    OUTLINED_FUNCTION_43_0(v108 + v107);
    if (!v84)
    {
      goto LABEL_44;
    }

    sub_1D4E50004(v108, &qword_1EC7EC8D0, &unk_1D5623AD0);
  }

  else
  {
    sub_1D4F1C460(v108, v165, &qword_1EC7EC8D0, &unk_1D5623AD0);
    OUTLINED_FUNCTION_43_0(v108 + v107);
    if (v84)
    {
      v111 = *(v167 + 8);
      v112 = OUTLINED_FUNCTION_26_27();
      v113(v112);
LABEL_44:
      v85 = &qword_1EC7EF550;
      v86 = &qword_1D5669880;
      v87 = v108;
      goto LABEL_19;
    }

    v114 = v167;
    v115 = v163;
    (*(v167 + 32))(v163, v109 + v107, v110);
    OUTLINED_FUNCTION_25_32();
    sub_1D50A8C40(v116);
    LODWORD(v174) = sub_1D5614D18();
    v117 = *(v114 + 8);
    v117(v115, v110);
    v118 = OUTLINED_FUNCTION_26_27();
    (v117)(v118);
    sub_1D4E50004(v109, &qword_1EC7EC8D0, &unk_1D5623AD0);
    if ((v174 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v119 = v92[10];
  v120 = *(v171 + 48);
  v98 = v164;
  OUTLINED_FUNCTION_47_4(&v91[v119], v164);
  OUTLINED_FUNCTION_47_4(&v83[v119], v98 + v120);
  OUTLINED_FUNCTION_43_0(v98);
  if (v84)
  {
    OUTLINED_FUNCTION_43_0(v98 + v120);
    if (v84)
    {
      sub_1D4E50004(v98, &qword_1EC7EC8D0, &unk_1D5623AD0);
      goto LABEL_56;
    }

LABEL_54:
    v85 = &qword_1EC7EF550;
    v86 = &qword_1D5669880;
    goto LABEL_35;
  }

  sub_1D4F1C460(v98, v162, &qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_43_0(v98 + v120);
  if (v121)
  {
    v122 = *(v167 + 8);
    v123 = OUTLINED_FUNCTION_26_27();
    v124(v123);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_39_18();
  v125(v163);
  OUTLINED_FUNCTION_25_32();
  sub_1D50A8C40(v126);
  OUTLINED_FUNCTION_28_28();
  v127 = OUTLINED_FUNCTION_221();
  (unk_1D5623AD0)(v127);
  v128 = OUTLINED_FUNCTION_26_27();
  (unk_1D5623AD0)(v128);
  sub_1D4E50004(v98, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if ((&qword_1EC7EC8D0 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_56:
  v129 = v92[11];
  v98 = v161;
  v130 = *(v160 + 48);
  OUTLINED_FUNCTION_47_4(&v91[v129], v161);
  OUTLINED_FUNCTION_47_4(&v83[v129], v98 + v130);
  if (__swift_getEnumTagSinglePayload(v98, 1, v153) == 1)
  {
    OUTLINED_FUNCTION_43_0(v98 + v130);
    if (!v84)
    {
      goto LABEL_63;
    }

    sub_1D4E50004(v98, &qword_1EC7EB620, &unk_1D561E5B0);
  }

  else
  {
    sub_1D4F1C460(v98, v158, &qword_1EC7EB620, &unk_1D561E5B0);
    OUTLINED_FUNCTION_43_0(v98 + v130);
    if (v84)
    {
      v131 = *(v159 + 8);
      v132 = OUTLINED_FUNCTION_26_27();
      v133(v132);
LABEL_63:
      v85 = &qword_1EC7EB670;
      v86 = qword_1D561E830;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_39_18();
    v134(v157);
    sub_1D50A8CC8(&qword_1EC7EB6A0);
    OUTLINED_FUNCTION_28_28();
    v135 = OUTLINED_FUNCTION_221();
    (unk_1D561E5B0)(v135);
    v136 = OUTLINED_FUNCTION_26_27();
    (unk_1D561E5B0)(v136);
    sub_1D4E50004(v98, &qword_1EC7EB620, &unk_1D561E5B0);
    if ((&qword_1EC7EB620 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v137 = v92[12];
  v138 = *&v91[v137];
  v139 = *&v83[v137];
  sub_1D4EF6F7C();
  if ((v140 & 1) == 0)
  {
    goto LABEL_20;
  }

  v141 = v92[13];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    goto LABEL_20;
  }

  v142 = v92[14];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v143 = v92[15];
  v144 = &v91[v143];
  v145 = *&v91[v143 + 8];
  v146 = &v83[v143];
  v147 = *(v146 + 1);
  if (!v145)
  {
    if (v147)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

  if (v147)
  {
    v148 = *v144 == *v146 && v145 == v147;
    if (v148 || (sub_1D5616168() & 1) != 0)
    {
LABEL_77:
      OUTLINED_FUNCTION_36_21(v154[16]);
      if (v149)
      {
        OUTLINED_FUNCTION_36_21(v154[17]);
        if (v150)
        {
          OUTLINED_FUNCTION_36_21(v154[18]);
          if (v151)
          {
            OUTLINED_FUNCTION_36_21(v154[19]);
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_46();
}

void sub_1D50A7D54()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4(v93);
  v86 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v85 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v92 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v90 = v14;
  v91 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v89 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v88 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v87 = v25;
  v26 = sub_1D560C0A8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v84 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v83 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v82 - v37;
  v39 = sub_1D560C328();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v82 - v52;
  v54 = *v0;
  if (v54 == 4)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v54);
  }

  if (v0[1] != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v55 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  sub_1D4F1C460(&v0[v55[6]], v53, &qword_1EC7EA3B8, &unk_1D561E370);
  if (__swift_getEnumTagSinglePayload(v53, 1, v39) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v42 + 32))(v47, v53, v39);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_23_30();
    sub_1D50A8D50(v56);
    sub_1D5614CB8();
    v57 = *(v42 + 8);
    v42 += 8;
    v57(v47, v39);
  }

  v58 = v0[v55[7]];
  if (v58 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v58 & 1);
  }

  v59 = v91;
  sub_1D4F1C460(&v0[v55[8]], v38, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(v38);
  if (v60)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v42 = v83;
    v61 = v84;
    (*(v84 + 32))(v83, v38, v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_21_29();
    sub_1D50A8D50(v62);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    v63 = *(v61 + 8);
    v47 = v61 + 8;
    v64 = OUTLINED_FUNCTION_26_27();
    v65(v64);
  }

  v66 = v93;
  v67 = v87;
  sub_1D4F1C460(&v1[v55[9]], v87, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if (__swift_getEnumTagSinglePayload(v67, 1, v59) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v68 = OUTLINED_FUNCTION_37_21();
    v69(v68);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_31();
    sub_1D50A8C40(v70);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    (*(v47 + 8))(v42, v59);
  }

  v71 = v88;
  sub_1D4F1C460(&v1[v55[10]], v88, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if (__swift_getEnumTagSinglePayload(v71, 1, v59) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v72 = OUTLINED_FUNCTION_37_21();
    v73(v72);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_31();
    sub_1D50A8C40(v74);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    (*(v47 + 8))(v42, v59);
  }

  v75 = v92;
  sub_1D4F1C460(&v1[v55[11]], v92, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_43_0(v75);
  if (v60)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v77 = v85;
    v76 = v86;
    (*(v86 + 32))(v85, v75, v66);
    OUTLINED_FUNCTION_27();
    sub_1D50A8CC8(&qword_1EC7EB6C0);
    sub_1D5614CB8();
    (*(v76 + 8))(v77, v66);
  }

  OUTLINED_FUNCTION_32_2(v55[12]);
  sub_1D4F070FC();
  v78 = v55[13];
  sub_1D560D838();
  sub_1D50A8D50(&qword_1EDD53DC0);
  OUTLINED_FUNCTION_42();
  v79 = v55[14];
  sub_1D5610088();
  sub_1D50A8D50(&qword_1EDD53358);
  OUTLINED_FUNCTION_42();
  v80 = &v1[v55[15]];
  if (*(v80 + 1))
  {
    v81 = *v80;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v55[16]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v55[17]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v55[18]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v55[19]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50A854C()
{
  sub_1D56162D8();
  sub_1D50A7D54();
  return sub_1D5616328();
}

void (*sub_1D50A8594(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D50A580C();
  return sub_1D50A8600;
}

void sub_1D50A8600(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50A6010(v2 + 32);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D50A6010(v2);
  }

  free(v2);
}

uint64_t sub_1D50A86C0()
{
  sub_1D56162D8();
  sub_1D50A7D54();
  return sub_1D5616328();
}

uint64_t sub_1D50A8744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50A8D50(&unk_1EC7EF520);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50A87D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50A884C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D50A88C0(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1D50A88E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50A8958(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D50A899C(uint64_t a1)
{
  v2 = sub_1D50A8D50(&unk_1EC7EF520);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50A8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50A8D50(&unk_1EC7EF510);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50A8AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50A8D50(&unk_1EC7EF518);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D50A8B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D50A8B94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50A8BE4(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCollaborationPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50A8C40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D50A8D50(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50A8CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA538, &qword_1D561C490);
    sub_1D50A8D50(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50A8D50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_28()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_31_24()
{

  return swift_once();
}

uint64_t MusicLibrary.LikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D50A8F34()
{
  result = qword_1EC7EF578;
  if (!qword_1EC7EF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF578);
  }

  return result;
}

_BYTE *_s10LikeActionVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s10LikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D50A911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>)
{
  v10 = sub_1D560D838();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - v17;
  if (sub_1D560F0C8())
  {
LABEL_2:

    v19 = 0;
LABEL_3:
    v20 = 2;
LABEL_4:
    *a4 = v19;
    *(a4 + 8) = v20;
    return __swift_destroy_boxed_opaque_existential_1(a3);
  }

  v32 = a2;
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v11 + 8))(v14, v10);
  v23 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v23) == 1)
  {
    sub_1D50AA0F4(v18);
LABEL_14:
    v30 = v32;
    goto LABEL_15;
  }

  v24 = sub_1D560D488();
  v26 = v25;
  (*(*(v23 - 8) + 8))(v18, v23);
  if (v24 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v26 == v27)
  {

    goto LABEL_14;
  }

  v29 = sub_1D5616168();

  v30 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_15:
  switch(a1)
  {
    case 0:
      goto LABEL_2;
    case 1:

      v20 = 2;
      v19 = 1;
      goto LABEL_4;
    case 2:

      v19 = 2;
      goto LABEL_3;
    case 3:

      v20 = 0;
      v19 = a5;
      goto LABEL_4;
    case 4:

      v20 = 2;
      v19 = 3;
      goto LABEL_4;
    case 5:

      v20 = 2;
      v19 = 4;
      goto LABEL_4;
    case 6:

      v19 = v30 & 7;
      v20 = 1;
      goto LABEL_4;
    default:
      result = sub_1D5615E08();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1D50A94B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MusicLibrary.DownloadStatus.DownloadPauseReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D50A94F8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibrary.DownloadStatus.DownloadPauseReasons.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static MusicLibrary.DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      switch(*&v2)
      {
        case 1:
          return v4 == 2 && *&v3 == 1;
        case 2:
          return v4 == 2 && *&v3 == 2;
        case 3:
          return v4 == 2 && *&v3 == 3;
        case 4:
          return v4 == 2 && *&v3 == 4;
        default:
          return v4 == 2 && *&v3 == 0;
      }
    }

    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  v7 = *a1;
  v8 = *a2;
  return v2 == v3;
}

uint64_t MusicLibrary.DownloadStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](6);
      v2 = v1;
    }

    else
    {
      switch(v1)
      {
        case 1:
          v2 = 1;
          break;
        case 2:
          v2 = 2;
          break;
        case 3:
          v2 = 4;
          break;
        case 4:
          v2 = 5;
          break;
        default:
          v2 = 0;
          break;
      }
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1DA6EC100](v4);
  }
}

uint64_t MusicLibrary.DownloadStatus.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50A96F0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

unint64_t MusicLibrary.DownloadStatus.description.getter()
{
  if (!*(v0 + 8))
  {
    v2 = *v0;
    v4 = 0;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000017, 0x80000001D5683730);
    sub_1D5615568();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_1D5615B68();

    v4 = 0xD000000000000011;
    v1 = MusicLibrary.DownloadStatus.DownloadPauseReasons.description.getter();
    MEMORY[0x1DA6EAC70](v1);

LABEL_5:
    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    return v4;
  }

  result = 0x616F6C6E776F642ELL;
  switch(*v0)
  {
    case 1:
    case 3:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1D4EFF8E4();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_72();
    v2 = v17;
  }

  OUTLINED_FUNCTION_1_67();
  v5 = v2 + 16 * v4;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v2 + 16);
      OUTLINED_FUNCTION_2_56();
      v2 = v19;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v2 = v20;
    }

    OUTLINED_FUNCTION_1_67();
    v8 = v2 + 16 * v7;
    *(v8 + 32) = 0xD000000000000013;
    *(v8 + 40) = v9;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v2 + 16);
      OUTLINED_FUNCTION_2_56();
      v2 = v22;
    }

    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v2 = v23;
    }

    OUTLINED_FUNCTION_1_67();
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0xD000000000000017;
    *(v11 + 40) = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v13 = sub_1D5614CF8();
  v15 = v14;

  MEMORY[0x1DA6EAC70](v13, v15);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_1D50A9AEC()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50A9C08(char a1)
{
  sub_1D4EFF8E4();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_56();
    v3 = v18;
  }

  *(v3 + 16) = v5;
  v6 = v3 + 16 * v4;
  *(v6 + 32) = 0x656E6F6E2ELL;
  *(v6 + 40) = 0xE500000000000000;
  if (a1)
  {
    v7 = v4 + 2;
    if (v7 > *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_2_56();
      v3 = v19;
    }

    *(v3 + 16) = v7;
    v8 = v3 + 16 * v5;
    *(v8 + 32) = 0xD000000000000010;
    *(v8 + 40) = 0x80000001D56837D0;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(v3 + 16);
  if (v9 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_56();
    v3 = v20;
  }

  *(v3 + 16) = v9 + 1;
  v10 = v3 + 16 * v9;
  *(v10 + 32) = 0xD000000000000013;
  *(v10 + 40) = 0x80000001D56837B0;
  if ((a1 & 4) != 0)
  {
LABEL_13:
    v11 = *(v3 + 16);
    if (v11 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v3 = v21;
    }

    OUTLINED_FUNCTION_1_67();
    v12 = v3 + 16 * v11;
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = v13;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v14 = sub_1D5614CF8();
  v16 = v15;

  MEMORY[0x1DA6EAC70](v14, v16);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1D50A9E08()
{
  result = qword_1EDD52780;
  if (!qword_1EDD52780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52780);
  }

  return result;
}

unint64_t sub_1D50A9E70()
{
  result = qword_1EC7EF580;
  if (!qword_1EC7EF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF580);
  }

  return result;
}

unint64_t sub_1D50A9EC8()
{
  result = qword_1EC7EF588;
  if (!qword_1EC7EF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF588);
  }

  return result;
}

unint64_t sub_1D50A9F1C()
{
  result = qword_1EC7EF590;
  if (!qword_1EC7EF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF590);
  }

  return result;
}

unint64_t sub_1D50A9F74()
{
  result = qword_1EC7EF598;
  if (!qword_1EC7EF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF598);
  }

  return result;
}

unint64_t sub_1D50A9FCC()
{
  result = qword_1EC7EF5A0;
  if (!qword_1EC7EF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF5A0);
  }

  return result;
}

uint64_t _s14DownloadStatusOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s14DownloadStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D50AA0A4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D50AA0BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D50AA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudMovieClip()
{
  result = qword_1EDD57428;
  if (!qword_1EDD57428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50AA1D4()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52708);
    if (v1 <= 0x3F)
    {
      sub_1D500A1D4();
      if (v2 <= 0x3F)
      {
        sub_1D4F55058();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_1D50AA2F0(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v77 = v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v78);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v79 = v22;
  v23 = sub_1D560C0A8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v80 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_16_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_38_2();
  v39 = *(a1 + 8);
  v40 = *(a2 + 8);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = *a1 == *a2 && v39 == v40;
    if (!v41 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v75 = v13;
  v76 = v8;
  v74 = v6;
  v73 = type metadata accessor for CloudMovieClip();
  v43 = *(v73 + 24);
  v44 = *(v35 + 48);
  sub_1D4F1C460(a1 + v43, v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F1C460(a2 + v43, v3 + v44, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v3, 1, v23);
  if (v41)
  {
    OUTLINED_FUNCTION_57(v3 + v44, 1, v23);
    v46 = v75;
    v45 = v76;
    if (v41)
    {
      sub_1D4E50004(v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_26;
    }

LABEL_24:
    v48 = &qword_1EC7E9FB0;
    v49 = &qword_1D562C590;
    v50 = v3;
LABEL_35:
    sub_1D4E50004(v50, v48, v49);
    return 0;
  }

  sub_1D4F1C460(v3, v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v3 + v44, 1, v23);
  v45 = v76;
  if (v47)
  {
    (*(v80 + 8))(v2, v23);
    goto LABEL_24;
  }

  v51 = v80;
  (*(v80 + 32))(v30, v3 + v44, v23);
  OUTLINED_FUNCTION_0_73();
  sub_1D50AB7AC(v52, v53);
  v54 = sub_1D5614D18();
  v55 = *(v51 + 8);
  v55(v30, v23);
  v55(v2, v23);
  v46 = v75;
  sub_1D4E50004(v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v56 = *(v73 + 28);
  v57 = *(v78 + 48);
  v58 = v79;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v59, v60, v61, v62);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v63, v64, v65, v66);
  v67 = v74;
  OUTLINED_FUNCTION_57(v58, 1, v74);
  if (v41)
  {
    OUTLINED_FUNCTION_57(v58 + v57, 1, v67);
    if (v41)
    {
      sub_1D4E50004(v58, &qword_1EC7EB5B8, &unk_1D56206A0);
      return 1;
    }

    goto LABEL_34;
  }

  v68 = v77;
  sub_1D4F1C460(v58, v77, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v58 + v57, 1, v67);
  if (v69)
  {
    (*(v45 + 8))(v68, v67);
LABEL_34:
    v48 = &qword_1EC7EC330;
    v49 = &qword_1D56222C0;
    v50 = v58;
    goto LABEL_35;
  }

  (*(v45 + 32))(v46, v58 + v57, v67);
  sub_1D50AB710(&qword_1EC7EBEB8, &qword_1EC7EBDD0);
  v71 = sub_1D5614D18();
  v72 = *(v45 + 8);
  v72(v46, v67);
  v72(v68, v67);
  sub_1D4E50004(v58, &qword_1EC7EB5B8, &unk_1D56206A0);
  return (v71 & 1) != 0;
}

uint64_t sub_1D50AA8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7255736C68 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D50AAA44(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6C7255736C68;
      break;
    case 3:
      result = 0x4177656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50AAAD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5B0, &qword_1D5631FA8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50AB5E8();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v24[15] = 0;
  OUTLINED_FUNCTION_10_43();
  sub_1D5616028();
  if (!v2)
  {
    v16 = v3[2];
    v17 = *(v3 + 24);
    v24[14] = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616058();
    v18 = type metadata accessor for CloudMovieClip();
    v19 = *(v18 + 24);
    v24[13] = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_73();
    sub_1D50AB7AC(v20, v21);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v22 = *(v18 + 28);
    v24[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50AB63C(&qword_1EC7EC350);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D50AACEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v41 = v3;
  v42 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = sub_1D560C0A8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  if (v0[1])
  {
    v29 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v30 = v0[2];
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v30);
  }

  v31 = type metadata accessor for CloudMovieClip();
  sub_1D4F1C460(v0 + *(v31 + 24), v28, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v28, 1, v14);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v17 + 32))(v22, v28, v14);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_73();
    sub_1D50AB7AC(v33, v34);
    sub_1D5614CB8();
    (*(v17 + 8))(v22, v14);
  }

  sub_1D4F1C460(v0 + *(v31 + 28), v13, &qword_1EC7EB5B8, &unk_1D56206A0);
  v35 = v42;
  OUTLINED_FUNCTION_57(v13, 1, v42);
  if (v32)
  {
    return OUTLINED_FUNCTION_36();
  }

  v37 = v40;
  v36 = v41;
  (*(v41 + 32))(v40, v13, v35);
  OUTLINED_FUNCTION_27();
  sub_1D50AB710(&qword_1EC7EBE78, &qword_1EC7EBDC8);
  sub_1D5614CB8();
  return (*(v36 + 8))(v37, v35);
}

uint64_t sub_1D50AB068()
{
  sub_1D56162D8();
  sub_1D50AACEC();
  return sub_1D5616328();
}

uint64_t sub_1D50AB0A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5A8, &qword_1D5631FA0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v46 = v19;
  v47 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_38_2();
  v23 = type metadata accessor for CloudMovieClip();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = a1[3];
  v31 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D50AB5E8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v32 = v16;
  v44 = v10;
  v52 = 0;
  v33 = v46;
  OUTLINED_FUNCTION_13_36();
  v34 = sub_1D5615F38();
  v36 = v35;
  *v29 = v34;
  *(v29 + 8) = v35;
  v51 = 1;
  OUTLINED_FUNCTION_13_36();
  v37 = sub_1D5615F68();
  v43 = v36;
  *(v29 + 16) = v37;
  *(v29 + 24) = v38 & 1;
  sub_1D560C0A8();
  v50 = 2;
  OUTLINED_FUNCTION_0_73();
  sub_1D50AB7AC(v39, v40);
  OUTLINED_FUNCTION_13_36();
  sub_1D5615F78();
  sub_1D4FD23EC(v32, v29 + *(v23 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v49 = 3;
  sub_1D50AB63C(&qword_1EDD531B8);
  v41 = v44;
  OUTLINED_FUNCTION_13_36();
  sub_1D5615F78();
  (*(v33 + 8))(v3, v47);
  sub_1D4FD23EC(v41, v29 + *(v23 + 28), &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50AC340(v29, v45, type metadata accessor for CloudMovieClip);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1D50AC3A0(v29, type metadata accessor for CloudMovieClip);
}

uint64_t sub_1D50AB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50AA8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50AB4F8(uint64_t a1)
{
  v2 = sub_1D50AB5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50AB534(uint64_t a1)
{
  v2 = sub_1D50AB5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50AB5AC()
{
  sub_1D56162D8();
  sub_1D50AACEC();
  return sub_1D5616328();
}

unint64_t sub_1D50AB5E8()
{
  result = qword_1EDD57458[0];
  if (!qword_1EDD57458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD57458);
  }

  return result;
}

uint64_t sub_1D50AB63C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v3 = MEMORY[0x1E6975968];
    sub_1D50AB7AC(&qword_1EDD533A8, MEMORY[0x1E6975968]);
    sub_1D50AB7AC(&qword_1EDD533B0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50AB710(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50AB7AC(a2, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50AB7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D50AB7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v49 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v53 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v54 = v17;
  v18 = type metadata accessor for CloudMovieClip();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v49 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v49 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v49 - v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  sub_1D5610708();
  v33 = v32[1];
  v51 = *v32;
  v52 = v33;

  OUTLINED_FUNCTION_6_49();
  sub_1D50AC3A0(v32, v34);
  sub_1D5610708();
  v35 = *(v30 + 2);
  v36 = v30[24];
  sub_1D50AC3A0(v30, v1);
  v37 = 0.0;
  v50 = v36;
  if ((v36 & 1) == 0)
  {
    v37 = v35 / 1000.0;
  }

  sub_1D5610708();
  sub_1D4F1C460(&v27[*(v18 + 24)], v54, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_6_49();
  sub_1D50AC3A0(v27, v38);
  sub_1D5610708();
  v39 = v49;
  sub_1D4F1C460(&v24[*(v18 + 28)], v49, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50AC3A0(v24, v1);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_57(v39, 1, v40);
  if (v41)
  {
    sub_1D4E50004(v39, &qword_1EC7EB5B8, &unk_1D56206A0);
    v43 = 1;
    v42 = v53;
  }

  else
  {
    v42 = v53;
    sub_1D5610758();
    (*(*(v40 - 8) + 8))(v39, v40);
    v43 = 0;
  }

  v44 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  v45 = sub_1D5610718();
  v46 = v52;
  *a1 = v51;
  *(a1 + 8) = v46;
  *(a1 + 16) = v37;
  *(a1 + 24) = v50;
  v47 = type metadata accessor for MovieClip();
  sub_1D4FD23EC(v54, a1 + v47[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
  result = sub_1D4FD23EC(v42, a1 + v47[7], &qword_1EC7E9CA0, &unk_1D561A0C0);
  *(a1 + v47[8]) = v45;
  return result;
}

uint64_t sub_1D50ABBD4(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  OUTLINED_FUNCTION_4(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = type metadata accessor for MovieClip();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D4F039C4();
    v14 = v30;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = *(v15 + 64);
    OUTLINED_FUNCTION_43_3();
    v19 = a1 + v18;
    v26 = *(v15 + 56);
    v27 = v20;
    do
    {
      v27(v1, v19, v29);
      sub_1D50AB7F4(v12);
      (*(v15 - 8))(v1, v29);
      v21 = *(v30 + 16);
      if (v21 >= *(v30 + 24) >> 1)
      {
        sub_1D4F039C4();
      }

      *(v30 + 16) = v21 + 1;
      v22 = *(v28 + 80);
      OUTLINED_FUNCTION_43_3();
      sub_1D50AC3F8(v12, v30 + v23 + *(v24 + 72) * v21);
      v19 += v26;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_1D50ABDF0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38_2();
  v74 = type metadata accessor for CloudMovieClip();
  v18 = OUTLINED_FUNCTION_14(v74);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v71 = (v22 - v21);
  v77 = type metadata accessor for MovieClip();
  v23 = OUTLINED_FUNCTION_4(v77);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  OUTLINED_FUNCTION_4(v73);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v72 = v36;
  v37 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v37)
  {
    return result;
  }

  v79 = MEMORY[0x1E69E7CC0];
  v65 = v9;
  sub_1D4F042CC();
  v39 = v65;
  v40 = *(v25 + 80);
  OUTLINED_FUNCTION_43_3();
  v42 = a1 + v41;
  v78 = v79;
  v66 = *(v25 + 72);
  v67 = v32 + 32;
  v69 = v2;
  v70 = v1;
  v68 = v32;
  while (1)
  {
    result = sub_1D50AC340(v42, v30, type metadata accessor for MovieClip);
    v43 = *(v30 + 8);
    v44 = *(v30 + 24);
    v76 = *v30;
    if (v44)
    {
      v75 = 0;
      goto LABEL_9;
    }

    v45 = *(v30 + 16) * 1000.0;
    if (COERCE__INT64(fabs(v45)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v45 <= -9.22337204e18)
    {
      goto LABEL_18;
    }

    if (v45 >= 9.22337204e18)
    {
      goto LABEL_19;
    }

    v75 = v45;
LABEL_9:
    v46 = v77;
    sub_1D4F1C460(v30 + *(v77 + 24), v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F1C460(v30 + *(v46 + 28), v39, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v47 = sub_1D56140F8();
    v48 = v39;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v47);

    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v50 = 1;
      v39 = v48;
      v51 = v70;
    }

    else
    {
      v51 = v70;
      v39 = v48;
      sub_1D5613F28();
      (*(*(v47 - 8) + 8))(v48, v47);
      v50 = 0;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    __swift_storeEnumTagSinglePayload(v51, v50, 1, v52);
    v53 = v71;
    v54 = v75;
    *v71 = v76;
    v53[1] = v43;
    v53[2] = v54;
    *(v53 + 24) = v44;
    v55 = v74;
    v2 = v69;
    sub_1D4FD23EC(v69, v53 + *(v74 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4FD23EC(v51, v53 + *(v55 + 28), &qword_1EC7EB5B8, &unk_1D56206A0);
    v56 = *(v30 + *(v77 + 32));

    v57 = v72;
    sub_1D56106F8();
    sub_1D50AC3A0(v30, type metadata accessor for MovieClip);
    v58 = v78;
    v79 = v78;
    v59 = *(v78 + 16);
    if (v59 >= *(v78 + 24) >> 1)
    {
      sub_1D4F042CC();
      v39 = v65;
      v58 = v79;
    }

    *(v58 + 16) = v59 + 1;
    v60 = v68;
    v61 = *(v68 + 80);
    OUTLINED_FUNCTION_43_3();
    v78 = v62;
    (*(v60 + 32))(v62 + v63 + *(v60 + 72) * v59, v57, v73);
    v42 += v66;
    if (!--v37)
    {
      return v78;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D50AC340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D50AC3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50AC3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovieClip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudMovieClip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50AC53C()
{
  result = qword_1EC7EF5B8;
  if (!qword_1EC7EF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF5B8);
  }

  return result;
}

unint64_t sub_1D50AC594()
{
  result = qword_1EDD57448;
  if (!qword_1EDD57448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57448);
  }

  return result;
}

unint64_t sub_1D50AC5EC()
{
  result = qword_1EDD57450;
  if (!qword_1EDD57450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57450);
  }

  return result;
}

uint64_t static Playlist.Entry.extendedStorage(for:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v236 = a3;
  v238 = a2;
  v250 = a1;
  v241 = a4;
  v240 = _s15InternalStorageVMa(0);
  v4 = OUTLINED_FUNCTION_14(v240);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v7);
  v8 = type metadata accessor for TVEpisode();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v12);
  v13 = type metadata accessor for MusicMovie();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v17);
  v230 = sub_1D5613D28();
  v18 = OUTLINED_FUNCTION_4(v230);
  v229 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v23);
  v249 = sub_1D560D9A8();
  v24 = OUTLINED_FUNCTION_4(v249);
  v227 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v28);
  v29 = type metadata accessor for UploadedAudio();
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v33);
  v34 = type metadata accessor for UploadedVideo();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v38);
  v232 = sub_1D5613598();
  v39 = OUTLINED_FUNCTION_4(v232);
  v235 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  v234 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v256 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_48(v226 - v55);
  v248 = sub_1D560E728();
  v56 = OUTLINED_FUNCTION_4(v248);
  v247 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v253 = sub_1D560D838();
  v61 = OUTLINED_FUNCTION_4(v253);
  v252 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v67);
  v68 = sub_1D56146E8();
  v69 = OUTLINED_FUNCTION_4(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v75 = v226 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v77 = OUTLINED_FUNCTION_22(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  v255 = v80;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v259 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C0, &qword_1D56320D8);
  v84 = OUTLINED_FUNCTION_22(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v88 = v226 - v87;
  v89 = sub_1D56147D8();
  v90 = OUTLINED_FUNCTION_4(v89);
  v92 = v91;
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v95);
  v97 = v226 - v96;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_5_51();
  sub_1D50AE870(v98, v99);
  v100 = sub_1D5614C68();

  sub_1D56147C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v89);
  v257 = v92;
  v258 = v89;
  if (EnumTagSinglePayload == 1)
  {
    (*(v92 + 104))(v97, *MEMORY[0x1E69772D8], v89);
    if (__swift_getEnumTagSinglePayload(v88, 1, v89) != 1)
    {
      sub_1D4E50004(v88, &qword_1EC7EF5C0, &qword_1D56320D8);
    }
  }

  else
  {
    (*(v92 + 32))(v97, v88, v89);
  }

  v102 = sub_1D560F7B8();
  if (v102)
  {
    v103 = v102;

    v104 = type metadata accessor for SocialProfile();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
    (*(v71 + 104))(v75, *MEMORY[0x1E6977268], v68);
    v108 = OUTLINED_FUNCTION_30_22();
    sub_1D4ED08C8(v108, v100);

    (*(v71 + 8))(v75, v68);
    v109 = v257;
    v254 = v97;
    if (*(&v266 + 1))
    {
      v110 = OUTLINED_FUNCTION_72_2();
      sub_1D4E519A8(v110, v111);
      sub_1D4E5194C(&v263, &v265);
      sub_1D50AE7BC();
      v112 = swift_dynamicCast();
      v113 = v256;
      v114 = v258;
      if (v112)
      {

        __swift_destroy_boxed_opaque_existential_1(&v263);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(&v263, v264);
        v115 = sub_1D5616158();
        if (qword_1EDD53D08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v249, qword_1EDD53D10);
        v116 = v246;
        sub_1D560D588();
        v117 = v245;
        sub_1D560D4F8();
        v118 = v251;
        sub_1D560F7D8();
        sub_1D4E50004(v117, &unk_1EC7EBF30, &qword_1D561C8C0);
        (*(v247 + 8))(v116, v248);
        v119 = v252;
        v120 = v243;
        v121 = v253;
        (*(v252 + 16))(v243, v118, v253);
        v267 = 0;
        v265 = 0u;
        v266 = 0u;
        v122 = v255;
        SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v120, v115, &v265, MEMORY[0x1E69E7CC0], v255);
        (*(v119 + 8))(v118, v121);
        v123 = v259;
        sub_1D4E50004(v259, &unk_1EC7ED370, &unk_1D5624FE0);
        __swift_destroy_boxed_opaque_existential_1(&v263);
        __swift_storeEnumTagSinglePayload(v122, 0, 1, v104);
        sub_1D50AE800(v122, v123);
        v113 = v256;
        v97 = v254;
      }
    }

    else
    {
      sub_1D4E50004(&v265, &qword_1EC7E9F98, &qword_1D561C420);
      v113 = v256;
      v114 = v258;
    }

    sub_1D4FB8150();
    sub_1D4FB8150();
    if (v264)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
      OUTLINED_FUNCTION_33_28();
      if (swift_dynamicCast())
      {
        if (*(&v261 + 1))
        {
          v124 = OUTLINED_FUNCTION_33_28();
          sub_1D4F69344(v124, v125);
          __swift_project_boxed_opaque_existential_1(&v263, v264);
          sub_1D560D078();
          sub_1D4E50004(&v265, &qword_1EC7EEC40, &unk_1D561C070);
          v265 = v260;
          v266 = v261;
          v267 = v262;
          __swift_destroy_boxed_opaque_existential_1(&v263);
          goto LABEL_20;
        }
      }

      else
      {
        v262 = 0;
        v260 = 0u;
        v261 = 0u;
      }
    }

    else
    {
      sub_1D4E50004(&v263, &qword_1EC7EEC40, &unk_1D561C070);
      v260 = 0u;
      v261 = 0u;
      v262 = 0;
    }

    sub_1D4E50004(&v260, &qword_1EC7EC520, &unk_1D5621050);
LABEL_20:
    v126 = _s12InternalItemOMa(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v126);
    v130 = v244;
    (*(v109 + 16))(v244, v97, v114);
    v131 = (*(v109 + 88))(v130, v114);
    v132 = v131 == *MEMORY[0x1E69772D0];
    v239 = v104;
    v237 = v103;
    if (v132)
    {
      v133 = v113;
      if (qword_1EDD53D48 != -1)
      {
        v131 = swift_once();
      }

      OUTLINED_FUNCTION_11_46(v131, qword_1EDD53D50);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_10_48();
      sub_1D4E50004(v114, &unk_1EC7EBF30, &qword_1D561C8C0);
      v134 = OUTLINED_FUNCTION_8_45();
      v135(v134);
      v136 = OUTLINED_FUNCTION_0_74();
      v137(v136);
      OUTLINED_FUNCTION_72_2();
      sub_1D4FB8150();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_28_29();
      OUTLINED_FUNCTION_12_38(&v261 + 8);
      MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      v138 = OUTLINED_FUNCTION_24_28();
      v139(v138);
      sub_1D4E50004(v113, &qword_1EC7EB6E0, &qword_1D56320D0);
      OUTLINED_FUNCTION_7_1();
      sub_1D50AE764();
    }

    else
    {
      if (v131 == *MEMORY[0x1E69772D8])
      {
        v151 = sub_1D560F7E8();
        v152 = *(v235 + 104);
        v153 = v232;
        v152(v234, *MEMORY[0x1E6976AB0], v232);
        v154 = sub_1D5613588();
        sub_1D4E494C8(v154, v155, v151);

        if (v264)
        {
          OUTLINED_FUNCTION_33_28();
          if (swift_dynamicCast())
          {
            v156 = v260;
            goto LABEL_39;
          }
        }

        else
        {
          sub_1D4E50004(&v263, &qword_1EC7E9F98, &qword_1D561C420);
        }

        v156 = 0;
LABEL_39:
        v152(v233, *MEMORY[0x1E6976B00], v153);
        v168 = sub_1D5613588();
        sub_1D4E494C8(v168, v169, v151);

        if (v264)
        {
          OUTLINED_FUNCTION_33_28();
          v170 = swift_dynamicCast();
          if (v170)
          {
            if (v156)
            {
              if (v260)
              {
                if (qword_1EDD53CE8 != -1)
                {
                  v170 = swift_once();
                }

                OUTLINED_FUNCTION_11_46(v170, qword_1EDD53CF0);
                OUTLINED_FUNCTION_31_25();
                OUTLINED_FUNCTION_10_48();
                sub_1D4E50004(v152, &unk_1EC7EBF30, &qword_1D561C8C0);
                v171 = OUTLINED_FUNCTION_8_45();
                v172(v171);
                v173 = OUTLINED_FUNCTION_0_74();
                v174(v173);
                OUTLINED_FUNCTION_72_2();
                sub_1D4FB8150();
                swift_unknownObjectRetain();
                OUTLINED_FUNCTION_28_29();
                v175 = OUTLINED_FUNCTION_12_38(&v252);
                UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v175, v176, v177, v178, v179);
                v180 = OUTLINED_FUNCTION_24_28();
                v181(v180);
                v182 = OUTLINED_FUNCTION_14_38();
                v151(v182);
                v183 = OUTLINED_FUNCTION_32_25();
                v151(v183);
                v113 = v256;
                sub_1D4E50004(v256, &qword_1EC7EB6E0, &qword_1D56320D0);
                OUTLINED_FUNCTION_10_6();
                sub_1D50AE764();
LABEL_51:
                swift_storeEnumTagMultiPayload();
                v140 = v113;
                goto LABEL_26;
              }

LABEL_48:
              if (qword_1EC7E8F18 != -1)
              {
                v170 = swift_once();
              }

              OUTLINED_FUNCTION_11_46(v170, qword_1EC7F08A0);
              OUTLINED_FUNCTION_31_25();
              OUTLINED_FUNCTION_10_48();
              sub_1D4E50004(v152, &unk_1EC7EBF30, &qword_1D561C8C0);
              v184 = OUTLINED_FUNCTION_8_45();
              v185(v184);
              v186 = OUTLINED_FUNCTION_0_74();
              v187(v186);
              OUTLINED_FUNCTION_72_2();
              sub_1D4FB8150();
              swift_unknownObjectRetain();
              OUTLINED_FUNCTION_28_29();
              v188 = OUTLINED_FUNCTION_12_38(&v253);
              UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v188, v189, v190, v191);
              v192 = OUTLINED_FUNCTION_24_28();
              v193(v192);
              v194 = OUTLINED_FUNCTION_14_38();
              v151(v194);
              v195 = OUTLINED_FUNCTION_32_25();
              v151(v195);
              v113 = v256;
              sub_1D4E50004(v256, &qword_1EC7EB6E0, &qword_1D56320D0);
              OUTLINED_FUNCTION_8_8();
              sub_1D50AE764();
              goto LABEL_51;
            }

LABEL_52:
            v196 = v226[4];
            sub_1D560D928();
            v197 = v246;
            sub_1D560D588();
            v198 = v245;
            sub_1D560D4F8();
            v199 = v226[2];
            sub_1D560F7D8();
            sub_1D4E50004(v198, &unk_1EC7EBF30, &qword_1D561C8C0);
            (*(v247 + 8))(v197, v248);
            (*(v227 + 8))(v196, v249);
            v200 = v252;
            v201 = v253;
            (*(v252 + 16))(v251, v199, v253);
            OUTLINED_FUNCTION_72_2();
            sub_1D4FB8150();
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_28_29();
            v202 = v228;
            sub_1D5613C88();
            (*(v200 + 8))(v199, v201);
            v203 = OUTLINED_FUNCTION_14_38();
            v197(v203);
            v204 = OUTLINED_FUNCTION_32_25();
            v197(v204);
            v205 = v229;
            v206 = v231;
            (*(v229 + 32))(v231, v202, v230);
            v207 = v205[11];
            v208 = OUTLINED_FUNCTION_71();
            v210 = v209(v208);
            if (v210 != *MEMORY[0x1E6976E18])
            {
              v217 = v256;
              if (v210 == *MEMORY[0x1E6976DF8])
              {
                sub_1D4E50004(v256, &qword_1EC7EB6E0, &qword_1D56320D0);
                v218 = v205[12];
                v219 = OUTLINED_FUNCTION_71();
                v220(v219);
                v221 = sub_1D560EEA8();
                OUTLINED_FUNCTION_14(v221);
                (*(v222 + 32))(v217, v206);
                swift_storeEnumTagMultiPayload();
                __swift_storeEnumTagSinglePayload(v217, 0, 1, v126);
              }

              else
              {
                v223 = v205[1];
                v224 = OUTLINED_FUNCTION_71();
                v225(v224);
              }

              v113 = v217;
              goto LABEL_27;
            }

            v211 = v256;
            sub_1D4E50004(v256, &qword_1EC7EB6E0, &qword_1D56320D0);
            v212 = v205[12];
            v213 = OUTLINED_FUNCTION_71();
            v214(v213);
            v113 = v211;
            v215 = sub_1D5613838();
            OUTLINED_FUNCTION_14(v215);
            (*(v216 + 32))(v211, v206);
            swift_storeEnumTagMultiPayload();
            v140 = v211;
            goto LABEL_26;
          }
        }

        else
        {
          v170 = sub_1D4E50004(&v263, &qword_1EC7E9F98, &qword_1D561C420);
        }

        if (v156)
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      if (v131 != *MEMORY[0x1E69772E0])
      {
        (*(v109 + 8))(v244, v114);
        goto LABEL_27;
      }

      v133 = v113;
      if (qword_1EDD53C38 != -1)
      {
        v131 = swift_once();
      }

      OUTLINED_FUNCTION_11_46(v131, qword_1EDD53C40);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_10_48();
      sub_1D4E50004(v114, &unk_1EC7EBF30, &qword_1D561C8C0);
      v157 = OUTLINED_FUNCTION_8_45();
      v158(v157);
      v159 = OUTLINED_FUNCTION_0_74();
      v160(v159);
      OUTLINED_FUNCTION_72_2();
      sub_1D4FB8150();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_28_29();
      v161 = OUTLINED_FUNCTION_12_38(&v255);
      TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v161, v162, v163, v164, v165);
      v166 = OUTLINED_FUNCTION_24_28();
      v167(v166);
      sub_1D4E50004(v113, &qword_1EC7EB6E0, &qword_1D56320D0);
      OUTLINED_FUNCTION_9_7();
      sub_1D50AE764();
    }

    swift_storeEnumTagMultiPayload();
    v140 = v133;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v126);
LABEL_27:
    sub_1D4FB8150();
    v141 = v259;
    sub_1D4FB8150();
    v142 = v242;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v126);
    v146 = *(v240 + 20);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v239);
    sub_1D50ADCCC();
    sub_1D50ADCCC();
    sub_1D50AE870(&qword_1EDD52F88, _s15InternalStorageVMa);
    sub_1D56130F8();
    swift_unknownObjectRelease();
    sub_1D4E50004(v113, &qword_1EC7EB6E0, &qword_1D56320D0);
    sub_1D4E50004(&v265, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D4E50004(v141, &unk_1EC7ED370, &unk_1D5624FE0);
    (*(v257 + 8))(v254, v258);
    return sub_1D50AE910(v142, _s15InternalStorageVMa);
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50ADCCC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t Playlist.Entry.extractExtendedRawDictionary(for:)(uint64_t a1)
{
  v128 = a1;
  v121 = type metadata accessor for SocialProfile();
  v2 = OUTLINED_FUNCTION_14(v121);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v119 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = v117 - v10;
  OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for UploadedVideo();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v118 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for UploadedAudio();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v25);
  v26 = type metadata accessor for MusicMovie();
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v31);
  v32 = sub_1D56131C8();
  v126 = OUTLINED_FUNCTION_4(v32);
  v127 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  v125 = v36;
  OUTLINED_FUNCTION_70_0();
  v37 = sub_1D56146E8();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v124 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v120 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for TVEpisode();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v117 - v51;
  v53 = type metadata accessor for Playlist.Entry.InternalItem();
  v54 = OUTLINED_FUNCTION_14(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = v117 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_51();
  v117[1] = sub_1D50AE870(v59, v60);
  v61 = sub_1D5614BD8();
  v122 = v1;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_7_1();
      sub_1D50AE764();
      v62 = *MEMORY[0x1E6977260];
      v63 = v40;
      v118 = *(v40 + 104);
      v64 = v120;
      v118(v120, v62, v37);
      v65 = OUTLINED_FUNCTION_17_34();
      v66(v65);
      sub_1D50AE8B8();
      sub_1D4ECB560();
      v68 = v67;
      v69 = [v67 underlyingObject];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v61 = v129;
      v70 = v64;
      v71 = v118;
      (*(v40 + 8))(v70, v37);
      v72 = type metadata accessor for MusicMovie;
      v73 = &v132;
      goto LABEL_4;
    case 3u:
      OUTLINED_FUNCTION_9_7();
      sub_1D50AE764();
      v83 = *MEMORY[0x1E6977280];
      v118 = *(v40 + 104);
      v84 = OUTLINED_FUNCTION_18_36();
      v85(v84);
      v86 = OUTLINED_FUNCTION_17_34();
      v87(v86);
      sub_1D50AE8B8();
      v63 = v40;
      sub_1D4ECB77C();
      v89 = v88;
      v90 = [v88 byte_1E84C57A5];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v91 = OUTLINED_FUNCTION_16_36();
      v92(v91);
      v72 = type metadata accessor for TVEpisode;
      v82 = v52;
      v71 = v118;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_8_8();
      sub_1D50AE764();
      v74 = *MEMORY[0x1E6977270];
      v63 = v40;
      v71 = *(v40 + 104);
      v75 = OUTLINED_FUNCTION_18_36();
      v71(v75);
      v76 = v125;
      v40 = v126;
      (*(v127 + 16))(v125, v128, v126);
      sub_1D50AE8B8();
      v23 = v76;
      sub_1D4ECB344();
      v78 = v77;
      v79 = [v77 underlyingObject];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v80 = OUTLINED_FUNCTION_16_36();
      v81(v80);
      v72 = type metadata accessor for UploadedAudio;
      v73 = &v133;
LABEL_4:
      v82 = *(v73 - 32);
      goto LABEL_7;
    case 5u:
      OUTLINED_FUNCTION_10_6();
      sub_1D50AE764();
      v93 = *MEMORY[0x1E6977270];
      v63 = v40;
      v71 = *(v40 + 104);
      v94 = OUTLINED_FUNCTION_18_36();
      v71(v94);
      v95 = OUTLINED_FUNCTION_17_34();
      v96(v95);
      sub_1D50AE8B8();
      sub_1D4ECB128();
      v98 = v97;
      v99 = [v97 byte_1E84C57A5];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v100 = OUTLINED_FUNCTION_16_36();
      v101(v100);
      v72 = type metadata accessor for UploadedVideo;
      v82 = v118;
LABEL_7:
      sub_1D50AE910(v82, v72);
      break;
    default:
      sub_1D50AE910(v58, type metadata accessor for Playlist.Entry.InternalItem);
      v63 = v40;
      v71 = *(v40 + 104);
      v23 = v125;
      v40 = v126;
      break;
  }

  v102 = v124;
  (v71)(v124, *MEMORY[0x1E6977268], v37);
  v103 = v123;
  Playlist.Entry.contributor.getter();
  if (__swift_getEnumTagSinglePayload(v103, 1, v121) == 1)
  {
    sub_1D4E50004(v103, &unk_1EC7ED370, &unk_1D5624FE0);
    sub_1D4F0E460();
    if (v105)
    {
      v106 = v104;
      swift_isUniquelyReferenced_nonNull_native();
      v130 = v61;
      v107 = *(v61 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A0, &qword_1D561E268);
      sub_1D5615D78();
      v108 = v130;
      v109 = *(v63 + 8);
      v109(*(v130 + 48) + *(v63 + 72) * v106, v37);
      sub_1D4E519A8((*(v108 + 56) + 32 * v106), v131);
      sub_1D5615D98();
    }

    else
    {
      memset(v131, 0, 32);
      v109 = *(v63 + 8);
    }

    v109(v102, v37);
    sub_1D4E50004(v131, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    (*(v127 + 16))(v23, v128, v40);
    sub_1D50AE8B8();
    sub_1D4ECAE94();
    v111 = v110;
    sub_1D50AE910(v103, type metadata accessor for SocialProfile);
    v112 = [v111 underlyingObject];

    OUTLINED_FUNCTION_30_22();
    sub_1D56159A8();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_9_45();
    sub_1D4F144AC();
    (*(v63 + 8))(v102, v37);
  }

  OUTLINED_FUNCTION_5_51();
  sub_1D50AE870(v113, v114);
  v115 = sub_1D5614BF8();

  return v115;
}

uint64_t sub_1D50AE764()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

unint64_t sub_1D50AE7BC()
{
  result = qword_1EDD525C0;
  if (!qword_1EDD525C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD525C0);
  }

  return result;
}

uint64_t sub_1D50AE800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50AE870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D50AE8B8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D50AE910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_28_29()
{
  v2 = *(v0 - 408);
}

uint64_t OUTLINED_FUNCTION_31_25()
{
  v2 = *(v0 - 328);

  return sub_1D560D4F8();
}

uint64_t type metadata accessor for UploadedVideoPropertyProvider()
{
  result = qword_1EDD54CC0;
  if (!qword_1EDD54CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50AEA20()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D50AF0B0(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, qword_1EDD57D80, type metadata accessor for AssetFlavors, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD5F220, MEMORY[0x1E6975D60], MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52730);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v14 > 0x3F)
    {
      return v13;
    }

    sub_1D50AF0B0(319, &qword_1EDD53050, MEMORY[0x1E6976600], MEMORY[0x1E69E6720]);
    if (v15 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, qword_1EDD54730, type metadata accessor for HLSAsset, MEMORY[0x1E69E6720]);
    if (v16 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD53128, MEMORY[0x1E6976028], MEMORY[0x1E69E6720]);
    if (v17 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v18 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
    if (v19 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
    if (v20 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
    if (v21 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
    if (v22 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
    if (v23 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, qword_1EDD5DAA8, type metadata accessor for CuratorRelationshipProvider, MEMORY[0x1E69E6720]);
    if (v24 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52790, &qword_1EC7ED150, &unk_1D565B6C0);
    if (v25 > 0x3F)
    {
      return v3;
    }

    sub_1D50AF0B0(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v26 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D560D838();
    if (v27 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D5610088();
    if (v28 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E5CF94();
      v1 = v29;
      if (v30 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1D50AF0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D50AF15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v335 = v20;
  v336 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v322 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v325 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v327 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  v328 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v329 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v74 = OUTLINED_FUNCTION_22(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  v324 = v77;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_2();
  v331 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  v330 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_3();
  v332 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13_3();
  v333 = v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v96 = OUTLINED_FUNCTION_22(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13();
  v323 = v99;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v318 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v104 = OUTLINED_FUNCTION_22(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13();
  v326 = v107;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v318 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v111);
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v318 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v117);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v318 - v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v318 - v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v129);
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v318 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  v136 = swift_dynamicCastClass();
  if (!v136)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v340 = v25;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v317 = 48;
    goto LABEL_181;
  }

  v137 = v136;
  v138 = qword_1EDD53F80;
  v337 = v25;

  if (v138 != -1)
  {
    OUTLINED_FUNCTION_96_7();
  }

  *&v338 = qword_1EDD76888;
  v340 = v137;
  v139 = sub_1D4EC5794(&qword_1EDD53DE8, &qword_1EC7ECD58, &qword_1D56322F0);
  if (sub_1D5614D18())
  {
    v140 = v335;
    v141 = v335[1];
    if (!v141)
    {
      v143 = 0;
      v142 = 0;
      goto LABEL_20;
    }

LABEL_6:
    v142 = *v140;

    v143 = MEMORY[0x1E69E6158];
LABEL_20:

    v159 = v336;
    *v336 = v142;
    v159[1] = v141;
    v159[2] = 0;
    v159[3] = v143;
    goto LABEL_44;
  }

  v334 = v139;
  v144 = qword_1EDD53E58;

  if (v144 != -1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76800);
  v145 = sub_1D5614D18();

  if (v145)
  {
    v146 = type metadata accessor for UploadedVideoPropertyProvider();
    v147 = OUTLINED_FUNCTION_51_3(*(v146 + 20));
    sub_1D4E69910(v147, v134, v148, v149);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v134);
    if (!v296)
    {
      goto LABEL_63;
    }

    v150 = &qword_1EC7E9CA0;
    v151 = &unk_1D561A0C0;
    v152 = v134;
LABEL_34:
    sub_1D4E50004(v152, v150, v151);
    v338 = 0u;
    v339 = 0u;
LABEL_43:
    v180 = v339;
    v181 = v336;
    *v336 = v338;
    *(v181 + 1) = v180;
    goto LABEL_44;
  }

  v153 = qword_1EDD53F70;

  if (v153 != -1)
  {
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76880);
  v154 = sub_1D5614D18();

  if (v154)
  {
    v155 = type metadata accessor for UploadedVideoPropertyProvider();
    v156 = OUTLINED_FUNCTION_51_3(*(v155 + 24));
    sub_1D4E69910(v156, v128, v157, v158);
    type metadata accessor for AssetFlavors();
    OUTLINED_FUNCTION_1(v128);
    if (v296)
    {

      v150 = &qword_1EC7ECC88;
      v151 = &unk_1D56310F0;
      v152 = v128;
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_72_3();
    OUTLINED_FUNCTION_65_14();
    v168 = v128;
LABEL_27:
    sub_1D50B69BC(v168, v166, v167);
LABEL_42:

    goto LABEL_43;
  }

  v160 = qword_1EDD53F68;

  if (v160 != -1)
  {
    OUTLINED_FUNCTION_93_8();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76878);
  v161 = sub_1D5614D18();

  if (v161)
  {
    v162 = type metadata accessor for UploadedVideoPropertyProvider();
    v163 = OUTLINED_FUNCTION_51_3(*(v162 + 28));
    sub_1D4E69910(v163, v122, v164, v165);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v122);
    if (!v296)
    {
      goto LABEL_63;
    }

    v150 = &qword_1EC7EDB98;
    v151 = L"X\b\a";
    v152 = v122;
    goto LABEL_34;
  }

  v169 = qword_1EDD53F30;

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_90_9();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76868);
  v170 = sub_1D5614D18();

  if (v170)
  {
    v171 = type metadata accessor for UploadedVideoPropertyProvider();
    v172 = OUTLINED_FUNCTION_51_3(*(v171 + 32));
    sub_1D4E69910(v172, v116, v173, v174);
    sub_1D56106B8();
    OUTLINED_FUNCTION_1(v116);
    if (!v296)
    {
      goto LABEL_63;
    }

    v150 = &qword_1EC7EC478;
    v151 = &unk_1D56299D0;
    v152 = v116;
    goto LABEL_34;
  }

  v175 = qword_1EDD53E28;

  if (v175 != -1)
  {
    OUTLINED_FUNCTION_89_2();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD767F0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_134_3();
  if (v175)
  {
    v176 = 0;
    v177 = 0;
    v178 = v335 + *(type metadata accessor for UploadedVideoPropertyProvider() + 36);
    if ((v178[8] & 1) == 0)
    {
      v177 = *v178;
      v176 = MEMORY[0x1E69E63B0];
    }

    v179 = v336;
    *v336 = v177;
    v179[1] = 0;
    v179[2] = 0;
    v179[3] = v176;
    goto LABEL_44;
  }

  v182 = qword_1EDD53ED0;

  if (v182 != -1)
  {
    OUTLINED_FUNCTION_23_31();
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76830);
  sub_1D5614D18();
  OUTLINED_FUNCTION_134_3();
  if ((v182 & 1) == 0)
  {
    v184 = qword_1EDD53F18;

    if (v184 != -1)
    {
      OUTLINED_FUNCTION_87_8();
    }

    OUTLINED_FUNCTION_0_75(qword_1EDD76858);
    sub_1D5614D18();
    OUTLINED_FUNCTION_134_3();
    if (v184)
    {
      v185 = type metadata accessor for UploadedVideoPropertyProvider();
      v186 = OUTLINED_FUNCTION_51_3(*(v185 + 44));
      sub_1D4E69910(v186, v110, v187, v188);
      sub_1D5610978();
      v189 = OUTLINED_FUNCTION_82();
      OUTLINED_FUNCTION_57(v189, 1, v135);
      if (!v296)
      {
        *(&v339 + 1) = v135;
        __swift_allocate_boxed_opaque_existential_0(&v338);
        v191 = *(*(v135 - 8) + 32);
LABEL_41:
        v191();
        goto LABEL_42;
      }

      v150 = &qword_1EC7EAC98;
      v151 = &unk_1D561DA80;
      v152 = v110;
      goto LABEL_34;
    }

    *&v338 = sub_1D4F84AB8();
    OUTLINED_FUNCTION_3_58();
    sub_1D5614D18();
    OUTLINED_FUNCTION_134_3();

    v192 = qword_1EDD53F20;

    if (v192 != -1)
    {
      OUTLINED_FUNCTION_86_9();
    }

    OUTLINED_FUNCTION_0_75(qword_1EDD76860);
    sub_1D5614D18();
    OUTLINED_FUNCTION_125_5();
    if (v192)
    {
      v193 = type metadata accessor for UploadedVideoPropertyProvider();
      v194 = OUTLINED_FUNCTION_51_3(*(v193 + 52));
      sub_1D4E69910(v194, v102, v195, v196);
      sub_1D560C328();
      OUTLINED_FUNCTION_1(v102);
      if (v296)
      {

        v150 = &qword_1EC7EA3B8;
        v151 = &unk_1D561E370;
        v152 = v102;
        goto LABEL_34;
      }

      goto LABEL_63;
    }

    v197 = qword_1EDD53EE8;

    if (v197 != -1)
    {
      OUTLINED_FUNCTION_85_4();
    }

    OUTLINED_FUNCTION_0_75(qword_1EDD76840);
    sub_1D5614D18();
    OUTLINED_FUNCTION_125_5();
    if (v197)
    {
      v198 = type metadata accessor for UploadedVideoPropertyProvider();
      v199 = OUTLINED_FUNCTION_51_3(*(v198 + 56));
      v200 = v333;
      sub_1D4E69910(v199, v333, v201, v202);
      v203 = sub_1D56128E8();
      OUTLINED_FUNCTION_1_9(v203);
      if (!v296)
      {
        goto LABEL_63;
      }

      v150 = &qword_1EC7EF5C8;
      v151 = &unk_1D5632130;
    }

    else
    {
      v205 = qword_1EDD53E18;

      if (v205 != -1)
      {
        OUTLINED_FUNCTION_22_32();
      }

      OUTLINED_FUNCTION_0_75(qword_1EDD53E20);
      sub_1D5614D18();
      OUTLINED_FUNCTION_125_5();
      if (v205)
      {
        v206 = type metadata accessor for UploadedVideoPropertyProvider();
        v207 = OUTLINED_FUNCTION_51_3(*(v206 + 60));
        v200 = v332;
        sub_1D4E69910(v207, v332, v208, v209);
        v210 = type metadata accessor for HLSAsset();
        OUTLINED_FUNCTION_1_9(v210);
        if (!v296)
        {
          OUTLINED_FUNCTION_72_3();
          OUTLINED_FUNCTION_13_37();
          v168 = v200;
          goto LABEL_27;
        }

        v150 = &qword_1EC7EF398;
        v151 = &qword_1D5631120;
      }

      else
      {
        v211 = qword_1EDD53EE0;

        if (v211 != -1)
        {
          OUTLINED_FUNCTION_83_8();
        }

        OUTLINED_FUNCTION_0_75(qword_1EDD76838);
        sub_1D5614D18();
        OUTLINED_FUNCTION_125_5();
        if ((v211 & 1) == 0)
        {
          v217 = qword_1EDD53F50;

          if (v217 != -1)
          {
            OUTLINED_FUNCTION_33_29();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD53F58);
          sub_1D5614D18();
          OUTLINED_FUNCTION_125_5();
          if (v217)
          {
            v218 = type metadata accessor for UploadedVideoPropertyProvider();
            v219 = OUTLINED_FUNCTION_51_3(*(v218 + 68));
            sub_1D4E69910(v219, v331, v220, v221);
            v222 = sub_1D560C0A8();
            OUTLINED_FUNCTION_1_9(v222);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &unk_1EC7E9CA8;
            v151 = &unk_1D561D1D0;
            v152 = v331;
            goto LABEL_34;
          }

          v223 = qword_1EDD53EA8;

          if (v223 != -1)
          {
            OUTLINED_FUNCTION_82_9();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD76818);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v223)
          {
            v224 = type metadata accessor for UploadedVideoPropertyProvider();
            v225 = OUTLINED_FUNCTION_51_3(*(v224 + 72));
            sub_1D4E69910(v225, v329, v226, v227);
            v228 = sub_1D5613198();
            OUTLINED_FUNCTION_1_9(v228);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &qword_1EC7EC530;
            v151 = &unk_1D5632150;
            v152 = v329;
            goto LABEL_34;
          }

          v229 = qword_1EDD53EA0;

          if (v229 != -1)
          {
            OUTLINED_FUNCTION_81_11();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD76810);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v229)
          {
            v230 = type metadata accessor for UploadedVideoPropertyProvider();
            v231 = OUTLINED_FUNCTION_51_3(*(v230 + 76));
            sub_1D4E69910(v231, v328, v232, v233);
            v234 = sub_1D56134E8();
            OUTLINED_FUNCTION_1_9(v234);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &qword_1EC7EC528;
            v151 = &unk_1D5621070;
            v152 = v328;
            goto LABEL_34;
          }

          v235 = qword_1EDD53F08;

          if (v235 != -1)
          {
            OUTLINED_FUNCTION_80_6();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD76850);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v235)
          {
            v236 = type metadata accessor for UploadedVideoPropertyProvider();
            v237 = OUTLINED_FUNCTION_51_3(*(v236 + 80));
            sub_1D4E69910(v237, v327, v238, v239);
            v240 = sub_1D5614A78();
            OUTLINED_FUNCTION_1_9(v240);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &qword_1EC7EF5D8;
            v151 = &unk_1D5632160;
            v152 = v327;
            goto LABEL_34;
          }

          v241 = qword_1EDD53EC0;

          if (v241 != -1)
          {
            OUTLINED_FUNCTION_100_6();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD76828);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v241)
          {
            v242 = type metadata accessor for UploadedVideoPropertyProvider();
            v243 = OUTLINED_FUNCTION_51_3(*(v242 + 84));
            sub_1D4E69910(v243, v326, v244, v245);
            v246 = sub_1D5610978();
            OUTLINED_FUNCTION_1_9(v246);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &qword_1EC7EAC98;
            v151 = &unk_1D561DA80;
            v152 = v326;
            goto LABEL_34;
          }

          v247 = qword_1EDD53EF8;

          if (v247 != -1)
          {
            OUTLINED_FUNCTION_99_8();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD76848);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if (v247)
          {
            v248 = type metadata accessor for UploadedVideoPropertyProvider();
            v249 = OUTLINED_FUNCTION_51_3(*(v248 + 88));
            sub_1D4E69910(v249, v325, v250, v251);
            v252 = sub_1D56109F8();
            OUTLINED_FUNCTION_1_9(v252);
            if (!v296)
            {
              goto LABEL_63;
            }

            v150 = &qword_1EC7EB5C0;
            v151 = &unk_1D56223C0;
            v152 = v325;
            goto LABEL_34;
          }

          v253 = qword_1EDD53E30;

          if (v253 != -1)
          {
            OUTLINED_FUNCTION_98_7();
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD767F8);
          sub_1D5614D18();
          OUTLINED_FUNCTION_109_1();
          if ((v253 & 1) == 0)
          {
            v259 = qword_1EDD53E78;

            if (v259 != -1)
            {
              OUTLINED_FUNCTION_97_0();
            }

            OUTLINED_FUNCTION_0_75(qword_1EDD76808);
            sub_1D5614D18();
            OUTLINED_FUNCTION_109_1();
            if (v259)
            {
              v260 = *(type metadata accessor for UploadedVideoPropertyProvider() + 96);
LABEL_130:
              v140 = (v335 + v260);
              v141 = v140[1];
              if (!v141)
              {
                v142 = 0;
                v143 = 0;
                goto LABEL_20;
              }

              goto LABEL_6;
            }

            v110 = qword_1EDD53F40;

            if (v110 != -1)
            {
              goto LABEL_182;
            }

            while (1)
            {
              OUTLINED_FUNCTION_0_75(qword_1EDD76870);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v110)
              {
                v261 = type metadata accessor for UploadedVideoPropertyProvider();
                v262 = OUTLINED_FUNCTION_51_3(*(v261 + 100));
                sub_1D4E69910(v262, v323, v263, v264);
                v265 = sub_1D560C328();
                OUTLINED_FUNCTION_1_9(v265);
                if (!v296)
                {
                  goto LABEL_63;
                }

                v150 = &qword_1EC7EA3B8;
                v151 = &unk_1D561E370;
                v152 = v323;
                goto LABEL_34;
              }

              v266 = qword_1EDD53EB8;

              if (v266 != -1)
              {
                OUTLINED_FUNCTION_91_8();
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD76820);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v266)
              {
                v260 = *(type metadata accessor for UploadedVideoPropertyProvider() + 104);
                goto LABEL_130;
              }

              v267 = qword_1EDD53E68;

              if (v267 != -1)
              {
                OUTLINED_FUNCTION_38_20();
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD53E70);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v267)
              {
                v268 = type metadata accessor for UploadedVideoPropertyProvider();
                v269 = OUTLINED_FUNCTION_51_3(*(v268 + 108));
                OUTLINED_FUNCTION_108_0(v269, v270, v271, &a13);
                v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
                OUTLINED_FUNCTION_1_9(v272);
                if (!v296)
                {
                  OUTLINED_FUNCTION_72_3();
                  OUTLINED_FUNCTION_15_1();
                  v191 = *(v282 + 32);
                  v283 = &a13;
LABEL_153:
                  v284 = *(v283 - 32);
                  goto LABEL_41;
                }

                v150 = &off_1EC7EB5B0;
                v151 = &unk_1D5632170;
                v273 = &a13;
                goto LABEL_172;
              }

              v274 = qword_1EDD53E40;

              if (v274 != -1)
              {
                OUTLINED_FUNCTION_37_5();
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD53E48);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v274)
              {
                v275 = type metadata accessor for UploadedVideoPropertyProvider();
                v276 = OUTLINED_FUNCTION_51_3(*(v275 + 112));
                v277 = v319;
                sub_1D4E69910(v276, v319, v278, v279);
                type metadata accessor for CuratorRelationshipProvider();
                v280 = OUTLINED_FUNCTION_104();
                OUTLINED_FUNCTION_57(v280, 1, v281);
                if (v296)
                {

                  v150 = &qword_1EC7ECC80;
                  v151 = &unk_1D5622EA0;
                  v273 = &a14;
                }

                else
                {
                  v291 = OUTLINED_FUNCTION_145_0(&a14);
                  OUTLINED_FUNCTION_108_0(v291, v292, v293, &a15);
                  OUTLINED_FUNCTION_10_49();
                  sub_1D50B6A1C(v277, v294);
                  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
                  OUTLINED_FUNCTION_1_9(v295);
                  if (!v296)
                  {
                    OUTLINED_FUNCTION_72_3();
                    OUTLINED_FUNCTION_15_1();
                    v191 = *(v308 + 32);
                    v283 = &a15;
                    goto LABEL_153;
                  }

                  v150 = &qword_1EC7EA790;
                  v151 = &unk_1D561FB10;
                  v273 = &a15;
                }

                goto LABEL_172;
              }

              v285 = off_1EDD53E88;

              if (v285 != -1)
              {
                OUTLINED_FUNCTION_36_22();
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD53E90);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v285)
              {
                v286 = type metadata accessor for UploadedVideoPropertyProvider();
                v287 = OUTLINED_FUNCTION_51_3(*(v286 + 112));
                OUTLINED_FUNCTION_108_0(v287, v288, v289, &a16);
                v290 = type metadata accessor for CuratorRelationshipProvider();
                OUTLINED_FUNCTION_1_9(v290);
                if (v296)
                {

                  v150 = &qword_1EC7ECC80;
                  v151 = &unk_1D5622EA0;
                  v273 = &a16;
                }

                else
                {
                  v303 = v285[5];
                  v304 = v320;
                  OUTLINED_FUNCTION_108_0(v320 + v303, &qword_1EC7EA788, &unk_1D56223A0, &a18);
                  OUTLINED_FUNCTION_10_49();
                  sub_1D50B6A1C(v304, v305);
                  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                  OUTLINED_FUNCTION_1_9(v306);
                  if (!v307)
                  {
                    OUTLINED_FUNCTION_72_3();
                    OUTLINED_FUNCTION_15_1();
                    v191 = *(v316 + 32);
                    v283 = &a18;
                    goto LABEL_153;
                  }

                  v150 = &qword_1EC7EA788;
                  v151 = &unk_1D56223A0;
                  v273 = &a18;
                }

                goto LABEL_172;
              }

              v297 = off_1EDD53E00;

              if (v297 != -1)
              {
                OUTLINED_FUNCTION_35_24();
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD53E08);
              sub_1D5614D18();
              OUTLINED_FUNCTION_109_1();
              if (v297)
              {
                break;
              }

              OUTLINED_FUNCTION_9_46();
              sub_1D50B6B10(v309, v310);

              v110 = sub_1D560D198();
              *&v338 = v110;
              OUTLINED_FUNCTION_3_58();
              v135 = sub_1D5614D18();

              if (v135)
              {
                v183 = *(v335 + *(type metadata accessor for UploadedVideoPropertyProvider() + 116));
                if (v183)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
                  OUTLINED_FUNCTION_82();
                }

                else
                {
                  v135 = 0;
                }

                goto LABEL_58;
              }

              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v340 = v337;
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_28();
              v317 = 112;
LABEL_181:
              v318 = v317;
              OUTLINED_FUNCTION_17_13();
              __break(1u);
LABEL_182:
              OUTLINED_FUNCTION_92_7();
            }

            v298 = type metadata accessor for UploadedVideoPropertyProvider();
            v299 = OUTLINED_FUNCTION_51_3(*(v298 + 112));
            OUTLINED_FUNCTION_108_0(v299, v300, v301, &a17);
            v302 = type metadata accessor for CuratorRelationshipProvider();
            OUTLINED_FUNCTION_1_9(v302);
            if (v296)
            {

              v150 = &qword_1EC7ECC80;
              v151 = &unk_1D5622EA0;
              v273 = &a17;
LABEL_172:
              v152 = *(v273 - 32);
              goto LABEL_34;
            }

            v311 = v297[6];
            v312 = v321;
            sub_1D4E69910(v321 + v311, v322, &qword_1EC7EA780, &unk_1D561FB20);
            OUTLINED_FUNCTION_10_49();
            sub_1D50B6A1C(v312, v313);
            v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
            OUTLINED_FUNCTION_1_9(v314);
            if (v315)
            {

              v150 = &qword_1EC7EA780;
              v151 = &unk_1D561FB20;
              v152 = v322;
              goto LABEL_34;
            }

            goto LABEL_63;
          }

          v254 = type metadata accessor for UploadedVideoPropertyProvider();
          v255 = OUTLINED_FUNCTION_51_3(*(v254 + 92));
          sub_1D4E69910(v255, v324, v256, v257);
          v258 = sub_1D560C0A8();
          OUTLINED_FUNCTION_1_9(v258);
          if (v296)
          {

            v150 = &unk_1EC7E9CA8;
            v151 = &unk_1D561D1D0;
            v152 = v324;
            goto LABEL_34;
          }

LABEL_63:
          OUTLINED_FUNCTION_72_3();
          OUTLINED_FUNCTION_15_1();
          v191 = *(v204 + 32);
          goto LABEL_41;
        }

        v212 = type metadata accessor for UploadedVideoPropertyProvider();
        v213 = OUTLINED_FUNCTION_51_3(*(v212 + 64));
        v200 = v330;
        sub_1D4E69910(v213, v330, v214, v215);
        v216 = sub_1D5610CB8();
        OUTLINED_FUNCTION_1_9(v216);
        if (!v296)
        {
          goto LABEL_63;
        }

        v150 = &qword_1EC7EF5D0;
        v151 = &unk_1D5632140;
      }
    }

    v152 = v200;
    goto LABEL_34;
  }

  v183 = *(v335 + *(type metadata accessor for UploadedVideoPropertyProvider() + 40));
  if (v183)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    OUTLINED_FUNCTION_82();
  }

  else
  {
    v135 = 0;
  }

LABEL_58:

  v190 = v336;
  *v336 = v183;
  v190[1] = 0;
  v190[2] = 0;
  v190[3] = v135;
LABEL_44:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50B0D7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_82();
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5683A60);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_33;
  }

  v4 = qword_1EDD53ED0;
  swift_retain_n();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_23_31();
  }

  sub_1D4EC5794(&qword_1EDD53DE8, &qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_77_0();
  if ((v2 & 1) == 0)
  {

    sub_1D4F84AB8();
    v5 = OUTLINED_FUNCTION_39_0();

    if ((v5 & 1) == 0)
    {
      v6 = qword_1EDD53E18;

      if (v6 != -1)
      {
        OUTLINED_FUNCTION_22_32();
      }

      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_77_0();
      if ((v6 & 1) == 0)
      {
        v7 = qword_1EDD53F50;

        if (v7 != -1)
        {
          OUTLINED_FUNCTION_33_29();
        }

        OUTLINED_FUNCTION_22_9();
        OUTLINED_FUNCTION_77_0();
        if ((v7 & 1) == 0)
        {
          v11 = qword_1EDD53E68;

          if (v11 != -1)
          {
            OUTLINED_FUNCTION_38_20();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if (v11)
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_69_11();
            sub_1D50B6B10(v12, v13);
            OUTLINED_FUNCTION_93();
            sub_1D5612238();
            goto LABEL_13;
          }

          v14 = qword_1EDD53E40;

          if (v14 != -1)
          {
            OUTLINED_FUNCTION_37_5();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if (v14)
          {
            swift_getKeyPath();
            v15 = v1 + *(type metadata accessor for UploadedVideoPropertyProvider() + 112);
            OUTLINED_FUNCTION_93();
            sub_1D54CE644();
            goto LABEL_13;
          }

          v16 = off_1EDD53E88;

          if (v16 != -1)
          {
            OUTLINED_FUNCTION_36_22();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if (v16)
          {
            swift_getKeyPath();
            v17 = v1 + *(type metadata accessor for UploadedVideoPropertyProvider() + 112);
            OUTLINED_FUNCTION_93();
            sub_1D54CE668();
            goto LABEL_13;
          }

          v18 = off_1EDD53E00;

          if (v18 != -1)
          {
            OUTLINED_FUNCTION_35_24();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if (v18)
          {
            swift_getKeyPath();
            v19 = v1 + *(type metadata accessor for UploadedVideoPropertyProvider() + 112);
            OUTLINED_FUNCTION_93();
            sub_1D54CE68C();
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_9_46();
          sub_1D50B6B10(v20, v21);

          sub_1D560D198();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_82();

          if ((v1 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
LABEL_33:
              OUTLINED_FUNCTION_17_13();
              __break(1u);
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_69_11();
  sub_1D50B6B10(v8, v9);
  OUTLINED_FUNCTION_93();
  sub_1D5612248();
LABEL_13:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D50B12C8()
{
  OUTLINED_FUNCTION_47();
  v53 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5E8, &qword_1D56322E0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = type metadata accessor for UploadedVideoPropertyProvider();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5F0, &qword_1D56322E8);
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D56839B0);
    v55 = v5;
    v48 = *(v6 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v49 = 151;
    goto LABEL_25;
  }

  v1 = v29;
  sub_1D4E628D4(v3, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v50 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v50, v51, 1, v22);
    sub_1D4E50004(v21, &qword_1EC7EF5E8, &qword_1D56322E0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D56839F0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v49 = 154;
    goto LABEL_25;
  }

  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  sub_1D50B69BC(v21, v28, type metadata accessor for UploadedVideoPropertyProvider);
  v30 = qword_1EDD53ED0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_23_31();
  }

  v54[0] = qword_1EDD76830;
  v55 = v1;
  sub_1D4EC5794(&qword_1EC7EF5F8, &qword_1EC7EF5F0, &qword_1D56322E8);
  v31 = OUTLINED_FUNCTION_124_3();

  if (v31)
  {

    v32 = *(v28 + v22[10]);

    OUTLINED_FUNCTION_18_37();
    v33 = v22[10];
LABEL_18:
    v44 = v53;
    v45 = *(v53 + v33);
    if (!v32)
    {
    }

    *(v44 + v33) = v32;
    goto LABEL_21;
  }

  v34 = sub_1D4F84BFC();
  v35 = OUTLINED_FUNCTION_111_7(v34);

  if (v35)
  {

    v32 = *(v28 + v22[12]);

    OUTLINED_FUNCTION_18_37();
    v33 = v22[12];
    goto LABEL_18;
  }

  v36 = qword_1EDD53E18;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_22_32();
  }

  v54[0] = qword_1EDD53E20;
  v55 = v1;
  v37 = OUTLINED_FUNCTION_124_3();

  if ((v37 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_46();
    sub_1D50B6B10(v40, v41);

    v42 = sub_1D560D198();
    v43 = OUTLINED_FUNCTION_111_7(v42);

    if ((v43 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_30();
        sub_1D5615B68();
        OUTLINED_FUNCTION_16_6();
        MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5683A30);
        v55 = v1;
        sub_1D5615D48();
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_28();
        v49 = 169;
LABEL_25:
        v52 = v49;
        OUTLINED_FUNCTION_17_13();
        __break(1u);
      }
    }

    v32 = *(v28 + v22[29]);

    OUTLINED_FUNCTION_18_37();
    v33 = v22[29];
    goto LABEL_18;
  }

  sub_1D4E69910(v28 + v22[15], v13, &qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_18_37();
  v38 = type metadata accessor for HLSAsset();
  OUTLINED_FUNCTION_1(v13);
  if (v39)
  {
    v47 = v53;
    sub_1D4E69910(v53 + v22[15], v15, &qword_1EC7EF398, &qword_1D5631120);
    OUTLINED_FUNCTION_1(v13);
    if (!v39)
    {
      sub_1D4E50004(v13, &qword_1EC7EF398, &qword_1D5631120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_37();
    sub_1D50B69BC(v13, v15, v46);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v38);
    v47 = v53;
  }

  sub_1D50B694C(v15, v47 + v22[15]);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50B18BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5632120;
  if (qword_1EDD53F80 != -1)
  {
    OUTLINED_FUNCTION_96_7();
  }

  *(v0 + 32) = qword_1EDD76888;
  v1 = qword_1EDD53E58;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  *(v0 + 40) = qword_1EDD76800;
  v2 = qword_1EDD53F70;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_94_8();
  }

  *(v0 + 48) = qword_1EDD76880;
  v3 = qword_1EDD53F68;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_93_8();
  }

  *(v0 + 56) = qword_1EDD76878;
  v4 = qword_1EDD53F30;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_90_9();
  }

  *(v0 + 64) = qword_1EDD76868;
  v5 = qword_1EDD53E28;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_89_2();
  }

  *(v0 + 72) = qword_1EDD767F0;
  v6 = qword_1EDD53ED0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_23_31();
  }

  *(v0 + 80) = qword_1EDD76830;
  v7 = qword_1EDD53F18;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_87_8();
  }

  *(v0 + 88) = qword_1EDD76858;

  *(v0 + 96) = sub_1D4F84AB8();
  if (qword_1EDD53F20 != -1)
  {
    OUTLINED_FUNCTION_86_9();
  }

  *(v0 + 104) = qword_1EDD76860;
  v8 = qword_1EDD53EE8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_85_4();
  }

  *(v0 + 112) = qword_1EDD76840;
  v9 = qword_1EDD53E18;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_22_32();
  }

  *(v0 + 120) = qword_1EDD53E20;
  v10 = qword_1EDD53EE0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_83_8();
  }

  *(v0 + 128) = qword_1EDD76838;
  v11 = qword_1EDD53F50;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_33_29();
  }

  *(v0 + 136) = qword_1EDD53F58;
  v12 = qword_1EDD53EA8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_82_9();
  }

  *(v0 + 144) = qword_1EDD76818;
  v13 = qword_1EDD53EA0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_81_11();
  }

  *(v0 + 152) = qword_1EDD76810;
  v14 = qword_1EDD53F08;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_80_6();
  }

  *(v0 + 160) = qword_1EDD76850;
  v15 = qword_1EDD53EC0;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_100_6();
  }

  *(v0 + 168) = qword_1EDD76828;
  v16 = qword_1EDD53EF8;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_99_8();
  }

  *(v0 + 176) = qword_1EDD76848;
  v17 = qword_1EDD53E30;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_98_7();
  }

  *(v0 + 184) = qword_1EDD767F8;
  v18 = qword_1EDD53E78;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_97_0();
  }

  *(v0 + 192) = qword_1EDD76808;
  v19 = qword_1EDD53F40;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_92_7();
  }

  *(v0 + 200) = qword_1EDD76870;
  v20 = qword_1EDD53EB8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_91_8();
  }

  *(v0 + 208) = qword_1EDD76820;
  v21 = qword_1EDD53E68;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_38_20();
  }

  *(v0 + 216) = qword_1EDD53E70;
  v22 = qword_1EDD53E40;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_37_5();
  }

  *(v0 + 224) = qword_1EDD53E48;
  v23 = off_1EDD53E88;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_36_22();
  }

  *(v0 + 232) = qword_1EDD53E90;
  v24 = off_1EDD53E00;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_35_24();
  }

  *(v0 + 240) = qword_1EDD53E08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_9_46();
  sub_1D50B6B10(v25, v26);

  result = sub_1D560D198();
  *(v0 + 248) = result;
  qword_1EDD76B50 = v0;
  return result;
}

void sub_1D50B1E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CuratorRelationshipProvider();
  v27 = OUTLINED_FUNCTION_20(v26, v714);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF600, &unk_1D5640880);
  OUTLINED_FUNCTION_20(v38, &v713);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_12_0(v43, &v712);
  v688 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_20(v54, &v708);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v58);
  v59 = sub_1D56109F8();
  v60 = OUTLINED_FUNCTION_12_0(v59, &v707);
  v684 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_20(v70, &v703);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D5614A78();
  v76 = OUTLINED_FUNCTION_12_0(v75, &v723);
  v677 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_20(v86, &v719);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v90);
  v91 = sub_1D56134E8();
  v92 = OUTLINED_FUNCTION_12_0(v91, &v727);
  v694 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_20(v102, &v721);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D5613198();
  v108 = OUTLINED_FUNCTION_12_0(v107, &v733);
  v697[1] = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_20(v118, &v728);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v122);
  v123 = sub_1D560C0A8();
  v124 = OUTLINED_FUNCTION_12_0(v123, &v739);
  v703 = v125;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v130 = OUTLINED_FUNCTION_22(v129);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v136 = OUTLINED_FUNCTION_20(v135, &v734);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v140);
  v141 = sub_1D5610CB8();
  v142 = OUTLINED_FUNCTION_12_0(v141, &v744);
  v708 = v143;
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v147);
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF630, &qword_1D5632450);
  OUTLINED_FUNCTION_20(v152, &v740);
  v154 = *(v153 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v156);
  v157 = type metadata accessor for HLSAsset();
  v158 = OUTLINED_FUNCTION_20(v157, &v750);
  v160 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v161);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v162);
  v164 = *(v163 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v166);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF638, &qword_1D5632458);
  OUTLINED_FUNCTION_20(v167, &v745);
  v169 = *(v168 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v171);
  v172 = sub_1D56128E8();
  v173 = OUTLINED_FUNCTION_12_0(v172, &a12);
  v716[1] = v174;
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v177);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v178);
  v180 = *(v179 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF640, &unk_1D5632460);
  OUTLINED_FUNCTION_20(v183, &v751);
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v187);
  v188 = sub_1D560C328();
  v189 = OUTLINED_FUNCTION_12_0(v188, &a16);
  v723 = v190;
  v192 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v193);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v195 = OUTLINED_FUNCTION_22(v194);
  v197 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v199);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v201 = OUTLINED_FUNCTION_20(v200, &a15);
  v203 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v205);
  v734 = sub_1D5610978();
  v206 = OUTLINED_FUNCTION_4(v734);
  v730 = v207;
  v209 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v210);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v212 = OUTLINED_FUNCTION_22(v211);
  v214 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v212);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_13_2();
  v731 = v216;
  v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  v217 = OUTLINED_FUNCTION_14(v733);
  v219 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v217);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_13_2();
  v732 = v221;
  OUTLINED_FUNCTION_70_0();
  v741 = sub_1D56106B8();
  v222 = OUTLINED_FUNCTION_4(v741);
  v737 = v223;
  v225 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_5_0();
  v735 = v226;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v227);
  v229 = *(v228 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v230);
  OUTLINED_FUNCTION_13_3();
  v736 = v231;
  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14(v739);
  v233 = *(v232 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_13_3();
  v740 = v235;
  OUTLINED_FUNCTION_70_0();
  v747 = sub_1D560F928();
  v236 = OUTLINED_FUNCTION_4(v747);
  v743 = v237;
  v239 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v236);
  OUTLINED_FUNCTION_5_0();
  v738 = v240;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v241);
  v243 = *(v242 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v244);
  OUTLINED_FUNCTION_13_3();
  v742 = v245;
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14(v745);
  v247 = *(v246 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v248);
  OUTLINED_FUNCTION_13_3();
  v746 = v249;
  OUTLINED_FUNCTION_70_0();
  v749 = type metadata accessor for AssetFlavors();
  v250 = OUTLINED_FUNCTION_14(v749);
  v252 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v250);
  OUTLINED_FUNCTION_5_0();
  v744 = v253;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v254);
  v256 = *(v255 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v257);
  OUTLINED_FUNCTION_13_3();
  v748 = v258;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF658, &qword_1D5632488);
  OUTLINED_FUNCTION_14(v259);
  v261 = *(v260 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v262);
  OUTLINED_FUNCTION_13_3();
  v750 = v263;
  OUTLINED_FUNCTION_70_0();
  v264 = sub_1D56140F8();
  v265 = OUTLINED_FUNCTION_4(v264);
  v267 = v266;
  v269 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v265);
  OUTLINED_FUNCTION_5();
  v272 = v271 - v270;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v273);
  v275 = *(v274 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v276);
  v278 = &v673 - v277;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14(v279);
  v281 = *(v280 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v282);
  v284 = &v673 - v283;
  v285 = v25[1];
  v286 = v23[1];
  if (v285)
  {
    if (!v286)
    {
      goto LABEL_52;
    }

    v287 = *v25 == *v23 && v285 == v286;
    if (!v287 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v286)
  {
    goto LABEL_52;
  }

  v673 = v32;
  v288 = type metadata accessor for UploadedVideoPropertyProvider();
  v751 = v23;
  v674 = v288;
  v289 = *(v288 + 20);
  v290 = v25;
  v291 = *(v279 + 48);
  v675 = v290;
  sub_1D4E69910(v290 + v289, v284, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v292 = v751 + v289;
  v293 = v751;
  sub_1D4E69910(v292, &v284[v291], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v284, 1, v264);
  if (v287)
  {
    OUTLINED_FUNCTION_57(&v284[v291], 1, v264);
    if (v287)
    {
      sub_1D4E50004(v284, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_20;
    }

LABEL_18:
    v298 = &qword_1EC7E9FB8;
    v299 = &unk_1D561B9C0;
    v300 = v284;
LABEL_51:
    sub_1D4E50004(v300, v298, v299);
    goto LABEL_52;
  }

  sub_1D4E69910(v284, v278, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(&v284[v291], 1, v264);
  if (v294)
  {
    v295 = *(v267 + 8);
    v296 = OUTLINED_FUNCTION_109();
    v297(v296);
    goto LABEL_18;
  }

  (*(v267 + 32))(v272, &v284[v291], v264);
  OUTLINED_FUNCTION_66_8();
  sub_1D50B6B10(v301, v302);
  v303 = sub_1D5614D18();
  v304 = *(v267 + 8);
  v304(v272, v264);
  v305 = OUTLINED_FUNCTION_109();
  (v304)(v305);
  sub_1D4E50004(v284, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v303 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_20:
  v306 = v674;
  v307 = v674[6];
  v308 = *(v259 + 48);
  v309 = v675;
  v310 = v750;
  OUTLINED_FUNCTION_102_8(v675 + v307, v750);
  OUTLINED_FUNCTION_102_8(v293 + v307, v310 + v308);
  OUTLINED_FUNCTION_57(v310, 1, v749);
  if (v287)
  {
    OUTLINED_FUNCTION_1(v310 + v308);
    if (v287)
    {
      sub_1D4E50004(v310, &qword_1EC7ECC88, &unk_1D56310F0);
      goto LABEL_31;
    }

LABEL_28:
    v298 = &qword_1EC7EF658;
    v299 = &qword_1D5632488;
LABEL_29:
    v300 = v310;
    goto LABEL_51;
  }

  v311 = v748;
  sub_1D4E69910(v310, v748, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_1(v310 + v308);
  if (v312)
  {
    sub_1D50B6A1C(v311, type metadata accessor for AssetFlavors);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_65_14();
  v313 = v310 + v308;
  v314 = v744;
  sub_1D50B69BC(v313, v744, v315);
  static AssetFlavors.== infix(_:_:)();
  v317 = v316;
  sub_1D50B6A1C(v314, type metadata accessor for AssetFlavors);
  sub_1D50B6A1C(v311, type metadata accessor for AssetFlavors);
  sub_1D4E50004(v310, &qword_1EC7ECC88, &unk_1D56310F0);
  if ((v317 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v318 = v306[7];
  v319 = v746;
  v320 = *(v745 + 48);
  OUTLINED_FUNCTION_102_8(v309 + v318, v746);
  OUTLINED_FUNCTION_102_8(v293 + v318, v319 + v320);
  v321 = v747;
  OUTLINED_FUNCTION_4_18(v319, 1);
  if (v287)
  {
    OUTLINED_FUNCTION_4_18(v319 + v320, 1);
    if (v287)
    {
      sub_1D4E50004(v319, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_41;
    }

LABEL_39:
    v298 = &qword_1EC7EF650;
    v299 = &qword_1D5632480;
LABEL_50:
    v300 = v319;
    goto LABEL_51;
  }

  sub_1D4E69910(v319, v742, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_4_18(v319 + v320, 1);
  if (v322)
  {
    v323 = *(v743 + 8);
    v324 = OUTLINED_FUNCTION_164_0();
    v325(v324);
    goto LABEL_39;
  }

  (*(v743 + 32))(v738, v319 + v320, v321);
  OUTLINED_FUNCTION_74_9();
  sub_1D50B6B10(v326, v327);
  OUTLINED_FUNCTION_122_2();
  v328 = OUTLINED_FUNCTION_128_0();
  (*L"X\b\a")(v328);
  v329 = OUTLINED_FUNCTION_164_0();
  (*L"X\b\a")(v329);
  sub_1D4E50004(v319, &qword_1EC7EDB98, L"X\b\a");
  if ((&qword_1EC7EDB98 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_41:
  v330 = v306[8];
  v319 = v740;
  v331 = *(v739 + 48);
  OUTLINED_FUNCTION_102_8(v309 + v330, v740);
  OUTLINED_FUNCTION_102_8(v293 + v330, v319 + v331);
  v332 = v741;
  OUTLINED_FUNCTION_4_18(v319, 1);
  if (v287)
  {
    OUTLINED_FUNCTION_4_18(v319 + v331, 1);
    if (v287)
    {
      sub_1D4E50004(v319, &qword_1EC7EC478, &unk_1D56299D0);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  sub_1D4E69910(v319, v736, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_4_18(v319 + v331, 1);
  if (v333)
  {
    v334 = *(v737 + 8);
    v335 = OUTLINED_FUNCTION_164_0();
    v336(v335);
LABEL_49:
    v298 = &qword_1EC7EE730;
    v299 = &unk_1D562C598;
    goto LABEL_50;
  }

  (*(v737 + 32))(v735, v319 + v331, v332);
  OUTLINED_FUNCTION_72_13();
  sub_1D50B6B10(v337, v338);
  OUTLINED_FUNCTION_122_2();
  v339 = OUTLINED_FUNCTION_128_0();
  (unk_1D56299D0)(v339);
  v340 = OUTLINED_FUNCTION_164_0();
  (unk_1D56299D0)(v340);
  sub_1D4E50004(v319, &qword_1EC7EC478, &unk_1D56299D0);
  if ((&qword_1EC7EC478 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  v341 = v306[9];
  v342 = (v309 + v341);
  v343 = *(v309 + v341 + 8);
  v344 = (v293 + v341);
  v345 = *(v293 + v341 + 8);
  if (v343)
  {
    if (!v345)
    {
      goto LABEL_52;
    }

LABEL_60:
    v346 = v306[10];
    v347 = *(v309 + v346);
    v348 = *(v293 + v346);
    if (v347)
    {
      if (!v348)
      {
        goto LABEL_52;
      }

      v349 = *(v293 + v346);

      sub_1D4F28F1C();
      OUTLINED_FUNCTION_82();

      if ((v347 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v348)
    {
      goto LABEL_52;
    }

    v350 = v306[11];
    v351 = v732;
    v352 = *(v733 + 48);
    OUTLINED_FUNCTION_102_8(v309 + v350, v732);
    v353 = v351;
    sub_1D4E69910(v293 + v350, v351 + v352, &qword_1EC7EAC98, &unk_1D561DA80);
    v354 = v734;
    OUTLINED_FUNCTION_4_18(v351, 1);
    if (v287)
    {
      v355 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_4_18(v355, v356);
      if (!v287)
      {
        goto LABEL_72;
      }

      sub_1D4E50004(v351, &qword_1EC7EAC98, &unk_1D561DA80);
    }

    else
    {
      sub_1D4E69910(v351, v731, &qword_1EC7EAC98, &unk_1D561DA80);
      v357 = OUTLINED_FUNCTION_72_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v357, v358, v354);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_136(&a18);
        v360 = OUTLINED_FUNCTION_164_0();
        v361(v360);
LABEL_72:
        v298 = &qword_1EC7EF648;
        v299 = &unk_1D5632470;
        v300 = v351;
        goto LABEL_51;
      }

      v362 = v730;
      (*(v730 + 32))(v729, v353 + v352, v354);
      OUTLINED_FUNCTION_12_39();
      sub_1D50B6B10(v363, v364);
      LODWORD(v750) = sub_1D5614D18();
      v352 = *(v362 + 8);
      v365 = OUTLINED_FUNCTION_26_27();
      (v352)(v365);
      v366 = OUTLINED_FUNCTION_164_0();
      (v352)(v366);
      sub_1D4E50004(v353, &qword_1EC7EAC98, &unk_1D561DA80);
      if ((v750 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v367 = v306[12];
    v368 = *(v309 + v367);
    v369 = *(v293 + v367);
    if (v368)
    {
      if (!v369)
      {
        goto LABEL_52;
      }

      v370 = *(v293 + v367);

      sub_1D4F29174();
      OUTLINED_FUNCTION_82();

      if ((v368 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v369)
    {
      goto LABEL_52;
    }

    v371 = v306[13];
    OUTLINED_FUNCTION_62_0(&a15);
    v310 = v726;
    OUTLINED_FUNCTION_102_8(v309 + v371, v726);
    OUTLINED_FUNCTION_102_8(v293 + v371, v310 + v352);
    v372 = v728;
    OUTLINED_FUNCTION_4_18(v310, 1);
    if (v287)
    {
      OUTLINED_FUNCTION_4_18(v310 + v352, 1);
      if (!v287)
      {
        goto LABEL_86;
      }

      sub_1D4E50004(v310, &qword_1EC7EA3B8, &unk_1D561E370);
    }

    else
    {
      sub_1D4E69910(v310, v722, &qword_1EC7EA3B8, &unk_1D561E370);
      v373 = __swift_getEnumTagSinglePayload(v310 + v352, 1, v372);
      if (v373 == 1)
      {
        OUTLINED_FUNCTION_136(&a11);
        v374 = OUTLINED_FUNCTION_26_27();
        v375(v374);
LABEL_86:
        v298 = &qword_1EC7EB578;
        v299 = &unk_1D5644D10;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_69_2(&a11);
      v306 = v717;
      v376(v717, v310 + v352, v372);
      OUTLINED_FUNCTION_11_47();
      sub_1D50B6B10(v377, v378);
      v379 = OUTLINED_FUNCTION_75_3();
      v352 = *(v309 + 8);
      v380 = OUTLINED_FUNCTION_122_1();
      (v352)(v380);
      v381 = OUTLINED_FUNCTION_26_27();
      (v352)(v381);
      sub_1D4E50004(v310, &qword_1EC7EA3B8, &unk_1D561E370);
      if ((v379 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_50_15();
    v383 = *(v382 + 56);
    OUTLINED_FUNCTION_62_0(&v751);
    v384 = OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_30_23(v384, &a13);
    OUTLINED_FUNCTION_19_35();
    v385 = OUTLINED_FUNCTION_95_0();
    v386 = v724;
    OUTLINED_FUNCTION_57(v385, v387, v724);
    if (v287)
    {
      OUTLINED_FUNCTION_1(v309 + v352);
      if (!v287)
      {
        goto LABEL_95;
      }

      sub_1D4E50004(v725, &qword_1EC7EF5C8, &unk_1D5632130);
    }

    else
    {
      sub_1D4E69910(v309, v720, &qword_1EC7EF5C8, &unk_1D5632130);
      v388 = __swift_getEnumTagSinglePayload(v309 + v352, 1, v386);
      if (v388 == 1)
      {
        OUTLINED_FUNCTION_136(&v748);
        v389(v720, v724);
LABEL_95:
        v298 = &qword_1EC7EF640;
        v299 = &unk_1D5632460;
        v390 = &a13;
LABEL_178:
        v300 = *(v390 - 32);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_35_0(&v748);
      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_133();
      v391();
      OUTLINED_FUNCTION_68_10();
      sub_1D50B6B10(v392, v393);
      OUTLINED_FUNCTION_76(&v752);
      v394 = OUTLINED_FUNCTION_51();
      (unk_1D5632130)(v394);
      v395 = OUTLINED_FUNCTION_85();
      (unk_1D5632130)(v395);
      sub_1D4E50004(v306, &qword_1EC7EF5C8, &unk_1D5632130);
      if ((v386 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_50_15();
    v397 = *(v396 + 60);
    OUTLINED_FUNCTION_62_0(&v745);
    v398 = OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_30_23(v398, &a9);
    OUTLINED_FUNCTION_19_35();
    v399 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_47_2(v399, v400, &v750);
    if (v287)
    {
      v401 = OUTLINED_FUNCTION_86_1(&a9);
      OUTLINED_FUNCTION_47_2(v401, v402, &v750);
      if (v287)
      {
        sub_1D4E50004(v721, &qword_1EC7EF398, &qword_1D5631120);
        goto LABEL_107;
      }
    }

    else
    {
      v403 = OUTLINED_FUNCTION_145_0(&a9);
      sub_1D4E69910(v403, v715, v404, v405);
      v406 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_47_2(v406, v407, &v750);
      if (!v408)
      {
        OUTLINED_FUNCTION_13_37();
        v410 = v721;
        v411 = v721 + v352;
        v352 = v709;
        sub_1D50B69BC(v411, v709, v412);
        v309 = v715;
        v413 = OUTLINED_FUNCTION_93();
        v415 = static HLSAsset.== infix(_:_:)(v413, v414);
        sub_1D50B6A1C(v352, type metadata accessor for HLSAsset);
        v416 = OUTLINED_FUNCTION_109();
        sub_1D50B6A1C(v416, v417);
        sub_1D4E50004(v410, &qword_1EC7EF398, &qword_1D5631120);
        if (!v415)
        {
          goto LABEL_52;
        }

LABEL_107:
        OUTLINED_FUNCTION_50_15();
        v419 = *(v418 + 64);
        OUTLINED_FUNCTION_62_0(&v740);
        v420 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v420, &v747);
        OUTLINED_FUNCTION_19_35();
        v421 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v421, v422, &v744);
        if (v287)
        {
          v423 = OUTLINED_FUNCTION_86_1(&v747);
          OUTLINED_FUNCTION_47_2(v423, v424, &v744);
          if (!v287)
          {
            goto LABEL_114;
          }

          sub_1D4E50004(v716[0], &qword_1EC7EF5D0, &unk_1D5632140);
        }

        else
        {
          v425 = OUTLINED_FUNCTION_145_0(&v747);
          sub_1D4E69910(v425, v711, v426, v427);
          v428 = OUTLINED_FUNCTION_72_1();
          v430 = __swift_getEnumTagSinglePayload(v428, v429, v714[0]);
          if (v430 == 1)
          {
            OUTLINED_FUNCTION_136(&v737);
            v431(v711, v714[0]);
LABEL_114:
            v298 = &qword_1EC7EF630;
            v299 = &qword_1D5632450;
            v390 = &v747;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v737);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v432();
          OUTLINED_FUNCTION_64_13();
          sub_1D50B6B10(v433, v434);
          OUTLINED_FUNCTION_76(&v741);
          v435 = OUTLINED_FUNCTION_51();
          (unk_1D5632140)(v435);
          v436 = OUTLINED_FUNCTION_85();
          (unk_1D5632140)(v436);
          sub_1D4E50004(v306, &qword_1EC7EF5D0, &unk_1D5632140);
          if ((&qword_1EC7EF5D0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v438 = *(v437 + 68);
        OUTLINED_FUNCTION_62_0(&v734);
        v439 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v439, &v742);
        OUTLINED_FUNCTION_19_35();
        v440 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v440, v441, &v739);
        if (v287)
        {
          v442 = OUTLINED_FUNCTION_86_1(&v742);
          OUTLINED_FUNCTION_47_2(v442, v443, &v739);
          if (!v287)
          {
            goto LABEL_123;
          }

          sub_1D4E50004(v712, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }

        else
        {
          v444 = OUTLINED_FUNCTION_145_0(&v742);
          sub_1D4E69910(v444, v706, v445, v446);
          v447 = OUTLINED_FUNCTION_72_1();
          v449 = __swift_getEnumTagSinglePayload(v447, v448, v710[0]);
          if (v449 == 1)
          {
            OUTLINED_FUNCTION_136(&v731);
            v450(v706, v710[0]);
LABEL_123:
            v298 = &qword_1EC7E9FB0;
            v299 = &qword_1D562C590;
            v390 = &v742;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_69_2(&v731);
          v451 = v712;
          v306 = v698;
          v452(v698, v712 + v352, v710[0]);
          OUTLINED_FUNCTION_14_39();
          sub_1D50B6B10(v453, v454);
          v455 = OUTLINED_FUNCTION_75_3();
          v456 = *(v309 + 8);
          v457 = OUTLINED_FUNCTION_122_1();
          v456(v457);
          v458 = OUTLINED_FUNCTION_26_27();
          v456(v458);
          sub_1D4E50004(v451, &unk_1EC7E9CA8, &unk_1D561D1D0);
          if ((v455 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v460 = *(v459 + 72);
        OUTLINED_FUNCTION_62_0(&v728);
        v461 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v461, &v736);
        OUTLINED_FUNCTION_19_35();
        v462 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v462, v463, &v733);
        if (v287)
        {
          v464 = OUTLINED_FUNCTION_86_1(&v736);
          OUTLINED_FUNCTION_47_2(v464, v465, &v733);
          if (!v287)
          {
            goto LABEL_132;
          }

          sub_1D4E50004(v707, &qword_1EC7EC530, &unk_1D5632150);
        }

        else
        {
          v466 = OUTLINED_FUNCTION_145_0(&v736);
          sub_1D4E69910(v466, v701, v467, v468);
          v469 = OUTLINED_FUNCTION_72_1();
          v471 = __swift_getEnumTagSinglePayload(v469, v470, v705[0]);
          if (v471 == 1)
          {
            OUTLINED_FUNCTION_136(&v725);
            v472(v701, v705[0]);
LABEL_132:
            v298 = &qword_1EC7EF628;
            v299 = &unk_1D5632440;
            v390 = &v736;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v725);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v473();
          OUTLINED_FUNCTION_75_8();
          sub_1D50B6B10(v474, v475);
          OUTLINED_FUNCTION_76(&v729);
          v476 = OUTLINED_FUNCTION_51();
          (unk_1D5632150)(v476);
          v477 = OUTLINED_FUNCTION_85();
          (unk_1D5632150)(v477);
          sub_1D4E50004(v306, &qword_1EC7EC530, &unk_1D5632150);
          if ((&qword_1EC7EC530 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v479 = *(v478 + 76);
        OUTLINED_FUNCTION_62_0(&v721);
        v480 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v480, &v730);
        OUTLINED_FUNCTION_19_35();
        v481 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v481, v482, &v727);
        if (v287)
        {
          v483 = OUTLINED_FUNCTION_86_1(&v730);
          OUTLINED_FUNCTION_47_2(v483, v484, &v727);
          if (!v287)
          {
            goto LABEL_141;
          }

          sub_1D4E50004(v702, &qword_1EC7EC528, &unk_1D5621070);
        }

        else
        {
          v485 = OUTLINED_FUNCTION_145_0(&v730);
          sub_1D4E69910(v485, v695, v486, v487);
          v488 = OUTLINED_FUNCTION_72_1();
          v490 = __swift_getEnumTagSinglePayload(v488, v489, v699);
          if (v490 == 1)
          {
            OUTLINED_FUNCTION_136(&v718);
            v491(v695, v699);
LABEL_141:
            v298 = &qword_1EC7EF620;
            v299 = &unk_1D5637E80;
            v390 = &v730;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v718);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v492();
          OUTLINED_FUNCTION_73_8();
          sub_1D50B6B10(v493, v494);
          OUTLINED_FUNCTION_76(&v722);
          v495 = OUTLINED_FUNCTION_51();
          (unk_1D5621070)(v495);
          v496 = OUTLINED_FUNCTION_85();
          (unk_1D5621070)(v496);
          sub_1D4E50004(v306, &qword_1EC7EC528, &unk_1D5621070);
          if ((&qword_1EC7EC528 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v498 = *(v497 + 80);
        OUTLINED_FUNCTION_62_0(&v719);
        v499 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v499, &v724);
        OUTLINED_FUNCTION_19_35();
        v500 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v500, v501, &v723);
        if (v287)
        {
          v502 = OUTLINED_FUNCTION_86_1(&v724);
          OUTLINED_FUNCTION_47_2(v502, v503, &v723);
          if (!v287)
          {
            goto LABEL_150;
          }

          sub_1D4E50004(v697[0], &qword_1EC7EF5D8, &unk_1D5632160);
        }

        else
        {
          v504 = OUTLINED_FUNCTION_145_0(&v724);
          sub_1D4E69910(v504, v693, v505, v506);
          v507 = OUTLINED_FUNCTION_72_1();
          v509 = __swift_getEnumTagSinglePayload(v507, v508, v696);
          if (v509 == 1)
          {
            OUTLINED_FUNCTION_136(&v698);
            v510(v693, v696);
LABEL_150:
            v298 = &qword_1EC7EF618;
            v299 = &unk_1D5632430;
            v390 = &v724;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v698);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v511();
          OUTLINED_FUNCTION_71_8();
          sub_1D50B6B10(v512, v513);
          OUTLINED_FUNCTION_76(&v717);
          v514 = OUTLINED_FUNCTION_51();
          (unk_1D5632160)(v514);
          v515 = OUTLINED_FUNCTION_85();
          (unk_1D5632160)(v515);
          sub_1D4E50004(v306, &qword_1EC7EF5D8, &unk_1D5632160);
          if ((&qword_1EC7EF5D8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v517 = *(v516 + 84);
        v518 = *(v733 + 48);
        v519 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v519, v716);
        OUTLINED_FUNCTION_19_35();
        v520 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v520, v521, v734);
        if (v287)
        {
          v522 = OUTLINED_FUNCTION_86_1(v716);
          OUTLINED_FUNCTION_57(v522, v523, v734);
          if (!v287)
          {
            goto LABEL_159;
          }

          sub_1D4E50004(v692, &qword_1EC7EAC98, &unk_1D561DA80);
        }

        else
        {
          v524 = OUTLINED_FUNCTION_145_0(v716);
          sub_1D4E69910(v524, v676, v525, v526);
          v527 = OUTLINED_FUNCTION_72_1();
          v529 = __swift_getEnumTagSinglePayload(v527, v528, v734);
          if (v529 == 1)
          {
            OUTLINED_FUNCTION_136(&a18);
            v530(v676, v734);
LABEL_159:
            v298 = &qword_1EC7EF648;
            v299 = &unk_1D5632470;
            v390 = v716;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&a18);
          OUTLINED_FUNCTION_79_5();
          v531 = OUTLINED_FUNCTION_78();
          v518 = v734;
          v532(v531);
          OUTLINED_FUNCTION_12_39();
          sub_1D50B6B10(v533, v534);
          OUTLINED_FUNCTION_76(v697);
          v535 = OUTLINED_FUNCTION_51();
          (unk_1D561DA80)(v535);
          v536 = OUTLINED_FUNCTION_85();
          (unk_1D561DA80)(v536);
          sub_1D4E50004(v306, &qword_1EC7EAC98, &unk_1D561DA80);
          if ((&qword_1EC7EAC98 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v538 = *(v537 + 88);
        OUTLINED_FUNCTION_62_0(&v703);
        v539 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v539, v705);
        OUTLINED_FUNCTION_19_35();
        v540 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v540, v541, &v707);
        if (v287)
        {
          v542 = OUTLINED_FUNCTION_86_1(v705);
          OUTLINED_FUNCTION_47_2(v542, v543, &v707);
          if (!v287)
          {
            goto LABEL_168;
          }

          sub_1D4E50004(v683, &qword_1EC7EB5C0, &unk_1D56223C0);
        }

        else
        {
          v544 = OUTLINED_FUNCTION_145_0(v705);
          sub_1D4E69910(v544, v682, v545, v546);
          v547 = OUTLINED_FUNCTION_72_1();
          v549 = __swift_getEnumTagSinglePayload(v547, v548, v685);
          if (v549 == 1)
          {
            OUTLINED_FUNCTION_136(&v706);
            v550(v682, v685);
LABEL_168:
            v298 = &qword_1EC7EF610;
            v299 = &unk_1D5637E70;
            v390 = v705;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v706);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v551();
          OUTLINED_FUNCTION_70_9();
          sub_1D50B6B10(v552, v553);
          OUTLINED_FUNCTION_76(&v704);
          v554 = OUTLINED_FUNCTION_51();
          (unk_1D56223C0)(v554);
          v555 = OUTLINED_FUNCTION_85();
          (unk_1D56223C0)(v555);
          sub_1D4E50004(v306, &qword_1EC7EB5C0, &unk_1D56223C0);
          if ((&qword_1EC7EB5C0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v557 = *(v556 + 92);
        OUTLINED_FUNCTION_62_0(&v734);
        v558 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v558, &v702);
        OUTLINED_FUNCTION_19_35();
        v559 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v559, v560, &v739);
        if (v287)
        {
          v561 = OUTLINED_FUNCTION_86_1(&v702);
          OUTLINED_FUNCTION_47_2(v561, v562, &v739);
          if (!v287)
          {
            goto LABEL_177;
          }

          sub_1D4E50004(v681, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }

        else
        {
          v563 = OUTLINED_FUNCTION_145_0(&v702);
          sub_1D4E69910(v563, v680, v564, v565);
          v566 = OUTLINED_FUNCTION_72_1();
          v568 = __swift_getEnumTagSinglePayload(v566, v567, v710[0]);
          if (v568 == 1)
          {
            OUTLINED_FUNCTION_136(&v731);
            v569(v680, v710[0]);
LABEL_177:
            v298 = &qword_1EC7E9FB0;
            v299 = &qword_1D562C590;
            v390 = &v702;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v731);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v570();
          OUTLINED_FUNCTION_14_39();
          sub_1D50B6B10(v571, v572);
          OUTLINED_FUNCTION_76(&v701);
          v573 = OUTLINED_FUNCTION_51();
          (unk_1D561D1D0)(v573);
          v574 = OUTLINED_FUNCTION_85();
          (unk_1D561D1D0)(v574);
          sub_1D4E50004(v306, &unk_1EC7E9CA8, &unk_1D561D1D0);
          if ((&unk_1EC7E9CA8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v576 = *(v575 + 96);
        OUTLINED_FUNCTION_40_22();
        if (v579)
        {
          if (!v577)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_31_0(v578);
          v582 = v287 && v580 == v581;
          if (!v582 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else if (v577)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_50_15();
        v584 = *(v583 + 100);
        OUTLINED_FUNCTION_62_0(&a15);
        v585 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v585, &v700);
        OUTLINED_FUNCTION_19_35();
        v586 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v586, v587, &a16);
        if (v287)
        {
          v588 = OUTLINED_FUNCTION_86_1(&v700);
          OUTLINED_FUNCTION_47_2(v588, v589, &a16);
          if (!v287)
          {
            goto LABEL_196;
          }

          sub_1D4E50004(v679, &qword_1EC7EA3B8, &unk_1D561E370);
        }

        else
        {
          v590 = OUTLINED_FUNCTION_145_0(&v700);
          sub_1D4E69910(v590, v678, v591, v592);
          v593 = OUTLINED_FUNCTION_72_1();
          v595 = __swift_getEnumTagSinglePayload(v593, v594, v728);
          if (v595 == 1)
          {
            OUTLINED_FUNCTION_136(&a11);
            v596(v678, v728);
LABEL_196:
            v298 = &qword_1EC7EB578;
            v299 = &unk_1D5644D10;
            v390 = &v700;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&a11);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v597();
          OUTLINED_FUNCTION_11_47();
          sub_1D50B6B10(v598, v599);
          OUTLINED_FUNCTION_76(&v699);
          v600 = OUTLINED_FUNCTION_51();
          (unk_1D561E370)(v600);
          v601 = OUTLINED_FUNCTION_85();
          (unk_1D561E370)(v601);
          sub_1D4E50004(v306, &qword_1EC7EA3B8, &unk_1D561E370);
          if ((&qword_1EC7EA3B8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v603 = *(v602 + 104);
        OUTLINED_FUNCTION_40_22();
        if (v606)
        {
          if (!v604)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_31_0(v605);
          v609 = v287 && v607 == v608;
          if (!v609 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else if (v604)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_50_15();
        v611 = *(v610 + 108);
        OUTLINED_FUNCTION_62_0(&v708);
        v612 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v612, v710);
        OUTLINED_FUNCTION_19_35();
        v613 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v613, v614, &v712);
        if (v287)
        {
          v615 = OUTLINED_FUNCTION_86_1(v710);
          OUTLINED_FUNCTION_47_2(v615, v616, &v712);
          if (!v287)
          {
            goto LABEL_214;
          }

          sub_1D4E50004(v687, &off_1EC7EB5B0, &unk_1D5632170);
        }

        else
        {
          v617 = OUTLINED_FUNCTION_145_0(v710);
          sub_1D4E69910(v617, v686, v618, v619);
          v620 = OUTLINED_FUNCTION_72_1();
          v622 = __swift_getEnumTagSinglePayload(v620, v621, v689);
          if (v622 == 1)
          {
            OUTLINED_FUNCTION_136(&v711);
            v623(v686, v689);
LABEL_214:
            v298 = &qword_1EC7EF608;
            v299 = &unk_1D5632420;
            v390 = v710;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0(&v711);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v624();
          sub_1D50B6A74(&qword_1EC7EF660, &qword_1EC7EF668);
          OUTLINED_FUNCTION_76(&v709);
          v625 = OUTLINED_FUNCTION_51();
          (unk_1D5632170)(v625);
          v626 = OUTLINED_FUNCTION_85();
          (unk_1D5632170)(v626);
          sub_1D4E50004(v306, &off_1EC7EB5B0, &unk_1D5632170);
          if ((&off_1EC7EB5B0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v628 = *(v627 + 112);
        OUTLINED_FUNCTION_62_0(&v713);
        v629 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v629, &v715);
        OUTLINED_FUNCTION_19_35();
        v630 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v630, v631, v714);
        if (v287)
        {
          v632 = OUTLINED_FUNCTION_86_1(&v715);
          OUTLINED_FUNCTION_47_2(v632, v633, v714);
          if (v287)
          {
            sub_1D4E50004(v691, &qword_1EC7ECC80, &unk_1D5622EA0);
            goto LABEL_226;
          }
        }

        else
        {
          v634 = OUTLINED_FUNCTION_145_0(&v715);
          sub_1D4E69910(v634, v690, v635, v636);
          v637 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_47_2(v637, v638, v714);
          if (!v639)
          {
            v641 = v691;
            v642 = v691 + v518;
            v643 = v673;
            sub_1D50B69BC(v642, v673, type metadata accessor for CuratorRelationshipProvider);
            v644 = OUTLINED_FUNCTION_93();
            v646 = sub_1D4F4AA50(v644, v645);
            sub_1D50B6A1C(v643, type metadata accessor for CuratorRelationshipProvider);
            v647 = OUTLINED_FUNCTION_109();
            sub_1D50B6A1C(v647, v648);
            sub_1D4E50004(v641, &qword_1EC7ECC80, &unk_1D5622EA0);
            if (!v646)
            {
              goto LABEL_52;
            }

LABEL_226:
            OUTLINED_FUNCTION_50_15();
            v650 = *(v649 + 116);
            v651 = *(v675 + v650);
            v652 = *(v751 + v650);
            if (v651)
            {
              if (!v652)
              {
                goto LABEL_52;
              }

              v653 = *(v751 + v650);

              sub_1D4EF7D1C();
              OUTLINED_FUNCTION_82();

              if ((v651 & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else if (v652)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_27_24(*(v654 + 120));
            sub_1D4EF6F7C();
            if ((v655 & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_118_6(*(v656 + 124));
            if ((sub_1D560D6E8() & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_118_6(*(v657 + 128));
            if ((sub_1D4F3B22C() & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            v659 = *(v658 + 132);
            OUTLINED_FUNCTION_40_22();
            if (v662)
            {
              if (!v660)
              {
                goto LABEL_52;
              }

              OUTLINED_FUNCTION_31_0(v661);
              v665 = v287 && v663 == v664;
              if (!v665 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else if (v660)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_27_24(*(v666 + 136));
            sub_1D4F286E0();
            if (v667)
            {
              OUTLINED_FUNCTION_50_15();
              OUTLINED_FUNCTION_27_24(*(v668 + 140));
              sub_1D4F286E0();
              if (v669)
              {
                OUTLINED_FUNCTION_50_15();
                OUTLINED_FUNCTION_27_24(*(v670 + 144));
                sub_1D4F286E0();
                if (v671)
                {
                  OUTLINED_FUNCTION_50_15();
                  OUTLINED_FUNCTION_27_24(*(v672 + 148));
                  sub_1D4F286E0();
                }
              }
            }

            goto LABEL_52;
          }

          OUTLINED_FUNCTION_10_49();
          sub_1D50B6A1C(v690, v640);
        }

        v298 = &qword_1EC7EF600;
        v299 = &unk_1D5640880;
        v390 = &v715;
        goto LABEL_178;
      }

      OUTLINED_FUNCTION_67_13();
      sub_1D50B6A1C(v715, v409);
    }

    v298 = &qword_1EC7EF638;
    v299 = &qword_1D5632458;
    v390 = &a9;
    goto LABEL_178;
  }

  if (*v342 != *v344)
  {
    LOBYTE(v345) = 1;
  }

  if ((v345 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_52:
  OUTLINED_FUNCTION_46();
}

void sub_1D50B4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v363);
  v341 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v362 = v33;
  OUTLINED_FUNCTION_70_0();
  v361 = sub_1D56109F8();
  v34 = OUTLINED_FUNCTION_4(v361);
  v340 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v360 = v43;
  OUTLINED_FUNCTION_70_0();
  v355 = sub_1D5614A78();
  v44 = OUTLINED_FUNCTION_4(v355);
  v339 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  v351 = v53;
  OUTLINED_FUNCTION_70_0();
  v350 = sub_1D56134E8();
  v54 = OUTLINED_FUNCTION_4(v350);
  v338 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  v349 = v63;
  OUTLINED_FUNCTION_70_0();
  v348 = sub_1D5613198();
  v64 = OUTLINED_FUNCTION_4(v348);
  v336 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  v346 = v73;
  OUTLINED_FUNCTION_70_0();
  v365 = sub_1D560C0A8();
  v74 = OUTLINED_FUNCTION_4(v365);
  v359 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v358 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  v357 = v83;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v85);
  v86 = sub_1D5610CB8();
  v87 = OUTLINED_FUNCTION_12_0(v86, &a16);
  v334 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v96);
  v97 = type metadata accessor for HLSAsset();
  v98 = OUTLINED_FUNCTION_20(v97, &a14);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D56128E8();
  v108 = OUTLINED_FUNCTION_12_0(v107, &a12);
  v332 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v117);
  v356 = sub_1D560C328();
  v118 = OUTLINED_FUNCTION_4(v356);
  v354 = v119;
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  v353 = v122;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v124 = OUTLINED_FUNCTION_22(v123);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13();
  v352 = v127;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v129);
  v364 = sub_1D5610978();
  v130 = OUTLINED_FUNCTION_4(v364);
  v347 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  v345 = v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v136 = OUTLINED_FUNCTION_22(v135);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v140);
  v141 = sub_1D56106B8();
  v142 = OUTLINED_FUNCTION_12_0(v141, &v366);
  v330[3] = v143;
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v147);
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v151);
  v152 = sub_1D560F928();
  v153 = OUTLINED_FUNCTION_12_0(v152, &v364);
  v330[1] = v154;
  v156 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v158);
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  v163 = v330 - v162;
  v164 = sub_1D56140F8();
  v165 = OUTLINED_FUNCTION_4(v164);
  v167 = v166;
  v169 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_5();
  v172 = v171 - v170;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v173);
  v175 = *(v174 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v176);
  v178 = v330 - v177;
  if (v20[1])
  {
    v179 = *v20;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v180 = type metadata accessor for UploadedVideoPropertyProvider();
  sub_1D4E69910(v20 + v180[5], v178, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v178, 1, v164);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v167 + 32))(v172, v178, v164);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_66_8();
    sub_1D50B6B10(v182, v183);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v184 = *(v167 + 8);
    v167 += 8;
    v184(v172, v164);
  }

  v185 = v356;
  v186 = v364;
  v187 = v20 + v180[6];
  sub_1D4F8596C();
  sub_1D4E69910(v23 + v180[7], v163, &qword_1EC7EDB98, L"X\b\a");
  v188 = v342;
  OUTLINED_FUNCTION_57(v163, 1, v342);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(&v346);
    v167 = v330[0];
    v189 = OUTLINED_FUNCTION_164_0();
    v190(v189);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_74_9();
    sub_1D50B6B10(v191, v192);
    OUTLINED_FUNCTION_104();
    v187 = v167;
    sub_1D5614CB8();
    v193 = OUTLINED_FUNCTION_116_7();
    v194(v193);
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[8], &qword_1EC7EC478, &unk_1D56299D0, &v365);
  v195 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v195, v196);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2(&v348);
    v197 = OUTLINED_FUNCTION_88_9();
    v198(v197);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_72_13();
    sub_1D50B6B10(v199, v200);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v201 = *(v188 + 8);
    v202 = OUTLINED_FUNCTION_122_1();
    v203(v202);
  }

  v204 = v23 + v180[9];
  if (v204[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v205 = *v204;
    OUTLINED_FUNCTION_27();
    if ((v205 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v206 = v205;
    }

    else
    {
      v206 = 0;
    }

    MEMORY[0x1DA6EC100](v206);
  }

  if (*(v23 + v180[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[11], &qword_1EC7EAC98, &unk_1D561DA80, &a9);
  v207 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v207, v208, v186);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v209 = v347;
    OUTLINED_FUNCTION_81();
    v210 = v345;
    v211 = OUTLINED_FUNCTION_109();
    v212(v211);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_39();
    sub_1D50B6B10(v213, v214);
    OUTLINED_FUNCTION_104();
    v187 = v210;
    sub_1D5614CB8();
    (*(v209 + 8))(v210, v186);
  }

  if (*(v23 + v180[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[13], &qword_1EC7EA3B8, &unk_1D561E370, &a10);
  v215 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v215, v216, v185);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v218 = v353;
    v217 = v354;
    (*(v354 + 32))(v353, v187, v185);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_11_47();
    sub_1D50B6B10(v219, v220);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    (*(v217 + 8))(v218, v185);
  }

  v221 = v344;
  v222 = v343;
  OUTLINED_FUNCTION_108_0(v23 + v180[14], &qword_1EC7EF5C8, &unk_1D5632130, &a11);
  v223 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v223, v224, v222);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6(&v350);
    v225 = v186;
    v226 = v185;
    v227 = v331;
    v228(v331, v187, v222);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_68_10();
    sub_1D50B6B10(v229, v230);
    OUTLINED_FUNCTION_104();
    v187 = v227;
    sub_1D5614CB8();
    v231 = *(v167 + 8);
    v167 += 8;
    v232 = v227;
    v185 = v226;
    v186 = v225;
    v231(v232, v222);
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[15], &qword_1EC7EF398, &qword_1D5631120, &a13);
  v233 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_47_2(v233, v234, &a14);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_13_37();
    v235 = v333;
    sub_1D50B69BC(v187, v333, v236);
    OUTLINED_FUNCTION_27();
    HLSAsset.hash(into:)();
    OUTLINED_FUNCTION_67_13();
    sub_1D50B6A1C(v235, v237);
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[16], &qword_1EC7EF5D0, &unk_1D5632140, &a15);
  v238 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v238, v239, v221);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(&v353);
    v240 = OUTLINED_FUNCTION_127_6();
    v241(v240);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_64_13();
    sub_1D50B6B10(v242, v243);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v244 = OUTLINED_FUNCTION_116_7();
    v245(v244);
  }

  OUTLINED_FUNCTION_108_0(v23 + v180[17], &unk_1EC7E9CA8, &unk_1D561D1D0, &a17);
  v246 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v246, v247);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v248 = v359;
    v249 = *(v359 + 32);
    v250 = OUTLINED_FUNCTION_88_9();
    v251(v250);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_14_39();
    sub_1D50B6B10(v252, v253);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v254 = *(v248 + 8);
    v255 = OUTLINED_FUNCTION_122_1();
    v256(v255);
  }

  v257 = v355;
  v258 = v350;
  v259 = v346;
  sub_1D4E69910(v23 + v180[18], v346, &qword_1EC7EC530, &unk_1D5632150);
  v260 = OUTLINED_FUNCTION_35_1();
  v261 = v348;
  OUTLINED_FUNCTION_4_18(v260, v262);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6(&v355);
    v263 = v335;
    v264(v335, v259, v261);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_75_8();
    sub_1D50B6B10(v265, v266);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v267 = *(v167 + 8);
    v167 += 8;
    v268 = v263;
    v186 = v364;
    v267(v268, v261);
  }

  v269 = v349;
  sub_1D4E69910(v23 + v180[19], v349, &qword_1EC7EC528, &unk_1D5621070);
  v270 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v270, v271, v258);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6(&v357);
    v272 = v337;
    v273(v337, v269, v258);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_73_8();
    sub_1D50B6B10(v274, v275);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v167 + 8))(v272, v258);
  }

  sub_1D4E69910(v23 + v180[20], v351, &qword_1EC7EF5D8, &unk_1D5632160);
  v276 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v276, v277, v257);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1(&v359);
    v278 = OUTLINED_FUNCTION_127_6();
    v279(v278);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_71_8();
    sub_1D50B6B10(v280, v281);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v282 = OUTLINED_FUNCTION_116_7();
    v283(v282);
  }

  v284 = v185;
  OUTLINED_FUNCTION_108_0(v23 + v180[21], &qword_1EC7EAC98, &unk_1D561DA80, &a18);
  v285 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v285, v286, v186);
  v287 = v365;
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v288 = v347;
    OUTLINED_FUNCTION_81();
    v257 = v345;
    v289 = OUTLINED_FUNCTION_109();
    v290(v289);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_39();
    sub_1D50B6B10(v291, v292);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v288 + 8))(v257, v186);
  }

  sub_1D4E69910(v23 + v180[22], v360, &qword_1EC7EB5C0, &unk_1D56223C0);
  v293 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v293, v294);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2(&v361);
    v295 = OUTLINED_FUNCTION_88_9();
    v296(v295);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_70_9();
    sub_1D50B6B10(v297, v298);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v299 = *(v257 + 8);
    v257 += 8;
    v300 = OUTLINED_FUNCTION_122_1();
    v301(v300);
  }

  sub_1D4E69910(v23 + v180[23], v357, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v302 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v302, v303, v287);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v257 = v358;
    v304 = v359;
    OUTLINED_FUNCTION_81();
    v305 = OUTLINED_FUNCTION_109();
    v306(v305);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_14_39();
    sub_1D50B6B10(v307, v308);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v304 + 8))(v257, v287);
  }

  v309 = (v23 + v180[24]);
  if (v309[1])
  {
    v257 = *v309;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v23 + v180[25], v352, &qword_1EC7EA3B8, &unk_1D561E370);
  v310 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v310, v311, v284);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v257 = v353;
    v312 = v354;
    OUTLINED_FUNCTION_81();
    v313 = OUTLINED_FUNCTION_109();
    v314(v313);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_11_47();
    sub_1D50B6B10(v315, v316);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v312 + 8))(v257, v284);
  }

  v317 = (v23 + v180[26]);
  if (v317[1])
  {
    v257 = *v317;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v23 + v180[27], v362, &off_1EC7EB5B0, &unk_1D5632170);
  v318 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v318, v319);
  if (v181)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2(&v363);
    v320 = OUTLINED_FUNCTION_88_9();
    v321(v320);
    OUTLINED_FUNCTION_27();
    sub_1D50B6A74(&qword_1EC7EF6C0, &qword_1EC7EC7E8);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v322 = *(v257 + 8);
    v323 = OUTLINED_FUNCTION_122_1();
    v324(v323);
  }

  v325 = v23 + v180[28];
  sub_1D4F84DAC();
  if (*(v23 + v180[29]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F068B4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v180[30]);
  sub_1D4F070FC();
  v326 = v180[31];
  sub_1D560D838();
  sub_1D50B6B10(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v327 = v180[32];
  sub_1D5610088();
  sub_1D50B6B10(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v328 = (v23 + v180[33]);
  if (v328[1])
  {
    v329 = *v328;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v180[34]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v180[35]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v180[36]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v180[37]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50B6348()
{
  sub_1D56162D8();
  sub_1D50B4C38(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

void sub_1D50B63FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50B0D7C(v2 + 32);
    v5 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v5, v6, &qword_1D561C420);
  }

  else
  {

    sub_1D50B0D7C(v2);
  }

  free(v2);
}

uint64_t sub_1D50B64B8()
{
  sub_1D56162D8();
  sub_1D50B4C38(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50B653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50B6B10(&qword_1EDD54CE0, type metadata accessor for UploadedVideoPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50B65D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 124);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50B6644(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D50B66B8(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 124);
  return result;
}

uint64_t sub_1D50B66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 128);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50B6750(uint64_t a1)
{
  v2 = (v1 + *(a1 + 132));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D50B67B8(uint64_t a1)
{
  v2 = sub_1D50B6B10(&qword_1EDD54CE0, type metadata accessor for UploadedVideoPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50B6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50B6B10(&qword_1EDD54CD0, type metadata accessor for UploadedVideoPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50B68C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50B6B10(&qword_1EC7EF5E0, type metadata accessor for UploadedVideoPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D50B694C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50B69BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D50B6A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50B6A74(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D50B6B10(a2, MEMORY[0x1E6976F28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50B6B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_80_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_7(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_124_3()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_125_5()
{
}

uint64_t OUTLINED_FUNCTION_134_3()
{
}

uint64_t sub_1D50B6E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657469726F766166 && a2 == 0xE900000000000064;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D50B6F30(char a1)
{
  if (!a1)
  {
    return 0x6C61727475656ELL;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64656B696C736964;
}

uint64_t sub_1D50B6F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50B6E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50B6FBC(uint64_t a1)
{
  v2 = sub_1D50B7498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B6FF8(uint64_t a1)
{
  v2 = sub_1D50B7498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B7034(uint64_t a1)
{
  v2 = sub_1D50B74EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B7070(uint64_t a1)
{
  v2 = sub_1D50B74EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B70AC(uint64_t a1)
{
  v2 = sub_1D50B7540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B70E8(uint64_t a1)
{
  v2 = sub_1D50B7540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B7124(uint64_t a1)
{
  v2 = sub_1D50B7594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B7160(uint64_t a1)
{
  v2 = sub_1D50B7594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicFavoriteStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6C8, &qword_1D56324B0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6D0, &qword_1D56324B8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6D8, &qword_1D56324C0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6E0, &qword_1D56324C8);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50B7498();
  sub_1D56163D8();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_1D50B7540();
      v24 = v41;
      OUTLINED_FUNCTION_2_57();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_1D50B74EC();
      v24 = v44;
      OUTLINED_FUNCTION_2_57();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_1D50B7594();
    OUTLINED_FUNCTION_2_57();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

unint64_t sub_1D50B7498()
{
  result = qword_1EDD5EF98;
  if (!qword_1EDD5EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF98);
  }

  return result;
}

unint64_t sub_1D50B74EC()
{
  result = qword_1EC7EF6E8;
  if (!qword_1EC7EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF6E8);
  }

  return result;
}

unint64_t sub_1D50B7540()
{
  result = qword_1EC7EF6F0;
  if (!qword_1EC7EF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF6F0);
  }

  return result;
}

unint64_t sub_1D50B7594()
{
  result = qword_1EDD5EF80;
  if (!qword_1EDD5EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF80);
  }

  return result;
}

uint64_t MusicFavoriteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6F8, &qword_1D56324D0);
  OUTLINED_FUNCTION_4(v71);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF700, &qword_1D56324D8);
  v9 = OUTLINED_FUNCTION_4(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF708, &qword_1D56324E0);
  OUTLINED_FUNCTION_4(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF710, &unk_1D56324E8);
  OUTLINED_FUNCTION_4(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50B7498();
  v31 = v72;
  sub_1D5616398();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v16;
  v62 = v22;
  v63 = v15;
  v33 = v70;
  v32 = v71;
  v72 = a1;
  v34 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v39) = *(v36 + v37);
    sub_1D4FE35EC(v37 + 1, v38 >> 1, result, v36, v37, v38);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (!v44)
    {
LABEL_9:
      v50 = sub_1D5615C18();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
      *v52 = &type metadata for MusicFavoriteStatus;
      sub_1D5615F28();
      sub_1D5615BF8();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v29, v23);
      a1 = v72;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v74 = 1;
        sub_1D50B7540();
        v46 = v63;
        OUTLINED_FUNCTION_4_4();
        v47 = v67;
        v48 = v23;
        v49 = v69;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v46, v66);
        (*(v49 + 8))(v29, v48);
      }

      else
      {
        LODWORD(v66) = v39;
        v75 = 2;
        sub_1D50B74EC();
        v55 = v60;
        sub_1D5615F18();
        v47 = v67;
        v39 = v23;
        v56 = v69;
        if (v55)
        {
          (*(v69 + 8))(v29, v39);
          swift_unknownObjectRelease();
          a1 = v72;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v45 + 8))(v33, v32);
        (*(v56 + 8))(v29, v39);
        LOBYTE(v39) = v66;
      }
    }

    else
    {
      v73 = 0;
      sub_1D50B7594();
      v54 = v62;
      OUTLINED_FUNCTION_4_4();
      swift_unknownObjectRelease();
      (*(v64 + 8))(v54, v61);
      v57 = OUTLINED_FUNCTION_3_59();
      v58(v57);
      v47 = v67;
    }

    *v47 = v39;
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return result;
}

uint64_t MusicFavoriteStatus.description.getter()
{
  v1 = 0x7469726F7661662ELL;
  if (*v0 != 1)
  {
    v1 = 0x656B696C7369642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727475656E2ELL;
  }
}

unint64_t sub_1D50B7CB8()
{
  result = qword_1EC7EF718;
  if (!qword_1EC7EF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF718);
  }

  return result;
}

_BYTE *sub_1D50B7D0C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50B7E1C()
{
  result = qword_1EC7EF720;
  if (!qword_1EC7EF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF720);
  }

  return result;
}

unint64_t sub_1D50B7E74()
{
  result = qword_1EDD5EF70;
  if (!qword_1EDD5EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF70);
  }

  return result;
}

unint64_t sub_1D50B7ECC()
{
  result = qword_1EDD5EF78;
  if (!qword_1EDD5EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF78);
  }

  return result;
}

unint64_t sub_1D50B7F24()
{
  result = qword_1EDD5EF50;
  if (!qword_1EDD5EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF50);
  }

  return result;
}

unint64_t sub_1D50B7F7C()
{
  result = qword_1EDD5EF58;
  if (!qword_1EDD5EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF58);
  }

  return result;
}

unint64_t sub_1D50B7FD4()
{
  result = qword_1EDD5EF60;
  if (!qword_1EDD5EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF60);
  }

  return result;
}

unint64_t sub_1D50B802C()
{
  result = qword_1EDD5EF68;
  if (!qword_1EDD5EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF68);
  }

  return result;
}

unint64_t sub_1D50B8084()
{
  result = qword_1EDD5EF88;
  if (!qword_1EDD5EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF88);
  }

  return result;
}

unint64_t sub_1D50B80DC()
{
  result = qword_1EDD5EF90;
  if (!qword_1EDD5EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF90);
  }

  return result;
}

unint64_t sub_1D50B8148()
{
  result = qword_1EC7EF728;
  if (!qword_1EC7EF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF728);
  }

  return result;
}

uint64_t sub_1D50B81A4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F30474(v10, a1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50B8208()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4F30474(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50B824C(uint64_t a1)
{
  v5 = a1;
  sub_1D4E628D4(a1, &v39);
  sub_1D50B873C();
  v6 = sub_1D5614C98();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v5;
  }

  else
  {
    v7 = v6;
    v35 = v5;
    sub_1D50B8790();
    v5 = sub_1D5614BD8();
    v8 = 0;
    v9 = *(v7 + 64);
    v10 = *(v7 + 32);
    OUTLINED_FUNCTION_0_76();
    v13 = v12 >> 6;
    v36 = v12 >> 6;
    v37 = v11;
    v38 = v7;
    if (v2)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_4:
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v14 >= v13)
      {
        __swift_destroy_boxed_opaque_existential_1(v35);

        return v5;
      }

      v2 = *(v11 + 8 * v14);
      ++v8;
    }

    while (!v2);
    v8 = v14;
LABEL_8:
    while (1)
    {
      v15 = *(v7 + 48);
      v16 = *(v7 + 56);
      OUTLINED_FUNCTION_3_60(__clz(__rbit64(v2)) | (v8 << 6));
      v40 = 0;

      swift_isUniquelyReferenced_nonNull_native();
      v39 = v5;
      v17 = OUTLINED_FUNCTION_161();
      v19 = sub_1D4F15A78(v17, v18);
      if (__OFADD__(v5[2], (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF740, &qword_1D5632A60);
      if (sub_1D5615D78())
      {
        v23 = OUTLINED_FUNCTION_161();
        v25 = sub_1D4F15A78(v23, v24);
        if ((v22 & 1) != (v26 & 1))
        {
          goto LABEL_23;
        }

        v21 = v25;
      }

      if (v22)
      {

        v5 = v39;
        v27 = v39[7];
        v28 = *(v27 + 8 * v21);
        *(v27 + 8 * v21) = v40;
      }

      else
      {
        v5 = v39;
        OUTLINED_FUNCTION_1_68(&v39[v21 >> 6]);
        v30 = (v29 + 16 * v21);
        *v30 = v4;
        v30[1] = v3;
        *(v5[7] + 8 * v21) = v40;
        v31 = v5[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v5[2] = v33;
      }

      v2 &= v2 - 1;
      v11 = v37;
      v7 = v38;
      v13 = v36;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50B84B0(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D5614BD8();
  v8 = a2 + 64;
  v7 = *(a2 + 64);
  v9 = *(a2 + 32);
  OUTLINED_FUNCTION_0_76();
  v11 = v10 >> 6;
  v32 = a2;

  v12 = 0;
  v30 = v11;
  v31 = a2 + 64;
  if (v2)
  {
LABEL_6:
    while (1)
    {
      v14 = *(v32 + 48);
      v15 = *(v32 + 56);
      OUTLINED_FUNCTION_3_60(__clz(__rbit64(v2)) | (v12 << 6));

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_161();
      v16 = sub_1D4E4EFA0();
      if (__OFADD__(*(v6 + 16), (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF748, &qword_1D5632A68);
      if (sub_1D5615D78())
      {
        OUTLINED_FUNCTION_161();
        v20 = sub_1D4E4EFA0();
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_20;
        }

        v18 = v20;
      }

      if (v19)
      {

        v22 = *(v6 + 56);
        v23 = *(v22 + 8 * v18);
        *(v22 + 8 * v18) = v8;
      }

      else
      {
        OUTLINED_FUNCTION_1_68(v6 + 8 * (v18 >> 6));
        v25 = (v24 + 16 * v18);
        *v25 = v4;
        v25[1] = v3;
        *(*(v6 + 56) + 8 * v18) = v8;
        v26 = *(v6 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_19;
        }

        *(v6 + 16) = v28;
      }

      v2 &= v2 - 1;
      v11 = v30;
      v8 = v31;
      if (!v2)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        sub_1D50B87E4();
        sub_1D5614C88();
      }

      v2 = *(v8 + 8 * v13);
      ++v12;
      if (v2)
      {
        v12 = v13;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D50B86F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D50B824C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D50B873C()
{
  result = qword_1EC7EF730;
  if (!qword_1EC7EF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF730);
  }

  return result;
}

unint64_t sub_1D50B8790()
{
  result = qword_1EC7EF738;
  if (!qword_1EC7EF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF738);
  }

  return result;
}

unint64_t sub_1D50B87E4()
{
  result = qword_1EC7EF750;
  if (!qword_1EC7EF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF750);
  }

  return result;
}

uint64_t sub_1D50B8838()
{
  v1 = v0;
  v2 = sub_1D5615C08();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5615C18();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v17, v1, v10);
  v18 = (*(v13 + 88))(v17, v10);
  if (v18 == *MEMORY[0x1E69E6AF8] || v18 == *MEMORY[0x1E69E6B08])
  {
    v19 = OUTLINED_FUNCTION_1_69();
    v20(v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    v22 = OUTLINED_FUNCTION_0_77(v21);
    v23(v22);
LABEL_4:
    sub_1D5615BE8();
    v24 = OUTLINED_FUNCTION_2_58();
    v25(v24);
    return v1;
  }

  if (v18 == *MEMORY[0x1E69E6AF0])
  {
    v27 = OUTLINED_FUNCTION_1_69();
    v28(v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF758, &unk_1D5632A70);
    v30 = OUTLINED_FUNCTION_0_77(v29);
    v31(v30);
    sub_1D5615BE8();
    v32 = OUTLINED_FUNCTION_2_58();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v1;
  }

  if (v18 == *MEMORY[0x1E69E6B00])
  {
    v34 = OUTLINED_FUNCTION_1_69();
    v35(v34);
    (*(v5 + 32))(v9, v17, v2);
    goto LABEL_4;
  }

  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D5683AC0);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50B8B48()
{
  type metadata accessor for ICError();
  sub_1D50B8C18();
  v0 = sub_1D560BE68();
  v1 = *MEMORY[0x1E69E42C0];
  v2 = sub_1D5614D68();
  sub_1D4E494C8(v2, v3, v0);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D50B8C70(v6);
    return 0;
  }
}

unint64_t sub_1D50B8C18()
{
  result = qword_1EDD52A10;
  if (!qword_1EDD52A10)
  {
    type metadata accessor for ICError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52A10);
  }

  return result;
}

uint64_t sub_1D50B8C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50B8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1D50B8D2C(a1, a2, a3);
}

uint64_t sub_1D50B8D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  OUTLINED_FUNCTION_58_0();
  v6 = v5;
  v7 = sub_1D560E4F8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + qword_1EDD76EF0 + 32);
  v16 = *(*(*(*(v6 + qword_1EDD76EF0 + 16) + 8) + 16) + 16);
  v17 = *(v6 + qword_1EDD76EF0);
  swift_getAssociatedTypeWitness();
  sub_1D56151C8();
  sub_1D5616128();
  v18 = *(*v4 + qword_1EDD76EF0 + 40);
  v19 = v6 + qword_1EDD76EF0;
  v20 = *(*(*(*(v6 + qword_1EDD76EF0 + 24) + 8) + 16) + 16);
  v21 = *(v19 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D56151C8();
  sub_1D5616128();
  v22 = (v4 + *(*v4 + qword_1EDD76EF0 + 48));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  v24 = v30;
  (*(v9 + 16))(v14, v30, v7);
  v25 = sub_1D5613368();
  (*(v9 + 8))(v24, v7);
  return v25;
}

uint64_t sub_1D50B8F84()
{
  OUTLINED_FUNCTION_5_52();
  v1 = v0;
  v2 = *(v0 + qword_1EDD76EF0);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v11 = *(v10 + 32);
  OUTLINED_FUNCTION_7_50();
  v12 = OUTLINED_FUNCTION_3_61();
  v13(v12);
  OUTLINED_FUNCTION_4_47(*(v1 + qword_1EDD76EF0 + 16));
  (*(v4 + 8))(v9, v2);
  return v15;
}

uint64_t sub_1D50B9094()
{
  OUTLINED_FUNCTION_5_52();
  v1 = v0;
  v2 = *(v0 + qword_1EDD76EF0 + 8);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v11 = *(v10 + 40);
  OUTLINED_FUNCTION_7_50();
  v12 = OUTLINED_FUNCTION_3_61();
  v13(v12);
  OUTLINED_FUNCTION_4_47(*(v1 + qword_1EDD76EF0 + 24));
  (*(v4 + 8))(v9, v2);
  return v15;
}

void sub_1D50B91A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D50B91C4();
}

uint64_t sub_1D50B91F4()
{
  OUTLINED_FUNCTION_5_52();
  v2 = v1;
  v3 = *(v1 + qword_1EDD76EF0 + 32);
  OUTLINED_FUNCTION_1_70(v4, *(v1 + qword_1EDD76EF0));
  (*(v5 + 8))(v0 + v6);
  OUTLINED_FUNCTION_5_52();
  v8 = *(v7 + qword_1EDD76EF0 + 40);
  OUTLINED_FUNCTION_1_70(v9, *(v2 + qword_1EDD76EF0 + 8));
  (*(v10 + 8))(v0 + v11);
  OUTLINED_FUNCTION_58_0();
  v13 = *(v0 + *(v12 + qword_1EDD76EF0 + 48) + 8);
}

uint64_t static MusicLibraryMapping.ItemContent<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54[1] = a5;
  v59 = a1;
  v60 = a2;
  OUTLINED_FUNCTION_1_0();
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v55 = (v11 - v10);
  v12 = type metadata accessor for MusicLibraryMapping.ItemContent();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v54 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v58 = v27;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v54 - v32;
  v34 = v54 + *(v31 + 48) - v32;
  v57 = v14;
  v35 = *(v14 + 16);
  (v35)(v54 - v32, v59, v12);
  (v35)(v34, v60, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v47 = v55;
    v46 = v56;
    OUTLINED_FUNCTION_2_59();
    v35();
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v46 + 8))(v25, a3);
LABEL_19:
      v45 = 0;
      v44 = v58;
      v12 = TupleTypeMetadata2;
      goto LABEL_25;
    }

    (*(v46 + 32))(v47, v34, a3);
    v45 = sub_1D5614D18();
    v52 = *(v46 + 8);
    v52(v47, a3);
    v52(v25, a3);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_2_59();
    v35();
    v49 = *v20;
    v48 = v20[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_18;
    }

    if (v49 == *v34 && v48 == *(v34 + 1))
    {

      v45 = 1;
    }

    else
    {
      v51 = *(v34 + 1);
      v45 = sub_1D5616168();
    }

LABEL_24:
    v44 = v57;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2_59();
  v35();
  v38 = *v23;
  v37 = *(v23 + 1);
  v39 = v23[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v40 = v34[16];
  if (v38 == *v34 && v37 == *(v34 + 1))
  {

    v44 = v57;
    goto LABEL_22;
  }

  v42 = *(v34 + 1);
  v43 = sub_1D5616168();

  v44 = v57;
  if (v43)
  {
LABEL_22:
    v45 = v39 == v40;
    goto LABEL_25;
  }

  v45 = 0;
LABEL_25:
  (*(v44 + 8))(v33, v12);
  return v45 & 1;
}

uint64_t MusicLibraryMapping.ItemContent<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v16 = *v12;
    v17 = *(v12 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v12[16];
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5614E28();

      return MEMORY[0x1DA6EC0D0](v18);
    }

    else
    {
      MEMORY[0x1DA6EC0D0](2);
      sub_1D5614E28();
    }
  }

  else
  {
    (*(v4 + 32))(v8, v12, v3);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614CB8();
    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t MusicLibraryMapping.ItemContent<>.hashValue.getter()
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_2_59();
  MusicLibraryMapping.ItemContent<>.hash(into:)(v0, v1);
  return sub_1D5616328();
}

uint64_t sub_1D50B99DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.ItemContent<>.hash(into:)(v6, a2);
  return sub_1D5616328();
}

uint64_t MusicLibraryMapping.ItemContent.id.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - v15;
  v17 = *(a1 + 16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_1_0();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  (*(v32 + 16))(v30 - v29, v2, a1);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = *v31;
    v34 = v31[1];
  }

  else
  {
    (*(v19 + 32))(v25, v31, v17);
    v35 = *(a1 + 24);
    sub_1D560EC98();
    sub_1D560D7A8();
    (*(v6 + 8))(v12, v4);
    v36 = sub_1D560F148();
    if (__swift_getEnumTagSinglePayload(v16, 1, v36) == 1)
    {
      sub_1D50B9D4C(v16);
      v33 = sub_1D560EC18();
    }

    else
    {
      v33 = sub_1D560F138();
      (*(*(v36 - 8) + 8))(v16, v36);
    }

    (*(v19 + 8))(v25, v17);
  }

  return v33;
}