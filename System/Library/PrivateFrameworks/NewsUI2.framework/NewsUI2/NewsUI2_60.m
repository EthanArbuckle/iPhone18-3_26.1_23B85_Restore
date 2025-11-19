void sub_218D74898()
{
  if (!qword_280E90760)
  {
    sub_2186F1660();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90760);
    }
  }
}

uint64_t sub_218D749E0(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for MagazineFeedGapLocation(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_218953870();
  v9 = v2 + ((v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_218D694F8(a1, a2, (v2 + 32), v2 + v6, v9);
}

uint64_t sub_218D74AC8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return MEMORY[0x21CEC0B20](0, v1, v2);
}

uint64_t sub_218D74B10()
{
  sub_219BF1584();

  return sub_218C9CF5C();
}

uint64_t sub_218D74B74(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineFeedExpandResult(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 32);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218D692D4(a1, v5, v1 + v4, v6);
}

uint64_t sub_218D74C28()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_218D66C38(1);
}

uint64_t sub_218D74CF8(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(v2 + 72))(a1, v3, v2);
  sub_218BB78F0();
  sub_2186EFBC4(&qword_280EE5620, sub_218BB78F0);
  sub_219BE6EF4();
  (*(v2 + 104))(0, 3, v3, v2);
  sub_219BE6EF4();
}

void sub_218D74E90()
{
  v1 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xE0)) cachedSubscription];
  v2 = [v1 isSubscribed];

  if ((v2 & 1) == 0)
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_218D66C38(1);
  }
}

uint64_t sub_218D7505C(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 80))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  sub_218BB78F0();
  sub_2186EFBC4(&qword_280EE5620, sub_218BB78F0);
  sub_219BE6EF4();
}

uint64_t sub_218D75178(uint64_t result, char a2)
{
  v3 = *MEMORY[0x277D85000] & *v2;
  v4 = v3;
  v5 = *(result + 16);
  if (a2 == 2)
  {
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v21 = v3;
      v23 = MEMORY[0x277D84F90];
      v7 = result;
      sub_21870B65C(0, v5, 0);
      v6 = v23;
      v8 = v7 + 40;
      do
      {
        v9 = *(*(v8 - 8) + 16);
        j__swift_retain();
        j__swift_retain();
        j__swift_retain();
        v10 = [v9 identifier];
        v11 = sub_219BF5414();
        v13 = v12;

        j__swift_release();
        j__swift_release();
        j__swift_release();
        v15 = *(v23 + 16);
        v14 = *(v23 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21870B65C((v14 > 1), v15 + 1, 1);
        }

        v8 += 16;
        *(v23 + 16) = v15 + 1;
        v16 = v23 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        --v5;
      }

      while (v5);
      v4 = v21;
    }

    v19 = sub_218845F78(v6);

    (*(*(v4 + 88) + 104))(v19, 1, *(v4 + 80));

    sub_218BB78F0();
    sub_2186EFBC4(&qword_280EE5620, sub_218BB78F0);
    sub_219BE6EF4();
  }

  else if (v5)
  {
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
    v20 = *(v22 + 96);
    v17 = result + 40;
    do
    {
      v18 = *(v17 - 8);
      v17 += 16;
      j__swift_retain();
      v20(v18 | 0x8000000000000000, 0, 255, *(v4 + 80), v22);
      sub_218BB78F0();
      sub_2186EFBC4(&qword_280EE5620, sub_218BB78F0);
      sub_219BE6EF4();
      j__swift_release();

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_218D754F0(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 104))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  sub_218BB78F0();
  sub_2186EFBC4(&qword_280EE5620, sub_218BB78F0);
  sub_219BE6EF4();
}

uint64_t sub_218D7560C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_219BE8C14();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D73B84(0, &qword_27CC11948, type metadata accessor for MagazineFeedRouteModel);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v34 - v14);
  v39 = type metadata accessor for MagazineFeedRouteModel();
  v16 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_219BF4B34();
  v18 = (*(v6 + 88))(v8, v5);
  v19 = *MEMORY[0x277D345E0];
  v36 = v3;
  if (v18 == v19)
  {
    (*(v6 + 96))(v8, v5);
    (*(v38 + 8))(v8, v3);
    goto LABEL_3;
  }

  if (v18 == *MEMORY[0x277D345D0])
  {
    v20 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v18 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v20 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v20, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  v21 = sub_219BF4B14();
  sub_218D6F2C0(v41, v12, v21, v22, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v39) == 1)
  {
    return sub_218D760D8(v15, &qword_27CC11948, type metadata accessor for MagazineFeedRouteModel);
  }

  v24 = v37;
  sub_218D76004(v15, v37, type metadata accessor for MagazineFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_218D76424(v24, type metadata accessor for MagazineFeedRouteModel);
  }

  v26 = Strong;
  v27 = v35;
  sub_219BF4B44();
  v28 = sub_219BF4B14();
  v30 = v29;
  sub_218B58CA4();
  v31 = sub_219BE5F84();
  v33 = v32;
  __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
  v42[0] = v28;
  v42[1] = v30;
  v42[2] = v31;
  v42[3] = v33;
  v43 = 2;
  sub_218969F44(v24, v27, v42);
  (*(v38 + 8))(v27, v36);
  sub_218D76424(v24, type metadata accessor for MagazineFeedRouteModel);

  return swift_unknownObjectRelease();
}

uint64_t sub_218D75B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D73B84(0, &qword_27CC11948, type metadata accessor for MagazineFeedRouteModel);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v19 - v10);
  v12 = type metadata accessor for MagazineFeedRouteModel();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5);
  sub_218D6F2C0(a1, v8, a2, v20, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_218D760D8(v11, &qword_27CC11948, type metadata accessor for MagazineFeedRouteModel);
  }

  else
  {
    sub_218D76004(v11, v15, type metadata accessor for MagazineFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v17 = sub_21896DA1C(v15);
      sub_218D76424(v15, type metadata accessor for MagazineFeedRouteModel);
      swift_unknownObjectRelease();
      return v17;
    }

    sub_218D76424(v15, type metadata accessor for MagazineFeedRouteModel);
  }

  return 0;
}

uint64_t sub_218D75E94(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218D73B84(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_218D75F00()
{
  if (!qword_280E8D470)
  {
    sub_218951F54();
    sub_2186EFBC4(&unk_280EE3610, sub_218951F54);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D470);
    }
  }
}

void sub_218D75F94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218D76004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D7606C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D760D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218D73B84(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218D76134(uint64_t a1)
{
  sub_218D73B84(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  sub_219BE8694();
  sub_219BE20E4();

  if (v12[15] == 1)
  {
    swift_getObjectType();
    v5 = sub_219BDC104();
    v6 = *(v5 - 8);
    (*(v6 + 16))(v4, a1, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_219BEA2C4();
  }

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v7 indexPathsForVisibleItems];

  sub_219BDC104();
  v9 = sub_219BF5924();

  LOBYTE(v8) = sub_2190890C0(a1, v9);

  if ((v8 & 1) == 0)
  {
    sub_219BE8664();
    v10 = sub_219BE7BC4();

    v11 = sub_219BDC094();
    [v10 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:0];
  }
}

double sub_218D76368(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_219C14A10;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

void sub_218D76390()
{
  if (!qword_27CC11958)
  {
    sub_218951BD0();
    sub_2186EFBC4(&qword_27CC11960, sub_218951BD0);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11958);
    }
  }
}

uint64_t sub_218D76424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218D764A0()
{
  result = qword_27CC11970;
  if (!qword_27CC11970)
  {
    sub_218D764F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11970);
  }

  return result;
}

void sub_218D764F8()
{
  if (!qword_27CC11978)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11978);
    }
  }
}

uint64_t sub_218D76548@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_218D76660()
{
  result = qword_27CC11980;
  if (!qword_27CC11980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11980);
  }

  return result;
}

unint64_t sub_218D766B4()
{
  result = qword_27CC11988;
  if (!qword_27CC11988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11988);
  }

  return result;
}

unint64_t sub_218D7670C()
{
  result = qword_280ECC5E0;
  if (!qword_280ECC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC5E0);
  }

  return result;
}

uint64_t sub_218D76760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayFeedConfig();
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D773C8(0, &qword_280E8CFA0, MEMORY[0x277D844C8]);
  v9 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D771FC();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v28;
    v13 = v29;
    LOBYTE(v31) = 0;
    sub_21877321C(&qword_280ED91C8);
    sub_219BF7734();
    v14 = v30;
    v34 = 1;
    sub_218D77250();
    sub_219BF76E4();
    v25 = v9;
    v16 = v31;
    v15 = v32;
    v26 = v33;
    sub_218D77300(v14, v5);
    if (v16)
    {
      v24 = v15;
    }

    else
    {
      v16 = sub_2199FD88C(0, 0, 1, 0);
      v24 = v17;
      v26 = v18;
    }

    v19 = v13;
    v20 = v27;
    sub_218D772A4(v14);
    (*(v12 + 8))(v11, v25);
    v21 = &v5[*(v20 + 20)];
    v22 = v24;
    *v21 = v16;
    v21[1] = v22;
    v21[2] = v26;
    sub_218D77364(v5, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218D76A98(void *a1)
{
  v3 = v1;
  sub_218D773C8(0, &qword_280E8C670, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D771FC();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  type metadata accessor for TodayFeedConfig();
  sub_21877321C(&qword_280ED91D0);
  sub_219BF7834();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for TodayConfig() + 20));
    v11 = *v10;
    v12 = *(v10 + 2);
    v15 = v11;
    v16 = v12;
    v14[7] = 1;
    sub_218D7742C();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218D76C70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6565467961646F74;
  }

  if (v2)
  {
    v4 = 0xEF6769666E6F4364;
  }

  else
  {
    v4 = 0x8000000219CD7300;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6565467961646F74;
  }

  if (*a2)
  {
    v6 = 0x8000000219CD7300;
  }

  else
  {
    v6 = 0xEF6769666E6F4364;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218D76D28()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D76DBC()
{
  sub_219BF5524();
}

uint64_t sub_218D76E3C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D76ECC@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_218D76F2C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000219CD7300;
  v3 = 0x6565467961646F74;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEF6769666E6F4364;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_218D76F7C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6565467961646F74;
  }
}

uint64_t sub_218D76FC8@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218D7702C(uint64_t a1)
{
  v2 = sub_218D771FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D77068(uint64_t a1)
{
  v2 = sub_218D771FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D770E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_218D7712C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TodayFeedConfig();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77300(a1, v9);
  v10 = (v3 + *(a2 + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  sub_218D77300(v9, a3);

  result = sub_218D772A4(v9);
  v15 = (a3 + *(a2 + 20));
  *v15 = v11;
  v15[1] = v12;
  v15[2] = v13;
  return result;
}

unint64_t sub_218D771FC()
{
  result = qword_280EDF388;
  if (!qword_280EDF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDF388);
  }

  return result;
}

unint64_t sub_218D77250()
{
  result = qword_280ECC5D0;
  if (!qword_280ECC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC5D0);
  }

  return result;
}

uint64_t sub_218D772A4(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D77300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D77364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D773C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D771FC();
    v7 = a3(a1, &type metadata for TodayConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D7742C()
{
  result = qword_280ECC5D8;
  if (!qword_280ECC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC5D8);
  }

  return result;
}

unint64_t sub_218D77494()
{
  result = qword_27CC11990;
  if (!qword_27CC11990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11990);
  }

  return result;
}

unint64_t sub_218D774EC()
{
  result = qword_280EDF378;
  if (!qword_280EDF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDF378);
  }

  return result;
}

unint64_t sub_218D77544()
{
  result = qword_280EDF380;
  if (!qword_280EDF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDF380);
  }

  return result;
}

