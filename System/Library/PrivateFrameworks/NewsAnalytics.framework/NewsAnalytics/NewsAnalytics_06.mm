unint64_t sub_217AEF5D0()
{
  result = qword_27CB9EF10;
  if (!qword_27CB9EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF10);
  }

  return result;
}

uint64_t ArticleLikeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D8899C();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AEFF90(0, &qword_27CB9EF18, MEMORY[0x277D844C8]);
  v60 = v6;
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - v8;
  v10 = type metadata accessor for ArticleLikeEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEF5D0();
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
  sub_217AEFFF4(v50, v49);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217AF0058(v50);
}

void sub_217AEFF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEF5D0();
    v7 = a3(a1, &type metadata for ArticleLikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AEFFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF0058(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF018C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v13, v26);
}

void sub_217AF06F8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217AEDF64(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217AEDF64(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217AEDF64(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217AEDF64(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217AEDF64(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
            if (v5 <= 0x3F)
            {
              sub_217AEDF64(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
              if (v6 <= 0x3F)
              {
                sub_217AEDF64(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217AEDF64(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                  if (v8 <= 0x3F)
                  {
                    sub_217AEDF64(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                    if (v9 <= 0x3F)
                    {
                      sub_217AEDF64(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
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

uint64_t getEnumTagSinglePayload for ArticleLikeEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArticleLikeEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217AF0C00()
{
  result = qword_27CB9EF20;
  if (!qword_27CB9EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF20);
  }

  return result;
}

unint64_t sub_217AF0C58()
{
  result = qword_27CB9EF28;
  if (!qword_27CB9EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF28);
  }

  return result;
}

unint64_t sub_217AF0CB0()
{
  result = qword_27CB9EF30;
  if (!qword_27CB9EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF30);
  }

  return result;
}

uint64_t sub_217AF0D04(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
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

uint64_t WidgetData.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WidgetData.webEmbedData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

NewsAnalytics::WidgetData __swiftcall WidgetData.init(webEmbedData:)(NewsAnalytics::WidgetData webEmbedData)
{
  v2 = *(webEmbedData.webEmbedData.embedUrl._countAndFlagsBits + 8);
  *v1 = *webEmbedData.webEmbedData.embedUrl._countAndFlagsBits;
  v1[1] = v2;
  return webEmbedData;
}

uint64_t sub_217AF112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144)
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

uint64_t sub_217AF11B8(uint64_t a1)
{
  v2 = sub_217AF13A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF11F4(uint64_t a1)
{
  v2 = sub_217AF13A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  sub_217AF1594(0, &qword_27CB9EF38, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF13A4();

  sub_217D89E7C();
  v13[0] = v9;
  v13[1] = v10;
  sub_217AE89C8();
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AF13A4()
{
  result = qword_27CB9EF40;
  if (!qword_27CB9EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF40);
  }

  return result;
}

uint64_t WidgetData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217AF1594(0, &qword_27CB9EF48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF13A4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AE8974();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AF1594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF13A4();
    v7 = a3(a1, &type metadata for WidgetData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AF15FC()
{
  result = qword_27CB9EF50;
  if (!qword_27CB9EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF50);
  }

  return result;
}

unint64_t sub_217AF1654()
{
  result = qword_27CB9EF58;
  if (!qword_27CB9EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF58);
  }

  return result;
}

unint64_t sub_217AF16FC()
{
  result = qword_27CB9EF60;
  if (!qword_27CB9EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF60);
  }

  return result;
}

unint64_t sub_217AF1754()
{
  result = qword_27CB9EF68;
  if (!qword_27CB9EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF68);
  }

  return result;
}

unint64_t sub_217AF17AC()
{
  result = qword_27CB9EF70;
  if (!qword_27CB9EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF70);
  }

  return result;
}

NewsAnalytics::PurchaseType_optional __swiftcall PurchaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E7265747865;
  if (v1 != 6)
  {
    v3 = 0x72756769666E6F63;
  }

  v4 = 0x43656C646E754273;
  if (v1 != 4)
  {
    v4 = 0x7748656C646E7562;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C646E754273;
  }

  if (*v0)
  {
    v2 = 0x6574726143616C61;
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

unint64_t sub_217AF197C()
{
  result = qword_27CB9EF78;
  if (!qword_27CB9EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF78);
  }

  return result;
}

void sub_217AF19F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6C616E7265747865;
  if (v2 != 6)
  {
    v6 = 0x72756769666E6F63;
    v5 = 0xEC000000656C6261;
  }

  v7 = 0xEE00726569727261;
  v8 = 0x43656C646E754273;
  if (v2 != 4)
  {
    v8 = 0x7748656C646E7562;
    v7 = 0xE900000000000064;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C646E7562;
  if (v2 != 2)
  {
    v10 = 0x656C646E754273;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6574726143616C61;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PurchaseType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PurchaseType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217AF1D0C()
{
  result = qword_2811C7930;
  if (!qword_2811C7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7930);
  }

  return result;
}

unint64_t sub_217AF1D9C()
{
  result = qword_27CB9EF80;
  if (!qword_27CB9EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF80);
  }

  return result;
}

NewsAnalytics::UserSelectionType_optional __swiftcall UserSelectionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t UserSelectionType.rawValue.getter()
{
  v1 = 0x6E4F6E727574;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
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

uint64_t sub_217AF1EB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F6E727574;
  if (v2 != 1)
  {
    v3 = 0x776F4E746F6ELL;
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

  v6 = 0x6E4F6E727574;
  if (*a2 != 1)
  {
    v6 = 0x776F4E746F6ELL;
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

unint64_t sub_217AF1FA8()
{
  result = qword_27CB9EF88;
  if (!qword_27CB9EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF88);
  }

  return result;
}

uint64_t sub_217AF1FFC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AF2098()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217AF2120()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AF21C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E4F6E727574;
  if (v2 != 1)
  {
    v4 = 0x776F4E746F6ELL;
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

unint64_t sub_217AF22DC()
{
  result = qword_27CB9EF90;
  if (!qword_27CB9EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF90);
  }

  return result;
}

uint64_t FeedLayoutResult.LayoutPath.analyticsLayoutPath.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_217D8905C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D31F20])
  {
    v10 = 0;
LABEL_7:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x277D31F18])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x277D31F28])
  {
    v10 = 2;
    goto LABEL_7;
  }

  result = sub_217D89D3C();
  __break(1u);
  return result;
}

uint64_t sub_217AF2544()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EFC8);
  __swift_project_value_buffer(v0, qword_27CB9EFC8);
  return sub_217D8866C();
}

uint64_t PuzzleShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 20);
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 20);
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 24);
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 24);
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 28);
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 28);
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 32);
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF2C58()
{
  result = qword_2811C4D40;
  if (!qword_2811C4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D40);
  }

  return result;
}

unint64_t sub_217AF2CAC()
{
  result = qword_2811C4D48;
  if (!qword_2811C4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D48);
  }

  return result;
}

uint64_t PuzzleShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 32);
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 36);
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 36);
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 40);
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 40);
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 44);
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 44);
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 48);
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AF33C0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217AF343C()
{
  result = qword_2811BD3F8;
  if (!qword_2811BD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3F8);
  }

  return result;
}

unint64_t sub_217AF3490()
{
  result = qword_2811BD400;
  if (!qword_2811BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD400);
  }

  return result;
}

uint64_t PuzzleShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 48);
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleShareEvent(0);
  v5 = v4[5];
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v8, v21);
}

uint64_t PuzzleShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleShareEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PuzzleShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PuzzleShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 28));
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

uint64_t PuzzleShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PuzzleShareEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 36));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AD85B8(v10, &v9);
}

uint64_t PuzzleShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 44));
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

uint64_t PuzzleShareEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 48);
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

__n128 PuzzleShareEvent.Model.init(eventData:actionData:feedData:groupData:shareContextData:puzzleData:viewData:userBundleSubscriptionContextData:adData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a2;
  v36 = *a3;
  v16 = *(a3 + 2);
  v18 = *a5;
  v17 = a5[1];
  v39 = a7[1];
  v40 = *a7;
  v38 = *(a7 + 8);
  v42 = *(a10 + 32);
  v19 = sub_217D8899C();
  v41 = *a10;
  v37 = *(a10 + 16);
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for PuzzleShareEvent.Model(0);
  *(a9 + v20[5]) = v15;
  v21 = a9 + v20[6];
  *v21 = v36;
  *(v21 + 16) = v16;
  v22 = (a9 + v20[7]);
  v23 = a4[3];
  v22[2] = a4[2];
  v22[3] = v23;
  v24 = a4[1];
  *v22 = *a4;
  v22[1] = v24;
  v25 = a4[8];
  v22[7] = a4[7];
  v22[8] = v25;
  v26 = a4[6];
  v22[5] = a4[5];
  v22[6] = v26;
  v22[4] = a4[4];
  v27 = (a9 + v20[8]);
  *v27 = v18;
  v27[1] = v17;
  v28 = (a9 + v20[9]);
  v29 = a6[3];
  v28[2] = a6[2];
  v28[3] = v29;
  v28[4] = a6[4];
  v30 = a6[1];
  *v28 = *a6;
  v28[1] = v30;
  v31 = a9 + v20[10];
  *v31 = v40;
  *(v31 + 8) = v39;
  *(v31 + 16) = v38;
  v32 = a9 + v20[11];
  v33 = *(a8 + 16);
  *v32 = *a8;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a8 + 32);
  *(v32 + 48) = *(a8 + 48);
  v34 = a9 + v20[12];
  result = v41;
  *v34 = v41;
  *(v34 + 16) = v37;
  *(v34 + 32) = v42;
  return result;
}

