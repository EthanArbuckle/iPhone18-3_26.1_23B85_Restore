uint64_t sub_232BDF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56[8] = a2;
  v56[9] = a3;
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v56 - v5;
  v7 = sub_232CE8E10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232CE8D50();
  v13 = sub_232CE8DA0();
  (*(v8 + 8))(v11, v7);
  [v12 setLocale_];

  sub_232CE8EC0();
  v14 = sub_232CE8F00();
  v15 = 0;
  if (sub_232B12480(v6, 1, v14) != 1)
  {
    v15 = sub_232CE8ED0();
    (*(*(v14 - 8) + 8))(v6, v14);
  }

  [v12 setTimeZone_];

  v16 = sub_232CE9D20();
  [v12 setDateFormat_];

  v17 = sub_232CE8CD0();
  v18 = [v12 stringFromDate_];

  v19 = sub_232CE9D50();
  v21 = v20;

  v22 = sub_232B77D44(2uLL, v19, v21);
  v56[4] = MEMORY[0x238391B80](v22);
  v56[7] = v23;

  v24 = sub_232CE9D20();
  [v12 &off_2789A82E0 + 3];

  v25 = sub_232CE8CD0();
  v26 = [v12 &selRef:v25 initWithDDScannerResult:?];

  v27 = sub_232CE9D50();
  v29 = v28;

  v56[3] = sub_232BDF458(v27, v29);
  v56[6] = v30;
  v31 = sub_232CE9D20();
  [v12 &off_2789A82E0 + 3];

  v32 = sub_232CE8CD0();
  v33 = [v12 &selRef:v32 initWithDDScannerResult:?];

  v34 = sub_232CE9D50();
  v36 = v35;

  v56[2] = sub_232BDF458(v34, v36);
  v37 = sub_232CE9D20();
  [v12 setDateFormat_];

  v38 = sub_232CE8CD0();
  v39 = [v12 stringFromDate_];

  v56[1] = sub_232CE9D50();
  v56[5] = v40;

  sub_232B714A0();
  LOBYTE(v39) = v41;

  if (v39)
  {
    v42 = 1;
  }

  else
  {
    sub_232B714A0();
    v42 = v43;
  }

  sub_232B714A0();
  v45 = v44;

  if (v45)
  {
    v46 = 1;
  }

  else
  {
    sub_232B714A0();
    v46 = v47;
  }

  sub_232B714A0();
  v49 = v48;

  if (v49)
  {
  }

  else
  {
    sub_232B714A0();
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      v56[12] = sub_232CE9DD0();
      v56[13] = v53;
      v56[10] = sub_232CE9DD0();
      v56[11] = v54;
      sub_232B48080();
      v52 = sub_232CEA3F0();

      return v42 & v46 & v52 & 1;
    }
  }

  v52 = 1;
  return v42 & v46 & v52 & 1;
}

uint64_t sub_232BDFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v60 = a1;
  v59 = sub_232CE8D10();
  v55 = *(v59 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232CE9A30();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  sub_232B6FF88();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = sub_232B7BB24(v23, a4, v56);
    v30 = v29;
    if (v28)
    {
      sub_232B34D3C(v23, v21, &qword_27DDC6A80, &qword_232CF6D30);
      v31 = v59;
      if (sub_232B12480(v21, 1, v59) == 1)
      {

        sub_232BA4D50(v21, &qword_27DDC6A80, &qword_232CF6D30);
        v32 = v31;
      }

      else
      {
        v44 = v54;
        v43 = v55;
        v45 = *(v55 + 32);
        v56 = v55 + 32;
        v52 = v45;
        v45(v54, v21, v31);
        v32 = v31;
        if (v30)
        {
          v46 = sub_232BDF780(v44, v26, v27);

          if (v46)
          {
            sub_232BA4D50(v23, &qword_27DDC6A80, &qword_232CF6D30);
            v38 = v60;
            v52(v60, v44, v32);
            v37 = 0;
            v36 = 1;
            goto LABEL_13;
          }

          v47 = v53;
          sub_232CE9A20();
          v48 = sub_232CE9A00();
          v49 = sub_232CEA1A0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_232B02000, v48, v49, "DUAdapterPostProcessing: No extraction for isoDate since isoDate is not grounded in stringDate", v50, 2u);
            MEMORY[0x238393870](v50, -1, -1);
          }

          (*(v57 + 8))(v47, v58);
          (*(v55 + 8))(v44, v32);
          goto LABEL_12;
        }

        (*(v43 + 8))(v44, v31);
      }
    }

    else
    {

      v32 = v59;
    }

    sub_232CE9A20();
    v39 = sub_232CE9A00();
    v40 = sub_232CEA1A0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No extraction for isoDate since isoDate is not valid.", v41, 2u);
      MEMORY[0x238393870](v41, -1, -1);
    }

    (*(v57 + 8))(v12, v58);
LABEL_12:
    sub_232BA4D50(v23, &qword_27DDC6A80, &qword_232CF6D30);
    v36 = 0;
    v37 = 1;
    v38 = v60;
    goto LABEL_13;
  }

  sub_232CE9A20();
  v33 = sub_232CE9A00();
  v34 = sub_232CEA1A0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_232B02000, v33, v34, "DUAdapterPostProcessing: No extraction for isoDate since stringDate is not grounded in sourceText.", v35, 2u);
    MEMORY[0x238393870](v35, -1, -1);
  }

  (*(v57 + 8))(v16, v58);
  v36 = 0;
  v37 = 1;
  v32 = v59;
  v38 = v60;
LABEL_13:
  sub_232B12504(v38, v37, 1, v32);
  return v36;
}

uint64_t sub_232BE02E0(uint64_t a1)
{
  v2 = sub_232CE8D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v10;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v19 = &v42 - v18;
  v20 = *(a1 + 16);
  v47 = v3;
  if (v20)
  {
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v46 = v7;
    v22 = *(v17 + 72);
    v23 = (v3 + 32);
    v24 = MEMORY[0x277D84F90];
    v44 = v23;
    do
    {
      sub_232B34D3C(v21, v19, &qword_27DDC6A80, &qword_232CF6D30);
      sub_232BA4BBC(v19, v15);
      if (sub_232B12480(v15, 1, v2) == 1)
      {
        result = sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
      }

      else
      {
        v25 = *v23;
        (*v23)(v46, v15, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v24 + 16);
          sub_232B36664();
          v24 = v29;
        }

        v26 = *(v24 + 16);
        if (v26 >= *(v24 + 24) >> 1)
        {
          sub_232B36664();
          v24 = v30;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26;
        v23 = v44;
        result = v25(v27, v46, v2);
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v46 = *(v24 + 16);
  if (v46)
  {
    v44 = (v47 + 8);
    v31 = 1;
    v32 = v43;
    do
    {
      v33 = v46 == v31;
      if (v46 == v31)
      {
        break;
      }

      v34 = *(v24 + 16);
      if (v31 - 1 >= v34)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v35 = v24 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v36 = *(v47 + 72);
      v37 = *(v47 + 16);
      result = v37(v32, v35 + v36 * (v31 - 1), v2);
      if (v31 >= v34)
      {
        goto LABEL_23;
      }

      v38 = v35 + v36 * v31;
      v39 = v45;
      v37(v45, v38, v2);
      sub_232BEA068(&qword_27DDC7518, MEMORY[0x277CC9578]);
      v40 = sub_232CE9CE0();
      v41 = *v44;
      (*v44)(v39, v2);
      result = v41(v32, v2);
      ++v31;
    }

    while ((v40 & 1) != 0);
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

uint64_t sub_232BE0738()
{
  v0 = sub_232CEA670();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232BE0784(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x65746174735F6469;
      break;
    case 3:
      result = 0x70737361705F6469;
      break;
    case 4:
      result = 0x6E656572675F6469;
      break;
    case 5:
      result = 0x6E73735F6469;
      break;
    case 6:
      result = 0x6F6974616E5F6469;
      break;
    case 7:
      result = 0x65647574735F6469;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = sub_232BA56F8();
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x636E617275736E69;
      break;
    case 12:
      result = 0x68737265626D656DLL;
      break;
    case 13:
      result = 0x5F7469736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232BE0984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232BE0738();
  *a2 = result;
  return result;
}

uint64_t sub_232BE09B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232BE0784(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_232BE09F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v148 = v8;
  v149 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v147 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v13 = sub_232B27FBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  v157 = v18 - v19;
  v21 = MEMORY[0x28223BE20](v20);
  v156 = v143 - v22;
  MEMORY[0x28223BE20](v21);
  v155 = v143 - v23;
  v24 = *MEMORY[0x277D064F8];
  v25 = *v2;
  v26 = v2[1];
  sub_232B6FF88();
  if (v27)
  {
    v28 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v158 = v28;
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
    sub_232BEA524();
    if (v30)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v31, v32);
      sub_232BEA364();
    }
  }

  v33 = *MEMORY[0x277D064F0];
  v34 = v3[2];
  v35 = v3[3];
  sub_232BEA404();
  if (v36)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v37)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v38, v39);
      sub_232BEA364();
    }
  }

  v40 = *MEMORY[0x277D064E8];
  v41 = v3[4];
  v42 = v3[5];
  sub_232BEA404();
  if (v43)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v44)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v45, v46);
      sub_232BEA364();
    }
  }

  v47 = *MEMORY[0x277D06500];
  v48 = v3[6];
  v49 = v3[7];
  sub_232BEA404();
  if (v50)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v51)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v52, v53);
      sub_232BEA364();
    }
  }

  v54 = *MEMORY[0x277D06640];
  v55 = v3[8];
  v56 = v3[9];
  sub_232BEA404();
  if (v57)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v58)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v59, v60);
      sub_232BEA364();
    }
  }

  v61 = *MEMORY[0x277D06698];
  v62 = v3[12];
  v63 = v3[13];
  sub_232BEA404();
  if (v64)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v65)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v66, v67);
      sub_232BEA364();
    }
  }

  v68 = *MEMORY[0x277D06530];
  v69 = v3[14];
  v70 = v3[15];
  sub_232BEA404();
  if (v71)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v72)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v73, v74);
      sub_232BEA364();
    }
  }

  v75 = v155;
  v144 = sub_232BDFD2C(v155, v3[28], v3[29], v3[30], v3[31]);
  v143[1] = v76;
  v152 = v77;
  v78 = v156;
  v145 = sub_232BDFD2C(v156, v3[18], v3[19], v3[20], v3[21]);
  v143[2] = v79;
  v151 = v80;
  v81 = v3[22];
  v82 = v3[23];
  v83 = v3[24];
  v84 = v3[25];
  v85 = v157;
  v153 = a1;
  v154 = a2;
  v146 = sub_232BDFD2C(v157, v81, v82, v83, v84);
  v143[3] = v86;
  v150 = v87;
  sub_232B124A8(&qword_27DDC7900, &unk_232CFB560);
  v88 = *(v15 + 72);
  v89 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_232CF8180;
  v91 = v90 + v89;
  sub_232B34D3C(v75, v91, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B34D3C(v78, v91 + v88, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B34D3C(v85, v91 + 2 * v88, &qword_27DDC6A80, &qword_232CF6D30);
  LOBYTE(v91) = sub_232BE02E0(v90);
  swift_setDeallocating();
  sub_232C78808();
  if (v91)
  {
    v92 = v151;
    v93 = v150;
    if (v144)
    {
      if (v152)
      {
        v94 = *MEMORY[0x277D064A8];
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232B1FCE4();
        v29 = v158;
      }
    }

    else
    {
    }

    if (v145)
    {
      if (v92)
      {
        v99 = *MEMORY[0x277D06638];
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232B1FCE4();
        v29 = v158;
      }
    }

    else
    {
    }

    if (v146)
    {
      if (v93)
      {
        v100 = *MEMORY[0x277D06610];
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232BEA588();
        sub_232B1FCE4();
        v29 = v158;
      }
    }

    else
    {
    }
  }

  else
  {

    v95 = v147;
    sub_232CE9A20();
    v96 = sub_232CE9A00();
    v97 = sub_232CEA1A0();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_232B02000, v96, v97, "(DUPersonaIDAdapter): No extraction for dates not in chronological order.", v98, 2u);
      MEMORY[0x238393870](v98, -1, -1);
    }

    (*(v148 + 8))(v95, v149);
  }

  v101 = *MEMORY[0x277D067B0];
  v102 = v3[26];
  v103 = v3[27];
  sub_232BEA474();
  if (v104)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v105)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v106, v107);
      sub_232BEA364();
    }
  }

  v108 = *MEMORY[0x277D066D0];
  v109 = v3[32];
  v110 = v3[33];
  sub_232BEA474();
  if (v111)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v112)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v113, v114);
      sub_232BEA364();
    }
  }

  v115 = *MEMORY[0x277D06688];
  v116 = v3[34];
  v117 = v3[35];
  sub_232BEA474();
  if (v118)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    sub_232B1FCE4();
    v29 = v158;
  }

  else
  {
    sub_232BEA524();
    if (v119)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C();
      sub_232BEA0DC();
      sub_232BEA068(v120, v121);
      sub_232BEA364();
    }
  }

  v122 = v3[38];
  v123 = v3[39];
  sub_232BEA474();
  v124 = sub_232BA4E6C();
  v126 = v125;

  if (v126)
  {

    v127 = *MEMORY[0x277D06430];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BEA1F4();
LABEL_61:
    sub_232B1FCE4();
    v29 = v158;
    goto LABEL_62;
  }

  v124 = *MEMORY[0x277D06430];
  sub_232BEA474();
  if (v128)
  {
    sub_232BEA398();
    sub_232BEA1BC();
    goto LABEL_61;
  }

  sub_232BEA524();
  if (v140)
  {
    sub_232BEA3B4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BEA204();
    sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
    sub_232BEA27C();
    sub_232BEA348();
    sub_232BEA25C();
    sub_232BEA0DC();
    sub_232BEA068(v141, v142);
    sub_232BEA364();
  }

LABEL_62:
  sub_232BC2214(v29);
  sub_232BEA3B4();

  v129 = sub_232B8066C(v124);

  sub_232BEA588();
  sub_232BA4D50(v130, v131, v132);
  sub_232BEA588();
  sub_232BA4D50(v133, v134, v135);
  sub_232BEA588();
  sub_232BA4D50(v136, v137, v138);
  return v129;
}

void sub_232BE1658()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232CE98C0();
  if (v0)
  {
    v5 = sub_232CE98D0();
    sub_232BA5190(v5);
    (*(v6 + 8))(v2);
  }

  else
  {
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BEA5CC();
    sub_232CE98C0();
    sub_232BEA57C();
    v18 = v7;
    sub_232BA6F7C();
    sub_232BEA57C();
    v17 = v8;
    sub_232BA6F7C();
    sub_232BEA57C();
    v16 = v9;
    sub_232BA6F7C();
    sub_232BEA57C();
    v15 = v10;
    sub_232BA6F7C();
    sub_232BEA57C();
    v14 = v11;
    sub_232BEA5B8();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BEA458();
    sub_232BEA5B8();
    sub_232BEA53C();
    sub_232BEA458();
    sub_232BEA458();
    sub_232BEA53C();
    sub_232BEA53C();
    sub_232BEA458();
    sub_232BEA458();
    sub_232BA7040();
    sub_232BEA53C();
    v12 = sub_232CE98D0();
    sub_232BA5190(v12);
    (*(v13 + 8))(v2);
    __src[0] = v21;
    __src[1] = v22;
    v23 = v21;
    __src[2] = v21;
    __src[3] = v22;
    v24 = v22;
    v25 = v21;
    __src[4] = v21;
    __src[5] = v22;
    v26 = v22;
    v27 = 0;
    __src[6] = 0;
    __src[7] = v18;
    v28 = v18;
    v29 = 0;
    __src[8] = 0;
    __src[9] = v17;
    v30 = v17;
    v31 = 0;
    __src[10] = 0;
    __src[11] = v16;
    v32 = v16;
    v33 = 0;
    __src[12] = 0;
    __src[13] = v15;
    v34 = v15;
    v35 = 0;
    __src[14] = 0;
    __src[15] = v14;
    v36 = v14;
    v37 = v21;
    __src[16] = v21;
    __src[17] = v22;
    v38 = v22;
    v39 = v21;
    __src[18] = v21;
    __src[19] = v22;
    v40 = v22;
    v41 = v21;
    __src[20] = v21;
    __src[21] = v22;
    v42 = v22;
    v43 = v21;
    __src[22] = v21;
    __src[23] = v22;
    v44 = v22;
    v45 = v21;
    __src[24] = v21;
    __src[25] = v22;
    v46 = v22;
    v47 = v21;
    __src[26] = v21;
    __src[27] = v22;
    v48 = v22;
    v49 = v21;
    __src[28] = v21;
    __src[29] = v22;
    v50 = v22;
    v51 = v21;
    __src[30] = v21;
    __src[31] = v22;
    v52 = v22;
    v53 = v21;
    __src[32] = v21;
    __src[33] = v22;
    v54 = v22;
    v55 = v21;
    __src[34] = v21;
    __src[35] = v22;
    v56 = v22;
    __src[36] = v21;
    __src[37] = v22;
    v57 = v21;
    v58 = v22;
    v59 = v61;
    __src[38] = v61;
    __src[39] = v62;
    v60 = v62;
    sub_232BE9964(__src, v19);
    sub_232BE999C(&v21);
    memcpy(v4, __src, 0x140uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232BE25B4()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD4FE8);
  sub_232B135C4(v0, qword_27DDD4FE8);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CFAF80;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void *sub_232BE2A8C()
{
  v1 = v0;
  v2 = *MEMORY[0x277D064D0];
  v3 = *v0;
  v4 = v0[1];
  sub_232B70A14();
  if (v5)
  {
    v6 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v110 = v6;
    sub_232B1FCE4();
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
    sub_232BA658C();
    if (v8)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v9 = sub_232BA5828();
      sub_232BEA3E8(v9, v10, v11, v12, v13, v14, v15, v16, v109, v110);
      sub_232BA5744();
      sub_232BEA0DC();
      sub_232BEA068(v17, v18);
      sub_232BEA420();
    }
  }

  v19 = *MEMORY[0x277D067B0];
  v20 = v1[2];
  v21 = v1[3];
  sub_232BEA3CC();
  if (v22)
  {
    sub_232BEA43C();
    sub_232BEA1D8();
    sub_232B1FCE4();
    v7 = v110;
  }

  else
  {
    sub_232BA658C();
    if (v23)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v24 = sub_232BA5828();
      sub_232BEA3E8(v24, v25, v26, v27, v28, v29, v30, v31, v109, v110);
      sub_232BA5744();
      sub_232BEA0DC();
      sub_232BEA068(v32, v33);
      sub_232BEA420();
    }
  }

  v34 = v1[4];
  v35 = v1[5];
  sub_232B37C0C();
  sub_232BEA3CC();
  sub_232BA4E6C();
  v37 = v36;

  if (v37)
  {

    v38 = *MEMORY[0x277D06430];
    swift_isUniquelyReferenced_nonNull_native();
    v110 = v7;
LABEL_13:
    sub_232B1FCE4();
    v7 = v110;
    goto LABEL_14;
  }

  v39 = *MEMORY[0x277D06430];
  sub_232B37C0C();
  sub_232BEA3CC();
  if (v40)
  {
    sub_232BEA43C();
    sub_232BEA1D8();
    goto LABEL_13;
  }

  sub_232BA658C();
  if (v98)
  {
    sub_232BA5CA0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5538();
    sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
    v99 = sub_232BA5828();
    sub_232BEA3E8(v99, v100, v101, v102, v103, v104, v105, v106, v109, v110);
    sub_232BA5744();
    sub_232BEA0DC();
    sub_232BEA068(v107, v108);
    sub_232BEA420();
  }

