unint64_t sub_217C4EEA8()
{
  result = qword_2811C04A0;
  if (!qword_2811C04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04A0);
  }

  return result;
}

unint64_t sub_217C4EF38()
{
  result = qword_27CBA2B48;
  if (!qword_27CBA2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B48);
  }

  return result;
}

void sub_217C4EFA0()
{
  if (!qword_27CB9EBD8)
  {
    type metadata accessor for SessionData();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9EBD8);
    }
  }
}

uint64_t type metadata accessor for Session()
{
  result = qword_27CBA2B50;
  if (!qword_27CBA2B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217C4F058()
{
  sub_217A5E974(319, &qword_2811BCE70);
  if (v0 <= 0x3F)
  {
    sub_217C4EFA0();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA2B60);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9ECC0);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BDCD8);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CBA2B68);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CBA2B70);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA2B78);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CBA2B80);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C4CD8);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_27CBA2B88);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_27CBA2B90);
                        if (v11 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_27CBA2B98);
                          if (v12 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_2811BF670);
                            if (v13 <= 0x3F)
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

uint64_t sub_217C4F2D4(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6973736553707061;
      break;
    case 2:
      result = 0x446E6F6973736573;
      break;
    case 3:
      result = 0x6174614472657375;
      break;
    case 4:
      result = 0x7461746E6569726FLL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      v3 = 0x776F646E6977;
      goto LABEL_11;
    case 8:
      result = 0x61746144707061;
      break;
    case 9:
      v3 = 0x656369766564;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C4F4A4(void *a1)
{
  v3 = v1;
  sub_217C509CC(0, &qword_27CBA2BA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C507F8();
  sub_217D89E7C();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v67[0]) = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v67[0]) = 1;
    sub_217D89C0C();
    v16 = type metadata accessor for Session();
    v17 = v16[6];
    v70 = 2;
    type metadata accessor for SessionData();
    sub_217B702A4(&qword_2811C7C58);
    sub_217D89C3C();
    v18 = (v3 + v16[7]);
    v19 = v18[1];
    v67[0] = *v18;
    v67[1] = v19;
    v20 = v18[3];
    v22 = *v18;
    v21 = v18[1];
    v67[2] = v18[2];
    v67[3] = v20;
    v63 = v22;
    v64 = v21;
    v23 = v18[3];
    v65 = v18[2];
    v66 = v23;
    v69 = 3;
    sub_217C50A30(v67, v62);
    sub_217A5909C();
    sub_217D89C3C();
    v62[0] = v63;
    v62[1] = v64;
    v62[2] = v65;
    v62[3] = v66;
    sub_217C5089C(v62);
    LOWORD(v56) = *(v3 + v16[8]);
    v68 = 4;
    sub_217A4CF88();
    sub_217D89C3C();
    v24 = v3 + v16[9];
    v25 = *(v24 + 1);
    v26 = *(v24 + 2);
    v27 = *(v24 + 3);
    v28 = *(v24 + 4);
    v29 = *(v24 + 5);
    v30 = v24[48];
    *&v56 = *v24;
    *(&v56 + 1) = v25;
    v57 = v26;
    v58 = v27;
    v59 = v28;
    v60 = v29;
    LOBYTE(v61) = v30;
    v68 = 5;
    sub_217C50AA4(v56, v25, v26);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(v56, *(&v56 + 1), v57);
    v31 = (v3 + v16[10]);
    v32 = v31[1];
    *&v56 = *v31;
    *(&v56 + 1) = v32;
    v68 = 6;
    sub_217A4DB48();

    sub_217D89C3C();

    v33 = (v3 + v16[11]);
    v34 = v33[1];
    *&v56 = *v33;
    *(&v56 + 1) = v34;
    v68 = 7;
    sub_217A57090();

    sub_217D89C3C();

    v36 = (v3 + v16[12]);
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    *&v56 = *v36;
    *(&v56 + 1) = v37;
    v57 = v38;
    v58 = v39;
    v68 = 8;
    sub_217AE39D0(v56, v37);
    sub_217A57A80();
    sub_217D89C3C();
    sub_217AE4AA0(v56, *(&v56 + 1));
    v40 = (v3 + v16[13]);
    v41 = v40[1];
    v42 = v40[2];
    v43 = v40[3];
    v44 = v40[4];
    v45 = v40[5];
    v46 = v40[6];
    *&v56 = *v40;
    *(&v56 + 1) = v41;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v61 = v46;
    v68 = 9;
    sub_217C50AEC(v56, v41);
    sub_217A57F94();
    sub_217D89C3C();
    sub_217C5084C(v56, *(&v56 + 1));
    v47 = (v3 + v16[14]);
    v48 = v47[1];
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];
    v52 = v47[5];
    v53 = v47[6];
    *&v56 = *v47;
    *(&v56 + 1) = v48;
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v68 = 10;
    sub_217C50B3C(v56, v48);
    sub_217A55E38();
    sub_217D89C3C();
    sub_217BC8514(v56, *(&v56 + 1));
    v54 = v3 + v16[15];
    v55 = *v54;
    LOBYTE(v54) = v54[4];
    LODWORD(v56) = v55;
    BYTE4(v56) = v54;
    v68 = 11;
    sub_217A4F574();
    sub_217D89C3C();
    LOBYTE(v56) = *(v3 + v16[16]);
    v68 = 12;
    sub_217A4C65C();
    sub_217D89C3C();
    v56 = *(v3 + v16[17]);
    v68 = 13;
    sub_217A5062C();

    sub_217D89C3C();

    *&v56 = *(v3 + v16[18]);
    v68 = 14;
    sub_217A4FCA8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_217C4FB9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_217C4EFA0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C509CC(0, &qword_2811BC908, MEMORY[0x277D844C8]);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for Session();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C507F8();
  v49 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v7;
  v44 = a1;
  v18 = v47;
  v43 = v12;
  v45 = v15;
  LOBYTE(v54) = 0;
  v19 = sub_217D89B8C();
  v20 = v45;
  *v45 = v19;
  v20[1] = v21;
  LOBYTE(v54) = 1;
  v20[2] = sub_217D89B2C();
  v20[3] = v22;
  type metadata accessor for SessionData();
  LOBYTE(v54) = 2;
  sub_217B702A4(&qword_2811C7C50);
  v42 = 0;
  sub_217D89B5C();
  v23 = v43;
  sub_217ADE89C(v17, v20 + v43[6]);
  v59 = 3;
  sub_217A59044();
  sub_217D89B5C();
  v24 = (v20 + v23[7]);
  v25 = v55;
  *v24 = v54;
  v24[1] = v25;
  v26 = v57;
  v24[2] = v56;
  v24[3] = v26;
  v58 = 4;
  sub_217A4CF30();
  sub_217D89B5C();
  *(v20 + v23[8]) = v50;
  v58 = 5;
  sub_217A54D08();
  sub_217D89B5C();
  v27 = v53;
  v28 = v20 + v23[9];
  v29 = v51;
  *v28 = v50;
  *(v28 + 1) = v29;
  *(v28 + 2) = v52;
  v28[48] = v27;
  v58 = 6;
  sub_217A4DAF4();
  sub_217D89B5C();
  *(v20 + v23[10]) = v50;
  v58 = 7;
  sub_217A57038();
  sub_217D89B5C();
  *(v20 + v23[11]) = v50;
  v58 = 8;
  sub_217A57A28();
  sub_217D89B5C();
  v30 = (v45 + v43[12]);
  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v58 = 9;
  sub_217A57F3C();
  sub_217D89B5C();
  v32 = v53;
  v33 = v45 + v43[13];
  v34 = v51;
  *v33 = v50;
  *(v33 + 1) = v34;
  *(v33 + 2) = v52;
  *(v33 + 6) = v32;
  v58 = 10;
  sub_217A4F460();
  sub_217D89B5C();
  v35 = v53;
  v36 = v45 + v43[14];
  v37 = v51;
  *v36 = v50;
  *(v36 + 1) = v37;
  *(v36 + 2) = v52;
  *(v36 + 6) = v35;
  v58 = 11;
  sub_217A4F51C();
  sub_217D89B5C();
  v38 = BYTE4(v50);
  v39 = v45 + v43[15];
  *v39 = v50;
  v39[4] = v38;
  v58 = 12;
  sub_217A4C604();
  sub_217D89B5C();
  *(v45 + v43[16]) = v50;
  v58 = 13;
  sub_217A505D4();
  sub_217D89B5C();
  *(v45 + v43[17]) = v50;
  v58 = 14;
  sub_217A4FC50();
  sub_217D89B5C();
  (*(v18 + 8))(v49, v48);
  v40 = v45;
  *(v45 + v43[18]) = v50;
  sub_217C50968(v40, v46);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_217C50908(v40, type metadata accessor for Session);
}

uint64_t sub_217C50728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C50CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C50750(uint64_t a1)
{
  v2 = sub_217C507F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5078C(uint64_t a1)
{
  v2 = sub_217C507F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217C507F8()
{
  result = qword_2811BD3A8;
  if (!qword_2811BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3A8);
  }

  return result;
}

uint64_t sub_217C5084C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217C5089C(uint64_t a1)
{
  sub_217A5E974(0, &qword_27CBA2B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C50908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217C50968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217C509CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C507F8();
    v7 = a3(a1, &type metadata for Session.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C50A30(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_27CBA2B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C50AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_217C50AEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217C50B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_217C50BC0()
{
  result = qword_27CBA2BA8;
  if (!qword_27CBA2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BA8);
  }

  return result;
}

unint64_t sub_217C50C18()
{
  result = qword_2811BD398;
  if (!qword_2811BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD398);
  }

  return result;
}

unint64_t sub_217C50C70()
{
  result = qword_2811BD3A0;
  if (!qword_2811BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3A0);
  }

  return result;
}

uint64_t sub_217C50CC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD1270 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144776F646E6977 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217C51258()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C23D8);
  __swift_project_value_buffer(v0, qword_2811C23D8);
  return sub_217D8866C();
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.subscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 32);
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 32);
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 36);
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 36);
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.notificationSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 40);
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.notificationSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 40);
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.widgetEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 44);
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.widgetEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 44);
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.autoSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 48);
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.autoSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 48);
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.subscribedSportsListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 52);
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.subscribedSportsListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 52);
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for AppSessionStartEvent(0);
  v5 = started[5];
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = started[6];
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = started[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = started[8];
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = started[9];
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = started[10];
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = started[11];
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = started[12];
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = started[13];
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t AppSessionStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 20));
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

uint64_t AppSessionStartEvent.Model.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 6);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217B9E08C(&v9, v8);
}

uint64_t AppSessionStartEvent.Model.referralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t AppSessionStartEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t AppSessionStartEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30);
}

uint64_t AppSessionStartEvent.Model.notificationSettingsData.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 40));
  *a1 = v5;
  return sub_217A55A60(&v5, &v4);
}

uint64_t AppSessionStartEvent.Model.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1C8uLL);
  return sub_217AE38AC(__dst, &v5, &qword_2811C1A08);
}

uint64_t AppSessionStartEvent.Model.autoSubscribedData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t AppSessionStartEvent.Model.subscribedSportsListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 52));
}

