uint64_t sub_2287922B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_228770F78();
    v5 = a1 + *(v4 + 32);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_2287C9DD0();
    __swift_destroy_boxed_opaque_existential_0(v7);
    return sub_228792EB4(a1, a2);
  }

  else
  {

    return sub_228792EB4(a1, a2);
  }
}

uint64_t sub_228792408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  sub_228793004(0, &qword_280DE00B8, sub_228770F78, MEMORY[0x277CBCE78]);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  sub_228792A90();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770F78();
  v46 = v11;
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  sub_228792B00();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228792C00();
  v44 = v19;
  v42 = *(v19 - 8);
  v20 = *(v42 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228792C94();
  v45 = v23;
  v43 = *(v23 - 8);
  v24 = *(v43 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v47 = a1;
  v50 = a1;
  v28 = sub_228791C78(sub_228792E98, v49, v27);
  if (*(v28 + 16))
  {
    v51 = v28;
    sub_228792B94();
    sub_228792F18(0);
    sub_228792FBC(&qword_280DE0140, sub_228792B94);
    sub_228792FBC(&qword_280DDFFB0, sub_228792F18);
    sub_2287CAC40();
    sub_228792FBC(&qword_280DE0308, sub_228792B00);
    sub_2287CAFC0();
    (*(v15 + 8))(v18, v14);
    sub_228792EB4(v47, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v30 = swift_allocObject();
    sub_2287930F4(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, sub_228770F78);
    sub_228792FBC(&qword_280DE04E8, sub_228792C00);
    v31 = v44;
    sub_2287CAF70();

    (*(v42 + 8))(v22, v31);
    sub_228792FBC(&qword_280DE0580, sub_228792C94);
    v32 = v45;
    v33 = sub_2287CAF40();
    result = (*(v43 + 8))(v26, v32);
  }

  else
  {

    sub_228792EB4(v47, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2287CADB0();
    sub_22874A0A4();
    v35 = v38;
    sub_2287CAD80();
    (*(v37 + 8))(v6, v35);
    sub_228792FBC(&qword_280DDFE30, sub_228792A90);
    v36 = v40;
    v33 = sub_2287CAF40();
    result = (*(v39 + 8))(v10, v36);
  }

  *v48 = v33;
  return result;
}

void sub_228792A90()
{
  if (!qword_280DDFE28)
  {
    sub_228770F78();
    sub_22874A0A4();
    v0 = sub_2287CBE00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE28);
    }
  }
}

void sub_228792B00()
{
  if (!qword_280DE0300)
  {
    sub_228792B94();
    sub_228792FBC(&qword_280DE0140, sub_228792B94);
    v0 = sub_2287CAC30();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0300);
    }
  }
}

void sub_228792B94()
{
  if (!qword_280DE0138)
  {
    sub_22874A0A4();
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0138);
    }
  }
}

void sub_228792C00()
{
  if (!qword_280DE04E0)
  {
    sub_228792B00();
    sub_228792FBC(&qword_280DE0308, sub_228792B00);
    v0 = sub_2287CABB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE04E0);
    }
  }
}

void sub_228792C94()
{
  if (!qword_280DE0578)
  {
    sub_228792C00();
    sub_228770F78();
    sub_228792FBC(&qword_280DE04E8, sub_228792C00);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0578);
    }
  }
}

uint64_t sub_228792D40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(result + 32);
  if (v5 >> 5 == 1)
  {
    sub_228770F78();
    v9 = a2 + *(v8 + 32);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_2287C9DB0();
    __swift_destroy_boxed_opaque_existential_0(v13);
    swift_getObjectType();
    v10 = sub_2287CA3A0();
LABEL_10:
    v7 = v10;
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v5 >> 5 == 5 && v5 == 160 && (*(result + 24) | *(result + 16) | *(result + 8) | *result) == 0)
  {
    sub_228770F78();
    v12 = a2 + *(v11 + 32);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_2287C9DB0();
    __swift_destroy_boxed_opaque_existential_0(v13);
    swift_getObjectType();
    v10 = sub_2287CA3B0();
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  *a3 = v7;
  return result;
}

uint64_t sub_228792EB4(uint64_t a1, uint64_t a2)
{
  sub_228770F78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228792F4C@<X0>(uint64_t a1@<X8>)
{
  sub_228770F78();
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_228792EB4(v4, a1);
}

uint64_t sub_228792FBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228793004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228793068(uint64_t a1)
{
  sub_228793004(0, &qword_280DE1908, sub_22871511C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2287930F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static SharableModelReference.predicateFor(sourceProfile:)(void *a1)
{
  if (a1)
  {
    sub_22870558C();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFF0;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_2287043F8();
    *(v2 + 32) = 0xD000000000000011;
    *(v2 + 40) = 0x80000002287D2CC0;
    result = [a1 identifier];
    if (result)
    {
      v4 = result;
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      *(v2 + 96) = sub_228703004(0, &qword_280DE3868, 0x277CCAD78);
      *(v2 + 104) = sub_2287932B0();
      *(v2 + 72) = v4;
      return sub_2287CB550();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = [objc_opt_self() predicateWithValue_];

    return v5;
  }

  return result;
}

unint64_t sub_2287932B0()
{
  result = qword_280DE3860;
  if (!qword_280DE3860)
  {
    sub_228703004(255, &qword_280DE3868, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3860);
  }

  return result;
}

uint64_t sub_228793318()
{
  sub_2287CB290();
}

uint64_t sub_228793464()
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287935C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65746144206F4ELL;
  if (a1 != 6)
  {
    v5 = 0x61746144206F4ELL;
    v4 = 0xE700000000000000;
  }

  v6 = 0x5920352074736150;
  v7 = 0xEC00000073726165;
  if (a1 != 4)
  {
    v6 = 0x7265646C4FLL;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x2030332074736150;
  v9 = 0xEC00000073796144;
  if (a1 != 2)
  {
    v8 = 0x2032312074736150;
    v9 = 0xEE007368746E6F4DLL;
  }

  v10 = 0x4420372074736150;
  if (a1)
  {
    v3 = 0xEB00000000737961;
  }

  else
  {
    v10 = 0x7961646F54;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xEB00000000737961;
        if (v11 != 0x4420372074736150)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7961646F54)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 != 2)
    {
      v13 = 0xEE007368746E6F4DLL;
      if (v11 != 0x2032312074736150)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x2030332074736150;
    v15 = 1937334596;
LABEL_31:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x7265646C4FLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x5920352074736150;
    v15 = 1936875877;
    goto LABEL_31;
  }

  v13 = 0xE700000000000000;
  if (a2 == 6)
  {
    if (v11 != 0x65746144206F4ELL)
    {
      goto LABEL_45;
    }
  }

  else if (v11 != 0x61746144206F4ELL)
  {
LABEL_45:
    v16 = sub_2287CBD00();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t AllDataSummarySection.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2287C97C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AllDataSummarySection.identifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AllDataSummarySection(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AllDataSummarySection.init(date:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_2287C97C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AllDataSummarySection(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t AllDataSummarySection.title.getter()
{
  v1 = type metadata accessor for AllDataSummarySection(0);
  if (*(v0 + *(v1 + 20)) > 6u)
  {
    return 0;
  }

  v3 = *(v0 + *(v1 + 20));
  return sub_2287939F4();
}

uint64_t sub_2287939F4()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (*v0)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (v1 == 6)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (qword_280DE1280 != -1)
  {
LABEL_24:
    swift_once();
  }

  return sub_2287C9620();
}

HealthPlatformCore::AllDataSummarySection::Identifier_optional __swiftcall AllDataSummarySection.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AllDataSummarySection.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F54;
  v3 = 0x65746144206F4ELL;
  if (v1 != 6)
  {
    v3 = 0x61746144206F4ELL;
  }

  v4 = 0x5920352074736150;
  if (v1 != 4)
  {
    v4 = 0x7265646C4FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x2030332074736150;
  if (v1 != 2)
  {
    v5 = 0x2032312074736150;
  }

  if (*v0)
  {
    v2 = 0x4420372074736150;
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

void sub_228793FF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F54;
  v5 = 0xE700000000000000;
  v6 = 0x65746144206F4ELL;
  if (v2 != 6)
  {
    v6 = 0x61746144206F4ELL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEC00000073726165;
  v8 = 0x5920352074736150;
  if (v2 != 4)
  {
    v8 = 0x7265646C4FLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073796144;
  v10 = 0x2030332074736150;
  if (v2 != 2)
  {
    v10 = 0x2032312074736150;
    v9 = 0xEE007368746E6F4DLL;
  }

  if (*v1)
  {
    v4 = 0x4420372074736150;
    v3 = 0xEB00000000737961;
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

uint64_t AllDataSummarySection.DateRange.identifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AllDataSummarySection.DateRange(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t static AllDataSummarySection.DateRange.makeDefaultSections(dateRange:)(uint64_t a1)
{
  v45 = sub_2287C97C0();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v47 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v35 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v35 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  sub_2287953E4(0, &qword_27D850E50, type metadata accessor for AllDataSummarySection.DateRange, MEMORY[0x277D84560]);
  v15 = type metadata accessor for AllDataSummarySection.DateRange(0);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v40 = *(v16 + 72);
  v41 = v15 - 8;
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = v40;
  v20 = swift_allocObject();
  v46 = v20;
  *(v20 + 16) = xmmword_2287CED20;
  v21 = v20 + v18;
  v52 = 0;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v52, v20 + v18);
  *(v21 + *(v17 + 28)) = 0;
  v51 = 1;
  v42 = a1;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v51, v21 + v19);
  *(v21 + v19 + *(v17 + 28)) = 1;
  v50 = 2;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v50, v21 + 2 * v19);
  *(v21 + 2 * v19 + *(v17 + 28)) = 2;
  v49 = 3;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v49, v21 + 3 * v19);
  *(v21 + 3 * v19 + *(v17 + 28)) = 3;
  v48 = 5;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v48, v21 + 4 * v19);
  *(v21 + 4 * v19 + *(v17 + 28)) = 5;
  v39 = v21 + 5 * v19;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(v14);
  v22 = v12;
  sub_2287C9760();
  v23 = v43;
  sub_2287C9760();
  v24 = v44;
  sub_2287C9760();
  v25 = v47;
  sub_2287C9760();
  v26 = *(v2 + 8);
  v27 = v45;
  v26(v25, v45);
  v26(v24, v27);
  v26(v23, v27);
  v26(v22, v27);
  v26(v14, v27);
  v37 = sub_2287C9590();
  v28 = *(v37 - 8);
  v36 = *(v28 + 56);
  v38 = v28 + 56;
  v29 = v39;
  v36(v39, 1, 1, v37);
  v30 = v41;
  *(v29 + *(v41 + 28)) = 6;
  v31 = v21 + 6 * v40;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(v14);
  v32 = v22;
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  v33 = v47;
  sub_2287C9760();
  v26(v33, v27);
  v26(v24, v27);
  v26(v23, v27);
  v26(v32, v27);
  v26(v14, v27);
  v36(v31, 1, 1, v37);
  *(v31 + *(v30 + 28)) = 7;
  return v46;
}

uint64_t static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_2287C97C0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  v25 = *a1;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(&v35 - v23);
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v28 = v4[2];
        v28(v10, v19, v3);
        v28(v35, v22, v3);
      }

      else
      {
        v31 = v4[2];
        v31(v10, v16, v3);
        v31(v35, v19, v3);
      }
    }

    else if (v25)
    {
      v30 = v4[2];
      v30(v10, v22, v3);
      v30(v35, v24, v3);
    }

    else
    {
      (v4[2])(v10, v24, v3);
      sub_2287C9750();
    }

LABEL_15:
    v27 = v36;
    sub_2287C9550();
    v26 = 0;
    goto LABEL_16;
  }

  if ((v25 - 6) >= 2)
  {
    if (v25 == 4)
    {
      v29 = v4[2];
      v29(v10, v13, v3);
      v29(v35, v16, v3);
    }

    else
    {
      sub_2287C9740();
      (v4[2])(v35, v16, v3);
    }

    goto LABEL_15;
  }

  v26 = 1;
  v27 = v36;
LABEL_16:
  v32 = v4[1];
  v32(v13, v3);
  v32(v16, v3);
  v32(v19, v3);
  v32(v22, v3);
  v32(v24, v3);
  v33 = sub_2287C9590();
  return (*(*(v33 - 8) + 56))(v27, v26, 1, v33);
}

uint64_t static AllDataSummarySection.DateRange.allDataSummaryDate(from:)@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = sub_2287C97C0();
  v1 = *(v17[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287C9870();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9590();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9520();
  v15 = sub_2287C9530();
  (*(v11 + 8))(v14, v10);
  sub_2287C9850();
  if (v15)
  {
    sub_2287C97B0();
  }

  else
  {
    sub_2287C9570();
  }

  sub_2287C9820();
  (*(v1 + 8))(v4, v17[0]);
  return (*(v6 + 8))(v9, v5);
}

uint64_t AllDataSummarySection.DateRange.isDateInSection(_:)(uint64_t a1)
{
  v49 = a1;
  sub_2287952C0();
  v48 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = sub_2287C97C0();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  sub_228795328();
  v47 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = sub_2287C9590();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v30 = v29;
  sub_2287044C8(v28, v23);
  if ((*(v30 + 48))(v23, 1, v24) == 1)
  {
    sub_22870455C(v23);
    v31 = 0;
    return v31 & 1;
  }

  v45 = v30;
  (*(v30 + 32))(v27, v23, v24);
  sub_2287C9570();
  v44 = v27;
  sub_2287C9540();
  v32 = sub_22879538C();
  result = sub_2287CB1F0();
  if (result)
  {
    v42 = v32;
    v43 = v24;
    v34 = v46;
    v35 = *(v46 + 32);
    v35(v8, v15, v9);
    v36 = v48;
    v35(&v8[*(v48 + 48)], v13, v9);
    sub_228795448(v8, v6);
    v37 = *(v36 + 48);
    v35(v19, v6, v9);
    v38 = *(v34 + 8);
    v38(&v6[v37], v9);
    sub_2287954AC(v8, v6);
    v39 = v19;
    v35(&v19[*(v47 + 36)], &v6[*(v36 + 48)], v9);
    v38(v6, v9);
    if (sub_2287CB1F0())
    {
      v31 = sub_2287CB1E0();
    }

    else
    {
      v31 = 0;
    }

    v40 = v43;
    v41 = v44;
    sub_228795510(v39);
    (*(v45 + 8))(v41, v40);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static AllDataSummarySection.DateRange.dateIntervalCorrespondsToTodaySection(_:)()
{
  v0 = sub_2287C9590();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9520();
  v5 = sub_2287C9530();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_2287952C0()
{
  if (!qword_27D850E58)
  {
    sub_2287C97C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D850E58);
    }
  }
}

void sub_228795328()
{
  if (!qword_27D850E60)
  {
    sub_2287C97C0();
    sub_22879538C();
    v0 = sub_2287CB540();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850E60);
    }
  }
}

unint64_t sub_22879538C()
{
  result = qword_27D850E68;
  if (!qword_27D850E68)
  {
    sub_2287C97C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E68);
  }

  return result;
}

void sub_2287953E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228795448(uint64_t a1, uint64_t a2)
{
  sub_2287952C0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2287954AC(uint64_t a1, uint64_t a2)
{
  sub_2287952C0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228795510(uint64_t a1)
{
  sub_228795328();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228795570()
{
  result = qword_280DE2D90;
  if (!qword_280DE2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2D90);
  }

  return result;
}

uint64_t sub_2287955EC()
{
  result = sub_2287C97C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AllDataSummarySection.Identifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AllDataSummarySection.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2287957D8()
{
  sub_2287953E4(319, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t Array<A>.makeGeneratorPipelineProviderWrappers()()
{
  sub_2287CB450();
  swift_getWitnessTable();
  return sub_2287CB300();
}

double sub_22879590C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 48))(&v24, a2, a3);
  if (*(&v25 + 1))
  {
    sub_228706AD4(&v24, v28);
    v8 = v29;
    v9 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_2287A2EBC(v8, v9, &v20);
    v10 = *(a3 + 8);
    *(&v26 + 1) = a2;
    v27 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
    v12 = *(*(a2 - 8) + 16);
    v12(boxed_opaque_existential_0, a1, a2);
    v24 = v20;
    v13 = v29;
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_2287680D8(v13, v14, &v19);
    *(&v22 + 1) = a2;
    v23 = v10;
    v15 = __swift_allocate_boxed_opaque_existential_0(&v21);
    v12(v15, a1, a2);
    v20 = v19;
    v16 = v25;
    *a4 = v24;
    *(a4 + 16) = v16;
    *(a4 + 32) = v26;
    v17 = v21;
    *(a4 + 56) = v20;
    *(a4 + 48) = v27;
    *(a4 + 72) = v17;
    *(a4 + 88) = v22;
    *(a4 + 104) = v23;
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    sub_228795B44(&v24);
    result = 0.0;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_228795B44(uint64_t a1)
{
  sub_228795BA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228795BA0()
{
  if (!qword_280DE1210)
  {
    sub_228795BF8();
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1210);
    }
  }
}

unint64_t sub_228795BF8()
{
  result = qword_280DE3440;
  if (!qword_280DE3440)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3440);
  }

  return result;
}

void sub_228795C5C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v4 hashTransform];
  sub_228711964();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2287CCC50;
  *(v6 + 32) = v1;
  sub_22870BE64();
  v7 = v1;
  v8 = sub_2287CB390();

  v9 = [v3 transformedFeatureWithTransformer:v5 features:v8];

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = [v4 maskTransformWithWidth_];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2287CCC50;
    *(v11 + 32) = v9;
    v12 = v9;
    v13 = sub_2287CB390();

    [v3 transformedFeatureWithTransformer:v10 features:v13];
  }
}

uint64_t sub_228795DF8(uint64_t a1)
{
  v3 = objc_opt_self();
  result = objc_opt_self();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = objc_opt_self();
    v7 = [v6 featureValueWithDouble_];
    v8 = [v6 featureValueWithDouble_];
    v9 = [v5 bucketTransformerWithCount:a1 minValue:v7 maxValue:v8];

    sub_228711964();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2287CCC50;
    *(v10 + 32) = v1;
    sub_22870BE64();
    v11 = v1;
    v12 = sub_2287CB390();

    v13 = [v3 transformedFeatureWithTransformer:v9 features:v12];

    return v13;
  }

  return result;
}

uint64_t MutualExclusionGroupFeatureTag.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_228795FF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_228795FFC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t MutualExclusionGroupFeatureTag.init(dataVisualizationKind:dataType:excludeWithSameCategory:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v18 = sub_2287CA2D0();
  v19 = v8;
  if (a3)
  {
    _s14HealthPlatform7KeywordC0aB4CoreE11identifiers3forSaySSGSo12HKObjectTypeC_tFZ_0();
    sub_22871B354();
    sub_228714B18();
    v9 = sub_2287CB1D0();
    v11 = v10;

    MEMORY[0x22AABE980](v9, v11);
  }

  else
  {
    v12 = [a2 identifier];
    v13 = sub_2287CB220();
    v15 = v14;

    MEMORY[0x22AABE980](v13, v15);
  }

  MEMORY[0x22AABE980](95, 0xE100000000000000);

  v16 = sub_2287CA2E0();
  result = (*(*(v16 - 8) + 8))(a1, v16);
  *a4 = v18;
  a4[1] = v19;
  return result;
}