LABEL_14:
  v41 = *MEMORY[0x277D064D8];
  v42 = v1[6];
  v43 = v1[7];
  sub_232BEA3CC();
  if (v44)
  {
    sub_232BEA43C();
    sub_232BEA1D8();
    sub_232B1FCE4();
    v7 = v110;
  }

  else
  {
    sub_232BA658C();
    if (v45)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v46 = sub_232BA5828();
      sub_232BEA3E8(v46, v47, v48, v49, v50, v51, v52, v53, v109, v110);
      sub_232BA5744();
      sub_232BEA0DC();
      sub_232BEA068(v54, v55);
      sub_232BEA420();
    }
  }

  v56 = *MEMORY[0x277D064C0];
  v57 = v1[8];
  v58 = v1[9];
  sub_232BEA3CC();
  if (v59)
  {
    sub_232BEA43C();
    sub_232BEA1D8();
    sub_232B1FCE4();
    v7 = v110;
  }

  else
  {
    sub_232BA658C();
    if (v60)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v61 = sub_232BA5828();
      sub_232BEA3E8(v61, v62, v63, v64, v65, v66, v67, v68, v109, v110);
      sub_232BA5744();
      sub_232BEA0DC();
      sub_232BEA068(v69, v70);
      sub_232BEA420();
    }
  }

  v71 = *MEMORY[0x277D064E0];
  v72 = v1[10];
  v73 = v1[11];
  sub_232BEA3CC();
  if (v74)
  {
    sub_232BEA43C();
    sub_232BEA1D8();
    sub_232B1FCE4();
    v7 = v110;
  }

  else
  {
    sub_232BA658C();
    if (v75)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v76 = sub_232BA5828();
      sub_232BEA3E8(v76, v77, v78, v79, v80, v81, v82, v83, v109, v110);
      sub_232BA5744();
      sub_232BEA0DC();
      sub_232BEA068(v84, v85);
      sub_232BEA420();
    }
  }

  v86 = *MEMORY[0x277D064C8];
  v87 = v1[12];
  v88 = v1[13];
  sub_232BEA3CC();
  if (v89)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5FEC();
    sub_232B1FCE4();
  }

  else
  {
    v90 = sub_232BA658C();
    if (v91)
    {
      v92 = v90;
      swift_isUniquelyReferenced_nonNull_native();
      v93 = v7[3];
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232CEA5C0();

      v94 = *(v7[7] + 16 * v92 + 8);
      type metadata accessor for DUExtractionAttributeKey();
      sub_232BEA0DC();
      sub_232BEA068(v95, v96);
      sub_232BEA3C0();
      sub_232CEA5E0();
    }
  }

  return v7;
}

void sub_232BE3078()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA56F8();
  sub_232CE98C0();
  if (v0)
  {
    v5 = sub_232CE98D0();
    sub_232BA5190(v5);
    (*(v6 + 8))(v2);
  }

  else
  {
    sub_232CE98C0();
    sub_232BA7040();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    v7 = sub_232CE98D0();
    sub_232BA5190(v7);
    (*(v8 + 8))(v2);
    __src[0] = v11;
    __src[1] = v12;
    __src[2] = v11;
    __src[3] = v12;
    __src[4] = v11;
    __src[5] = v12;
    __src[6] = v11;
    __src[7] = v12;
    __src[8] = v11;
    __src[9] = v12;
    __src[10] = v11;
    __src[11] = v12;
    __src[12] = v25;
    __src[13] = v26;
    v13 = v11;
    v14 = v12;
    v15 = v11;
    v16 = v12;
    v17 = v11;
    v18 = v12;
    v19 = v11;
    v20 = v12;
    v21 = v11;
    v22 = v12;
    v23 = v25;
    v24 = v26;
    sub_232BE99CC(__src, v9);
    sub_232BE9A04(&v11);
    memcpy(v4, __src, 0x70uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232BE350C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD5000);
  sub_232B135C4(v0, qword_27DDD5000);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF79E0;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232BE3748()
{
  sub_232BA66A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232CE9A30();
  v11 = sub_232B48F0C(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v21 = v41 - v20;
  v44 = v9;
  if (((1 << v5) & 0x3DFE) == 0)
  {
    if (!v5)
    {
      sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_232CF6460;
      type metadata accessor for DUExtractionAttributeKey();
      sub_232BEA0DC();
      sub_232BEA068(v32, v33);
      *(v31 + 32) = sub_232CE9C60();
      goto LABEL_10;
    }

    v41[1] = v7;
    v34 = v1;
    v35 = *(v1 + 16);
    if (v35 != 1)
    {
      v42 = v19;
      v43 = v18;
      sub_232CE9A20();

      v36 = sub_232CE9A00();
      v37 = sub_232CEA1C0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;

        _os_log_impl(&dword_232B02000, v36, v37, "(DUPersonaIDAdapter) convertToDUSchema: unexpected %ld business_card_info", v38, 0xCu);
        MEMORY[0x238393870](v38, -1, -1);
      }

      else
      {
      }

      (*(v42 + 8))(v16, v43);
      if (!v35)
      {
        goto LABEL_7;
      }
    }

    memcpy(v47, (v34 + 32), 0x70uLL);
    sub_232BE99CC(v47, v45);
    v39 = sub_232BE2A8C();
    sub_232BE9A04(v47);
    v40 = *MEMORY[0x277D06510];
    swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v39;
    sub_232BA56F8();
LABEL_9:
    sub_232B1FCE4();
    v29 = v45[0];
    sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_232CF6460;
    *(v30 + 32) = v29;
    goto LABEL_10;
  }

  v22 = *(v3 + 16);
  if (v22 == 1)
  {
    goto LABEL_8;
  }

  v42 = v19;
  v43 = v18;
  sub_232CE9A20();

  v23 = sub_232CE9A00();
  v24 = sub_232CEA1C0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v22;

    _os_log_impl(&dword_232B02000, v23, v24, "(DUPersonaIDAdapter) convertToDUSchema: unexpected %ld id_card_info", v25, 0xCu);
    MEMORY[0x238393870](v25, -1, -1);
  }

  else
  {
  }

  (*(v42 + 8))(v21, v43);
  if (v22)
  {
LABEL_8:
    memcpy(v46, (v3 + 32), sizeof(v46));
    sub_232BE9964(v46, v45);
    v27 = sub_232BE09F0(v44, v7);
    sub_232BE999C(v46);
    v28 = *MEMORY[0x277D06510];
    sub_232BE0784(v5);
    swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v27;
    goto LABEL_9;
  }

LABEL_7:
  sub_232BEA014();
  swift_allocError();
  *v26 = 0xD00000000000002CLL;
  v26[1] = 0x8000000232D08240;
  swift_willThrow();
LABEL_10:
  sub_232BA6688();
}

uint64_t sub_232BE3C10(uint64_t a1)
{
  sub_232BE9A34();
  sub_232CE98C0();
  sub_232B124A8(&qword_27DDC78B0, &qword_232CFB2D0);
  sub_232BE9ADC(&qword_27DDC78B8, &qword_27DDC78B0, &qword_232CFB2D0, sub_232BE9A88);
  sub_232BEA5CC();
  sub_232CE98C0();
  sub_232B124A8(&qword_27DDC78C8, &qword_232CFB2D8);
  sub_232BE9ADC(&qword_27DDC78D0, &qword_27DDC78C8, &qword_232CFB2D8, sub_232BE9B58);
  sub_232CE98C0();
  v3 = sub_232CE98D0();
  sub_232BA5190(v3);
  (*(v4 + 8))(a1);
  return v5;
}

uint64_t sub_232BE3E28()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD5018);
  sub_232B135C4(v0, qword_27DDD5018);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8180;
  sub_232BE9A34();
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC78B0, &qword_232CFB2D0);
  sub_232BE9ADC(&qword_27DDC78B8, &qword_27DDC78B0, &qword_232CFB2D0, sub_232BE9A88);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC78C8, &qword_232CFB2D8);
  sub_232BE9ADC(&qword_27DDC78D0, &qword_27DDC78C8, &qword_232CFB2D8, sub_232BE9B58);
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232BE404C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_232BE3748();
}

uint64_t sub_232BE406C()
{
  v0 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  sub_232B135FC(v0, qword_2814E3E98);
  sub_232B135C4(v0, qword_2814E3E98);
  return sub_232CE8F30();
}

uint64_t sub_232BE40C4()
{
  result = sub_232CE8F50();
  qword_27DDD5030 = result;
  *algn_27DDD5038 = v1;
  return result;
}

uint64_t sub_232BE40E8()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_232CE9780();
  v1[7] = v6;
  sub_232B27FBC(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232BE4198()
{
  sub_232B26C44();
  v1 = v0[9];
  v2 = v0[6];
  sub_232BE7008();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_232BE423C;
  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  return sub_232BE4470();
}

uint64_t sub_232BE423C()
{
  sub_232BEA640();
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_232B26C70();
  v9 = v8;
  sub_232B51338();
  *v10 = v9;
  v12 = *(v11 + 80);
  v13 = *v1;
  sub_232B26B3C();
  *v14 = v13;
  *(v9 + 88) = v0;

  if (!v0)
  {
    *(v9 + 96) = v3;
    *(v9 + 104) = v5;
    *(v9 + 112) = v7;
  }

  sub_232B48304();
  sub_232BA7440();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_232BE4354()
{
  sub_232B26C44();
  v1 = v0[7].i8[0];
  v2 = v0[4].i64[0];
  v3 = v0[4].i64[1];
  v4 = v0[3].i64[1];
  v5 = v0[1].i64[0];
  v6 = v0[6];
  *(v5 + 24) = &type metadata for UnifiedID;
  *(v5 + 32) = &off_2848126D0;
  *v5 = v1;
  *(v5 + 8) = vextq_s8(v6, v6, 8uLL);
  (*(v2 + 8))(v3, v4);

  sub_232B26CF4();

  return v7();
}

uint64_t sub_232BE43F8()
{
  sub_232B26C44();
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_232B26CF4();
  v2 = v0[11];

  return v1();
}

uint64_t sub_232BE4470()
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v1 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v0[5] = v1;
  sub_232B27FBC(v1);
  v0[6] = v2;
  v4 = *(v3 + 64);
  v0[7] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[8] = v5;
  *v5 = v6;
  sub_232BEA29C(v5);
  sub_232BA7440();

  return sub_232BE5CC4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_232BE455C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D900] + 4);
    v13 = swift_task_alloc();
    v3[10] = v13;
    sub_232BEA244();
    v16 = sub_232BEA068(v14, v15);
    v17 = sub_232BE9868();
    *v13 = v7;
    v13[1] = sub_232BE470C;
    v18 = v3[7];
    v19 = v3[5];

    return MEMORY[0x282165A90](v3 + 2, &type metadata for UnifiedID, &type metadata for UnifiedID, v19, &type metadata for UnifiedID, v16, v17);
  }
}

uint64_t sub_232BE470C()
{
  sub_232B26C7C();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[7];
  v7 = v4[6];
  v8 = v4[5];
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  *(v11 + 88) = v0;

  v12 = *(v7 + 8);
  v13 = sub_232BA5FEC();
  v14(v13);
  sub_232B48304();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_232BE4860()
{
  sub_232B26C44();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232BE48BC()
{
  sub_232B26C7C();
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5(v4, v3, v2);
}

uint64_t sub_232BE4938()
{
  sub_232B26C44();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232BE4994()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BE4A40()
{
  sub_232B26C44();
  v1 = v0[8];
  v2 = v0[5];
  sub_232BE7008();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  sub_232BEA4D0(v3);

  return sub_232BE4AD0();
}

uint64_t sub_232BE4AD0()
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v1 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v0[2] = v1;
  sub_232B27FBC(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[5] = v5;
  *v5 = v6;
  sub_232BEA29C(v5);
  sub_232BA7440();

  return sub_232BE4F00(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_232BE4BBC()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D8E8] + 4);
    v13 = swift_task_alloc();
    *(v3 + 56) = v13;
    sub_232BEA244();
    sub_232BEA068(v14, v15);
    *v13 = v7;
    v16 = sub_232BA6F94();

    return MEMORY[0x282165A78](v16);
  }
}

uint64_t sub_232BE4D40()
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v0;

  (*(v2[3] + 8))(v2[4], v2[2]);
  if (v0)
  {
    sub_232B48304();
    sub_232BA7440();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v11 = *(v6 + 8);
    sub_232BA5FEC();
    sub_232BA7440();

    return v15(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_232BE4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v7 = *(*(sub_232B124A8(&qword_27DDC7350, &unk_232CF9020) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[35] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v10 = sub_232CE9280();
  v6[37] = v10;
  v11 = *(v10 - 8);
  v6[38] = v11;
  v12 = *(v11 + 64) + 15;
  v6[39] = swift_task_alloc();
  v13 = sub_232CE92A0();
  v6[40] = v13;
  v14 = *(v13 - 8);
  v6[41] = v14;
  v15 = *(v14 + 64) + 15;
  v6[42] = swift_task_alloc();
  v16 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v17 = sub_232CE9900();
  v6[44] = v17;
  v18 = *(v17 - 8);
  v6[45] = v18;
  v19 = *(v18 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v20 = sub_232CE9210();
  v6[48] = v20;
  v21 = *(v20 - 8);
  v6[49] = v21;
  v22 = *(v21 + 64) + 15;
  v6[50] = swift_task_alloc();
  v23 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[51] = v23;
  v24 = *(v23 - 8);
  v6[52] = v24;
  v25 = *(v24 + 64) + 15;
  v6[53] = swift_task_alloc();
  v26 = sub_232CE9B10();
  v6[54] = v26;
  v27 = *(v26 - 8);
  v6[55] = v27;
  v28 = *(v27 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE5294, 0, 0);
}

uint64_t sub_232BE5294()
{
  sub_232BEA2F0();
  *(sub_232BEA600() + 16) = v0;
  sub_232BEA5E0();

  sub_232CE9B00();
  v7 = sub_232BEA4EC();
  v8 = v5(v7);
  sub_232B9CC54(v8);
  v9 = *MEMORY[0x277D0E550];
  v10 = sub_232BEA564();
  v11(v10);
  sub_232BEA214();
  v1[64] = sub_232BEA068(v12, v13);
  sub_232BA6050();
  sub_232CE9BE0();
  (*(v6 + 8))(v3, v2);
  (v5)(v5, v4);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v15 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BEA594(v15, MEMORY[0x277D42EC0], v38, v40, v42);
  v1[65] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  v16 = sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v5)(v50, v4);
  sub_232CE9C60();
  v17 = v46;
  sub_232BA6050();
  sub_232CE9B90();

  (v5)(v44, v4);
  v1[66] = *(v45 + 32);
  v18 = sub_232BEA4B0();
  v26 = sub_232BEA490(v18, v19, v20, v21, v22, v23, v24, v25, v39, v41, v43, v44, v45, v46, v47, v48, v49);
  v27(v26);
  sub_232BA6050();
  sub_232CE9BF0();
  v28 = sub_232BEA554();
  v29(v28, v16);
  (v5)(v17, v4);
  v30 = sub_232CE98F0();
  sub_232BEA508(v30, v31, v32, v30);
  sub_232BA6870();
  v33 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v1[67] = v34;
  *v34 = v35;
  v36 = sub_232BEA2D4(v34);

  return MEMORY[0x282166B60](v36);
}

uint64_t sub_232BE5594()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 544) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BE5690()
{
  v2 = v0[34];
  sub_232B124A8(&qword_27DDC7380, &unk_232CF9050);
  v3 = sub_232BA5CA0();
  if (sub_232B12480(v3, 1, v1) == 1)
  {
    sub_232BA4D50(v2, &qword_27DDC7350, &unk_232CF9020);
  }

  else
  {
    v49 = v0[65];
    v66 = v0[62];
    v68 = v0[63];
    v56 = v0[60];
    v58 = v0[61];
    v64 = v0[55];
    v62 = v0[54];
    v42 = v0[46];
    v43 = v0[45];
    v45 = v0[44];
    v47 = v0[47];
    v70 = v0[42];
    v60 = v0[41];
    v4 = v0[40];
    v6 = v0[37];
    v5 = v0[38];
    v54 = v5;
    v7 = v0[35];
    v8 = v0[36];
    v51 = v0[29];
    v40 = *(v1 + 48);
    v41 = v0[39];
    v39 = *(v7 + 48);
    v9 = *(v60 + 32);
    sub_232BA5C64();
    v9();
    v10 = *(v5 + 32);
    v10(v8 + v39, v2 + v40, v6);
    v11 = *(v7 + 48);
    sub_232BA6050();
    v9();
    v10(v41, v8 + v11, v6);
    sub_232CE9270();
    v12 = *(v43 + 8);
    v13 = sub_232BEA3C0();
    v14(v13);
    v15 = *(v43 + 32);
    v16 = sub_232BA5FEC();
    v17(v16);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC7388, &qword_232CF9060);
    inited = swift_initStackObject();
    v19 = sub_232BA6308(inited, xmmword_232CF6460);
    inited[4].n128_u64[1] = v19;
    sub_232BEA22C();
    inited[5].n128_u64[0] = sub_232BEA068(v20, v21);
    v22 = sub_232BA18A8(&inited[3]);
    (*(*(v19 - 8) + 16))(v22, v51, v19);
    sub_232B124A8(&qword_27DDC7390, &qword_232CF9068);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA620();

    v23 = *(v54 + 8);
    v24 = sub_232B37C0C();
    v25(v24);
    (*(v60 + 8))(v70, v4);
    v66(v58, v62);
    v26 = *(v64 + 32);
    v27 = sub_232BA7224();
    v28(v27);
  }

  v29 = v0[66];
  v30 = v0[64];
  v31 = v0[61];
  v46 = v0[62];
  v48 = v0[63];
  v32 = v0[60];
  v50 = v0[59];
  v52 = v0[58];
  v53 = v0[57];
  v55 = v0[56];
  v33 = v0[54];
  v57 = v0[53];
  v59 = v0[50];
  v34 = v0[47];
  v35 = v0[45];
  v44 = v0[44];
  v61 = v0[46];
  v63 = v0[43];
  v65 = v0[42];
  v67 = v0[39];
  v69 = v0[36];
  v71 = v0[34];
  v36 = v0[28];
  sub_232CE9B80();
  v0[27] = *(v29 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v46(v32, v33);
  (*(v35 + 8))(v34, v44);
  v46(v31, v33);

  sub_232B26CF4();

  return v37();
}

uint64_t sub_232BE5B60()
{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v8 = v0[54];
  v13 = v0[56];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[46];
  v17 = v0[43];
  v18 = v0[42];
  v9 = v0[39];
  v19 = v0[36];
  v20 = v0[34];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v3, v8);

  sub_232B26CF4();
  v11 = v0[68];

  return v10();
}

uint64_t sub_232BE5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v7 = *(*(sub_232B124A8(&qword_27DDC7350, &unk_232CF9020) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[35] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v10 = sub_232CE9280();
  v6[37] = v10;
  v11 = *(v10 - 8);
  v6[38] = v11;
  v12 = *(v11 + 64) + 15;
  v6[39] = swift_task_alloc();
  v13 = sub_232CE92A0();
  v6[40] = v13;
  v14 = *(v13 - 8);
  v6[41] = v14;
  v15 = *(v14 + 64) + 15;
  v6[42] = swift_task_alloc();
  v16 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v17 = sub_232CE9900();
  v6[44] = v17;
  v18 = *(v17 - 8);
  v6[45] = v18;
  v19 = *(v18 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v20 = sub_232CE9210();
  v6[48] = v20;
  v21 = *(v20 - 8);
  v6[49] = v21;
  v22 = *(v21 + 64) + 15;
  v6[50] = swift_task_alloc();
  v23 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[51] = v23;
  v24 = *(v23 - 8);
  v6[52] = v24;
  v25 = *(v24 + 64) + 15;
  v6[53] = swift_task_alloc();
  v26 = sub_232CE9B10();
  v6[54] = v26;
  v27 = *(v26 - 8);
  v6[55] = v27;
  v28 = *(v27 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE6058, 0, 0);
}

uint64_t sub_232BE6058()
{
  sub_232BEA2F0();
  *(sub_232BEA600() + 16) = v0;
  sub_232BEA5E0();

  sub_232CE9B00();
  v7 = sub_232BEA4EC();
  v8 = v5(v7);
  sub_232B9CC54(v8);
  v9 = *MEMORY[0x277D0E550];
  v10 = sub_232BEA564();
  v11(v10);
  sub_232BEA214();
  v1[64] = sub_232BEA068(v12, v13);
  sub_232BA6050();
  sub_232CE9BE0();
  (*(v6 + 8))(v3, v2);
  (v5)(v5, v4);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v15 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BEA594(v15, MEMORY[0x277D42EC0], v38, v40, v42);
  v1[65] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  v16 = sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v5)(v50, v4);
  sub_232CE9C60();
  v17 = v46;
  sub_232BA6050();
  sub_232CE9B90();

  (v5)(v44, v4);
  v1[66] = *(v45 + 32);
  v18 = sub_232BEA4B0();
  v26 = sub_232BEA490(v18, v19, v20, v21, v22, v23, v24, v25, v39, v41, v43, v44, v45, v46, v47, v48, v49);
  v27(v26);
  sub_232BA6050();
  sub_232CE9BF0();
  v28 = sub_232BEA554();
  v29(v28, v16);
  (v5)(v17, v4);
  v30 = sub_232CE98F0();
  sub_232BEA508(v30, v31, v32, v30);
  sub_232BA6870();
  v33 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v1[67] = v34;
  *v34 = v35;
  v36 = sub_232BEA2D4(v34);

  return MEMORY[0x282166B60](v36);
}

uint64_t sub_232BE6358()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 544) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_232BE6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v20;
  a20 = v21;
  v22 = sub_232CE9B10();
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9780();
  sub_232BEA22C();
  sub_232BEA068(v28, v29);
  sub_232CE9B40();
  sub_232B124A8(&qword_27DDC73A8, &qword_232CF9080);
  v30 = *(v23 + 72);
  v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232CF6460;
  (*(v24 + 16))(v32 + v31, v27, v22);
  MEMORY[0x2383918C0](v32);

  (*(v24 + 8))(v27, v22);
  sub_232BA6688();
}

unsigned __int8 *sub_232BE65EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v62 = a3;
  v10 = sub_232CE8FE0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58[2] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232CE9080();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v58[1] = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = sub_232CE9210();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v61 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v22 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig, v25, v21);
  v26 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v28 = v27;

  if (v28)
  {
    v30 = HIBYTE(v28) & 0xF;
    v31 = v26 & 0xFFFFFFFFFFFFLL;
    if ((v28 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v32 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_64;
    }

    if ((v28 & 0x1000000000000000) != 0)
    {
      sub_232BA2B04(v26, v28, 10);
      goto LABEL_64;
    }

    if ((v28 & 0x2000000000000000) != 0)
    {
      v63[0] = v26;
      v63[1] = v28 & 0xFFFFFFFFFFFFFFLL;
      if (v26 == 43)
      {
        if (v30)
        {
          if (--v30)
          {
            v46 = 0;
            v47 = v63 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                break;
              }

              v46 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v30)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (v26 != 45)
      {
        if (v30)
        {
          v53 = 0;
          v54 = v63;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              break;
            }

            v53 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v30)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v30)
      {
        if (--v30)
        {
          v38 = 0;
          v39 = v63 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v30)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v26 & 0x1000000000000000) != 0)
      {
        result = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_232CEA550();
      }

      v33 = *result;
      if (v33 == 43)
      {
        if (v31 >= 1)
        {
          v30 = v31 - 1;
          if (v31 != 1)
          {
            v42 = 0;
            if (result)
            {
              v43 = result + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  goto LABEL_62;
                }

                v45 = 10 * v42;
                if ((v42 * 10) >> 64 != (10 * v42) >> 63)
                {
                  goto LABEL_62;
                }

                v42 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_62;
                }

                ++v43;
                if (!--v30)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      if (v33 != 45)
      {
        if (v31)
        {
          v50 = 0;
          if (result)
          {
            while (1)
            {
              v51 = *result - 48;
              if (v51 > 9)
              {
                goto LABEL_62;
              }

              v52 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_62;
              }

              v50 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v31)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        LOBYTE(v30) = 1;
        goto LABEL_63;
      }

      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          v34 = 0;
          if (result)
          {
            v35 = result + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_62;
              }

              v37 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_62;
              }

              v34 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                goto LABEL_62;
              }

              ++v35;
              if (!--v30)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v30) = 0;
LABEL_63:
          v64 = v30;
LABEL_64:

          goto LABEL_65;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_65:
  sub_232CE8FC0();
  if (qword_2814E0BF8 != -1)
  {
    swift_once();
  }

  v57 = sub_232B135C4(v16, qword_2814E3E98);
  (*(v17 + 16))(v20, v57, v16);
  sub_232CE8FD0();
  sub_232CE9070();
  *(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model) = sub_232CE8FB0();
  return v6;
}

uint64_t (*sub_232BE6C44())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_232BE6D08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232BE6DB8;

  return sub_232BE4994();
}

