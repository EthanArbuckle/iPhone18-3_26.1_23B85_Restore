uint64_t WidgetExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D8899C();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217B0D120(0, &qword_27CB9F368, MEMORY[0x277D844C8]);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for WidgetExposureEvent.Model(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0C938();
  v44 = v14;
  v20 = v45;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v7;
  v22 = v41;
  LOBYTE(v46) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v40 + 32))(v18, v43, v8);
  v51 = 1;
  sub_217B0AD9C();
  sub_217D89BCC();
  v36 = v8;
  v23 = v47;
  v24 = v49;
  v25 = v50;
  v26 = *(v15 + 20);
  v45 = v18;
  v27 = &v18[v26];
  *v27 = v46;
  *(v27 + 1) = v23;
  *(v27 + 1) = v48;
  v27[32] = v24;
  *(v27 + 5) = v25;
  v51 = 2;
  sub_217B0AFF4();
  sub_217D89BCC();
  v43 = a1;
  *&v45[*(v15 + 24)] = v46;
  v51 = 3;
  sub_217B0B24C();
  sub_217D89BCC();
  v28 = v15;
  v29 = v45;
  *&v45[v28[7]] = v46;
  v51 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v30 = v47;
  v31 = v48;
  v32 = v29 + v28[8];
  *v32 = v46;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  LOBYTE(v46) = 5;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v33 = v38;
  sub_217D89BCC();
  (*(v39 + 32))(v29 + v28[9], v21, v33);
  v51 = 6;
  sub_217B0B744();
  v34 = v42;
  sub_217D89BCC();
  *(v29 + v28[10]) = v46;
  v51 = 7;
  sub_217B0BA18();
  sub_217D89BCC();
  (*(v22 + 8))(v44, v34);
  *(v29 + v28[11]) = v46;
  sub_217B0D184(v29, v37);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_217B0D1E8(v29);
}

void sub_217B0D120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B0C938();
    v7 = a3(a1, &type metadata for WidgetExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B0D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B0D1E8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B0D31C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217A608E0();
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217B0D6D4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B0B99C(319, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0);
    if (v1 <= 0x3F)
    {
      sub_217B0B99C(319, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048);
      if (v2 <= 0x3F)
      {
        sub_217B0B99C(319, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0);
        if (v3 <= 0x3F)
        {
          sub_217B0B99C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
          if (v4 <= 0x3F)
          {
            sub_217A608E0();
            if (v5 <= 0x3F)
            {
              sub_217B0B99C(319, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
              if (v6 <= 0x3F)
              {
                sub_217B0B99C(319, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
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

uint64_t sub_217B0D960()
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

unint64_t sub_217B0DA3C()
{
  result = qword_27CB9F390;
  if (!qword_27CB9F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F390);
  }

  return result;
}

unint64_t sub_217B0DA94()
{
  result = qword_27CB9F398;
  if (!qword_27CB9F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F398);
  }

  return result;
}

unint64_t sub_217B0DAEC()
{
  result = qword_27CB9F3A0;
  if (!qword_27CB9F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F3A0);
  }

  return result;
}

uint64_t sub_217B0DB40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xED00007473694C61 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCD870 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
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

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::AppData __swiftcall AppData.init(appVersion:appBuildNumber:)(Swift::String appVersion, Swift::String appBuildNumber)
{
  *v2 = appVersion;
  v2[1] = appBuildNumber;
  result.appBuildNumber = appBuildNumber;
  result.appVersion = appVersion;
  return result;
}

uint64_t sub_217B0DF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
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

uint64_t sub_217B0E02C(uint64_t a1)
{
  v2 = sub_217A61774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B0E068(uint64_t a1)
{
  v2 = sub_217A61774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A61640(0, &qword_2811BC910, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A61774();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_217D89B8C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B0E2CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_217B0E314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B0E374()
{
  result = qword_27CB9F3A8;
  if (!qword_27CB9F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F3A8);
  }

  return result;
}

void *sub_217B0E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_217D87A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  if (a3)
  {
    sub_217D87A1C();
    v19 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_217B5ABE8(v20 > 1, v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v18, v8);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v28 = a4;
  v29 = a5;
  v27[0] = 0x686372616573;
  v27[1] = 0xE600000000000000;
  sub_217A4EBC4();
  if (sub_217D8995C() & 1) != 0 || (v28 = a4, v29 = a5, strcpy(v27, "searchSeeMore"), HIWORD(v27[1]) = -4864, (sub_217D8995C()))
  {
    sub_217D87A1C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_217B5ABE8(0, v19[2] + 1, 1, v19);
    }

    v23 = v19[2];
    v22 = v19[3];
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v19 = sub_217B5ABE8(v22 > 1, v23 + 1, 1, v19);
    }
  }

  else
  {
    v28 = a4;
    v29 = a5;
    strcpy(v27, "following");
    WORD1(v27[1]) = 0;
    HIDWORD(v27[1]) = -385875968;
    if ((sub_217D8995C() & 1) == 0)
    {
      return v19;
    }

    sub_217D87A1C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_217B5ABE8(0, v19[2] + 1, 1, v19);
    }

    v23 = v19[2];
    v26 = v19[3];
    v24 = v23 + 1;
    if (v23 >= v26 >> 1)
    {
      v19 = sub_217B5ABE8(v26 > 1, v23 + 1, 1, v19);
    }

    v16 = v13;
  }

  v19[2] = v24;
  (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v16, v8);
  return v19;
}

uint64_t sub_217B0E7A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_217B5ABE8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_217D87A4C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_217B0E920(uint64_t a1)
{
  v2 = sub_217D87A4C();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedViewEvent.Model(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EF5C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217D881AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  sub_217B0EFB4();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (!v23)
  {
    v24(v11, 1, 1, v18);
    sub_217B0F0E4(v11, sub_217B0EF5C);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v24(v11, 0, 1, v18);
  (*(v19 + 32))(v22, v11, v18);
  v25 = sub_217D8816C();
  v26 = v56;
  v27 = sub_217D887BC();
  if (v26)
  {
    (*(v19 + 8))(v22, v18);

    return;
  }

  v29 = v27;
  v30 = v28;

  v31 = sub_217D8796C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_217D8795C();
  sub_217B0F09C(&qword_2811C7478, type metadata accessor for FeedViewEvent.Model);
  v34 = v55;
  sub_217D8794C();
  v56 = v30;

  v35 = (v34 + *(v5 + 24));
  v58 = *v35;
  if (FeedType.rawValue.getter() == 0x6C656E6E616863 && v36 == 0xE700000000000000)
  {
  }

  else
  {
    v37 = sub_217D89D4C();

    if ((v37 & 1) == 0)
    {
      (*(v19 + 8))(v22, v18);
      sub_217AE010C(v29, v56);
      sub_217B0F0E4(v34, type metadata accessor for FeedViewEvent.Model);
      return;
    }
  }

  v51 = v35;
  v38 = v52;
  sub_217D87A1C();
  v39 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = sub_217B5ABE8(v40 > 1, v41 + 1, 1, v39);
  }

  v43 = v53;
  v42 = v54;
  v39[2] = v41 + 1;
  (*(v43 + 32))(v39 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41, v38, v42);
  v57 = v39;
  v44 = *(v51 + 1);
  v45 = *(v51 + 2);
  v46 = *v51;
  v47 = sub_217D8898C();
  v49 = sub_217B0E3C8(v46, v44, v45, v47, v48);

  sub_217B0E7A0(v49);
  sub_217AE010C(v29, v56);
  (*(v19 + 8))(v22, v18);
  sub_217B0F0E4(v55, type metadata accessor for FeedViewEvent.Model);
}

void sub_217B0EF5C()
{
  if (!qword_2811C8890)
  {
    sub_217B0EFB4();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8890);
    }
  }
}

void sub_217B0EFB4()
{
  if (!qword_2811C88A0)
  {
    type metadata accessor for FeedViewEvent(255);
    sub_217B0F09C(qword_2811C73B0, type metadata accessor for FeedViewEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88A0);
    }
  }
}

unint64_t sub_217B0F048()
{
  result = qword_2811BF780;
  if (!qword_2811BF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF780);
  }

  return result;
}

uint64_t sub_217B0F09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217B0F0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217B0F20C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F3E0);
  __swift_project_value_buffer(v0, qword_27CB9F3E0);
  return sub_217D8866C();
}

uint64_t LiveActivitySubscriptionFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 20);
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0F410()
{
  result = qword_27CB9F400;
  if (!qword_27CB9F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F400);
  }

  return result;
}

unint64_t sub_217B0F464()
{
  result = qword_27CB9F408;
  if (!qword_27CB9F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F408);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 20);
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 24);
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 24);
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.userAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 28);
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0F818()
{
  result = qword_27CB9F418;
  if (!qword_27CB9F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F418);
  }

  return result;
}

unint64_t sub_217B0F86C()
{
  result = qword_27CB9F420;
  if (!qword_27CB9F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F420);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.userAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 28);
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 32);
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0FA70()
{
  result = qword_27CB9F430;
  if (!qword_27CB9F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F430);
  }

  return result;
}

unint64_t sub_217B0FAC4()
{
  result = qword_27CB9F438;
  if (!qword_27CB9F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F438);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 32);
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityDismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 36);
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B0FCC8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217B0FD44()
{
  result = qword_27CB9F448;
  if (!qword_27CB9F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F448);
  }

  return result;
}