uint64_t sub_22879617C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2287961C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_228796214()
{
  sub_2287CA500();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6368 = v1;
}

void sub_228796294()
{
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6368;
  v1 = *(sub_2287CA2C0() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE6370 = v3;
}

uint64_t SummaryTabFeedPopulationManager.collectHighlightsInteractionAnalytics(in:)(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;
  sub_228797570(0, &qword_280DE1A58);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  sub_2287CADF0();
  sub_2287975D4(&qword_280DE1A60, &qword_280DE1A58);
  v10 = sub_2287CAF40();

  return v10;
}

uint64_t SummaryTabFeedPopulationManager.collectModelAnalytics()()
{
  v1 = sub_2287CB6A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CB690();
  v6 = sub_22877D1E4(v5, *(v0 + 104));
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t SummaryTabFeedPopulationManager.collectModelAnalytics<A>(timeout:timeoutScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v7 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2287CB820();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v46 - v10;
  sub_228797570(255, &qword_280DE1A48);
  v12 = v11;
  v52 = sub_2287975D4(&qword_280DE1A50, &qword_280DE1A48);
  v53 = v12;
  v65 = v12;
  v66 = a3;
  v67 = v52;
  v68 = a4;
  v13 = sub_2287CAC60();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v46 - v15;
  WitnessTable = swift_getWitnessTable();
  v58 = v13;
  v65 = v13;
  v66 = a3;
  v50 = WitnessTable;
  v67 = WitnessTable;
  v68 = a4;
  v17 = sub_2287CABD0();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = *(v54 + 64);
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v20 = sub_2287CAA50();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v25 = sub_2287CAA40();
  v26 = sub_2287CB610();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = v20;
    v28 = v7;
    v29 = v27;
    v47 = swift_slowAlloc();
    v64 = v47;
    v65 = v28;
    *v29 = 136446210;
    swift_getMetatypeMetadata();
    v30 = sub_2287CB250();
    v48 = v21;
    v32 = sub_2287031D8(v30, v31, &v64);

    *(v29 + 4) = v32;
    _os_log_impl(&dword_2286FF000, v25, v26, "[%{public}s]: Collecting RelevanceEngine metrics", v29, 0xCu);
    v33 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AABFD90](v33, -1, -1);
    MEMORY[0x22AABFD90](v29, -1, -1);

    (*(v48 + 8))(v24, v49);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  swift_allocObject();
  swift_weakInit();
  v34 = *(v53 + 48);
  v35 = *(v53 + 52);
  swift_allocObject();
  v65 = sub_2287CADF0();
  v36 = v59;
  v37 = AssociatedTypeWitness;
  v38 = *(AssociatedTypeWitness - 8);
  v48 = *(v38 + 56);
  v49 = v38 + 56;
  (v48)(v59, 1, 1, AssociatedTypeWitness);
  v39 = v56;
  sub_2287CAFF0();
  v40 = v63;
  v62 = *(v62 + 8);
  (v62)(v36, v63);

  (v48)(v36, 1, 1, v37);
  v41 = v51;
  v42 = v58;
  sub_2287CB000();
  (v62)(v36, v40);
  (*(v57 + 8))(v39, v42);
  v43 = v55;
  swift_getWitnessTable();
  v44 = sub_2287CAF40();
  (*(v54 + 8))(v41, v43);
  return v44;
}

uint64_t sub_228796B54(uint64_t (*a1)(_OWORD *), uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_2287B016C();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = *((*MEMORY[0x277D85000] & *v4) + 0x128);

    v6(sub_228798BA8, v5);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10 = 1;
    return a1(v8);
  }
}

void sub_228796C84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();

  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = a5;
    v17 = v16;
    v34 = v16;
    *v15 = 136315138;
    sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
    v18 = sub_2287CB150();
    v20 = sub_2287031D8(v18, v19, &v34);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2286FF000, v12, v13, "RelevanceEngine analytics collected: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AABFD90](v17, -1, -1);
    v21 = v15;
    a4 = v33;
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  (*(v8 + 8))(v11, v7);

  AppSessionAnalyticsEvent.ModelAnalytics.init(relevanceEngineMetrics:)(v22, &v34);
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v26 = v37;
  v39 = 0;
  v27 = v38;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  a4(&v34);

  sub_228798BB0(v34, v35, v36, v37, v38, v39);
}

uint64_t sub_228796F08@<X0>(void *a1@<X8>)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v7 = sub_2287CAA40();
  v8 = sub_2287CB5F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2286FF000, v7, v8, "RelevanceEngine analytics never returned; moving on", v9, 2u);
    MEMORY[0x22AABFD90](v9, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  *a1 = 1;
  return result;
}

uint64_t sub_228797050(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2287CB0E0();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v54);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287CAA50();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v46 = a1;
    v47 = a2;
    v48 = v15;
    v49 = v12;
    v50 = v11;
    sub_2287CAA30();
    v22 = sub_2287CAA40();
    v23 = sub_2287CB610();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45 = v8;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 136446210;
      v44 = v16;
      v27 = v52;
      v55 = v26;
      aBlock = v52;
      swift_getMetatypeMetadata();
      v28 = sub_2287CB250();
      v30 = v7;
      v31 = sub_2287031D8(v28, v29, &v55);

      *(v25 + 4) = v31;
      v7 = v30;
      v32 = v27;
      _os_log_impl(&dword_2286FF000, v22, v23, "[%{public}s]: enqueuing collect highlights interaction analytics", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABFD90](v26, -1, -1);
      v33 = v25;
      v8 = v45;
      MEMORY[0x22AABFD90](v33, -1, -1);

      (*(v51 + 8))(v19, v44);
      v34 = v46;
    }

    else
    {

      (*(v51 + 8))(v19, v16);
      v34 = v46;
      v32 = v52;
    }

    v36 = *(v21 + 104);
    v37 = swift_allocObject();
    v38 = v53;
    v37[2] = v53;
    v37[3] = v21;
    v37[4] = v34;
    v37[5] = v47;
    v37[6] = v32;
    v60 = sub_228798C24;
    v61 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_228712EA8;
    v59 = &block_descriptor_8;
    v39 = _Block_copy(&aBlock);
    v40 = v36;
    v41 = v38;

    v42 = v48;
    sub_2287CB0A0();
    v55 = MEMORY[0x277D84F90];
    sub_228798C4C(&qword_280DE3A28, MEMORY[0x277D85198]);
    sub_2287723C0(0);
    sub_228798C4C(&qword_280DE3A08, sub_2287723C0);
    v43 = v50;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v42, v43, v39);
    _Block_release(v39);

    (*(v8 + 8))(v43, v7);
    (*(v49 + 8))(v42, v54);
  }

  else
  {
    aBlock = 0;
    v57 = 0;
    LOBYTE(v58) = 1;
    return a1(&aBlock);
  }
}

void sub_228797570(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_22877C950();
    v3 = sub_2287CADE0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2287975D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_228797570(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228797624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v8 = sub_2287CB080();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2287CB0E0();
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CB090();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *(v18 + 32) = -1;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v18 + 16;
  v19[5] = a5;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_228798CE0;
  *(v20 + 24) = v19;
  v47 = sub_22877E1B8;
  v48 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v33 = &v45;
  v45 = sub_228742C10;
  v46 = &block_descriptor_22_0;
  v21 = _Block_copy(&aBlock);
  v22 = a1;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v24 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);

    sub_2287CA670();

    v25 = swift_allocObject();
    v26 = v35;
    v25[2] = v34;
    v25[3] = v26;
    v25[4] = v18;
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    (*(v14 + 104))(v17, *MEMORY[0x277D851B0], v13);

    v27 = sub_2287CB6E0();
    (*(v14 + 8))(v17, v13);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_228798CEC;
    *(v28 + 24) = v25;
    v47 = sub_22877E1B8;
    v48 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_228712EA8;
    v46 = &block_descriptor_31_0;
    v29 = _Block_copy(&aBlock);

    v30 = v36;
    sub_2287CB0A0();
    v42 = MEMORY[0x277D84F90];
    sub_228798C4C(&qword_280DE3A28, MEMORY[0x277D85198]);
    sub_2287723C0(0);
    sub_228798C4C(&qword_280DE3A08, sub_2287723C0);
    v31 = v38;
    v32 = v41;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v30, v31, v29);
    _Block_release(v29);

    (*(v40 + 8))(v31, v32);
    (*(v37 + 8))(v30, v39);
  }

  return result;
}

void sub_228797BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v60 = a4;
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelTrainingEvent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v15 = [*(a2 + 56) profileIdentifier];
  v16 = sub_2287CA630();

  v17 = sub_2287CA300();
  if (v17)
  {
    v54 = v17;
    v55 = v7;
    v56 = v6;
    v57 = a3;
    v18 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);

    sub_2287CA660();

    v19 = v61;
    v61 = MEMORY[0x277D84F90];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v53 = v20 - 1;
      v58 = MEMORY[0x277D84F90];
      v22 = v60;
      while (v21 < *(v19 + 16))
      {
        sub_228798D5C(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v14);
        sub_228798118(v14, a2, v22, &v63);
        v23 = sub_228798DC0(v14);
        if (v63)
        {
          MEMORY[0x22AABEA50](v23);
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v58 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2287CB3E0();
          }

          v52 = v21 + 1;
          sub_2287CB420();
          v22 = v60;
          v58 = v61;
          v24 = v53 == v21;
          v21 = v52;
          if (v24)
          {
            goto LABEL_17;
          }
        }

        else if (v20 == ++v21)
        {
          goto LABEL_17;
        }
      }

      __break(1u);

      sub_228798DC0(v14);

      __break(1u);
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
LABEL_17:

      v28 = v54;
      v29 = v54;
      sub_2287984BC(v28);

      AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:interactedFeedItems:)(v58, &v61);
      v31 = v61;
      v30 = v62;
      v32 = v59;
      sub_2287CAA30();
      v33 = v31;
      v34 = v30;
      v35 = sub_2287CAA40();
      v36 = sub_2287CB610();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v63 = v38;
        *v37 = 136446466;
        v61 = v60;
        swift_getMetatypeMetadata();
        v39 = sub_2287CB250();
        v41 = sub_2287031D8(v39, v40, &v63);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v61 = v31;
        v62 = v34;
        v42 = v33;
        v43 = v34;
        v44 = sub_2287CB250();
        v46 = sub_2287031D8(v44, v45, &v63);

        *(v37 + 14) = v46;
        _os_log_impl(&dword_2286FF000, v35, v36, "[%{public}s]: highlights interaction analytics collected: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v38, -1, -1);
        MEMORY[0x22AABFD90](v37, -1, -1);

        (*(v55 + 8))(v59, v56);
      }

      else
      {

        (*(v55 + 8))(v32, v56);
      }

      v47 = v57;
      v48 = *v57;
      v49 = *(v57 + 8);
      *v57 = v31;
      *(v47 + 8) = v34;
      v50 = *(v47 + 16);
      *(v47 + 16) = 0;
      sub_228798D44(v48, v49, v50);
    }
  }

  else
  {
    v25 = *a3;
    v26 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v27 = *(a3 + 16);
    *(a3 + 16) = 1;

    sub_228798D44(v25, v26, v27);
  }
}

uint64_t sub_228798118@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v42 = a3;
  v6 = sub_2287CAA50();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelTrainingEvent();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_228703004(0, &qword_280DE3888, 0x277CBE438);
  v18 = sub_2287C9A00();
  if (v18)
  {
    v19 = v18;
    sub_2287CA800();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      sub_228798D5C(a1, v16);
      v22 = type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v25 = swift_allocObject();
      sub_228798D5C(v16, v25 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
      v26 = [v21 sectionSortOrder];
      *(v25 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v26;
      v27 = AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(v21);
      result = sub_228798DC0(v16);
      goto LABEL_9;
    }
  }

  sub_2287CAA30();
  sub_228798D5C(a1, v14);
  v29 = sub_2287CAA40();
  v30 = sub_2287CB5F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v31 = 136446466;
    v46[2] = v42;
    swift_getMetatypeMetadata();
    v32 = sub_2287CB250();
    v34 = sub_2287031D8(v32, v33, v46);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    sub_228798D5C(v14, v16);
    v35 = sub_2287CB250();
    v37 = v36;
    sub_228798DC0(v14);
    v38 = sub_2287031D8(v35, v37, v46);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_2286FF000, v29, v30, "[%{public}s]: unable to find feedItem for interaction: %s", v31, 0x16u);
    v39 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v39, -1, -1);
    MEMORY[0x22AABFD90](v31, -1, -1);
  }

  else
  {

    sub_228798DC0(v14);
  }

  result = (*(v43 + 8))(v9, v44);
  v27 = 0;
LABEL_9:
  *v45 = v27;
  return result;
}

uint64_t sub_2287984BC(void *a1)
{
  v5 = type metadata accessor for ModelTrainingEvent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (!a1)
  {
    goto LABEL_18;
  }

  v32 = v1;
  v33 = a1;
  v30 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
  v13 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache);
  v31 = a1;

  sub_2287CA660();

  v14 = v37;
  v15 = *(v37 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v34 = v10;
    v35 = v5;
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      sub_228798D5C(v14 + v18 + v19 * v16, v12);
      if (v12[*(v5 + 24)] == 1)
      {
        sub_228798E1C(v12, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22871355C(0, *(v17 + 16) + 1, 1);
          v17 = v36;
        }

        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22871355C(v21 > 1, v22 + 1, 1);
          v17 = v36;
        }

        *(v17 + 16) = v22 + 1;
        v10 = v34;
        sub_228798E1C(v34, v17 + v18 + v22 * v19);
        v5 = v35;
      }

      else
      {
        sub_228798DC0(v12);
      }

      if (v15 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_14:

    v2 = *(v17 + 16);

    v23 = *(v32 + v30);

    sub_2287CA660();

    v24 = *(v37 + 16);

    v3 = v24;
    v16 = v31;
    v25 = sub_2287CA580();
    v26 = sub_228798878(v25);

    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }
  }

  v27 = sub_2287CB920();
LABEL_16:

  v28 = v3 + v27;
  if (v28 > 0.0)
  {
    *&result = v2 / v28;
    return result;
  }

LABEL_18:
  *&result = 0.0;
  return result;
}

uint64_t sub_2287987BC(uint64_t *a1)
{
  v2 = *a1;

  *a1 = MEMORY[0x277D84F90];
  return result;
}

void sub_2287987F0(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 16);
    v8 = v6;
    v9 = v5 & 1;
    sub_228798CF8(v7, v6, v5 & 1);
    a1(&v7);
    sub_228798C94(v7, v8, v9);
  }
}

