unint64_t sub_217C89828(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000021;
    v7 = 0x4D656E696C66666FLL;
    if (a1 == 10)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000018;
    if (a1 == 7)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v8 = 0x446C656E6E616863;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7461446575737369;
    if (a1 != 1)
    {
      v4 = 0x74614464656D6974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217C899C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C8BB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C899EC(uint64_t a1)
{
  v2 = sub_217C8A23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C89A28(uint64_t a1)
{
  v2 = sub_217C8A23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C8AD98(0, &qword_27CBA3370, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v47 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8A23C();
  sub_217D89E7C();
  LOBYTE(v67[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v83 = type metadata accessor for IssueExposureEvent.Model(0);
    v12 = v3 + v83[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 17);
    v16 = *(v12 + 24);
    v67[0] = *v12;
    v67[1] = v13;
    LOBYTE(v67[2]) = v14;
    BYTE1(v67[2]) = v15;
    v67[3] = v16;
    v65[0] = 1;
    sub_217ACFF94();

    sub_217D89CAC();

    v17 = v83[6];
    LOBYTE(v67[0]) = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v18 = (v3 + v83[7]);
    v19 = v18[1];
    v20 = v18[2];
    v80 = *v18;
    v81 = v19;
    v82 = v20;
    v79 = 3;
    sub_217AD1A68(v80, v19, v20);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v80, v81, v82);
    v21 = (v3 + v83[8]);
    v22 = v21[4];
    v78[5] = v21[5];
    v23 = v21[5];
    v78[6] = v21[6];
    v24 = v21[6];
    v78[7] = v21[7];
    v25 = v21[7];
    v78[8] = v21[8];
    v26 = *v21;
    v78[1] = v21[1];
    v27 = v21[1];
    v78[2] = v21[2];
    v28 = v21[2];
    v78[3] = v21[3];
    v29 = v21[3];
    v78[4] = v21[4];
    v78[0] = *v21;
    v74 = v23;
    v75 = v24;
    v76 = v25;
    v77 = v21[8];
    v70 = v27;
    v71 = v28;
    v72 = v29;
    v73 = v22;
    v69 = v26;
    v68 = 4;
    sub_217AD87FC(v78, v67);
    sub_217A5D3B4();
    sub_217D89C3C();
    v66[6] = v75;
    v66[7] = v76;
    v66[8] = v77;
    v66[2] = v71;
    v66[3] = v72;
    v66[4] = v73;
    v66[5] = v74;
    v66[0] = v69;
    v66[1] = v70;
    sub_217AD96E8(v66);
    v30 = v83[9];
    memcpy(v67, (v3 + v30), 0x111uLL);
    memcpy(v65, (v3 + v30), sizeof(v65));
    v64[279] = 5;
    sub_217AD1744(v67, v64);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v64, v65, 0x111uLL);
    sub_217AD28B8(v64);
    v32 = v3 + v83[10];
    v33 = *(v32 + 8);
    v34 = *(v32 + 16);
    v35 = *(v32 + 17);
    v36 = *(v32 + 24);
    v37 = *(v32 + 32);
    *&v57 = *v32;
    *(&v57 + 1) = v33;
    LOBYTE(v58) = v34;
    BYTE1(v58) = v35;
    *(&v58 + 1) = v36;
    *&v59 = v37;
    LOBYTE(v53) = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v38 = (v3 + v83[11]);
    v39 = *v38;
    v40 = v38[1];
    LOWORD(v38) = *(v38 + 1);
    LOBYTE(v57) = v39;
    BYTE1(v57) = v40;
    WORD1(v57) = v38;
    LOBYTE(v53) = 7;
    sub_217ACFB8C();
    sub_217D89CAC();
    v41 = (v3 + v83[12]);
    v42 = v41[1];
    v62 = *v41;
    v63 = v42;
    v61 = 8;
    sub_217AD0444();

    sub_217D89C3C();

    v43 = (v3 + v83[13]);
    v44 = v43[1];
    v57 = *v43;
    v58 = v44;
    v46 = *v43;
    v45 = v43[1];
    v59 = v43[2];
    v60 = *(v43 + 48);
    v53 = v46;
    v54 = v45;
    v55 = v43[2];
    v56 = *(v43 + 48);
    v52 = 9;
    sub_217ACC004(&v57, v50);
    sub_217A55B98();
    sub_217D89CAC();
    v50[0] = v53;
    v50[1] = v54;
    v50[2] = v55;
    v51 = v56;
    sub_217ACC69C(v50);
    v49 = *(v3 + v83[14]);
    v48 = 10;
    sub_217AD7710();
    sub_217D89CAC();
    LOBYTE(v49) = *(v3 + v83[15]);
    v48 = 11;
    sub_217ACA390();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C8A23C()
{
  result = qword_2811C32C8;
  if (!qword_2811C32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32C8);
  }

  return result;
}

uint64_t IssueExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D889CC();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C8AD98(0, &qword_2811BCA28, MEMORY[0x277D844C8]);
  v62 = v10;
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - v12;
  v14 = type metadata accessor for IssueExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217C8A23C();
  v63 = v13;
  v20 = v64;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v21 = v6;
  v22 = v60;
  v55 = v14;
  v64 = v17;
  LOBYTE(v83[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v23 = v61;
  sub_217D89BCC();
  v24 = v7;
  v25 = *(v59 + 32);
  v26 = v64;
  v61 = v24;
  v25(v64, v23);
  LOBYTE(v74) = 1;
  sub_217ACFF40();
  sub_217D89BCC();
  v54[1] = 0;
  v27 = *(&v83[0] + 1);
  v28 = v83[1];
  v29 = BYTE1(v83[1]);
  v30 = *(&v83[1] + 1);
  v31 = &v26[v55[5]];
  *v31 = *&v83[0];
  *(v31 + 1) = v27;
  v31[16] = v28;
  v31[17] = v29;
  *(v31 + 3) = v30;
  LOBYTE(v83[0]) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v32 = v58;
  sub_217D89BCC();
  (*(v57 + 32))(&v26[v55[6]], v21, v32);
  LOBYTE(v74) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v33 = *&v83[1];
  v34 = &v26[v55[7]];
  *v34 = v83[0];
  *(v34 + 2) = v33;
  v73 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v35 = &v26[v55[8]];
  v36 = v81;
  *(v35 + 6) = v80;
  *(v35 + 7) = v36;
  *(v35 + 8) = v82;
  v37 = v77;
  *(v35 + 2) = v76;
  *(v35 + 3) = v37;
  v38 = v79;
  *(v35 + 4) = v78;
  *(v35 + 5) = v38;
  v39 = v75;
  *v35 = v74;
  *(v35 + 1) = v39;
  v72 = 5;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v26[v55[9]], v83, 0x111uLL);
  LOBYTE(v66) = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v40 = *(&v68 + 1);
  v41 = v69;
  v42 = BYTE1(v69);
  v43 = *(&v69 + 1);
  v44 = v70;
  v45 = &v26[v55[10]];
  *v45 = v68;
  *(v45 + 1) = v40;
  v45[16] = v41;
  v45[17] = v42;
  *(v45 + 3) = v43;
  *(v45 + 4) = v44;
  LOBYTE(v66) = 7;
  sub_217ACFB38();
  sub_217D89BCC();
  v46 = BYTE1(v68);
  v47 = WORD1(v68);
  v48 = &v26[v55[11]];
  *v48 = v68;
  v48[1] = v46;
  *(v48 + 1) = v47;
  LOBYTE(v66) = 8;
  sub_217AD03F0();
  sub_217D89B5C();
  *&v64[v55[12]] = v68;
  v67 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v49 = &v64[v55[13]];
  v50 = v69;
  *v49 = v68;
  *(v49 + 1) = v50;
  *(v49 + 2) = v70;
  v49[48] = v71;
  v65 = 10;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v64[v55[14]] = v66;
  v65 = 11;
  sub_217ACA338();
  sub_217D89BCC();
  (*(v22 + 8))(v63, v62);
  v51 = v56;
  v52 = v64;
  v64[v55[15]] = v66;
  sub_217C8ADFC(v52, v51);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return sub_217C8AE60(v52);
}

void sub_217C8AD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8A23C();
    v7 = a3(a1, &type metadata for IssueExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8ADFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C8AE60(uint64_t a1)
{
  v2 = type metadata accessor for IssueExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C8AF94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A608E0();
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v4, v28);
}

void sub_217C8B540()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C88A64(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        sub_217C88A64(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217C88A64(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217C88A64(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
            if (v5 <= 0x3F)
            {
              sub_217C88A64(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
              if (v6 <= 0x3F)
              {
                sub_217C88A64(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                if (v7 <= 0x3F)
                {
                  sub_217C88A64(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
                  if (v8 <= 0x3F)
                  {
                    sub_217C88A64(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217C88A64(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
                      if (v10 <= 0x3F)
                      {
                        sub_217C88A64(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
                        if (v11 <= 0x3F)
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

void sub_217C8B90C()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BF960);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217C8BA5C()
{
  result = qword_27CBA3378;
  if (!qword_27CBA3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3378);
  }

  return result;
}

unint64_t sub_217C8BAB4()
{
  result = qword_2811C32B8;
  if (!qword_2811C32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32B8);
  }

  return result;
}

unint64_t sub_217C8BB0C()
{
  result = qword_2811C32C0;
  if (!qword_2811C32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32C0);
  }

  return result;
}

uint64_t sub_217C8BB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t PurchaseRestoreData.purchaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurchaseRestoreData.purchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::PurchaseRestoreData __swiftcall PurchaseRestoreData.init(purchaseID:isNewsAppPurchase:)(NewsAnalytics::PurchaseRestoreData purchaseID, Swift::Bool isNewsAppPurchase)
{
  *v2 = purchaseID.purchaseID;
  *(v2 + 16) = isNewsAppPurchase;
  purchaseID.isNewsAppPurchase = isNewsAppPurchase;
  return purchaseID;
}

unint64_t sub_217C8C008()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6573616863727570;
  }

  *v0;
  return result;
}

uint64_t sub_217C8C04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD18A0 == a2)
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

uint64_t sub_217C8C138(uint64_t a1)
{
  v2 = sub_217C8C330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8C174(uint64_t a1)
{
  v2 = sub_217C8C330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseRestoreData.encode(to:)(void *a1)
{
  sub_217C8C574(0, &qword_27CBA3380, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8C330();
  sub_217D89E7C();
  v17 = 0;
  v12 = v14[1];
  sub_217D89C6C();
  if (!v12)
  {
    v16 = 1;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C8C330()
{
  result = qword_27CBA3388;
  if (!qword_27CBA3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3388);
  }

  return result;
}

uint64_t PurchaseRestoreData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8C574(0, &qword_27CBA3390, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8C330();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_217D89B9C();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8C574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8C330();
    v7 = a3(a1, &type metadata for PurchaseRestoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8C634()
{
  result = qword_27CBA3398;
  if (!qword_27CBA3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3398);
  }

  return result;
}

unint64_t sub_217C8C68C()
{
  result = qword_27CBA33A0;
  if (!qword_27CBA33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA33A0);
  }

  return result;
}

unint64_t sub_217C8C6E4()
{
  result = qword_27CBA33A8;
  if (!qword_27CBA33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA33A8);
  }

  return result;
}

uint64_t sub_217C8C800()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA33E0);
  __swift_project_value_buffer(v0, qword_27CBA33E0);
  return sub_217D8866C();
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppReviewPromptRequestEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20));
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

__n128 AppReviewPromptRequestEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_217C8CC88(uint64_t a1)
{
  v2 = sub_217C8CF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8CCC4(uint64_t a1)
{
  v2 = sub_217C8CF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C8D2F0(0, &qword_27CBA33F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8CF30();
  sub_217D89E7C();
  v28 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20));
    v13 = v12[2];
    v14 = *v12;
    v15 = *v12;
    v24 = v12[1];
    v25 = v13;
    v23 = v14;
    v26 = *(v12 + 48);
    v19 = v15;
    v20 = v24;
    v21 = v12[2];
    v22 = *(v12 + 48);
    v27 = 1;
    sub_217ACC004(&v23, v17);
    sub_217A55B98();
    sub_217D89CAC();
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_217ACC69C(v17);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C8CF30()
{
  result = qword_27CBA3400;
  if (!qword_27CBA3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3400);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_217D8899C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C8D2F0(0, &qword_27CBA3408, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8CF30();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v31;
  v20 = v29;
  sub_217D89BCC();
  (*(v18 + 32))(v17, v6, v19);
  v36 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v11, v20);
  v21 = v27;
  v22 = v17 + *(v26 + 20);
  v23 = v33;
  *v22 = v32;
  *(v22 + 16) = v23;
  *(v22 + 32) = v34;
  *(v22 + 48) = v35;
  sub_217C8D354(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C8D3B8(v17);
}

void sub_217C8D2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8CF30();
    v7 = a3(a1, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8D354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C8D3B8(uint64_t a1)
{
  v2 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C8D550()
{
  result = qword_27CBA3430;
  if (!qword_27CBA3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3430);
  }

  return result;
}

unint64_t sub_217C8D5A8()
{
  result = qword_27CBA3438;
  if (!qword_27CBA3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3438);
  }

  return result;
}

unint64_t sub_217C8D600()
{
  result = qword_27CBA3440;
  if (!qword_27CBA3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3440);
  }

  return result;
}

uint64_t sub_217C8D6E8(uint64_t a1)
{
  v2 = sub_217C8D8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8D724(uint64_t a1)
{
  v2 = sub_217C8D8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementPlacementOriginationData.encode(to:)(void *a1)
{
  sub_217C8DAFC(0, &qword_2811BC538, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8D8BC();
  sub_217D89E7C();
  v13 = v9;
  sub_217C8D910();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C8D8BC()
{
  result = qword_2811BDCC8;
  if (!qword_2811BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCC8);
  }

  return result;
}

unint64_t sub_217C8D910()
{
  result = qword_2811BDCA0;
  if (!qword_2811BDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCA0);
  }

  return result;
}

uint64_t EngagementPlacementOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C8DAFC(0, &qword_27CBA3448, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8D8BC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C8DB60();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8D8BC();
    v7 = a3(a1, &type metadata for EngagementPlacementOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8DB60()
{
  result = qword_27CBA3450;
  if (!qword_27CBA3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3450);
  }

  return result;
}

unint64_t sub_217C8DC10()
{
  result = qword_27CBA3458;
  if (!qword_27CBA3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3458);
  }

  return result;
}

unint64_t sub_217C8DC68()
{
  result = qword_2811BDCB8;
  if (!qword_2811BDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCB8);
  }

  return result;
}

unint64_t sub_217C8DCC0()
{
  result = qword_2811BDCC0;
  if (!qword_2811BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCC0);
  }

  return result;
}

uint64_t ConcernData.subconcernContentType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ConcernData.subconcernContentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_217C8DDEC()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_217C8DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DD1970 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD1990 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217C8DF0C(uint64_t a1)
{
  v2 = sub_217C8E114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8DF48(uint64_t a1)
{
  v2 = sub_217C8E114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConcernData.encode(to:)(void *a1)
{
  sub_217C8E3A4(0, &qword_27CBA3460, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8E114();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217C8E168();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C8E114()
{
  result = qword_27CBA3468;
  if (!qword_27CBA3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3468);
  }

  return result;
}

unint64_t sub_217C8E168()
{
  result = qword_27CBA3470;
  if (!qword_27CBA3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3470);
  }

  return result;
}

uint64_t ConcernData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8E3A4(0, &qword_27CBA3478, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8E114();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_217C8E408();
  sub_217D89BCC();
  v12 = v20;
  v18 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8E3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8E114();
    v7 = a3(a1, &type metadata for ConcernData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8E408()
{
  result = qword_27CBA3480;
  if (!qword_27CBA3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3480);
  }

  return result;
}

unint64_t sub_217C8E4B8()
{
  result = qword_27CBA3488;
  if (!qword_27CBA3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3488);
  }

  return result;
}

unint64_t sub_217C8E510()
{
  result = qword_27CBA3490;
  if (!qword_27CBA3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3490);
  }

  return result;
}

unint64_t sub_217C8E568()
{
  result = qword_27CBA3498;
  if (!qword_27CBA3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3498);
  }

  return result;
}

uint64_t NotificationSettingsData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::NotificationSettingsData __swiftcall NotificationSettingsData.init(tagIDs:isNewIssueNotificationEnabled:isMarketingNotificationEnabled:isDailyBriefingNotificationEnabled:isEmailNewsletterSwitchEnabled:isIssuesNewsletterOptinEnabled:isDigestModeEnabled:isPuzzlesNotificationEnabled:isSmartNotificationsEnabled:)(Swift::OpaquePointer tagIDs, Swift::Bool isNewIssueNotificationEnabled, Swift::Bool isMarketingNotificationEnabled, Swift::Bool isDailyBriefingNotificationEnabled, Swift::Bool isEmailNewsletterSwitchEnabled, Swift::Bool isIssuesNewsletterOptinEnabled, Swift::Bool_optional isDigestModeEnabled, Swift::Bool_optional isPuzzlesNotificationEnabled, Swift::Bool isSmartNotificationsEnabled)
{
  *v9 = tagIDs;
  *(v9 + 8) = isNewIssueNotificationEnabled;
  *(v9 + 9) = isMarketingNotificationEnabled;
  *(v9 + 10) = isDailyBriefingNotificationEnabled;
  *(v9 + 11) = isEmailNewsletterSwitchEnabled;
  *(v9 + 12) = isIssuesNewsletterOptinEnabled;
  *(v9 + 13) = isDigestModeEnabled;
  *(v9 + 14) = isPuzzlesNotificationEnabled;
  *(v9 + 15) = isSmartNotificationsEnabled;
  result.tagIDs = tagIDs;
  result.isNewIssueNotificationEnabled = isNewIssueNotificationEnabled;
  return result;
}

uint64_t sub_217C8E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C8ECD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C8E7EC(uint64_t a1)
{
  v2 = sub_217A55ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8E828(uint64_t a1)
{
  v2 = sub_217A55ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSettingsData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A548F0(0, &qword_2811BC978, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A55ACC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217A55F8C();
  LOBYTE(v29) = 0;
  sub_217A55FDC(&qword_2811BCD38);
  sub_217D89BCC();
  v12 = v30;
  LOBYTE(v30) = 1;
  v13 = sub_217D89B9C();
  LOBYTE(v30) = 2;
  v39 = sub_217D89B9C();
  LOBYTE(v30) = 3;
  v28 = sub_217D89B9C();
  LOBYTE(v30) = 4;
  v27 = sub_217D89B9C();
  LOBYTE(v30) = 5;
  v26 = sub_217D89B9C();
  LOBYTE(v30) = 6;
  v25 = sub_217D89B3C();
  LOBYTE(v30) = 7;
  v24 = sub_217D89B3C();
  v40 = 8;
  v14 = sub_217D89B9C();
  v39 &= 1u;
  HIDWORD(v22) = v28 & 1;
  v23 = v13 & 1;
  v15 = v27 & 1;
  v28 = v27 & 1;
  LOBYTE(v26) = v26 & 1;
  v26 = v26;
  (*(v7 + 8))(v10, v6);
  v27 = v14 & 1;
  *&v29 = v12;
  v16 = BYTE4(v22);
  v17 = v23;
  BYTE8(v29) = v23;
  BYTE9(v29) = v39;
  BYTE10(v29) = BYTE4(v22);
  BYTE11(v29) = v15;
  v19 = v25;
  v18 = v26;
  BYTE12(v29) = v26;
  BYTE13(v29) = v25;
  v20 = v24;
  BYTE14(v29) = v24;
  HIBYTE(v29) = v27;
  *a2 = v29;
  sub_217A55A60(&v29, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = v12;
  v31 = v17;
  v32 = v39;
  v33 = v16;
  v34 = v28;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v27;
  return sub_217B9F32C(&v30);
}

unint64_t sub_217C8EC84()
{
  result = qword_27CBA34A0;
  if (!qword_27CBA34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34A0);
  }

  return result;
}

uint64_t sub_217C8ECD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734449676174 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD19B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD19D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DD19F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1A20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1A40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1A60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD1A80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD1AA0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t SearchData.searchString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchData.searchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchData.filteredTagIds.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_217C8F0E0()
{
  v1 = 0x74616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x64657265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453686372616573;
  }
}

uint64_t sub_217C8F158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C8F968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C8F180(uint64_t a1)
{
  v2 = sub_217C8F410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8F1BC(uint64_t a1)
{
  v2 = sub_217C8F410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  sub_217C8F750(0, &qword_27CBA34A8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v19 = *(v1 + 16);
  v18[0] = v1[3];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_217C8F410();
  sub_217D89E7C();
  v23 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v16 = v18[0];
    v22 = v19;
    v21 = 1;
    sub_217C8F464();
    sub_217D89CAC();
    v18[1] = v16;
    v20 = 2;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_217C8F410()
{
  result = qword_27CBA34B0;
  if (!qword_27CBA34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34B0);
  }

  return result;
}

unint64_t sub_217C8F464()
{
  result = qword_27CBA34B8;
  if (!qword_27CBA34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34B8);
  }

  return result;
}

uint64_t SearchData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8F750(0, &qword_27CBA34C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8F410();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  sub_217C8F7B4();
  sub_217D89BCC();
  v19 = v22;
  sub_217A55F8C();
  v20 = 2;
  sub_217A55FDC(&qword_2811BCD38);
  sub_217D89B5C();
  (*(v7 + 8))(v10, v6);
  v17 = v18[1];
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8F750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8F410();
    v7 = a3(a1, &type metadata for SearchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8F7B4()
{
  result = qword_27CBA34C8;
  if (!qword_27CBA34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34C8);
  }

  return result;
}

unint64_t sub_217C8F864()
{
  result = qword_27CBA34D0;
  if (!qword_27CBA34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34D0);
  }

  return result;
}

unint64_t sub_217C8F8BC()
{
  result = qword_27CBA34D8;
  if (!qword_27CBA34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34D8);
  }

  return result;
}

unint64_t sub_217C8F914()
{
  result = qword_27CBA34E0;
  if (!qword_27CBA34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34E0);
  }

  return result;
}

uint64_t sub_217C8F968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEB000000006E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657265746C6966 && a2 == 0xEE00736449676154)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t TagData.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TagData.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C8FB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449676174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C8FBC0(uint64_t a1)
{
  v2 = sub_217C8FD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8FBFC(uint64_t a1)
{
  v2 = sub_217C8FD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagData.encode(to:)(void *a1)
{
  sub_217C8FF5C(0, &qword_2811BC510, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C8FD84()
{
  result = qword_2811BD388;
  if (!qword_2811BD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD388);
  }

  return result;
}

uint64_t TagData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C8FF5C(0, &qword_2811BC900, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8FF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8FD84();
    v7 = a3(a1, &type metadata for TagData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8FFE0(void *a1)
{
  sub_217C8FF5C(0, &qword_2811BC510, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C90150()
{
  result = qword_27CBA34E8;
  if (!qword_27CBA34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34E8);
  }

  return result;
}

unint64_t sub_217C901A8()
{
  result = qword_2811BD378;
  if (!qword_2811BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD378);
  }

  return result;
}

unint64_t sub_217C90200()
{
  result = qword_2811BD380;
  if (!qword_2811BD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD380);
  }

  return result;
}

uint64_t sub_217C902B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DD1AC0 == a2)
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

uint64_t sub_217C90344(uint64_t a1)
{
  v2 = sub_217C90504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C90380(uint64_t a1)
{
  v2 = sub_217C90504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppStateRestoreData.encode(to:)(void *a1)
{
  sub_217C906DC(0, &qword_2811BC698, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C90504()
{
  result = qword_2811C2C58[0];
  if (!qword_2811C2C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2C58);
  }

  return result;
}

uint64_t AppStateRestoreData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C906DC(0, &qword_2811BCA08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B9C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C906DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C90504();
    v7 = a3(a1, &type metadata for AppStateRestoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C90760(void *a1)
{
  sub_217C906DC(0, &qword_2811BC698, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C908CC()
{
  result = qword_27CBA34F0;
  if (!qword_27CBA34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34F0);
  }

  return result;
}

unint64_t sub_217C90924()
{
  result = qword_2811C2C48;
  if (!qword_2811C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C48);
  }

  return result;
}

unint64_t sub_217C9097C()
{
  result = qword_2811C2C50;
  if (!qword_2811C2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C50);
  }

  return result;
}

uint64_t AutoSubscribedTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217C90A34(uint64_t a1)
{
  v2 = sub_217A689C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C90A70(uint64_t a1)
{
  v2 = sub_217A689C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSubscribedTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A6894C(0, &qword_2811BC968, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A689C8();
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

unint64_t sub_217C90C74()
{
  result = qword_2811BF2C0;
  if (!qword_2811BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2C0);
  }

  return result;
}

unint64_t sub_217C90D08()
{
  result = qword_27CBA34F8;
  if (!qword_27CBA34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34F8);
  }

  return result;
}

uint64_t sub_217C90D5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *&a2[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a4;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = a5;
  *(v12 + 56) = a3;

  v13 = v9;
  v14 = a2;
  sub_217D8833C();
}

uint64_t sub_217C90E5C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t, uint64_t), int a4, char *a5, int a6, uint64_t a7)
{
  v103 = a7;
  LODWORD(v101) = a6;
  v98 = a5;
  v97 = a4;
  v100 = a3;
  v107 = a2;
  v108 = a1;
  sub_217AE03C8();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x277D83D88];
  sub_217C91C04(0, &qword_2811C8C68, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = &v87[-v13];
  v92 = sub_217D87D4C();
  v91 = *(v92 - 8);
  v14 = *(v91 + 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_217D87D6C();
  v94 = *(v95 - 8);
  v16 = *(v94 + 64);
  v17 = MEMORY[0x28223BE20](v95);
  v93 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v87[-v19];
  sub_217C91C04(0, &unk_2811C8C70, MEMORY[0x277CC9640], v10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v87[-v23];
  v25 = sub_217D87C9C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v87[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_217D87D9C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v87[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = type metadata accessor for SessionData();
  v35 = *(*(v102 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v102);
  v99 = &v87[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v39 = &v87[-v38];
  sub_217D87D8C();
  sub_217D87C8C();
  v40 = sub_217D87D7C();
  (*(v26 + 8))(v29, v25);
  result = (*(v31 + 8))(v34, v30);
  if (v40 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v40 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v89 = v40;
  sub_217D87D2C();
  v42 = v90;
  sub_217D87D5C();
  v43 = *(v94 + 8);
  v44 = v95;
  v43(v20, v95);
  sub_217D87D3C();
  (*(v91 + 1))(v42, v92);
  v45 = sub_217D87CEC();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v24, 1, v45) == 1)
  {
    sub_217C91B44(v24, &unk_2811C8C70, MEMORY[0x277CC9640]);
    v94 = 0;
    v92 = 0;
  }

  else
  {
    v94 = sub_217D87CDC();
    v92 = v47;
    (*(v46 + 8))(v24, v45);
  }

  v48 = v93;
  sub_217D87D2C();
  v49 = v96;
  sub_217D87D1C();
  v43(v48, v44);
  v50 = sub_217D87D0C();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_217C91B44(v49, &qword_2811C8C68, MEMORY[0x277CC9698]);
    v95 = 0;
    v93 = 0;
  }

  else
  {
    v95 = sub_217D87CDC();
    v93 = v52;
    (*(v51 + 8))(v49, v50);
  }

  v53 = [objc_opt_self() sharedAccount];
  v54 = [v53 isUserSignedInToiCloud];

  if (v54)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

  LODWORD(v96) = v55;
  v56 = *(v107 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  v57 = v107;
  v58 = [v56 appConfigurationManager];
  swift_getObjectType();
  v91 = FCNewsAppConfigurationManager.treatmentIDs.getter();
  swift_unknownObjectRelease();
  v59 = [v56 appConfigurationManager];
  swift_getObjectType();
  v90 = FCNewsAppConfigurationManager.segmentSetIDs.getter();
  swift_unknownObjectRelease();
  v88 = NFStoreDemoMode();
  v60 = (v97 - 3) < 2;
  LOBYTE(v56) = sub_217D8853C();
  v61 = [v98 authorizationStatus] == 2;
  v62 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  v63 = [v62 personalizedAds];

  v64 = (v57 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider);
  v66 = *(v57 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider + 24);
  v65 = *(v57 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider + 32);
  __swift_project_boxed_opaque_existential_1(v64, v66);
  (*(v65 + 8))(v110, v66, v65);
  LOBYTE(v65) = v110[0];
  v67 = v102;
  v68 = *(v102 + 64);
  LOBYTE(v109[0]) = 2;
  sub_217D886EC();
  v69 = *(v67 + 72);
  v39[v69] = 3;
  *v39 = v89;
  v70 = v92;
  *(v39 + 1) = v94;
  *(v39 + 2) = v70;
  v71 = v93;
  *(v39 + 3) = v95;
  *(v39 + 4) = v71;
  v39[40] = v96;
  strcpy(v39 + 48, "com.apple.news");
  v39[63] = -18;
  v72 = v90;
  *(v39 + 8) = v91;
  *(v39 + 9) = v72;
  *(v39 + 10) = v100;
  v39[88] = v88;
  v39[89] = v60;
  v39[90] = v56 & 1;
  v39[91] = v61;
  sub_217C91BB4();
  v74 = v73;
  v75 = *(*(v73 - 8) + 8);

  v75(&v39[v68], v74);
  LOBYTE(v109[0]) = v63;
  sub_217D886EC();
  v39[*(v67 + 68)] = v101 & 1;
  v39[v69] = v65;
  sub_217A4C040(v107 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v110);
  v76 = v111;
  if (v111)
  {
    v77 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v109[3] = v67;
    v109[4] = sub_217C91AEC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
    sub_217AE04C0(v39, boxed_opaque_existential_1);
    (*(v77 + 8))(v109, v76, v77);
    __swift_destroy_boxed_opaque_existential_1(v109);
    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    sub_217C91B44(v110, &qword_2811BD5A0, sub_217A4E60C);
  }

  sub_217C91C04(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v107 = v79;
  v80 = sub_217D882DC();
  v81 = *(v80 - 8);
  v102 = *(v81 + 72);
  v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v83 = swift_allocObject();
  v101 = xmmword_217D8D8F0;
  *(v83 + 16) = xmmword_217D8D8F0;
  v84 = *MEMORY[0x277CEAD10];
  v100 = *(v81 + 104);
  v100(v83 + v82, v84, v80);
  v98 = "v16@?0@NSArray8";
  sub_217C91AEC();
  sub_217D8890C();

  sub_217AE04C0(v39, v99);
  v85 = v104;
  sub_217D880EC();
  v86 = swift_allocObject();
  *(v86 + 16) = v101;
  v100(v86 + v82, v84, v80);
  sub_217D8854C();

  (*(v105 + 8))(v85, v106);
  return sub_217AE0524(v39);
}

unint64_t sub_217C91AEC()
{
  result = qword_2811C7C60;
  if (!qword_2811C7C60)
  {
    type metadata accessor for SessionData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C60);
  }

  return result;
}

uint64_t sub_217C91B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217C91C04(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_217C91BB4()
{
  if (!qword_2811C8438)
  {
    v0 = sub_217D8872C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8438);
    }
  }
}

void sub_217C91C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217C91D34(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  sub_217D883AC();
  *(swift_allocObject() + 16) = a1;
  v4 = a1;
  sub_217D888EC();

  sub_217A4C040(&v1[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator], v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v10[1];
  *(v5 + 32) = v10[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v11;
  v7 = v4;
  v8 = v1;
  sub_217D8833C();
}

void sub_217C91E80(char *a1, uint64_t a2, void *a3)
{
  v4 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager;
  v5 = *&a1[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  v6 = a3;
  v7 = a1;
  sub_217D883AC();
  *(swift_allocObject() + 16) = v6;
  v8 = v6;
  sub_217D888EC();

  v9 = *&a1[v4];
  sub_217A4C040(&v7[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator], v14);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = v14[1];
  *(v10 + 32) = v14[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v15;
  v12 = v8;
  v13 = v7;
  sub_217D8833C();
}

uint64_t sub_217C92098()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3590);
  __swift_project_value_buffer(v0, qword_27CBA3590);
  return sub_217D8866C();
}

uint64_t IssueShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 20);
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 20);
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 24);
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 24);
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 28);
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 28);
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 32);
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 32);
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 36);
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 36);
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 40);
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 40);
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 44);
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 44);
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 48);
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 48);
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 52);
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 52);
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 56);
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C931CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t IssueShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 56);
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueShareEvent(0);
  v5 = v4[5];
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v8, v25);
}

uint64_t IssueShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueShareEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t IssueShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 28));
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

