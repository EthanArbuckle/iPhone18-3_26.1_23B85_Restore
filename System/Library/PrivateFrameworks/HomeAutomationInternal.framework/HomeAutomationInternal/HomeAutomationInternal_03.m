uint64_t sub_25295ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v43 = a2;
  v38 = a7;
  v39 = a3;
  v40 = a4;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540568, &unk_252E3CD30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v44 = sub_252E36854();
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v46 = sub_252E36834();
  v20 = *(v46 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v46);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544D60);
  v25 = sub_252E36AC4();
  v26 = sub_252E374E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a5;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_252917000, v25, v26, "ErrorFilingHelper#fileTTR called to capture some error condition", v28, 2u);
    v29 = v28;
    a5 = v27;
    MEMORY[0x2530AED00](v29, -1, -1);
  }

  if (a6)
  {
    v30 = a5;
  }

  else
  {
    v30 = 0;
  }

  if (a6)
  {
    v31 = a6;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v47 = 0;
  v48 = 0xE000000000000000;

  sub_252E379F4();

  v47 = 0xD000000000000030;
  v48 = 0x8000000252E6AEC0;
  MEMORY[0x2530AD570](v30, v31);

  MEMORY[0x2530ACCE0](0x616D532069726953, 0xEF656D6F48207472, 0x736775422077654ELL, 0xE800000000000000, 672838);
  sub_25295B480(v38, v19);
  v32 = v46;
  if ((*(v20 + 48))(v19, 1, v46) == 1)
  {
    sub_25293847C(v19, &qword_27F540570, &unk_252E50EE0);
  }

  else
  {
    (*(v20 + 8))(v23, v32);
    (*(v20 + 32))(v23, v19, v32);
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_252E379F4();

  v47 = 0xD000000000000021;
  v48 = 0x8000000252E6AF00;
  MEMORY[0x2530AD570](v39, v40);
  MEMORY[0x2530AD570](0x726F72726520, 0xE600000000000000);
  v33 = v41;
  MEMORY[0x2530ACD00](MEMORY[0x277D84F90], &unk_2864A6F50, 0, v47, v48);
  v34 = *(v42 + 16);
  v35 = v44;
  (*(v13 + 16))(v12, v33, v44);
  (*(v13 + 56))(v12, 0, 1, v35);
  sub_252E36864();

  sub_25293847C(v12, &qword_27F540568, &unk_252E3CD30);
  (*(v13 + 8))(v33, v35);
  return (*(v20 + 8))(v23, v46);
}

uint64_t sub_25295B304(char a1)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D60);
  sub_252E379F4();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v3, v4);

  sub_252CC3D90(0xD000000000000026, 0x8000000252E6AF70, 0xD000000000000078, 0x8000000252E6AFA0);
}

uint64_t ErrorFilingHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ErrorFilingHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25295B480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25295B550(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_2529AA560(0, v1, 0);
  v2 = v30;
  v4 = (a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545150, &qword_252E5A4D0);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = sub_252E37B54();
    v8 = byte_2864A24F8;
    v9 = byte_2864A24F9;
    result = sub_252A4509C(byte_2864A24F8);
    if (v11)
    {
      break;
    }

    v12 = v7 + 8;
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + result) = v8;
    *(v7[7] + result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v15;
    v16 = byte_2864A24FA;
    v17 = byte_2864A24FB;
    result = sub_252A4509C(byte_2864A24FA);
    if (v18)
    {
      break;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v7[6] + result) = v16;
    *(v7[7] + result) = v17;
    v19 = v7[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v20;
    v21 = byte_2864A24FC;
    v22 = byte_2864A24FD;
    result = sub_252A4509C(byte_2864A24FC);
    if (v23)
    {
      break;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v7[6] + result) = v21;
    *(v7[7] + result) = v22;
    v24 = v7[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v25;
    if (v25)
    {
      v26 = sub_252A4509C(v5);
      if (v27)
      {
        LOBYTE(v5) = *(v7[7] + v26);
      }
    }

    v29 = *(v30 + 16);
    v28 = *(v30 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_2529AA560((v28 > 1), v29 + 1, 1);
    }

    *(v30 + 16) = v29 + 1;
    *(v30 + v29 + 32) = v5;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25295B778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E35C94();
  v5 = *(v4 - 1);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v144 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540578, &qword_252E3CD78);
  v8 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v10 = &v142 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540580, &qword_252E3CD80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v146 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v142 - v16;
  MEMORY[0x28223BE20](v15);
  v149 = &v142 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540588, &qword_252E3CD88);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v142 - v21);
  if (qword_27F53F768 != -1)
  {
LABEL_146:
    swift_once();
  }

  v23 = type metadata accessor for HomeAutomationNLV3Intent();
  v24 = sub_25295DA40(&qword_27F540470, type metadata accessor for HomeAutomationNLV3Intent);
  sub_252E34BE4();
  *(v2 + 8) = v152;
  if (qword_27F53F770 != -1)
  {
    swift_once();
  }

  v147 = v4;
  sub_252E34BE4();
  *(v2 + 9) = v152;
  if (qword_27F53F780 != -1)
  {
    swift_once();
  }

  v4 = v5;
  sub_252E34BE4();
  *(v2 + 10) = v152;
  if (qword_27F53F778 != -1)
  {
    swift_once();
  }

  v151 = v24;
  sub_252E34BE4();
  v25 = sub_252E34904();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v22, 1, v25);
  v148 = a1;
  v150 = v23;
  if (v27 == 1)
  {
    sub_25293847C(v22, &qword_27F540588, &qword_252E3CD88);
    goto LABEL_22;
  }

  v28 = sub_252E348F4();
  (*(v26 + 8))(v22, v25);
  v143 = v28;
  if (sub_252E35DB4())
  {
    v29 = v149;
    sub_252E35CA4();

    v30 = v4;
    v31 = v147;
  }

  else
  {
    v30 = v4;
    v32 = v4[7];
    v29 = v149;
    v31 = v147;
    v32(v149, 1, 1, v147);
  }

  v33 = v146;
  (v30[13])(v17, *MEMORY[0x277D56270], v31);
  (v30[7])(v17, 0, 1, v31);
  v34 = *(v145 + 48);
  sub_25295D9D0(v29, v10);
  sub_25295D9D0(v17, &v10[v34]);
  v35 = v30[6];
  if (v35(v10, 1, v31) != 1)
  {
    sub_25295D9D0(v10, v33);
    if (v35(&v10[v34], 1, v31) != 1)
    {
      v39 = v144;
      (v30[4])(v144, &v10[v34], v31);
      sub_25295DA40(&qword_27F540590, MEMORY[0x277D56288]);
      v40 = v33;
      v41 = sub_252E36EF4();
      v42 = v30[1];
      v42(v39, v31);
      v22 = &qword_27F540580;
      sub_25293847C(v17, &qword_27F540580, &qword_252E3CD80);
      sub_25293847C(v149, &qword_27F540580, &qword_252E3CD80);
      v42(v40, v31);
      sub_25293847C(v10, &qword_27F540580, &qword_252E3CD80);
      a1 = v148;
      v4 = v143;
      if (v41)
      {
        goto LABEL_21;
      }

LABEL_19:
      v38 = *(v2 + 16);

      *(v2 + 16) = v4;
      goto LABEL_22;
    }

    v37 = v33;
    v22 = &qword_252E3CD80;
    sub_25293847C(v17, &qword_27F540580, &qword_252E3CD80);
    sub_25293847C(v149, &qword_27F540580, &qword_252E3CD80);
    (v30[1])(v37, v31);
    a1 = v148;
LABEL_18:
    sub_25293847C(v10, &qword_27F540578, &qword_252E3CD78);
    v4 = v143;
    goto LABEL_19;
  }

  v22 = &qword_252E3CD80;
  sub_25293847C(v17, &qword_27F540580, &qword_252E3CD80);
  sub_25293847C(v29, &qword_27F540580, &qword_252E3CD80);
  v36 = v35(&v10[v34], 1, v31);
  a1 = v148;
  if (v36 != 1)
  {
    goto LABEL_18;
  }

  sub_25293847C(v10, &qword_27F540580, &qword_252E3CD80);
  v4 = v143;
LABEL_21:

LABEL_22:
  if (qword_27F53F788 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 24) = v152;
  if (qword_27F53F790 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 25) = v152;
  if (qword_27F53F798 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 26) = v152;
  if (qword_27F53F7A0 != -1)
  {
    swift_once();
  }

  v43 = sub_252E34BF4();
  v44 = *(v2 + 32);

  *(v2 + 32) = v43;
  if (qword_27F53F7A8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 40) = v152;
  if (qword_27F53F7B0 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v45 = v153;
  v5 = &unk_252E3C000;
  if (v153)
  {
    v46 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_252E3C290;
    *(v47 + 32) = v46;
    *(v47 + 40) = v45;
    v48 = *(v2 + 48);

    *(v2 + 48) = v47;
  }

  if (qword_27F53F7B8 != -1)
  {
    swift_once();
  }

  v49 = sub_252E34BF4();
  v50 = *(v2 + 56);

  *(v2 + 56) = v49;
  if (qword_27F53F7C0 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 64) = v152;
  if (qword_27F53F7C8 != -1)
  {
    swift_once();
  }

  v51 = sub_252E34BF4();
  v52 = *(v2 + 72);

  *(v2 + 72) = v51;
  if (qword_27F53F7D8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v53 = v152;
  if (v152 != 66)
  {
    v54 = *(v2 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_2529F82EC(0, *(v54 + 2) + 1, 1, v54);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    v4 = (v56 + 1);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_2529F82EC((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v4;
    v54[v56 + 32] = v53;
    *(v2 + 80) = v54;
  }

  if (qword_27F53F7E8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v57 = v152;
  if (v152 != 21)
  {
    v58 = *(v2 + 88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_2529F82D8(0, *(v58 + 2) + 1, 1, v58);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    v4 = (v60 + 1);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_2529F82D8((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v4;
    v58[v60 + 32] = v57;
    *(v2 + 88) = v58;
  }

  v142 = v2;
  v149 = sub_252DCEBB4();
  v147 = *(v149 + 16);
  if (v147)
  {
    v2 = 0;
    v146 = (v149 + 32);
    v143 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_60:
      if (v2 >= *(v149 + 16))
      {
        __break(1u);
        goto LABEL_146;
      }

      v61 = v5;
      v62 = *&v146[8 * v2++];
      v10 = (v62 + 56);
      v63 = 1 << *(v62 + 32);
      v64 = v63 < 64 ? ~(-1 << v63) : -1;
      v65 = v64 & *(v62 + 56);
      v66 = (v63 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v67 = 0;
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        v68 = v67;
        if (!v65)
        {
          break;
        }

LABEL_69:
        v69 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        v70 = *(v62 + 48) + ((v67 << 10) | (16 * v69));
        v22 = *v70;
        v4 = *(v70 + 8);
        swift_bridgeObjectRetain_n();
        v71 = sub_252A9B42C();
        if (v71 == 71)
        {
        }

        else
        {
          v72 = sub_252A9AD58(v71);
          v144 = v73;
          v145 = v72;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_2529F7A80(0, *(v17 + 2) + 1, 1, v17);
          }

          v22 = *(v17 + 2);
          v74 = *(v17 + 3);
          v4 = (v22 + 1);
          if (v22 >= v74 >> 1)
          {
            v17 = sub_2529F7A80((v74 > 1), v22 + 1, 1, v17);
          }

          *(v17 + 2) = v4;
          v75 = &v17[16 * v22];
          v76 = v144;
          *(v75 + 4) = v145;
          *(v75 + 5) = v76;
        }
      }

      while (1)
      {
        v67 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
          goto LABEL_135;
        }

        if (v67 >= v66)
        {
          break;
        }

        v65 = *&v10[8 * v67];
        ++v68;
        if (v65)
        {
          goto LABEL_69;
        }
      }

      if (!*(v17 + 2))
      {
        break;
      }

      v22 = sub_252C75848(v17);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v148;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v143 = sub_2529F8278(0, v143[2] + 1, 1, v143);
      }

      v5 = v61;
      v79 = v143[2];
      v78 = v143[3];
      v4 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v143 = sub_2529F8278((v78 > 1), v79 + 1, 1, v143);
      }

      v80 = v143;
      v143[2] = v4;
      v80[v79 + 4] = v22;
      if (v2 == v147)
      {
        goto LABEL_86;
      }
    }

    a1 = v148;
    v5 = v61;
    if (v2 != v147)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v143 = MEMORY[0x277D84F90];
  }

LABEL_86:

  v81 = v142;
  v82 = *(v142 + 96);

  *(v81 + 96) = v143;
  if (qword_27F53F7F0 != -1)
  {
    swift_once();
  }

  v83 = sub_252E34BF4();
  v84 = *(v81 + 104);

  *(v81 + 104) = v83;
  if (qword_27F53F7F8 != -1)
  {
    swift_once();
  }

  v85 = sub_252E34BF4();
  v86 = *(v81 + 128);

  *(v81 + 128) = v85;
  if (qword_27F53F800 != -1)
  {
    swift_once();
  }

  v149 = qword_27F575D20;
  v87 = sub_252E34BF4();
  v88 = *(v81 + 136);

  *(v81 + 136) = v87;
  if (qword_27F53F808 != -1)
  {
    swift_once();
  }

  v89 = sub_252E34BF4();
  v90 = *(v81 + 144);

  *(v81 + 144) = v89;
  if (qword_27F53F818 != -1)
  {
    swift_once();
  }

  v91 = sub_252E34BF4();
  v92 = *(v81 + 152);

  *(v81 + 152) = v91;
  if (qword_27F53F820 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v93 = v153;
  if (v153)
  {
    v94 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v95 = swift_allocObject();
    *(v95 + 16) = *(v5 + 41);
    *(v95 + 32) = v94;
    *(v95 + 40) = v93;
    v96 = *(v81 + 160);

    *(v81 + 160) = v95;
  }

  if (qword_27F53F828 != -1)
  {
    swift_once();
  }

  v97 = sub_252E34BF4();
  v98 = *(v81 + 168);

  *(v81 + 168) = v97;
  if (qword_27F53F830 != -1)
  {
    swift_once();
  }

  v99 = sub_252E34BF4();
  v100 = *(v81 + 176);

  *(v81 + 176) = v99;
  if (qword_27F53F838 != -1)
  {
    swift_once();
  }

  v101 = sub_252E34BF4();
  v102 = *(v81 + 184);

  *(v81 + 184) = v101;
  if (qword_27F53F840 != -1)
  {
    swift_once();
  }

  v103 = sub_252E34BF4();
  v104 = *(v81 + 192);

  *(v81 + 192) = v103;
  if (qword_27F53F848 != -1)
  {
    swift_once();
  }

  v105 = sub_252E34BF4();
  v106 = *(v81 + 200);

  *(v81 + 200) = v105;
  if (qword_27F53F850 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  if (v152 > 0xEuLL)
  {
    v107 = 9;
  }

  else
  {
    v107 = byte_252E3CD9A[v152];
  }

  *(v81 + 208) = v107;
  if (qword_27F53F858 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v81 + 209) = v152;
  if (qword_27F53F860 != -1)
  {
    swift_once();
  }

  v108 = sub_252E34BF4();
  v109 = *(v81 + 216);

  *(v81 + 216) = v108;
  if (qword_27F53F868 != -1)
  {
    swift_once();
  }

  v110 = sub_252E34BF4();
  v111 = *(v81 + 224);

  *(v81 + 224) = v110;
  if (qword_27F53F870 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v81 + 232) = v152;
  v112 = HomeAutomationNLV3Intent.fallbackWebSearchQuery.getter();
  v114 = v113;
  v115 = *(v81 + 248);

  *(v81 + 240) = v112;
  *(v81 + 248) = v114;
  if (qword_27F53F7E0 != -1)
  {
    swift_once();
  }

  v116 = sub_252E34BF4();
  v117 = *(v81 + 256);

  *(v81 + 256) = v116;
  *(v81 + 312) = sub_252E35894() & 1;
  if (qword_27F53F878 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v67 = v152;
  if (v152 != 39)
  {
    v118 = sub_252CC5BA8(&unk_2864A5578);
    if (*(v118 + 16) && (v119 = sub_252A450C8(v67), (v120 & 1) != 0))
    {
      v121 = *(*(v118 + 56) + 8 * v119);

      v122 = 0;
    }

    else
    {

      LOBYTE(v152) = v67;
      if (ReferenceSemantic.rawValue.getter() == 1954047342 && v123 == 0xE400000000000000)
      {

        v122 = 1;
        v121 = 2;
      }

      else
      {
LABEL_135:
        v124 = sub_252E37DB4();

        if (v124)
        {
          v122 = 1;
          v121 = 2;
        }

        else
        {
          LOBYTE(v152) = v67;
          if (ReferenceSemantic.rawValue.getter() == 31085 && v125 == 0xE200000000000000)
          {

            v121 = 1;
          }

          else
          {
            v126 = sub_252E37DB4();

            v121 = v126 & 1;
          }

          v122 = 1;
        }

        v81 = v142;
      }
    }

    *(v81 + 280) = v121;
    *(v81 + 288) = v122;
    *(v81 + 289) = 0;
  }

  v127 = sub_252E35884();
  v129 = v128;
  v130 = *(v81 + 272);

  *(v81 + 264) = v127;
  *(v81 + 272) = v129;
  v131 = sub_25295CEFC();
  v132 = *(v81 + 328);

  *(v81 + 328) = v131;
  v133 = sub_25295CEFC();
  v134 = *(v81 + 336);

  *(v81 + 336) = v133;
  v135 = sub_25295CEFC();
  v136 = *(v81 + 344);

  *(v81 + 344) = v135;
  v137 = sub_25295CEFC();
  v138 = *(v81 + 352);

  *(v81 + 352) = v137;
  v139 = sub_25295CEFC();
  v140 = *(v81 + 360);

  *(v81 + 360) = v139;
  return sub_25295D6D0();
}

char *sub_25295CEFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540598, &unk_252E3D780);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v61 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405A0, &qword_252E3CD90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v61 - v6;
  v65 = sub_252E348C4();
  v63 = *(v65 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_252E349A4();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v61 - v15;
  v70 = sub_252E34AB4();
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeAutomationNLV3Intent();
  sub_25295DA40(&qword_27F540470, type metadata accessor for HomeAutomationNLV3Intent);
  v20 = sub_252E34BD4();
  v21 = *(v20 + 16);
  if (v21)
  {
    v61[1] = v20;
    v62 = v3;
    v23 = *(v16 + 16);
    v22 = v16 + 16;
    v24 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v71 = *(v22 + 56);
    v72 = v23;
    v73 = v22;
    v25 = (v22 - 8);
    v66 = (v10 + 32);
    v67 = (v10 + 16);
    v26 = MEMORY[0x277D84F90];
    v68 = v7;
    v69 = v14;
    v27 = v70;
    (v23)(v19, v24, v70);
    while (1)
    {
      v28 = sub_252E34AA4();
      if (*(v28 + 16))
      {
        v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        (*(v10 + 16))(v14, v28 + v29, v75);

        (*v25)(v19, v27);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v30 = v26;
        }

        else
        {
          v30 = sub_2529F829C(0, v26[2] + 1, 1, v26);
        }

        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          v30 = sub_2529F829C(v31 > 1, v32 + 1, 1, v30);
        }

        v30[2] = v32 + 1;
        v26 = v30;
        v33 = v30 + v29 + *(v10 + 72) * v32;
        v14 = v69;
        (*(v10 + 32))(v33, v69, v75);
        v7 = v68;
        v27 = v70;
      }

      else
      {
        (*v25)(v19, v27);
      }

      v24 += v71;
      if (!--v21)
      {
        break;
      }

      (v72)(v19, v24, v27);
    }

    v3 = v62;
    v34 = v26[2];
    if (v34)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v34 = *(MEMORY[0x277D84F90] + 16);
    if (v34)
    {
LABEL_14:
      v36 = *(v10 + 16);
      v35 = v10 + 16;
      v37 = (*(v35 + 64) + 32) & ~*(v35 + 64);
      v66 = v26;
      v38 = v26 + v37;
      v72 = *(v35 + 56);
      v73 = v36;
      v69 = (v63 + 32);
      v67 = (v63 + 8);
      v71 = MEMORY[0x277D84F90];
      LODWORD(v70) = *MEMORY[0x277D5E588];
      while (1)
      {
        v41 = v74;
        v40 = v75;
        v73(v74, v38, v75);
        sub_252E34994();
        (*(v35 - 8))(v41, v40);
        v42 = sub_252E34984();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v3, 1, v42) == 1)
        {
          sub_25293847C(v3, &qword_27F540598, &unk_252E3D780);
          v39 = sub_252E348D4();
          (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
        }

        else
        {
          sub_252E34974();
          (*(v43 + 8))(v3, v42);
          v44 = sub_252E348D4();
          v45 = *(v44 - 8);
          if ((*(v45 + 48))(v7, 1, v44) != 1)
          {
            v46 = (*(v45 + 88))(v7, v44);
            if (v46 == v70)
            {
              (*(v45 + 96))(v7, v44);
              v48 = v64;
              v47 = v65;
              (*v69)(v64, v7, v65);
              v49 = sub_252E348B4();
              if (v50)
              {
                v51 = v50;
                v52 = v49;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v53 = v71;
                }

                else
                {
                  v53 = sub_2529F7A80(0, *(v71 + 2) + 1, 1, v71);
                }

                v55 = *(v53 + 2);
                v54 = *(v53 + 3);
                v56 = v64;
                v57 = v65;
                if (v55 >= v54 >> 1)
                {
                  v71 = sub_2529F7A80((v54 > 1), v55 + 1, 1, v53);
                  v56 = v64;
                  v57 = v65;
                }

                else
                {
                  v71 = v53;
                }

                (*v67)(v56, v57);
                v58 = v71;
                *(v71 + 2) = v55 + 1;
                v59 = &v58[16 * v55];
                *(v59 + 4) = v52;
                *(v59 + 5) = v51;
              }

              else
              {
                (*v67)(v48, v47);
              }
            }

            else
            {
              (*(v45 + 8))(v7, v44);
            }

            goto LABEL_17;
          }
        }

        sub_25293847C(v7, &qword_27F5405A0, &qword_252E3CD90);
LABEL_17:
        v38 = &v72[v38];
        if (!--v34)
        {

          return v71;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25295D6D0()
{
  v1 = v0;
  v2 = v0[24];

  v4 = sub_25295B550(v3);
  swift_bridgeObjectRelease_n();
  v1[24] = v4;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v1, sizeof(__src));
  sub_2529353AC(__dst, v25);
  LOBYTE(v2) = sub_252CDFDD4();
  memcpy(v25, __src, 0x1F8uLL);
  sub_252935408(v25);
  if (v2)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    result = sub_252CE2134(0, 0xE000000000000000);
    v6 = 0;
    v7 = v1[24];
    v8 = *(v7 + 16);
    while (1)
    {
      if (v8 == v6)
      {
        v18 = &unk_2864A57E0;
        v19 = &unk_2864A57B8;
        goto LABEL_20;
      }

      if (v6 >= *(v7 + 16))
      {
        break;
      }

      v10 = *(v7 + 32 + v6);
      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 6710895 && v11 == 0xE300000000000000)
      {
        goto LABEL_17;
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_18;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x6573756170 && v13 == 0xE500000000000000)
      {
        goto LABEL_17;
      }

      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_18;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x656D75736572 && v15 == 0xE600000000000000)
      {
LABEL_17:

        v18 = &unk_2864A5790;
        v19 = &unk_2864A5768;
LABEL_20:
        v20 = sub_2529FC02C(v19);
        v21 = sub_2529FC02C(v18);
        sub_252CE3278(v20, v21);

        goto LABEL_21;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
LABEL_18:
        v19 = &unk_2864A5768;
        v18 = &unk_2864A5790;
        goto LABEL_20;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x64656B636F64 && v17 == 0xE600000000000000)
      {
        goto LABEL_17;
      }

      v9 = sub_252E37DB4();

      ++v6;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v22 = sub_252DF8EC4(v1[18]);

    v1[18] = v22;
  }

  return result;
}

uint64_t sub_25295D9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540580, &qword_252E3CD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25295DA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25295DA88(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448) - 8) + 64) + 15;
  v2[134] = swift_task_alloc();
  v4 = sub_252E34204();
  v2[135] = v4;
  v5 = *(v4 - 8);
  v2[136] = v5;
  v6 = *(v5 + 64) + 15;
  v2[137] = swift_task_alloc();
  v7 = sub_252E33C84();
  v2[138] = v7;
  v8 = *(v7 - 8);
  v2[139] = v8;
  v9 = *(v8 + 64) + 15;
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295DBEC, 0, 0);
}

