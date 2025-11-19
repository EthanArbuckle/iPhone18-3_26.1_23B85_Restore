uint64_t sub_217BD55F0(unsigned __int8 a1)
{
  v1 = 0x6144726573556461;
  v2 = 0x6144646565466461;
  v3 = 0x4470756F72476461;
  if (a1 != 7)
  {
    v3 = 0x614464616F4C6461;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x4464416F65646976;
  if (a1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0xD000000000000021;
  if (a1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (a1)
  {
    v1 = 0x746144746E657665;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217BD573C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BD70A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BD5764(uint64_t a1)
{
  v2 = sub_217BD5D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD57A0(uint64_t a1)
{
  v2 = sub_217BD5D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BD64E4(0, &qword_27CBA16E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD5D5C();
  sub_217D89E7C();
  v12 = v3[1];
  *&v46[0] = *v3;
  *(&v46[0] + 1) = v12;
  LOBYTE(v42) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v13 = type metadata accessor for VideoAdLoadEvent.Model(0);
    v14 = v13[5];
    v48 = 1;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410);
    sub_217D89CAC();
    v15 = v3 + v13[6];
    v16 = *(v15 + 1);
    v46[0] = *v15;
    v46[1] = v16;
    v18 = *v15;
    v17 = *(v15 + 1);
    v46[2] = *(v15 + 2);
    v47 = v15[48];
    v42 = v18;
    v19 = *(v15 + 2);
    v43 = v17;
    v44 = v19;
    v45 = v15[48];
    v41 = 2;
    sub_217ACC004(v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v21 = v3 + v13[7];
    v22 = *(v21 + 1);
    v23 = v21[16];
    v24 = v21[17];
    v25 = *(v21 + 3);
    v26 = *(v21 + 4);
    *&v35 = *v21;
    *(&v35 + 1) = v22;
    LOBYTE(v36) = v23;
    BYTE1(v36) = v24;
    v37 = v25;
    v38 = v26;
    v34 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v27 = v3 + v13[8];
    v28 = *(v27 + 2);
    v35 = *v27;
    v36 = v28;
    v34 = 4;
    sub_217BD4488();

    sub_217D89C3C();

    v29 = (v3 + v13[9]);
    v30 = v29[1];
    *&v35 = *v29;
    *(&v35 + 1) = v30;
    v34 = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v35) = *(v3 + v13[10]);
    v34 = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v35) = *(v3 + v13[11]);
    v34 = 7;
    sub_217B3D560();
    sub_217D89C3C();
    v31 = v3 + v13[12];
    v32 = *v31;
    LOBYTE(v31) = v31[8];
    *&v35 = v32;
    BYTE8(v35) = v31;
    v34 = 8;
    sub_217BD1AC8();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BD5D5C()
{
  result = qword_27CBA16F0;
  if (!qword_27CBA16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16F0);
  }

  return result;
}

uint64_t VideoAdLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_217D8899C();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BD64E4(0, &qword_27CBA16F8, MEMORY[0x277D844C8]);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD5D5C();
  v44 = v10;
  v16 = v45;
  sub_217D89E5C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = a1;
  v17 = v41;
  v39 = v3;
  LOBYTE(v46) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v18 = *(&v50 + 1);
  v19 = v14;
  *v14 = v50;
  *(v14 + 1) = v18;
  LOBYTE(v50) = 1;
  sub_217A602A0(&qword_2811C8408);
  v20 = v39;
  sub_217D89BCC();
  (*(v17 + 32))(&v14[v11[5]], v6, v20);
  v55 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v14[v11[6]];
  v22 = v51;
  *v21 = v50;
  *(v21 + 1) = v22;
  *(v21 + 2) = v52;
  v21[48] = v53;
  v54 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v23 = v42;
  v24 = *(&v46 + 1);
  v25 = v47;
  v26 = BYTE1(v47);
  v27 = v48;
  v28 = v49;
  v29 = &v14[v11[7]];
  *v29 = v46;
  *(v29 + 1) = v24;
  v29[16] = v25;
  v29[17] = v26;
  *(v29 + 3) = v27;
  *(v29 + 4) = v28;
  v54 = 4;
  sub_217BD4434();
  sub_217D89B5C();
  v30 = v47;
  v31 = &v14[v11[8]];
  *v31 = v46;
  *(v31 + 2) = v30;
  v54 = 5;
  sub_217B3CE30();
  sub_217D89BCC();
  v32 = *(&v46 + 1);
  v33 = &v14[v11[9]];
  *v33 = v46;
  *(v33 + 1) = v32;
  v54 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v14[v11[10]] = v46;
  v54 = 7;
  sub_217B3D50C();
  sub_217D89B5C();
  v14[v11[11]] = v46;
  v54 = 8;
  sub_217BD1A70();
  sub_217D89BCC();
  v34 = v45;
  (*(v23 + 8))(v44, v43);
  v35 = BYTE8(v46);
  v36 = v19 + v11[12];
  *v36 = v46;
  *(v36 + 8) = v35;
  sub_217BD6548(v19, v40);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_217BD65AC(v19);
}

void sub_217BD64E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD5D5C();
    v7 = a3(a1, &type metadata for VideoAdLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD6548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BD65AC(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BD66E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_217BD6B5C()
{
  sub_217BD4B9C(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (v0 <= 0x3F)
  {
    sub_217A6018C();
    if (v1 <= 0x3F)
    {
      sub_217BD4B9C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217BD4B9C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217BD4B9C(319, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
          if (v4 <= 0x3F)
          {
            sub_217BD4B9C(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
            if (v5 <= 0x3F)
            {
              sub_217BD4B9C(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
              if (v6 <= 0x3F)
              {
                sub_217BD4B9C(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
                if (v7 <= 0x3F)
                {
                  sub_217BD4B9C(319, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8);
                  if (v8 <= 0x3F)
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

void sub_217BD6E70()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CBA1720);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD68);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217BD6FA0()
{
  result = qword_27CBA1728;
  if (!qword_27CBA1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1728);
  }

  return result;
}

unint64_t sub_217BD6FF8()
{
  result = qword_27CBA1730;
  if (!qword_27CBA1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1730);
  }

  return result;
}

unint64_t sub_217BD7050()
{
  result = qword_27CBA1738;
  if (!qword_27CBA1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1738);
  }

  return result;
}

uint64_t sub_217BD70A4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614464616F4C6461 && a2 == 0xEA00000000006174)
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

uint64_t sub_217BD73AC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA1740);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1740);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217BD7498()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA1758);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1758);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217BD7558()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1770);
  __swift_project_value_buffer(v0, qword_27CBA1770);
  return sub_217D8866C();
}

uint64_t SponsoredAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SponsoredAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 24);
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 24);
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 28);
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 28);
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 32);
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 32);
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 36);
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 36);
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 40);
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 40);
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 44);
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 44);
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 48);
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 48);
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 52);
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 52);
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 56);
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BD85CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t SponsoredAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 56);
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SponsoredAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t sub_217BD8C9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SponsoredAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SponsoredAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 28));
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

uint64_t SponsoredAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 32));
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

uint64_t SponsoredAdImpressionEvent.Model.adStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double SponsoredAdImpressionEvent.Model.adSizeData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 SponsoredAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:channelData:adStateData:adPlacementData:adSizeData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12)
{
  v18 = *a3;
  v19 = a3[1];
  v20 = *(a5 + 32);
  v21 = *a6;
  v37 = *a7;
  v36 = a7[1];
  v38 = *(a10 + 4);
  v39 = *a10;
  v40 = *a11;
  v41 = *a12;
  v22 = sub_217D8899C();
  v23 = *a8;
  v34 = *(a5 + 16);
  v35 = *a5;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v24 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  v25 = v24[5];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = (a9 + v24[6]);
  *v27 = v18;
  v27[1] = v19;
  v28 = a9 + v24[7];
  v29 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a4 + 32);
  *(v28 + 48) = *(a4 + 48);
  v30 = a9 + v24[8];
  result = v35;
  *v30 = v35;
  *(v30 + 16) = v34;
  *(v30 + 32) = v20;
  *(a9 + v24[9]) = v21;
  v32 = (a9 + v24[10]);
  *v32 = v37;
  v32[1] = v36;
  *(a9 + v24[11]) = v23;
  v33 = a9 + v24[12];
  *v33 = v39;
  *(v33 + 4) = v38;
  *(a9 + v24[13]) = v40;
  *(a9 + v24[14]) = v41;
  return result;
}