unint64_t sub_217B0FD98()
{
  result = qword_27CB9F450;
  if (!qword_27CB9F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F450);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityDismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 36);
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivitySubscriptionFailureEvent(0);
  v5 = v4[5];
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0) + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.userAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityDismissalData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivitySubscriptionFailureEvent.Model.init(eventData:liveActivityData:errorData:userAction:liveActivityOriginationData:liveActivityDismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v20 = a3[1];
  v21 = *a3;
  v11 = *(a3 + 4);
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  v17 = (a7 + v16[5]);
  *v17 = v9;
  v17[1] = v10;
  v18 = a7 + v16[6];
  result = v20;
  *v18 = v21;
  *(v18 + 16) = v20;
  *(v18 + 32) = v11;
  *(a7 + v16[7]) = v12;
  *(a7 + v16[8]) = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

uint64_t sub_217B10438()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6974634172657375;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x746144726F727265;
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

uint64_t sub_217B1050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B11798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B10534(uint64_t a1)
{
  v2 = sub_217B10928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B10570(uint64_t a1)
{
  v2 = sub_217B10928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B10E7C(0, &qword_27CB9F458, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B10928();
  sub_217D89E7C();
  LOBYTE(v20) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v20 = *v13;
    *&v21 = v14;
    v24 = 1;
    sub_217B0F464();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = v15[3];
    v17 = v15[4];
    v20 = *v15;
    v21 = *(v15 + 1);
    v22 = v16;
    v23 = v17;
    v24 = 2;
    sub_217A60BE4();

    sub_217D89CAC();

    LOBYTE(v20) = *(v3 + v12[7]);
    v24 = 3;
    sub_217B0F86C();
    sub_217D89CAC();
    LOBYTE(v20) = *(v3 + v12[8]);
    v24 = 4;
    sub_217B0FAC4();
    sub_217D89C3C();
    LOBYTE(v20) = *(v3 + v12[9]);
    v24 = 5;
    sub_217B0FD98();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B10928()
{
  result = qword_27CB9F460;
  if (!qword_27CB9F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F460);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_217D8899C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B10E7C(0, &qword_27CB9F468, MEMORY[0x277D844C8]);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B10928();
  v30 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  LOBYTE(v31) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v27;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v34 = 1;
  sub_217B0F410();
  sub_217D89BCC();
  v18 = *(&v31 + 1);
  v19 = &v14[v11[5]];
  *v19 = v31;
  *(v19 + 1) = v18;
  v34 = 2;
  sub_217A60B90();
  v27 = 0;
  sub_217D89BCC();
  v20 = v28;
  v21 = v33;
  v22 = &v14[v11[6]];
  v23 = v32;
  *v22 = v31;
  *(v22 + 1) = v23;
  *(v22 + 4) = v21;
  v34 = 3;
  sub_217B0F818();
  sub_217D89BCC();
  v14[v11[7]] = v31;
  v34 = 4;
  sub_217B0FA70();
  sub_217D89B5C();
  v14[v11[8]] = v31;
  v34 = 5;
  sub_217B0FD44();
  sub_217D89B5C();
  (*(v20 + 8))(v30, v29);
  v14[v11[9]] = v31;
  sub_217B10EE0(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B10F44(v14);
}

void sub_217B10E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B10928();
    v7 = a3(a1, &type metadata for LiveActivitySubscriptionFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B10EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B10F44(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B11078@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217B11384()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B0FCC8(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
    if (v1 <= 0x3F)
    {
      sub_217B0FCC8(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
      if (v2 <= 0x3F)
      {
        sub_217B0FCC8(319, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C);
        if (v3 <= 0x3F)
        {
          sub_217B0FCC8(319, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
          if (v4 <= 0x3F)
          {
            sub_217B0FCC8(319, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
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

void sub_217B115A8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F490);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F498);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217B11694()
{
  result = qword_27CB9F4A0;
  if (!qword_27CB9F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4A0);
  }

  return result;
}

unint64_t sub_217B116EC()
{
  result = qword_27CB9F4A8;
  if (!qword_27CB9F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4A8);
  }

  return result;
}

unint64_t sub_217B11744()
{
  result = qword_27CB9F4B0;
  if (!qword_27CB9F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4B0);
  }

  return result;
}

uint64_t sub_217B11798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD900 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCD920 == a2)
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

NewsAnalytics::AggregateStateMode_optional __swiftcall AggregateStateMode.init(rawValue:)(Swift::String rawValue)
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

uint64_t AggregateStateMode.rawValue.getter()
{
  v1 = 0x6C75666574617473;
  if (*v0 != 1)
  {
    v1 = 0x73656C6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x766C6F7365726E75;
  }
}

uint64_t sub_217B11A6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v4 = 0x73656C6574617473;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C75666574617473;
  if (*a2 != 1)
  {
    v8 = 0x73656C6574617473;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766C6F7365726E75;
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

unint64_t sub_217B11B7C()
{
  result = qword_27CB9F4B8;
  if (!qword_27CB9F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4B8);
  }

  return result;
}

uint64_t sub_217B11BD0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B11C7C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B11D14()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B11DC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE800000000000000;
  v5 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v5 = 0x73656C6574617473;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766C6F7365726E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B11EF0()
{
  result = qword_2811C4040;
  if (!qword_2811C4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4040);
  }

  return result;
}

uint64_t sub_217B1200C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F4F0);
  __swift_project_value_buffer(v0, qword_27CB9F4F0);
  return sub_217D8866C();
}

uint64_t GroupLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GroupLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 20);
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 20);
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 28);
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupLoadEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 28);
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.resultActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 32);
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B12660()
{
  result = qword_27CB9F510;
  if (!qword_27CB9F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F510);
  }

  return result;
}

unint64_t sub_217B126B4()
{
  result = qword_27CB9F518;
  if (!qword_27CB9F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F518);
  }

  return result;
}

uint64_t GroupLoadEvent.resultActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 32);
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for GroupLoadEvent(0);
  v5 = Event[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = Event[6];
  sub_217A608E0();
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = Event[7];
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = Event[8];
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GroupLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupLoadEvent.Model(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t sub_217B12AFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t GroupLoadEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupLoadEvent.Model(0) + 28));
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

uint64_t GroupLoadEvent.Model.resultActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GroupLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

__n128 GroupLoadEvent.Model.init(eventData:feedData:timedData:groupData:resultActionData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = *a2;
  v10 = *(a2 + 2);
  v11 = *a5;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for GroupLoadEvent.Model(0);
  v14 = a6 + v13[5];
  *v14 = v22;
  *(v14 + 16) = v10;
  v15 = v13[6];
  v16 = sub_217D889CC();
  (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);
  v17 = a6 + v13[7];
  v18 = *(a4 + 112);
  *(v17 + 96) = *(a4 + 96);
  *(v17 + 112) = v18;
  *(v17 + 128) = *(a4 + 128);
  v19 = *(a4 + 48);
  *(v17 + 32) = *(a4 + 32);
  *(v17 + 48) = v19;
  v20 = *(a4 + 80);
  *(v17 + 64) = *(a4 + 64);
  *(v17 + 80) = v20;
  result = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = result;
  *(a6 + v13[8]) = v11;
  return result;
}

uint64_t sub_217B12D78()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614464656D6974;
  v4 = 0x74614470756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614464656566;
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

uint64_t sub_217B12E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B14194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B12E3C(uint64_t a1)
{
  v2 = sub_217B13290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B12E78(uint64_t a1)
{
  v2 = sub_217B13290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B139CC(0, &qword_27CB9F520, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v29[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B13290();
  sub_217D89E7C();
  LOBYTE(v41) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for GroupLoadEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[1];
    v15 = v13[2];
    *&v41 = *v13;
    *(&v41 + 1) = v14;
    *&v42 = v15;
    LOBYTE(v32) = 1;
    sub_217AD1A68(v41, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v41, *(&v41 + 1), v42);
    v51 = v12;
    v16 = *(v12 + 24);
    v50 = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v17 = v51;
    v18 = (v3 + *(v51 + 28));
    v19 = v18[6];
    v20 = v18[4];
    v46 = v18[5];
    v47 = v19;
    v21 = v18[6];
    v22 = v18[8];
    v48 = v18[7];
    v49 = v22;
    v23 = v18[2];
    v24 = *v18;
    v42 = v18[1];
    v43 = v23;
    v25 = v18[2];
    v26 = v18[4];
    v44 = v18[3];
    v45 = v26;
    v27 = *v18;
    v38 = v21;
    v39 = v48;
    v40 = v18[8];
    v41 = v27;
    v34 = v25;
    v35 = v44;
    v36 = v20;
    v37 = v46;
    v32 = v24;
    v33 = v42;
    v31 = 3;
    sub_217AF7618(&v41, v30);
    sub_217A5D3B4();
    sub_217D89CAC();
    v30[6] = v38;
    v30[7] = v39;
    v30[8] = v40;
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v30[5] = v37;
    v30[0] = v32;
    v30[1] = v33;
    sub_217AF8104(v30);
    v29[15] = *(v3 + *(v17 + 32));
    v29[14] = 4;
    sub_217B126B4();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B13290()
{
  result = qword_27CB9F528;
  if (!qword_27CB9F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F528);
  }

  return result;
}

uint64_t GroupLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v37 = sub_217D889CC();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B139CC(0, &qword_27CB9F530, MEMORY[0x277D844C8]);
  v39 = v9;
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for GroupLoadEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B13290();
  v41 = v12;
  v18 = v54;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v16;
  v21 = v37;
  LOBYTE(v44) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v39;
  sub_217D89BCC();
  (*(v36 + 32))(v20, v40, v6);
  v53 = 1;
  sub_217A5B978();
  sub_217D89B5C();
  v23 = v45;
  v24 = &v20[v13[5]];
  *v24 = v44;
  *(v24 + 2) = v23;
  LOBYTE(v44) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v40 = 0;
  sub_217D89BCC();
  v54 = a1;
  v25 = v20;
  (*(v35 + 32))(&v20[v13[6]], v19, v21);
  v53 = 3;
  sub_217A5D308();
  sub_217D89BCC();
  v26 = v38;
  v27 = (v25 + v13[7]);
  v28 = v51;
  v27[6] = v50;
  v27[7] = v28;
  v27[8] = v52;
  v29 = v47;
  v27[2] = v46;
  v27[3] = v29;
  v30 = v49;
  v27[4] = v48;
  v27[5] = v30;
  v31 = v45;
  *v27 = v44;
  v27[1] = v31;
  v42 = 4;
  sub_217B12660();
  sub_217D89BCC();
  (*(v26 + 8))(v41, v22);
  *(v25 + v13[8]) = v43;
  sub_217B13A30(v25, v34);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_217B13A94(v25);
}

void sub_217B139CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B13290();
    v7 = a3(a1, &type metadata for GroupLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B13A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B13A94(uint64_t a1)
{
  v2 = type metadata accessor for GroupLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B13BC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217A608E0();
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217B13E2C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A60360(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        sub_217A60360(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217A60360(319, &qword_27CB9F508, sub_217B12660, sub_217B126B4);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B13FC8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217AD6554();
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

unint64_t sub_217B14090()
{
  result = qword_27CB9F558;
  if (!qword_27CB9F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F558);
  }

  return result;
}

unint64_t sub_217B140E8()
{
  result = qword_27CB9F560;
  if (!qword_27CB9F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F560);
  }

  return result;
}

unint64_t sub_217B14140()
{
  result = qword_27CB9F568;
  if (!qword_27CB9F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F568);
  }

  return result;
}

uint64_t sub_217B14194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD970 == a2)
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

NewsAnalytics::NotificationStatus_optional __swiftcall NotificationStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t NotificationStatus.rawValue.getter()
{
  v1 = 0x6564726163736964;
  if (*v0 != 1)
  {
    v1 = 0x6465766965636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465766F6D6572;
  }
}

uint64_t sub_217B14418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564726163736964;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6465766965636572;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465766F6D6572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6564726163736964;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6465766965636572;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465766F6D6572;
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

unint64_t sub_217B14528()
{
  result = qword_27CB9F570;
  if (!qword_27CB9F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F570);
  }

  return result;
}

uint64_t sub_217B1457C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B14624()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B146B8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B14768(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6564726163736964;
  if (v2 != 1)
  {
    v5 = 0x6465766965636572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B1488C()
{
  result = qword_27CB9F578;
  if (!qword_27CB9F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F578);
  }

  return result;
}

uint64_t sub_217B149A8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F5B0);
  __swift_project_value_buffer(v0, qword_27CB9F5B0);
  return sub_217D8866C();
}