void *AppSessionStartEvent.Model.init(eventData:userBundleSubscriptionContextData:subscriptionData:referralData:campaignData:notificationData:notificationSettingsData:widgetEngagementData:autoSubscribedData:subscribedSportsListData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, _OWORD *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, int *a10, uint64_t *a11)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v20 = *(a5 + 4);
  v38 = *(a5 + 5);
  v39 = *a10;
  v40 = *a11;
  v21 = sub_217D8899C();
  v36 = a5[1];
  v37 = *a5;
  v34 = a4[1];
  v35 = *a4;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v23 = a9 + started[5];
  v24 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = *(a2 + 48);
  v25 = a9 + started[6];
  v26 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = *(a3 + 48);
  v27 = a9 + started[7];
  *v27 = v35;
  *(v27 + 16) = v34;
  *(v27 + 32) = v18;
  *(v27 + 40) = v19;
  v28 = a9 + started[8];
  *v28 = v37;
  *(v28 + 16) = v36;
  *(v28 + 32) = v20;
  *(v28 + 40) = v38;
  v29 = (a9 + started[9]);
  v30 = a6[1];
  *v29 = *a6;
  v29[1] = v30;
  v31 = a6[5];
  v29[4] = a6[4];
  v29[5] = v31;
  v32 = a6[3];
  v29[2] = a6[2];
  v29[3] = v32;
  *(a9 + started[10]) = *a7;
  result = memcpy((a9 + started[11]), a8, 0x1C8uLL);
  *(a9 + started[12]) = v39;
  *(a9 + started[13]) = v40;
  return result;
}

unint64_t sub_217C52C88(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000018;
    if (a1 == 8)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000010;
    if (a1 != 5)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6C61727265666572;
    if (a1 != 3)
    {
      v2 = 0x6E676961706D6163;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = 0xD000000000000021;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217C52DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C54AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C52E18(uint64_t a1)
{
  v2 = sub_217C535D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C52E54(uint64_t a1)
{
  v2 = sub_217C535D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C53F34(0, &qword_27CBA2BB0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C535D4();
  sub_217D89E7C();
  v89 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    started = type metadata accessor for AppSessionStartEvent.Model(0);
    v13 = (v3 + started[5]);
    v14 = *v13;
    v87[1] = v13[1];
    v15 = v13[1];
    v87[2] = v13[2];
    v87[0] = *v13;
    v83 = v14;
    v88 = *(v13 + 48);
    v84 = v15;
    v85 = v13[2];
    v86 = *(v13 + 48);
    v82 = 1;
    sub_217ACC004(v87, v47);
    sub_217A55B98();
    sub_217D89CAC();
    v78[0] = v83;
    v78[1] = v84;
    v78[2] = v85;
    v79 = v86;
    sub_217ACC69C(v78);
    v16 = (v3 + started[6]);
    v17 = *v16;
    v80[1] = v16[1];
    v18 = v16[1];
    v80[2] = v16[2];
    v80[0] = *v16;
    v81 = *(v16 + 6);
    v74 = v17;
    v75 = v18;
    v76 = v16[2];
    v77 = *(v16 + 6);
    v73 = 2;
    sub_217B9E08C(v80, v47);
    sub_217A55E38();
    sub_217D89CAC();
    v71[0] = v74;
    v71[1] = v75;
    v71[2] = v76;
    v72 = v77;
    sub_217B9F26C(v71);
    v19 = (v3 + started[7]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    v47[0] = *v19;
    v47[1] = v20;
    v47[2] = v21;
    v47[3] = v22;
    v47[4] = v23;
    v47[5] = v24;
    v45[0] = 3;
    sub_217B1563C(v47[0], v20);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v47[0], v47[1]);
    v25 = (v3 + started[8]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    v65 = *v25;
    v66 = v26;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v64 = 4;
    sub_217B1563C(v65, v26);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v65, v66);
    v31 = (v3 + started[9]);
    v32 = v31[3];
    v33 = v31[1];
    v60 = v31[2];
    v61 = v32;
    v34 = v31[3];
    v35 = v31[5];
    v62 = v31[4];
    v63 = v35;
    v36 = v31[1];
    v59[0] = *v31;
    v59[1] = v36;
    v55 = v60;
    v56 = v34;
    v37 = v31[5];
    v57 = v62;
    v58 = v37;
    v53 = v59[0];
    v54 = v33;
    v52 = 5;
    sub_217AE38AC(v59, v47, &qword_2811C4F30);
    sub_217B9C280();
    sub_217D89C3C();
    v50[2] = v55;
    v50[3] = v56;
    v50[4] = v57;
    v50[5] = v58;
    v50[0] = v53;
    v50[1] = v54;
    sub_217AE4A44(v50, &qword_2811C4F30);
    v38 = started[10];
    v51 = *(v3 + v38);
    v49 = *(v3 + v38);
    v48 = 6;
    sub_217A55A60(&v51, v47);
    sub_217A5062C();
    sub_217D89CAC();
    v46 = v49;
    sub_217B9F32C(&v46);
    v39 = started[11];
    memcpy(v47, (v3 + v39), sizeof(v47));
    memcpy(v45, (v3 + v39), sizeof(v45));
    v44[463] = 7;
    sub_217AE38AC(v47, v44, &qword_2811C1A08);
    sub_217BBB650();
    sub_217D89C3C();
    memcpy(v44, v45, 0x1C8uLL);
    sub_217AE4A44(v44, &qword_2811C1A08);
    LODWORD(v42) = *(v3 + started[12]);
    v43 = 8;
    sub_217A4F574();
    sub_217D89CAC();
    v42 = *(v3 + started[13]);
    v43 = 9;
    sub_217A4FCA8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C535D4()
{
  result = qword_2811C23C8;
  if (!qword_2811C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23C8);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_217D8899C();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C53F34(0, &qword_2811BC9F0, MEMORY[0x277D844C8]);
  v44 = v7;
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v12 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217C535D4();
  v45 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v17 = v42;
  v38 = started;
  v39 = v14;
  LOBYTE(v68[0]) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v43;
  sub_217D89BCC();
  v19 = v4;
  v20 = *(v41 + 32);
  v21 = v39;
  v43 = v19;
  v20(v39, v18);
  v63 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v37 = 0;
  v22 = v38;
  v23 = &v21[v38[5]];
  v24 = v65;
  *v23 = v64;
  *(v23 + 1) = v24;
  *(v23 + 2) = v66;
  v23[48] = v67;
  v58 = 2;
  sub_217A4F460();
  sub_217D89BCC();
  v25 = &v21[v22[6]];
  v26 = v60;
  *v25 = v59;
  *(v25 + 1) = v26;
  *(v25 + 2) = v61;
  *(v25 + 6) = v62;
  LOBYTE(v52) = 3;
  sub_217ACDC58();
  sub_217D89B5C();
  v27 = &v21[v22[7]];
  v28 = v68[1];
  *v27 = v68[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v68[2];
  LOBYTE(v52) = 4;
  sub_217A66A84();
  sub_217D89B5C();
  v29 = &v21[v22[8]];
  v30 = v68[1];
  *v29 = v68[0];
  *(v29 + 1) = v30;
  *(v29 + 2) = v68[2];
  v51 = 5;
  sub_217B9C22C();
  sub_217D89B5C();
  v31 = &v21[v22[9]];
  v32 = v55;
  *(v31 + 2) = v54;
  *(v31 + 3) = v32;
  v33 = v57;
  *(v31 + 4) = v56;
  *(v31 + 5) = v33;
  v34 = v53;
  *v31 = v52;
  *(v31 + 1) = v34;
  v49 = 6;
  sub_217A505D4();
  sub_217D89BCC();
  *&v21[v22[10]] = v50;
  v48 = 7;
  sub_217BBB5F8();
  sub_217D89B5C();
  memcpy(&v39[v38[11]], v68, 0x1C8uLL);
  v47 = 8;
  sub_217A4F51C();
  sub_217D89BCC();
  *&v39[v38[12]] = v46;
  v47 = 9;
  sub_217A4FC50();
  sub_217D89B5C();
  (*(v17 + 8))(v45, v44);
  v35 = v39;
  *&v39[v38[13]] = v46;
  sub_217C53F98(v35, v40);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return sub_217C53FFC(v35);
}

void sub_217C53F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C535D4();
    v7 = a3(a1, &type metadata for AppSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C53F98(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217C53FFC(uint64_t a1)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_217C54130@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217C54624()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62DDC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62DDC(319, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
      if (v2 <= 0x3F)
      {
        sub_217A62DDC(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
        if (v3 <= 0x3F)
        {
          sub_217A62DDC(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
          if (v4 <= 0x3F)
          {
            sub_217A62DDC(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
            if (v5 <= 0x3F)
            {
              sub_217A62DDC(319, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
              if (v6 <= 0x3F)
              {
                sub_217A62DDC(319, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
                if (v7 <= 0x3F)
                {
                  sub_217A62DDC(319, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
                  if (v8 <= 0x3F)
                  {
                    sub_217A62DDC(319, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
                    if (v9 <= 0x3F)
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

unint64_t sub_217C5499C()
{
  result = qword_27CBA2BB8;
  if (!qword_27CBA2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BB8);
  }

  return result;
}

unint64_t sub_217C549F4()
{
  result = qword_2811C23B8;
  if (!qword_2811C23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23B8);
  }

  return result;
}

unint64_t sub_217C54A4C()
{
  result = qword_2811C23C0;
  if (!qword_2811C23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23C0);
  }

  return result;
}

uint64_t sub_217C54AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

NewsAnalytics::ScrollEndData __swiftcall ScrollEndData.init(scrollYPosition:scrollVelocity:)(Swift::Float scrollYPosition, Swift::Float scrollVelocity)
{
  *v2 = scrollYPosition;
  v2[1] = scrollVelocity;
  result.scrollVelocity = scrollVelocity;
  result.scrollYPosition = scrollYPosition;
  return result;
}

uint64_t sub_217C54E48()
{
  if (*v0)
  {
    result = 0x65566C6C6F726373;
  }

  else
  {
    result = 0x50596C6C6F726373;
  }

  *v0;
  return result;
}

uint64_t sub_217C54E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65566C6C6F726373 && a2 == 0xEE00797469636F6CLL)
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

uint64_t sub_217C54F88(uint64_t a1)
{
  v2 = sub_217C55174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C54FC4(uint64_t a1)
{
  v2 = sub_217C55174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollEndData.encode(to:)(void *a1)
{
  sub_217C55380(0, &qword_2811BC7B8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14[-v8];
  v11 = *v1;
  v10 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C55174();
  sub_217D89E7C();
  v14[15] = 0;
  sub_217D89C9C();
  if (!v2)
  {
    v14[14] = 1;
    sub_217D89C9C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C55174()
{
  result = qword_2811C71A0;
  if (!qword_2811C71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71A0);
  }

  return result;
}

uint64_t ScrollEndData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C55380(0, &qword_2811BCAD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C55174();
  sub_217D89E5C();
  if (!v2)
  {
    v19 = 0;
    sub_217D89BBC();
    v13 = v12;
    v18 = 1;
    sub_217D89BBC();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C55380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C55174();
    v7 = a3(a1, &type metadata for ScrollEndData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C553E8()
{
  result = qword_2811C7180;
  if (!qword_2811C7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7180);
  }

  return result;
}

unint64_t sub_217C55440()
{
  result = qword_2811C7188;
  if (!qword_2811C7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7188);
  }

  return result;
}

unint64_t sub_217C554E8()
{
  result = qword_27CBA2BC0;
  if (!qword_27CBA2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BC0);
  }

  return result;
}

unint64_t sub_217C55540()
{
  result = qword_2811C7190;
  if (!qword_2811C7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7190);
  }

  return result;
}

unint64_t sub_217C55598()
{
  result = qword_2811C7198;
  if (!qword_2811C7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7198);
  }

  return result;
}

uint64_t sub_217C556B4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2BF8);
  __swift_project_value_buffer(v0, qword_27CBA2BF8);
  return sub_217D8866C();
}

uint64_t WidgetHeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetHeadlineExposureEvent.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 20);
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.widgetData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 20);
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.alternateHeadlineData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 24);
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.alternateHeadlineData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 24);
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 28);
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 28);
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 32);
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 32);
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 36);
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 36);
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 40);
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 40);
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 44);
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 44);
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 48);
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 48);
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 52);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.typeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 56);
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.typeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 56);
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 60);
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C568D8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t WidgetHeadlineExposureEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 60);
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetHeadlineExposureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217A608E0();
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v2, v27);
}