uint64_t sub_228798878(unint64_t a1)
{
  v33 = sub_2287C9700();
  v2 = *(v33 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v33);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModelTrainingEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v12 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v25 = a1;
    v26 = v11;
    v27 = a1 + 32;
    v28 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
    v13 = (v2 + 1);
LABEL_6:
    if (v30)
    {
      v14 = MEMORY[0x22AABF120](v12, v25);
    }

    else
    {
      if (v12 >= *(v29 + 16))
      {
        goto LABEL_19;
      }

      v14 = *(v27 + 8 * v12);
    }

    v15 = v14;
    v16 = __OFADD__(v12, 1);
    v17 = v12 + 1;
    if (!v16)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v11 = sub_2287CB920();
    if (!v11)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v32 = v17;
  v18 = *(v31 + v28);

  sub_2287CA660();

  v19 = 0;
  v2 = v34;
  v20 = v34[2];
  do
  {
    if (v20 == v19)
    {

      v2 = &v35;
      sub_2287CBA90();
      a1 = *(v35 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      goto LABEL_5;
    }

    if (v19 >= v2[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_228798D5C(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19++, v10);
    v21 = [v15 objectID];
    v22 = [v21 URIRepresentation];

    sub_2287C96F0();
    a1 = sub_2287C96E0();
    (*v13)(v5, v33);
    sub_228798DC0(v10);
  }

  while ((a1 & 1) == 0);

LABEL_5:
  v12 = v32;
  if (v32 != v26)
  {
    goto LABEL_6;
  }

  return v35;
}

void sub_228798BB0(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {

    sub_22877E258(a1);
  }

  else
  {
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228798C4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228798C94(void *a1, void *a2, char a3)
{
  if (a3)
  {

    sub_22877E258(a1);
  }

  else
  {
  }
}

id sub_228798CF8(void *a1, void *a2, char a3)
{
  if (a3)
  {

    return sub_22877E1E8(a1);
  }

  else
  {
    v5 = a1;

    return a2;
  }
}

void sub_228798D44(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_228798C94(a1, a2, a3 & 1);
  }
}

uint64_t sub_228798D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelTrainingEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228798DC0(uint64_t a1)
{
  v2 = type metadata accessor for ModelTrainingEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228798E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelTrainingEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228798E90(uint64_t *a1, void *a2, void *a3, int a4)
{
  LODWORD(v39) = a4;
  v8 = sub_2287C9D50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v40 = sub_2287CA800();
  v16 = MEMORY[0x22AABDDF0]();
  v17 = a3;
  v18 = v4;
  v19 = sub_228799598(a1, a2, v17, v39);
  [v16 setPredicate_];

  v20 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v21 = sub_2287CB210();
  v22 = [v20 initWithKey:v21 ascending:0];

  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2287CCC50;
  *(v23 + 32) = v22;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v24 = v22;
  v25 = sub_2287CB390();

  [v16 setSortDescriptors_];

  v26 = *(v18 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v39 = v16;
  v27 = sub_2287CB7B0();
  v28 = v27;
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v29 = sub_2287CB920();
  if (!v29)
  {
    goto LABEL_16;
  }

LABEL_3:
  v42 = MEMORY[0x277D84F90];
  sub_22871338C(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v40 = v24;
    v30 = v42;
    if ((v28 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v29; ++i)
      {
        MEMORY[0x22AABF120](i, v28);
        sub_2287C9CF0();
        v42 = v30;
        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_22871338C(v32 > 1, v33 + 1, 1);
          v30 = v42;
        }

        *(v30 + 16) = v33 + 1;
        (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33, v15, v8);
      }
    }

    else
    {
      v34 = 32;
      do
      {
        v35 = *(v28 + v34);
        sub_2287C9CF0();
        v42 = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_22871338C(v36 > 1, v37 + 1, 1);
          v30 = v42;
        }

        *(v30 + 16) = v37 + 1;
        (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v13, v8);
        v34 += 8;
        --v29;
      }

      while (v29);
    }

    return v30;
  }

  __break(1u);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD000000000000022, 0x80000002287D3030);
  v41 = v29;
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.previousFeedItems(predicate:)(void *a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v17 = MEMORY[0x277D84F90];
  v10 = *(v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v11 = swift_allocObject();
  *(v11 + 16) = &v17;
  *(v11 + 24) = v5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_228799530;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);

  sub_228745F34(a1, a2, a3, a4);

  [v10 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

uint64_t sub_228799530()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = sub_228798E90(v2, v3, v4, v5);
  v8 = *v1;
  *v1 = v7;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_228799598(uint64_t *a1, void *a2, void *a3, char a4)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2287CCFF0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2287043F8();
  *(v7 + 64) = v9;
  strcpy((v7 + 32), "pluginPackage");
  *(v7 + 46) = -4864;
  v10 = *(v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v11 = sub_2287C9A70();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  v13 = sub_2287CB550();
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2287CCC50;
  *(v14 + 32) = v13;
  v50 = v14;
  if (a4)
  {
    if (a4 == 1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2287CCFF0;
      sub_2287CA800();
      v16 = v13;

      v17 = sub_2287CA7C0();
      *(v15 + 56) = v8;
      *(v15 + 64) = v9;
      *(v15 + 32) = v17;
      *(v15 + 40) = v18;
      *(v15 + 96) = v8;
      *(v15 + 104) = v9;
      *(v15 + 72) = a1;
      *(v15 + 80) = a2;
      v19 = sub_2287CB550();
      MEMORY[0x22AABEA50]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      if (a3 == 1)
      {
      }

      else
      {
        sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_2287CCFE0;
        *(v28 + 32) = a3;
        sub_228745F9C(a3);
        v29 = a3;
        MEMORY[0x22AABDEC0](v28);

        MEMORY[0x22AABEA50](v30);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2287CB3E0();
        }

        sub_2287CB420();
        sub_2287460B0(a3);
      }

      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v21 = v13;

  v22 = sub_2287CA7C0();
  *(v20 + 56) = v8;
  *(v20 + 64) = v9;
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  v24 = a1[2];
  if (v24)
  {
    v25 = sub_2287239AC(a1[2], 0);
    v26 = sub_228729F74(&v49, v25 + 4, v24, a1);
    sub_22872CA2C();
    if (v26 != v24)
    {
      __break(1u);
LABEL_10:
      if (a1 == 1)
      {
        v27 = v13;
      }

      else
      {
        sub_2287CA800();
        sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_2287CCFE0;
        *(v31 + 32) = a1;
        sub_228745F34(a1, a2, a3, 2);
        v32 = v13;
        sub_228745F34(a1, a2, a3, 2);
        MEMORY[0x22AABDEC0](v31);

        MEMORY[0x22AABEA50](v33);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2287CB3E0();
        }

        sub_2287CB420();
        sub_228746048(a1, a2, a3, 2);
      }

      goto LABEL_26;
    }
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  sub_228703640(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v20 + 96) = v34;
  *(v20 + 104) = sub_22870444C();
  *(v20 + 72) = v25;
  v35 = sub_2287CB550();
  MEMORY[0x22AABEA50]();
  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  if (a2 == 1)
  {
  }

  else
  {
    sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2287CCFE0;
    *(v36 + 32) = a2;
    sub_228745F9C(a2);
    v37 = a2;
    MEMORY[0x22AABDEC0](v36);

    MEMORY[0x22AABEA50](v38);
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
    sub_2287460B0(a2);
  }

LABEL_26:
  v39 = sub_2287CB390();

  v40 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v40;
}

uint64_t (*sub_228799C8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AABF120](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228799D94;
  }

  __break(1u);
  return result;
}

void (*sub_228799D0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AABF120](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228799D8C;
  }

  __break(1u);
  return result;
}

uint64_t RelevanceEngineCoordinator.sortedElements(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v7 = sub_22879C818(v5, v6, a2, a3);

  return v7;
}

uint64_t RelevanceEngineCoordinator.saveModelToDisk(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v7 = sub_2287CB080();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2287CB0E0();
  v58 = *(v60 - 8);
  v10 = *(v58 + 64);
  v11 = MEMORY[0x28223BE20](v60);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a3 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = v14;
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287C9700();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v63 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v51 = v23;
  MEMORY[0x28223BE20](v20);
  v64 = &v47 - v24;
  v25 = a3;
  v26 = a3;
  v27 = a4;
  v28 = (*(a4 + 16))(v26, a4);
  v29 = [v28 configuration];

  v30 = [v29 modelFileURL];
  if (v30)
  {
    sub_2287C96F0();

    v48 = *(v16 + 32);
    v31 = v64;
    v48(v64, v22, v15);
    v49 = (*(v27 + 8))(v25, v27);
    v33 = v53;
    v32 = v54;
    (*(v54 + 16))(v53, v4, v25);
    v50 = v16;
    (*(v16 + 16))(v63, v31, v15);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = (v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (*(v16 + 80) + v35 + 16) & ~*(v16 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v25;
    *(v37 + 24) = v27;
    (*(v32 + 32))(v37 + v34, v33, v25);
    v38 = (v37 + v35);
    v39 = v56;
    *v38 = v55;
    v38[1] = v39;
    v40 = v15;
    v48((v37 + v36), v63, v15);
    aBlock[4] = sub_22879EABC;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_10;
    v41 = _Block_copy(aBlock);

    v42 = v57;
    sub_2287CB0A0();
    v65 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v43 = v59;
    v44 = v62;
    sub_2287CB880();
    v45 = v49;
    MEMORY[0x22AABED90](0, v42, v43, v41);
    _Block_release(v41);

    (*(v61 + 8))(v43, v44);
    (*(v58 + 8))(v42, v60);
    (*(v50 + 8))(v64, v40);
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_22879A3E0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_2287C97C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22879F52C(a1, v8, &qword_280DE3A98, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_228705C28(v8);
    [v2 setAttribute:0 forKey:*MEMORY[0x277D44538]];
    return sub_228705C28(a1);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v15 = sub_2287C9770();
    [v2 setAttribute:v15 forKey:*MEMORY[0x277D44538]];

    sub_228705C28(a1);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t RelevanceEngineCoordinator.train(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v61 = a2;
  v62 = a3;
  v7 = sub_2287CB090();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2287CB080();
  v63 = *(v60 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2287CB0E0();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v25 = *(a1 + 16);
  v64 = v26;
  v65 = v24;
  if (v25)
  {
    v27 = a1;
    v28 = v57;
    v29 = v58;
    v30 = (*(v58 + 8))(a4, v58);
    (*(v22 + 16))(&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a4);
    v31 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = a4;
    *(v32 + 3) = v29;
    *(v32 + 4) = v27;
    (*(v22 + 32))(&v32[v31], &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v33 = &v32[(v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8];
    v35 = v61;
    v34 = v62;
    *v33 = v61;
    v33[1] = v34;
    v71 = sub_22879EC48;
    v72 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_228712EA8;
    v70 = &block_descriptor_6_0;
    v36 = _Block_copy(&aBlock);

    sub_228714B08(v35);
    sub_2287CB0A0();
    v66 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v38 = v59;
    v37 = v60;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v21, v38, v36);
    _Block_release(v36);

    (*(v63 + 8))(v38, v37);
    (*(v64 + 8))(v21, v65);
  }

  else
  {
    v40 = v54;
    v39 = v55;
    v41 = v11;
    v42 = v59;
    sub_2287CA9E0();
    v43 = sub_2287CAA40();
    v44 = sub_2287CB610();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2286FF000, v43, v44, "RelevanceEngineCoordinator: No training events resolved, completing without any training", v45, 2u);
      MEMORY[0x22AABFD90](v45, -1, -1);
    }

    (*(v40 + 8))(v14, v41);
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    v46 = v56;
    (*(v39 + 104))(v10, *MEMORY[0x277D851C8], v56);
    v47 = sub_2287CB6E0();
    (*(v39 + 8))(v10, v46);
    v48 = swift_allocObject();
    v50 = v61;
    v49 = v62;
    *(v48 + 16) = v61;
    *(v48 + 24) = v49;
    v71 = sub_22874FEF0;
    v72 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_228712EA8;
    v70 = &block_descriptor_12;
    v51 = _Block_copy(&aBlock);
    sub_228714B08(v50);
    sub_2287CB0A0();
    v66 = MEMORY[0x277D84F90];
    sub_22879EBF0();
    sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22873AA14();
    v52 = v60;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v21, v42, v51);
    _Block_release(v51);

    (*(v63 + 8))(v42, v52);
    (*(v64 + 8))(v21, v65);
  }
}

uint64_t static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()()
{
  v28 = MEMORY[0x277D84F90];
  sub_2287035A4(0, &qword_280DE1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  if (qword_280DE3790 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE6370;
  *(inited + 32) = qword_280DE6370;
  v2 = v1;
  sub_22870E1B8(inited);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2287CCC50;
  if (qword_280DE3800 != -1)
  {
    swift_once();
  }

  v4 = qword_280DE63C8;
  *(v3 + 32) = qword_280DE63C8;
  v5 = v4;
  sub_22870E1B8(v3);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2287CCC50;
  if (qword_280DE37A8 != -1)
  {
    swift_once();
  }

  v7 = qword_280DE6380;
  *(v6 + 32) = qword_280DE6380;
  v8 = v7;
  sub_22870E1B8(v6);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2287CCC50;
  if (qword_280DE37C8 != -1)
  {
    swift_once();
  }

  v10 = qword_280DE6398;
  *(v9 + 32) = qword_280DE6398;
  v11 = v10;
  sub_22870E1B8(v9);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2287CCC50;
  if (qword_280DE37C0 != -1)
  {
    swift_once();
  }

  v13 = qword_280DE6390;
  *(v12 + 32) = qword_280DE6390;
  v14 = v13;
  sub_22870E1B8(v12);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2287CCC50;
  if (qword_280DE3810 != -1)
  {
    swift_once();
  }

  v16 = qword_280DE63D0;
  *(v15 + 32) = qword_280DE63D0;
  v17 = v16;
  sub_22870E1B8(v15);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2287CCC50;
  if (qword_280DE37E0 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE63A8;
  *(v18 + 32) = qword_280DE63A8;
  v20 = v19;
  sub_22870E1B8(v18);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2287CCC50;
  if (qword_280DE37F0 != -1)
  {
    swift_once();
  }

  v22 = qword_280DE63B8;
  *(v21 + 32) = qword_280DE63B8;
  v23 = v22;
  sub_22870E1B8(v21);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2287CCC50;
  if (qword_280DE3828 != -1)
  {
    swift_once();
  }

  v25 = qword_280DE63E8;
  *(v24 + 32) = qword_280DE63E8;
  v26 = v25;
  sub_22870E1B8(v24);
  return v28;
}

id static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  sub_22879EF14(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v59 - v20;
  sub_228703004(0, &qword_280DE35F8, 0x277D44460);
  v22 = [swift_getObjCClassFromMetadata() defaultConfiguration];
  [v22 removeAllSections];
  [v22 removeAllInteractions];
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  v62 = a2;
  [v22 setModelVersion_];
  sub_22879F52C(a4, v21, &unk_280DE3AA0, MEMORY[0x277CC9260]);
  v23 = sub_2287C9700();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    v25 = sub_2287C96A0();
    (*(v24 + 8))(v21, v23);
  }

  [v22 setBaseModelFileURL_];

  [v22 setWantsImmutableContent_];
  v26 = sub_2287C96A0();
  [v22 setModelFileURL_];

  [v22 setPrimaryFeatures_];
  v61 = a1;
  if (a7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v28 = 0;
    while (1)
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x22AABF120](v28, a7);
      }

      else
      {
        if (v28 >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v29 = *(a7 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v22 addSectionWithDescriptor_];

      ++v28;
      if (v31 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  [v22 setObserverQueue_];
  v67 = sub_22879C728;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22879C7A8;
  v66 = &block_descriptor_15;
  v32 = _Block_copy(&aBlock);
  v33 = objc_opt_self();
  v34 = [v33 dataSourceLoaderWithBlock_];
  _Block_release(v32);

  sub_228703004(0, &qword_280DE3610, 0x277D44400);
  v35 = sub_2287CB390();
  v36 = [v33 dataSourceLoaderWithDataSources_];

  sub_2287035A4(0, &qword_280DE3990);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2287CCFF0;
  v38 = sub_228703004(0, &qword_280DE3618, 0x277D443E8);
  *(v37 + 32) = v36;
  *(v37 + 88) = v38;
  *(v37 + 56) = v38;
  *(v37 + 64) = v34;
  v39 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v60 = v36;
  v40 = v34;
  v41 = sub_2287CB390();

  v42 = [v39 initWithArray_];

  v43 = [v33 aggregateDataSourceLoaderWithDataSourceLoaders_];
  [v22 setDataSourceLoader_];

  v44 = swift_allocObject();
  *(v44 + 16) = a9;
  v67 = sub_22879EF78;
  v68 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22879C7A8;
  v66 = &block_descriptor_21;
  v45 = _Block_copy(&aBlock);
  v46 = objc_opt_self();

  v47 = [v46 relevanceProviderManagerLoaderWithBlock_];
  _Block_release(v45);

  [v22 setRelevanceProviderManagerLoader_];

  if (a11 >> 62)
  {
    goto LABEL_30;
  }

  for (j = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2287CB920())
  {
    v49 = 0;
    while (1)
    {
      if ((a11 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x22AABF120](v49, a11);
      }

      else
      {
        if (v49 >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v50 = *(a11 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      [v22 addInteractionWithDescriptor_];

      ++v49;
      if (v52 == j)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:
  [v22 setTrainingBehavior_];
  v53 = MEMORY[0x22AABF5F0]([v22 setMetricsRecorder_]);
  v54 = objc_allocWithZone(MEMORY[0x277D44470]);
  v55 = v22;
  v56 = sub_2287CB210();
  v57 = [v54 initWithName:v56 configuration:v55];

  objc_autoreleasePoolPop(v53);
  return v57;
}

uint64_t RelevanceEngineCoordinator.resumeEngineIfNeeded(feedKinds:completion:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v21 = a2;
    v22 = MEMORY[0x277D84F90];
    v8 = a3;
    v9 = a4;
    v10 = a5;
    sub_2287042D4(0, v5, 0);
    v6 = v22;
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      v13 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v23 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        v20 = v13;
        v18 = v14;
        sub_2287042D4((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v13 = v20;
        v6 = v23;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v5;
    }

    while (v5);
    a5 = v10;
    a4 = v9;
    a3 = v8;
    a2 = v21;
  }

  RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(v6, a2, a3, a4, a5);
}

id static RERule.makeSortByValueOfFeatureRule(feature:order:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() conditionHasValueForFeature_];
  v5 = [objc_opt_self() conditionForLeftFeature:a1 relation:2 rightFeature:a1];
  v6 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v4 rightCondition:v4 comparisonCondition:v5 order:a2];

  return v6;
}

id static RERule.makeRankByPreferringValueForFeatureRule(feature:value:)(uint64_t a1)
{
  v2 = sub_2287CB210();
  v3 = objc_opt_self();
  v4 = [v3 conditionForFeature:a1 hasValue:v2];

  v5 = [v3 notCondition_];
  v6 = [objc_opt_self() trueCondition];
  v7 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v4 rightCondition:v5 comparisonCondition:v6 order:1];

  return v7;
}

void RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v104 = a2;
  v105 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v13 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v90 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v90 - v17;
  MEMORY[0x28223BE20](v16);
  v98 = &v90 - v18;
  v19 = sub_2287CAA50();
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v90 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v90 - v27;
  v101 = a1;
  if (!*(a1 + 16))
  {
    sub_2287CA9E0();
    v48 = a4;
    (*(v10 + 16))(v13, v6, a4);
    v49 = v10;
    v50 = sub_2287CAA40();
    v51 = sub_2287CB610();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v106 = v48;
      aBlock[0] = v101;
      *v52 = 136315394;
      swift_getMetatypeMetadata();
      v53 = sub_2287CB250();
      v55 = sub_2287031D8(v53, v54, aBlock);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      v56 = (*(a5 + 48))(v48, a5);
      v58 = v57;
      (*(v49 + 8))(v13, v48);
      v59 = sub_2287031D8(v56, v58, aBlock);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_2286FF000, v50, v51, "[%s]%s: Attempting to resume engine without any section identifiers; aborting", v52, 0x16u);
      v60 = v101;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v60, -1, -1);
      MEMORY[0x22AABFD90](v52, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v48);
    }

    v81 = (*(v102 + 8))(v23, v103);
    goto LABEL_13;
  }

  v29 = *(a5 + 16);
  v30 = a5;
  v31 = v10;
  v95 = v29;
  v96 = v30;
  v32 = (v29)(a4);
  v33 = [v32 isRunning];

  v97 = v31;
  v34 = (v31 + 16);
  v35 = v6;
  if (v33)
  {
    sub_2287CA9E0();
    v36 = v98;
    (*v34)(v98, v35, a4);
    v37 = sub_2287CAA40();
    v38 = sub_2287CB5F0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315394;
      v41 = sub_2287CBE60();
      v43 = sub_2287031D8(v41, v42, aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = (*(v96 + 48))(a4);
      v46 = v45;
      (*(v97 + 8))(v36, a4);
      v47 = sub_2287031D8(v44, v46, aBlock);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_2286FF000, v37, v38, "[%s%s]: resume() called, but engine already running!", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v40, -1, -1);
      MEMORY[0x22AABFD90](v39, -1, -1);
    }

    else
    {

      (*(v97 + 8))(v36, a4);
    }

    v81 = (*(v102 + 8))(v28, v103);
LABEL_13:
    v104(v81);
    return;
  }

  v61 = v26;
  sub_2287CA9E0();
  v62 = *v34;
  v63 = v99;
  v64 = a4;
  v98 = v34;
  v62(v99, v6, a4);
  v65 = sub_2287CAA40();
  v66 = sub_2287CB610();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v93 = v61;
    v94 = v62;
    v68 = v67;
    v92 = swift_slowAlloc();
    aBlock[0] = v92;
    *v68 = 136315650;
    v69 = sub_2287CBE60();
    v71 = sub_2287031D8(v69, v70, aBlock);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    v91 = v66;
    v72 = v96;
    v73 = (*(v96 + 48))(v64, v96);
    v75 = v74;
    v90 = v65;
    v76 = v97;
    (*(v97 + 8))(v63, v64);
    v77 = sub_2287031D8(v73, v75, aBlock);

    *(v68 + 14) = v77;
    *(v68 + 22) = 2050;
    *(v68 + 24) = 0x4024000000000000;
    v78 = v90;
    _os_log_impl(&dword_2286FF000, v90, v91, "[%s]%s: Resuming engine with timeout %{public}f!", v68, 0x20u);
    v79 = v92;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v79, -1, -1);
    v80 = v68;
    v62 = v94;
    MEMORY[0x22AABFD90](v80, -1, -1);

    (*(v102 + 8))(v93, v103);
  }

  else
  {

    v76 = v97;
    (*(v97 + 8))(v63, v64);
    (*(v102 + 8))(v61, v103);
    v72 = v96;
  }

  v82 = v95(v64, v72);
  v83 = v100;
  v62(v100, v35, v64);
  v84 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v85 = (v11 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v64;
  *(v86 + 24) = v72;
  (*(v76 + 32))(v86 + v84, v83, v64);
  *(v86 + v85) = v101;
  v87 = (v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
  v88 = v105;
  *v87 = v104;
  v87[1] = v88;
  aBlock[4] = sub_22879F3D4;
  aBlock[5] = v86;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_27;
  v89 = _Block_copy(aBlock);

  [v82 resumeWithTimeout:v89 completion:10.0];
  _Block_release(v89);
}

uint64_t sub_22879C3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CAA50();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  v19 = *(v11 + 16);
  v43 = a1;
  v19(v14, a1, a5);

  v20 = sub_2287CAA40();
  v21 = sub_2287CB610();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = a3;
    v23 = v22;
    v39[0] = swift_slowAlloc();
    v45 = v39[0];
    *v23 = 136315650;
    v24 = sub_2287CBE60();
    v26 = sub_2287031D8(v24, v25, &v45);
    v39[1] = a4;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = (*(v44 + 48))(a5);
    v30 = v29;
    (*(v11 + 8))(v14, a5);
    v31 = sub_2287031D8(v28, v30, &v45);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2082;
    v32 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D837D0]);
    v34 = sub_2287031D8(v32, v33, &v45);

    *(v23 + 24) = v34;
    _os_log_impl(&dword_2286FF000, v20, v21, "[%s]%s: Engine has completed calculations for sections %{public}s!", v23, 0x20u);
    v35 = v39[0];
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v35, -1, -1);
    v36 = v23;
    a3 = v40;
    MEMORY[0x22AABFD90](v36, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, a5);
  }

  (*(v41 + 8))(v18, v42);
  v37 = (*(v44 + 16))(a5);
  [v37 pause];

  return a3();
}

uint64_t sub_22879C728()
{
  sub_22879EF14(0, &qword_280DE35A8, sub_2287150D0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFE0;
  *(v0 + 32) = type metadata accessor for GroupConfigurationLoader();
  return v0;
}

id sub_22879C7A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_2287150D0();
  v4 = sub_2287CB390();

  return v4;
}

uint64_t sub_22879C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84F90];
  v13 = (*(v11 + 8))(v12, v11);
  (*(v8 + 16))(v10, v4, a3);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v8 + 32))(v17 + v14, v10, a3);
  v18 = (v17 + v15);
  v19 = v24;
  *v18 = a1;
  v18[1] = v19;
  *(v17 + v16) = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22879F718;
  *(v20 + 24) = v17;
  aBlock[4] = sub_22873FB9C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_60;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v13, v21);

  _Block_release(v21);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v23 = v26;

    return v23;
  }

  return result;
}

