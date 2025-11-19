void sub_217B625AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B619F4();
    v7 = a3(a1, &type metadata for PuzzleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B62610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B62674(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B627A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217A608E0();
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v11, v30);
}

void sub_217B62DCC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B60198(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217B60198(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
      if (v2 <= 0x3F)
      {
        sub_217B60198(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217B60198(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217B60198(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
            if (v5 <= 0x3F)
            {
              sub_217B60198(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
              if (v6 <= 0x3F)
              {
                sub_217A608E0();
                if (v7 <= 0x3F)
                {
                  sub_217B60198(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
                  if (v8 <= 0x3F)
                  {
                    sub_217B60198(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217B60198(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
                      if (v10 <= 0x3F)
                      {
                        sub_217B60198(319, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230);
                        if (v11 <= 0x3F)
                        {
                          sub_217B60198(319, &qword_2811C86E0, sub_217B2D930, sub_217B2D988);
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

unint64_t sub_217B631FC()
{
  result = qword_27CBA0490;
  if (!qword_27CBA0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0490);
  }

  return result;
}

unint64_t sub_217B63254()
{
  result = qword_27CBA0498;
  if (!qword_27CBA0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0498);
  }

  return result;
}

unint64_t sub_217B632AC()
{
  result = qword_27CBA04A0;
  if (!qword_27CBA04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04A0);
  }

  return result;
}

uint64_t sub_217B63300(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCDEF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7453656C7A7A7570 && a2 == 0xEF61746144737461)
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

NewsAnalytics::SearchResultsSource_optional __swiftcall SearchResultsSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t SearchResultsSource.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x73757361676570;
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

uint64_t sub_217B637FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000217DCAC40;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCAC40;
  }

  else
  {
    v3 = 0x73757361676570;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x73757361676570;
    v4 = 0xE700000000000000;
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
    v10 = v4;
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

unint64_t sub_217B638FC()
{
  result = qword_27CBA04A8;
  if (!qword_27CBA04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04A8);
  }

  return result;
}

uint64_t sub_217B63950()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B639F8()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B63A8C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B63B3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCAC40;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x73757361676570;
    v4 = 0xE700000000000000;
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

unint64_t sub_217B63C50()
{
  result = qword_27CBA04B0;
  if (!qword_27CBA04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04B0);
  }

  return result;
}

uint64_t sub_217B63CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_217B63D84(uint64_t a1)
{
  v2 = sub_217B63F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B63DC0(uint64_t a1)
{
  v2 = sub_217B63F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGroupPositionData.encode(to:)(void *a1)
{
  sub_217B64118(0, &qword_2811BC678, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B63F44()
{
  result = qword_2811C2A00;
  if (!qword_2811C2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A00);
  }

  return result;
}

uint64_t InGroupPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B64118(0, &qword_2811BC9F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B64118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B63F44();
    v7 = a3(a1, &type metadata for InGroupPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B6419C(void *a1)
{
  sub_217B64118(0, &qword_2811BC678, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B64308()
{
  result = qword_27CBA04B8;
  if (!qword_27CBA04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04B8);
  }

  return result;
}

unint64_t sub_217B64360()
{
  result = qword_2811C29F0;
  if (!qword_2811C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29F0);
  }

  return result;
}

unint64_t sub_217B643B8()
{
  result = qword_2811C29F8;
  if (!qword_2811C29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29F8);
  }

  return result;
}

uint64_t sub_217B644D4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA04C0);
  __swift_project_value_buffer(v0, qword_27CBA04C0);
  return sub_217D8866C();
}

uint64_t WebEmbedLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 24);
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 24);
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 28);
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 28);
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 32);
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 32);
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 36);
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 36);
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 40);
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B64E88(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t WebEmbedLoadEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 40);
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for WebEmbedLoadEvent(0);
  v5 = Event[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = Event[7];
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = Event[8];
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = Event[9];
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = Event[10];
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t sub_217B65378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedLoadEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 24));
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

uint64_t WebEmbedLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedLoadEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 WebEmbedLoadEvent.Model.init(eventData:timedData:groupData:feedData:feedPositionData:inGroupPositionData:webEmbedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v31 = *a4;
  v12 = a4[1].n128_u64[0];
  v13 = *a5;
  v14 = *(a5 + 4);
  v15 = *a6;
  v16 = *(a6 + 4);
  v32 = a7[1];
  v33 = *a7;
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v18 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D889CC();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v21 = (a8 + v18[6]);
  v22 = a3[7];
  v21[6] = a3[6];
  v21[7] = v22;
  v21[8] = a3[8];
  v23 = a3[3];
  v21[2] = a3[2];
  v21[3] = v23;
  v24 = a3[5];
  v21[4] = a3[4];
  v21[5] = v24;
  v25 = a3[1];
  *v21 = *a3;
  v21[1] = v25;
  v26 = (a8 + v18[7]);
  result = v31;
  *v26 = v31;
  v26[1].n128_u64[0] = v12;
  v28 = a8 + v18[8];
  *v28 = v13;
  *(v28 + 4) = v14;
  v29 = a8 + v18[9];
  *v29 = v15;
  *(v29 + 4) = v16;
  v30 = (a8 + v18[10]);
  *v30 = v33;
  v30[1] = v32;
  return result;
}

unint64_t sub_217B65744()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6465626D45626577;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x74614470756F7267;
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

uint64_t sub_217B6582C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B66FA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B65854(uint64_t a1)
{
  v2 = sub_217B65D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B65890(uint64_t a1)
{
  v2 = sub_217B65D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B665D0(0, &qword_27CBA04D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B65D58();
  sub_217D89E7C();
  LOBYTE(v49) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WebEmbedLoadEvent.Model(0);
    v13 = v12[5];
    v58 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[6];
    v16 = v14[4];
    v54 = v14[5];
    v55 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v56 = v14[7];
    v57 = v18;
    v19 = v14[2];
    v20 = *v14;
    v50 = v14[1];
    v51 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v52 = v14[3];
    v53 = v22;
    v23 = *v14;
    v46 = v17;
    v47 = v56;
    v48 = v14[8];
    v49 = v23;
    v42 = v21;
    v43 = v52;
    v44 = v16;
    v45 = v54;
    v40 = v20;
    v41 = v50;
    v39 = 2;
    sub_217AD87FC(&v49, v38);
    sub_217A5D3B4();
    sub_217D89C3C();
    v38[7] = v47;
    v38[8] = v48;
    v38[2] = v42;
    v38[3] = v43;
    v38[5] = v45;
    v38[6] = v46;
    v38[4] = v44;
    v38[0] = v40;
    v38[1] = v41;
    sub_217AD96E8(v38);
    v24 = (v3 + v12[7]);
    v25 = v24[1];
    v26 = v24[2];
    v35 = *v24;
    v36 = v25;
    v37 = v26;
    HIBYTE(v34) = 3;
    sub_217AD1A68(v35, v25, v26);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v35, v36, v37);
    v27 = (v3 + v12[8]);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 4);
    LODWORD(v35) = v28;
    BYTE4(v35) = v27;
    HIBYTE(v34) = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v29 = (v3 + v12[9]);
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 4);
    LODWORD(v35) = v30;
    BYTE4(v35) = v29;
    HIBYTE(v34) = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v31 = (v3 + v12[10]);
    v32 = v31[1];
    v35 = *v31;
    v36 = v32;
    HIBYTE(v34) = 6;
    sub_217AE89C8();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B65D58()
{
  result = qword_27CBA04E0;
  if (!qword_27CBA04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04E0);
  }

  return result;
}

uint64_t WebEmbedLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_217D889CC();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B665D0(0, &qword_27CBA04E8, MEMORY[0x277D844C8]);
  v45 = v9;
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B65D58();
  v47 = v12;
  v18 = v61;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v16;
  v20 = v43;
  LOBYTE(v52) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = *(v42 + 32);
  v61 = v6;
  v21(v19, v46, v6);
  LOBYTE(v52) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  v46 = 0;
  (*(v41 + 32))(&v19[v13[5]], v5, v20);
  v51 = 2;
  sub_217A5D308();
  sub_217D89B5C();
  v22 = v19;
  v23 = &v19[v13[6]];
  v24 = v59;
  *(v23 + 6) = v58;
  *(v23 + 7) = v24;
  *(v23 + 8) = v60;
  v25 = v55;
  *(v23 + 2) = v54;
  *(v23 + 3) = v25;
  v26 = v57;
  *(v23 + 4) = v56;
  *(v23 + 5) = v26;
  v27 = v53;
  *v23 = v52;
  *(v23 + 1) = v27;
  v48 = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v28 = v13;
  v29 = v50;
  v30 = v22 + v13[7];
  *v30 = v49;
  *(v30 + 16) = v29;
  v48 = 4;
  sub_217AD76BC();
  sub_217D89B5C();
  v31 = v44;
  v32 = BYTE4(v49);
  v33 = v22 + v28[8];
  *v33 = v49;
  *(v33 + 4) = v32;
  v48 = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v34 = BYTE4(v49);
  v35 = v22 + v28[9];
  *v35 = v49;
  *(v35 + 4) = v34;
  v48 = 6;
  sub_217AE8974();
  sub_217D89BCC();
  (*(v31 + 8))(v47, v45);
  v36 = *(&v49 + 1);
  v37 = (v22 + v28[10]);
  *v37 = v49;
  v37[1] = v36;
  sub_217B66634(v22, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B66698(v22);
}

void sub_217B665D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B65D58();
    v7 = a3(a1, &type metadata for WebEmbedLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B66634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B66698(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B667CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217B66B20()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B64E88(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
      if (v2 <= 0x3F)
      {
        sub_217B64E88(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217B64E88(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217B64E88(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217B64E88(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
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

void sub_217B66D5C()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C5238);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C29D8);
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

unint64_t sub_217B66E9C()
{
  result = qword_27CBA0500;
  if (!qword_27CBA0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0500);
  }

  return result;
}

unint64_t sub_217B66EF4()
{
  result = qword_27CBA0508;
  if (!qword_27CBA0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0508);
  }

  return result;
}

unint64_t sub_217B66F4C()
{
  result = qword_27CBA0510;
  if (!qword_27CBA0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0510);
  }

  return result;
}

uint64_t sub_217B66FA0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144)
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

uint64_t sub_217B67280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, void), void (*a7)(uint64_t, uint64_t, void, void, uint64_t, uint64_t), void (*a8)(uint64_t, unint64_t))
{
  v14 = sub_217D8809C();
  MEMORY[0x21CEACC70](v14);

  a6(0x656D69746C616572, 0xE90000000000002DLL, a3, 0);
  a7(a1, a2, 0, 0, a4, a5);
  a8(0x656D69746C616572, 0xE90000000000002DLL);
}

uint64_t sub_217B673D0()
{
  v0 = sub_217D87EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_217D87EAC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v13[15] = 0;
  sub_217A4EB0C(0, &qword_2811C8A50);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8BD0 = result;
  return result;
}

uint64_t Settings.Analytics.Debugging.Jitter.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217D87EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  (*(v7 + 16))(v10, a4, v6);
  v13 = sub_217D87E0C();
  (*(v7 + 8))(a4, v6);
  return v13;
}

uint64_t sub_217B67754()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x277D309D8];
  sub_217D8954C();
  v11 = *MEMORY[0x277D30998];
  *v9 = sub_217D8954C();
  v9[1] = v12;
  (*(v6 + 104))(v9, *MEMORY[0x277D6D0A0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_217A4EB0C(0, &qword_2811C8A58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_27CBA0518 = result;
  return result;
}

uint64_t sub_217B67970()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217A4EB0C(0, &qword_27CBA0548);
  v20[3] = v10;
  v11 = *MEMORY[0x277D304E8];
  v12 = sub_217D8954C();
  v20[1] = v13;
  v20[2] = v12;
  v22 = 0x404E000000000000;
  v14 = *MEMORY[0x277D30998];
  *v9 = sub_217D8954C();
  v9[1] = v15;
  (*(v6 + 104))(v9, *MEMORY[0x277D6D0A0], v5);
  sub_217B698FC(0, &qword_27CBA0550, &qword_27CBA0558);
  sub_217B699A8(0, &qword_27CBA0558);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_217D98100;
  v21 = 0x3FF0000000000000;
  sub_217D87ECC();
  v21 = 0x4014000000000000;
  sub_217D87ECC();
  v21 = 0x4024000000000000;
  sub_217D87ECC();
  v21 = 0x404E000000000000;
  sub_217D87ECC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_217D87EEC();
  qword_27CBA0520 = result;
  return result;
}

uint64_t Settings.Analytics.SamplingRate.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217D89B0C();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Analytics.SamplingRate.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1869768058;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

uint64_t sub_217B67E50()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B67F48@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Settings.Analytics.SamplingRate.init(rawValue:)(a1);
}