uint64_t SportsSyncSheetEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSyncSheetEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userSelectionSportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 24);
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B14C9C()
{
  result = qword_27CB9F5D0;
  if (!qword_27CB9F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5D0);
  }

  return result;
}

unint64_t sub_217B14CF0()
{
  result = qword_27CB9F5D8;
  if (!qword_27CB9F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5D8);
  }

  return result;
}

uint64_t SportsSyncSheetEngagementEvent.userSelectionSportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 24);
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 28);
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 28);
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 32);
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B150A4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t SportsSyncSheetEngagementEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 32);
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsSyncSheetEngagementEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_217B1549C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SportsSyncSheetEngagementEvent.Model.userSelectionSportsData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SportsSyncSheetEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSyncSheetEngagementEvent.Model(0) + 28));
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

uint64_t SportsSyncSheetEngagementEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSyncSheetEngagementEvent.Model(0) + 32));
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

uint64_t sub_217B1563C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 SportsSyncSheetEngagementEvent.Model.init(eventData:timedData:userSelectionSportsData:userBundleSubscriptionContextData:campaignData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *(a5 + 32);
  v13 = *(a5 + 40);
  v14 = sub_217D8899C();
  v22 = *(a5 + 16);
  v23 = *a5;
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  v16 = v15[5];
  v17 = sub_217D889CC();
  (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  *(a6 + v15[6]) = v11;
  v18 = a6 + v15[7];
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a4 + 32);
  *(v18 + 48) = *(a4 + 48);
  v20 = a6 + v15[8];
  result = v23;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v12;
  *(v20 + 40) = v13;
  return result;
}

unint64_t sub_217B157B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x6E676961706D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217B15858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B16B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B15880(uint64_t a1)
{
  v2 = sub_217B15CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B158BC(uint64_t a1)
{
  v2 = sub_217B15CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSyncSheetEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B1634C(0, &qword_27CB9F5E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B15CDC();
  sub_217D89E7C();
  LOBYTE(v40[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v40[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v43 = *(v3 + v12[6]);
    v42 = 2;
    sub_217B14CF0();
    sub_217D89CAC();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v40[0] = *v14;
    v40[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v40[2] = v14[2];
    v41 = *(v14 + 48);
    v36 = v17;
    v18 = v14[2];
    v37 = v16;
    v38 = v18;
    v39 = *(v14 + 48);
    v35 = 3;
    sub_217ACC004(v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v19 = (v3 + v12[8]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    v27 = *v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v26[15] = 4;
    sub_217B1563C(v27, v20);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v27, v28);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B15CDC()
{
  result = qword_27CB9F5E8;
  if (!qword_27CB9F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5E8);
  }

  return result;
}

uint64_t sub_217B15D30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SportsSyncSheetEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_217D889CC();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B1634C(0, &qword_27CB9F5F0, MEMORY[0x277D844C8]);
  v38 = v9;
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B15CDC();
  v37 = v12;
  v18 = v39;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v33;
  v21 = v34;
  LOBYTE(v43) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v20 + 32);
  v23 = v16;
  v39 = v6;
  v22(v16, v36);
  LOBYTE(v43) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v32 + 32))(&v16[v13[5]], v19, v21);
  LOBYTE(v40) = 2;
  sub_217B14C9C();
  v36 = 0;
  sub_217D89BCC();
  v16[v13[6]] = v43;
  v48 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v24 = v35;
  v25 = v23 + v13[7];
  v26 = v44;
  *v25 = v43;
  *(v25 + 16) = v26;
  *(v25 + 32) = v45;
  *(v25 + 48) = v46;
  v47 = 4;
  sub_217A66A84();
  sub_217D89B5C();
  (*(v24 + 8))(v37, v38);
  v27 = (v23 + v13[8]);
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v27[2] = v42;
  sub_217B163B0(v23, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B16414(v23);
}

void sub_217B1634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B15CDC();
    v7 = a3(a1, &type metadata for SportsSyncSheetEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B163B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B16414(uint64_t a1)
{
  v2 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B16548@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_217B167A4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B150A4(319, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0);
      if (v2 <= 0x3F)
      {
        sub_217B150A4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217B150A4(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B16940()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217B169F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217B169F4()
{
  if (!qword_2811C7A98)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C7A98);
    }
  }
}

unint64_t sub_217B16A58()
{
  result = qword_27CB9F618;
  if (!qword_27CB9F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F618);
  }

  return result;
}

unint64_t sub_217B16AB0()
{
  result = qword_27CB9F620;
  if (!qword_27CB9F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F620);
  }

  return result;
}

unint64_t sub_217B16B08()
{
  result = qword_27CB9F628;
  if (!qword_27CB9F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F628);
  }

  return result;
}

uint64_t sub_217B16B5C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000017 && 0x8000000217DCD990 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
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

uint64_t sub_217B16DEC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C4C70);
  __swift_project_value_buffer(v0, qword_2811C4C70);
  return sub_217D8866C();
}

uint64_t TagExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TagExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 24);
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 24);
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 28);
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 28);
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 32);
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 32);
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 36);
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B175F0()
{
  result = qword_2811C7C88;
  if (!qword_2811C7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C88);
  }

  return result;
}

unint64_t sub_217B17644()
{
  result = qword_2811C7C90;
  if (!qword_2811C7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C90);
  }

  return result;
}

uint64_t TagExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 36);
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 40);
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 40);
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 44);
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 44);
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 48);
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 48);
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 52);
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 52);
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 56);
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B17F08(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t TagExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 56);
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TagExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217B185D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TagExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TagExposureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TagExposureEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t TagExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TagExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t TagExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 40));
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

uint64_t TagExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 44);
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

uint64_t TagExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t TagExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 52));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[3];
  v8 = v3[5];
  v20 = v3[4];
  v9 = v20;
  v21 = v8;
  v10 = v3[1];
  v11 = v3[3];
  v18 = v3[2];
  v12 = v18;
  v19 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v12;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v10;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t TagExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 TagExposureEvent.Model.init(eventData:timedData:tagData:feedPositionData:viewData:sectionData:userBundleSubscriptionContextData:articleData:feedData:groupData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *a4;
  v45 = *a5;
  v44 = a5[1];
  v42 = *(a4 + 4);
  v43 = *(a5 + 8);
  v48 = *a6;
  v47 = *(a6 + 2);
  v46 = *(a6 + 24);
  v50 = *a10;
  v49 = *(a10 + 2);
  v52 = a12[1];
  v53 = *a12;
  v51 = *(a12 + 16);
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for TagExposureEvent.Model(0);
  v22 = v21[5];
  v23 = sub_217D889CC();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = (a9 + v21[6]);
  *v24 = v17;
  v24[1] = v18;
  v25 = a9 + v21[7];
  *v25 = v19;
  *(v25 + 4) = v42;
  v26 = a9 + v21[8];
  *v26 = v45;
  *(v26 + 8) = v44;
  *(v26 + 16) = v43;
  v27 = a9 + v21[9];
  *v27 = v48;
  *(v27 + 16) = v47;
  *(v27 + 24) = v46;
  v28 = a9 + v21[10];
  v29 = *(a7 + 16);
  *v28 = *a7;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a7 + 32);
  *(v28 + 48) = *(a7 + 48);
  v30 = a9 + v21[11];
  v31 = *(a8 + 48);
  *(v30 + 32) = *(a8 + 32);
  *(v30 + 48) = v31;
  v32 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v32;
  *(v30 + 127) = *(a8 + 127);
  v33 = *(a8 + 112);
  *(v30 + 96) = *(a8 + 96);
  *(v30 + 112) = v33;
  v34 = *(a8 + 80);
  *(v30 + 64) = *(a8 + 64);
  *(v30 + 80) = v34;
  v35 = a9 + v21[12];
  *v35 = v50;
  *(v35 + 16) = v49;
  v36 = a9 + v21[13];
  v37 = *(a11 + 112);
  *(v36 + 96) = *(a11 + 96);
  *(v36 + 112) = v37;
  *(v36 + 128) = *(a11 + 128);
  v38 = *(a11 + 48);
  *(v36 + 32) = *(a11 + 32);
  *(v36 + 48) = v38;
  v39 = *(a11 + 80);
  *(v36 + 64) = *(a11 + 64);
  *(v36 + 80) = v39;
  result = *(a11 + 16);
  *v36 = *a11;
  *(v36 + 16) = result;
  v41 = a9 + v21[14];
  *v41 = v53;
  *(v41 + 8) = v52;
  *(v41 + 16) = v51;
  return result;
}