uint64_t IssueShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueShareEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueShareEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t IssueShareEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t IssueShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 52);
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

uint64_t IssueShareEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 56);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_217AE39D0(v4, v5);
}

__n128 IssueShareEvent.Model.init(eventData:actionData:feedData:groupData:userChannelContextData:shareContextData:issueData:issueViewData:userBundleSubscriptionContextData:channelData:adData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v15 = *a2;
  v37 = *a3;
  v16 = *(a3 + 2);
  v17 = *a5;
  v18 = a5[1];
  v19 = *(a5 + 1);
  v38 = a6[1];
  v39 = *a6;
  v43 = a7[1];
  v44 = *a7;
  v41 = *(a7 + 17);
  v42 = *(a7 + 16);
  v40 = a7[3];
  v45 = a8[1];
  v46 = *a8;
  v53 = a11[1];
  v54 = *a11;
  v51 = *(a11 + 17);
  v52 = *(a11 + 16);
  v49 = a11[4];
  v50 = a11[3];
  v55 = *(a12 + 32);
  v20 = sub_217D8899C();
  v47 = *(a12 + 16);
  v48 = *a12;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for IssueShareEvent.Model(0);
  *(a9 + v21[5]) = v15;
  v22 = a9 + v21[6];
  *v22 = v37;
  *(v22 + 16) = v16;
  v23 = (a9 + v21[7]);
  v24 = a4[3];
  v23[2] = a4[2];
  v23[3] = v24;
  v25 = a4[1];
  *v23 = *a4;
  v23[1] = v25;
  v26 = a4[8];
  v23[7] = a4[7];
  v23[8] = v26;
  v27 = a4[6];
  v23[5] = a4[5];
  v23[6] = v27;
  v23[4] = a4[4];
  v28 = a9 + v21[8];
  *v28 = v17;
  *(v28 + 1) = v18;
  *(v28 + 2) = v19;
  v29 = (a9 + v21[9]);
  *v29 = v39;
  v29[1] = v38;
  v30 = a9 + v21[10];
  *v30 = v44;
  *(v30 + 8) = v43;
  *(v30 + 16) = v42;
  *(v30 + 17) = v41;
  *(v30 + 24) = v40;
  v31 = (a9 + v21[11]);
  *v31 = v46;
  v31[1] = v45;
  v32 = a9 + v21[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  *(v32 + 48) = *(a10 + 48);
  v34 = a9 + v21[13];
  *v34 = v54;
  *(v34 + 8) = v53;
  *(v34 + 16) = v52;
  *(v34 + 17) = v51;
  *(v34 + 24) = v50;
  *(v34 + 32) = v49;
  v35 = a9 + v21[14];
  result = v48;
  *v35 = v48;
  *(v35 + 16) = v47;
  *(v35 + 32) = v55;
  return result;
}

unint64_t sub_217C93E58(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6174614464656566;
    v8 = 0x74614470756F7267;
    if (a1 != 3)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x61446E6F69746361;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000021;
    v2 = 0x446C656E6E616863;
    if (a1 != 9)
    {
      v2 = 0x617461446461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x7461446575737369;
    if (a1 != 6)
    {
      v4 = 0x6569566575737369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217C93FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C95EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C94008(uint64_t a1)
{
  v2 = sub_217C94764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C94044(uint64_t a1)
{
  v2 = sub_217C94764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C95124(0, &qword_27CBA35A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v54 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C94764();
  sub_217D89E7C();
  LOBYTE(v85) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IssueShareEvent.Model(0);
    LOBYTE(v85) = *(v3 + v12[5]);
    LOBYTE(v76) = 1;
    sub_217AED190();
    sub_217D89CAC();
    v13 = (v3 + v12[6]);
    v14 = v13[1];
    v15 = v13[2];
    v95 = *v13;
    v96 = v14;
    v97 = v15;
    v94 = 2;
    sub_217AD1A68(v95, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v95, v96, v97);
    v16 = (v3 + v12[7]);
    v17 = v16[6];
    v18 = v16[4];
    v90 = v16[5];
    v91 = v17;
    v19 = v16[6];
    v20 = v16[8];
    v92 = v16[7];
    v93 = v20;
    v21 = v16[2];
    v22 = *v16;
    v86 = v16[1];
    v87 = v21;
    v23 = v16[2];
    v24 = v16[4];
    v88 = v16[3];
    v89 = v24;
    v25 = *v16;
    v82 = v19;
    v83 = v92;
    v84 = v16[8];
    v85 = v25;
    v78 = v23;
    v79 = v88;
    v80 = v18;
    v81 = v90;
    v76 = v22;
    v77 = v86;
    v75 = 3;
    sub_217AD87FC(&v85, v74);
    sub_217A5D3B4();
    sub_217D89C3C();
    v74[6] = v82;
    v74[7] = v83;
    v74[8] = v84;
    v74[2] = v78;
    v74[3] = v79;
    v74[4] = v80;
    v74[5] = v81;
    v74[0] = v76;
    v74[1] = v77;
    sub_217AD96E8(v74);
    v26 = (v3 + v12[8]);
    v27 = *v26;
    v28 = v26[1];
    LOWORD(v26) = *(v26 + 1);
    LOBYTE(v67) = v27;
    BYTE1(v67) = v28;
    WORD1(v67) = v26;
    LOBYTE(v63) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v29 = (v3 + v12[9]);
    v30 = v29[1];
    *&v67 = *v29;
    *(&v67 + 1) = v30;
    LOBYTE(v63) = 5;
    sub_217AF2CAC();

    sub_217D89CAC();

    v31 = (v3 + v12[10]);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v31 + 16);
    v35 = *(v31 + 17);
    v98 = v31[3];
    *&v67 = v32;
    *(&v67 + 1) = v33;
    LOBYTE(v68) = v34;
    BYTE1(v68) = v35;
    *(&v68 + 1) = v98;
    LOBYTE(v63) = 6;
    sub_217ACFF94();

    sub_217D89CAC();

    v36 = (v3 + v12[11]);
    v37 = v36[1];
    v72 = *v36;
    v73 = v37;
    v71 = 7;
    sub_217AD01EC();

    sub_217D89C3C();

    v38 = (v3 + v12[12]);
    v39 = v38[1];
    v67 = *v38;
    v68 = v39;
    v41 = *v38;
    v40 = v38[1];
    v69 = v38[2];
    v70 = *(v38 + 48);
    v63 = v41;
    v64 = v40;
    v65 = v38[2];
    v66 = *(v38 + 48);
    v62 = 8;
    sub_217ACC004(&v67, v60);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v61 = v66;
    sub_217ACC69C(v60);
    v43 = v3 + v12[13];
    v44 = *(v43 + 8);
    v45 = *(v43 + 16);
    v46 = *(v43 + 17);
    v47 = *(v43 + 24);
    v48 = *(v43 + 32);
    v55 = *v43;
    v56 = v44;
    LOBYTE(v57) = v45;
    BYTE1(v57) = v46;
    v58 = v47;
    v59 = v48;
    HIBYTE(v54) = 9;
    sub_217AD084C();

    sub_217D89CAC();

    v49 = v3 + v12[14];
    v50 = *(v49 + 8);
    v51 = *(v49 + 16);
    v52 = *(v49 + 24);
    v53 = *(v49 + 32);
    v55 = *v49;
    v56 = v50;
    v57 = v51;
    v58 = v52;
    LOBYTE(v59) = v53;
    HIBYTE(v54) = 10;
    sub_217AE39D0(v55, v50);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v55, v56);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C94764()
{
  result = qword_27CBA35B0;
  if (!qword_27CBA35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35B0);
  }

  return result;
}

uint64_t IssueShareEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_217D8899C();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C95124(0, &qword_27CBA35B8, MEMORY[0x277D844C8]);
  v59 = v6;
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for IssueShareEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C94764();
  v60 = v9;
  v15 = v80;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v57;
  v53 = v10;
  v54 = a1;
  v80 = v13;
  LOBYTE(v71) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v58;
  sub_217D89BCC();
  v18 = v80;
  (*(v56 + 32))(v80, v17, v3);
  LOBYTE(v66) = 1;
  sub_217AED13C();
  sub_217D89BCC();
  v52 = v3;
  v19 = v53;
  v18[v53[5]] = v71;
  LOBYTE(v66) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v20 = v72;
  v21 = &v18[v19[6]];
  *v21 = v71;
  *(v21 + 2) = v20;
  v70 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v22 = &v18[v19[7]];
  v23 = v76;
  v24 = v78;
  v25 = v79;
  *(v22 + 6) = v77;
  *(v22 + 7) = v24;
  *(v22 + 8) = v25;
  v26 = v72;
  v27 = v74;
  v28 = v75;
  *(v22 + 2) = v73;
  *(v22 + 3) = v27;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  *v22 = v71;
  *(v22 + 1) = v26;
  LOBYTE(v62) = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v29 = BYTE1(v66);
  v30 = WORD1(v66);
  v31 = &v18[v19[8]];
  *v31 = v66;
  v31[1] = v29;
  *(v31 + 1) = v30;
  LOBYTE(v62) = 5;
  sub_217AF2C58();
  sub_217D89BCC();
  v32 = *(&v66 + 1);
  v33 = &v18[v19[9]];
  *v33 = v66;
  *(v33 + 1) = v32;
  LOBYTE(v62) = 6;
  sub_217ACFF40();
  sub_217D89BCC();
  v34 = *(&v66 + 1);
  v35 = v67;
  v36 = BYTE1(v67);
  v37 = *(&v67 + 1);
  v38 = &v18[v19[10]];
  *v38 = v66;
  *(v38 + 1) = v34;
  v38[16] = v35;
  v38[17] = v36;
  *(v38 + 3) = v37;
  LOBYTE(v62) = 7;
  sub_217AD0198();
  sub_217D89B5C();
  *&v18[v19[11]] = v66;
  v65 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v80[v53[12]];
  v40 = v67;
  *v39 = v66;
  *(v39 + 1) = v40;
  *(v39 + 2) = v68;
  v39[48] = v69;
  v61 = 9;
  sub_217AD07F8();
  sub_217D89BCC();
  v41 = *(&v62 + 1);
  v42 = v63;
  v43 = BYTE1(v63);
  v44 = *(&v63 + 1);
  v45 = v64;
  v46 = &v80[v53[13]];
  *v46 = v62;
  *(v46 + 1) = v41;
  v46[16] = v42;
  v46[17] = v43;
  *(v46 + 3) = v44;
  *(v46 + 4) = v45;
  v61 = 10;
  sub_217AF343C();
  sub_217D89B5C();
  (*(v16 + 8))(v60, v59);
  v47 = v64;
  v48 = v80;
  v49 = &v80[v53[14]];
  v50 = v63;
  *v49 = v62;
  *(v49 + 1) = v50;
  v49[32] = v47;
  sub_217C95188(v48, v55);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_217C951EC(v48);
}

void sub_217C95124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C94764();
    v7 = a3(a1, &type metadata for IssueShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C95188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C951EC(uint64_t a1)
{
  v2 = type metadata accessor for IssueShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C95320@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v9, v26);
}

void sub_217C9588C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C931CC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
    if (v1 <= 0x3F)
    {
      sub_217C931CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217C931CC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217C931CC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
          if (v4 <= 0x3F)
          {
            sub_217C931CC(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
            if (v5 <= 0x3F)
            {
              sub_217C931CC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
              if (v6 <= 0x3F)
              {
                sub_217C931CC(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                if (v7 <= 0x3F)
                {
                  sub_217C931CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217C931CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                    if (v9 <= 0x3F)
                    {
                      sub_217C931CC(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
                      if (v10 <= 0x3F)
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

void sub_217C95C40()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C71A8);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD3F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217C95D9C()
{
  result = qword_27CBA35C0;
  if (!qword_27CBA35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35C0);
  }

  return result;
}

unint64_t sub_217C95DF4()
{
  result = qword_27CBA35C8;
  if (!qword_27CBA35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35C8);
  }

  return result;
}

unint64_t sub_217C95E4C()
{
  result = qword_27CBA35D0;
  if (!qword_27CBA35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35D0);
  }

  return result;
}

uint64_t sub_217C95EA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t ReferralGroupData.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_217AF7618(v15, &v14);
}

__n128 ReferralGroupData.groupData.setter(uint64_t a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v11[8] = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_217C96344(v11);
  v7 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v7;
  v1[8] = *(a1 + 128);
  v8 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v8;
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 ReferralGroupData.init(groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_217C963DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C9646C(uint64_t a1)
{
  v2 = sub_217C966CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C964A8(uint64_t a1)
{
  v2 = sub_217C966CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralGroupData.encode(to:)(void *a1)
{
  sub_217C968DC(0, &qword_27CBA35D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = v1[7];
  v31 = v1[6];
  v32 = v9;
  v33 = v1[8];
  v10 = v1[3];
  v27 = v1[2];
  v28 = v10;
  v11 = v1[5];
  v29 = v1[4];
  v30 = v11;
  v12 = v1[1];
  v25 = *v1;
  v26 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF7618(&v25, &v16);
  sub_217C966CC();
  sub_217D89E7C();
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v16 = v25;
  v17 = v26;
  sub_217A5D3B4();
  sub_217D89CAC();
  v15[6] = v22;
  v15[7] = v23;
  v15[8] = v24;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[5] = v21;
  v15[0] = v16;
  v15[1] = v17;
  sub_217AF8104(v15);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C966CC()
{
  result = qword_27CBA35E0;
  if (!qword_27CBA35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35E0);
  }

  return result;
}

uint64_t ReferralGroupData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C968DC(0, &qword_27CBA35E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C966CC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5D308();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v12 = v17[7];
    a2[6] = v17[6];
    a2[7] = v12;
    a2[8] = v17[8];
    v13 = v17[3];
    a2[2] = v17[2];
    a2[3] = v13;
    v14 = v17[5];
    a2[4] = v17[4];
    a2[5] = v14;
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C968DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C966CC();
    v7 = a3(a1, &type metadata for ReferralGroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_217C9699C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

unint64_t sub_217C969F8()
{
  result = qword_27CBA35F0;
  if (!qword_27CBA35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35F0);
  }

  return result;
}

unint64_t sub_217C96A50()
{
  result = qword_27CBA35F8;
  if (!qword_27CBA35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35F8);
  }

  return result;
}

unint64_t sub_217C96AA8()
{
  result = qword_27CBA3600;
  if (!qword_27CBA3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3600);
  }

  return result;
}

NewsAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1684366694;
      break;
    case 2:
      result = 0x656C6369747261;
      break;
    case 3:
      result = 6710384;
      break;
    case 4:
      result = 0x6E69776F6C6C6F66;
      break;
    case 5:
      result = 0x746567646977;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      result = 0x6C61646F6DLL;
      break;
    case 8:
      result = 0x6C6C6F72635368;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x7474656C7377656ELL;
      break;
    case 0xB:
      result = 0x656C7A7A7570;
      break;
    case 0xC:
      result = 0x74756374726F6873;
      break;
    case 0xD:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C96CB0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ViewType.rawValue.getter();
  v4 = v3;
  if (v2 == ViewType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217C96D50()
{
  result = qword_27CBA3608;
  if (!qword_27CBA3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3608);
  }

  return result;
}

uint64_t sub_217C96DA4()
{
  v1 = *v0;
  sub_217D89E1C();
  ViewType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C96E0C()
{
  v2 = *v0;
  ViewType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C96E70()
{
  v1 = *v0;
  sub_217D89E1C();
  ViewType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217C96EE0@<X0>(unint64_t *a1@<X8>)
{
  result = ViewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C96FC8()
{
  result = qword_2811BD1F0;
  if (!qword_2811BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1F0);
  }

  return result;
}

uint64_t sub_217C970E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3640);
  __swift_project_value_buffer(v0, qword_27CBA3640);
  return sub_217D8866C();
}

uint64_t RecentSearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecentSearchExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 20);
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentSearchExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 20);
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 24);
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentSearchExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 24);
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.recentSearchListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 28);
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C97648(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t RecentSearchExposureEvent.recentSearchListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 28);
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecentSearchExposureEvent(0);
  v5 = v4[5];
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t RecentSearchExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecentSearchExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 24));
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

uint64_t RecentSearchExposureEvent.Model.recentSearchListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 28));
}

__n128 RecentSearchExposureEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:recentSearchListData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 8);
  v11 = *a4;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  v14 = a5 + v13[5];
  *v14 = v8;
  *(v14 + 8) = v9;
  *(v14 + 16) = v10;
  v15 = a5 + v13[6];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 16) = v16;
  result = *(a3 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a3 + 48);
  *(a5 + v13[7]) = v11;
  return result;
}