uint64_t WidgetHeadlineExposureEvent.Model.widgetData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WidgetHeadlineExposureEvent.Model.alternateHeadlineData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 28);
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

uint64_t WidgetHeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 40));
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
  return sub_217AF7618(v17, &v16);
}

uint64_t WidgetHeadlineExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WidgetHeadlineExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t sub_217C57300@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 52);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WidgetHeadlineExposureEvent.Model.typeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.locationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.init(eventData:widgetData:alternateHeadlineData:articleData:feedPositionData:inGroupPositionData:groupData:tagData:viewData:timedData:typeData:locationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char *a12, char *a13)
{
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = *(a3 + 1);
  v21 = *a5;
  v22 = *a6;
  v43 = *a8;
  v42 = a8[1];
  v46 = *a10;
  v45 = a10[1];
  v44 = *(a10 + 8);
  v47 = *a12;
  v48 = *a13;
  v23 = sub_217D8899C();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  v25 = (a9 + v24[5]);
  *v25 = v17;
  v25[1] = v18;
  v26 = a9 + v24[6];
  *v26 = v19;
  *(v26 + 4) = v20;
  v27 = a9 + v24[7];
  v28 = *(a4 + 48);
  *(v27 + 32) = *(a4 + 32);
  *(v27 + 48) = v28;
  v29 = *(a4 + 16);
  *v27 = *a4;
  *(v27 + 16) = v29;
  *(v27 + 127) = *(a4 + 127);
  v30 = *(a4 + 112);
  *(v27 + 96) = *(a4 + 96);
  *(v27 + 112) = v30;
  v31 = *(a4 + 80);
  *(v27 + 64) = *(a4 + 64);
  *(v27 + 80) = v31;
  *(a9 + v24[8]) = v21;
  *(a9 + v24[9]) = v22;
  v32 = (a9 + v24[10]);
  v33 = a7[7];
  v32[6] = a7[6];
  v32[7] = v33;
  v32[8] = a7[8];
  v34 = a7[3];
  v32[2] = a7[2];
  v32[3] = v34;
  v35 = a7[5];
  v32[4] = a7[4];
  v32[5] = v35;
  v36 = a7[1];
  *v32 = *a7;
  v32[1] = v36;
  v37 = (a9 + v24[11]);
  *v37 = v43;
  v37[1] = v42;
  v38 = a9 + v24[12];
  *v38 = v46;
  *(v38 + 8) = v45;
  *(v38 + 16) = v44;
  v39 = v24[13];
  v40 = sub_217D889CC();
  result = (*(*(v40 - 8) + 32))(a9 + v39, a11, v40);
  *(a9 + v24[14]) = v47;
  *(a9 + v24[15]) = v48;
  return result;
}

uint64_t sub_217C575F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x74614464656D6974;
    v7 = 0x6174614465707974;
    if (a1 != 10)
    {
      v7 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74614470756F7267;
    v9 = 0x61746144676174;
    if (a1 != 7)
    {
      v9 = 0x6174614477656976;
    }

    if (a1 != 6)
    {
      v8 = v9;
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
    v2 = 0x44656C6369747261;
    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (a1 == 1)
    {
      v4 = 0x6144746567646977;
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

uint64_t sub_217C5778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C596C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C577B4(uint64_t a1)
{
  v2 = sub_217C57F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C577F0(uint64_t a1)
{
  v2 = sub_217C57F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetHeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C588EC(0, &qword_27CBA2C20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C57F0C();
  sub_217D89E7C();
  LOBYTE(v58) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v58 = *v13;
    *(&v58 + 1) = v14;
    LOBYTE(v49) = 1;
    sub_217AF1654();

    sub_217D89C3C();

    v15 = (v3 + v12[6]);
    v16 = *v15;
    LODWORD(v15) = *(v15 + 1);
    v88 = v16;
    v89 = v15;
    v87 = 2;
    sub_217BF35D0();
    sub_217D89CAC();
    v17 = v3 + v12[7];
    v18 = *(v17 + 96);
    v19 = *(v17 + 64);
    v84 = *(v17 + 80);
    v85 = v18;
    v20 = *(v17 + 96);
    *v86 = *(v17 + 112);
    v21 = *(v17 + 16);
    v22 = *(v17 + 48);
    v81 = *(v17 + 32);
    v82 = v22;
    v23 = *(v17 + 48);
    v83 = *(v17 + 64);
    v24 = *(v17 + 16);
    v80[0] = *v17;
    v80[1] = v24;
    v77 = v84;
    v78 = v20;
    v79[0] = *(v17 + 112);
    v74 = v81;
    v75 = v23;
    v76 = v19;
    *&v86[15] = *(v17 + 127);
    *(v79 + 15) = *(v17 + 127);
    v72 = v80[0];
    v73 = v21;
    v71 = 3;
    sub_217AD1630(v80, &v58);
    sub_217ACF52C();
    sub_217D89CAC();
    v69[5] = v77;
    v69[6] = v78;
    *v70 = v79[0];
    *&v70[15] = *(v79 + 15);
    v69[2] = v74;
    v69[3] = v75;
    v69[4] = v76;
    v69[0] = v72;
    v69[1] = v73;
    sub_217AD2864(v69);
    LODWORD(v58) = *(v3 + v12[8]);
    LOBYTE(v49) = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v68 = *(v3 + v12[9]);
    v67 = 5;
    sub_217B4FFFC();
    sub_217D89CAC();
    v25 = (v3 + v12[10]);
    v26 = v25[6];
    v27 = v25[4];
    v63 = v25[5];
    v64 = v26;
    v28 = v25[6];
    v29 = v25[8];
    v65 = v25[7];
    v66 = v29;
    v30 = v25[2];
    v31 = *v25;
    v59 = v25[1];
    v60 = v30;
    v32 = v25[2];
    v33 = v25[4];
    v61 = v25[3];
    v62 = v33;
    v34 = *v25;
    v55 = v28;
    v56 = v65;
    v57 = v25[8];
    v58 = v34;
    v51 = v32;
    v52 = v61;
    v53 = v27;
    v54 = v63;
    v49 = v31;
    v50 = v59;
    v48 = 6;
    sub_217AF7618(&v58, v47);
    sub_217A5D3B4();
    sub_217D89CAC();
    v47[7] = v56;
    v47[8] = v57;
    v47[2] = v51;
    v47[3] = v52;
    v47[5] = v54;
    v47[6] = v55;
    v47[4] = v53;
    v47[0] = v49;
    v47[1] = v50;
    sub_217AF8104(v47);
    v36 = (v3 + v12[11]);
    v37 = v36[1];
    v43 = *v36;
    v44 = v37;
    v46 = 7;
    sub_217AF6B14();

    sub_217D89CAC();

    v38 = (v3 + v12[12]);
    v39 = *v38;
    v40 = v38[1];
    LOWORD(v38) = *(v38 + 8);
    v43 = v39;
    v44 = v40;
    v45 = v38;
    v46 = 8;
    sub_217A5E790();

    sub_217D89CAC();

    v41 = v12[13];
    LOBYTE(v43) = 9;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    LOBYTE(v43) = *(v3 + v12[14]);
    v46 = 10;
    sub_217B0B798();
    sub_217D89CAC();
    LOBYTE(v43) = *(v3 + v12[15]);
    v46 = 11;
    sub_217B0BA6C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C57F0C()
{
  result = qword_27CBA2C28;
  if (!qword_27CBA2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C28);
  }

  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_217D889CC();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C588EC(0, &qword_27CBA2C30, MEMORY[0x277D844C8]);
  v52 = v9;
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C57F0C();
  v53 = v12;
  v18 = v77;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v50;
  v77 = a1;
  v43 = v13;
  v44 = v16;
  LOBYTE(v68) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v51;
  sub_217D89BCC();
  v21 = v44;
  (*(v49 + 32))(v44, v20, v6);
  LOBYTE(v60) = 1;
  sub_217AF15FC();
  sub_217D89B5C();
  v42 = v6;
  v51 = 0;
  v22 = v43;
  *&v21[v43[5]] = v68;
  LOBYTE(v60) = 2;
  sub_217BF4018();
  sub_217D89BCC();
  v23 = DWORD1(v68);
  v24 = &v21[v22[6]];
  *v24 = v68;
  *(v24 + 1) = v23;
  v59 = 3;
  sub_217ACF4D8();
  sub_217D89BCC();
  v25 = &v21[v22[7]];
  v26 = *v67;
  *(v25 + 6) = v66;
  *(v25 + 7) = v26;
  *(v25 + 127) = *&v67[15];
  v27 = v63;
  *(v25 + 2) = v62;
  *(v25 + 3) = v27;
  v28 = v65;
  *(v25 + 4) = v64;
  *(v25 + 5) = v28;
  v29 = v61;
  *v25 = v60;
  *(v25 + 1) = v29;
  LOBYTE(v54) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v21[v22[8]] = v68;
  LOBYTE(v54) = 5;
  sub_217B4FFA8();
  sub_217D89BCC();
  *&v21[v22[9]] = v68;
  v58 = 6;
  sub_217A5D308();
  sub_217D89BCC();
  v30 = &v21[v22[10]];
  v31 = v75;
  *(v30 + 6) = v74;
  *(v30 + 7) = v31;
  *(v30 + 8) = v76;
  v32 = v71;
  *(v30 + 2) = v70;
  *(v30 + 3) = v32;
  v33 = v73;
  *(v30 + 4) = v72;
  *(v30 + 5) = v33;
  v34 = v69;
  *v30 = v68;
  *(v30 + 1) = v34;
  v57 = 7;
  sub_217AF6AC0();
  sub_217D89BCC();
  v35 = v55;
  v36 = &v21[v22[11]];
  *v36 = v54;
  *(v36 + 1) = v35;
  v57 = 8;
  sub_217A5E738();
  sub_217D89BCC();
  v37 = v55;
  v38 = v56;
  v39 = &v21[v22[12]];
  *v39 = v54;
  *(v39 + 1) = v37;
  *(v39 + 8) = v38;
  LOBYTE(v54) = 9;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v47 + 32))(&v44[v43[13]], v46, v48);
  v57 = 10;
  sub_217B0B744();
  sub_217D89BCC();
  v44[v43[14]] = v54;
  v57 = 11;
  sub_217B0BA18();
  sub_217D89BCC();
  (*(v19 + 8))(v53, v52);
  v40 = v44;
  v44[v43[15]] = v54;
  sub_217C58950(v40, v45);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return sub_217C589B4(v40);
}

void sub_217C588EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C57F0C();
    v7 = a3(a1, &type metadata for WidgetHeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C58950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C589B4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C58AE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217A608E0();
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v4, v28);
}

void sub_217C59094()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C568D8(319, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
    if (v1 <= 0x3F)
    {
      sub_217C568D8(319, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
      if (v2 <= 0x3F)
      {
        sub_217C568D8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
        if (v3 <= 0x3F)
        {
          sub_217C568D8(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217C568D8(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217C568D8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
              if (v6 <= 0x3F)
              {
                sub_217C568D8(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
                if (v7 <= 0x3F)
                {
                  sub_217C568D8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                  if (v8 <= 0x3F)
                  {
                    sub_217A608E0();
                    if (v9 <= 0x3F)
                    {
                      sub_217C568D8(319, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
                      if (v10 <= 0x3F)
                      {
                        sub_217C568D8(319, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
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

void sub_217C59460()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217C5955C();
    if (v1 <= 0x3F)
    {
      sub_217D889CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C5955C()
{
  if (!qword_27CBA2C58)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2C58);
    }
  }
}

unint64_t sub_217C595C0()
{
  result = qword_27CBA2C60;
  if (!qword_27CBA2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C60);
  }

  return result;
}

unint64_t sub_217C59618()
{
  result = qword_27CBA2C68;
  if (!qword_27CBA2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C68);
  }

  return result;
}

unint64_t sub_217C59670()
{
  result = qword_27CBA2C70;
  if (!qword_27CBA2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C70);
  }

  return result;
}

uint64_t sub_217C596C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144746567646977 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD03E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
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

NewsAnalytics::ContentEnvironmentType_optional __swiftcall ContentEnvironmentType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ContentEnvironmentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E6967617473;
  v4 = 24945;
  if (v1 != 3)
  {
    v4 = 1953719668;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69746375646F7270;
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

unint64_t sub_217C59BA8()
{
  result = qword_27CBA2C78;
  if (!qword_27CBA2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C78);
  }

  return result;
}

uint64_t sub_217C59BFC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C59CD0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C59D90()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C59FA4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2CB0);
  __swift_project_value_buffer(v0, qword_27CBA2CB0);
  return sub_217D8866C();
}

uint64_t JourneyMessageLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 20);
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 20);
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 24);
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 24);
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 28);
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 28);
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 32);
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 32);
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 36);
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 36);
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 40);
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 40);
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageLinkTapEvent(0);
  v5 = v4[5];
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v14, v17);
}