unint64_t sub_217AF3EF0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x6174614464656566;
    if (a1 != 2)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1)
    {
      v5 = 0x61446E6F69746361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6174614477656976;
    v2 = 0xD000000000000021;
    if (a1 != 7)
    {
      v2 = 0x617461446461;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6144656C7A7A7570;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217AF4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AF5B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AF404C(uint64_t a1)
{
  v2 = sub_217AF46DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF4088(uint64_t a1)
{
  v2 = sub_217AF46DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AF4F44(0, &qword_27CB9EFE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v47[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF46DC();
  sub_217D89E7C();
  LOBYTE(v92) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PuzzleShareEvent.Model(0);
    LOBYTE(v92) = *(v3 + v12[5]);
    LOBYTE(v83) = 1;
    sub_217AED190();
    sub_217D89CAC();
    v13 = (v3 + v12[6]);
    v14 = v13[1];
    v15 = v13[2];
    v102 = *v13;
    v103 = v14;
    v104 = v15;
    v101 = 2;
    sub_217AD1A68(v102, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v102, v103, v104);
    v16 = (v3 + v12[7]);
    v17 = v16[6];
    v18 = v16[4];
    v97 = v16[5];
    v98 = v17;
    v19 = v16[6];
    v20 = v16[8];
    v99 = v16[7];
    v100 = v20;
    v21 = v16[2];
    v22 = *v16;
    v93 = v16[1];
    v94 = v21;
    v23 = v16[2];
    v24 = v16[4];
    v95 = v16[3];
    v96 = v24;
    v25 = *v16;
    v89 = v19;
    v90 = v99;
    v91 = v16[8];
    v92 = v25;
    v85 = v23;
    v86 = v95;
    v87 = v18;
    v88 = v97;
    v83 = v22;
    v84 = v93;
    v82 = 3;
    sub_217AD87FC(&v92, v81);
    sub_217A5D3B4();
    sub_217D89C3C();
    v81[6] = v89;
    v81[7] = v90;
    v81[8] = v91;
    v81[2] = v85;
    v81[3] = v86;
    v81[4] = v87;
    v81[5] = v88;
    v81[0] = v83;
    v81[1] = v84;
    sub_217AD96E8(v81);
    v26 = (v3 + v12[8]);
    v27 = v26[1];
    v79 = *v26;
    v80 = v27;
    v78 = 4;
    sub_217AF2CAC();

    sub_217D89CAC();

    v28 = (v3 + v12[9]);
    v29 = v28[2];
    v30 = *v28;
    v74 = v28[1];
    v75 = v29;
    v31 = v28[2];
    v32 = v28[4];
    v76 = v28[3];
    v77 = v32;
    v33 = *v28;
    v70 = v31;
    v71 = v76;
    v72 = v28[4];
    v73 = v33;
    v68 = v30;
    v69 = v74;
    v67 = 5;
    sub_217AD85B8(&v73, v66);
    sub_217AD6D08();
    sub_217D89CAC();
    v66[2] = v70;
    v66[3] = v71;
    v66[4] = v72;
    v66[0] = v68;
    v66[1] = v69;
    sub_217AD9650(v66);
    v34 = (v3 + v12[10]);
    v35 = *v34;
    v36 = v34[1];
    LOWORD(v34) = *(v34 + 8);
    v63 = v35;
    v64 = v36;
    v65 = v34;
    v62 = 6;
    sub_217A5E790();

    sub_217D89C3C();

    v37 = (v3 + v12[11]);
    v38 = v37[1];
    v60[0] = *v37;
    v60[1] = v38;
    v40 = *v37;
    v39 = v37[1];
    v60[2] = v37[2];
    v61 = *(v37 + 48);
    v56 = v40;
    v57 = v39;
    v58 = v37[2];
    v59 = *(v37 + 48);
    v55 = 7;
    sub_217ACC004(v60, v53);
    sub_217A55B98();
    sub_217D89CAC();
    v53[0] = v56;
    v53[1] = v57;
    v53[2] = v58;
    v54 = v59;
    sub_217ACC69C(v53);
    v41 = v3 + v12[12];
    v42 = *(v41 + 8);
    v43 = *(v41 + 16);
    v44 = *(v41 + 24);
    v45 = *(v41 + 32);
    v48 = *v41;
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v47[7] = 8;
    sub_217AE39D0(v48, v42);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v48, v49);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AF46DC()
{
  result = qword_27CB9EFE8;
  if (!qword_27CB9EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EFE8);
  }

  return result;
}

uint64_t PuzzleShareEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_217D8899C();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AF4F44(0, &qword_27CB9EFF0, MEMORY[0x277D844C8]);
  v50 = v7;
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for PuzzleShareEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217AF46DC();
  v49 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v17 = v47;
  v43 = v11;
  v44 = v14;
  LOBYTE(v67) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v48;
  sub_217D89BCC();
  v19 = v44;
  (*(v46 + 32))(v44, v18, v4);
  LOBYTE(v61) = 1;
  sub_217AED13C();
  sub_217D89BCC();
  v42 = v4;
  v20 = v43;
  v19[v43[5]] = v67;
  LOBYTE(v61) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v21 = v68;
  v22 = &v19[v20[6]];
  *v22 = v67;
  *(v22 + 2) = v21;
  v66 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v23 = &v19[v20[7]];
  v24 = v72;
  v25 = v74;
  *(v23 + 6) = v73;
  *(v23 + 7) = v25;
  *(v23 + 8) = v75;
  v26 = v68;
  v27 = v70;
  *(v23 + 2) = v69;
  *(v23 + 3) = v27;
  *(v23 + 4) = v71;
  *(v23 + 5) = v24;
  *v23 = v67;
  *(v23 + 1) = v26;
  LOBYTE(v56) = 4;
  sub_217AF2C58();
  sub_217D89BCC();
  v28 = *(&v61 + 1);
  v29 = &v19[v20[8]];
  *v29 = v61;
  *(v29 + 1) = v28;
  v60 = 5;
  sub_217AD6CB4();
  sub_217D89BCC();
  v30 = &v19[v20[9]];
  v31 = v64;
  *(v30 + 2) = v63;
  *(v30 + 3) = v31;
  *(v30 + 4) = v65;
  v32 = v62;
  *v30 = v61;
  *(v30 + 1) = v32;
  LOBYTE(v52) = 6;
  sub_217A5E738();
  sub_217D89B5C();
  v33 = v57;
  v34 = &v19[v20[10]];
  *v34 = v56;
  *(v34 + 8) = v33;
  v55 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v35 = &v44[v20[11]];
  v36 = v57;
  *v35 = v56;
  *(v35 + 1) = v36;
  *(v35 + 2) = v58;
  v35[48] = v59;
  v51 = 8;
  sub_217AF343C();
  sub_217D89B5C();
  (*(v17 + 8))(v49, v50);
  v37 = v54;
  v38 = v44;
  v39 = &v44[v43[12]];
  v40 = v53;
  *v39 = v52;
  *(v39 + 1) = v40;
  v39[32] = v37;
  sub_217AF4FA8(v38, v45);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return sub_217AF500C(v38);
}

void sub_217AF4F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF46DC();
    v7 = a3(a1, &type metadata for PuzzleShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AF4FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF500C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF5140@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v9, v22);
}

void sub_217AF55BC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217AF33C0(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
    if (v1 <= 0x3F)
    {
      sub_217AF33C0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217AF33C0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217AF33C0(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
          if (v4 <= 0x3F)
          {
            sub_217AF33C0(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
            if (v5 <= 0x3F)
            {
              sub_217AF33C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
              if (v6 <= 0x3F)
              {
                sub_217AF33C0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
                {
                  sub_217AF33C0(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
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

void sub_217AF58D0()
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
        sub_217A5E974(319, &qword_2811BD200);
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

unint64_t sub_217AF5A18()
{
  result = qword_27CB9F018;
  if (!qword_27CB9F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F018);
  }

  return result;
}

unint64_t sub_217AF5A70()
{
  result = qword_27CB9F020;
  if (!qword_27CB9F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F020);
  }

  return result;
}

unint64_t sub_217AF5AC8()
{
  result = qword_27CB9F028;
  if (!qword_27CB9F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F028);
  }

  return result;
}

uint64_t sub_217AF5B1C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000)
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

uint64_t SportsData.sportsTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_217AF5E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61547374726F7073 && a2 == 0xED00007473694C67)
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

uint64_t sub_217AF5F10(uint64_t a1)
{
  v2 = sub_217A66008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF5F4C(uint64_t a1)
{
  v2 = sub_217A66008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A65E1C(0, &qword_27CB9F030, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A66008();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AF6120();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217AF6120()
{
  result = qword_27CB9F038;
  if (!qword_27CB9F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F038);
  }

  return result;
}

unint64_t sub_217AF61A0()
{
  result = qword_27CB9F040;
  if (!qword_27CB9F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F040);
  }

  return result;
}

uint64_t sub_217AF62BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C34B0);
  __swift_project_value_buffer(v0, qword_2811C34B0);
  return sub_217D8866C();
}

uint64_t GroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 36);
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF6AC0()
{
  result = qword_2811BD368;
  if (!qword_2811BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD368);
  }

  return result;
}

unint64_t sub_217AF6B14()
{
  result = qword_2811BD370;
  if (!qword_2811BD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD370);
  }

  return result;
}

uint64_t GroupExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 36);
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 40);
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF6D18()
{
  result = qword_2811C5210;
  if (!qword_2811C5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5210);
  }

  return result;
}

unint64_t sub_217AF6D6C()
{
  result = qword_2811C5218;
  if (!qword_2811C5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5218);
  }

  return result;
}

uint64_t GroupExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 40);
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 44);
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AF6F70(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t GroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 44);
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217AF74D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t GroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 24));
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

uint64_t GroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t GroupExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t GroupExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t GroupExposureEvent.Model.sectionData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 40));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t sub_217AF77A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t GroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 44));
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