unint64_t sub_217C97BAC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6174614477656976;
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

uint64_t sub_217C97C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C98C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C97C60(uint64_t a1)
{
  v2 = sub_217C98018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C97C9C(uint64_t a1)
{
  v2 = sub_217C98018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearchExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C984FC(0, &qword_27CBA3660, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C98018();
  sub_217D89E7C();
  LOBYTE(v30[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for RecentSearchExposureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v33 = v14;
    v34 = v15;
    v35 = v13;
    v32 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v30[0] = *v16;
    v30[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v30[2] = v16[2];
    v31 = *(v16 + 48);
    v26 = v19;
    v27 = v18;
    v28 = v16[2];
    v29 = *(v16 + 48);
    v25 = 2;
    sub_217ACC004(v30, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v24 = v29;
    sub_217ACC69C(v23);
    v22 = *(v3 + v12[7]);
    v21[7] = 3;
    sub_217B23DDC();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C98018()
{
  result = qword_27CBA3668;
  if (!qword_27CBA3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3668);
  }

  return result;
}

uint64_t RecentSearchExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_217D8899C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C984FC(0, &qword_27CBA3670, MEMORY[0x277D844C8]);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C98018();
  v30 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v27;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v31) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v18 = *(&v32 + 1);
  v19 = v33;
  v20 = &v14[v11[5]];
  *v20 = v32;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v37 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v14[v11[6]];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  v21[48] = v35;
  v36 = 3;
  sub_217B23D84();
  sub_217D89BCC();
  (*(v28 + 8))(v30, v29);
  *&v14[v11[7]] = v31;
  sub_217C98560(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C985C4(v14);
}

void sub_217C984FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C98018();
    v7 = a3(a1, &type metadata for RecentSearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C98560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C985C4(uint64_t a1)
{
  v2 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C986F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217C98908()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C97648(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217C97648(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217C97648(319, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217C98A8C()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C98B28()
{
  result = qword_27CBA3698;
  if (!qword_27CBA3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3698);
  }

  return result;
}

unint64_t sub_217C98B80()
{
  result = qword_27CBA36A0;
  if (!qword_27CBA36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA36A0);
  }

  return result;
}

unint64_t sub_217C98BD8()
{
  result = qword_27CBA36A8;
  if (!qword_27CBA36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA36A8);
  }

  return result;
}

uint64_t sub_217C98C2C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1C40 == a2)
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

uint64_t sub_217C98E6C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA36E0);
  __swift_project_value_buffer(v0, qword_27CBA36E0);
  return sub_217D8866C();
}

uint64_t RestoreSubscriptionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RestoreSubscriptionEvent.purchaseRestoreListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RestoreSubscriptionEvent.purchaseRestoreListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RestoreSubscriptionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C99220(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t RestoreSubscriptionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RestoreSubscriptionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RestoreSubscriptionEvent(0);
  v5 = *(v4 + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t RestoreSubscriptionEvent.Model.purchaseRestoreListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RestoreSubscriptionEvent.Model(0) + 20));
}

uint64_t RestoreSubscriptionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RestoreSubscriptionEvent.Model(0) + 24));
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

__n128 RestoreSubscriptionEvent.Model.init(eventData:purchaseRestoreListData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  *(a4 + *(v9 + 20)) = v7;
  v10 = a4 + *(v9 + 24);
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 16) = v11;
  result = *(a3 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a3 + 48);
  return result;
}