uint64_t sub_25295DBEC()
{
  swift_asyncLet_begin();
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 16), v0 + 696);

  sub_252929E74(v0 + 696, v0 + 776);
  v2 = *(MEMORY[0x277D5BDB8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 1136) = v3;
  *v3 = v0;
  v3[1] = sub_25295DCE0;
  v4 = *(v0 + 1120);

  return MEMORY[0x2821BB3C0](v4, v0 + 776);
}

uint64_t sub_25295DCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v6 = *v1;
  *(v2 + 1144) = v0;

  sub_25293847C(v2 + 776, &qword_27F5405A8, &qword_252E3CE28);
  if (v0)
  {
    v4 = sub_25295E218;
  }

  else
  {
    v4 = sub_25295DE0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25295DE0C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  (*(*(v0 + 1112) + 32))(*(v0 + 1128), *(v0 + 1120), *(v0 + 1104));
  v5 = *(v0 + 728);
  __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
  sub_252E33874();
  v6 = sub_252E33C44();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  *(v0 + 888) = 0;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  sub_252E33A84();
  sub_25293847C(v0 + 856, &qword_27F5403A0, &unk_252E3CE30);
  sub_25293847C(v4, &qword_27F540390, &qword_252E3C448);
  *(v0 + 960) = v3;
  *(v0 + 968) = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 936));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);

  return MEMORY[0x282200930](v0 + 16, v0 + 1024, sub_25295DFCC, v0 + 736);
}

uint64_t sub_25295DFCC()
{
  *(v1 + 1152) = v0;
  if (v0)
  {
    v2 = sub_25295E448;
  }

  else
  {
    v2 = sub_25295E000;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25295E000()
{
  v1 = v0[139];
  v13 = v0[138];
  v14 = v0[141];
  v12 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  v4 = v0[132];
  v5 = v0[128];
  v6 = v0[129];
  v7 = *(v0[133] + 16);
  v8 = objc_allocWithZone(MEMORY[0x277D5C220]);

  v9 = sub_252E36F04();
  v10 = [v8 initWithIdentifier_];

  sub_252D15B64(v7, v10);
  sub_252E33B64();
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  return MEMORY[0x282200920](v0 + 2, v0 + 128, sub_25295E16C, v0 + 112);
}

uint64_t sub_25295E188()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[137];
  v4 = v0[134];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25295E218()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[143];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v3 = v0[122];
  v4 = v0[123];
  v5 = v0[124];
  v6 = sub_252E37E54();
  MEMORY[0x2530AD570](v6);

  sub_252CC4050(0xD00000000000002ELL, 0x8000000252E6B060, 0xD000000000000090, 0x8000000252E6B090, 0xD000000000000015, 0x8000000252E6B130, 32);

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  return MEMORY[0x282200920](v0 + 2, v0 + 128, sub_25295E39C, v0 + 82);
}

uint64_t sub_25295E3B8()
{
  v1 = v0[143];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[137];
  v5 = v0[134];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25295E448()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 117);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[144];
  v2 = v0[139];
  v12 = v0[138];
  v13 = v0[141];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v7 = v0[125];
  v8 = v0[126];
  v9 = v0[127];
  v10 = sub_252E37E54();
  MEMORY[0x2530AD570](v10);

  sub_252CC4050(0xD00000000000002FLL, 0x8000000252E6B150, 0xD000000000000090, 0x8000000252E6B090, 0xD000000000000015, 0x8000000252E6B130, 45);

  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  return MEMORY[0x282200920](v0 + 2, v0 + 128, sub_25295E62C, v0 + 102);
}

uint64_t sub_25295E648()
{
  v1 = v0[144];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[137];
  v5 = v0[134];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25295E6D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(MEMORY[0x277D5BF88] + 4);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_25295E76C;

  return MEMORY[0x2821BB648]();
}

uint64_t sub_25295E76C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25295E8C8, 0, 0);
  }
}

uint64_t sub_25295E8C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_25295E8EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25295E948(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_25295DA88(a1);
}

uint64_t sub_25295E9E4()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room);

  v2 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones);

  v3 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type);
  v4 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);

  v5 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);

  return v0;
}

uint64_t sub_25295EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  if (a1 == 0x614E797469746E65 && a2 == 0xEA0000000000656DLL || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v16);
    v17 = sub_252E36324();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      v19 = v16;
LABEL_6:
      result = sub_252938BBC(v19);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v18 + 32))(boxed_opaque_existential_0, v16, v17);
  }

  if (a1 != 0xD000000000000010 || 0x8000000252E66560 != a2)
  {
    result = sub_252E37DB4();
    if ((result & 1) == 0)
    {
      if (a1 == 1836019570 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
        if (!v25)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
        v27 = &qword_27F5405F0;
        v28 = &qword_252E3ECF0;
      }

      else
      {
        if (a1 == 1701670760 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
        {
          v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
          if (!v25)
          {
            goto LABEL_7;
          }

LABEL_19:
          *(a3 + 24) = type metadata accessor for HomeAutomationHomeLocation(0);
          *a3 = v25;
        }

        if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
        {
          sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v11);
          v29 = sub_252E36324();
          v30 = *(v29 - 8);
          if ((*(v30 + 48))(v11, 1, v29) == 1)
          {
            v19 = v11;
            goto LABEL_6;
          }

          *(a3 + 24) = v29;
          v31 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v30 + 32))(v31, v11, v29);
        }

        if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
        {
          v26 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
          v27 = &unk_27F540600;
          v28 = &unk_252E3CF90;
        }

        else
        {
          if ((a1 != 0x736574617473 || a2 != 0xE600000000000000) && (sub_252E37DB4() & 1) == 0)
          {
            if (a1 != 1852793705 || a2 != 0xE400000000000000)
            {
              result = sub_252E37DB4();
              if ((result & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            v33 = sub_252C8A08C(v32, 0);

            result = type metadata accessor for HomeAutomationAccessoryIcon(0);
            *(a3 + 24) = result;
            *a3 = v33;
            return result;
          }

          v26 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          v27 = &qword_27F540610;
          v28 = &qword_252E3CF98;
        }
      }

      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      *a3 = v26;
    }
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier, v14);
  v22 = sub_252E36324();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    v19 = v14;
    goto LABEL_6;
  }

  *(a3 + 24) = v22;
  v24 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v23 + 32))(v24, v14, v22);
}

uint64_t sub_25295F0B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252960BA4();
  *a2 = result;
  return result;
}