__n128 GroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:viewData:tagData:sectionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  v16 = *(a4 + 1);
  v15 = *(a4 + 2);
  v17 = a5[1];
  v33 = *(a5 + 8);
  v34 = *a5;
  v35 = a6[1];
  v36 = *a6;
  v37 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for GroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[3];
  v22[2] = a3[2];
  v22[3] = v23;
  v24 = a3[1];
  *v22 = *a3;
  v22[1] = v24;
  v25 = a3[8];
  v22[7] = a3[7];
  v22[8] = v25;
  v26 = a3[6];
  v22[5] = a3[5];
  v22[6] = v26;
  v22[4] = a3[4];
  v27 = a9 + v19[7];
  *v27 = v14;
  *(v27 + 8) = v16;
  *(v27 + 16) = v15;
  v28 = a9 + v19[8];
  *v28 = v34;
  *(v28 + 8) = v17;
  *(v28 + 16) = v33;
  v29 = (a9 + v19[9]);
  *v29 = v36;
  v29[1] = v35;
  *(a9 + v19[10]) = v37;
  v30 = a9 + v19[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  result = *(a8 + 32);
  *(v30 + 32) = result;
  *(v30 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217AF79B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x446E6F6974636573;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x61746144676174;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0x6174614464656566;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217AF7AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AF9568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AF7AE8(uint64_t a1)
{
  v2 = sub_217AF80B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF7B24(uint64_t a1)
{
  v2 = sub_217AF80B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AF8B04(0, &qword_27CB9F048, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v36 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF80B0();
  sub_217D89E7C();
  LOBYTE(v57[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for GroupExposureEvent.Model(0);
    v13 = v12[5];
    v68 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[5];
    v16 = v14[7];
    v62 = v14[6];
    v63 = v16;
    v17 = v14[7];
    v64 = v14[8];
    v18 = v14[1];
    v19 = v14[3];
    v58 = v14[2];
    v59 = v19;
    v20 = v14[3];
    v21 = v14[5];
    v60 = v14[4];
    v61 = v21;
    v22 = v14[1];
    v57[0] = *v14;
    v57[1] = v22;
    v54 = v62;
    v55 = v17;
    v56 = v14[8];
    v50 = v58;
    v51 = v20;
    v52 = v60;
    v53 = v15;
    v48 = v57[0];
    v49 = v18;
    v67 = 2;
    sub_217AF7618(v57, v47);
    sub_217A5D3B4();
    sub_217D89CAC();
    v47[6] = v54;
    v47[7] = v55;
    v47[8] = v56;
    v47[2] = v50;
    v47[3] = v51;
    v47[4] = v52;
    v47[5] = v53;
    v47[0] = v48;
    v47[1] = v49;
    sub_217AF8104(v47);
    v23 = v3 + v12[7];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    LOBYTE(v42) = *v23;
    *(&v42 + 1) = v24;
    *&v43 = v25;
    LOBYTE(v38) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v26 = (v3 + v12[8]);
    v27 = *v26;
    v28 = v26[1];
    LOWORD(v26) = *(v26 + 8);
    *&v42 = v27;
    *(&v42 + 1) = v28;
    LOWORD(v43) = v26;
    LOBYTE(v38) = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v29 = (v3 + v12[9]);
    v30 = v29[1];
    *&v42 = *v29;
    *(&v42 + 1) = v30;
    LOBYTE(v38) = 5;
    sub_217AF6B14();

    sub_217D89C3C();

    v46 = *(v3 + v12[10]);
    v66 = 6;
    sub_217AF77A0(v46);
    sub_217AF6D6C();
    sub_217D89C3C();
    sub_217AF8158(v46);
    v32 = (v3 + v12[11]);
    v33 = v32[1];
    v42 = *v32;
    v43 = v33;
    v35 = *v32;
    v34 = v32[1];
    v44 = v32[2];
    v45 = *(v32 + 48);
    v38 = v35;
    v39 = v34;
    v40 = v32[2];
    v41 = *(v32 + 48);
    v65 = 7;
    sub_217ACC004(&v42, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v38;
    v36[1] = v39;
    v36[2] = v40;
    v37 = v41;
    sub_217ACC69C(v36);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AF80B0()
{
  result = qword_2811C3498;
  if (!qword_2811C3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3498);
  }

  return result;
}

uint64_t sub_217AF8158(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t GroupExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = sub_217D889CC();
  v46 = *(v42 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AF8B04(0, &qword_2811BCA30, MEMORY[0x277D844C8]);
  v47 = v9;
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = type metadata accessor for GroupExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF80B0();
  v48 = v12;
  v18 = v49;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v46;
  v49 = v16;
  LOBYTE(v52) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v44;
  sub_217D89BCC();
  (*(v43 + 32))(v49, v20, v6);
  LOBYTE(v52) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v21 = v42;
  sub_217D89BCC();
  v44 = 0;
  v22 = v13;
  v23 = *(v13 + 20);
  v24 = v49;
  (*(v19 + 32))(&v49[v23], v5, v21);
  v62 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v25 = &v24[v22[6]];
  v26 = v59;
  *(v25 + 6) = v58;
  *(v25 + 7) = v26;
  *(v25 + 8) = v60;
  v27 = v55;
  *(v25 + 2) = v54;
  *(v25 + 3) = v27;
  v28 = v57;
  *(v25 + 4) = v56;
  *(v25 + 5) = v28;
  v29 = v53;
  *v25 = v52;
  *(v25 + 1) = v29;
  v61 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v30 = a1;
  v31 = &v24[v22[7]];
  *v31 = v50[0];
  *(v31 + 8) = *(v50 + 8);
  v61 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v32 = v45;
  v33 = *(&v50[0] + 1);
  v34 = v50[1];
  v35 = &v24[v22[8]];
  *v35 = *&v50[0];
  *(v35 + 1) = v33;
  *(v35 + 8) = v34;
  v61 = 5;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v24[v22[9]] = v50[0];
  v61 = 6;
  sub_217AF6D18();
  sub_217D89B5C();
  *&v24[v22[10]] = *&v50[0];
  v61 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v32 + 8))(v48, v47);
  v36 = v49;
  v37 = &v49[v22[11]];
  v38 = v50[1];
  *v37 = v50[0];
  *(v37 + 1) = v38;
  *(v37 + 2) = v50[2];
  v37[48] = v51;
  sub_217AF8B68(v36, v41);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217AF8BCC(v36);
}

void sub_217AF8B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF80B0();
    v7 = a3(a1, &type metadata for GroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AF8B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF8BCC(uint64_t a1)
{
  v2 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF8D00@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217AF90CC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217AF6F70(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
      if (v2 <= 0x3F)
      {
        sub_217AF6F70(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217AF6F70(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
          if (v4 <= 0x3F)
          {
            sub_217AF6F70(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
            if (v5 <= 0x3F)
            {
              sub_217AF6F70(319, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C);
              if (v6 <= 0x3F)
              {
                sub_217AF6F70(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
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

void sub_217AF9358()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD360);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F050);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217AF9464()
{
  result = qword_27CB9F058;
  if (!qword_27CB9F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F058);
  }

  return result;
}

unint64_t sub_217AF94BC()
{
  result = qword_2811C3488;
  if (!qword_2811C3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3488);
  }

  return result;
}

unint64_t sub_217AF9514()
{
  result = qword_2811C3490;
  if (!qword_2811C3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3490);
  }

  return result;
}

uint64_t sub_217AF9568(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t PuzzleData.puzzleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PuzzleData.puzzleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PuzzleData.puzzleTypeID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PuzzleData.puzzleTypeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void PuzzleData.progressInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t PuzzleData.progressInfo.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  return result;
}

uint64_t PuzzleData.init(puzzleID:puzzleTypeID:progressInfo:isPaid:difficulty:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *(a5 + 1);
  v10 = *(a5 + 16);
  v11 = *(a5 + 3);
  v12 = *(a5 + 32);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v8;
  *(a8 + 40) = v9;
  *(a8 + 48) = v10;
  *(a8 + 56) = v11;
  *(a8 + 64) = v12;
  *(a8 + 65) = a6;
  *(a8 + 72) = a7;
  return result;
}

uint64_t sub_217AF9A44()
{
  v1 = *v0;
  v2 = 0x4449656C7A7A7570;
  v3 = 0x73736572676F7270;
  v4 = 0x646961507369;
  if (v1 != 3)
  {
    v4 = 0x6C75636966666964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7954656C7A7A7570;
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

uint64_t sub_217AF9AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AFA4A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AF9B24(uint64_t a1)
{
  v2 = sub_217AF9DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF9B60(uint64_t a1)
{
  v2 = sub_217AF9DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleData.encode(to:)(void *a1)
{
  sub_217AFA290(0, &qword_2811BC890, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v26 = v1[3];
  v27 = v11;
  v34 = *(v1 + 8);
  v25 = v1[5];
  v24 = *(v1 + 48);
  v23 = v1[7];
  LODWORD(v11) = *(v1 + 64);
  v21 = *(v1 + 65);
  v22 = v11;
  v20[1] = v1[9];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF9DFC();
  v13 = v4;
  sub_217D89E7C();
  LOBYTE(v29) = 0;
  v14 = v28;
  sub_217D89C6C();
  if (!v14)
  {
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v18 = v34;
    LOBYTE(v29) = 1;
    sub_217D89C6C();
    v29 = v18;
    v30 = v17;
    v31 = v16;
    v32 = v15;
    v33 = v22;
    v35 = 2;
    sub_217ADC5EC();
    sub_217D89CAC();
    LOBYTE(v29) = 3;
    sub_217D89C7C();
    LOBYTE(v29) = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v13);
}

unint64_t sub_217AF9DFC()
{
  result = qword_2811C7F48;
  if (!qword_2811C7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F48);
  }

  return result;
}

uint64_t PuzzleData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217AFA290(0, &qword_27CB9F060, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF9DFC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38) = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v57 = v12;
  LOBYTE(v38) = 1;
  v15 = sub_217D89B8C();
  *(&v32 + 1) = v16;
  *&v32 = v15;
  LOBYTE(v33) = 2;
  sub_217ADC594();
  sub_217D89BCC();
  v31 = v38;
  v30 = v39;
  v29 = *(&v40 + 1);
  v56 = v40;
  v54 = v41;
  LOBYTE(v38) = 3;
  v28 = sub_217D89B9C();
  v51 = 4;
  v17 = sub_217D89BEC();
  v18 = v28 & 1;
  v19 = *(v7 + 8);
  v27 = v17;
  v19(v10, v6);
  *&v33 = v57;
  *(&v33 + 1) = v14;
  v34 = v32;
  LODWORD(v35) = v31;
  *(&v35 + 1) = v30;
  v28 = v56;
  LOBYTE(v36) = v56;
  *(&v36 + 1) = *v55;
  DWORD1(v36) = *&v55[3];
  v20 = v29;
  *(&v36 + 1) = v29;
  v21 = v54;
  LOBYTE(v37) = v54;
  BYTE1(v37) = v18;
  *(&v37 + 2) = v52;
  WORD3(v37) = v53;
  v22 = v27;
  *(&v37 + 1) = v27;
  v23 = v36;
  a2[2] = v35;
  a2[3] = v23;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  a2[4] = v37;
  sub_217AD85B8(&v33, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38 = v57;
  v39 = v14;
  v40 = v32;
  v41 = v31;
  v42 = v30;
  v43 = v28;
  *v44 = *v55;
  *&v44[3] = *&v55[3];
  v45 = v20;
  v46 = v21;
  v47 = v18;
  v48 = v52;
  v49 = v53;
  v50 = v22;
  return sub_217AD9650(&v38);
}

void sub_217AFA290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF9DFC();
    v7 = a3(a1, &type metadata for PuzzleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_217AFA348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

unint64_t sub_217AFA3A4()
{
  result = qword_27CB9F068;
  if (!qword_27CB9F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F068);
  }

  return result;
}

unint64_t sub_217AFA3FC()
{
  result = qword_2811C7F38;
  if (!qword_2811C7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F38);
  }

  return result;
}

unint64_t sub_217AFA454()
{
  result = qword_2811C7F40;
  if (!qword_2811C7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F40);
  }

  return result;
}

uint64_t sub_217AFA4A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C7A7A7570 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656C7A7A7570 && a2 == 0xEC00000044496570 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEC0000006F666E49 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C75636966666964 && a2 == 0xEA00000000007974)
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

uint64_t sub_217AFA72C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C02A8);
  __swift_project_value_buffer(v0, qword_2811C02A8);
  return sub_217D8866C();
}

uint64_t TodayFeedPoolLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TodayFeedPoolLoadEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 20);
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayFeedPoolLoadEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 20);
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.poolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 24);
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAAE0()
{
  result = qword_2811C42E0;
  if (!qword_2811C42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42E0);
  }

  return result;
}

unint64_t sub_217AFAB34()
{
  result = qword_2811C42E8;
  if (!qword_2811C42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42E8);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.poolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 24);
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.myArticlesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 28);
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAD38()
{
  result = qword_2811BEBB8;
  if (!qword_2811BEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBB8);
  }

  return result;
}

unint64_t sub_217AFAD8C()
{
  result = qword_2811BEBC0;
  if (!qword_2811BEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBC0);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.myArticlesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 28);
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.groupingInventoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 32);
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAF90()
{
  result = qword_2811C1270;
  if (!qword_2811C1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1270);
  }

  return result;
}

unint64_t sub_217AFAFE4()
{
  result = qword_2811C1278;
  if (!qword_2811C1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1278);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.groupingInventoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 32);
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.articleScoreSummaryDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 36);
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AFB1E8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217AFB264()
{
  result = qword_2811BEDC8;
  if (!qword_2811BEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDC8);
  }

  return result;
}

unint64_t sub_217AFB2B8()
{
  result = qword_2811BEDD0;
  if (!qword_2811BEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDD0);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.articleScoreSummaryDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 36);
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for TodayFeedPoolLoadEvent(0);
  v5 = Event[5];
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = Event[8];
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = Event[9];
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v10, v15);
}

uint64_t TodayFeedPoolLoadEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t TodayFeedPoolLoadEvent.Model.poolData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TodayFeedPoolLoadEvent.Model.myArticlesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 28));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_217AFB84C(&v12, v11);
}

uint64_t sub_217AFB84C(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_27CB9F070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TodayFeedPoolLoadEvent.Model.groupingInventoryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 32));
}

uint64_t TodayFeedPoolLoadEvent.Model.articleScoreSummaryDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 36));
}

__n128 TodayFeedPoolLoadEvent.Model.init(eventData:feedConfigData:poolData:myArticlesData:groupingInventoryData:articleScoreSummaryDataList:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v25 = *(a2 + 3);
  v13 = a2[5];
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a5;
  v26 = *a6;
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  *(v19 + 24) = v25;
  *(v19 + 40) = v13;
  v20 = a7 + v18[6];
  *v20 = v14;
  *(v20 + 8) = v15;
  v21 = a7 + v18[7];
  v22 = *(a4 + 48);
  *(v21 + 32) = *(a4 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a4 + 64);
  *(v21 + 80) = *(a4 + 80);
  result = *a4;
  v24 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v24;
  *(a7 + v18[8]) = v16;
  *(a7 + v18[9]) = v26;
  return result;
}

uint64_t sub_217AFBA6C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6C6369747241796DLL;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x666E6F4364656566;
  if (v1 != 1)
  {
    v5 = 0x617461446C6F6F70;
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

uint64_t sub_217AFBB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AFCFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AFBB80(uint64_t a1)
{
  v2 = sub_217AFBFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AFBBBC(uint64_t a1)
{
  v2 = sub_217AFBFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedPoolLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AFC68C(0, &qword_27CB9F078, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFBFF0();
  sub_217D89E7C();
  LOBYTE(v36) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 40);
    *&v36 = *v13;
    *(&v36 + 1) = v14;
    LOBYTE(v37[0]) = v15;
    *(v37 + 8) = *(v13 + 24);
    *(&v37[1] + 1) = v16;
    LOBYTE(v30) = 1;
    sub_217A6088C();

    sub_217D89CAC();

    v17 = (v3 + v12[6]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v40 = v18;
    v41 = v17;
    v39 = 2;
    sub_217AFAB34();
    sub_217D89CAC();
    v19 = (v3 + v12[7]);
    v20 = v19[3];
    v21 = v19[1];
    v37[1] = v19[2];
    v37[2] = v20;
    v22 = v19[3];
    v37[3] = v19[4];
    v23 = v19[1];
    v36 = *v19;
    v37[0] = v23;
    v32 = v37[1];
    v33 = v22;
    v34 = v19[4];
    v38 = *(v19 + 10);
    v35 = *(v19 + 10);
    v30 = v36;
    v31 = v21;
    v29 = 3;
    sub_217AFB84C(&v36, v27);
    sub_217AFAD8C();
    sub_217D89C3C();
    v27[2] = v32;
    v27[3] = v33;
    v27[4] = v34;
    v28 = v35;
    v27[0] = v30;
    v27[1] = v31;
    sub_217AFC044(v27);
    v26 = *(v3 + v12[8]);
    HIBYTE(v25) = 4;
    sub_217AFAFE4();

    sub_217D89C3C();

    v26 = *(v3 + v12[9]);
    HIBYTE(v25) = 5;
    sub_217AFB2B8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AFBFF0()
{
  result = qword_27CB9F080;
  if (!qword_27CB9F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F080);
  }

  return result;
}

uint64_t sub_217AFC044(uint64_t a1)
{
  sub_217A5E974(0, &qword_27CB9F070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TodayFeedPoolLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AFC68C(0, &qword_27CB9F088, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFBFF0();
  v38 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v18 = v15;
  LOBYTE(v40) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v35;
  v20 = v36;
  sub_217D89BCC();
  (*(v34 + 32))(v18, v19, v4);
  LOBYTE(v39) = 1;
  sub_217A60838();
  sub_217D89BCC();
  v21 = v41[0];
  v22 = *&v41[24];
  v23 = v18 + v12[5];
  *v23 = v40;
  *(v23 + 16) = v21;
  *(v23 + 24) = *&v41[8];
  *(v23 + 40) = v22;
  LOBYTE(v39) = 2;
  sub_217AFAAE0();
  sub_217D89BCC();
  v24 = v17;
  v25 = BYTE8(v40);
  v26 = v18 + v12[6];
  *v26 = v40;
  *(v26 + 8) = v25;
  v46 = 3;
  sub_217AFAD38();
  sub_217D89B5C();
  v27 = v37;
  v28 = v18 + v12[7];
  v29 = v42;
  *(v28 + 32) = *&v41[16];
  *(v28 + 48) = v29;
  *(v28 + 64) = v43;
  *(v28 + 80) = v44;
  v30 = *v41;
  *v28 = v40;
  *(v28 + 16) = v30;
  v45 = 4;
  sub_217AFAF90();
  sub_217D89B5C();
  *(v18 + v12[8]) = v39;
  v45 = 5;
  sub_217AFB264();
  sub_217D89B5C();
  (*(v27 + 8))(v38, v20);
  *(v18 + v12[9]) = v39;
  sub_217AFC6F0(v18, v33);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_217AFC754(v18);
}

void sub_217AFC68C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AFBFF0();
    v7 = a3(a1, &type metadata for TodayFeedPoolLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AFC6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AFC754(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AFC888@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v11, v16);
}

void sub_217AFCB94()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217AFB1E8(319, &qword_2811C8728, sub_217A60838, sub_217A6088C);
    if (v1 <= 0x3F)
    {
      sub_217AFB1E8(319, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34);
      if (v2 <= 0x3F)
      {
        sub_217AFB1E8(319, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C);
        if (v3 <= 0x3F)
        {
          sub_217AFB1E8(319, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4);
          if (v4 <= 0x3F)
          {
            sub_217AFB1E8(319, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8);
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

void sub_217AFCDB8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F070);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F0A0);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F0A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217AFCEC8()
{
  result = qword_27CB9F0B0;
  if (!qword_27CB9F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0B0);
  }

  return result;
}

unint64_t sub_217AFCF20()
{
  result = qword_27CB9F0B8;
  if (!qword_27CB9F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0B8);
  }

  return result;
}

unint64_t sub_217AFCF78()
{
  result = qword_27CB9F0C0;
  if (!qword_27CB9F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0C0);
  }

  return result;
}

uint64_t sub_217AFCFCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6369747241796DLL && a2 == 0xEE00617461447365 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCD6E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD700 == a2)
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

NewsAnalytics::SubscribeButtonLocation_optional __swiftcall SubscribeButtonLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SubscribeButtonLocation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x656C6369747261;
      break;
    case 2:
      result = 0x466C656E6E616863;
      break;
    case 3:
      result = 0x50676E69646E616CLL;
      break;
    case 4:
      result = 0x656E697A6167616DLL;
      break;
    case 5:
      result = 0x434F546575737369;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6565466F69647561;
      break;
    case 8:
      result = 0x6575737349666470;
      break;
    case 9:
      result = 0x656C7A7A7570;
      break;
    case 0xA:
      result = 0x73614D7961646F74;
      break;
    case 0xB:
      result = 0x657069636572;
      break;
    case 0xC:
      result = 0x627548646F6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AFD3B4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SubscribeButtonLocation.rawValue.getter();
  v4 = v3;
  if (v2 == SubscribeButtonLocation.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217AFD454()
{
  result = qword_27CB9F0C8;
  if (!qword_27CB9F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0C8);
  }

  return result;
}

uint64_t sub_217AFD4A8()
{
  v1 = *v0;
  sub_217D89E1C();
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AFD510()
{
  v2 = *v0;
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217AFD574()
{
  v1 = *v0;
  sub_217D89E1C();
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217AFD5E4@<X0>(unint64_t *a1@<X8>)
{
  result = SubscribeButtonLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SubscribeButtonLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AFD80C()
{
  result = qword_2811BFCD0;
  if (!qword_2811BFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BFCD0);
  }

  return result;
}

uint64_t sub_217AFD8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xED00006570795467)
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

uint64_t sub_217AFD960(uint64_t a1)
{
  v2 = sub_217AFDB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AFD99C(uint64_t a1)
{
  v2 = sub_217AFDB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingData.encode(to:)(void *a1)
{
  sub_217AFDD74(0, &qword_2811BC7D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFDB34();
  sub_217D89E7C();
  v13 = v9;
  sub_217AFDB88();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AFDB34()
{
  result = qword_2811C72E8[0];
  if (!qword_2811C72E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C72E8);
  }

  return result;
}

unint64_t sub_217AFDB88()
{
  result = qword_2811C72C0;
  if (!qword_2811C72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72C0);
  }

  return result;
}

uint64_t FollowingData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AFDD74(0, &qword_2811BCAE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFDB34();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AFDDD8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AFDD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AFDB34();
    v7 = a3(a1, &type metadata for FollowingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AFDDD8()
{
  result = qword_2811C72B0;
  if (!qword_2811C72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72B0);
  }

  return result;
}

unint64_t sub_217AFDE70()
{
  result = qword_27CB9F0D0;
  if (!qword_27CB9F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0D0);
  }

  return result;
}

unint64_t sub_217AFDEC8()
{
  result = qword_2811C72D8;
  if (!qword_2811C72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72D8);
  }

  return result;
}

unint64_t sub_217AFDF20()
{
  result = qword_2811C72E0;
  if (!qword_2811C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72E0);
  }

  return result;
}

uint64_t sub_217AFE03C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BED60);
  __swift_project_value_buffer(v0, qword_2811BED60);
  return sub_217D8866C();
}

uint64_t JourneyMessageExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFE9F0()
{
  result = qword_2811C68E8;
  if (!qword_2811C68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68E8);
  }

  return result;
}

unint64_t sub_217AFEA44()
{
  result = qword_2811C68F0;
  if (!qword_2811C68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68F0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFEC48()
{
  result = qword_2811C1EB8;
  if (!qword_2811C1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EB8);
  }

  return result;
}

unint64_t sub_217AFEC9C()
{
  result = qword_2811C1EC0;
  if (!qword_2811C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EC0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFF050()
{
  result = qword_2811BDCA8;
  if (!qword_2811BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCA8);
  }

  return result;
}

unint64_t sub_217AFF0A4()
{
  result = qword_2811BDCB0;
  if (!qword_2811BDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCB0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AFF2A8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217AFF324()
{
  result = qword_2811C7940;
  if (!qword_2811C7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7940);
  }

  return result;
}

unint64_t sub_217AFF378()
{
  result = qword_2811C7948;
  if (!qword_2811C7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7948);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217AFFA20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t JourneyMessageExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 28);
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

uint64_t sub_217AFFBC0(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811C7DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JourneyMessageExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JourneyMessageExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t JourneyMessageExposureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t JourneyMessageExposureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 48);
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

uint64_t JourneyMessageExposureEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t JourneyMessageExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageExposureEvent.Model.init(eventData:timedData:viewData:articleData:tagData:feedData:dialogStyleData:placementData:userBundleSubscriptionContextData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a3 + 8);
  v20 = a5[1];
  v42 = *a6;
  v40 = *a5;
  v41 = *(a6 + 2);
  v43 = *a7;
  v44 = a8[1];
  v45 = *a8;
  v46 = *a11;
  v49 = *a12;
  v48 = a12[1];
  v47 = *(a12 + 16);
  v21 = sub_217D8899C();
  v38 = *(a8 + 2);
  v39 = *(a8 + 1);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v17;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v26 = a9 + v22[7];
  v27 = *(a4 + 48);
  *(v26 + 32) = *(a4 + 32);
  *(v26 + 48) = v27;
  v28 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a4 + 127);
  v29 = *(a4 + 112);
  *(v26 + 96) = *(a4 + 96);
  *(v26 + 112) = v29;
  v30 = *(a4 + 80);
  *(v26 + 64) = *(a4 + 64);
  *(v26 + 80) = v30;
  v31 = (a9 + v22[8]);
  *v31 = v40;
  v31[1] = v20;
  v32 = a9 + v22[9];
  *v32 = v42;
  *(v32 + 16) = v41;
  *(a9 + v22[10]) = v43;
  v33 = a9 + v22[11];
  *v33 = v45;
  *(v33 + 8) = v44;
  *(v33 + 16) = v39;
  *(v33 + 32) = v38;
  v34 = a9 + v22[12];
  v35 = *(a10 + 16);
  *v34 = *a10;
  *(v34 + 16) = v35;
  result = *(a10 + 32);
  *(v34 + 32) = result;
  *(v34 + 48) = *(a10 + 48);
  *(a9 + v22[13]) = v46;
  v37 = a9 + v22[14];
  *v37 = v49;
  *(v37 + 8) = v48;
  *(v37 + 16) = v47;
  return result;
}

unint64_t sub_217B00068(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6174614477656976;
    v8 = 0x44656C6369747261;
    if (a1 != 3)
    {
      v8 = 0x61746144676174;
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
    v1 = 0xD000000000000021;
    v2 = 0x6573616863727570;
    if (a1 == 9)
    {
      v2 = 0xD000000000000022;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614464656566;
    v4 = 0x7453676F6C616964;
    if (a1 != 6)
    {
      v4 = 0x6E656D6563616C70;
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

uint64_t sub_217B001F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B022FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B0021C(uint64_t a1)
{
  v2 = sub_217B0098C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B00258(uint64_t a1)
{
  v2 = sub_217B0098C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B015C8(0, &qword_27CB9F0D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v43 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0098C();
  sub_217D89E7C();
  LOBYTE(v77[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v77[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    v85 = v15;
    v86 = v16;
    v87 = v14;
    v84 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v88 = v12;
    v17 = v3 + v12[7];
    v18 = *(v17 + 96);
    v19 = *(v17 + 64);
    v81 = *(v17 + 80);
    v82 = v18;
    v20 = *(v17 + 96);
    *v83 = *(v17 + 112);
    v21 = *(v17 + 16);
    v22 = *(v17 + 48);
    v78 = *(v17 + 32);
    v79 = v22;
    v23 = *(v17 + 48);
    v80 = *(v17 + 64);
    v24 = *(v17 + 16);
    v77[0] = *v17;
    v77[1] = v24;
    v74 = v81;
    v75 = v20;
    v76[0] = *(v17 + 112);
    v71 = v78;
    v72 = v23;
    v73 = v19;
    *&v83[15] = *(v17 + 127);
    *(v76 + 15) = *(v17 + 127);
    v69 = v77[0];
    v70 = v21;
    v68 = 3;
    sub_217AFFBC0(v77, v66);
    sub_217ACF52C();
    sub_217D89C3C();
    v66[6] = v75;
    *v67 = v76[0];
    *&v67[15] = *(v76 + 15);
    v66[2] = v71;
    v66[3] = v72;
    v66[4] = v73;
    v66[5] = v74;
    v66[0] = v69;
    v66[1] = v70;
    sub_217B009E0(v66);
    v26 = v88;
    v27 = (v3 + v88[8]);
    v28 = v27[1];
    *&v56 = *v27;
    *(&v56 + 1) = v28;
    LOBYTE(v52) = 4;
    sub_217AF6B14();

    sub_217D89C3C();

    v29 = (v3 + v26[9]);
    v30 = v29[1];
    v31 = v29[2];
    *&v56 = *v29;
    *(&v56 + 1) = v30;
    *&v57 = v31;
    LOBYTE(v52) = 5;
    sub_217AD1A68(v56, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v56, *(&v56 + 1), v57);
    LOBYTE(v56) = *(v3 + v26[10]);
    LOBYTE(v52) = 6;
    sub_217AFEA44();
    sub_217D89CAC();
    v32 = (v3 + v26[11]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[5];
    v61 = *v32;
    v62 = v33;
    v64 = *(v32 + 3);
    v63 = v34;
    v65 = v35;
    v60 = 7;
    v43[1] = v64;
    v44 = v35;
    sub_217AFEC9C();

    sub_217D89CAC();
    v44 = v65;

    v36 = (v3 + v26[12]);
    v37 = v36[1];
    v56 = *v36;
    v57 = v37;
    v39 = *v36;
    v38 = v36[1];
    v58 = v36[2];
    v59 = *(v36 + 48);
    v52 = v39;
    v53 = v38;
    v54 = v36[2];
    v55 = *(v36 + 48);
    v51 = 8;
    sub_217ACC004(&v56, v49);
    sub_217A55B98();
    sub_217D89CAC();
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v50 = v55;
    sub_217ACC69C(v49);
    LOBYTE(v45) = *(v3 + v26[13]);
    v48 = 9;
    sub_217AFF0A4();
    sub_217D89C3C();
    v40 = (v3 + v26[14]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v40) = *(v40 + 16);
    v45 = v41;
    v46 = v42;
    v47 = v40;
    v48 = 10;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B0098C()
{
  result = qword_27CB9F0E0;
  if (!qword_27CB9F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0E0);
  }

  return result;
}

uint64_t sub_217B009E0(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811C7DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JourneyMessageExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217D889CC();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B015C8(0, &qword_27CB9F0E8, MEMORY[0x277D844C8]);
  v53 = v10;
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - v12;
  v14 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217B0098C();
  v54 = v13;
  v20 = v55;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v21 = v51;
  v46 = v3;
  v47 = v14;
  v55 = v17;
  LOBYTE(v65) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v52;
  sub_217D89BCC();
  v23 = v55;
  (*(v50 + 32))(v55, v22, v7);
  LOBYTE(v65) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v24 = v46;
  sub_217D89BCC();
  v45[1] = v7;
  v52 = 0;
  v25 = v47;
  (*(v49 + 32))(&v23[v47[5]], v6, v24);
  LOBYTE(v60) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v26 = *(&v65 + 1);
  v27 = v66;
  v28 = &v23[v25[6]];
  *v28 = v65;
  *(v28 + 1) = v26;
  *(v28 + 8) = v27;
  v64 = 3;
  sub_217ACF4D8();
  sub_217D89B5C();
  v29 = &v23[v25[7]];
  v30 = *v72;
  *(v29 + 6) = v71;
  *(v29 + 7) = v30;
  *(v29 + 127) = *&v72[15];
  v31 = v68;
  *(v29 + 2) = v67;
  *(v29 + 3) = v31;
  v32 = v70;
  *(v29 + 4) = v69;
  *(v29 + 5) = v32;
  v33 = v66;
  *v29 = v65;
  *(v29 + 1) = v33;
  LOBYTE(v56) = 4;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v23[v25[8]] = v60;
  LOBYTE(v56) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = v61;
  v35 = &v23[v25[9]];
  *v35 = v60;
  *(v35 + 2) = v34;
  LOBYTE(v56) = 6;
  sub_217AFE9F0();
  sub_217D89BCC();
  v23[v25[10]] = v60;
  LOBYTE(v56) = 7;
  sub_217AFEC48();
  sub_217D89BCC();
  v36 = *(&v60 + 1);
  v37 = &v55[v47[11]];
  *v37 = v60;
  *(v37 + 1) = v36;
  v38 = v62;
  *(v37 + 1) = v61;
  *(v37 + 2) = v38;
  v59 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v55[v47[12]];
  v40 = v61;
  *v39 = v60;
  *(v39 + 1) = v40;
  *(v39 + 2) = v62;
  v39[48] = v63;
  v58 = 9;
  sub_217AFF050();
  sub_217D89B5C();
  v55[v47[13]] = v56;
  v58 = 10;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v21 + 8))(v54, v53);
  v41 = v57;
  v42 = v55;
  v43 = &v55[v47[14]];
  *v43 = v56;
  v43[16] = v41;
  sub_217B0162C(v42, v48);
  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_217B01690(v42);
}

void sub_217B015C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B0098C();
    v7 = a3(a1, &type metadata for JourneyMessageExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B0162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B01690(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B017C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B01CF8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217AFF2A8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217AFF2A8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
        if (v3 <= 0x3F)
        {
          sub_217AFF2A8(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
          if (v4 <= 0x3F)
          {
            sub_217AFF2A8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
            if (v5 <= 0x3F)
            {
              sub_217AFF2A8(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
              if (v6 <= 0x3F)
              {
                sub_217AFF2A8(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
                if (v7 <= 0x3F)
                {
                  sub_217AFF2A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217AFF2A8(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
                    if (v9 <= 0x3F)
                    {
                      sub_217AFF2A8(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
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

void sub_217B02074()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD360);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F100);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9F108);
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

unint64_t sub_217B021F8()
{
  result = qword_27CB9F110;
  if (!qword_27CB9F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F110);
  }

  return result;
}

unint64_t sub_217B02250()
{
  result = qword_27CB9F118;
  if (!qword_27CB9F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F118);
  }

  return result;
}

unint64_t sub_217B022A8()
{
  result = qword_27CB9F120;
  if (!qword_27CB9F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F120);
  }

  return result;
}

uint64_t sub_217B022FC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
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

id SessionObserver.configurationManagerScienceExperimentFieldsDidChange(_:)(void *a1)
{
  result = [a1 configuration];
  if (result)
  {
    v3 = result;
    v4 = *&v1[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    v6 = v1;
    swift_unknownObjectRetain();
    sub_217D8833C();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B02908()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F1C0);
  __swift_project_value_buffer(v0, qword_27CB9F1C0);
  return sub_217D8866C();
}

uint64_t MediaViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B037CC()
{
  result = qword_2811C7D38;
  if (!qword_2811C7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D38);
  }

  return result;
}

unint64_t sub_217B03820()
{
  result = qword_2811C7D40;
  if (!qword_2811C7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D40);
  }

  return result;
}

uint64_t MediaViewEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B03D84(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t MediaViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaViewEvent(0);
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

uint64_t sub_217B04544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 24);
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

uint64_t MediaViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 28);
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

uint64_t MediaViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 32));
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

uint64_t MediaViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaViewEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 40));
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

uint64_t MediaViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaViewEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 48));
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

uint64_t MediaViewEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 56);
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

uint64_t MediaViewEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 60));
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

uint64_t MediaViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 MediaViewEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:userBundleSubscriptionContextData:issueData:issueViewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, uint64_t a12, __n128 *a13, uint64_t *a14)
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
  v22 = type metadata accessor for MediaViewEvent.Model(0);
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

uint64_t sub_217B04D30(char a1)
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

uint64_t sub_217B04E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B07524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B04ECC(uint64_t a1)
{
  v2 = sub_217B058B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B04F08(uint64_t a1)
{
  v2 = sub_217B058B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B06624(0, &qword_27CB9F1D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v72 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B058B0();
  sub_217D89E7C();
  LOBYTE(v116) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for MediaViewEvent.Model(0);
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

unint64_t sub_217B058B0()
{
  result = qword_27CB9F1E0;
  if (!qword_27CB9F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F1E0);
  }

  return result;
}

uint64_t MediaViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  sub_217B06624(0, &qword_27CB9F1E8, MEMORY[0x277D844C8]);
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v65 - v10;
  v12 = type metadata accessor for MediaViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B058B0();
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
  sub_217B06688(v63, v68);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return sub_217B066EC(v63);
}

void sub_217B06624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B058B0();
    v7 = a3(a1, &type metadata for MediaViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B06688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B066EC(uint64_t a1)
{
  v2 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B06820@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v13, v30);
}

void sub_217B06E44()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B03D84(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217B03D84(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217B03D84(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217B03D84(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
            if (v5 <= 0x3F)
            {
              sub_217B03D84(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
              if (v6 <= 0x3F)
              {
                sub_217B03D84(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                if (v7 <= 0x3F)
                {
                  sub_217B03D84(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
                  if (v8 <= 0x3F)
                  {
                    sub_217B03D84(319, &qword_2811C87E0, sub_217B037CC, sub_217B03820);
                    if (v9 <= 0x3F)
                    {
                      sub_217B03D84(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                      if (v10 <= 0x3F)
                      {
                        sub_217B03D84(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                        if (v11 <= 0x3F)
                        {
                          sub_217B03D84(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
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

void sub_217B07260()
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
          sub_217A5E974(319, &qword_27CB9ECA0);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F1F0);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C71A8);
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

unint64_t sub_217B07420()
{
  result = qword_27CB9F1F8;
  if (!qword_27CB9F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F1F8);
  }

  return result;
}

unint64_t sub_217B07478()
{
  result = qword_27CB9F200;
  if (!qword_27CB9F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F200);
  }

  return result;
}

unint64_t sub_217B074D0()
{
  result = qword_27CB9F208;
  if (!qword_27CB9F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F208);
  }

  return result;
}

uint64_t sub_217B07524(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x447972656C6C6167 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477)
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

uint64_t ErrorData.errorDomain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ErrorData.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorData.errorCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ErrorData.errorCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ErrorData.errorDetails.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ErrorData.init(errorDomain:errorCode:errorDetails:)(NewsAnalytics::ErrorData *__return_ptr retstr, Swift::String_optional errorDomain, Swift::String errorCode, Swift::OpaquePointer_optional errorDetails)
{
  retstr->errorDomain = errorDomain;
  retstr->errorCode = errorCode;
  retstr->errorDetails.value._rawValue = errorDetails.value._rawValue;
}

uint64_t sub_217B07AD4()
{
  v1 = 0x646F43726F727265;
  if (*v0 != 1)
  {
    v1 = 0x746544726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6F44726F727265;
  }
}

uint64_t sub_217B07B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B084DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B07B6C(uint64_t a1)
{
  v2 = sub_217B07DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B07BA8(uint64_t a1)
{
  v2 = sub_217B07DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorData.encode(to:)(void *a1)
{
  sub_217B081B4(0, &qword_27CB9F210, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  v17 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B07DF0();
  sub_217D89E7C();
  v24 = 0;
  v13 = v20;
  sub_217D89C0C();
  if (!v13)
  {
    v14 = v17;
    v23 = 1;
    sub_217D89C6C();
    v21 = v14;
    v22 = 2;
    sub_217B07E44();
    sub_217B08218(&qword_27CB9F228, sub_217B07E94);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B07DF0()
{
  result = qword_27CB9F218;
  if (!qword_27CB9F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F218);
  }

  return result;
}

void sub_217B07E44()
{
  if (!qword_27CB9F220)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F220);
    }
  }
}

unint64_t sub_217B07E94()
{
  result = qword_27CB9F230;
  if (!qword_27CB9F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F230);
  }

  return result;
}

uint64_t ErrorData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B081B4(0, &qword_27CB9F238, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B07DF0();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v12 = sub_217D89B2C();
    v15 = v14;
    v22 = v12;
    v25 = 1;
    v16 = sub_217D89B8C();
    v18 = v17;
    v21 = v16;
    sub_217B07E44();
    v24 = 2;
    sub_217B08218(&qword_27CB9F240, sub_217B08284);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v19 = v23;
    *a2 = v22;
    a2[1] = v15;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_217B081B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B07DF0();
    v7 = a3(a1, &type metadata for ErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B08218(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217B07E44();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B08284()
{
  result = qword_27CB9F248;
  if (!qword_27CB9F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F248);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217B08324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_217B0836C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B083D8()
{
  result = qword_27CB9F250;
  if (!qword_27CB9F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F250);
  }

  return result;
}

unint64_t sub_217B08430()
{
  result = qword_27CB9F258;
  if (!qword_27CB9F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F258);
  }

  return result;
}

unint64_t sub_217B08488()
{
  result = qword_27CB9F260;
  if (!qword_27CB9F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F260);
  }

  return result;
}

uint64_t sub_217B084DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961)
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

uint64_t SearchResultsData.topicIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SearchResultsData.channelIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SearchResultsData.articleIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchResultsData.topResultTagID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SearchResultsData.topResultTagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SearchResultsData.topResultArticleID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SearchResultsData.topResultArticleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SearchResultsData.completedString.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SearchResultsData.completedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SearchResultsData.clientLatency.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t SearchResultsData.clientLatency.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SearchResultsData.serverLatency.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t SearchResultsData.serverLatency.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t SearchResultsData.serverProcessingLatency.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t SearchResultsData.serverProcessingLatency.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t SearchResultsData.sportTagIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t SearchResultsData.recipeIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t SearchResultsData.topResultRecipeID.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t SearchResultsData.topResultRecipeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

__n128 SearchResultsData.init(topicIDs:channelIDs:articleIDs:topResultTagID:topResultArticleID:totalResults:completedString:resultsSource:clientLatency:serverLatency:serverProcessingLatency:sportTagIDs:recipeIDs:topResultRecipeID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18)
{
  result = a16;
  v19 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v19;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18;
  return result;
}

uint64_t sub_217B08C24(char a1)
{
  result = 0x7344496369706F74;
  switch(a1)
  {
    case 1:
      result = 0x496C656E6E616863;
      break;
    case 2:
      result = 0x49656C6369747261;
      break;
    case 3:
      result = 0x6C75736552706F74;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7365526C61746F74;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0x5373746C75736572;
      break;
    case 8:
      v3 = 0x746E65696C63;
      goto LABEL_16;
    case 9:
      v3 = 0x726576726573;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x67615474726F7073;
      break;
    case 12:
      result = 0x4449657069636572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B08DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B0A074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B08E18(uint64_t a1)
{
  v2 = sub_217B09328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B08E54(uint64_t a1)
{
  v2 = sub_217B09328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsData.encode(to:)(void *a1)
{
  sub_217B09C60(0, &qword_27CB9F268, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v42 = v1[2];
  v43 = v9;
  v12 = v1[4];
  v13 = v1[5];
  v40 = v11;
  v41 = v12;
  v38 = v1[6];
  v39 = v13;
  v37 = *(v1 + 14);
  v14 = v1[8];
  v35 = v1[9];
  v36 = v14;
  v34 = *(v1 + 80);
  v15 = v1[11];
  v32 = v1[12];
  v33 = v15;
  v16 = v1[13];
  v30 = v1[14];
  v31 = v16;
  v17 = v1[15];
  v28 = v1[16];
  v29 = v17;
  v18 = v1[17];
  v26 = v1[18];
  v27 = v18;
  v19 = v1[20];
  v25 = v1[19];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B09328();

  sub_217D89E7C();
  v46 = v10;
  v45 = 0;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  v21 = v8;
  v22 = v44;
  sub_217D89CAC();
  if (v22)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v24 = v42;
    v44 = v19;

    v46 = v43;
    v45 = 1;
    sub_217D89CAC();
    v46 = v24;
    v45 = 2;
    sub_217D89CAC();
    LOBYTE(v46) = 3;
    sub_217D89C0C();
    LOBYTE(v46) = 4;
    sub_217D89C0C();
    LOBYTE(v46) = 5;
    sub_217D89CBC();
    LOBYTE(v46) = 6;
    sub_217D89C0C();
    LOBYTE(v46) = v34;
    v45 = 7;
    sub_217B0937C();
    sub_217D89C3C();
    LOBYTE(v46) = 8;
    sub_217D89C0C();
    LOBYTE(v46) = 9;
    sub_217D89C0C();
    LOBYTE(v46) = 10;
    sub_217D89C0C();
    v46 = v27;
    v45 = 11;
    sub_217D89C3C();
    v46 = v26;
    v45 = 12;
    sub_217D89CAC();
    LOBYTE(v46) = 13;
    sub_217D89C0C();
    return (*(v5 + 8))(v21, 0);
  }
}

unint64_t sub_217B09328()
{
  result = qword_27CB9F270;
  if (!qword_27CB9F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F270);
  }

  return result;
}

unint64_t sub_217B0937C()
{
  result = qword_27CB9F278;
  if (!qword_27CB9F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F278);
  }

  return result;
}

uint64_t SearchResultsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B09C60(0, &qword_27CB9F280, MEMORY[0x277D844C8]);
  v63 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B09328();
  sub_217D89E5C();
  if (v2)
  {
    v93 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v61 = a2;
    sub_217A55F8C();
    LOBYTE(v64) = 0;
    v11 = sub_217A55FDC(&qword_2811BCD38);
    sub_217D89BCC();
    v13 = v75[0];
    LOBYTE(v64) = 1;
    sub_217D89BCC();
    v58 = v6;
    v14 = v75[0];
    LOBYTE(v64) = 2;
    v93 = 0;
    sub_217D89BCC();
    v62 = v11;
    v57 = v75[0];
    LOBYTE(v75[0]) = 3;
    v56 = sub_217D89B2C();
    v59 = v15;
    LOBYTE(v75[0]) = 4;
    v16 = v13;
    v54 = sub_217D89B2C();
    v55 = v17;
    LOBYTE(v75[0]) = 5;
    LODWORD(v13) = sub_217D89BDC();
    LOBYTE(v75[0]) = 6;
    v53 = sub_217D89B2C();
    v60 = v18;
    LOBYTE(v64) = 7;
    sub_217B09CC4();
    sub_217D89B5C();
    v50 = LOBYTE(v75[0]);
    v51 = v13;
    LOBYTE(v75[0]) = 8;
    v49 = sub_217D89B2C();
    v52 = v19;
    v47 = v14;
    v48 = v16;
    LOBYTE(v75[0]) = 9;
    v20 = sub_217D89B2C();
    v46 = v21;
    v22 = v20;
    LOBYTE(v75[0]) = 10;
    v23 = sub_217D89B2C();
    v45 = v24;
    v93 = 0;
    v25 = v23;
    LOBYTE(v64) = 11;
    sub_217D89B5C();
    v93 = 0;
    v26 = v75[0];
    LOBYTE(v64) = 12;
    sub_217D89BCC();
    v93 = 0;
    v62 = v75[0];
    v91 = 13;
    v27 = sub_217D89B2C();
    v93 = 0;
    v28 = v27;
    v30 = v29;
    (*(v58 + 8))(v9, v63);
    *&v64 = v48;
    *(&v64 + 1) = v47;
    *&v65 = v57;
    *(&v65 + 1) = v56;
    v31 = v59;
    *&v66 = v59;
    *(&v66 + 1) = v54;
    *&v67 = v55;
    DWORD2(v67) = v51;
    *&v68 = v53;
    *(&v68 + 1) = v60;
    LOBYTE(v69) = v50;
    *(&v69 + 1) = v92[0];
    DWORD1(v69) = *(v92 + 3);
    *(&v69 + 1) = v49;
    *&v70 = v52;
    v43 = v25;
    v44 = v22;
    *(&v70 + 1) = v22;
    v32 = v46;
    *&v71 = v46;
    *(&v71 + 1) = v25;
    v33 = v45;
    *&v72 = v45;
    *(&v72 + 1) = v26;
    v34 = v61;
    *&v73 = v62;
    *(&v73 + 1) = v28;
    v74 = v30;
    v35 = v69;
    *(v61 + 64) = v68;
    *(v34 + 80) = v35;
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    *(v34 + 160) = v30;
    *(v34 + 128) = v38;
    *(v34 + 144) = v39;
    *(v34 + 96) = v36;
    *(v34 + 112) = v37;
    v40 = v64;
    v41 = v65;
    v42 = v67;
    *(v34 + 32) = v66;
    *(v34 + 48) = v42;
    *v34 = v40;
    *(v34 + 16) = v41;
    sub_217B09D18(&v64, v75);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v75[0] = v48;
    v75[1] = v47;
    v75[2] = v57;
    v75[3] = v56;
    v75[4] = v31;
    v75[5] = v54;
    v75[6] = v55;
    v76 = v51;
    v77 = v53;
    v78 = v60;
    v79 = v50;
    *v80 = v92[0];
    *&v80[3] = *(v92 + 3);
    v81 = v49;
    v82 = v52;
    v83 = v44;
    v84 = v32;
    v85 = v43;
    v86 = v33;
    v87 = v26;
    v88 = v62;
    v89 = v28;
    v90 = v30;
    return sub_217B09D50(v75);
  }
}

void sub_217B09C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B09328();
    v7 = a3(a1, &type metadata for SearchResultsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B09CC4()
{
  result = qword_27CB9F288;
  if (!qword_27CB9F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F288);
  }

  return result;
}

unint64_t sub_217B09D84()
{
  result = qword_27CB9F290;
  if (!qword_27CB9F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F290);
  }

  return result;
}

unint64_t sub_217B09DDC()
{
  result = qword_27CB9F298;
  if (!qword_27CB9F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F298);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_217B09E9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_217B09EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B09F70()
{
  result = qword_27CB9F2A0;
  if (!qword_27CB9F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2A0);
  }

  return result;
}

unint64_t sub_217B09FC8()
{
  result = qword_27CB9F2A8;
  if (!qword_27CB9F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2A8);
  }

  return result;
}

unint64_t sub_217B0A020()
{
  result = qword_27CB9F2B0;
  if (!qword_27CB9F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2B0);
  }

  return result;
}

uint64_t sub_217B0A074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7344496369706F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xEA00000000007344 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75736552706F74 && a2 == 0xEE00444967615474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCD810 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365526C61746F74 && a2 == 0xEC00000073746C75 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEF676E6972745364 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5373746C75736572 && a2 == 0xED0000656372756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614C746E65696C63 && a2 == 0xED000079636E6574 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614C726576726573 && a2 == 0xED000079636E6574 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCD830 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x67615474726F7073 && a2 == 0xEB00000000734449 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4449657069636572 && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCD850 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

void EventUserInfo.headlineEmbeddings.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_217B0A8E4(v2, v3, v4, v5, sub_217B0A564);
}

uint64_t sub_217B0A564(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t EventUserInfo.init(isFake:headline:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (a2)
  {
    swift_getObjectType();
    sub_217B0A630(v7);
    result = swift_unknownObjectRelease();
    v6 = v7[0];
    v5 = v7[1];
  }

  else
  {
    v5 = xmmword_217D921D0;
    v6 = 0uLL;
  }

  *a3 = v3 & 1;
  *(a3 + 8) = v6;
  *(a3 + 24) = v5;
  return result;
}

double sub_217B0A630@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v4 = [v1 float16FullBodyEncoding];
    if (v4)
    {
      v5 = v4;
      v6 = sub_217D87C0C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xF000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xB000000000000000;
  }

  if ([v2 respondsToSelector_])
  {
    v10 = [v2 float16TitleEncoding];
    if (v10)
    {
      v11 = v10;
      v12 = sub_217D87C0C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0xB000000000000000;
  }

  if (v8 >> 60 != 11)
  {
    if (v8 >> 60 != 15)
    {
      if (v14 >> 60 != 11)
      {
        if (v14 >> 60 != 15)
        {
          v15 = v14 | 0x2000000000000000;
          *a1 = v6;
          a1[1] = v8;
          a1[2] = v12;
          goto LABEL_18;
        }

        sub_217B0AAA8(v12, v14);
      }

      *a1 = v6;
      a1[1] = v8;
      a1[2] = 0;
      a1[3] = 0;
      return result;
    }

    sub_217B0AAA8(v6, v8);
  }

  if (v14 >> 60 == 11)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    v15 = 0x3000000000000000;
    a1[2] = 0;
LABEL_18:
    a1[3] = v15;
    return result;
  }

  if (v14 >> 60 == 15)
  {
    sub_217B0AAA8(v12, v14);
    goto LABEL_17;
  }

  *a1 = v12;
  a1[1] = v14;
  result = 0.0;
  *(a1 + 1) = xmmword_217D921E0;
  return result;
}

double ProcessEvent.newsUserInfo.getter@<D0>(uint64_t a1@<X8>)
{
  sub_217D8819C();
  if (!v3[3])
  {
    sub_217A576FC(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *a1 = 2;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return result;
}

uint64_t ProcessEvent.isFake.getter()
{
  ProcessEvent.newsUserInfo.getter(v2);
  v0 = v2[0];
  if (LOBYTE(v2[0]) == 2)
  {
    v0 = 0;
  }

  else
  {
    sub_217B0A898(v2[0], v2[1], v2[2], v2[3], v2[4]);
  }

  return v0 & 1;
}

void sub_217B0A898(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 != 2)
  {
    sub_217B0A8E4(a2, a3, a4, a5, sub_217AE010C);
  }
}

void sub_217B0A8E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (((a4 >> 60) & 3) > 1)
  {
    if (((a4 >> 60) & 3) == 2)
    {
      a5();

      (a5)(a3, a4 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {

    a5();
  }
}

void ProcessEvent.headlineEmbeddings.getter(_OWORD *a1@<X8>)
{
  ProcessEvent.newsUserInfo.getter(v4);
  if (v4[0] == 2)
  {
    v2 = xmmword_217D921D0;
    v3 = 0uLL;
  }

  else
  {
    v3 = v5;
    v2 = v6;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics31EventUserInfoHeadlineEmbeddingsO(uint64_t a1)
{
  if (((*(a1 + 24) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3;
  }
}

uint64_t sub_217B0A9F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t sub_217B0AA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_217B0AAA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_217B0AABC(a1, a2);
  }

  return a1;
}

uint64_t sub_217B0AABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217AE010C(a1, a2);
  }

  return a1;
}

uint64_t sub_217B0AB98()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F2E8);
  __swift_project_value_buffer(v0, qword_27CB9F2E8);
  return sub_217D8866C();
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0AD9C()
{
  result = qword_27CB9F308;
  if (!qword_27CB9F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F308);
  }

  return result;
}

unint64_t sub_217B0ADF0()
{
  result = qword_27CB9F310;
  if (!qword_27CB9F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F310);
  }

  return result;
}

uint64_t WidgetExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.groupDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 24);
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0AFF4()
{
  result = qword_27CB9F320;
  if (!qword_27CB9F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F320);
  }

  return result;
}

unint64_t sub_217B0B048()
{
  result = qword_27CB9F328;
  if (!qword_27CB9F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F328);
  }

  return result;
}

uint64_t WidgetExposureEvent.groupDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 24);
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.personalizationFeatureCTRDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 28);
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0B24C()
{
  result = qword_27CB9F338;
  if (!qword_27CB9F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F338);
  }

  return result;
}

unint64_t sub_217B0B2A0()
{
  result = qword_27CB9F340;
  if (!qword_27CB9F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F340);
  }

  return result;
}

uint64_t WidgetExposureEvent.personalizationFeatureCTRDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 28);
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 32);
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 32);
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 36);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.typeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 40);
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0B744()
{
  result = qword_2811C6990;
  if (!qword_2811C6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6990);
  }

  return result;
}

unint64_t sub_217B0B798()
{
  result = qword_2811C6998;
  if (!qword_2811C6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6998);
  }

  return result;
}

uint64_t WidgetExposureEvent.typeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 40);
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 44);
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B0B99C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217B0BA18()
{
  result = qword_2811C2D98;
  if (!qword_2811C2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D98);
  }

  return result;
}