uint64_t JourneyMessageLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 20));
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

uint64_t JourneyMessageLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t JourneyMessageLinkTapEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageLinkTapEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageLinkTapEvent.Model.init(eventData:userBundleSubscriptionContextData:urlData:dialogStyleData:placementData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v28 = *a3;
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = *a4;
  v15 = *a5;
  v16 = a5[1];
  v17 = *a6;
  v30 = a7[1];
  v31 = *a7;
  v29 = *(a7 + 16);
  v18 = sub_217D8899C();
  v26 = *(a5 + 2);
  v27 = *(a5 + 1);
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = *(a2 + 48);
  v22 = a8 + v19[6];
  *v22 = v28;
  *(v22 + 16) = v12;
  *(v22 + 24) = v13;
  *(a8 + v19[7]) = v14;
  v23 = a8 + v19[8];
  *v23 = v15;
  *(v23 + 8) = v16;
  result = v27;
  *(v23 + 16) = v27;
  *(v23 + 32) = v26;
  *(a8 + v19[9]) = v17;
  v25 = a8 + v19[10];
  *v25 = v31;
  *(v25 + 8) = v30;
  *(v25 + 16) = v29;
  return result;
}

unint64_t sub_217C5B1D4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  if (v1 == 5)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x7453676F6C616964;
  if (v1 != 3)
  {
    v4 = 0x6E656D6563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0x617461446C7275;
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

uint64_t sub_217C5B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C5C8E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C5B304(uint64_t a1)
{
  v2 = sub_217C5B8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5B340(uint64_t a1)
{
  v2 = sub_217C5B8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C5BEF4(0, &qword_27CBA2CC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5B8A8();
  sub_217D89E7C();
  v48 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v45 = v13[1];
    v46 = v14;
    v44 = v15;
    v47 = *(v13 + 48);
    v40 = v16;
    v17 = v13[2];
    v41 = v45;
    v42 = v17;
    v43 = *(v13 + 48);
    v39 = 1;
    sub_217ACC004(&v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v18 = (v3 + v12[6]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v31 = *v18;
    v32 = v19;
    v33 = v20;
    *&v34 = v21;
    v36 = 2;
    sub_217B6AB1C();

    sub_217D89CAC();

    LOBYTE(v31) = *(v3 + v12[7]);
    v36 = 3;
    sub_217AFEA44();
    sub_217D89CAC();
    v23 = (v3 + v12[8]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[5];
    v31 = *v23;
    v32 = v24;
    v33 = v25;
    v34 = *(v23 + 3);
    v35 = v26;
    v36 = 4;
    sub_217AFEC9C();

    sub_217D89CAC();

    LOBYTE(v31) = *(v3 + v12[9]);
    v36 = 5;
    sub_217AFF0A4();
    sub_217D89C3C();
    v27 = (v3 + v12[10]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v27) = *(v27 + 16);
    v31 = v28;
    v32 = v29;
    LOBYTE(v33) = v27;
    v36 = 6;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C5B8A8()
{
  result = qword_27CBA2CD0;
  if (!qword_27CBA2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2CD0);
  }

  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_217D8899C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C5BEF4(0, &qword_27CBA2CD8, MEMORY[0x277D844C8]);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217C5B8A8();
  v34 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v18 = v32;
  LOBYTE(v39) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v33;
  sub_217D89BCC();
  (*(v31 + 32))(v15, v7, v4);
  v44 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v15[v12[5]];
  v21 = v40;
  *v20 = v39;
  *(v20 + 1) = v21;
  *(v20 + 2) = v41;
  v20[48] = v42;
  v43 = 2;
  sub_217B6AAC8();
  sub_217D89BCC();
  v22 = *(&v36 + 1);
  v23 = &v15[v12[6]];
  *v23 = v36;
  *(v23 + 1) = v22;
  *(v23 + 1) = v37;
  v43 = 3;
  sub_217AFE9F0();
  sub_217D89BCC();
  v15[v12[7]] = v36;
  v43 = 4;
  sub_217AFEC48();
  sub_217D89BCC();
  v24 = *(&v36 + 1);
  v25 = &v15[v12[8]];
  *v25 = v36;
  *(v25 + 1) = v24;
  v26 = v38;
  *(v25 + 1) = v37;
  *(v25 + 2) = v26;
  v43 = 5;
  sub_217AFF050();
  sub_217D89B5C();
  v15[v12[9]] = v36;
  v43 = 6;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v18 + 8))(v34, v19);
  v27 = v37;
  v28 = &v15[v12[10]];
  *v28 = v36;
  v28[16] = v27;
  sub_217C5BF58(v15, v30);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_217C5BFBC(v15);
}

void sub_217C5BEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5B8A8();
    v7 = a3(a1, &type metadata for JourneyMessageLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5BF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C5BFBC(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C5C0F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v15, v18);
}

void sub_217C5C474()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62E58(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62E58(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
      if (v2 <= 0x3F)
      {
        sub_217A62E58(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
        if (v3 <= 0x3F)
        {
          sub_217A62E58(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
          if (v4 <= 0x3F)
          {
            sub_217A62E58(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
            if (v5 <= 0x3F)
            {
              sub_217A62E58(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
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

void sub_217C5C6E8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F100);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F108);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C5C7E4()
{
  result = qword_27CBA2D00;
  if (!qword_27CBA2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D00);
  }

  return result;
}

unint64_t sub_217C5C83C()
{
  result = qword_27CBA2D08;
  if (!qword_27CBA2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D08);
  }

  return result;
}

unint64_t sub_217C5C894()
{
  result = qword_27CBA2D10;
  if (!qword_27CBA2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D10);
  }

  return result;
}

uint64_t sub_217C5C8E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
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

__n128 UserEventStorageData.init(onDiskSize:prunedSessionCount:prunedSessionSize:totalSessionsCount:oldestSessionAge:newestSessionAge:aggregateStoreGenerationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a17 + 80);
  v19 = *(a17 + 88);
  v20 = *(a18 + 80);
  v21 = *(a18 + 88);
  v22 = *(a18 + 90);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16;
  v23 = *(a17 + 16);
  *(a9 + 136) = *a17;
  *(a9 + 152) = v23;
  v24 = *(a17 + 48);
  *(a9 + 168) = *(a17 + 32);
  *(a9 + 184) = v24;
  *(a9 + 200) = *(a17 + 64);
  *(a9 + 216) = v18;
  *(a9 + 224) = v19;
  v25 = *(a18 + 16);
  *(a9 + 232) = *a18;
  *(a9 + 248) = v25;
  v26 = *(a18 + 48);
  *(a9 + 264) = *(a18 + 32);
  *(a9 + 280) = v26;
  result = *(a18 + 64);
  *(a9 + 296) = result;
  *(a9 + 312) = v20;
  *(a9 + 320) = v21;
  *(a9 + 322) = v22;
  return result;
}

uint64_t UserEventStorageData.onDiskSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t UserEventStorageData.onDiskSize.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 UserEventStorageData.eventCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 200);
  *(a1 + 73) = *(v1 + 209);
  result = *(v1 + 136);
  v4 = *(v1 + 152);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 UserEventStorageData.eventCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 168) = *(a1 + 32);
  *(v1 + 184) = v2;
  *(v1 + 200) = *(a1 + 64);
  *(v1 + 209) = *(a1 + 73);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v4;
  return result;
}

__n128 UserEventStorageData.aggregateData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  *a1 = *(v1 + 232);
  *(a1 + 16) = v2;
  v3 = *(v1 + 280);
  *(a1 + 32) = *(v1 + 264);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 296);
  result = *(v1 + 307);
  *(a1 + 75) = result;
  return result;
}

__n128 UserEventStorageData.aggregateData.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 264) = *(a1 + 32);
  *(v1 + 280) = v2;
  *(v1 + 296) = *(a1 + 64);
  *(v1 + 307) = *(a1 + 75);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 232) = *a1;
  *(v1 + 248) = v4;
  return result;
}