void sub_25295F0E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E797469746E65;
  v5 = 0xE500000000000000;
  v6 = 0x7365707974;
  if (v2 != 6)
  {
    v6 = 0x736574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 1701670760;
  if (v2 != 4)
  {
    v7 = 1701869940;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1836019570;
  if (v2 != 2)
  {
    v9 = 0x73656E6F7ALL;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000252E66560;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_25295F1CC()
{
  v1 = *v0;
  v2 = 0x614E797469746E65;
  v3 = 0x7365707974;
  if (v1 != 6)
  {
    v3 = 0x736574617473;
  }

  v4 = 1701670760;
  if (v1 != 4)
  {
    v4 = 1701869940;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1836019570;
  if (v1 != 2)
  {
    v5 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25295F2AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252960BA4();
  *a1 = result;
  return result;
}

uint64_t sub_25295F2E0(uint64_t a1)
{
  v2 = sub_252960350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25295F31C(uint64_t a1)
{
  v2 = sub_252960350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25295F358()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);

  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);
  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);

  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

  return v0;
}

uint64_t sub_25295F410(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_25295F494()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25295F548(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540628, &qword_252E3CFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252960350();
  sub_252E37F84();
  LOBYTE(v16) = 0;
  sub_252E36324();
  sub_252960308(&qword_27F540548, MEMORY[0x277D55C48]);
  sub_252E37CD4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_252E37CD4();
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
    v15 = 2;
    v12 = type metadata accessor for HomeAutomationHomeLocation(0);
    v13 = sub_252960308(&qword_27F540520, type metadata accessor for HomeAutomationHomeLocation);
    v14[2] = v12;
    sub_252E37CD4();
    v14[1] = v13;
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
    sub_252960730();
    sub_252E37D54();
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
    v15 = 4;
    sub_252E37CD4();
    LOBYTE(v16) = 5;
    sub_252E37CD4();
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
    v15 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    sub_2529607E4();
    sub_252E37D54();
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v15 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
    sub_252960898();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_25295F9A0()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25295FA50(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v12;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405E0, &unk_252E3CF80);
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v28);
  v16 = &v26 - v15;
  v29 = a1;
  v30 = v1;
  *(v1 + 16) = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252960350();
  sub_252E37F74();
  if (v2)
  {
    v25 = v30;

    type metadata accessor for HomeAutomationEntityResponse(0);
    v19 = *(*v25 + 48);
    v20 = *(*v25 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v8;
    sub_252E36324();
    LOBYTE(v32) = 0;
    sub_252960308(&qword_27F540538, MEMORY[0x277D55C48]);
    v18 = v16;
    sub_252E37BE4();
    v22 = v30;
    sub_2529439A0(v27, v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
    LOBYTE(v32) = 1;
    sub_252E37BE4();
    sub_2529439A0(v11, v22 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);
    type metadata accessor for HomeAutomationHomeLocation(0);
    v31 = 2;
    sub_252960308(&qword_27F540518, type metadata accessor for HomeAutomationHomeLocation);
    v27 = 0;
    sub_252E37BE4();
    *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
    v31 = 3;
    sub_2529603A4();
    sub_252E37C64();
    v23 = v30;
    *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones) = v32;
    v31 = 4;
    sub_252E37BE4();
    *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home) = v32;
    LOBYTE(v32) = 5;
    v24 = v26;
    sub_252E37BE4();
    sub_2529439A0(v24, v23 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    v31 = 6;
    sub_252960458();
    sub_252E37C64();
    *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
    v31 = 7;
    sub_25296050C();
    sub_252E37C64();
    (*(v13 + 8))(v18, v28);
    v25 = v30;
    *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states) = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

uint64_t sub_2529601F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationEntityResponse(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_25295FA50(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252960308(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252960350()
{
  result = qword_27F5405E8;
  if (!qword_27F5405E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5405E8);
  }

  return result;
}

unint64_t sub_2529603A4()
{
  result = qword_27F5405F8;
  if (!qword_27F5405F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    sub_252960308(&qword_27F540518, type metadata accessor for HomeAutomationHomeLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5405F8);
  }

  return result;
}

unint64_t sub_252960458()
{
  result = qword_27F540608;
  if (!qword_27F540608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    sub_252960308(&qword_27F540538, MEMORY[0x277D55C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540608);
  }

  return result;
}

unint64_t sub_25296050C()
{
  result = qword_27F540618;
  if (!qword_27F540618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    sub_252960308(&qword_27F540620, type metadata accessor for HomeAutomationEntityState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540618);
  }

  return result;
}

uint64_t sub_2529605C0(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  swift_beginAccess();
  sub_252956C1C(a1 + v3, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home);
  v5 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  sub_252956C1C(a1 + v5, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);

  return v1;
}

unint64_t sub_252960730()
{
  result = qword_27F540630;
  if (!qword_27F540630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    sub_252960308(&qword_27F540520, type metadata accessor for HomeAutomationHomeLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540630);
  }

  return result;
}

unint64_t sub_2529607E4()
{
  result = qword_27F540638;
  if (!qword_27F540638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    sub_252960308(&qword_27F540548, MEMORY[0x277D55C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540638);
  }

  return result;
}

unint64_t sub_252960898()
{
  result = qword_27F540640;
  if (!qword_27F540640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    sub_252960308(&qword_27F540648, type metadata accessor for HomeAutomationEntityState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationEntityResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationEntityResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252960AA0()
{
  result = qword_27F540650;
  if (!qword_27F540650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540650);
  }

  return result;
}

unint64_t sub_252960AF8()
{
  result = qword_27F540658;
  if (!qword_27F540658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540658);
  }

  return result;
}

unint64_t sub_252960B50()
{
  result = qword_27F540660;
  if (!qword_27F540660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540660);
  }

  return result;
}

uint64_t sub_252960BA4()
{
  v0 = sub_252E37B74();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252960BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  v5 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[93] = swift_task_alloc();
  v6 = sub_252E34014();
  v4[94] = v6;
  v7 = *(v6 - 8);
  v4[95] = v7;
  v8 = *(v7 + 64) + 15;
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v10 = sub_252E36324();
  v4[102] = v10;
  v11 = *(v10 - 8);
  v4[103] = v11;
  v12 = *(v11 + 64) + 15;
  v4[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252960DAC, 0, 0);
}

uint64_t sub_252960DAC()
{
  v74 = v0;
  memcpy(v0 + 2, (v0[92] + 112), 0x1F8uLL);
  if (sub_252956B94(v0 + 2) != 1)
  {
    v1 = v0[9];
    if (*(v1 + 16))
    {
      v2 = v0[103];
      v3 = v0[102];
      v4 = v0[101];
      v5 = v0[100];
      LOWORD(v73) = *(v1 + 32);
      HueSemantic.rawValue.getter();
      sub_252E362F4();
      v6 = *(v2 + 56);
      v6(v5, 0, 1, v3);
      (*(v2 + 32))(v4, v5, v3);
      v6(v4, 0, 1, v3);
      v7 = *(v2 + 48);
      goto LABEL_16;
    }
  }

  v8 = v0[90];
  v6 = *(v0[103] + 56);
  v6(v0[100], 1, 1, v0[102]);
  v9 = [v8 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 value];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v12 = [v11 stringValue];

    if (v12)
    {
      v13 = sub_252E36F34();
      v11 = v14;

      v9 = v13;
      goto LABEL_11;
    }

    v9 = 0;
  }

  v11 = 0;
LABEL_11:
  sub_252C55FB4(v9, v11, &v72);

  v15 = v0[102];
  v16 = v0[101];
  if (v72 == 709)
  {
    v17 = v0[101];
    v18 = 1;
  }

  else
  {
    LOWORD(v73) = v72;
    HueSemantic.rawValue.getter();
    sub_252E362F4();
    v17 = v16;
    v18 = 0;
  }

  v6(v17, v18, 1, v15);
  v19 = v0[100];
  v7 = *(v0[103] + 48);
  if (v7(v19, 1, v0[102]) != 1)
  {
    sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
  }

LABEL_16:
  v20 = v0[102];
  v21 = v0[101];
  if (v7(v21, 1, v20) == 1)
  {
    sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
    sub_2529318DC();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();
    v23 = v0[104];
    v24 = v0[101];
    v25 = v0[100];
    v26 = v0[99];
    v27 = v0[98];
    v28 = v0[97];
    v29 = v0[96];
    v30 = v0[93];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[104];
    v34 = v0[103];
    v35 = v0[99];
    v36 = v0[91];
    (*(v34 + 32))(v33, v21, v20);
    v37 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_2529930C0();
    *(v40 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest) = 1;
    (*(v34 + 16))(v35, v33, v20);
    v6(v35, 0, 1, v20);
    v41 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
    swift_beginAccess();
    sub_252956BAC(v35, v40 + v41);
    swift_endAccess();
    sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
    v42 = type metadata accessor for HomeAutomationIntentContext(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_252996D9C(v40);
    v0[105] = v45;

    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D84F90];
    *(v46 + 16) = MEMORY[0x277D84F90];
    if (v36)
    {
      v70 = v45;
      v48 = v0[91];
      v49 = sub_252C285F0();
      v50 = v49;
      v73 = v47;
      v51 = v49 & 0xFFFFFFFFFFFFFF8;
      if (v49 >> 62)
      {
LABEL_44:
        v52 = sub_252E378C4();
      }

      else
      {
        v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = 0;
      while (v52 != v53)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x2530ADF00](v53, v50);
        }

        else
        {
          if (v53 >= *(v51 + 16))
          {
            goto LABEL_43;
          }

          v54 = *(v50 + 8 * v53 + 32);
        }

        v55 = v54;
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v57 = sub_252DA124C(0);

        ++v53;
        if (v57)
        {
          MEMORY[0x2530AD700]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v58 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v47 = v73;
          v53 = v56;
        }
      }

      v45 = v70;
    }

    type metadata accessor for HomeAutomationEntityResponses();
    v59 = swift_allocObject();
    v0[106] = v59;
    *(v59 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v59 + 24) = v47;
    v60 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v60 + 288), (v0 + 65));

    v61 = v0[68];
    v62 = v0[69];
    __swift_project_boxed_opaque_existential_1(v0 + 65, v61);
    v63 = (*(v62 + 120))(v61, v62);
    __swift_destroy_boxed_opaque_existential_1(v0 + 65);
    v64 = v0[92];
    if (v63)
    {
      v0[107] = v64[8];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
      v65 = swift_allocObject();
      strcpy((v65 + 32), "intentContext");
      *(v65 + 46) = -4864;
      *(v65 + 72) = v42;
      v66 = *(MEMORY[0x277D55C70] + 4);
      v71 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
      v0[108] = v65;
      *(v65 + 16) = xmmword_252E3C290;
      *(v65 + 48) = v45;

      v67 = swift_task_alloc();
      v0[109] = v67;
      *v67 = v0;
      v67[1] = sub_252961604;

      return v71(0xD000000000000017, 0x8000000252E66630, v65);
    }

    else
    {
      v68 = *__swift_project_boxed_opaque_existential_1(v64 + 3, v64[6]);

      v69 = swift_task_alloc();
      v0[121] = v69;
      *v69 = v0;
      v69[1] = sub_25296237C;

      return sub_252C0DCF0(0, v68, v45, v59);
    }
  }
}

uint64_t sub_252961604(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 872);
  v10 = *v2;
  v3[110] = a1;
  v3[111] = v1;

  if (v1)
  {
    v5 = sub_252961ABC;
  }

  else
  {
    v6 = v3[108];
    v7 = v3[107];
    v8 = v3[105];

    v5 = sub_25296173C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25296173C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 784);
  v5 = *(v0 + 744);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = swift_task_alloc();
  *(v0 + 896) = v8;
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v3;
  *(v0 + 1064) = sub_252DC6D48(v7, v6);
  sub_252E33924();
  sub_252E33F54();
  v9 = v1;
  if (v6)
  {
    v10 = *(v0 + 728);
    v11 = swift_task_alloc();
    *(v0 + 904) = v11;
    *v11 = v0;
    v11[1] = sub_2529619A4;
    v12 = *(v0 + 736);

    return sub_252DC810C(v10);
  }

  else
  {
    v14 = *(v0 + 880);
    *(v0 + 928) = v14;
    v15 = *(v0 + 896);
    v16 = *(v0 + 736);
    v17 = v16[13];
    __swift_project_boxed_opaque_existential_1(v16 + 9, v16[12]);
    v18 = swift_task_alloc();
    *(v0 + 936) = v18;
    *(v18 + 16) = v14;
    v19 = swift_task_alloc();
    *(v0 + 944) = v19;
    *(v19 + 16) = &unk_252E3D190;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = swift_task_alloc();
    *(v0 + 952) = v21;
    *v21 = v0;
    v21[1] = sub_252961BE0;
    v22 = *(v0 + 784);
    v24 = *(v0 + 1064);

    return sub_252A199A8(v0 + 640, &unk_252E400A0, v18, &unk_252E3D1A0, v19, v22, 0, 0);
  }
}

uint64_t sub_2529619A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 904);
  v7 = *v2;
  *(v3 + 912) = a1;
  *(v3 + 920) = v1;

  if (v1)
  {
    v5 = sub_25296222C;
  }

  else
  {
    v5 = sub_252962098;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252961ABC()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];

  (*(v6 + 8))(v5, v7);
  v8 = v0[111];
  v9 = v0[104];
  v10 = v0[101];
  v11 = v0[100];
  v12 = v0[99];
  v13 = v0[98];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[93];

  v17 = v0[1];

  return v17();
}

uint64_t sub_252961BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(v2 + 960) = v0;

  v5 = *(v2 + 944);
  v6 = *(v2 + 936);
  if (v0)
  {

    v7 = sub_252961F4C;
  }

  else
  {

    v7 = sub_252961D54;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252961D54()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[116];
  v9 = v0[112];
  v26 = v0[110];
  v27 = v0[105];
  v10 = v0[98];
  v11 = v0[95];
  v12 = v0[94];
  v13 = v0[89];
  (*(v4 + 112))(v7, v0 + 80, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  (*(v11 + 8))(v10, v12);

  v14 = v0[106];
  v15 = v0[104];
  v16 = v0[103];
  v17 = v0[102];
  v18 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v22 = v0[97];
  v23 = v0[96];
  v28 = v0[93];

  (*(v16 + 8))(v15, v17);

  v24 = v0[1];

  return v24();
}

uint64_t sub_252961F4C()
{
  v1 = v0[116];
  v2 = v0[98];
  v3 = v0[95];
  v4 = v0[94];

  (*(v3 + 8))(v2, v4);
  v5 = v0[120];
  v6 = v0[112];
  v7 = v0[110];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];

  (*(v11 + 8))(v10, v12);
  v13 = v0[104];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252962098()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 880);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 912));

    v2 = v3;
  }

  *(v0 + 928) = v2;
  v4 = *(v0 + 896);
  v5 = *(v0 + 736);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 936) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 944) = v8;
  *(v8 + 16) = &unk_252E3D190;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 952) = v10;
  *v10 = v0;
  v10[1] = sub_252961BE0;
  v11 = *(v0 + 784);
  v14 = *(v0 + 1064);

  return sub_252A199A8(v0 + 640, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_25296222C()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 728);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 920);
  v6 = *(v0 + 896);
  v7 = *(v0 + 880);
  v8 = *(v0 + 848);
  v9 = *(v0 + 840);
  v10 = *(v0 + 832);
  v11 = *(v0 + 824);
  v12 = *(v0 + 816);

  (*(v11 + 8))(v10, v12);
  v13 = *(v0 + 832);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  v19 = *(v0 + 768);
  v20 = *(v0 + 744);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_25296237C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 968);
  v6 = *v2;
  *(v4 + 976) = a1;
  *(v4 + 984) = v1;

  v7 = *(v3 + 848);
  v8 = *(v3 + 840);

  if (v1)
  {
    v9 = sub_252962864;
  }

  else
  {
    v9 = sub_2529624D8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2529624D8()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = swift_allocObject();
  *(v0 + 992) = v4;
  *(v4 + 16) = v1;
  v5 = v1;
  *(v0 + 1065) = sub_252DC6D48(v3, v2);
  if (v2)
  {
    v6 = *(v0 + 976);
    v7 = *(v0 + 728);
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 1000) = v9;
    *v9 = v0;
    v9[1] = sub_25296274C;
    v10 = *(v0 + 736);

    return sub_252E174F4(v7);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 776);
    v13 = *(v0 + 736);
    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v15 = *(v13 + 96);
    __swift_project_boxed_opaque_existential_1((v13 + 72), v15);
    sub_252AD7CC4();
    v16 = swift_task_alloc();
    *(v0 + 1024) = v16;
    *v16 = v0;
    v16[1] = sub_25296296C;
    v17 = *(v0 + 776);

    return sub_252BDB88C(v0 + 560, &unk_252E3D180, v4, v17, 0, 0, 0, v15);
  }
}

uint64_t sub_25296274C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1000);
  v7 = *v2;
  *(v3 + 1008) = a1;
  *(v3 + 1016) = v1;

  if (v1)
  {
    v5 = sub_252962C30;
  }

  else
  {
    v5 = sub_252962AD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252962864()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];

  (*(v4 + 8))(v3, v5);
  v6 = v0[123];
  v7 = v0[104];
  v8 = v0[101];
  v9 = v0[100];
  v10 = v0[99];
  v11 = v0[98];
  v12 = v0[97];
  v13 = v0[96];
  v14 = v0[93];

  v15 = v0[1];

  return v15();
}

uint64_t sub_25296296C()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  *(*v1 + 1032) = v0;

  (*(v2[95] + 8))(v2[97], v2[94]);
  if (v0)
  {
    v5 = sub_25296339C;
  }

  else
  {
    v5 = sub_2529631DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252962AD4()
{
  v1 = (v0 + 704);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  *(v0 + 704) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 768);
  v9 = *(v0 + 736);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 1040) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 1048) = v12;
  *v12 = v0;
  v12[1] = sub_252962D5C;
  v13 = *(v0 + 1065);
  v14 = *(v0 + 768);

  return sub_252BDB88C(v0 + 600, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_252962C30()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 728);

  v3 = *(v0 + 1016);
  v4 = *(v0 + 976);
  v5 = *(v0 + 848);
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = *(v0 + 816);

  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 832);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  v13 = *(v0 + 792);
  v14 = *(v0 + 784);
  v15 = *(v0 + 776);
  v16 = *(v0 + 768);
  v17 = *(v0 + 744);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_252962D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v7 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    (*(v2[95] + 8))(v2[96], v2[94]);
    v4 = sub_252963094;
  }

  else
  {
    v5 = v2[130];
    (*(v2[95] + 8))(v2[96], v2[94]);

    v4 = sub_252962EB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252962EB4()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1008);
  v9 = *(v0 + 992);
  v10 = *(v0 + 976);
  v11 = *(v0 + 728);
  v12 = *(v0 + 712);
  (*(v4 + 112))(v7, v0 + 600, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 600));

  v13 = *(v0 + 976);
  v14 = *(v0 + 840);

  v15 = *(v0 + 848);
  v16 = *(v0 + 832);
  v17 = *(v0 + 824);
  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  v21 = *(v0 + 792);
  v22 = *(v0 + 784);
  v23 = *(v0 + 776);
  v24 = *(v0 + 768);
  v27 = *(v0 + 744);

  (*(v17 + 8))(v16, v18);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252963094()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 992);
  v4 = *(v0 + 728);

  v5 = *(v0 + 1056);
  v6 = *(v0 + 976);
  v7 = *(v0 + 848);
  v8 = *(v0 + 840);
  v9 = *(v0 + 832);
  v10 = *(v0 + 824);
  v11 = *(v0 + 816);

  (*(v10 + 8))(v9, v11);
  v12 = *(v0 + 832);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 744);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2529631DC()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[124];
  v9 = v0[89];
  (*(v4 + 112))(v7, v0 + 70, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 70);

  v10 = v0[122];
  v11 = v0[105];

  v12 = v0[106];
  v13 = v0[104];
  v14 = v0[103];
  v15 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[99];
  v19 = v0[98];
  v20 = v0[97];
  v21 = v0[96];
  v24 = v0[93];

  (*(v14 + 8))(v13, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_25296339C()
{
  v1 = v0[124];

  v2 = v0[129];
  v3 = v0[122];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];

  (*(v7 + 8))(v6, v8);
  v9 = v0[104];
  v10 = v0[101];
  v11 = v0[100];
  v12 = v0[99];
  v13 = v0[98];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[93];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2529634B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_25296359C;

  return sub_252A22D70(v9, a2, a3, a4);
}