uint64_t sub_217C99694()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C996F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C9A4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C99720(uint64_t a1)
{
  v2 = sub_217C99A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9975C(uint64_t a1)
{
  v2 = sub_217C99A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RestoreSubscriptionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C99E70(0, &qword_27CBA3700, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C99A30();
  sub_217D89E7C();
  LOBYTE(v25[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
    v28 = *(v3 + *(v12 + 20));
    v27 = 1;
    sub_217BB388C();

    sub_217D89CAC();

    v13 = (v3 + *(v12 + 24));
    v14 = v13[1];
    v25[0] = *v13;
    v25[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v25[2] = v13[2];
    v26 = *(v13 + 48);
    v21 = v16;
    v22 = v15;
    v23 = v13[2];
    v24 = *(v13 + 48);
    v20 = 2;
    sub_217ACC004(v25, v18);
    sub_217A55B98();
    sub_217D89CAC();
    v18[0] = v21;
    v18[1] = v22;
    v18[2] = v23;
    v19 = v24;
    sub_217ACC69C(v18);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C99A30()
{
  result = qword_27CBA3708;
  if (!qword_27CBA3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3708);
  }

  return result;
}

uint64_t RestoreSubscriptionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_217D8899C();
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C99E70(0, &qword_27CBA3710, MEMORY[0x277D844C8]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C99A30();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v11;
  v26 = v14;
  v16 = v28;
  v17 = v29;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v30;
  sub_217D89BCC();
  (*(v17 + 32))(v26, v6, v31);
  v36 = 1;
  sub_217BB3834();
  sub_217D89BCC();
  v19 = v25;
  *&v26[*(v25 + 20)] = v32;
  v36 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v16 + 8))(v10, v18);
  v21 = v26;
  v20 = v27;
  v22 = &v26[*(v19 + 24)];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *(v22 + 2) = v34;
  v22[48] = v35;
  sub_217C99ED4(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C99F38(v21);
}

void sub_217C99E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C99A30();
    v7 = a3(a1, &type metadata for RestoreSubscriptionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C99ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C99F38(uint64_t a1)
{
  v2 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C9A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C9A204()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C99220(319, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
    if (v1 <= 0x3F)
    {
      sub_217C99220(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C9A338()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C9A3D0()
{
  result = qword_27CBA3738;
  if (!qword_27CBA3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3738);
  }

  return result;
}

unint64_t sub_217C9A428()
{
  result = qword_27CBA3740;
  if (!qword_27CBA3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3740);
  }

  return result;
}

unint64_t sub_217C9A480()
{
  result = qword_27CBA3748;
  if (!qword_27CBA3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3748);
  }

  return result;
}

uint64_t sub_217C9A4D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD1C60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t TabiRequestSummary.channelPicker.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TabiRequestSummary.eventAggregation.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TabiRequestSummary.feedPersonalization.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TabiRequestSummary.personalizedPaywalls.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TabiRequestSummary.recommendedIssues.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t TabiRequestSummary.recommendedTags.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t TabiRequestSummary.tagScoring.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t TabiRequestSummary.tagSuggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall TabiRequestSummary.init(channelPicker:eventAggregation:feedPersonalization:personalizedPaywalls:recommendedIssues:recommendedTags:tagScoring:tagSuggestions:)(NewsAnalytics::TabiRequestSummary *__return_ptr retstr, Swift::OpaquePointer channelPicker, Swift::OpaquePointer eventAggregation, Swift::OpaquePointer feedPersonalization, Swift::OpaquePointer personalizedPaywalls, Swift::OpaquePointer recommendedIssues, Swift::OpaquePointer recommendedTags, Swift::OpaquePointer tagScoring, Swift::OpaquePointer tagSuggestions)
{
  retstr->channelPicker = channelPicker;
  retstr->eventAggregation = eventAggregation;
  retstr->feedPersonalization = feedPersonalization;
  retstr->personalizedPaywalls = personalizedPaywalls;
  retstr->recommendedIssues = recommendedIssues;
  retstr->recommendedTags = recommendedTags;
  retstr->tagScoring = tagScoring;
  retstr->tagSuggestions = tagSuggestions;
}

unint64_t sub_217C9A8BC()
{
  v1 = *v0;
  v2 = 0x506C656E6E616863;
  v3 = 0x69726F6353676174;
  if (v1 != 6)
  {
    v3 = 0x6567677553676174;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E656D6D6F636572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 2)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_217C9A9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C9B8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C9AA14(uint64_t a1)
{
  v2 = sub_217C9AE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9AA50(uint64_t a1)
{
  v2 = sub_217C9AE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiRequestSummary.encode(to:)(void *a1)
{
  sub_217C9B4B8(0, &qword_2811BC6A8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v24 = v1[2];
  v25 = v10;
  v13 = v1[5];
  v22 = v1[4];
  v23 = v12;
  v14 = v1[7];
  v20 = v1[6];
  v21 = v13;
  v19 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9AE00();

  sub_217D89E7C();
  v27 = v11;
  v26 = 0;
  sub_217C9AE54();
  sub_217C9B51C(&qword_2811BCDE0, &qword_2811C6078);
  v16 = v5;
  sub_217D89CAC();
  if (v2)
  {
  }

  else
  {
    v17 = v24;

    v27 = v25;
    v26 = 1;
    sub_217D89CAC();
    v27 = v17;
    v26 = 2;
    sub_217D89CAC();
    v27 = v23;
    v26 = 3;
    sub_217D89CAC();
    v27 = v22;
    v26 = 4;
    sub_217D89CAC();
    v27 = v21;
    v26 = 5;
    sub_217D89CAC();
    v27 = v20;
    v26 = 6;
    sub_217D89CAC();
    v27 = v19;
    v26 = 7;
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v16);
}

unint64_t sub_217C9AE00()
{
  result = qword_2811C2E08;
  if (!qword_2811C2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E08);
  }

  return result;
}

void sub_217C9AE54()
{
  if (!qword_2811BCDE8)
  {
    type metadata accessor for TabiRequestData();
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDE8);
    }
  }
}

uint64_t TabiRequestSummary.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C9B4B8(0, &qword_2811BCA18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9AE00();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a2;
  sub_217C9AE54();
  LOBYTE(v33) = 0;
  sub_217C9B51C(&qword_2811BCDD8, &qword_2811C6070);
  sub_217D89BCC();
  v31 = v37[0];
  LOBYTE(v33) = 1;
  sub_217D89BCC();
  v30 = v37[0];
  LOBYTE(v33) = 2;
  sub_217D89BCC();
  v29 = v37[0];
  LOBYTE(v33) = 3;
  sub_217D89BCC();
  v28 = v37[0];
  LOBYTE(v33) = 4;
  sub_217D89BCC();
  v27 = v37[0];
  LOBYTE(v33) = 5;
  v26 = 0;
  sub_217D89BCC();
  v25 = v37[0];
  LOBYTE(v33) = 6;
  sub_217D89BCC();
  v24 = v37[0];
  v38 = 7;
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v26 = v39;
  v13 = v30;
  v12 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v30;
  v14 = v29;
  v15 = v28;
  *&v34 = v29;
  *(&v34 + 1) = v28;
  v16 = v27;
  v17 = v25;
  *&v35 = v27;
  *(&v35 + 1) = v25;
  v18 = v24;
  *&v36 = v24;
  *(&v36 + 1) = v39;
  v19 = v34;
  v20 = v32;
  *v32 = v33;
  v20[1] = v19;
  v21 = v36;
  v20[2] = v35;
  v20[3] = v21;
  sub_217C9B5DC(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v12;
  v37[1] = v13;
  v37[2] = v14;
  v37[3] = v15;
  v37[4] = v16;
  v37[5] = v17;
  v37[6] = v18;
  v37[7] = v26;
  return sub_217C9B614(v37);
}

void sub_217C9B4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C9AE00();
    v7 = a3(a1, &type metadata for TabiRequestSummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C9B51C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_217C9AE54();
    sub_217C9B598(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217C9B598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabiRequestData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C9B648()
{
  result = qword_2811C2DE8;
  if (!qword_2811C2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DE8);
  }

  return result;
}

unint64_t sub_217C9B6A0()
{
  result = qword_2811C2DF0;
  if (!qword_2811C2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DF0);
  }

  return result;
}

uint64_t sub_217C9B724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_217C9B76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C9B7E0()
{
  result = qword_27CBA3750;
  if (!qword_27CBA3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3750);
  }

  return result;
}

unint64_t sub_217C9B838()
{
  result = qword_2811C2DF8;
  if (!qword_2811C2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DF8);
  }

  return result;
}

unint64_t sub_217C9B890()
{
  result = qword_2811C2E00;
  if (!qword_2811C2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E00);
  }

  return result;
}

uint64_t sub_217C9B8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506C656E6E616863 && a2 == 0xED000072656B6369;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1C80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1CA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1CC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCBCB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF73676154646564 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6353676174 && a2 == 0xEA0000000000676ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6567677553676174 && a2 == 0xEE00736E6F697473)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

NewsAnalytics::TextSizeChangeType_optional __swiftcall TextSizeChangeType.init(rawValue:)(Swift::String rawValue)
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

uint64_t TextSizeChangeType.rawValue.getter()
{
  v1 = 0x72656C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0x72656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843746F6ELL;
  }
}

uint64_t sub_217C9BC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x72656C6C616D73;
  if (v2 != 1)
  {
    v4 = 0x72656772616CLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E616843746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656C6C616D73;
  if (*a2 != 1)
  {
    v8 = 0x72656772616CLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E616843746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
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

unint64_t sub_217C9BD54()
{
  result = qword_27CBA3758;
  if (!qword_27CBA3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3758);
  }

  return result;
}

uint64_t sub_217C9BDA8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C9BE4C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C9BEDC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C9BF88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE700000000000000;
  v5 = 0x72656C6C616D73;
  if (v2 != 1)
  {
    v5 = 0x72656772616CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E616843746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217C9C0A8()
{
  result = qword_2811C2DC8;
  if (!qword_2811C2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DC8);
  }

  return result;
}

uint64_t sub_217C9C148(uint64_t a1)
{
  v2 = sub_217C9C31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9C184(uint64_t a1)
{
  v2 = sub_217C9C31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionAdLocationData.encode(to:)(void *a1)
{
  sub_217C9C55C(0, &qword_27CBA3760, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9C31C();
  sub_217D89E7C();
  v13 = v9;
  sub_217C9C370();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C9C31C()
{
  result = qword_27CBA3768;
  if (!qword_27CBA3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3768);
  }

  return result;
}

unint64_t sub_217C9C370()
{
  result = qword_27CBA3770;
  if (!qword_27CBA3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3770);
  }

  return result;
}

uint64_t SubscriptionAdLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C9C55C(0, &qword_27CBA3778, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9C31C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C9C5C0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C9C55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C9C31C();
    v7 = a3(a1, &type metadata for SubscriptionAdLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C9C5C0()
{
  result = qword_27CBA3780;
  if (!qword_27CBA3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3780);
  }

  return result;
}

unint64_t sub_217C9C618()
{
  result = qword_2811BEE10;
  if (!qword_2811BEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE10);
  }

  return result;
}

unint64_t sub_217C9C670()
{
  result = qword_2811BEE18;
  if (!qword_2811BEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE18);
  }

  return result;
}

unint64_t sub_217C9C718()
{
  result = qword_27CBA3788;
  if (!qword_27CBA3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3788);
  }

  return result;
}

unint64_t sub_217C9C770()
{
  result = qword_27CBA3790;
  if (!qword_27CBA3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3790);
  }

  return result;
}

unint64_t sub_217C9C7C8()
{
  result = qword_27CBA3798;
  if (!qword_27CBA3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3798);
  }

  return result;
}

uint64_t sub_217C9C81C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 7234932;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7234932)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1869768058)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9CA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  v6 = 0xE500000000000000;
  v7 = 0x6F69647561;
  if (a1 != 4)
  {
    v7 = 7364973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F65646976;
  if (a1 != 1)
  {
    v8 = 0x6567616D69;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v11 = 0xE500000000000000;
    if (a2 != 1)
    {
      if (v9 != 0x6567616D69)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 1701079414;
    goto LABEL_23;
  }

  if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972656C6C6167)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v11 = 0xE500000000000000;
    v12 = 1768191329;
LABEL_23:
    if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v11 = 0xE300000000000000;
  if (v9 != 7364973)
  {
LABEL_34:
    v13 = sub_217D89D4C();
    goto LABEL_35;
  }

LABEL_32:
  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9CBB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6976614E72657375;
    v10 = 0xEE006E6F69746167;
    if (a1 != 6)
    {
      v9 = 0x6873617263;
      v10 = 0xE500000000000000;
    }

    v11 = 0x6975516563726F66;
    v12 = 0xE900000000000074;
    if (a1 != 4)
    {
      v11 = 0x72617073646C6566;
      v12 = 0xEF74657365524449;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x636142656E656373;
    v5 = 0xEF646E756F72676BLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000015;
      v5 = 0x8000000217DCCA10;
    }

    v6 = 0x676B636142707061;
    if (a1)
    {
      v3 = 0xED0000646E756F72;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEE006E6F69746167;
        if (v7 != 0x6976614E72657375)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x6873617263)
        {
LABEL_47:
          v14 = sub_217D89D4C();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000074;
      if (v7 != 0x6975516563726F66)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEF74657365524449;
      if (v7 != 0x72617073646C6566)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEF646E756F72676BLL;
      if (v7 != 0x636142656E656373)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x8000000217DCCA10;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xED0000646E756F72;
    if (v7 != 0x676B636142707061)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_217C9CE94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827308;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x6867694879726576;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616D726F6ELL;
    }

    else
    {
      v4 = 7827308;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (a2 != 2)
  {
    v8 = 0x6867694879726576;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616D726F6ELL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9CFB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C696166;
    }

    else
    {
      v4 = 0x656C6C69666C7566;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69646E6570;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (a2 != 2)
  {
    v7 = 0x656C6C69666C7566;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x676E69646E6570;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217C9D0FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v12 = 0xE500000000000000;
    v13 = 0x7265766F63;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v12 = 0x8000000217DCC980;
    }

    v14 = 0x656C6369747261;
    if (!a1)
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = 0x65727574616566;
    v6 = 0x737349664F646E65;
    v7 = 0xEA00000000006575;
    if (a1 != 7)
    {
      v6 = 0xD000000000000012;
      v7 = 0x8000000217DCBD70;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x8000000217DCB560;
    v9 = 0xD000000000000013;
    if (a1 != 4)
    {
      v9 = 0x6867696C746F7073;
      v8 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x8000000217DCB560;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE900000000000074;
        if (v10 != 0x6867696C746F7073)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEA00000000006575;
        if (v10 != 0x737349664F646E65)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0xD000000000000012;
      v15 = 0x8000000217DCBD70;
      goto LABEL_45;
    }

    v15 = 0xE700000000000000;
    v16 = 0x727574616566;
LABEL_40:
    if (v10 != (v16 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0xE500000000000000;
      if (v10 != 0x7265766F63)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0x8000000217DCC980;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_46;
  }

  v15 = 0xE700000000000000;
  if (a2)
  {
    v16 = 0x6C6369747261;
    goto LABEL_40;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v17 = sub_217D89D4C();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_217C9D3C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0x654472656E6E6977;
  v5 = 0xED0000746C756166;
  if (a1 != 5)
  {
    v4 = 0x6C4172656E6E6977;
    v5 = 0xEF6574616E726574;
  }

  v6 = 0xE400000000000000;
  v7 = 1953719668;
  if (a1 != 3)
  {
    v7 = 0x724172656E6E6977;
    v6 = 0xED0000656C636974;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x746C7561666564;
  if (a1 != 1)
  {
    v8 = 0x6C6F72746E6F63;
  }

  if (!a1)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE700000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x746C7561666564)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x6C6F72746E6F63)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xED0000746C756166;
        if (v9 != 0x654472656E6E6977)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xEF6574616E726574;
        if (v9 != 0x6C4172656E6E6977)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1953719668)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0x724172656E6E6977;
    v11 = 0xED0000656C636974;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_217D89D4C();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_217C9D610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v10 = 0x8000000217DCB300;
    v11 = 0xD000000000000010;
    v12 = 0x6576697463416F6ELL;
    v13 = 0xEF72656767697254;
    if (a1 != 8)
    {
      v12 = 0xD000000000000013;
      v13 = 0x8000000217DCB330;
    }

    if (a1 != 7)
    {
      v11 = v12;
      v10 = v13;
    }

    v14 = 0x8000000217DCB2C0;
    v15 = 0xD000000000000015;
    if (a1 != 5)
    {
      v15 = 0xD000000000000014;
      v14 = 0x8000000217DCB2E0;
    }

    if (a1 <= 6u)
    {
      v8 = v15;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 6)
    {
      v9 = v14;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x8000000217DCB260;
    v5 = 0xD00000000000001FLL;
    v6 = 0x8000000217DCB280;
    if (a1 != 3)
    {
      v6 = 0x8000000217DCB2A0;
    }

    if (a1 != 2)
    {
      v5 = 0xD00000000000001CLL;
      v4 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1)
    {
      v3 = 0x8000000217DCB240;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0x8000000217DCB2C0;
        if (v8 != 0xD000000000000015)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x8000000217DCB2E0;
        if (v8 != 0xD000000000000014)
        {
LABEL_57:
          v18 = sub_217D89D4C();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0x8000000217DCB300;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xEF72656767697254;
      if (v8 != 0x6576697463416F6ELL)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0x8000000217DCB330;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0x8000000217DCB240;
      if (v8 != 0xD000000000000018)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0x8000000217DCB260;
    if (v8 != 0xD00000000000001FLL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v16 = "blockedPlacementViaAppConfig";
    }

    else
    {
      v16 = "blockedPlacementViaTodayFeed";
    }

    v17 = (v16 - 32) | 0x8000000000000000;
    if (v8 != 0xD00000000000001CLL)
    {
      goto LABEL_57;
    }
  }

  if (v9 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_217C9D918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657269707865;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000217DCA720;
    }

    else
    {
      v5 = 0x8000000217DCA740;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64657269707865;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x8000000217DCA700;
    }
  }

  v6 = 0xD000000000000017;
  v7 = 0x8000000217DCA740;
  if (a2 == 2)
  {
    v7 = 0x8000000217DCA720;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xD000000000000016;
    v8 = 0x8000000217DCA700;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9DA44(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x65766973736170;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v2 = 0x657669746361;
  }

  else if (a1 == 3)
  {
    v2 = 0x736E6553656D6974;
    v3 = 0xED00006576697469;
  }

  else
  {
    v3 = 0xE800000000000000;
    v2 = 0x6C61636974697263;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x65766973736170;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x736E6553656D6974;
    v5 = 0xED00006576697469;
    if (a2 != 3)
    {
      v4 = 0x6C61636974697263;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x657669746361;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217C9DBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x47356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x47356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9DD54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65726F63536574;
  v3 = 0x6172756363616E69;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x656D6954656D6167;
  v7 = 0xD000000000000011;
  v8 = 0x8000000217DCB3B0;
  if (a1 != 4)
  {
    v7 = 0x6E696874656D6F73;
    v8 = 0xED000065736C4567;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x53646579616C6564;
  v10 = 0xEC00000065726F63;
  if (a1 != 1)
  {
    v9 = 0x6F666E496D616574;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6172756363616E69;
    v10 = 0xEF65726F63536574;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x656D6954656D6167)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000217DCB3B0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED000065736C4567;
      if (v11 != 0x6E696874656D6F73)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065726F63;
        if (v11 != 0x53646579616C6564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x6F666E496D616574;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_217D89D4C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_217C9DF58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000013;
  v5 = 0x8000000217DCB1D0;
  v6 = 0x8000000217DCB1F0;
  v7 = 0xD000000000000017;
  if (a1 != 4)
  {
    v7 = 0x42797265636F7267;
    v6 = 0xED00006E6F747475;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x726142756E656DLL;
  if (a1 != 1)
  {
    v9 = 0x53726142756E656DLL;
    v8 = 0xEE00776F72726168;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000217DCB1D0;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x8000000217DCB1F0;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00006E6F747475;
      if (v10 != 0x42797265636F7267)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x726142756E656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00776F72726168;
      if (v10 != 0x53726142756E656DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9E168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  v6 = 0xE400000000000000;
  if (a1 != 5)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v7 = 1819242352;
  if (a1 != 3)
  {
    v7 = 0x646570706F7264;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1954047342;
  if (a1 != 1)
  {
    v8 = 1953718636;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE400000000000000;
      if (a2 == 1)
      {
        if (v9 != 1954047342)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 1953718636)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    v11 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v9 != 1885956979)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 1701736302)
    {
LABEL_39:
      v12 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE400000000000000;
    if (v9 != 1819242352)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x646570706F7264)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_217C9E33C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x7374726F7073;
  v5 = 0xE700000000000000;
  if (a1 == 5)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x73656C7A7A7570;
  }

  v6 = 0x6E6974656B72616DLL;
  v7 = 0xE900000000000067;
  if (a1 != 3)
  {
    v6 = 0xD000000000000012;
    v7 = 0x8000000217DCB160;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v9 = 0x657573734977656ELL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C656E6E616863)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x657573734977656ELL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7374726F7073)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73656C7A7A7570)
      {
LABEL_40:
        v13 = sub_217D89D4C();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E6974656B72616DLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0x8000000217DCB160;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_217C9E568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7474656C7377656ELL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0x8000000217DCB9E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7474656C7377656ELL;
  v8 = 0x8000000217DCB9E0;
  if (a2 == 2)
  {
    v8 = 0xEA00000000007265;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9E6A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED00007465656853;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1802398060;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65676150706D61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573616863727570;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED00007465656853;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1802398060;
    if (a2 != 3)
    {
      v6 = 0x65676150706D61;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x50676E69646E616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000656761;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9E848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006E6F6974616DLL;
  v3 = 0xD000000000000011;
  v4 = 0x726F666E4973696DLL;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x726F666E4973696DLL;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5 == 2)
    {
      v7 = 0xEE006E6F6974616DLL;
    }

    else
    {
      v7 = 0x8000000217DCC580;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x8000000217DCC550;
    }

    else
    {
      v7 = 0x8000000217DCC530;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000011;
    v2 = 0x8000000217DCC580;
  }

  v8 = 0x8000000217DCC550;
  if (a2)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v8 = 0x8000000217DCC530;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
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

uint64_t sub_217C9E974(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657061707377656ELL;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0x8000000217DCB1A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F69647561;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x657061707377656ELL;
  v8 = 0x8000000217DCB1A0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000072;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6F69647561;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9EAB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6572616873;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v7 = 0x6E6564646968;
  }

  if (a2)
  {
    v2 = 0x6572616873;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217C9EBE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6373627553746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xED00006465626972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (a2)
  {
    v2 = 0x6C61697274;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9ED40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  v6 = 0x50676E69646E616CLL;
  v7 = 0xEB00000000656761;
  if (a1 != 4)
  {
    v6 = 0x6B6E696C70656564;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6163696669746F6ELL;
  v9 = 0xEC0000006E6F6974;
  if (a1 != 1)
  {
    v8 = 0x6C69546F63736964;
    v9 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6465626D45626577)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000656761;
      if (v10 != 0x50676E69646E616CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6B6E696C70656564)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6C69546F63736964)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9EF50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
    if (a1 != 3)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000217DCC720;
    }

    if (a1 == 2)
    {
      v5 = 0x6572756C696166;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE700000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6C65636E6163;
    v8 = 0x8000000217DCC720;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 0x6572756C696166;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_217D89D4C();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_217C9F0CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x73756C507377656ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x726566664F62;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x656C646E754273;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x61746C654470;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73756C507377656ELL;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x656C646E754273;
    if (a2 != 3)
    {
      v6 = 0x61746C654470;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x726566664F62;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9F248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x69746375646F7270;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xEA00000000006E6FLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x676E6967617473;
  }

  else if (a1 == 3)
  {
    v3 = 0xE200000000000000;
    v4 = 24945;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1953719668;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x69746375646F7270;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xEA00000000006E6FLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v6 = 24945;
    if (a2 != 3)
    {
      v6 = 1953719668;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x676E6967617473;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9F3B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6D6F436863746177;
  v5 = 0xED00006574656C70;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  if (a1 != 4)
  {
    v7 = 0x726F4D6E7261656CLL;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006574656C70;
      if (v10 != 0x6D6F436863746177)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1885956979)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x726F4D6E7261656CLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D75736572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9F594(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6142686372616573;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6553746E65636572;
    v4 = 0xEC00000068637261;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000217DCB430;
    }

    else
    {
      v4 = 0x8000000217DCB450;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6142686372616573;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEC00000068637261;
    if (v3 != 0x6553746E65636572)
    {
LABEL_37:
      v8 = sub_217D89D4C();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000217DCB430;
    }

    else
    {
      v6 = 0x8000000217DCB450;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_217C9F748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6C69546F63736964;
    }

    else
    {
      v6 = 0x6465626D45626577;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D6574737973;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C69546F63736964;
  v10 = 0xE900000000000065;
  if (a2 != 2)
  {
    v9 = 0x6465626D45626577;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6574737973;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217C9F888(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE900000000000077;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x654E6E657473696CLL;
    v5 = 0xEA00000000007478;
  }

  else if (a1 == 3)
  {
    v4 = 0x614C6E657473696CLL;
    v5 = 0xEB00000000726574;
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6F4E6E657473696CLL;
    v8 = 0xE900000000000077;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x654E6E657473696CLL;
    v6 = 0xEA00000000007478;
    v7 = 0x614C6E657473696CLL;
    v8 = 0xEB00000000726574;
    if (a2 != 3)
    {
      v7 = 0x6C65636E6163;
      v8 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}