void sub_217B67F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1869768058;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_217B68014(uint64_t a1)
{
  v2 = sub_217B6974C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_217B68068(uint64_t a1, uint64_t a2)
{
  v4 = sub_217B6974C();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_217B680C4(uint64_t a1)
{
  v2 = sub_217B6974C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_217B68118()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87DFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A63428();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D040], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_217D87EFC();
  qword_27CBA0528 = result;
  return result;
}

uint64_t sub_217B682E8()
{
  v0 = sub_217D87EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B69848(0, &qword_2811C8A78, sub_217B698A8);
  v15[1] = "s.headline_exposure_noise_rate";
  v15[2] = v10;
  v22 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x277D6D098], v5);
  sub_217B698FC(0, &qword_2811BC4B0, &qword_2811C8A88);
  sub_217B699A8(0, &qword_2811C8A88);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_217D9AA70;
  v21 = 0;
  sub_217D87ECC();
  v20 = 1;
  sub_217D87ECC();
  v19 = 2;
  sub_217D87ECC();
  v18 = 3;
  sub_217D87ECC();
  v17 = 4;
  sub_217D87ECC();
  v16 = 5;
  sub_217D87ECC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  sub_217B69954();
  result = sub_217D87EEC();
  qword_2811C8C30 = result;
  return result;
}

uint64_t Settings.Analytics.Sports.NoiseRate.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217D89B0C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Analytics.Sports.NoiseRate.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7974666966;
  v4 = 0x72646E7548656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x72646E75486F7774;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1869768058;
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

uint64_t sub_217B687D0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B688B0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B6897C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B68A58@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Settings.Analytics.Sports.NoiseRate.init(rawValue:)(a1);
}

void sub_217B68A64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0x72646E7548656E6FLL;
  if (v2 != 3)
  {
    v7 = 0x72646E75486F7774;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v4 = 1869768058;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_217B68B00(uint64_t a1)
{
  v2 = sub_217B696F8();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_217B68B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_217B696F8();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_217B68BB0(uint64_t a1)
{
  v2 = sub_217B696F8();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_217B68C04()
{
  v15 = sub_217D87EBC();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87EAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B69848(0, &qword_2811C8A70, sub_217B697A0);
  v14[0] = "on.jitter.enablement";
  v14[1] = v9;
  v21 = 0;
  (*(v5 + 104))(v8, *MEMORY[0x277D6D098], v4);
  sub_217B698FC(0, &qword_2811BC4A8, &qword_2811C8A80);
  sub_217B699A8(0, &qword_2811C8A80);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_217D9AA80;
  v20 = 0;
  sub_217D87ECC();
  v19 = 1;
  sub_217D87ECC();
  v18 = 2;
  sub_217D87ECC();
  v17 = 3;
  sub_217D87ECC();
  v16 = 4;
  sub_217D87ECC();
  (*(v0 + 104))(v3, *MEMORY[0x277D6D0A8], v15);
  sub_217B697F4();
  result = sub_217D87EEC();
  qword_2811C8C18 = result;
  return result;
}

uint64_t sub_217B68FB4()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 1;
  sub_217A4EB0C(0, &qword_2811C8A50);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_27CBA0530 = result;
  return result;
}

uint64_t sub_217B691A8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_27CBA0548);
  v6[3] = 0xC082C00000000000;
  v6[1] = 0;
  v6[2] = 0xFFEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_27CBA0538 = result;
  return result;
}

uint64_t sub_217B69314()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_27CBA0548);
  v6[2] = 0;
  v6[3] = 0x4082C00000000000;
  v6[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_27CBA0540 = result;
  return result;
}

uint64_t Settings.Analytics.Debugging.Jitter.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217D87EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v9 = sub_217D87E0C();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.Analytics.Debugging.Jitter.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C13NewsAnalyticsE0D0V9DebuggingV6JitterCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_217B695C8()
{
  result = qword_2811C8C60;
  if (!qword_2811C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C60);
  }

  return result;
}

unint64_t sub_217B6961C()
{
  result = qword_2811C8C00;
  if (!qword_2811C8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C00);
  }

  return result;
}

unint64_t sub_217B696F8()
{
  result = qword_2811C8BF8;
  if (!qword_2811C8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BF8);
  }

  return result;
}

unint64_t sub_217B6974C()
{
  result = qword_2811C8C58;
  if (!qword_2811C8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C58);
  }

  return result;
}

unint64_t sub_217B697A0()
{
  result = qword_2811C8BE8;
  if (!qword_2811C8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BE8);
  }

  return result;
}

unint64_t sub_217B697F4()
{
  result = qword_2811C8BF0;
  if (!qword_2811C8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BF0);
  }

  return result;
}

void sub_217B69848(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_217D87F1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217B698A8()
{
  result = qword_2811C8C48;
  if (!qword_2811C8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C48);
  }

  return result;
}

void sub_217B698FC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_217B699A8(255, a3);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217B69954()
{
  result = qword_2811C8C50;
  if (!qword_2811C8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C50);
  }

  return result;
}

void sub_217B699A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217D87EDC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

NewsAnalytics::StoreKitError_optional __swiftcall StoreKitError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t StoreKitError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6E49746E65696C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x49746E656D796170;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 9:
      v2 = 13;
      goto LABEL_22;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0x5264696C61766E69;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      v2 = 11;
LABEL_22:
      result = v2 | 0xD000000000000010;
      break;
    case 0x14:
      result = 0x5479616C7265766FLL;
      break;
    case 0x16:
      result = 0x636E614361776973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B69E40(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StoreKitError.rawValue.getter();
  v4 = v3;
  if (v2 == StoreKitError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217B69EE0()
{
  result = qword_27CBA0560;
  if (!qword_27CBA0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0560);
  }

  return result;
}

uint64_t sub_217B69F34()
{
  v1 = *v0;
  sub_217D89E1C();
  StoreKitError.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B69F9C()
{
  v2 = *v0;
  StoreKitError.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B6A000()
{
  v1 = *v0;
  sub_217D89E1C();
  StoreKitError.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B6A070@<X0>(unint64_t *a1@<X8>)
{
  result = StoreKitError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B6A298()
{
  result = qword_27CBA0568;
  if (!qword_27CBA0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0568);
  }

  return result;
}

uint64_t sub_217B6A3B4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA05A0);
  __swift_project_value_buffer(v0, qword_27CBA05A0);
  return sub_217D8866C();
}

uint64_t ArticleLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLinkTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 20);
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 20);
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 24);
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 24);
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 28);
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 28);
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 32);
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B6AAC8()
{
  result = qword_2811BD338;
  if (!qword_2811BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD338);
  }

  return result;
}

unint64_t sub_217B6AB1C()
{
  result = qword_2811BD340;
  if (!qword_2811BD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD340);
  }

  return result;
}

uint64_t ArticleLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 32);
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 36);
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B6AD20(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleLinkTapEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 36);
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleLinkTapEvent(0);
  v5 = v4[5];
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v8, v15);
}

uint64_t ArticleLinkTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 20);
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

uint64_t ArticleLinkTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 28));
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

uint64_t ArticleLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t ArticleLinkTapEvent.Model.experimentationData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 36));
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

__n128 ArticleLinkTapEvent.Model.init(eventData:articleData:viewData:userBundleSubscriptionContextData:urlData:experimentationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 8);
  v32 = *a5;
  v15 = *(a5 + 2);
  v16 = *(a5 + 3);
  v17 = sub_217D8899C();
  v30 = a6[1];
  v31 = *a6;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  v19 = a7 + v18[5];
  v20 = *(a2 + 48);
  *(v19 + 32) = *(a2 + 32);
  *(v19 + 48) = v20;
  v21 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v21;
  *(v19 + 127) = *(a2 + 127);
  v22 = *(a2 + 112);
  *(v19 + 96) = *(a2 + 96);
  *(v19 + 112) = v22;
  v23 = *(a2 + 80);
  *(v19 + 64) = *(a2 + 64);
  *(v19 + 80) = v23;
  v24 = a7 + v18[6];
  *v24 = v12;
  *(v24 + 8) = v13;
  *(v24 + 16) = v14;
  v25 = a7 + v18[7];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a4 + 32);
  *(v25 + 48) = *(a4 + 48);
  v27 = a7 + v18[8];
  *v27 = v32;
  *(v27 + 16) = v15;
  *(v27 + 24) = v16;
  v28 = (a7 + v18[9]);
  result = v31;
  *v28 = v31;
  v28[1] = v30;
  return result;
}

unint64_t sub_217B6B504()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x617461446C7275;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x6174614477656976;
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