uint64_t sub_25296359C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_25295A398;
  }

  else
  {
    v3 = sub_2529636B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529636B0()
{
  sub_2529645E8(v0[3], v0[2]);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_25296373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  v13 = type metadata accessor for HomeAutomationSetColorParameters(0);
  v14 = v13[6];
  v15 = *(a1 + v14);

  *(a1 + v14) = a2;
  v16 = v13[7];
  v17 = *(a1 + v16);

  *(a1 + v16) = a3;
  v18 = sub_25294833C(1u, 0, 0);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [v18 dictionary];
  if (!v20)
  {

LABEL_7:
    v28 = sub_252E36324();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    goto LABEL_8;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v34[0] = 0;
  v23 = [v22 dataWithPropertyList:v21 format:200 options:0 error:v34];
  v24 = v34[0];
  if (!v23)
  {
    v29 = v24;
    v30 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v25 = sub_252E32D34();
  v27 = v26;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v25, v27);
  v28 = sub_252E36324();
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
LABEL_8:
  sub_252956C98(v12, a1 + v13[8]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
  result = sub_252956C98(v10, a1);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252963A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252963A78, 0, 0);
}

uint64_t sub_252963A78()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4 && (sub_252C28D24(v0[3]) & 1) != 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v5 = v0[5];
      v6 = v0[2];
      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544D18);
      sub_252CC3D90(0xD000000000000035, 0x8000000252E6B3B0, 0xD00000000000008FLL, 0x8000000252E6B320);
      sub_252C24354(v2, v6);

      v8 = v0[1];

      return v8();
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D18);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6B2F0, 0xD00000000000008FLL, 0x8000000252E6B320);
    v10 = v2;
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_252963D44;
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[2];
    v15 = v0[3];
  }

  else
  {
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_252963EC4;
    v17 = v0[5];
    v14 = v0[2];
    v15 = v0[3];
    v12 = 0;
  }

  return sub_252960BF0(v14, v15, v12);
}

uint64_t sub_252963D44()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_252963FB8;
  }

  else
  {

    v4 = sub_252963E60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252963E60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252963EC4()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252963FB8()
{
  v1 = v0[4];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_252964020()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return swift_deallocClassInstance();
}

uint64_t sub_2529640C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252960BF0(a1, a2, a3);
}

uint64_t sub_252964178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252963A54(a1, a2, a3);
}

uint64_t sub_25296422C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252963A54(a1, a2, a3);
}

void *sub_2529642E0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetColorResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252964344(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_5:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 5;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_2529643E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_25296447C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_2529634B4(a1, v4, v5, v6);
}

uint64_t sub_252964530(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return sub_252A1E27C(a1, v5);
}

uint64_t sub_2529645E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25296464C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_2529646B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = (a1 + 512);
  v5 = -1;
  do
  {
    if (v3 == ++v5)
    {
      goto LABEL_349;
    }

    if (*(*(v4 - 10) + 16))
    {
      break;
    }

    if (*(*(v4 - 9) + 16))
    {
      break;
    }

    if (*(*(v4 - 8) + 16))
    {
      break;
    }

    if (*(*(v4 - 7) + 16))
    {
      break;
    }

    if (*(*(v4 - 6) + 16))
    {
      break;
    }

    if (*(*(v4 - 5) + 16))
    {
      break;
    }

    if (*(*(v4 - 4) + 16))
    {
      break;
    }

    if (*(*(v4 - 3) + 16))
    {
      break;
    }

    if (*(*(v4 - 2) + 16))
    {
      break;
    }

    if (*(*(v4 - 1) + 16))
    {
      break;
    }

    v6 = *v4;
    v4 += 63;
  }

  while (!*(v6 + 16));
  if (qword_27F53F520 != -1)
  {
LABEL_318:
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E08);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD00000000000001ELL;
  __dst[1] = 0x8000000252E6B510;
  v8 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A1, 0x8000000252E6B530);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = 504;
  v12 = 32;
  do
  {
    v13 = 504 * v9 + 32;
    v14 = v9;
    while (1)
    {
      if (v14 >= v3)
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:

        v127 = v204[2];
        if (!v127)
        {
LABEL_251:

          v140 = v203[2];
          if (!v140)
          {
            goto LABEL_275;
          }

          if (!v203[2])
          {
            goto LABEL_374;
          }

          memcpy(__dst, v203 + 4, sizeof(__dst));
          result = sub_2529353AC(__dst, v207);
          v141 = 0;
          v10 = MEMORY[0x277D84F90];
          v142 = 59;
          v71 = MEMORY[0x277D84F90];
          while (v141 < v203[2])
          {
            v143 = v203[v142];
            v144 = *(v143 + 16);
            v145 = *(v71 + 2);
            v146 = v145 + v144;
            if (__OFADD__(v145, v144))
            {
              goto LABEL_354;
            }

            v147 = v203[v142];

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || v146 > *(v71 + 3) >> 1)
            {
              if (v145 <= v146)
              {
                v148 = v145 + v144;
              }

              else
              {
                v148 = v145;
              }

              result = sub_2529F8360(result, v148, 1, v71);
              v71 = result;
            }

            if (*(v143 + 16))
            {
              if ((*(v71 + 3) >> 1) - *(v71 + 2) < v144)
              {
                goto LABEL_357;
              }

              swift_arrayInitWithCopy();

              if (v144)
              {
                v149 = *(v71 + 2);
                v78 = __OFADD__(v149, v144);
                v150 = v149 + v144;
                if (v78)
                {
                  goto LABEL_358;
                }

                *(v71 + 2) = v150;
              }
            }

            else
            {

              if (v144)
              {
                goto LABEL_355;
              }
            }

            ++v141;
            v142 += 63;
            if (v140 == v141)
            {
              goto LABEL_270;
            }
          }

LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
          goto LABEL_356;
        }

        if (!v204[2])
        {
          goto LABEL_368;
        }

        memcpy(__dst, v204 + 4, sizeof(__dst));
        sub_2529353AC(__dst, v207);
        v128 = 0;
        v10 = MEMORY[0x277D84F90];
        v129 = 58;
        v25 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v128 >= v204[2])
          {
            goto LABEL_345;
          }

          v130 = v204[v129];
          v2 = *(v130 + 16);
          v131 = *(v25 + 16);
          v132 = v131 + v2;
          if (__OFADD__(v131, v2))
          {
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
            goto LABEL_348;
          }

          v133 = v204[v129];

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v132 <= *(v25 + 24) >> 1)
          {
            if (!*(v130 + 16))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (v131 <= v132)
            {
              v134 = v131 + v2;
            }

            else
            {
              v134 = v131;
            }

            result = sub_2529F8360(result, v134, 1, v25);
            v25 = result;
            if (!*(v130 + 16))
            {
LABEL_217:

              if (v2)
              {
                goto LABEL_347;
              }

              goto LABEL_218;
            }
          }

          if ((*(v25 + 24) >> 1) - *(v25 + 16) < v2)
          {
            goto LABEL_351;
          }

          swift_arrayInitWithCopy();

          if (v2)
          {
            v135 = *(v25 + 16);
            v78 = __OFADD__(v135, v2);
            v136 = v135 + v2;
            if (v78)
            {
              goto LABEL_352;
            }

            *(v25 + 16) = v136;
          }

LABEL_218:
          ++v128;
          v129 += 63;
          if (v127 == v128)
          {
            goto LABEL_247;
          }
        }
      }

      memcpy(__dst, (v2 + v13), sizeof(__dst));
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_211;
      }

      if (*(__dst[51] + 16))
      {
        break;
      }

      ++v14;
      v13 += 504;
      if (v9 == v3)
      {
        goto LABEL_27;
      }
    }

    sub_2529353AC(__dst, v207);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v209 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, v10[2] + 1, 1);
      v10 = v209;
    }

    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      sub_2529AA480((v16 > 1), v17 + 1, 1);
      v10 = v209;
    }

    v10[2] = v17 + 1;
    memcpy(&v10[63 * v17 + 4], __dst, 0x1F8uLL);
  }

  while (v9 != v3);
LABEL_27:
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v11 = 504;
  do
  {
    v20 = 504 * v18 + 32;
    v21 = v18;
    while (1)
    {
      if (v21 >= v3)
      {
        goto LABEL_212;
      }

      memcpy(__dst, (v2 + v20), sizeof(__dst));
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_213;
      }

      if (*(__dst[52] + 16))
      {
        break;
      }

      ++v21;
      v20 += 504;
      if (v18 == v3)
      {
        goto LABEL_39;
      }
    }

    sub_2529353AC(__dst, v207);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v19;
    if ((v22 & 1) == 0)
    {
      sub_2529AA480(0, v19[2] + 1, 1);
      v19 = v209;
    }

    v1 = v19[2];
    v23 = v19[3];
    if (v1 >= v23 >> 1)
    {
      sub_2529AA480((v23 > 1), v1 + 1, 1);
      v19 = v209;
    }

    v19[2] = v1 + 1;
    memcpy(&v19[63 * v1 + 4], __dst, 0x1F8uLL);
  }

  while (v18 != v3);
LABEL_39:
  v24 = 0;
  v206 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v24 + 32;
    v26 = v24;
    while (1)
    {
      if (v26 >= v3)
      {
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:

        v137 = sub_252DF8F1C(v25);

        memcpy(v207, __dst, sizeof(v207));
        v111 = sub_252E1EBE8(v207);

        sub_252935408(__dst);
        v138 = *(v111 + 448);
        *&v207[32] = *(v111 + 432);
        *&v207[48] = v138;
        *&v207[64] = *(v111 + 464);
        *&v207[80] = *(v111 + 480);
        v139 = *(v111 + 416);
        *v207 = *(v111 + 400);
        *&v207[16] = v139;
        *(v111 + 400) = v10;
        *(v111 + 408) = v10;
        *(v111 + 416) = v10;
        *(v111 + 424) = v10;
        *(v111 + 432) = v137;
        goto LABEL_208;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_234;
      }

      if (*(__dst[50] + 16))
      {
        break;
      }

      ++v26;
      v25 += 504;
      if (v24 == v3)
      {
        goto LABEL_51;
      }
    }

    sub_2529353AC(__dst, v207);
    v27 = v206;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v206;
    if ((v28 & 1) == 0)
    {
      sub_2529AA480(0, v206[2] + 1, 1);
      v27 = v209;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      sub_2529AA480((v29 > 1), v30 + 1, 1);
      v27 = v209;
    }

    v27[2] = v30 + 1;
    v206 = v27;
    memcpy(&v27[63 * v30 + 4], __dst, 0x1F8uLL);
  }

  while (v24 != v3);
LABEL_51:
  v31 = 0;
  v205 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v31 + 32;
    v32 = v31;
    while (1)
    {
      if (v32 >= v3)
      {
        goto LABEL_235;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_236;
      }

      if (*(__dst[53] + 16))
      {
        break;
      }

      ++v32;
      v25 += 504;
      if (v31 == v3)
      {
        goto LABEL_63;
      }
    }

    sub_2529353AC(__dst, v207);
    v33 = v205;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v205;
    if ((v34 & 1) == 0)
    {
      sub_2529AA480(0, v205[2] + 1, 1);
      v33 = v209;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      sub_2529AA480((v35 > 1), v36 + 1, 1);
      v33 = v209;
    }

    v33[2] = v36 + 1;
    v205 = v33;
    memcpy(&v33[63 * v36 + 4], __dst, 0x1F8uLL);
  }

  while (v31 != v3);
LABEL_63:
  v37 = 0;
  v204 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v37 + 32;
    v38 = v37;
    while (1)
    {
      if (v38 >= v3)
      {
        goto LABEL_237;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v37 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_238;
      }

      if (*(__dst[54] + 16))
      {
        break;
      }

      ++v38;
      v25 += 504;
      if (v37 == v3)
      {
        goto LABEL_75;
      }
    }

    sub_2529353AC(__dst, v207);
    v39 = v204;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v204;
    if ((v40 & 1) == 0)
    {
      sub_2529AA480(0, v204[2] + 1, 1);
      v39 = v209;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      sub_2529AA480((v41 > 1), v42 + 1, 1);
      v39 = v209;
    }

    v39[2] = v42 + 1;
    v204 = v39;
    memcpy(&v39[63 * v42 + 4], __dst, 0x1F8uLL);
  }

  while (v37 != v3);
LABEL_75:
  v43 = 0;
  v203 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v43 + 32;
    v44 = v43;
    while (1)
    {
      if (v44 >= v3)
      {
        goto LABEL_239;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v43 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_240;
      }

      if (*(__dst[55] + 16))
      {
        break;
      }

      ++v44;
      v25 += 504;
      if (v43 == v3)
      {
        goto LABEL_87;
      }
    }

    sub_2529353AC(__dst, v207);
    v45 = v203;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v203;
    if ((v46 & 1) == 0)
    {
      sub_2529AA480(0, v203[2] + 1, 1);
      v45 = v209;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      sub_2529AA480((v47 > 1), v48 + 1, 1);
      v45 = v209;
    }

    v45[2] = v48 + 1;
    v203 = v45;
    memcpy(&v45[63 * v48 + 4], __dst, 0x1F8uLL);
  }

  while (v43 != v3);
LABEL_87:
  v49 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v49 + 32;
    v50 = v49;
    while (1)
    {
      if (v50 >= v3)
      {
        goto LABEL_241;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v49 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_242;
      }

      if (*(__dst[57] + 16))
      {
        break;
      }

      ++v50;
      v25 += 504;
      if (v49 == v3)
      {
        goto LABEL_99;
      }
    }

    sub_2529353AC(__dst, v207);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v11;
    if ((v51 & 1) == 0)
    {
      sub_2529AA480(0, *(v11 + 16) + 1, 1);
      v11 = v209;
    }

    v53 = *(v11 + 16);
    v52 = *(v11 + 24);
    v54 = v11;
    if (v53 >= v52 >> 1)
    {
      sub_2529AA480((v52 > 1), v53 + 1, 1);
      v54 = v209;
    }

    *(v54 + 16) = v53 + 1;
    memcpy((v54 + 504 * v53 + 32), __dst, 0x1F8uLL);
    v11 = v54;
  }

  while (v49 != v3);
LABEL_99:
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v55 + 32;
    v57 = v55;
    while (1)
    {
      if (v57 >= v3)
      {
        goto LABEL_243;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v55 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_244;
      }

      if (*(__dst[59] + 16))
      {
        break;
      }

      ++v57;
      v25 += 504;
      if (v55 == v3)
      {
        goto LABEL_111;
      }
    }

    sub_2529353AC(__dst, v207);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v56;
    if ((v58 & 1) == 0)
    {
      sub_2529AA480(0, v56[2] + 1, 1);
      v56 = v209;
    }

    v60 = v56[2];
    v59 = v56[3];
    v61 = v56;
    if (v60 >= v59 >> 1)
    {
      sub_2529AA480((v59 > 1), v60 + 1, 1);
      v61 = v209;
    }

    v61[2] = v60 + 1;
    memcpy(&v61[63 * v60 + 4], __dst, 0x1F8uLL);
    v56 = v61;
  }

  while (v55 != v3);
LABEL_111:
  v202 = v56;
  v25 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v62 = v12 + 504 * v25;
    v63 = v25;
    while (1)
    {
      if (v63 >= v3)
      {
        goto LABEL_245;
      }

      memcpy(__dst, (v2 + v62), sizeof(__dst));
      v25 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_246;
      }

      if (*(__dst[60] + 16))
      {
        break;
      }

      ++v63;
      v62 += 504;
      if (v25 == v3)
      {
        goto LABEL_123;
      }
    }

    v201 = v19;
    v64 = v12;
    sub_2529353AC(__dst, v207);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v1;
    v66 = v11;
    if ((v65 & 1) == 0)
    {
      sub_2529AA480(0, *(v1 + 16) + 1, 1);
      v1 = v209;
    }

    v68 = *(v1 + 16);
    v67 = *(v1 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_2529AA480((v67 > 1), v68 + 1, 1);
      v1 = v209;
    }

    *(v1 + 16) = v68 + 1;
    memcpy((v1 + 504 * v68 + 32), __dst, 0x1F8uLL);
    v11 = v66;
    v12 = v64;
    v19 = v201;
  }

  while (v25 != v3);