unint64_t sub_217C5D01C(char a1)
{
  result = 0x69536B7369446E6FLL;
  switch(a1)
  {
    case 1:
    case 3:
    case 11:
      result = 0xD000000000000012;
      break;
    case 2:
    case 8:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 14:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000002CLL;
      break;
    case 16:
      result = 0x756F43746E657665;
      break;
    case 17:
      result = 0x7461676572676761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C5D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C5E100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C5D268(uint64_t a1)
{
  v2 = sub_217C5D7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5D2A4(uint64_t a1)
{
  v2 = sub_217C5D7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventStorageData.encode(to:)(void *a1)
{
  sub_217C5DE8C(0, &qword_2811BC638, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v26 - v7;
  v9 = *v1;
  LODWORD(v28) = *(v1 + 8);
  v10 = v1[2];
  v26[11] = v1[3];
  v27 = v10;
  v11 = v1[4];
  v26[9] = v1[5];
  v26[10] = v11;
  v12 = v1[6];
  v26[7] = v1[7];
  v26[8] = v12;
  v13 = v1[8];
  v15 = v1[9];
  v14 = v1[10];
  v16 = v1[12];
  v26[3] = v1[11];
  v26[4] = v16;
  v17 = v1[14];
  v26[5] = v1[13];
  v26[6] = v13;
  v18 = v1[16];
  v26[1] = v1[15];
  v26[2] = v17;
  v26[0] = v18;
  v19 = *(v1 + 23);
  v37 = *(v1 + 21);
  v38 = v19;
  v39[0] = *(v1 + 25);
  *(v39 + 9) = *(v1 + 209);
  v20 = *(v1 + 19);
  v35 = *(v1 + 17);
  v36 = v20;
  v21 = *(v1 + 35);
  v42 = *(v1 + 33);
  v43 = v21;
  v44[0] = *(v1 + 37);
  *(v44 + 11) = *(v1 + 307);
  v22 = *(v1 + 31);
  v40 = *(v1 + 29);
  v41 = v22;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5D7F4();
  sub_217D89E7C();
  LOBYTE(v29) = 0;
  v24 = v45;
  sub_217D89C5C();
  if (v24)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v45 = v5;
  LOBYTE(v29) = 1;
  sub_217D89CCC();
  LOBYTE(v29) = 2;
  sub_217D89CCC();
  LOBYTE(v29) = 3;
  sub_217D89CCC();
  LOBYTE(v29) = 4;
  sub_217D89CCC();
  LOBYTE(v29) = 5;
  sub_217D89CCC();
  LOBYTE(v29) = 6;
  sub_217D89CCC();
  LOBYTE(v29) = 7;
  sub_217D89CCC();
  LOBYTE(v29) = 8;
  sub_217D89C8C();
  LOBYTE(v29) = 9;
  v27 = v8;
  v28 = v4;
  sub_217D89C8C();
  LOBYTE(v29) = 10;
  sub_217D89CCC();
  LOBYTE(v29) = 11;
  sub_217D89CCC();
  LOBYTE(v29) = 12;
  sub_217D89CCC();
  LOBYTE(v29) = 13;
  sub_217D89CCC();
  LOBYTE(v29) = 14;
  sub_217D89CCC();
  LOBYTE(v29) = 15;
  sub_217D89CCC();
  v31 = v37;
  v32 = v38;
  *v33 = v39[0];
  *&v33[9] = *(v39 + 9);
  v29 = v35;
  v30 = v36;
  v34 = 16;
  sub_217B6DDD0();
  sub_217D89C3C();
  v31 = v42;
  v32 = v43;
  *v33 = v44[0];
  *&v33[11] = *(v44 + 11);
  v29 = v40;
  v30 = v41;
  v34 = 17;
  sub_217B31EB8();
  sub_217D89C3C();
  return (*(v45 + 8))(v27, v28);
}

unint64_t sub_217C5D7F4()
{
  result = qword_2811C1B88;
  if (!qword_2811C1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B88);
  }

  return result;
}

uint64_t UserEventStorageData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C5DE8C(0, &qword_2811BC9D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5D7F4();
  sub_217D89E5C();
  if (!v2)
  {
    LOBYTE(v47) = 0;
    v12 = sub_217D89B7C();
    v64 = v13 & 1;
    LOBYTE(v47) = 1;
    v14 = sub_217D89BEC();
    LOBYTE(v47) = 2;
    v65 = sub_217D89BEC();
    LOBYTE(v47) = 3;
    v45 = sub_217D89BEC();
    LOBYTE(v47) = 4;
    v44 = sub_217D89BEC();
    LOBYTE(v47) = 5;
    v43 = sub_217D89BEC();
    LOBYTE(v47) = 6;
    v42 = sub_217D89BEC();
    LOBYTE(v47) = 7;
    v41 = sub_217D89BEC();
    LOBYTE(v47) = 8;
    sub_217D89BAC();
    v17 = v16;
    LOBYTE(v47) = 9;
    sub_217D89BAC();
    v19 = v18;
    LOBYTE(v47) = 10;
    v40 = sub_217D89BEC();
    LOBYTE(v47) = 11;
    v39 = sub_217D89BEC();
    LOBYTE(v47) = 12;
    v38 = sub_217D89BEC();
    LOBYTE(v47) = 13;
    v37 = sub_217D89BEC();
    LOBYTE(v47) = 14;
    v36 = sub_217D89BEC();
    LOBYTE(v47) = 15;
    v35 = sub_217D89BEC();
    v55 = 16;
    sub_217B6DD78();
    sub_217D89B5C();
    v33 = v57;
    v34 = v56;
    v31 = v59;
    v32 = v58;
    v30 = v60;
    v29 = v61;
    v28 = v62;
    HIDWORD(v27) = v63;
    v46 = 17;
    sub_217B31E60();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v64;
    *a2 = v12;
    *(a2 + 8) = v23;
    v24 = v65;
    *(a2 + 16) = v14;
    *(a2 + 24) = v24;
    *(a2 + 32) = v45;
    *(a2 + 40) = v44;
    *(a2 + 48) = v43;
    *(a2 + 56) = v42;
    *(a2 + 64) = v41;
    *(a2 + 72) = v17;
    *(a2 + 80) = v19;
    *(a2 + 88) = v40;
    *(a2 + 96) = v39;
    *(a2 + 104) = v38;
    *(a2 + 112) = v37;
    *(a2 + 120) = v36;
    *(a2 + 128) = v35;
    *(a2 + 152) = v33;
    *(a2 + 136) = v34;
    *(a2 + 184) = v31;
    *(a2 + 168) = v32;
    *(a2 + 200) = v30;
    *(a2 + 208) = v29;
    *(a2 + 216) = v28;
    *(a2 + 224) = BYTE4(v27);
    v25 = v48;
    *(a2 + 232) = v47;
    *(a2 + 248) = v25;
    v26 = v50;
    *(a2 + 264) = v49;
    *(a2 + 280) = v26;
    *(a2 + 296) = v51;
    *(a2 + 312) = v20;
    *(a2 + 320) = v21;
    *(a2 + 322) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5DE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5D7F4();
    v7 = a3(a1, &type metadata for UserEventStorageData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5DF30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 323))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217C5DF50(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 322) = 0;
    *(result + 320) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 323) = v3;
  return result;
}

unint64_t sub_217C5DFFC()
{
  result = qword_27CBA2D18;
  if (!qword_27CBA2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D18);
  }

  return result;
}

unint64_t sub_217C5E054()
{
  result = qword_2811C1B78;
  if (!qword_2811C1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B78);
  }

  return result;
}

unint64_t sub_217C5E0AC()
{
  result = qword_2811C1B80;
  if (!qword_2811C1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B80);
  }

  return result;
}

uint64_t sub_217C5E100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536B7369446E6FLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD12B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD12D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD12F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1310 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1330 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD1350 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1370 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1390 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD13B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD13D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD13F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000217DD1410 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000217DD1440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000217DD1470 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000217DD14A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEB0000000073746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xED00006174614465)
  {

    return 17;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

NewsAnalytics::MediaUserAction_optional __swiftcall MediaUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaUserAction.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 2036427888;
    if (v1 != 2)
    {
      v7 = 0x6573756170;
    }

    if (*v0)
    {
      v6 = 0x616C506F54706174;
    }

    if (*v0 <= 1u)
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
    v2 = 0x6168436465657073;
    v3 = 0x636172547478656ELL;
    if (v1 != 7)
    {
      v3 = 0x6B63614270696B73;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656D75736572;
    if (v1 != 4)
    {
      v4 = 0x64656C696166;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_217C5E818()
{
  result = qword_27CBA2D20;
  if (!qword_27CBA2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D20);
  }

  return result;
}

uint64_t sub_217C5E86C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83540();
  return sub_217D89E3C();
}

uint64_t sub_217C5E8BC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83540();
  return sub_217D89E3C();
}

uint64_t sub_217C5E90C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaUserAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C5E9F4()
{
  result = qword_27CBA2D28;
  if (!qword_27CBA2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D28);
  }

  return result;
}

uint64_t MediaData.mediaID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MediaData.mediaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MediaData.mediaDuration.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