uint64_t sub_218D7778C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_219BF73F4();
    v4 = a1 + 40;
    do
    {
      MEMORY[0x28223BE20](v3);

      sub_219BE2ED4();

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      v3 = sub_219BF73E4();
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  sub_218D77C04(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

char *sub_218D778D4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    if (!i)
    {
      v4 = MEMORY[0x277D84F90];
      v13 = *(MEMORY[0x277D84F90] + 16);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v4 = v25;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v5, v1);
        v6 = [swift_unknownObjectRetain() identifier];
        v7 = sub_219BF5414();
        v9 = v8;
        swift_unknownObjectRelease_n();

        v11 = *(v25 + 16);
        v10 = *(v25 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21870B65C((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v25 + 16) = v11 + 1;
        v12 = v25 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (i != v5);
    }

    else
    {
      v14 = (v1 + 32);
      do
      {
        v15 = *v14;
        v16 = [v15 identifier];
        v1 = sub_219BF5414();
        v18 = v17;

        v20 = *(v25 + 16);
        v19 = *(v25 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21870B65C((v19 > 1), v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v1;
        *(v21 + 40) = v18;
        ++v14;
        --i;
      }

      while (i);
    }

    v13 = *(v25 + 16);
    if (!v13)
    {
LABEL_21:

      sub_218D77C04(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_18:
    v22 = sub_219BF73F4();
    v23 = 0;
    v24 = v4 + 40;
    while (v23 < *(v4 + 16))
    {
      ++v23;
      MEMORY[0x28223BE20](v22);

      v1 = sub_219BE2ED4();

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      v22 = sub_219BF73E4();
      v24 += 16;
      if (v13 == v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    ;
  }

  __break(1u);
  return result;
}

void sub_218D77C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218D77C80()
{
  if (!qword_280E92040)
  {
    type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
    sub_218D77D4C(&qword_280E964B0, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
    sub_218D77D4C(&qword_280E964B8, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92040);
    }
  }
}

uint64_t sub_218D77D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter()
{
  result = qword_280E99990;
  if (!qword_280E99990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D77DF4()
{
  sub_218D77C80();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218D77E98()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  v20 = 3;
  sub_2186E3B14();
  v18 = sub_219BEE964();
  sub_2186E4724(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v17 = v8;
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_218D77C80();
  sub_219BEDD14();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_218817388(v7, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
  v12 = sub_219BF1784();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  sub_2186F8D2C(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v17);
  v19 = v18;
  sub_2191EE154(v11);
  return v19;
}

uint64_t sub_218D781D4(uint64_t a1)
{
  v3 = type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_218D7A9A8(v1, v6, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_218D7A6C4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_218D7A9A8(v18[0], v6, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218D7A6C4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88();
  sub_219BE2F74();

  sub_218D7A9A8(v11, v6, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_218D7A6C4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_218D78484(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v98 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4724(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v103 = &v75 - v5;
  sub_2186E4724(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v75 - v7;
  sub_2186E4724(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v75 - v9;
  v10 = sub_219BF2AB4();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v104 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2034();
  v105 = *(v12 - 8);
  v106 = v12;
  MEMORY[0x28223BE20](v12);
  v113 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF9C4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = (&v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_219BEF564();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4724(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = &v75 - v17;
  v86 = sub_219BEFBD4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4724(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v80 = &v75 - v22;
  v94 = sub_219BF2774();
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v110 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v100 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  v30 = v29 - 8;
  v83 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v88 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  v35 = sub_219BF1934();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v111 = &v75 - v40;
  sub_218D77C80();
  v81 = v41;
  sub_219BEDD14();
  (*(v36 + 16))(v39, &v34[*(v30 + 28)], v35);
  v82 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
  sub_218817388(v34, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
  sub_219BEDCA4();
  v42 = sub_219BEC004();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  sub_218A42400(0);
  v44 = v100;
  (*(*(v43 - 8) + 56))(v100, 1, 1, v43);
  sub_219BF1764();

  sub_218817388(v44, sub_218A89A94);
  sub_218817388(v28, sub_2186FE720);
  v45 = *(v36 + 8);
  v99 = v36 + 8;
  v100 = v35;
  v89 = v45;
  v45(v39, v35);
  v46 = v109;
  sub_219BEF134();
  v76 = type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  v47 = *(v76 + 20);
  v75 = v2;
  v48 = v2 + v47;
  v77 = v2 + v47;
  v79 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  v112[3] = v79;
  v112[4] = sub_218D77D4C(&qword_280E9DB50, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v112);
  sub_218D7A9A8(v48, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  v50 = v80;
  sub_219BF2AC4();
  v51 = sub_219BF2AD4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_218D79E44(v46);

  v52 = sub_219BEF0A4();
  v53 = sub_21921D080(v52);

  v54 = sub_219BEF074();
  v55 = sub_21921D080(v54);

  sub_2194796A0(v55, v53);
  (*(v85 + 104))(v84, *MEMORY[0x277D32930], v86);
  v56 = sub_219BF02F4();
  (*(*(v56 - 8) + 56))(v87, 1, 1, v56);
  (*(v91 + 104))(v90, *MEMORY[0x277D32670], v92);
  (*(v95 + 104))(v93, *MEMORY[0x277D32840], v96);
  sub_219BF2764();
  v57 = (v75 + *(v76 + 24));
  v58 = v57[3];
  v95 = v57[4];
  v96 = v58;
  v93 = __swift_project_boxed_opaque_existential_1(v57, v58);
  sub_219B6CEDC(v111, v113);
  sub_2186E3B14();
  v60 = v59;
  v61 = *(v59 - 8);
  v62 = v101;
  (*(v61 + 16))(v101, v77, v59);
  (*(v61 + 56))(v62, 0, 1, v60);
  v63 = sub_219BF35D4();
  (*(*(v63 - 8) + 56))(v102, 1, 1, v63);
  LOBYTE(v112[0]) = 3;
  sub_2186F8D2C(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v64 = v103;
  v65 = v88;
  v66 = v94;
  sub_219BEDD14();
  sub_218817388(v65, v82);
  v67 = v97;
  v68 = v110;
  (*(v97 + 16))(v64);
  v69 = v67;
  (*(v67 + 56))(v64, 0, 1, v66);
  v70 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v70 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v71 = v104;
  sub_219BF2A84();
  v72 = v111;
  v73 = sub_219BF2184();
  (*(v107 + 8))(v71, v108);
  (*(v105 + 8))(v113, v106);
  (*(v69 + 8))(v68, v66);
  v89(v72, v100);
  return v73;
}

uint64_t sub_218D79378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_218D793D0(a2, *a1, a3);
  sub_218C5FB88();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D793D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v75 = a3;
  sub_2186E4724(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v58 - v5;
  v66 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v66);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF554();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v72 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v58 - v10;
  v71 = sub_219BED8D4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1904();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v58 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - v34;
  v61 = v36;
  sub_219BF2734();
  v37 = sub_219BDBD34();
  v38 = v24;
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  v39 = a2;
  sub_219BF2734();
  v40 = sub_219BF1884();
  v41 = v32;
  v42 = *(v26 + 8);
  v42(v41, v25);
  if (!(v40 >> 62))
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v39;
    v60 = v42;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_219BF2734();
    v46 = sub_219BF1874();
    v47 = v42;
    v45 = v46;
    v47(v29, v25);
    goto LABEL_9;
  }

  result = sub_219BF7214();
  v59 = v39;
  v60 = v42;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x21CECE0F0](0, v40);
    goto LABEL_6;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v40 + 32);
LABEL_6:
    v45 = v44;

LABEL_9:
    v48 = sub_219BF1AD4();
    (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
    v49 = sub_219BEFC64();
    (*(*(v49 - 8) + 56))(v18, 1, 1, v49);
    v50 = sub_219BF4334();
    v51 = v62;
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    v52 = sub_219BEC004();
    v53 = v63;
    (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
    v54 = v61;
    sub_219BF1854();

    sub_218817388(v53, sub_2186FE720);
    sub_218817388(v51, sub_218D7A90C);
    sub_218817388(v18, sub_218D7A940);
    sub_218817388(v21, sub_218D7A974);
    sub_218817388(v38, sub_2186DCF58);
    v55 = v60;
    v60(v54, v25);
    sub_219BF2744();
    v55(v35, v25);
    sub_218D77C80();
    sub_219BEDCB4();
    sub_219BEDCC4();
    v56 = v67;
    sub_219BEDD14();
    (*(v64 + 16))(v72, v56 + *(v66 + 28), v65);
    sub_218817388(v56, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
    type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
    sub_2186E3B14();
    sub_219BEE9B4();
    sub_219BEE984();
    sub_219BEE9D4();
    type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
    sub_2186F8D2C(0, &qword_280E91830, MEMORY[0x277D32318]);
    sub_219BEEC84();
    v57 = v68;
    sub_219BED834();
    (*(v69 + 32))(v75, v57, v71);
    type metadata accessor for MagazineFeedGroup();
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_218D79D50()
{
  type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218D77D4C(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_218D79E44(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4724(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33F90];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FB0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_218D7A180()
{
  sub_2186E4724(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218D7A200@<X0>(uint64_t *a1@<X8>)
{
  sub_218D77C80();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x2000000000000000;
  return result;
}

uint64_t sub_218D7A278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  a2[4] = sub_218D77D4C(&qword_280E9DB40, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  a2[5] = sub_218D77D4C(&qword_280E9DB48, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D7A9A8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
}

uint64_t sub_218D7A340()
{
  sub_218D77C80();

  return sub_219BEDCA4();
}

uint64_t sub_218D7A36C@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4724(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D77C80();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218817388(inited + 32, sub_2188317B0);
  sub_218D7AA10(0);
  a1[3] = v5;
  a1[4] = sub_218D77D4C(&qword_280EE7628, sub_218D7AA10);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D7A4F0()
{
  sub_218D77D4C(&qword_280E999A8, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218D7A6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D7A728(_OWORD *a1)
{
  v3 = *(type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_218D78484(v4, v8);
}

uint64_t sub_218D7A9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D7AA44()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218D7AA84(uint64_t a1, double *a2, void *a3)
{
  v6 = sub_219BE89F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() configurationWithPointSize:5 weight:-1 scale:a2[4]];
  v10 = sub_219BF53D4();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (!v11)
  {
    __break(1u);
    return;
  }

  [a3 setImage:v11 forState:0];
  v12 = [a3 imageView];
  if (v12)
  {
    v13 = v12;
    [v12 setContentMode_];
  }

  [a3 setFrame_];
  v14 = [a3 subviews];
  sub_2186C6148(0, &qword_280E8DAE0);
  v15 = sub_219BF5924();

  v34 = v6;
  v35 = a1;
  if (v15 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CECE0F0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        [v19 setClipsToBounds_];

        goto LABEL_20;
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

LABEL_20:
  [a3 setUserInteractionEnabled_];
  [a3 setHidden_];
  (*(v7 + 104))(v36, *MEMORY[0x277D6E0D8], v34);
  v21 = *(v37 + 32);
  v39 = sub_219BDD274();
  v40 = sub_218ABC404();
  v38 = v21;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  sub_219BE8314();
  swift_allocObject();

  v34 = a3;
  sub_219BE82F4();
  v22 = sub_219BE5994();
  v23 = v22;
  v38 = MEMORY[0x277D84F90];
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_38:
    v25 = sub_219BF7214();
    if (v25)
    {
LABEL_22:
      v26 = 0;
      v27 = MEMORY[0x277D84F90];
      do
      {
        v28 = v26;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x21CECE0F0](v28, v23);
          }

          else
          {
            if (v28 >= *(v24 + 16))
            {
              goto LABEL_37;
            }

            v29 = *(v23 + 8 * v28 + 32);
          }

          v30 = v29;
          v26 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v28;
          if (v26 == v25)
          {
            goto LABEL_40;
          }
        }

        MEMORY[0x21CECC690]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v27 = v38;
      }

      while (v26 != v25);
      goto LABEL_40;
    }
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_22;
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_40:

  if (v27 >> 62)
  {
    sub_2186C6148(0, &unk_280E8E710);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186C6148(0, &unk_280E8E710);
  }

  sub_2186C6148(0, &qword_280E8DAF0);
  v31 = sub_219BF6BF4();

  v32 = *&v34[qword_280E9FEA0];
  *&v34[qword_280E9FEA0] = v31;
}

uint64_t sub_218D7B058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7B844(0, &qword_27CC119D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D7B78C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218D7B8A8(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218D7B7E0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218D7B304(uint64_t a1)
{
  v2 = sub_218D7B78C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D7B340(uint64_t a1)
{
  v2 = sub_218D7B78C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D7B3BC(void *a1)
{
  sub_218D7B844(0, &qword_27CC119E0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D7B78C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218D7B8A8(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218D7B61C(uint64_t a1)
{
  result = sub_218D7B8A8(&unk_27CC1C620, type metadata accessor for SportsEventArticlesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218D7B674(void *a1)
{
  a1[1] = sub_218D7B8A8(&qword_27CC119B8, type metadata accessor for SportsEventArticlesTagFeedGroup);
  a1[2] = sub_218D7B8A8(&qword_27CC119C0, type metadata accessor for SportsEventArticlesTagFeedGroup);
  result = sub_218D7B8A8(&qword_27CC119C8, type metadata accessor for SportsEventArticlesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218D7B720(uint64_t a1)
{
  v2 = sub_218D7B8A8(&qword_27CC119B8, type metadata accessor for SportsEventArticlesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218D7B78C()
{
  result = qword_27CC119D8;
  if (!qword_27CC119D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC119D8);
  }

  return result;
}

uint64_t sub_218D7B7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D7B844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D7B78C();
    v7 = a3(a1, &type metadata for SportsEventArticlesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D7B8A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218D7B904()
{
  result = qword_27CC119E8;
  if (!qword_27CC119E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC119E8);
  }

  return result;
}

unint64_t sub_218D7B95C()
{
  result = qword_27CC119F0;
  if (!qword_27CC119F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC119F0);
  }

  return result;
}

unint64_t sub_218D7B9B4()
{
  result = qword_27CC119F8;
  if (!qword_27CC119F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC119F8);
  }

  return result;
}

uint64_t sub_218D7BA08()
{
  sub_21896FA3C();
  v40 = *(v1 - 8);
  v2 = *(v40 + 8);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for MyMagazinesModel();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953F20();
  sub_219BE5FC4();
  v9 = *v8;
  v44 = v8;
  v42 = *(v8 + 2);
  v10 = *(v0 + 72);
  v11 = swift_allocObject();
  v55 = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = v9;
  *(v11 + 56) = 0;
  *(v11 + 63) = 0;
  *(v11 + 61) = 0;
  *(v11 + 57) = 0;
  *(v11 + 64) = MEMORY[0x277D84F90];
  v12 = v11 | 0x5000000000000000;
  v13 = *(v0 + 64);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = v10;
  sub_2187B14CC(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0);
  v43 = v9;
  if (v47)
  {
    sub_21875F93C(&v46, v48);
    v15 = qword_280ED32D0;
    v16 = v9;
    if (v15 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v39 = v17;
    sub_2188202A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v20 = v9;
    sub_21874504C(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v39 = v21;
    sub_2188202A8(v21);
  }

  v45 = v12;
  v47 = sub_219BDD274();
  *&v46 = v13;
  v22 = v41;
  sub_2189B4E2C(v5, v41);
  sub_2187B14CC(v53, v48, &qword_280EE33A0, &qword_280EE33B0);
  v23 = v13;
  v24 = (v40[80] + 24) & ~v40[80];
  v25 = (v2 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v40 = v5;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  sub_2189B4EAC(v22, v27 + v24);
  v28 = v27 + v25;
  v29 = v48[1];
  *v28 = v48[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v49;
  v30 = (v27 + v26);
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = 0;
  v30[1] = 0;
  v32 = v39;
  *v31 = v18;
  v31[1] = v32;
  v31[2] = v19;
  swift_retain_n();

  sub_2188202A8(v32);
  sub_2186CF94C();
  sub_218D7C6F4(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  v33 = v43;

  sub_2187FABEC(v32);

  sub_21874504C(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874504C(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v40);
  sub_21874504C(&v46, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  sub_218B7E1D0();
  v35 = *(v34 + 48);
  v36 = sub_219BF0744();
  return (*(*(v36 - 8) + 8))(&v44[v35], v36);
}

uint64_t sub_218D7C154()
{
  v1 = v0;
  sub_21896FA3C();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for MyMagazinesModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953F20();
  sub_219BE5FC4();
  v11 = *v10;
  v30 = *(v10 + 2);
  v12 = *(v0 + 72);
  v13 = swift_allocObject();
  v36 = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = v11;
  *(v13 + 56) = 0;
  *(v13 + 63) = 0;
  *(v13 + 61) = 0;
  *(v13 + 57) = 0;
  *(v13 + 64) = MEMORY[0x277D84F90];
  v14 = v13 | 0x5000000000000000;
  v15 = *(v1 + 64);
  v16 = sub_219BDFA44();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33[5] = v12;
  sub_219BDC8D4();
  v17 = v11;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v33[4] = v14;
  v33[3] = sub_219BDD274();
  v33[0] = v15;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v34, v31, &qword_280EE33A0, &qword_280EE33B0);
  v18 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  sub_2189B4EAC(v5, v20 + v18);
  v21 = v20 + v19;
  v22 = v31[1];
  *v21 = v31[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v32;
  v23 = (v20 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v23 = 0;
  v23[1] = 0;
  sub_2186CF94C();
  sub_218D7C6F4(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v24 = sub_219BEB454();

  sub_21874504C(v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_21874504C(v33, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  sub_218B7E1D0();
  v26 = *(v25 + 48);
  v27 = sub_219BF0744();
  (*(*(v27 - 8) + 8))(&v10[v26], v27);
  return v24;
}

uint64_t sub_218D7C678()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_218D7C6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Settings.DemoType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_218D7C760@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_218D7C780(uint64_t a1)
{
  v2 = sub_21879E7E4();
  v3 = MEMORY[0x277D6D120];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_218D7C7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21879E7E4();
  v5 = MEMORY[0x277D6D120];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_218D7C830()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A00 = result;
  return result;
}

uint64_t sub_218D7CA20()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0xD000000000000024;
  v8[1] = 0x8000000219CF61A0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A08 = result;
  return result;
}

uint64_t sub_218D7CC24()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A10 = result;
  return result;
}

uint64_t sub_218D7CE38()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A18 = result;
  return result;
}

uint64_t sub_218D7D04C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A20 = result;
  return result;
}

uint64_t sub_218D7D240()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 1;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A00 = result;
  return result;
}

uint64_t sub_218D7D434()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A28 = result;
  return result;
}

uint64_t sub_218D7D698(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDC944();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF5414();
  *v11 = sub_219BF5414();
  v11[1] = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D6D0A0], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  *a3 = result;
  return result;
}

uint64_t sub_218D7D92C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A50 = result;
  return result;
}

uint64_t sub_218D7DB3C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A58 = result;
  return result;
}

uint64_t sub_218D7DD74()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE99E8 = result;
  return result;
}

uint64_t sub_218D7DF64()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC11A60 = result;
  return result;
}

uint64_t sub_218D7E1AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_219BEF554();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v38);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BF1934();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EC58(0, &qword_280E8C9E8, MEMORY[0x277D844C8]);
  v42 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D7EBA0();
  v15 = v14;
  v16 = v43;
  sub_219BF7B34();
  if (!v16)
  {
    v43 = v12;
    v33 = v7;
    v17 = v38;
    v18 = v39;
    v20 = v40;
    v19 = v41;
    v48 = 1;
    v21 = v15;
    v22 = sub_219BF76A4();
    v47 = 2;
    v32 = sub_219BF76A4();
    v46 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648]);
    sub_219BF76E4();
    v45 = 4;
    v31 = sub_219BF76A4();
    v44 = 5;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (v43)[1](v21, v42);
    v24 = v36;
    *v36 = 9;
    v24[1] = v22 & 1;
    v24[2] = (v32 == 2) | v32 & 1;
    v25 = *(v18 + 48);
    if ((v25)(v10, 1, v20) == 1)
    {
      v26 = *MEMORY[0x277D32628];
      v27 = *(v18 + 104);
      v43 = v25;
      v28 = v35;
      v27(v35, v26, v20);
      v42 = v10;
      v29 = v19;
      if ((v43)(v10, 1, v20) != 1)
      {
        sub_218D15BD0(v42);
      }
    }

    else
    {
      v28 = v35;
      (*(v18 + 32))(v35, v10, v20);
      v29 = v19;
    }

    v30 = v36;
    (*(v18 + 32))(&v36[v17[7]], v28, v20);
    *(v30 + v17[8]) = v31 & 1;
    (*(v34 + 32))(v30 + v17[9], v33, v37);
    sub_218D7EBF4(v30, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218D7E74C(void *a1)
{
  v3 = v1;
  sub_218D7EC58(0, &qword_27CC11A68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D7EBA0();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    v11[12] = 2;
    sub_219BF7804();
    type metadata accessor for TopicMagazineFeedGroupConfigData();
    v11[11] = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218D7EA0C()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v3 = 0x746E65746E6F63;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0xD000000000000011;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
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

uint64_t sub_218D7EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218D7EDD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218D7EAF8(uint64_t a1)
{
  v2 = sub_218D7EBA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D7EB34(uint64_t a1)
{
  v2 = sub_218D7EBA0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218D7EBA0()
{
  result = qword_280EA4368;
  if (!qword_280EA4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4368);
  }

  return result;
}

uint64_t sub_218D7EBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D7EC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D7EBA0();
    v7 = a3(a1, &type metadata for TopicMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D7ECD0()
{
  result = qword_27CC11A70;
  if (!qword_27CC11A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11A70);
  }

  return result;
}

unint64_t sub_218D7ED28()
{
  result = qword_280EA4358;
  if (!qword_280EA4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4358);
  }

  return result;
}

unint64_t sub_218D7ED80()
{
  result = qword_280EA4360;
  if (!qword_280EA4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4360);
  }

  return result;
}

uint64_t sub_218D7EDD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_218D7EFE8()
{
  if (!qword_280E92210)
  {
    type metadata accessor for TrendingMagazineFeedGroupConfigData();
    sub_2187EF3C4(&unk_280E9BFB0, type metadata accessor for TrendingMagazineFeedGroupConfigData);
    sub_2187EF3C4(&qword_280E9BFC0, type metadata accessor for TrendingMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92210);
    }
  }
}

uint64_t type metadata accessor for TrendingMagazineFeedGroupEmitter()
{
  result = qword_280EA41A0;
  if (!qword_280EA41A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D7F114()
{
  sub_218D7EFE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrendingMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218D7F1C8()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrendingMagazineFeedGroupEmitter();
  v20 = 10;
  sub_2186E3B14();
  v18 = sub_219BEE964();
  sub_218D82880(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v17 = v8;
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_218D7EFE8();
  sub_219BEDD14();
  (*(v1 + 16))(v3, &v7[*(v5 + 48)], v0);
  sub_218D82994(v7, type metadata accessor for TrendingMagazineFeedGroupConfigData);
  v12 = sub_219BF1784();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  sub_2186F8DC8(0, &unk_280E91220, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v17);
  v19 = v18;
  sub_2191EE154(v11);
  return v19;
}

uint64_t sub_218D7F52C(uint64_t a1)
{
  v3 = type metadata accessor for TrendingMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v26 = v1;
  v27 = type metadata accessor for TrendingMagazineFeedGroupEmitter;
  sub_218D8292C(v1, v6, type metadata accessor for TrendingMagazineFeedGroupEmitter);
  v25 = *(v4 + 80);
  v7 = (v25 + 16) & ~v25;
  v8 = v7 + v5;
  v28 = v8;
  v9 = swift_allocObject();
  sub_218D82228(v6, v9 + v7);
  v10 = sub_219BE2E54();
  sub_218D8232C();
  sub_219BE2F74();

  sub_218D8292C(v1, v6, type metadata accessor for TrendingMagazineFeedGroupEmitter);
  v11 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_218D82228(v6, v12 + v7);
  *(v12 + v11) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_218D823CC;
  *(v13 + 24) = v12;

  v14 = sub_219BE2E54();
  sub_218D824A4();
  sub_219BE2F64();

  v15 = v26;
  v16 = v27;
  sub_218D8292C(v26, v6, v27);
  v17 = swift_allocObject();
  sub_218D82228(v6, v17 + v7);
  *(v17 + v11) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_218D826F0;
  *(v18 + 24) = v17;

  v19 = sub_219BE2E54();
  type metadata accessor for MagazineFeedGroup();
  sub_219BE2F74();

  v20 = sub_219BE2E54();
  sub_2186F8DC8(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_218D8292C(v15, v6, v16);
  v21 = swift_allocObject();
  sub_218D82228(v6, v21 + v7);
  v22 = sub_219BE2E54();
  v23 = sub_219BE3064();

  return v23;
}

uint64_t sub_218D7F948(unint64_t *a1)
{
  v68 = sub_219BEE6E4();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v66 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  if (v6 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v11);
  v61[-2] = v67;
  v61[-1] = a1;

  v12 = sub_2195EB294(sub_218D8290C, &v61[-4], v6);
  v61[1] = v1;
  v13 = swift_allocObject();
  v14 = v10;
  v15 = MEMORY[0x277D83B88];
  v16 = v13;
  v64 = xmmword_219C09EC0;
  *(v13 + 16) = xmmword_219C09EC0;
  *(v13 + 56) = v15;
  *(v13 + 64) = v14;
  v69 = v6;
  v70 = v9;
  *(v13 + 32) = v9;
  v17 = v12 >> 62;
  v65 = v5;
  if (v12 >> 62)
  {
    v59 = v14;
    v60 = sub_219BF7214();
    v14 = v59;
    v18 = v60;
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16[12] = v15;
  v16[13] = v14;
  v63 = v18;
  v16[9] = v18;
  sub_219BF6214();
  sub_219BE5314();

  v19 = v67 + *(type metadata accessor for TrendingMagazineFeedGroupEmitter() + 20);
  v20 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
  v21 = *(v19 + *(v20 + 24));
  if (v21 < 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v22 = v20;
  v67 = v19;
  if (v17)
  {
    v26 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v26 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v26;
    }

    if (v26 < 0)
    {
      v27 = v21;
    }

    if (v21)
    {
      v25 = v27;
    }

    else
    {
      v25 = 0;
    }

    v23 = sub_219BF7214();
  }

  else
  {
    v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  if (v23 < v25)
  {
    goto LABEL_60;
  }

  if ((v12 & 0xC000000000000001) != 0 && v25)
  {
    sub_218731D50();

    v28 = 0;
    do
    {
      v29 = v28 + 1;
      sub_219BF7334();
      v28 = v29;
    }

    while (v25 != v29);
  }

  else
  {
  }

  if (v17)
  {
    v62 = sub_219BF7564();
    v61[0] = v32;
    v31 = v33;
    v30 = v34;
  }

  else
  {
    v62 = v12 & 0xFFFFFFFFFFFFFF8;
    v61[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v30 = (2 * v25) | 1;
    v31 = 0;
  }

  v35 = v65;
  v36 = swift_allocObject();
  *(v36 + 16) = v64;
  v37 = MEMORY[0x277D83B88];
  *(v36 + 56) = MEMORY[0x277D83B88];
  v38 = MEMORY[0x277D83C10];
  *(v36 + 64) = MEMORY[0x277D83C10];
  *(v36 + 32) = v63;
  v66 = v30;
  v39 = __OFSUB__(v30 >> 1, v31);
  v40 = (v30 >> 1) - v31;
  v41 = v70;
  if (v39)
  {
    goto LABEL_61;
  }

  *&v64 = v31;
  *(v36 + 96) = v37;
  *(v36 + 104) = v38;
  *(v36 + 72) = v40;
  sub_219BF6214();
  sub_219BE5314();

  v42 = *(v67 + *(v22 + 20));
  v43 = v40;
  if (v40 >= v42)
  {
    if (!v41)
    {
LABEL_48:
      sub_219BEF864();

      sub_219BEF854();
      v3 = v62;
      v54 = v66;
      if ((v66 & 1) == 0)
      {
LABEL_49:
        sub_218B667DC(v3, v61[0], v64, v54);
        v42 = v55;
        goto LABEL_55;
      }

      sub_219BF7934();
      swift_unknownObjectRetain_n();
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        swift_unknownObjectRelease();
        v56 = MEMORY[0x277D84F90];
      }

      v57 = *(v56 + 16);

      if (v57 == v43)
      {
        v42 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v42)
        {
          return v42;
        }

        v42 = MEMORY[0x277D84F90];
LABEL_55:
        swift_unknownObjectRelease();
        return v42;
      }

LABEL_64:
      swift_unknownObjectRelease_n();
      v54 = v66;
      goto LABEL_49;
    }

    v71 = MEMORY[0x277D84F90];
    sub_218C34B28(0, v41 & ~(v41 >> 63), 0);
    if ((v41 & 0x8000000000000000) == 0)
    {
      v63 = v40;
      v67 = a1;
      v46 = 0;
      v47 = v71;
      v48 = v69 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v49 = MEMORY[0x21CECE0F0](v46, v69);
        }

        else
        {
          v49 = *(v69 + 8 * v46 + 32);
          swift_unknownObjectRetain();
        }

        v50 = [v49 scoreProfile];
        sub_219BEE6C4();
        v71 = v47;
        v51 = v35;
        v53 = *(v47 + 16);
        v52 = *(v47 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_218C34B28(v52 > 1, v53 + 1, 1);
          v47 = v71;
        }

        ++v46;
        *(v47 + 16) = v53 + 1;
        (*(v3 + 32))(v47 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v53, v51, v68);
        v35 = v51;
      }

      while (v70 != v46);
      v43 = v63;
      goto LABEL_48;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v44 = sub_219BEEDD4();
  sub_2187EF3C4(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  *v45 = v42;
  v45[1] = v40;
  (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D32400], v44);
  swift_willThrow();
  swift_unknownObjectRelease();
  return v42;
}

uint64_t sub_218D800D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_218D80180(a4, a1);
  if (!v4)
  {

    v6 = sub_219BE2E54();
    sub_218D824A4();
    v7 = sub_219BE2F74();

    return v7;
  }

  return result;
}

uint64_t sub_218D80180(uint64_t a1, unint64_t a2)
{
  v71 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_218D82880(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v67 - v6;
  sub_218D82880(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v67 - v8;
  sub_218D82880(0, &unk_280E919B0, sub_2186E3B14, v4);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v67 - v10;
  v11 = sub_219BF2AB4();
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF2034();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D82880(0, &unk_280E8FF30, sub_218A42400, v4);
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v67 - v16;
  sub_218D82880(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v67 - v18;
  v82 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v82);
  v83 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF1934();
  v88 = *(v20 - 8);
  v89 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v86 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v84 = &v67 - v23;
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = (&v67 - v29);
  sub_218D82880(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v31 = *(sub_219BF3E84() - 8);
  v80 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v32 = a2;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_219C09BA0;
  v81 = a2 >> 62;
  v77 = v11;
  if (a2 >> 62)
  {
    v33 = sub_219BF7214();
  }

  else
  {
    v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v2;
  v72 = v14;
  v94 = v32;
  if (v33)
  {
    v96 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v34 = v96;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      LODWORD(v93) = *MEMORY[0x277D34128];
      v92 = v25 + 32;
      do
      {
        *v30 = MEMORY[0x21CECE0F0](v35, v94);
        (*(v25 + 104))(v30, v93, v24);
        v96 = v34;
        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_218C34A88(v36 > 1, v37 + 1, 1);
          v34 = v96;
        }

        ++v35;
        *(v34 + 16) = v37 + 1;
        (*(v25 + 32))(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v37, v30, v24);
      }

      while (v33 != v35);
    }

    else
    {
      v38 = (v32 + 32);
      LODWORD(v93) = *MEMORY[0x277D34128];
      v91 = *(v25 + 104);
      v92 = v25 + 104;
      v90 = v25 + 32;
      do
      {
        *v28 = *v38;
        (v91)(v28, v93, v24);
        v96 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        swift_unknownObjectRetain();
        if (v40 >= v39 >> 1)
        {
          sub_218C34A88(v39 > 1, v40 + 1, 1);
          v34 = v96;
        }

        *(v34 + 16) = v40 + 1;
        (*(v25 + 32))(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v40, v28, v24);
        ++v38;
        --v33;
      }

      while (v33);
    }
  }

  v24 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v24);
  sub_218F0BB90(v24);
  sub_219BF3E74();
  sub_218D7EFE8();
  v41 = v83;
  sub_219BEDD14();
  v33 = v88;
  (*(v88 + 16))(v86, v41 + *(v82 + 40), v89);
  sub_218D82994(v41, type metadata accessor for TrendingMagazineFeedGroupConfigData);
  if (v81)
  {
    v32 = v94;
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_17:
    if ((v32 & 0xC000000000000001) == 0)
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v43 = *(v32 + 32);
      swift_unknownObjectRetain();
      goto LABEL_20;
    }

LABEL_27:
    v43 = MEMORY[0x21CECE0F0](0, v32);
LABEL_20:
    v44 = [v43 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();

    goto LABEL_22;
  }

  v32 = v94;
  result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_17;
  }

LABEL_22:
  v45 = sub_219BEC004();
  v46 = *(*(v45 - 8) + 56);
  v47 = v68;
  v46(v68, 1, 1, v45);
  sub_218A42400(0);
  v49 = v67;
  (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
  v50 = v86;
  sub_219BF1764();

  sub_2188173E8(v49, &unk_280E8FF30, sub_218A42400);
  sub_2188173E8(v47, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v51 = *(v33 + 8);
  v88 = v33 + 8;
  v94 = v51;
  v51(v50, v89);
  v52 = type metadata accessor for TrendingMagazineFeedGroupEmitter();
  v53 = (v87 + *(v52 + 24));
  v54 = v53[3];
  v92 = v53[4];
  v93 = v54;
  v91 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v46(v47, 1, 1, v45);
  sub_219A95188(v24);
  sub_219A95188(v24);
  sub_219A951A0(v24);
  sub_219A951B8(v24);
  sub_219A952CC(v24);
  sub_219A952E4(v24);
  sub_219A953F8(v24);
  v55 = v72;
  sub_219BF2024();
  v56 = *(v52 + 20);
  sub_2186E3B14();
  v58 = v57;
  v59 = *(v57 - 8);
  v60 = v69;
  (*(v59 + 16))(v69, v87 + v56, v57);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = sub_219BF35D4();
  (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
  v95 = 10;
  sub_2186F8DC8(0, &qword_280E90058, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v62 = sub_219BF2774();
  (*(*(v62 - 8) + 56))(v78, 1, 1, v62);
  v63 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v63 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v64 = v73;
  sub_219BF2A84();
  v65 = v84;
  v66 = sub_219BF2184();
  (*(v76 + 8))(v64, v77);
  (*(v74 + 8))(v55, v75);
  (v94)(v65, v89);
  return v66;
}

uint64_t sub_218D80FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a3;
  v67 = a4;
  v5 = MEMORY[0x277D83D88];
  sub_218D82880(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v50 - v7;
  v56 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v56);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v50 - v12;
  v62 = sub_219BED8D4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D82880(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v50 - v15;
  sub_218D82880(0, &unk_280E8FE90, MEMORY[0x277D343A8], v5);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  sub_218D82880(0, &qword_280E91210, MEMORY[0x277D32A30], v5);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v50 - v20;
  sub_218D82880(0, &qword_280E907B0, MEMORY[0x277D33528], v5);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v50 - v23;
  sub_218D82880(0, &qword_280EE9C40, MEMORY[0x277CC9578], v5);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v50 - v26;
  v28 = sub_219BF1904();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v50 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v50 - v36;
  sub_219BF2734();
  v38 = sub_219BDBD34();
  (*(*(v38 - 8) + 56))(v27, 1, 1, v38);
  v58 = a2;
  sub_219BF2734();
  v39 = sub_219BF18D4();
  v51 = *(v29 + 8);
  v52 = v28;
  v51(v32, v28);
  if (v39 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v41 = sub_219BF1AD4();
      (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
      v42 = sub_219BEFC64();
      (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
      v43 = sub_219BF4334();
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
      v44 = sub_219BEC004();
      v45 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
      sub_219BF1854();
      swift_unknownObjectRelease();
      sub_2188173E8(v45, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      sub_2188173E8(v18, &unk_280E8FE90, MEMORY[0x277D343A8]);
      sub_2188173E8(v21, &qword_280E91210, MEMORY[0x277D32A30]);
      sub_2188173E8(v24, &qword_280E907B0, MEMORY[0x277D33528]);
      sub_2188173E8(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v47 = v51;
      v46 = v52;
      v51(v35, v52);
      sub_219BF2744();
      v47(v37, v46);
      sub_218D7EFE8();
      sub_219BEDCB4();
      sub_219BEDCC4();
      v48 = v57;
      sub_219BEDD14();
      (*(v54 + 16))(v63, v48 + *(v56 + 28), v55);
      sub_218D82994(v48, type metadata accessor for TrendingMagazineFeedGroupConfigData);
      type metadata accessor for TrendingMagazineFeedGroupEmitter();
      sub_2186E3B14();
      sub_219BEE9B4();
      sub_219BEE984();
      sub_219BEE9D4();
      type metadata accessor for TrendingMagazineFeedGroupKnobs();
      sub_2186F8DC8(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
      sub_219BEEC84();

      v49 = v59;
      sub_219BED834();
      (*(v60 + 32))(v67, v49, v62);
      type metadata accessor for MagazineFeedGroup();
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v39);
    goto LABEL_7;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_218D819C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218D8292C(a1, a2, type metadata accessor for MagazineFeedGroup);
  sub_2186F8DC8(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D81A60()
{
  type metadata accessor for TrendingMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218D827D0();
  return sub_219BEF194();
}

uint64_t sub_218D81B24(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2 + *(type metadata accessor for TrendingMagazineFeedGroupEmitter() + 20);
  if (*(v5 + *(type metadata accessor for TrendingMagazineFeedGroupKnobs() + 28)) == 1 && ![v4 hasThumbnail])
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = [v4 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_8;
  }

  v6 = *(a3 + 8);
  v7 = [v4 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  LOBYTE(v6) = sub_2188537B8(v8, v10, v6);

  if (v6)
  {
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  v11 = *(a3 + 24);
  v12 = [v4 identifier];
  v13 = sub_219BF5414();
  v15 = v14;

  LOBYTE(v12) = sub_2188537B8(v13, v15, v11);

  v16 = v12 ^ 1;
  return v16 & 1;
}

uint64_t sub_218D81D24()
{
  sub_218D82880(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218D81DA4@<X0>(unint64_t *a1@<X8>)
{
  sub_218D7EFE8();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xA000000000000000;
  return result;
}

uint64_t sub_218D81E20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for TrendingMagazineFeedGroupKnobs();
  a2[4] = sub_2187EF3C4(&unk_280EAA170, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  a2[5] = sub_2187EF3C4(&qword_280EAA180, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D8292C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for TrendingMagazineFeedGroupKnobs);
}

uint64_t sub_218D81EE8()
{
  sub_218D7EFE8();

  return sub_219BEDCA4();
}

uint64_t sub_218D81F14@<X0>(uint64_t *a1@<X8>)
{
  sub_218D82880(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D7EFE8();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D82994(inited + 32, sub_2188317B0);
  sub_218D82880(0, &qword_280EE7768, type metadata accessor for TrendingMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218D829F4();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D82098()
{
  sub_2187EF3C4(&qword_280EA41C8, type metadata accessor for TrendingMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218D82228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D8228C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TrendingMagazineFeedGroupEmitter();
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  result = sub_218D7F948(v9);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v8;
  }

  return result;
}

void sub_218D8232C()
{
  if (!qword_280E8EBC0)
  {
    sub_218D82880(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    sub_219BEF864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EBC0);
    }
  }
}

uint64_t sub_218D823CC(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TrendingMagazineFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218D800D8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218D824A4()
{
  if (!qword_280E90388)
  {
    sub_219BF2754();
    sub_219BEF864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90388);
    }
  }
}

uint64_t objectdestroy_3Tm_5()
{
  v1 = (type metadata accessor for TrendingMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D7EFE8();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for TrendingMagazineFeedGroupKnobs() + 32);
  sub_2186F8DC8(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

void sub_218D82880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D828E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_218D8292C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D82994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218D829F4()
{
  result = qword_280EE7770[0];
  if (!qword_280EE7770[0])
  {
    sub_218D82880(255, &qword_280EE7768, type metadata accessor for TrendingMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE7770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsSectionServiceError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsSectionServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter()
{
  result = qword_280E9B560;
  if (!qword_280E9B560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D82BA4()
{
  sub_2186DE858();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, qword_280EBDB60);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0);
        if (v3 <= 0x3F)
        {
          sub_2186D6710(319, &unk_280E8DF40);
          if (v4 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8DE40);
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &unk_280E90620);
              if (v6 <= 0x3F)
              {
                sub_218D82D38();
                if (v7 <= 0x3F)
                {
                  sub_2186CFDE4(319, qword_280E9C090);
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

void sub_218D82D38()
{
  if (!qword_280E8FB48)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB48);
    }
  }
}

uint64_t sub_218D82D98(void **a1)
{
  v2 = *(sub_219BF11F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C811E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_218D878B0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_218D82E40(uint64_t a1)
{
  sub_218D8763C(0, &qword_27CC11AB0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31C68]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v40 - v7;
  v9 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  MEMORY[0x28223BE20](v9);
  v48 = v11;
  v49 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D88E84(0, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_219BE3514();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  sub_219BEDD14();
  v21 = *&v20[*(v18 + 100)];

  result = sub_218D89A4C(v20, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  if (!v21)
  {
    goto LABEL_15;
  }

  v52 = *(v21 + 16);
  if (!v52)
  {

LABEL_15:
    v33 = v49;
    sub_218D88F68(v1, v49, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
    (*(v5 + 16))(v8, a1, v4);
    v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v35 = (v48 + *(v5 + 80) + v34) & ~*(v5 + 80);
    v36 = swift_allocObject();
    sub_218D88FD0(v33, v36 + v34, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
    (*(v5 + 32))(v36 + v35, v8, v4);
    sub_218D89564(0, &unk_280E92668, &type metadata for NewspaperTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
    v38 = v37;
    swift_allocObject();
    v39 = sub_219BED764();
    v55 = v38;
    v54 = v39;
    sub_218D893A0(0, &qword_280EE6910, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v40 = v6;
  v41 = v1;
  v42 = a1;
  v43 = v8;
  v44 = v5;
  v45 = v4;
  v23 = 0;
  v24 = (v51 + 48);
  v25 = (v51 + 32);
  v26 = v21 + 40;
  v27 = MEMORY[0x277D84F90];
  v50 = v21;
  while (v23 < *(v21 + 16))
  {

    sub_219BE34E4();
    if ((*v24)(v14, 1, v15) == 1)
    {
      result = sub_2187450AC(v14, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88], sub_218D88E84);
    }

    else
    {
      v28 = *v25;
      (*v25)(v53, v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2191F7D30(0, v27[2] + 1, 1, v27);
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_2191F7D30(v29 > 1, v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      result = (v28)(v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v30, v53, v15);
      v21 = v50;
    }

    ++v23;
    v26 += 16;
    if (v52 == v23)
    {

      v1 = v41;
      v31 = *__swift_project_boxed_opaque_existential_1((v41 + *(v46 + 48)), *(v41 + *(v46 + 48) + 24));
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v27;

      sub_219BE3494();

      v5 = v44;
      v4 = v45;
      a1 = v42;
      v8 = v43;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D834C4(uint64_t a1)
{
  v62 = a1;
  v2 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = v3;
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v66 = qword_280F616D8;
  sub_2186F20D4();
  v60 = v16;
  v17 = swift_allocObject();
  v59 = xmmword_219C09EC0;
  *(v17 + 16) = xmmword_219C09EC0;
  sub_2186DE858();
  v19 = v18;
  sub_219BEDD14();
  v20 = *&v15[*(v4 + 28)];

  sub_218D89A4C(v15, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v21 = *(v20 + 16);

  v22 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v22;
  *(v17 + 32) = v21;
  v61 = v19;
  sub_219BEDD14();
  v23 = *&v13[*(v4 + 28)];

  sub_218D89A4C(v13, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v24 = *(v23 + 16);
  v67 = v1;
  if (v24)
  {
    v56 = v10;
    v57 = v7;
    v58 = v4;
    v68 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v24, 0);
    v25 = v68;
    v55 = v23;
    v26 = (v23 + 40);
    do
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      v68 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_21870B65C((v29 > 1), v30 + 1, 1);
        v25 = v68;
      }

      *(v25 + 16) = v30 + 1;
      v31 = v25 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v26 += 2;
      --v24;
    }

    while (v24);

    v1 = v67;
    v7 = v57;
    v4 = v58;
    v10 = v56;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  sub_218D89564(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v58 = v32;
  *(v17 + 96) = v32;
  v57 = sub_218D893FC();
  *(v17 + 104) = v57;
  *(v17 + 72) = v25;
  sub_219BF6214();
  sub_219BE5314();

  v33 = swift_allocObject();
  *(v33 + 16) = v59;
  sub_219BEDD14();
  v34 = *&v10[*(v4 + 32)];

  sub_218D89A4C(v10, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v35 = *(v34 + 16);

  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = MEMORY[0x277D83C10];
  *(v33 + 32) = v35;
  sub_219BEDD14();
  v36 = *&v7[*(v4 + 32)];

  sub_218D89A4C(v7, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v37 = *(v36 + 16);
  if (v37)
  {
    v68 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v37, 0);
    v38 = v68;
    v61 = v36;
    v39 = (v36 + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v68 = v38;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);

      if (v43 >= v42 >> 1)
      {
        sub_21870B65C((v42 > 1), v43 + 1, 1);
        v38 = v68;
      }

      *(v38 + 16) = v43 + 1;
      v44 = v38 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      v39 += 2;
      --v37;
    }

    while (v37);

    v1 = v67;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v45 = v57;
  *(v33 + 96) = v58;
  *(v33 + 104) = v45;
  *(v33 + 72) = v38;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v46);
  *(&v55 - 2) = v62;
  sub_218D88E84(0, qword_280EDCF70, type metadata accessor for TodayFeedPool, MEMORY[0x277D83D88]);
  sub_219BE3204();
  v66 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter;
  v47 = v65;
  sub_218D88F68(v1, v65, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v49 = swift_allocObject();
  sub_218D88FD0(v47, v49 + v48, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v50 = sub_219BE2E54();
  sub_218D89564(0, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
  sub_219BE2F64();

  sub_218D88F68(v67, v47, v66);
  v51 = swift_allocObject();
  sub_218D88FD0(v47, v51 + v48, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v52 = sub_219BE2E54();
  v53 = sub_219BE2F74();

  return v53;
}

uint64_t sub_218D83BF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D875D4();
  sub_219BE3204();
  sub_218D88F68(v2, v7, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_218D88FD0(v7, v9 + v8, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  *(v9 + ((v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218D876BC;
  *(v10 + 24) = v9;

  v11 = sub_219BE2E54();
  sub_218D87810(0, qword_280EC4410, type metadata accessor for NewspaperTodayFeedGroup, qword_280E9AD88, &type metadata for NewspaperTodayFeedGroupEmitterCursor);
  sub_219BE2F64();

  v12 = sub_219BE2E54();
  sub_218B8B124(0);
  sub_219BE2F64();

  sub_218D88F68(v17[1], v7, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v13 = swift_allocObject();
  sub_218D88FD0(v7, v13 + v8, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
  v14 = sub_219BE2E54();
  v15 = sub_219BE3064();

  return v15;
}

uint64_t sub_218D83ED0()
{
  sub_218D89564(0, &unk_280E92668, &type metadata for NewspaperTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
  sub_219BEF054();
  v0 = sub_219BE2E54();
  sub_219BE2F64();

  sub_219BEF0C4();
  v1 = sub_219BE31C4();

  return v1;
}

char *sub_218D83FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v6 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  v9 = sub_219BEDC44();

  if (v9 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v43 = v8;
  v44 = v3;
  v42 = v7;
  if (v10)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v41 = a2;
    v12 = 0;
    v13 = v48;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v15 = [v14 identifier];
      v16 = sub_219BF5414();
      v18 = v17;
      swift_unknownObjectRelease();

      v48 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v20 + 1, 1);
        v13 = v48;
      }

      ++v12;
      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v10 != v12);

    a2 = v41;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v22 = sub_218845F78(v13);

  v23 = sub_219A7F680(v22, v47);
  v25 = v24;
  v27 = v26;

  if (v25)
  {
    MEMORY[0x28223BE20](v28);
    v29 = v44;
    *(&v41 - 6) = v44;
    *(&v41 - 5) = a2;
    *(&v41 - 4) = v23;
    *(&v41 - 3) = v25;
    v30 = v46;
    *(&v41 - 2) = v46;
    type metadata accessor for NewspaperTodayFeedGroup();
    sub_219BE3204();
    v31 = swift_allocObject();
    v47 = v23;
    *(v31 + 16) = v27;

    v32 = sub_219BE2E54();
    sub_218D87810(0, qword_280EC4410, type metadata accessor for NewspaperTodayFeedGroup, qword_280E9AD88, &type metadata for NewspaperTodayFeedGroupEmitterCursor);
    sub_219BE2F74();

    v33 = v45;
    sub_218D88F68(v29, v45, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
    v34 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v36[2] = v47;
    v36[3] = v25;
    v36[4] = v27;
    sub_218D88FD0(v33, v36 + v34, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
    *(v36 + v35) = a2;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;

    v37 = sub_219BE2E54();
    v38 = sub_219BE3054();

    return v38;
  }

  else
  {

    v39 = sub_219BEEDD4();
    sub_2186DF304(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D323A8], v39);
    sub_218D88C2C();
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218D844E0(uint64_t a1, uint64_t a2)
{
  sub_218B8B124(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v14 - v6;
  if (a2)
  {
    sub_218D87810(0, qword_280EDB680, type metadata accessor for TodayFeedGroup, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
    v9 = &v7[*(v8 + 48)];
    sub_218D88F68(a1, v7, type metadata accessor for NewspaperTodayFeedGroup);
    type metadata accessor for TodayFeedGroup();
    swift_storeEnumTagMultiPayload();
    v14[1] = a2;
    sub_218D89564(0, &unk_280E92668, &type metadata for NewspaperTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
    v11 = v10;
    swift_allocObject();

    v12 = sub_219BED754();
    v9[3] = v11;
    *v9 = v12;
  }

  else
  {
    sub_218D88F68(a1, v14 - v6, type metadata accessor for NewspaperTodayFeedGroup);
    type metadata accessor for TodayFeedGroup();
    swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  sub_218D88E84(0, &qword_280EE6C60, sub_218B8B124, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218D84750()
{
  type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayFeedGroup();
  sub_218B8B16C();
  return sub_219BEF194();
}

uint64_t sub_218D84814(uint64_t a1)
{
  v3 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = v5;
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = *(v4 + 52);
  v67 = v6;
  v68 = v1;
  v8 = *(v1 + v7);
  *(v6 + 16) = v8;
  v9 = v6 + 16;
  if (a1)
  {
    v11 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
    v10 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
    v12 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v75 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
    v74[1] = v11;
    v74[2] = v10;
    v74[0] = v12;
    v76 = v12;
    v73 = v12;

    sub_218D89928(&v76, v72);

    v14 = sub_2191ED550(v13);
    MEMORY[0x28223BE20](v14);
    *(&v63 - 2) = v74;
    sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
    sub_218D899C0();
    v15 = sub_219BF56E4();
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v71 = v9;
  if (v15 >> 62)
  {
    result = sub_219BF7214();
    v17 = result;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_33:
    v69 = MEMORY[0x277D84F90];
LABEL_34:

    if (*(*v71 + 16))
    {
      MEMORY[0x28223BE20](v54);
      v55 = v68;
      *(&v63 - 2) = v68;
      *(&v63 - 1) = v56;
      sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
      sub_219BE3204();
      v57 = v66;
      sub_218D88F68(v55, v66, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
      v58 = (*(v64 + 80) + 24) & ~*(v64 + 80);
      v59 = (v65 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v67;
      sub_218D88FD0(v57, v60 + v58, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
      *(v60 + v59) = v69;

      v61 = sub_219BE2E54();
      sub_218D89564(0, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
      v62 = sub_219BE2F74();
    }

    else
    {
      v73 = v69;
      sub_218D893A0(0, &unk_280EE6AF8, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
      swift_allocObject();
      v62 = sub_219BE3014();
    }

    return v62;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_6:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15 & 0xC000000000000001;
    v69 = MEMORY[0x277D84F90];
    v70 = v15 & 0xC000000000000001;
    v20 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    while (1)
    {
      if (v19)
      {
        v21 = MEMORY[0x21CECE0F0](v18, v15);
      }

      else
      {
        v21 = *(v15 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      v22 = [v21 v20[278]];
      v23 = sub_219BF5414();
      v25 = v24;

      if (*(v8 + 16))
      {
        sub_21870F700(v23, v25);
        v27 = v26;

        if (v27)
        {
          v28 = v20;
          v29 = [v21 v20[278]];
          v30 = sub_219BF5414();
          v32 = v31;

          v33 = sub_21870F700(v30, v32);
          v35 = v34;

          if (v35)
          {
            v36 = v71;
            v37 = *v71;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v73 = v37;
            *v36 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_219492AC0();
              v37 = v73;
            }

            sub_218D89920();
            sub_219489888(v33, v37);
            *v36 = v37;
          }

          v20 = v28;
          v39 = [v21 v28 + 1656];
          v40 = sub_219BF5414();
          v42 = v41;

          if (*(v8 + 16))
          {
            v43 = sub_21870F700(v40, v42);
            v45 = v44;

            if (v45)
            {
              v46 = *(v8 + 56) + 24 * v43;
              v48 = *v46;
              v47 = *(v46 + 8);
              v49 = *(v46 + 16);
              sub_21892DEAC();
              if (sub_218D866E8(v21, v48, v47, v49))
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v69 = sub_2191F8C80(0, *(v69 + 2) + 1, 1, v69);
                }

                v51 = *(v69 + 2);
                v50 = *(v69 + 3);
                if (v51 >= v50 >> 1)
                {
                  v69 = sub_2191F8C80((v50 > 1), v51 + 1, 1, v69);
                }

                swift_unknownObjectRelease();
                v52 = v69;
                *(v69 + 2) = v51 + 1;
                v53 = &v52[16 * v51];
                *(v53 + 4) = v48;
                *(v53 + 5) = v47;
                v20 = v28;
              }

              else
              {
                swift_unknownObjectRelease();
                sub_218D89920();
                v20 = v28;
              }

              goto LABEL_30;
            }
          }

          else
          {
          }

          swift_unknownObjectRelease();
LABEL_30:
          v19 = v70;
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_9:
      if (v17 == ++v18)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D84F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_219BF11F4();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x28223BE20](v8);
  v46 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  sub_218718690(a2 + *(v12 + 28), v49);
  v13 = v50;
  v14 = v51;
  v15 = __swift_project_boxed_opaque_existential_1(v49, v50);
  v16 = *(v11 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v42 = v15;
    v43 = v14;
    v44 = v13;
    v45 = v3;
    v52 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v16, 0);
    v18 = v52;
    v19 = (v11 + 40);
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      v52 = v18;
      v23 = v18[2];
      v22 = v18[3];

      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v18 = v52;
      }

      v18[2] = v23 + 1;
      v24 = &v18[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v19 += 2;
      --v16;
    }

    while (v16);
    v4 = v45;
    v17 = MEMORY[0x277D84F90];
  }

  v25 = sub_219BEFFF4();

  v52 = v25;

  sub_218D82D98(&v52);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    v26 = v52;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v27 = v26[2];
    if (v27)
    {
      v42 = 0;
      v43 = a3;
      v49[0] = v17;
      sub_21870B65C(0, v27, 0);
      v17 = v49[0];
      v28 = *(v48 + 16);
      v29 = *(v48 + 80);
      v41[1] = v26;
      v30 = v26 + ((v29 + 32) & ~v29);
      v44 = *(v48 + 72);
      v45 = v28;
      v48 += 16;
      v31 = (v48 - 8);
      do
      {
        v32 = v46;
        v33 = v47;
        v45(v46, v30, v47);
        v34 = sub_219BF11E4();
        v36 = v35;
        (*v31)(v32, v33);
        v49[0] = v17;
        v38 = *(v17 + 16);
        v37 = *(v17 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_21870B65C((v37 > 1), v38 + 1, 1);
          v17 = v49[0];
        }

        *(v17 + 16) = v38 + 1;
        v39 = v17 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v30 += v44;
        --v27;
      }

      while (v27);

      a3 = v43;
    }

    else
    {
    }

    *a3 = v17;
  }

  return result;
}

uint64_t sub_218D85238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for NewspaperGroup();
  sub_219BE3204();

  v5 = sub_219BE2E54();
  type metadata accessor for NewspaperTodayFeedGroup();
  v6 = sub_219BE2F74();

  return v6;
}

uint64_t sub_218D85368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v10 + 64) = v12;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0xE000000000000000;
  sub_219BE5314();

  if (a4)
  {
    return sub_218D83FB0(a4, a6, a7);
  }

  v14 = sub_219BEEDD4();
  sub_2186DF304(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D323A8], v14);
  sub_218D88C2C();
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_218D855A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v113 = a4;
  v119 = a3;
  v122 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_218D88E84(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v103 = &v94 - v8;
  sub_218D88E84(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = (&v94 - v10);
  sub_218D88E84(0, &unk_280E91A10, sub_2189AE994, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v94 - v12;
  v126 = sub_219BF2AB4();
  v121 = *(v126 - 8);
  v13 = MEMORY[0x28223BE20](v126);
  v118 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v14;
  MEMORY[0x28223BE20](v13);
  v120 = &v94 - v15;
  v114 = sub_219BEFBD4();
  v124 = *(v114 - 8);
  v16 = MEMORY[0x28223BE20](v114);
  v117 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v17;
  MEMORY[0x28223BE20](v16);
  v112 = &v94 - v18;
  v19 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v19 - 8);
  v99 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF0BD4();
  v100 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs() - 8;
  MEMORY[0x28223BE20](v96);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewspaperGroupKnobs();
  v26 = *(v25 - 8);
  v98 = (v25 - 8);
  v107 = v26;
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v115 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v94 - v29;
  sub_2186DE858();
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for NewspaperGroupConfig();
  v104 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v125 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v38;
  MEMORY[0x28223BE20](v37);
  v40 = (&v94 - v39);
  v41 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v101 = __swift_project_boxed_opaque_existential_1((a1 + *(v41 + 24)), *(a1 + *(v41 + 24) + 24));
  (*(v33 + 16))(v35, a1, v32);
  v116 = v40;
  sub_218DEF860(v35, v40);
  v97 = a1 + *(v41 + 20);
  sub_218D88F68(v97, v24, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  sub_219BEF134();
  sub_219BEF0B4();
  v42 = v99;
  sub_218D88F68(*&v127[0] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v99, type metadata accessor for TodayFeedServiceContext);

  v43 = v96;
  sub_2189AE994(0);
  v45 = v44;
  sub_219BEE9C4();
  *(v30 + 3) = v46;
  sub_219BEE994();
  *(v30 + 4) = v47;
  v30[40] = 0;
  sub_219BEE9E4();
  *(v30 + 6) = v48;
  v30[56] = 0;
  *(v30 + 2) = *(v24 + 2);
  v49 = v43;
  v98 = type metadata accessor for TodayFeedServiceConfig;
  v95 = sub_2187DF448;
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);

  sub_219BEEC94();
  sub_21904240C(v42, v24, v22);
  v51 = v50;
  sub_218D89A4C(v42, type metadata accessor for TodayFeedServiceContext);
  v52 = v112;
  (*(v100 + 8))(v22, v123);
  sub_218D89A4C(v24, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  *v30 = v51;
  *(v30 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  v53 = v30;
  v54 = v52;
  v55 = v103;
  (*(v124 + 104))(v52, *MEMORY[0x277D32908], v114);
  sub_219BEF0B4();
  v123 = *(v129 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v56 = *(v49 + 36);
  v57 = *(v45 - 8);
  v58 = v102;
  (*(v57 + 16))(v102, v97 + v56, v45);
  (*(v57 + 56))(v58, 0, 1, v45);
  v59 = sub_219BF35D4();
  (*(*(v59 - 8) + 56))(v106, 1, 1, v59);
  LOBYTE(v127[0]) = 1;
  sub_218D8763C(0, &qword_280E90070, v98, v95, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v60 = sub_219BF2774();
  (*(*(v60 - 8) + 56))(v55, 1, 1, v60);
  v61 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v61 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  v62 = v120;
  v63 = sub_219BF2A84();
  MEMORY[0x28223BE20](v63);
  v64 = v101;
  sub_218B8B75C();
  v103 = sub_219BE3204();
  v106 = type metadata accessor for NewspaperGroupConfig;
  sub_218D88F68(v116, v125, type metadata accessor for NewspaperGroupConfig);
  sub_218D88F0C(v64, v127);
  v65 = v124;
  v66 = v114;
  (*(v124 + 16))(v117, v54, v114);
  sub_218D88F68(v53, v115, type metadata accessor for NewspaperGroupKnobs);
  v67 = v121;
  (*(v121 + 16))(v118, v62, v126);
  v68 = *(v104 + 80);
  v69 = (v68 + 16) & ~v68;
  v104 = v68 | 7;
  v102 = v69;
  v70 = (v105 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = v70;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (*(v65 + 80) + v71 + 200) & ~*(v65 + 80);
  v107 = (v109 + *(v107 + 80) + v72) & ~*(v107 + 80);
  v113 = v53;
  v109 = (v108 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (*(v67 + 80) + v109 + 8) & ~*(v67 + 80);
  v74 = v66;
  v75 = swift_allocObject();
  v110 = type metadata accessor for NewspaperGroupConfig;
  sub_218D88FD0(v125, v75 + v69, type metadata accessor for NewspaperGroupConfig);
  *(v75 + v70) = v111;
  v76 = v75 + v71;
  v77 = v127[3];
  *(v76 + 32) = v127[2];
  *(v76 + 48) = v77;
  v78 = v127[1];
  *v76 = v127[0];
  *(v76 + 16) = v78;
  v79 = v127[7];
  *(v76 + 96) = v127[6];
  *(v76 + 112) = v79;
  v80 = v127[5];
  *(v76 + 64) = v127[4];
  *(v76 + 80) = v80;
  *(v76 + 192) = v128;
  v81 = v127[11];
  *(v76 + 160) = v127[10];
  *(v76 + 176) = v81;
  v82 = v127[9];
  *(v76 + 128) = v127[8];
  *(v76 + 144) = v82;
  (*(v65 + 32))(v75 + v72, v117, v74);
  sub_218D88FD0(v115, v75 + v107, type metadata accessor for NewspaperGroupKnobs);
  *(v75 + v109) = v123;
  v83 = v121;
  (*(v121 + 32))(v75 + v73, v118, v126);
  swift_unknownObjectRetain();

  v84 = sub_219BE2E54();
  type metadata accessor for NewspaperGroup();
  sub_219BE2F64();

  v85 = v116;
  v86 = v125;
  sub_218D88F68(v116, v125, v106);
  v87 = v105;
  v88 = swift_allocObject();
  sub_218D88FD0(v86, &v102[v88], v110);
  v89 = (v88 + v87);
  v90 = v119;
  *v89 = v122;
  v89[1] = v90;

  v91 = sub_219BE2E54();
  v92 = sub_219BE2FD4();
  swift_unknownObjectRelease();

  (*(v83 + 8))(v120, v126);
  (*(v124 + 8))(v112, v74);
  sub_218D89A4C(v85, type metadata accessor for NewspaperGroupConfig);
  sub_218D89A4C(v113, type metadata accessor for NewspaperGroupKnobs);
  return v92;
}

uint64_t sub_218D86590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NewspaperGroup();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D88F68(a1, v7, type metadata accessor for NewspaperGroup);
  v8 = v5[7];
  v9 = sub_219BED8D4();
  (*(*(v9 - 8) + 16))(a2, &v7[v8], v9);
  v10 = *&v7[v5[8]];
  v11 = type metadata accessor for NewspaperTodayFeedGroup();
  *(a2 + v11[5]) = v10;
  *(a2 + v11[6]) = *&v7[v5[9]];
  v12 = *&v7[v5[10]];

  swift_unknownObjectRetain();

  result = sub_218D89A4C(v7, type metadata accessor for NewspaperGroup);
  *(a2 + v11[7]) = v12;
  return result;
}

uint64_t sub_218D866E8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v8 = *(v4 + *(v7 + 36));
  v9 = [v8 hasSubscriptionToTag_];
  v10 = [a1 identifier];
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [v8 hasAutoFavoriteSubscriptionForTagID_];

  v12 = MEMORY[0x277D837D0];
  if (a4)
  {
    v13 = v9 | v11;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C0B8C0;
    v15 = [a1 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    *(v14 + 56) = v12;
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = MEMORY[0x277D839B0];
    v20 = MEMORY[0x277D839F0];
    *(v14 + 96) = MEMORY[0x277D839B0];
    *(v14 + 104) = v20;
    *(v14 + 72) = v9;
    *(v14 + 136) = v19;
    *(v14 + 144) = v20;
    *(v14 + 112) = v13 & 1;
    sub_219BF6214();
    sub_219BE5314();
    goto LABEL_40;
  }

  v21 = *(v4 + *(v7 + 32));
  v22 = [v21 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v23 = [a1 asSection];
    if (!v23 || (v24 = [v23 parentID], swift_unknownObjectRelease(), !v24))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    v24 = [a1 identifier];
  }

  v25 = sub_219BF5414();
  v27 = v26;

  v28 = [v22 purchasedTagIDs];
  v29 = sub_219BF5D44();

  LOBYTE(v28) = sub_2188537B8(v25, v27, v29);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if ((v28 & 1) == 0)
  {
LABEL_14:
    v31 = [objc_msgSend(v21 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v31, v31 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v51 = v49;
    v52 = v50;
    v32 = MEMORY[0x277D84F70];
    if (*(&v50 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v33 = v48;
        v34 = [v48 integerValue];
        if (v34 == -1)
        {

          goto LABEL_34;
        }

        v35 = v34;
LABEL_23:
        if (objc_getAssociatedObject(v31, ~v35))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
        }

        v51 = v49;
        v52 = v50;
        if (*(&v50 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v36 = v48;
            v37 = [v36 integerValue];

            if ((v37 ^ v35))
            {
              goto LABEL_34;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_2187450AC(&v51, &qword_280E8B4F0, v32 + 8, MEMORY[0x277D83D88], sub_218D89564);
        }

        if ((v35 & 1) == 0)
        {
LABEL_32:
          v30 = 0;
          goto LABEL_37;
        }

LABEL_34:
        v38 = [objc_msgSend(v21 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v39 = [a1 identifier];
        if (!v39)
        {
          sub_219BF5414();
          v39 = sub_219BF53D4();
        }

        v30 = [v38 containsTagID_];

        goto LABEL_37;
      }
    }

    else
    {
      sub_2187450AC(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_218D89564);
    }

    v33 = 0;
    v35 = 0;
    goto LABEL_23;
  }

  v30 = 1;
LABEL_37:
  v13 = v9 & v30;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C0EE20;
  v41 = [a1 identifier];
  v42 = sub_219BF5414();
  v44 = v43;

  *(v40 + 56) = v12;
  *(v40 + 64) = sub_2186FC3BC();
  v45 = MEMORY[0x277D839B0];
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  v46 = MEMORY[0x277D839F0];
  *(v40 + 96) = v45;
  *(v40 + 104) = v46;
  *(v40 + 72) = v9;
  *(v40 + 136) = v45;
  *(v40 + 144) = v46;
  *(v40 + 112) = v30;
  *(v40 + 176) = v45;
  *(v40 + 184) = v46;
  *(v40 + 152) = v13;
  sub_219BF6214();
  sub_219BE5314();
LABEL_40:

  return v13 & 1;
}

uint64_t sub_218D86DA8(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + *(type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() + 40));
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = *a2;
  v6 = *(*a2 + 16);
  if (v6 && (v11[6] = v2, v7 = sub_21947D1C0(v6, 0), v8 = sub_2194B7E3C(v11, v7 + 4, v6, v5), , result = sub_21892DE98(), v8 != v6))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_219BF1C34();

    return v10;
  }

  return result;
}

uint64_t sub_218D86EC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10[3] = a3;
  v7 = *a1;
  v10[2] = a2 + 16;
  v8 = sub_218F8D97C(sub_218D89A30, v10, v7);
  v11 = a4;

  result = sub_2191EE720(v8);
  *a5 = v11;
  return result;
}

uint64_t sub_218D86F58@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  swift_beginAccess();
  v10 = *a2;
  if (!*(v10 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_21870F700(v7, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:
    result = swift_endAccess();
    goto LABEL_7;
  }

  v14 = *(v10 + 56) + 24 * v11;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  swift_endAccess();
  sub_21892DEAC();
  result = sub_218D866E8(v5, v15, v16, v17);
  if (result)
  {
    *a3 = v15;
    a3[1] = v16;
    return result;
  }

  result = sub_218D89920();
LABEL_7:
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_218D87098(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_218D870D0@<X0>(uint64_t a1@<X8>)
{
  sub_2186DE858();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D87150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  a2[4] = sub_2186DF304(&qword_280EA00D0, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  a2[5] = sub_2186DF304(&qword_27CC11AB8, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D88F68(v2 + v4, boxed_opaque_existential_1, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
}

uint64_t sub_218D87214()
{
  type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  sub_2189AE994(0);
  return sub_219BEE964();
}

uint64_t sub_218D8727C()
{
  sub_2186DE858();

  return sub_219BEDCA4();
}

uint64_t sub_218D872A8@<X0>(uint64_t *a1@<X8>)
{
  sub_218D88E84(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186DE858();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D89A4C(inited + 32, sub_2188317B0);
  sub_218D88E84(0, &qword_27CC11AC0, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218D89AAC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D8742C()
{
  sub_2186DF304(&unk_27CC11A90, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218D875D4()
{
  if (!qword_280E9AD78)
  {
    type metadata accessor for TodayFeedPool();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E9AD78);
    }
  }
}

void sub_218D8763C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_218D87810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_218D89564(255, a4, a5, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218D878B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF11F4();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BF11F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_218D87C7C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_218D879DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218D879DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BF11F4();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_219BF11D4();
      v28 = v27;
      sub_219BF11D4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218D87C7C(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_219BF11F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_218C81048(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_218D8868C(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_218C81048(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_218C80FBC(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_219BF11D4();
      v31 = v30;
      sub_219BF11D4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_219BF11D4();
        v42 = v41;
        sub_219BF11D4();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v33 < v31)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_2191F6B60(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_2191F6B60((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_218D8868C(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_218C80FBC(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_219BF11D4();
    v109 = v108;
    sub_219BF11D4();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_218D8868C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_219BF11F4();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_219BF11D4();
          v49 = v48;
          sub_219BF11D4();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_219BF11D4();
        v29 = v28;
        sub_219BF11D4();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_2189F193C(&v68, &v67, &v66);
  return 1;
}

void sub_218D88C2C()
{
  if (!qword_280EE6DA8)
  {
    sub_218D87810(255, qword_280EC4410, type metadata accessor for NewspaperTodayFeedGroup, qword_280E9AD88, &type metadata for NewspaperTodayFeedGroupEmitterCursor);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6DA8);
    }
  }
}

uint64_t sub_218D88CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_218D87810(0, qword_280EC4410, type metadata accessor for NewspaperTodayFeedGroup, qword_280E9AD88, &type metadata for NewspaperTodayFeedGroupEmitterCursor);
  v7 = *(v6 + 48);
  sub_218D88F68(a1, a2, type metadata accessor for NewspaperTodayFeedGroup);
  *(a2 + v7) = v5;
}

uint64_t sub_218D88D80(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218D85368(a1, v1[2], v1[3], v1[4], v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218D88E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D88F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D88FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_218D89038(uint64_t a1)
{
  v3 = *(type metadata accessor for NewspaperGroupConfig() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_219BEFBD4() - 8);
  v8 = (v6 + *(v7 + 80) + 200) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for NewspaperGroupKnobs() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_219BF2AB4() - 8);
  return sub_219358B00(a1, v1 + v4, *(v1 + v5), v1 + v6, v1 + v8, v1 + v11, *(v1 + v12), v1 + ((v12 + *(v13 + 80) + 8) & ~*(v13 + 80)));
}

uint64_t sub_218D891FC(uint64_t a1)
{
  v3 = *(type metadata accessor for NewspaperGroupConfig() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_21935A8E0(a1, v1 + v4, v6, v7);
}

uint64_t sub_218D8929C()
{
  v1 = *(type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64);
  sub_218D8763C(0, &qword_27CC11AB0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31C68]);
  return sub_218D834C4(v0 + ((v2 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)));
}

void sub_218D893A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_218D89564(255, a3, a4, a5);
    v6 = sub_219BE3114();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218D893FC()
{
  result = qword_280E8EDC0;
  if (!qword_280E8EDC0)
  {
    sub_218D89564(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDC0);
  }

  return result;
}

void sub_218D89564(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = (type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186DE858();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];

  v5 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v6 = *(v5 + 28);
  sub_2189AE994(0);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v5 + 32);
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_218D89874@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_218D86EC4(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_218D89928(uint64_t a1, uint64_t a2)
{
  sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D899C0()
{
  result = qword_280E8ECF0;
  if (!qword_280E8ECF0)
  {
    sub_218A4247C(255, &qword_280E8ED00, &qword_280E8E680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8ECF0);
  }

  return result;
}

uint64_t sub_218D89A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218D89AAC()
{
  result = qword_27CC11AC8;
  if (!qword_27CC11AC8)
  {
    sub_218D88E84(255, &qword_27CC11AC0, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11AC8);
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerTodayFeedGroupEmitter()
{
  result = qword_280EA0E10;
  if (!qword_280EA0E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D89BA8()
{
  sub_2186E14F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280EAD3B0);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280EE6100);
          if (v4 <= 0x3F)
          {
            sub_2186CFDE4(319, &unk_280E90620);
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

uint64_t sub_218D89CCC()
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData() - 8;
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  v46 = 23;
  sub_2189AE994(0);
  v39 = v0;
  v44 = sub_219BEE964();
  sub_2186E4788(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v41 = v8;
  v9 = *(v8 - 8);
  v43 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v42 = v11;
  *(v11 + 16) = xmmword_219C09EC0;
  v36 = (v11 + v10);
  sub_2186E14F4();
  v38 = v12;
  sub_219BEDD14();
  v13 = *(v5 + 32);
  v37 = *(v2 + 16);
  v14 = v1;
  v37(v4, &v7[v13], v1);
  v35 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData;
  sub_218D90974(v7, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  v15 = sub_219BF1784();
  v17 = v16;
  v18 = *(v2 + 8);
  v33[2] = v2 + 8;
  v34 = v18;
  v18(v4, v14);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v17;
  sub_218D90870();
  swift_allocObject();
  v20 = sub_219BEFB94();
  v21 = v36;
  *v36 = v20;
  v22 = *MEMORY[0x277D32308];
  v23 = v9 + 104;
  v24 = *(v9 + 104);
  v33[1] = v23;
  v25 = v41;
  v24(v21, v22, v41);
  sub_219BEDD14();
  v37(v4, &v7[*(v40 + 32)], v14);
  sub_218D90974(v7, v35);
  v26 = sub_219BF1784();
  v28 = v27;
  v34(v4, v14);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  swift_allocObject();
  v30 = sub_219BEFB94();
  v31 = v43;
  *(v21 + v43) = v30;
  v24((v21 + v31), v22, v25);
  v45 = v44;
  sub_2191EE478(v42);
  return v45;
}

uint64_t sub_218D8A120(uint64_t a1, uint64_t a2)
{
  v3[196] = v2;
  v3[195] = a2;
  v3[194] = a1;
  type metadata accessor for TodayFeedGroup();
  v3[197] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v3[198] = v4;
  v3[199] = *(v4 - 8);
  v3[200] = swift_task_alloc();
  type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  v3[206] = swift_task_alloc();
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D8A300, 0, 0);
}

uint64_t sub_218D8A300()
{
  v25 = v0;
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = v0[215];
  v2 = v0[214];
  v3 = v0[196];
  v4 = sub_219BE5434();
  v0[216] = __swift_project_value_buffer(v4, qword_280F62520);
  sub_218D9090C(v3, v1, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  sub_218D9090C(v3, v2, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[215];
  v9 = v0[214];
  if (v7)
  {
    v10 = v0[202];
    v22 = v6;
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v11 = 136315394;
    sub_2186E14F4();
    sub_219BEDD14();
    sub_218D90974(v8, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v12 = *v10;
    v13 = v10[1];

    sub_218D90974(v10, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    v14 = sub_2186D1058(v12, v13, &v24);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_219BEDD14();
    sub_218D90974(v9, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v15 = v10[2];
    v16 = v10[3];

    sub_218D90974(v10, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    v17 = sub_2186D1058(v15, v16, &v24);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_2186C1000, v5, v22, "Fetching channel picker configs with channel picker group subtype: %s and section identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v23, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    sub_218D90974(v9, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    sub_218D90974(v8, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  }

  v18 = (v0[196] + *(v0[203] + 28));
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v19 = off_282A45270;
  type metadata accessor for ChannelPickerConfigManager();
  v0[217] = v19();
  v20 = swift_task_alloc();
  v0[218] = v20;
  *v20 = v0;
  v20[1] = sub_218D8A668;

  return MEMORY[0x2821D23D8](v0 + 192);
}

uint64_t sub_218D8A668()
{
  *(*v1 + 1752) = v0;

  if (v0)
  {
    v2 = sub_218D8C080;
  }

  else
  {

    v2 = sub_218D8A784;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_218D8A784()
{
  v154 = v0;
  v1 = *(v0 + 1536);
  if (!v1)
  {
    v57 = *(v0 + 1632);
    v58 = *(v0 + 1568);
    sub_218D9090C(v58, *(v0 + 1640), type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    sub_218D9090C(v58, v57, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v59 = sub_219BE5414();
    v60 = sub_219BF61F4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 1640);
    v63 = *(v0 + 1632);
    if (v61)
    {
      v64 = *(v0 + 1616);
      v147 = v60;
      v65 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v153[0] = v150;
      *v65 = 136315394;
      sub_2186E14F4();
      sub_219BEDD14();
      sub_218D90974(v62, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v66 = *v64;
      v67 = v64[1];

      sub_218D90974(v64, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      v68 = sub_2186D1058(v66, v67, v153);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      sub_219BEDD14();
      sub_218D90974(v63, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v69 = v64[2];
      v70 = v64[3];

      sub_218D90974(v64, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      v71 = sub_2186D1058(v69, v70, v153);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_2186C1000, v59, v147, "Failed to fetch channel picker configs with channel picker group subtype: %s and section identifier: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v150, -1, -1);
      MEMORY[0x21CECF960](v65, -1, -1);
    }

    else
    {

      sub_218D90974(v63, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      sub_218D90974(v62, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    }

    sub_218D905D8();
    swift_allocError();
    *v127 = 0;
    goto LABEL_45;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = MEMORY[0x277D84F98];
    goto LABEL_24;
  }

  v3 = 0;
  v4 = (v0 + 720);
  v144 = (v0 + 1176);
  v5 = v2 - 1;
  v6 = v1 + 32;
  v7 = MEMORY[0x277D84F98];
  while (2)
  {
    v8 = v6 + 152 * v3;
    v9 = v3;
    while (1)
    {
      if (v9 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v10 = *(v8 + 16);
      *v4 = *v8;
      *(v0 + 736) = v10;
      v11 = *(v8 + 32);
      v12 = *(v8 + 48);
      v13 = *(v8 + 80);
      *(v0 + 784) = *(v8 + 64);
      *(v0 + 800) = v13;
      *(v0 + 752) = v11;
      *(v0 + 768) = v12;
      v14 = *(v8 + 96);
      v15 = *(v8 + 112);
      v16 = *(v8 + 128);
      *(v0 + 864) = *(v8 + 144);
      *(v0 + 832) = v15;
      *(v0 + 848) = v16;
      *(v0 + 816) = v14;
      v3 = v9 + 1;
      v17 = *(v0 + 728);
      if (v17)
      {
        break;
      }

      v8 += 152;
      ++v9;
      if (v2 == v3)
      {
        goto LABEL_24;
      }
    }

    v145 = v6;
    v146 = v5;
    v18 = *(v0 + 720);
    sub_218D9062C(v0 + 720, v0 + 872);
    sub_218D9062C(v0 + 720, v0 + 1024);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v7;
    result = sub_21870F700(v18, v17);
    v22 = v7;
    v23 = v7[2];
    v24 = (v21 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      __break(1u);
      goto LABEL_53;
    }

    v27 = v21;
    if (v22[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = result;
        sub_219492C4C();
        result = v45;
        if (v27)
        {
          goto LABEL_15;
        }

LABEL_17:
        v7 = v153[0];
        *(v153[0] + 8 * (result >> 6) + 64) |= 1 << result;
        v46 = (v7[6] + 16 * result);
        *v46 = v18;
        v46[1] = v17;
        v47 = v7[7] + 152 * result;
        v48 = *(v0 + 864);
        v50 = *(v0 + 832);
        v49 = *(v0 + 848);
        *(v47 + 96) = *(v0 + 816);
        *(v47 + 112) = v50;
        *(v47 + 128) = v49;
        *(v47 + 144) = v48;
        v52 = *(v0 + 784);
        v51 = *(v0 + 800);
        v53 = *(v0 + 768);
        *(v47 + 32) = *(v0 + 752);
        *(v47 + 48) = v53;
        *(v47 + 64) = v52;
        *(v47 + 80) = v51;
        v54 = *(v0 + 736);
        *v47 = *v4;
        *(v47 + 16) = v54;
        result = sub_218D90688(v0 + 720);
        v55 = v7[2];
        v25 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (!v25)
        {
          v7[2] = v56;
LABEL_19:
          v6 = v145;
          v5 = v146;
          if (v146 != v9)
          {
            continue;
          }

LABEL_24:
          v72 = *(v0 + 1608);

          sub_2186E14F4();
          *(v0 + 1760) = v73;
          sub_219BEDD14();
          v74 = *v72;
          v75 = v72[1];

          sub_218D90974(v72, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
          if (v7[2])
          {
            v76 = sub_21870F700(v74, v75);
            v78 = v77;

            if (v78)
            {
              v79 = v7[7] + 152 * v76;
              v80 = *(v79 + 16);
              v81 = *(v79 + 48);
              *(v0 + 1344) = *(v79 + 32);
              *(v0 + 1360) = v81;
              *(v0 + 1328) = v80;
              v82 = *(v79 + 64);
              v83 = *(v79 + 80);
              v84 = *(v79 + 96);
              *(v0 + 1424) = *(v79 + 112);
              *(v0 + 1392) = v83;
              *(v0 + 1408) = v84;
              *(v0 + 1376) = v82;
              sub_218D906DC(v0 + 1328, v0 + 1432);

              if (*(v0 + 1336) != 1)
              {
                v85 = *(v0 + 1424);
                if (v85)
                {
                  v86 = *(v0 + 1568);
                  *(swift_task_alloc() + 16) = v86;

                  sub_218D6598C(sub_218D90750, v85, (v0 + 16));
                  sub_218744C90(v0 + 1328, &qword_27CC115D8);

                  v88 = *(v0 + 128);
                  v87 = *(v0 + 144);
                  v89 = *(v0 + 112);
                  *(v0 + 480) = v88;
                  *(v0 + 496) = v87;
                  v90 = *(v0 + 144);
                  v92 = *(v0 + 160);
                  v91 = *(v0 + 176);
                  *(v0 + 512) = v92;
                  *(v0 + 528) = v91;
                  v94 = *(v0 + 64);
                  v93 = *(v0 + 80);
                  v95 = *(v0 + 48);
                  *(v0 + 416) = v94;
                  *(v0 + 432) = v93;
                  v96 = *(v0 + 80);
                  v98 = *(v0 + 96);
                  v97 = *(v0 + 112);
                  *(v0 + 448) = v98;
                  *(v0 + 464) = v97;
                  v99 = *(v0 + 16);
                  v101 = *(v0 + 32);
                  v100 = *(v0 + 48);
                  *(v0 + 384) = v101;
                  *(v0 + 400) = v100;
                  v102 = *(v0 + 16);
                  *(v0 + 320) = v90;
                  *(v0 + 336) = v92;
                  *(v0 + 352) = *(v0 + 176);
                  *(v0 + 368) = v102;
                  *(v0 + 256) = v96;
                  *(v0 + 272) = v98;
                  *(v0 + 288) = v89;
                  *(v0 + 304) = v88;
                  *(v0 + 192) = v99;
                  *(v0 + 208) = v101;
                  *(v0 + 224) = v95;
                  *(v0 + 240) = v94;
                  if (get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(v0 + 192) != 1)
                  {
                    v103 = *(v0 + 336);
                    *(v0 + 672) = *(v0 + 320);
                    *(v0 + 688) = v103;
                    *(v0 + 704) = *(v0 + 352);
                    v104 = *(v0 + 272);
                    *(v0 + 608) = *(v0 + 256);
                    *(v0 + 624) = v104;
                    v105 = *(v0 + 304);
                    *(v0 + 640) = *(v0 + 288);
                    *(v0 + 656) = v105;
                    v106 = *(v0 + 208);
                    *(v0 + 544) = *(v0 + 192);
                    *(v0 + 560) = v106;
                    v107 = *(v0 + 240);
                    *(v0 + 576) = *(v0 + 224);
                    *(v0 + 592) = v107;
                    v108 = swift_task_alloc();
                    *(v0 + 1768) = v108;
                    *v108 = v0;
                    v108[1] = sub_218D8B4CC;
                    v109 = *(v0 + 1560);

                    return sub_218D8C594(v109, v0 + 544);
                  }
                }

                else
                {
                  sub_218744C90(v0 + 1328, &qword_27CC115D8);
                }
              }

              v128 = *(v0 + 1664);
              v129 = *(v0 + 1568);
              sub_218D9090C(v129, *(v0 + 1672), type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
              sub_218D9090C(v129, v128, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
              v130 = sub_219BE5414();
              v131 = sub_219BF61F4();
              v132 = os_log_type_enabled(v130, v131);
              v133 = *(v0 + 1672);
              v134 = *(v0 + 1664);
              if (v132)
              {
                v135 = *(v0 + 1616);
                v136 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v153[0] = v152;
                *v136 = 136315394;
                sub_219BEDD14();
                sub_218D90974(v133, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
                v149 = v131;
                v137 = *v135;
                v138 = v135[1];

                sub_218D90974(v135, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
                v139 = sub_2186D1058(v137, v138, v153);

                *(v136 + 4) = v139;
                *(v136 + 12) = 2080;
                sub_219BEDD14();
                sub_218D90974(v134, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
                v141 = v135[2];
                v140 = v135[3];

                sub_218D90974(v135, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
                v142 = sub_2186D1058(v141, v140, v153);

                *(v136 + 14) = v142;
                _os_log_impl(&dword_2186C1000, v130, v149, "Failed to fetch section with channel picker group subtype: %s and section identifier: %s", v136, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CECF960](v152, -1, -1);
                MEMORY[0x21CECF960](v136, -1, -1);
              }

              else
              {

                sub_218D90974(v134, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
                sub_218D90974(v133, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
              }

              sub_218D905D8();
              swift_allocError();
              v126 = 2;
              goto LABEL_44;
            }
          }

          else
          {
          }

          v110 = *(v0 + 1648);
          v111 = *(v0 + 1568);
          sub_218D9090C(v111, *(v0 + 1656), type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
          sub_218D9090C(v111, v110, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
          v112 = sub_219BE5414();
          v113 = sub_219BF61F4();
          v114 = os_log_type_enabled(v112, v113);
          v115 = *(v0 + 1656);
          v116 = *(v0 + 1648);
          if (v114)
          {
            v117 = *(v0 + 1616);
            v118 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v153[0] = v151;
            *v118 = 136315394;
            sub_219BEDD14();
            sub_218D90974(v115, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
            v148 = v113;
            v120 = *v117;
            v119 = v117[1];

            sub_218D90974(v117, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
            v121 = sub_2186D1058(v120, v119, v153);

            *(v118 + 4) = v121;
            *(v118 + 12) = 2080;
            sub_219BEDD14();
            sub_218D90974(v116, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
            v123 = v117[2];
            v122 = v117[3];

            sub_218D90974(v117, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
            v124 = sub_2186D1058(v123, v122, v153);

            *(v118 + 14) = v124;
            _os_log_impl(&dword_2186C1000, v112, v148, "Failed to fetch channel picker type config with channel picker group subtype: %s and section identifier: %s", v118, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CECF960](v151, -1, -1);
            MEMORY[0x21CECF960](v118, -1, -1);
          }

          else
          {

            sub_218D90974(v116, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
            sub_218D90974(v115, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
          }

          sub_218D905D8();
          swift_allocError();
          v126 = 1;
LABEL_44:
          *v125 = v126;
LABEL_45:
          swift_willThrow();

          v143 = *(v0 + 8);

          return v143();
        }

LABEL_53:
        __break(1u);
        return result;
      }

LABEL_14:
      if (v27)
      {
LABEL_15:
        v29 = result;

        v7 = v153[0];
        v30 = *(v153[0] + 56) + 152 * v29;
        v31 = *(v30 + 16);
        *v144 = *v30;
        *(v0 + 1192) = v31;
        v32 = *(v30 + 80);
        v34 = *(v30 + 32);
        v33 = *(v30 + 48);
        *(v0 + 1240) = *(v30 + 64);
        *(v0 + 1256) = v32;
        *(v0 + 1208) = v34;
        *(v0 + 1224) = v33;
        v36 = *(v30 + 112);
        v35 = *(v30 + 128);
        v37 = *(v30 + 96);
        *(v0 + 1320) = *(v30 + 144);
        *(v0 + 1288) = v36;
        *(v0 + 1304) = v35;
        *(v0 + 1272) = v37;
        v38 = *(v0 + 736);
        *v30 = *v4;
        *(v30 + 16) = v38;
        v39 = *(v0 + 752);
        v40 = *(v0 + 768);
        v41 = *(v0 + 800);
        *(v30 + 64) = *(v0 + 784);
        *(v30 + 80) = v41;
        *(v30 + 32) = v39;
        *(v30 + 48) = v40;
        v42 = *(v0 + 816);
        v43 = *(v0 + 832);
        v44 = *(v0 + 848);
        *(v30 + 144) = *(v0 + 864);
        *(v30 + 112) = v43;
        *(v30 + 128) = v44;
        *(v30 + 96) = v42;
        sub_218D90688(v144);
        sub_218D90688(v0 + 720);
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    break;
  }

  sub_219481FA4(v26, isUniquelyReferenced_nonNull_native);
  result = sub_21870F700(v18, v17);
  if ((v27 & 1) == (v28 & 1))
  {
    goto LABEL_14;
  }

LABEL_49:

  return sub_219BF79A4();
}

uint64_t sub_218D8B4CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1776) = a1;
  *(v3 + 1784) = v1;

  if (v1)
  {
    v4 = sub_218D8C1D4;
  }

  else
  {
    sub_218744C90(v3 + 368, &unk_27CC11B10);
    v4 = sub_218D8B5FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218D8B5FC()
{
  v35 = v0;
  v1 = v0[222];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v3 + 8))(v2, v4);
  v5 = v0[193];
  if (v1 >> 62)
  {
    v6 = sub_219BF7214();
    if (v6 < v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 < v5)
    {
LABEL_3:
      v7 = v0[210];
      v8 = v0[196];
      sub_218D9090C(v8, v0[211], type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      sub_218D9090C(v8, v7, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);

      v9 = sub_219BE5414();
      v10 = sub_219BF61F4();
      if (os_log_type_enabled(v9, v10))
      {
        v32 = v10;
        v33 = v5;
        v11 = v0[211];
        v30 = v0[210];
        v12 = v0[202];
        v13 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34[0] = v31;
        *v13 = 136315906;
        sub_219BEDD14();
        sub_218D90974(v11, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        v14 = *v12;
        v15 = v12[1];

        sub_218D90974(v12, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
        v16 = sub_2186D1058(v14, v15, v34);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        sub_219BEDD14();
        sub_218D90974(v30, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        v17 = v12[2];
        v18 = v12[3];

        sub_218D90974(v12, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
        v19 = sub_2186D1058(v17, v18, v34);

        *(v13 + 14) = v19;
        *(v13 + 22) = 2048;
        if (v1 >> 62)
        {
          v20 = sub_219BF7214();
        }

        else
        {
          v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v5 = v33;

        *(v13 + 24) = v20;

        *(v13 + 32) = 2048;
        *(v13 + 34) = v33;
        _os_log_impl(&dword_2186C1000, v9, v32, "Failed to fetch minimum number of tags for channel picker group with subtype: %s with section identifier: %s. Recieved %ld tags but requires %ld tags to emit.", v13, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v31, -1, -1);
        MEMORY[0x21CECF960](v13, -1, -1);
      }

      else
      {
        v21 = v0[211];
        v22 = v0[210];
        swift_bridgeObjectRelease_n();

        sub_218D90974(v22, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        sub_218D90974(v21, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      }

      v23 = sub_219BEEDD4();
      sub_2186E1688(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      *v24 = v5;
      v24[1] = v6;
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D32400], v23);
      swift_willThrow();

      v25 = v0[1];

      return v25();
    }
  }

  v27 = swift_task_alloc();
  v0[224] = v27;
  *v27 = v0;
  v27[1] = sub_218D8BBA4;
  v28 = v0[222];
  v29 = v0[195];

  return sub_218D8E750(v29, v28);
}

uint64_t sub_218D8BBA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1800) = a1;
  *(v3 + 1808) = v1;

  if (v1)
  {
    v4 = sub_218D8C338;
  }

  else
  {

    v4 = sub_218D8BCC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218D8BCC4()
{
  v22 = v0;
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[196];
  sub_218D8FAB4(v0[225], v0[197]);
  sub_218D9090C(v3, v1, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  sub_218D9090C(v3, v2, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[213];
  if (v6)
  {
    v19 = v0[212];
    v8 = v0[202];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315394;
    sub_219BEDD14();
    sub_218D90974(v7, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v10 = *v8;
    v11 = v8[1];

    sub_218D90974(v8, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    v12 = sub_2186D1058(v10, v11, &v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_219BEDD14();
    sub_218D90974(v19, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v13 = v8[2];
    v14 = v8[3];

    sub_218D90974(v8, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    v15 = sub_2186D1058(v13, v14, &v21);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_2186C1000, v4, v5, "Successfully emitted channel picker group with subtype: %s and section identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v20, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
    v16 = v0[212];

    sub_218D90974(v16, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    sub_218D90974(v7, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
  }

  sub_218D90770(v0[197], v0[194]);
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v17 = v0[1];

  return v17();
}

uint64_t sub_218D8C080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D8C1D4()
{
  sub_218744C90(v0 + 368, &unk_27CC11B10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D8C338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D8C48C(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_2186E14F4();
  sub_219BEDD14();
  v8 = *(v4 + 2);
  v7 = *(v4 + 3);

  sub_218D90974(v4, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  if (v6)
  {
    if (v5 == v8 && v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_219BF78F4();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_218D8C594(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_219BE4EB4();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_219BE4F64();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_219BF0BD4();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = *(a2 + 40);
  *(v3 + 224) = *(a2 + 56);

  return MEMORY[0x2822009F8](sub_218D8C7A0, 0, 0);
}

uint64_t sub_218D8C7A0()
{
  v40 = v0;
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
    sub_219BEF134();
    sub_219BEF524();
    (*(v5 + 8))(v2, v4);
    *(v0 + 232) = *(v0 + 32);
    v8 = *(*__swift_project_boxed_opaque_existential_1((v7 + *(v6 + 28)), *(v7 + *(v6 + 28) + 24)) + 72);
    *(v0 + 16) = v3;
    *(v0 + 24) = v1;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 16;

    LOBYTE(v4) = sub_2186D128C(sub_2186D1338, v9, v8);

    if (v4)
    {
      v10 = *(v0 + 96);
      v11 = *(v0 + 80);
      sub_218D8FE44(*(v0 + 176));
      __swift_project_boxed_opaque_existential_1((v11 + *(v10 + 32)), *(v11 + *(v10 + 32) + 24));
      *(v0 + 240) = sub_219BE5064();
      v12 = swift_task_alloc();
      *(v0 + 248) = v12;
      *v12 = v0;
      v12[1] = sub_218D8CD2C;
      v13 = v0 + 56;
    }

    else
    {
      v31 = *(v0 + 80);
      v32 = *(*(v0 + 96) + 36);
      *(v0 + 360) = v32;
      __swift_project_boxed_opaque_existential_1((v31 + v32), *(v31 + v32 + 24));
      *(v0 + 288) = sub_219BF1C44();
      v33 = swift_task_alloc();
      *(v0 + 296) = v33;
      *v33 = v0;
      v33[1] = sub_218D8D4A8;
      v13 = v0 + 40;
    }

    return MEMORY[0x2821D23D8](v13);
  }

  else
  {
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = *(v0 + 80);
    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62520);
    sub_218D9090C(v16, v15, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    sub_218D9090C(v16, v14, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    v18 = sub_219BE5414();
    v19 = sub_219BF61F4();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    if (v20)
    {
      v23 = *(v0 + 88);
      v37 = v19;
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39[0] = v38;
      *v24 = 136315394;
      sub_2186E14F4();
      sub_219BEDD14();
      sub_218D90974(v21, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v25 = *v23;
      v26 = v23[1];

      sub_218D90974(v23, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      v27 = sub_2186D1058(v25, v26, v39);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_219BEDD14();
      sub_218D90974(v22, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v28 = v23[2];
      v29 = v23[3];

      sub_218D90974(v23, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      v30 = sub_2186D1058(v28, v29, v39);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_2186C1000, v18, v37, "Failed to fetch section identifier with channel picker group subtype: %s and section identifier: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v38, -1, -1);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    else
    {

      sub_218D90974(v22, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      sub_218D90974(v21, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
    }

    sub_218D905D8();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_218D8CD2C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_218D8E3F8;
  }

  else
  {
    v2 = sub_218D8CE60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D8CE60()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v31 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v2, 0);
    v4 = v31;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v29 = *(v3 + 56);
    v30 = v5;
    v28 = (v3 - 8);
    do
    {
      v7 = v0[19];
      v8 = v0[17];
      v30(v7, v6, v8);
      v9 = sub_219BE4EA4();
      v11 = v10;
      (*v28)(v7, v8);
      v13 = *(v31 + 16);
      v12 = *(v31 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
      }

      *(v31 + 16) = v13 + 1;
      v14 = v31 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += v29;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v18 = sub_219A79734(v0[29], v4);
  if (v17)
  {
    v19 = v17;
    v20 = v16;
    v21 = v15;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      swift_unknownObjectRelease();
      v22 = MEMORY[0x277D84F90];
    }

    v23 = *(v22 + 16);

    if (__OFSUB__(v19 >> 1, v20))
    {
      __break(1u);
    }

    else if (v23 == (v19 >> 1) - v20)
    {
      v24 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v24)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    swift_unknownObjectRelease();
    v17 = v19;
    v16 = v20;
    v15 = v21;
  }

  sub_218B666EC(v18, v15, v16, v17);
LABEL_15:
  swift_unknownObjectRelease();
LABEL_16:
  v25 = (v0[10] + *(v0[12] + 36));
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v0[33] = sub_219BF1C34();

  v26 = swift_task_alloc();
  v0[34] = v26;
  *v26 = v0;
  v26[1] = sub_218D8D13C;

  return MEMORY[0x2821D23D8](v0 + 8);
}

uint64_t sub_218D8D13C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_218D8E4D8;
  }

  else
  {
    v2 = sub_218D8D270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D8D270()
{
  v1 = v0[8];
  v12 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CECE0F0](v3, v1);
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v0 = v11;
            v5 = v12;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        if ([objc_opt_self() isTagAllowed_])
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v3;
        if (v0 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_18:
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_218D8D4A8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_218D8E5B8;
  }

  else
  {
    v2 = sub_218D8D5DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D8D5DC()
{
  v71 = v0;
  v1 = *(v0 + 40);
  *(v0 + 312) = v1;
  v68 = v1;
  v2 = [v1 subscribedTags];
  *(v0 + 320) = sub_2186D8870();
  v3 = sub_219BF5924();

  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  v69 = v0;
  if (v4)
  {
    v70[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v6 = 0;
    v7 = v70[0];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      swift_unknownObjectRelease();
      v70[0] = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v7 = v70[0];
      }

      ++v6;
      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v16 = sub_218845F78(v7);

  v17 = [v68 mutedTags];
  v18 = sub_219BF5924();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_27:

    v21 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v19 = sub_219BF7214();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_16:
  v70[0] = v5;
  sub_21870B65C(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v66 = v16;
  v20 = 0;
  v21 = v70[0];
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x21CECE0F0](v20, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v20 + 32);
      swift_unknownObjectRetain();
    }

    v23 = [v22 identifier];
    v24 = sub_219BF5414();
    v26 = v25;

    swift_unknownObjectRelease();
    v70[0] = v21;
    v28 = *(v21 + 16);
    v27 = *(v21 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_21870B65C((v27 > 1), v28 + 1, 1);
      v21 = v70[0];
    }

    ++v20;
    *(v21 + 16) = v28 + 1;
    v29 = v21 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
  }

  while (v19 != v20);

  v16 = v66;
LABEL_28:
  v30 = *(v0 + 224);
  v31 = sub_218845F78(v21);

  *(v0 + 328) = sub_2194796A0(v31, v16);
  if (!v30)
  {

    if (qword_280EE5F08 == -1)
    {
LABEL_43:
      v45 = *(v0 + 120);
      v46 = *(v0 + 128);
      v47 = *(v0 + 80);
      v48 = sub_219BE5434();
      __swift_project_value_buffer(v48, qword_280F62520);
      sub_218D9090C(v47, v46, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      sub_218D9090C(v47, v45, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v49 = sub_219BE5414();
      v50 = sub_219BF61F4();
      v51 = os_log_type_enabled(v49, v50);
      v53 = *(v0 + 120);
      v52 = *(v0 + 128);
      if (v51)
      {
        v54 = *(v0 + 88);
        v55 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70[0] = v67;
        *v55 = 136315394;
        sub_2186E14F4();
        v65 = v50;
        sub_219BEDD14();
        sub_218D90974(v52, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        v56 = *v54;
        v57 = v54[1];

        sub_218D90974(v54, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
        v58 = sub_2186D1058(v56, v57, v70);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2080;
        sub_219BEDD14();
        v0 = v69;
        sub_218D90974(v53, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        v60 = v54[2];
        v59 = v54[3];

        sub_218D90974(v54, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
        v61 = sub_2186D1058(v60, v59, v70);

        *(v55 + 14) = v61;
        _os_log_impl(&dword_2186C1000, v49, v65, "Failed to fetch curated section items with channel picker group subtype: %s and section identifier: %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v67, -1, -1);
        MEMORY[0x21CECF960](v55, -1, -1);
      }

      else
      {

        sub_218D90974(v53, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
        sub_218D90974(v52, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      }

      sub_218D905D8();
      swift_allocError();
      *v62 = 4;
      swift_willThrow();

      v63 = *(v0 + 8);

      return v63();
    }

LABEL_52:
    swift_once();
    goto LABEL_43;
  }

  v32 = 0;
  v33 = *(v0 + 224);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x277D84F90];
LABEL_30:
  v36 = v33 - 144 + 176 * v32;
  while (v34 != v32)
  {
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    v37 = (v36 + 176);
    ++v32;
    v38 = *(v36 + 184);
    v36 += 176;
    if (v38)
    {
      v39 = *v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_218840D24(0, *(v35 + 2) + 1, 1, v35);
      }

      v41 = *(v35 + 2);
      v40 = *(v35 + 3);
      if (v41 >= v40 >> 1)
      {
        v35 = sub_218840D24((v40 > 1), v41 + 1, 1, v35);
      }

      *(v35 + 2) = v41 + 1;
      v42 = &v35[16 * v41];
      *(v42 + 4) = v39;
      *(v42 + 5) = v38;
      v0 = v69;
      goto LABEL_30;
    }
  }

  v43 = (*(v0 + 80) + *(v0 + 360));
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  *(v0 + 336) = sub_219BF1C34();

  v44 = swift_task_alloc();
  *(v0 + 344) = v44;
  *v44 = v0;
  v44[1] = sub_218D8DDEC;

  return MEMORY[0x2821D23D8](v0 + 48);
}

uint64_t sub_218D8DDEC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_218D8E680;
  }

  else
  {
    v2 = sub_218D8DF30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D8DF30()
{
  v1 = v0[6];
  v42 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_26:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[41];
      v40 = v1 & 0xFFFFFFFFFFFFFF8;
      v41 = v1 & 0xC000000000000001;
      v5 = v1 + 32;
      v0 = (v4 + 56);
      while (1)
      {
        if (v41)
        {
          v1 = MEMORY[0x21CECE0F0](v3);
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v17 = v42;
            v0 = v39;
            goto LABEL_28;
          }
        }

        else
        {
          if (v3 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v1 = *(v5 + 8 * v3);
          swift_unknownObjectRetain();
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
            goto LABEL_23;
          }
        }

        v7 = [v1 identifier];
        v8 = sub_219BF5414();
        v10 = v9;

        if (*(v4 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v11 = sub_219BF7AE4(), v12 = -1 << *(v4 + 32), v13 = v11 & ~v12, ((*(v0 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(v4 + 48) + 16 * v13);
            v16 = *v15 == v8 && v15[1] == v10;
            if (v16 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v0 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_18:

          if ([objc_opt_self() isTagAllowed_])
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_28:
  v18 = v0[29];

  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v17 < 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = (v17 >> 62) & 1;
    }

    if ((v2 & 1) == 0)
    {
      v19 = v0[29];
      v20 = *(v17 + 16);
      if (v20 >= v19)
      {
        v21 = v0[29];
      }

      else
      {
        v21 = *(v17 + 16);
      }

      if (v19)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20 >= v22)
      {
        goto LABEL_40;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  v18 = sub_219BF7214();
  result = sub_219BF7214();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v37 = v0[29];
  if (v18 >= v37)
  {
    v38 = v0[29];
  }

  else
  {
    v38 = v18;
  }

  if (v18 < 0)
  {
    v38 = v0[29];
  }

  if (v37)
  {
    v22 = v38;
  }

  else
  {
    v22 = 0;
  }

  if (sub_219BF7214() < v22)
  {
    goto LABEL_72;
  }

LABEL_40:
  if ((v17 & 0xC000000000000001) != 0)
  {

    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = v23 + 1;
        sub_219BF7334();
        v23 = v24;
      }

      while (v22 != v24);
    }
  }

  else
  {
  }

  if (!v2)
  {
    v18 = 0;
    v2 = v17 + 32;
    v22 = (2 * v22) | 1;
    if (v22)
    {
      goto LABEL_51;
    }

LABEL_50:
    v29 = v0[39];
    sub_218B66CB4(v17, v2, v18, v22);
    v31 = v30;

LABEL_57:
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  v25 = sub_219BF7564();
  v2 = v26;
  v18 = v27;
  v22 = v28;

  v17 = v25;
  if ((v22 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_51:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v22 >> 1, v18))
  {
    goto LABEL_73;
  }

  if (v33 != (v22 >> 1) - v18)
  {
LABEL_74:
    swift_unknownObjectRelease_n();
    goto LABEL_50;
  }

  v34 = v0[39];
  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();

  if (!v31)
  {
    v31 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

LABEL_58:

  v35 = v0[1];

  return v35(v31);
}

uint64_t sub_218D8E3F8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_218D8E4D8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_218D8E5B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D8E680()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D8E750(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4788(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186E4788(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186E4788(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_218A89A94(0);
  v3[14] = swift_task_alloc();
  sub_2186FE720();
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_219BF1934();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v9 = sub_219BF3E84();
  v3[27] = v9;
  v3[28] = *(v9 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D8EB28, 0, 0);
}

uint64_t sub_218D8EB28()
{
  v74 = v0;
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62520);

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v73[0] = v6;
    *v5 = 136315138;
    v7 = sub_2186D8870();
    v8 = MEMORY[0x21CECC6D0](v4, v7);
    v10 = sub_2186D1058(v8, v9, v73);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2186C1000, v2, v3, "Resolving format content for channel picker group with tags: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v11 = *(v0 + 24);
  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v73[0] = MEMORY[0x277D84F90];
    v14 = sub_218C34A88(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v14, v15, v16, v17, v18);
    }

    v19 = v73[0];
    v20 = *(v0 + 192);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v22 = *MEMORY[0x277D34100];
      do
      {
        v23 = *(v0 + 208);
        v24 = *(v0 + 184);
        *v23 = MEMORY[0x21CECE0F0](v21, *(v0 + 24));
        (*(v20 + 104))(v23, v22, v24);
        v73[0] = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34A88(v25 > 1, v26 + 1, 1);
          v19 = v73[0];
        }

        v27 = *(v0 + 208);
        v28 = *(v0 + 184);
        ++v21;
        *(v19 + 16) = v26 + 1;
        (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v26, v27, v28);
      }

      while (v12 != v21);
    }

    else
    {
      v29 = (*(v0 + 24) + 32);
      v70 = *(v20 + 104);
      do
      {
        **(v0 + 200) = *v29;
        v70();
        v73[0] = v19;
        v30 = *(v19 + 16);
        v31 = *(v19 + 24);
        swift_unknownObjectRetain();
        if (v30 >= v31 >> 1)
        {
          sub_218C34A88(v31 > 1, v30 + 1, 1);
          v19 = v73[0];
        }

        v32 = *(v0 + 200);
        v33 = *(v0 + 184);
        *(v19 + 16) = v30 + 1;
        (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30, v32, v33);
        ++v29;
        --v12;
      }

      while (v12);
    }

    v13 = MEMORY[0x277D84F90];
  }

  v62 = *(v0 + 232);
  v63 = *(v0 + 224);
  v64 = *(v0 + 216);
  v58 = *(v0 + 168);
  v34 = *(v0 + 152);
  v72 = *(v0 + 160);
  v35 = *(v0 + 136);
  v36 = *(v0 + 144);
  v61 = *(v0 + 128);
  v59 = *(v0 + 120);
  v60 = *(v0 + 112);
  v66 = *(v0 + 56);
  v37 = *(v0 + 32);
  v68 = *(v0 + 40);
  v67 = *(v0 + 48);
  sub_218F0B984(v13);
  sub_218F0BA7C(v13);
  sub_218F0BB90(v13);
  sub_219BF3E74();
  v65 = type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  v38 = (v37 + *(v65 + 24));
  v69 = v38[4];
  v71 = v38[3];
  __swift_project_boxed_opaque_existential_1(v38, v71);
  sub_2186E14F4();
  sub_219BEDD14();
  (*(v72 + 16))(v58, v36 + *(v61 + 24), v34);
  sub_218D90974(v36, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v73, "channelPicker-");
  HIBYTE(v73[1]) = -18;
  sub_219BEDD14();
  v40 = *v35;
  v39 = v35[1];

  sub_218D90974(v35, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  MEMORY[0x21CECC330](v40, v39);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BEDD14();
  v41 = v35[2];
  v42 = v35[3];

  sub_218D90974(v35, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  MEMORY[0x21CECC330](v41, v42);

  v43 = sub_219BEC004();
  v44 = *(*(v43 - 8) + 56);
  v44(v59, 1, 1, v43);
  sub_218A42400(0);
  (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
  sub_219BF1764();

  sub_218D90974(v60, sub_218A89A94);
  sub_218D90974(v59, sub_2186FE720);
  v46 = *(v72 + 8);
  *(v0 + 240) = v46;
  *(v0 + 248) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v58, v34);
  sub_2186E4788(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v47 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_219C09BA0;
  (*(v63 + 16))(v48 + v47, v62, v64);
  v44(v59, 1, 1, v43);
  sub_219A95188(v13);
  sub_219A95188(v13);
  sub_219A951A0(v13);
  sub_219A951B8(v13);
  sub_219A952CC(v13);
  sub_219A952E4(v13);
  sub_219A953F8(v13);
  sub_219BF2024();
  v49 = *(v65 + 20);
  sub_2189AE994(0);
  v51 = v50;
  v52 = *(v50 - 8);
  (*(v52 + 16))(v66, v37 + v49, v50);
  (*(v52 + 56))(v66, 0, 1, v51);
  sub_219BEDD14();

  sub_218D90974(v36, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  v53 = sub_219BF35D4();
  (*(*(v53 - 8) + 56))(v67, 1, 1, v53);
  *(v0 + 280) = 23;
  sub_218D451AC();
  swift_allocObject();

  sub_219BF38D4();
  v54 = sub_219BF2774();
  (*(*(v54 - 8) + 56))(v68, 1, 1, v54);
  v55 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v55 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v56 = swift_task_alloc();
  *(v0 + 256) = v56;
  *v56 = v0;
  v56[1] = sub_218D8F5C8;
  v15 = *(v0 + 104);
  v16 = *(v0 + 80);
  v14 = *(v0 + 176);
  v18 = v69;
  v17 = v71;

  return MEMORY[0x2821921B8](v14, v15, v16, v17, v18);
}

uint64_t sub_218D8F5C8(uint64_t a1)
{
  v3 = *v2;
  v3[33] = v1;

  v15 = v3[30];
  v4 = v3[22];
  v5 = v3[19];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_218D8F980;
  }

  else
  {
    v3[34] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_218D8F848;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_218D8F848()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];
  v2 = v0[34];

  return v1(v2);
}

uint64_t sub_218D8F980()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_218D8FAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[3] = a1;
  v23 = a2;
  v2 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E4788(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v19[0] = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_219BED8D4();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v20 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();

  v11 = sub_219BEDCB4();
  v19[1] = v12;
  v19[2] = v11;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  sub_2189AE9B4(0);
  sub_219BEEC84();
  v13 = v20;
  sub_219BED834();
  sub_219BEDD14();
  v15 = *v4;
  v14 = v4[1];

  sub_218D90974(v4, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  v16 = v23;
  (*(v21 + 32))(v23, v13, v22);
  v17 = (v16 + *(type metadata accessor for ChannelPickerTodayFeedGroup() + 20));
  *v17 = v15;
  v17[1] = v14;
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D8FE44@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E14F4();
  sub_219BEDD14();
  v6 = *v4;
  v5 = v4[1];

  sub_218D90974(v4, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
  v7 = v6 == 0x72616C75676572 && v5 == 0xE700000000000000;
  if (v7 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = MEMORY[0x277D34B90];
  }

  else
  {
    v12 = v6 == 0x73756C507377656ELL && v5 == 0xE800000000000000;
    if (v12 || (sub_219BF78F4() & 1) != 0)
    {

      v8 = MEMORY[0x277D34B98];
    }

    else if (v6 == 0x77654E6C61636F6CLL && v5 == 0xE900000000000073)
    {

      v8 = MEMORY[0x277D34B88];
    }

    else
    {
      v14 = sub_219BF78F4();

      v8 = MEMORY[0x277D34B90];
      if (v14)
      {
        v8 = MEMORY[0x277D34B88];
      }
    }
  }

  v9 = *v8;
  v10 = sub_219BE4F64();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_218D90048(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218D8A120(a1, a2);
}

uint64_t sub_218D90114@<X0>(uint64_t a1@<X8>)
{
  sub_2186E14F4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D90194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  a2[4] = sub_2186E1688(&qword_280E976B0, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
  a2[5] = sub_2186E1688(&qword_280E976B8, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D9090C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
}

uint64_t sub_218D9025C()
{
  sub_2186E14F4();

  return sub_219BEDCA4();
}

uint64_t sub_218D90288@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4788(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E14F4();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D90974(inited + 32, sub_2188317B0);
  sub_218D909D4(0);
  a1[3] = v5;
  a1[4] = sub_2186E1688(&qword_27CC11B28, sub_218D909D4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D90404()
{
  sub_2186E1688(&unk_27CC11AE8, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);

  return sub_219BE2324();
}

unint64_t sub_218D905D8()
{
  result = qword_27CC11B00;
  if (!qword_27CC11B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11B00);
  }

  return result;
}

uint64_t sub_218D906DC(uint64_t a1, uint64_t a2)
{
  sub_2186DEEA0(0, &qword_27CC115D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D90770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D907D4()
{
  if (!qword_280E91890)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186E1688(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BEEC54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91890);
    }
  }
}

void sub_218D90870()
{
  if (!qword_280E91230)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186E1688(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BEFBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91230);
    }
  }
}

uint64_t sub_218D9090C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D90974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218D90A1C()
{
  result = qword_27CC11B30[0];
  if (!qword_27CC11B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC11B30);
  }

  return result;
}

uint64_t sub_218D90A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_219BE22B4();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = v44 - v7;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - v8;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE22F4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v45 = v44 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v44 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v44 - v22;
  sub_218D91DAC(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v50 = a1;
  sub_219BE2594();
  sub_219BE22A4();
  v24 = *(v14 + 8);
  v24(v23, v13);
  v25 = sub_219BDB8D4();
  v27 = v26;
  (*(v10 + 8))(v12, v9);
  if (v27)
  {
    if (v25 == 0xD000000000000017 && v27 == 0x8000000219CF6510)
    {

LABEL_8:
      v41 = 1;
      v40 = v53;
      goto LABEL_9;
    }

    v28 = sub_219BF78F4();

    if (v28)
    {
      goto LABEL_8;
    }
  }

  sub_219BE2594();
  v29 = v49;
  sub_219BE22D4();
  v24(v21, v13);
  v30 = sub_219BE22C4();
  v32 = v31;
  v33 = v52;
  v49 = *(v51 + 8);
  (v49)(v29, v52);
  v51 = v32;
  if (!v32)
  {
    goto LABEL_8;
  }

  v44[2] = v30;
  v34 = v45;
  sub_219BE2594();
  v35 = v47;
  sub_219BE22D4();
  v24(v34, v13);
  v45 = sub_219BE22C4();
  v44[1] = v36;
  v37 = v49;
  (v49)(v35, v33);
  v38 = v46;
  sub_219BE2594();
  v39 = v48;
  sub_219BE22D4();
  v24(v38, v13);
  sub_219BE22C4();
  v37(v39, v33);
  v40 = v53;
  sub_219BDF2B4();
  v41 = 0;
LABEL_9:
  v42 = sub_219BDF2F4();
  return (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
}

id sub_218D90FCC(uint64_t a1)
{
  v122 = sub_219BE22B4();
  v120 = *(v122 - 1);
  v2 = MEMORY[0x28223BE20](v122);
  v119 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v118 = &v113 - v4;
  sub_218D91DAC(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v128 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v113 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v126 = &v113 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v113 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v113 - v16;
  MEMORY[0x28223BE20](v15);
  v138 = &v113 - v18;
  v19 = sub_219BDF434();
  v129 = *(v19 - 8);
  v130 = v19;
  MEMORY[0x28223BE20](v19);
  v136 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BE22F4();
  v21 = *(v133 - 8);
  v22 = MEMORY[0x28223BE20](v133);
  v117 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v113 - v24;
  v137 = sub_219BDB954();
  v26 = *(v137 - 8);
  v27 = MEMORY[0x28223BE20](v137);
  v113 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v113 - v30;
  MEMORY[0x28223BE20](v29);
  v135 = &v113 - v32;
  v33 = sub_219BE2554();
  v34 = *(v33 + 16);
  v127 = v10;
  v121 = v17;
  if (v34 && (v35 = sub_2188198D8(*MEMORY[0x277D766D0]), (v36 & 1) != 0))
  {
    sub_2186D1230(*(v33 + 56) + 32 * v35, v142);

    if (swift_dynamicCast())
    {
      v37 = v139;
      v38 = v140;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v37 = 0;
  v38 = 0;
LABEL_7:
  sub_218D91DAC(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v116 = v39;
  sub_219BE2594();
  sub_219BE22A4();
  v40 = *(v21 + 8);
  v40(v25, v133);
  sub_219BDB7A4();
  v131 = *(v26 + 8);
  v132 = v26 + 8;
  v131(v31, v137);
  v114 = v37;
  v134 = v38;

  sub_219BDB804();
  sub_219BDF404();
  v115 = a1;
  sub_218D90A70(a1, v138);
  sub_219BE2594();
  v41 = v118;
  sub_219BE22D4();
  v42 = v133;
  v40(v25, v133);
  sub_219BF5414();
  v125 = sub_219BE22C4();
  v124 = v43;

  v44 = *(v120 + 8);
  v45 = v122;
  v44(v41, v122);
  v46 = v117;
  sub_219BE2594();
  v47 = v119;
  sub_219BE22D4();
  v40(v46, v42);
  sub_219BF5414();
  sub_219BE22C4();
  v49 = v48;

  v44(v47, v45);
  if (v49)
  {
    v50 = v113;
    sub_219BDB834();

    v51 = sub_219BDB974();
    v52 = v126;
    v53 = v51;
    v55 = v54;
    v56 = objc_allocWithZone(MEMORY[0x277D35590]);
    sub_218B87528(v53, v55);
    v57 = sub_219BDB9E4();
    sub_2186C6190(v53, v55);
    v122 = [v56 initWithData_];

    sub_2186C6190(v53, v55);
    v58 = v127;
    v131(v50, v137);
    v59 = v138;
  }

  else
  {
    v122 = 0;
    v59 = v138;
    v58 = v127;
    v52 = v126;
  }

  v60 = v134;
  v61 = sub_219BF5414();
  if (v60)
  {
    if (v114 == v61 && v60 == v62)
    {
      v63 = 1;
    }

    else
    {
      v63 = sub_219BF78F4();
    }
  }

  else
  {
    v63 = 0;
  }

  v64 = v121;
  sub_218D91E10(v59, v121);
  v65 = sub_219BDF2F4();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  if (v67(v64, 1, v65) == 1)
  {
    sub_218D91EA4(v64);
    sub_219BF5414();
LABEL_22:

    v74 = 4;
    v75 = v123;
    goto LABEL_27;
  }

  v68 = sub_219BDF2C4();
  v69 = v64;
  v71 = v70;
  (*(v66 + 8))(v69, v65);
  v72 = sub_219BF5414();
  if (!v71)
  {
    goto LABEL_22;
  }

  if (v68 == v72 && v71 == v73)
  {
  }

  else
  {
    v76 = sub_219BF78F4();

    v59 = v138;

    if ((v76 & 1) == 0)
    {
      v74 = 4;
      goto LABEL_26;
    }
  }

  v74 = 12;
LABEL_26:
  v75 = v123;
LABEL_27:
  if (v63)
  {
    v74 = 3;
  }

  LODWORD(v133) = v74;
  sub_218D91E10(v59, v75);
  if (v67(v75, 1, v65) == 1)
  {
    sub_218D91EA4(v75);
    sub_219BF5414();
LABEL_35:

LABEL_36:

    goto LABEL_37;
  }

  v77 = sub_219BDF2C4();
  v78 = v75;
  v80 = v79;
  (*(v66 + 8))(v78, v65);
  v81 = sub_219BF5414();
  if (!v80)
  {
    goto LABEL_35;
  }

  if (v77 == v81 && v80 == v82)
  {
  }

  else
  {
    v111 = sub_219BF78F4();

    v59 = v138;

    if ((v111 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v134)
  {
    if (v114 == 0xD000000000000016 && v134 == 0x8000000219CF64F0)
    {

LABEL_54:
      LODWORD(v133) = 9;
      goto LABEL_37;
    }

    v112 = sub_219BF78F4();

    if (v112)
    {
      goto LABEL_54;
    }
  }

  LODWORD(v133) = 8;
LABEL_37:
  sub_218D91E10(v59, v52);
  if (v67(v52, 1, v65) == 1)
  {
    sub_218D91EA4(v52);
    v134 = 0;
    v126 = 0;
  }

  else
  {
    v134 = sub_219BDF2D4();
    v126 = v83;
    (*(v66 + 8))(v52, v65);
  }

  sub_218D91E10(v59, v58);
  if (v67(v58, 1, v65) == 1)
  {
    sub_218D91EA4(v58);
    v123 = 0;
    v84 = 0;
  }

  else
  {
    v123 = sub_219BDF2C4();
    v84 = v85;
    (*(v66 + 8))(v58, v65);
  }

  v86 = v128;
  sub_218D91E10(v59, v128);
  if (v67(v86, 1, v65) == 1)
  {
    sub_218D91EA4(v86);
    v87 = 0;
    v88 = 0;
  }

  else
  {
    v87 = sub_219BDF2E4();
    v88 = v89;
    (*(v66 + 8))(v86, v65);
  }

  v90 = v63 & 1;
  v91 = v136;
  v92 = sub_219BDF414();
  v94 = v93;
  v95 = sub_219BDF3F4();
  v97 = v96;
  v98 = type metadata accessor for AnalyticsReferral();
  v99 = objc_allocWithZone(v98);
  v100 = &v99[OBJC_IVAR___TSAnalyticsReferral_userActivityType];
  *v100 = 0;
  v100[1] = 0;
  v101 = &v99[OBJC_IVAR___TSAnalyticsReferral_creativeID];
  v102 = v126;
  *v101 = v134;
  v101[1] = v102;
  v103 = &v99[OBJC_IVAR___TSAnalyticsReferral_campaignID];
  *v103 = v123;
  v103[1] = v84;
  v104 = &v99[OBJC_IVAR___TSAnalyticsReferral_campaignType];
  *v104 = v87;
  v104[1] = v88;
  v105 = &v99[OBJC_IVAR___TSAnalyticsReferral_referringApplication];
  *v105 = v92;
  v105[1] = v94;
  v106 = &v99[OBJC_IVAR___TSAnalyticsReferral_referringURL];
  *v106 = v95;
  v106[1] = v97;
  v107 = &v99[OBJC_IVAR___TSAnalyticsReferral_widgetModeGroupID];
  v108 = v124;
  *v107 = v125;
  v107[1] = v108;
  *&v99[OBJC_IVAR___TSAnalyticsReferral_widgetEngagement] = v122;
  v99[OBJC_IVAR___TSAnalyticsReferral_appOpenedByUserActivity] = 0;
  *&v99[OBJC_IVAR___TSAnalyticsReferral_appSessionStartMethod] = v133;
  *&v99[OBJC_IVAR___TSAnalyticsReferral_appSessionStartNotificationType] = v90;
  v141.receiver = v99;
  v141.super_class = v98;
  v109 = objc_msgSendSuper2(&v141, sel_init);
  sub_218D91EA4(v138);
  (*(v129 + 8))(v91, v130);
  v131(v135, v137);
  return v109;
}