uint64_t sub_232BE6DB8()
{
  sub_232B26C7C();
  v3 = v2;
  v5 = v4;
  sub_232B26C70();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_232B26B3C();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_232BE6EB8()
{
  v0 = sub_232BA5FEC();
  v2 = sub_232B124A8(v0, v1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B3516C();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_232CE8FF0();
  v10 = sub_232CE9000();
  sub_232B12504(v9, 0, 1, v10);
  sub_232B34D3C(v9, v6, &qword_27DDC73A0, &qword_232CFB2C0);
  sub_232CE9040();
  sub_232CE9030();
  sub_232CE9010();
  sub_232CE9020();
  sub_232BEA588();
  return sub_232BA4D50(v11, v12, v13);
}

uint64_t sub_232BE7008()
{
  v1 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v12 - v7;
  if (qword_2814E0BF8 != -1)
  {
    swift_once();
  }

  v9 = sub_232B135C4(v1, qword_2814E3E98);
  (*(v4 + 16))(v8, v9, v1);
  v10 = *(v0 + 24);

  return sub_232CE9770();
}

uint64_t sub_232BE7140()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BE71EC()
{
  sub_232B26C44();
  v1 = v0[8];
  v2 = v0[5];
  sub_232BE7008();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  sub_232BEA4D0(v3);

  return sub_232BE727C();
}

uint64_t sub_232BE727C()
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v1 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v0[2] = v1;
  sub_232B27FBC(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[5] = v5;
  *v5 = v6;
  sub_232BEA29C(v5);
  sub_232BA7440();

  return sub_232BE7798(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_232BE7368()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D8E8] + 4);
    v13 = swift_task_alloc();
    *(v3 + 56) = v13;
    sub_232BEA244();
    sub_232BEA068(v14, v15);
    *v13 = v7;
    v16 = sub_232BA6F94();

    return MEMORY[0x282165A78](v16);
  }
}