uint64_t sub_217B6B5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B6CB44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B6B600(uint64_t a1)
{
  v2 = sub_217B6BB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6B63C(uint64_t a1)
{
  v2 = sub_217B6BB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B6C21C(0, &qword_27CBA05B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6BB58();
  sub_217D89E7C();
  v74 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v75 = type metadata accessor for ArticleLinkTapEvent.Model(0);
    v12 = v3 + *(v75 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v71 = *(v12 + 80);
    v72 = v13;
    v15 = *(v12 + 96);
    *v73 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v68 = *(v12 + 32);
    v69 = v17;
    v18 = *(v12 + 48);
    v70 = *(v12 + 64);
    v19 = *(v12 + 16);
    v67[0] = *v12;
    v67[1] = v19;
    v64 = v71;
    v65 = v15;
    v66[0] = *(v12 + 112);
    v61 = v68;
    v62 = v18;
    v63 = v14;
    *&v73[15] = *(v12 + 127);
    *(v66 + 15) = *(v12 + 127);
    v59 = v67[0];
    v60 = v16;
    v58 = 1;
    sub_217AD1630(v67, v56);
    sub_217ACF52C();
    sub_217D89CAC();
    v56[5] = v64;
    v56[6] = v65;
    *v57 = v66[0];
    *&v57[15] = *(v66 + 15);
    v56[2] = v61;
    v56[3] = v62;
    v56[4] = v63;
    v56[0] = v59;
    v56[1] = v60;
    sub_217AD2864(v56);
    v20 = v75;
    v21 = (v3 + *(v75 + 24));
    v22 = *v21;
    v23 = v21[1];
    LOWORD(v21) = *(v21 + 8);
    v53 = v22;
    v54 = v23;
    v55 = v21;
    v52 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v24 = (v3 + v20[7]);
    v25 = v24[1];
    v50[0] = *v24;
    v50[1] = v25;
    v27 = *v24;
    v26 = v24[1];
    v50[2] = v24[2];
    v51 = *(v24 + 48);
    v46 = v27;
    v47 = v26;
    v48 = v24[2];
    v49 = *(v24 + 48);
    v45 = 3;
    sub_217ACC004(v50, v43);
    sub_217A55B98();
    sub_217D89CAC();
    v43[0] = v46;
    v43[1] = v47;
    v43[2] = v48;
    v44 = v49;
    sub_217ACC69C(v43);
    v28 = (v3 + v20[8]);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    v39 = *v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v38 = 4;
    sub_217B6AB1C();

    sub_217D89CAC();

    v32 = (v3 + v20[9]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v39 = *v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v38 = 5;
    sub_217AE39D0(v39, v33);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v39, v40);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B6BB58()
{
  result = qword_27CBA05C0;
  if (!qword_27CBA05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05C0);
  }

  return result;
}

uint64_t ArticleLinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_217D8899C();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B6C21C(0, &qword_27CBA05C8, MEMORY[0x277D844C8]);
  v43 = v6;
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6BB58();
  v42 = v9;
  v15 = v61;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v39;
  v61 = v13;
  LOBYTE(v53) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v40;
  sub_217D89BCC();
  v18 = *(v16 + 32);
  v19 = v61;
  v40 = v3;
  v18(v61, v17);
  v52 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v20 = v19 + v10[5];
  v21 = v58;
  v22 = v60[0];
  *(v20 + 96) = v59;
  *(v20 + 112) = v22;
  v23 = v54;
  v24 = v56;
  v25 = v57;
  *(v20 + 32) = v55;
  *(v20 + 48) = v24;
  *(v20 + 127) = *(v60 + 15);
  *(v20 + 64) = v25;
  *(v20 + 80) = v21;
  *v20 = v53;
  *(v20 + 16) = v23;
  LOBYTE(v45) = 2;
  sub_217A5E738();
  v37 = 0;
  sub_217D89B5C();
  v26 = v49;
  v27 = v19 + v10[6];
  *v27 = v48;
  *(v27 + 16) = v26;
  v47 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = v10;
  v29 = v19 + v10[7];
  v30 = v49;
  *v29 = v48;
  *(v29 + 16) = v30;
  *(v29 + 32) = v50;
  *(v29 + 48) = v51;
  v44 = 4;
  sub_217B6AAC8();
  sub_217D89BCC();
  v31 = v41;
  v32 = *(&v45 + 1);
  v33 = v19 + v28[8];
  *v33 = v45;
  *(v33 + 8) = v32;
  *(v33 + 16) = v46;
  v44 = 5;
  sub_217B36858();
  sub_217D89B5C();
  (*(v31 + 8))(v42, v43);
  v34 = (v19 + v28[9]);
  v35 = v46;
  *v34 = v45;
  v34[1] = v35;
  sub_217B6C280(v19, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B6C2E4(v19);
}

void sub_217B6C21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6BB58();
    v7 = a3(a1, &type metadata for ArticleLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B6C280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B6C2E4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B6C418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v9, v16);
}

void sub_217B6C72C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B6AD20(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217B6AD20(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217B6AD20(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217B6AD20(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
          if (v4 <= 0x3F)
          {
            sub_217B6AD20(319, &qword_2811C8620, sub_217B36858, sub_217B368B0);
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

void sub_217B6C950()
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

unint64_t sub_217B6CA40()
{
  result = qword_27CBA05F0;
  if (!qword_27CBA05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05F0);
  }

  return result;
}

unint64_t sub_217B6CA98()
{
  result = qword_27CBA05F8;
  if (!qword_27CBA05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05F8);
  }

  return result;
}

unint64_t sub_217B6CAF0()
{
  result = qword_27CBA0600;
  if (!qword_27CBA0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0600);
  }

  return result;
}

uint64_t sub_217B6CB44(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::GroupFormationReason_optional __swiftcall GroupFormationReason.init(rawValue:)(Swift::String rawValue)
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

uint64_t GroupFormationReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C6C6F4664726168;
  v4 = 0x64657461727563;
  if (v1 != 3)
  {
    v4 = 1869048929;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1869903201;
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

unint64_t sub_217B6CE54()
{
  result = qword_27CBA0608;
  if (!qword_27CBA0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0608);
  }

  return result;
}

uint64_t sub_217B6CEA8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B6CF80()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B6D044()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B6D124(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000776FLL;
  v6 = 0x6C6C6F4664726168;
  v7 = 0xE700000000000000;
  v8 = 0x64657461727563;
  if (v2 != 3)
  {
    v8 = 1869048929;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
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

unint64_t sub_217B6D278()
{
  result = qword_2811C2040;
  if (!qword_2811C2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2040);
  }

  return result;
}

__n128 UserEventHistoryEventCountsData.init(articleSeenEventCount:articleVisitedEventCount:articleReadEventCount:articleLikedEventCount:articleDislikedEventCount:articleSharedEventCount:articleSavedEventCount:feedViewEventCount:tagFollowedEventCount:tagUnfollowedEventCount:tagMutedEventCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

unint64_t sub_217B6D508(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000019;
    if (a1 == 3)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v6;
    }

    if (a1)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v2 = 0xD000000000000017;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (a1 == 5)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_217B6D634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B6E000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B6D65C(uint64_t a1)
{
  v2 = sub_217B6D9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6D698(uint64_t a1)
{
  v2 = sub_217B6D9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventHistoryEventCountsData.encode(to:)(void *a1)
{
  sub_217B6DD10(0, &qword_2811BC8C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v19[8] = v1[2];
  v19[9] = v9;
  v12 = v1[5];
  v19[6] = v1[4];
  v19[7] = v11;
  v13 = v1[7];
  v19[4] = v1[6];
  v19[5] = v12;
  v14 = v1[9];
  v19[2] = v1[8];
  v19[3] = v13;
  v19[1] = v14;
  v15 = v1[10];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6D9B8();
  sub_217D89E7C();
  v30 = 0;
  v17 = v19[10];
  sub_217D89CCC();
  if (!v17)
  {
    v29 = 1;
    sub_217D89CCC();
    v28 = 2;
    sub_217D89CCC();
    v27 = 3;
    sub_217D89CCC();
    v26 = 4;
    sub_217D89CCC();
    v25 = 5;
    sub_217D89CCC();
    v24 = 6;
    sub_217D89CCC();
    v23 = 7;
    sub_217D89CCC();
    v22 = 8;
    sub_217D89CCC();
    v21 = 9;
    sub_217D89CCC();
    v20 = 10;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B6D9B8()
{
  result = qword_2811C83E8;
  if (!qword_2811C83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83E8);
  }

  return result;
}

uint64_t UserEventHistoryEventCountsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B6DD10(0, &qword_2811BCB68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6D9B8();
  sub_217D89E5C();
  if (!v2)
  {
    v39 = 0;
    v12 = sub_217D89BEC();
    v38 = 1;
    v13 = sub_217D89BEC();
    v37 = 2;
    v28 = sub_217D89BEC();
    v36 = 3;
    v27 = sub_217D89BEC();
    v35 = 4;
    v26 = sub_217D89BEC();
    v34 = 5;
    v25 = sub_217D89BEC();
    v33 = 6;
    v24 = sub_217D89BEC();
    v32 = 7;
    v23 = sub_217D89BEC();
    v31 = 8;
    v22 = sub_217D89BEC();
    v30 = 9;
    v21 = sub_217D89BEC();
    v29 = 10;
    v15 = sub_217D89BEC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v13;
    v16 = v27;
    a2[2] = v28;
    a2[3] = v16;
    v17 = v25;
    a2[4] = v26;
    a2[5] = v17;
    v18 = v23;
    a2[6] = v24;
    a2[7] = v18;
    v19 = v21;
    a2[8] = v22;
    a2[9] = v19;
    a2[10] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B6DD10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6D9B8();
    v7 = a3(a1, &type metadata for UserEventHistoryEventCountsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B6DD78()
{
  result = qword_2811C83C8;
  if (!qword_2811C83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83C8);
  }

  return result;
}

unint64_t sub_217B6DDD0()
{
  result = qword_2811C83D0;
  if (!qword_2811C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83D0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217B6DE78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B6DE98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

unint64_t sub_217B6DEFC()
{
  result = qword_27CBA0610;
  if (!qword_27CBA0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0610);
  }

  return result;
}

unint64_t sub_217B6DF54()
{
  result = qword_2811C83D8;
  if (!qword_2811C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83D8);
  }

  return result;
}

unint64_t sub_217B6DFAC()
{
  result = qword_2811C83E0;
  if (!qword_2811C83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83E0);
  }

  return result;
}

uint64_t sub_217B6E000(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCE360 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCE380 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE3A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE3C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCE3E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE400 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE420 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE460 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE480 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE4A0 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t SessionData.languageCode.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SessionData.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SessionData.userSegmentationTreatmentIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t SessionData.userSegmentationSegmentSetIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t SessionData.regionIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t SessionData.isPersonalizedAdsEnabled.getter()
{
  v0 = *(type metadata accessor for SessionData() + 64);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  sub_217D8870C();
  return v2;
}

uint64_t type metadata accessor for SessionData()
{
  result = qword_2811C7C40;
  if (!qword_2811C7C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217B6E7FC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SessionData() + 64);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  result = sub_217D8870C();
  *a1 = v4;
  return result;
}

uint64_t sub_217B6E87C(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SessionData() + 64);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_217D8871C();
}

uint64_t SessionData.isPersonalizedAdsEnabled.setter()
{
  v0 = *(type metadata accessor for SessionData() + 64);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_217D8871C();
}

void (*SessionData.isPersonalizedAdsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SessionData() + 64);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  *(v3 + 32) = sub_217D886FC();
  return sub_217B6EA18;
}

void sub_217B6EA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SessionData.isSportsOnboarded.setter(char a1)
{
  result = type metadata accessor for SessionData();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t SessionData.aggregateStateMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SessionData();
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t SessionData.aggregateStateMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionData();
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t SessionData.init(utcOffset:languageCode:countryCode:iCloudAccountState:productType:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:regionIDs:isStoreDemoUser:isLocationAccessEnabled:isDiagnosticsEnabled:isSystemNotificationsEnabled:isPersonalizedAdsEnabled:isSportsOnboarded:aggregateStateMode:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17, char *a18)
{
  v22 = *a6;
  v32 = *a18;
  v23 = type metadata accessor for SessionData();
  v24 = v23[16];
  sub_217D886EC();
  v25 = v23[18];
  *(a9 + v25) = 3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v22;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 89) = a13;
  *(a9 + 90) = a14;
  *(a9 + 91) = a15;
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  (*(*(v26 - 8) + 8))(a9 + v24, v26);
  result = sub_217D886EC();
  *(a9 + v23[17]) = a17;
  *(a9 + v25) = v32;
  return result;
}

unint64_t sub_217B6ED60(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x54746375646F7270;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x44496E6F69676572;
      break;
    case 8:
      result = 0x4465726F74537369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B6EF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B70598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B6EF84(uint64_t a1)
{
  v2 = sub_217B6F478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6EFC0(uint64_t a1)
{
  v2 = sub_217B6F478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B6FF74(0, &qword_2811BC830, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6F478();
  sub_217D89E7C();
  v12 = *v3;
  LOBYTE(v27) = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    LOBYTE(v27) = 1;
    sub_217D89C0C();
    v16 = *(v3 + 3);
    v17 = *(v3 + 4);
    LOBYTE(v27) = 2;
    sub_217D89C0C();
    LOBYTE(v27) = *(v3 + 40);
    v28 = 3;
    sub_217B6F4CC();
    sub_217D89CAC();
    v18 = *(v3 + 6);
    v19 = *(v3 + 7);
    LOBYTE(v27) = 4;
    sub_217D89C6C();
    v27 = *(v3 + 8);
    v28 = 5;
    sub_217A55EE0(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_217B6F520();
    sub_217D89CAC();
    v27 = *(v3 + 9);
    v28 = 6;
    sub_217A55EE0(0, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    sub_217B6F5B4();
    sub_217D89CAC();
    v27 = *(v3 + 10);
    v28 = 7;
    sub_217A55EE0(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_217B6F648();
    sub_217D89C3C();
    v20 = *(v3 + 88);
    LOBYTE(v27) = 8;
    sub_217D89C7C();
    v21 = *(v3 + 89);
    LOBYTE(v27) = 9;
    sub_217D89C7C();
    v22 = *(v3 + 90);
    LOBYTE(v27) = 10;
    sub_217D89C7C();
    v23 = *(v3 + 91);
    LOBYTE(v27) = 11;
    sub_217D89C7C();
    v24 = type metadata accessor for SessionData();
    v25 = v24[16];
    LOBYTE(v27) = 12;
    sub_217D89BFC();
    v26 = *(v3 + v24[17]);
    LOBYTE(v27) = 13;
    sub_217D89C7C();
    LOBYTE(v27) = *(v3 + v24[18]);
    v28 = 14;
    sub_217B6F6DC();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B6F478()
{
  result = qword_2811C7C78;
  if (!qword_2811C7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C78);
  }

  return result;
}

unint64_t sub_217B6F4CC()
{
  result = qword_2811C3330[0];
  if (!qword_2811C3330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C3330);
  }

  return result;
}

unint64_t sub_217B6F520()
{
  result = qword_2811BCCE0;
  if (!qword_2811BCCE0)
  {
    sub_217A55EE0(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCE0);
  }

  return result;
}

unint64_t sub_217B6F5B4()
{
  result = qword_2811BCCF8;
  if (!qword_2811BCCF8)
  {
    sub_217A55EE0(255, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCF8);
  }

  return result;
}

unint64_t sub_217B6F648()
{
  result = qword_2811BCD48;
  if (!qword_2811BCD48)
  {
    sub_217A55EE0(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCD48);
  }

  return result;
}

unint64_t sub_217B6F6DC()
{
  result = qword_2811C4048;
  if (!qword_2811C4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4048);
  }

  return result;
}

uint64_t SessionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v50 - v6;
  sub_217B6FF74(0, &qword_2811BCB28, MEMORY[0x277D844C8]);
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - v10;
  v12 = type metadata accessor for SessionData();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 64);
  LOBYTE(v62) = 2;
  v57 = v17;
  sub_217D886EC();
  v18 = *(v12 + 72);
  v60 = v16;
  v16[v18] = 3;
  v19 = a1[3];
  v20 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_217B6F478();
  sub_217D89E5C();
  if (v2)
  {
    v61 = v2;
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_4:
    v31 = v60;
    goto LABEL_5;
  }

  v51 = v18;
  v52 = v12;
  v21 = v54;
  v22 = v55;
  LOBYTE(v62) = 0;
  v23 = sub_217D89BDC();
  v31 = v60;
  *v60 = v23;
  LOBYTE(v62) = 1;
  *(v31 + 1) = sub_217D89B2C();
  *(v31 + 2) = v32;
  v50[1] = v32;
  LOBYTE(v62) = 2;
  v33 = sub_217D89B2C();
  v61 = 0;
  *(v31 + 3) = v33;
  *(v31 + 4) = v34;
  v50[0] = v34;
  v63 = 3;
  sub_217B6FFD8();
  v35 = v61;
  sub_217D89BCC();
  if (v35)
  {
    v61 = v35;
    (*(v21 + 8))(v11, v22);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_5;
  }

  v31[40] = v62;
  LOBYTE(v62) = 4;
  v36 = sub_217D89B8C();
  v61 = 0;
  *(v31 + 6) = v36;
  *(v31 + 7) = v37;
  sub_217A55EE0(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  v63 = 5;
  sub_217B7002C();
  v38 = v61;
  sub_217D89BCC();
  v61 = v38;
  if (v38)
  {
    (*(v21 + 8))(v11, v22);
    v25 = 0;
    v26 = 0;
    v24 = 1;
    goto LABEL_5;
  }

  *(v31 + 8) = v62;
  sub_217A55EE0(0, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
  v63 = 6;
  sub_217B700C0();
  v39 = v61;
  sub_217D89BCC();
  v61 = v39;
  if (v39)
  {
    (*(v21 + 8))(v11, v22);
    v26 = 0;
    v24 = 1;
    v25 = 1;
    goto LABEL_5;
  }

  *(v31 + 9) = v62;
  sub_217A55EE0(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v63 = 7;
  sub_217B70154();
  v40 = v61;
  sub_217D89B5C();
  if (v40)
  {
    v61 = v40;
    (*(v21 + 8))(v11, v22);
    v24 = 1;
    v25 = 1;
    v26 = 1;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v56);

    if (v24)
    {
      v29 = *(v31 + 7);

      if (!v25)
      {
LABEL_7:
        if (!v26)
        {
LABEL_9:

          return (*(v58 + 8))(&v31[v57], v59);
        }

LABEL_8:
        v27 = *(v31 + 9);

        goto LABEL_9;
      }
    }

    else if (!v25)
    {
      goto LABEL_7;
    }

    v30 = *(v31 + 8);

    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v31 + 10) = v62;
  LOBYTE(v62) = 8;
  v41 = sub_217D89B9C();
  v61 = 0;
  v31[88] = v41 & 1;
  LOBYTE(v62) = 9;
  v42 = v61;
  v43 = sub_217D89B9C();
  v61 = v42;
  if (v42)
  {
    goto LABEL_24;
  }

  v60[89] = v43 & 1;
  LOBYTE(v62) = 10;
  v44 = sub_217D89B9C();
  v61 = 0;
  v60[90] = v44 & 1;
  LOBYTE(v62) = 11;
  v45 = sub_217D89B9C();
  v61 = 0;
  v60[91] = v45 & 1;
  LOBYTE(v62) = 12;
  sub_217D89B1C();
  v61 = 0;
  (*(v58 + 40))(&v60[v57], v7, v59);
  LOBYTE(v62) = 13;
  v46 = v61;
  v47 = sub_217D89B9C();
  v61 = v46;
  if (v46 || (v60[*(v52 + 68)] = v47 & 1, v63 = 14, sub_217B701E8(), v48 = v61, sub_217D89B5C(), (v61 = v48) != 0))
  {
LABEL_24:
    (*(v21 + 8))(v11, v55);
    v24 = 1;
    v25 = 1;
    v26 = 1;
    goto LABEL_4;
  }

  (*(v21 + 8))(v11, v55);
  v49 = v60;
  v60[v51] = v62;
  sub_217AE04C0(v49, v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_217AE0524(v49);
}

void sub_217B6FF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6F478();
    v7 = a3(a1, &type metadata for SessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B6FFD8()
{
  result = qword_2811C3320;
  if (!qword_2811C3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3320);
  }

  return result;
}

unint64_t sub_217B7002C()
{
  result = qword_2811BCCD8;
  if (!qword_2811BCCD8)
  {
    sub_217A55EE0(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCD8);
  }

  return result;
}

unint64_t sub_217B700C0()
{
  result = qword_2811BCCF0;
  if (!qword_2811BCCF0)
  {
    sub_217A55EE0(255, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCF0);
  }

  return result;
}

unint64_t sub_217B70154()
{
  result = qword_2811BCD38;
  if (!qword_2811BCD38)
  {
    sub_217A55EE0(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCD38);
  }

  return result;
}

unint64_t sub_217B701E8()
{
  result = qword_27CBA0618;
  if (!qword_27CBA0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0618);
  }

  return result;
}

uint64_t sub_217B702A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B70494()
{
  result = qword_27CBA0620;
  if (!qword_27CBA0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0620);
  }

  return result;
}

unint64_t sub_217B704EC()
{
  result = qword_2811C7C68;
  if (!qword_2811C7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C68);
  }

  return result;
}

unint64_t sub_217B70544()
{
  result = qword_2811C7C70;
  if (!qword_2811C7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C70);
  }

  return result;
}

uint64_t sub_217B70598(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657366664F637475 && a2 == 0xE900000000000074 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE4C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCE4E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DCE500 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44496E6F69676572 && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4465726F74537369 && a2 == 0xEF726573556F6D65 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCE560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCE580 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCE5A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE5C0 == a2)
  {

    return 14;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217B70AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69)
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

uint64_t sub_217B70B58(uint64_t a1)
{
  v2 = sub_217B70D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B70B94(uint64_t a1)
{
  v2 = sub_217B70D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractivePuzzleTeaserEngagementData.encode(to:)(void *a1)
{
  sub_217B70F6C(0, &qword_27CBA0628, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B70D2C();
  sub_217D89E7C();
  v13 = v9;
  sub_217B70D80();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B70D2C()
{
  result = qword_27CBA0630;
  if (!qword_27CBA0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0630);
  }

  return result;
}

unint64_t sub_217B70D80()
{
  result = qword_27CBA0638;
  if (!qword_27CBA0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0638);
  }

  return result;
}

uint64_t InteractivePuzzleTeaserEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B70F6C(0, &qword_27CBA0640, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B70D2C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B70FD0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B70F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B70D2C();
    v7 = a3(a1, &type metadata for InteractivePuzzleTeaserEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B70FD0()
{
  result = qword_27CBA0648;
  if (!qword_27CBA0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0648);
  }

  return result;
}

unint64_t sub_217B71028()
{
  result = qword_27CBA0650;
  if (!qword_27CBA0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0650);
  }

  return result;
}

unint64_t sub_217B71080()
{
  result = qword_27CBA0658;
  if (!qword_27CBA0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0658);
  }

  return result;
}

unint64_t sub_217B71128()
{
  result = qword_27CBA0660;
  if (!qword_27CBA0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0660);
  }

  return result;
}

unint64_t sub_217B71180()
{
  result = qword_27CBA0668;
  if (!qword_27CBA0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0668);
  }

  return result;
}

unint64_t sub_217B711D8()
{
  result = qword_27CBA0670;
  if (!qword_27CBA0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0670);
  }

  return result;
}

uint64_t sub_217B7129C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74694B65726F7473 && a2 == 0xED0000726F727245)
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

uint64_t sub_217B7132C(uint64_t a1)
{
  v2 = sub_217B71500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B71368(uint64_t a1)
{
  v2 = sub_217B71500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreKitErrorData.encode(to:)(void *a1)
{
  sub_217B71740(0, &qword_27CBA0678, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71500();
  sub_217D89E7C();
  v13 = v9;
  sub_217B71554();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B71500()
{
  result = qword_27CBA0680;
  if (!qword_27CBA0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0680);
  }

  return result;
}

unint64_t sub_217B71554()
{
  result = qword_27CBA0688;
  if (!qword_27CBA0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0688);
  }

  return result;
}

uint64_t StoreKitErrorData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B71740(0, &qword_27CBA0690, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71500();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B717A4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B71740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B71500();
    v7 = a3(a1, &type metadata for StoreKitErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B717A4()
{
  result = qword_27CBA0698;
  if (!qword_27CBA0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0698);
  }

  return result;
}

unint64_t sub_217B717FC()
{
  result = qword_2811C4308;
  if (!qword_2811C4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4308);
  }

  return result;
}

unint64_t sub_217B71854()
{
  result = qword_2811C4310;
  if (!qword_2811C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4310);
  }

  return result;
}

unint64_t sub_217B718FC()
{
  result = qword_27CBA06A0;
  if (!qword_27CBA06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06A0);
  }

  return result;
}

unint64_t sub_217B71954()
{
  result = qword_27CBA06A8;
  if (!qword_27CBA06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06A8);
  }

  return result;
}

unint64_t sub_217B719AC()
{
  result = qword_27CBA06B0;
  if (!qword_27CBA06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06B0);
  }

  return result;
}

uint64_t GroupDataList.groups.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B71A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
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

uint64_t sub_217B71AFC(uint64_t a1)
{
  v2 = sub_217B71D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B71B38(uint64_t a1)
{
  v2 = sub_217B71D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupDataList.encode(to:)(void *a1)
{
  sub_217B71F90(0, &qword_27CBA06B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71D1C();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217B71D70();
  sub_217B71FF4(&qword_27CBA06D0, sub_217A5D3B4);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B71D1C()
{
  result = qword_27CBA06C0;
  if (!qword_27CBA06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06C0);
  }

  return result;
}

void sub_217B71D70()
{
  if (!qword_27CBA06C8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA06C8);
    }
  }
}

uint64_t GroupDataList.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217B71F90(0, &qword_27CBA06D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71D1C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B71D70();
    sub_217B71FF4(&qword_27CBA06E0, sub_217A5D308);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B71F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B71D1C();
    v7 = a3(a1, &type metadata for GroupDataList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B71FF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217B71D70();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B720BC()
{
  result = qword_27CBA06E8;
  if (!qword_27CBA06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06E8);
  }

  return result;
}

unint64_t sub_217B72114()
{
  result = qword_27CBA06F0;
  if (!qword_27CBA06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06F0);
  }

  return result;
}

unint64_t sub_217B7216C()
{
  result = qword_27CBA06F8;
  if (!qword_27CBA06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06F8);
  }

  return result;
}

uint64_t FeedData.feedID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FeedData.feedID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_217B72298()
{
  if (*v0)
  {
    result = 0x444964656566;
  }

  else
  {
    result = 0x6570795464656566;
  }

  *v0;
  return result;
}

uint64_t sub_217B722D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795464656566 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000)
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

uint64_t sub_217B723A8(uint64_t a1)
{
  v2 = sub_217B725B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B723E4(uint64_t a1)
{
  v2 = sub_217B725B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedData.encode(to:)(void *a1)
{
  sub_217B72840(0, &qword_2811BC500, MEMORY[0x277D84538]);
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
  sub_217B725B0();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217B72604();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B725B0()
{
  result = qword_2811BD330;
  if (!qword_2811BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD330);
  }

  return result;
}

unint64_t sub_217B72604()
{
  result = qword_2811BD2E8;
  if (!qword_2811BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2E8);
  }

  return result;
}

uint64_t FeedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B72840(0, &qword_2811BC8F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B725B0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_217B728A4();
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

void sub_217B72840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B725B0();
    v7 = a3(a1, &type metadata for FeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B728A4()
{
  result = qword_2811BD2D8;
  if (!qword_2811BD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2D8);
  }

  return result;
}

uint64_t sub_217B72928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

unint64_t sub_217B72998()
{
  result = qword_27CBA0700;
  if (!qword_27CBA0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0700);
  }

  return result;
}

unint64_t sub_217B729F0()
{
  result = qword_2811BD320;
  if (!qword_2811BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD320);
  }

  return result;
}

unint64_t sub_217B72A48()
{
  result = qword_2811BD328;
  if (!qword_2811BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD328);
  }

  return result;
}

NewsAnalytics::DownloadState_optional __swiftcall DownloadState.init(rawValue:)(Swift::String rawValue)
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

uint64_t DownloadState.rawValue.getter()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
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

uint64_t sub_217B72B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472617473;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
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
    v10 = v7;
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

unint64_t sub_217B72C44()
{
  result = qword_27CBA0708;
  if (!qword_27CBA0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0708);
  }

  return result;
}

uint64_t sub_217B72C98()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B72D34()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B72DBC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B72E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
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

unint64_t sub_217B72F78()
{
  result = qword_27CBA0710;
  if (!qword_27CBA0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0710);
  }

  return result;
}

uint64_t sub_217B73094()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0748);
  __swift_project_value_buffer(v0, qword_27CBA0748);
  return sub_217D8866C();
}

uint64_t SportsRemoveFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsRemoveFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.removeFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B73448()
{
  result = qword_27CBA0768;
  if (!qword_27CBA0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0768);
  }

  return result;
}