uint64_t sub_217BD9164(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6144726573556461;
    v8 = 0xD000000000000021;
    if (a1 != 3)
    {
      v8 = 0x446C656E6E616863;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74614464656D6974;
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
    v1 = 0x697469736F506461;
    v2 = 0x6144646565466461;
    if (a1 != 9)
    {
      v2 = 0x4470756F72476461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4465746174536461;
    v4 = 0x6D6563616C506461;
    if (a1 != 6)
    {
      v4 = 0x6144657A69536461;
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

uint64_t sub_217BD9308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BDB048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BD9330(uint64_t a1)
{
  v2 = sub_217BD99E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD936C(uint64_t a1)
{
  v2 = sub_217BD99E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SponsoredAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BDA32C(0, &qword_27CBA1788, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD99E4();
  sub_217D89E7C();
  LOBYTE(v43[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v43[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v46 = *v14;
    v47 = v15;
    v45 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v16 = (v3 + v12[7]);
    v17 = v16[1];
    v43[0] = *v16;
    v43[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v43[2] = v16[2];
    v44 = *(v16 + 48);
    v39 = v19;
    v40 = v18;
    v41 = v16[2];
    v42 = *(v16 + 48);
    v38 = 3;
    sub_217ACC004(v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
    v20 = (v3 + v12[8]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v31 = *v20;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    HIBYTE(v30) = 4;
    sub_217AD86BC(v31, v21);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v31, v32);
    LOBYTE(v31) = *(v3 + v12[9]);
    HIBYTE(v30) = 5;
    sub_217BB537C();
    sub_217D89CAC();
    v25 = (v3 + v12[10]);
    v26 = v25[1];
    v31 = *v25;
    v32 = v26;
    HIBYTE(v30) = 6;
    sub_217B3CE84();

    sub_217D89CAC();

    v31 = *(v3 + v12[11]);
    HIBYTE(v30) = 7;
    sub_217B95B14();
    sub_217D89CAC();
    v27 = (v3 + v12[12]);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 4);
    LODWORD(v31) = v28;
    BYTE4(v31) = v27;
    HIBYTE(v30) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v31) = *(v3 + v12[13]);
    HIBYTE(v30) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v31) = *(v3 + v12[14]);
    HIBYTE(v30) = 10;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BD99E4()
{
  result = qword_27CBA1790;
  if (!qword_27CBA1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1790);
  }

  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_217D889CC();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BDA32C(0, &qword_27CBA1798, MEMORY[0x277D844C8]);
  v47 = v10;
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - v12;
  v14 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD99E4();
  v46 = v13;
  v19 = v48;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v44;
  v39 = v14;
  v48 = v17;
  LOBYTE(v52) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v45;
  sub_217D89BCC();
  v22 = v48;
  (*(v43 + 32))(v48, v21, v7);
  LOBYTE(v52) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v6;
  sub_217D89BCC();
  v38[1] = v7;
  v45 = 0;
  v24 = v39;
  (*(v41 + 32))(&v22[v39[5]], v23);
  LOBYTE(v49) = 2;
  sub_217A5867C();
  sub_217D89BCC();
  v25 = *(&v52 + 1);
  v26 = &v22[v24[6]];
  *v26 = v52;
  *(v26 + 1) = v25;
  v57 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v27 = &v22[v24[7]];
  v28 = v53;
  *v27 = v52;
  *(v27 + 1) = v28;
  *(v27 + 2) = v54;
  v27[48] = v55;
  v56 = 4;
  sub_217AD07F8();
  sub_217D89B5C();
  v29 = v51;
  v30 = &v22[v39[8]];
  v31 = v50;
  *v30 = v49;
  *(v30 + 1) = v31;
  *(v30 + 4) = v29;
  v56 = 5;
  sub_217BB5324();
  sub_217D89BCC();
  v22[v39[9]] = v49;
  v56 = 6;
  sub_217B3CE30();
  sub_217D89BCC();
  v32 = *(&v49 + 1);
  v33 = &v22[v39[10]];
  *v33 = v49;
  *(v33 + 1) = v32;
  v56 = 7;
  sub_217B95AC0();
  sub_217D89BCC();
  *&v48[v39[11]] = v49;
  v56 = 8;
  sub_217B3D088();
  sub_217D89B5C();
  v34 = BYTE4(v49);
  v35 = &v48[v39[12]];
  *v35 = v49;
  v35[4] = v34;
  v56 = 9;
  sub_217A5BD70();
  sub_217D89B5C();
  v48[v39[13]] = v49;
  v56 = 10;
  sub_217B3D50C();
  sub_217D89B5C();
  (*(v20 + 8))(v46, v47);
  v36 = v48;
  v48[v39[14]] = v49;
  sub_217BDA390(v36, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BDA3F4(v36);
}

void sub_217BDA32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD99E4();
    v7 = a3(a1, &type metadata for SponsoredAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDA390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BDA3F4(uint64_t a1)
{
  v2 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BDA528@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v13, v26);
}

void sub_217BDAA5C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217BD85CC(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
      if (v2 <= 0x3F)
      {
        sub_217BD85CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217BD85CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
          if (v4 <= 0x3F)
          {
            sub_217BD85CC(319, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
            if (v5 <= 0x3F)
            {
              sub_217BD85CC(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
              if (v6 <= 0x3F)
              {
                sub_217BD85CC(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
                if (v7 <= 0x3F)
                {
                  sub_217BD85CC(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
                  if (v8 <= 0x3F)
                  {
                    sub_217BD85CC(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
                    if (v9 <= 0x3F)
                    {
                      sub_217BD85CC(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
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

void sub_217BDADD8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70);
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

unint64_t sub_217BDAF44()
{
  result = qword_27CBA17C0;
  if (!qword_27CBA17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17C0);
  }

  return result;
}

unint64_t sub_217BDAF9C()
{
  result = qword_27CBA17C8;
  if (!qword_27CBA17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17C8);
  }

  return result;
}

unint64_t sub_217BDAFF4()
{
  result = qword_27CBA17D0;
  if (!qword_27CBA17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17D0);
  }

  return result;
}

uint64_t sub_217BDB048(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4465746174536461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t sub_217BDB4B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1808);
  __swift_project_value_buffer(v0, qword_27CBA1808);
  return sub_217D8866C();
}

uint64_t MagazineCategoryExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MagazineCategoryExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.magazineCategoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 24);
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BDB7AC()
{
  result = qword_27CBA1828;
  if (!qword_27CBA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1828);
  }

  return result;
}

unint64_t sub_217BDB800()
{
  result = qword_27CBA1830;
  if (!qword_27CBA1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1830);
  }

  return result;
}

uint64_t MagazineCategoryExposureEvent.magazineCategoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 24);
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 28);
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BDBA04(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t MagazineCategoryExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 28);
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MagazineCategoryExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217BDBD78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

double MagazineCategoryExposureEvent.Model.magazineCategoryData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MagazineCategoryExposureEvent.Model(0) + 24));
  *a1 = result;
  return result;
}

uint64_t MagazineCategoryExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MagazineCategoryExposureEvent.Model(0) + 28));
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

__n128 MagazineCategoryExposureEvent.Model.init(eventData:timedData:magazineCategoryData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_217D8899C();
  v11 = *a3;
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  *(a5 + v12[6]) = v11;
  v15 = a5 + v12[7];
  v16 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v16;
  result = *(a4 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BDBFBC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217BDC03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BDD05C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BDC064(uint64_t a1)
{
  v2 = sub_217BDC3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDC0A0(uint64_t a1)
{
  v2 = sub_217BDC3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MagazineCategoryExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BDC988(0, &qword_27CBA1838, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDC3DC();
  sub_217D89E7C();
  LOBYTE(v26[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v26[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v29 = *(v3 + v12[6]);
    v28 = 2;
    sub_217BDB800();
    sub_217D89CAC();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v26[0] = *v14;
    v26[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v26[2] = v14[2];
    v27 = *(v14 + 48);
    v22 = v17;
    v23 = v16;
    v24 = v14[2];
    v25 = *(v14 + 48);
    v21 = 3;
    sub_217ACC004(v26, v19);
    sub_217A55B98();
    sub_217D89CAC();
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v20 = v25;
    sub_217ACC69C(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BDC3DC()
{
  result = qword_27CBA1840;
  if (!qword_27CBA1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1840);
  }

  return result;
}

uint64_t MagazineCategoryExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BDC988(0, &qword_27CBA1848, MEMORY[0x277D844C8]);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDC3DC();
  v34 = v12;
  v18 = v35;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v13;
  v19 = v29;
  v20 = v30;
  LOBYTE(v36) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = *(v19 + 32);
  v22 = v33;
  v33 = v6;
  v21(v16, v22);
  LOBYTE(v36) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v28 + 32))(&v16[*(v35 + 20)], v5, v20);
  v40 = 2;
  sub_217BDB7AC();
  sub_217D89BCC();
  v23 = v35;
  *&v16[*(v35 + 24)] = v36;
  v40 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v31 + 8))(v34, v32);
  v24 = &v16[*(v23 + 28)];
  v25 = v37;
  *v24 = v36;
  *(v24 + 1) = v25;
  *(v24 + 2) = v38;
  v24[48] = v39;
  sub_217BDC9EC(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BDCA50(v16);
}

void sub_217BDC988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDC3DC();
    v7 = a3(a1, &type metadata for MagazineCategoryExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDC9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BDCA50(uint64_t a1)
{
  v2 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BDCB84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BDCD5C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217BDBA04(319, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800);
      if (v2 <= 0x3F)
      {
        sub_217BDBA04(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217BDCEA8()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217BDCF58()
{
  result = qword_27CBA1870;
  if (!qword_27CBA1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1870);
  }

  return result;
}

unint64_t sub_217BDCFB0()
{
  result = qword_27CBA1878;
  if (!qword_27CBA1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1878);
  }

  return result;
}

unint64_t sub_217BDD008()
{
  result = qword_27CBA1880;
  if (!qword_27CBA1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1880);
  }

  return result;
}

uint64_t sub_217BDD05C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000217DCFC60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

NewsAnalytics::PaywallLocation_optional __swiftcall PaywallLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t PaywallLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x466C656E6E616863;
  v4 = 0x656E697A6167616DLL;
  if (v1 != 3)
  {
    v4 = 0x657069636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C6369747261;
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

unint64_t sub_217BDD2E8()
{
  result = qword_27CBA1888;
  if (!qword_27CBA1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1888);
  }

  return result;
}

uint64_t sub_217BDD33C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BDD42C()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BDD508()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BDD600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000646565;
  v6 = 0x466C656E6E616863;
  v7 = 0xEC00000064656546;
  v8 = 0x656E697A6167616DLL;
  if (v2 != 3)
  {
    v8 = 0x657069636572;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C6369747261;
    v3 = 0xE700000000000000;
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

unint64_t sub_217BDD76C()
{
  result = qword_27CBA1890;
  if (!qword_27CBA1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1890);
  }

  return result;
}

uint64_t PurchaseOffersData.offerIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217BDD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449726566666FLL && a2 == 0xE800000000000000)
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

uint64_t sub_217BDD8C4(uint64_t a1)
{
  v2 = sub_217BDDAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDD900(uint64_t a1)
{
  v2 = sub_217BDDAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseOffersData.encode(to:)(void *a1)
{
  sub_217BDDD58(0, &qword_2811BC6B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDDAE4();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217BDDB38();
  sub_217BDDDBC(&qword_2811BCE28, sub_217AFF378);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BDDAE4()
{
  result = qword_2811C2F30;
  if (!qword_2811C2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F30);
  }

  return result;
}

void sub_217BDDB38()
{
  if (!qword_2811BCE30)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCE30);
    }
  }
}

uint64_t PurchaseOffersData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217BDDD58(0, &qword_2811BCA20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDDAE4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BDDB38();
    sub_217BDDDBC(&qword_2811BCE20, sub_217AFF324);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BDDD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDDAE4();
    v7 = a3(a1, &type metadata for PurchaseOffersData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDDDBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217BDDB38();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BDDE2C()
{
  result = qword_2811C2F10;
  if (!qword_2811C2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F10);
  }

  return result;
}

unint64_t sub_217BDDE84()
{
  result = qword_2811C2F18;
  if (!qword_2811C2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F18);
  }

  return result;
}

unint64_t sub_217BDDF2C()
{
  result = qword_27CBA1898;
  if (!qword_27CBA1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1898);
  }

  return result;
}

unint64_t sub_217BDDF84()
{
  result = qword_2811C2F20;
  if (!qword_2811C2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F20);
  }

  return result;
}

unint64_t sub_217BDDFDC()
{
  result = qword_2811C2F28;
  if (!qword_2811C2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F28);
  }

  return result;
}

uint64_t sub_217BDE044()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t GroupSectionData.sectionIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::GroupSectionData __swiftcall GroupSectionData.init(sectionIDs:)(Swift::OpaquePointer_optional sectionIDs)
{
  rawValue = sectionIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.sectionIDs.value._rawValue = v4;
  result.sectionIDs.is_nil = v5;
  return result;
}

uint64_t sub_217BDE240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6974636573 && a2 == 0xEA00000000007344)
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

uint64_t sub_217BDE2D0(uint64_t a1)
{
  v2 = sub_217BDE4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDE30C(uint64_t a1)
{
  v2 = sub_217BDE4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupSectionData.encode(to:)(void *a1)
{
  sub_217BDE6FC(0, &qword_2811BC718, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDE4E4();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89C3C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BDE4E4()
{
  result = qword_2811C5230;
  if (!qword_2811C5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5230);
  }

  return result;
}

uint64_t GroupSectionData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217BDE6FC(0, &qword_27CBA18A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDE4E4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BDE6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDE4E4();
    v7 = a3(a1, &type metadata for GroupSectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BDE7BC()
{
  result = qword_27CBA18A8;
  if (!qword_27CBA18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA18A8);
  }

  return result;
}

unint64_t sub_217BDE814()
{
  result = qword_2811C5220;
  if (!qword_2811C5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5220);
  }

  return result;
}

unint64_t sub_217BDE86C()
{
  result = qword_2811C5228;
  if (!qword_2811C5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5228);
  }

  return result;
}

uint64_t sub_217BDE988()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA18E0);
  __swift_project_value_buffer(v0, qword_27CBA18E0);
  return sub_217D8866C();
}

uint64_t ArticleShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleShareEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 20);
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 20);
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 24);
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 24);
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 28);
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 28);
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 32);
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 32);
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 36);
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 36);
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 40);
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 40);
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 44);
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 44);
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 48);
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 48);
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 52);
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 52);
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 56);
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 56);
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 60);
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 60);
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 64);
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BDFE1C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleShareEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 64);
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleShareEvent(0);
  v5 = v4[5];
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v10, v29);
}

uint64_t ArticleShareEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 20);
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

uint64_t ArticleShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleShareEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 32));
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

uint64_t ArticleShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleShareEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleShareEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 48));
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

uint64_t ArticleShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 52);
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

uint64_t ArticleShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 56);
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

uint64_t ArticleShareEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 60);
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

uint64_t ArticleShareEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 64));
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

  return sub_217AE3AE8(v4, v5);
}

__n128 ArticleShareEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:shareContextData:issueData:userBundleSubscriptionContextData:channelData:adData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12, __int128 *a13, uint64_t a14)
{
  v18 = *a3;
  v43 = *a4;
  v19 = *(a4 + 2);
  v47 = a6[1];
  v48 = *a6;
  v46 = *(a6 + 8);
  v50 = a7[1];
  v51 = *a7;
  v49 = *(a7 + 1);
  v52 = a8[1];
  v53 = *a8;
  v62 = a12[1];
  v63 = *a12;
  v60 = *(a12 + 17);
  v61 = *(a12 + 16);
  v58 = a12[4];
  v59 = a12[3];
  v64 = *(a13 + 32);
  v65 = *(a14 + 32);
  v20 = sub_217D8899C();
  v56 = *(a14 + 16);
  v57 = *a14;
  v54 = a13[1];
  v55 = *a13;
  v44 = a10[1];
  v45 = *a10;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleShareEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v18;
  v27 = a9 + v21[7];
  *v27 = v43;
  *(v27 + 16) = v19;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v48;
  *(v33 + 8) = v47;
  *(v33 + 16) = v46;
  v34 = a9 + v21[10];
  *v34 = v51;
  *(v34 + 1) = v50;
  *(v34 + 2) = v49;
  v35 = (a9 + v21[11]);
  *v35 = v53;
  v35[1] = v52;
  v36 = (a9 + v21[12]);
  *v36 = v45;
  v36[1] = v44;
  v37 = a9 + v21[13];
  v38 = *(a11 + 16);
  *v37 = *a11;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a11 + 32);
  *(v37 + 48) = *(a11 + 48);
  v39 = a9 + v21[14];
  *v39 = v63;
  *(v39 + 8) = v62;
  *(v39 + 16) = v61;
  *(v39 + 17) = v60;
  *(v39 + 24) = v59;
  *(v39 + 32) = v58;
  v40 = a9 + v21[15];
  *v40 = v55;
  *(v40 + 16) = v54;
  *(v40 + 32) = v64;
  v41 = a9 + v21[16];
  result = v57;
  *v41 = v57;
  *(v41 + 16) = v56;
  *(v41 + 32) = v65;
  return result;
}