_BYTE *MediaData.init(mediaType:mediaID:mediaDuration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_217C5EB7C()
{
  v1 = 0x4449616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x727544616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_217C5EBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C5F3FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C5EC10(uint64_t a1)
{
  v2 = sub_217C5EE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5EC4C(uint64_t a1)
{
  v2 = sub_217C5EE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaData.encode(to:)(void *a1)
{
  sub_217C5F140(0, &qword_2811BC4D0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v11;
  v16 = *(v1 + 6);
  HIDWORD(v15) = v1[28];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5EE58();
  sub_217D89E7C();
  v23 = v10;
  v22 = 0;
  sub_217C5EEAC();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = BYTE4(v15);
    v21 = 1;
    sub_217D89C6C();
    v20 = 2;
    v19 = v13;
    sub_217D89C4C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C5EE58()
{
  result = qword_2811BD0F0;
  if (!qword_2811BD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0F0);
  }

  return result;
}

unint64_t sub_217C5EEAC()
{
  result = qword_2811BD0C8;
  if (!qword_2811BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0C8);
  }

  return result;
}

uint64_t MediaData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C5F140(0, &qword_27CBA2D30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5EE58();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_217C5F1A4();
  sub_217D89BCC();
  v12 = v23;
  v21 = 1;
  v13 = sub_217D89B8C();
  v15 = v14;
  v19 = v13;
  v20 = 2;
  v16 = sub_217D89B6C();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 28) = BYTE4(v16) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5F140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5EE58();
    v7 = a3(a1, &type metadata for MediaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C5F1A4()
{
  result = qword_27CBA2D38;
  if (!qword_27CBA2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D38);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_217C5F244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_217C5F28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C5F2F8()
{
  result = qword_27CBA2D40;
  if (!qword_27CBA2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D40);
  }

  return result;
}

unint64_t sub_217C5F350()
{
  result = qword_2811BD0E0;
  if (!qword_2811BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0E0);
  }

  return result;
}

unint64_t sub_217C5F3A8()
{
  result = qword_2811BD0E8;
  if (!qword_2811BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0E8);
  }

  return result;
}

uint64_t sub_217C5F3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449616964656DLL && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544616964656DLL && a2 == 0xED00006E6F697461)
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

uint64_t sub_217C5F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F436465646461 && a2 == 0xEA0000000000746ELL)
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

uint64_t sub_217C5F610(uint64_t a1)
{
  v2 = sub_217C5F7D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5F64C(uint64_t a1)
{
  v2 = sub_217C5F7D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsAddFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217C5F9A4(0, &qword_27CBA2D48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C5F7D0()
{
  result = qword_27CBA2D50;
  if (!qword_27CBA2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D50);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C5F9A4(0, &qword_27CBA2D58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5F9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5F7D0();
    v7 = a3(a1, &type metadata for SportsAddFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5FA28(void *a1)
{
  sub_217C5F9A4(0, &qword_27CBA2D48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C5FB94()
{
  result = qword_27CBA2D60;
  if (!qword_27CBA2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D60);
  }

  return result;
}

unint64_t sub_217C5FBEC()
{
  result = qword_27CBA2D68;
  if (!qword_27CBA2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D68);
  }

  return result;
}

unint64_t sub_217C5FC44()
{
  result = qword_27CBA2D70;
  if (!qword_27CBA2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D70);
  }

  return result;
}

uint64_t DebugData.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C5FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_217C5FDC8(uint64_t a1)
{
  v2 = sub_217C5FF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5FE04(uint64_t a1)
{
  v2 = sub_217C5FF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  sub_217C60164(0, &qword_27CBA2D78, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C5FF8C()
{
  result = qword_27CBA2D80;
  if (!qword_27CBA2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D80);
  }

  return result;
}

uint64_t DebugData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C60164(0, &qword_27CBA2D88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
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

void sub_217C60164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5FF8C();
    v7 = a3(a1, &type metadata for DebugData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C601E0(void *a1)
{
  sub_217C60164(0, &qword_27CBA2D78, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C60340()
{
  result = qword_27CBA2D90;
  if (!qword_27CBA2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D90);
  }

  return result;
}

unint64_t sub_217C60398()
{
  result = qword_27CBA2D98;
  if (!qword_27CBA2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D98);
  }

  return result;
}

unint64_t sub_217C603F0()
{
  result = qword_27CBA2DA0;
  if (!qword_27CBA2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DA0);
  }

  return result;
}

NewsAnalytics::NotificationInterruptionLevel __swiftcall NotificationInterruptionLevel.init(_:)(UNNotificationInterruptionLevel a1)
{
  if (a1 < 4)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

NewsAnalytics::NotificationInterruptionLevel __swiftcall NotificationInterruptionLevel.init(_:)(UNNotificationInterruptionLevel_optional a1)
{
  if (a1.is_nil || a1.value > UNNotificationInterruptionLevelCritical)
  {
    v2 = 0;
  }

  else
  {
    v2 = LOBYTE(a1.value) + 1;
  }

  *v1 = v2;
  return a1.value;
}

NewsAnalytics::BannerAdData __swiftcall BannerAdData.init(isInteractive:isDownloadable:isVideo:)(Swift::Bool isInteractive, Swift::Bool isDownloadable, Swift::Bool isVideo)
{
  *v3 = isInteractive;
  v3[1] = isDownloadable;
  v3[2] = isVideo;
  result.isInteractive = isInteractive;
  return result;
}

uint64_t sub_217C60518()
{
  v1 = 0x6F6C6E776F447369;
  if (*v0 != 1)
  {
    v1 = 0x6F656469567369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617265746E497369;
  }
}

uint64_t sub_217C6058C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C60DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C605B4(uint64_t a1)
{
  v2 = sub_217C607CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C605F0(uint64_t a1)
{
  v2 = sub_217C607CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdData.encode(to:)(void *a1)
{
  sub_217C60A14(0, &qword_2811BC818, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C607CC();
  sub_217D89E7C();
  v18 = 0;
  v12 = v14[1];
  sub_217D89C7C();
  if (!v12)
  {
    v17 = 1;
    sub_217D89C7C();
    v16 = 2;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C607CC()
{
  result = qword_2811C7AF0;
  if (!qword_2811C7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AF0);
  }

  return result;
}

uint64_t BannerAdData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C60A14(0, &qword_27CBA2DA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C607CC();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    v20 = sub_217D89B9C() & 1;
    v17 = 1;
    v19 = sub_217D89B9C() & 1;
    v16 = 2;
    v13 = sub_217D89B9C();
    (*(v7 + 8))(v10, v6);
    v14 = v19;
    *a2 = v20;
    a2[1] = v14;
    a2[2] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C60A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C607CC();
    v7 = a3(a1, &type metadata for BannerAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C60A7C()
{
  result = qword_2811C7AD0;
  if (!qword_2811C7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AD0);
  }

  return result;
}

unint64_t sub_217C60AD4()
{
  result = qword_2811C7AD8;
  if (!qword_2811C7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AD8);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BannerAdData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_217C60C9C()
{
  result = qword_27CBA2DB0;
  if (!qword_27CBA2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DB0);
  }

  return result;
}

unint64_t sub_217C60CF4()
{
  result = qword_2811C7AE0;
  if (!qword_2811C7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AE0);
  }

  return result;
}

unint64_t sub_217C60D4C()
{
  result = qword_2811C7AE8;
  if (!qword_2811C7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AE8);
  }

  return result;
}

uint64_t sub_217C60DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617265746E497369 && a2 == 0xED00006576697463;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F447369 && a2 == 0xEE00656C62616461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000)
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

NewsAnalytics::EventPath_optional __swiftcall EventPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 48;
  switch(v3)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v5 = 1;
      goto LABEL_65;
    case 2:
      v5 = 2;
      goto LABEL_65;
    case 3:
      v5 = 3;
      goto LABEL_65;
    case 4:
      v5 = 4;
      goto LABEL_65;
    case 5:
      v5 = 5;
      goto LABEL_65;
    case 6:
      v5 = 6;
      goto LABEL_65;
    case 7:
      v5 = 7;
      goto LABEL_65;
    case 8:
      v5 = 8;
      goto LABEL_65;
    case 9:
      v5 = 9;
      goto LABEL_65;
    case 10:
      v5 = 10;
      goto LABEL_65;
    case 11:
      v5 = 11;
      goto LABEL_65;
    case 12:
      v5 = 12;
      goto LABEL_65;
    case 13:
      v5 = 13;
      goto LABEL_65;
    case 14:
      v5 = 14;
      goto LABEL_65;
    case 15:
      v5 = 15;
      goto LABEL_65;
    case 16:
      v5 = 16;
      goto LABEL_65;
    case 17:
      v5 = 17;
      goto LABEL_65;
    case 18:
      v5 = 18;
      goto LABEL_65;
    case 19:
      v5 = 19;
      goto LABEL_65;
    case 20:
      v5 = 20;
      goto LABEL_65;
    case 21:
      v5 = 21;
      goto LABEL_65;
    case 22:
      v5 = 22;
      goto LABEL_65;
    case 23:
      v5 = 23;
      goto LABEL_65;
    case 24:
      v5 = 24;
      goto LABEL_65;
    case 25:
      v5 = 25;
      goto LABEL_65;
    case 26:
      v5 = 26;
      goto LABEL_65;
    case 27:
      v5 = 27;
      goto LABEL_65;
    case 28:
      v5 = 28;
      goto LABEL_65;
    case 29:
      v5 = 29;
      goto LABEL_65;
    case 30:
      v5 = 30;
      goto LABEL_65;
    case 31:
      v5 = 31;
      goto LABEL_65;
    case 32:
      v5 = 32;
      goto LABEL_65;
    case 33:
      v5 = 33;
      goto LABEL_65;
    case 34:
      v5 = 34;
      goto LABEL_65;
    case 35:
      v5 = 35;
      goto LABEL_65;
    case 36:
      v5 = 36;
      goto LABEL_65;
    case 37:
      v5 = 37;
      goto LABEL_65;
    case 38:
      v5 = 38;
      goto LABEL_65;
    case 39:
      v5 = 39;
      goto LABEL_65;
    case 40:
      v5 = 40;
      goto LABEL_65;
    case 41:
      v5 = 41;
      goto LABEL_65;
    case 42:
      v5 = 42;
      goto LABEL_65;
    case 43:
      v5 = 43;
      goto LABEL_65;
    case 44:
      v5 = 44;
      goto LABEL_65;
    case 45:
      v5 = 45;
      goto LABEL_65;
    case 46:
      v5 = 46;
      goto LABEL_65;
    case 47:
      v5 = 47;
LABEL_65:
      v6 = v5;
      break;
    case 48:
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    default:
      v6 = 66;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_217C6115C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = EventPath.rawValue.getter();
  v4 = v3;
  if (v2 == EventPath.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217C611FC()
{
  result = qword_27CBA2DB8;
  if (!qword_27CBA2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DB8);
  }

  return result;
}

uint64_t sub_217C61250()
{
  v1 = *v0;
  sub_217D89E1C();
  EventPath.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C612B8()
{
  v2 = *v0;
  EventPath.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C6131C()
{
  v1 = *v0;
  sub_217D89E1C();
  EventPath.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C6138C@<X0>(uint64_t *a1@<X8>)
{
  result = EventPath.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EventPath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBF)
  {
    goto LABEL_17;
  }

  if (a2 + 65 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 65) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 65;
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

      return (*a1 | (v4 << 8)) - 65;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 65;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x42;
  v8 = v6 - 66;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 65) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBF)
  {
    v4 = 0;
  }

  if (a2 > 0xBE)
  {
    v5 = ((a2 - 191) >> 8) + 1;
    *result = a2 + 65;
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
    *result = a2 + 65;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C615B4()
{
  result = qword_27CBA2DC0;
  if (!qword_27CBA2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DC0);
  }

  return result;
}

uint64_t sub_217C61670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD14D0 == a2)
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

uint64_t sub_217C61704(uint64_t a1)
{
  v2 = sub_217C618D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C61740(uint64_t a1)
{
  v2 = sub_217C618D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementOriginationData.encode(to:)(void *a1)
{
  sub_217C61B18(0, &qword_27CBA2DC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C618D8();
  sub_217D89E7C();
  v13 = v9;
  sub_217C6192C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C618D8()
{
  result = qword_27CBA2DD0;
  if (!qword_27CBA2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DD0);
  }

  return result;
}

unint64_t sub_217C6192C()
{
  result = qword_27CBA2DD8;
  if (!qword_27CBA2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DD8);
  }

  return result;
}

uint64_t AudioEngagementOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C61B18(0, &qword_27CBA2DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C618D8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C61B7C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C61B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C618D8();
    v7 = a3(a1, &type metadata for AudioEngagementOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C61B7C()
{
  result = qword_27CBA2DE8;
  if (!qword_27CBA2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DE8);
  }

  return result;
}

unint64_t sub_217C61C2C()
{
  result = qword_27CBA2DF0;
  if (!qword_27CBA2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DF0);
  }

  return result;
}

unint64_t sub_217C61C84()
{
  result = qword_27CBA2DF8;
  if (!qword_27CBA2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DF8);
  }

  return result;
}

unint64_t sub_217C61CDC()
{
  result = qword_27CBA2E00;
  if (!qword_27CBA2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E00);
  }

  return result;
}

uint64_t AdSizeData.init(width:height:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217C61DA0()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_217C61DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

uint64_t sub_217C61EA8(uint64_t a1)
{
  v2 = sub_217C62094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C61EE4(uint64_t a1)
{
  v2 = sub_217C62094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdSizeData.encode(to:)(void *a1)
{
  sub_217C62298(0, &qword_2811BC8B0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C62094();
  sub_217D89E7C();
  v16 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C62094()
{
  result = qword_2811C8018;
  if (!qword_2811C8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8018);
  }

  return result;
}

uint64_t AdSizeData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C62298(0, &qword_27CBA2E08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C62094();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_217D89BDC();
    v16 = 1;
    v14 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C62298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C62094();
    v7 = a3(a1, &type metadata for AdSizeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C62358()
{
  result = qword_27CBA2E10;
  if (!qword_27CBA2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E10);
  }

  return result;
}

unint64_t sub_217C623B0()
{
  result = qword_2811C8008;
  if (!qword_2811C8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8008);
  }

  return result;
}

unint64_t sub_217C62408()
{
  result = qword_2811C8010;
  if (!qword_2811C8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8010);
  }

  return result;
}

unint64_t sub_217C62550()
{
  v1 = 0x776F6C6C6F467369;
  *v0;
  if (*v0)
  {
    v1 = 0x656B636F6C427369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_217C625E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C62EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C62608(uint64_t a1)
{
  v2 = sub_217C6288C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C62644(uint64_t a1)
{
  v2 = sub_217C6288C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserChannelContextData.encode(to:)(void *a1)
{
  sub_217C62BD4(0, &qword_2811BC5E0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v17 = v1[2];
  v18 = v11;
  HIDWORD(v16) = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6288C();
  sub_217D89E7C();
  v24 = 0;
  sub_217D89C7C();
  if (!v2)
  {
    v13 = BYTE4(v16);
    v14 = v17;
    v23 = 1;
    sub_217D89C7C();
    v22 = v14;
    v21 = 2;
    sub_217C628E0();
    sub_217D89CAC();
    v20 = v13;
    v19 = 3;
    sub_217C62934();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C6288C()
{
  result = qword_2811C01F0[0];
  if (!qword_2811C01F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C01F0);
  }

  return result;
}

unint64_t sub_217C628E0()
{
  result = qword_2811C2E20;
  if (!qword_2811C2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E20);
  }

  return result;
}

unint64_t sub_217C62934()
{
  result = qword_2811C2E38;
  if (!qword_2811C2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E38);
  }

  return result;
}

uint64_t UserChannelContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C62BD4(0, &qword_2811BC980, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6288C();
  sub_217D89E5C();
  if (!v2)
  {
    v22 = 0;
    v24 = sub_217D89B9C() & 1;
    v21 = 1;
    v23 = sub_217D89B9C() & 1;
    v19 = 2;
    sub_217C62C38();
    sub_217D89BCC();
    v12 = v20;
    v17 = 3;
    sub_217C62C8C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v18;
    v15 = v23;
    *a2 = v24;
    a2[1] = v15;
    a2[2] = v12;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C62BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C6288C();
    v7 = a3(a1, &type metadata for UserChannelContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C62C38()
{
  result = qword_2811C2E10;
  if (!qword_2811C2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E10);
  }

  return result;
}

unint64_t sub_217C62C8C()
{
  result = qword_2811C2E28;
  if (!qword_2811C2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserChannelContextData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserChannelContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217C62DDC()
{
  result = qword_27CBA2E18;
  if (!qword_27CBA2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E18);
  }

  return result;
}

unint64_t sub_217C62E34()
{
  result = qword_2811C01E0;
  if (!qword_2811C01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01E0);
  }

  return result;
}

unint64_t sub_217C62E8C()
{
  result = qword_2811C01E8;
  if (!qword_2811C01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01E8);
  }

  return result;
}

uint64_t sub_217C62EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C6C6F467369 && a2 == 0xEB00000000676E69;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD14F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1510 == a2)
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

uint64_t sub_217C630A4(uint64_t a1)
{
  sub_217C63318();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D881AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(v16 - v10, a1, v8);
  if (swift_dynamicCast())
  {
    (*(v4 + 8))(v7, v3);
    sub_217C633D4();
    v12 = *(sub_217D87A4C() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217D8D8F0;
    sub_217D87A1C();
  }

  else
  {
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

void sub_217C63318()
{
  if (!qword_2811C8870)
  {
    type metadata accessor for AppSessionStartEvent(255);
    sub_217C6337C();
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8870);
    }
  }
}

unint64_t sub_217C6337C()
{
  result = qword_2811C2300[0];
  if (!qword_2811C2300[0])
  {
    type metadata accessor for AppSessionStartEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2300);
  }

  return result;
}

void sub_217C633D4()
{
  if (!qword_2811BC4C0)
  {
    sub_217D87A4C();
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC4C0);
    }
  }
}

uint64_t sub_217C6342C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA2E20);
  v1 = __swift_project_value_buffer(v0, qword_27CBA2E20);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217C63518()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA2E38);
  v1 = __swift_project_value_buffer(v0, qword_27CBA2E38);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217C635D8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2E50);
  __swift_project_value_buffer(v0, qword_27CBA2E50);
  return sub_217D8866C();
}

uint64_t VideoAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdImpressionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_217A6018C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 44);
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C641FC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t VideoAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 44);
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A6018C();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v16, v19);
}

uint64_t VideoAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217C64788@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 24));
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

uint64_t VideoAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 28);
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

uint64_t VideoAdImpressionEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 VideoAdImpressionEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v12 = a1[1];
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *(a4 + 17);
  v16 = a4[3];
  v17 = a4[4];
  v30 = *a5;
  v29 = *(a5 + 1);
  v27 = *a4;
  v28 = *(a5 + 2);
  v31 = a6[1];
  v32 = *a6;
  v33 = *a7;
  v34 = *a8;
  *a9 = *a1;
  *(a9 + 1) = v12;
  v18 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  v21 = &a9[v18[6]];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 1) = v22;
  result = *(a3 + 32);
  *(v21 + 2) = result;
  v21[48] = *(a3 + 48);
  v24 = &a9[v18[7]];
  *v24 = v27;
  *(v24 + 1) = v13;
  v24[16] = v14;
  v24[17] = v15;
  *(v24 + 3) = v16;
  *(v24 + 4) = v17;
  v25 = &a9[v18[8]];
  *v25 = v30;
  *(v25 + 1) = v29;
  *(v25 + 2) = v28;
  v26 = &a9[v18[9]];
  *v26 = v32;
  *(v26 + 1) = v31;
  a9[v18[10]] = v33;
  a9[v18[11]] = v34;
  return result;
}

uint64_t sub_217C64B5C()
{
  v1 = *v0;
  v2 = 0x6144726573556461;
  v3 = 0x6144646565466461;
  if (v1 != 6)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x4464416F65646976;
  if (v1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_217C64C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C66418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C64CAC(uint64_t a1)
{
  v2 = sub_217C65250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C64CE8(uint64_t a1)
{
  v2 = sub_217C65250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C6594C(0, &qword_27CBA2E68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C65250();
  sub_217D89E7C();
  v12 = v3[1];
  *&v44[0] = *v3;
  *(&v44[0] + 1) = v12;
  LOBYTE(v40) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v13 = type metadata accessor for VideoAdImpressionEvent.Model(0);
    v14 = v13[5];
    v46 = 1;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410);
    sub_217D89CAC();
    v15 = v3 + v13[6];
    v16 = *(v15 + 1);
    v44[0] = *v15;
    v44[1] = v16;
    v18 = *v15;
    v17 = *(v15 + 1);
    v44[2] = *(v15 + 2);
    v45 = v15[48];
    v40 = v18;
    v41 = v17;
    v42 = *(v15 + 2);
    v43 = v15[48];
    v39 = 2;
    sub_217ACC004(v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v20 = v3 + v13[7];
    v21 = *(v20 + 1);
    v22 = v20[16];
    v23 = v20[17];
    v24 = *(v20 + 3);
    v25 = *(v20 + 4);
    v32 = *v20;
    v33 = v21;
    LOBYTE(v34) = v22;
    BYTE1(v34) = v23;
    v35 = v24;
    v36 = v25;
    HIBYTE(v31) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = v3 + v13[8];
    v27 = *(v26 + 1);
    v28 = *(v26 + 2);
    LODWORD(v32) = *v26;
    v33 = v27;
    v34 = v28;
    HIBYTE(v31) = 4;
    sub_217BD4488();

    sub_217D89CAC();

    v29 = (v3 + v13[9]);
    v30 = v29[1];
    v32 = *v29;
    v33 = v30;
    HIBYTE(v31) = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v32) = *(v3 + v13[10]);
    HIBYTE(v31) = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v32) = *(v3 + v13[11]);
    HIBYTE(v31) = 7;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C65250()
{
  result = qword_27CBA2E70;
  if (!qword_27CBA2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E70);
  }

  return result;
}

uint64_t VideoAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_217D8899C();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C6594C(0, &qword_27CBA2E78, MEMORY[0x277D844C8]);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217C65250();
  v44 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v18 = v7;
  v19 = v41;
  v39 = v4;
  v20 = v15;
  LOBYTE(v46) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v21 = *(&v51 + 1);
  *v15 = v51;
  *(v15 + 1) = v21;
  LOBYTE(v51) = 1;
  sub_217A602A0(&qword_2811C8408);
  v22 = v39;
  sub_217D89BCC();
  (*(v19 + 32))(&v15[v12[5]], v18, v22);
  v56 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = &v15[v12[6]];
  v24 = v52;
  *v23 = v51;
  *(v23 + 1) = v24;
  *(v23 + 2) = v53;
  v23[48] = v54;
  v55 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v25 = v42;
  v26 = v47;
  v27 = v48;
  v28 = BYTE1(v48);
  v29 = v49;
  v30 = v50;
  v31 = &v15[v12[7]];
  *v31 = v46;
  *(v31 + 1) = v26;
  v31[16] = v27;
  v31[17] = v28;
  *(v31 + 3) = v29;
  *(v31 + 4) = v30;
  v55 = 4;
  sub_217BD4434();
  sub_217D89BCC();
  v32 = v47;
  v33 = v48;
  v34 = &v15[v12[8]];
  *v34 = v46;
  *(v34 + 1) = v32;
  *(v34 + 2) = v33;
  v55 = 5;
  sub_217B3CE30();
  sub_217D89BCC();
  v35 = v47;
  v36 = &v15[v12[9]];
  *v36 = v46;
  *(v36 + 1) = v35;
  v55 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v15[v12[10]] = v46;
  v55 = 7;
  sub_217B3D50C();
  v37 = v43;
  sub_217D89B5C();
  (*(v25 + 8))(v44, v37);
  *(v20 + v12[11]) = v46;
  sub_217C659B0(v20, v40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_217C65A14(v20);
}

void sub_217C6594C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C65250();
    v7 = a3(a1, &type metadata for VideoAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C659B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C65A14(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C65B48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v17, v20);
}

void sub_217C65F44()
{
  sub_217C641FC(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (v0 <= 0x3F)
  {
    sub_217A6018C();
    if (v1 <= 0x3F)
    {
      sub_217C641FC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217C641FC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217C641FC(319, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
          if (v4 <= 0x3F)
          {
            sub_217C641FC(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
            if (v5 <= 0x3F)
            {
              sub_217C641FC(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
              if (v6 <= 0x3F)
              {
                sub_217C641FC(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
                if (v7 <= 0x3F)
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

void sub_217C66208()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9FD68);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD70);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C66314()
{
  result = qword_27CBA2EA0;
  if (!qword_27CBA2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EA0);
  }

  return result;
}

unint64_t sub_217C6636C()
{
  result = qword_27CBA2EA8;
  if (!qword_27CBA2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EA8);
  }

  return result;
}

unint64_t sub_217C663C4()
{
  result = qword_27CBA2EB0;
  if (!qword_27CBA2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EB0);
  }

  return result;
}

uint64_t sub_217C66418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t sub_217C6679C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0668);
  __swift_project_value_buffer(v0, qword_2811C0668);
  return sub_217D8866C();
}

uint64_t ArticleViewResumeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewResumeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewResumeEvent(0);
  v5 = v4[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t ArticleViewResumeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewResumeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 24));
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

uint64_t ArticleViewResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ArticleViewResumeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 32);
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

uint64_t ArticleViewResumeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 36);
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

__n128 ArticleViewResumeEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:orientationData:articleData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 8);
  v14 = *a4;
  v31 = a6[1];
  v32 = *a6;
  v29 = *(a6 + 17);
  v30 = *(a6 + 16);
  v15 = a6[3];
  v16 = a6[4];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = a7 + v18[6];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = *(a3 + 48);
  *(a7 + v18[7]) = v14;
  v22 = a7 + v18[8];
  v23 = *(a5 + 48);
  *(v22 + 32) = *(a5 + 32);
  *(v22 + 48) = v23;
  v24 = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a5 + 127);
  v25 = *(a5 + 112);
  *(v22 + 96) = *(a5 + 96);
  *(v22 + 112) = v25;
  result = *(a5 + 64);
  v27 = *(a5 + 80);
  *(v22 + 64) = result;
  *(v22 + 80) = v27;
  v28 = a7 + v18[9];
  *v28 = v32;
  *(v28 + 8) = v31;
  *(v28 + 16) = v30;
  *(v28 + 17) = v29;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  return result;
}

uint64_t sub_217C677B0(uint64_t a1)
{
  v2 = sub_217C67CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C677EC(uint64_t a1)
{
  v2 = sub_217C67CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C683E4(0, &qword_27CBA2EB8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C67CDC();
  sub_217D89E7C();
  LOBYTE(v53[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleViewResumeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v72 = v14;
    v73 = v15;
    v74 = v13;
    v71 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v69[0] = *v16;
    v69[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v69[2] = v16[2];
    v70 = *(v16 + 48);
    v65 = v19;
    v66 = v18;
    v67 = v16[2];
    v68 = *(v16 + 48);
    v64 = 2;
    sub_217ACC004(v69, v53);
    sub_217A55B98();
    sub_217D89CAC();
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v63 = v68;
    sub_217ACC69C(v62);
    v61 = *(v3 + v12[7]);
    v60 = 3;
    sub_217A4CF88();
    sub_217D89CAC();
    v20 = v3 + v12[8];
    v21 = *(v20 + 96);
    v22 = *(v20 + 64);
    v57 = *(v20 + 80);
    v58 = v21;
    v23 = *(v20 + 96);
    *v59 = *(v20 + 112);
    v24 = *(v20 + 16);
    v25 = *(v20 + 48);
    v54 = *(v20 + 32);
    v55 = v25;
    v26 = *(v20 + 48);
    v56 = *(v20 + 64);
    v27 = *(v20 + 16);
    v53[0] = *v20;
    v53[1] = v27;
    v50 = v57;
    v51 = v23;
    v52[0] = *(v20 + 112);
    v47 = v54;
    v48 = v26;
    v49 = v22;
    *&v59[15] = *(v20 + 127);
    *(v52 + 15) = *(v20 + 127);
    v45 = v53[0];
    v46 = v24;
    v44 = 4;
    sub_217AD1630(v53, v42);
    sub_217ACF52C();
    sub_217D89CAC();
    v42[6] = v51;
    *v43 = v52[0];
    *&v43[15] = *(v52 + 15);
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v42[5] = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_217AD2864(v42);
    v29 = (v3 + v12[9]);
    v30 = v29[1];
    v31 = *(v29 + 16);
    v32 = *(v29 + 17);
    v33 = v29[3];
    v34 = v29[4];
    v36 = *v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v35[7] = 5;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C67CDC()
{
  result = qword_27CBA2EC0;
  if (!qword_27CBA2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EC0);
  }

  return result;
}

uint64_t ArticleViewResumeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_217D8899C();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C683E4(0, &qword_27CBA2EC8, MEMORY[0x277D844C8]);
  v40 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217C67CDC();
  v41 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v18 = v39;
  LOBYTE(v55) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  (*(v38 + 32))(v15, v7, v4);
  LOBYTE(v51) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v19 = *(&v55 + 1);
  v20 = v56;
  v21 = &v15[v12[5]];
  *v21 = v55;
  *(v21 + 1) = v19;
  *(v21 + 8) = v20;
  v50 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v22 = &v15[v12[6]];
  v23 = v52;
  *v22 = v51;
  *(v22 + 1) = v23;
  *(v22 + 2) = v53;
  v22[48] = v54;
  LOBYTE(v43) = 3;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v15[v12[7]] = v55;
  v49 = 4;
  sub_217ACF4D8();
  sub_217D89BCC();
  v24 = &v15[v12[8]];
  v25 = *v62;
  *(v24 + 6) = v61;
  *(v24 + 7) = v25;
  *(v24 + 127) = *&v62[15];
  v26 = v58;
  *(v24 + 2) = v57;
  *(v24 + 3) = v26;
  v27 = v60;
  *(v24 + 4) = v59;
  *(v24 + 5) = v27;
  v28 = v56;
  *v24 = v55;
  *(v24 + 1) = v28;
  v42 = 5;
  sub_217AD07F8();
  sub_217D89BCC();
  (*(v18 + 8))(v41, v40);
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = &v15[v12[9]];
  *v34 = v43;
  *(v34 + 1) = v29;
  v34[16] = v30;
  v34[17] = v31;
  *(v34 + 3) = v32;
  *(v34 + 4) = v33;
  sub_217C68448(v15, v37);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_217C684AC(v15);
}

void sub_217C683E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C67CDC();
    v7 = a3(a1, &type metadata for ArticleViewResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C68448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C684AC(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C68644()
{
  result = qword_27CBA2ED0;
  if (!qword_27CBA2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2ED0);
  }

  return result;
}

unint64_t sub_217C6869C()
{
  result = qword_27CBA2ED8;
  if (!qword_27CBA2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2ED8);
  }

  return result;
}

unint64_t sub_217C686F4()
{
  result = qword_27CBA2EE0;
  if (!qword_27CBA2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EE0);
  }

  return result;
}

uint64_t sub_217C68794(uint64_t a1)
{
  v2 = sub_217C68968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C687D0(uint64_t a1)
{
  v2 = sub_217C68968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadLocationData.encode(to:)(void *a1)
{
  sub_217C68BA8(0, &qword_27CBA2EE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C68968();
  sub_217D89E7C();
  v13 = v9;
  sub_217C689BC();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C68968()
{
  result = qword_27CBA2EF0;
  if (!qword_27CBA2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EF0);
  }

  return result;
}

unint64_t sub_217C689BC()
{
  result = qword_27CBA2EF8;
  if (!qword_27CBA2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EF8);
  }

  return result;
}

uint64_t DownloadLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C68BA8(0, &qword_27CBA2F00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C68968();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C68C0C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C68BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C68968();
    v7 = a3(a1, &type metadata for DownloadLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C68C0C()
{
  result = qword_27CBA2F08;
  if (!qword_27CBA2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F08);
  }

  return result;
}

unint64_t sub_217C68C64()
{
  result = qword_2811C2208;
  if (!qword_2811C2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2208);
  }

  return result;
}

unint64_t sub_217C68CBC()
{
  result = qword_2811C2210;
  if (!qword_2811C2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2210);
  }

  return result;
}

unint64_t sub_217C68D64()
{
  result = qword_27CBA2F10;
  if (!qword_27CBA2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F10);
  }

  return result;
}

unint64_t sub_217C68DBC()
{
  result = qword_27CBA2F18;
  if (!qword_27CBA2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F18);
  }

  return result;
}

unint64_t sub_217C68E14()
{
  result = qword_27CBA2F20;
  if (!qword_27CBA2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F20);
  }

  return result;
}

uint64_t sub_217C68EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
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

uint64_t sub_217C68F4C(uint64_t a1)
{
  v2 = sub_217C69120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C68F88(uint64_t a1)
{
  v2 = sub_217C69120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareOriginationData.encode(to:)(void *a1)
{
  sub_217C69360(0, &qword_27CBA2F28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69120();
  sub_217D89E7C();
  v13 = v9;
  sub_217C69174();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C69120()
{
  result = qword_27CBA2F30;
  if (!qword_27CBA2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F30);
  }

  return result;
}

unint64_t sub_217C69174()
{
  result = qword_27CBA2F38;
  if (!qword_27CBA2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F38);
  }

  return result;
}

uint64_t ShareOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C69360(0, &qword_27CBA2F40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69120();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C693C4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C69360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C69120();
    v7 = a3(a1, &type metadata for ShareOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C693C4()
{
  result = qword_27CBA2F48;
  if (!qword_27CBA2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F48);
  }

  return result;
}

unint64_t sub_217C69474()
{
  result = qword_27CBA2F50;
  if (!qword_27CBA2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F50);
  }

  return result;
}

unint64_t sub_217C694CC()
{
  result = qword_27CBA2F58;
  if (!qword_27CBA2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F58);
  }

  return result;
}

unint64_t sub_217C69524()
{
  result = qword_27CBA2F60;
  if (!qword_27CBA2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F60);
  }

  return result;
}

NewsAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
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

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705565636166;
  if (v1 != 5)
  {
    v3 = 0x6E776F4465636166;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x70616373646E616CLL;
  }

  v4 = 0x7469617274726F70;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_217C69704()
{
  result = qword_27CBA2F68;
  if (!qword_27CBA2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F68);
  }

  return result;
}

uint64_t sub_217C69764()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217C698A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x705565636166;
  if (v2 != 5)
  {
    v6 = 0x6E776F4465636166;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000217DCB8E0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217C69A58()
{
  result = qword_2811C4678;
  if (!qword_2811C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4678);
  }

  return result;
}

uint64_t JourneyMessageFailureReasonData.triggerInactiveErrorDetail.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_217C69B50()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000022;
  }

  *v0;
  return result;
}

uint64_t sub_217C69B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000022 && 0x8000000217DD1570 == a2;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD15A0 == a2)
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

uint64_t sub_217C69C6C(uint64_t a1)
{
  v2 = sub_217C69ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C69CA8(uint64_t a1)
{
  v2 = sub_217C69ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageFailureReasonData.encode(to:)(void *a1)
{
  sub_217C6A250(0, &qword_2811BC550, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[0] = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69ECC();
  sub_217D89E7C();
  v16 = v10;
  v15 = 0;
  sub_217C69F20();
  sub_217D89CAC();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_217C69F74();
    sub_217C6A308(&qword_2811BCD68, sub_217C69FC4);
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C69ECC()
{
  result = qword_2811BDF70[0];
  if (!qword_2811BDF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BDF70);
  }

  return result;
}

unint64_t sub_217C69F20()
{
  result = qword_2811BDC90;
  if (!qword_2811BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC90);
  }

  return result;
}

void sub_217C69F74()
{
  if (!qword_2811BCD70)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD70);
    }
  }
}