LABEL_123:
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v69 = v10[2];
  if (!v69)
  {

    v85 = v19[2];
    if (v85)
    {

      if (v19[2])
      {
        memcpy(__dst, v19 + 4, sizeof(__dst));
        sub_2529353AC(__dst, v207);
        v87 = 0;
        v88 = MEMORY[0x277D84F90];
        v1 = 448;
        v89 = &_s18FuzzyMatchingValueVN;
        while (1)
        {
          if (v87 >= v19[2])
          {
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:

            v154 = *(v11 + 16);
            if (v154)
            {

              if (*(v11 + 16))
              {
                memcpy(__dst, (v11 + 32), sizeof(__dst));
                result = sub_2529353AC(__dst, v207);
                v155 = 0;
                v89 = MEMORY[0x277D84F90];
                v156 = 488;
                while (v155 < *(v11 + 16))
                {
                  v157 = v11;
                  v158 = *(v11 + v156);
                  v159 = *(v158 + 16);
                  Kind = v89[1].Kind;
                  v161 = Kind + v159;
                  if (__OFADD__(Kind, v159))
                  {
                    goto LABEL_360;
                  }

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (!result || v161 > (v89[1].Description >> 1))
                  {
                    if (Kind <= v161)
                    {
                      v162 = Kind + v159;
                    }

                    else
                    {
                      v162 = Kind;
                    }

                    result = sub_2529F8360(result, v162, 1, v89);
                    v89 = result;
                  }

                  if (*(v158 + 16))
                  {
                    if (((v89[1].Description >> 1) - v89[1].Kind) < v159)
                    {
                      goto LABEL_363;
                    }

                    swift_arrayInitWithCopy();

                    if (v159)
                    {
                      v163 = v89[1].Kind;
                      v78 = __OFADD__(v163, v159);
                      v164 = v163 + v159;
                      if (v78)
                      {
                        goto LABEL_364;
                      }

                      v89[1].Kind = v164;
                    }
                  }

                  else
                  {

                    if (v159)
                    {
                      goto LABEL_361;
                    }
                  }

                  ++v155;
                  v156 += 504;
                  v11 = v157;
                  if (v154 == v155)
                  {
                    goto LABEL_294;
                  }
                }

LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
LABEL_367:
                __break(1u);
LABEL_368:
                __break(1u);
LABEL_369:
                __break(1u);
LABEL_370:
                __break(1u);
LABEL_371:
                __break(1u);
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
LABEL_376:
                __break(1u);
              }

              __break(1u);
LABEL_378:
              __break(1u);
              return result;
            }

LABEL_299:

            v168 = v202[2];
            if (v168)
            {

              if (v202[2])
              {
                v169 = 63;
                memcpy(__dst, v202 + 4, sizeof(__dst));
                result = sub_2529353AC(__dst, v207);
                v170 = 0;
                v171 = MEMORY[0x277D84F90];
                v172 = MEMORY[0x277D84F90];
                while (v170 < v202[2])
                {
                  v173 = v202[v169];
                  v174 = *(v173 + 16);
                  v175 = *(v172 + 16);
                  v176 = v175 + v174;
                  if (__OFADD__(v175, v174))
                  {
                    goto LABEL_366;
                  }

                  v177 = v202[v169];

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (!result || v176 > *(v172 + 24) >> 1)
                  {
                    if (v175 <= v176)
                    {
                      v178 = v175 + v174;
                    }

                    else
                    {
                      v178 = v175;
                    }

                    result = sub_2529F8360(result, v178, 1, v172);
                    v172 = result;
                  }

                  if (*(v173 + 16))
                  {
                    if ((*(v172 + 24) >> 1) - *(v172 + 16) < v174)
                    {
                      goto LABEL_369;
                    }

                    swift_arrayInitWithCopy();

                    if (v174)
                    {
                      v179 = *(v172 + 16);
                      v78 = __OFADD__(v179, v174);
                      v180 = v179 + v174;
                      if (v78)
                      {
                        goto LABEL_370;
                      }

                      *(v172 + 16) = v180;
                    }
                  }

                  else
                  {

                    if (v174)
                    {
                      goto LABEL_367;
                    }
                  }

                  ++v170;
                  v169 += 63;
                  if (v168 == v170)
                  {

                    v181 = sub_252DF8F1C(v172);

                    memcpy(v207, __dst, sizeof(v207));
                    v182 = sub_252E1EBE8(v207);

                    sub_252935408(__dst);
                    v183 = *(v182 + 448);
                    *&v207[32] = *(v182 + 432);
                    *&v207[48] = v183;
                    *&v207[64] = *(v182 + 464);
                    *&v207[80] = *(v182 + 480);
                    v184 = *(v182 + 416);
                    *v207 = *(v182 + 400);
                    *&v207[16] = v184;
                    *(v182 + 400) = v171;
                    *(v182 + 408) = v171;
                    *(v182 + 416) = v171;
                    *(v182 + 424) = v171;
                    *(v182 + 432) = v171;
                    *(v182 + 440) = v171;
                    *(v182 + 448) = v171;
                    *(v182 + 456) = v171;
                    *(v182 + 464) = v171;
                    *(v182 + 472) = v181;
                    *(v182 + 480) = v171;
                    goto LABEL_165;
                  }
                }

                goto LABEL_365;
              }

              goto LABEL_378;
            }

LABEL_324:

            v185 = *(v1 + 16);
            if (v185)
            {
              memcpy(__dst, (v1 + 32), sizeof(__dst));
              result = sub_2529353AC(__dst, v207);
              v186 = 0;
              v25 = MEMORY[0x277D84F90];
              v187 = 512;
              while (v186 < *(v1 + 16))
              {
                v188 = *(v1 + v187);
                v189 = *(v188 + 16);
                v190 = *(v25 + 16);
                v191 = v190 + v189;
                if (__OFADD__(v190, v189))
                {
                  goto LABEL_372;
                }

                v192 = *(v1 + v187);

                result = swift_isUniquelyReferenced_nonNull_native();
                if (!result || v191 > *(v25 + 24) >> 1)
                {
                  if (v190 <= v191)
                  {
                    v193 = v190 + v189;
                  }

                  else
                  {
                    v193 = v190;
                  }

                  result = sub_2529F8360(result, v193, 1, v25);
                  v25 = result;
                }

                if (*(v188 + 16))
                {
                  if ((*(v25 + 24) >> 1) - *(v25 + 16) < v189)
                  {
                    goto LABEL_375;
                  }

                  swift_arrayInitWithCopy();

                  if (v189)
                  {
                    v194 = *(v25 + 16);
                    v78 = __OFADD__(v194, v189);
                    v195 = v194 + v189;
                    if (v78)
                    {
                      goto LABEL_376;
                    }

                    *(v25 + 16) = v195;
                  }
                }

                else
                {

                  if (v189)
                  {
                    goto LABEL_373;
                  }
                }

                ++v186;
                v187 += 504;
                if (v185 == v186)
                {
                  goto LABEL_343;
                }
              }

              goto LABEL_371;
            }

LABEL_348:

            sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E6B5E0, 0xD0000000000000A1, 0x8000000252E6B530);

LABEL_349:

            return v2;
          }

          v11 = *(v19 + v1);
          v2 = *(v11 + 16);
          v90 = *(v88 + 2);
          v91 = v90 + v2;
          if (__OFADD__(v90, v2))
          {
            goto LABEL_273;
          }

          v92 = *(v19 + v1);

          v93 = swift_isUniquelyReferenced_nonNull_native();
          if (v93 && v91 <= *(v88 + 3) >> 1)
          {
            if (!*(v11 + 16))
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v90 <= v91)
            {
              v94 = v90 + v2;
            }

            else
            {
              v94 = v90;
            }

            v88 = sub_2529F8360(v93, v94, 1, v88);
            if (!*(v11 + 16))
            {
LABEL_146:

              if (v2)
              {
                goto LABEL_274;
              }

              goto LABEL_147;
            }
          }

          if ((*(v88 + 3) >> 1) - *(v88 + 2) < v2)
          {
            __break(1u);
LABEL_294:

            v165 = sub_252DF8F1C(v89);

            memcpy(v207, __dst, sizeof(v207));
            v81 = sub_252E1EBE8(v207);

            sub_252935408(__dst);
            v166 = *(v81 + 448);
            *&v207[32] = *(v81 + 432);
            *&v207[48] = v166;
            *&v207[64] = *(v81 + 464);
            *&v207[80] = *(v81 + 480);
            v167 = *(v81 + 416);
            *v207 = *(v81 + 400);
            *&v207[16] = v167;
            v84 = MEMORY[0x277D84F90];
            *(v81 + 400) = MEMORY[0x277D84F90];
            *(v81 + 408) = v84;
            *(v81 + 416) = v84;
            *(v81 + 424) = v84;
            *(v81 + 432) = v84;
            *(v81 + 440) = v84;
            *(v81 + 448) = v84;
            *(v81 + 456) = v165;
LABEL_164:
            *(v81 + 464) = v84;
            *(v81 + 472) = v84;
            *(v81 + 480) = v84;
            goto LABEL_165;
          }

          swift_arrayInitWithCopy();

          if (v2)
          {
            v95 = *(v88 + 2);
            v78 = __OFADD__(v95, v2);
            v96 = v95 + v2;
            if (v78)
            {
              __break(1u);
LABEL_296:
              __break(1u);
              goto LABEL_297;
            }

            *(v88 + 2) = v96;
          }

LABEL_147:
          ++v87;
          v1 += 504;
          if (v85 == v87)
          {

            v97 = sub_252DF8F1C(v88);

            memcpy(v207, __dst, sizeof(v207));
            v81 = sub_252E1EBE8(v207);

            sub_252935408(__dst);
            v98 = *(v81 + 448);
            *&v207[32] = *(v81 + 432);
            *&v207[48] = v98;
            *&v207[64] = *(v81 + 464);
            *&v207[80] = *(v81 + 480);
            v99 = *(v81 + 416);
            *v207 = *(v81 + 400);
            *&v207[16] = v99;
            v84 = MEMORY[0x277D84F90];
            *(v81 + 400) = MEMORY[0x277D84F90];
            *(v81 + 408) = v84;
            *(v81 + 416) = v97;
LABEL_163:
            *(v81 + 424) = v84;
            *(v81 + 432) = v84;
            *(v81 + 440) = v84;
            *(v81 + 448) = v84;
            *(v81 + 456) = v84;
            goto LABEL_164;
          }
        }
      }

      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
      goto LABEL_353;
    }

    v100 = v206[2];
    if (v100)
    {

      if (!v206[2])
      {
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
        goto LABEL_359;
      }

      memcpy(__dst, v206 + 4, sizeof(__dst));
      sub_2529353AC(__dst, v207);
      v101 = 0;
      v10 = MEMORY[0x277D84F90];
      v102 = 54;
      v103 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v101 >= v206[2])
        {
          goto LABEL_296;
        }

        v104 = v206[v102];
        v2 = *(v104 + 16);
        v1 = *(v103 + 2);
        v3 = v1 + v2;
        if (__OFADD__(v1, v2))
        {
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

        v105 = v206[v102];

        v106 = swift_isUniquelyReferenced_nonNull_native();
        if (v106 && v3 <= *(v103 + 3) >> 1)
        {
          if (*(v104 + 16))
          {
            goto LABEL_182;
          }
        }

        else
        {
          if (v1 <= v3)
          {
            v107 = v1 + v2;
          }

          else
          {
            v107 = v1;
          }

          v103 = sub_2529F8360(v106, v107, 1, v103);
          if (*(v104 + 16))
          {
LABEL_182:
            if ((*(v103 + 3) >> 1) - *(v103 + 2) < v2)
            {
              __break(1u);
              goto LABEL_318;
            }

            swift_arrayInitWithCopy();

            if (v2)
            {
              v108 = *(v103 + 2);
              v78 = __OFADD__(v108, v2);
              v109 = v108 + v2;
              if (v78)
              {
                __break(1u);
LABEL_321:
                __break(1u);
                goto LABEL_322;
              }

              *(v103 + 2) = v109;
            }

            goto LABEL_171;
          }
        }

        if (v2)
        {
          goto LABEL_298;
        }

LABEL_171:
        ++v101;
        v102 += 63;
        if (v100 == v101)
        {

          v110 = sub_252DF8F1C(v103);

          memcpy(v207, __dst, sizeof(v207));
          v111 = sub_252E1EBE8(v207);

          sub_252935408(__dst);
          v112 = *(v111 + 448);
          *&v207[32] = *(v111 + 432);
          *&v207[48] = v112;
          *&v207[64] = *(v111 + 464);
          *&v207[80] = *(v111 + 480);
          v113 = *(v111 + 416);
          *v207 = *(v111 + 400);
          *&v207[16] = v113;
          *(v111 + 400) = v110;
          *(v111 + 408) = v10;
          *(v111 + 416) = v10;
          *(v111 + 424) = v10;
          goto LABEL_207;
        }
      }
    }

    v114 = v205[2];
    if (v114)
    {

      if (!v205[2])
      {
        goto LABEL_362;
      }

      memcpy(__dst, v205 + 4, sizeof(__dst));
      sub_2529353AC(__dst, v207);
      v115 = 0;
      v10 = MEMORY[0x277D84F90];
      v116 = 57;
      v25 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v115 >= v205[2])
        {
          goto LABEL_321;
        }

        v117 = v205[v116];
        v2 = *(v117 + 16);
        v1 = *(v25 + 16);
        v118 = v1 + v2;
        if (__OFADD__(v1, v2))
        {
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
          goto LABEL_324;
        }

        v119 = v205[v116];

        v120 = swift_isUniquelyReferenced_nonNull_native();
        if (v120 && v118 <= *(v25 + 24) >> 1)
        {
          if (*(v117 + 16))
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (v1 <= v118)
          {
            v121 = v1 + v2;
          }

          else
          {
            v121 = v1;
          }

          v25 = sub_2529F8360(v120, v121, 1, v25);
          if (*(v117 + 16))
          {
LABEL_202:
            if ((*(v25 + 24) >> 1) - *(v25 + 16) < v2)
            {
              goto LABEL_342;
            }

            swift_arrayInitWithCopy();

            if (v2)
            {
              v122 = *(v25 + 16);
              v78 = __OFADD__(v122, v2);
              v123 = v122 + v2;
              if (v78)
              {
                __break(1u);
LABEL_345:
                __break(1u);
                goto LABEL_346;
              }

              *(v25 + 16) = v123;
            }

            goto LABEL_191;
          }
        }

        if (v2)
        {
          goto LABEL_323;
        }

