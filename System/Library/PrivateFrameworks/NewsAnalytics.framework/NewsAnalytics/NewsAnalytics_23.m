uint64_t sub_217CD1CD0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_13;
    case 5:
      result = 0x7461446B63617274;
      break;
    case 6:
      v3 = 2003134838;
LABEL_13:
      result = v3 | 0x6174614400000000;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0x7461446575737369;
      break;
    case 10:
      result = 0x6569566575737369;
      break;
    case 11:
      result = 0x6B63616279616C70;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CD1E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CD4288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CD1E78(uint64_t a1)
{
  v2 = sub_217CD279C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD1EB4(uint64_t a1)
{
  v2 = sub_217CD279C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementCompletedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD3340(0, &qword_27CBA3EF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD279C();
  sub_217D89E7C();
  v138 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v139 = v7;
  v64 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v65 = v3;
  v13 = v3 + v64[5];
  v14 = *(v13 + 96);
  v15 = *(v13 + 64);
  v135 = *(v13 + 80);
  v136 = v14;
  v16 = *(v13 + 96);
  *v137 = *(v13 + 112);
  v17 = *(v13 + 16);
  v18 = *(v13 + 48);
  v132 = *(v13 + 32);
  v133 = v18;
  v19 = *(v13 + 48);
  v134 = *(v13 + 64);
  v20 = *(v13 + 16);
  v131[0] = *v13;
  v131[1] = v20;
  v128 = v135;
  v129 = v16;
  v130[0] = *(v13 + 112);
  v125 = v132;
  v126 = v19;
  v127 = v15;
  *&v137[15] = *(v13 + 127);
  *(v130 + 15) = *(v13 + 127);
  v123 = v131[0];
  v124 = v17;
  v122 = 1;
  sub_217AD1630(v131, &v104);
  sub_217ACF52C();
  sub_217D89CAC();
  v120[5] = v128;
  v120[6] = v129;
  *v121 = v130[0];
  *&v121[15] = *(v130 + 15);
  v120[2] = v125;
  v120[3] = v126;
  v120[4] = v127;
  v120[0] = v123;
  v120[1] = v124;
  sub_217AD2864(v120);
  v22 = v64;
  v21 = v65;
  v23 = (v65 + v64[6]);
  v24 = v23[1];
  v25 = *(v23 + 16);
  v26 = *(v23 + 17);
  v27 = v23[3];
  v28 = v23[4];
  v114 = *v23;
  v115 = v24;
  v116 = v25;
  v117 = v26;
  v118 = v27;
  v119 = v28;
  v113 = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v29 = (v21 + v22[7]);
  v30 = v29[6];
  v31 = v29[4];
  v109 = v29[5];
  v110 = v30;
  v32 = v29[6];
  v33 = v29[8];
  v111 = v29[7];
  v112 = v33;
  v34 = v29[2];
  v35 = *v29;
  v105 = v29[1];
  v106 = v34;
  v36 = v29[2];
  v37 = v29[4];
  v107 = v29[3];
  v108 = v37;
  v38 = *v29;
  v101 = v32;
  v102 = v111;
  v103 = v29[8];
  v104 = v38;
  v97 = v36;
  v98 = v107;
  v99 = v31;
  v100 = v109;
  v95 = v35;
  v96 = v105;
  v94 = 3;
  sub_217AD87FC(&v104, v93);
  sub_217A5D3B4();
  sub_217D89C3C();
  v93[6] = v101;
  v93[7] = v102;
  v93[8] = v103;
  v93[2] = v97;
  v93[3] = v98;
  v93[4] = v99;
  v93[5] = v100;
  v93[0] = v95;
  v93[1] = v96;
  sub_217AD96E8(v93);
  v39 = (v21 + v22[8]);
  v40 = v39[1];
  v41 = v39[2];
  *&v80 = *v39;
  *(&v80 + 1) = v40;
  *&v81 = v41;
  LOBYTE(v74) = 4;
  sub_217AD1A68(v80, v40, v41);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v80, *(&v80 + 1), v81);
  v42 = (v21 + v22[9]);
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 4);
  LODWORD(v80) = v43;
  BYTE4(v80) = v42;
  LOBYTE(v74) = 5;
  sub_217C0573C();
  sub_217D89CAC();
  v44 = (v21 + v22[10]);
  v45 = *v44;
  v46 = v44[1];
  LOWORD(v44) = *(v44 + 8);
  v90 = v45;
  v91 = v46;
  v92 = v44;
  v89 = 6;
  sub_217A5E790();

  sub_217D89C3C();

  v47 = (v21 + v22[11]);
  v48 = v47[1];
  v87 = *v47;
  v88[0] = v48;
  *(v88 + 10) = *(v47 + 26);
  v49 = v47[1];
  v85 = *v47;
  v86[0] = v49;
  *(v86 + 10) = *(v47 + 26);
  v84 = 7;
  sub_217AEC604(&v87, &v80);
  sub_217AEC6C8();
  sub_217D89CAC();
  v78 = v85;
  v79[0] = v86[0];
  *(v79 + 10) = *(v86 + 10);
  sub_217AEC63C(&v78);
  v50 = (v21 + v22[12]);
  v51 = v50[1];
  v80 = *v50;
  v81 = v51;
  v53 = *v50;
  v52 = v50[1];
  v82 = v50[2];
  v83 = *(v50 + 48);
  v74 = v53;
  v75 = v52;
  v76 = v50[2];
  v77 = *(v50 + 48);
  v73 = 8;
  sub_217ACC004(&v80, v71);
  sub_217A55B98();
  sub_217D89CAC();
  v71[0] = v74;
  v71[1] = v75;
  v71[2] = v76;
  v72 = v77;
  sub_217ACC69C(v71);
  v54 = (v21 + v22[13]);
  v55 = v54[1];
  v56 = v54[2];
  v57 = v54[3];
  v67 = *v54;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v66 = 9;
  sub_217AE39D0(v67, v55);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v67, v68);
  v58 = (v21 + v22[14]);
  v59 = v58[1];
  v67 = *v58;
  v68 = v59;
  v66 = 10;
  sub_217AD01EC();

  sub_217D89C3C();

  LODWORD(v67) = *(v65 + v64[15]);
  v66 = 11;
  sub_217C063B4();
  sub_217D89CAC();
  v60 = (v65 + v64[16]);
  v61 = *v60;
  v62 = v60[1];
  LOWORD(v60) = *(v60 + 1);
  LOBYTE(v67) = v61;
  BYTE1(v67) = v62;
  WORD1(v67) = v60;
  v66 = 12;
  sub_217ACFB8C();
  sub_217D89CAC();
  return (*(v139 + 8))(v10, v6);
}

unint64_t sub_217CD279C()
{
  result = qword_27CBA3F00;
  if (!qword_27CBA3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F00);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_217D8899C();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD3340(0, &qword_27CBA3F08, MEMORY[0x277D844C8]);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD279C();
  v60 = v9;
  v15 = v91;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v57;
  v53 = v10;
  v54 = a1;
  v91 = v13;
  LOBYTE(v82) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  v17 = v91;
  (*(v56 + 32))(v91, v59, v3);
  v73 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v52 = v3;
  v59 = 0;
  v18 = v53;
  v19 = &v17[v53[5]];
  v20 = *v81;
  *(v19 + 6) = v80;
  *(v19 + 7) = v20;
  *(v19 + 127) = *&v81[15];
  v21 = v77;
  *(v19 + 2) = v76;
  *(v19 + 3) = v21;
  v22 = v79;
  *(v19 + 4) = v78;
  *(v19 + 5) = v22;
  v23 = v75;
  *v19 = v74;
  *(v19 + 1) = v23;
  LOBYTE(v65) = 2;
  sub_217AD07F8();
  sub_217D89BCC();
  v24 = *(&v82 + 1);
  v25 = v83;
  v26 = BYTE1(v83);
  v27 = *(&v83 + 1);
  v28 = v84;
  v29 = &v17[v18[6]];
  *v29 = v82;
  *(v29 + 1) = v24;
  v29[16] = v25;
  v29[17] = v26;
  *(v29 + 3) = v27;
  *(v29 + 4) = v28;
  v72 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v30 = &v17[v18[7]];
  v31 = v89;
  *(v30 + 6) = v88;
  *(v30 + 7) = v31;
  *(v30 + 8) = v90;
  v32 = v85;
  *(v30 + 2) = v84;
  *(v30 + 3) = v32;
  v33 = v87;
  *(v30 + 4) = v86;
  *(v30 + 5) = v33;
  v34 = v83;
  *v30 = v82;
  *(v30 + 1) = v34;
  LOBYTE(v70) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v35 = v66;
  v36 = &v17[v18[8]];
  *v36 = v65;
  *(v36 + 2) = v35;
  LOBYTE(v70) = 5;
  sub_217C056E8();
  sub_217D89BCC();
  v37 = BYTE4(v65);
  v38 = &v17[v18[9]];
  *v38 = v65;
  v38[4] = v37;
  LOBYTE(v70) = 6;
  sub_217A5E738();
  sub_217D89B5C();
  v39 = v66;
  v40 = &v17[v18[10]];
  *v40 = v65;
  *(v40 + 8) = v39;
  v69 = 7;
  sub_217AEC670();
  sub_217D89BCC();
  v41 = &v17[v18[11]];
  v42 = *v71;
  *v41 = v70;
  *(v41 + 1) = v42;
  *(v41 + 26) = *&v71[10];
  v64 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v43 = &v91[v18[12]];
  v44 = v66;
  *v43 = v65;
  *(v43 + 1) = v44;
  *(v43 + 2) = v67;
  v43[48] = v68;
  v61 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  v45 = &v91[v53[13]];
  v46 = v63;
  *v45 = v62;
  *(v45 + 1) = v46;
  v61 = 10;
  sub_217AD0198();
  sub_217D89B5C();
  *&v91[v53[14]] = v62;
  v61 = 11;
  sub_217C06360();
  sub_217D89BCC();
  *&v91[v53[15]] = v62;
  v61 = 12;
  sub_217ACFB38();
  sub_217D89BCC();
  (*(v16 + 8))(v60, v58);
  v47 = BYTE1(v62);
  v48 = WORD1(v62);
  v49 = v91;
  v50 = &v91[v53[16]];
  *v50 = v62;
  v50[1] = v47;
  *(v50 + 1) = v48;
  sub_217CD33A4(v49, v55);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_217CD3408(v49);
}

void sub_217CD3340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD279C();
    v7 = a3(a1, &type metadata for AudioEngagementCompletedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD3408(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CD353C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v4, v30);
}