uint64_t sub_217B18C60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x61746144676174;
    v8 = 0xD000000000000010;
    if (a1 != 3)
    {
      v8 = 0x6174614477656976;
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
    v1 = 0x6174614464656566;
    v2 = 0x74614470756F7267;
    if (a1 != 9)
    {
      v2 = 0x617373696D736964;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x446E6F6974636573;
    v4 = 0xD000000000000021;
    if (a1 != 6)
    {
      v4 = 0x44656C6369747261;
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

uint64_t sub_217B18DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B1AEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B18E10(uint64_t a1)
{
  v2 = sub_217B19680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B18E4C(uint64_t a1)
{
  v2 = sub_217B19680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B1A188(0, &qword_27CB9F630, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v54[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B19680();
  sub_217D89E7C();
  LOBYTE(v69) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for TagExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v69) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    *&v69 = *v14;
    *(&v69 + 1) = v15;
    LOBYTE(v60) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v16 = (v3 + v12[7]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 4);
    LODWORD(v69) = v17;
    BYTE4(v69) = v16;
    LOBYTE(v60) = 3;
    sub_217AD7710();
    sub_217D89C3C();
    v19 = (v3 + v12[8]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    *&v69 = v20;
    *(&v69 + 1) = v21;
    LOWORD(v70) = v19;
    LOBYTE(v60) = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v22 = (v3 + v12[9]);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    LOBYTE(v22) = *(v22 + 24);
    v110 = v23;
    v111 = v24;
    v112 = v25;
    v113 = v22;
    v109 = 5;
    sub_217B17644();

    sub_217D89CAC();

    v26 = (v3 + v12[10]);
    v27 = v26[1];
    v107[0] = *v26;
    v107[1] = v27;
    v29 = *v26;
    v28 = v26[1];
    v107[2] = v26[2];
    v108 = *(v26 + 48);
    v103 = v29;
    v104 = v28;
    v105 = v26[2];
    v106 = *(v26 + 48);
    v102 = 6;
    sub_217ACC004(v107, &v69);
    sub_217A55B98();
    sub_217D89CAC();
    v93[0] = v103;
    v93[1] = v104;
    v93[2] = v105;
    v94 = v106;
    sub_217ACC69C(v93);
    v30 = v3 + v12[11];
    v31 = *(v30 + 96);
    v32 = *(v30 + 64);
    v99 = *(v30 + 80);
    v100 = v31;
    v33 = *(v30 + 96);
    *v101 = *(v30 + 112);
    v34 = *(v30 + 16);
    v35 = *(v30 + 48);
    v96 = *(v30 + 32);
    v97 = v35;
    v36 = *(v30 + 48);
    v98 = *(v30 + 64);
    v37 = *(v30 + 16);
    v95[0] = *v30;
    v95[1] = v37;
    v90 = v99;
    v91 = v33;
    v92[0] = *(v30 + 112);
    v87 = v96;
    v88 = v36;
    v89 = v32;
    *&v101[15] = *(v30 + 127);
    *(v92 + 15) = *(v30 + 127);
    v85 = v95[0];
    v86 = v34;
    v84 = 7;
    sub_217AE38AC(v95, &v69, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v82[5] = v90;
    v82[6] = v91;
    *v83 = v92[0];
    *&v83[15] = *(v92 + 15);
    v82[2] = v87;
    v82[3] = v88;
    v82[4] = v89;
    v82[0] = v85;
    v82[1] = v86;
    sub_217AE4A44(v82, &qword_2811C7DB8);
    v38 = (v3 + v12[12]);
    v39 = v38[1];
    v40 = v38[2];
    v79 = *v38;
    v80 = v39;
    v81 = v40;
    v78 = 8;
    sub_217AD1A68(v79, v39, v40);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v79, v80, v81);
    v41 = (v3 + v12[13]);
    v42 = v41[6];
    v43 = v41[4];
    v74 = v41[5];
    v75 = v42;
    v44 = v41[6];
    v45 = v41[8];
    v76 = v41[7];
    v77 = v45;
    v46 = v41[2];
    v47 = *v41;
    v70 = v41[1];
    v71 = v46;
    v48 = v41[2];
    v49 = v41[4];
    v72 = v41[3];
    v73 = v49;
    v50 = *v41;
    v66 = v44;
    v67 = v76;
    v68 = v41[8];
    v69 = v50;
    v62 = v48;
    v63 = v72;
    v64 = v43;
    v65 = v74;
    v60 = v47;
    v61 = v70;
    v59 = 9;
    sub_217AE38AC(&v69, v58, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v58[7] = v67;
    v58[8] = v68;
    v58[2] = v62;
    v58[3] = v63;
    v58[5] = v65;
    v58[6] = v66;
    v58[4] = v64;
    v58[0] = v60;
    v58[1] = v61;
    sub_217AE4A44(v58, &qword_2811BD178);
    v51 = (v3 + v12[14]);
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v51) = *(v51 + 16);
    v55 = v52;
    v56 = v53;
    v57 = v51;
    v54[7] = 10;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B19680()
{
  result = qword_2811C4C60;
  if (!qword_2811C4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C60);
  }

  return result;
}

uint64_t TagExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_217D889CC();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B1A188(0, &qword_2811BCA60, MEMORY[0x277D844C8]);
  v67 = v10;
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = type metadata accessor for TagExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217B19680();
  v68 = v13;
  v20 = v69;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v21 = v65;
  v60 = v14;
  v69 = v17;
  LOBYTE(v88) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v66;
  sub_217D89BCC();
  v23 = v7;
  v24 = *(v64 + 32);
  v25 = v69;
  v66 = v23;
  v24(v69, v22);
  LOBYTE(v88) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v6;
  v27 = v63;
  sub_217D89BCC();
  v59 = 0;
  v28 = v26;
  v29 = v60;
  (*(v62 + 32))(&v25[v60[5]], v28, v27);
  LOBYTE(v75) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v30 = *(&v88 + 1);
  v31 = &v25[v29[6]];
  *v31 = v88;
  *(v31 + 1) = v30;
  LOBYTE(v75) = 3;
  sub_217AD76BC();
  sub_217D89B5C();
  v32 = BYTE4(v88);
  v33 = &v25[v29[7]];
  *v33 = v88;
  v33[4] = v32;
  LOBYTE(v75) = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v34 = *(&v88 + 1);
  v35 = v89;
  v36 = &v25[v29[8]];
  *v36 = v88;
  *(v36 + 1) = v34;
  *(v36 + 8) = v35;
  LOBYTE(v75) = 5;
  sub_217B175F0();
  sub_217D89BCC();
  v37 = v89;
  v38 = BYTE8(v89);
  v39 = &v25[v29[9]];
  *v39 = v88;
  *(v39 + 2) = v37;
  v39[24] = v38;
  v83 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  v40 = &v25[v29[10]];
  v41 = v85;
  *v40 = v84;
  *(v40 + 1) = v41;
  *(v40 + 2) = v86;
  v40[48] = v87;
  v74 = 7;
  sub_217ACF4D8();
  sub_217D89B5C();
  v42 = &v25[v29[11]];
  v43 = *v82;
  *(v42 + 6) = v81;
  *(v42 + 7) = v43;
  *(v42 + 127) = *&v82[15];
  v44 = v78;
  *(v42 + 2) = v77;
  *(v42 + 3) = v44;
  v45 = v80;
  *(v42 + 4) = v79;
  *(v42 + 5) = v45;
  v46 = v76;
  *v42 = v75;
  *(v42 + 1) = v46;
  LOBYTE(v71) = 8;
  sub_217A5B978();
  sub_217D89B5C();
  v47 = v89;
  v48 = &v69[v60[12]];
  *v48 = v88;
  *(v48 + 2) = v47;
  v73 = 9;
  sub_217A5D308();
  sub_217D89B5C();
  v49 = &v69[v60[13]];
  v50 = v95;
  *(v49 + 6) = v94;
  *(v49 + 7) = v50;
  *(v49 + 8) = v96;
  v51 = v91;
  *(v49 + 2) = v90;
  *(v49 + 3) = v51;
  v52 = v93;
  *(v49 + 4) = v92;
  *(v49 + 5) = v52;
  v53 = v89;
  *v49 = v88;
  *(v49 + 1) = v53;
  v70 = 10;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v21 + 8))(v68, v67);
  v54 = v72;
  v55 = v61;
  v56 = v69;
  v57 = &v69[v60[14]];
  *v57 = v71;
  v57[16] = v54;
  sub_217B1A1EC(v56, v55);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return sub_217B1A250(v56);
}

void sub_217B1A188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B19680();
    v7 = a3(a1, &type metadata for TagExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B1A1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B1A250(uint64_t a1)
{
  v2 = type metadata accessor for TagExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B1A384@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B1A8B8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B17F08(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
      if (v2 <= 0x3F)
      {
        sub_217B17F08(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
        if (v3 <= 0x3F)
        {
          sub_217B17F08(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
          if (v4 <= 0x3F)
          {
            sub_217B17F08(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
            if (v5 <= 0x3F)
            {
              sub_217B17F08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
              if (v6 <= 0x3F)
              {
                sub_217B17F08(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
                if (v7 <= 0x3F)
                {
                  sub_217B17F08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
                  if (v8 <= 0x3F)
                  {
                    sub_217B17F08(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
                    if (v9 <= 0x3F)
                    {
                      sub_217B17F08(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
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

void sub_217B1AC34()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C5238);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7DB8);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7628);
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

unint64_t sub_217B1ADB8()
{
  result = qword_27CB9F638;
  if (!qword_27CB9F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F638);
  }

  return result;
}

unint64_t sub_217B1AE10()
{
  result = qword_2811C4C50;
  if (!qword_2811C4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C50);
  }

  return result;
}

unint64_t sub_217B1AE68()
{
  result = qword_2811C4C58;
  if (!qword_2811C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C58);
  }

  return result;
}

uint64_t sub_217B1AEBC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

NewsAnalytics::AppLaunchTakeoverTriggerResult_optional __swiftcall AppLaunchTakeoverTriggerResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppLaunchTakeoverTriggerResult.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000031;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD00000000000001BLL;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0x664F656369766564;
      break;
    case 0xF:
      result = 0xD000000000000019;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0x52636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B1B4F0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AppLaunchTakeoverTriggerResult.rawValue.getter();
  v4 = v3;
  if (v2 == AppLaunchTakeoverTriggerResult.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217B1B590()
{
  result = qword_27CB9F640;
  if (!qword_27CB9F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F640);
  }

  return result;
}

uint64_t sub_217B1B5E4()
{
  v1 = *v0;
  sub_217D89E1C();
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B1B64C()
{
  v2 = *v0;
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B1B6B0()
{
  v1 = *v0;
  sub_217D89E1C();
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B1B720@<X0>(unint64_t *a1@<X8>)
{
  result = AppLaunchTakeoverTriggerResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchTakeoverTriggerResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLaunchTakeoverTriggerResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B1B948()
{
  result = qword_2811BE1B8;
  if (!qword_2811BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1B8);
  }

  return result;
}

uint64_t ActionMethod.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_217B1BBD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D88EDC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    sub_217B1BC84(a1, v7);
    v10 = (*(v9 + 88))(v7, v8);
    if (v10 != *MEMORY[0x277D6E120])
    {
      if (v10 == *MEMORY[0x277D6E0E0])
      {
        v11 = 3;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E0D8])
      {
        v11 = 2;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E108])
      {
        v11 = 1;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E118])
      {
        v11 = 4;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E110])
      {
        v11 = 5;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E0F8])
      {
        v11 = 6;
        goto LABEL_4;
      }

      if (v10 != *MEMORY[0x277D6E100])
      {
        if (v10 == *MEMORY[0x277D6E0D0])
        {
          v11 = 7;
          goto LABEL_4;
        }

        if (v10 == *MEMORY[0x277D6E128])
        {
          v11 = 8;
          goto LABEL_4;
        }

        (*(v9 + 8))(v7, v8);
      }
    }
  }

  v11 = 0;
LABEL_4:
  result = sub_217B1BC28(a1);
  *a2 = v11;
  return result;
}

void sub_217B1BBD0()
{
  if (!qword_27CB9F648)
  {
    sub_217D88EDC();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F648);
    }
  }
}

uint64_t sub_217B1BC28(uint64_t a1)
{
  sub_217B1BBD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B1BC84(uint64_t a1, uint64_t a2)
{
  sub_217B1BBD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NewsAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewAction.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x656E696C64616568;
      break;
    case 4:
      result = 0x7061546575737369;
      break;
    case 5:
      result = 0x6B6E696C70656564;
      break;
    case 6:
      result = 0x6E6164726F666661;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6976614E72657375;
      break;
    case 9:
      result = 0x61646F4D6E65706FLL;
      break;
    case 0xA:
      result = 0x6369747241636F74;
      break;
    case 0xB:
      result = 0x6163696669746F6ELL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x6154656C7A7A7570;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    case 0x11:
      result = 0x6E65746E49707061;
      break;
    case 0x12:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B1BFA4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ViewAction.rawValue.getter();
  v4 = v3;
  if (v2 == ViewAction.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217B1C044()
{
  result = qword_27CB9F650;
  if (!qword_27CB9F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F650);
  }

  return result;
}

uint64_t sub_217B1C098()
{
  v1 = *v0;
  sub_217D89E1C();
  ViewAction.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B1C100()
{
  v2 = *v0;
  ViewAction.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B1C164()
{
  v1 = *v0;
  sub_217D89E1C();
  ViewAction.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B1C1D4@<X0>(unint64_t *a1@<X8>)
{
  result = ViewAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B1C3FC()
{
  result = qword_2811C7E88;
  if (!qword_2811C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E88);
  }

  return result;
}

uint64_t sub_217B1C4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x8000000217DCD9B0 == a2)
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

uint64_t sub_217B1C540(uint64_t a1)
{
  v2 = sub_217B1C700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B1C57C(uint64_t a1)
{
  v2 = sub_217B1C700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityCountData.encode(to:)(void *a1)
{
  sub_217B1C8D4(0, &qword_2811BC608, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B1C700()
{
  result = qword_2811C0F10;
  if (!qword_2811C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F10);
  }

  return result;
}

uint64_t LiveActivityCountData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B1C8D4(0, &qword_2811BC9A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B1C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B1C700();
    v7 = a3(a1, &type metadata for LiveActivityCountData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B1C93C()
{
  result = qword_2811C0EE8;
  if (!qword_2811C0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EE8);
  }

  return result;
}

unint64_t sub_217B1C994()
{
  result = qword_2811C0EF0;
  if (!qword_2811C0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EF0);
  }

  return result;
}

uint64_t sub_217B1CA00(void *a1)
{
  sub_217B1C8D4(0, &qword_2811BC608, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B1CB6C()
{
  result = qword_27CB9F658;
  if (!qword_27CB9F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F658);
  }

  return result;
}

unint64_t sub_217B1CBC4()
{
  result = qword_2811C0F00;
  if (!qword_2811C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F00);
  }

  return result;
}

unint64_t sub_217B1CC1C()
{
  result = qword_2811C0F08;
  if (!qword_2811C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F08);
  }

  return result;
}

uint64_t sub_217B1CCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_217B1CD44(uint64_t a1)
{
  v2 = sub_217B1CF18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B1CD80(uint64_t a1)
{
  v2 = sub_217B1CF18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadData.encode(to:)(void *a1)
{
  sub_217B1D158(0, &qword_27CB9F660, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1CF18();
  sub_217D89E7C();
  v13 = v9;
  sub_217B1CF6C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B1CF18()
{
  result = qword_27CB9F668;
  if (!qword_27CB9F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F668);
  }

  return result;
}

unint64_t sub_217B1CF6C()
{
  result = qword_27CB9F670;
  if (!qword_27CB9F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F670);
  }

  return result;
}

uint64_t DownloadData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B1D158(0, &qword_27CB9F678, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1CF18();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B1D1BC();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B1D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B1CF18();
    v7 = a3(a1, &type metadata for DownloadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B1D1BC()
{
  result = qword_27CB9F680;
  if (!qword_27CB9F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F680);
  }

  return result;
}

unint64_t sub_217B1D214()
{
  result = qword_2811C7A88;
  if (!qword_2811C7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7A88);
  }

  return result;
}

unint64_t sub_217B1D26C()
{
  result = qword_2811C7A90;
  if (!qword_2811C7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7A90);
  }

  return result;
}

unint64_t sub_217B1D314()
{
  result = qword_27CB9F688;
  if (!qword_27CB9F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F688);
  }

  return result;
}

unint64_t sub_217B1D36C()
{
  result = qword_27CB9F690;
  if (!qword_27CB9F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F690);
  }

  return result;
}

unint64_t sub_217B1D3C4()
{
  result = qword_27CB9F698;
  if (!qword_27CB9F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F698);
  }

  return result;
}

uint64_t sub_217B1D4E0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE868);
  __swift_project_value_buffer(v0, qword_2811BE868);
  return sub_217D8866C();
}

uint64_t SubscribeButtonExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 24);
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 24);
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 28);
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 28);
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 32);
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 32);
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 36);
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 36);
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 40);
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1DE94()
{
  result = qword_2811C7D00;
  if (!qword_2811C7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D00);
  }

  return result;
}