LABEL_191:
        ++v115;
        v116 += 63;
        if (v114 == v115)
        {

          v124 = sub_252DF8F1C(v25);

          memcpy(v207, __dst, sizeof(v207));
          v111 = sub_252E1EBE8(v207);

          sub_252935408(__dst);
          v125 = *(v111 + 448);
          *&v207[32] = *(v111 + 432);
          *&v207[48] = v125;
          *&v207[64] = *(v111 + 464);
          *&v207[80] = *(v111 + 480);
          v126 = *(v111 + 416);
          *v207 = *(v111 + 400);
          *&v207[16] = v126;
          *(v111 + 400) = v10;
          *(v111 + 408) = v10;
          *(v111 + 416) = v10;
          *(v111 + 424) = v124;
LABEL_207:
          *(v111 + 432) = v10;
LABEL_208:
          *(v111 + 440) = v10;
          goto LABEL_209;
        }
      }
    }

    goto LABEL_214;
  }

  if (!v10[2])
  {
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:

    v196 = sub_252DF8F1C(v25);

    memcpy(v207, __dst, sizeof(v207));
    v197 = sub_252E1EBE8(v207);

    sub_252935408(__dst);
    v198 = *(v197 + 448);
    *&v207[32] = *(v197 + 432);
    *&v207[48] = v198;
    *&v207[64] = *(v197 + 464);
    *&v207[80] = *(v197 + 480);
    v199 = *(v197 + 416);
    *v207 = *(v197 + 400);
    *&v207[16] = v199;
    v200 = MEMORY[0x277D84F90];
    *(v197 + 400) = MEMORY[0x277D84F90];
    *(v197 + 408) = v200;
    *(v197 + 416) = v200;
    *(v197 + 424) = v200;
    *(v197 + 432) = v200;
    *(v197 + 440) = v200;
    *(v197 + 448) = v200;
    *(v197 + 456) = v200;
    *(v197 + 464) = v200;
    *(v197 + 472) = v200;
    *(v197 + 480) = v196;
    goto LABEL_165;
  }

  memcpy(__dst, v10 + 4, sizeof(__dst));
  sub_2529353AC(__dst, v207);
  v70 = 0;
  v71 = MEMORY[0x277D84F90];
  v1 = 440;
  while (2)
  {
    if (v70 >= v10[2])
    {
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v11 = *(v10 + v1);
    v2 = *(v11 + 16);
    v72 = *(v71 + 2);
    v73 = v72 + v2;
    if (__OFADD__(v72, v2))
    {
      goto LABEL_249;
    }

    v74 = *(v10 + v1);

    v75 = swift_isUniquelyReferenced_nonNull_native();
    if (v75 && v73 <= *(v71 + 3) >> 1)
    {
      if (!*(v11 + 16))
      {
LABEL_126:

        if (v2)
        {
          goto LABEL_250;
        }

LABEL_127:
        ++v70;
        v1 += 504;
        if (v69 == v70)
        {

          v80 = sub_252DF8F1C(v71);

          memcpy(v207, __dst, sizeof(v207));
          v81 = sub_252E1EBE8(v207);

          sub_252935408(__dst);

          v82 = *(v81 + 448);
          *&v207[32] = *(v81 + 432);
          *&v207[48] = v82;
          *&v207[64] = *(v81 + 464);
          *&v207[80] = *(v81 + 480);
          v83 = *(v81 + 416);
          *v207 = *(v81 + 400);
          *&v207[16] = v83;
          v84 = MEMORY[0x277D84F90];
          *(v81 + 400) = MEMORY[0x277D84F90];
          *(v81 + 408) = v80;
          *(v81 + 416) = v84;
          goto LABEL_163;
        }

        continue;
      }
    }

    else
    {
      if (v72 <= v73)
      {
        v76 = v72 + v2;
      }

      else
      {
        v76 = v72;
      }

      v71 = sub_2529F8360(v75, v76, 1, v71);
      if (!*(v11 + 16))
      {
        goto LABEL_126;
      }
    }

    break;
  }

  if ((*(v71 + 3) >> 1) - *(v71 + 2) >= v2)
  {
    swift_arrayInitWithCopy();

    if (v2)
    {
      v77 = *(v71 + 2);
      v78 = __OFADD__(v77, v2);
      v79 = v77 + v2;
      if (v78)
      {
        __break(1u);
        goto LABEL_272;
      }

      *(v71 + 2) = v79;
    }

    goto LABEL_127;
  }

  __break(1u);
LABEL_270:

  v151 = sub_252DF8F1C(v71);

  memcpy(v207, __dst, sizeof(v207));
  v111 = sub_252E1EBE8(v207);

  sub_252935408(__dst);
  v152 = *(v111 + 448);
  *&v207[32] = *(v111 + 432);
  *&v207[48] = v152;
  *&v207[64] = *(v111 + 464);
  *&v207[80] = *(v111 + 480);
  v153 = *(v111 + 416);
  *v207 = *(v111 + 400);
  *&v207[16] = v153;
  *(v111 + 400) = v10;
  *(v111 + 408) = v10;
  *(v111 + 416) = v10;
  *(v111 + 424) = v10;
  *(v111 + 432) = v10;
  *(v111 + 440) = v151;
LABEL_209:
  *(v111 + 448) = v10;
  *(v111 + 456) = v10;
  *(v111 + 464) = v10;
  *(v111 + 472) = v10;
  *(v111 + 480) = v10;
LABEL_165:
  sub_252937BEC(v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E3C290;

  sub_252E1E4F8(v2 + 32);

  return v2;
}

uint64_t sub_252966374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetRvcAttributeTypeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_2529663A8(void *a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v8 = result;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = HomeStore.accessories(matching:supporting:)(v9, 0);
  v13 = v12;

  if (v13)
  {
    v14 = v11;
    v15 = 1;
    goto LABEL_71;
  }

  v16 = [a1 userTask];
  if (!v16)
  {
    sub_252929F10(v11, 0);
    sub_252C515AC();
    return 0;
  }

  v17 = v16;
  v18 = [v16 attribute];

  if (v18 != 27)
  {
    goto LABEL_70;
  }

  v19 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
LABEL_69:
    v20 = sub_252E378C4();
    if (!v20)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_70;
    }
  }

  v21 = 0;
  v75 = v11 + 32;
  v76 = v11 & 0xC000000000000001;
  v22 = *MEMORY[0x277CCE8C8];
  v73 = (v3 + 8);
  v74 = v22;
  v61 = "Modified user task: ";
  v66 = ". Returning .robotVacuumCleaner";
  v67 = "tity with accessoryID ";
  v65 = "MatterAccessory.swift";
  v64 = "for accessoryID ";
  v63 = "MatterAccessoryManager.swift";
  v62 = "deviceEntity(for:)";
  v23 = &off_279711000;
  v71 = v6;
  v72 = v2;
  v68 = v11;
  v69 = v20;
  v70 = v19;
  while (1)
  {
    if (v76)
    {
      v25 = MEMORY[0x2530ADF00](v21, v11);
      v26 = __OFADD__(v21, 1);
      v27 = v21 + 1;
      if (v26)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_68;
      }

      v24 = *(v75 + 8 * v21);

      v26 = __OFADD__(v21, 1);
      v27 = v21 + 1;
      if (v26)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }

    v28 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v80 = v25;
    v29 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
    v30 = [v29 v23[297]];
    if (!v30)
    {
      goto LABEL_64;
    }

    v31 = [v29 v23[297]];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 unsignedLongLongValue];

      if (!v33)
      {
        goto LABEL_64;
      }
    }

    v79 = v27;
    v34 = sub_252E37434();
    v3 = v35;
    if (v34 == sub_252E36F34() && v3 == v36)
    {
    }

    else
    {
      v38 = sub_252E37DB4();

      if ((v38 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if ([v29 isBridged])
    {
LABEL_64:
      sub_252929F10(v11, 0);

      return 0;
    }

    v39 = *(v80 + v28);
    v40 = type metadata accessor for MatterAccessory();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v77 = sub_252D677E0(v39);
    v43 = [*(v77 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    sub_252E32E64();

    v11 = sub_252E32E24();
    v81 = v44;
    (*v73)(v6, v2);
    v45 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v46 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v78 = v45;
    v2 = *&v45[v46];
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v59 = *&v45[v46];
      }

      v47 = sub_252E378C4();
    }

    else
    {
      v47 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47)
    {
      break;
    }

LABEL_39:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544EC8);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v65 | 0x8000000000000000);
    v52 = v81;
    MEMORY[0x2530AD570](v11, v81);
    sub_252CC4050(v82, v83, 0xD00000000000007CLL, v64 | 0x8000000000000000, 0xD000000000000012, v63 | 0x8000000000000000, 375);

    v53 = v69;
    v21 = v79;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v3 = __swift_project_value_buffer(v51, qword_27F544CB8);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v62 | 0x8000000000000000);
    MEMORY[0x2530AD570](v11, v52);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v67 | 0x8000000000000000);
    sub_252CC4050(v82, v83, 0xD000000000000075, v66 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);

    v6 = v71;
    v2 = v72;
    v54 = v53;
    v19 = v70;
LABEL_54:

    v11 = v68;
LABEL_55:
    v23 = &off_279711000;
    if (v21 == v54)
    {
      sub_252929F10(v11, 0);
      return 1;
    }
  }

  v48 = 0;
  v19 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v19)
    {
      v3 = MEMORY[0x2530ADF00](v48, v2);
      v6 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v48 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v3 = *(v2 + 8 * v48 + 32);

      v6 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v50 = *(v3 + qword_27F5427D0);

    sub_252E36744();

    if (v83)
    {
      if (v82 == v11 && v83 == v81)
      {

        goto LABEL_45;
      }

      v49 = sub_252E37DB4();

      if (v49)
      {
        break;
      }
    }

    ++v48;
    if (v6 == v47)
    {
      goto LABEL_39;
    }
  }

LABEL_45:

  v55 = sub_252BF8258(v3);
  v6 = v71;
  v2 = v72;
  v54 = v69;
  v19 = v70;
  v21 = v79;
  if (!v55)
  {
LABEL_51:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v58 = sub_252E36AD4();
    v78 = __swift_project_value_buffer(v58, qword_27F544CB8);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, v61 | 0x8000000000000000);
    MEMORY[0x2530AD570](v11, v81);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v67 | 0x8000000000000000);
    sub_252CC4050(v82, v83, 0xD000000000000075, v66 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

    goto LABEL_54;
  }

  if (!*(v55 + 2))
  {

    goto LABEL_51;
  }

  v56 = v55;

  if (!*(v56 + 2))
  {
    __break(1u);
    return result;
  }

  v57 = *(v56 + 4);

  v11 = v68;
  if (v57 == 46)
  {
    goto LABEL_55;
  }

LABEL_70:
  v14 = v11;
  v15 = 0;
LABEL_71:
  sub_252929F10(v14, v15);
  return 0;
}

id sub_252966CB0(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_252956B94(__dst) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544DA8);
    sub_252CC4050(0xD000000000000050, 0x8000000252E6B640, 0xD000000000000093, 0x8000000252E6B6A0, 0xD000000000000018, 0x8000000252E68F80, 38);
    type metadata accessor for HomeAutomationError();
    sub_2529671A8();
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v6 = *&__dst[144];
    v32 = *&__dst[96];
    v33 = *&__dst[112];
    v34 = *&__dst[128];
    v28 = *&__dst[32];
    v29 = *&__dst[48];
    v31 = *&__dst[80];
    v30 = *&__dst[64];
    v27 = *&__dst[16];
    v26 = *__dst;
    memcpy(__src, &__dst[152], sizeof(__src));
    memcpy(v24, a2, sizeof(v24));
    sub_2529353AC(v24, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F80DC(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2529F80DC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 50;
    v22[6] = v32;
    v22[7] = v33;
    v22[8] = v34;
    v22[0] = v26;
    v22[1] = v27;
    v22[2] = v28;
    v22[3] = v29;
    v22[4] = v30;
    v22[5] = v31;
    *&v22[9] = v6;
    memcpy(&v22[9] + 8, __src, 0x160uLL);
    memcpy(v21, v22, 0x1F8uLL);
    sub_2529353AC(v22, v23);
    v9 = sub_252BADB6C();
    memcpy(v23, v21, sizeof(v23));
    sub_252935408(v23);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C70);
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v21[0] = 0xD000000000000014;
    *(&v21[0] + 1) = 0x8000000252E6B740;
    v11 = [v9 description];
    v12 = sub_252E36F34();
    v14 = v13;

    MEMORY[0x2530AD570](v12, v14);

    sub_252CC3D90(*&v21[0], *(&v21[0] + 1), 0xD000000000000093, 0x8000000252E6B6A0);

    v15 = [a1 filters];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for HomeFilter();
      v17 = sub_252E37264();
    }

    else
    {
      v17 = 0;
    }

    v18 = [a1 time];
    v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v5 setUserTask_];
    if (v17)
    {
      type metadata accessor for HomeFilter();
      v19 = sub_252E37254();
    }

    else
    {
      v19 = 0;
    }

    [v5 setFilters_];

    [v5 setTime_];
    v21[6] = v32;
    v21[7] = v33;
    v21[8] = v34;
    v21[2] = v28;
    v21[3] = v29;
    v21[4] = v30;
    v21[5] = v31;
    *&v21[9] = v6;
    v21[0] = v26;
    v21[1] = v27;
    memcpy(&v21[9] + 8, __src, 0x160uLL);
    sub_252935408(v21);
  }

  return v5;
}

unint64_t sub_2529671A8()
{
  result = qword_27F540430;
  if (!qword_27F540430)
  {
    type metadata accessor for HomeAutomationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540430);
  }

  return result;
}

uint64_t Entity.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_252E32E84();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v12 = &v27 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_252950A0C();
  sub_252E37F74();
  if (v2)
  {
    type metadata accessor for Entity();
    v18 = *(*v3 + 48);
    v19 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v9;
    v16 = v27;
    v34 = 0;
    sub_25296A654(&qword_27F540498, MEMORY[0x277CC95F0]);
    sub_252E37C64();
    (*(v16 + 32))(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v8, v5);
    v33 = 1;
    sub_252950A60();
    sub_252E37C64();
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v30;
    v32 = 2;
    v17 = sub_252E37C04();
    v21 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v21 = v17;
    v21[1] = v22;
    v31 = 3;
    v23 = sub_252E37BA4();
    v25 = v24;
    (*(v15 + 8))(v12, v28);
    v26 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v26 = v23;
    v26[1] = v25;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v3;
}

uint64_t type metadata accessor for Entity()
{
  result = qword_2814B03C8;
  if (!qword_2814B03C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Entity.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t sub_2529676B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540668, &qword_252E3D228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252950A0C();
  sub_252E37F84();
  v18 = 0;
  sub_252E32E84();
  sub_25296A654(&qword_27F540670, MEMORY[0x277CC95F0]);
  sub_252E37D54();
  if (!v2)
  {
    v17 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
    v16[15] = 1;
    sub_2529678F0();
    sub_252E37D54();
    v11 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v12 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v16[14] = 2;
    sub_252E37CF4();
    v13 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    v16[13] = 3;
    sub_252E37C94();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2529678F0()
{
  result = qword_27F540678;
  if (!qword_27F540678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540678);
  }

  return result;
}

uint64_t sub_252967944()
{
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  return sub_252E37044();
}

uint64_t sub_252967A0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a1 && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a2)
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4();
  }
}

uint64_t sub_252967A40(uint64_t a1)
{
  v13 = sub_252E32E24();
  v14 = v3;
  v12 = &v13;
  v4 = sub_2529ED970(sub_25296A69C, v11, a1);

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }

    v13 = v7;
    v14 = v8;
    MEMORY[0x28223BE20](v6);
    v10[2] = &v13;

    v5 = sub_2529ED970(sub_25296A724, v10, a1);
  }

  return v5 & 1;
}

uint64_t sub_252967B6C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D00);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6BA50);
    MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
    v18 = "s filters = true for ";
    v19 = 0xD000000000000016;
    goto LABEL_30;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
  v7 = *(*v2 + 192);
  while (2)
  {
    v22 = v5;
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v7(v9))
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        if (v22)
        {
          goto LABEL_20;
        }

        return 0;
      }
    }

    v11 = [v10 isExcludeFilter];
    sub_252956D08();
    v12 = sub_252E37674();
    if (v11)
    {
      v23 = v11;
      v13 = v12;
      v14 = sub_252E37694();

      if (v14)
      {
        return 0;
      }
    }

    else
    {
    }

    v5 = 1;
    if (v6 != v4)
    {
      continue;
    }

    break;
  }

LABEL_20:
  if (qword_27F53F4C8 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D00);
  sub_252E379F4();
  v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v16 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v24 = v17;
  v25 = v16;
  v18 = " is not contained in ";
  v19 = 0xD000000000000010;
LABEL_30:
  MEMORY[0x2530AD570](v19, v18 | 0x8000000000000000);
  sub_252CC3D90(v24, v25, 0xD00000000000006CLL, 0x8000000252E6B9A0);

  return 1;
}

uint64_t sub_252967EAC(void *a1)
{
  v2 = v1;
  v4 = [a1 entityIdentifiers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E37264();

    if (*(v6 + 16) && ((*(*v2 + 176))(v6) & 1) == 0)
    {
      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D00);
      sub_252E379F4();
      v20 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v19 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v29 = v20;
      v31 = v19;
      MEMORY[0x2530AD570](1029990688, 0xE400000000000000);
      sub_252E32E84();
      sub_25296A654(&qword_27F5404A8, MEMORY[0x277CC95F0]);
      v21 = sub_252E37D94();
      MEMORY[0x2530AD570](v21);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6BA10);
      v22 = MEMORY[0x2530AD730](v6, MEMORY[0x277D837D0]);
      v24 = v23;

      MEMORY[0x2530AD570](v22, v24);
      goto LABEL_19;
    }
  }

  v7 = [a1 homeEntityName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_252E36F34();
    v11 = v10;

    if ((*(*v2 + 168))(v9, v11))
    {

      goto LABEL_8;
    }

    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D00);
    sub_252E379F4();
    v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v29 = v17;
    v31 = v16;
    MEMORY[0x2530AD570](0x20656D616E207327, 0xEF20746F6E207369);
    MEMORY[0x2530AD570](v9, v11);
LABEL_19:

    v25 = v29;
    v26 = v31;
LABEL_23:
    sub_252CC3D90(v25, v26, 0xD00000000000006CLL, 0x8000000252E6B9A0);

    return 0;
  }

LABEL_8:
  if ([a1 entityType])
  {
    v12 = [a1 entityType];
    if (v12 != *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {
      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544D00);
      v30 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v32 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](0x20746F6E20736920, 0xEA00000000002061);
      v28 = sub_252BEBD04([a1 entityType]);
      MEMORY[0x2530AD570](v28);

      v25 = v30;
      v26 = v32;
      goto LABEL_23;
    }
  }

  v13 = *(*v2 + 200);

  return v13(a1);
}