unint64_t sub_217B7349C()
{
  result = qword_27CBA0770;
  if (!qword_27CBA0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0770);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncEvent.removeFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsRemoveFavoritesSyncEvent(0);
  v5 = *(v4 + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0) + 20));
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

uint64_t SportsRemoveFavoritesSyncEvent.Model.removeFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsRemoveFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:removeFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_217B738D8()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_217B73944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B74748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B7396C(uint64_t a1)
{
  v2 = sub_217B73C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B739A8(uint64_t a1)
{
  v2 = sub_217B73C90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B740E4(0, &qword_27CBA0778, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B73C90();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(v12 + 24));
    v18[11] = 2;
    sub_217B7349C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B73C90()
{
  result = qword_27CBA0780;
  if (!qword_27CBA0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0780);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B740E4(0, &qword_27CBA0788, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B73C90();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v37 = 2;
  sub_217B73448();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v36;
  sub_217B74148(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B741AC(v22);
}

void sub_217B740E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B73C90();
    v7 = a3(a1, &type metadata for SportsRemoveFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B74148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B741AC(uint64_t a1)
{
  v2 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B742E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217B74478()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62A78(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62A78(319, &qword_27CBA0760, sub_217B73448, sub_217B7349C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217B745AC()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B74644()
{
  result = qword_27CBA07B0;
  if (!qword_27CBA07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07B0);
  }

  return result;
}

unint64_t sub_217B7469C()
{
  result = qword_27CBA07B8;
  if (!qword_27CBA07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07B8);
  }

  return result;
}

unint64_t sub_217B746F4()
{
  result = qword_27CBA07C0;
  if (!qword_27CBA07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07C0);
  }

  return result;
}

uint64_t sub_217B74748(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE5E0 == a2)
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

uint64_t sub_217B74874()
{
  v1 = v0;
  result = sub_217D879FC();
  if (result)
  {
    v3 = result;
    sub_217D899BC();
    if (*(v3 + 16) && (v4 = sub_217D7AB6C(v9), (v5 & 1) != 0))
    {
      sub_217AE02B0(*(v3 + 56) + 32 * v4, v10);
      sub_217B74D38(v9);

      result = swift_dynamicCast();
      if (result)
      {
        if (sub_217D89D4C())
        {

          v6 = 1;
LABEL_7:
          v7 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
          *(swift_allocObject() + 16) = v6;
          sub_217D8833C();
        }

        v8 = sub_217D89D4C();

        v6 = 0;
        if (v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {

      return sub_217B74D38(v9);
    }
  }

  return result;
}

uint64_t sub_217B74A4C(uint64_t a1, char a2)
{
  sub_217B74D94();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[15] = a2;
  sub_217B74DF0();
  sub_217D880EC();
  sub_217A4CA88();
  v9 = sub_217D882DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_217D8D8F0;
  (*(v10 + 104))(v13 + v12, *MEMORY[0x277CEAD10], v9);
  sub_217D8854C();

  return (*(v5 + 8))(v8, v4);
}

void sub_217B74D94()
{
  if (!qword_2811C8A00)
  {
    sub_217B74DF0();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8A00);
    }
  }
}

unint64_t sub_217B74DF0()
{
  result = qword_2811C4640;
  if (!qword_2811C4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4640);
  }

  return result;
}

NewsAnalytics::HeadlineScoringContext_optional __swiftcall HeadlineScoringContext.init(rawValue:)(Swift::String rawValue)
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

unint64_t HeadlineScoringContext.rawValue.getter()
{
  v1 = 0x7247756F59726F66;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_217B74F10(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0xD000000000000016;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x7247756F59726F66;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4 == 1)
  {
    v6 = 0xEB0000000070756FLL;
  }

  else
  {
    v6 = 0x8000000217DCAF60;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000217DCAF30;
  }

  if (*a2 == 1)
  {
    v3 = 0x7247756F59726F66;
  }

  else
  {
    v2 = 0x8000000217DCAF60;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000217DCAF30;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B74FF8()
{
  result = qword_27CBA07C8;
  if (!qword_27CBA07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07C8);
  }

  return result;
}

uint64_t sub_217B7504C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B75104()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B751A8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B75268(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0x7247756F59726F66;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000217DCAF60;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (v5)
  {
    v3 = 0x8000000217DCAF30;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217B7539C()
{
  result = qword_2811C0490;
  if (!qword_2811C0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0490);
  }

  return result;
}

NewsAnalytics::DownloadType_optional __swiftcall DownloadType.init(rawValue:)(Swift::String rawValue)
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

uint64_t DownloadType.rawValue.getter()
{
  v1 = 0x6C61756E616DLL;
  if (*v0 != 1)
  {
    v1 = 1869903201;
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

uint64_t sub_217B7549C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C61756E616DLL;
  if (v2 != 1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C61756E616DLL;
  if (*a2 != 1)
  {
    v8 = 1869903201;
    v7 = 0xE400000000000000;
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
    v10 = v7;
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

unint64_t sub_217B7558C()
{
  result = qword_27CBA07D0;
  if (!qword_27CBA07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07D0);
  }

  return result;
}

uint64_t sub_217B755E0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B75678()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B756FC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B7579C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C61756E616DLL;
  if (v2 != 1)
  {
    v5 = 1869903201;
    v4 = 0xE400000000000000;
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

unint64_t sub_217B758B0()
{
  result = qword_27CBA07D8;
  if (!qword_27CBA07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07D8);
  }

  return result;
}

uint64_t AuxiliaryData.articleIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B75984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344)
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

uint64_t sub_217B75A14(uint64_t a1)
{
  v2 = sub_217B75C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B75A50(uint64_t a1)
{
  v2 = sub_217B75C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryData.encode(to:)(void *a1)
{
  sub_217B75E40(0, &qword_2811BC7E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B75C28();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B75C28()
{
  result = qword_2811C7878;
  if (!qword_2811C7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7878);
  }

  return result;
}

uint64_t AuxiliaryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217B75E40(0, &qword_2811BCAF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B75C28();
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

void sub_217B75E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B75C28();
    v7 = a3(a1, &type metadata for AuxiliaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B75EA8()
{
  result = qword_2811C7858;
  if (!qword_2811C7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7858);
  }

  return result;
}

unint64_t sub_217B75F00()
{
  result = qword_2811C7860;
  if (!qword_2811C7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7860);
  }

  return result;
}

unint64_t sub_217B75FA8()
{
  result = qword_27CBA07E0;
  if (!qword_27CBA07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07E0);
  }

  return result;
}

unint64_t sub_217B76000()
{
  result = qword_2811C7868;
  if (!qword_2811C7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7868);
  }

  return result;
}

unint64_t sub_217B76058()
{
  result = qword_2811C7870;
  if (!qword_2811C7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7870);
  }

  return result;
}

NewsAnalytics::EngagementPlacementOriginationType_optional __swiftcall EngagementPlacementOriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EngagementPlacementOriginationType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7972756372656DLL;
  }

  else
  {
    result = 0x6D6F6F727377656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_217B7614C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972756372656DLL;
  }

  else
  {
    v4 = 0x6D6F6F727377656ELL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972756372656DLL;
  }

  else
  {
    v6 = 0x6D6F6F727377656ELL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217B761F8()
{
  result = qword_27CBA07E8;
  if (!qword_27CBA07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07E8);
  }

  return result;
}

uint64_t sub_217B7624C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B762D0()
{
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B76340()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B763C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D89B0C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_217B76420(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F6F727377656ELL;
  if (*v1)
  {
    v2 = 0x7972756372656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217B76520()
{
  result = qword_2811BDC98;
  if (!qword_2811BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC98);
  }

  return result;
}

uint64_t sub_217B7663C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0820);
  __swift_project_value_buffer(v0, qword_27CBA0820);
  return sub_217D8866C();
}

uint64_t ArticleDislikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleDislikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleDislikeEvent(0);
  v5 = v4[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t ArticleDislikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 20);
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

uint64_t ArticleDislikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleDislikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleDislikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 28);
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

uint64_t ArticleDislikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleDislikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 36));
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

uint64_t ArticleDislikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 40));
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

uint64_t ArticleDislikeEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 44));
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

uint64_t ArticleDislikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleDislikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleDislikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleDislikeEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 56));
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