uint64_t sub_232BE74EC()
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v0;

  (*(v2[3] + 8))(v2[4], v2[2]);
  if (v0)
  {
    sub_232B48304();
    sub_232BA7440();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v11 = *(v6 + 8);
    sub_232BA5FEC();
    sub_232BA7440();

    return v15(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_232BE76AC(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(unint64_t, unint64_t, uint64_t, void, uint64_t))
{
  v9 = v6;
  v12 = *a3;
  *(v9 + 24) = sub_232CE9C60();
  *(v9 + 16) = v12;
  v13 = sub_232CE9C60();
  v14 = a5(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v9 + 32) = a6(0xD000000000000026, 0x8000000232D07EB0, a1, a2 & 1, v13);
  return v9;
}

uint64_t sub_232BE7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v7 = *(*(sub_232B124A8(&qword_27DDC7350, &unk_232CF9020) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[35] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v10 = sub_232CE9280();
  v6[37] = v10;
  v11 = *(v10 - 8);
  v6[38] = v11;
  v12 = *(v11 + 64) + 15;
  v6[39] = swift_task_alloc();
  v13 = sub_232CE92A0();
  v6[40] = v13;
  v14 = *(v13 - 8);
  v6[41] = v14;
  v15 = *(v14 + 64) + 15;
  v6[42] = swift_task_alloc();
  v16 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v17 = sub_232CE9900();
  v6[44] = v17;
  v18 = *(v17 - 8);
  v6[45] = v18;
  v19 = *(v18 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v20 = sub_232CE9210();
  v6[48] = v20;
  v21 = *(v20 - 8);
  v6[49] = v21;
  v22 = *(v21 + 64) + 15;
  v6[50] = swift_task_alloc();
  v23 = sub_232CE9120();
  v6[51] = v23;
  v24 = *(v23 - 8);
  v6[52] = v24;
  v25 = *(v24 + 64) + 15;
  v6[53] = swift_task_alloc();
  v26 = sub_232CE9110();
  v6[54] = v26;
  v27 = *(v26 - 8);
  v6[55] = v27;
  v28 = *(v27 + 64) + 15;
  v6[56] = swift_task_alloc();
  v29 = sub_232B124A8(&qword_27DDC73D8, &unk_232CFB2B0);
  v6[57] = v29;
  v30 = *(v29 - 8);
  v6[58] = v30;
  v31 = *(v30 + 64) + 15;
  v6[59] = swift_task_alloc();
  v32 = sub_232CE91C0();
  v6[60] = v32;
  v33 = *(v32 - 8);
  v6[61] = v33;
  v34 = *(v33 + 64) + 15;
  v6[62] = swift_task_alloc();
  v35 = sub_232CE91B0();
  v6[63] = v35;
  v36 = *(v35 - 8);
  v6[64] = v36;
  v37 = *(v36 + 64) + 15;
  v6[65] = swift_task_alloc();
  v38 = sub_232B124A8(&qword_27DDC73E0, &qword_232CF90E0);
  v6[66] = v38;
  v39 = *(v38 - 8);
  v6[67] = v39;
  v40 = *(v39 + 64) + 15;
  v6[68] = swift_task_alloc();
  v41 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[69] = v41;
  v42 = *(v41 - 8);
  v6[70] = v42;
  v43 = *(v42 + 64) + 15;
  v6[71] = swift_task_alloc();
  v44 = sub_232CE9B10();
  v6[72] = v44;
  v45 = *(v44 - 8);
  v6[73] = v45;
  v46 = *(v45 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE7D84, 0, 0);
}

uint64_t sub_232BE7D84()
{
  v68 = v0[81];
  v65 = v0[80];
  v61 = v0[79];
  v35 = v0[75];
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v36 = v0[69];
  v37 = v0[76];
  v47 = v0[68];
  v48 = v0[67];
  v49 = v0[66];
  v50 = v0[78];
  v40 = v0[77];
  v41 = v0[65];
  v42 = v0[64];
  v43 = v0[63];
  v44 = v0[62];
  v45 = v0[61];
  v46 = v0[60];
  v57 = v0[59];
  v58 = v0[58];
  v59 = v0[57];
  v51 = v0[56];
  v52 = v0[55];
  v53 = v0[54];
  v56 = v0[53];
  v54 = v0[52];
  v55 = v0[51];
  v62 = v0[49];
  v63 = v0[48];
  v64 = v0[50];
  v66 = v0[43];
  v67 = v0[47];
  v38 = v0[32];
  v39 = v0[33];
  v6 = v0[30];
  v60 = v0[31];
  v7 = v0[29];
  *(swift_task_alloc() + 16) = v7;
  sub_232CE9B20();

  sub_232CE9B00();
  v8 = *(v2 + 8);
  v0[82] = v8;
  v0[83] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_232BA7224();
  v8(v9);
  sub_232BE6EB8();
  v69 = *MEMORY[0x277D0E550];
  (*(v5 + 104))(v4);
  sub_232BEA214();
  v0[84] = sub_232BEA068(v10, v11);
  sub_232BA5C64();
  sub_232CE9BE0();
  (*(v5 + 8))(v4, v36);
  v12 = sub_232BA7224();
  v8(v12);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v14 = sub_232BA5A90(inited, xmmword_232CF6460);
  v15 = MEMORY[0x277D42EC0];
  v14[4].n128_u64[1] = MEMORY[0x277D837D0];
  v14[5].n128_u64[0] = v15;
  v14[3].n128_u64[0] = v38;
  inited[3].n128_u64[1] = v39;

  v0[85] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9C10();

  (v8)(v37, v3);
  v16 = sub_232CE91D0();
  sub_232BEA508(v16, v17, v18, v16);
  (*(v42 + 104))(v41, *MEMORY[0x277D0E5C0], v43);
  v19 = sub_232CE91A0();
  sub_232B12504(v44, 1, 1, v19);
  (*(v45 + 104))(v44, *MEMORY[0x277D0E5C8], v46);
  sub_232CE91E0();
  (*(v48 + 104))(v47, v69, v49);
  sub_232BA5C64();
  sub_232CE9BB0();
  (*(v48 + 8))(v47, v49);
  (v8)(v40, v3);
  v20 = sub_232CE9130();
  sub_232B12504(v51, 1, 1, v20);
  (*(v52 + 104))(v51, *MEMORY[0x277D0E578], v53);
  v21 = sub_232CE9100();
  sub_232B12504(v56, 1, 1, v21);
  (*(v54 + 104))(v56, *MEMORY[0x277D0E580], v55);
  sub_232B37C0C();
  sub_232CE9140();
  (*(v58 + 104))(v57, v69, v59);
  sub_232BA5C64();
  sub_232CE9BD0();
  (*(v58 + 8))(v57, v59);
  v22 = sub_232BEA3C0();
  v8(v22);
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9B90();

  (v8)(v61, v3);
  v23 = *(v60 + 32);
  v0[86] = v23;
  v24 = OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig;
  sub_232BEA4B0();
  (*(v62 + 16))(v64, v23 + v24, v63);
  sub_232BEA3C0();
  sub_232CE9BF0();
  v25 = sub_232BEA554();
  v26(v25, v63);
  (v8)(v65, v3);
  v27 = sub_232CE98F0();
  sub_232BEA508(v27, v28, v29, v27);
  sub_232BA6870();
  v30 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v0[87] = v31;
  *v31 = v32;
  v33 = sub_232BEA2D4(v31);

  return MEMORY[0x282166B60](v33);
}

uint64_t sub_232BE83D4()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 696);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 704) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BE84D0()
{
  v2 = v0[34];
  sub_232B124A8(&qword_27DDC7380, &unk_232CF9050);
  v3 = sub_232BA5CA0();
  if (sub_232B12480(v3, 1, v1) == 1)
  {
    sub_232BA4D50(v2, &qword_27DDC7350, &unk_232CF9020);
  }

  else
  {
    v58 = v0[85];
    v75 = v0[82];
    v77 = v0[83];
    v65 = v0[80];
    v67 = v0[81];
    v71 = v0[72];
    v73 = v0[73];
    v50 = v0[46];
    v52 = v0[45];
    v54 = v0[44];
    v56 = v0[47];
    v79 = v0[42];
    v69 = v0[41];
    v4 = v0[40];
    v6 = v0[37];
    v5 = v0[38];
    v63 = v5;
    v7 = v0[35];
    v8 = v0[36];
    v60 = v0[29];
    v46 = *(v1 + 48);
    v48 = v0[39];
    v44 = *(v7 + 48);
    v9 = *(v69 + 32);
    sub_232BA5C64();
    v9();
    v10 = *(v5 + 32);
    v10(v8 + v44, v2 + v46, v6);
    v11 = *(v7 + 48);
    sub_232BA6050();
    v9();
    v10(v48, v8 + v11, v6);
    sub_232CE9270();
    v12 = *(v52 + 8);
    v13 = sub_232BEA3C0();
    v14(v13);
    v15 = *(v52 + 32);
    v16 = sub_232BA5FEC();
    v17(v16);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC7388, &qword_232CF9060);
    inited = swift_initStackObject();
    v19 = sub_232BA6308(inited, xmmword_232CF6460);
    inited[4].n128_u64[1] = v19;
    sub_232BEA22C();
    inited[5].n128_u64[0] = sub_232BEA068(v20, v21);
    v22 = sub_232BA18A8(&inited[3]);
    (*(*(v19 - 8) + 16))(v22, v60, v19);
    sub_232B124A8(&qword_27DDC7390, &qword_232CF9068);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA620();

    v23 = *(v63 + 8);
    v24 = sub_232B37C0C();
    v25(v24);
    (*(v69 + 8))(v79, v4);
    v75(v67, v71);
    v26 = *(v73 + 32);
    v27 = sub_232BA7224();
    v28(v27);
  }

  v40 = v0[86];
  v29 = v0[84];
  v30 = v0[82];
  v31 = v0[81];
  v32 = v0[80];
  v42 = v0[83];
  v43 = v0[79];
  v45 = v0[78];
  v47 = v0[77];
  v49 = v0[76];
  v51 = v0[75];
  v33 = v0[72];
  v53 = v0[74];
  v55 = v0[71];
  v57 = v0[68];
  v59 = v0[65];
  v61 = v0[62];
  v62 = v0[59];
  v64 = v0[56];
  v66 = v0[53];
  v68 = v0[50];
  v34 = v0[47];
  v70 = v0[46];
  v35 = v0[45];
  v41 = v0[44];
  v72 = v0[43];
  v74 = v0[42];
  v76 = v0[39];
  v78 = v0[36];
  v80 = v0[34];
  v36 = v0[28];
  sub_232CE9B80();
  v0[27] = *(v40 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v30(v32, v33);
  (*(v35 + 8))(v34, v41);
  v37 = sub_232BA5FEC();
  (v30)(v37);

  sub_232B26CF4();

  return v38();
}

uint64_t sub_232BE8A34()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v8 = v0[72];
  v14 = v0[74];
  v15 = v0[71];
  v16 = v0[68];
  v17 = v0[65];
  v18 = v0[62];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[53];
  v22 = v0[50];
  v23 = v0[46];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[39];
  v27 = v0[36];
  v28 = v0[34];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v2(v3, v8);

  sub_232B26CF4();
  v10 = v0[88];

  return v9();
}

unsigned __int8 *sub_232BE8C1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_232CE8FE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232CE9080();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v58[3] = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v58[2] = v58 - v21;
  v22 = sub_232CE9210();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v23 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig, v26, v22);
  v27 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v29 = v28;

  v60 = v6;
  v59 = a4;
  v58[4] = v15;
  if (v29)
  {
    v31 = HIBYTE(v29) & 0xF;
    v32 = v27 & 0xFFFFFFFFFFFFLL;
    if ((v29 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v33 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      if ((v29 & 0x1000000000000000) != 0)
      {
        v35 = sub_232BA2B04(v27, v29, 10);
        v53 = v57;
        goto LABEL_65;
      }

      if ((v29 & 0x2000000000000000) != 0)
      {
        v61[0] = v27;
        v61[1] = v29 & 0xFFFFFFFFFFFFFFLL;
        if (v27 == 43)
        {
          if (v31)
          {
            if (--v31)
            {
              v35 = 0;
              v45 = v61 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  break;
                }

                v47 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v47 + v46;
                if (__OFADD__(v47, v46))
                {
                  break;
                }

                ++v45;
                if (!--v31)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (v27 != 45)
        {
          if (v31)
          {
            v35 = 0;
            v50 = v61;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              v52 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                break;
              }

              ++v50;
              if (!--v31)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v31)
        {
          if (--v31)
          {
            v35 = 0;
            v39 = v61 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              v41 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v41 - v40;
              if (__OFSUB__(v41, v40))
              {
                break;
              }

              ++v39;
              if (!--v31)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_232CEA550();
        }

        v34 = *result;
        if (v34 == 43)
        {
          if (v32 >= 1)
          {
            v31 = v32 - 1;
            if (v32 != 1)
            {
              v35 = 0;
              if (result)
              {
                v42 = result + 1;
                while (1)
                {
                  v43 = *v42 - 48;
                  if (v43 > 9)
                  {
                    goto LABEL_63;
                  }

                  v44 = 10 * v35;
                  if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v35 = v44 + v43;
                  if (__OFADD__(v44, v43))
                  {
                    goto LABEL_63;
                  }

                  ++v42;
                  if (!--v31)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_77;
        }

        if (v34 != 45)
        {
          if (v32)
          {
            v35 = 0;
            if (result)
            {
              while (1)
              {
                v48 = *result - 48;
                if (v48 > 9)
                {
                  goto LABEL_63;
                }

                v49 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_63;
                }

                v35 = v49 + v48;
                if (__OFADD__(v49, v48))
                {
                  goto LABEL_63;
                }

                ++result;
                if (!--v32)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v35 = 0;
          LOBYTE(v31) = 1;
          goto LABEL_64;
        }

        if (v32 >= 1)
        {
          v31 = v32 - 1;
          if (v32 != 1)
          {
            v35 = 0;
            if (result)
            {
              v36 = result + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  goto LABEL_63;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_63;
                }

                v35 = v38 - v37;
                if (__OFSUB__(v38, v37))
                {
                  goto LABEL_63;
                }

                ++v36;
                if (!--v31)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v31) = 0;
LABEL_64:
            v62 = v31;
            v53 = v31;
LABEL_65:

            if (v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v35;
            }

            v58[0] = v54;
            goto LABEL_69;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v58[0] = 0;
LABEL_69:
  v58[1] = a3;
  sub_232CE8FC0();
  if (qword_27DDC63C0 != -1)
  {
    swift_once();
  }

  sub_232CE8F60();
  sub_232BEA068(&qword_27DDC7490, MEMORY[0x277D29B48]);

  sub_232CE8F70();
  sub_232CE8FD0();
  sub_232CE9070();
  v55 = sub_232CE8FB0();
  v56 = v60;
  *(v60 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model) = v55;
  return v56;
}

uint64_t sub_232BE92B0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_232CE9210();
  sub_232B13F24(v6);
  return (*(v7 + 16))(a2, v4 + v5);
}

uint64_t (*sub_232BE933C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_232BE9400()
{
  result = sub_232CE9210();
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

uint64_t sub_232BE94A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232BEA0CC;

  return sub_232BE7140();
}

uint64_t sub_232BE95A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232BE98BC();
  v5 = sub_232BE9910();

  return MEMORY[0x2821662E8](a1, a2, v4, v5);
}

uint64_t sub_232BE9608()
{
  sub_232BE98BC();
  sub_232BE9910();
  return sub_232CEA500();
}

void sub_232BE9698(void *a1@<X8>)
{
  sub_232BE1658();
  if (!v1)
  {
    memcpy(a1, v3, 0x140uLL);
  }
}

void sub_232BE9710(void *a1@<X8>)
{
  sub_232BE3078();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_232BE9780@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232CE9940();
  v6 = sub_232B135C4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_232BE981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232BE3C10(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_232BE9868()
{
  result = qword_2814DFA70;
  if (!qword_2814DFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA70);
  }

  return result;
}

unint64_t sub_232BE98BC()
{
  result = qword_27DDC7898;
  if (!qword_27DDC7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7898);
  }

  return result;
}

unint64_t sub_232BE9910()
{
  result = qword_27DDC78A0;
  if (!qword_27DDC78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78A0);
  }

  return result;
}

unint64_t sub_232BE9A34()
{
  result = qword_27DDC78A8;
  if (!qword_27DDC78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78A8);
  }

  return result;
}

unint64_t sub_232BE9A88()
{
  result = qword_27DDC78C0;
  if (!qword_27DDC78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78C0);
  }

  return result;
}

uint64_t sub_232BE9ADC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232BE9B58()
{
  result = qword_27DDC78D8;
  if (!qword_27DDC78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CardType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232BE9D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BE9E04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_232BE9EB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_232BE9EC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9F04(uint64_t result, int a2, int a3)
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

unint64_t sub_232BE9F58()
{
  result = qword_27DDC78E0;
  if (!qword_27DDC78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78E0);
  }

  return result;
}

unint64_t sub_232BE9FB0()
{
  result = qword_27DDC78E8;
  if (!qword_27DDC78E8)
  {
    sub_232B27EEC(&qword_27DDC78F0, &qword_232CFB510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78E8);
  }

  return result;
}

unint64_t sub_232BEA014()
{
  result = qword_27DDC78F8;
  if (!qword_27DDC78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78F8);
  }

  return result;
}

uint64_t sub_232BEA068(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_232BEA25C()
{
  v3 = *(*(v1 + 56) + 16 * v0 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

uint64_t sub_232BEA27C()
{

  return sub_232CEA5C0();
}

void sub_232BEA2F0()
{
  v19 = v0[61];
  v15 = v0[60];
  v13 = v0[59];
  *(v1 - 88) = v0[58];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v16 = v0[49];
  v17 = v0[48];
  v18 = v0[50];
  v8 = v0[47];
  v20 = v0[43];
  v12 = v0[33];
  v10 = v0[51];
  v11 = v0[32];
  v9 = v0[30];
  v14 = v0[31];
}

void sub_232BEA348()
{
  v3 = *(*(*(v1 - 88) + 48) + 8 * v0);
}

uint64_t sub_232BEA364()
{

  return sub_232CEA5E0();
}

uint64_t sub_232BEA398()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232BEA3CC()
{

  sub_232B70A14();
}

void sub_232BEA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 8 * v10);
}

void sub_232BEA404()
{

  sub_232B6FF88();
}

uint64_t sub_232BEA420()
{

  return sub_232CEA5E0();
}

uint64_t sub_232BEA43C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BEA458()
{

  return sub_232CE98C0();
}

void sub_232BEA474()
{

  sub_232B6FF88();
}

uint64_t sub_232BEA4B0()
{

  return swift_beginAccess();
}

uint64_t sub_232BEA4D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[2];
  v6 = v2[3];
  return v2[8];
}

uint64_t sub_232BEA4EC()
{
  *(v1 + 496) = *(v2 + 8);
  *(v1 + 504) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_232BEA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(v4, 1, 1, a4);
}

uint64_t sub_232BEA524()
{

  return sub_232B20540(v0);
}

uint64_t sub_232BEA53C()
{

  return sub_232CE98C0();
}

uint64_t sub_232BEA594@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[9] = v5;
  a1[10] = a2;
  a1[6] = a4;
  *(v6 + 56) = a5;
}

uint64_t sub_232BEA5E0()
{

  return sub_232CE9B20();
}

uint64_t sub_232BEA600()
{
  v2 = *(v0 + 232);

  return swift_task_alloc();
}

uint64_t sub_232BEA620()
{

  return sub_232CE9260();
}

void sub_232BEA654(uint64_t a1, uint64_t *a2)
{
  v5 = sub_232B26B10(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_232BEB8EC(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

uint64_t sub_232BEA724@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUPoemSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2814E11E8;
  *a1 = result;
  return result;
}

uint64_t sub_232BEA76C()
{
  sub_232B26C44();
  v0[12] = v1;
  v2 = sub_232CE89D0();
  v0[13] = v2;
  v3 = *(v2 - 8);
  v0[14] = v3;
  v4 = *(v3 + 64) + 15;
  v0[15] = swift_task_alloc();
  v5 = sub_232CE9A30();
  v0[16] = v5;
  v6 = *(v5 - 8);
  v0[17] = v6;
  v7 = *(v6 + 64) + 15;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BEA8A0()
{
  v0[11] = MEMORY[0x277D84F90];
  v0[5] = &type metadata for IntelligencePlatform;
  v0[6] = sub_232BEC9D8();
  v1 = sub_232CE8F10();
  sub_232B2040C(v0 + 2);
  if ((v1 & 1) != 0 && (v2 = v0[12], sub_232B5821C(), v3))
  {
    sub_232BECA40();
    v4 = objc_allocWithZone(MEMORY[0x277D1F418]);
    v5 = sub_232BEC74C(v2, v1, &unk_28480CC88, 0, 0, 0, 0);
    v0[22] = v5;
    v6 = objc_allocWithZone(sub_232CE92F0());
    v0[23] = sub_232CE92E0();
    v7 = *(MEMORY[0x277D1F3C8] + 4);
    v17 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_232BEAB74;

    return v17(v5);
  }

  else
  {
    v11 = v0[20];
    v10 = v0[21];
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[15];

    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_232BEAB74()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v1;
  *(v2 + 200) = v6;
  *(v2 + 208) = v0;

  if (v0)
  {
    v7 = sub_232BEB5BC;
  }

  else
  {
    v7 = sub_232BEAC78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_232BEAC78()
{
  v110 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = [v1 rankedResults];
  sub_232BA4DEC(0, &qword_27DDC7910, 0x277D1F470);
  v4 = sub_232CE9FE0();

  v5 = sub_232B26B10(v4);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v89 = v4 + 32;
    v90 = v4 & 0xFFFFFFFFFFFFFF8;
    v108 = (*(v0 + 136) + 8);
    v95 = (*(v0 + 112) + 8);
    v92 = MEMORY[0x277D84F90];
    v87 = v5;
    v88 = v4;
    v86 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x2383922C0](v7, v4);
      }

      else
      {
        if (v7 >= *(v90 + 16))
        {
          goto LABEL_53;
        }

        v9 = *(v89 + 8 * v7);
      }

      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v93 = v9;
      v11 = [v9 span];
      if (v11)
      {
        v12 = v11;
        [v11 range];
        sub_232BECA40();
        v96 = v12;
        v13 = [v12 text];
        sub_232CE9D50();

        sub_232CEA110();
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          v16 = [v93 rankedItems];
          sub_232BA4DEC(0, &qword_27DDC7918, 0x277D1F468);
          v17 = sub_232CE9FE0();

          if (v17 >> 62)
          {
            v18 = sub_232CEA610();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v91 = v7;
          if (v18)
          {
            v19 = 0;
            v104 = v17 & 0xC000000000000001;
            v94 = v17 & 0xFFFFFFFFFFFFFF8;
            v102 = v18;
            v103 = v17;
            while (1)
            {
              if (v104)
              {
                v20 = MEMORY[0x2383922C0](v19, v17);
              }

              else
              {
                if (v19 >= *(v94 + 16))
                {
                  goto LABEL_51;
                }

                v20 = *(v17 + 8 * v19 + 32);
              }

              v21 = v20;
              v22 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              v23 = *(v0 + 168);
              sub_232CE9A20();
              v7 = v21;
              v24 = sub_232CE9A00();
              v25 = sub_232CEA1B0();
              if (os_log_type_enabled(v24, v25))
              {
                v4 = v19 + 1;
                v26 = v19;
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                v109[0] = v28;
                *v27 = 136315138;
                v29 = sub_232BEC968([v7 entityID]);
                if (!v30)
                {
                  goto LABEL_54;
                }

                v31 = v29;
                v32 = v30;
                v105 = *(v0 + 168);
                v99 = *(v0 + 128);

                v33 = sub_232BAD2D4(v31, v32, v109);

                *(v27 + 4) = v33;
                _os_log_impl(&dword_232B02000, v24, v25, "Found ecr extraction with id %s", v27, 0xCu);
                sub_232B2040C(v28);
                sub_232B26D28();
                sub_232BA6A84();

                v34 = *v108;
                (*v108)(v105, v99);
                v19 = v26;
                v22 = v4;
              }

              else
              {
                v35 = *(v0 + 168);
                v36 = *(v0 + 128);

                v34 = *v108;
                (*v108)(v35, v36);
              }

              [v7 score];
              if (v37 <= 0.0)
              {
                v57 = *(v0 + 152);
                sub_232CE9A20();
                v4 = v7;
                v58 = sub_232CE9A00();
                v7 = sub_232CEA1B0();
                if (os_log_type_enabled(v58, v7))
                {
                  v107 = v34;
                  v59 = swift_slowAlloc();
                  v60 = swift_slowAlloc();
                  v109[0] = v60;
                  *v59 = 136315394;
                  v61 = sub_232BEC968([v4 entityID]);
                  if (!v62)
                  {
                    goto LABEL_55;
                  }

                  v63 = v61;
                  v64 = v62;
                  v98 = *(v0 + 128);
                  v101 = *(v0 + 152);

                  v65 = sub_232BAD2D4(v63, v64, v109);

                  *(v59 + 4) = v65;
                  *(v59 + 12) = 2048;
                  [v4 score];
                  *(v59 + 14) = v66;
                  _os_log_impl(&dword_232B02000, v58, v7, "Ignoring ecr extraction with id %s and score %f", v59, 0x16u);
                  sub_232B2040C(v60);
                  sub_232B26D28();
                  sub_232BA6A84();

                  v107(v101, v98);
                }

                else
                {
                  v67 = *(v0 + 152);
                  v68 = *(v0 + 128);

                  v34(v67, v68);
                }

                v69 = v102;
                v17 = v103;
              }

              else
              {
                v106 = v34;
                v97 = v7;
                v100 = v19;
                v38 = *(v0 + 120);
                v7 = *(v0 + 104);
                v39 = [v96 text];
                v40 = sub_232CE9D50();

                sub_232CE9FB0();
                sub_232BECA40();
                v42 = v41;
                v44 = v43;

                MEMORY[0x238391B80](v39, v40, v42, v44);
                sub_232BECA40();

                *(v0 + 56) = v39;
                *(v0 + 64) = v40;
                sub_232CE89A0();
                sub_232B48080();
                v45 = sub_232CEA3A0();
                v47 = v46;
                v48 = *v95;
                (*v95)(v38, v7);

                *(v0 + 72) = v45;
                *(v0 + 80) = v47;
                sub_232CE89B0();
                v49 = sub_232CEA3A0();
                v51 = v50;
                v48(v38, v7);

                v52 = HIBYTE(v51) & 0xF;
                if ((v51 & 0x2000000000000000) == 0)
                {
                  v52 = v49 & 0xFFFFFFFFFFFFLL;
                }

                if (v52)
                {
                  v7 = v97;
                  v53 = sub_232BEC968([v97 entityID]);
                  v55 = v54;
                  [v97 score];
                  v4 = sub_232CEA0B0();
                  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
                  sub_232CEA300();
                  v56 = objc_allocWithZone(MEMORY[0x277CF1680]);
                  sub_232BECA2C();
                  sub_232BEC84C(0, v49, v51, v53, v55, v4, 0, 0, v84, v85);
                  MEMORY[0x238391D50]();
                  v19 = v100;
                  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_232CEA000();
                  }

                  sub_232CEA020();
                  v92 = *(v0 + 88);
                }

                else
                {
                  v70 = *(v0 + 160);

                  sub_232CE9A20();
                  v71 = sub_232CE9A00();
                  v72 = sub_232CEA1B0();
                  v73 = os_log_type_enabled(v71, v72);
                  v74 = *(v0 + 160);
                  v75 = *(v0 + 128);
                  v19 = v100;
                  v4 = v97;
                  if (v73)
                  {
                    v76 = swift_slowAlloc();
                    *v76 = 0;
                    _os_log_impl(&dword_232B02000, v71, v72, "No need to have extractions with empty string", v76, 2u);
                    sub_232B26D28();
                  }

                  else
                  {
                  }

                  v106(v74, v75);
                }

                v69 = v102;
                v17 = v103;
              }

              ++v19;
              if (v22 == v69)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
            break;
          }

LABEL_41:

          v6 = v87;
          v4 = v88;
          v7 = v91;
          v8 = v86;
        }
      }

      if (v7 == v6)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    __break(1u);
LABEL_55:

    __break(1u);
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
LABEL_47:
    v77 = *(v0 + 200);

    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    v80 = *(v0 + 144);
    v81 = *(v0 + 152);
    v82 = *(v0 + 120);

    v83 = *(v0 + 8);

    v83(v92);
  }
}

uint64_t sub_232BEB5BC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  sub_232CE9A20();
  v4 = v2;
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_232B02000, v5, v6, "Error while calling ecr: %@", v7, 0xCu);
    sub_232BDB890(v8);
    sub_232B26D28();
    sub_232BA6A84();
  }

  else
  {
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v15 = *(v0 + 120);

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_232BEB758(uint64_t a1)
{
  sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v2 = MEMORY[0x277D84F90];
  v14 = sub_232CE9C60();
  sub_232BEA654(a1, &v14);
  v3 = v14;
  v13 = v2;
  v4 = v14 + 64;
  v5 = 1 << *(v14 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v14 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      swift_bridgeObjectRelease_n();
      return v2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
        MEMORY[0x238391D50]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        v7 &= v7 - 1;
        result = sub_232CEA020();
        v2 = v13;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

void sub_232BEB8EC(void **a1, uint64_t *a2)
{
  v5 = sub_232CE9A30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *a1;
  v17 = sub_232C49E98(v16);
  if (!v18)
  {
    return;
  }

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v44 = v2;
    v20 = sub_232C4B888();
    v22 = v21;

    if (sub_232CE9E60() < 2)
    {

      sub_232CE9A20();
      v23 = sub_232CE9A00();
      v24 = sub_232CEA1A0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_232B02000, v23, v24, "Discarding span because it's a single character", v25, 2u);
        MEMORY[0x238393870](v25, -1, -1);
      }

      (*(v6 + 8))(v13, v5);
      return;
    }

    if (sub_232C4B964())
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_232B02000, v29, v30, "Discarding span because it resembles a URL", v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
      }

      (*(v6 + 8))(v15, v5);
      return;
    }

    v32 = sub_232B1E2BC(v20, v22, *a2);
    if (!v32)
    {
      v42 = v16;
      v43 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *a2;
      sub_232B1FF44();
      *a2 = v45;

      return;
    }

    v33 = sub_232B1E2BC(v20, v22, *a2);
    if (v33)
    {
      v34 = v33;
      sub_232C49EA4(v33);
      if (!v35)
      {
        goto LABEL_21;
      }

      sub_232C49EA4(v16);
      if (v36)
      {

        [v16 confidenceScore];
        v38 = v37;
        [v34 confidenceScore];
        if (v39 >= v38)
        {

          return;
        }

LABEL_21:
        v40 = v16;
        v41 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *a2;
        sub_232B1FF44();
        *a2 = v45;

        return;
      }
    }

    return;
  }

  sub_232CE9A20();
  v26 = sub_232CE9A00();
  v27 = sub_232CEA1C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_232B02000, v26, v27, "Found an empty span while filtering", v28, 2u);
    MEMORY[0x238393870](v28, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
}

void sub_232BEBD64(uint64_t a1, uint64_t a2)
{
  v27 = MEMORY[0x277D84F90];
  v3 = sub_232B26B10(a2);
  v4 = 0;
  v5 = *MEMORY[0x277CD8920];
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383922C0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(a2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v8 = *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
    v9 = *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
    if (v8 == sub_232CE9D50() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_232CEA750();

      if ((v12 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_232CEA560();
    v13 = *(v27 + 16);
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
LABEL_15:
    ++v4;
  }

  v14 = v27;
  v15 = sub_232B26B10(v27);
  if (!v15)
  {

    return;
  }

  v16 = v15;
  v28 = MEMORY[0x277D84F90];
  sub_232CEA580();
  if (v16 < 0)
  {
    goto LABEL_29;
  }

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2383922C0](v17, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = *&v18[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
    v21 = *&v18[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];

    v22 = sub_232CEA300();
    sub_232CEA300();
    v23 = objc_allocWithZone(MEMORY[0x277CF1680]);
    sub_232BECA2C();
    sub_232BEC84C(1, v20, v21, 0, 0, v22, 0, 0, v25, v26);

    sub_232CEA560();
    v24 = *(v28 + 16);
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
  }

  while (v16 != v17);
}

uint64_t sub_232BEC014(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = sub_232B5138C();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BEC03C()
{
  sub_232B26C7C();
  v1 = *(v0[3] + 24);
  v0[5] = v1;
  if (v1)
  {
    type metadata accessor for DUPosTaggingSpecification();
    v0[6] = swift_allocObject();
    v2 = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_232BEC190;
    v4 = v0[3];

    return sub_232B4F97C(v4);
  }

  else
  {
    sub_232B4A95C();
    v6 = swift_allocError();
    *v7 = 0xD000000000000015;
    *(v7 + 8) = 0x8000000232D04650;
    *(v7 + 16) = 0;
    v8 = v0[1];

    return v8(v6, 1);
  }
}

uint64_t sub_232BEC190()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v11 = *v0;
  *(v1 + 64) = v6;

  v7 = sub_232B5138C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BEC298()
{
  sub_232B26C7C();
  if (v0[8])
  {
    v2 = v0[5];
    sub_232BEBD64(v1, v0[8]);
    v4 = v3;

    v0[2] = v4;
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_232BEC3D4;

    return sub_232BEA76C();
  }

  else
  {
    v7 = v0[5];
    sub_232B4A95C();
    v8 = swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x8000000232D082B0;
    *(v9 + 16) = 0;

    v10 = v0[1];

    return v10(v8, 1);
  }
}

uint64_t sub_232BEC3D4()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BEC4BC()
{
  sub_232B26C7C();
  v1 = v0[5];
  sub_232C5E360(v0[10]);
  v2 = sub_232BEB758(v0[2]);

  v3 = v0[1];

  return v3(v2, 0);
}

uint64_t sub_232BEC594(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232BEC630;

  return sub_232BEC014(a2);
}

uint64_t sub_232BEC630()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v10 = *v0;

  *v7 = v4;
  *(v7 + 8) = v2 & 1;
  v8 = *(v10 + 8);

  return v8();
}

id sub_232BEC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = sub_232CE9D20();

  if (!a3)
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_232CE9FD0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_232BA4DEC(0, &qword_27DDC7920, 0x277CCAE60);
  v16 = sub_232CE9FD0();

LABEL_6:
  v17 = [v8 initWithText:v14 entityClassFilter:v15 spans:v16 mode:a5 constraint:a6 includeInferredNames:a7 & 1];

  return v17;
}

id sub_232BEC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned int a9, void *a10)
{
  if (a3)
  {
    v15 = sub_232CE9D20();
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v16 = sub_232CE9D20();
  }

  else
  {
    v16 = 0;
  }

  if (a8)
  {
    v17 = sub_232CE9D20();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v10 initWithType:a1 text:v15 identifier:v16 confidenceScore:a6 contactIdentifier:v17 role:a9 isCoref:a10];

  return v18;
}

uint64_t sub_232BEC968(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232BEC9D8()
{
  result = qword_2814E0F20;
  if (!qword_2814E0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E0F20);
  }

  return result;
}

uint64_t sub_232BECA90(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v4 = sub_232CE9A30();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_232BECB9C;

  return sub_232B4FE04(a2);
}

uint64_t sub_232BECB9C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_232BECC9C, 0, 0);
}

uint64_t sub_232BECC9C()
{
  v20 = v0;
  if (v0[10])
  {
    v1 = v0[8];
    sub_232CE9A20();
    v2 = sub_232CE9A00();
    v3 = sub_232CEA1B0();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = sub_232BECA70();
      *(v8 + 4) = sub_232BAD2D4(v10, v11, &v19);
      _os_log_impl(&dword_232B02000, v2, v3, "POEM phase ID: %s", v8, 0xCu);
      sub_232B2040C(v9);
      MEMORY[0x238393870](v9, -1, -1);
      MEMORY[0x238393870](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    v12 = v0[10];
    v13 = v0[5];
    v14 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
    swift_beginAccess();
    v15 = *(v13 + v14);
    *(v13 + v14) = v12;
  }

  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

id sub_232BECE2C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BECE88(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232BECA90(a1, a2);
}

id sub_232BECF48()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v3;
  v7.receiver = v4;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  DURequestContentType.formIntersection(_:)();
  return v5;
}

BOOL sub_232BECFE4(void *a1, void *a2)
{
  v5 = *v2;
  v6 = sub_232BECF48();
  type metadata accessor for DURequestContentType();
  v7 = sub_232CEA310();
  if ((v7 & 1) == 0)
  {

    DURequestContentType.formUnion(_:)();
    v6 = a2;
  }

  *a1 = v6;
  return (v7 & 1) == 0;
}

id sub_232BED070()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme();
  v1 = sub_232CE9FD0();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t sub_232BED0E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUPosTaggingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2814E0E20;
  *a1 = result;
  return result;
}

uint64_t sub_232BED150()
{
  v1 = *(v0[10] + 24);
  if (v1)
  {
    v2 = v0 + 9;
    v3 = MEMORY[0x277D84F90];
    v0[9] = MEMORY[0x277D84F90];
    v4 = sub_232B5821C();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_232BED5DC();
      sub_232B124A8(&qword_27DDC7658, &qword_232CFB6D0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_232CF6460;
      v9 = *MEMORY[0x277CD8968];
      *(v8 + 32) = *MEMORY[0x277CD8968];
      v25 = v1;
      v10 = v9;
      v11 = sub_232BED070();
      sub_232BED620(v6, v7, v11);
      sub_232B124A8(&qword_27DDC7928, &qword_232CFB6D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_232CF8180;
      v13 = *MEMORY[0x277CD8920];
      v14 = *MEMORY[0x277CD8928];
      *(inited + 32) = *MEMORY[0x277CD8920];
      *(inited + 40) = v14;
      v15 = *MEMORY[0x277CD8908];
      *(inited + 48) = *MEMORY[0x277CD8908];
      v16 = v13;
      v17 = v14;
      v18 = v15;
      sub_232C0CF18(inited);
      v20 = v19;
      v21 = swift_task_alloc();
      v21[2] = v20;
      v21[3] = v6;
      v21[4] = v7;
      v21[5] = v2;
      sub_232CEA2E0();

      v3 = *v2;
    }
  }

  else
  {
    sub_232B4A95C();
    v3 = swift_allocError();
    *v22 = 0xD000000000000015;
    *(v22 + 8) = 0x8000000232D04650;
    *(v22 + 16) = 0;
  }

  v23 = v0[1];

  return v23(v3, v1 == 0);
}

uint64_t sub_232BED3C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v9 = a1;
    if (sub_232BA8004(v9, a4))
    {
      v10 = sub_232CE9FB0();
      v11 = MEMORY[0x238391B80](v10);
      v13 = v12;

      v14 = sub_232CE9F00();
      type metadata accessor for PosTaggingResult();
      v15 = sub_232CE9D50();
      v17 = v16;
      v18 = sub_232CE9E60();
      PosTaggingResult.__allocating_init(tag:text:start:len:)(v15, v17, v11, v13, v14, v18);
      MEMORY[0x238391D50]();
      sub_232BAE05C(*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_232CEA020();
    }
  }

  return 1;
}

uint64_t sub_232BED544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BED130(a2);
}

unint64_t sub_232BED5DC()
{
  result = qword_27DDC7650;
  if (!qword_27DDC7650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7650);
  }

  return result;
}

void sub_232BED620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();
  [a3 setString_];
}

uint64_t sub_232BED6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_232BED794;

  return sub_232B4F97C(a2);
}

uint64_t sub_232BED794(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_232BED894, 0, 0);
}

uint64_t sub_232BED894()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_posTags;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = v1;
  }

  v5 = v0[1];

  return v5();
}