void sub_22879CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v10 = (*(a6 + 16))(a5, a6);
  v11 = sub_2287CB210();
  v12 = [v10 numberOfElementsInSection_];

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    if (!v12)
    {
LABEL_7:
      MEMORY[0x28223BE20](v13);
      v22[2] = v7;
      v22[3] = a6;
      v22[4] = a1;
      v20 = sub_228791DD8(sub_22879F790, v22, v14);

      v21 = *a4;
      *a4 = v20;

      return;
    }

    v23 = a1;
    v24 = v7;
    v25 = a4;
    v26 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v15 = 0;
    while (1)
    {
      v16 = objc_allocWithZone(MEMORY[0x277D444B0]);
      v17 = sub_2287CB210();
      v18 = [v16 initWithSectionName:v17 element:v15];

      if (!v18)
      {
        break;
      }

      ++v15;
      sub_2287CBA90();
      v19 = *(v26 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      v13 = sub_2287CBAA0();
      if (v12 == v15)
      {
        v14 = v26;
        v7 = v24;
        a4 = v25;
        a1 = v23;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void *RelevanceEngineCoordinator.element(for:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = RelevanceEngineCoordinator.sortedElements(for:)(a2, a3, a4);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AABF120](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      sub_2287CB220();

      v12 = [a1 uniqueIdentifier];
      sub_2287CB220();

      sub_22873E0A0();
      LOBYTE(v12) = sub_2287CB860();

      if (v12)
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t RelevanceEngineCoordinator.collectDiagnosticLogs(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v26 = a1;
  v7 = sub_2287CB080();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB0E0();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v27 = (*(a4 + 8))(a3, a4);
  (*(v16 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v16 + 32))(v19 + v18, &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v20 = (v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_22879F44C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_33;
  v22 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v32 = MEMORY[0x277D84F90];
  sub_22879EBF0();
  sub_22879EF14(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  v23 = v27;
  MEMORY[0x22AABED90](0, v15, v10, v22);
  _Block_release(v22);

  (*(v31 + 8))(v10, v7);
  (*(v29 + 8))(v15, v30);
}

void sub_22879D1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 16))(a4, a5);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_22879F648;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22879D3A8;
  v10[3] = &block_descriptor_48;
  v9 = _Block_copy(v10);

  [v7 storeDiagnosticLogsToFile_];
  _Block_release(v9);
}

uint64_t sub_22879D2B4(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_2287C9700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9680();
  a3(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22879D3A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2287CB220();
  v5 = v4;

  v2(v3, v5);
}

void RelevanceEngineCoordinator.submitTraining(trainingEvents:store:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v34 = a3;
  v35 = a4;
  v33 = a1;
  v32 = sub_2287CAA50();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_2287CB210();

  v17 = [v15 BOOLForKey_];

  if (v17)
  {
    sub_2287CA9E0();
    v18 = sub_2287CAA40();
    v19 = sub_2287CB610();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2286FF000, v18, v19, "disablePersonalizedModelTraining default detected; training will be ignored", v20, 2u);
      MEMORY[0x22AABFD90](v20, -1, -1);
    }

    (*(v8 + 8))(v12, v32);
  }

  else
  {
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v22 = sub_2287C99F0();
    sub_2287010E4(a2, v37);
    (*(v13 + 16))(v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30[1], a5);
    v23 = (*(v13 + 80) + 80) & ~*(v13 + 80);
    v24 = swift_allocObject();
    v25 = v31;
    *(v24 + 2) = a5;
    *(v24 + 3) = v25;
    *(v24 + 4) = v33;
    sub_22871AC0C(v37, (v24 + 40));
    (*(v13 + 32))(&v24[v23], v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
    v26 = &v24[(v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
    v28 = v34;
    v27 = v35;
    *v26 = v34;
    v26[1] = v27;
    aBlock[4] = sub_22879F4B8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_39;
    v29 = _Block_copy(aBlock);

    sub_228714B08(v28);

    [v22 performBlock_];
    _Block_release(v29);
  }
}

uint64_t sub_22879D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[2] = a2;
  v11 = sub_228791F84(sub_22879F62C, v13, a1);
  RelevanceEngineCoordinator.train(with:completion:)(v11, a4, a5, a6, a7);
}

uint64_t sub_22879D868@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ModelTrainingEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = sub_2287C99F0();
  sub_2287CA800();
  v15 = sub_2287C9A00();

  if (v15)
  {
    sub_22871511C();
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = sub_228710DC8();

    *a3 = v19;
    sub_22879F650(a1, a3 + v18, type metadata accessor for ModelTrainingEvent);
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {
    v21 = v36;
    v35 = a3;
    sub_2287CA9E0();
    v22 = v37;
    sub_22879F650(a1, v37, type metadata accessor for ModelTrainingEvent);
    v23 = sub_2287CAA40();
    v24 = sub_2287CB5F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = sub_2287C9670();
      v28 = v22;
      v30 = v29;
      sub_22879F6B8(v28, type metadata accessor for ModelTrainingEvent);
      v31 = sub_2287031D8(v27, v30, &v39);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2286FF000, v23, v24, "Training event received for feedItem no longer present in the database: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABFD90](v26, -1, -1);
      MEMORY[0x22AABFD90](v25, -1, -1);
    }

    else
    {

      sub_22879F6B8(v22, type metadata accessor for ModelTrainingEvent);
    }

    (*(v21 + 8))(v38, v9);
    v32 = v35;
    sub_22871511C();
    return (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  }
}

void sub_22879DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v118 = a5;
  v119 = a6;
  v93 = a4;
  v94 = a3;
  v117 = a2;
  v100 = sub_2287C97C0();
  v7 = *(v100 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2287CAA50();
  v10 = *(v116 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v116);
  v127 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871511C();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v115 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v98 = (&v93 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v93 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v93 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v93 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v93 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v93 - v36);
  MEMORY[0x28223BE20](v35);
  v114 = (&v93 - v40);
  v41 = *(a1 + 16);
  if (v41)
  {
    v109 = *(v119 + 32);
    v110 = v119 + 32;
    v107 = *(v119 + 40);
    v108 = v119 + 40;
    v42 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v106 = *(v14 + 48);
    v105 = *(v38 + 72);
    v104 = (v10 + 8);
    v97 = (v7 + 16);
    v96 = (v7 + 8);
    *&v39 = 136315906;
    v95 = v39;
    v128 = v14;
    v120 = v28;
    v121 = v25;
    v113 = v31;
    v112 = v34;
    v111 = v37;
    do
    {
      v125 = v42;
      v126 = v41;
      v44 = v114;
      sub_22879F650(v42, v114, sub_22871511C);
      v45 = *(v14 + 48);
      v124 = *v44;
      *v37 = v124;
      sub_228798E1C(v44 + v106, v37 + v45);
      sub_2287CA9E0();
      sub_22879F650(v37, v34, sub_22871511C);
      sub_22879F650(v37, v31, sub_22871511C);
      sub_22879F650(v37, v28, sub_22871511C);
      sub_22879F650(v37, v25, sub_22871511C);
      v46 = sub_2287CAA40();
      v47 = sub_2287CB610();
      v48 = v47;
      if (os_log_type_enabled(v46, v47))
      {
        v49 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        aBlock[0] = v123;
        *v49 = v95;
        v101 = sub_22871511C;
        sub_22879F650(v34, v22, sub_22871511C);
        v122 = v48;
        v50 = *v22;
        v51 = *(v128 + 48);
        v52 = [*v22 identifier];

        v53 = sub_2287CB220();
        v103 = v46;
        v55 = v54;

        sub_22879F6B8(v34, sub_22871511C);
        sub_22879F6B8(v22 + v51, type metadata accessor for ModelTrainingEvent);
        v56 = sub_2287031D8(v53, v55, aBlock);

        *(v49 + 4) = v56;
        *(v49 + 12) = 2114;
        v57 = v101;
        sub_22879F650(v31, v22, v101);

        v58 = v22 + *(v128 + 48);
        v59 = type metadata accessor for ModelTrainingEvent();
        v60 = v99;
        v61 = v100;
        (*v97)(v99, v58 + v59[7], v100);
        sub_22879F6B8(v58, type metadata accessor for ModelTrainingEvent);
        v62 = sub_2287C9770();
        (*v96)(v60, v61);
        sub_22879F6B8(v31, sub_22871511C);
        *(v49 + 14) = v62;
        v63 = v102;
        *v102 = v62;
        *(v49 + 22) = 2082;
        v64 = v120;
        sub_22879F650(v120, v22, v57);

        v65 = v22 + *(v128 + 48);
        LODWORD(v62) = *(v65 + v59[6]);
        sub_22879F6B8(v65, type metadata accessor for ModelTrainingEvent);
        v66 = v62 == 0;
        if (v62)
        {
          v67 = 1702195828;
        }

        else
        {
          v67 = 0x65736C6166;
        }

        if (v66)
        {
          v68 = 0xE500000000000000;
        }

        else
        {
          v68 = 0xE400000000000000;
        }

        sub_22879F6B8(v64, sub_22871511C);
        v69 = sub_2287031D8(v67, v68, aBlock);
        v14 = v128;

        *(v49 + 24) = v69;
        *(v49 + 32) = 2082;
        v70 = v121;
        v71 = v98;
        sub_22879F650(v121, v98, v57);

        v72 = v71 + *(v14 + 48);
        v73 = *(v72 + v59[5]);
        sub_22879F6B8(v72, type metadata accessor for ModelTrainingEvent);
        v74 = v73 == 0;
        if (v73)
        {
          v75 = 0x6C6C657764;
        }

        else
        {
          v75 = 7364980;
        }

        if (v74)
        {
          v76 = 0xE300000000000000;
        }

        else
        {
          v76 = 0xE500000000000000;
        }

        sub_22879F6B8(v70, sub_22871511C);
        v77 = sub_2287031D8(v75, v76, aBlock);

        *(v49 + 34) = v77;
        v78 = v103;
        _os_log_impl(&dword_2286FF000, v103, v122, "RelevanceEngineCoordinator: submitting training for feedItem %s at time %{public}@, positive: %{public}s, feedbackKind: %{public}s", v49, 0x2Au);
        sub_22879F6B8(v63, sub_228703900);
        MEMORY[0x22AABFD90](v63, -1, -1);
        v79 = v123;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v79, -1, -1);
        MEMORY[0x22AABFD90](v49, -1, -1);
      }

      else
      {

        sub_22879F6B8(v25, sub_22871511C);
        sub_22879F6B8(v28, sub_22871511C);
        sub_22879F6B8(v31, sub_22871511C);
        sub_22879F6B8(v34, sub_22871511C);
      }

      (*v104)(v127, v116);
      v80 = v118;
      v81 = v119;
      v123 = v109(v118, v119);
      v82 = v111;
      v83 = v115;
      sub_22879F650(v111, v115, sub_22871511C);

      v84 = v83 + *(v14 + 48);
      v85 = v14;
      v86 = type metadata accessor for ModelTrainingEvent();
      v122 = *(v84 + *(v86 + 24));
      sub_22879F6B8(v84, type metadata accessor for ModelTrainingEvent);
      sub_22879F650(v82, v22, sub_22871511C);

      v87 = v22 + *(v85 + 48);
      v88 = *(v87 + *(v86 + 20));
      sub_22879F6B8(v87, type metadata accessor for ModelTrainingEvent);
      LOBYTE(aBlock[0]) = v88;
      v89 = v107(aBlock, v80, v81);
      v90 = [v89 name];

      if (!v90)
      {
        sub_2287CB220();
        v90 = sub_2287CB210();
      }

      v43 = v123;
      [v123 trainWithUnmanagedElement:v124 isPositiveEvent:v122 interaction:{v90, v93}];

      sub_22879F6B8(v82, sub_22871511C);
      v42 = v125 + v105;
      v41 = v126 - 1;
      v14 = v128;
      v28 = v120;
      v25 = v121;
      v31 = v113;
      v34 = v112;
      v37 = v82;
    }

    while (v126 != 1);
  }

  v91 = (*(v119 + 16))(v118);
  if (v94)
  {
    aBlock[4] = v94;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_51;
    v92 = _Block_copy(aBlock);
  }

  else
  {
    v92 = 0;
  }

  [v91 trainPendingEventsWithCompletion_];
  _Block_release(v92);
}

id RelevanceEngineCoordinator.computeAdHocRelevancePrediction(for:referenceDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = MEMORY[0x277CC9578];
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = (*(a4 + 32))(a3, a4);
  sub_22879F52C(a2, v13, &qword_280DE3A98, v9);
  sub_22879A3E0(v13);

  v15 = sub_228710DC8();
  v16 = *(a4 + 16);
  v17 = v16(a3, a4);
  [v17 addElement:v15 section:*MEMORY[0x277D44500]];

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  sub_2287035A4(0, &qword_280DE39A8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCFE0;
  *(v19 + 32) = sub_2287CB220();
  *(v19 + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = v18;
  RelevanceEngineCoordinator.resumeEngineIfNeeded(sectionIdentifiers:completion:)(v19, sub_22879F5AC, v21, a3, a4);

  sub_2287CB660();
  v23 = v16(a3, a4);
  v24 = [v23 predictionForElement_];

  v25 = v16(a3, a4);
  [v25 removeElement_];

  sub_22879E9AC(v5, a3, a4);
  return v24;
}

void sub_22879E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22879EF14(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = (*(a3 + 32))(a2, a3);
  v10 = sub_2287C97C0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_22879A3E0(v8);
}

uint64_t sub_22879EABC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 64) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_2287C9700() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v9 = (*(v3 + 16))(v2, v3);
  [v9 saveModelFile];

  return v8(v1 + v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22879EBF0()
{
  result = qword_280DE3A28;
  if (!qword_280DE3A28)
  {
    sub_2287CB080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A28);
  }

  return result;
}

void sub_22879EC48()
{
  v1 = (*(*(v0[2] - 8) + 80) + 40) & ~*(*(v0[2] - 8) + 80);
  v2 = (v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_22879DC10(v0[4], v0 + v1, *v2, v2[1], v0[2], v0[3]);
}

id static RERule.makeRankByPreferringPresenceOfFeatureRule(feature:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 conditionHasValueForFeature_];
  v4 = [v2 notCondition_];
  v5 = [objc_opt_self() trueCondition];
  v6 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v3 rightCondition:v4 comparisonCondition:v5 order:1];

  return v6;
}

id static RERule.makeExcludeIfValueIsEqualForFeature<A>(feature:value:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 conditionHasValueForFeature_];
  sub_2287CB350();
  v4 = [v2 conditionForFeature:a1 relation:0 integerValue:v12];
  sub_2287035A4(0, &qword_280DE1268);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2287CCFD0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v6 = v3;
  v7 = v4;
  v8 = sub_2287CB390();

  v9 = [v2 andConditions_];

  v10 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v9 type:0];
  return v10;
}

void sub_22879EF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 conditionHasValueForFeature_];
  v4 = [v2 conditionForFeature:a1 relation:-1 floatValue:3.18618444e-58];
  sub_2287035A4(0, &qword_280DE1268);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2287CCFD0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v6 = v3;
  v7 = v4;
  v8 = sub_2287CB390();

  v9 = [v2 andConditions_];

  v10 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v9 type:0];
  return v10;
}

id _sSo6RERuleC18HealthPlatformCoreE47makeExcludeTwoBarComparisonWithLowMagnitudeRuleAByFZ_0()
{
  v0 = sub_2287CA2E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE6388;
  v6 = objc_opt_self();
  v7 = [v6 conditionHasValueForFeature_];
  LODWORD(v8) = 1036160860;
  v9 = [v6 conditionForFeature:v5 relation:-1 floatValue:v8];
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v10 = qword_280DE6368;
  (*(v1 + 104))(v4, *MEMORY[0x277D12078], v0);
  sub_2287CA2D0();
  (*(v1 + 8))(v4, v0);
  v11 = sub_2287CB210();

  v12 = [v6 conditionForFeature:v10 hasValue:v11];

  sub_2287035A4(0, &qword_280DE1268);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2287CE380;
  *(v13 + 32) = v7;
  *(v13 + 40) = v9;
  *(v13 + 48) = v12;
  sub_228703004(0, &qword_280DE3640, 0x277D443D8);
  v14 = v7;
  v15 = v9;
  v16 = v12;
  v17 = sub_2287CB390();

  v18 = [v6 andConditions_];

  v19 = [objc_allocWithZone(MEMORY[0x277D44438]) initWithCondition:v18 type:0];
  return v19;
}

uint64_t sub_22879F3D4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22879C3B0(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + 16), *(v0 + 24));
}

void sub_22879F44C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_22879D1AC(v0 + v1, *v2, v2[1], *(v0 + 16), *(v0 + 24));
}

uint64_t sub_22879F4B8()
{
  v1 = (*(*(v0[2] - 8) + 80) + 80) & ~*(*(v0[2] - 8) + 80);
  v2 = (v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_22879D7D4(v0[4], (v0 + 5), v0 + v1, *v2, v2[1], v0[2], v0[3]);
}

uint64_t sub_22879F52C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22879EF14(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22879F650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22879F6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22879F718()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22879CA98(v0 + v1, *(v0 + v2), *(v0 + v2 + 8), *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16), *(v0 + 24));
}

void sub_22879F790(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = (*(v4 + 16))(v5);
  v9 = [v8 elementAtPath_];

  *a2 = v9;
}