__n128 ArticleDislikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v44 = a4[1];
  v45 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v47 = *a5;
  v46 = *(a5 + 2);
  v53 = a10[1];
  v54 = *a10;
  v52 = *(a10 + 1);
  v56 = a11[1];
  v57 = *a11;
  v55 = *(a11 + 8);
  v58 = *(a12 + 32);
  v21 = sub_217D8899C();
  v50 = *(a12 + 16);
  v51 = *a12;
  v48 = a8[1];
  v49 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleDislikeEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a2 + 127);
  v26 = *(a2 + 112);
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = v26;
  v27 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v27;
  *(a9 + v22[6]) = v18;
  v28 = a9 + v22[7];
  *v28 = v45;
  *(v28 + 8) = v44;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v43;
  *(v28 + 32) = v42;
  v29 = a9 + v22[8];
  *v29 = v47;
  *(v29 + 16) = v46;
  v30 = (a9 + v22[9]);
  v31 = a6[3];
  v30[2] = a6[2];
  v30[3] = v31;
  v32 = a6[1];
  *v30 = *a6;
  v30[1] = v32;
  v33 = a6[8];
  v30[7] = a6[7];
  v30[8] = v33;
  v34 = a6[6];
  v30[5] = a6[5];
  v30[6] = v34;
  v30[4] = a6[4];
  v35 = a9 + v22[10];
  v36 = *(a7 + 16);
  *v35 = *a7;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a7 + 32);
  *(v35 + 48) = *(a7 + 48);
  v37 = (a9 + v22[11]);
  *v37 = v49;
  v37[1] = v48;
  v38 = a9 + v22[12];
  *v38 = v54;
  *(v38 + 1) = v53;
  *(v38 + 2) = v52;
  v39 = a9 + v22[13];
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 16) = v55;
  v40 = a9 + v22[14];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v50;
  *(v40 + 32) = v58;
  return result;
}