uint64_t sub_217BE0CBC(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x61446E6F69746361;
      break;
    case 3:
      v3 = 1684366694;
      goto LABEL_11;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 2003134838;
LABEL_11:
      result = v3 | 0x6174614400000000;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7461446575737369;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x446C656E6E616863;
      break;
    case 11:
      result = 0x617461446461;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BE0E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BE3080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BE0E60(uint64_t a1)
{
  v2 = sub_217BE1780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE0E9C(uint64_t a1)
{
  v2 = sub_217BE1780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BE22BC(0, &qword_27CBA18F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v68 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE1780();
  sub_217D89E7C();
  v134 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v135 = v7;
  v68 = type metadata accessor for ArticleShareEvent.Model(0);
  v69 = v3;
  v13 = v3 + v68[5];
  v14 = *(v13 + 96);
  v15 = *(v13 + 64);
  v131 = *(v13 + 80);
  v132 = v14;
  v16 = *(v13 + 96);
  *v133 = *(v13 + 112);
  v17 = *(v13 + 16);
  v18 = *(v13 + 48);
  v128 = *(v13 + 32);
  v129 = v18;
  v19 = *(v13 + 48);
  v130 = *(v13 + 64);
  v20 = *(v13 + 16);
  v127[0] = *v13;
  v127[1] = v20;
  v124 = v131;
  v125 = v16;
  v126[0] = *(v13 + 112);
  v121 = v128;
  v122 = v19;
  v123 = v15;
  *&v133[15] = *(v13 + 127);
  *(v126 + 15) = *(v13 + 127);
  v119 = v127[0];
  v120 = v17;
  v118 = 1;
  sub_217AD1630(v127, &v103);
  sub_217ACF52C();
  sub_217D89CAC();
  v116[5] = v124;
  v116[6] = v125;
  *v117 = v126[0];
  *&v117[15] = *(v126 + 15);
  v116[2] = v121;
  v116[3] = v122;
  v116[4] = v123;
  v116[0] = v119;
  v116[1] = v120;
  sub_217AD2864(v116);
  v22 = v68;
  v21 = v69;
  LOBYTE(v103) = *(v69 + v68[6]);
  LOBYTE(v94) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v23 = (v21 + v22[7]);
  v24 = v23[1];
  v25 = v23[2];
  v113 = *v23;
  v114 = v24;
  v115 = v25;
  v112 = 3;
  sub_217AD1A68(v113, v24, v25);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v113, v114, v115);
  v26 = (v21 + v22[8]);
  v27 = v26[6];
  v28 = v26[4];
  v108 = v26[5];
  v109 = v27;
  v29 = v26[6];
  v30 = v26[8];
  v110 = v26[7];
  v111 = v30;
  v31 = v26[2];
  v32 = *v26;
  v104 = v26[1];
  v105 = v31;
  v33 = v26[2];
  v34 = v26[4];
  v106 = v26[3];
  v107 = v34;
  v35 = *v26;
  v100 = v29;
  v101 = v110;
  v102 = v26[8];
  v103 = v35;
  v96 = v33;
  v97 = v106;
  v98 = v28;
  v99 = v108;
  v94 = v32;
  v95 = v104;
  v93 = 4;
  sub_217AD87FC(&v103, v92);
  sub_217A5D3B4();
  sub_217D89C3C();
  v92[6] = v100;
  v92[7] = v101;
  v92[8] = v102;
  v92[2] = v96;
  v92[3] = v97;
  v92[4] = v98;
  v92[5] = v99;
  v92[0] = v94;
  v92[1] = v95;
  sub_217AD96E8(v92);
  v36 = (v21 + v22[9]);
  v37 = *v36;
  v38 = v36[1];
  LOWORD(v36) = *(v36 + 8);
  *&v83 = v37;
  *(&v83 + 1) = v38;
  LOWORD(v84) = v36;
  LOBYTE(v79) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v39 = (v21 + v22[10]);
  v40 = *v39;
  v41 = v39[1];
  LOWORD(v39) = *(v39 + 1);
  LOBYTE(v83) = v40;
  BYTE1(v83) = v41;
  WORD1(v83) = v39;
  LOBYTE(v79) = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v42 = (v21 + v22[11]);
  v43 = v42[1];
  *&v83 = *v42;
  *(&v83 + 1) = v43;
  LOBYTE(v79) = 7;
  sub_217AF2CAC();

  sub_217D89CAC();

  v44 = (v21 + v22[12]);
  v45 = v44[1];
  v46 = v44[2];
  v47 = v44[3];
  v88 = *v44;
  v89 = v45;
  v90 = v46;
  v91 = v47;
  v87 = 8;
  sub_217AE39D0(v88, v45);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v88, v89);
  v48 = (v21 + v22[13]);
  v49 = v48[1];
  v83 = *v48;
  v84 = v49;
  v51 = *v48;
  v50 = v48[1];
  v85 = v48[2];
  v86 = *(v48 + 48);
  v79 = v51;
  v80 = v50;
  v81 = v48[2];
  v82 = *(v48 + 48);
  v78 = 9;
  sub_217ACC004(&v83, v76);
  sub_217A55B98();
  sub_217D89CAC();
  v76[0] = v79;
  v76[1] = v80;
  v76[2] = v81;
  v77 = v82;
  sub_217ACC69C(v76);
  v52 = v21 + v22[14];
  v53 = *(v52 + 8);
  v54 = *(v52 + 16);
  v55 = *(v52 + 17);
  v56 = *(v52 + 24);
  v57 = *(v52 + 32);
  v71 = *v52;
  v72 = v53;
  LOBYTE(v73) = v54;
  BYTE1(v73) = v55;
  v74 = v56;
  v75 = v57;
  v70 = 10;
  sub_217AD084C();

  sub_217D89CAC();

  v58 = v69 + v68[15];
  v59 = *(v58 + 8);
  v60 = *(v58 + 16);
  v61 = *(v58 + 24);
  v62 = *(v58 + 32);
  v71 = *v58;
  v72 = v59;
  v73 = v60;
  v74 = v61;
  LOBYTE(v75) = v62;
  v70 = 11;
  sub_217AE39D0(v71, v59);
  sub_217AF3490();
  sub_217D89C3C();
  sub_217AE4AA0(v71, v72);
  v63 = (v69 + v68[16]);
  v64 = v63[1];
  v65 = v63[2];
  v66 = v63[3];
  v67 = v63[4];
  v71 = *v63;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v70 = 12;
  sub_217AE3AE8(v71, v64);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v71, v72);
  return (*(v135 + 8))(v10, v6);
}

unint64_t sub_217BE1780()
{
  result = qword_27CBA1900;
  if (!qword_27CBA1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1900);
  }

  return result;
}

uint64_t ArticleShareEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_217D8899C();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BE22BC(0, &qword_27CBA1908, MEMORY[0x277D844C8]);
  v65 = v6;
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - v8;
  v10 = type metadata accessor for ArticleShareEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE1780();
  v66 = v9;
  v15 = v95;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v63;
  v59 = v10;
  v60 = a1;
  v95 = v13;
  LOBYTE(v86) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v64;
  sub_217D89BCC();
  v18 = *(v62 + 32);
  v19 = v95;
  v64 = v3;
  v18(v95, v17, v3);
  v77 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v58 = 0;
  v20 = v59;
  v21 = &v19[v59[5]];
  v22 = *v85;
  *(v21 + 6) = v84;
  *(v21 + 7) = v22;
  *(v21 + 127) = *&v85[15];
  v23 = v81;
  *(v21 + 2) = v80;
  *(v21 + 3) = v23;
  v24 = v83;
  *(v21 + 4) = v82;
  *(v21 + 5) = v24;
  v25 = v79;
  *v21 = v78;
  *(v21 + 1) = v25;
  LOBYTE(v72) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v19[v20[6]] = v86;
  LOBYTE(v72) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v26 = v87;
  v27 = &v19[v20[7]];
  *v27 = v86;
  *(v27 + 2) = v26;
  v76 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v28 = &v19[v20[8]];
  v29 = v91;
  v30 = v93;
  *(v28 + 6) = v92;
  *(v28 + 7) = v30;
  *(v28 + 8) = v94;
  v31 = v89;
  *(v28 + 2) = v88;
  *(v28 + 3) = v31;
  *(v28 + 4) = v90;
  *(v28 + 5) = v29;
  v32 = v87;
  *v28 = v86;
  *(v28 + 1) = v32;
  LOBYTE(v68) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v33 = v73;
  v34 = &v19[v20[9]];
  *v34 = v72;
  *(v34 + 8) = v33;
  LOBYTE(v68) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v35 = BYTE1(v72);
  v36 = WORD1(v72);
  v37 = &v19[v20[10]];
  *v37 = v72;
  v37[1] = v35;
  *(v37 + 1) = v36;
  LOBYTE(v68) = 7;
  sub_217AF2C58();
  sub_217D89BCC();
  v38 = *(&v72 + 1);
  v39 = &v95[v20[11]];
  *v39 = v72;
  *(v39 + 1) = v38;
  LOBYTE(v68) = 8;
  sub_217ACFF40();
  sub_217D89B5C();
  v40 = &v95[v59[12]];
  v41 = v73;
  *v40 = v72;
  *(v40 + 1) = v41;
  v71 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v42 = &v95[v59[13]];
  v43 = v73;
  *v42 = v72;
  *(v42 + 1) = v43;
  *(v42 + 2) = v74;
  v42[48] = v75;
  v67 = 10;
  sub_217AD07F8();
  sub_217D89BCC();
  v44 = *(&v68 + 1);
  v45 = v69;
  v46 = BYTE1(v69);
  v47 = *(&v69 + 1);
  v48 = v70;
  v49 = &v95[v59[14]];
  *v49 = v68;
  *(v49 + 1) = v44;
  v49[16] = v45;
  v49[17] = v46;
  *(v49 + 3) = v47;
  *(v49 + 4) = v48;
  v67 = 11;
  sub_217AF343C();
  sub_217D89B5C();
  v50 = v70;
  v51 = &v95[v59[15]];
  v52 = v69;
  *v51 = v68;
  *(v51 + 1) = v52;
  v51[32] = v50;
  v67 = 12;
  sub_217AE2CA8();
  sub_217D89B5C();
  (*(v16 + 8))(v66, v65);
  v53 = v70;
  v54 = v95;
  v55 = &v95[v59[16]];
  v56 = v69;
  *v55 = v68;
  *(v55 + 1) = v56;
  *(v55 + 4) = v53;
  sub_217BE2320(v54, v61);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_217BE2384(v54);
}

void sub_217BE22BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE1780();
    v7 = a3(a1, &type metadata for ArticleShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BE2320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BE2384(uint64_t a1)
{
  v2 = type metadata accessor for ArticleShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BE24B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v11, v30);
}