id sub_232BED92C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 1024;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BED988(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232BED6E4(a1, a2);
}

uint64_t sub_232BEDA48()
{
  sub_232B124A8(&qword_27DDC7950, &unk_232CFB760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_232CFB730;
  type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  v2 = sub_232BEE358();
  *(v1 + 56) = v0;
  *(v1 + 64) = &off_281931808;
  *(v1 + 32) = v2;
  type metadata accessor for DUTopicEncodingSmolBERToSpecification();
  v3 = sub_232BEE358();
  *(v1 + 96) = v0;
  *(v1 + 104) = &off_2819325A0;
  *(v1 + 72) = v3;
  type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  v4 = sub_232BEE358();
  *(v1 + 136) = v0;
  *(v1 + 144) = &off_281931E10;
  *(v1 + 112) = v4;
  type metadata accessor for DUConcatenatedDocumentTextSpecification();
  v5 = sub_232BEE358();
  *(v1 + 176) = v0;
  *(v1 + 184) = &off_281931930;
  *(v1 + 152) = v5;
  type metadata accessor for DULanguageTaggingSpecification();
  v6 = sub_232BEE358();
  *(v1 + 216) = v0;
  *(v1 + 224) = &off_281932220;
  *(v1 + 192) = v6;
  type metadata accessor for DUStructuredExtractionSpecification();
  v7 = sub_232BEE358();
  *(v1 + 256) = v0;
  *(v1 + 264) = &off_281932528;
  *(v1 + 232) = v7;
  type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  v8 = sub_232BEE358();
  *(v1 + 296) = v0;
  *(v1 + 304) = &off_281932770;
  *(v1 + 272) = v8;
  type metadata accessor for DUCategoryClassificationSpecification();
  v9 = sub_232BEE358();
  *(v1 + 336) = v0;
  *(v1 + 344) = &off_2819318B8;
  *(v1 + 312) = v9;
  type metadata accessor for DUPoemSpecification();
  v10 = sub_232BEE358();
  *(v1 + 376) = v0;
  *(v1 + 384) = &off_2814E11E8;
  *(v1 + 352) = v10;
  type metadata accessor for DUPosTaggingSpecification();
  v11 = sub_232BEE358();
  *(v1 + 416) = v0;
  *(v1 + 424) = &off_2814E0E20;
  *(v1 + 392) = v11;
  type metadata accessor for DUFoundInEventSpecification();
  v12 = sub_232BEE358();
  *(v1 + 456) = v0;
  *(v1 + 464) = &off_281932028;
  *(v1 + 432) = v12;
  type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  v13 = sub_232BEE358();
  *(v1 + 496) = v0;
  *(v1 + 504) = &off_281931E60;
  *(v1 + 472) = v13;
  type metadata accessor for DUFoundInEventDDSpecification();
  v14 = sub_232BEE358();
  *(v1 + 536) = v0;
  *(v1 + 544) = &off_281931D88;
  *(v1 + 512) = v14;
  type metadata accessor for DUFoundInEventClassificationSpecification();
  result = sub_232BEE358();
  *(v1 + 576) = v0;
  *(v1 + 584) = &off_281931D38;
  *(v1 + 552) = result;
  qword_2814E3EF0 = v1;
  return result;
}

uint64_t sub_232BEDC2C()
{
  if (qword_2814E13D0 != -1)
  {
    swift_once();
  }

  result = qword_2814E3EF0;
  v1 = *(qword_2814E3EF0 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v2 = qword_2814E3EF0 + 32;

  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_232B25E34(v2, v11);
    sub_232B0D220(v11, v10);
    sub_232B124A8(&qword_27DDC7930, &qword_232CFB740);
    sub_232B124A8(&qword_27DDC6C18, &qword_232CF6FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
LABEL_13:
      sub_232B267AC(&v7, &qword_27DDC7938, &qword_232CFB748);
      goto LABEL_14;
    }

    if (!*(&v8 + 1))
    {
      goto LABEL_13;
    }

    sub_232B0D220(&v7, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232BEE374();
      sub_232B35DA4();
      v3 = v5;
    }

    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      sub_232B35DA4();
      v3 = v6;
    }

    *(v3 + 16) = v4 + 1;
    sub_232B0D220(v10, v3 + 40 * v4 + 32);
LABEL_14:
    v2 += 40;
    --v1;
  }

  while (v1);

LABEL_17:
  qword_2814E3EC8 = v3;
  return result;
}

void *sub_232BEDE10()
{
  sub_232B124A8(&qword_27DDC7948, &qword_232CFB758);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_232CF6730;
  v1 = type metadata accessor for DUBackboneEncodingSmolBERToImplementation();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_2819317D0;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DUTopicEncodingSmolBERToImplementation();
  v4 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_281932568;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for DUCategoryClassificationSmolBERToImplementation();
  v6 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v0 + 144) = &off_281931880;
  *(v0 + 112) = v6;
  v7 = type metadata accessor for DUWordPieceTokenizerImplementation();
  v8 = swift_allocObject();
  *(v0 + 176) = v7;
  *(v0 + 184) = &off_281932820;
  *(v0 + 152) = v8;
  v9 = type metadata accessor for DUConcatenatedDocumentTextDefaultImplementation();
  v10 = swift_allocObject();
  *(v0 + 216) = v9;
  *(v0 + 224) = &off_2819318F8;
  *(v0 + 192) = v10;
  v11 = type metadata accessor for DULanguageTaggingDefaultImplementation();
  v12 = swift_allocObject();
  *(v0 + 256) = v11;
  *(v0 + 264) = &off_2819321C0;
  *(v0 + 232) = v12;
  v13 = type metadata accessor for DUStructuredExtractionLocalImplementation();
  v14 = swift_allocObject();
  *(v0 + 296) = v13;
  *(v0 + 304) = &off_281932440;
  *(v0 + 272) = v14;
  v15 = type metadata accessor for DUUserInterfaceUnderstandingDefaultImplementation();
  v16 = swift_allocObject();
  *(v0 + 336) = v15;
  *(v0 + 344) = &off_2819326E8;
  *(v0 + 312) = v16;
  v17 = type metadata accessor for DUCategoryClassificationRuleBasedImplementation();
  v18 = swift_allocObject();
  *(v0 + 376) = v17;
  *(v0 + 384) = &off_281931848;
  *(v0 + 352) = v18;
  v19 = type metadata accessor for DUPoemImplementation();
  v20 = swift_allocObject();
  *(v0 + 416) = v19;
  *(v0 + 424) = &off_2814E0FE0;
  *(v0 + 392) = v20;
  v21 = type metadata accessor for DUPosTaggingImplementation();
  v22 = swift_allocObject();
  *(v0 + 456) = v21;
  *(v0 + 464) = &off_2814E0D48;
  *(v0 + 432) = v22;
  v23 = type metadata accessor for DUFoundInEventMultilingualBERTImplementation();
  swift_allocObject();
  v24 = sub_232BC0324();
  *(v0 + 496) = v23;
  *(v0 + 504) = &off_281931F90;
  *(v0 + 472) = v24;
  v25 = type metadata accessor for DUFoundInEventSmolBERToImplementation();
  v26 = swift_allocObject();
  *(v0 + 536) = v25;
  *(v0 + 544) = &off_281931FF0;
  *(v0 + 512) = v26;
  v27 = type metadata accessor for DUFoundInEventEncodingSmolBERToImplementation();
  v28 = swift_allocObject();
  *(v0 + 576) = v27;
  *(v0 + 584) = &off_281931DD8;
  *(v0 + 552) = v28;
  v29 = type metadata accessor for DUFoundInEventHTMLPreprocessingImplementation();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v0 + 616) = v29;
  *(v0 + 624) = &off_281931E28;
  *(v0 + 592) = v30;
  v31 = type metadata accessor for DUFoundInEventDefaultImplementation();
  v32 = swift_allocObject();
  *(v0 + 656) = v31;
  *(v0 + 664) = &off_281931DA0;
  *(v0 + 632) = v32;
  v33 = type metadata accessor for DUFoundInEventDDImplementation();
  v34 = swift_allocObject();
  *(v0 + 696) = v33;
  *(v0 + 704) = &off_281931D50;
  *(v0 + 672) = v34;
  v35 = type metadata accessor for DUFoundInEventClassificationImplementation();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  result = DUFoundInEventClassificationImplementation.init()();
  *(v0 + 736) = v35;
  *(v0 + 744) = &off_281931C68;
  *(v0 + 712) = result;
  qword_2814E3E90 = v0;
  return result;
}

void sub_232BEE168()
{
  if (qword_2814E0BE0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_2814E3E90 + 16);
  if (v0)
  {
    v1 = qword_2814E3E90 + 32;

    v2 = MEMORY[0x277D84F90];
    do
    {
      sub_232BEE2E8(v1, &v9);
      v6[0] = v9;
      v6[1] = v10;
      v7 = v11;
      if (*(&v10 + 1))
      {
        sub_232B0D220(v6, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232BEE374();
          sub_232B35B88();
          v2 = v4;
        }

        v3 = *(v2 + 16);
        if (v3 >= *(v2 + 24) >> 1)
        {
          sub_232B35B88();
          v2 = v5;
        }

        *(v2 + 16) = v3 + 1;
        sub_232B0D220(v8, v2 + 40 * v3 + 32);
      }

      else
      {
        sub_232B267AC(v6, &qword_27DDC7940, &qword_232CFB750);
      }

      v1 += 40;
      --v0;
    }

    while (v0);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  qword_2814E3EE8 = v2;
}

uint64_t sub_232BEE2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7940, &qword_232CFB750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BEE358()
{

  return swift_allocObject();
}

uint64_t sub_232BEE38C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_232BEE3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_232BEE3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_232BEE42C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_232BEE454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_232B27EEC(&qword_27DDC6900, &unk_232CF6480);
  v9 = sub_232CEA860();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v12 = *(a4 + 48);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v4[10] = v14;
  *v14 = v4;
  v15 = sub_232BEE92C(v14);

  return v17(v15);
}

uint64_t sub_232BEE6C8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_232BEE7C4, 0, 0);
}

uint64_t sub_232BEE7C4()
{
  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[2];
    (*(v4 + 8))(v0[9], v0[6]);
    *v5 = *v2;
  }

  else
  {
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = *(v0[4] + 32);
    v17 = v0[9];
    v9(v6, v2, v7);
    v8[3] = v7;
    v10 = sub_232BA18A8(v8);
    v9(v10, v6, v7);
    (*(v4 + 8))(v17, v3);
  }

  v11 = EnumCaseMultiPayload == 1;
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[5];
  *(v0[2] + 32) = v11;

  v15 = v0[1];

  return v15();
}

uint64_t sub_232BEE948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 255)
  {
    sub_232B267AC(a1, &qword_27DDC7958, qword_232CFB920);
    sub_232BEF2A0(a2, a3, v10);

    return sub_232B267AC(v10, &qword_27DDC7958, qword_232CFB920);
  }

  else
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    v7 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_232B1FBF0(v10, a2, a3);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_232BEEA28(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 40) = 2;
  sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  v5 = sub_232CE9C60();
  v6 = *(v2 + 24);
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;

  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_232BEEAA8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  *(v3 + 40) = 2;
  sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  v7 = sub_232CE9C60();
  v8 = *(v3 + 24);
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_232BEEB30(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  return MEMORY[0x2822009F8](sub_232BEEB54, 0, 0);
}

uint64_t sub_232BEEB54()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = sub_232BEF4D0();
  sub_232BEF3B8(v3, *(v1 + 32));
  v5 = v4();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v2 + 16);

  sub_232B1E1C4(v5, v7, v8, v0 + 56);

  if (*(v0 + 88) != 255)
  {
    v9 = *(v0 + 328);
    v10 = *(v0 + 56);
    v11 = *(v0 + 72);
    *(v9 + 32) = *(v0 + 88);
    *v9 = v10;
    *(v9 + 16) = v11;
    goto LABEL_3;
  }

  v15 = *(v0 + 336);
  v16 = *(v0 + 344);
  sub_232B267AC(v0 + 56, &qword_27DDC7958, qword_232CFB920);
  v17 = *(v16 + 32);

  v18 = sub_232BEF8E8(v15);
  *(v0 + 352) = v18;

  v19 = *(v18 + 16);
  *(v0 + 360) = v19;
  *(v0 + 368) = 0;
  result = *(v0 + 352);
  if (!v19)
  {
    v28 = *(v0 + 336);
    v29 = *(v0 + 344);
    v30 = *(v0 + 328);

    sub_232BEF400();
    v31 = sub_232BEF4B8();
    sub_232BEF3B8(v31, *(v28 + 32));
    v32();
    sub_232BEF41C();

    sub_232BEF24C();
    v33 = swift_allocError();
    *v34 = v37;
    v34[1] = v38;
    *v30 = v33;
    *(v30 + 32) = 1;
    sub_232BEF400();
    v35 = sub_232BEF4B8();
    sub_232BEF3B8(v35, *(v28 + 32));
    v36();
    sub_232BEF440();
    sub_232BEF498();
    sub_232BEF478();
    swift_endAccess();
LABEL_3:
    v12 = *(v0 + 8);
    sub_232BEF460();

    __asm { BRAA            X1, X16 }
  }

  if (*(result + 16))
  {
    sub_232B25E34(result + 32, v0 + 16);
    v21 = *(v0 + 48);
    sub_232B203C8((v0 + 16), *(v0 + 40));
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *v22 = v0;
    sub_232BEF3C8(v22);
    sub_232BEF460();

    return sub_232BEE454(v23, v24, v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232BEEDC4()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_232BEEEC0, 0, 0);
}