uint64_t sub_217B783E8(uint64_t a1)
{
  v2 = sub_217B78BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B78424(uint64_t a1)
{
  v2 = sub_217B78BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleDislikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B79594(0, &qword_27CBA0838, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v59 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B78BD4();
  sub_217D89E7C();
  v116 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleDislikeEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v114 = *(v13 + 96);
    *v115 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v110 = *(v13 + 32);
    v111 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v112 = *(v13 + 64);
    v113 = v19;
    v20 = *(v13 + 16);
    v109[0] = *v13;
    v109[1] = v20;
    v21 = *(v13 + 112);
    v107 = v114;
    v108[0] = v21;
    v103 = v110;
    v104 = v18;
    v105 = v112;
    v106 = v14;
    *&v115[15] = *(v13 + 127);
    *(v108 + 15) = *(v13 + 127);
    v101 = v109[0];
    v102 = v16;
    v100 = 1;
    sub_217AD1630(v109, &v85);
    sub_217ACF52C();
    sub_217D89CAC();
    v98[6] = v107;
    *v99 = v108[0];
    *&v99[15] = *(v108 + 15);
    v98[2] = v103;
    v98[3] = v104;
    v98[4] = v105;
    v98[5] = v106;
    v98[0] = v101;
    v98[1] = v102;
    sub_217AD2864(v98);
    LOBYTE(v85) = *(v3 + v12[6]);
    LOBYTE(v76) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v22 = v3 + v12[7];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *&v85 = *v22;
    *(&v85 + 1) = v23;
    LOBYTE(v86) = v24;
    BYTE1(v86) = v25;
    *(&v86 + 1) = v26;
    *&v87 = v27;
    LOBYTE(v76) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v28 = (v3 + v12[8]);
    v29 = v28[1];
    v30 = v28[2];
    v95 = *v28;
    v96 = v29;
    v97 = v30;
    v94 = 4;
    sub_217AD1A68(v95, v29, v30);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v95, v96, v97);
    v31 = (v3 + v12[9]);
    v32 = v31[5];
    v33 = v31[7];
    v91 = v31[6];
    v92 = v33;
    v34 = v31[7];
    v93 = v31[8];
    v35 = v31[1];
    v36 = v31[3];
    v87 = v31[2];
    v88 = v36;
    v37 = v31[3];
    v38 = v31[5];
    v89 = v31[4];
    v90 = v38;
    v39 = v31[1];
    v85 = *v31;
    v86 = v39;
    v82 = v91;
    v83 = v34;
    v84 = v31[8];
    v78 = v87;
    v79 = v37;
    v80 = v89;
    v81 = v32;
    v76 = v85;
    v77 = v35;
    v75 = 5;
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
    v40 = v3 + v12[10];
    v41 = *(v40 + 16);
    v42 = *(v40 + 32);
    v72[0] = *v40;
    v72[1] = v41;
    v72[2] = v42;
    v73 = *(v40 + 48);
    v68 = v72[0];
    v69 = v41;
    v70 = *(v40 + 32);
    v71 = *(v40 + 48);
    v67 = 6;
    sub_217ACC004(v72, v65);
    sub_217A55B98();
    sub_217D89CAC();
    v65[0] = v68;
    v65[1] = v69;
    v65[2] = v70;
    v66 = v71;
    sub_217ACC69C(v65);
    v43 = (v3 + v12[11]);
    v44 = v43[1];
    v45 = v43[2];
    v46 = v43[3];
    v59 = *v43;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v64 = 7;
    sub_217AE39D0(v59, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v59, v60);
    v47 = (v3 + v12[12]);
    v48 = *v47;
    v49 = v47[1];
    LOWORD(v47) = *(v47 + 1);
    LOBYTE(v59) = v48;
    BYTE1(v59) = v49;
    WORD1(v59) = v47;
    v64 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v50 = v3 + v12[13];
    v51 = *v50;
    v52 = *(v50 + 8);
    LOWORD(v50) = *(v50 + 16);
    v59 = v51;
    v60 = v52;
    LOWORD(v61) = v50;
    v64 = 9;
    sub_217A5E790();

    sub_217D89C3C();

    v53 = (v3 + v12[14]);
    v54 = v53[1];
    v55 = v53[2];
    v56 = v53[3];
    v57 = v53[4];
    v59 = *v53;
    v60 = v54;
    v61 = v55;
    v62 = v56;
    v63 = v57;
    v64 = 10;
    sub_217AE3AE8(v59, v54);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v59, v60);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B78BD4()
{
  result = qword_27CBA0840;
  if (!qword_27CBA0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0840);
  }

  return result;
}

uint64_t ArticleDislikeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D8899C();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B79594(0, &qword_27CBA0848, MEMORY[0x277D844C8]);
  v60 = v6;
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - v8;
  v10 = type metadata accessor for ArticleDislikeEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B78BD4();
  v61 = v9;
  v15 = v90;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v58;
  v90 = v10;
  v55 = v13;
  LOBYTE(v81) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v59;
  sub_217D89BCC();
  v18 = v3;
  v19 = v55;
  (*(v57 + 32))(v55, v17, v18);
  v72 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v54[2] = v18;
  v59 = 0;
  v20 = v90;
  v21 = &v19[v90[5]];
  v22 = *v80;
  *(v21 + 6) = v79;
  *(v21 + 7) = v22;
  *(v21 + 127) = *&v80[15];
  v23 = v76;
  *(v21 + 2) = v75;
  *(v21 + 3) = v23;
  v24 = v78;
  *(v21 + 4) = v77;
  *(v21 + 5) = v24;
  v25 = v74;
  *v21 = v73;
  *(v21 + 1) = v25;
  LOBYTE(v67) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v54[1] = a1;
  v19[v20[6]] = v81;
  LOBYTE(v67) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v26 = *(&v81 + 1);
  v27 = v82;
  v28 = BYTE1(v82);
  v29 = *(&v82 + 1);
  v30 = v83;
  v31 = &v19[v20[7]];
  *v31 = v81;
  *(v31 + 1) = v26;
  v31[16] = v27;
  v31[17] = v28;
  *(v31 + 3) = v29;
  *(v31 + 4) = v30;
  LOBYTE(v67) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v32 = v82;
  v33 = &v19[v20[8]];
  *v33 = v81;
  *(v33 + 2) = v32;
  v71 = 5;
  sub_217A5D308();
  sub_217D89B5C();
  v34 = &v19[v20[9]];
  v35 = v88;
  *(v34 + 6) = v87;
  *(v34 + 7) = v35;
  *(v34 + 8) = v89;
  v36 = v84;
  *(v34 + 2) = v83;
  *(v34 + 3) = v36;
  v37 = v86;
  *(v34 + 4) = v85;
  *(v34 + 5) = v37;
  v38 = v82;
  *v34 = v81;
  *(v34 + 1) = v38;
  v66 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v19[v20[10]];
  v40 = v68;
  *v39 = v67;
  *(v39 + 1) = v40;
  *(v39 + 2) = v69;
  v39[48] = v70;
  v65 = 7;
  sub_217ACFF40();
  sub_217D89B5C();
  v41 = &v55[v90[11]];
  v42 = v63;
  *v41 = v62;
  *(v41 + 1) = v42;
  v65 = 8;
  sub_217ACFB38();
  sub_217D89BCC();
  v43 = BYTE1(v62);
  v44 = WORD1(v62);
  v45 = &v55[v90[12]];
  *v45 = v62;
  v45[1] = v43;
  *(v45 + 1) = v44;
  v65 = 9;
  sub_217A5E738();
  sub_217D89B5C();
  v46 = v63;
  v47 = &v55[v90[13]];
  *v47 = v62;
  *(v47 + 8) = v46;
  v65 = 10;
  sub_217AE2CA8();
  sub_217D89B5C();
  (*(v16 + 8))(v61, v60);
  v48 = v64;
  v50 = v55;
  v49 = v56;
  v51 = &v55[v90[14]];
  v52 = v63;
  *v51 = v62;
  *(v51 + 1) = v52;
  *(v51 + 4) = v48;
  sub_217B795F8(v50, v49);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B7965C(v50);
}