unint64_t sub_217B0BA6C()
{
  result = qword_2811C2DA0;
  if (!qword_2811C2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DA0);
  }

  return result;
}

uint64_t WidgetExposureEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 44);
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetExposureEvent(0);
  v5 = v4[5];
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217A608E0();
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t WidgetExposureEvent.Model.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t WidgetExposureEvent.Model.groupDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 24));
}

uint64_t WidgetExposureEvent.Model.personalizationFeatureCTRDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 28));
}

uint64_t WidgetExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t sub_217B0C0F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 36);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WidgetExposureEvent.Model.typeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t WidgetExposureEvent.Model.locationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t WidgetExposureEvent.Model.init(eventData:exposureData:groupDataList:personalizationFeatureCTRDataList:viewData:timedData:typeData:locationData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v26 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = a5[1];
  v27 = *(a5 + 8);
  v28 = *a7;
  v29 = *a8;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for WidgetExposureEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v26;
  *(v21 + 16) = v11;
  *(v21 + 24) = v12;
  *(v21 + 32) = v13;
  *(v21 + 40) = v14;
  *(a9 + v20[6]) = v15;
  *(a9 + v20[7]) = v16;
  v22 = a9 + v20[8];
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v27;
  v23 = v20[9];
  v24 = sub_217D889CC();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a6, v24);
  *(a9 + v20[10]) = v28;
  *(a9 + v20[11]) = v29;
  return result;
}