uint64_t sub_232BEEEC0()
{
  sub_232BEF1DC(v0 + 96, v0 + 136);
  if ((*(v0 + 168) & 1) == 0)
  {
    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);

    v16 = sub_232BEF4D0();
    sub_232BEF3B8(v16, *(v14 + 32));
    v18 = v17();
    v20 = v19;
    sub_232BEF1DC(v0 + 96, v0 + 176);
    swift_beginAccess();
    sub_232BEE948(v0 + 176, v18, v20);
    swift_endAccess();
    sub_232B2040C((v0 + 16));
    v21 = *(v0 + 96);
    v22 = *(v0 + 112);
    *(v15 + 32) = *(v0 + 128);
    *v15 = v21;
    *(v15 + 16) = v22;
    sub_232B267AC(v0 + 136, &qword_27DDC6778, &unk_232CF7FB0);
LABEL_5:
    v23 = *(v0 + 8);
    sub_232BEF460();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 368) + 1;
  sub_232B267AC(v0 + 96, &qword_27DDC6778, &unk_232CF7FB0);
  sub_232B2040C((v0 + 16));
  sub_232B267AC(v0 + 136, &qword_27DDC6778, &unk_232CF7FB0);
  *(v0 + 368) = v1;
  result = *(v0 + 352);
  if (v1 == *(v0 + 360))
  {
    v3 = *(v0 + 336);
    v4 = *(v0 + 344);
    v5 = *(v0 + 328);

    sub_232BEF400();
    v6 = sub_232BEF4B8();
    sub_232BEF3B8(v6, *(v3 + 32));
    v7();
    sub_232BEF41C();

    sub_232BEF24C();
    v8 = swift_allocError();
    *v9 = v33;
    v9[1] = v34;
    *v5 = v8;
    *(v5 + 32) = 1;
    sub_232BEF400();
    v10 = sub_232BEF4B8();
    sub_232BEF3B8(v10, *(v3 + 32));
    v11();
    sub_232BEF440();
    sub_232BEF498();
    sub_232BEF478();
    swift_endAccess();
    goto LABEL_5;
  }

  if (v1 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_232B25E34(result + 40 * v1 + 32, v0 + 16);
    v26 = *(v0 + 48);
    sub_232B203C8((v0 + 16), *(v0 + 40));
    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    *v27 = v0;
    sub_232BEF3C8();
    sub_232BEF460();

    return sub_232BEE454(v28, v29, v30, v31);
  }

  return result;
}

uint64_t sub_232BEF154()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_232BEF184()
{
  sub_232BEF154();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_232BEF1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BEF24C()
{
  result = qword_27DDC7960;
  if (!qword_27DDC7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7960);
  }

  return result;
}

double sub_232BEF2A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_232B1F160(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    v11 = *(*v4 + 24);
    sub_232B124A8(&qword_27DDC6770, &unk_232CF5DD0);
    sub_232CEA5C0();
    v12 = *(*(v16 + 48) + 16 * v9 + 8);

    v13 = *(v16 + 56) + 40 * v9;
    v14 = *(v13 + 16);
    *a3 = *v13;
    *(a3 + 16) = v14;
    *(a3 + 32) = *(v13 + 32);
    sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
    sub_232CEA5E0();
    *v4 = v16;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
  }

  return result;
}

uint64_t sub_232BEF3C8(uint64_t a1)
{
  *(a1 + 8) = sub_232BEEDC4;
  v2 = *(v1 + 344);
  return v1 + 96;
}

void *sub_232BEF400()
{
  v2 = v0[3];

  return sub_232B203C8(v0, v2);
}

void sub_232BEF41C()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232BEF440()
{

  return sub_232BEF1DC(v0, v1 + 216);
}

uint64_t sub_232BEF478()
{

  return sub_232BEE948(v1 + 216, v0, v2);
}

uint64_t sub_232BEF498()
{

  return swift_beginAccess();
}

uint64_t sub_232BEF4B8()
{

  return swift_getDynamicType();
}

uint64_t sub_232BEF4D0()
{
  sub_232B203C8(v0, v0[3]);

  return swift_getDynamicType();
}

uint64_t sub_232BEF508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_232B25E34(v2, &v16);
      sub_232BEFCCC(&v16);
      *&v13 = (*(v17 + 16))();
      *(&v13 + 1) = v4;
      sub_232B0D220(&v16, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = *(v3 + 16);
        sub_232B35BAC();
        v3 = v10;
      }

      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_232B35BAC();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 56 * v5;
      v7 = v14[0];
      v8 = v14[1];
      *(v6 + 80) = v15;
      *(v6 + 48) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v13;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return sub_232B631D8(v3);
}

uint64_t sub_232BEF640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_232B25E34(v3, &v17);
      sub_232BEFCCC(&v17);
      (*(v18 + 24))(v16);
      v4 = sub_232BEFCCC(v16);
      v5 = v16[4];
      sub_232B2040C(v16);
      v6 = (*(v5 + 16))(v4, v5);
      v8 = v7;
      sub_232B124A8(&qword_27DDC6C20, &unk_232CF6FB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_232CF6460;
      sub_232B0D220(&v17, v9 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v2 + 16);
        sub_232B35CA8();
        v2 = v13;
      }

      v10 = *(v2 + 16);
      if (v10 >= *(v2 + 24) >> 1)
      {
        sub_232B35CA8();
        v2 = v14;
      }

      *(v2 + 16) = v10 + 1;
      v11 = (v2 + 24 * v10);
      v11[4] = v6;
      v11[5] = v8;
      v11[6] = v9;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return sub_232BEF7EC(v2);
}

uint64_t sub_232BEF7EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC7308, &qword_232CF89D0);
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_232BEFA10(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_232BEF884(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DUProcessingScheduler();
  v5 = sub_232BEF508(a1);

  *(v2 + 16) = v5;
  v6 = sub_232BEF640(a2);

  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_232BEF8E8(void *a1)
{
  v2 = v1;
  sub_232B203C8(a1, a1[3]);
  swift_getDynamicType();
  v4 = (*(a1[4] + 16))();
  v6 = v5;
  v7 = *(v2 + 24);

  v8 = sub_232B20544(v4, v6, v7);

  if (v8)
  {
    return v8;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_232BEF990()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_232BEF9B8()
{
  sub_232BEF990();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_232BEFA10(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v37 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v37 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v39 = v6;
    v9 = *v6;
    v10 = *a3;

    v12 = sub_232B1F160(v7, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_27;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_232B124A8(&qword_27DDC7968, &qword_232CFB9D8);
        sub_232CEA5D0();
      }
    }

    else
    {
      sub_232B64254(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_232B1F160(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_33;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * v12);
      v23 = *(v9 + 16);
      v24 = *(v22 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_29;
      }

      v25 = *(v21 + 8 * v12);

      if (!swift_isUniquelyReferenced_nonNull_native() || (v26 = *(v22 + 24) >> 1, v26 < v24 + v23))
      {
        sub_232B35B88();
        v22 = v27;
        v26 = *(v27 + 24) >> 1;
      }

      if (*(v9 + 16))
      {
        if (v26 - *(v22 + 16) < v23)
        {
          goto LABEL_31;
        }

        sub_232B124A8(&qword_27DDC6C28, &qword_232CFB9E0);
        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = *(v22 + 16);
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_32;
          }

          *(v22 + 16) = v30;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_30;
        }
      }

      v34 = v20[7];
      v35 = *(v34 + 8 * v12);
      *(v34 + 8 * v12) = v22;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v31 = (v20[6] + 16 * v12);
      *v31 = v7;
      v31[1] = v8;
      *(v20[7] + 8 * v12) = v9;
      v32 = v20[2];
      v29 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v29)
      {
        goto LABEL_28;
      }

      v20[2] = v33;
    }

    v6 = v39 + 3;
    ++v5;
    a2 = 1;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232BEFCCC(void *a1)
{
  sub_232B203C8(a1, v1);

  return swift_getDynamicType();
}

id DURawDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_232BEFD64(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v2);
  v4 = *(v3 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  sub_232B2D108();
  v137 = v6;
  sub_232B554F0();
  v135 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v7 = sub_232B13F24(v135);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v136 = (v11 - v10);
  v12 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v12);
  v14 = *(v13 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v15);
  sub_232B2D108();
  v133 = v16;
  sub_232B554F0();
  v131 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v17 = sub_232B13F24(v131);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v132 = (v21 - v20);
  sub_232B554F0();
  v22 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v23 = sub_232B27FBC(v22);
  v129 = v24;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v129 - v30;
  v32 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v32);
  v34 = *(v33 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v35);
  sub_232B2D108();
  v130 = v36;
  v37 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v37);
  v39 = *(v38 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v40);
  sub_232BF7454();
  v41 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v42 = v41 - 8;
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  sub_232B20704();
  v46 = v45 - v44;
  v47 = objc_allocWithZone(type metadata accessor for DURawDocument());
  v48 = [v47 init];
  v138 = a1;
  sub_232BF712C();
  v49 = *(v42 + 28);
  v134 = v46;
  v50 = *(v46 + v49);
  sub_232B13F74();
  v51 = v50[2];
  v52 = v50[3];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v53 = v50[4];
  v54 = v50[5];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v55 = v50[6];
  v56 = v50[7];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v57 = v50[8];
  v58 = v50[9];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v59 = v50[10];
  v60 = v50[11];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v61 = v50[12];
  v62 = v50[13];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v63 = v50[14];
  v64 = v50[15];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v65 = v50[16];
  v66 = v50[17];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v67 = v50[18];
  v68 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  sub_232B13F5C();
  v69 = *&v68[v48];
  *&v68[v48] = v67;

  sub_232B13F74();
  v70 = v50[19];
  v71 = v50[20];
  sub_232BF71EC();
  sub_232BF7270();

  sub_232B13F74();
  v72 = v50[21];
  v73 = v50[22];

  sub_232BF7498();

  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74();
  v74 = v50[23];
  v75 = v50[24];

  sub_232BF7498();

  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74();
  v76 = v50[25];
  v77 = v50[26];

  sub_232BF7498();

  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74();
  v78 = v50[27];
  sub_232CE8CA0();
  v79 = sub_232CE8D10();
  v80 = sub_232BF7244();
  sub_232B12504(v80, v81, v82, v79);
  sub_232B207D4();
  v83 = v48;
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74();
  v84 = v50[28];
  sub_232CE8CA0();
  v85 = sub_232BF7244();
  sub_232B12504(v85, v86, v87, v79);
  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74();
  v88 = v50[29];
  v89 = MEMORY[0x277D84F90];
  v139 = MEMORY[0x277D84F90];
  v90 = *(v88 + 16);
  if (v90)
  {
    v130 = v48;
    sub_232BF7444();
    v93 = v91 + v92;
    v95 = *(v94 + 72);
    v129 = v91;

    v96 = MEMORY[0x277D84F90];
    do
    {
      sub_232BF72F8();
      sub_232BF712C();
      sub_232BF712C();
      v97 = sub_232B43010(v29);
      sub_232BF72E0();
      v99 = sub_232BF610C(v31, v98);
      if (v97)
      {
        MEMORY[0x238391D50](v99);
        if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v96 = v139;
      }

      v93 += v95;
      --v90;
    }

    while (v90);

    v83 = v130;
    v89 = MEMORY[0x277D84F90];
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  v100 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F5C();
  v101 = *&v83[v100];
  *&v83[v100] = v96;

  sub_232B13F74();
  v102 = v133;
  sub_232BF5EEC();
  v103 = sub_232BF74D4();
  v104 = v131;
  sub_232B351B0(v103, v105, v131);
  if (v106)
  {
    v115 = v132;
    *v132 = 0;
    *(v115 + 8) = 0xE000000000000000;
    v107 = v115 + *(v104 + 20);
    sub_232CE9330();
    v108 = *(v104 + 24);
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
    sub_232B55484();
    sub_232B12504(v109, v110, v111, v112);
    v113 = sub_232BF74D4();
    sub_232B351B0(v113, v114, v104);
    v116 = v137;
    v117 = v135;
    if (!v106)
    {
      sub_232B13790(v102, &qword_27DDC69B0, &qword_232CF6998);
    }
  }

  else
  {
    sub_232BF71B4();
    v115 = v132;
    sub_232BF61BC();
    v116 = v137;
    v117 = v135;
  }

  v118 = sub_232B39460(v115);
  v119 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C();
  v120 = *&v83[v119];
  *&v83[v119] = v118;

  sub_232B13F74();
  sub_232BF5EEC();
  sub_232B351B0(v116, 1, v117);
  if (v106)
  {
    v122 = v136;
    *v136 = 0;
    v122[1] = 0xE000000000000000;
    v122[2] = 0;
    v122[3] = 0xE000000000000000;
    v122[4] = v89;
    v122[5] = v89;
    v122[6] = 0;
    v122[7] = 0xE000000000000000;
    v122[8] = 0;
    v122[9] = 0xE000000000000000;
    v121 = v122 + *(v117 + 40);
    sub_232CE9330();
    sub_232B351B0(v116, 1, v117);
    v123 = v138;
    v124 = v134;
    if (!v106)
    {
      sub_232B13790(v116, &qword_27DDC69A0, &qword_232CF6990);
    }
  }

  else
  {
    sub_232BF7184();
    v122 = v136;
    sub_232BF61BC();
    v123 = v138;
    v124 = v134;
  }

  v125 = sub_232B3E1E8(v122);
  sub_232BF610C(v123, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232BF610C(v124, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  v126 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C();
  v127 = *&v83[v126];
  *&v83[v126] = v125;

  return v83;
}

char *sub_232BF073C(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v114 - v5;
  v120 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v6 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v114 - v10;
  v116 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = (&v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v114 = *(v13 - 8);
  v14 = *(v114 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v114 - v18;
  v20 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v115 = &v114 - v22;
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_allocWithZone(v1) init];
  v123 = a1;
  sub_232BF712C();
  v31 = *(v26 + 28);
  v119 = v29;
  v32 = *&v29[v31];
  swift_beginAccess();
  v33 = v32[2];
  v34 = v32[3];
  v35 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  swift_beginAccess();
  v36 = *(v35 + 1);
  *v35 = v33;
  *(v35 + 1) = v34;

  swift_beginAccess();
  v37 = v32[4];
  v38 = v32[5];
  v39 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline];
  swift_beginAccess();
  v40 = *(v39 + 1);
  *v39 = v37;
  *(v39 + 1) = v38;

  swift_beginAccess();
  v41 = v32[6];
  v42 = v32[7];
  v43 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version];
  swift_beginAccess();
  v44 = *(v43 + 1);
  *v43 = v41;
  *(v43 + 1) = v42;

  swift_beginAccess();
  v45 = v32[8];
  v46 = v32[9];
  v47 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  swift_beginAccess();
  v48 = *(v47 + 1);
  *v47 = v45;
  *(v47 + 1) = v46;

  swift_beginAccess();
  v49 = v32[10];
  v50 = v32[11];
  v51 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract];
  swift_beginAccess();
  v52 = *(v51 + 1);
  *v51 = v49;
  *(v51 + 1) = v50;

  swift_beginAccess();
  v53 = v32[12];
  v54 = v32[13];
  v55 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment];
  swift_beginAccess();
  v56 = *(v55 + 1);
  *v55 = v53;
  *(v55 + 1) = v54;

  swift_beginAccess();
  v57 = v32[14];
  v58 = v32[15];
  v59 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  swift_beginAccess();
  v60 = *(v59 + 1);
  *v59 = v57;
  *(v59 + 1) = v58;

  swift_beginAccess();
  v61 = v32[16];
  v62 = v32[17];
  v63 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage];
  swift_beginAccess();
  v64 = *(v63 + 1);
  *v63 = v61;
  *(v63 + 1) = v62;

  swift_beginAccess();
  v65 = v32[18];
  v66 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  swift_beginAccess();
  v67 = *&v66[v30];
  *&v66[v30] = v65;

  swift_beginAccess();
  v68 = v32[19];
  v69 = v32[20];
  v70 = &v30[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  swift_beginAccess();
  v71 = *(v70 + 1);
  *v70 = v68;
  *(v70 + 1) = v69;

  swift_beginAccess();
  v72 = v32[21];
  v73 = v32[22];

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v74 = v32[23];
  v75 = v32[24];

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v76 = v32[25];
  v77 = v32[26];

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v78 = v32[27];
  v79 = v115;
  sub_232CE8CA0();
  v80 = sub_232CE8D10();
  sub_232B12504(v79, 0, 1, v80);
  swift_beginAccess();
  v81 = v30;
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v82 = v32[28];
  sub_232CE8CA0();
  sub_232B12504(v79, 0, 1, v80);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v83 = v32[29];
  v84 = MEMORY[0x277D84F90];
  v124 = MEMORY[0x277D84F90];
  v85 = *(v83 + 16);
  if (v85)
  {
    v115 = v30;
    v86 = v83 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v87 = *(v114 + 72);
    v114 = v83;

    v88 = MEMORY[0x277D84F90];
    do
    {
      sub_232BF712C();
      sub_232BF712C();
      v89 = sub_232B43010(v17);
      v90 = sub_232BF610C(v19, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
      if (v89)
      {
        MEMORY[0x238391D50](v90);
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v88 = v124;
      }

      v86 += v87;
      --v85;
    }

    while (v85);

    v81 = v115;
    v84 = MEMORY[0x277D84F90];
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v91 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  swift_beginAccess();
  v92 = *&v81[v91];
  *&v81[v91] = v88;

  swift_beginAccess();
  v93 = v118;
  sub_232BF5EEC();
  v94 = v116;
  if (sub_232B12480(v93, 1, v116) == 1)
  {
    v95 = v117;
    *v117 = 0;
    *(v95 + 8) = 0xE000000000000000;
    v96 = v95 + *(v94 + 20);
    sub_232CE9330();
    v97 = *(v94 + 24);
    v98 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
    sub_232B12504(v95 + v97, 1, 1, v98);
    v99 = sub_232B12480(v93, 1, v94);
    v100 = v122;
    v101 = v120;
    if (v99 != 1)
    {
      sub_232B13790(v93, &qword_27DDC69B0, &qword_232CF6998);
    }
  }

  else
  {
    v95 = v117;
    sub_232BF61BC();
    v100 = v122;
    v101 = v120;
  }

  v102 = sub_232B39460(v95);
  v103 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  swift_beginAccess();
  v104 = *&v81[v103];
  *&v81[v103] = v102;

  swift_beginAccess();
  sub_232BF5EEC();
  if (sub_232B12480(v100, 1, v101) == 1)
  {
    v105 = v121;
    *v121 = 0;
    v105[1] = 0xE000000000000000;
    v105[2] = 0;
    v105[3] = 0xE000000000000000;
    v105[4] = v84;
    v105[5] = v84;
    v105[6] = 0;
    v105[7] = 0xE000000000000000;
    v105[8] = 0;
    v105[9] = 0xE000000000000000;
    v106 = v105 + *(v101 + 40);
    sub_232CE9330();
    v107 = sub_232B12480(v100, 1, v101);
    v108 = v123;
    v109 = v119;
    if (v107 != 1)
    {
      sub_232B13790(v100, &qword_27DDC69A0, &qword_232CF6990);
    }
  }

  else
  {
    v105 = v121;
    sub_232BF61BC();
    v108 = v123;
    v109 = v119;
  }

  v110 = sub_232B3E1E8(v105);
  sub_232BF610C(v108, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232BF610C(v109, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  v111 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  swift_beginAccess();
  v112 = *&v81[v111];
  *&v81[v111] = v110;

  return v81;
}

char *DURawDocument.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v170 = a1;
  v5 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232B2D108();
  v169 = v9;
  sub_232B554F0();
  v167 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v10 = sub_232B13F24(v167);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v168 = (v14 - v13);
  v15 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v15);
  v17 = *(v16 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  sub_232B2D108();
  v166 = v19;
  sub_232B554F0();
  v164 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v20 = sub_232B13F24(v164);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v165 = (v24 - v23);
  sub_232B554F0();
  v25 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v26 = sub_232B27FBC(v25);
  v161 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v158 - v33;
  v35 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v35);
  v37 = *(v36 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v38);
  sub_232B2D108();
  v163 = v39;
  v40 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v40);
  v42 = *(v41 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v43);
  sub_232B2D108();
  v162 = v44;
  v45 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  sub_232B2D120(v45);
  v47 = *(v46 + 64);
  sub_232B2D114();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v158 - v50;
  v52 = *(a2 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B20704();
  v56 = v55 - v54;
  v57 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v58 = sub_232B13F24(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_232B20704();
  v63 = v62 - v61;
  v171 = [objc_allocWithZone(v3) init];
  v64 = v170;
  (*(v52 + 16))(v56);
  if (swift_dynamicCast())
  {
    v159 = v52;
    v160 = a2;
    v65 = sub_232BF7244();
    sub_232B12504(v65, v66, v67, v57);
    sub_232BF61BC();
    v68 = *(v57 + 20);
    v158 = v63;
    v69 = *(v63 + v68);
    sub_232B13F74();
    v71 = v69[2];
    v70 = v69[3];
    v72 = v171;
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v74 = v69[4];
    v73 = v69[5];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v76 = v69[6];
    v75 = v69[7];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v78 = v69[8];
    v77 = v69[9];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v80 = v69[10];
    v79 = v69[11];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v82 = v69[12];
    v81 = v69[13];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v84 = v69[14];
    v83 = v69[15];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v86 = v69[16];
    v85 = v69[17];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v87 = v69[18];
    v88 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
    sub_232B13F5C();
    v89 = *&v88[v72];
    *&v88[v72] = v87;

    sub_232B13F74();
    v91 = v69[19];
    v90 = v69[20];
    sub_232BF71EC();
    sub_232BF728C();

    sub_232B13F74();
    v92 = v69[21];
    v93 = v69[22];

    sub_232CE8BD0();

    sub_232B207D4();
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74();
    v94 = v69[23];
    v95 = v69[24];

    sub_232CE8BD0();

    sub_232B207D4();
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74();
    v96 = v69[25];
    v97 = v69[26];

    sub_232CE8BD0();

    sub_232B207D4();
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74();
    v98 = v69[27];
    sub_232CE8CA0();
    v99 = sub_232CE8D10();
    v100 = sub_232BF7244();
    sub_232B12504(v100, v101, v102, v99);
    sub_232B207D4();
    v103 = v171;
    sub_232BF6164();
    swift_endAccess();
    sub_232B13F74();
    v104 = v69[28];
    sub_232CE8CA0();
    v105 = sub_232BF7244();
    sub_232B12504(v105, v106, v107, v99);
    sub_232B207D4();
    sub_232BF6164();
    swift_endAccess();
    sub_232B13F74();
    v108 = v69[29];
    v109 = MEMORY[0x277D84F90];
    v172 = MEMORY[0x277D84F90];
    v110 = *(v108 + 16);
    if (v110)
    {
      sub_232BF7444();
      v113 = v111 + v112;
      v115 = *(v114 + 72);
      v163 = v111;

      v116 = MEMORY[0x277D84F90];
      do
      {
        sub_232BF72F8();
        sub_232BF712C();
        sub_232BF712C();
        v117 = sub_232B43010(v32);
        sub_232BF72E0();
        v119 = sub_232BF610C(v34, v118);
        if (v117)
        {
          MEMORY[0x238391D50](v119);
          if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v116 = v172;
        }

        v113 += v115;
        --v110;
      }

      while (v110);

      v103 = v171;
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
    }

    v123 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
    sub_232B13F5C();
    v124 = *&v103[v123];
    *&v103[v123] = v116;

    sub_232B13F74();
    v125 = v166;
    sub_232BF5EEC();
    v126 = sub_232BF74D4();
    v127 = v164;
    sub_232B351B0(v126, v128, v164);
    v129 = v170;
    v130 = v159;
    v131 = v165;
    if (v132)
    {
      *v165 = 0;
      *(v131 + 8) = 0xE000000000000000;
      v133 = v131 + *(v127 + 20);
      sub_232CE9330();
      v134 = *(v127 + 24);
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
      sub_232B55484();
      sub_232B12504(v135, v136, v137, v138);
      v139 = sub_232BF74D4();
      sub_232B351B0(v139, v140, v127);
      if (!v132)
      {
        sub_232B13790(v125, &qword_27DDC69B0, &qword_232CF6998);
      }
    }

    else
    {
      sub_232BF71B4();
      sub_232BF61BC();
    }

    v141 = sub_232B39460(v131);
    v142 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    sub_232B13F5C();
    v143 = *&v103[v142];
    *&v103[v142] = v141;

    sub_232B13F74();
    v144 = v169;
    sub_232BF5EEC();
    v145 = sub_232B5F000();
    v146 = v167;
    sub_232B351B0(v145, v147, v167);
    if (v132)
    {
      v151 = v168;
      *v168 = 0;
      v151[1] = 0xE000000000000000;
      v151[2] = 0;
      v151[3] = 0xE000000000000000;
      v151[4] = v109;
      v151[5] = v109;
      v151[6] = 0;
      v151[7] = 0xE000000000000000;
      v151[8] = 0;
      v151[9] = 0xE000000000000000;
      v148 = v151 + *(v146 + 40);
      sub_232CE9330();
      v149 = sub_232B5F000();
      sub_232B351B0(v149, v150, v146);
      v152 = v160;
      v153 = v158;
      if (!v132)
      {
        sub_232B13790(v144, &qword_27DDC69A0, &qword_232CF6990);
      }
    }

    else
    {
      sub_232BF7184();
      v151 = v168;
      sub_232BF61BC();
      v152 = v160;
      v153 = v158;
    }

    v154 = sub_232B3E1E8(v151);
    (*(v130 + 8))(v129, v152);
    sub_232BF610C(v153, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
    v155 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
    sub_232B13F5C();
    v156 = *&v103[v155];
    *&v103[v155] = v154;
  }

  else
  {
    (*(v52 + 8))(v64, a2);

    sub_232B55484();
    sub_232B12504(v120, v121, v122, v57);
    sub_232B13790(v51, &qword_27DDC6F10, &unk_232CF8420);
    return 0;
  }

  return v103;
}

id sub_232BF1F90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_232CE9D20();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_232BF2010(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232BF20A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_232BF259C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BF2590(v4);
}

uint64_t sub_232BF2790(uint64_t *a1)
{
  v1 = *a1;
  sub_232B13F74();
  return sub_232BF5EEC();
}

uint64_t sub_232BF2828(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_232B207D4();
  sub_232BF6164();
  return swift_endAccess();
}

id sub_232BF28F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B5A028();
  a3();
  v10 = sub_232CE8C00();
  sub_232B5A088(v10);
  if (!v11)
  {
    a1 = v3;
    sub_232CE8B90();
    sub_232B5A014();
    (*(v12 + 8))(v3, a3);
  }

  return a1;
}

void sub_232BF29F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8BB0();
    v12 = sub_232CE8C00();
    v13 = 0;
  }

  else
  {
    v12 = sub_232CE8C00();
    v13 = 1;
  }

  sub_232B12504(v4, v13, 1, v12);
  v14 = a1;
  v15 = sub_232BF73E8();
  a4(v15);
}

id sub_232BF2B38(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B5A028();
  a3();
  v10 = sub_232CE8D10();
  sub_232B5A088(v10);
  if (!v11)
  {
    a1 = v3;
    sub_232CE8CD0();
    sub_232B5A014();
    (*(v12 + 8))(v3, a3);
  }

  return a1;
}

void sub_232BF2C34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8CF0();
    v12 = sub_232CE8D10();
    v13 = 0;
  }

  else
  {
    v12 = sub_232CE8D10();
    v13 = 1;
  }

  sub_232B12504(v4, v13, 1, v12);
  v14 = a1;
  v15 = sub_232BF73E8();
  a4(v15);
}