unint64_t sub_217B1DEE8()
{
  result = qword_2811C7D08;
  if (!qword_2811C7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D08);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 40);
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 44);
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 44);
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 48);
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 48);
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 52);
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1E44C()
{
  result = qword_2811C27D8;
  if (!qword_2811C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27D8);
  }

  return result;
}

unint64_t sub_217B1E4A0()
{
  result = qword_2811C27E0;
  if (!qword_2811C27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27E0);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 52);
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 56);
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 56);
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 60);
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 60);
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 64);
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1EA04()
{
  result = qword_2811BEE20;
  if (!qword_2811BEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE20);
  }

  return result;
}

unint64_t sub_217B1EA58()
{
  result = qword_2811BEE28;
  if (!qword_2811BEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE28);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 64);
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 68);
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 68);
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 72);
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 72);
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 76);
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B1EFBC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217B1F038()
{
  result = qword_2811C7F00;
  if (!qword_2811C7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F00);
  }

  return result;
}

unint64_t sub_217B1F08C()
{
  result = qword_2811C7F08;
  if (!qword_2811C7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F08);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 76);
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v33 - 8) + 104))(a1 + v32, v8, v33);
  v34 = v4[19];
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v8, v35);
}

uint64_t sub_217B1F98C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SubscribeButtonExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 24);
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

uint64_t SubscribeButtonExposureEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 28));
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

uint64_t SubscribeButtonExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscribeButtonExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 36));
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

uint64_t SubscribeButtonExposureEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t SubscribeButtonExposureEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 44));
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

uint64_t SubscribeButtonExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 56);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscribeButtonExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonExposureEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t SubscribeButtonExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 68);
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

uint64_t SubscribeButtonExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 72));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0);
}

uint64_t SubscribeButtonExposureEvent.Model.recipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 76));
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

__n128 SubscribeButtonExposureEvent.Model.init(eventData:timedData:articleData:channelData:feedData:groupData:paywallData:issueData:purchaseData:purchaseSessionData:sectionData:viewData:subscribeButtonContextData:userBundleSubscriptionContextData:puzzleData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, __int16 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  v56 = *a5;
  v54 = *(a4 + 4);
  v55 = *(a5 + 2);
  v61 = a10[1];
  v62 = *a10;
  v59 = *a7;
  v60 = *(a10 + 16);
  v63 = a11[1];
  v64 = *a11;
  v67 = *a12;
  v66 = *(a12 + 2);
  v65 = *(a12 + 24);
  v69 = a13[1];
  v70 = *a13;
  v68 = *(a13 + 8);
  v71 = *a14;
  v74 = *(a17 + 32);
  v24 = sub_217D8899C();
  v72 = *(a17 + 16);
  v73 = *a17;
  v57 = a8[1];
  v58 = *a8;
  v52 = a4[1];
  v53 = *a4;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 48);
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = v29;
  v30 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v30;
  *(v28 + 127) = *(a3 + 127);
  v31 = *(a3 + 112);
  *(v28 + 96) = *(a3 + 96);
  *(v28 + 112) = v31;
  v32 = *(a3 + 80);
  *(v28 + 64) = *(a3 + 64);
  *(v28 + 80) = v32;
  v33 = a9 + v25[7];
  *v33 = v53;
  *(v33 + 16) = v52;
  *(v33 + 32) = v54;
  v34 = a9 + v25[8];
  *v34 = v56;
  *(v34 + 16) = v55;
  v35 = (a9 + v25[9]);
  v36 = a6[7];
  v35[6] = a6[6];
  v35[7] = v36;
  v35[8] = a6[8];
  v37 = a6[3];
  v35[2] = a6[2];
  v35[3] = v37;
  v38 = a6[5];
  v35[4] = a6[4];
  v35[5] = v38;
  v39 = a6[1];
  *v35 = *a6;
  v35[1] = v39;
  *(a9 + v25[10]) = v59;
  v40 = (a9 + v25[11]);
  *v40 = v58;
  v40[1] = v57;
  v41 = a9 + v25[12];
  *v41 = v62;
  *(v41 + 8) = v61;
  *(v41 + 16) = v60;
  v42 = (a9 + v25[13]);
  *v42 = v64;
  v42[1] = v63;
  v43 = a9 + v25[14];
  *v43 = v67;
  *(v43 + 16) = v66;
  *(v43 + 24) = v65;
  v44 = a9 + v25[15];
  *v44 = v70;
  *(v44 + 8) = v69;
  *(v44 + 16) = v68;
  *(a9 + v25[16]) = v71;
  v45 = a9 + v25[17];
  *(v45 + 48) = *(a15 + 48);
  v46 = *(a15 + 32);
  *(v45 + 16) = *(a15 + 16);
  *(v45 + 32) = v46;
  *v45 = *a15;
  v47 = (a9 + v25[18]);
  v48 = a16[4];
  v47[3] = a16[3];
  v47[4] = v48;
  v49 = a16[2];
  v47[1] = a16[1];
  v47[2] = v49;
  *v47 = *a16;
  v50 = a9 + v25[19];
  result = v73;
  *v50 = v73;
  *(v50 + 16) = v72;
  *(v50 + 32) = v74;
  return result;
}