void sub_217BE2B14()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BDFE1C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217BDFE1C(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217BDFE1C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217BDFE1C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217BDFE1C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217BDFE1C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217BDFE1C(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
                if (v7 <= 0x3F)
                {
                  sub_217BDFE1C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                  if (v8 <= 0x3F)
                  {
                    sub_217BDFE1C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217BDFE1C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                      if (v10 <= 0x3F)
                      {
                        sub_217BDFE1C(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
                        if (v11 <= 0x3F)
                        {
                          sub_217BDFE1C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
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

unint64_t sub_217BE2F7C()
{
  result = qword_27CBA1910;
  if (!qword_27CBA1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1910);
  }

  return result;
}

unint64_t sub_217BE2FD4()
{
  result = qword_27CBA1918;
  if (!qword_27CBA1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1918);
  }

  return result;
}

unint64_t sub_217BE302C()
{
  result = qword_27CBA1920;
  if (!qword_27CBA1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1920);
  }

  return result;
}

uint64_t sub_217BE3080(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
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

id AppSessionObserver.__allocating_init(appSessionManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppSessionObserver.init(appSessionManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppSessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppSessionObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AppSessionObserver.endAppSession(withEndReason:)(NSNumber withEndReason)
{
  v2 = v1;
  v3 = [(objc_class *)withEndReason.super.super.isa integerValue];
  if (v3 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x504020300uLL >> (8 * v3);
  }

  sub_217A535B4();
  v5 = sub_217D898DC();
  sub_217A53658(0, &qword_2811BC410, sub_217A53700);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_217D8D8F0;
  v8 = v4 & 7;
  if (v8 <= 2)
  {
    if ((v4 & 7) != 0)
    {
      v9 = 0x636142656E656373;
      v10 = 0xEF646E756F72676BLL;
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
    }
  }

  else if (v8 == 3)
  {
    v10 = 0x8000000217DCCA10;
    v9 = 0xD000000000000015;
  }

  else if (v8 == 4)
  {
    v9 = 0x6975516563726F66;
    v10 = 0xE900000000000074;
  }

  else
  {
    v9 = 0x72617073646C6566;
    v10 = 0xEF74657365524449;
  }

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v12 = sub_217A62448();
  v7[8] = v12;
  v7[4] = v9;
  v7[5] = v10;
  sub_217D897FC();
  sub_217D88E5C();

  v13 = sub_217D898DC();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217D8D8F0;
  if (v4 <= 2u)
  {
    if (v4)
    {
      v15 = 0x636142656E656373;
      v16 = 0xEF646E756F72676BLL;
    }

    else
    {
      v16 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }
  }

  else if (v4 == 3)
  {
    v16 = 0x8000000217DCCA10;
    v15 = 0xD000000000000015;
  }

  else if (v4 == 4)
  {
    v15 = 0x6975516563726F66;
    v16 = 0xE900000000000074;
  }

  else
  {
    v15 = 0x72617073646C6566;
    v16 = 0xEF74657365524449;
  }

  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_217D897FC();
  sub_217D88E5C();

  v17 = *(v2 + OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager);
  *(swift_allocObject() + 16) = v4;
  sub_217D87FAC();

  *(swift_allocObject() + 16) = v4;
  sub_217D87F7C();
}

uint64_t sub_217BE39C0()
{
  sub_217A53658(0, &qword_2811BC490, MEMORY[0x277CEAD20]);
  v0 = sub_217D882DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217D8D8F0;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x277CEAD10], v0);
  sub_217BE3E20();
  sub_217D8820C();
}

void sub_217BE3B0C(unsigned __int8 a1)
{
  sub_217A53658(0, &qword_2811BC410, sub_217A53700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217D8D8F0;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0xEE006E6F69746167;
        v7 = 0x6976614E72657375;
      }

      else
      {
        v8 = 0xE500000000000000;
        v7 = 0x6873617263;
      }
    }

    else if (a1 == 4)
    {
      v8 = 0xE900000000000074;
      v7 = 0x6975516563726F66;
    }

    else
    {
      v8 = 0xEF74657365524449;
      v7 = 0x72617073646C6566;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xEF646E756F72676BLL;
    v6 = 0x636142656E656373;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000217DCCA10;
    }

    if (a1)
    {
      v4 = 0x676B636142707061;
      v3 = 0xED0000646E756F72;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (a1 <= 1u)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  *(v2 + 56) = MEMORY[0x277D837D0];
  v9 = v2;
  *(v2 + 64) = sub_217A62448();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_217A535B4();
  v10 = sub_217D898BC();
  sub_217D897FC();
  sub_217D88E5C();
}

unint64_t sub_217BE3E20()
{
  result = qword_2811C7B60;
  if (!qword_2811C7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B60);
  }

  return result;
}

uint64_t sub_217BE3EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DD0320 == a2)
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

uint64_t sub_217BE3F70(uint64_t a1)
{
  v2 = sub_217BE4144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE3FAC(uint64_t a1)
{
  v2 = sub_217BE4144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityUserActionData.encode(to:)(void *a1)
{
  sub_217BE4384(0, &qword_27CBA19A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4144();
  sub_217D89E7C();
  v13 = v9;
  sub_217BE4198();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BE4144()
{
  result = qword_27CBA19A8;
  if (!qword_27CBA19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19A8);
  }

  return result;
}

unint64_t sub_217BE4198()
{
  result = qword_27CBA19B0;
  if (!qword_27CBA19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19B0);
  }

  return result;
}

uint64_t LiveActivityUserActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BE4384(0, &qword_27CBA19B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4144();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BE43E8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE4384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE4144();
    v7 = a3(a1, &type metadata for LiveActivityUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE43E8()
{
  result = qword_27CBA19C0;
  if (!qword_27CBA19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19C0);
  }

  return result;
}

unint64_t sub_217BE4498()
{
  result = qword_27CBA19C8;
  if (!qword_27CBA19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19C8);
  }

  return result;
}

unint64_t sub_217BE44F0()
{
  result = qword_27CBA19D0;
  if (!qword_27CBA19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19D0);
  }

  return result;
}

unint64_t sub_217BE4548()
{
  result = qword_27CBA19D8;
  if (!qword_27CBA19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19D8);
  }

  return result;
}

NewsAnalytics::IngredientsShareActionMethod_optional __swiftcall IngredientsShareActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IngredientsShareActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0x42797265636F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726142756E656DLL;
  if (v1 != 1)
  {
    v5 = 0x53726142756E656DLL;
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

unint64_t sub_217BE46E0()
{
  result = qword_27CBA19E0;
  if (!qword_27CBA19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19E0);
  }

  return result;
}

uint64_t sub_217BE473C()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217BE485C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xD000000000000013;
  v6 = 0x8000000217DCB1D0;
  v7 = 0x8000000217DCB1F0;
  v8 = 0xD000000000000017;
  if (v2 != 4)
  {
    v8 = 0x42797265636F7267;
    v7 = 0xED00006E6F747475;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x726142756E656DLL;
  if (v2 != 1)
  {
    v10 = 0x53726142756E656DLL;
    v9 = 0xEE00776F72726168;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217BE49F8()
{
  result = qword_27CBA19E8;
  if (!qword_27CBA19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19E8);
  }

  return result;
}

uint64_t sub_217BE4AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000217DD0340 == a2)
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

uint64_t sub_217BE4B48(uint64_t a1)
{
  v2 = sub_217BE4D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE4B84(uint64_t a1)
{
  v2 = sub_217BE4D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IngredientsShareActionData.encode(to:)(void *a1)
{
  sub_217BE4F5C(0, &qword_27CBA19F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4D1C();
  sub_217D89E7C();
  v13 = v9;
  sub_217BE4D70();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BE4D1C()
{
  result = qword_27CBA19F8;
  if (!qword_27CBA19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19F8);
  }

  return result;
}

unint64_t sub_217BE4D70()
{
  result = qword_27CBA1A00;
  if (!qword_27CBA1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A00);
  }

  return result;
}

uint64_t IngredientsShareActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BE4F5C(0, &qword_27CBA1A08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4D1C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BE4FC0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE4F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE4D1C();
    v7 = a3(a1, &type metadata for IngredientsShareActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE4FC0()
{
  result = qword_27CBA1A10;
  if (!qword_27CBA1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A10);
  }

  return result;
}

unint64_t sub_217BE5018()
{
  result = qword_27CBA1A18;
  if (!qword_27CBA1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A18);
  }

  return result;
}

unint64_t sub_217BE5070()
{
  result = qword_27CBA1A20;
  if (!qword_27CBA1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A20);
  }

  return result;
}

unint64_t sub_217BE5118()
{
  result = qword_27CBA1A28;
  if (!qword_27CBA1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A28);
  }

  return result;
}

unint64_t sub_217BE5170()
{
  result = qword_27CBA1A30;
  if (!qword_27CBA1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A30);
  }

  return result;
}

unint64_t sub_217BE51C8()
{
  result = qword_27CBA1A38;
  if (!qword_27CBA1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A38);
  }

  return result;
}

uint64_t FeedKind.asFeedType.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_217D8919C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D32EB8])
  {
    v9 = 0;
LABEL_15:
    *a1 = v9;
    return result;
  }

  if (result == *MEMORY[0x277D32E80])
  {
    v9 = 10;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EB0] || result == *MEMORY[0x277D32E68])
  {
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D32E40])
  {
    v9 = 9;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EC0])
  {
    v9 = 14;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E88] || result == *MEMORY[0x277D32E48])
  {
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D32ED0])
  {
    v9 = 2;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32ED8])
  {
LABEL_10:
    v9 = 6;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E90])
  {
    v9 = 13;
    goto LABEL_15;
  }

  v9 = 15;
  if (result == *MEMORY[0x277D32EA8] || result == *MEMORY[0x277D32E28] || result == *MEMORY[0x277D32E70] || result == *MEMORY[0x277D32E78] || result == *MEMORY[0x277D32E50])
  {
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E60])
  {
    v9 = 17;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E98])
  {
    v9 = 1;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EA0])
  {
    v9 = 7;
    goto LABEL_15;
  }

  v9 = 0;
  if (result == *MEMORY[0x277D32EC8] || result == *MEMORY[0x277D32E38] || result == *MEMORY[0x277D32E58])
  {
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E30])
  {
    v9 = 19;
    goto LABEL_15;
  }

  result = sub_217D89A9C();
  __break(1u);
  return result;
}

uint64_t JourneyPlacementData.placementID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JourneyPlacementData.placementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JourneyPlacementData.placementName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JourneyPlacementData.placementName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JourneyPlacementData.messageID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t JourneyPlacementData.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall JourneyPlacementData.init(placementID:placementName:messageID:)(NewsAnalytics::JourneyPlacementData *__return_ptr retstr, Swift::String placementID, Swift::String_optional placementName, Swift::String_optional messageID)
{
  retstr->placementID = placementID;
  retstr->placementName = placementName;
  retstr->messageID = messageID;
}

uint64_t sub_217BE5728()
{
  v1 = 0x496567617373656DLL;
  if (*v0 == 1)
  {
    v1 = 0x6E656D6563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_217BE578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BE5E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BE57B4(uint64_t a1)
{
  v2 = sub_217BE59DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE57F0(uint64_t a1)
{
  v2 = sub_217BE59DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyPlacementData.encode(to:)(void *a1)
{
  sub_217BE5CA4(0, &qword_2811BC648, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE59DC();
  sub_217D89E7C();
  v19 = 0;
  v14 = v16[5];
  sub_217D89C6C();
  if (!v14)
  {
    v18 = 1;
    sub_217D89C0C();
    v17 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BE59DC()
{
  result = qword_2811C1ED8;
  if (!qword_2811C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1ED8);
  }

  return result;
}

uint64_t JourneyPlacementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BE5CA4(0, &qword_2811BC9E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE59DC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v27 = v12;
  v29 = 1;
  v15 = sub_217D89B2C();
  v17 = v16;
  v26 = v15;
  v28 = 2;
  v18 = sub_217D89B2C();
  v21 = v20;
  v22 = *(v7 + 8);
  v25 = v18;
  v22(v10, v6);
  v23 = v26;
  *a2 = v27;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v25;
  a2[5] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE5CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE59DC();
    v7 = a3(a1, &type metadata for JourneyPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE5D64()
{
  result = qword_27CBA1A40;
  if (!qword_27CBA1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A40);
  }

  return result;
}

unint64_t sub_217BE5DBC()
{
  result = qword_2811C1EC8;
  if (!qword_2811C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EC8);
  }

  return result;
}

unint64_t sub_217BE5E14()
{
  result = qword_2811C1ED0;
  if (!qword_2811C1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1ED0);
  }

  return result;
}

uint64_t sub_217BE5E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000444974;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED0000656D614E74 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

NewsAnalytics::BundleSubscriptionStatus_optional __swiftcall BundleSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t BundleSubscriptionStatus.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6269726373627573;
  if (*v0 != 2)
  {
    v2 = 0x6373627553746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6C61697274;
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

unint64_t sub_217BE609C()
{
  result = qword_27CBA1A48;
  if (!qword_27CBA1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A48);
  }

  return result;
}

uint64_t sub_217BE60F0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BE61C0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BE627C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BE648C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C30D0);
  __swift_project_value_buffer(v0, qword_2811C30D0);
  return sub_217D8866C();
}

uint64_t MediaExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v12, v29);
}

uint64_t sub_217BE7FA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 24);
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

uint64_t MediaExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 28);
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

uint64_t MediaExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 32));
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

uint64_t MediaExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 40));
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

uint64_t MediaExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaExposureEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0);
}

uint64_t MediaExposureEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 56);
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

uint64_t MediaExposureEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 60));
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

uint64_t MediaExposureEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 MediaExposureEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:userBundleSubscriptionContextData:issueData:issueViewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, uint64_t a12, __n128 *a13, uint64_t *a14)
{
  v19 = *a4;
  v20 = a4[1];
  v50 = *(a4 + 17);
  v51 = *(a4 + 16);
  v48 = a4[4];
  v49 = a4[3];
  v53 = *a6;
  v52 = *(a6 + 2);
  v57 = *(a7 + 1);
  v56 = *(a7 + 2);
  v55 = *(a7 + 6);
  v54 = a7[28];
  v61 = *a8;
  v60 = a8[1];
  v58 = *a7;
  v59 = *(a8 + 8);
  v65 = *a11;
  v64 = *(a11 + 2);
  v63 = *(a11 + 6);
  v67 = a14[1];
  v68 = *a14;
  v21 = sub_217D8899C();
  v66 = *a13;
  v62 = a13[1];
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for MediaExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  v26 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v26;
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a3 + 127);
  v28 = *(a3 + 112);
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = v28;
  v29 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v22[7];
  *v30 = v19;
  *(v30 + 8) = v20;
  *(v30 + 16) = v51;
  *(v30 + 17) = v50;
  *(v30 + 24) = v49;
  *(v30 + 32) = v48;
  v31 = (a9 + v22[8]);
  v32 = a5[3];
  v31[2] = a5[2];
  v31[3] = v32;
  v33 = a5[1];
  *v31 = *a5;
  v31[1] = v33;
  v34 = a5[8];
  v31[7] = a5[7];
  v31[8] = v34;
  v35 = a5[6];
  v31[5] = a5[5];
  v31[6] = v35;
  v31[4] = a5[4];
  v36 = a9 + v22[9];
  *v36 = v53;
  *(v36 + 16) = v52;
  v37 = a9 + v22[10];
  *v37 = v58;
  *(v37 + 8) = v57;
  *(v37 + 16) = v56;
  *(v37 + 24) = v55;
  *(v37 + 28) = v54;
  v38 = a9 + v22[11];
  *v38 = v61;
  *(v38 + 8) = v60;
  *(v38 + 16) = v59;
  v39 = (a9 + v22[12]);
  v40 = a10[1];
  *v39 = *a10;
  v39[1] = v40;
  v41 = a10[3];
  v39[2] = a10[2];
  v39[3] = v41;
  v42 = a9 + v22[13];
  *v42 = v65;
  *(v42 + 16) = v64;
  *(v42 + 24) = v63;
  v43 = a9 + v22[14];
  *(v43 + 48) = *(a12 + 48);
  v44 = *(a12 + 32);
  *(v43 + 16) = *(a12 + 16);
  *(v43 + 32) = v44;
  *v43 = *a12;
  v45 = (a9 + v22[15]);
  result = v66;
  *v45 = v66;
  v45[1] = v62;
  v47 = (a9 + v22[16]);
  *v47 = v68;
  v47[1] = v67;
  return result;
}