unint64_t sub_217C69FC4()
{
  result = qword_2811BD6A0;
  if (!qword_2811BD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6A0);
  }

  return result;
}

uint64_t JourneyMessageFailureReasonData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C6A250(0, &qword_27CBA2F70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69ECC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_217C6A2B4();
  sub_217D89BCC();
  v12 = v18;
  sub_217C69F74();
  v16 = 1;
  sub_217C6A308(&qword_27CBA2F80, sub_217C6A374);
  sub_217D89B5C();
  (*(v7 + 8))(v10, v6);
  v13 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C6A250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C69ECC();
    v7 = a3(a1, &type metadata for JourneyMessageFailureReasonData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C6A2B4()
{
  result = qword_27CBA2F78;
  if (!qword_27CBA2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F78);
  }

  return result;
}

uint64_t sub_217C6A308(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217C69F74();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C6A374()
{
  result = qword_27CBA2F88;
  if (!qword_27CBA2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F88);
  }

  return result;
}

uint64_t sub_217C6A400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_217C6A45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217C6A4D0()
{
  result = qword_27CBA2F90;
  if (!qword_27CBA2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F90);
  }

  return result;
}

unint64_t sub_217C6A528()
{
  result = qword_2811BDF60;
  if (!qword_2811BDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF60);
  }

  return result;
}