void sub_217CD3B98()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CD0E18(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CD0E18(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217CD0E18(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217CD0E18(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217CD0E18(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
            if (v5 <= 0x3F)
            {
              sub_217CD0E18(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
              if (v6 <= 0x3F)
              {
                sub_217CD0E18(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
                if (v7 <= 0x3F)
                {
                  sub_217CD0E18(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217CD0E18(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                    if (v9 <= 0x3F)
                    {
                      sub_217CD0E18(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                      if (v10 <= 0x3F)
                      {
                        sub_217CD0E18(319, &qword_2811C8798, sub_217C06360, sub_217C063B4);
                        if (v11 <= 0x3F)
                        {
                          sub_217CD0E18(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217CD3FEC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217CD4184()
{
  result = qword_27CBA3F10;
  if (!qword_27CBA3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F10);
  }

  return result;
}

unint64_t sub_217CD41DC()
{
  result = qword_27CBA3F18;
  if (!qword_27CBA3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F18);
  }

  return result;
}

unint64_t sub_217CD4234()
{
  result = qword_27CBA3F20;
  if (!qword_27CBA3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F20);
  }

  return result;
}

uint64_t sub_217CD4288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_217CD4780()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3F58);
  __swift_project_value_buffer(v0, qword_27CBA3F58);
  return sub_217D8866C();
}

uint64_t BlockTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BlockTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BlockTagEvent(0);
  v5 = v4[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t BlockTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t BlockTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t BlockTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t BlockTagEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 32);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t BlockTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t BlockTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BlockTagEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 BlockTagEvent.Model.init(eventData:viewData:tagData:feedData:articleData:userBundleSubscriptionContextData:actionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a3;
  v16 = a3[1];
  v31 = *a4;
  v17 = *(a4 + 2);
  v32 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for BlockTagEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v12;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  v21 = (a8 + v19[6]);
  *v21 = v15;
  v21[1] = v16;
  v22 = a8 + v19[7];
  *v22 = v31;
  *(v22 + 16) = v17;
  v23 = a8 + v19[8];
  v24 = *(a5 + 48);
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = v24;
  v25 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a5 + 127);
  v26 = *(a5 + 112);
  *(v23 + 96) = *(a5 + 96);
  *(v23 + 112) = v26;
  v27 = *(a5 + 80);
  *(v23 + 64) = *(a5 + 64);
  *(v23 + 80) = v27;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  result = *(a6 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v32;
  return result;
}

uint64_t sub_217CD5A00(uint64_t a1)
{
  v2 = sub_217CD5F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD5A3C(uint64_t a1)
{
  v2 = sub_217CD5F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD677C(0, &qword_27CBA3F70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD5F80();
  sub_217D89E7C();
  LOBYTE(v53) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v65 = type metadata accessor for BlockTagEvent.Model(0);
    v12 = (v3 + v65[5]);
    v13 = *v12;
    v14 = v12[1];
    LOWORD(v12) = *(v12 + 8);
    *&v53 = v13;
    *(&v53 + 1) = v14;
    LOWORD(v54) = v12;
    LOBYTE(v45) = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v15 = (v3 + v65[6]);
    v16 = v15[1];
    *&v53 = *v15;
    *(&v53 + 1) = v16;
    LOBYTE(v45) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v18 = (v3 + v65[7]);
    v19 = v18[1];
    v20 = v18[2];
    v62 = *v18;
    v63 = v19;
    v64 = v20;
    v61 = 3;
    sub_217AD1A68(v62, v19, v20);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v62, v63, v64);
    v21 = (v3 + v65[8]);
    v22 = v21[6];
    v23 = v21[4];
    v58 = v21[5];
    v59 = v22;
    v24 = v21[6];
    *v60 = v21[7];
    v25 = v21[1];
    v26 = v21[3];
    v55 = v21[2];
    v56 = v26;
    v27 = v21[3];
    v57 = v21[4];
    v28 = v21[1];
    v53 = *v21;
    v54 = v28;
    v50 = v58;
    v51 = v24;
    v52[0] = v21[7];
    v47 = v55;
    v48 = v27;
    v49 = v23;
    *&v60[15] = *(v21 + 127);
    *(v52 + 15) = *(v21 + 127);
    v45 = v53;
    v46 = v25;
    v44 = 4;
    sub_217AFFBC0(&v53, v42);
    sub_217ACF52C();
    sub_217D89C3C();
    v42[6] = v51;
    *v43 = v52[0];
    *&v43[15] = *(v52 + 15);
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v42[5] = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_217B009E0(v42);
    v29 = v3 + v65[9];
    v30 = *(v29 + 16);
    v31 = *(v29 + 32);
    v40[0] = *v29;
    v40[1] = v30;
    v40[2] = v31;
    v41 = *(v29 + 48);
    v36 = v40[0];
    v37 = v30;
    v38 = *(v29 + 32);
    v39 = *(v29 + 48);
    v35 = 5;
    sub_217ACC004(v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v32[15] = *(v3 + v65[10]);
    v32[14] = 6;
    sub_217AED190();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CD5F80()
{
  result = qword_27CBA3F78;
  if (!qword_27CBA3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F78);
  }

  return result;
}

uint64_t BlockTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_217D8899C();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD677C(0, &qword_27CBA3F80, MEMORY[0x277D844C8]);
  v40 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for BlockTagEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217CD5F80();
  v41 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v18 = v39;
  v19 = v15;
  LOBYTE(v50) = 0;
  sub_217A602A0(&qword_2811C8408);
  v20 = v40;
  sub_217D89BCC();
  (*(v38 + 32))(v19, v7, v4);
  LOBYTE(v45) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v21 = *(&v50 + 1);
  v22 = v51;
  v23 = v19 + v12[5];
  *v23 = v50;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  LOBYTE(v45) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v24 = *(&v50 + 1);
  v25 = (v19 + v12[6]);
  *v25 = v50;
  v25[1] = v24;
  LOBYTE(v45) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v26 = v51;
  v27 = v19 + v12[7];
  *v27 = v50;
  *(v27 + 16) = v26;
  v49 = 4;
  sub_217ACF4D8();
  sub_217D89B5C();
  v28 = v19 + v12[8];
  v29 = v55;
  v30 = v57[0];
  *(v28 + 96) = v56;
  *(v28 + 112) = v30;
  *(v28 + 127) = *(v57 + 15);
  v31 = v53;
  *(v28 + 32) = v52;
  *(v28 + 48) = v31;
  *(v28 + 64) = v54;
  *(v28 + 80) = v29;
  v32 = v51;
  *v28 = v50;
  *(v28 + 16) = v32;
  v44 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v33 = v19 + v12[9];
  v34 = v46;
  *v33 = v45;
  *(v33 + 16) = v34;
  *(v33 + 32) = v47;
  *(v33 + 48) = v48;
  v42 = 6;
  sub_217AED13C();
  sub_217D89BCC();
  (*(v18 + 8))(v41, v20);
  *(v19 + v12[10]) = v43;
  sub_217CD67E0(v19, v37);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_217CD6844(v19);
}

void sub_217CD677C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD5F80();
    v7 = a3(a1, &type metadata for BlockTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD67E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlockTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD6844(uint64_t a1)
{
  v2 = type metadata accessor for BlockTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CD69DC()
{
  result = qword_27CBA3F88;
  if (!qword_27CBA3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F88);
  }

  return result;
}

unint64_t sub_217CD6A34()
{
  result = qword_27CBA3F90;
  if (!qword_27CBA3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F90);
  }

  return result;
}

unint64_t sub_217CD6A8C()
{
  result = qword_27CBA3F98;
  if (!qword_27CBA3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F98);
  }

  return result;
}

uint64_t sub_217CD6BA8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3FD0);
  __swift_project_value_buffer(v0, qword_27CBA3FD0);
  return sub_217D8866C();
}

uint64_t PictureInPictureStoppedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PictureInPictureStoppedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CD761C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t PictureInPictureStoppedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PictureInPictureStoppedEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t PictureInPictureStoppedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t PictureInPictureStoppedEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t PictureInPictureStoppedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PictureInPictureStoppedEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t PictureInPictureStoppedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t PictureInPictureStoppedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

__n128 PictureInPictureStoppedEvent.Model.init(eventData:articleData:channelData:feedData:mediaData:userBundleSubscriptionContextData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a3 + 4);
  v37 = *a4;
  v15 = *(a4 + 2);
  v40 = *a5;
  v16 = *(a5 + 2);
  v39 = *(a5 + 1);
  v17 = *(a5 + 6);
  v38 = a5[28];
  v18 = sub_217D8899C();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v21;
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  *(v20 + 127) = *(a2 + 127);
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = a8 + v19[6];
  *v25 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v14;
  v26 = a8 + v19[7];
  *v26 = v37;
  *(v26 + 16) = v15;
  v27 = a8 + v19[8];
  *v27 = v40;
  *(v27 + 8) = v39;
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
  *(v27 + 28) = v38;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = *(a6 + 48);
  v30 = a8 + v19[10];
  v31 = *(a7 + 112);
  *(v30 + 96) = *(a7 + 96);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a7 + 128);
  v32 = *(a7 + 48);
  *(v30 + 32) = *(a7 + 32);
  *(v30 + 48) = v32;
  v33 = *(a7 + 80);
  *(v30 + 64) = *(a7 + 64);
  *(v30 + 80) = v33;
  result = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = result;
  return result;
}

unint64_t sub_217CD7FA0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 5)
  {
    v3 = 0x74614470756F7267;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x746144616964656DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217CD808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CD98F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CD80B4(uint64_t a1)
{
  v2 = sub_217CD8720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD80F0(uint64_t a1)
{
  v2 = sub_217CD8720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PictureInPictureStoppedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD8EBC(0, &qword_27CBA3FE8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v49 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD8720();
  sub_217D89E7C();
  v102 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v100 = *(v13 + 96);
    *v101 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v96 = *(v13 + 32);
    v97 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v98 = *(v13 + 64);
    v99 = v19;
    v20 = *(v13 + 16);
    v95[0] = *v13;
    v95[1] = v20;
    v21 = *(v13 + 112);
    v93 = v100;
    v94[0] = v21;
    v89 = v96;
    v90 = v18;
    v91 = v98;
    v92 = v14;
    *&v101[15] = *(v13 + 127);
    *(v94 + 15) = *(v13 + 127);
    v87 = v95[0];
    v88 = v16;
    v86 = 1;
    sub_217AE38AC(v95, &v62, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v84[6] = v93;
    *v85 = v94[0];
    *&v85[15] = *(v94 + 15);
    v84[2] = v89;
    v84[3] = v90;
    v84[4] = v91;
    v84[5] = v92;
    v84[0] = v87;
    v84[1] = v88;
    sub_217AE4A44(v84, &qword_2811C7DB8);
    v22 = (v3 + v12[6]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    *&v62 = *v22;
    *(&v62 + 1) = v23;
    *&v63 = v24;
    *(&v63 + 1) = v25;
    *&v64 = v26;
    LOBYTE(v51) = 2;
    sub_217AD86BC(v62, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v62, *(&v62 + 1));
    v27 = (v3 + v12[7]);
    v28 = v27[1];
    v29 = v27[2];
    *&v62 = *v27;
    *(&v62 + 1) = v28;
    *&v63 = v29;
    LOBYTE(v51) = 3;
    sub_217AD1A68(v62, v28, v29);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v62, *(&v62 + 1), v63);
    v30 = (v3 + v12[8]);
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = *(v30 + 2);
    v34 = *(v30 + 6);
    LOBYTE(v30) = v30[28];
    v79 = v31;
    v80 = v32;
    v81 = v33;
    v82 = v34;
    v83 = v30;
    v78 = 4;
    sub_217AE1D08();

    sub_217D89CAC();

    v35 = (v3 + v12[9]);
    v36 = v35[1];
    v76[0] = *v35;
    v76[1] = v36;
    v38 = *v35;
    v37 = v35[1];
    v76[2] = v35[2];
    v77 = *(v35 + 48);
    v72 = v38;
    v73 = v37;
    v74 = v35[2];
    v75 = *(v35 + 48);
    v71 = 5;
    sub_217ACC004(v76, &v62);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v72;
    v60[1] = v73;
    v60[2] = v74;
    v61 = v75;
    sub_217ACC69C(v60);
    v40 = (v3 + v12[10]);
    v41 = v40[5];
    v42 = v40[7];
    v68 = v40[6];
    v69 = v42;
    v43 = v40[7];
    v70 = v40[8];
    v44 = v40[1];
    v45 = v40[3];
    v64 = v40[2];
    v65 = v45;
    v46 = v40[3];
    v47 = v40[5];
    v66 = v40[4];
    v67 = v47;
    v48 = v40[1];
    v62 = *v40;
    v63 = v48;
    v57 = v68;
    v58 = v43;
    v59 = v40[8];
    v53 = v64;
    v54 = v46;
    v55 = v66;
    v56 = v41;
    v51 = v62;
    v52 = v44;
    v50 = 6;
    sub_217AE38AC(&v62, v49, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v49[6] = v57;
    v49[7] = v58;
    v49[8] = v59;
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v49[5] = v56;
    v49[0] = v51;
    v49[1] = v52;
    sub_217AE4A44(v49, &qword_2811BD178);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CD8720()
{
  result = qword_27CBA3FF0;
  if (!qword_27CBA3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3FF0);
  }

  return result;
}

uint64_t PictureInPictureStoppedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_217D8899C();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD8EBC(0, &qword_27CBA3FF8, MEMORY[0x277D844C8]);
  v51 = v6;
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD8720();
  v50 = v9;
  v15 = v76;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v47;
  v76 = a1;
  v17 = v48;
  LOBYTE(v53) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  (*(v17 + 32))(v13, v49, v3);
  v67 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v49 = 0;
  v18 = v10[5];
  v45 = v13;
  v19 = &v13[v18];
  v20 = v75[0];
  *(v19 + 6) = v74;
  *(v19 + 7) = v20;
  *(v19 + 127) = *(v75 + 15);
  v21 = v71;
  *(v19 + 2) = v70;
  *(v19 + 3) = v21;
  v22 = v73;
  *(v19 + 4) = v72;
  *(v19 + 5) = v22;
  v23 = v69;
  *v19 = v68;
  *(v19 + 1) = v23;
  LOBYTE(v63) = 2;
  sub_217AD07F8();
  sub_217D89B5C();
  v24 = v16;
  v25 = v55;
  v26 = &v45[v10[6]];
  v27 = v54;
  *v26 = v53;
  *(v26 + 1) = v27;
  *(v26 + 4) = v25;
  LOBYTE(v63) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v28 = v54;
  v29 = &v45[v10[7]];
  *v29 = v53;
  *(v29 + 2) = v28;
  LOBYTE(v63) = 4;
  sub_217AE1CB4();
  sub_217D89BCC();
  v30 = v76;
  v31 = *(&v53 + 1);
  v32 = v54;
  v33 = DWORD2(v54);
  v34 = BYTE12(v54);
  v35 = &v45[v10[8]];
  *v35 = v53;
  *(v35 + 1) = v31;
  *(v35 + 2) = v32;
  *(v35 + 6) = v33;
  v35[28] = v34;
  v62 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v36 = &v45[v10[9]];
  v37 = v64;
  *v36 = v63;
  *(v36 + 1) = v37;
  *(v36 + 2) = v65;
  v36[48] = v66;
  v52 = 6;
  sub_217A5D308();
  sub_217D89B5C();
  (*(v24 + 8))(v50, v51);
  v38 = v45;
  v39 = &v45[v10[10]];
  v40 = v60;
  *(v39 + 6) = v59;
  *(v39 + 7) = v40;
  *(v39 + 8) = v61;
  v41 = v56;
  *(v39 + 2) = v55;
  *(v39 + 3) = v41;
  v42 = v58;
  *(v39 + 4) = v57;
  *(v39 + 5) = v42;
  v43 = v54;
  *v39 = v53;
  *(v39 + 1) = v43;
  sub_217CD8F20(v38, v46);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217CD8F84(v38);
}

void sub_217CD8EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD8720();
    v7 = a3(a1, &type metadata for PictureInPictureStoppedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD8F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD8F84(uint64_t a1)
{
  v2 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CD90B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v7, v18);
}

void sub_217CD9444()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CD761C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CD761C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217CD761C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217CD761C(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
          if (v4 <= 0x3F)
          {
            sub_217CD761C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
            if (v5 <= 0x3F)
            {
              sub_217CD761C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_217CD96B8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217CD97F0()
{
  result = qword_27CBA4020;
  if (!qword_27CBA4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4020);
  }

  return result;
}

unint64_t sub_217CD9848()
{
  result = qword_27CBA4028;
  if (!qword_27CBA4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4028);
  }

  return result;
}

unint64_t sub_217CD98A0()
{
  result = qword_27CBA4030;
  if (!qword_27CBA4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4030);
  }

  return result;
}

uint64_t sub_217CD98F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_217CD9C20()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4068);
  __swift_project_value_buffer(v0, qword_27CBA4068);
  return sub_217D8866C();
}

uint64_t PictureInPictureStartedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PictureInPictureStartedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PictureInPictureStartedEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t PictureInPictureStartedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t PictureInPictureStartedEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t PictureInPictureStartedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PictureInPictureStartedEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t PictureInPictureStartedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t PictureInPictureStartedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

__n128 PictureInPictureStartedEvent.Model.init(eventData:articleData:channelData:feedData:mediaData:userBundleSubscriptionContextData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a3 + 4);
  v37 = *a4;
  v15 = *(a4 + 2);
  v40 = *a5;
  v16 = *(a5 + 2);
  v39 = *(a5 + 1);
  v17 = *(a5 + 6);
  v38 = a5[28];
  v18 = sub_217D8899C();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v21;
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  *(v20 + 127) = *(a2 + 127);
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = a8 + v19[6];
  *v25 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v14;
  v26 = a8 + v19[7];
  *v26 = v37;
  *(v26 + 16) = v15;
  v27 = a8 + v19[8];
  *v27 = v40;
  *(v27 + 8) = v39;
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
  *(v27 + 28) = v38;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = *(a6 + 48);
  v30 = a8 + v19[10];
  v31 = *(a7 + 112);
  *(v30 + 96) = *(a7 + 96);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a7 + 128);
  v32 = *(a7 + 48);
  *(v30 + 32) = *(a7 + 32);
  *(v30 + 48) = v32;
  v33 = *(a7 + 80);
  *(v30 + 64) = *(a7 + 64);
  *(v30 + 80) = v33;
  result = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = result;
  return result;
}

uint64_t sub_217CDAF9C(uint64_t a1)
{
  v2 = sub_217CDB608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDAFD8(uint64_t a1)
{
  v2 = sub_217CDB608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PictureInPictureStartedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CDBDA4(0, &qword_27CBA4080, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v49 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDB608();
  sub_217D89E7C();
  v102 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v100 = *(v13 + 96);
    *v101 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v96 = *(v13 + 32);
    v97 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v98 = *(v13 + 64);
    v99 = v19;
    v20 = *(v13 + 16);
    v95[0] = *v13;
    v95[1] = v20;
    v21 = *(v13 + 112);
    v93 = v100;
    v94[0] = v21;
    v89 = v96;
    v90 = v18;
    v91 = v98;
    v92 = v14;
    *&v101[15] = *(v13 + 127);
    *(v94 + 15) = *(v13 + 127);
    v87 = v95[0];
    v88 = v16;
    v86 = 1;
    sub_217AE38AC(v95, &v62, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v84[6] = v93;
    *v85 = v94[0];
    *&v85[15] = *(v94 + 15);
    v84[2] = v89;
    v84[3] = v90;
    v84[4] = v91;
    v84[5] = v92;
    v84[0] = v87;
    v84[1] = v88;
    sub_217AE4A44(v84, &qword_2811C7DB8);
    v22 = (v3 + v12[6]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    *&v62 = *v22;
    *(&v62 + 1) = v23;
    *&v63 = v24;
    *(&v63 + 1) = v25;
    *&v64 = v26;
    LOBYTE(v51) = 2;
    sub_217AD86BC(v62, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v62, *(&v62 + 1));
    v27 = (v3 + v12[7]);
    v28 = v27[1];
    v29 = v27[2];
    *&v62 = *v27;
    *(&v62 + 1) = v28;
    *&v63 = v29;
    LOBYTE(v51) = 3;
    sub_217AD1A68(v62, v28, v29);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v62, *(&v62 + 1), v63);
    v30 = (v3 + v12[8]);
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = *(v30 + 2);
    v34 = *(v30 + 6);
    LOBYTE(v30) = v30[28];
    v79 = v31;
    v80 = v32;
    v81 = v33;
    v82 = v34;
    v83 = v30;
    v78 = 4;
    sub_217AE1D08();

    sub_217D89CAC();

    v35 = (v3 + v12[9]);
    v36 = v35[1];
    v76[0] = *v35;
    v76[1] = v36;
    v38 = *v35;
    v37 = v35[1];
    v76[2] = v35[2];
    v77 = *(v35 + 48);
    v72 = v38;
    v73 = v37;
    v74 = v35[2];
    v75 = *(v35 + 48);
    v71 = 5;
    sub_217ACC004(v76, &v62);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v72;
    v60[1] = v73;
    v60[2] = v74;
    v61 = v75;
    sub_217ACC69C(v60);
    v40 = (v3 + v12[10]);
    v41 = v40[5];
    v42 = v40[7];
    v68 = v40[6];
    v69 = v42;
    v43 = v40[7];
    v70 = v40[8];
    v44 = v40[1];
    v45 = v40[3];
    v64 = v40[2];
    v65 = v45;
    v46 = v40[3];
    v47 = v40[5];
    v66 = v40[4];
    v67 = v47;
    v48 = v40[1];
    v62 = *v40;
    v63 = v48;
    v57 = v68;
    v58 = v43;
    v59 = v40[8];
    v53 = v64;
    v54 = v46;
    v55 = v66;
    v56 = v41;
    v51 = v62;
    v52 = v44;
    v50 = 6;
    sub_217AE38AC(&v62, v49, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v49[6] = v57;
    v49[7] = v58;
    v49[8] = v59;
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v49[5] = v56;
    v49[0] = v51;
    v49[1] = v52;
    sub_217AE4A44(v49, &qword_2811BD178);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CDB608()
{
  result = qword_27CBA4088;
  if (!qword_27CBA4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4088);
  }

  return result;
}

uint64_t PictureInPictureStartedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_217D8899C();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CDBDA4(0, &qword_27CBA4090, MEMORY[0x277D844C8]);
  v51 = v6;
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDB608();
  v50 = v9;
  v15 = v76;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v47;
  v76 = a1;
  v17 = v48;
  LOBYTE(v53) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  (*(v17 + 32))(v13, v49, v3);
  v67 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v49 = 0;
  v18 = v10[5];
  v45 = v13;
  v19 = &v13[v18];
  v20 = v75[0];
  *(v19 + 6) = v74;
  *(v19 + 7) = v20;
  *(v19 + 127) = *(v75 + 15);
  v21 = v71;
  *(v19 + 2) = v70;
  *(v19 + 3) = v21;
  v22 = v73;
  *(v19 + 4) = v72;
  *(v19 + 5) = v22;
  v23 = v69;
  *v19 = v68;
  *(v19 + 1) = v23;
  LOBYTE(v63) = 2;
  sub_217AD07F8();
  sub_217D89B5C();
  v24 = v16;
  v25 = v55;
  v26 = &v45[v10[6]];
  v27 = v54;
  *v26 = v53;
  *(v26 + 1) = v27;
  *(v26 + 4) = v25;
  LOBYTE(v63) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v28 = v54;
  v29 = &v45[v10[7]];
  *v29 = v53;
  *(v29 + 2) = v28;
  LOBYTE(v63) = 4;
  sub_217AE1CB4();
  sub_217D89BCC();
  v30 = v76;
  v31 = *(&v53 + 1);
  v32 = v54;
  v33 = DWORD2(v54);
  v34 = BYTE12(v54);
  v35 = &v45[v10[8]];
  *v35 = v53;
  *(v35 + 1) = v31;
  *(v35 + 2) = v32;
  *(v35 + 6) = v33;
  v35[28] = v34;
  v62 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v36 = &v45[v10[9]];
  v37 = v64;
  *v36 = v63;
  *(v36 + 1) = v37;
  *(v36 + 2) = v65;
  v36[48] = v66;
  v52 = 6;
  sub_217A5D308();
  sub_217D89B5C();
  (*(v24 + 8))(v50, v51);
  v38 = v45;
  v39 = &v45[v10[10]];
  v40 = v60;
  *(v39 + 6) = v59;
  *(v39 + 7) = v40;
  *(v39 + 8) = v61;
  v41 = v56;
  *(v39 + 2) = v55;
  *(v39 + 3) = v41;
  v42 = v58;
  *(v39 + 4) = v57;
  *(v39 + 5) = v42;
  v43 = v54;
  *v39 = v53;
  *(v39 + 1) = v43;
  sub_217CDBE08(v38, v46);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217CDBE6C(v38);
}

void sub_217CDBDA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDB608();
    v7 = a3(a1, &type metadata for PictureInPictureStartedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CDBE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CDBE6C(uint64_t a1)
{
  v2 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CDC004()
{
  result = qword_27CBA40B8;
  if (!qword_27CBA40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40B8);
  }

  return result;
}

unint64_t sub_217CDC05C()
{
  result = qword_27CBA40C0;
  if (!qword_27CBA40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40C0);
  }

  return result;
}

unint64_t sub_217CDC0B4()
{
  result = qword_27CBA40C8;
  if (!qword_27CBA40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40C8);
  }

  return result;
}

uint64_t IssueData.issueID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IssueData.issueID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IssueData.topicIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_217CDC26C()
{
  v1 = 0x44496575737369;
  v2 = 0x7079546575737369;
  if (*v0 != 2)
  {
    v2 = 0x7344496369706F74;
  }

  if (*v0)
  {
    v1 = 0x656C646E75427369;
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

uint64_t sub_217CDC2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CDCB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CDC31C(uint64_t a1)
{
  v2 = sub_217CDC5D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDC358(uint64_t a1)
{
  v2 = sub_217CDC5D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueData.encode(to:)(void *a1)
{
  sub_217CDC948(0, &qword_2811BC4D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v18 = *(v1 + 17);
  v19 = v11;
  v17 = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDC5D4();
  sub_217D89E7C();
  v26 = 0;
  v13 = v20;
  sub_217D89C6C();
  if (!v13)
  {
    v14 = v18;
    v15 = v17;
    v25 = 1;
    sub_217D89C7C();
    v24 = v14;
    v23 = 2;
    sub_217CDC628();
    sub_217D89CAC();
    v21 = v15;
    v22 = 3;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CDC5D4()
{
  result = qword_2811BD138;
  if (!qword_2811BD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD138);
  }

  return result;
}

unint64_t sub_217CDC628()
{
  result = qword_2811BD108;
  if (!qword_2811BD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD108);
  }

  return result;
}

uint64_t IssueData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CDC948(0, &qword_2811BC8D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDC5D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  v21 = sub_217D89B9C() & 1;
  v23 = 2;
  sub_217CDC9AC();
  sub_217D89BCC();
  HIDWORD(v19) = v24;
  sub_217A55F8C();
  v22 = 3;
  sub_217A55FDC(&qword_2811BCD38);
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v17 = v20;
  v18 = v21;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 17) = BYTE4(v19);
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDC948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDC5D4();
    v7 = a3(a1, &type metadata for IssueData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDC9AC()
{
  result = qword_2811BD0F8;
  if (!qword_2811BD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0F8);
  }

  return result;
}

unint64_t sub_217CDCA5C()
{
  result = qword_27CBA40D0;
  if (!qword_27CBA40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40D0);
  }

  return result;
}

unint64_t sub_217CDCAB4()
{
  result = qword_2811BD128;
  if (!qword_2811BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD128);
  }

  return result;
}

unint64_t sub_217CDCB0C()
{
  result = qword_2811BD130;
  if (!qword_2811BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD130);
  }

  return result;
}

uint64_t sub_217CDCB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496575737369 && a2 == 0xE700000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079546575737369 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

NewsAnalytics::ResultType_optional __swiftcall ResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResultType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1818845542;
  if (*v0 != 2)
  {
    v2 = 0x7373696D736964;
  }

  if (*v0)
  {
    v1 = 0x73736563637573;
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

unint64_t sub_217CDCDAC()
{
  result = qword_27CBA40D8;
  if (!qword_27CBA40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40D8);
  }

  return result;
}

uint64_t sub_217CDCE00()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDCEB8()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CDCF5C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDD01C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1818845542;
  if (*v1 != 2)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x73736563637573;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217CDD150()
{
  result = qword_27CBA40E0;
  if (!qword_27CBA40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40E0);
  }

  return result;
}

NewsAnalytics::FractionalCohortMembershipDetails __swiftcall FractionalCohortMembershipDetails.init(tagID:score:)(Swift::String tagID, Swift::Double score)
{
  *v2 = tagID;
  *(v2 + 16) = score;
  result.tagID = tagID;
  result.score = score;
  return result;
}

uint64_t FractionalCohortMembershipDetails.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FractionalCohortMembershipDetails.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CDD270()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217CDD29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CDD370(uint64_t a1)
{
  v2 = sub_217CDD56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDD3AC(uint64_t a1)
{
  v2 = sub_217CDD56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FractionalCohortMembershipDetails.encode(to:)(void *a1)
{
  sub_217CDD7B8(0, &qword_2811BC548, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDD56C();
  sub_217D89E7C();
  v17 = 0;
  v13 = v15;
  sub_217D89C6C();
  if (!v13)
  {
    v16 = 1;
    sub_217D89C8C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CDD56C()
{
  result = qword_2811BDD50;
  if (!qword_2811BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD50);
  }

  return result;
}

uint64_t FractionalCohortMembershipDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CDD7B8(0, &qword_2811BC938, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDD56C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19[15] = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19[14] = 1;
  sub_217D89BAC();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDD7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDD56C();
    v7 = a3(a1, &type metadata for FractionalCohortMembershipDetails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDD820()
{
  result = qword_2811BDD30;
  if (!qword_2811BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD30);
  }

  return result;
}

unint64_t sub_217CDD878()
{
  result = qword_2811BDD38;
  if (!qword_2811BDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD38);
  }

  return result;
}

unint64_t sub_217CDD920()
{
  result = qword_27CBA40E8;
  if (!qword_27CBA40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40E8);
  }

  return result;
}

unint64_t sub_217CDD978()
{
  result = qword_2811BDD40;
  if (!qword_2811BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD40);
  }

  return result;
}

unint64_t sub_217CDD9D0()
{
  result = qword_2811BDD48;
  if (!qword_2811BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD48);
  }

  return result;
}

uint64_t sub_217CDDA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD20F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CDDB20(uint64_t a1)
{
  v2 = sub_217CDDCF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDDB5C(uint64_t a1)
{
  v2 = sub_217CDDCF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementData.encode(to:)(void *a1)
{
  sub_217CDDF34(0, &qword_27CBA40F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDDCF4();
  sub_217D89E7C();
  v13 = v9;
  sub_217CDDD48();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CDDCF4()
{
  result = qword_27CBA40F8;
  if (!qword_27CBA40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40F8);
  }

  return result;
}

unint64_t sub_217CDDD48()
{
  result = qword_27CBA4100;
  if (!qword_27CBA4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4100);
  }

  return result;
}

uint64_t EngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CDDF34(0, &qword_27CBA4108, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDDCF4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CDDF98();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDDF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDDCF4();
    v7 = a3(a1, &type metadata for EngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDDF98()
{
  result = qword_27CBA4110;
  if (!qword_27CBA4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4110);
  }

  return result;
}

unint64_t sub_217CDE048()
{
  result = qword_27CBA4118;
  if (!qword_27CBA4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4118);
  }

  return result;
}

unint64_t sub_217CDE0A0()
{
  result = qword_27CBA4120;
  if (!qword_27CBA4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4120);
  }

  return result;
}

unint64_t sub_217CDE0F8()
{
  result = qword_27CBA4128;
  if (!qword_27CBA4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4128);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRDataList.personalizationFeatureIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217CDE1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000217DD2110 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CDE260(uint64_t a1)
{
  v2 = sub_217CDE480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDE29C(uint64_t a1)
{
  v2 = sub_217CDE480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationFeatureCTRDataList.encode(to:)(void *a1)
{
  sub_217CDE6F4(0, &qword_27CBA4130, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDE480();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217CDE4D4();
  sub_217CDE758(&qword_27CBA4148, sub_217BCF150);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CDE480()
{
  result = qword_27CBA4138;
  if (!qword_27CBA4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4138);
  }

  return result;
}

void sub_217CDE4D4()
{
  if (!qword_27CBA4140)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA4140);
    }
  }
}

uint64_t PersonalizationFeatureCTRDataList.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217CDE6F4(0, &qword_27CBA4150, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDE480();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CDE4D4();
    sub_217CDE758(&qword_27CBA4158, sub_217BCF0F8);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDE6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDE480();
    v7 = a3(a1, &type metadata for PersonalizationFeatureCTRDataList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CDE758(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217CDE4D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217CDE820()
{
  result = qword_27CBA4160;
  if (!qword_27CBA4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4160);
  }

  return result;
}

unint64_t sub_217CDE878()
{
  result = qword_27CBA4168;
  if (!qword_27CBA4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4168);
  }

  return result;
}

unint64_t sub_217CDE8D0()
{
  result = qword_27CBA4170;
  if (!qword_27CBA4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4170);
  }

  return result;
}

NewsAnalytics::AdCreativeType_optional __swiftcall AdCreativeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdCreativeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x566C6C6F52657270;
  v4 = 0x644165766974616ELL;
  if (v1 != 3)
  {
    v4 = 0x6974737265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656E6E6162;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CDEA38()
{
  result = qword_27CBA4178;
  if (!qword_27CBA4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4178);
  }

  return result;
}

uint64_t sub_217CDEA8C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDEB7C()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CDEC58()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDED50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC0000006F656469;
  v6 = 0x566C6C6F52657270;
  v7 = 0xE800000000000000;
  v8 = 0x644165766974616ELL;
  if (v2 != 3)
  {
    v8 = 0x6974737265746E69;
    v7 = 0xEC0000006C616974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656E6E6162;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217CDEEBC()
{
  result = qword_2811C7138;
  if (!qword_2811C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7138);
  }

  return result;
}

unint64_t sub_217CDEF9C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_217CDEFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2130 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CDF0B8(uint64_t a1)
{
  v2 = sub_217CDF2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDF0F4(uint64_t a1)
{
  v2 = sub_217CDF2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallData.encode(to:)(void *a1)
{
  sub_217CDF5BC(0, &qword_2811BC848, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDF2DC();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217CDF330();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CDF384();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CDF2DC()
{
  result = qword_2811C7D20;
  if (!qword_2811C7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D20);
  }

  return result;
}

unint64_t sub_217CDF330()
{
  result = qword_2811C7CF0;
  if (!qword_2811C7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CF0);
  }

  return result;
}

unint64_t sub_217CDF384()
{
  result = qword_2811BF798;
  if (!qword_2811BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF798);
  }

  return result;
}

uint64_t PaywallData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CDF5BC(0, &qword_2811BCB40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDF2DC();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217CDF620();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217CDF674();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDF5BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDF2DC();
    v7 = a3(a1, &type metadata for PaywallData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDF620()
{
  result = qword_2811C7CE0;
  if (!qword_2811C7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CE0);
  }

  return result;
}

unint64_t sub_217CDF674()
{
  result = qword_2811BF788;
  if (!qword_2811BF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF788);
  }

  return result;
}

unint64_t sub_217CDF724()
{
  result = qword_27CBA4180;
  if (!qword_27CBA4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4180);
  }

  return result;
}

unint64_t sub_217CDF77C()
{
  result = qword_2811C7D10;
  if (!qword_2811C7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D10);
  }

  return result;
}

unint64_t sub_217CDF7D4()
{
  result = qword_2811C7D18;
  if (!qword_2811C7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D18);
  }

  return result;
}

NewsAnalytics::PersonalizedAdsUserSelectionType_optional __swiftcall PersonalizedAdsUserSelectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizedAdsUserSelectionType.rawValue.getter()
{
  v1 = 0x6E49646574706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F646574706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CDF8E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6E49646574706FLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F646574706FLL;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CDF9E4()
{
  result = qword_27CBA4188;
  if (!qword_27CBA4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4188);
  }

  return result;
}

uint64_t sub_217CDFA38()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDFADC()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CDFB6C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDFC18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CDFD38()
{
  result = qword_27CBA4190;
  if (!qword_27CBA4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4190);
  }

  return result;
}

NewsAnalytics::NotificationSource_optional __swiftcall NotificationSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationSource.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 != 5)
    {
      v2 = 0x6169726F74696465;
    }

    v3 = 0xD00000000000001ALL;
    if (v1 == 3)
    {
      v3 = 0x656873696C627570;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_217CDFEF0()
{
  result = qword_27CBA4198;
  if (!qword_27CBA4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4198);
  }

  return result;
}

uint64_t sub_217CDFF50()
{
  *v0;
  sub_217D895CC();
}

void sub_217CE0090(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE700000000000000;
    v9 = 0x8000000217DCC1E0;
    if (v2 != 1)
    {
      v9 = 0x8000000217DCC200;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (!v10)
    {
      v8 = v9;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000217DCC250;
    v4 = 0xD000000000000018;
    if (v2 != 5)
    {
      v4 = 0x6169726F74696465;
      v3 = 0xEF756F59726F466CLL;
    }

    v5 = 0xEF756F59726F4672;
    v6 = 0xD00000000000001ALL;
    if (v2 == 3)
    {
      v6 = 0x656873696C627570;
    }

    else
    {
      v5 = 0x8000000217DCC230;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_217CE0250()
{
  result = qword_27CBA41A0;
  if (!qword_27CBA41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA41A0);
  }

  return result;
}

uint64_t sub_217CE036C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA41D8);
  __swift_project_value_buffer(v0, qword_27CBA41D8);
  return sub_217D8866C();
}

uint64_t AudioEngageEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngageEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 72);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 72);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 76);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 76);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngageEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v2, v35);
}

uint64_t sub_217CE24FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AudioEngageEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t AudioEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t AudioEngageEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t AudioEngageEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngageEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngageEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t AudioEngageEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t AudioEngageEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t AudioEngageEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngageEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 68));
  *a1 = result;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t AudioEngageEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  v4 = (v1 + *(result + 76));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngageEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:audioEngagementOriginationData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11, uint64_t a12, __n128 *a13, uint64_t *a14, int *a15, char *a16, char *a17)
{
  v23 = a4[1];
  v24 = *(a4 + 16);
  v54 = *(a4 + 17);
  v52 = a4[4];
  v53 = a4[3];
  v57 = *a6;
  v55 = *a4;
  v56 = *(a6 + 2);
  v58 = *(a7 + 4);
  v59 = *a7;
  v61 = a10[1];
  v62 = *a10;
  v60 = *(a10 + 8);
  v66 = *a14;
  v65 = a14[1];
  v25 = *a15;
  v69 = a17[1];
  v70 = *a17;
  v67 = *a16;
  v68 = *(a17 + 1);
  v26 = sub_217D8899C();
  v63 = a13[1];
  v64 = *a13;
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  v27 = type metadata accessor for AudioEngageEvent.Model(0);
  v28 = v27[5];
  v29 = sub_217D889CC();
  (*(*(v29 - 8) + 32))(a9 + v28, a2, v29);
  v30 = a9 + v27[6];
  v31 = *(a3 + 48);
  *(v30 + 32) = *(a3 + 32);
  *(v30 + 48) = v31;
  v32 = *(a3 + 16);
  *v30 = *a3;
  *(v30 + 16) = v32;
  *(v30 + 127) = *(a3 + 127);
  v33 = *(a3 + 112);
  *(v30 + 96) = *(a3 + 96);
  *(v30 + 112) = v33;
  v34 = *(a3 + 80);
  *(v30 + 64) = *(a3 + 64);
  *(v30 + 80) = v34;
  v35 = a9 + v27[7];
  *v35 = v55;
  *(v35 + 8) = v23;
  *(v35 + 16) = v24;
  *(v35 + 17) = v54;
  *(v35 + 24) = v53;
  *(v35 + 32) = v52;
  v36 = (a9 + v27[8]);
  v37 = a5[3];
  v36[2] = a5[2];
  v36[3] = v37;
  v38 = a5[1];
  *v36 = *a5;
  v36[1] = v38;
  v39 = a5[8];
  v36[7] = a5[7];
  v36[8] = v39;
  v40 = a5[6];
  v36[5] = a5[5];
  v36[6] = v40;
  v36[4] = a5[4];
  v41 = a9 + v27[9];
  *v41 = v57;
  *(v41 + 16) = v56;
  v42 = a9 + v27[10];
  *v42 = v59;
  *(v42 + 4) = v58;
  v43 = (a9 + v27[11]);
  v44 = a8[1];
  *v43 = *a8;
  v43[1] = v44;
  *(v43 + 26) = *(a8 + 26);
  v45 = a9 + v27[12];
  *v45 = v62;
  *(v45 + 8) = v61;
  *(v45 + 16) = v60;
  memcpy((a9 + v27[13]), a11, 0x111uLL);
  v46 = a9 + v27[14];
  v47 = *(a12 + 16);
  *v46 = *a12;
  *(v46 + 16) = v47;
  *(v46 + 32) = *(a12 + 32);
  *(v46 + 48) = *(a12 + 48);
  v48 = (a9 + v27[15]);
  result = v64;
  *v48 = v64;
  v48[1] = v63;
  v50 = (a9 + v27[16]);
  *v50 = v66;
  v50[1] = v65;
  *(a9 + v27[17]) = v25;
  *(a9 + v27[18]) = v67;
  v51 = a9 + v27[19];
  *v51 = v70;
  *(v51 + 1) = v69;
  *(v51 + 2) = v68;
  return result;
}

uint64_t sub_217CE2D5C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 1684366694;
      goto LABEL_18;
    case 6:
      result = 0x7461446B63617274;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      v3 = 2003134838;
LABEL_18:
      result = v3 | 0x6174614400000000;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x6569566575737369;
      break;
    case 13:
      result = 0x6B63616279616C70;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CE2F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CE5818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CE2F58(uint64_t a1)
{
  v2 = sub_217CE3A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE2F94(uint64_t a1)
{
  v2 = sub_217CE3A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CE486C(0, &qword_27CBA41F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v68 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE3A14();
  sub_217D89E7C();
  v85[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AudioEngageEvent.Model(0);
    v13 = *(v12 + 20);
    v145 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v146 = v12;
    v14 = *(v12 + 24);
    v68 = v3;
    v15 = v3 + v14;
    v16 = *(v15 + 96);
    v17 = *(v15 + 64);
    v142 = *(v15 + 80);
    v143 = v16;
    v18 = *(v15 + 96);
    *v144 = *(v15 + 112);
    v19 = *(v15 + 16);
    v20 = *(v15 + 48);
    v139 = *(v15 + 32);
    v140 = v20;
    v21 = *(v15 + 48);
    v141 = *(v15 + 64);
    v22 = *(v15 + 16);
    v138[0] = *v15;
    v138[1] = v22;
    v135 = v142;
    v136 = v18;
    v137[0] = *(v15 + 112);
    v132 = v139;
    v133 = v21;
    v134 = v17;
    *&v144[15] = *(v15 + 127);
    *(v137 + 15) = *(v15 + 127);
    v130 = v138[0];
    v131 = v19;
    v129 = 2;
    sub_217AD1630(v138, v85);
    sub_217ACF52C();
    sub_217D89CAC();
    v127[5] = v135;
    v127[6] = v136;
    *v128 = v137[0];
    *&v128[15] = *(v137 + 15);
    v127[2] = v132;
    v127[3] = v133;
    v127[4] = v134;
    v127[0] = v130;
    v127[1] = v131;
    sub_217AD2864(v127);
    v23 = v68;
    v24 = (v68 + v146[7]);
    v25 = v24[1];
    v26 = *(v24 + 16);
    v27 = *(v24 + 17);
    v28 = v24[3];
    v29 = v24[4];
    v121 = *v24;
    v122 = v25;
    v123 = v26;
    v124 = v27;
    v125 = v28;
    v126 = v29;
    v120 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v30 = v146;
    v31 = (v23 + v146[8]);
    v32 = v31[6];
    v33 = v31[4];
    v116 = v31[5];
    v117 = v32;
    v34 = v31[6];
    v35 = v31[8];
    v118 = v31[7];
    v119 = v35;
    v36 = v31[2];
    v37 = *v31;
    v112 = v31[1];
    v113 = v36;
    v38 = v31[2];
    v39 = v31[4];
    v114 = v31[3];
    v115 = v39;
    v40 = *v31;
    v108 = v34;
    v109 = v118;
    v110 = v31[8];
    v111 = v40;
    v104 = v38;
    v105 = v114;
    v106 = v33;
    v107 = v116;
    v102 = v37;
    v103 = v112;
    v101 = 4;
    sub_217AD87FC(&v111, v85);
    sub_217A5D3B4();
    sub_217D89C3C();
    v100[6] = v108;
    v100[7] = v109;
    v100[8] = v110;
    v100[2] = v104;
    v100[3] = v105;
    v100[4] = v106;
    v100[5] = v107;
    v100[0] = v102;
    v100[1] = v103;
    sub_217AD96E8(v100);
    v41 = (v23 + v30[9]);
    v42 = v41[1];
    v43 = v41[2];
    *v85 = *v41;
    *&v85[8] = v42;
    *&v85[16] = v43;
    v84[0] = 5;
    sub_217AD1A68(*v85, v42, v43);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(*v85, *&v85[8], *&v85[16]);
    v44 = (v23 + v30[10]);
    v45 = *v44;
    LOBYTE(v44) = *(v44 + 4);
    v98 = v45;
    v99 = v44;
    v97 = 6;
    sub_217C0573C();
    sub_217D89CAC();
    v46 = (v23 + v30[11]);
    v47 = v46[1];
    v95 = *v46;
    v96[0] = v47;
    *(v96 + 10) = *(v46 + 26);
    v48 = v46[1];
    v93 = *v46;
    v94[0] = v48;
    *(v94 + 10) = *(v46 + 26);
    v92 = 7;
    sub_217AEC604(&v95, v85);
    sub_217AEC6C8();
    sub_217D89CAC();
    v90 = v93;
    *v91 = v94[0];
    *&v91[10] = *(v94 + 10);
    sub_217AEC63C(&v90);
    v49 = (v23 + v30[12]);
    v50 = *v49;
    v51 = v49[1];
    LOWORD(v49) = *(v49 + 8);
    v87 = v50;
    v88 = v51;
    v89 = v49;
    v86 = 8;
    sub_217A5E790();

    sub_217D89C3C();

    v52 = v30[13];
    v53 = v68;
    memcpy(v85, (v68 + v52), sizeof(v85));
    memcpy(v84, (v68 + v52), sizeof(v84));
    v83[279] = 9;
    sub_217AD1744(v85, v83);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v83, v84, 0x111uLL);
    sub_217AD28B8(v83);
    v54 = (v53 + v30[14]);
    v55 = v54[1];
    v81[0] = *v54;
    v81[1] = v55;
    v57 = *v54;
    v56 = v54[1];
    v81[2] = v54[2];
    v82 = *(v54 + 48);
    v77 = v57;
    v78 = v56;
    v79 = v54[2];
    v80 = *(v54 + 48);
    v76 = 10;
    sub_217ACC004(v81, v74);
    sub_217A55B98();
    sub_217D89CAC();
    v74[0] = v77;
    v74[1] = v78;
    v74[2] = v79;
    v75 = v80;
    sub_217ACC69C(v74);
    v58 = (v68 + v146[15]);
    v59 = v58[1];
    v60 = v58[2];
    v61 = v58[3];
    v70 = *v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v69 = 11;
    sub_217AE39D0(v70, v59);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v70, v71);
    v62 = (v68 + v146[16]);
    v63 = v62[1];
    v70 = *v62;
    v71 = v63;
    v69 = 12;
    sub_217AD01EC();

    sub_217D89C3C();

    LODWORD(v70) = *(v68 + v146[17]);
    v69 = 13;
    sub_217C063B4();
    sub_217D89CAC();
    LOBYTE(v70) = *(v68 + v146[18]);
    v69 = 14;
    sub_217C0660C();
    sub_217D89CAC();
    v64 = (v68 + v146[19]);
    v65 = *v64;
    v66 = v64[1];
    LOWORD(v64) = *(v64 + 1);
    LOBYTE(v70) = v65;
    BYTE1(v70) = v66;
    WORD1(v70) = v64;
    v69 = 15;
    sub_217ACFB8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CE3A14()
{
  result = qword_27CBA41F8;
  if (!qword_27CBA41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA41F8);
  }

  return result;
}

uint64_t AudioEngageEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_217D889CC();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CE486C(0, &qword_27CBA4200, MEMORY[0x277D844C8]);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v57 - v11;
  v13 = type metadata accessor for AudioEngageEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE3A14();
  v68 = v12;
  v18 = v101;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v64;
  v58 = v13;
  v59 = a1;
  v101 = v16;
  LOBYTE(v100[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v65;
  sub_217D89BCC();
  v21 = v101;
  (*(v63 + 32))(v101, v20, v6);
  LOBYTE(v100[0]) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v22 = v62;
  sub_217D89BCC();
  v57[1] = v6;
  v65 = 0;
  v23 = v58;
  (*(v61 + 32))(&v21[v58[5]], v19, v22);
  v91 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v24 = &v21[v23[6]];
  v25 = v97;
  v26 = *v99;
  *(v24 + 6) = v98;
  *(v24 + 7) = v26;
  *(v24 + 127) = *&v99[15];
  v27 = v95;
  *(v24 + 2) = v94;
  *(v24 + 3) = v27;
  *(v24 + 4) = v96;
  *(v24 + 5) = v25;
  v28 = v93;
  *v24 = v92;
  *(v24 + 1) = v28;
  LOBYTE(v82) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v29 = *(&v100[0] + 1);
  v30 = v100[1];
  v31 = BYTE1(v100[1]);
  v32 = *(&v100[1] + 1);
  v33 = *&v100[2];
  v34 = &v21[v23[7]];
  *v34 = *&v100[0];
  *(v34 + 1) = v29;
  v34[16] = v30;
  v34[17] = v31;
  *(v34 + 3) = v32;
  *(v34 + 4) = v33;
  v81 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v35 = &v21[v23[8]];
  v36 = v89;
  *(v35 + 6) = v88;
  *(v35 + 7) = v36;
  *(v35 + 8) = v90;
  v37 = v85;
  *(v35 + 2) = v84;
  *(v35 + 3) = v37;
  v38 = v87;
  *(v35 + 4) = v86;
  *(v35 + 5) = v38;
  v39 = v83;
  *v35 = v82;
  *(v35 + 1) = v39;
  LOBYTE(v73) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v40 = *&v100[1];
  v41 = &v21[v23[9]];
  *v41 = v100[0];
  *(v41 + 2) = v40;
  LOBYTE(v73) = 6;
  sub_217C056E8();
  sub_217D89BCC();
  v42 = BYTE4(v100[0]);
  v43 = &v21[v23[10]];
  *v43 = v100[0];
  v43[4] = v42;
  v78 = 7;
  sub_217AEC670();
  sub_217D89BCC();
  v44 = &v21[v58[11]];
  v45 = *v80;
  *v44 = v79;
  *(v44 + 1) = v45;
  *(v44 + 26) = *&v80[10];
  LOBYTE(v73) = 8;
  sub_217A5E738();
  sub_217D89B5C();
  v46 = v100[1];
  v47 = &v101[v58[12]];
  *v47 = v100[0];
  *(v47 + 8) = v46;
  v77 = 9;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v101[v58[13]], v100, 0x111uLL);
  v72 = 10;
  sub_217A54D08();
  sub_217D89BCC();
  v48 = &v101[v58[14]];
  v49 = v74;
  *v48 = v73;
  *(v48 + 1) = v49;
  *(v48 + 2) = v75;
  v48[48] = v76;
  v69 = 11;
  sub_217ACFF40();
  sub_217D89B5C();
  v50 = &v101[v58[15]];
  v51 = v71;
  *v50 = v70;
  *(v50 + 1) = v51;
  v69 = 12;
  sub_217AD0198();
  sub_217D89B5C();
  *&v101[v58[16]] = v70;
  v69 = 13;
  sub_217C06360();
  sub_217D89BCC();
  *&v101[v58[17]] = v70;
  v69 = 14;
  sub_217C065B8();
  sub_217D89BCC();
  v101[v58[18]] = v70;
  v69 = 15;
  sub_217ACFB38();
  sub_217D89BCC();
  (*(v66 + 8))(v68, v67);
  v52 = BYTE1(v70);
  v53 = WORD1(v70);
  v54 = v101;
  v55 = &v101[v58[19]];
  *v55 = v70;
  v55[1] = v52;
  *(v55 + 1) = v53;
  sub_217CE48D0(v54, v60);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_217CE4934(v54);
}

void sub_217CE486C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE3A14();
    v7 = a3(a1, &type metadata for AudioEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CE48D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CE4934(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CE4A68@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  (*(*(v34 - 8) + 104))(a2 + v33, v4, v34);
  v35 = a1[19];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v4, v36);
}

void sub_217CE51F4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217C06810(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217C06810(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217C06810(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217C06810(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
            if (v5 <= 0x3F)
            {
              sub_217C06810(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
              if (v6 <= 0x3F)
              {
                sub_217C06810(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
                if (v7 <= 0x3F)
                {
                  sub_217C06810(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                  if (v8 <= 0x3F)
                  {
                    sub_217C06810(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
                    if (v9 <= 0x3F)
                    {
                      sub_217C06810(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                      if (v10 <= 0x3F)
                      {
                        sub_217C06810(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                        if (v11 <= 0x3F)
                        {
                          sub_217C06810(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                          if (v12 <= 0x3F)
                          {
                            sub_217C06810(319, &qword_2811C8798, sub_217C06360, sub_217C063B4);
                            if (v13 <= 0x3F)
                            {
                              sub_217C06810(319, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
                              if (v14 <= 0x3F)
                              {
                                sub_217C06810(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217CE5714()
{
  result = qword_27CBA4208;
  if (!qword_27CBA4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4208);
  }

  return result;
}

unint64_t sub_217CE576C()
{
  result = qword_27CBA4210;
  if (!qword_27CBA4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4210);
  }

  return result;
}

unint64_t sub_217CE57C4()
{
  result = qword_27CBA4218;
  if (!qword_27CBA4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4218);
  }

  return result;
}

uint64_t sub_217CE5818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD0560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t PrivateUserType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217D89B0C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_217CE5D98()
{
  result = qword_27CBA4220;
  if (!qword_27CBA4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4220);
  }

  return result;
}

uint64_t sub_217CE5DEC()
{
  sub_217D89E1C();
  sub_217D895CC();
  return sub_217D89E3C();
}

uint64_t sub_217CE5E50()
{
  sub_217D89E1C();
  sub_217D895CC();
  return sub_217D89E3C();
}

uint64_t sub_217CE5E9C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D89B0C();

  *a2 = v5 != 0;
  return result;
}

uint64_t ReferralCampaignData.referralCampaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

__n128 ReferralCampaignData.referralCampaignData.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = v1->n128_i64[1];
  v6 = v1[1].n128_i64[1];
  v7 = v1[2].n128_i64[1];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v9 = a1[2];
  v1[1] = result;
  v1[2] = v9;
  return result;
}

void __swiftcall ReferralCampaignData.init(referralCampaignData:)(NewsAnalytics::ReferralCampaignData *__return_ptr retstr, NewsAnalytics::CampaignData *referralCampaignData)
{
  object = referralCampaignData->campaignId._object;
  retstr->referralCampaignData.campaignId._countAndFlagsBits = referralCampaignData->campaignId._countAndFlagsBits;
  retstr->referralCampaignData.campaignId._object = object;
  creativeId = referralCampaignData->creativeId;
  retstr->referralCampaignData.campaignType = referralCampaignData->campaignType;
  retstr->referralCampaignData.creativeId = creativeId;
}

uint64_t sub_217CE6078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE860 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CE610C(uint64_t a1)
{
  v2 = sub_217CE6344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6148(uint64_t a1)
{
  v2 = sub_217CE6344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralCampaignData.encode(to:)(void *a1)
{
  sub_217CE653C(0, &qword_27CBA4228, MEMORY[0x277D84538]);
  v4 = v3;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v11 = v1[5];
  v14 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6344();

  sub_217D89E7C();
  v17 = v16;
  v18 = v9;
  v19 = v15;
  v20 = v10;
  v21 = v14;
  v22 = v11;
  sub_217A66ADC();
  sub_217D89CAC();

  return (*(v23 + 8))(v7, v4);
}

unint64_t sub_217CE6344()
{
  result = qword_27CBA4230;
  if (!qword_27CBA4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4230);
  }

  return result;
}

uint64_t ReferralCampaignData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CE653C(0, &qword_27CBA4238, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6344();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A66A84();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v12 = v16[1];
    v13 = v17;
    v14 = v18;
    *a2 = v16[0];
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CE653C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE6344();
    v7 = a3(a1, &type metadata for ReferralCampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CE65A4()
{
  result = qword_27CBA4240;
  if (!qword_27CBA4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4240);
  }

  return result;
}

unint64_t sub_217CE65FC()
{
  result = qword_27CBA4248;
  if (!qword_27CBA4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4248);
  }

  return result;
}

unint64_t sub_217CE66A4()
{
  result = qword_27CBA4250;
  if (!qword_27CBA4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4250);
  }

  return result;
}

unint64_t sub_217CE66FC()
{
  result = qword_27CBA4258;
  if (!qword_27CBA4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4258);
  }

  return result;
}

unint64_t sub_217CE6754()
{
  result = qword_27CBA4260;
  if (!qword_27CBA4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4260);
  }

  return result;
}

uint64_t WebAccessTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217CE680C(uint64_t a1)
{
  v2 = sub_217A690A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6848(uint64_t a1)
{
  v2 = sub_217A690A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAccessTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A68E90(0, &qword_2811BC9C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A690A8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217CE6A4C()
{
  result = qword_2811C1B30;
  if (!qword_2811C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B30);
  }

  return result;
}

unint64_t sub_217CE6AE0()
{
  result = qword_27CBA4268;
  if (!qword_27CBA4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4268);
  }

  return result;
}

uint64_t sub_217CE6B80(uint64_t a1)
{
  v2 = sub_217CE6D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6BBC(uint64_t a1)
{
  v2 = sub_217CE6D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetTypeData.encode(to:)(void *a1)
{
  sub_217CE6F94(0, &qword_2811BC780, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6D54();
  sub_217D89E7C();
  v13 = v9;
  sub_217CE6DA8();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CE6D54()
{
  result = qword_2811C69B0;
  if (!qword_2811C69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69B0);
  }

  return result;
}

unint64_t sub_217CE6DA8()
{
  result = qword_2811C7E78;
  if (!qword_2811C7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E78);
  }

  return result;
}

uint64_t WidgetTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CE6F94(0, &qword_2811BCAC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6D54();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CE6FF8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CE6F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE6D54();
    v7 = a3(a1, &type metadata for WidgetTypeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CE6FF8()
{
  result = qword_2811C7E68;
  if (!qword_2811C7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E68);
  }

  return result;
}

unint64_t sub_217CE70A8()
{
  result = qword_27CBA4270;
  if (!qword_27CBA4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4270);
  }

  return result;
}

unint64_t sub_217CE7100()
{
  result = qword_2811C69A0;
  if (!qword_2811C69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69A0);
  }

  return result;
}

unint64_t sub_217CE7158()
{
  result = qword_2811C69A8;
  if (!qword_2811C69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69A8);
  }

  return result;
}

NewsAnalytics::PaywallConfigOfferType_optional __swiftcall PaywallConfigOfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallConfigOfferType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726566664F62;
  v4 = 0x656C646E754273;
  if (v1 != 3)
  {
    v4 = 0x61746C654470;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73756C507377656ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CE72AC()
{
  result = qword_27CBA4278;
  if (!qword_27CBA4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4278);
  }

  return result;
}

uint64_t sub_217CE7300()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CE73DC()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CE74A4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CE7588(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x726566664F62;
  v7 = 0xE700000000000000;
  v8 = 0x656C646E754273;
  if (v2 != 3)
  {
    v8 = 0x61746C654470;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73756C507377656ELL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217CE76E0()
{
  result = qword_27CBA4280;
  if (!qword_27CBA4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4280);
  }

  return result;
}

void *ExternalAnalyticsEventProcessor.__allocating_init(appConfigurationManager:uploader:urlProvider:featureAvailability:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v8[19] = 0;
  v8[20] = 0;
  v8[18] = 0;
  v8[2] = a1;
  sub_217A4998C(a2, (v8 + 3));
  sub_217A4998C(a3, (v8 + 8));
  sub_217A4998C(a4, (v8 + 13));
  swift_unknownObjectRetain();
  sub_217CE7880();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void *ExternalAnalyticsEventProcessor.init(appConfigurationManager:uploader:urlProvider:featureAvailability:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[2] = a1;
  sub_217A4998C(a2, (v4 + 3));
  sub_217A4998C(a3, (v4 + 8));
  sub_217A4998C(a4, (v4 + 13));
  swift_unknownObjectRetain();
  sub_217CE7880();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

void sub_217CE7880()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedManagerForAllUsers];
  if (v2)
  {
    v3 = v2;
    sub_217A4E5C4(0, &qword_2811BCC50, 0x277D85C78);
    v4 = sub_217D8982C();
    v6[4] = sub_217CE964C;
    v6[5] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_217CE7F08;
    v6[3] = &block_descriptor_3;
    v5 = _Block_copy(v6);

    [v3 loadConfigurationsWithCompletionQueue:v4 handler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217CE79A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v5 = a2;
    v6 = sub_217D898DC();
    sub_217D897DC();
    sub_217A67100();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_217D8D8F0;
    sub_217AE030C(0, &qword_2811BC3F0);
    sub_217D89A8C();
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_217A62448();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_217D88E5C();

    v8 = *(a3 + 144);
    *(a3 + 144) = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    v10 = sub_217CE7DFC(a1);
    if (v10)
    {
      v11 = v10;
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v10 >> 62)
      {
LABEL_29:
        v13 = sub_217D89AAC();
        if (v13)
        {
LABEL_8:
          v14 = 0;
          v15 = MEMORY[0x277D84F90];
          do
          {
            v16 = v14;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x21CEAD080](v16, v11);
              }

              else
              {
                if (v16 >= *(v12 + 16))
                {
                  goto LABEL_28;
                }

                v17 = *(v11 + 8 * v16 + 32);
              }

              v18 = v17;
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

              v19 = [v17 name];
              if (v19)
              {
                break;
              }

              ++v16;
              if (v14 == v13)
              {
                goto LABEL_31;
              }
            }

            v20 = v15;
            v21 = v19;
            v22 = sub_217D8954C();
            v37 = v23;
            v38 = v22;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_217B5AD14(0, *(v20 + 2) + 1, 1, v20);
            }

            v25 = *(v20 + 2);
            v24 = *(v20 + 3);
            v26 = v20;
            if (v25 >= v24 >> 1)
            {
              v26 = sub_217B5AD14((v24 > 1), v25 + 1, 1, v20);
            }

            *(v26 + 2) = v25 + 1;
            v27 = &v26[16 * v25];
            v15 = v26;
            *(v27 + 4) = v38;
            *(v27 + 5) = v37;
          }

          while (v14 != v13);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_8;
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_31:

      sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
      v31 = sub_217D898DC();
      sub_217A67100();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_217D8D8F0;
      sub_217A55F8C();
      sub_217CE9654(&qword_2811BCD40, sub_217A55F8C);
      v33 = sub_217D894DC();
      v35 = v34;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_217A62448();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      sub_217D897FC();
      sub_217D88E5C();

      v36 = *(a3 + 144);
      *(a3 + 144) = v15;
    }
  }

  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v28 = sub_217D898DC();
  sub_217D897FC();
  v29 = MEMORY[0x277D84F90];
  sub_217D88E5C();

  v30 = *(a3 + 144);
  *(a3 + 144) = v29;
}

uint64_t sub_217CE7DFC(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_217D89A5C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_217AE02B0(i, v6);
    sub_217A4E5C4(0, &unk_2811BCC90, 0x277CD92B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_217D89A3C();
    v4 = *(v7 + 16);
    sub_217D89A6C();
    sub_217D89A7C();
    sub_217D89A4C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_217CE7F08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_217D896EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t ExternalAnalyticsEventProcessor.didStartSession(_:)()
{
  v1 = sub_217D888AC();
  v2 = *(v0 + 160);
  *(v0 + 152) = v1;
  *(v0 + 160) = v3;
}

uint64_t ExternalAnalyticsEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[16];
  v8 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v7);
  result = (*(v8 + 8))(v7, v8);
  if (result)
  {
    result = sub_217CE8D58(a1);
    if (result)
    {
      v10 = v3[20];
      if (v10)
      {
        if (v3[18])
        {
          v22 = v3[19];
          v11 = v3[2];

          v12 = [objc_msgSend(v11 appConfiguration)];
          swift_unknownObjectRelease();
          sub_217A4E5C4(0, &qword_2811BCBE0, 0x277D35478);
          v13 = sub_217D896EC();

          v21 = v13;
          if (v13 >> 62)
          {
            goto LABEL_22;
          }

          for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_217D89AAC())
          {
            v15 = 0;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x21CEAD080](v15, v21);
              }

              else
              {
                if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_21;
                }

                v16 = *(v21 + 32 + 8 * v15);
              }

              v17 = v16;
              if (__OFADD__(v15++, 1))
              {
                break;
              }

              v19 = [v16 vpnProfileNames];
              if (v19)
              {
                v20 = v19;
                sub_217D896DC();
              }

              sub_217CE846C(a1, v17, v22, v10, a2, a3);

              if (v15 == i)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            ;
          }

LABEL_17:
        }
      }
    }
  }

  return result;
}

BOOL sub_217CE83D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 40);
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 2;
    v8 = *(v3 - 1);
    v9 = *v3;
    sub_217A4EBC4();
    v6 = sub_217D8993C();
    v3 = v5;
  }

  while (v6);
  return v4 != 0;
}

uint64_t sub_217CE846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = a4;
  v64 = a2;
  v65 = a3;
  v62 = sub_217D881AC();
  v58 = *(v62 - 8);
  v56 = *(v58 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v50 - v11;
  v12 = sub_217D87BAC();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  sub_217CE93AC();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = v7[11];
  v25 = v7[12];
  __swift_project_boxed_opaque_existential_1(v7 + 8, v24);
  v26 = *(v25 + 8);
  v61 = v23;
  v66 = a1;
  v27 = a1;
  v28 = a5;
  v29 = a5;
  v30 = a6;
  v26(v27, v64, v65, v63, v29, a6, v24, v25);
  v63 = v13;
  v64 = v28;
  v32 = v57;
  v31 = v58;
  v65 = v30;
  v33 = v66;
  sub_217A61C54(v61, v21);
  if ((*(v59 + 48))(v21, 1, v60) == 1)
  {
    sub_217CE9404(v61);
    v34 = v21;
  }

  else
  {
    v36 = v59;
    v35 = v60;
    v37 = *(v59 + 32);
    v50 = v16;
    v51 = v37;
    v38 = v16;
    v37(v16, v21, v60);
    v39 = v7[7];
    v53 = v7[6];
    v54 = v39;
    v52 = __swift_project_boxed_opaque_existential_1(v7 + 3, v53);
    v40 = v62;
    (*(v31 + 16))(v32, v33, v62);
    v41 = v55;
    v42 = v38;
    v43 = v35;
    (*(v36 + 16))(v55, v42, v35);
    v44 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v45 = (v56 + *(v36 + 80) + v44) & ~*(v36 + 80);
    v46 = swift_allocObject();
    v47 = v65;
    *(v46 + 16) = v64;
    *(v46 + 24) = v47;
    (*(v31 + 32))(v46 + v44, v32, v40);
    v51(v46 + v45, v41, v43);
    v48 = v50;
    sub_217D87F4C();

    (*(v36 + 8))(v48, v43);
    v34 = v61;
  }

  return sub_217CE9404(v34);
}

void sub_217CE8918(uint64_t a1)
{
  sub_217CE9550();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277CEAD30])
  {
    (*(v4 + 8))(v7, v3);
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v9 = sub_217D898DC();
    sub_217A67100();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217D9CB60;
    sub_217D881AC();
    v11 = sub_217D8818C();
    v13 = v12;
    v14 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v15 = sub_217A62448();
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v16 = sub_217D87B5C();
    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v16;
    *(v10 + 80) = v17;
    sub_217D897FC();
    sub_217D88E5C();
  }

  else if (v8 == *MEMORY[0x277CEAD28])
  {
    (*(v4 + 96))(v7, v3);
    v18 = *v7;
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v19 = sub_217D898DC();
    sub_217D897DC();
    sub_217A67100();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_217D8EE60;
    sub_217D881AC();
    v21 = sub_217D8818C();
    v23 = v22;
    v24 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v25 = sub_217A62448();
    *(v20 + 64) = v25;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v26 = sub_217D87B5C();
    *(v20 + 96) = v24;
    *(v20 + 104) = v25;
    *(v20 + 72) = v26;
    *(v20 + 80) = v27;
    swift_getErrorValue();
    v28 = sub_217D89DBC();
    *(v20 + 136) = v24;
    *(v20 + 144) = v25;
    *(v20 + 112) = v28;
    *(v20 + 120) = v29;
    sub_217D88E5C();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t *ExternalAnalyticsEventProcessor.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[18];

  v3 = v0[20];

  return v0;
}

uint64_t ExternalAnalyticsEventProcessor.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[18];

  v3 = v0[20];

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_217CE8D14()
{
  v1 = sub_217D888AC();
  v2 = *(v0 + 160);
  *(v0 + 152) = v1;
  *(v0 + 160) = v3;
}

uint64_t sub_217CE8D58(uint64_t a1)
{
  sub_217C32810();
  v48 = v2;
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C63318();
  v52 = v5;
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CE95B8();
  v56 = v8;
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA5134();
  v59 = v11;
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EFB4();
  v61 = v14;
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v60 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_217D881AC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v45 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v49 = &v44 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v53 = &v44 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v44 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v44 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = *(v24 + 16);
  v38(&v44 - v39, a1, v23);
  if (swift_dynamicCast())
  {
    (*(v19 + 8))(v22, v18);
  }

  else
  {
    v38(v37, a1, v23);
    v40 = v60;
    v41 = v61;
    if (swift_dynamicCast())
    {
      v42 = v57;
    }

    else
    {
      v38(v34, a1, v23);
      v40 = v58;
      v41 = v59;
      if (swift_dynamicCast())
      {
        v42 = v54;
      }

      else
      {
        v38(v53, a1, v23);
        v40 = v55;
        v41 = v56;
        if (swift_dynamicCast())
        {
          v42 = v50;
        }

        else
        {
          v38(v49, a1, v23);
          v40 = v51;
          v41 = v52;
          if (swift_dynamicCast())
          {
            v42 = v46;
          }

          else
          {
            v38(v45, a1, v23);
            v40 = v47;
            v41 = v48;
            result = swift_dynamicCast();
            if (!result)
            {
              return result;
            }

            v42 = v44;
          }
        }
      }
    }

    (*(v42 + 8))(v40, v41);
  }

  return 1;
}

void sub_217CE93AC()
{
  if (!qword_2811C8CA0)
  {
    sub_217D87BAC();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8CA0);
    }
  }
}

uint64_t sub_217CE9404(uint64_t a1)
{
  sub_217CE93AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217CE9460(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_217D881AC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_217D87BAC() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_217CE8918(a1);
}

void sub_217CE9550()
{
  if (!qword_2811C8490)
  {
    sub_217A4E5C4(255, &qword_2811BCC68, 0x277CCAA40);
    v0 = sub_217D882EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8490);
    }
  }
}

void sub_217CE95B8()
{
  if (!qword_2811C88B0)
  {
    type metadata accessor for MediaEngageCompleteEvent(255);
    sub_217CE9654(qword_2811BF898, type metadata accessor for MediaEngageCompleteEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88B0);
    }
  }
}

uint64_t sub_217CE9654(unint64_t *a1, void (*a2)(uint64_t))
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

NewsAnalytics::LiveActivityUserAction_optional __swiftcall LiveActivityUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveActivityUserAction.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CE9760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x7263736275736E75;
    v4 = 0xEB00000000656269;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x7263736275736E75;
    v8 = 0xEB00000000656269;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CE9880()
{
  result = qword_27CBA4288;
  if (!qword_27CBA4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4288);
  }

  return result;
}

uint64_t sub_217CE98D4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CE9984()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CE9A20()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CE9AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x7263736275736E75;
    v4 = 0xEB00000000656269;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CE9C04()
{
  result = qword_27CBA4290;
  if (!qword_27CBA4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4290);
  }

  return result;
}

uint64_t PaidSubscribedTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217CE9CBC(uint64_t a1)
{
  v2 = sub_217A68D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE9CF8(uint64_t a1)
{
  v2 = sub_217A68D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaidSubscribedTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A68CBC(0, &qword_2811BC958, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68D38();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217CE9EFC()
{
  result = qword_2811BF228;
  if (!qword_2811BF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF228);
  }

  return result;
}

unint64_t sub_217CE9F90()
{
  result = qword_27CBA4298;
  if (!qword_27CBA4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4298);
  }

  return result;
}

uint64_t sub_217CEA0AC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA42A0);
  __swift_project_value_buffer(v0, qword_27CBA42A0);
  return sub_217D8866C();
}

uint64_t WebEmbedLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLinkTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 20);
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 20);
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 24);
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 24);
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 28);
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 28);
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 32);
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CEA7C0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t WebEmbedLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 32);
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedLinkTapEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t WebEmbedLinkTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t WebEmbedLinkTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t WebEmbedLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t WebEmbedLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 WebEmbedLinkTapEvent.Model.init(eventData:articleData:viewData:userBundleSubscriptionContextData:urlData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v27 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 48);
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = v18;
  v19 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v19;
  *(v17 + 127) = *(a2 + 127);
  v20 = *(a2 + 112);
  *(v17 + 96) = *(a2 + 96);
  *(v17 + 112) = v20;
  v21 = *(a2 + 80);
  *(v17 + 64) = *(a2 + 64);
  *(v17 + 80) = v21;
  v22 = a6 + v16[6];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  v23 = a6 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a4 + 32);
  *(v23 + 48) = *(a4 + 48);
  v25 = (a6 + v16[8]);
  result = v27;
  *v25 = v27;
  v25[1].n128_u64[0] = v13;
  v25[1].n128_u64[1] = v14;
  return result;
}