uint64_t sub_217BE8790(char a1)
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
      goto LABEL_12;
    case 6:
      result = 0x746144616964656DLL;
      break;
    case 7:
      v3 = 2003134838;
LABEL_12:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x447972656C6C6167;
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
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BE88F8(uint64_t a1)
{
  v2 = sub_217BE92DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE8934(uint64_t a1)
{
  v2 = sub_217BE92DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEA050(0, &qword_27CBA1A50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v72 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE92DC();
  sub_217D89E7C();
  LOBYTE(v116) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for MediaExposureEvent.Model(0);
    v151 = v3;
    v13 = *(v12 + 20);
    v150 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    v14 = v151;
    sub_217D89CAC();
    v72 = v12;
    v15 = v14 + *(v12 + 24);
    v16 = *(v15 + 96);
    v17 = *(v15 + 64);
    v147 = *(v15 + 80);
    v148 = v16;
    v18 = *(v15 + 96);
    *v149 = *(v15 + 112);
    v19 = *(v15 + 16);
    v20 = *(v15 + 48);
    v144 = *(v15 + 32);
    v145 = v20;
    v21 = *(v15 + 48);
    v146 = *(v15 + 64);
    v22 = *(v15 + 16);
    v143[0] = *v15;
    v143[1] = v22;
    v140 = v147;
    v141 = v18;
    v142[0] = *(v15 + 112);
    v137 = v144;
    v138 = v21;
    v139 = v17;
    *&v149[15] = *(v15 + 127);
    *(v142 + 15) = *(v15 + 127);
    v135 = v143[0];
    v136 = v19;
    v134 = 2;
    sub_217AD1630(v143, &v116);
    sub_217ACF52C();
    sub_217D89CAC();
    v132[5] = v140;
    v132[6] = v141;
    *v133 = v142[0];
    *&v133[15] = *(v142 + 15);
    v132[2] = v137;
    v132[3] = v138;
    v132[4] = v139;
    v132[0] = v135;
    v132[1] = v136;
    sub_217AD2864(v132);
    v23 = v151;
    v24 = (v151 + v72[7]);
    v25 = v24[1];
    v26 = *(v24 + 16);
    v27 = *(v24 + 17);
    v28 = v24[3];
    v29 = v24[4];
    v126 = *v24;
    v127 = v25;
    v128 = v26;
    v129 = v27;
    v130 = v28;
    v131 = v29;
    v125 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v30 = v72;
    v31 = (v23 + v72[8]);
    v32 = v31[6];
    v33 = v31[4];
    v121 = v31[5];
    v122 = v32;
    v34 = v31[6];
    v35 = v31[8];
    v123 = v31[7];
    v124 = v35;
    v36 = v31[2];
    v37 = *v31;
    v117 = v31[1];
    v118 = v36;
    v38 = v31[2];
    v39 = v31[4];
    v119 = v31[3];
    v120 = v39;
    v40 = *v31;
    v113 = v34;
    v114 = v123;
    v115 = v31[8];
    v116 = v40;
    v109 = v38;
    v110 = v119;
    v111 = v33;
    v112 = v121;
    v107 = v37;
    v108 = v117;
    v106 = 4;
    sub_217AE38AC(&v116, v105, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v105[6] = v113;
    v105[7] = v114;
    v105[8] = v115;
    v105[2] = v109;
    v105[3] = v110;
    v105[4] = v111;
    v105[5] = v112;
    v105[0] = v107;
    v105[1] = v108;
    sub_217AE4A44(v105, &qword_2811BD178);
    v41 = (v23 + v30[9]);
    v42 = v41[1];
    v43 = v41[2];
    *&v97 = *v41;
    *(&v97 + 1) = v42;
    *&v98 = v43;
    LOBYTE(v93) = 5;
    sub_217AD1A68(v97, v42, v43);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v97, *(&v97 + 1), v98);
    v45 = (v23 + v30[10]);
    v46 = *v45;
    v47 = *(v45 + 1);
    v48 = *(v45 + 2);
    v49 = *(v45 + 6);
    LOBYTE(v45) = v45[28];
    LOBYTE(v97) = v46;
    *(&v97 + 1) = v47;
    *&v98 = v48;
    DWORD2(v98) = v49;
    BYTE12(v98) = v45;
    LOBYTE(v93) = 6;
    sub_217AE1D08();

    sub_217D89CAC();

    v50 = (v23 + v30[11]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 8);
    v102 = v51;
    v103 = v52;
    v104 = v50;
    v101 = 7;
    sub_217A5E790();

    sub_217D89CAC();

    v53 = (v23 + v30[12]);
    v54 = v53[1];
    v97 = *v53;
    v98 = v54;
    v55 = v53[3];
    v57 = *v53;
    v56 = v53[1];
    v99 = v53[2];
    v100 = v55;
    v93 = v57;
    v94 = v56;
    v58 = v53[3];
    v95 = v53[2];
    v96 = v58;
    v92 = 8;
    sub_217AE38AC(&v97, v91, &qword_27CB9ECA0);
    sub_217AE2368();
    sub_217D89C3C();
    v91[0] = v93;
    v91[1] = v94;
    v91[2] = v95;
    v91[3] = v96;
    sub_217AE4A44(v91, &qword_27CB9ECA0);
    v59 = (v23 + v30[13]);
    v60 = *(v59 + 2);
    v61 = *(v59 + 6);
    v88 = *v59;
    v89 = v60;
    v90 = v61;
    v87 = 9;
    sub_217B03820();

    sub_217D89C3C();

    v62 = (v23 + v30[14]);
    v63 = v62[1];
    v85[0] = *v62;
    v85[1] = v63;
    v65 = *v62;
    v64 = v62[1];
    v85[2] = v62[2];
    v86 = *(v62 + 48);
    v81 = v65;
    v82 = v64;
    v83 = v62[2];
    v84 = *(v62 + 48);
    v80 = 10;
    sub_217ACC004(v85, v78);
    sub_217A55B98();
    sub_217D89CAC();
    v78[0] = v81;
    v78[1] = v82;
    v78[2] = v83;
    v79 = v84;
    sub_217ACC69C(v78);
    v66 = (v151 + v72[15]);
    v67 = v66[1];
    v68 = v66[2];
    v69 = v66[3];
    v74 = *v66;
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v73 = 11;
    sub_217AE39D0(v74, v67);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v74, v75);
    v70 = (v151 + v72[16]);
    v71 = v70[1];
    v74 = *v70;
    v75 = v71;
    v73 = 12;
    sub_217AD01EC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BE92DC()
{
  result = qword_27CBA1A58;
  if (!qword_27CBA1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A58);
  }

  return result;
}

uint64_t MediaExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v71 = sub_217D889CC();
  v69 = *(v71 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v72 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v73 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEA050(0, &qword_27CBA1A60, MEMORY[0x277D844C8]);
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v65 - v10;
  v12 = type metadata accessor for MediaExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE92DC();
  v76 = v11;
  v17 = v109;
  sub_217D89E5C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v72;
  v66 = v12;
  v67 = a1;
  v109 = v15;
  LOBYTE(v100) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v19 = v73;
  sub_217D89BCC();
  v20 = v5;
  v21 = *(v70 + 32);
  v22 = v109;
  v73 = v20;
  v21(v109, v19);
  LOBYTE(v100) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v18;
  v24 = v71;
  sub_217D89BCC();
  v65[1] = 0;
  v25 = v66;
  (*(v69 + 32))(&v22[v66[5]], v23, v24);
  v91 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v26 = &v22[v25[6]];
  v27 = v97;
  v28 = *v99;
  *(v26 + 6) = v98;
  *(v26 + 7) = v28;
  *(v26 + 127) = *&v99[15];
  v29 = v93;
  v30 = v95;
  *(v26 + 2) = v94;
  *(v26 + 3) = v30;
  *(v26 + 4) = v96;
  *(v26 + 5) = v27;
  *v26 = v92;
  *(v26 + 1) = v29;
  LOBYTE(v86) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v31 = *(&v100 + 1);
  v32 = v101;
  v33 = BYTE1(v101);
  v34 = *(&v101 + 1);
  v35 = v102;
  v36 = &v22[v25[7]];
  *v36 = v100;
  *(v36 + 1) = v31;
  v36[16] = v32;
  v36[17] = v33;
  *(v36 + 3) = v34;
  *(v36 + 4) = v35;
  v90 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v37 = &v22[v25[8]];
  v38 = v107;
  *(v37 + 6) = v106;
  *(v37 + 7) = v38;
  *(v37 + 8) = v108;
  v39 = v103;
  *(v37 + 2) = v102;
  *(v37 + 3) = v39;
  v40 = v105;
  *(v37 + 4) = v104;
  *(v37 + 5) = v40;
  v41 = v101;
  *v37 = v100;
  *(v37 + 1) = v41;
  LOBYTE(v81) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v42 = v87;
  v43 = &v22[v25[9]];
  *v43 = v86;
  *(v43 + 2) = v42;
  LOBYTE(v81) = 6;
  sub_217AE1CB4();
  sub_217D89BCC();
  v44 = *(&v86 + 1);
  v45 = v87;
  v46 = DWORD2(v87);
  v47 = BYTE12(v87);
  v48 = &v22[v25[10]];
  *v48 = v86;
  *(v48 + 1) = v44;
  *(v48 + 2) = v45;
  *(v48 + 6) = v46;
  v48[28] = v47;
  LOBYTE(v81) = 7;
  sub_217A5E738();
  sub_217D89BCC();
  v49 = *(&v86 + 1);
  v50 = v87;
  v51 = &v22[v25[11]];
  *v51 = v86;
  *(v51 + 1) = v49;
  *(v51 + 8) = v50;
  v85 = 8;
  sub_217AE2314();
  sub_217D89B5C();
  v52 = &v109[v66[12]];
  v53 = v87;
  v54 = v88;
  *v52 = v86;
  *(v52 + 1) = v53;
  v55 = v89;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  LOBYTE(v78) = 9;
  sub_217B037CC();
  sub_217D89B5C();
  v56 = v82;
  v57 = DWORD2(v82);
  v58 = &v109[v66[13]];
  *v58 = v81;
  *(v58 + 2) = v56;
  *(v58 + 6) = v57;
  v80 = 10;
  sub_217A54D08();
  sub_217D89BCC();
  v59 = &v109[v66[14]];
  v60 = v82;
  *v59 = v81;
  *(v59 + 1) = v60;
  *(v59 + 2) = v83;
  v59[48] = v84;
  v77 = 11;
  sub_217ACFF40();
  sub_217D89B5C();
  v61 = &v109[v66[15]];
  v62 = v79;
  *v61 = v78;
  *(v61 + 1) = v62;
  v77 = 12;
  sub_217AD0198();
  sub_217D89B5C();
  (*(v74 + 8))(v76, v75);
  v63 = v109;
  *&v109[v66[16]] = v78;
  sub_217BEA0B4(v63, v68);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return sub_217BEA118(v63);
}

void sub_217BEA050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE92DC();
    v7 = a3(a1, &type metadata for MediaExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEA0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BEA118(uint64_t a1)
{
  v2 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217BEA2B0()
{
  result = qword_27CBA1A68;
  if (!qword_27CBA1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A68);
  }

  return result;
}

unint64_t sub_217BEA308()
{
  result = qword_27CBA1A70;
  if (!qword_27CBA1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A70);
  }

  return result;
}

unint64_t sub_217BEA360()
{
  result = qword_27CBA1A78;
  if (!qword_27CBA1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A78);
  }

  return result;
}

uint64_t sub_217BEA424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xED0000657079546ELL)
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