uint64_t sub_252968368()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
  if (v2 <= 3)
  {
LABEL_16:
    if (v2 == 1)
    {
LABEL_46:
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v19.n128_f64[0] = HomeFilter.Builder.init()();
      v21 = (*(*v20 + 632))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v19);
      goto LABEL_133;
    }

    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_47;
      }

      type metadata accessor for HomeStore();
      v9 = static HomeStore.shared.getter();
      v4 = sub_2529D9884();

      if (v4 >> 62)
      {
        v10 = sub_252E378C4();
        if (v10)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
LABEL_21:
          v11 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x2530ADF00](v11, v4);
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_119;
              }

              v12 = *(v4 + 8 * v11 + 32);

              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }
            }

            if (sub_252E32E54())
            {
              break;
            }

            ++v11;
            if (v13 == v10)
            {
              goto LABEL_130;
            }
          }

          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v74 = v73;
          v75 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v76 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v54 = (*(*v74 + 680))(v75, v76);

          v55 = sub_2529A2E84();
          if (v55)
          {
            v77 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
LABEL_109:
            v90 = v55 + v77;
            v67 = *v90;
            v72 = *(v90 + 8);
            goto LABEL_110;
          }

          goto LABEL_111;
        }
      }

LABEL_130:

      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v101.n128_f64[0] = HomeFilter.Builder.init()();
      v21 = (*(*v102 + 680))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v101);
      goto LABEL_133;
    }

LABEL_72:
    type metadata accessor for HomeStore();
    v34 = static HomeStore.shared.getter();
    v4 = sub_2529D984C();

    if (v4 >> 62)
    {
      v35 = sub_252E378C4();
      if (v35)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v35 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_74:
        v36 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x2530ADF00](v36, v4);
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v36 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_120;
            }

            v37 = *(v4 + 8 * v36 + 32);

            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }
          }

          if (sub_252E32E54())
          {
            break;
          }

          ++v36;
          if (v38 == v35)
          {
            goto LABEL_132;
          }
        }

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v79 = v78;
        v80 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v81 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v48 = (*(*v79 + 648))(v80, v81);
LABEL_106:
        v82 = v48;

        v83 = (*(*v82 + 632))(0, 0);

        goto LABEL_114;
      }
    }

LABEL_132:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v103.n128_f64[0] = HomeFilter.Builder.init()();
    v21 = (*(*v104 + 648))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v103);
    goto LABEL_133;
  }

  if (v2 > 5)
  {
LABEL_31:
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        type metadata accessor for HomeStore();
        v14 = static HomeStore.shared.getter();
        v4 = sub_2529D9D50();

        if (v4 >> 62)
        {
          v15 = sub_252E378C4();
        }

        else
        {
          v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2530ADF00](v16, v4);
              v18 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v17 = *(v4 + 8 * v16 + 32);

              v18 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }
            }

            if (sub_252E32E54())
            {
              break;
            }

            ++v16;
            if (v18 == v15)
            {
              goto LABEL_84;
            }
          }

          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v63 = v62;
          v64 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v65 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v66 = (*(*v63 + 576))(v64, v65);

          v54 = (*(*v66 + 592))(7);

          v61 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          goto LABEL_101;
        }

LABEL_84:

        v39 = static HomeStore.shared.getter();
        v40 = sub_2529D9D50();
        v4 = sub_2529D70E4(v40);

        if (v4 >> 62)
        {
          v41 = sub_252E378C4();
          if (v41)
          {
LABEL_86:
            v42 = 0;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x2530ADF00](v42, v4);
                v43 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_95;
                }
              }

              else
              {
                if (v42 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_121;
                }

                v27 = *(v4 + 8 * v42 + 32);

                v43 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
LABEL_95:
                  __break(1u);
LABEL_96:

                  type metadata accessor for HomeFilter.Builder();
                  swift_allocObject();
                  HomeFilter.Builder.init()();
                  v45 = v44;
                  v46 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v47 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

                  v48 = (*(*v45 + 680))(v46, v47);
                  goto LABEL_106;
                }
              }

              if (sub_252E32E54())
              {
                break;
              }

              ++v42;
              if (v43 == v41)
              {
                goto LABEL_135;
              }
            }

            type metadata accessor for HomeFilter.Builder();
            swift_allocObject();
            HomeFilter.Builder.init()();
            v86 = v85;
            v87 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v88 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            v89 = (*(*v86 + 576))(v87, v88);

            v54 = (*(*v89 + 592))(7);

            sub_252CDB4B0();
            if (!v55)
            {
              goto LABEL_111;
            }

            goto LABEL_108;
          }
        }

        else
        {
          v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            goto LABEL_86;
          }
        }

LABEL_135:

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v106.n128_f64[0] = HomeFilter.Builder.init()();
        v108 = (*(*v107 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v106);

        v97 = (*(*v108 + 592))(7);
        goto LABEL_136;
      }

LABEL_47:
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v22.n128_f64[0] = HomeFilter.Builder.init()();
      v21 = (*(*v23 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v22);
      goto LABEL_133;
    }

LABEL_60:
    type metadata accessor for HomeStore();
    v29 = static HomeStore.shared.getter();
    v4 = sub_2529DA8AC();

    if (v4 >> 62)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_62:
        v31 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x2530ADF00](v31, v4);
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v31 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_116;
            }

            v32 = *(v4 + 8 * v31 + 32);

            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }
          }

          if (sub_252E32E54())
          {
            break;
          }

          ++v31;
          if (v33 == v30)
          {
            goto LABEL_125;
          }
        }

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v50 = v49;
        v51 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v52 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v53 = (*(*v50 + 576))(v51, v52);

        v54 = (*(*v53 + 592))(6);

        v55 = sub_252BEAC3C();
        if (v55)
        {
LABEL_108:
          v77 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
          goto LABEL_109;
        }

LABEL_111:
        v67 = 0;
        goto LABEL_112;
      }
    }

LABEL_125:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v94.n128_f64[0] = HomeFilter.Builder.init()();
    v96 = (*(*v95 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v94);

    v97 = (*(*v96 + 592))(6);
LABEL_136:
    v105 = v97;
    goto LABEL_137;
  }

  if (v2 == 4)
  {
    type metadata accessor for HomeStore();
    v24 = static HomeStore.shared.getter();
    v4 = sub_2529D9D18();

    if (v4 >> 62)
    {
      goto LABEL_122;
    }

    v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      while (1)
      {
        v26 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](v26, v4);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_54:

          if (sub_252E32E54())
          {
            goto LABEL_96;
          }

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_123;
          }
        }

        if (v26 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

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
        v25 = sub_252E378C4();
        if (!v25)
        {
          goto LABEL_123;
        }
      }

      v27 = *(v4 + 8 * v26 + 32);

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

LABEL_123:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v92.n128_f64[0] = HomeFilter.Builder.init()();
    v21 = (*(*v93 + 664))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v92);
LABEL_133:
    v105 = v21;
LABEL_137:

    v91 = (*(*v105 + 760))(v109);
    goto LABEL_138;
  }

  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = sub_2529DA828();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_127;
  }

  v5 = sub_252E378C4();
  if (!v5)
  {
LABEL_127:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v98.n128_f64[0] = HomeFilter.Builder.init()();
    v100 = (*(*v99 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v98);

    v97 = (*(*v100 + 592))(5);
    goto LABEL_136;
  }

LABEL_6:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    if (sub_252E32E54())
    {
      break;
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_127;
    }
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v57 = v56;
  v58 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v59 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v60 = (*(*v57 + 576))(v58, v59);

  v54 = (*(*v60 + 592))(5);

  v61 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
LABEL_101:
  v67 = v61;
  if (!v67)
  {
LABEL_112:
    v72 = 0;
    goto LABEL_113;
  }

  v68 = type metadata accessor for Home();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_2529E65BC(v67);
  v67 = *(v71 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v72 = *(v71 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
LABEL_110:

LABEL_113:
  v83 = (*(*v54 + 632))(v67, v72);

LABEL_114:
  v91 = (*(*v83 + 760))(v84);

LABEL_138:

  return v91;
}

uint64_t sub_252969660()
{
  sub_252E37EC4();
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252969738()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529697FC()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_2529698AC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25296996C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25296A608();
  *a2 = result;
  return result;
}

void sub_25296999C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000252E66720;
  }

  if (*v1)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_252969A1C()
{
  v1 = 0x696669746E656469;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x7954797469746E65;
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

uint64_t sub_252969A98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25296A608();
  *a1 = result;
  return result;
}

uint64_t sub_252969ACC(uint64_t a1)
{
  v2 = sub_252950A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252969B08(uint64_t a1)
{
  v2 = sub_252950A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252969B44()
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](0);
  return sub_252E37F14();
}

uint64_t sub_252969B88()
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](0);
  return sub_252E37F14();
}

uint64_t Entity.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Entity.init(from:)(a1);
  return v5;
}

uint64_t _s22HomeAutomationInternal6EntityC4nameSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  return v1;
}

uint64_t Entity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_252969D2C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252969DF8()
{
  v1 = *v0;
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  return sub_252E37044();
}

uint64_t sub_252969EB8()
{
  sub_252E37EC4();
  v1 = *v0;
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252969F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_252E32E54() & 1) == 0 || *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  return sub_252E37DB4();
}

uint64_t sub_25296A080@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_252E32E54() & 1) == 0 || *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  return sub_252E37DB4();
}

uint64_t sub_25296A1D4()
{
  result = sub_252E32E84();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeltaRoleSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeltaRoleSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25296A504()
{
  result = qword_27F540690;
  if (!qword_27F540690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540690);
  }

  return result;
}

unint64_t sub_25296A55C()
{
  result = qword_27F540698;
  if (!qword_27F540698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540698);
  }

  return result;
}

unint64_t sub_25296A5B4()
{
  result = qword_27F5406A0;
  if (!qword_27F5406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406A0);
  }

  return result;
}

uint64_t sub_25296A608()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25296A654(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25296A6D0()
{
  result = qword_27F5406A8;
  if (!qword_27F5406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406A8);
  }

  return result;
}

HomeAutomationInternal::RestrictedGuestCheckFlow::RestrictedGuestCheckFlowExitValue_optional __swiftcall RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue.rawValue.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD00000000000002DLL;
  v4 = 0xD00000000000002FLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_25296A860()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

unint64_t sub_25296A950@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "assistantIdentifier";
  v5 = "proceedAsNonRestrictedUser";
  v6 = 0xD00000000000002DLL;
  v7 = "estrictedGuestUserDueToRemote";
  v8 = 0xD00000000000002FLL;
  result = 0xD00000000000001CLL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001CLL;
    v7 = "estrictedGuestUserDueToSchedule";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "ueToNoTargetedHome";
  if (v3 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v10 = "unableToProceedAtAll";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000022;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_25296AA00@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DC0);
  BYTE8(v5) = 0;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6BAA0);
  *&v5 = *(v1 + 528);
  sub_252E37AE4();
  sub_252CC3D90(*(&v5 + 1), 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  *a1 = *(v1 + 528);
  return result;
}

uint64_t sub_25296AB2C(void *__src, void *a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DC0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v14 = 0xD000000000000016;
  v15 = 0x8000000252E6BD50;
  memcpy(v13, __src, sizeof(v13));
  v7 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(v14, v15, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000013;
  v13[1] = 0x8000000252E6BD70;
  v8 = [a2 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC3D90(v13[0], v13[1], 0xD00000000000007FLL, 0x8000000252E6BAD0);

  memcpy((v3 + 16), __dst, 0x1F8uLL);
  *(v3 + 520) = a2;
  *(v3 + 528) = 1;
  return v3;
}

uint64_t sub_25296AD24()
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544DC0);
  sub_252E34104();
  sub_25296BF38(&qword_27F5406B0, 255, MEMORY[0x277D5C118]);
  v1 = sub_252E37D94();
  MEMORY[0x2530AD570](v1);

  sub_252CC3D90(0x203A7475706E69, 0xE700000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  return 1;
}

uint64_t sub_25296AE4C()
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544DC0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E6BB50, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  type metadata accessor for RestrictedGuestCheckFlow();
  sub_25296BF38(&qword_27F5406B8, v1, type metadata accessor for RestrictedGuestCheckFlow);
  return sub_252E33614();
}

uint64_t sub_25296AF60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E36AD4();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25296B02C, 0, 0);
}

uint64_t sub_25296B02C()
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(v0[9], qword_27F544DC0);
  sub_252CC3D90(0x2065747563657865, 0xED0000636E797361, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), (v0 + 2));

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 168))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v5 & 1) == 0)
  {
    v11 = v0[7];
    v7 = v0[8];
    v9 = "execute deferred to async";
    v10 = 0xD000000000000018;
    goto LABEL_7;
  }

  v6 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0();
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[7];
    v9 = " is within access schedule";
    v10 = 0xD00000000000004ALL;
LABEL_7:
    sub_252CC3D90(v10, v9 | 0x8000000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v7 + 528) = 2;
LABEL_8:
    sub_252E33B24();
LABEL_9:
    v13 = v0[11];
    v12 = v0[12];

    v14 = v0[1];

    return v14();
  }

  v16 = *(v7 + 520);
  v17 = sub_25296BF80(v16);
  v0[13] = v17;

  if (!v17)
  {
    v41 = v0[7];
    v42 = v0[8];
    sub_252CC3D90(0xD000000000000018, 0x8000000252E6BB90, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v42 + 528) = 0;
    goto LABEL_8;
  }

  v18 = v0[10];
  v59 = v0[9];
  v60 = v0[12];
  v19 = [v17 currentUser];
  v0[14] = v19;
  v20 = [v17 homeAccessControlForUser_];
  v0[15] = v20;
  v21 = [v17 description];
  v61 = v17;
  v22 = sub_252E36F34();
  v24 = v23;

  MEMORY[0x2530AD570](v22, v24);

  sub_252CC3D90(0x203A656D6F68, 0xE600000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v58 = v19;
  v25 = [v19 description];
  v26 = sub_252E36F34();
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  sub_252CC3D90(0x203A72657375, 0xE600000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  sub_252E379F4();

  v29 = [v20 description];
  v30 = sub_252E36F34();
  v32 = v31;

  MEMORY[0x2530AD570](v30, v32);

  sub_252CC3D90(0x6F43737365636361, 0xEF203A6C6F72746ELL, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v33 = v20;
  v34 = [v20 isRestrictedGuest];
  v57 = *(v18 + 16);
  v57(v60, v1, v59);
  sub_252E379F4();

  if (v34)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v35, v36);

  sub_252CC3D90(0xD000000000000013, 0x8000000252E6BBB0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v37 = *(v18 + 8);
  v37(v60, v59);
  if ((v34 & 1) == 0)
  {
    v43 = v0[7];
    *(v0[8] + 528) = 2;
    sub_252E33B24();

    goto LABEL_25;
  }

  v38 = [v61 homeLocationStatus];
  sub_252E379F4();

  if (v38 <= 1)
  {
    if (v38 == 1)
    {
      v39 = 0xE600000000000000;
      v40 = 0x656D6F487461;
      goto LABEL_31;
    }

LABEL_29:
    v39 = 0xE700000000000000;
    v40 = 0x6E776F6E6B6E75;
    goto LABEL_31;
  }

  if (v38 != 2)
  {
    if (v38 == 3)
    {
      v39 = 0xEA0000000000656DLL;
      v40 = 0x6F4879627261656ELL;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v39 = 0xE400000000000000;
  v40 = 2036430689;
LABEL_31:
  MEMORY[0x2530AD570](v40, v39);

  sub_252CC3D90(0xD000000000000014, 0x8000000252E6BBD0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  if ((v38 | 2) != 2)
  {
    v47 = v0[11];
    v48 = v0[9];
    v49 = v33;
    v50 = [v33 isRestrictedGuestInAllowedPeriod];
    v57(v47, v1, v48);
    sub_252E379F4();

    if (v50)
    {
      v51 = 1702195828;
    }

    else
    {
      v51 = 0x65736C6166;
    }

    v52 = v37;
    if (v50)
    {
      v53 = 0xE400000000000000;
    }

    else
    {
      v53 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v51, v53);

    sub_252CC3D90(0xD000000000000022, 0x8000000252E6BBF0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

    v52(v47, v48);
    v54 = v0[8];
    if ((v50 & 1) == 0)
    {
      *(v54 + 528) = 4;
      v56 = swift_task_alloc();
      v0[17] = v56;
      *v56 = v0;
      v56[1] = sub_25296BA28;
      v45 = v0[7];
      v46 = v61;
      goto LABEL_33;
    }

    v55 = v0[7];
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E6BC20, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v54 + 528) = 5;
    sub_252E33B24();

LABEL_25:
    goto LABEL_9;
  }

  *(v0[8] + 528) = 3;
  v44 = swift_task_alloc();
  v0[16] = v44;
  *v44 = v0;
  v44[1] = sub_25296B8B0;
  v45 = v0[7];
  v46 = v61;
LABEL_33:

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingResponse(forHome:)(v45, v46);
}

uint64_t sub_25296B8B0()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25296B9AC, 0, 0);
}

uint64_t sub_25296B9AC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25296BA28()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25296C3F4, 0, 0);
}

uint64_t RestrictedGuestCheckFlow.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return v0;
}