uint64_t sub_232BF2DC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = sub_232B124A8(a5, a6);
  sub_232B2D120(v9);
  v11 = *(v10 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  sub_232B37B20();
  sub_232BF5EEC();
  v14 = *a2;
  return a7(v13);
}

void *sub_232BF2EE8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F74();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF2F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BF2FD8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232BF2F88(v2);
}

uint64_t sub_232BF3148(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BF313C(v4);
}

void *sub_232BF31F4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F74();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF3294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BF32E4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232BF3294(v2);
}

id DURawDocument.init()()
{
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage);
  *(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
  v1 = sub_232CE8C00();
  sub_232B55484();
  sub_232B12504(v2, v3, v4, v1);
  sub_232B55484();
  sub_232B12504(v5, v6, v7, v1);
  sub_232B55484();
  sub_232B12504(v8, v9, v10, v1);
  v11 = sub_232CE8D10();
  sub_232B55484();
  sub_232B12504(v12, v13, v14, v11);
  sub_232B55484();
  sub_232B12504(v15, v16, v17, v11);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData] = 0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DURawDocument();
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_232BF34F8()
{
  type metadata accessor for DURawDocument();
  sub_232BF7310();
  sub_232BF70E4(v0, v1);
  v2 = sub_232CE98A0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9D20();
    sub_232BF7340();
    [v5 v6];
  }
}