uint64_t sub_217BEA4B4(uint64_t a1)
{
  v2 = sub_217BEA688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEA4F0(uint64_t a1)
{
  v2 = sub_217BEA688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSelectionData.encode(to:)(void *a1)
{
  sub_217BEA8C8(0, &qword_27CBA1A80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEA688();
  sub_217D89E7C();
  v13 = v9;
  sub_217BEA6DC();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BEA688()
{
  result = qword_27CBA1A88;
  if (!qword_27CBA1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A88);
  }

  return result;
}

unint64_t sub_217BEA6DC()
{
  result = qword_27CBA1A90;
  if (!qword_27CBA1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A90);
  }

  return result;
}

uint64_t UserSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BEA8C8(0, &qword_27CBA1A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEA688();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BEA92C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BEA8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEA688();
    v7 = a3(a1, &type metadata for UserSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEA92C()
{
  result = qword_27CBA1AA0;
  if (!qword_27CBA1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AA0);
  }

  return result;
}

unint64_t sub_217BEA9DC()
{
  result = qword_27CBA1AA8;
  if (!qword_27CBA1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AA8);
  }

  return result;
}

unint64_t sub_217BEAA34()
{
  result = qword_27CBA1AB0;
  if (!qword_27CBA1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AB0);
  }

  return result;
}

unint64_t sub_217BEAA8C()
{
  result = qword_27CBA1AB8;
  if (!qword_27CBA1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AB8);
  }

  return result;
}

uint64_t AdReferralData.qToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdReferralData.qToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BEAB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F5471 && a2 == 0xE600000000000000)
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

uint64_t sub_217BEAC10(uint64_t a1)
{
  v2 = sub_217BEADD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEAC4C(uint64_t a1)
{
  v2 = sub_217BEADD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdReferralData.encode(to:)(void *a1)
{
  sub_217BEAFAC(0, &qword_27CBA1AC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BEADD4()
{
  result = qword_27CBA1AC8;
  if (!qword_27CBA1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AC8);
  }

  return result;
}

uint64_t AdReferralData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BEAFAC(0, &qword_27CBA1AD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
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

void sub_217BEAFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEADD4();
    v7 = a3(a1, &type metadata for AdReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEB014()
{
  result = qword_2811C7100;
  if (!qword_2811C7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7100);
  }

  return result;
}

unint64_t sub_217BEB06C()
{
  result = qword_2811C7108;
  if (!qword_2811C7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7108);
  }

  return result;
}

uint64_t sub_217BEB0D8(void *a1)
{
  sub_217BEAFAC(0, &qword_27CBA1AC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BEB238()
{
  result = qword_27CBA1AD8;
  if (!qword_27CBA1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AD8);
  }

  return result;
}

unint64_t sub_217BEB290()
{
  result = qword_27CBA1AE0;
  if (!qword_27CBA1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AE0);
  }

  return result;
}

unint64_t sub_217BEB2E8()
{
  result = qword_27CBA1AE8;
  if (!qword_27CBA1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AE8);
  }

  return result;
}

uint64_t sub_217BEB404()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0E78);
  __swift_project_value_buffer(v0, qword_2811C0E78);
  return sub_217D8866C();
}

uint64_t OfflineModeStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OfflineModeStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfflineModeStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t OfflineModeStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20));
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

__n128 OfflineModeStartEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_217BEB88C(uint64_t a1)
{
  v2 = sub_217BEBB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEB8C8(uint64_t a1)
{
  v2 = sub_217BEBB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEBEF4(0, &qword_27CBA1AF0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEBB34();
  sub_217D89E7C();
  v28 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20));
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

unint64_t sub_217BEBB34()
{
  result = qword_27CBA1AF8;
  if (!qword_27CBA1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AF8);
  }

  return result;
}

uint64_t OfflineModeStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_217D8899C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEBEF4(0, &qword_27CBA1B00, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  v13 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEBB34();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = started;
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
  sub_217BEBF58(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BEBFBC(v17);
}

void sub_217BEBEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEBB34();
    v7 = a3(a1, &type metadata for OfflineModeStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEBF58(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217BEBFBC(uint64_t a1)
{
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_217BEC154()
{
  result = qword_27CBA1B18;
  if (!qword_27CBA1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B18);
  }

  return result;
}

unint64_t sub_217BEC1AC()
{
  result = qword_27CBA1B20;
  if (!qword_27CBA1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B20);
  }

  return result;
}

unint64_t sub_217BEC204()
{
  result = qword_27CBA1B28;
  if (!qword_27CBA1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B28);
  }

  return result;
}

uint64_t sub_217BEC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615074756F79616CLL && a2 == 0xEA00000000006874)
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

uint64_t sub_217BEC350(uint64_t a1)
{
  v2 = sub_217BEC524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEC38C(uint64_t a1)
{
  v2 = sub_217BEC524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutData.encode(to:)(void *a1)
{
  sub_217BEC764(0, &qword_2811BC688, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEC524();
  sub_217D89E7C();
  v13 = v9;
  sub_217BEC578();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BEC524()
{
  result = qword_2811C2A60;
  if (!qword_2811C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A60);
  }

  return result;
}

unint64_t sub_217BEC578()
{
  result = qword_2811C2A38;
  if (!qword_2811C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A38);
  }

  return result;
}

uint64_t FeedGroupLayoutData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BEC764(0, &qword_27CBA1B30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEC524();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BEC7C8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BEC764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEC524();
    v7 = a3(a1, &type metadata for FeedGroupLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEC7C8()
{
  result = qword_27CBA1B38;
  if (!qword_27CBA1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B38);
  }

  return result;
}

unint64_t sub_217BEC878()
{
  result = qword_27CBA1B40;
  if (!qword_27CBA1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B40);
  }

  return result;
}

unint64_t sub_217BEC8D0()
{
  result = qword_2811C2A50;
  if (!qword_2811C2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A50);
  }

  return result;
}

unint64_t sub_217BEC928()
{
  result = qword_2811C2A58;
  if (!qword_2811C2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A58);
  }

  return result;
}

uint64_t sub_217BEC9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_217BECA60(uint64_t a1)
{
  v2 = sub_217BECC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BECA9C(uint64_t a1)
{
  v2 = sub_217BECC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultActionData.encode(to:)(void *a1)
{
  sub_217BECE74(0, &qword_27CBA1B48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BECC34();
  sub_217D89E7C();
  v13 = v9;
  sub_217BECC88();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BECC34()
{
  result = qword_27CBA1B50;
  if (!qword_27CBA1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B50);
  }

  return result;
}

unint64_t sub_217BECC88()
{
  result = qword_27CBA1B58;
  if (!qword_27CBA1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B58);
  }

  return result;
}

uint64_t ResultActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BECE74(0, &qword_27CBA1B60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BECC34();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BECED8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BECE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BECC34();
    v7 = a3(a1, &type metadata for ResultActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BECED8()
{
  result = qword_27CBA1B68;
  if (!qword_27CBA1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B68);
  }

  return result;
}

unint64_t sub_217BECF88()
{
  result = qword_27CBA1B70;
  if (!qword_27CBA1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B70);
  }

  return result;
}

unint64_t sub_217BECFE0()
{
  result = qword_27CBA1B78;
  if (!qword_27CBA1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B78);
  }

  return result;
}

unint64_t sub_217BED038()
{
  result = qword_27CBA1B80;
  if (!qword_27CBA1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B80);
  }

  return result;
}

uint64_t sub_217BED154()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1BB8);
  __swift_project_value_buffer(v0, qword_27CBA1BB8);
  return sub_217D8866C();
}

uint64_t ReplicaAdvertisementEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicaAdvertisementEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 20);
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 20);
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 24);
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 24);
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 28);
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 28);
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 32);
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 32);
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 36);
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 36);
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 40);
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 40);
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 44);
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BEDD78(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ReplicaAdvertisementEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 44);
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReplicaAdvertisementEngagementEvent(0);
  v5 = v4[5];
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v16, v19);
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 24);
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

uint64_t ReplicaAdvertisementEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 28);
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

uint64_t ReplicaAdvertisementEngagementEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 36);
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

uint64_t ReplicaAdvertisementEngagementEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

__n128 ReplicaAdvertisementEngagementEvent.Model.init(eventData:viewData:articleData:channelData:userChannelContextData:issueData:issueViewData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a4 + 17);
  v33 = a4[4];
  v34 = a4[3];
  v36 = a5[1];
  v37 = *a5;
  v35 = *(a5 + 1);
  v41 = a6[1];
  v42 = *a6;
  v39 = *(a6 + 17);
  v40 = *(a6 + 16);
  v38 = a6[3];
  v43 = a7[1];
  v44 = *a7;
  v46 = *a8;
  v45 = a8[1].n128_u64[0];
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v13;
  *(v21 + 8) = v12;
  *(v21 + 16) = v14;
  v22 = a9 + v20[6];
  v23 = *(a3 + 112);
  *(v22 + 96) = *(a3 + 96);
  *(v22 + 112) = v23;
  *(v22 + 127) = *(a3 + 127);
  v24 = *(a3 + 48);
  *(v22 + 32) = *(a3 + 32);
  *(v22 + 48) = v24;
  v25 = *(a3 + 80);
  *(v22 + 64) = *(a3 + 64);
  *(v22 + 80) = v25;
  v26 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 16) = v26;
  v27 = a9 + v20[7];
  *v27 = v15;
  *(v27 + 8) = v16;
  *(v27 + 16) = v17;
  *(v27 + 17) = v18;
  *(v27 + 24) = v34;
  *(v27 + 32) = v33;
  v28 = a9 + v20[8];
  *v28 = v37;
  *(v28 + 1) = v36;
  *(v28 + 2) = v35;
  v29 = a9 + v20[9];
  *v29 = v42;
  *(v29 + 8) = v41;
  *(v29 + 16) = v40;
  *(v29 + 17) = v39;
  *(v29 + 24) = v38;
  v30 = (a9 + v20[10]);
  *v30 = v44;
  v30[1] = v43;
  v31 = (a9 + v20[11]);
  result = v46;
  *v31 = v46;
  v31[1].n128_u64[0] = v45;
  return result;
}