uint64_t RestrictedGuestCheckFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_25296BBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25296BC70;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_25296BC70(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25296BD6C()
{
  v1 = *v0;
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DC0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E6BB50, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  type metadata accessor for RestrictedGuestCheckFlow();
  return sub_252E33614();
}

uint64_t sub_25296BE54(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_25296AF60(a1);
}

uint64_t sub_25296BF38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_25296BF80(void *a1)
{
  v1 = [a1 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v4 = sub_252DD5A58(v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_252C758E0(v4);

  v6 = sub_252DD6238(v5);

  if (!v6)
  {
    type metadata accessor for HomeStore();
    v7 = static HomeStore.shared.getter();
    v6 = sub_2529D9114();

    if (!v6)
    {
      v8 = static HomeStore.shared.getter();
      v6 = sub_2529F1BFC();

      if (!v6)
      {
        return 0;
      }
    }
  }

  v9 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v9;
}

unint64_t sub_25296C0A8()
{
  result = qword_27F5406C0;
  if (!qword_27F5406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406C0);
  }

  return result;
}

uint64_t dispatch thunk of RestrictedGuestCheckFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for HomeAppEntityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HomeAppEntityType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25296C3F8()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_25296C454()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_25296C49C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25296C514(uint64_t a1, uint64_t a2)
{
  v4 = sub_25296D814();
  v5 = sub_25296D868();
  v6 = sub_25296D8BC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t sub_25296C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v47[1] = a1;
  v6 = sub_252E34AB4();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406E0, &qword_252E3D778);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47[0] = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540598, &unk_252E3D780);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v47 - v18;
  v48 = sub_252E349A4();
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v48);
  v54 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25296D240(a3, v19);
  v23 = *(a4 + 16);
  if (v23)
  {
    v24 = (a4 + 32);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v26 = *v24++;
      v27 = sub_252A9AD58(v26);
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2529F7A80(0, *(v25 + 2) + 1, 1, v25);
      }

      v31 = *(v25 + 2);
      v30 = *(v25 + 3);
      if (v31 >= v30 >> 1)
      {
        v25 = sub_2529F7A80((v30 > 1), v31 + 1, 1, v25);
      }

      *(v25 + 2) = v31 + 1;
      v32 = &v25[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
      --v23;
    }

    while (v23);
  }

  v33 = sub_252E34984();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  v34 = sub_252E34914();
  (*(*(v34 - 8) + 56))(v47[0], 1, 1, v34);
  v35 = v54;
  sub_252E34954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540240, &unk_252E3C070);
  v36 = *(v20 + 72);
  v37 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_252E3C290;
  v39 = v48;
  (*(v20 + 16))(v38 + v37, v35, v48);

  v40 = v50;
  sub_252E34A94();
  v41 = v53;
  swift_beginAccess();
  v42 = *(v41 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 16) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_2529F823C(0, v42[2] + 1, 1, v42);
    *(v41 + 16) = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_2529F823C(v44 > 1, v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  (*(v51 + 32))(v42 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v45, v40, v52);
  *(v41 + 16) = v42;
  swift_endAccess();
  return (*(v20 + 8))(v54, v39);
}

uint64_t sub_25296CB00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v22[1] = a4;
  v23 = a3;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v22 - v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *MEMORY[0x277D5E5C8];
    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *v24;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = *v23;
      v16 = sub_252E34604();
      v18 = v17;
      *v8 = v12;
      v8[1] = v13;
      v19 = sub_252E34944();
      v20 = *(v19 - 8);
      (*(v20 + 104))(v8, v10, v19);
      (*(v20 + 56))(v8, 0, 1, v19);

      sub_25296C588(v16, v18, v8, MEMORY[0x277D84F90]);

      sub_25296D1D8(v8);
      v11 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_25296CCC4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406C8, "&}\a");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406D0, "&}\a");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v37 - v6;
  v7 = sub_252E34C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406D8, &qword_252E3D770);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_252E345F4();
  v21 = sub_252E34604();
  v23 = v22;
  sub_252E34924();
  v24 = *MEMORY[0x277D5E5D8];
  v25 = sub_252E34944();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v27 = v21;
  v28 = v39;
  sub_25296C588(v27, v23, v17, MEMORY[0x277D84F90]);

  sub_25296D1D8(v17);
  swift_beginAccess();
  v29 = *(v28 + 16);

  sub_252B4F270(v30);

  sub_252E34C34();
  v31 = v38;
  sub_252E34C04();
  v43[3] = v7;
  v43[4] = MEMORY[0x277D5E728];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  (*(v8 + 16))(boxed_opaque_existential_0, v31, v7);
  v33 = sub_252E35844();
  (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
  v34 = sub_252E34CA4();
  (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
  sub_252E358A4();
  v35 = *(v8 + 8);
  v35(v31, v7);
  return (v35)(v13, v7);
}

uint64_t sub_25296D174()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_25296D1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25296D240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25296D2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    if (qword_27F53F7A0 != -1)
    {
      swift_once();
    }

    v8 = *MEMORY[0x277D5E5D8];
    do
    {
      v9 = *v7++;
      v10 = sub_252E34604();
      v12 = v11;
      sub_252E34924();
      v13 = sub_252E34944();
      v14 = *(v13 - 8);
      (*(v14 + 104))(v5, v8, v13);
      (*(v14 + 56))(v5, 0, 1, v13);
      sub_25296C588(v10, v12, v5, MEMORY[0x277D84F90]);

      sub_25296D1D8(v5);
      --v6;
    }

    while (v6);
  }

  return v16[1];
}

uint64_t sub_25296D4D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    if (qword_27F53F810 != -1)
    {
      swift_once();
    }

    v10 = *MEMORY[0x277D5E5D8];
    do
    {
      v11 = *v9++;
      v12 = sub_252E34604();
      v14 = v13;
      v18[15] = v11;
      AccessoryTypeSemantic.rawValue.getter();
      sub_252E34924();
      v15 = sub_252E34944();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v7, v10, v15);
      (*(v16 + 56))(v7, 0, 1, v15);
      sub_25296C588(v12, v14, v7, MEMORY[0x277D84F90]);

      sub_25296D1D8(v7);
      --v8;
    }

    while (v8);
  }

  return v2;
}

unint64_t sub_25296D6A8()
{
  result = qword_27F5406E8;
  if (!qword_27F5406E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406E8);
  }

  return result;
}

unint64_t sub_25296D700()
{
  result = qword_27F5406F0;
  if (!qword_27F5406F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5406F8, &qword_252E3D7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5406F0);
  }

  return result;
}

unint64_t sub_25296D768()
{
  result = qword_27F540700;
  if (!qword_27F540700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540700);
  }

  return result;
}

unint64_t sub_25296D7C0()
{
  result = qword_27F540708;
  if (!qword_27F540708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540708);
  }

  return result;
}

unint64_t sub_25296D814()
{
  result = qword_27F540710;
  if (!qword_27F540710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540710);
  }

  return result;
}

unint64_t sub_25296D868()
{
  result = qword_27F540718;
  if (!qword_27F540718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540718);
  }

  return result;
}

unint64_t sub_25296D8BC()
{
  result = qword_27F540720;
  if (!qword_27F540720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540720);
  }

  return result;
}

uint64_t sub_25296D934(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 28 || (sub_25296DA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_25296DD0C(a1, 55);
}

uint64_t sub_25296D9E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChineseGetPM25Handler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_25296DA1C()
{
  v0 = sub_252E32EE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E32F04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v22 - v12;
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v14 + 16), v23);

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_252E33844();
  sub_252E32EF4();
  (*(v6 + 8))(v9, v5);
  sub_252E32ED4();
  (*(v1 + 8))(v4, v0);
  v15 = sub_252E32EB4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_25296E4D4(v13);
    v17 = 0;
  }

  else
  {
    v18 = sub_252E32EA4();
    v20 = v19;
    (*(v16 + 8))(v13, v15);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v23[0] = v18;
    v23[1] = v20;
    v22[1] = 20035;
    v22[2] = 0xE200000000000000;
    sub_252947DBC();
    v17 = sub_252E377C4();
  }

  return v17 & 1;
}

uint64_t sub_25296DD0C(void *a1, uint64_t a2)
{
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  v11 = HomeStore.accessories(matching:supporting:)(v6, v10);
  v13 = v12;

  if (v13)
  {
    if (qword_27F53F488 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_6;
  }

  if (v11 >> 62)
  {
    v15 = sub_252E378C4();
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_25:
    sub_252929F10(v11, 0);
    return 0;
  }

  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_9:

  v16 = 0;
  while ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v16, v11);
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_28;
    }

LABEL_16:
    v19 = [a1 filters];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for HomeFilter();
      v21 = sub_252E37264();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = a2;
    v23 = sub_252D51310(v21);

    v24 = sub_252C75958(v23);

    v25 = sub_252D51460(inited);
    swift_setDeallocating();
    v26 = sub_252C75958(v25);

    v27 = sub_2529F9A94(v26, v24);

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = sub_252E378C4();
    }

    else
    {
      v28 = *(v27 + 16);
    }

    if (v28)
    {
      sub_252929F10(v11, 0);
      sub_252929F10(v11, 0);
      return 1;
    }

    ++v16;
    if (v17 == v15)
    {
      sub_252929F10(v11, 0);
      goto LABEL_25;
    }
  }

  if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v18 = *(v11 + 8 * v16 + 32);

  v17 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_6:
  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544C40);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E6BEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6BE60, 0xD00000000000002ALL, 0x8000000252E6BF20, 34);
  sub_252929F10(v11, 1);

  return 0;
}

id sub_25296E16C(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v7[3] = 55;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v8, v2);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6BE20);
  if (v7)
  {
    v9 = v7[3];
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v20 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v10 = sub_252E36F94();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v21, v22, 0xD00000000000008ELL, 0x8000000252E6BE60);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v11 = sub_252D6CB58();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 filters];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 time];
  v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v16 setUserTask_];
  if (v14)
  {
    type metadata accessor for HomeFilter();
    v17 = sub_252E37254();
  }

  else
  {
    v17 = 0;
  }

  [v16 setFilters_];

  [v16 setTime_];

  return v16;
}

uint64_t sub_25296E4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25296E5EC()
{
  result = qword_27F540738;
  if (!qword_27F540738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540738);
  }

  return result;
}

uint64_t sub_25296E640()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
  v10 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v10 || unk_2864A0BF0 == v10)
  {
  }

  else
  {
    v12 = sub_252E37DB4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + 32))
  {
    return 0;
  }

  v14 = *(v1 + 24);
  sub_252956C1C(v1 + v9, v8);
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v8, 1, v15) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    goto LABEL_12;
  }

  v33 = v14;
  sub_252E36304();
  (*(v16 + 8))(v8, v15);
  v18 = sub_252E36FA4();
  v20 = v19;

  if (v18 == 0x737569736C6563 && v20 == 0xE700000000000000)
  {
LABEL_25:

    goto LABEL_26;
  }

  v22 = sub_252E37DB4();

  if ((v22 & 1) == 0)
  {
LABEL_12:
    sub_252956C1C(v1 + v9, v6);
    if (v17(v6, 1, v15) == 1)
    {
      sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
      goto LABEL_26;
    }

    sub_252E36304();
    (*(v16 + 8))(v6, v15);
    v23 = sub_252E36FA4();
    v25 = v24;

    if (v23 != 99 || v25 != 0xE100000000000000)
    {
      sub_252E37DB4();

      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  v27 = sub_252E360C4();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_252E360B4();
  sub_252E36194();

  sub_252E36184();

  v13 = sub_252E36174();

  swift_beginAccess();
  v30 = *(v1 + 16);
  if (v30)
  {
    v31 = v30;
    sub_252E36144();
  }

  return v13;
}

uint64_t sub_25296EAA8(void *a1)
{
  v3 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v3 || unk_2864A0BF0 == v3)
  {
  }

  else
  {
    v5 = sub_252E37DB4();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = (v1 + *a1);
  if (v6[8] == 1)
  {
    return 0;
  }

  return *v6;
}

uint64_t sub_25296EBC4@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v33 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  if (sub_25296E640())
  {
    sub_252E360D4();

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v23 = *(v13 + 32);
      v23(v22, v11, v12);
      v24 = v34;
      v23(v34, v22, v12);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
  if (sub_25296F030())
  {
    sub_252E361C4();

    if ((*(v13 + 48))(v9, 1, v12) != 1)
    {
      v25 = *(v13 + 32);
      v25(v20, v9, v12);
      v24 = v34;
      v25(v34, v20, v12);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
  if (sub_25296F198())
  {
    sub_252E36284();

    if ((*(v13 + 48))(v6, 1, v12) != 1)
    {
      v26 = *(v13 + 32);
      v26(v17, v6, v12);
      v24 = v34;
      v26(v34, v17, v12);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v13 + 56))(v6, 1, 1, v12);
  }

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  if (*(v1 + 32))
  {
    v27 = 1;
    v24 = v34;
    return (*(v13 + 56))(v24, v27, 1, v12);
  }

  v29 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D839F8];
  *(v30 + 16) = xmmword_252E3C290;
  v32 = MEMORY[0x277D83A80];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v29;
  sub_252E36F64();
  v24 = v34;
  sub_252E37024();

LABEL_13:
  v27 = 0;
  return (*(v13 + 56))(v24, v27, 1, v12);
}

uint64_t sub_25296F030()
{
  v1 = v0;
  if (sub_25296F310() == 1)
  {
  }

  else
  {
    v2 = sub_252E37DB4();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_252E361B4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_252E361A4();
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  sub_252E36134();

  v3 = sub_252E36124();

  swift_beginAccess();
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = v9;

    sub_252E360F4();
  }

  return v3;
}

uint64_t sub_25296F198()
{
  v1 = v0;
  v2 = sub_252A47810(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  v3 = qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2;
  if (v3 || v2 != 5)
  {
    v4 = sub_252E37DB4();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  v5 = sub_252E36274();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_252E36264();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_252E36254();

  v10 = sub_252E36244();

  swift_beginAccess();
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = v11;
    sub_252E36234();
  }

  return v10;
}

uint64_t sub_25296F310()
{
  result = sub_252A47810(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == result || unk_2864A0BF0 == result)
  {
    return 0;
  }

  if (result != 1)
  {
    if (result == 5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_25296F370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
  v12 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v12 || unk_2864A0BF0 == v12)
  {

    goto LABEL_8;
  }

  v15 = sub_252E37DB4();

  if (v15)
  {
LABEL_8:
    if (*(v2 + 32))
    {
      goto LABEL_9;
    }

    v18 = *(v2 + 24);
    if ((~*&v18 & 0x7FF0000000000000) != 0)
    {
      v19 = *(v2 + 24);
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          v41 = *(v2 + 24);
          v42 = v18;
          v40 = sub_252E37D94();
          v21 = v20;
          sub_252956C1C(v2 + v11, v10);
          v22 = sub_252E36324();
          v23 = *(v22 - 8);
          v24 = *(v23 + 48);
          if (v24(v10, 1, v22) == 1)
          {
            sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            v38[1] = v21;
            v39 = a1;
            sub_252E36304();
            (*(v23 + 8))(v10, v22);
            v25 = sub_252E36FA4();
            v27 = v26;

            if (v25 == 0x737569736C6563 && v27 == 0xE700000000000000)
            {

              a1 = v39;
LABEL_31:
              v34 = v41;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
              v35 = swift_allocObject();
              v36 = MEMORY[0x277D839F8];
              *(v35 + 16) = xmmword_252E3C290;
              v37 = MEMORY[0x277D83A80];
              *(v35 + 56) = v36;
              *(v35 + 64) = v37;
              *(v35 + 32) = v34;
              sub_252E36F64();
              goto LABEL_32;
            }

            v29 = sub_252E37DB4();

            a1 = v39;
            if (v29)
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          sub_252956C1C(v2 + v11, v8);
          if (v24(v8, 1, v22) == 1)
          {
            sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
LABEL_32:
            sub_252E37024();

            return (*(v23 + 56))(a1, 0, 1, v22);
          }

          sub_252E36304();
          (*(v23 + 8))(v8, v22);
          v30 = sub_252E36FA4();
          v32 = v31;

          if (v30 == 99 && v32 == 0xE100000000000000)
          {
          }

          else
          {
            v33 = sub_252E37DB4();

            if ((v33 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_30;
        }

LABEL_36:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_9:
  v16 = sub_252E36324();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}