void sub_217B79594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B78BD4();
    v7 = a3(a1, &type metadata for ArticleDislikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B795F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleDislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B7965C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleDislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B797F4()
{
  result = qword_27CBA0850;
  if (!qword_27CBA0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0850);
  }

  return result;
}

unint64_t sub_217B7984C()
{
  result = qword_27CBA0858;
  if (!qword_27CBA0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0858);
  }

  return result;
}

unint64_t sub_217B798A4()
{
  result = qword_27CBA0860;
  if (!qword_27CBA0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0860);
  }

  return result;
}

uint64_t PrivateUserData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrivateUserData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateUserData.init(userID:userType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217B799B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000)
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

uint64_t sub_217B79A90(uint64_t a1)
{
  v2 = sub_217A6437C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B79ACC(uint64_t a1)
{
  v2 = sub_217A6437C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateUserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A64174(0, &qword_27CBA0868, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A6437C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v18 = 1;
  sub_217B79D00();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  a2[1] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217B79D00()
{
  result = qword_27CBA0870;
  if (!qword_27CBA0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0870);
  }

  return result;
}

unint64_t sub_217B79D80()
{
  result = qword_27CBA0878;
  if (!qword_27CBA0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0878);
  }

  return result;
}

uint64_t sub_217B79E84()
{
  sub_217D87E5C();
  sub_217D87E4C();
  if (qword_2811C8BC8 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();
}

uint64_t sub_217B79F14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (result)
  {
    v5 = sub_217D87FBC();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B79F88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PrivacyValidationDebugGroupProvider();
    v7 = swift_allocObject();
    v7[2] = v5;
    v8 = [swift_unknownObjectRetain() possiblyUnfetchedAppConfiguration];
    v9 = type metadata accessor for DebugPrivacyValidationProvider();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v13 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
    v14 = swift_unknownObjectRetain();
    sub_217A4A520(v14, (v12 + v13));
    swift_unknownObjectRelease();
    result = sub_217B7CF60(&unk_27CBA0888, type metadata accessor for DebugPrivacyValidationProvider);
    v7[3] = v12;
    v7[4] = result;
    a2[3] = v6;
    a2[4] = &off_2829BD030;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_217B7A0CC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D883BC();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BE1C8);
  result = sub_217D88ADC();
  if (!v65[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &qword_2811BCCB0, 0x277D30EE0);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8889C();
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = [objc_opt_self() sharedInstance];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811BD5A8);
  result = sub_217D88ADC();
  if (!v63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_217A517E4(&v62, v64);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &unk_2811BCCC0, 0x277D31390);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C1C50);
  result = sub_217D88ADC();
  if (!v61[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BDD28);
  result = sub_217D88ADC();
  if (!v60[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BE1D0);
  result = sub_217D88ADC();
  if (!v59[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v13;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BCEC0);
  result = sub_217D88ADC();
  if (!v58[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = type metadata accessor for SessionObserver();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionStartSource] = 4;
  v20 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager;
  sub_217B7CE88(0, &unk_2811BCF60, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v19[v20] = sub_217D88C7C();
  swift_unknownObjectWeakInit();
  v24 = &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager] = v4;
  sub_217A4998C(v65, &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider]);

  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker] = sub_217D883AC();
  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] = v7;
  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_client] = v9;
  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_fsidProvider] = v10;
  v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind] = 0;
  v25 = v10;
  v54 = v9;
  v53 = v7;
  v26 = [v53 userInfo];
  v27 = [v26 onboardingVersionNumber];

  if (!v27)
  {
    sub_217A4E5C4(0, &qword_2811BCB90, 0x277CCABB0);
    v27 = sub_217D8989C();
  }

  *&v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_onboardingVersion] = v27;
  sub_217A4C040(v64, &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator]);
  sub_217A4998C(v61, &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider]);
  sub_217A4998C(v60, &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider]);
  sub_217A4998C(v59, &v19[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider]);
  v57.receiver = v19;
  v57.super_class = v18;
  v28 = objc_msgSendSuper2(&v57, sel_init);
  v29 = *&v28[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager];
  type metadata accessor for SessionObserverURLHandler();
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  *&v56[0] = v30;
  sub_217B7CF60(&unk_2811BF210, type metadata accessor for SessionObserverURLHandler);

  sub_217D88C6C();

  v31 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager;
  v32 = *&v28[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  *(swift_allocObject() + 16) = v28;
  v33 = v28;
  sub_217D8833C();

  sub_217A4E670();
  v34 = *&v28[v31];
  *(swift_allocObject() + 16) = v33;
  v35 = v33;
  sub_217D8833C();

  v36 = [objc_opt_self() currentDevice];
  [v36 beginGeneratingDeviceOrientationNotifications];

  sub_217A4CAE8();
  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  [v38 addObserver:v35 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_217A4CFDC();
  sub_217A4D798(v55);
  sub_217A4ECDC();
  v39 = *&v28[v31];
  sub_217D883AC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_217D888FC();

  sub_217A4EEA4();
  v40 = [v37 defaultCenter];
  [v40 addObserver:v35 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C28] object:0];

  v41 = [v37 defaultCenter];
  [v41 addObserver:v35 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C38] object:0];

  sub_217A54954();
  sub_217A4DE10();
  SessionObserver.pushNotificationSettingsData()();
  result = [*&v35[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] newsletterManager];
  if (result)
  {
    v42 = result;

    [v42 addObserver_];
    swift_unknownObjectRelease();
    v43 = [v37 defaultCenter];
    v44 = sub_217D8951C();
    [v43 addObserver:v35 selector:sel_offerDidChange_ name:v44 object:0];

    sub_217A5083C();
    v45 = [v37 defaultCenter];
    v46 = sub_217D8985C();
    [v45 addObserver:v35 selector:sel_familySharingStatusDidChange_ name:v46 object:0];

    v47 = *&v28[v31];
    *(swift_allocObject() + 16) = v35;
    v48 = v35;
    sub_217D8833C();

    v49 = [v37 defaultCenter];
    [v49 addObserver:v48 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    *(swift_allocObject() + 16) = v48;
    v50 = v48;
    sub_217D88E4C();

    v51 = *&v50[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker];
    sub_217A4998C(v58, v56);
    v52 = swift_allocObject();
    sub_217A517E4(v56, v52 + 16);

    sub_217D888FC();

    sub_217D883CC();

    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_217A50680(v64);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return v50;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_217B7ABE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A49558(0, &qword_2811BCBC8, &protocolRef_NSSNewsAnalyticsSessionManager);
  result = sub_217D88ACC();
  if (result)
  {
    v6 = result;
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_217A481CC(0, &qword_2811BCEC0);
    result = sub_217D88ADC();
    if (v9)
    {
      sub_217A517E4(&v8, v10);
      [v6 addObserver_];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_217D8922C();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217B7AD08(void *a1)
{
  v2 = sub_217D8867C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D880DC();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217D8839C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_217D8875C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CEAD38];
  sub_217B7CE88(0, &qword_2811BC488, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_217D9CB60;
  sub_217D8837C();
  sub_217D8838C();
  v40 = v19;
  sub_217B7CF60(&unk_2811C8480, MEMORY[0x277CEAD38]);
  sub_217B7CE88(0, &qword_2811BCE48, v16, MEMORY[0x277D83940]);
  sub_217A5150C(&qword_2811BCE40, &qword_2811BCE48, v16);
  sub_217D8997C();
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &unk_2811C8420);
  result = sub_217D88ADC();
  if (!v41)
  {
    __break(1u);
    goto LABEL_6;
  }

  v34 = v5;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8430);
  result = sub_217D88ADC();
  if (!v39)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = MEMORY[0x277CEAC90];
  sub_217B7CE88(0, &qword_2811BC4A0, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v24 = *(v35 + 72);
  v25 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_217D8EE60;
  sub_217D880CC();
  sub_217D880AC();
  sub_217D880BC();
  v38 = v26;
  sub_217B7CF60(&qword_2811C8A20, MEMORY[0x277CEAC90]);
  sub_217B7CE88(0, &qword_2811BCE58, v23, MEMORY[0x277D83940]);
  sub_217A5150C(&qword_2811BCE50, &qword_2811BCE58, v23);
  sub_217D8997C();
  v27 = sub_217D8830C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_217D882FC();
  sub_217D8866C();
  sub_217D8874C();
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (result)
  {
    v31 = sub_217D87F9C();

    (*(v32 + 8))(v15, v33);
    return v31;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_217B7B2B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_217D8831C();
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D8850C();
  result = sub_217D88ACC();
  if (result)
  {
    sub_217D8841C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7B358(uint64_t a1)
{
  sub_217A4998C(a1, v6);
  v1 = swift_allocObject();
  sub_217A517E4(v6, v1 + 16);
  v2 = sub_217D8850C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_217D884FC();
}

uint64_t sub_217B7B3DC(void *a1)
{
  v2 = sub_217D889FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D88ABC();
  if (v76)
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217D885DC();
    result = sub_217D88ACC();
    if (!result)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v11 = result;
    v8 = sub_217B5AF48(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_217B5AF48((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    v14 = &v8[2 * v13];
    v15 = MEMORY[0x277CEADD0];
    v14[4] = v11;
    v14[5] = v15;
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217D886BC();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_42;
    }

    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      v75 = result;
      v8 = sub_217B5AF48((v17 > 1), v18 + 1, 1, v8);
      result = v75;
    }

    v8[2] = v18 + 1;
    v19 = &v8[2 * v18];
    v20 = MEMORY[0x277CEADF0];
    v19[4] = result;
    v19[5] = v20;
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ExternalAnalyticsEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_43;
    }

    v22 = result;
    v24 = v8[2];
    v23 = v8[3];
    if (v24 >= v23 >> 1)
    {
      v8 = sub_217B5AF48((v23 > 1), v24 + 1, 1, v8);
    }

    v25 = sub_217B7CF60(qword_2811C81F8, type metadata accessor for ExternalAnalyticsEventProcessor);
    v8[2] = v24 + 1;
    v26 = &v8[2 * v24];
    v26[4] = v22;
    v26[5] = v25;
    type metadata accessor for ValidationEventProcessor();
    v27 = swift_allocObject();
    v28 = sub_217D88A3C();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    *(v27 + 16) = sub_217D88A2C();
    *v6 = sub_217BC5340;
    v6[1] = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6C9B0], v2);
    sub_217D88A0C();
    v32 = v8[2];
    v31 = v8[3];
    if (v32 >= v31 >> 1)
    {
      v8 = sub_217B5AF48((v31 > 1), v32 + 1, 1, v8);
    }

    v33 = sub_217B7CF60(&qword_2811BF660, type metadata accessor for ValidationEventProcessor);
    v8[2] = v32 + 1;
    v34 = &v8[2 * v32];
    v34[4] = v27;
    v34[5] = v33;
    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for SharedItemEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_45;
    }

    v36 = result;
    v38 = v8[2];
    v37 = v8[3];
    if (v38 >= v37 >> 1)
    {
      v8 = sub_217B5AF48((v37 > 1), v38 + 1, 1, v8);
    }

    v39 = sub_217B7CF60(&qword_2811BF758, type metadata accessor for SharedItemEventProcessor);
    v8[2] = v38 + 1;
    v40 = &v8[2 * v38];
    v40[4] = v36;
    v40[5] = v39;
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, &qword_2811BD4C0);
    result = sub_217D88ADC();
    v42 = v76;
    if (!v76)
    {
      goto LABEL_47;
    }

    v43 = v77;
    v45 = v8[2];
    v44 = v8[3];
    if (v45 >= v44 >> 1)
    {
      v8 = sub_217B5AF48((v44 > 1), v45 + 1, 1, v8);
    }

    v46 = *(v43 + 8);
    v8[2] = v45 + 1;
    v47 = &v8[2 * v45];
    v47[4] = v42;
    v47[5] = v46;
  }

  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D88ABC();
  if ((v76 & 1) == 0)
  {
    v49 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PortraitEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v50 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_217B5AF48(0, v8[2] + 1, 1, v8);
    }

    v52 = v8[2];
    v51 = v8[3];
    if (v52 >= v51 >> 1)
    {
      v8 = sub_217B5AF48((v51 > 1), v52 + 1, 1, v8);
    }

    v53 = sub_217B7CF60(&qword_2811C0488, type metadata accessor for PortraitEventProcessor);
    v8[2] = v52 + 1;
    v54 = &v8[2 * v52];
    v54[4] = v50;
    v54[5] = v53;
    v55 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, qword_2811BF4C0);
    result = sub_217D88ADC();
    v56 = v76;
    if (!v76)
    {
      goto LABEL_46;
    }

    v57 = v77;
    v59 = v8[2];
    v58 = v8[3];
    if (v59 >= v58 >> 1)
    {
      v8 = sub_217B5AF48((v58 > 1), v59 + 1, 1, v8);
    }

    v60 = *(v57 + 8);
    v8[2] = v59 + 1;
    v61 = &v8[2 * v59];
    v61[4] = v56;
    v61[5] = v60;
    v62 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, &qword_2811C8460);
    result = sub_217D88ABC();
    v63 = v76;
    if (!v76)
    {
      goto LABEL_48;
    }

    v64 = v77;
    v66 = v8[2];
    v65 = v8[3];
    if (v66 >= v65 >> 1)
    {
      v8 = sub_217B5AF48((v65 > 1), v66 + 1, 1, v8);
    }

    v8[2] = v66 + 1;
    v67 = &v8[2 * v66];
    v67[4] = v63;
    v67[5] = v64;
  }

  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8100);
  result = sub_217D88ADC();
  v69 = v76;
  if (!v76)
  {
    __break(1u);
    goto LABEL_41;
  }

  v70 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_217B5AF48(0, v8[2] + 1, 1, v8);
  }

  v72 = v8[2];
  v71 = v8[3];
  if (v72 >= v71 >> 1)
  {
    v8 = sub_217B5AF48((v71 > 1), v72 + 1, 1, v8);
  }

  v73 = *(v70 + 8);
  v8[2] = v72 + 1;
  v74 = &v8[2 * v72];
  v74[4] = v69;
  v74[5] = v73;
  return v8;
}