unint64_t sub_217C6A580()
{
  result = qword_2811BDF68;
  if (!qword_2811BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF68);
  }

  return result;
}

NewsAnalytics::PaywallType_optional __swiftcall PaywallType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PaywallType.rawValue.getter()
{
  v1 = 1952870259;
  if (*v0 != 1)
  {
    v1 = 1685217640;
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

uint64_t sub_217C6A67C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1952870259;
  if (v2 != 1)
  {
    v3 = 1685217640;
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
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1952870259;
  if (*a2 != 1)
  {
    v6 = 1685217640;
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
    v8 = 0xE400000000000000;
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

unint64_t sub_217C6A764()
{
  result = qword_27CBA2F98;
  if (!qword_27CBA2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F98);
  }

  return result;
}

uint64_t sub_217C6A7B8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C6A84C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C6A8CC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C6A968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1952870259;
  if (v2 != 1)
  {
    v4 = 1685217640;
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
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217C6AA78()
{
  result = qword_2811C7CE8;
  if (!qword_2811C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CE8);
  }

  return result;
}

uint64_t sub_217C6AB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DD15C0 == a2)
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

uint64_t sub_217C6ABC8(uint64_t a1)
{
  v2 = sub_217C6AD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C6AC04(uint64_t a1)
{
  v2 = sub_217C6AD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueViewContextData.encode(to:)(void *a1)
{
  sub_217C6AFDC(0, &qword_2811BC650, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6AD9C();
  sub_217D89E7C();
  v13 = v9;
  sub_217C6ADF0();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C6AD9C()
{
  result = qword_2811C1F08;
  if (!qword_2811C1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F08);
  }

  return result;
}

unint64_t sub_217C6ADF0()
{
  result = qword_2811C5208;
  if (!qword_2811C5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5208);
  }

  return result;
}

uint64_t IssueViewContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C6AFDC(0, &qword_2811BC9E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6AD9C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C6B040();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C6AFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C6AD9C();
    v7 = a3(a1, &type metadata for IssueViewContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C6B040()
{
  result = qword_2811C51F8;
  if (!qword_2811C51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C51F8);
  }

  return result;
}

unint64_t sub_217C6B0F0()
{
  result = qword_27CBA2FA0;
  if (!qword_27CBA2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FA0);
  }

  return result;
}

unint64_t sub_217C6B148()
{
  result = qword_2811C1EF8;
  if (!qword_2811C1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EF8);
  }

  return result;
}

unint64_t sub_217C6B1A0()
{
  result = qword_2811C1F00;
  if (!qword_2811C1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F00);
  }

  return result;
}

uint64_t sub_217C6B2BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C59E0);
  __swift_project_value_buffer(v0, qword_2811C59E0);
  return sub_217D8866C();
}

uint64_t ArticleViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 20);
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 20);
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 28);
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 28);
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 32);
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 32);
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 36);
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 36);
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 40);
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 40);
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 44);
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 44);
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 48);
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 48);
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 52);
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 52);
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 56);
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 56);
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 60);
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 60);
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 64);
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 64);
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 68);
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 68);
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 72);
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 72);
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 76);
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 76);
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 80);
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 80);
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 84);
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 84);
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 88);
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 88);
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 92);
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 92);
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 96);
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 96);
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}