uint64_t sub_217BEE764()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6569566575737369;
  if (v1 != 6)
  {
    v3 = 0x6174614464656566;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x7461446575737369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_217BEE880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BF022C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BEE8A8(uint64_t a1)
{
  v2 = sub_217BEEEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEE8E4(uint64_t a1)
{
  v2 = sub_217BEEEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEF768(0, &qword_27CBA1BD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEEEB8();
  sub_217D89E7C();
  LOBYTE(v63[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v71 = v14;
    v72 = v15;
    v73 = v13;
    v70 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v74 = v12;
    v16 = v3 + *(v12 + 24);
    v17 = *(v16 + 96);
    v18 = *(v16 + 64);
    v67 = *(v16 + 80);
    v68 = v17;
    v19 = *(v16 + 96);
    *v69 = *(v16 + 112);
    v20 = *(v16 + 16);
    v21 = *(v16 + 48);
    v64 = *(v16 + 32);
    v65 = v21;
    v22 = *(v16 + 48);
    v66 = *(v16 + 64);
    v23 = *(v16 + 16);
    v63[0] = *v16;
    v63[1] = v23;
    v60 = v67;
    v61 = v19;
    v62[0] = *(v16 + 112);
    v57 = v64;
    v58 = v22;
    v59 = v18;
    *&v69[15] = *(v16 + 127);
    *(v62 + 15) = *(v16 + 127);
    v55 = v63[0];
    v56 = v20;
    v54 = 2;
    sub_217AD1630(v63, v52);
    sub_217ACF52C();
    sub_217D89CAC();
    v52[6] = v61;
    *v53 = v62[0];
    *&v53[15] = *(v62 + 15);
    v52[2] = v57;
    v52[3] = v58;
    v52[4] = v59;
    v52[5] = v60;
    v52[0] = v55;
    v52[1] = v56;
    sub_217AD2864(v52);
    v24 = v3 + v74[7];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 17);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v47 = *v24;
    v48 = v25;
    LOBYTE(v49) = v26;
    BYTE1(v49) = v27;
    v50 = v28;
    v51 = v29;
    HIBYTE(v46) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v30 = v74;
    v31 = (v3 + v74[8]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 1);
    LOBYTE(v47) = v32;
    BYTE1(v47) = v33;
    WORD1(v47) = v31;
    HIBYTE(v46) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v35 = v3 + v30[9];
    v36 = *(v35 + 8);
    v37 = *(v35 + 16);
    v38 = *(v35 + 17);
    v39 = *(v35 + 24);
    v47 = *v35;
    v48 = v36;
    LOBYTE(v49) = v37;
    BYTE1(v49) = v38;
    v50 = v39;
    HIBYTE(v46) = 5;
    sub_217ACFF94();

    sub_217D89CAC();

    v40 = v74;
    v41 = (v3 + v74[10]);
    v42 = v41[1];
    v47 = *v41;
    v48 = v42;
    HIBYTE(v46) = 6;
    sub_217AD01EC();

    sub_217D89C3C();

    v43 = (v3 + v40[11]);
    v44 = v43[1];
    v45 = v43[2];
    v47 = *v43;
    v48 = v44;
    v49 = v45;
    HIBYTE(v46) = 7;
    sub_217AD1A68(v47, v44, v45);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v47, v48, v49);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BEEEB8()
{
  result = qword_27CBA1BD8;
  if (!qword_27CBA1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BD8);
  }

  return result;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_217D8899C();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEF768(0, &qword_27CBA1BE0, MEMORY[0x277D844C8]);
  v65 = v7;
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEEEB8();
  v50 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v48;
  LOBYTE(v57) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v49;
  sub_217D89BCC();
  v18 = *(v47 + 32);
  v49 = v4;
  v18(v14, v17, v4);
  LOBYTE(v52) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v19 = *(&v57 + 1);
  v20 = v58;
  v21 = &v14[v11[5]];
  *v21 = v57;
  *(v21 + 1) = v19;
  *(v21 + 8) = v20;
  v56 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v22 = &v14[v11[6]];
  v23 = v62;
  v24 = v64[0];
  *(v22 + 6) = v63;
  *(v22 + 7) = v24;
  *(v22 + 127) = *(v64 + 15);
  v25 = v60;
  *(v22 + 2) = v59;
  *(v22 + 3) = v25;
  *(v22 + 4) = v61;
  *(v22 + 5) = v23;
  v26 = v58;
  *v22 = v57;
  *(v22 + 1) = v26;
  v51 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v45 = a1;
  v27 = *(&v52 + 1);
  v28 = v53;
  v29 = BYTE1(v53);
  v30 = v54;
  v31 = v55;
  v32 = &v14[v11[7]];
  *v32 = v52;
  *(v32 + 1) = v27;
  v32[16] = v28;
  v32[17] = v29;
  *(v32 + 3) = v30;
  *(v32 + 4) = v31;
  v51 = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v33 = BYTE1(v52);
  v34 = WORD1(v52);
  v35 = &v14[v11[8]];
  *v35 = v52;
  v35[1] = v33;
  *(v35 + 1) = v34;
  v51 = 5;
  sub_217ACFF40();
  sub_217D89BCC();
  v36 = *(&v52 + 1);
  v37 = v53;
  v38 = BYTE1(v53);
  v39 = v54;
  v40 = &v14[v11[9]];
  *v40 = v52;
  *(v40 + 1) = v36;
  v40[16] = v37;
  v40[17] = v38;
  *(v40 + 3) = v39;
  v51 = 6;
  sub_217AD0198();
  sub_217D89B5C();
  *&v14[v11[10]] = v52;
  v51 = 7;
  sub_217A5B978();
  sub_217D89B5C();
  (*(v16 + 8))(v50, v65);
  v41 = v53;
  v42 = &v14[v11[11]];
  *v42 = v52;
  *(v42 + 2) = v41;
  sub_217BEF7CC(v14, v46);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_217BEF830(v14);
}

void sub_217BEF768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEEEB8();
    v7 = a3(a1, &type metadata for ReplicaAdvertisementEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEF7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BEF830(uint64_t a1)
{
  v2 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BEF964@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v17, v20);
}

void sub_217BEFD60()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BEDD78(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217BEDD78(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217BEDD78(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217BEDD78(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
          if (v4 <= 0x3F)
          {
            sub_217BEDD78(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
            if (v5 <= 0x3F)
            {
              sub_217BEDD78(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
              if (v6 <= 0x3F)
              {
                sub_217BEDD78(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
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

void sub_217BF0024()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C71A8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BF0128()
{
  result = qword_27CBA1BE8;
  if (!qword_27CBA1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BE8);
  }

  return result;
}

unint64_t sub_217BF0180()
{
  result = qword_27CBA1BF0;
  if (!qword_27CBA1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BF0);
  }

  return result;
}

unint64_t sub_217BF01D8()
{
  result = qword_27CBA1BF8;
  if (!qword_27CBA1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BF8);
  }

  return result;
}

uint64_t sub_217BF022C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
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

uint64_t sub_217BF0524(uint64_t a1)
{
  v2 = sub_217BF06E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF0560(uint64_t a1)
{
  v2 = sub_217BF06E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPositionData.encode(to:)(void *a1)
{
  sub_217BF08B8(0, &qword_2811BC7A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF06E4()
{
  result = qword_2811C7130;
  if (!qword_2811C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7130);
  }

  return result;
}

uint64_t AdPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BF08B8(0, &qword_27CBA1C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF08B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF06E4();
    v7 = a3(a1, &type metadata for AdPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BF093C(void *a1)
{
  sub_217BF08B8(0, &qword_2811BC7A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF0AA8()
{
  result = qword_27CBA1C08;
  if (!qword_27CBA1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C08);
  }

  return result;
}

unint64_t sub_217BF0B00()
{
  result = qword_2811C7120;
  if (!qword_2811C7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7120);
  }

  return result;
}

unint64_t sub_217BF0B58()
{
  result = qword_2811C7128;
  if (!qword_2811C7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7128);
  }

  return result;
}

id FCHeadlineProviding.articleData()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_217BF181C(0, &qword_2811C8C80, MEMORY[0x277CC9578]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v43[-v9];
  FCHeadlineProviding.alternateHeadlineData()(v63);
  v11 = v63[0];
  v12 = v64;
  v57 = [v1 isPaid];
  v13 = [v1 articleID];
  v14 = sub_217D8954C();
  v60 = v15;
  v61 = v14;

  v54 = [v2 contentType];
  v59 = [v2 backendArticleVersion];
  v16 = [v2 respondsToSelector_];
  v17 = 0;
  v58 = v16;
  if (v16)
  {
    v17 = [v2 bodyTextLength];
  }

  v56 = v17;
  v55 = [v2 hasVideo];
  v18 = [v2 iAdCategories];
  if (v18)
  {
    v19 = v18;
    v53 = sub_217D896EC();
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v20 = [v2 publishDate];
  if (v20)
  {
    v21 = v20;
    sub_217D87C7C();

    v22 = sub_217D87C9C();
    (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  }

  else
  {
    v22 = sub_217D87C9C();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  }

  sub_217BF129C(v8, v10);
  sub_217D87C9C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v10, 1, v22) != 1)
  {
    sub_217D87C6C();
    v26 = v25;
    result = (*(v23 + 8))(v10, v22);
    v24 = v26 * 1000.0;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v24 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v24 < 9.22337204e18)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_217A5B4EC(v10, &qword_2811C8C80, MEMORY[0x277CC9578]);
  v24 = 0.0;
LABEL_14:
  v51 = [v2 publisherArticleVersion];
  v28 = [v2 referencedArticleID];
  if (v28)
  {
    v29 = v28;
    v30 = sub_217D8954C();
    v49 = v31;
    v50 = v30;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    sub_217BF131C([v2 role], &v62);
    v48 = v62;
  }

  else
  {
    v48 = 0;
  }

  v32 = [v2 topicIDs];
  if (v32)
  {
    v33 = v32;
    v47 = sub_217D896EC();
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  if ([v2 respondsToSelector_])
  {
    v46 = [v2 hasAudioTrack];
  }

  else
  {
    v46 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v45 = [v2 isEvergreen];
  }

  else
  {
    v45 = 0;
  }

  v52 = v11;
  v34 = v12;
  if ([v2 respondsToSelector_])
  {
    v44 = [v2 isFeatured];
  }

  else
  {
    v44 = 0;
  }

  v35 = [v2 isFeatureCandidate];
  if ([v2 respondsToSelector_])
  {
    v36 = [v2 reduceVisibility];
  }

  else
  {
    v36 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v37 = [v2 webConverted];
  }

  else
  {
    v37 = 0;
  }

  if (v54 == 2)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2 * (v54 == 1);
  }

  if (v57)
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  result = [v2 isAIGenerated];
  *a1 = v52;
  *(a1 + 4) = v34;
  *(a1 + 8) = v39;
  v40 = v60;
  *(a1 + 16) = v61;
  *(a1 + 24) = v40;
  *(a1 + 32) = v38;
  v41 = v56;
  *(a1 + 40) = v59;
  *(a1 + 48) = v41;
  *(a1 + 56) = (v58 & 1) == 0;
  *(a1 + 57) = v55;
  *(a1 + 64) = v53;
  *(a1 + 72) = v24;
  *(a1 + 80) = 0;
  v42 = v50;
  *(a1 + 88) = v51;
  *(a1 + 96) = v42;
  *(a1 + 104) = v49;
  *(a1 + 112) = v48;
  *(a1 + 120) = v47;
  LOBYTE(v42) = v45;
  *(a1 + 128) = v46;
  *(a1 + 129) = v42;
  *(a1 + 130) = v44;
  *(a1 + 131) = v35;
  *(a1 + 132) = v36;
  *(a1 + 133) = v37;
  *(a1 + 134) = result;
  return result;
}

void FCHeadlineProviding.alternateHeadlineData()(uint64_t a1@<X8>)
{
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v1 experimentalTitleMetadata];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 treatmentState];
  if (v5 >= 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x50003000100uLL >> (8 * v5);
  }

  v7 = [v4 arrayIndexUsedforTitle];

  if (v7 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
LABEL_10:
      *a1 = v6;
      *(a1 + 4) = v7;
      return;
    }

    __break(1u);
LABEL_9:
    v6 = 0;
    LODWORD(v7) = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_217BF129C(uint64_t a1, uint64_t a2)
{
  sub_217BF181C(0, &qword_2811C8C80, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217BF131C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = byte_217DA79E6[result];
  }

  return result;
}

unint64_t FCHeadlineProviding.referringArticleData()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 articleID];
  v5 = sub_217D8954C();
  v7 = v6;

  v8 = [v2 publisherArticleVersion];
  result = [v2 respondsToSelector_];
  if (result)
  {
    result = sub_217BF131C([v2 role], &v11);
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  return result;
}

void __swiftcall FCHeadlineProviding.articleExposureContextData()(NewsAnalytics::ArticleExposureContextData *__return_ptr retstr)
{
  v3 = [v1 surfacedByTopicID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 surfacedByChannelID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_217D8954C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_217BF14D4(v1);
  retstr->surfacedByTopicID.value._countAndFlagsBits = v5;
  retstr->surfacedByTopicID.value._object = v7;
  retstr->surfacedByChannelID.value._countAndFlagsBits = v10;
  retstr->surfacedByChannelID.value._object = v12;
  retstr->surfacedByArticleListIDs.value._rawValue = v13;
}

uint64_t sub_217BF14D4(void *a1)
{
  v1 = [a1 surfacedByArticleListIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217D896EC();

  return v3;
}

NewsAnalytics::ShareOriginationData_optional __swiftcall FCHeadlineProviding.shareOriginationData()()
{
  v2 = v1;
  v22 = v0;
  v3 = sub_217D891BC();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BF181C(0, &qword_2811BCEC8, MEMORY[0x277D33250]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_217D891CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8927C();
  v16 = sub_217D8926C();
  v17 = [v2 articleID];
  sub_217D8954C();

  sub_217D8925C();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result.value.origin = sub_217A5B4EC(v10, &qword_2811BCEC8, MEMORY[0x277D33250]);
    v19 = 2;
LABEL_6:
    *v22 = v19;
    return result;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_217D891AC();
  v20 = (*(v21 + 88))(v6, v3);
  if (v20 == *MEMORY[0x277D33248] || v20 == *MEMORY[0x277D33240])
  {
    v19 = v20 != *MEMORY[0x277D33248];
    result.value.origin = (*(v12 + 8))(v15, v11);
    goto LABEL_6;
  }

  result.value.origin = sub_217D89D3C();
  __break(1u);
  return result;
}

void sub_217BF181C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D898EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void FCHeadlineProviding.recipeListData.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 recipeIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D896EC();
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
}

uint64_t sub_217BF1938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

uint64_t sub_217BF19BC(uint64_t a1)
{
  v2 = sub_217BF1B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF19F8(uint64_t a1)
{
  v2 = sub_217BF1B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogStyleData.encode(to:)(void *a1)
{
  sub_217BF1DD0(0, &qword_2811BC760, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF1B90();
  sub_217D89E7C();
  v13 = v9;
  sub_217BF1BE4();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF1B90()
{
  result = qword_2811C6908;
  if (!qword_2811C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6908);
  }

  return result;
}

unint64_t sub_217BF1BE4()
{
  result = qword_2811C7D68;
  if (!qword_2811C7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D68);
  }

  return result;
}

uint64_t DialogStyleData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BF1DD0(0, &qword_27CBA1C10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF1B90();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BF1E34();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF1DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF1B90();
    v7 = a3(a1, &type metadata for DialogStyleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF1E34()
{
  result = qword_27CBA1C18;
  if (!qword_27CBA1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C18);
  }

  return result;
}

unint64_t sub_217BF1EE4()
{
  result = qword_27CBA1C20;
  if (!qword_27CBA1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C20);
  }

  return result;
}

unint64_t sub_217BF1F3C()
{
  result = qword_2811C68F8;
  if (!qword_2811C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68F8);
  }

  return result;
}

unint64_t sub_217BF1F94()
{
  result = qword_2811C6900;
  if (!qword_2811C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6900);
  }

  return result;
}

uint64_t ReferralFeedData.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t ReferralFeedData.feedData.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_217BF208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
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

uint64_t sub_217BF2114(uint64_t a1)
{
  v2 = sub_217BF230C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF2150(uint64_t a1)
{
  v2 = sub_217BF230C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralFeedData.encode(to:)(void *a1)
{
  sub_217BF2504(0, &qword_27CBA1C28, MEMORY[0x277D84538]);
  v4 = v3;
  v17 = *(v3 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v10 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF230C();

  sub_217D89E7C();
  v14 = v8;
  v15 = v10;
  v16 = v9;
  sub_217A5BA2C();
  sub_217D89CAC();

  return (*(v17 + 8))(v7, v4);
}

unint64_t sub_217BF230C()
{
  result = qword_27CBA1C30;
  if (!qword_27CBA1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C30);
  }

  return result;
}

uint64_t ReferralFeedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BF2504(0, &qword_27CBA1C38, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF230C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5B978();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v12 = v15;
    *a2 = v14[8];
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF2504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF230C();
    v7 = a3(a1, &type metadata for ReferralFeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF25AC()
{
  result = qword_27CBA1C40;
  if (!qword_27CBA1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C40);
  }

  return result;
}

unint64_t sub_217BF2604()
{
  result = qword_27CBA1C48;
  if (!qword_27CBA1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C48);
  }

  return result;
}

unint64_t sub_217BF265C()
{
  result = qword_27CBA1C50;
  if (!qword_27CBA1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C50);
  }

  return result;
}

uint64_t ArticleData.init(alternateHeadlineData:articleAccessType:articleID:articleType:backendArticleVersion:bodyTextLength:hasVideo:iAdCategories:publishDate:publisherArticleVersion:referencedArticleID:role:topicIDs:isAudio:isEvergreen:isFeatured:isFeatureCandidate:reduceVisibility:webConverted:hasAIGeneratedContent:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, __int128 a14, uint64_t a15, char *a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24)
{
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = *a2;
  v27 = *a5;
  v28 = *a16;
  *a9 = v24;
  *(a9 + 4) = v25;
  *(a9 + 8) = v26;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v27;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  result = a8 & 1;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13 & 1;
  *(a9 + 88) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = v28;
  *(a9 + 120) = a17;
  *(a9 + 128) = a18;
  *(a9 + 129) = a19;
  *(a9 + 130) = a20;
  *(a9 + 131) = a21;
  *(a9 + 132) = a22;
  *(a9 + 133) = a23;
  *(a9 + 134) = a24;
  return result;
}

void ArticleData.alternateHeadlineData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t ArticleData.alternateHeadlineData.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t ArticleData.articleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArticleData.bodyTextLength.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ArticleData.bodyTextLength.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ArticleData.iAdCategories.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ArticleData.publishDate.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ArticleData.publishDate.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ArticleData.referencedArticleID.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ArticleData.referencedArticleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ArticleData.topicIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

unint64_t sub_217BF2C78(char a1)
{
  result = 0x49656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x54656C6369747261;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7478655479646F62;
      break;
    case 6:
      result = 0x6F65646956736168;
      break;
    case 7:
      result = 0x6765746143644169;
      break;
    case 8:
      result = 0x446873696C627570;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 1701605234;
      break;
    case 12:
      result = 0x7344496369706F74;
      break;
    case 13:
      result = 0x6F696475417369;
      break;
    case 14:
      result = 0x7267726576457369;
      break;
    case 15:
      result = 0x7275746165467369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x65766E6F43626577;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_217BF2EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BF4420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BF2F18(uint64_t a1)
{
  v2 = sub_217BF357C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF2F54(uint64_t a1)
{
  v2 = sub_217BF357C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleData.encode(to:)(void *a1)
{
  sub_217BF3FB4(0, &qword_2811BC860, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v40 = v1[8];
  v10 = *(v1 + 2);
  v38 = *(v1 + 3);
  v39 = v10;
  v37 = v1[32];
  v11 = *(v1 + 6);
  v36 = *(v1 + 5);
  v34 = v11;
  v35 = v1[56];
  v33 = v1[57];
  v12 = *(v1 + 9);
  v32 = *(v1 + 8);
  v31 = v1[80];
  v13 = *(v1 + 12);
  v29 = *(v1 + 11);
  v30 = v12;
  v14 = *(v1 + 13);
  v27 = v13;
  v28 = v14;
  v26 = v1[112];
  v25 = *(v1 + 15);
  LODWORD(v10) = v1[128];
  v24[4] = v1[129];
  v24[5] = v10;
  LODWORD(v10) = v1[130];
  v24[2] = v1[131];
  v24[3] = v10;
  LODWORD(v14) = v1[133];
  v24[0] = v1[132];
  v24[1] = v14;
  v15 = v1[134];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_217BF357C();
  sub_217D89E7C();
  LOBYTE(v43) = v8;
  HIDWORD(v43) = v9;
  v42 = 0;
  sub_217BF35D0();
  v21 = v41;
  sub_217D89CAC();
  if (!v21)
  {
    v22 = v37;
    LODWORD(v41) = v15;
    LOBYTE(v43) = v40;
    v42 = 1;
    sub_217BF3624();
    sub_217D89CAC();
    LOBYTE(v43) = 2;
    sub_217D89C6C();
    LOBYTE(v43) = v22;
    v42 = 3;
    sub_217BF3678();
    sub_217D89CAC();
    LOBYTE(v43) = 4;
    sub_217D89CCC();
    LOBYTE(v43) = 5;
    sub_217D89C5C();
    LOBYTE(v43) = 6;
    sub_217D89C7C();
    v43 = v32;
    v42 = 7;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89C3C();
    LOBYTE(v43) = 8;
    sub_217D89C5C();
    LOBYTE(v43) = 9;
    sub_217D89CCC();
    LOBYTE(v43) = 10;
    sub_217D89C0C();
    LOBYTE(v43) = v26;
    v42 = 11;
    sub_217ADB920();
    sub_217D89CAC();
    v43 = v25;
    v42 = 12;
    sub_217D89CAC();
    LOBYTE(v43) = 13;
    sub_217D89C7C();
    LOBYTE(v43) = 14;
    sub_217D89C7C();
    LOBYTE(v43) = 15;
    sub_217D89C7C();
    LOBYTE(v43) = 16;
    sub_217D89C7C();
    LOBYTE(v43) = 17;
    sub_217D89C7C();
    LOBYTE(v43) = 18;
    sub_217D89C7C();
    LOBYTE(v43) = 19;
    sub_217D89C1C();
  }

  return (*(v4 + 8))(v7, v20);
}

unint64_t sub_217BF357C()
{
  result = qword_2811C7DE0;
  if (!qword_2811C7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DE0);
  }

  return result;
}

unint64_t sub_217BF35D0()
{
  result = qword_2811C19D0;
  if (!qword_2811C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19D0);
  }

  return result;
}

unint64_t sub_217BF3624()
{
  result = qword_2811C4980[0];
  if (!qword_2811C4980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4980);
  }

  return result;
}

unint64_t sub_217BF3678()
{
  result = qword_2811C7DB0;
  if (!qword_2811C7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DB0);
  }

  return result;
}

uint64_t ArticleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BF3FB4(0, &qword_2811BCB50, MEMORY[0x277D844C8]);
  v113 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF357C();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v6;
    LOBYTE(v64) = 0;
    sub_217BF4018();
    sub_217D89BCC();
    v12 = v72;
    v13 = HIDWORD(v72);
    LOBYTE(v64) = 1;
    sub_217BF406C();
    sub_217D89BCC();
    v63 = v12;
    v14 = v72;
    LOBYTE(v72) = 2;
    v15 = sub_217D89B8C();
    v59 = v14;
    v60 = v15;
    v62 = v16;
    LOBYTE(v64) = 3;
    sub_217BF40C0();
    sub_217D89BCC();
    v17 = v72;
    LOBYTE(v72) = 4;
    v58 = sub_217D89BEC();
    LOBYTE(v72) = 5;
    v57 = sub_217D89B7C();
    v108 = v18 & 1;
    LOBYTE(v72) = 6;
    v55 = sub_217D89B9C();
    sub_217A55F8C();
    v20 = v19;
    LOBYTE(v64) = 7;
    v21 = sub_217A55FDC(&qword_2811BCD38);
    v61 = v20;
    v56 = v21;
    sub_217D89B5C();
    v54 = v13;
    v52 = a2;
    v22 = v72;
    LOBYTE(v72) = 8;
    v53 = sub_217D89B7C();
    v105 = v23 & 1;
    LOBYTE(v72) = 9;
    v51 = sub_217D89BEC();
    LOBYTE(v72) = 10;
    *&v50 = sub_217D89B2C();
    *(&v50 + 1) = v24;
    LOBYTE(v64) = 11;
    sub_217ADBC10();
    sub_217D89BCC();
    v49 = v72;
    LOBYTE(v64) = 12;
    sub_217D89BCC();
    v61 = v72;
    LOBYTE(v72) = 13;
    LODWORD(v56) = sub_217D89B9C();
    LOBYTE(v72) = 14;
    v48 = sub_217D89B9C();
    LOBYTE(v72) = 15;
    v47 = sub_217D89B9C();
    LOBYTE(v72) = 16;
    v46 = sub_217D89B9C();
    LOBYTE(v72) = 17;
    v45 = sub_217D89B9C();
    LOBYTE(v72) = 18;
    v44 = sub_217D89B9C();
    v102 = 19;
    v43 = sub_217D89B3C();
    v25 = v55 & 1;
    v40 = v55 & 1;
    v55 = v48 & 1;
    LOBYTE(v56) = v56 & 1;
    LODWORD(v56) = v56;
    v26 = v47 & 1;
    v42 = v46 & 1;
    v47 = v45 & 1;
    v48 = v26;
    v46 = v44 & 1;
    (*(v11 + 8))(v9, v113);
    LOBYTE(v64) = v63;
    *(&v64 + 1) = v111;
    BYTE3(v64) = v112;
    DWORD1(v64) = v54;
    BYTE8(v64) = v59;
    *(&v64 + 9) = *v110;
    HIDWORD(v64) = *&v110[3];
    *&v65 = v60;
    *(&v65 + 1) = v62;
    v41 = v17;
    LOBYTE(v66) = v17;
    *(&v66 + 1) = *v109;
    DWORD1(v66) = *&v109[3];
    *(&v66 + 1) = v58;
    *&v67 = v57;
    LODWORD(v113) = v108;
    BYTE8(v67) = v108;
    BYTE9(v67) = v25;
    *(&v67 + 10) = v106;
    HIWORD(v67) = v107;
    *&v68 = v22;
    *(&v68 + 1) = v53;
    v45 = v105;
    LOBYTE(v69) = v105;
    *(&v69 + 1) = *v104;
    DWORD1(v69) = *&v104[3];
    v27 = *(&v50 + 1);
    v28 = v51;
    v29 = v50;
    *(&v69 + 1) = v51;
    v70 = v50;
    v71[0] = v49;
    *&v71[4] = *&v103[3];
    *&v71[1] = *v103;
    *&v71[8] = v61;
    v71[16] = v56;
    v71[17] = v55;
    v71[18] = v48;
    v30 = v43;
    v71[19] = v42;
    v71[20] = v47;
    v71[21] = v46;
    v71[22] = v43;
    v31 = v64;
    v32 = v65;
    v33 = v67;
    v34 = v52;
    *(v52 + 32) = v66;
    *(v34 + 48) = v33;
    *v34 = v31;
    *(v34 + 16) = v32;
    v35 = v68;
    v36 = v69;
    v37 = v70;
    v38 = *v71;
    *(v34 + 127) = *&v71[15];
    *(v34 + 96) = v37;
    *(v34 + 112) = v38;
    *(v34 + 64) = v35;
    *(v34 + 80) = v36;
    sub_217AD1630(&v64, &v72);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v72) = v63;
    *(&v72 + 1) = v111;
    BYTE3(v72) = v112;
    HIDWORD(v72) = v54;
    v73 = v59;
    *v74 = *v110;
    *&v74[3] = *&v110[3];
    v75 = v60;
    v76 = v62;
    v77 = v41;
    *v78 = *v109;
    *&v78[3] = *&v109[3];
    v79 = v58;
    v80 = v57;
    v81 = v113;
    v82 = v40;
    v83 = v106;
    v84 = v107;
    v85 = v22;
    v86 = v53;
    v87 = v45;
    *v88 = *v104;
    *&v88[3] = *&v104[3];
    v89 = v28;
    v90 = v29;
    v91 = v27;
    v92 = v49;
    *&v93[3] = *&v103[3];
    *v93 = *v103;
    v94 = v61;
    v95 = v56;
    v96 = v55;
    v97 = v48;
    v98 = v42;
    v99 = v47;
    v100 = v46;
    v101 = v30;
    return sub_217AD2864(&v72);
  }
}

void sub_217BF3FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF357C();
    v7 = a3(a1, &type metadata for ArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF4018()
{
  result = qword_2811C19C8;
  if (!qword_2811C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19C8);
  }

  return result;
}

unint64_t sub_217BF406C()
{
  result = qword_2811C4970;
  if (!qword_2811C4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4970);
  }

  return result;
}

unint64_t sub_217BF40C0()
{
  result = qword_2811C7DA0;
  if (!qword_2811C7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DA0);
  }

  return result;
}

__n128 __swift_memcpy135_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_217BF4180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 135))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}