uint64_t LocalizedTitleFeatureTag.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LocalizedTitleFeatureTag.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22879F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  v78 = a6;
  v79 = a7;
  v77 = a5;
  v81 = a4;
  v10 = sub_2287CAA50();
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v82 = &v76 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - v20;
  sub_2287CA9D0();

  v22 = sub_2287CAA40();
  v23 = sub_2287CB610();

  v24 = os_log_type_enabled(v22, v23);
  v83 = a3;
  v84 = v14;
  v80 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v86 = v26;
    v87 = a3;
    *v25 = 136446466;
    swift_getMetatypeMetadata();
    v27 = sub_2287CB250();
    v29 = v10;
    v30 = sub_2287031D8(v27, v28, &v86);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = v81(a1, a2);
    v33 = sub_2287031D8(v31, v32, &v86);
    v10 = v29;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_2286FF000, v22, v23, "[%{public}s]: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v26, -1, -1);
    v34 = v25;
    v19 = v80;
    MEMORY[0x22AABFD90](v34, -1, -1);

    v35 = *(v85 + 8);
    v35(v21, v29);
  }

  else
  {

    v35 = *(v85 + 8);
    v35(v21, v10);
  }

  sub_2287CA9D0();

  v36 = sub_2287CAA40();
  v37 = sub_2287CB5D0();

  v38 = os_log_type_enabled(v36, v37);
  v81 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v86 = v40;
    *v39 = 136446466;
    v87 = v83;
    swift_getMetatypeMetadata();
    v41 = sub_2287CB250();
    v43 = v10;
    v44 = sub_2287031D8(v41, v42, &v86);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2082;
    v45 = v77(a1, a2);
    v47 = sub_2287031D8(v45, v46, &v86);

    *(v39 + 14) = v47;
    v10 = v43;
    _os_log_impl(&dword_2286FF000, v36, v37, "[%{public}s]: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v40, -1, -1);
    v48 = v39;
    v35 = v81;
    MEMORY[0x22AABFD90](v48, -1, -1);

    v49 = v80;
    v50 = v43;
  }

  else
  {

    v49 = v19;
    v50 = v10;
  }

  v35(v49, v50);
  v51 = v82;
  sub_2287CA9D0();

  v52 = sub_2287CAA40();
  v53 = sub_2287CB610();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v86 = v55;
    *v54 = 136446466;
    v87 = v83;
    swift_getMetatypeMetadata();
    v56 = sub_2287CB250();
    v58 = sub_2287031D8(v56, v57, &v86);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2082;
    v59 = v78(a1, a2);
    v61 = sub_2287031D8(v59, v60, &v86);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_2286FF000, v52, v53, "[%{public}s]: %{public}s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v55, -1, -1);
    v62 = v54;
    v35 = v81;
    MEMORY[0x22AABFD90](v62, -1, -1);

    v63 = v82;
  }

  else
  {

    v63 = v51;
  }

  v35(v63, v10);
  v64 = v84;
  sub_2287CA9D0();

  v65 = sub_2287CAA40();
  v66 = sub_2287CB5D0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v86 = v68;
    *v67 = 136446466;
    v87 = v83;
    swift_getMetatypeMetadata();
    v69 = sub_2287CB250();
    v71 = sub_2287031D8(v69, v70, &v86);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2082;
    v72 = v79(a1, a2);
    v74 = sub_2287031D8(v72, v73, &v86);

    *(v67 + 14) = v74;
    _os_log_impl(&dword_2286FF000, v65, v66, "[%{public}s]: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v68, -1, -1);
    MEMORY[0x22AABFD90](v67, -1, -1);

    return v81(v84, v10);
  }

  else
  {

    return (v35)(v64, v10);
  }
}