uint64_t sub_217B20238(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x44656C6369747261;
    case 3:
      v5 = 0x656E6E616863;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 4:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 5:
      return 0x74614470756F7267;
    case 6:
      v5 = 0x6C6177796170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 7:
      return 0x7461446575737369;
    case 8:
      return 0x6573616863727570;
    case 9:
      return 0xD000000000000013;
    case 10:
      return 0x446E6F6974636573;
    case 11:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 12:
      return 0xD00000000000001ALL;
    case 13:
      return 0xD000000000000021;
    case 14:
      v3 = 0x656C7A7A7570;
      goto LABEL_11;
    case 15:
      v3 = 0x657069636572;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B203E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B23158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B20418(uint64_t a1)
{
  v2 = sub_217B20F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B20454(uint64_t a1)
{
  v2 = sub_217B20F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B21E4C(0, &qword_27CB9F6A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v71[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B20F3C();
  sub_217D89E7C();
  LOBYTE(v109) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
    v13 = *(v12 + 20);
    v140 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v141 = v12;
    v14 = v3 + *(v12 + 24);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v137 = *(v14 + 80);
    v138 = v15;
    v17 = *(v14 + 96);
    *v139 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v134 = *(v14 + 32);
    v135 = v19;
    v20 = *(v14 + 48);
    v136 = *(v14 + 64);
    v21 = *(v14 + 16);
    v133[0] = *v14;
    v133[1] = v21;
    v130 = v137;
    v131 = v17;
    v132[0] = *(v14 + 112);
    v127 = v134;
    v128 = v20;
    v129 = v16;
    *&v139[15] = *(v14 + 127);
    *(v132 + 15) = *(v14 + 127);
    v125 = v133[0];
    v126 = v18;
    v124 = 2;
    sub_217AE38AC(v133, &v109, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v122[5] = v130;
    v122[6] = v131;
    *v123 = v132[0];
    *&v123[15] = *(v132 + 15);
    v122[2] = v127;
    v122[3] = v128;
    v122[4] = v129;
    v122[0] = v125;
    v122[1] = v126;
    sub_217AE4A44(v122, &qword_2811C7DB8);
    v22 = v141;
    v23 = (v3 + v141[7]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    *&v109 = *v23;
    *(&v109 + 1) = v24;
    *&v110 = v25;
    *(&v110 + 1) = v26;
    *&v111 = v27;
    LOBYTE(v100) = 3;
    sub_217AD86BC(v109, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v109, *(&v109 + 1));
    v28 = (v3 + v22[8]);
    v29 = v28[1];
    v30 = v28[2];
    v119 = *v28;
    v120 = v29;
    v121 = v30;
    v118 = 4;
    sub_217AD1A68(v119, v29, v30);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v119, v120, v121);
    v31 = (v3 + v22[9]);
    v32 = v31[6];
    v33 = v31[4];
    v114 = v31[5];
    v115 = v32;
    v34 = v31[6];
    v35 = v31[8];
    v116 = v31[7];
    v117 = v35;
    v36 = v31[2];
    v37 = *v31;
    v110 = v31[1];
    v111 = v36;
    v38 = v31[2];
    v39 = v31[4];
    v112 = v31[3];
    v113 = v39;
    v40 = *v31;
    v106 = v34;
    v107 = v116;
    v108 = v31[8];
    v109 = v40;
    v102 = v38;
    v103 = v112;
    v104 = v33;
    v105 = v114;
    v100 = v37;
    v101 = v110;
    v99 = 5;
    sub_217AE38AC(&v109, v98, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v98[6] = v106;
    v98[7] = v107;
    v98[8] = v108;
    v98[2] = v102;
    v98[3] = v103;
    v98[4] = v104;
    v98[5] = v105;
    v98[0] = v100;
    v98[1] = v101;
    sub_217AE4A44(v98, &qword_2811BD178);
    LOWORD(v86[0]) = *(v3 + v22[10]);
    LOBYTE(v79) = 6;
    sub_217B1DEE8();
    sub_217D89C3C();
    v41 = (v3 + v22[11]);
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    *&v86[0] = *v41;
    *(&v86[0] + 1) = v42;
    *&v86[1] = v43;
    *(&v86[1] + 1) = v44;
    LOBYTE(v79) = 7;
    sub_217AE39D0(*&v86[0], v42);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v86[0], *(&v86[0] + 1));
    v45 = (v3 + v22[12]);
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v45) = *(v45 + 16);
    *&v86[0] = v46;
    *(&v86[0] + 1) = v47;
    LOBYTE(v86[1]) = v45;
    LOBYTE(v79) = 8;
    sub_217AFF378();

    sub_217D89CAC();

    v48 = (v3 + v22[13]);
    v49 = v48[1];
    *&v86[0] = *v48;
    *(&v86[0] + 1) = v49;
    LOBYTE(v79) = 9;
    sub_217B1E4A0();

    sub_217D89CAC();

    v51 = v3 + v22[14];
    v52 = *(v51 + 24);
    *&v86[0] = *v51;
    *(v86 + 8) = *(v51 + 8);
    BYTE8(v86[1]) = v52;
    LOBYTE(v79) = 10;
    sub_217B17644();

    sub_217D89C3C();

    v53 = (v3 + v141[15]);
    v54 = *v53;
    v55 = v53[1];
    LOWORD(v53) = *(v53 + 8);
    *&v86[0] = v54;
    *(&v86[0] + 1) = v55;
    LOWORD(v86[1]) = v53;
    LOBYTE(v79) = 11;
    sub_217A5E790();

    sub_217D89CAC();

    v97 = *(v3 + v141[16]);
    v96 = 12;
    sub_217B1EA58();
    sub_217D89CAC();
    v56 = (v3 + v141[17]);
    v57 = v56[1];
    v94[0] = *v56;
    v94[1] = v57;
    v59 = *v56;
    v58 = v56[1];
    v94[2] = v56[2];
    v95 = *(v56 + 48);
    v90 = v59;
    v91 = v58;
    v92 = v56[2];
    v93 = *(v56 + 48);
    v89 = 13;
    sub_217ACC004(v94, v86);
    sub_217A55B98();
    sub_217D89CAC();
    v84[0] = v90;
    v84[1] = v91;
    v84[2] = v92;
    v85 = v93;
    sub_217ACC69C(v84);
    v60 = (v3 + v141[18]);
    v61 = v60[4];
    v62 = v60[1];
    v63 = v60[2];
    v87 = v60[3];
    v88 = v61;
    v64 = *v60;
    v65 = *v60;
    v86[1] = v60[1];
    v86[2] = v63;
    v86[0] = v64;
    v81 = v63;
    v82 = v87;
    v83 = v60[4];
    v79 = v65;
    v80 = v62;
    v78 = 14;
    sub_217AE38AC(v86, v77, &qword_27CB9F6A0);
    sub_217AD6D08();
    sub_217D89C3C();
    v77[2] = v81;
    v77[3] = v82;
    v77[4] = v83;
    v77[0] = v79;
    v77[1] = v80;
    sub_217AE4A44(v77, &qword_27CB9F6A0);
    v66 = (v3 + v141[19]);
    v67 = v66[1];
    v68 = v66[2];
    v69 = v66[3];
    v70 = v66[4];
    v72 = *v66;
    v73 = v67;
    v74 = v68;
    v75 = v69;
    v76 = v70;
    v71[7] = 15;
    sub_217AD86BC(v72, v67);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v72, v73);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B20F3C()
{
  result = qword_27CB9F6B0;
  if (!qword_27CB9F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6B0);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v72 = sub_217D889CC();
  v70 = *(v72 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B21E4C(0, &qword_27CB9F6B8, MEMORY[0x277D844C8]);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - v11;
  v13 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217B20F3C();
  v76 = v12;
  v19 = v77;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

  v68 = v13;
  v77 = v16;
  LOBYTE(v103) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v73;
  sub_217D89BCC();
  v21 = v6;
  v22 = *(v71 + 32);
  v23 = v77;
  v73 = v21;
  v22(v77, v20);
  LOBYTE(v103) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v24 = v5;
  v25 = v72;
  sub_217D89BCC();
  v67[2] = 0;
  v26 = v24;
  v27 = v68;
  (*(v70 + 32))(&v23[v68[5]], v26, v25);
  v94 = 2;
  sub_217ACF4D8();
  sub_217D89B5C();
  v28 = &v23[v27[6]];
  v29 = v100;
  v30 = *v102;
  *(v28 + 6) = v101;
  *(v28 + 7) = v30;
  *(v28 + 127) = *&v102[15];
  v31 = v96;
  v32 = v98;
  *(v28 + 2) = v97;
  *(v28 + 3) = v32;
  *(v28 + 4) = v99;
  *(v28 + 5) = v29;
  *v28 = v95;
  *(v28 + 1) = v31;
  LOBYTE(v83) = 3;
  sub_217AD07F8();
  sub_217D89B5C();
  v33 = v105;
  v34 = &v23[v27[7]];
  v35 = v104;
  *v34 = v103;
  *(v34 + 1) = v35;
  *(v34 + 4) = v33;
  LOBYTE(v83) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v36 = v104;
  v37 = &v23[v27[8]];
  *v37 = v103;
  *(v37 + 2) = v36;
  v93 = 5;
  sub_217A5D308();
  sub_217D89B5C();
  v38 = &v23[v27[9]];
  v39 = v110;
  *(v38 + 6) = v109;
  *(v38 + 7) = v39;
  *(v38 + 8) = v111;
  v40 = v106;
  *(v38 + 2) = v105;
  *(v38 + 3) = v40;
  v41 = v108;
  *(v38 + 4) = v107;
  *(v38 + 5) = v41;
  v42 = v104;
  *v38 = v103;
  *(v38 + 1) = v42;
  LOBYTE(v89) = 6;
  sub_217B1DE94();
  sub_217D89B5C();
  *&v23[v27[10]] = v83;
  LOBYTE(v89) = 7;
  sub_217ACFF40();
  sub_217D89B5C();
  v43 = &v23[v27[11]];
  v44 = v84;
  *v43 = v83;
  *(v43 + 1) = v44;
  LOBYTE(v89) = 8;
  sub_217AFF324();
  sub_217D89BCC();
  v45 = *(&v83 + 1);
  v46 = v84;
  v47 = &v77[v68[12]];
  *v47 = v83;
  *(v47 + 1) = v45;
  v47[16] = v46;
  LOBYTE(v89) = 9;
  sub_217B1E44C();
  sub_217D89BCC();
  v48 = *(&v83 + 1);
  v49 = &v77[v68[13]];
  *v49 = v83;
  *(v49 + 1) = v48;
  LOBYTE(v89) = 10;
  sub_217B175F0();
  sub_217D89B5C();
  v50 = v84;
  v51 = BYTE8(v84);
  v52 = &v77[v68[14]];
  *v52 = v83;
  *(v52 + 2) = v50;
  v52[24] = v51;
  LOBYTE(v89) = 11;
  sub_217A5E738();
  sub_217D89BCC();
  v53 = *(&v83 + 1);
  v54 = v84;
  v55 = &v77[v68[15]];
  *v55 = v83;
  *(v55 + 1) = v53;
  *(v55 + 8) = v54;
  LOBYTE(v89) = 12;
  sub_217B1EA04();
  sub_217D89BCC();
  *&v77[v68[16]] = v83;
  v88 = 13;
  sub_217A54D08();
  sub_217D89BCC();
  v56 = &v77[v68[17]];
  v57 = v90;
  *v56 = v89;
  *(v56 + 1) = v57;
  *(v56 + 2) = v91;
  v56[48] = v92;
  v82 = 14;
  sub_217AD6CB4();
  sub_217D89B5C();
  v58 = &v77[v68[18]];
  v59 = v86;
  *(v58 + 2) = v85;
  *(v58 + 3) = v59;
  *(v58 + 4) = v87;
  v60 = v84;
  *v58 = v83;
  *(v58 + 1) = v60;
  v78 = 15;
  sub_217B1F038();
  sub_217D89B5C();
  (*(v74 + 8))(v76, v75);
  v61 = v81;
  v62 = v69;
  v63 = v77;
  v64 = &v77[v68[19]];
  v65 = v80;
  *v64 = v79;
  *(v64 + 1) = v65;
  *(v64 + 4) = v61;
  sub_217B21EB0(v63, v62);
  __swift_destroy_boxed_opaque_existential_1(v112);
  return sub_217B21F14(v63);
}

void sub_217B21E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B20F3C();
    v7 = a3(a1, &type metadata for SubscribeButtonExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B21EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B21F14(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B22048@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v34 - 8) + 104))(a2 + v33, v9, v34);
  v35 = a1[19];
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v9, v36);
}

void sub_217B227D4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B1EFBC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217B1EFBC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217B1EFBC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217B1EFBC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
            if (v5 <= 0x3F)
            {
              sub_217B1EFBC(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
              if (v6 <= 0x3F)
              {
                sub_217B1EFBC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217B1EFBC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
                  if (v8 <= 0x3F)
                  {
                    sub_217B1EFBC(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                    if (v9 <= 0x3F)
                    {
                      sub_217B1EFBC(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
                      if (v10 <= 0x3F)
                      {
                        sub_217B1EFBC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                        if (v11 <= 0x3F)
                        {
                          sub_217B1EFBC(319, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
                          if (v12 <= 0x3F)
                          {
                            sub_217B1EFBC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                            if (v13 <= 0x3F)
                            {
                              sub_217B1EFBC(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
                              if (v14 <= 0x3F)
                              {
                                sub_217B1EFBC(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

void sub_217B22CE0()
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
        sub_217A5E974(319, &qword_2811C7D70);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7CF8);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BD110);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811C7C80);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CB9F6A0);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C7EF8);
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

uint64_t getEnumTagSinglePayload for SubscribeButtonExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B23054()
{
  result = qword_27CB9F6D0;
  if (!qword_27CB9F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6D0);
  }

  return result;
}

unint64_t sub_217B230AC()
{
  result = qword_27CB9F6D8;
  if (!qword_27CB9F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6D8);
  }

  return result;
}

unint64_t sub_217B23104()
{
  result = qword_27CB9F6E0;
  if (!qword_27CB9F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6E0);
  }

  return result;
}

uint64_t sub_217B23158(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD9F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
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

uint64_t RecentSearchListData.recentSearch.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B236E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6553746E65636572 && a2 == 0xEC00000068637261)
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

uint64_t sub_217B23774(uint64_t a1)
{
  v2 = sub_217B23994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B237B0(uint64_t a1)
{
  v2 = sub_217B23994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearchListData.encode(to:)(void *a1)
{
  sub_217B23C5C(0, &qword_27CB9F6E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B23994();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217B239E8();
  sub_217B23CC0(&qword_27CB9F700, sub_217B23A38);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B23994()
{
  result = qword_27CB9F6F0;
  if (!qword_27CB9F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6F0);
  }

  return result;
}

void sub_217B239E8()
{
  if (!qword_27CB9F6F8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F6F8);
    }
  }
}

unint64_t sub_217B23A38()
{
  result = qword_2811C7EE0;
  if (!qword_2811C7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EE0);
  }

  return result;
}

uint64_t RecentSearchListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217B23C5C(0, &qword_27CB9F708, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B23994();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B239E8();
    sub_217B23CC0(&qword_27CB9F710, sub_217B23D2C);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B23C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B23994();
    v7 = a3(a1, &type metadata for RecentSearchListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B23CC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217B239E8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B23D2C()
{
  result = qword_2811C7ED8;
  if (!qword_2811C7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7ED8);
  }

  return result;
}

unint64_t sub_217B23D84()
{
  result = qword_27CB9F718;
  if (!qword_27CB9F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F718);
  }

  return result;
}

unint64_t sub_217B23DDC()
{
  result = qword_27CB9F720;
  if (!qword_27CB9F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F720);
  }

  return result;
}

unint64_t sub_217B23E84()
{
  result = qword_27CB9F728;
  if (!qword_27CB9F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F728);
  }

  return result;
}

unint64_t sub_217B23EDC()
{
  result = qword_27CB9F730;
  if (!qword_27CB9F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F730);
  }

  return result;
}

unint64_t sub_217B23F34()
{
  result = qword_27CB9F738;
  if (!qword_27CB9F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F738);
  }

  return result;
}

NewsAnalytics::GalleryType_optional __swiftcall GalleryType.init(rawValue:)(Swift::String rawValue)
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

uint64_t GalleryType.rawValue.getter()
{
  v1 = 0x636961736F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7069727473;
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

uint64_t sub_217B24038(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v4 = 0x7069727473;
    v3 = 0xE500000000000000;
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
  v8 = 0x636961736F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x7069727473;
    v7 = 0xE500000000000000;
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

unint64_t sub_217B24130()
{
  result = qword_27CB9F740;
  if (!qword_27CB9F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F740);
  }

  return result;
}

uint64_t sub_217B24184()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B24220()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B242A8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B2434C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v5 = 0x7069727473;
    v4 = 0xE500000000000000;
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

unint64_t sub_217B24464()
{
  result = qword_2811C7D28;
  if (!qword_2811C7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D28);
  }

  return result;
}

uint64_t sub_217B24580()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F778);
  __swift_project_value_buffer(v0, qword_27CB9F778);
  return sub_217D8866C();
}

uint64_t AppleIdSignInEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppleIdSignInEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 20);
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B24784()
{
  result = qword_2811C7EE8;
  if (!qword_2811C7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EE8);
  }

  return result;
}

unint64_t sub_217B247D8()
{
  result = qword_2811C7EF0;
  if (!qword_2811C7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EF0);
  }

  return result;
}