uint64_t sub_217CEAEC0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x617461446C7275;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217CEAF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CEC354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CEAF94(uint64_t a1)
{
  v2 = sub_217CEB470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEAFD0(uint64_t a1)
{
  v2 = sub_217CEB470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CEBAFC(0, &qword_27CBA42B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEB470();
  sub_217D89E7C();
  v69 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v70 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
    v12 = v3 + *(v70 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v66 = *(v12 + 80);
    v67 = v13;
    v15 = *(v12 + 96);
    *v68 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v63 = *(v12 + 32);
    v64 = v17;
    v18 = *(v12 + 48);
    v65 = *(v12 + 64);
    v19 = *(v12 + 16);
    v62[0] = *v12;
    v62[1] = v19;
    v59 = v66;
    v60 = v15;
    v61[0] = *(v12 + 112);
    v56 = v63;
    v57 = v18;
    v58 = v14;
    *&v68[15] = *(v12 + 127);
    *(v61 + 15) = *(v12 + 127);
    v54 = v62[0];
    v55 = v16;
    v53 = 1;
    sub_217AFFBC0(v62, v51);
    sub_217ACF52C();
    sub_217D89C3C();
    v51[5] = v59;
    v51[6] = v60;
    *v52 = v61[0];
    *&v52[15] = *(v61 + 15);
    v51[2] = v56;
    v51[3] = v57;
    v51[4] = v58;
    v51[0] = v54;
    v51[1] = v55;
    sub_217B009E0(v51);
    v20 = v70;
    v21 = (v3 + *(v70 + 24));
    v22 = *v21;
    v23 = v21[1];
    LOWORD(v21) = *(v21 + 8);
    v48 = v22;
    v49 = v23;
    v50 = v21;
    v47 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v24 = (v3 + *(v20 + 28));
    v25 = v24[1];
    v45[0] = *v24;
    v45[1] = v25;
    v27 = *v24;
    v26 = v24[1];
    v45[2] = v24[2];
    v46 = *(v24 + 48);
    v41 = v27;
    v42 = v26;
    v43 = v24[2];
    v44 = *(v24 + 48);
    v40 = 3;
    sub_217ACC004(v45, v38);
    sub_217A55B98();
    sub_217D89CAC();
    v38[0] = v41;
    v38[1] = v42;
    v38[2] = v43;
    v39 = v44;
    sub_217ACC69C(v38);
    v29 = (v3 + *(v20 + 32));
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v34 = *v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    v33[15] = 4;
    sub_217B6AB1C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CEB470()
{
  result = qword_27CBA42C0;
  if (!qword_27CBA42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42C0);
  }

  return result;
}

uint64_t WebEmbedLinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217CEBAFC(0, &qword_27CBA42C8, MEMORY[0x277D844C8]);
  v35 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEB470();
  v54 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v46) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v34;
  sub_217D89BCC();
  (*(v32 + 32))(v14, v17, v4);
  v45 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v34 = v11;
  v18 = &v14[*(v11 + 20)];
  v19 = *v53;
  *(v18 + 6) = v52;
  *(v18 + 7) = v19;
  *(v18 + 127) = *&v53[15];
  v20 = v49;
  *(v18 + 2) = v48;
  *(v18 + 3) = v20;
  v21 = v51;
  *(v18 + 4) = v50;
  *(v18 + 5) = v21;
  v22 = v47;
  *v18 = v46;
  *(v18 + 1) = v22;
  LOBYTE(v37) = 2;
  sub_217A5E738();
  sub_217D89B5C();
  v23 = v42;
  v24 = &v14[v34[6]];
  *v24 = v41;
  *(v24 + 8) = v23;
  v40 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v25 = &v14[v34[7]];
  v26 = v42;
  *v25 = v41;
  *(v25 + 1) = v26;
  *(v25 + 2) = v43;
  v25[48] = v44;
  v36 = 4;
  sub_217B6AAC8();
  sub_217D89BCC();
  (*(v16 + 8))(v54, v35);
  v27 = v38;
  v28 = &v14[v34[8]];
  *v28 = v37;
  *(v28 + 1) = v27;
  *(v28 + 1) = v39;
  sub_217CEBB60(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CEBBC4(v14);
}

void sub_217CEBAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEB470();
    v7 = a3(a1, &type metadata for WebEmbedLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CEBB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CEBBC4(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CEBCF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217CEBF94()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CEA7C0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CEA7C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217CEA7C0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217CEA7C0(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217CEC168()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD200);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217CEC250()
{
  result = qword_27CBA42E0;
  if (!qword_27CBA42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42E0);
  }

  return result;
}

unint64_t sub_217CEC2A8()
{
  result = qword_27CBA42E8;
  if (!qword_27CBA42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42E8);
  }

  return result;
}

unint64_t sub_217CEC300()
{
  result = qword_27CBA42F0;
  if (!qword_27CBA42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42F0);
  }

  return result;
}

uint64_t sub_217CEC354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

NewsAnalytics::EmailSignupUserActionType_optional __swiftcall EmailSignupUserActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EmailSignupUserActionType.rawValue.getter()
{
  v1 = 0x70756E676973;
  if (*v0 != 1)
  {
    v1 = 0x776F6E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CEC5C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70756E676973;
  if (v2 != 1)
  {
    v3 = 0x776F6E746F6ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x70756E676973;
  if (*a2 != 1)
  {
    v6 = 0x776F6E746F6ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CEC6C0()
{
  result = qword_27CBA42F8;
  if (!qword_27CBA42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42F8);
  }

  return result;
}

uint64_t sub_217CEC714()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CEC7B0()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CEC838()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CEC8DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x70756E676973;
  if (v2 != 1)
  {
    v4 = 0x776F6E746F6ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217CEC9F4()
{
  result = qword_2811BF288;
  if (!qword_2811BF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF288);
  }

  return result;
}

uint64_t sub_217CECB10()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4300);
  __swift_project_value_buffer(v0, qword_27CBA4300);
  return sub_217D8866C();
}

uint64_t OpenURLEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OpenURLEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 20);
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 20);
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 24);
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 24);
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 28);
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 28);
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 32);
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CED224(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t OpenURLEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 32);
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for OpenURLEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v6, v13);
}