uint64_t sub_217B0C344()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614465707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_217B0C460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B0DB40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B0C488(uint64_t a1)
{
  v2 = sub_217B0C938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B0C4C4(uint64_t a1)
{
  v2 = sub_217B0C938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B0D120(0, &qword_27CB9F358, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0C938();
  sub_217D89E7C();
  LOBYTE(v24) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WidgetExposureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v15 = *(v13 + 32);
    v16 = v13[5];
    v24 = *v13;
    v25 = v14;
    v26 = *(v13 + 1);
    v27 = v15;
    v28 = v16;
    v23 = 1;
    sub_217B0ADF0();

    sub_217D89CAC();

    v24 = *(v3 + v12[6]);
    v23 = 2;
    sub_217B0B048();

    sub_217D89CAC();

    v24 = *(v3 + v12[7]);
    v23 = 3;
    sub_217B0B2A0();

    sub_217D89CAC();

    v18 = (v3 + v12[8]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v24 = v19;
    v25 = v20;
    LOWORD(v26) = v18;
    v23 = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v21 = v12[9];
    LOBYTE(v24) = 5;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    LOBYTE(v24) = *(v3 + v12[10]);
    v23 = 6;
    sub_217B0B798();
    sub_217D89CAC();
    LOBYTE(v24) = *(v3 + v12[11]);
    v23 = 7;
    sub_217B0BA6C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B0C938()
{
  result = qword_27CB9F360;
  if (!qword_27CB9F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F360);
  }

  return result;
}