uint64_t AppleIdSignInEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 20);
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 24);
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 24);
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 28);
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 28);
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 32);
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 32);
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 36);
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B24EEC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t AppleIdSignInEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 36);
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppleIdSignInEvent(0);
  v5 = v4[5];
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t AppleIdSignInEvent.Model.resultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppleIdSignInEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppleIdSignInEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppleIdSignInEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppleIdSignInEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AppleIdSignInEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AppleIdSignInEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 36));
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

__n128 AppleIdSignInEvent.Model.init(eventData:resultData:paywallData:purchaseData:purchaseSessionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *a5;
  v16 = a5[1];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for AppleIdSignInEvent.Model(0);
  *(a7 + v18[5]) = v10;
  *(a7 + v18[6]) = v11;
  v19 = a7 + v18[7];
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  v20 = (a7 + v18[8]);
  *v20 = v15;
  v20[1] = v16;
  v21 = a7 + v18[9];
  v22 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v22;
  result = *(a6 + 32);
  *(v21 + 32) = result;
  *(v21 + 48) = *(a6 + 48);
  return result;
}

uint64_t sub_217B255E4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6573616863727570;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6144746C75736572;
  if (v1 != 1)
  {
    v5 = 0x446C6C6177796170;
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

uint64_t sub_217B256BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B26970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B256E4(uint64_t a1)
{
  v2 = sub_217B25AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B25720(uint64_t a1)
{
  v2 = sub_217B25AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppleIdSignInEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B26030(0, &qword_27CB9F790, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B25AF8();
  sub_217D89E7C();
  LOBYTE(v29) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppleIdSignInEvent.Model(0);
    LOBYTE(v29) = *(v3 + v12[5]);
    LOBYTE(v25) = 1;
    sub_217B247D8();
    sub_217D89CAC();
    LOWORD(v29) = *(v3 + v12[6]);
    LOBYTE(v25) = 2;
    sub_217B1DEE8();
    sub_217D89C3C();
    v13 = (v3 + v12[7]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v13) = *(v13 + 16);
    *&v29 = v14;
    *(&v29 + 1) = v15;
    LOBYTE(v30) = v13;
    LOBYTE(v25) = 3;
    sub_217AFF378();

    sub_217D89C3C();

    v16 = (v3 + v12[8]);
    v17 = v16[1];
    v33 = *v16;
    v34 = v17;
    v36 = 4;
    sub_217B1E4A0();

    sub_217D89C3C();

    v18 = (v3 + v12[9]);
    v19 = v18[1];
    v29 = *v18;
    v30 = v19;
    v21 = *v18;
    v20 = v18[1];
    v31 = v18[2];
    v32 = *(v18 + 48);
    v25 = v21;
    v26 = v20;
    v27 = v18[2];
    v28 = *(v18 + 48);
    v35 = 5;
    sub_217ACC004(&v29, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_217ACC69C(v23);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B25AF8()
{
  result = qword_27CB9F798;
  if (!qword_27CB9F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F798);
  }

  return result;
}

uint64_t AppleIdSignInEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B26030(0, &qword_27CB9F7A0, MEMORY[0x277D844C8]);
  v30 = v7;
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppleIdSignInEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B25AF8();
  v29 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v18 = v26;
  v17 = v27;
  LOBYTE(v31) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v28;
  sub_217D89BCC();
  (*(v17 + 32))(v16, v19, v4);
  v35 = 1;
  sub_217B24784();
  sub_217D89BCC();
  *(v16 + v11[5]) = v31;
  v35 = 2;
  sub_217B1DE94();
  sub_217D89B5C();
  *(v16 + v11[6]) = v31;
  v35 = 3;
  sub_217AFF324();
  sub_217D89B5C();
  v20 = v32;
  v21 = v16 + v11[7];
  *v21 = v31;
  *(v21 + 16) = v20;
  v35 = 4;
  sub_217B1E44C();
  sub_217D89B5C();
  *(v16 + v11[8]) = v31;
  v35 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v18 + 8))(v29, v30);
  v22 = v16 + v11[9];
  v23 = v32;
  *v22 = v31;
  *(v22 + 16) = v23;
  *(v22 + 32) = v33;
  *(v22 + 48) = v34;
  sub_217B26094(v16, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B260F8(v16);
}

void sub_217B26030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B25AF8();
    v7 = a3(a1, &type metadata for AppleIdSignInEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B26094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIdSignInEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B260F8(uint64_t a1)
{
  v2 = type metadata accessor for AppleIdSignInEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B2622C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217B26540()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B24EEC(319, &qword_2811C8818, sub_217B24784, sub_217B247D8);
    if (v1 <= 0x3F)
    {
      sub_217B24EEC(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
      if (v2 <= 0x3F)
      {
        sub_217B24EEC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
        if (v3 <= 0x3F)
        {
          sub_217B24EEC(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
          if (v4 <= 0x3F)
          {
            sub_217B24EEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
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

void sub_217B26764()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7CF8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F108);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F7C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217B2686C()
{
  result = qword_27CB9F7D0;
  if (!qword_27CB9F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7D0);
  }

  return result;
}

unint64_t sub_217B268C4()
{
  result = qword_27CB9F7D8;
  if (!qword_27CB9F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7D8);
  }

  return result;
}

unint64_t sub_217B2691C()
{
  result = qword_27CB9F7E0;
  if (!qword_27CB9F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7E0);
  }

  return result;
}

uint64_t sub_217B26970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

id FCBundleSubscriptionManagerType.bundleContainsChannel(_:)(void *a1)
{
  v3 = [v1 cachedSubscription];
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_217D8954C();
    v4 = sub_217D8951C();
  }

  v5 = [v3 containsTagID_];

  return v5;
}

uint64_t sub_217B26CF8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F818);
  __swift_project_value_buffer(v0, qword_27CB9F818);
  return sub_217D8866C();
}

uint64_t ListenSheetEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ListenSheetEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 24);
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 24);
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 28);
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 28);
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 32);
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 32);
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 36);
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 36);
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 40);
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 40);
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 44);
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 44);
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 48);
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 48);
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.listenSheetActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 52);
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B27BBC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217B27C38()
{
  result = qword_27CB9F838;
  if (!qword_27CB9F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F838);
  }

  return result;
}