uint64_t sub_217B7BC04(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D883BC();
  result = sub_217D88ACC();
  if (result)
  {
    v3 = sub_217D883AC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7BC70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TrackerConfiguration();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_2829AFDB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7BD08()
{
  v0 = sub_217D8873C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 11;
  (*(v4 + 104))(v3, *MEMORY[0x277CEAE08]);
  v5 = sub_217D885DC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_217D885BC();
}

uint64_t sub_217B7BE08(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8889C();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &qword_2811C8930, &protocolRef_AAEndpointType);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_217D886BC();
  sub_217D8865C();
  v5 = sub_217D8864C();
  sub_217D87E5C();
  sub_217D87E4C();
  if (qword_2811C8BD8 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v6 = sub_217D8863C();

  sub_217D87E4C();
  if (qword_2811C8B30 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v7 = sub_217D8861C();

  sub_217D87E4C();
  if (qword_2811C8B78 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  sub_217D8862C();

  return sub_217D886AC();
}

void *sub_217B7C040()
{
  type metadata accessor for PortraitEventProcessor();
  swift_allocObject();
  return sub_217C1D768();
}

uint64_t sub_217B7C078(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8A40);
  result = sub_217D88ADC();
  if (!v11[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811C8118);
  result = sub_217D88ADC();
  if (!v10[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8110);
  result = sub_217D88ADC();
  if (v9[3])
  {
    type metadata accessor for ExternalAnalyticsEventProcessor();
    v8 = swift_allocObject();
    v8[19] = 0;
    v8[20] = 0;
    v8[18] = 0;
    v8[2] = v4;
    sub_217A4998C(v11, (v8 + 3));
    sub_217A4998C(v10, (v8 + 8));
    sub_217A4998C(v9, (v8 + 13));
    swift_unknownObjectRetain();
    sub_217CE7880();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_217B7C25C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_217D87F6C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_217D87F5C();
  v6 = MEMORY[0x277CEAC70];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_217B7C2B4@<X0>(uint64_t *a1@<X8>)
{
  sub_217B7CEEC(0, &qword_2811BC460, &qword_2811C8108, &protocol descriptor for ExternalAnalyticsQueryItemsGeneratorType, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217D9AA70;
  started = type metadata accessor for AppSessionStartEventQueryItemsGenerator();
  v4 = swift_allocObject();
  *(v2 + 56) = started;
  *(v2 + 64) = &off_2829B9D50;
  *(v2 + 32) = v4;
  ItemsGenerator = type metadata accessor for FeedViewEventQueryItemsGenerator();
  v6 = swift_allocObject();
  *(v2 + 96) = ItemsGenerator;
  *(v2 + 104) = &off_2829ACFB0;
  *(v2 + 72) = v6;
  v7 = type metadata accessor for ArticleViewEventQueryItemsGenerator();
  v8 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_2829BAEC8;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for MediaEngageEventQueryItemsGenerator();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_2829BC618;
  *(v2 + 152) = v10;
  v11 = type metadata accessor for MediaEngageCompletedEventQueryItemsGenerator();
  v12 = swift_allocObject();
  *(v2 + 216) = v11;
  *(v2 + 224) = &off_2829C3298;
  *(v2 + 192) = v12;
  v13 = type metadata accessor for RecipeViewEventQueryItemsGenerator();
  v14 = swift_allocObject();
  *(v2 + 256) = v13;
  *(v2 + 264) = &off_2829B8580;
  *(v2 + 232) = v14;
  v15 = type metadata accessor for ExternalAnalyticsURLProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v15;
  a1[4] = &protocol witness table for ExternalAnalyticsURLProvider;
  *a1 = result;
  return result;
}

uint64_t sub_217B7C448()
{
  sub_217D8889C();
  v0 = [objc_opt_self() mainBundle];
  return sub_217D8887C();
}

uint64_t sub_217B7C494(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v3 = result;
    type metadata accessor for DynamicEndpoint();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = FCDefaultsReadEndpointEnvironment();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7C524(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BCEB8);
  result = sub_217D88ADC();
  if (v8)
  {
    type metadata accessor for SharedItemEventProcessor();
    v3 = swift_allocObject();
    v4 = sub_217D88A3C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    *(v3 + 56) = sub_217D88A2C();
    sub_217A517E4(&v7, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7C5E4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8940C();
  sub_217D893FC();
  sub_217B7CF60(&qword_2811BCEB0, MEMORY[0x277D344D8]);
  sub_217D88D0C();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_217B7C69C(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A481CC(0, &qword_2811BCF50);
  result = sub_217D88ADC();
  if (v6)
  {
    sub_217D88D4C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7C760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, qword_2811C2F38);
    result = sub_217D88ADC();
    v8 = v26;
    if (v26)
    {
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v10 = *(*(v8 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v15 = type metadata accessor for PrivacySampler();
      v24[3] = v15;
      v24[4] = &off_2829BFF38;
      v24[0] = v14;
      v16 = type metadata accessor for SportsSyncEventPrivacySampler();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v15);
      v19 = *(*(v15 - 8) + 64);
      MEMORY[0x28223BE20](v18);
      v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = *v21;
      v17[6] = v15;
      v17[7] = &off_2829BFF38;
      v17[2] = v6;
      v17[3] = v23;
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v16;
      a2[4] = &off_2829BB330;
      *a2 = v17;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_217B7C9E0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217D87CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &unk_2811BCCC0, 0x277D31390);
  v10 = sub_217D88ACC();
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for PrivacySaltProvider();
    v13 = swift_allocObject();
    v13[2] = v11;
    v14 = v11;
    v15 = [v14 sportsUserID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_217D8954C();
      v19 = v18;
    }

    else
    {
      sub_217D87CBC();
      v17 = sub_217D87CAC();
      v19 = v20;

      (*(v5 + 8))(v8, v4);
    }

    v13[3] = v17;
    v13[4] = v19;
    a2[3] = v12;
    a2[4] = &off_2829C3C10;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217B7CB8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811BFDF0);
  result = sub_217D88ADC();
  v5 = v23;
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for PrivacySaltProvider();
    v21[3] = v12;
    v21[4] = &off_2829C3C10;
    v21[0] = v11;
    v13 = type metadata accessor for PrivacySampler();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_2829C3C10;
    v14[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_2829BFF38;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7CDB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsApplicationStateMonitor();
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    result = sub_217B7CF60(&qword_2811C80F8, type metadata accessor for AnalyticsApplicationStateMonitor);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7CE4C()
{
  type metadata accessor for AnalyticsApplicationStateMonitor();

  return swift_allocObject();
}

void sub_217B7CE88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217B7CEEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217A481CC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_217B7CF60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_217B7CFA8()
{
  result = qword_2811C7908;
  if (!qword_2811C7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7908);
  }

  return result;
}

uint64_t SubscribedTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B7D060(uint64_t a1)
{
  v2 = sub_217A68658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7D09C(uint64_t a1)
{
  v2 = sub_217A68658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribedTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A685DC(0, &qword_2811BC9A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68658();
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

unint64_t sub_217B7D2A0()
{
  result = qword_2811C0BE0;
  if (!qword_2811C0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0BE0);
  }

  return result;
}

unint64_t sub_217B7D334()
{
  result = qword_27CBA08A0;
  if (!qword_27CBA08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA08A0);
  }

  return result;
}

uint64_t SubscribedSportsListData.sportsList.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B7D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x694C7374726F7073 && a2 == 0xEA00000000007473)
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

uint64_t sub_217B7D47C(uint64_t a1)
{
  v2 = sub_217A69740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7D4B8(uint64_t a1)
{
  v2 = sub_217A69740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribedSportsListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A696C4(0, &qword_2811BC970, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69740();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A69844();
    sub_217A69894(&qword_2811BCE08, sub_217B7D6C4);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217B7D6C4()
{
  result = qword_2811C7170;
  if (!qword_2811C7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7170);
  }

  return result;
}

unint64_t sub_217B7D754()
{
  result = qword_27CBA08A8;
  if (!qword_27CBA08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA08A8);
  }

  return result;
}

uint64_t sub_217B7D870()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA08E0);
  __swift_project_value_buffer(v0, qword_27CBA08E0);
  return sub_217D8866C();
}

uint64_t EORGroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EORGroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 24);
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 24);
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 28);
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 28);
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}