uint64_t OpenURLEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t OpenURLEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t OpenURLEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 28));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t OpenURLEvent.Model.experimentationData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

__n128 OpenURLEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:urlData:experimentationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  v25 = *a4;
  v13 = *(a4 + 2);
  v14 = *(a4 + 3);
  v15 = sub_217D8899C();
  v23 = a5[1];
  v24 = *a5;
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for OpenURLEvent.Model(0);
  v17 = a6 + v16[5];
  *v17 = v10;
  *(v17 + 8) = v11;
  *(v17 + 16) = v12;
  v18 = a6 + v16[6];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a3 + 32);
  *(v18 + 48) = *(a3 + 48);
  v20 = a6 + v16[7];
  *v20 = v25;
  *(v20 + 16) = v13;
  *(v20 + 24) = v14;
  v21 = (a6 + v16[8]);
  result = v24;
  *v21 = v24;
  v21[1] = v23;
  return result;
}

unint64_t sub_217CED8B8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x617461446C7275;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217CED964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CEEC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CED98C(uint64_t a1)
{
  v2 = sub_217CEDE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CED9C8(uint64_t a1)
{
  v2 = sub_217CEDE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OpenURLEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CEE3A8(0, &qword_27CBA4318, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEDE30();
  sub_217D89E7C();
  LOBYTE(v42[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for OpenURLEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v45 = v14;
    v46 = v15;
    v47 = v13;
    v44 = 1;
    sub_217A5E790();

    sub_217D89C3C();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v42[2] = v16[2];
    v43 = *(v16 + 48);
    v38 = v19;
    v39 = v18;
    v40 = v16[2];
    v41 = *(v16 + 48);
    v37 = 2;
    sub_217ACC004(v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    v20 = (v3 + v12[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v31 = *v20;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v30 = 3;
    sub_217B6AB1C();

    sub_217D89CAC();

    v24 = (v3 + v12[8]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v31 = *v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v30 = 4;
    sub_217AE39D0(v31, v25);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v31, v32);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CEDE30()
{
  result = qword_27CBA4320;
  if (!qword_27CBA4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4320);
  }

  return result;
}

uint64_t OpenURLEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CEE3A8(0, &qword_27CBA4328, MEMORY[0x277D844C8]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for OpenURLEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEDE30();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  LOBYTE(v36) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v30;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v34) = 1;
  sub_217A5E738();
  sub_217D89B5C();
  v18 = v37;
  v19 = &v14[v11[5]];
  *v19 = v36;
  *(v19 + 8) = v18;
  v41 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = v31;
  v21 = &v14[v11[6]];
  v22 = v37;
  *v21 = v36;
  *(v21 + 1) = v22;
  *(v21 + 2) = v38;
  v21[48] = v39;
  v40 = 3;
  sub_217B6AAC8();
  sub_217D89BCC();
  v23 = *(&v34 + 1);
  v24 = &v14[v11[7]];
  *v24 = v34;
  *(v24 + 1) = v23;
  *(v24 + 1) = v35;
  v40 = 4;
  sub_217B36858();
  sub_217D89B5C();
  (*(v20 + 8))(v32, v33);
  v25 = &v14[v11[8]];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  sub_217CEE40C(v14, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CEE470(v14);
}

void sub_217CEE3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEDE30();
    v7 = a3(a1, &type metadata for OpenURLEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CEE40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CEE470(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CEE5A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v7, v14);
}

void sub_217CEE840()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CED224(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217CED224(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217CED224(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
        if (v3 <= 0x3F)
        {
          sub_217CED224(319, &qword_2811C8620, sub_217B36858, sub_217B368B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217CEEA14()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD200);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C2A68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217CEEAFC()
{
  result = qword_27CBA4340;
  if (!qword_27CBA4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4340);
  }

  return result;
}

unint64_t sub_217CEEB54()
{
  result = qword_27CBA4348;
  if (!qword_27CBA4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4348);
  }

  return result;
}

unint64_t sub_217CEEBAC()
{
  result = qword_27CBA4350;
  if (!qword_27CBA4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4350);
  }

  return result;
}

uint64_t sub_217CEEC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_217CEEE50()
{
  if (*v0)
  {
    result = 0x6E6F7473656C696DLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_217CEEE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F7473656C696DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CEEF6C(uint64_t a1)
{
  v2 = sub_217CEF190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEEFA8(uint64_t a1)
{
  v2 = sub_217CEF190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementData.encode(to:)(void *a1)
{
  sub_217CEF470(0, &qword_27CBA4358, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEF190();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217CEF1E4();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CEF238();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CEF190()
{
  result = qword_27CBA4360;
  if (!qword_27CBA4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4360);
  }

  return result;
}

unint64_t sub_217CEF1E4()
{
  result = qword_27CBA4368;
  if (!qword_27CBA4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4368);
  }

  return result;
}

unint64_t sub_217CEF238()
{
  result = qword_27CBA4370;
  if (!qword_27CBA4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4370);
  }

  return result;
}

uint64_t VideoAdEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CEF470(0, &qword_27CBA4378, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEF190();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217CEF4D4();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217CEF528();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CEF470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEF190();
    v7 = a3(a1, &type metadata for VideoAdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CEF4D4()
{
  result = qword_27CBA4380;
  if (!qword_27CBA4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4380);
  }

  return result;
}

unint64_t sub_217CEF528()
{
  result = qword_27CBA4388;
  if (!qword_27CBA4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4388);
  }

  return result;
}

unint64_t sub_217CEF580()
{
  result = qword_27CBA4390;
  if (!qword_27CBA4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4390);
  }

  return result;
}

unint64_t sub_217CEF5D8()
{
  result = qword_27CBA4398;
  if (!qword_27CBA4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdEngagementData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
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

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
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

_WORD *storeEnumTagSinglePayload for VideoAdEngagementData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
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
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CEF7C4()
{
  result = qword_27CBA43A0;
  if (!qword_27CBA43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43A0);
  }

  return result;
}

unint64_t sub_217CEF81C()
{
  result = qword_27CBA43A8;
  if (!qword_27CBA43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43A8);
  }

  return result;
}

unint64_t sub_217CEF874()
{
  result = qword_27CBA43B0;
  if (!qword_27CBA43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43B0);
  }

  return result;
}

uint64_t URLReferralData.referralData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t URLReferralData.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_217B1563C(v2, v3);
}

uint64_t URLReferralData.adReferralData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t URLReferralData.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v10 = v1[9];
  v11 = v2;
  v4 = v1[12];
  v12 = v1[11];
  v3 = v12;
  v13 = v4;
  v6 = v1[8];
  v9[0] = v1[7];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_217AE38AC(v9, &v8, &qword_2811C4F30);
}