unint64_t sub_217B27C8C()
{
  result = qword_27CB9F840;
  if (!qword_27CB9F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F840);
  }

  return result;
}

uint64_t ListenSheetEvent.listenSheetActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 52);
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ListenSheetEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t sub_217B282BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ListenSheetEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 24);
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

uint64_t ListenSheetEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 28);
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

uint64_t ListenSheetEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 32));
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

uint64_t ListenSheetEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ListenSheetEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 40));
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

uint64_t ListenSheetEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 44));
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

uint64_t ListenSheetEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ListenSheetEvent.Model.listenSheetActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListenSheetEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 ListenSheetEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:userBundleSubscriptionContextData:issueData:issueViewData:listenSheetActionData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, char *a11)
{
  v18 = *a4;
  v19 = a4[1];
  v20 = *(a4 + 16);
  v44 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v48 = *a6;
  v47 = *(a6 + 2);
  v50 = *a10;
  v49 = a10[1];
  v51 = *a11;
  v21 = sub_217D8899C();
  v45 = a8[1];
  v46 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ListenSheetEvent.Model(0);
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
  *v30 = v18;
  *(v30 + 8) = v19;
  *(v30 + 16) = v20;
  *(v30 + 17) = v44;
  *(v30 + 24) = v43;
  *(v30 + 32) = v42;
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
  *v36 = v48;
  *(v36 + 16) = v47;
  v37 = a9 + v22[10];
  v38 = *(a7 + 16);
  *v37 = *a7;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a7 + 32);
  *(v37 + 48) = *(a7 + 48);
  v39 = (a9 + v22[11]);
  result = v46;
  *v39 = v46;
  v39[1] = v45;
  v41 = (a9 + v22[12]);
  *v41 = v50;
  v41[1] = v49;
  *(a9 + v22[13]) = v51;
  return result;
}

unint64_t sub_217B288A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6569566575737369;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614464656566;
    if (a1 != 5)
    {
      v7 = 0xD000000000000021;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x44656C6369747261;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_217B28A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B2AA24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B28A34(uint64_t a1)
{
  v2 = sub_217B291F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B28A70(uint64_t a1)
{
  v2 = sub_217B291F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ListenSheetEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B29C9C(0, &qword_27CB9F848, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v53 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B291F8();
  sub_217D89E7C();
  LOBYTE(v83) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ListenSheetEvent.Model(0);
    v13 = *(v12 + 20);
    v117 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v118 = v12;
    v14 = v3 + *(v12 + 24);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v114 = *(v14 + 80);
    v115 = v15;
    v17 = *(v14 + 96);
    *v116 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v111 = *(v14 + 32);
    v112 = v19;
    v20 = *(v14 + 48);
    v113 = *(v14 + 64);
    v21 = *(v14 + 16);
    v110[0] = *v14;
    v110[1] = v21;
    v107 = v114;
    v108 = v17;
    v109[0] = *(v14 + 112);
    v104 = v111;
    v105 = v20;
    v106 = v16;
    *&v116[15] = *(v14 + 127);
    *(v109 + 15) = *(v14 + 127);
    v102 = v110[0];
    v103 = v18;
    v101 = 2;
    sub_217AD1630(v110, &v83);
    sub_217ACF52C();
    sub_217D89CAC();
    v99[5] = v107;
    v99[6] = v108;
    *v100 = v109[0];
    *&v100[15] = *(v109 + 15);
    v99[2] = v104;
    v99[3] = v105;
    v99[4] = v106;
    v99[0] = v102;
    v99[1] = v103;
    sub_217AD2864(v99);
    v22 = (v3 + v118[7]);
    v23 = v22[1];
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = v22[3];
    v27 = v22[4];
    v93 = *v22;
    v94 = v23;
    v95 = v24;
    v96 = v25;
    v97 = v26;
    v98 = v27;
    v92 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v28 = v118;
    v29 = (v3 + v118[8]);
    v30 = v29[6];
    v31 = v29[4];
    v88 = v29[5];
    v89 = v30;
    v32 = v29[6];
    v33 = v29[8];
    v90 = v29[7];
    v91 = v33;
    v34 = v29[2];
    v35 = *v29;
    v84 = v29[1];
    v85 = v34;
    v36 = v29[2];
    v37 = v29[4];
    v86 = v29[3];
    v87 = v37;
    v38 = *v29;
    v80 = v32;
    v81 = v90;
    v82 = v29[8];
    v83 = v38;
    v76 = v36;
    v77 = v86;
    v78 = v31;
    v79 = v88;
    v74 = v35;
    v75 = v84;
    v73 = 4;
    sub_217AD87FC(&v83, v72);
    sub_217A5D3B4();
    sub_217D89C3C();
    v72[6] = v80;
    v72[7] = v81;
    v72[8] = v82;
    v72[2] = v76;
    v72[3] = v77;
    v72[4] = v78;
    v72[5] = v79;
    v72[0] = v74;
    v72[1] = v75;
    sub_217AD96E8(v72);
    v39 = (v3 + v28[9]);
    v40 = v39[1];
    v41 = v39[2];
    v69 = *v39;
    v70 = v40;
    v71 = v41;
    v68 = 5;
    sub_217AD1A68(v69, v40, v41);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v69, v70, v71);
    v42 = (v3 + v28[10]);
    v43 = v42[1];
    v66[0] = *v42;
    v66[1] = v43;
    v45 = *v42;
    v44 = v42[1];
    v66[2] = v42[2];
    v67 = *(v42 + 48);
    v62 = v45;
    v63 = v44;
    v64 = v42[2];
    v65 = *(v42 + 48);
    v61 = 6;
    sub_217ACC004(v66, v59);
    sub_217A55B98();
    sub_217D89CAC();
    v59[0] = v62;
    v59[1] = v63;
    v59[2] = v64;
    v60 = v65;
    sub_217ACC69C(v59);
    v46 = (v3 + v28[11]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    v55 = *v46;
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v54 = 7;
    sub_217AE39D0(v55, v47);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v55, v56);
    v50 = (v3 + v28[12]);
    v51 = v50[1];
    v55 = *v50;
    v56 = v51;
    v54 = 8;
    sub_217AD01EC();

    sub_217D89C3C();

    LOBYTE(v55) = *(v3 + v28[13]);
    v54 = 9;
    sub_217B27C8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B291F8()
{
  result = qword_27CB9F850;
  if (!qword_27CB9F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F850);
  }

  return result;
}

uint64_t ListenSheetEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_217D889CC();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B29C9C(0, &qword_27CB9F858, MEMORY[0x277D844C8]);
  v59 = v9;
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v49 - v11;
  v13 = type metadata accessor for ListenSheetEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B291F8();
  v60 = v12;
  v18 = v88;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v56;
  v19 = v57;
  v50 = v13;
  v51 = a1;
  v88 = v16;
  LOBYTE(v79) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v58;
  sub_217D89BCC();
  v22 = *(v55 + 32);
  v58 = v6;
  v22(v88, v21, v6);
  LOBYTE(v79) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v54;
  sub_217D89BCC();
  v49[1] = 0;
  v24 = v50;
  (*(v53 + 32))(&v88[v50[5]], v19, v23);
  v70 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v25 = &v88[v24[6]];
  v26 = *v78;
  *(v25 + 6) = v77;
  *(v25 + 7) = v26;
  *(v25 + 127) = *&v78[15];
  v27 = v74;
  *(v25 + 2) = v73;
  *(v25 + 3) = v27;
  v28 = v76;
  *(v25 + 4) = v75;
  *(v25 + 5) = v28;
  v29 = v72;
  *v25 = v71;
  *(v25 + 1) = v29;
  LOBYTE(v65) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v30 = *(&v79 + 1);
  v31 = v80;
  v32 = BYTE1(v80);
  v33 = *(&v80 + 1);
  v34 = v81;
  v35 = &v88[v24[7]];
  *v35 = v79;
  *(v35 + 1) = v30;
  v35[16] = v31;
  v35[17] = v32;
  *(v35 + 3) = v33;
  *(v35 + 4) = v34;
  v69 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v36 = &v88[v24[8]];
  v37 = v84;
  v38 = v86;
  *(v36 + 6) = v85;
  *(v36 + 7) = v38;
  *(v36 + 8) = v87;
  v39 = v82;
  *(v36 + 2) = v81;
  *(v36 + 3) = v39;
  *(v36 + 4) = v83;
  *(v36 + 5) = v37;
  v40 = v80;
  *v36 = v79;
  *(v36 + 1) = v40;
  LOBYTE(v62) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v41 = v66;
  v42 = &v88[v24[9]];
  *v42 = v65;
  *(v42 + 2) = v41;
  v64 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  v43 = &v88[v24[10]];
  v44 = v66;
  *v43 = v65;
  *(v43 + 1) = v44;
  *(v43 + 2) = v67;
  v43[48] = v68;
  v61 = 7;
  sub_217ACFF40();
  sub_217D89B5C();
  v45 = &v88[v50[11]];
  v46 = v63;
  *v45 = v62;
  *(v45 + 1) = v46;
  v61 = 8;
  sub_217AD0198();
  sub_217D89B5C();
  *&v88[v50[12]] = v62;
  v61 = 9;
  sub_217B27C38();
  sub_217D89BCC();
  (*(v20 + 8))(v60, v59);
  v47 = v88;
  v88[v50[13]] = v62;
  sub_217B29D00(v47, v52);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_217B29D64(v47);
}

void sub_217B29C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B291F8();
    v7 = a3(a1, &type metadata for ListenSheetEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B29D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListenSheetEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B29D64(uint64_t a1)
{
  v2 = type metadata accessor for ListenSheetEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B29E98@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_217B2A354()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B27BBC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217B27BBC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217B27BBC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217B27BBC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
            if (v5 <= 0x3F)
            {
              sub_217B27BBC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
              if (v6 <= 0x3F)
              {
                sub_217B27BBC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217B27BBC(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                  if (v8 <= 0x3F)
                  {
                    sub_217B27BBC(319, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C);
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

void sub_217B2A680()
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

uint64_t getEnumTagSinglePayload for ListenSheetEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListenSheetEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B2A920()
{
  result = qword_27CB9F880;
  if (!qword_27CB9F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F880);
  }

  return result;
}

unint64_t sub_217B2A978()
{
  result = qword_27CB9F888;
  if (!qword_27CB9F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F888);
  }

  return result;
}

unint64_t sub_217B2A9D0()
{
  result = qword_27CB9F890;
  if (!qword_27CB9F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F890);
  }

  return result;
}

uint64_t sub_217B2AA24(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCDA10 == a2)
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

uint64_t sub_217B2ADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DCDA30 == a2)
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