uint64_t sub_2287A00B8(uint64_t a1)
{
  sub_2287736E4(0);
  v57 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v49 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v62 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v7, 0);
    v60 = v62;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_2287CB890();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v50 = a1 + 72;
    v51 = v7;
    v52 = v14;
    v53 = a1 + 64;
    v54 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v58 = v13;
      v59 = 1 << v12;
      v17 = v57;
      v18 = *(v57 + 48);
      v19 = *(a1 + 48);
      v20 = sub_2287C9810();
      v21 = *(v20 - 8);
      v22 = v55;
      (*(v21 + 16))(v55, v19 + *(v21 + 72) * v12, v20);
      v23 = *(a1 + 56);
      sub_22872C6C0(0);
      sub_2287ADCC8(v23 + *(*(v24 - 8) + 72) * v12, &v22[v18], sub_22872C6C0);
      v25 = v56;
      (*(v21 + 32))(v56, v22, v20);
      v26 = *(v17 + 48);
      v27 = sub_2287ADEE4(&v22[v18], v25 + v26, sub_22872C6C0);
      v28 = MEMORY[0x22AABF5F0](v27);
      v29 = sub_2287A2A88(v25 + v26, sub_22872C6C0);
      v31 = v30;
      objc_autoreleasePoolPop(v28);
      result = sub_2287ADF4C(v25, sub_2287736E4);
      v32 = v60;
      v62 = v60;
      v34 = *(v60 + 16);
      v33 = *(v60 + 24);
      a1 = v54;
      if (v34 >= v33 >> 1)
      {
        result = sub_2287042D4((v33 > 1), v34 + 1, 1);
        v32 = v62;
      }

      *(v32 + 16) = v34 + 1;
      v35 = v32 + 16 * v34;
      *(v35 + 32) = v29;
      *(v35 + 40) = v31;
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v9 = v53;
      v36 = *(v53 + 8 * v16);
      if ((v36 & v59) == 0)
      {
        goto LABEL_26;
      }

      v60 = v32;
      LODWORD(v14) = v52;
      if (v52 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v37 = v36 & (-2 << (v12 & 0x3F));
      if (v37)
      {
        v15 = __clz(__rbit64(v37)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v16 << 6;
        v39 = v16 + 1;
        v40 = (v50 + 8 * v16);
        while (v39 < (v15 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_228717DF8(v12, v52, 0);
            v15 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v12, v52, 0);
      }

LABEL_4:
      v13 = v58 + 1;
      v12 = v15;
      if (v58 + 1 == v51)
      {
        v8 = v60;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v62 = v8;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v43 = sub_2287CB1D0();
    v45 = v44;

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2287CBA20();
    v61 = *(a1 + 16);
    v46 = sub_2287CBCC0();
    v48 = v47;

    v62 = v46;
    v63 = v48;
    MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
    MEMORY[0x22AABE980](v43, v45);

    return v62;
  }

  return result;
}

uint64_t sub_2287A0590(uint64_t a1)
{
  sub_228776028(0);
  v57 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v49 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v62 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v7, 0);
    v60 = v62;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_2287CB890();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v50 = a1 + 72;
    v51 = v7;
    v52 = v14;
    v53 = a1 + 64;
    v54 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v58 = v13;
      v59 = 1 << v12;
      v17 = v57;
      v18 = *(v57 + 48);
      v19 = *(a1 + 48);
      v20 = sub_2287C9810();
      v21 = *(v20 - 8);
      v22 = v55;
      (*(v21 + 16))(v55, v19 + *(v21 + 72) * v12, v20);
      v23 = *(a1 + 56);
      sub_22872C820(0);
      sub_2287ADCC8(v23 + *(*(v24 - 8) + 72) * v12, &v22[v18], sub_22872C820);
      v25 = v56;
      (*(v21 + 32))(v56, v22, v20);
      v26 = *(v17 + 48);
      v27 = sub_2287ADEE4(&v22[v18], v25 + v26, sub_22872C820);
      v28 = MEMORY[0x22AABF5F0](v27);
      v29 = sub_2287A2A88(v25 + v26, sub_22872C820);
      v31 = v30;
      objc_autoreleasePoolPop(v28);
      result = sub_2287ADF4C(v25, sub_228776028);
      v32 = v60;
      v62 = v60;
      v34 = *(v60 + 16);
      v33 = *(v60 + 24);
      a1 = v54;
      if (v34 >= v33 >> 1)
      {
        result = sub_2287042D4((v33 > 1), v34 + 1, 1);
        v32 = v62;
      }

      *(v32 + 16) = v34 + 1;
      v35 = v32 + 16 * v34;
      *(v35 + 32) = v29;
      *(v35 + 40) = v31;
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v9 = v53;
      v36 = *(v53 + 8 * v16);
      if ((v36 & v59) == 0)
      {
        goto LABEL_26;
      }

      v60 = v32;
      LODWORD(v14) = v52;
      if (v52 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v37 = v36 & (-2 << (v12 & 0x3F));
      if (v37)
      {
        v15 = __clz(__rbit64(v37)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v16 << 6;
        v39 = v16 + 1;
        v40 = (v50 + 8 * v16);
        while (v39 < (v15 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_228717DF8(v12, v52, 0);
            v15 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v12, v52, 0);
      }

LABEL_4:
      v13 = v58 + 1;
      v12 = v15;
      if (v58 + 1 == v51)
      {
        v8 = v60;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v62 = v8;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v43 = sub_2287CB1D0();
    v45 = v44;

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2287CBA20();
    v61 = *(a1 + 16);
    v46 = sub_2287CBCC0();
    v48 = v47;

    v62 = v46;
    v63 = v48;
    MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
    MEMORY[0x22AABE980](v43, v45);

    return v62;
  }

  return result;
}

uint64_t sub_2287A0A68(uint64_t a1)
{
  sub_22870C47C();
  v63 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287736E4(0);
  v61 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v70 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v10, 0);
    v67 = v70;
    v12 = a1 + 64;
    v13 = -1 << *(a1 + 32);
    result = sub_2287CB890();
    v15 = result;
    v16 = 0;
    v17 = *(a1 + 36);
    v55 = a1 + 72;
    v56 = v10;
    v57 = v17;
    v58 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v65 = 1 << v15;
      v66 = v15 >> 6;
      v64 = v16;
      v19 = v61;
      v20 = *(v61 + 48);
      v21 = *(a1 + 48);
      v22 = sub_2287C9810();
      v23 = *(v22 - 8);
      v24 = v59;
      (*(v23 + 16))(v59, v21 + *(v23 + 72) * v15, v22);
      v25 = *(a1 + 56);
      sub_22872C6C0(0);
      v27 = v26 - 8;
      sub_2287ADCC8(v25 + *(*(v26 - 8) + 72) * v15, &v24[v20], sub_22872C6C0);
      v28 = v60;
      (*(v23 + 32))(v60, v24, v22);
      v29 = v28 + *(v19 + 48);
      v30 = sub_2287ADEE4(&v24[v20], v29, sub_22872C6C0);
      v31 = MEMORY[0x22AABF5F0](v30);
      v32 = (v29 + *(v27 + 36));
      v33 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v68 = sub_2287C9A70();
      v69 = v34;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v35 = v29 + *(v63 + 36);
      v36 = sub_2287C9E50();
      v37 = sub_2287C9C50();
      MEMORY[0x22AABE980](v37);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v29, v62, sub_22870C47C);
      v38 = sub_2287CB250();
      MEMORY[0x22AABE980](v38);

      v39 = v68;
      v40 = v69;
      objc_autoreleasePoolPop(v31);
      result = sub_2287ADF4C(v28, sub_2287736E4);
      v41 = v67;
      v70 = v67;
      v43 = *(v67 + 16);
      v42 = *(v67 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_2287042D4((v42 > 1), v43 + 1, 1);
        v41 = v70;
      }

      *(v41 + 16) = v43 + 1;
      v44 = v41 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v18 = 1 << *(a1 + 32);
      if (v15 >= v18)
      {
        goto LABEL_25;
      }

      v12 = v58;
      v45 = *(v58 + 8 * v66);
      if ((v45 & v65) == 0)
      {
        goto LABEL_26;
      }

      v67 = v41;
      LODWORD(v17) = v57;
      if (v57 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v46 = v45 & (-2 << (v15 & 0x3F));
      if (v46)
      {
        v18 = __clz(__rbit64(v46)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v66 << 6;
        v48 = v66 + 1;
        v49 = (v55 + 8 * v66);
        while (v48 < (v18 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_228717DF8(v15, v57, 0);
            v18 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v15, v57, 0);
      }

LABEL_4:
      v16 = v64 + 1;
      v15 = v18;
      if (v64 + 1 == v56)
      {
        v11 = v67;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v68 = v11;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v52 = sub_2287CB1D0();
    v54 = v53;

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_2287CBA20();

    v68 = 0xD00000000000001ELL;
    v69 = 0x80000002287D0A50;
    MEMORY[0x22AABE980](v52, v54);

    return v68;
  }

  return result;
}

uint64_t sub_2287A1004(uint64_t a1)
{
  sub_22870CA30();
  v63 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228776028(0);
  v61 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v70 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v10, 0);
    v67 = v70;
    v12 = a1 + 64;
    v13 = -1 << *(a1 + 32);
    result = sub_2287CB890();
    v15 = result;
    v16 = 0;
    v17 = *(a1 + 36);
    v55 = a1 + 72;
    v56 = v10;
    v57 = v17;
    v58 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v65 = 1 << v15;
      v66 = v15 >> 6;
      v64 = v16;
      v19 = v61;
      v20 = *(v61 + 48);
      v21 = *(a1 + 48);
      v22 = sub_2287C9810();
      v23 = *(v22 - 8);
      v24 = v59;
      (*(v23 + 16))(v59, v21 + *(v23 + 72) * v15, v22);
      v25 = *(a1 + 56);
      sub_22872C820(0);
      v27 = v26 - 8;
      sub_2287ADCC8(v25 + *(*(v26 - 8) + 72) * v15, &v24[v20], sub_22872C820);
      v28 = v60;
      (*(v23 + 32))(v60, v24, v22);
      v29 = v28 + *(v19 + 48);
      v30 = sub_2287ADEE4(&v24[v20], v29, sub_22872C820);
      v31 = MEMORY[0x22AABF5F0](v30);
      v32 = (v29 + *(v27 + 36));
      v33 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v68 = sub_2287C9A70();
      v69 = v34;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v35 = v29 + *(v63 + 36);
      v36 = sub_2287C9E50();
      v37 = sub_2287C9C50();
      MEMORY[0x22AABE980](v37);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v29, v62, sub_22870CA30);
      v38 = sub_2287CB250();
      MEMORY[0x22AABE980](v38);

      v39 = v68;
      v40 = v69;
      objc_autoreleasePoolPop(v31);
      result = sub_2287ADF4C(v28, sub_228776028);
      v41 = v67;
      v70 = v67;
      v43 = *(v67 + 16);
      v42 = *(v67 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_2287042D4((v42 > 1), v43 + 1, 1);
        v41 = v70;
      }

      *(v41 + 16) = v43 + 1;
      v44 = v41 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v18 = 1 << *(a1 + 32);
      if (v15 >= v18)
      {
        goto LABEL_25;
      }

      v12 = v58;
      v45 = *(v58 + 8 * v66);
      if ((v45 & v65) == 0)
      {
        goto LABEL_26;
      }

      v67 = v41;
      LODWORD(v17) = v57;
      if (v57 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v46 = v45 & (-2 << (v15 & 0x3F));
      if (v46)
      {
        v18 = __clz(__rbit64(v46)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v66 << 6;
        v48 = v66 + 1;
        v49 = (v55 + 8 * v66);
        while (v48 < (v18 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_228717DF8(v15, v57, 0);
            v18 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v15, v57, 0);
      }

LABEL_4:
      v16 = v64 + 1;
      v15 = v18;
      if (v64 + 1 == v56)
      {
        v11 = v67;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v68 = v11;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v52 = sub_2287CB1D0();
    v54 = v53;

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_2287CBA20();

    v68 = 0xD00000000000001ELL;
    v69 = 0x80000002287D0A50;
    MEMORY[0x22AABE980](v52, v54);

    return v68;
  }

  return result;
}

uint64_t sub_2287A15A0(uint64_t a1, uint64_t a2)
{
  sub_2287ADD30(0);
  v58 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v7;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v8, 0);
    v61 = v63;
    v10 = a2 + 64;
    v11 = -1 << *(a2 + 32);
    result = sub_2287CB890();
    v13 = result;
    v14 = 0;
    v15 = *(a2 + 36);
    v51 = a2 + 72;
    v52 = v8;
    v53 = v15;
    v54 = a2 + 64;
    v55 = a2;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a2 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v59 = v14;
      v60 = 1 << v13;
      v18 = v58;
      v19 = *(v58 + 48);
      v20 = *(a2 + 48);
      v21 = sub_2287C9810();
      v22 = *(v21 - 8);
      v23 = v56;
      (*(v22 + 16))(v56, v20 + *(v22 + 72) * v13, v21);
      v24 = *(a2 + 56);
      sub_228771868();
      sub_2287ADCC8(v24 + *(*(v25 - 8) + 72) * v13, &v23[v19], sub_228771868);
      v26 = v57;
      (*(v22 + 32))(v57, v23, v21);
      v27 = *(v18 + 48);
      v28 = sub_2287ADEE4(&v23[v19], v26 + v27, sub_228771868);
      v29 = MEMORY[0x22AABF5F0](v28);
      v30 = sub_2287A2A88(v26 + v27, sub_228771868);
      v32 = v31;
      objc_autoreleasePoolPop(v29);
      result = sub_2287ADF4C(v26, sub_2287ADD30);
      v33 = v61;
      v63 = v61;
      v35 = *(v61 + 16);
      v34 = *(v61 + 24);
      a2 = v55;
      if (v35 >= v34 >> 1)
      {
        result = sub_2287042D4((v34 > 1), v35 + 1, 1);
        v33 = v63;
      }

      *(v33 + 16) = v35 + 1;
      v36 = v33 + 16 * v35;
      *(v36 + 32) = v30;
      *(v36 + 40) = v32;
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v10 = v54;
      v37 = *(v54 + 8 * v17);
      if ((v37 & v60) == 0)
      {
        goto LABEL_26;
      }

      v61 = v33;
      LODWORD(v15) = v53;
      if (v53 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v38 = v37 & (-2 << (v13 & 0x3F));
      if (v38)
      {
        v16 = __clz(__rbit64(v38)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v17 << 6;
        v40 = v17 + 1;
        v41 = (v51 + 8 * v17);
        while (v40 < (v16 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_228717DF8(v13, v53, 0);
            v16 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v13, v53, 0);
      }

LABEL_4:
      v14 = v59 + 1;
      v13 = v16;
      if (v59 + 1 == v52)
      {
        v9 = v61;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v63 = v9;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v44 = sub_2287CB1D0();
    v46 = v45;

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_2287CBA20();
    v62 = *(a2 + 16);
    v47 = sub_2287CBCC0();
    v49 = v48;

    v63 = v47;
    v64 = v49;
    MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
    MEMORY[0x22AABE980](v44, v46);

    return v63;
  }

  return result;
}

uint64_t sub_2287A1A78(uint64_t a1, uint64_t a2)
{
  sub_2287ADE48(0);
  v58 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v7;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v8, 0);
    v61 = v63;
    v10 = a2 + 64;
    v11 = -1 << *(a2 + 32);
    result = sub_2287CB890();
    v13 = result;
    v14 = 0;
    v15 = *(a2 + 36);
    v51 = a2 + 72;
    v52 = v8;
    v53 = v15;
    v54 = a2 + 64;
    v55 = a2;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a2 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v59 = v14;
      v60 = 1 << v13;
      v18 = v58;
      v19 = *(v58 + 48);
      v20 = *(a2 + 48);
      v21 = sub_2287C9810();
      v22 = *(v21 - 8);
      v23 = v56;
      (*(v22 + 16))(v56, v20 + *(v22 + 72) * v13, v21);
      v24 = *(a2 + 56);
      sub_228774694(0);
      sub_2287ADCC8(v24 + *(*(v25 - 8) + 72) * v13, &v23[v19], sub_228774694);
      v26 = v57;
      (*(v22 + 32))(v57, v23, v21);
      v27 = *(v18 + 48);
      v28 = sub_2287ADEE4(&v23[v19], v26 + v27, sub_228774694);
      v29 = MEMORY[0x22AABF5F0](v28);
      v30 = sub_2287A2A88(v26 + v27, sub_228774694);
      v32 = v31;
      objc_autoreleasePoolPop(v29);
      result = sub_2287ADF4C(v26, sub_2287ADE48);
      v33 = v61;
      v63 = v61;
      v35 = *(v61 + 16);
      v34 = *(v61 + 24);
      a2 = v55;
      if (v35 >= v34 >> 1)
      {
        result = sub_2287042D4((v34 > 1), v35 + 1, 1);
        v33 = v63;
      }

      *(v33 + 16) = v35 + 1;
      v36 = v33 + 16 * v35;
      *(v36 + 32) = v30;
      *(v36 + 40) = v32;
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v10 = v54;
      v37 = *(v54 + 8 * v17);
      if ((v37 & v60) == 0)
      {
        goto LABEL_26;
      }

      v61 = v33;
      LODWORD(v15) = v53;
      if (v53 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v38 = v37 & (-2 << (v13 & 0x3F));
      if (v38)
      {
        v16 = __clz(__rbit64(v38)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v17 << 6;
        v40 = v17 + 1;
        v41 = (v51 + 8 * v17);
        while (v40 < (v16 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_228717DF8(v13, v53, 0);
            v16 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v13, v53, 0);
      }

LABEL_4:
      v14 = v59 + 1;
      v13 = v16;
      if (v59 + 1 == v52)
      {
        v9 = v61;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v63 = v9;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v44 = sub_2287CB1D0();
    v46 = v45;

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_2287CBA20();
    v62 = *(a2 + 16);
    v47 = sub_2287CBCC0();
    v49 = v48;

    v63 = v47;
    v64 = v49;
    MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
    MEMORY[0x22AABE980](v44, v46);

    return v63;
  }

  return result;
}

uint64_t sub_2287A1F50(uint64_t a1, uint64_t a2)
{
  sub_22870C510(0);
  v64 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADD30(0);
  v62 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - v10;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v71 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v11, 0);
    v68 = v71;
    v13 = a2 + 64;
    v14 = -1 << *(a2 + 32);
    result = sub_2287CB890();
    v16 = result;
    v17 = 0;
    v18 = *(a2 + 36);
    v56 = a2 + 72;
    v57 = v11;
    v58 = v18;
    v59 = a2 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a2 + 32))
    {
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (v18 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v66 = 1 << v16;
      v67 = v16 >> 6;
      v65 = v17;
      v20 = v62;
      v21 = *(v62 + 48);
      v22 = *(a2 + 48);
      v23 = sub_2287C9810();
      v24 = *(v23 - 8);
      v25 = v60;
      (*(v24 + 16))(v60, v22 + *(v24 + 72) * v16, v23);
      v26 = *(a2 + 56);
      sub_228771868();
      v28 = v27 - 8;
      sub_2287ADCC8(v26 + *(*(v27 - 8) + 72) * v16, &v25[v21], sub_228771868);
      v29 = v61;
      (*(v24 + 32))(v61, v25, v23);
      v30 = v29 + *(v20 + 48);
      v31 = sub_2287ADEE4(&v25[v21], v30, sub_228771868);
      v32 = MEMORY[0x22AABF5F0](v31);
      v33 = (v30 + *(v28 + 36));
      v34 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v69 = sub_2287C9A70();
      v70 = v35;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v36 = v30 + *(v64 + 44);
      v37 = sub_2287C9E50();
      v38 = sub_2287C9C50();
      MEMORY[0x22AABE980](v38);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v30, v63, sub_22870C510);
      v39 = sub_2287CB250();
      MEMORY[0x22AABE980](v39);

      v40 = v69;
      v41 = v70;
      objc_autoreleasePoolPop(v32);
      result = sub_2287ADF4C(v29, sub_2287ADD30);
      v42 = v68;
      v71 = v68;
      v44 = *(v68 + 16);
      v43 = *(v68 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_2287042D4((v43 > 1), v44 + 1, 1);
        v42 = v71;
      }

      *(v42 + 16) = v44 + 1;
      v45 = v42 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      v19 = 1 << *(a2 + 32);
      if (v16 >= v19)
      {
        goto LABEL_25;
      }

      v13 = v59;
      v46 = *(v59 + 8 * v67);
      if ((v46 & v66) == 0)
      {
        goto LABEL_26;
      }

      v68 = v42;
      LODWORD(v18) = v58;
      if (v58 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v47 = v46 & (-2 << (v16 & 0x3F));
      if (v47)
      {
        v19 = __clz(__rbit64(v47)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v67 << 6;
        v49 = v67 + 1;
        v50 = (v56 + 8 * v67);
        while (v49 < (v19 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_228717DF8(v16, v58, 0);
            v19 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v16, v58, 0);
      }

LABEL_4:
      v17 = v65 + 1;
      v16 = v19;
      if (v65 + 1 == v57)
      {
        v12 = v68;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v69 = v12;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v53 = sub_2287CB1D0();
    v55 = v54;

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_2287CBA20();

    v69 = 0xD00000000000001FLL;
    v70 = 0x80000002287D0A90;
    MEMORY[0x22AABE980](v53, v55);

    return v69;
  }

  return result;
}

uint64_t sub_2287A24EC(uint64_t a1, uint64_t a2)
{
  sub_22870CAC4(0);
  v64 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADE48(0);
  v62 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - v10;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v71 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v11, 0);
    v68 = v71;
    v13 = a2 + 64;
    v14 = -1 << *(a2 + 32);
    result = sub_2287CB890();
    v16 = result;
    v17 = 0;
    v18 = *(a2 + 36);
    v56 = a2 + 72;
    v57 = v11;
    v58 = v18;
    v59 = a2 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a2 + 32))
    {
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (v18 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v66 = 1 << v16;
      v67 = v16 >> 6;
      v65 = v17;
      v20 = v62;
      v21 = *(v62 + 48);
      v22 = *(a2 + 48);
      v23 = sub_2287C9810();
      v24 = *(v23 - 8);
      v25 = v60;
      (*(v24 + 16))(v60, v22 + *(v24 + 72) * v16, v23);
      v26 = *(a2 + 56);
      sub_228774694(0);
      v28 = v27 - 8;
      sub_2287ADCC8(v26 + *(*(v27 - 8) + 72) * v16, &v25[v21], sub_228774694);
      v29 = v61;
      (*(v24 + 32))(v61, v25, v23);
      v30 = v29 + *(v20 + 48);
      v31 = sub_2287ADEE4(&v25[v21], v30, sub_228774694);
      v32 = MEMORY[0x22AABF5F0](v31);
      v33 = (v30 + *(v28 + 36));
      v34 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v69 = sub_2287C9A70();
      v70 = v35;
      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      v36 = v30 + *(v64 + 44);
      v37 = sub_2287C9E50();
      v38 = sub_2287C9C50();
      MEMORY[0x22AABE980](v38);

      MEMORY[0x22AABE980](2128928, 0xE300000000000000);
      sub_2287ADCC8(v30, v63, sub_22870CAC4);
      v39 = sub_2287CB250();
      MEMORY[0x22AABE980](v39);

      v40 = v69;
      v41 = v70;
      objc_autoreleasePoolPop(v32);
      result = sub_2287ADF4C(v29, sub_2287ADE48);
      v42 = v68;
      v71 = v68;
      v44 = *(v68 + 16);
      v43 = *(v68 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_2287042D4((v43 > 1), v44 + 1, 1);
        v42 = v71;
      }

      *(v42 + 16) = v44 + 1;
      v45 = v42 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      v19 = 1 << *(a2 + 32);
      if (v16 >= v19)
      {
        goto LABEL_25;
      }

      v13 = v59;
      v46 = *(v59 + 8 * v67);
      if ((v46 & v66) == 0)
      {
        goto LABEL_26;
      }

      v68 = v42;
      LODWORD(v18) = v58;
      if (v58 != *(a2 + 36))
      {
        goto LABEL_27;
      }

      v47 = v46 & (-2 << (v16 & 0x3F));
      if (v47)
      {
        v19 = __clz(__rbit64(v47)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v67 << 6;
        v49 = v67 + 1;
        v50 = (v56 + 8 * v67);
        while (v49 < (v19 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_228717DF8(v16, v58, 0);
            v19 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        result = sub_228717DF8(v16, v58, 0);
      }

LABEL_4:
      v17 = v65 + 1;
      v16 = v19;
      if (v65 + 1 == v57)
      {
        v12 = v68;
        goto LABEL_21;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v69 = v12;
    sub_22873E054(0, &qword_280DE3A00);
    sub_228714B18();
    v53 = sub_2287CB1D0();
    v55 = v54;

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_2287CBA20();

    v69 = 0xD00000000000001FLL;
    v70 = 0x80000002287D0A90;
    MEMORY[0x22AABE980](v53, v55);

    return v69;
  }

  return result;
}

uint64_t sub_2287A2A88(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = (a1 + *(a2(0) + 28));
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2287C9A70();
  sub_22873E0A0();
  v4 = sub_2287CB840();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 16 + 16 * v5);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1701736302;
  }

  MEMORY[0x22AABE980](v8, v7);

  return 0x3D6E6967756C70;
}

void sub_2287A2B9C(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
    sub_2287AB250();
    sub_2287CB4C0();
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v33 = v3;
  while (1)
  {
    if (v3 < 0)
    {
      if (!sub_2287CB950() || (sub_228703004(0, &qword_280DE3870, 0x277CCD7C8), swift_dynamicCast(), v15 = v40, v13 = v6, v14 = v7, !v40))
      {
LABEL_30:
        sub_22870B3D4();
        return;
      }

      goto LABEL_17;
    }

    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_17:
    v34 = v14;
    v16 = a2;
    v17 = *a2;
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v17 < 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = v15;
      v19 = sub_2287CBB60();

      if (!v19)
      {
LABEL_28:

        goto LABEL_29;
      }

      swift_unknownObjectRelease();

      v20 = sub_2287CB920();
      v21 = sub_2287AA438(v18, v20);

      v22 = sub_228756BD4(v15);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_32;
      }

      v25 = *(*(v21 + 56) + 8 * v22);
      sub_2287AA690(v22, v21);

      a2 = v16;
      *v16 = v21;

      v6 = v13;
      v3 = v33;
      v7 = v34;
    }

    else
    {
      v26 = sub_228756BD4(v15);
      if ((v27 & 1) == 0)
      {
        goto LABEL_28;
      }

      v28 = v26;
      v29 = *v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v16;
      v40 = *v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2287BB86C();
        v31 = v40;
      }

      v32 = *(*(v31 + 56) + 8 * v28);
      sub_2287AA690(v28, v31);
      *v16 = v31;

LABEL_29:
      v6 = v13;
      a2 = v16;
      v3 = v33;
      v7 = v34;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_2287A2EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_2287ADD50;
  a3[1] = v10;
  return result;
}

uint64_t sub_2287A2FE4()
{
  sub_22870C47C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2287C9920();
  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2287135E8(0, v6, 0);
    v7 = v17;
    v8 = v5 + 32;
    do
    {
      sub_2287010E4(v8, v14);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      GeneratorPipeline.eraseToAnyPipeline()(v9, v10, v4);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2287135E8(v11 > 1, v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      sub_2287ADEE4(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, sub_22870C47C);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t FeedItemGeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v17 = swift_allocObject();
  FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t *FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v10 = v9;
  v81 = a8;
  v63 = a7;
  v73 = a6;
  v71 = a5;
  v62 = a4;
  v61 = a3;
  v57 = a2;
  v72 = a1;
  v69 = a9;
  v79 = *v10;
  v77 = sub_2287CB6A0();
  v76 = *(v77 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3D08();
  v78 = v16;
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v75 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2287C9DF0();
  v66 = *(v68 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2287C9E70();
  v67 = *(v70 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v64 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2287CB6B0();
  v58 = *(v59 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2287CB670();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v28 = sub_2287CB0E0();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v10[34] = 0;
  v10[35] = 0;
  v10[33] = 10;
  v10[32] = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];
  sub_2287010E4(a1, &v90);
  sub_2287010E4(a5, &v89);
  sub_2287010E4(v81, &v88);
  sub_2287010E4(a9, &v85);
  v83 = MEMORY[0x277D84F98];
  v84 = MEMORY[0x277D84F98];
  sub_2287A3DD4(0);
  v60 = v30;
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v10[2] = sub_2287CAD60();
  v10[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v33 = sub_2287CA440();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v10[18] = sub_2287CA430();
  v56 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_2287CBA20();

  sub_2287A3E9C();
  v83 = v36;
  sub_2287A3F30();
  v83 = sub_2287CB250();
  v84 = v37;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  v83 = MEMORY[0x277D84F90];
  sub_2287ADE00(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_22876D2A8(0);
  sub_2287ADE00(&qword_280DE39E8, sub_22876D2A8);
  sub_2287CB880();
  (*(v58 + 104))(v25, *MEMORY[0x277D85260], v59);
  v10[20] = sub_2287CB6D0();
  sub_2287010E4(&v90, (v10 + 8));
  v38 = v57;
  v10[6] = v57;
  v10[3] = v61;
  *(v10 + 40) = v62 & 1;
  sub_2287010E4(&v89, (v10 + 13));
  v10[31] = v63;
  sub_2287010E4(&v88, (v10 + 21));
  sub_2287010E4(&v85, (v10 + 26));
  sub_2287A3F78(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v40 = v38;

  *(inited + 32) = [v40 profileIdentifier];
  *(inited + 40) = v40;
  v41 = v40;
  v42 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_2287ADF4C(inited + 32, sub_228739F64);
  v83 = v42;
  sub_22873A15C();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v73;
  v46 = v86;
  v47 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, v86);
  (*(v66 + 104))(v65, *MEMORY[0x277D11F10], v68);

  v48 = v64;
  sub_2287C9E30();
  v49 = (*(v47 + 8))(v48, v46, v47);
  (*(v67 + 8))(v48, v70);
  v83 = v10[2];

  v50 = v74;
  sub_2287CB690();
  v82 = v49;
  sub_2287ADE00(&qword_280DE0108, sub_2287A3DD4);
  sub_22871EC78();
  v51 = v75;
  sub_2287CB020();
  (*(v76 + 8))(v50, v77);

  *(swift_allocObject() + 16) = v79;
  sub_2287ADE00(&qword_280DE0338, sub_2287A3D08);
  v52 = v78;
  v53 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  (*(v80 + 8))(v51, v52);
  __swift_destroy_boxed_opaque_existential_0(&v88);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  __swift_destroy_boxed_opaque_existential_0(&v90);
  v54 = v10[4];
  v10[4] = v53;

  __swift_destroy_boxed_opaque_existential_0(&v85);
  return v10;
}

void sub_2287A3D08()
{
  if (!qword_280DE0330)
  {
    sub_2287A3DD4(255);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_2287ADE00(&qword_280DE0108, sub_2287A3DD4);
    sub_22871EC78();
    v0 = sub_2287CAC20();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0330);
    }
  }
}

void sub_2287A3E08()
{
  if (!qword_280DE2A00[0])
  {
    sub_22870CCFC();
    sub_2287ADE00(qword_280DE2DB8, sub_22870CCFC);
    v0 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    if (!v1)
    {
      atomic_store(v0, qword_280DE2A00);
    }
  }
}

void sub_2287A3E9C()
{
  if (!qword_280DE2968[0])
  {
    sub_22870CCFC();
    sub_2287ADE00(qword_280DE2DB8, sub_22870CCFC);
    v0 = type metadata accessor for GeneratorPipelineManager();
    if (!v1)
    {
      atomic_store(v0, qword_280DE2968);
    }
  }
}

unint64_t sub_2287A3F30()
{
  result = qword_280DE2960;
  if (!qword_280DE2960)
  {
    sub_2287A3E9C();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE2960);
  }

  return result;
}

void sub_2287A3F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2287A3FDC(uint64_t a1)
{
  v2 = v1;
  v90 = *v1;
  sub_2287AB32C();
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AB4E0();
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287AB44C();
  v77 = v12;
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v74 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CA970();
  v16 = *(v15 - 8);
  v87 = v15;
  v88 = v16;
  v66 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v83 = sub_2287C9810();
  v23 = *(v83 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v83);
  v68 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v82 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v59 - v28;
  v89 = &v59 - v28;
  sub_2287C9800();
  v30 = _HKLogPersistedSignposts();
  _HKLogSignpostIDGenerate();

  v86 = v22;
  sub_2287CA980();
  v67 = *(v2 + 40);
  v91 = sub_2287588AC(a1);
  sub_2287AB418(0);
  v71 = v31;
  sub_228770F78();
  v69 = v32;
  v70 = sub_2287ADE00(&qword_280DE0220, sub_2287AB418);
  sub_2287CAF70();

  v65 = v2[20];
  v33 = v23;
  v64 = *(v23 + 16);
  v34 = v29;
  v35 = v83;
  v64(v82, v34, v83);
  v36 = v88;
  v63 = *(v88 + 16);
  v63(v84, v22, v87);
  v37 = *(v23 + 80);
  v72 = v23;
  v38 = (v37 + 16) & ~v37;
  v39 = *(v36 + 80);
  v61 = v38;
  v66 += (v24 + v39 + v38) & ~v39;
  v40 = (v24 + v39 + v38) & ~v39;
  v59 = v40;
  v62 = v37 | v39;
  v41 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v60 = *(v33 + 32);
  v60(v42 + v38, v82, v35);
  v82 = *(v36 + 32);
  v43 = v87;
  (v82)(v42 + v40, v84, v87);
  v44 = v89;
  *(v42 + v41) = v90;
  v45 = v68;
  v64(v68, v44, v35);
  v46 = v73;
  v63(v73, v86, v43);
  v47 = v66;
  v48 = swift_allocObject();
  v60(v48 + v61, v45, v35);
  (v82)(v48 + v59, v46, v43);
  *(v48 + v47) = v67;
  *(v48 + (v47 & 0xFFFFFFFFFFFFFFF8) + 8) = v90;
  sub_2287ADE00(&qword_280DE0638, sub_2287AB4E0);
  v49 = v74;
  v50 = v75;
  v51 = v85;
  sub_2287CAE00();

  (*(v76 + 8))(v51, v50);
  sub_2287CACC0();
  sub_2287ADE00(&qword_280DE0770, sub_2287AB44C);
  v53 = v77;
  v52 = v78;
  v54 = v49;
  sub_2287CAFE0();
  sub_2287ADE00(&qword_280DE0488, sub_2287AB32C);
  v55 = v80;
  v56 = sub_2287CAF40();
  (*(v81 + 8))(v52, v55);
  (*(v79 + 8))(v54, v53);
  v91 = v56;
  v57 = sub_2287CAF40();

  (*(v88 + 8))(v86, v43);
  (*(v72 + 8))(v89, v83);
  return v57;
}

void sub_2287A485C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287C9810();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_2287CAA40();
  v14 = sub_2287CB610();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136446466;
    v18 = sub_2287CBE60();
    v20 = sub_2287031D8(v18, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    sub_2287ADE00(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v21 = sub_2287CBCC0();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_2287031D8(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2286FF000, v13, v14, "[%{public}s] Feed item generation STARTED: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v17, -1, -1);
    MEMORY[0x22AABFD90](v16, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v27 + 8))(v12, v28);
  sub_2287CB710();
  v25 = _HKLogPersistedSignposts();
  sub_2287CA930();
}

uint64_t sub_2287A4BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v37 = a4;
  v41 = a3;
  v40 = a2;
  v5 = sub_2287CA910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287C9810();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2287CAA50();
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9F0();
  (*(v10 + 16))(v13, a1, v9);
  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v6;
    v21 = v20;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v21 = 136446466;
    v22 = sub_2287CBE60();
    v24 = sub_2287031D8(v22, v23, &v42);
    v37 = v5;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_2287ADE00(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v26 = sub_2287CBCC0();
    v28 = v27;
    (*(v10 + 8))(v13, v9);
    v29 = sub_2287031D8(v26, v28, &v42);
    v5 = v37;

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2286FF000, v18, v19, "[%{public}s] Feed item generation IDLE for 6 seconds: %{public}s", v21, 0x16u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v30, -1, -1);
    v31 = v21;
    v6 = v36;
    MEMORY[0x22AABFD90](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 8))(v17, v39);
  sub_2287CB700();
  v32 = _HKLogPersistedSignposts();
  sub_2287CA930();

  result = sub_2287CA420();
  if (result)
  {
    v34 = v38;
    (*(v6 + 104))(v38, *MEMORY[0x277D112D8], v5);
    sub_2287CA900();
    return (*(v6 + 8))(v34, v5);
  }

  return result;
}

void sub_2287A4FEC(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_2287A51C8(a1);
  v6 = sub_2287A5700(a1);
  sub_2287A94C8(a2);
  sub_2287AB780(v6);

  swift_beginAccess();
  v7 = v2[19];

  sub_2287C9A10();

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  *(swift_allocObject() + 16) = v5;
  sub_2287AC2C4(0);
  sub_2287ADE00(&qword_280DE01E0, sub_2287AC2C4);
  sub_2287CAF20();

  sub_2287A92D8(a1);
}

uint64_t sub_2287A51C8(uint64_t a1)
{
  v2 = v1;
  v4 = v1[12];
  v5 = *v1;
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v6 = sub_2287C99F0();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2287ADCBC;
  *(v8 + 24) = v7;
  v11[4] = sub_22877E1B8;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_228742C10;
  v11[3] = &block_descriptor_68;
  v9 = _Block_copy(v11);

  [v6 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_2287A5388(void *a1, uint64_t a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v11 = sub_2287C99F0();
  sub_2287CB7A0();

  v12 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v13 = sub_2287C99F0();
  sub_2287CB780();

  v14 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  v15 = sub_2287C99F0();
  v35 = 0;
  LODWORD(a1) = [v15 save_];

  v16 = v35;
  if (a1)
  {
    v17 = *MEMORY[0x277D85DE8];

    return v16;
  }

  else
  {
    v34[1] = v35;
    v19 = v35;
    v20 = sub_2287C9640();

    swift_willThrow();
    sub_2287CA9D0();
    v21 = v20;
    v22 = sub_2287CAA40();
    v23 = sub_2287CB5F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = a3;
      v36[0] = v25;
      *v24 = 136446466;
      swift_getMetatypeMetadata();
      v26 = sub_2287CB250();
      v28 = sub_2287031D8(v26, v27, v36);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v35 = v20;
      v29 = v20;
      sub_22874A0A4();
      v30 = sub_2287CB250();
      v32 = sub_2287031D8(v30, v31, v36);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_2286FF000, v22, v23, "[%{public}s]: Unable to update stored profiles: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v25, -1, -1);
      MEMORY[0x22AABFD90](v24, -1, -1);
    }

    else
    {
    }

    result = (*(v6 + 8))(v9, v5);
    v33 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void *sub_2287A5700(uint64_t a1)
{
  v149 = a1;
  v155[8] = *MEMORY[0x277D85DE8];
  v141 = *v1;
  v135 = sub_2287CB100();
  v134 = *(v135 - 8);
  v2 = *(v134 + 64);
  v3 = MEMORY[0x28223BE20](v135);
  v132 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v133 = &v124 - v5;
  sub_2287AC7C4();
  v131 = v6;
  v130 = *(v6 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x28223BE20](v6);
  v129 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2287CAA50();
  v154 = *(v151 - 8);
  v9 = *(v154 + 64);
  v10 = MEMORY[0x28223BE20](v151);
  v127 = (&v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v148 = &v124 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v124 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v124 - v17;
  MEMORY[0x28223BE20](v16);
  v128 = &v124 - v18;
  sub_2287AC4D0(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2287C9700();
  v153 = *(v23 - 8);
  v24 = *(v153 + 64);
  MEMORY[0x28223BE20](v23);
  v152 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2287CA970();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2287C9B60();
  v32 = *(v31 - 8);
  v33 = v32[8];
  MEMORY[0x28223BE20](v31);
  v35 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CB710();
  v36 = v32[13];
  v138 = *MEMORY[0x277D11E60];
  v143 = v32 + 13;
  v137 = v36;
  v36(v35);
  v37 = sub_2287C9B50();
  v38 = v32[1];
  v140 = v35;
  v144 = v32 + 1;
  v145 = v31;
  v136 = v38;
  v38(v35, v31);
  sub_2287CA960();
  sub_2287CA930();

  v39 = *(v27 + 8);
  v146 = v30;
  v147 = v26;
  v40 = v26;
  v41 = v153;
  v139 = v27 + 8;
  v39(v30, v40);
  sub_2287C9F10();
  sub_2287C9EF0();
  if ((*(v41 + 48))(v22, 1, v23) == 1)
  {
    v42 = v154;
    sub_2287ADF4C(v22, sub_2287AC4D0);
    v43 = v148;
    sub_2287CAA20();
    v44 = sub_2287CAA40();
    v45 = sub_2287CB600();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2286FF000, v44, v45, "[Contact Photo] Could not access Health app group container directory", v46, 2u);
      MEMORY[0x22AABFD90](v46, -1, -1);
    }

    (*(v42 + 8))(v43, v151);
    v47 = MEMORY[0x277D84F90];
  }

  else
  {
    v148 = v39;
    (*(v41 + 32))(v152, v22, v23);
    v48 = [objc_opt_self() defaultManager];
    v49 = sub_2287C96A0();
    v155[0] = 0;
    v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:v155];

    v125 = v23;
    v51 = v154;
    if (v50)
    {
      v52 = v155[0];
      v124 = 0;
      v53 = v149;
    }

    else
    {
      v54 = v155[0];
      v55 = sub_2287C9640();

      swift_willThrow();
      v124 = 0;
      v56 = v127;
      sub_2287CA9D0();
      v57 = v55;
      v58 = sub_2287CAA40();
      v59 = sub_2287CB5F0();

      v60 = os_log_type_enabled(v58, v59);
      v53 = v149;
      v61 = v151;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v155[0] = v63;
        *v62 = 136315138;
        v155[5] = v55;
        v64 = v55;
        sub_22874A0A4();
        v65 = sub_2287CB270();
        v67 = sub_2287031D8(v65, v66, v155);
        v51 = v154;

        *(v62 + 4) = v67;
        _os_log_impl(&dword_2286FF000, v58, v59, "[Contact Photo] Could not create notificationProfileImageDirectory: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x22AABFD90](v63, -1, -1);
        MEMORY[0x22AABFD90](v62, -1, -1);
      }

      else
      {
      }

      (*(v51 + 8))(v56, v61);
    }

    v68 = MEMORY[0x277D84F90];
    v155[0] = MEMORY[0x277D84F90];
    v69 = *(v53 + 16);
    if (!v69)
    {
      goto LABEL_24;
    }

    v70 = 0;
    do
    {
      v71 = v70;
      while (1)
      {
        if (v71 >= v69)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v70 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_41;
        }

        v72 = *(v53 + 32 + 8 * v71);
        v73 = sub_2287C9C30();
        if (v73)
        {
          v74 = v73;
          v75 = [v73 type];

          v72 = v74;
          if (v75 == 2)
          {
            break;
          }
        }

        ++v71;
        if (v70 == v69)
        {
          v51 = v154;
          goto LABEL_24;
        }
      }

      MEMORY[0x22AABEA50]();
      if (*((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v76 = *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v68 = v155[0];
      v51 = v154;
    }

    while (v70 != v69);
LABEL_24:
    v77 = sub_22872BE88(v68);

    v78 = *(v150 + 256);
    *(swift_allocObject() + 16) = v77;
    v79 = sub_2287CB7C0();

    v80 = swift_allocObject();

    v82 = sub_22872C010(v81);

    v149 = v80;
    *(v80 + 16) = v82;
    v83 = (v80 + 16);
    v84 = dispatch_semaphore_create(0);
    v85 = v128;
    sub_2287CA9D0();
    v86 = sub_2287CAA40();
    v87 = sub_2287CB610();
    v88 = os_log_type_enabled(v86, v87);
    v127 = v83;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v155[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, v155);
      _os_log_impl(&dword_2286FF000, v86, v87, "[Contact Photo] Setting up %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AABFD90](v90, -1, -1);
      MEMORY[0x22AABFD90](v89, -1, -1);
    }

    v91 = v151;
    v128 = *(v51 + 8);
    (v128)(v85, v151);
    v92 = v141;
    v141 = v79;
    v155[0] = v79;
    *(swift_allocObject() + 16) = v92;
    sub_2287CACC0();
    sub_2287AC9E4();
    sub_2287AC8E0();
    sub_2287AC8AC(0);
    sub_2287ADE00(&qword_280DE0198, sub_2287AC9E4);
    sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
    v93 = v129;
    sub_2287CAFE0();

    *(swift_allocObject() + 16) = v84;
    v94 = swift_allocObject();
    v95 = v149;
    *(v94 + 16) = sub_2287ACA98;
    *(v94 + 24) = v95;
    sub_2287ADE00(&unk_280DE0400, sub_2287AC7C4);
    v96 = v84;

    v97 = v131;
    v124 = sub_2287CAF80();

    (*(v130 + 8))(v93, v97);
    v98 = v132;
    sub_2287CB0F0();
    v99 = v133;
    sub_2287CB110();
    v100 = *(v134 + 8);
    v101 = v135;
    v100(v98, v135);
    LOBYTE(v98) = sub_2287CB760();
    v100(v99, v101);
    if (v98)
    {
      sub_2287CA9D0();

      v102 = sub_2287CAA40();
      v103 = sub_2287CB5F0();
      v104 = os_log_type_enabled(v102, v103);
      v105 = v152;
      v106 = v145;
      if (v104)
      {
        v107 = swift_slowAlloc();
        *v107 = 134283521;
        *(v107 + 4) = 10;

        _os_log_impl(&dword_2286FF000, v102, v103, "[Contact Photo] Operation timed out after %{private}ld seconds", v107, 0xCu);
        MEMORY[0x22AABFD90](v107, -1, -1);
      }

      else
      {
      }

      v115 = v146;
      v114 = v147;
      v116 = v127;
      (v128)(v142, v91);
    }

    else
    {
      v108 = v126;
      sub_2287CA9D0();
      v109 = sub_2287CAA40();
      v110 = sub_2287CB610();
      v111 = os_log_type_enabled(v109, v110);
      v105 = v152;
      v106 = v145;
      if (v111)
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v155[0] = v113;
        *v112 = 136315138;
        *(v112 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, v155);
        _os_log_impl(&dword_2286FF000, v109, v110, "[Contact Photo] Finished %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x22AABFD90](v113, -1, -1);
        MEMORY[0x22AABFD90](v112, -1, -1);
      }

      (v128)(v108, v91);
      v115 = v146;
      v114 = v147;
      v116 = v127;
    }

    sub_2287CB700();
    v117 = v140;
    v137(v140, v138, v106);
    v118 = sub_2287C9B50();
    v136(v117, v106);
    sub_2287CA960();
    sub_2287CA930();

    (v148)(v115, v114);
    swift_beginAccess();
    v119 = *v116;
    v120 = *(*v116 + 16);
    if (v120)
    {
      v47 = sub_228723AD4(*(*v116 + 16), 0);
      v121 = sub_22872A0CC(v155, v47 + 4, v120, v119);

      sub_22870B3D4();
      if (v121 == v120)
      {

        v105 = v152;
        goto LABEL_38;
      }

LABEL_42:
      __break(1u);
    }

    v47 = MEMORY[0x277D84F90];
LABEL_38:
    (*(v153 + 8))(v105, v125);
  }

  v122 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t sub_2287A686C(void *a1, uint64_t a2)
{
  v4 = [a1 profileIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2287847F0(v4, a2);

    return v6 & 1;
  }

  if ([a1 direction] == 1)
  {
    v8 = [a1 status];
    if (![a1 direction])
    {
      result = [a1 status] == 1;
      if (v8)
      {
        return result;
      }

      return 1;
    }

    return !v8;
  }

  if ([a1 direction])
  {
    return 0;
  }

  return [a1 status] == 1;
}

void sub_2287A6960(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_2287CA9D0();
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, &v17);
    _os_log_impl(&dword_2286FF000, v10, v11, "[Contact Photo] Running %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABFD90](v13, -1, -1);
    MEMORY[0x22AABFD90](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_228703004(0, &unk_280DDFEF8, 0x277CBDAB8);
  v14 = sub_2287CB630();
  v15 = sub_2287ACAEC(v9, v14);

  *a2 = v15;
}

uint64_t sub_2287A6B48()
{
  v0 = sub_2287CAA50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v5 = sub_2287CAA40();
  v6 = sub_2287CB610();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2287031D8(0xD000000000000020, 0x80000002287D3230, &v11);
    _os_log_impl(&dword_2286FF000, v5, v6, "[Contact Photo] Finished %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABFD90](v8, -1, -1);
    MEMORY[0x22AABFD90](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2287CB770();
}

uint64_t sub_2287A6CEC(void *a1, uint64_t a2)
{
  v65 = a2;
  sub_2287AC4D0(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2287C9700();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v59 - v12;
  v13 = sub_2287CAA50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v59 - v19;
  v20 = sub_2287C9810();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v63 = v18;
    v25 = objc_opt_self();
    v61 = a1;
    v26 = [v61 UUID];
    sub_2287C97F0();

    v27 = sub_2287C97E0();
    (*(v21 + 8))(v24, v20);
    v28 = [v25 _profileWithUUID_type_];

    swift_beginAccess();
    v29 = v28;
    sub_228724790(&v70, v28);
    swift_endAccess();

    sub_2287CA9D0();
    v30 = v29;
    v31 = sub_2287CAA40();
    v32 = sub_2287CB610();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v69[0] = v59;
      *v33 = 136380675;
      v34 = v30;
      v35 = [v34 description];
      v60 = v6;
      v36 = v35;
      v37 = sub_2287CB220();
      v39 = v38;

      v40 = sub_2287031D8(v37, v39, v69);

      *(v33 + 4) = v40;
      v6 = v60;
      _os_log_impl(&dword_2286FF000, v31, v32, "[Contact Photo] Added invitation profile to allowlist. Profile: %{private}s", v33, 0xCu);
      v41 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AABFD90](v41, -1, -1);
      MEMORY[0x22AABFD90](v33, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v66, v13);
    v18 = v63;
  }

  sub_2287ADCC8(v65, v6, sub_2287AC4D0);
  if ((*(v68 + 48))(v6, 1, v67) == 1)
  {
    return sub_2287ADF4C(v6, sub_2287AC4D0);
  }

  v65 = v14;
  v66 = v13;
  v44 = v67;
  v43 = v68;
  v45 = v64;
  (*(v68 + 32))(v64, v6, v67);
  sub_2287CA9D0();
  v46 = v62;
  (*(v43 + 16))(v62, v45, v44);
  v47 = sub_2287CAA40();
  v48 = sub_2287CB610();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v69[0] = v50;
    *v49 = 136380675;
    sub_2287ADE00(&qword_280DE17E8, MEMORY[0x277CC9260]);
    v51 = v67;
    v52 = sub_2287CBCC0();
    v54 = v53;
    v63 = v18;
    v55 = *(v68 + 8);
    v55(v46, v51);
    v56 = sub_2287031D8(v52, v54, v69);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_2286FF000, v47, v48, "[Contact Photo] Successfully created and saved contact photo at %{private}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AABFD90](v50, -1, -1);
    MEMORY[0x22AABFD90](v49, -1, -1);

    (*(v65 + 8))(v63, v66);
    return (v55)(v64, v51);
  }

  else
  {

    v57 = v67;
    v58 = *(v68 + 8);
    v58(v46, v67);
    (*(v65 + 8))(v18, v66);
    return (v58)(v45, v57);
  }
}

id sub_2287A73C0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  v56 = *a1;
  v14 = sub_2287CB750();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    sub_228703004(0, &unk_280DDFEF8, 0x277CBDAB8);
    sub_2287CB620();
    v18 = sub_2287CB210();
    sub_2287ADC58();
    v19 = sub_2287CB390();

    v58[0] = 0;
    v20 = [a2 unifiedContactWithIdentifier:v18 keysToFetch:v19 error:v58];

    v21 = v58[0];
    if (v20)
    {

      goto LABEL_11;
    }

    v35 = v21;
    v36 = sub_2287C9640();

    swift_willThrow();
    sub_2287CA9D0();

    v37 = v36;
    v38 = sub_2287CAA40();
    v39 = sub_2287CB5F0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55 = v7;
      v42 = v41;
      v58[0] = v41;
      *v40 = 136380931;
      v43 = sub_2287031D8(v16, v17, v58);
      v44 = a3;
      v45 = v43;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      v57 = v36;
      v46 = v36;
      sub_22874A0A4();
      v47 = sub_2287CB270();
      v49 = sub_2287031D8(v47, v48, v58);
      a3 = v44;

      *(v40 + 14) = v49;
      _os_log_impl(&dword_2286FF000, v38, v39, "[Contact Photo] Could not find contact with identifier %{private}s: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v42, -1, -1);
      MEMORY[0x22AABFD90](v40, -1, -1);

      (v55[1])(v11, v6);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    sub_2287CA9D0();
    v22 = v56;
    v23 = sub_2287CAA40();
    v24 = sub_2287CB5F0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58[0] = v55;
      *v25 = 136380675;
      v26 = v22;
      v27 = [v26 description];
      v28 = v7;
      v29 = sub_2287CB220();
      v54 = v6;
      v30 = a3;
      v32 = v31;

      v33 = sub_2287031D8(v29, v32, v58);
      a3 = v30;

      *(v25 + 4) = v33;
      _os_log_impl(&dword_2286FF000, v23, v24, "[Contact Photo] Could not find contact identifier for %{private}s", v25, 0xCu);
      v34 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AABFD90](v34, -1, -1);
      MEMORY[0x22AABFD90](v25, -1, -1);

      (*(v28 + 8))(v13, v54);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = 0;
LABEL_11:
  v50 = v56;
  *a3 = v56;
  a3[1] = v20;
  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

uint64_t sub_2287A78B4(void *a1, uint64_t a2)
{
  v46 = a2;
  sub_2287A3F78(0, &qword_27D850EB8, MEMORY[0x277D10D78], MEMORY[0x277CBCE78]);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - v5;
  sub_2287ADA98(0);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287ADB48();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CA8C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = sub_2287C9810();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = [a1 profileIdentifier];
  v27 = v26;
  if (!v26)
  {
    v44 = objc_opt_self();
    v28 = [v25 UUID];
    sub_2287C97F0();

    v29 = sub_2287C97E0();
    (*(v21 + 8))(v24, v20);
    v30 = [v44 _profileWithUUID_type_];

    v27 = v30;
  }

  v31 = v26;
  v44 = v27;
  sub_2287CA8A0();
  (*(v13 + 16))(v17, v19, v12);
  v32 = v45;
  v33 = sub_2287CADB0();
  MEMORY[0x28223BE20](v33);
  *(&v43 - 2) = v46;
  *(&v43 - 1) = v25;
  sub_2287AC8E0();
  v34 = v49;
  v35 = v48;
  sub_2287CAD90();
  (*(v47 + 8))(v32, v35);
  *(swift_allocObject() + 16) = v25;
  sub_2287AC8AC(0);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98);
  sub_2287ADE00(&qword_280DE0170, sub_2287AC8AC);
  v36 = v25;
  v37 = v50;
  v38 = v52;
  sub_2287CAF90();

  (*(v51 + 8))(v34, v38);
  sub_2287ADE00(&qword_27D850EC8, sub_2287ADB48);
  v39 = v54;
  v40 = sub_2287CAF40();
  v41 = v44;

  (*(v53 + 8))(v37, v39);
  (*(v13 + 8))(v19, v12);
  return v40;
}

void sub_2287A7EB4(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  sub_2287AC4D0(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_2287CA8B0();

    if (v3)
    {
      return;
    }

    sub_2287AC8E0();
    v13 = *(v12 + 48);
    *a3 = a2;
    sub_2287ADEE4(v10, &a3[v13], sub_2287AC4D0);
  }

  else
  {
    sub_2287AC8E0();
    v15 = *(v14 + 48);
    *a3 = a2;
    v16 = sub_2287C9700();
    (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  }

  v17 = a2;
}

uint64_t sub_2287A7FF8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2287AC8E0();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287AC4D0(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3F78(0, &qword_27D850EA0, sub_2287AC8E0, MEMORY[0x277CBCE78]);
  v15 = v14;
  v58 = *(v14 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v50 - v17;
  sub_2287ADA98(0);
  v19 = v18;
  v59 = *(v18 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x28223BE20](v18);
  v56 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2287CAA50();
  v53 = *(v22 - 8);
  v54 = v22;
  v23 = *(v53 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  sub_2287CA9D0();
  v27 = v26;
  v28 = sub_2287CAA40();
  v29 = sub_2287CB5F0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v52 = a2;
    v31 = v30;
    v50 = swift_slowAlloc();
    v51 = v7;
    v60 = v26;
    v61 = v50;
    *v31 = 136315138;
    v32 = v26;
    sub_22874A0A4();
    v33 = sub_2287CB270();
    v35 = v15;
    v36 = v19;
    v37 = v10;
    v38 = a3;
    v39 = sub_2287031D8(v33, v34, &v61);

    *(v31 + 4) = v39;
    a3 = v38;
    v10 = v37;
    v19 = v36;
    v15 = v35;
    _os_log_impl(&dword_2286FF000, v28, v29, "[Contact Photo] Could not save image: %s", v31, 0xCu);
    v40 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    v7 = v51;
    MEMORY[0x22AABFD90](v40, -1, -1);
    v41 = v31;
    a2 = v52;
    MEMORY[0x22AABFD90](v41, -1, -1);
  }

  (*(v53 + 8))(v25, v54);
  v42 = sub_2287C9700();
  v43 = v57;
  (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
  v44 = *(v7 + 48);
  *v10 = a2;
  sub_2287ADEE4(v43, v10 + v44, sub_2287AC4D0);
  v45 = a2;
  v46 = v55;
  sub_2287CADB0();
  sub_22874A0A4();
  v47 = v56;
  sub_2287CAD80();
  (*(v58 + 8))(v46, v15);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98);
  v48 = sub_2287CAF40();
  result = (*(v59 + 8))(v47, v19);
  *a3 = v48;
  return result;
}

uint64_t sub_2287A84DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2287A78B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_2287A850C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2287AC8E0();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2287AC4D0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287A3F78(0, &qword_27D850EA0, sub_2287AC8E0, MEMORY[0x277CBCE78]);
  v13 = v12;
  v57 = *(v12 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &v48 - v15;
  sub_2287ADA98(0);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v55 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CAA50();
  v52 = *(v21 - 8);
  v53 = v21;
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_2287CA9D0();
  v26 = v25;
  v27 = sub_2287CAA40();
  v28 = sub_2287CB5F0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v5;
    v30 = v29;
    v49 = swift_slowAlloc();
    v50 = v8;
    v58 = v25;
    v59 = v49;
    *v30 = 136315138;
    v31 = v25;
    sub_22874A0A4();
    v32 = sub_2287CB270();
    v34 = v18;
    v35 = v13;
    v36 = v17;
    v37 = a2;
    v38 = sub_2287031D8(v32, v33, &v59);

    *(v30 + 4) = v38;
    a2 = v37;
    v17 = v36;
    v13 = v35;
    v18 = v34;
    _os_log_impl(&dword_2286FF000, v27, v28, "[Contact Photo] Could not process contact photo: %s", v30, 0xCu);
    v39 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    v8 = v50;
    MEMORY[0x22AABFD90](v39, -1, -1);
    v40 = v30;
    v5 = v51;
    MEMORY[0x22AABFD90](v40, -1, -1);
  }

  (*(v52 + 8))(v24, v53);
  v41 = sub_2287C9700();
  v42 = v56;
  (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
  v43 = *(v5 + 48);
  *v8 = 0;
  sub_2287ADEE4(v42, v8 + v43, sub_2287AC4D0);
  v44 = v54;
  sub_2287CADB0();
  sub_22874A0A4();
  v45 = v55;
  sub_2287CAD80();
  (*(v57 + 8))(v44, v13);
  sub_2287ADE00(&qword_27D850EB0, sub_2287ADA98);
  v46 = sub_2287CAF40();
  result = (*(v18 + 8))(v45, v17);
  *a2 = v46;
  return result;
}

uint64_t sub_2287A89E4(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2287C9700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CAA50();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287C96A0();
  v31[0] = 0;
  v15 = [a2 removeItemAtURL:v14 error:v31];

  if (v15)
  {
    v16 = v31[0];
    sub_2287CAA20();
    (*(v6 + 16))(v9, a1, v5);
    v17 = sub_2287CAA40();
    v18 = sub_2287CB610();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v31[0] = v28[0];
      *v19 = 136380675;
      sub_2287ADE00(&qword_280DE17E8, MEMORY[0x277CC9260]);
      v20 = sub_2287CBCC0();
      v28[1] = v2;
      v22 = v21;
      (*(v6 + 8))(v9, v5);
      v23 = sub_2287031D8(v20, v22, v31);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2286FF000, v17, v18, "[Contact Photo] Successfully deleted profile image %{private}s", v19, 0xCu);
      v24 = v28[0];
      __swift_destroy_boxed_opaque_existential_0(v28[0]);
      MEMORY[0x22AABFD90](v24, -1, -1);
      MEMORY[0x22AABFD90](v19, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    result = (*(v29 + 8))(v13, v30);
  }

  else
  {
    v25 = v31[0];
    sub_2287C9640();

    result = swift_willThrow();
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2287A8D40(void **a1)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = *a1;
  if (*a1)
  {
    sub_2287CA9D0();
    v11 = v10;
    v12 = sub_2287CAA40();
    v13 = sub_2287CB5F0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315394;
      v16 = sub_2287CBE60();
      v18 = sub_2287031D8(v16, v17, v38);
      v36 = v2;
      v19 = v18;

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      v37 = v10;
      v20 = v10;
      sub_22874A0A4();
      v21 = sub_2287CB250();
      v23 = sub_2287031D8(v21, v22, v38);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_2286FF000, v12, v13, "[%s] Error removing feed item notifications for removed profiles. %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v15, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);

      (*(v3 + 8))(v9, v36);
      goto LABEL_9;
    }

    v31 = *(v3 + 8);
    v32 = v9;
  }

  else
  {
    sub_2287CA9D0();
    v24 = sub_2287CAA40();
    v25 = sub_2287CB610();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      v28 = sub_2287CBE60();
      v30 = sub_2287031D8(v28, v29, v38);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2286FF000, v24, v25, "[%s] Successfully removed feed item notifications for removed profiles", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AABFD90](v27, -1, -1);
      MEMORY[0x22AABFD90](v26, -1, -1);
    }

    v31 = *(v3 + 8);
    v32 = v7;
  }

  v31(v32, v2);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = *(result + 272);
    sub_228714B08(v34);

    if (v34)
    {
      v34(result);
      return sub_228714BC0(v34);
    }
  }

  return result;
}

uint64_t sub_2287A90D0(uint64_t *a1)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2287CA9D0();

  v8 = sub_2287CAA40();
  v9 = sub_2287CB610();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315395;
    v12 = sub_2287CBE60();
    v14 = sub_2287031D8(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2081;
    v15 = sub_2287C9D40();
    v16 = MEMORY[0x22AABEA80](v7, v15);
    v18 = sub_2287031D8(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_2286FF000, v8, v9, "[%s] Removed %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v11, -1, -1);
    MEMORY[0x22AABFD90](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_2287A92D8(uint64_t a1)
{
  v2 = 0;
  v10 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      v9 = *(v1 + 56);
      MEMORY[0x28223BE20](a1);

      sub_2287CA670();

      return;
    }

    if (v2 >= v3)
    {
      break;
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v2);
    v7 = sub_2287C9C30();

    ++v2;
    if (v7)
    {
      MEMORY[0x22AABEA50]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      a1 = sub_2287CB420();
      v2 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_2287A942C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  sub_22871F6B4(v5);
  v7 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_2287CB920();
    v7 = sub_22872527C(v8, v9);
  }

  v10 = sub_2287AABCC(a2, v7);
  sub_2287A2B9C(v10, a1);
}

uint64_t sub_2287A94C8(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_2287AC504();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  result = sub_2287CA420();
  if (result)
  {
    sub_2287AAFA4(a1, sub_2287AC5F8);
    v14 = v13;
    sub_2287AC684(0, &qword_280DE0128, MEMORY[0x277CBCD88]);
    sub_2287AC600();
    sub_2287AC584();
    sub_2287ADE00(&qword_280DDFFA0, sub_2287AC600);
    sub_2287CAC40();
    *(swift_allocObject() + 16) = v4;
    sub_2287ADE00(&qword_280DE02F8, sub_2287AC504);
    sub_2287CAF20();

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_2287A9720(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  if ([a1 type] != 2)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  sub_2287AC684(0, &qword_27D850E80, MEMORY[0x277CBCEA8]);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a2;
  sub_2287CADF0();
  sub_2287AC6F0();
  v10 = sub_2287CAF40();

  return v10;
}

uint64_t sub_2287A9834(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  if (*a1)
  {
    sub_2287CA9D0();
    v12 = sub_2287CAA40();
    v13 = sub_2287CB610();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      v31 = a2;
      *v14 = 136446210;
      swift_getMetatypeMetadata();
      v16 = sub_2287CB250();
      v18 = sub_2287031D8(v16, v17, &v30);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s]: Pull all shared summaries successfully.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AABFD90](v15, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_2287CA9D0();
    v20 = sub_2287CAA40();
    v21 = sub_2287CB5F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = a2;
      *v22 = 136446466;
      swift_getMetatypeMetadata();
      v24 = sub_2287CB250();
      v26 = sub_2287031D8(v24, v25, &v30);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_2287CB250();
      v29 = sub_2287031D8(v27, v28, &v30);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2286FF000, v20, v21, "[%{public}s]: Pull Shared Summaries Error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v23, -1, -1);
      MEMORY[0x22AABFD90](v22, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

void sub_2287A9B38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_2287CA9F0();
  v14 = a3;
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v16;
    v18 = v17;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v18 = 136315395;
    v19 = sub_2287CBE60();
    v21 = sub_2287031D8(v19, v20, aBlock);
    v40 = a4;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2081;
    v23 = [v14 profileIdentifier];
    v24 = [v23 description];
    v25 = sub_2287CB220();
    v37 = v8;
    v26 = v13;
    v27 = v25;
    v29 = v28;

    v30 = v27;
    v13 = v26;
    v31 = sub_2287031D8(v30, v29, aBlock);

    *(v18 + 14) = v31;
    a4 = v40;
    _os_log_impl(&dword_2286FF000, v15, v38, "[%s] Pulling shared summaries for %{private}s", v18, 0x16u);
    v32 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v32, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    (*(v9 + 8))(v12, v37);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CCD930]) initWithHealthStore_];
  v34 = swift_allocObject();
  v34[2] = sub_2287AC764;
  v34[3] = v13;
  v34[4] = v14;
  v34[5] = a4;
  aBlock[4] = sub_2287AC7A0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287AA2FC;
  aBlock[3] = &block_descriptor_11;
  v35 = _Block_copy(aBlock);
  v36 = v14;

  [v33 pullWithCompletion_];
  _Block_release(v35);
}

uint64_t sub_2287A9EB0(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  if (a1)
  {
    v49 = v9;
    sub_2287CA9F0();
    v17 = a5;
    v18 = sub_2287CAA40();
    v19 = sub_2287CB610();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v20 = 136315395;
      v21 = sub_2287CBE60();
      v23 = sub_2287031D8(v21, v22, &v51);
      v48 = a3;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2081;
      v25 = [v17 profileIdentifier];
      v26 = [v25 description];
      v27 = sub_2287CB220();
      v29 = v28;

      v30 = sub_2287031D8(v27, v29, &v51);

      *(v20 + 14) = v30;
      a3 = v48;
      _os_log_impl(&dword_2286FF000, v18, v19, "[%s] Successfully pulled shared summaries for %{private}s", v20, 0x16u);
      v31 = v47;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v31, -1, -1);
      MEMORY[0x22AABFD90](v20, -1, -1);
    }

    (*(v10 + 8))(v16, v49);
  }

  else
  {
    sub_2287CA9F0();
    v32 = a2;
    v33 = sub_2287CAA40();
    v34 = sub_2287CB5F0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v9;
      v37 = v36;
      v51 = v36;
      *v35 = 136315394;
      v38 = sub_2287CBE60();
      v48 = a3;
      v40 = sub_2287031D8(v38, v39, &v51);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      v50 = a2;
      v41 = a2;
      sub_2287A3F78(0, &qword_27D850E90, sub_22874A0A4, MEMORY[0x277D83D88]);
      v42 = sub_2287CB270();
      v44 = sub_2287031D8(v42, v43, &v51);
      a3 = v48;

      *(v35 + 14) = v44;
      _os_log_impl(&dword_2286FF000, v33, v34, "[%s] Shared Summaries Pull Error: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v37, -1, -1);
      MEMORY[0x22AABFD90](v35, -1, -1);

      (*(v10 + 8))(v14, v49);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }
  }

  sub_2287CBDF0();
  return a3(v51);
}

void sub_2287AA2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2287AA374()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return sub_228714BC0(v1);
}

uint64_t FeedItemGeneratorPipelineManager.deinit()
{
  v0 = sub_2287655B4();

  v1 = *(v0 + 280);
  sub_228714BC0(*(v0 + 272));
  return v0;
}

uint64_t FeedItemGeneratorPipelineManager.__deallocating_deinit()
{
  v0 = sub_2287655B4();
  v1 = v0[32];

  v2 = v0[35];
  sub_228714BC0(v0[34]);

  return swift_deallocClassInstance();
}

uint64_t sub_2287AA438(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2287AC3F8(0, &qword_280DE18A8, MEMORY[0x277D84460]);
    v2 = sub_2287CBBE0();
    v20 = v2;
    sub_2287CBB40();
    v3 = sub_2287CBB70();
    if (v3)
    {
      v4 = v3;
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2287BA778(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2287CB7E0();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2287CBB70();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_2287AA690(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2287CB8A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_2287CB7E0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_2287AA84C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_2287C9810();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_2287CB8A0();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_2287ADE00(&qword_280DE3970, MEMORY[0x277CC95F0]);
      v25 = sub_2287CB1B0();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2287AABCC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2287AAD6C(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2287AC49C(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2287AAD6C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = a3;
    v31 = sub_2287CB920();
    v4 = v23;
  }

  else
  {
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v30 = v4 & 0xC000000000000001;
  v24 = v4;
  v28 = v4 + 32;
  v32 = a4 + 56;
LABEL_4:
  v26 = v5;
  while (v6 != v31)
  {
    if (v30)
    {
      v7 = MEMORY[0x22AABF120](v6, v24);
    }

    else
    {
      if (v6 >= *(v29 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v28 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a4 + 40);
    v11 = sub_2287CB7E0();
    v12 = -1 << *(a4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) != 0)
    {
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v16 = *(*(a4 + 48) + 8 * v13);
      v17 = sub_2287CB7F0();

      if ((v17 & 1) == 0)
      {
        v18 = ~v12;
        do
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v19 = *(*(a4 + 48) + 8 * v13);
          v20 = sub_2287CB7F0();
        }

        while ((v20 & 1) == 0);
      }

      v21 = a1[v14];
      a1[v14] = v21 | v15;
      if ((v21 & v15) == 0)
      {
        v5 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_2287B528C(a1, a2, v26, a4);
}

void sub_2287AAFA4(unint64_t a1, uint64_t (*a2)(id, id))
{
  v25 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_2287CBB40() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v22 = v5;
  v23 = v2;
LABEL_8:
  v10 = v9;
  v11 = v4;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2287CBB70())
      {
        goto LABEL_22;
      }

      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      swift_dynamicCast();
      v17 = v24;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      swift_dynamicCast();
      v18 = v24;
      v9 = v10;
      v14 = v11;
      if (!v24)
      {
LABEL_22:
        sub_22870B3D4();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v9 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v14 = (v13 - 1) & v13;
    v15 = (v9 << 9) | (8 * __clz(__rbit64(v13)));
    v16 = *(*(v5 + 56) + v15);
    v17 = *(*(v5 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_22;
    }

LABEL_18:
    v19 = a2(v17, v18);

    v10 = v9;
    v11 = v14;
    v5 = v22;
    v2 = v23;
    if (v19)
    {
      v4 = v14;
      MEMORY[0x22AABEA50]();
      if (*(v25 + 16) >= *(v25 + 24) >> 1)
      {
        v20 = *(v25 + 16);
        sub_2287CB3E0();
        v4 = v14;
      }

      sub_2287CB420();
      v2 = v23;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v2 + 8 * v9);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_2287AB250()
{
  result = qword_280DE1970;
  if (!qword_280DE1970)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1970);
  }

  return result;
}

void sub_2287AB32C()
{
  if (!qword_280DE0480)
  {
    sub_2287AB418(255);
    sub_2287AB44C();
    sub_2287ADE00(&qword_280DE0220, sub_2287AB418);
    sub_2287ADE00(&qword_280DE0770, sub_2287AB44C);
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0480);
    }
  }
}

void sub_2287AB44C()
{
  if (!qword_280DE0760)
  {
    sub_2287AB4E0();
    sub_2287ADE00(&qword_280DE0638, sub_2287AB4E0);
    v0 = sub_2287CAAC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0760);
    }
  }
}