uint64_t DURawDocument.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BF7310();
  sub_232BF70E4(v4, v5);
  sub_232CE98B0();

  v6 = v12;
  if (!v12)
  {
LABEL_5:
    swift_getObjectType();
    v9 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t type metadata accessor for DURawDocument()
{
  result = qword_2814E2310;
  if (!qword_2814E2310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232BF3814@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232BF4C38(v7 - v6);
  v9 = sub_232BEFD64(v8);
  result = sub_232B124A8(&qword_27DDC79C8, &qword_232CFB9E8);
  a1[3] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_232BF3908()
{
  v1 = sub_232CE8D10();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v196 = v8 - v7;
  v201 = sub_232B124A8(&qword_27DDC6AA0, &qword_232CFB9F0);
  v9 = sub_232B13F24(v201);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v200 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v204 = v14;
  v15 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v16 = sub_232B2D120(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20714();
  v197 = v19;
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B20628();
  v198 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B20628();
  v199 = v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  sub_232B55558();
  v202 = v25;
  sub_232B554F0();
  v211 = sub_232CE8C00();
  v26 = sub_232B48F0C(v211);
  v208 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v206 = v31 - v30;
  v210 = sub_232B124A8(&qword_27DDC79D0, &unk_232CFB9F8);
  v32 = sub_232B13F24(v210);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_232B20714();
  v207 = v35;
  sub_232B20600();
  MEMORY[0x28223BE20](v36);
  sub_232B20628();
  v209 = v37;
  sub_232B20600();
  MEMORY[0x28223BE20](v38);
  v40 = &v190[-v39];
  v41 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v42 = sub_232B2D120(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_232B20714();
  v203 = v45;
  sub_232B20600();
  MEMORY[0x28223BE20](v46);
  sub_232B20628();
  v205 = v47;
  sub_232B20600();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v190[-v50];
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v190[-v53];
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v190[-v56];
  MEMORY[0x28223BE20](v55);
  v59 = &v190[-v58];
  sub_232BF5EEC();
  if (v214)
  {
    type metadata accessor for DURawDocument();
    if (swift_dynamicCast())
    {
      v192 = v4;
      v193 = v1;
      v60 = v212;
      v194 = v0;
      v61 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
      sub_232BF7254();
      v62 = *v61;
      v63 = v61[1];
      v195 = v60;
      v64 = &v60[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
      sub_232BF72A8();
      v65 = *(v64 + 1);
      if (v63)
      {
        if (!v65)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v67 = v67 && v63 == v66;
        if (!v67 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (v65)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline);
      sub_232BF7254();
      v68 = *v63;
      v69 = v63[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline);
      sub_232BF72A8();
      if (v69)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v71 = v67 && v69 == v70;
        if (!v71 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version);
      sub_232BF7254();
      v72 = *v69;
      v73 = v69[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version);
      sub_232BF72A8();
      if (v73)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v75 = v67 && v73 == v74;
        if (!v75 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator);
      sub_232BF7254();
      v76 = *v73;
      v77 = v73[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator);
      sub_232BF72A8();
      if (v77)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v79 = v67 && v77 == v78;
        if (!v79 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract);
      sub_232BF7254();
      v80 = *v77;
      v81 = v77[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract);
      sub_232BF72A8();
      if (v81)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v83 = v67 && v81 == v82;
        if (!v83 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment);
      sub_232BF7254();
      v84 = *v81;
      v85 = v81[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment);
      sub_232BF72A8();
      if (v85)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v87 = v67 && v85 == v86;
        if (!v87 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
      sub_232BF7254();
      v88 = *v85;
      v89 = v85[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
      sub_232BF72A8();
      if (v89)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v91 = v67 && v89 == v90;
        if (!v91 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage);
      sub_232BF7254();
      v92 = *v89;
      v93 = v89[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage);
      sub_232BF72A8();
      if (v93)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v95 = v67 && v93 == v94;
        if (!v95 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      v96 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
      v97 = v194;
      sub_232B13F74();
      v98 = *&v96[v97];
      v99 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
      v100 = v195;
      sub_232B13F74();
      v101 = *(v99 + v100);
      if (v98)
      {
        if (!v101 || (sub_232B32DC4(v98, v101) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (v101)
      {
        goto LABEL_140;
      }

      sub_232BF73C0(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
      sub_232BF7254();
      v102 = *v99;
      v103 = v99[1];
      sub_232BF73B4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
      sub_232BF72A8();
      if (v103)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v105 = v67 && v103 == v104;
        if (!v105 && (sub_232BF72C4() & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232B13F74();
      sub_232BF5EEC();
      sub_232B13F74();
      v106 = *(v210 + 48);
      sub_232BF5EEC();
      sub_232BF5EEC();
      sub_232BF71CC(v40);
      if (v67)
      {
        sub_232B13790(v59, &qword_27DDC6AD8, &unk_232CF82F0);
        sub_232BF71CC(&v40[v106]);
        if (v67)
        {
          sub_232B13790(v40, &qword_27DDC6AD8, &unk_232CF82F0);
          goto LABEL_100;
        }
      }

      else
      {
        sub_232B37B20();
        sub_232BF5EEC();
        sub_232BF71CC(&v40[v106]);
        if (!v107)
        {
          v111 = v208;
          v112 = &v40[v106];
          v113 = v206;
          v114 = v211;
          (*(v208 + 32))(v206, v112, v211);
          sub_232BF719C();
          sub_232BF70E4(v115, v116);
          v191 = sub_232CE9CF0();
          v117 = *(v111 + 8);
          v117(v113, v114);
          sub_232B13790(v59, &qword_27DDC6AD8, &unk_232CF82F0);
          v117(v57, v114);
          sub_232B13790(v40, &qword_27DDC6AD8, &unk_232CF82F0);
          if ((v191 & 1) == 0)
          {
            goto LABEL_140;
          }

LABEL_100:
          sub_232B13F74();
          sub_232BF5EEC();
          sub_232B13F74();
          v118 = v209;
          v119 = *(v210 + 48);
          sub_232BF5EEC();
          sub_232BF5EEC();
          sub_232BF71CC(v118);
          if (v67)
          {
            sub_232B13790(v54, &qword_27DDC6AD8, &unk_232CF82F0);
            sub_232BF71CC(v209 + v119);
            if (v67)
            {
              sub_232B13790(v209, &qword_27DDC6AD8, &unk_232CF82F0);
              goto LABEL_110;
            }
          }

          else
          {
            v120 = v209;
            sub_232BF5EEC();
            sub_232BF71CC(v120 + v119);
            if (!v121)
            {
              v122 = v208;
              v123 = v209;
              v124 = v206;
              v125 = v211;
              (*(v208 + 32))(v206, v209 + v119, v211);
              sub_232BF719C();
              sub_232BF70E4(v126, v127);
              v128 = sub_232CE9CF0();
              v129 = *(v122 + 8);
              v129(v124, v125);
              sub_232B13790(v54, &qword_27DDC6AD8, &unk_232CF82F0);
              v129(v51, v125);
              sub_232B13790(v123, &qword_27DDC6AD8, &unk_232CF82F0);
              if ((v128 & 1) == 0)
              {
                goto LABEL_140;
              }

LABEL_110:
              sub_232B13F74();
              sub_232BF7340();
              sub_232BF5EEC();
              v130 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink;
              sub_232B13F74();
              v131 = *(v210 + 48);
              v132 = v207;
              sub_232BF7340();
              sub_232BF5EEC();
              sub_232BF7340();
              sub_232BF5EEC();
              sub_232BF71CC(v132);
              if (v67)
              {
                sub_232B13790(v205, &qword_27DDC6AD8, &unk_232CF82F0);
                sub_232BF71CC(v207 + v131);
                if (v67)
                {
                  sub_232B13790(v207, &qword_27DDC6AD8, &unk_232CF82F0);
                  goto LABEL_120;
                }
              }

              else
              {
                v133 = v207;
                sub_232BF5EEC();
                sub_232BF71CC(v133 + v131);
                if (!v134)
                {
                  v135 = v211;
                  (*(v208 + 32))(v206, v207 + v131, v211);
                  sub_232BF719C();
                  sub_232BF70E4(v136, v137);
                  v138 = v203;
                  sub_232BF74E0();
                  v139 = sub_232BF74B4();
                  v130(v139);
                  sub_232B13790(v205, &qword_27DDC6AD8, &unk_232CF82F0);
                  (v130)(v138, v135);
                  sub_232BF747C();
                  if ((v133 & 1) == 0)
                  {
                    goto LABEL_140;
                  }

LABEL_120:
                  sub_232B13F74();
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232B13F74();
                  v140 = *(v201 + 48);
                  v141 = v204;
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232BF7208(v141);
                  if (v67)
                  {
                    sub_232B13790(v202, &qword_27DDC6A80, &qword_232CF6D30);
                    sub_232BF7208(v204 + v140);
                    if (v67)
                    {
                      sub_232B13790(v204, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_130:
                      sub_232B13F74();
                      sub_232BF7340();
                      sub_232BF5EEC();
                      v152 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified;
                      sub_232B13F74();
                      v153 = *(v201 + 48);
                      v154 = v200;
                      sub_232BF7340();
                      sub_232BF5EEC();
                      sub_232BF7340();
                      sub_232BF5EEC();
                      sub_232BF7208(v154);
                      if (v67)
                      {
                        sub_232B13790(v198, &qword_27DDC6A80, &qword_232CF6D30);
                        sub_232BF7208(v200 + v153);
                        if (v67)
                        {
                          sub_232B13790(v200, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_144:
                          v164 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
                          v165 = v194;
                          sub_232B13F74();
                          v166 = *(v165 + v164);
                          v167 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
                          v168 = v195;
                          sub_232B13F74();
                          v169 = *&v168[v167];
                          if (v166)
                          {
                            if (!v169)
                            {
                              goto LABEL_140;
                            }

                            v171 = sub_232B34638(v170, v169);

                            if ((v171 & 1) == 0)
                            {
                              goto LABEL_140;
                            }
                          }

                          else if (v169)
                          {
                            goto LABEL_140;
                          }

                          v172 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
                          v173 = v194;
                          sub_232B13F74();
                          v174 = *(v173 + v172);
                          v175 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
                          v176 = v195;
                          sub_232B13F74();
                          v177 = *&v176[v175];
                          if (v174)
                          {
                            if (v177)
                            {
                              type metadata accessor for DUDocumentHTMLData();
                              v178 = v177;
                              v179 = v174;
                              v180 = sub_232CEA310();

                              if (v180)
                              {
                                goto LABEL_154;
                              }
                            }
                          }

                          else if (!v177)
                          {
LABEL_154:
                            v181 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
                            v182 = v194;
                            sub_232B13F74();
                            v183 = *(v182 + v181);
                            v184 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
                            v185 = v195;
                            sub_232B13F74();
                            v186 = *&v185[v184];
                            if (!v183)
                            {
                              v189 = v186;

                              if (!v186)
                              {
                                v157 = 1;
                                return v157 & 1;
                              }

                              goto LABEL_141;
                            }

                            if (v186)
                            {
                              type metadata accessor for DUDocumentMessageData();
                              v187 = v186;
                              v188 = v183;
                              v157 = sub_232CEA310();

                              return v157 & 1;
                            }
                          }

LABEL_140:

                          goto LABEL_141;
                        }
                      }

                      else
                      {
                        v155 = v200;
                        sub_232BF5EEC();
                        sub_232BF7208(v155 + v153);
                        if (!v156)
                        {
                          v159 = v193;
                          (*(v192 + 32))(v196, v200 + v153, v193);
                          sub_232BF7328();
                          sub_232BF70E4(v160, v161);
                          v162 = v197;
                          sub_232BF74E0();
                          v163 = sub_232BF74B4();
                          v152(v163);
                          sub_232B13790(v198, &qword_27DDC6A80, &qword_232CF6D30);
                          (v152)(v162, v159);
                          sub_232BF747C();
                          if ((v155 & 1) == 0)
                          {
                            goto LABEL_140;
                          }

                          goto LABEL_144;
                        }

                        sub_232B13790(v198, &qword_27DDC6A80, &qword_232CF6D30);
                        (*(v192 + 8))(v197, v193);
                      }

                      v108 = &qword_27DDC6AA0;
                      v109 = &qword_232CFB9F0;
                      v110 = v200;
LABEL_139:
                      sub_232B13790(v110, v108, v109);
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    v142 = v204;
                    sub_232BF5EEC();
                    sub_232BF7208(v142 + v140);
                    if (!v143)
                    {
                      v144 = v192;
                      v145 = v193;
                      v146 = v196;
                      (*(v192 + 32))(v196, v204 + v140, v193);
                      sub_232BF7328();
                      sub_232BF70E4(v147, v148);
                      v149 = v199;
                      v150 = sub_232CE9CF0();
                      v151 = *(v144 + 8);
                      v151(v146, v145);
                      sub_232B13790(v202, &qword_27DDC6A80, &qword_232CF6D30);
                      v151(v149, v145);
                      sub_232BF747C();
                      if ((v150 & 1) == 0)
                      {
                        goto LABEL_140;
                      }

                      goto LABEL_130;
                    }

                    sub_232B13790(v202, &qword_27DDC6A80, &qword_232CF6D30);
                    (*(v192 + 8))(v199, v193);
                  }

                  v108 = &qword_27DDC6AA0;
                  v109 = &qword_232CFB9F0;
                  v110 = v204;
                  goto LABEL_139;
                }

                sub_232B13790(v205, &qword_27DDC6AD8, &unk_232CF82F0);
                (*(v208 + 8))(v203, v211);
              }

              v108 = &qword_27DDC79D0;
              v109 = &unk_232CFB9F8;
              v110 = v207;
              goto LABEL_139;
            }

            sub_232B13790(v54, &qword_27DDC6AD8, &unk_232CF82F0);
            (*(v208 + 8))(v51, v211);
          }

          v108 = &qword_27DDC79D0;
          v109 = &unk_232CFB9F8;
          v110 = v209;
          goto LABEL_139;
        }

        sub_232B13790(v59, &qword_27DDC6AD8, &unk_232CF82F0);
        (*(v208 + 8))(v57, v211);
      }

      v108 = &qword_27DDC79D0;
      v109 = &unk_232CFB9F8;
      v110 = v40;
      goto LABEL_139;
    }
  }

  else
  {
    sub_232B13790(v213, &qword_27DDC68C8, &qword_232CF6210);
  }

LABEL_141:
  v157 = 0;
  return v157 & 1;
}

uint64_t sub_232BF4C38@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20714();
  v290 = v7;
  sub_232B20600();
  MEMORY[0x28223BE20](v8);
  sub_232B55558();
  v298 = v9;
  sub_232B554F0();
  v299 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v10 = sub_232B13F24(v299);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v293 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B20628();
  v295 = v15;
  sub_232B20600();
  MEMORY[0x28223BE20](v16);
  sub_232B55558();
  v289 = v17;
  v18 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v19 = sub_232B2D120(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B20714();
  v288 = v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B55558();
  v296 = v24;
  sub_232B554F0();
  v297 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v25 = sub_232B13F24(v297);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232B20714();
  v292 = v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  sub_232B20628();
  v294 = v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  sub_232B55558();
  v287 = v32;
  sub_232B554F0();
  v33 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  v34 = sub_232B27FBC(v33);
  v313 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_232B20704();
  v40 = v39 - v38;
  v41 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v42 = sub_232B2D120(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_232B20714();
  v305 = v45;
  sub_232B20600();
  MEMORY[0x28223BE20](v46);
  sub_232B55558();
  v304 = v47;
  sub_232B554F0();
  v48 = sub_232CE8D10();
  v49 = sub_232B48F0C(v48);
  v307 = v50;
  v308 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B20714();
  v306 = v53;
  sub_232B20600();
  MEMORY[0x28223BE20](v54);
  sub_232B55558();
  v310 = v55;
  v56 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v57 = sub_232B2D120(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_232B20714();
  v302 = v60;
  sub_232B20600();
  MEMORY[0x28223BE20](v61);
  sub_232B20628();
  v300 = v62;
  sub_232B20600();
  MEMORY[0x28223BE20](v63);
  v65 = &v284 - v64;
  v66 = sub_232CE8C00();
  v67 = sub_232B48F0C(v66);
  v309 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_232B20714();
  v303 = v71;
  sub_232B20600();
  MEMORY[0x28223BE20](v72);
  sub_232B20628();
  v301 = v73;
  sub_232B20600();
  MEMORY[0x28223BE20](v74);
  sub_232B55558();
  v291 = v75;
  sub_232CE9330();
  v76 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  if (qword_2814E2300 != -1)
  {
LABEL_112:
    swift_once();
  }

  *(a1 + v76) = qword_2814E2308;
  v311 = v1;
  v77 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232B13F74();
  v78 = *(v77 + 1);
  v312 = v76;
  if (v78)
  {
    v79 = *v77;

    v80 = *(a1 + v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(a1 + v76);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v83);
      v84 = sub_232BF7228();
      sub_232BF734C(v84);
    }

    v85 = v310;
    sub_232B13F5C();
    v86 = *(v82 + 24);
    *(v82 + 16) = v79;
    *(v82 + 24) = v78;
  }

  else
  {

    v85 = v310;
  }

  v87 = v311;
  v88 = &v311[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline];
  sub_232BCA1AC();
  v89 = *(v88 + 1);
  if (v89)
  {
    sub_232BF7464();
    v90 = sub_232BF742C();
    v91 = *(a1 + v76);
    if ((v90 & 1) == 0)
    {
      v92 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v92);
      v93 = sub_232BF7228();
      sub_232BF734C(v93);
    }

    sub_232B13F5C();
    v94 = *(v91 + 40);
    *(v91 + 32) = v87;
    *(v91 + 40) = v89;

    v87 = v311;
  }

  v95 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version];
  sub_232BCA1AC();
  v96 = *(v95 + 1);
  if (v96)
  {
    sub_232BF7464();
    v97 = sub_232BF742C();
    v98 = *(a1 + v76);
    if ((v97 & 1) == 0)
    {
      v99 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v99);
      v100 = sub_232BF7228();
      sub_232BF734C(v100);
    }

    sub_232B13F5C();
    v101 = *(v98 + 56);
    *(v98 + 48) = v87;
    *(v98 + 56) = v96;

    v87 = v311;
  }

  v102 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232BCA1AC();
  v103 = *(v102 + 1);
  if (v103)
  {
    sub_232BF7464();
    v104 = sub_232BF742C();
    v105 = *(a1 + v76);
    if ((v104 & 1) == 0)
    {
      v106 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v106);
      v107 = sub_232BF7228();
      sub_232BF734C(v107);
    }

    sub_232B13F5C();
    v108 = *(v105 + 72);
    *(v105 + 64) = v87;
    *(v105 + 72) = v103;

    v87 = v311;
  }

  v109 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract];
  sub_232BCA1AC();
  v110 = *(v109 + 1);
  if (v110)
  {
    sub_232BF7464();
    v111 = sub_232BF742C();
    v112 = *(a1 + v76);
    if ((v111 & 1) == 0)
    {
      v113 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v113);
      v114 = sub_232BF7228();
      sub_232BF734C(v114);
    }

    sub_232B13F5C();
    v115 = *(v112 + 88);
    *(v112 + 80) = v87;
    *(v112 + 88) = v110;

    v87 = v311;
  }

  v116 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment];
  sub_232BCA1AC();
  v117 = *(v116 + 1);
  if (v117)
  {
    sub_232BF7464();
    v118 = sub_232BF742C();
    v119 = *(a1 + v76);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v120);
      v121 = sub_232BF7228();
      sub_232BF734C(v121);
    }

    sub_232B13F5C();
    v122 = *(v119 + 104);
    *(v119 + 96) = v87;
    *(v119 + 104) = v117;

    v87 = v311;
  }

  v123 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232BCA1AC();
  v124 = *(v123 + 1);
  if (v124)
  {
    sub_232BF7464();
    v125 = sub_232BF742C();
    v126 = *(a1 + v76);
    if ((v125 & 1) == 0)
    {
      v127 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v127);
      v128 = sub_232BF7228();
      sub_232BF734C(v128);
    }

    sub_232B13F5C();
    v129 = *(v126 + 120);
    *(v126 + 112) = v87;
    *(v126 + 120) = v124;

    v87 = v311;
  }

  v130 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage];
  sub_232BCA1AC();
  v131 = *(v130 + 1);
  if (v131)
  {
    sub_232BF7464();
    v132 = sub_232BF742C();
    v133 = *(a1 + v76);
    if ((v132 & 1) == 0)
    {
      v134 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v134);
      v135 = sub_232BF7228();
      sub_232BF734C(v135);
    }

    sub_232B13F5C();
    v136 = *(v133 + 136);
    *(v133 + 128) = v87;
    *(v133 + 136) = v131;

    v87 = v311;
  }

  v137 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  sub_232B13F74();
  v138 = *&v137[v87];
  if (v138)
  {
    v139 = *&v137[v87];

    v140 = sub_232BF742C();
    v141 = *(a1 + v76);
    if ((v140 & 1) == 0)
    {
      v142 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v142);
      v143 = sub_232BF7228();
      sub_232BF734C(v143);
    }

    sub_232B13F5C();
    v144 = *(v141 + 144);
    *(v141 + 144) = v138;
  }

  v145 = &v87[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  sub_232BCA1AC();
  v146 = *(v145 + 1);
  if (v146)
  {
    sub_232BF7464();
    v147 = sub_232BF742C();
    v148 = *(a1 + v76);
    if ((v147 & 1) == 0)
    {
      v149 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v149);
      v150 = sub_232BF7228();
      sub_232BF734C(v150);
    }

    sub_232B13F5C();
    v151 = *(v148 + 160);
    *(v148 + 152) = v87;
    *(v148 + 160) = v146;

    v87 = v311;
  }

  sub_232B13F74();
  sub_232BF5EEC();
  sub_232B351B0(v65, 1, v66);
  if (v152)
  {
    sub_232B13790(v65, &qword_27DDC6AD8, &unk_232CF82F0);
    v153 = v312;
  }

  else
  {
    v154 = v309;
    (*(v309 + 32))(v291, v65, v66);
    v285 = sub_232CE8B60();
    v156 = v155;
    v157 = v312;
    v158 = *(a1 + v312);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v160 = *(v154 + 8);
      v161 = sub_232B37B20();
      v162(v161);
      v163 = *(a1 + v157);
    }

    else
    {
      v164 = *(a1 + v157);
      v165 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v165);
      sub_232BF73E8();

      v163 = sub_232B29EB8(v166);
      v167 = *(v154 + 8);
      v168 = sub_232B37B20();
      v169(v168);
      v87 = v311;

      *(a1 + v157) = v163;
    }

    sub_232B13F5C();
    v170 = v163[22];
    v163[21] = v285;
    v163[22] = v156;

    v153 = v312;
    v85 = v310;
  }

  sub_232B13F74();
  v171 = v300;
  sub_232BF5EEC();
  sub_232B351B0(v171, 1, v66);
  v172 = v309;
  if (v152)
  {
    sub_232B13790(v171, &qword_27DDC6AD8, &unk_232CF82F0);
    v173 = v303;
  }

  else
  {
    (*(v309 + 32))(v301, v171, v66);
    v174 = sub_232CE8B60();
    v176 = v175;
    v177 = *(a1 + v153);
    v178 = swift_isUniquelyReferenced_nonNull_native();
    v286 = v66;
    if (v178)
    {
      v179 = sub_232BF74C8(v172);
      v180(v179, v66);
      v181 = *(a1 + v153);
    }

    else
    {
      v182 = *(a1 + v312);
      v183 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v183);

      v181 = sub_232B29EB8(v184);
      v185 = sub_232BF74C8(v172);
      v186(v185, v66);
      v153 = v312;

      *(a1 + v153) = v181;
    }

    sub_232B13F5C();
    v187 = v181[24];
    v181[23] = v174;
    v181[24] = v176;

    v85 = v310;
    v87 = v311;
    v172 = v309;
    v173 = v303;
    v66 = v286;
  }

  sub_232B13F74();
  v188 = v302;
  sub_232BF5EEC();
  v189 = sub_232B5F000();
  sub_232B351B0(v189, v190, v66);
  if (v152)
  {
    sub_232B13790(v188, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    (*(v172 + 32))(v173, v188, v66);
    v191 = sub_232CE8B60();
    v193 = v192;
    v194 = *(a1 + v153);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v196 = *(v172 + 8);
      v197 = sub_232B37B20();
      v198(v197);
      v199 = *(a1 + v153);
    }

    else
    {
      v200 = *(a1 + v312);
      v201 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v201);

      v199 = sub_232B29EB8(v202);
      v203 = *(v172 + 8);
      v204 = sub_232B37B20();
      v205(v204);
      v153 = v312;

      *(a1 + v153) = v199;
    }

    sub_232B13F5C();
    v206 = v199[26];
    v199[25] = v191;
    v199[26] = v193;

    v85 = v310;
    v87 = v311;
  }

  v208 = v307;
  v207 = v308;
  v209 = v306;
  sub_232B13F74();
  v210 = v304;
  sub_232BF5EEC();
  v211 = sub_232B5F000();
  sub_232B351B0(v211, v212, v207);
  if (v152)
  {
    sub_232B13790(v210, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    (*(v208 + 32))(v85, v210, v207);
    sub_232CE8CB0();
    v214 = v213;
    v215 = *(a1 + v153);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v217 = sub_232BF74C8(v208);
      v218(v217, v207);
      v219 = *(a1 + v153);
    }

    else
    {
      v220 = sub_232BF7500();
      sub_232BF73F4(v220);
      sub_232BF73E8();

      v219 = sub_232B29EB8(v221);
      v222 = sub_232BF74C8(v208);
      v223(v222, v207);
      v87 = v311;

      *(a1 + v153) = v219;
    }

    sub_232B13F5C();
    v219[27] = v214;
  }

  sub_232B13F74();
  v224 = v305;
  sub_232BF5EEC();
  v225 = sub_232B5F000();
  sub_232B351B0(v225, v226, v207);
  if (v152)
  {
    sub_232B13790(v224, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    (*(v208 + 32))(v209, v224, v207);
    sub_232CE8CB0();
    v228 = v227;
    v229 = *(a1 + v153);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v208 + 8))(v209, v207);
      v231 = *(a1 + v153);
    }

    else
    {
      v232 = sub_232BF7500();
      sub_232BF73F4(v232);
      sub_232BF73E8();

      v231 = sub_232B29EB8(v233);
      (*(v208 + 8))(v209, v207);
      v87 = v311;

      *(a1 + v153) = v231;
    }

    sub_232B13F5C();
    v231[28] = v228;
  }

  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F74();
  v65 = *&v1[v87];
  if (v65)
  {
    v310 = a1;
    v66 = sub_232B26B10(v65);
    a1 = v65 & 0xC000000000000001;
    v76 = v65 & 0xFFFFFFFFFFFFFF8;

    v234 = 0;
    v235 = MEMORY[0x277D84F90];
    while (v66 != v234)
    {
      if (a1)
      {
        v236 = MEMORY[0x2383922C0](v234, v65);
      }

      else
      {
        if (v234 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v236 = *(v65 + 8 * v234 + 32);
      }

      v1 = v236;
      if (__OFADD__(v234, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      sub_232B44618(v40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = *(v235 + 16);
        sub_232B36814();
        v235 = v241;
      }

      v237 = *(v235 + 16);
      v1 = (v237 + 1);
      if (v237 >= *(v235 + 24) >> 1)
      {
        sub_232B36814();
        v235 = v242;
      }

      *(v235 + 16) = v1;
      sub_232BF7444();
      v239 = *(v238 + 72);
      sub_232BF61BC();
      ++v234;
    }

    a1 = v310;
    v153 = v312;
    v243 = *(v310 + v312);
    v244 = swift_isUniquelyReferenced_nonNull_native();
    v245 = *(a1 + v153);
    if ((v244 & 1) == 0)
    {
      v246 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v246);
      v245 = sub_232BF7228();
      *(a1 + v153) = v245;
    }

    sub_232B13F5C();
    v247 = v245[29];
    v245[29] = v235;

    v87 = v311;
  }

  v248 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F74();
  v249 = *&v87[v248];
  if (!v249)
  {
    v251 = v296;
    sub_232B55484();
    sub_232B12504(v259, v260, v261, v262);
    v256 = v299;
    goto LABEL_99;
  }

  v250 = v249;
  sub_232B39C78(v294);

  v251 = v296;
  v252 = v297;
  v253 = swift_dynamicCast();
  sub_232B12504(v251, v253 ^ 1u, 1, v252);
  v254 = sub_232B5F000();
  sub_232B351B0(v254, v255, v252);
  v256 = v299;
  if (v152)
  {
LABEL_99:
    sub_232B13790(v251, &qword_27DDC69B0, &qword_232CF6998);
    goto LABEL_102;
  }

  sub_232BF61BC();
  sub_232BF712C();
  v257 = *(a1 + v153);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BF7380();
    v258 = *(a1 + v153);
  }

  else
  {
    v263 = sub_232BF7500();
    sub_232BF73F4(v263);
    sub_232BF73E8();

    v265 = sub_232B29EB8(v264);
    sub_232BF7380();

    *(a1 + v153) = v265;
  }

  sub_232BF71B4();
  v266 = v288;
  sub_232BF61BC();
  sub_232B12504(v266, 0, 1, v252);
  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  v87 = v311;
LABEL_102:
  v267 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F74();
  v268 = *&v87[v267];
  if (!v268)
  {
    v270 = v298;
    sub_232B55484();
    sub_232B12504(v276, v277, v278, v256);
    return sub_232B13790(v270, &qword_27DDC69A0, &qword_232CF6990);
  }

  v269 = v268;
  sub_232B3EB74(v295);

  v270 = v298;
  v271 = swift_dynamicCast();
  sub_232B12504(v270, v271 ^ 1u, 1, v256);
  v272 = sub_232B5F000();
  sub_232B351B0(v272, v273, v256);
  if (v152)
  {
    return sub_232B13790(v270, &qword_27DDC69A0, &qword_232CF6990);
  }

  sub_232BF61BC();
  sub_232BF712C();
  v274 = *(a1 + v153);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BF7358();
    v275 = *(a1 + v153);
  }

  else
  {
    v280 = sub_232BF7500();
    sub_232BF73F4(v280);
    sub_232BF73E8();

    v282 = sub_232B29EB8(v281);
    sub_232BF7358();

    *(a1 + v153) = v282;
  }

  sub_232BF7184();
  v283 = v290;
  sub_232BF61BC();
  sub_232B12504(v283, 0, 1, v256);
  sub_232B207D4();
  sub_232BF6164();
  return swift_endAccess();
}