uint64_t sub_251332368@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_25133F434();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513328F8();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513332EC();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_25133F3D4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_251333800(0, &qword_280DE6F20, sub_25133298C);
  sub_2513310BC(v1, &v13[*(v21 + 44)]);
  v22 = sub_25133327C(&qword_280DE6E40, sub_2513328F8);
  sub_25133F584();
  sub_2513337A0(v13, sub_2513328F8);
  sub_25133F424();
  v24[2] = v9;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_25133F5C4();
  (*(v3 + 8))(v7, v2);
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_25133263C(uint64_t a1)
{
  sub_25132B81C(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_251333944(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), sub_25132B81C);
  return sub_25133F394();
}

void sub_2513326D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ArticleTileView()
{
  result = qword_280DE7078;
  if (!qword_280DE7078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251332828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_2513328F8()
{
  if (!qword_280DE6E38)
  {
    sub_25133298C(255);
    sub_25133327C(&qword_280DE6E10, sub_25133298C);
    v0 = sub_25133F634();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E38);
    }
  }
}

void sub_2513329C0()
{
  if (!qword_280DE6EA8)
  {
    sub_251332A38(255);
    sub_251332C44(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280DE6EA8);
    }
  }
}

void sub_251332AC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_25133F354();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251332B3C()
{
  if (!qword_280DE6EF0)
  {
    v0 = sub_25133F354();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6EF0);
    }
  }
}

void sub_251332B94()
{
  if (!qword_280DE6F38)
  {
    sub_251332BF0();
    v0 = sub_25133F2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6F38);
    }
  }
}

unint64_t sub_251332BF0()
{
  result = qword_280DE6E28;
  if (!qword_280DE6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6E28);
  }

  return result;
}

void sub_251332C6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25133F354();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251332CF8()
{
  if (!qword_280DE6E58)
  {
    sub_251332D8C(255);
    sub_25133327C(&qword_280DE6E00, sub_251332D8C);
    v0 = sub_25133F624();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E58);
    }
  }
}

void sub_251332DC0()
{
  if (!qword_280DE6E48)
  {
    sub_251332E28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE6E48);
    }
  }
}

void sub_251332E28()
{
  if (!qword_280DE6E50)
  {
    sub_251332EBC(255);
    sub_25133327C(&qword_280DE6E20, sub_251332EBC);
    v0 = sub_25133F634();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E50);
    }
  }
}

void sub_251332EF0()
{
  if (!qword_280DE6F00)
  {
    sub_251332F60(255);
    sub_2513332C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE6F00);
    }
  }
}

void sub_251332F88()
{
  if (!qword_280DE6E60)
  {
    sub_25133300C(255);
    sub_25133311C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE6E60);
    }
  }
}

void sub_251333040()
{
  if (!qword_280DE6F10)
  {
    sub_25133F4E4();
    v0 = sub_25133F354();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6F10);
    }
  }
}

void sub_2513330A0()
{
  if (!qword_280DE6E78)
  {
    sub_2513336E8(255, &qword_280DE6E70, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v0 = sub_25133F4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E78);
    }
  }
}

unint64_t sub_25133311C()
{
  result = qword_280DE6EE0;
  if (!qword_280DE6EE0)
  {
    sub_25133300C(255);
    sub_2513331CC();
    sub_25133327C(&qword_280DE6E80, sub_2513330A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6EE0);
  }

  return result;
}

unint64_t sub_2513331CC()
{
  result = qword_280DE6F18;
  if (!qword_280DE6F18)
  {
    sub_251333040();
    sub_25133327C(&qword_27F42B3B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6F18);
  }

  return result;
}

uint64_t sub_25133327C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2513332EC()
{
  if (!qword_280DE6E68)
  {
    sub_2513328F8();
    sub_25133327C(&qword_280DE6E40, sub_2513328F8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE6E68);
    }
  }
}

void sub_2513333E4()
{
  sub_2513326D8(319, &qword_27F42B3C0, sub_25132B81C, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2513326D8(319, &qword_27F42B3C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2513326D8(319, &qword_27F42B3D0, MEMORY[0x277D10E70], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_251333530();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251333530()
{
  if (!qword_27F42B3D8)
  {
    sub_25133F114();
    sub_25133327C(&qword_280DE6F58, MEMORY[0x277D10F38]);
    v0 = sub_25133F334();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B3D8);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2513335D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251333620(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_251333680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2513336E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251333738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2513337A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251333800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25133F2F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25133386C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2513338D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2513338E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251333944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2513339AC()
{
  result = qword_280DE6EF8;
  if (!qword_280DE6EF8)
  {
    sub_251332B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6EF8);
  }

  return result;
}

uint64_t PluginArticleTileDataController.makeArticleComponents(articleIdentifier:viewContext:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25133F274();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 16))(&v29, a1, a2, a3, a4, a5);
  if (v30)
  {
    sub_25132AF18(&v29, v31);
    v16 = v32;
    v17 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v18 = (*(v17 + 8))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_251333CBC(&v29);
    sub_25133F234();

    v19 = sub_25133F264();
    v20 = sub_25133F994();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v29 = a4;
      v31[0] = v28;
      *v21 = 136446466;
      swift_getMetatypeMetadata();
      v22 = sub_25133F764();
      v24 = sub_25132F394(v22, v23, v31);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_25132F394(a1, a2, v31);
      _os_log_impl(&dword_251318000, v19, v20, "[%{public}s] Unable to find data provider for article with identifier %s.", v21, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x253072C40](v25, -1, -1);
      MEMORY[0x253072C40](v21, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    return 0;
  }

  return v18;
}

uint64_t sub_251333CBC(uint64_t a1)
{
  sub_251333F44(0, &qword_27F42B2C0, sub_25132ADDC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251333D50(void *a1)
{
  sub_251333F44(0, &qword_27F42B3E8, sub_251333FA8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251340BD0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000251342E10;
  v3 = a1[3];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *(inited + 48) = (*(v4 + 8))(v3, v4);
  *(inited + 56) = v5;
  v6 = sub_25133010C(inited);
  swift_setDeallocating();
  sub_251334004(inited + 32);
  if (qword_280DE7350 != -1)
  {
    swift_once();
  }

  v7 = qword_280DE7358;
  sub_25132ECE4(v6);

  v8 = objc_allocWithZone(sub_25133F0A4());
  v9 = sub_25133F094();
  sub_251334060();
  v10 = sub_25133F9C4();
  [v10 addOperation_];
}

void sub_251333F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251333FA8()
{
  if (!qword_27F42B3F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B3F0);
    }
  }
}

uint64_t sub_251334004(uint64_t a1)
{
  sub_251333FA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251334060()
{
  result = qword_27F42B3F8;
  if (!qword_27F42B3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42B3F8);
  }

  return result;
}

id sub_2513340AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() systemBlueColor];
  [v0 setBackgroundColor_];

  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setAdjustsFontForContentSizeCategory_];
  }

  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setMasksToBounds_];

  return v0;
}

char *sub_2513341EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_button;
  *&v4[v9] = sub_2513340AC();
  v10 = &v4[OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction];
  v11 = type metadata accessor for ButtonView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v19.receiver = v4;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setPreservesSuperviewLayoutMargins_];
  v13 = OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_button;
  [v12 addSubview_];
  v14 = objc_opt_self();
  v15 = *&v12[v13];
  sub_25132BDC8(v15, v12, 0x4049000000000000, 0);

  sub_25131C1BC();
  v16 = sub_25133F844();

  [v14 activateConstraints_];

  v17 = *&v12[v13];
  [v17 addTarget:v12 action:sel_performActionWithSender_ forControlEvents:64];

  return v12;
}

void sub_251334514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *a3;
  v8 = &v5[OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction];
  v9 = *&v5[OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction];
  v10 = *(v8 + 1);
  *v8 = a4;
  *(v8 + 1) = a5;

  sub_251324764(v9);
  v11 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v11);

  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_25133F724();
  type metadata accessor for Key(0);
  sub_25131DE90();
  v14 = sub_25133F6E4();

  v15 = [v12 initWithString:v13 attributes:v14];

  [*&v6[OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_button] setAttributedTitle:v15 forState:0];
  [v6 setNeedsLayout];
}

id sub_25133473C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ArticleTapAnalyticsEvent.init(article:articleLocation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25133F0C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 48))(v12, v13);
  v15 = sub_251335038(v14);

  v16 = a1[3];
  v17 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v20 = v19;
  v38 = v11;
  v39 = v7;
  (*(v7 + 16))(v11, a2, v6);
  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    goto LABEL_19;
  }

  for (i = *(v15 + 16); ; i = sub_25133FB54())
  {
    v40 = v6;
    v37 = v18;
    if (!i)
    {
      break;
    }

    v36 = v20;
    v41 = MEMORY[0x277D84F90];
    v20 = &v41;
    result = sub_25133FBE4();
    if (i < 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v34 = a2;
    v35 = a3;
    v18 = 0;
    a3 = (v15 & 0xC000000000000001);
    a2 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (a3)
      {
        v23 = MEMORY[0x253072420](v18, v15);
      }

      else
      {
        if (v18 >= *(v15 + 16))
        {
          goto LABEL_18;
        }

        v23 = *(v15 + 8 * v18 + 32);
      }

      v24 = v23;
      result = [v23 identifier];
      if (!result)
      {
        goto LABEL_21;
      }

      v20 = &v41;
      sub_25133FBC4();
      v25 = *(v41 + 16);
      sub_25133FBF4();
      sub_25133FC04();
      sub_25133FBD4();
      ++v18;
      if (v6 == i)
      {

        v26 = v41;
        a2 = v34;
        a3 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_16:
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v28 = sub_25133F724();

  sub_2513350E8();
  v29 = v38;
  sub_25133F074();
  v30 = sub_25133F724();

  v31 = *(v39 + 8);
  v32 = a2;
  v33 = v40;
  v31(v32, v40);
  v31(v29, v33);
  *a3 = v27;
  a3[1] = v26;
  a3[2] = v28;
  a3[3] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthArticlesUI::ArticleTapAnalyticsEvent __swiftcall ArticleTapAnalyticsEvent.init(articleDidClick:articleHKDataTypes:articleTitle:articleLocation:)(NSNumber articleDidClick, Swift::OpaquePointer articleHKDataTypes, NSString articleTitle, NSString articleLocation)
{
  *v4 = articleDidClick;
  *(v4 + 8) = articleHKDataTypes;
  *(v4 + 16) = articleTitle;
  *(v4 + 24) = articleLocation;
  result.articleLocation = articleLocation;
  result.articleTitle = articleTitle;
  result.articleHKDataTypes = articleHKDataTypes;
  result.articleDidClick = articleDidClick;
  return result;
}

id ArticleTapAnalyticsEvent.init(didTapArticle:associatedHKTypes:articleTitle:articleLocation:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X4>, void *a4@<X8>)
{
  LOBYTE(v6) = a1;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      result = sub_25133FBE4();
      if (v8 < 0)
      {
        break;
      }

      v18 = v6;
      v19 = a3;
      v20 = a4;
      a3 = 0;
      a4 = (a2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v10 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x253072420](a3, a2);
        }

        else
        {
          if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v11 = *(a2 + 8 * a3 + 32);
        }

        v12 = v11;
        result = [v11 identifier];
        if (!result)
        {
          goto LABEL_19;
        }

        sub_25133FBC4();
        v6 = *(v21 + 16);
        sub_25133FBF4();
        sub_25133FC04();
        sub_25133FBD4();
        ++a3;
        if (v10 == v8)
        {

          v13 = v21;
          a3 = v19;
          a4 = v20;
          LOBYTE(v6) = v18;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v8 = sub_25133FB54();
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_16:

    v13 = MEMORY[0x277D84F90];
LABEL_17:
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v15 = sub_25133F724();

    sub_2513350E8();
    sub_25133F074();
    v16 = sub_25133F724();

    v17 = sub_25133F0C4();
    result = (*(*(v17 - 8) + 8))(a3, v17);
    *a4 = v14;
    a4[1] = v13;
    a4[2] = v15;
    a4[3] = v16;
  }

  return result;
}

void *sub_251334DC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251327F10();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

id sub_251334E3C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_25133FB44();
  sub_251335298();
  sub_2513352E4();
  result = sub_25133F974();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_25133FB64())
      {
        goto LABEL_30;
      }

      sub_251335298();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_251335038(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_25133FB54();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_251334DC0(v2, 0);

    v1 = sub_251334E3C(&v5, v3 + 4, v2, v1);
    sub_251335290();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

unint64_t sub_2513350E8()
{
  result = qword_27F42B410;
  if (!qword_27F42B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B410);
  }

  return result;
}

unint64_t sub_251335140()
{
  result = qword_27F42B418;
  if (!qword_27F42B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B418);
  }

  return result;
}

unint64_t sub_251335198()
{
  result = qword_27F42B420;
  if (!qword_27F42B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B420);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2513351F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251335240(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_251335298()
{
  result = qword_27F42B428;
  if (!qword_27F42B428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42B428);
  }

  return result;
}

unint64_t sub_2513352E4()
{
  result = qword_27F42B430;
  if (!qword_27F42B430)
  {
    sub_251335298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B430);
  }

  return result;
}

void sub_25133551C(void *a1, char a2)
{
  v4 = *&v2[OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_customView];
  *&v2[OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_customView] = a1;
  v5 = a1;

  [v2 setPreservesSuperviewLayoutMargins_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_currentConstraints;
  v8 = *&v2[OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_currentConstraints];
  sub_25131C1BC();

  v9 = sub_25133F844();

  [v6 deactivateConstraints_];

  if (a2)
  {
    v10 = sub_25132C0DC(v5, v2, 0, 1);
  }

  else
  {
    v10 = sub_25132C3C0(v5, v2, 0, 1);
  }

  v11 = *&v2[v7];
  *&v2[v7] = v10;

  v12 = *&v2[v7];

  v13 = sub_25133F844();

  [v6 activateConstraints_];
}

void sub_2513358F0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customViewController];
  *&v1[OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customViewController] = a1;
  v3 = a1;

  v4 = [v3 view];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customView];
    *&v1[OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customView] = v4;
    v6 = v4;

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v7 = objc_opt_self();
    sub_25132C0DC(v6, v1, 0, 1);
    sub_25131C1BC();
    v8 = sub_25133F844();

    [v7 activateConstraints_];
  }
}

id sub_251335A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_251335AE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_251335B94@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25133DC10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25131ACF0(v4);
}

uint64_t sub_251335C34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25133DBE8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_25131ACF0(v3);
  return sub_251335D20(v6, v5);
}

uint64_t sub_251335CC4()
{
  v1 = (v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25131ACF0(v3);
  return v3;
}

uint64_t sub_251335D20(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_25131ACF0(a1);
  sub_251324764(v6);
  if (*(v2 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer) == 1 && (v8 = *v5) != 0)
  {
    v9 = v5[1];

    v8(v10);
    sub_251324764(a1);
    v11 = v8;
  }

  else
  {
    v11 = a1;
  }

  return sub_251324764(v11);
}

void (*sub_251335DF0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_251335E78;
}

void sub_251335E78(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer) == 1)
    {
      v5 = v4 + v3[4];
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v5 + 8);

        v6(v8);
        sub_251324764(v6);
      }
    }
  }

  free(v3);
}

uint64_t sub_25133600C()
{
  v1 = (v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25133614C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2513361AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

id sub_251336278()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel);
  }

  else
  {
    v4 = sub_2513362D8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2513362D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  return v0;
}

id sub_2513363E0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerAsset] = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem] = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playerLooper] = 0;
  v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer] = 0;
  v11 = &v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel] = 0;
  v4[OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playWhenVisible] = 1;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for VideoView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setPreservesSuperviewLayoutMargins_];
  return v13;
}

uint64_t sub_25133664C(uint64_t a1)
{
  v3 = v1;

  return a1;
}

uint64_t sub_251336674(void (*a1)(char *, uint64_t), uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v70 = a8;
  v69 = a7;
  v72 = a6;
  v67 = a5;
  v71 = a4;
  v66 = a3;
  v78 = a1;
  v68 = sub_25133F674();
  v77 = *(v68 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v68, v10);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25133F694();
  v74 = *(v76 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v76, v13);
  v73 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25133F6B4();
  v16 = *(v15 - 8);
  v81 = v15;
  v82 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v79 = &v61 - v23;
  v24 = MEMORY[0x277CC9260];
  sub_251337C04(0, &qword_27F42B0E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v61 - v28;
  v30 = sub_25133EFC4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v30, v33);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v61 - v36;
  v65 = *a2;
  sub_25133DA50(v78, v29, &qword_27F42B0E0, v24);
  v38 = v31;
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    return sub_25133DAD0(v29, &qword_27F42B0E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_251337C04);
  }

  v61 = *(v31 + 32);
  v40 = v37;
  v64 = v37;
  v61(v37, v29, v30);
  sub_251322098(0, &qword_27F42B0F8, 0x277D85C78);
  v62 = sub_25133F9F4();
  sub_25133F6A4();
  sub_25133F6C4();
  v41 = *(v82 + 8);
  v82 += 8;
  v78 = v41;
  v41(v21, v81);
  v63 = v38;
  v42 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v30;
  (*(v38 + 16))(v42, v40, v30);
  v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v45 = (v32 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v71;
  *(v48 + 16) = v80;
  v61((v48 + v44), v42, v43);
  *(v48 + v45) = v65;
  v50 = (v48 + v46);
  *v50 = v66;
  v50[1] = v49;
  v51 = (v48 + v47);
  v52 = v72;
  *v51 = v67;
  v51[1] = v52;
  v53 = v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v53 = v69;
  *(v53 + 8) = v70 & 1;
  aBlock[4] = sub_251321D7C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25131EBB0;
  aBlock[3] = &block_descriptor_2;
  v54 = _Block_copy(aBlock);

  v55 = v80;

  v56 = v73;
  sub_25133F684();
  v83 = MEMORY[0x277D84F90];
  sub_251337BAC();
  sub_251337C04(0, &qword_27F42B108, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_251321E58();
  v57 = v75;
  v58 = v68;
  sub_25133FB34();
  v59 = v79;
  v60 = v62;
  MEMORY[0x253072260](v79, v56, v57, v54);
  _Block_release(v54);

  (*(v77 + 8))(v57, v58);
  (*(v74 + 8))(v56, v76);
  v78(v59, v81);
  (*(v63 + 8))(v64, v43);
}

uint64_t sub_251336D64(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v43 = a6;
  v44 = a8;
  v40 = a3;
  v41 = a4;
  v37 = a2;
  v38 = a1;
  v42 = a9;
  v11 = sub_25133EFC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v35 - v17;
  sub_25133F8F4();
  v39 = sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_25133F914();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v11);

  v37 = v38;

  v20 = sub_25133F8E4();
  v21 = *(v12 + 80);
  v35 = a7;
  v36 = a5;
  v22 = (v21 + 40) & ~v21;
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = v18;
  v26 = swift_allocObject();
  *(v26 + 2) = v20;
  v27 = v37;
  *(v26 + 3) = MEMORY[0x277D85700];
  *(v26 + 4) = v27;
  (*(v12 + 32))(&v26[v22], v14, v11);
  v28 = v41;
  *&v26[v23] = v40;
  v29 = &v26[v24];
  v30 = v36;
  *v29 = v28;
  *(v29 + 1) = v30;
  v31 = &v26[v25];
  v32 = v35;
  *v31 = v43;
  *(v31 + 1) = v32;
  v33 = &v26[(v25 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v33 = v44;
  v33[8] = v42 & 1;
  sub_2513377D4(0, 0, v38, &unk_2513426A0, v26);
}

uint64_t sub_25133708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v15;
  *(v8 + 248) = v14;
  *(v8 + 232) = v13;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 192) = a4;
  *(v8 + 256) = sub_25133F8F4();
  *(v8 + 264) = sub_25133F8E4();
  *(v8 + 272) = sub_25133F8E4();
  v10 = sub_25133F894();
  *(v8 + 280) = v10;
  *(v8 + 288) = v9;

  return MEMORY[0x2822009F8](sub_251337158, v10, v9);
}

uint64_t sub_251337158()
{
  v46 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = sub_251336278();
  if (v1)
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v1 = sub_25133F724();
  }

  v6 = *(v0 + 312);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  [v3 setText_];

  v11 = (v10 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  v12 = 1;
  swift_beginAccess();
  v13 = v11[1];
  *v11 = v8;
  v11[1] = v7;

  *(v10 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playWhenVisible) = (v9 & 5) != 4;
  if (v6)
  {
    v14 = 0.0;
  }

  else
  {
    v15 = *(v0 + 248);
    v16 = 1.0;
    if (v15 <= 1.0)
    {
      v16 = *(v0 + 248);
    }

    v17 = v15 <= 0.0;
    if (v15 > 0.0)
    {
      v14 = v16;
    }

    else
    {
      v14 = 0.0;
    }

    v12 = v17;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 208);
  v20 = *(v0 + 192) + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode;
  *v20 = v14;
  *(v20 + 8) = v12;
  v21 = (v19 & 2) == 0;
  if (v9)
  {
    v26 = *(v0 + 272);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 192);

    v30 = sub_25133EFA4();
    v31 = [objc_opt_self() playerViewWithURL:v30 looping:v21];

    v32 = *(v29 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel);
    v45 = v28;
    v33 = v32;
    sub_251337C68(v31, v33, &v45);

    *(v0 + 80) = sub_251322098(0, &qword_27F42B520, 0x277D12B38);
    *(v0 + 88) = &off_28635E5E0;
    *(v0 + 56) = v31;
    v34 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
    swift_beginAccess();
    v35 = v31;
    sub_25133DF30(v0 + 56, v29 + v34);
    swift_endAccess();
    if ((v9 & 4) == 0)
    {
      [v35 play];
    }

    v36 = *(v0 + 192);
    *(v36 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer) = 1;
    v37 = v36 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer;
    swift_beginAccess();
    v38 = *v37;
    if (*v37)
    {
      v39 = *(v37 + 8);

      v38(v40);
      sub_251324764(v38);
    }

    v41 = *(v0 + 256);
    v42 = *(v0 + 264);
    v44 = sub_25133F894();

    return MEMORY[0x2822009F8](sub_251337774, v44, v43);
  }

  else
  {

    v22 = swift_task_alloc();
    *(v0 + 296) = v22;
    *v22 = v0;
    v22[1] = sub_2513374B4;
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);

    return sub_25133818C(v23, v21);
  }
}

uint64_t sub_2513374B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = a1;

  v4 = *(v2 + 288);
  v5 = *(v2 + 280);

  return MEMORY[0x2822009F8](sub_2513375DC, v5, v4);
}

uint64_t sub_2513375DC()
{
  v25 = v0;
  v1 = [*(v0 + 304) view];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 304);
    v6 = *(v0 + 272);
    v7 = *(v0 + 208);
    v8 = *(v0 + 192);

    v9 = *(v8 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel);
    v24 = v7;
    v10 = v9;
    sub_251337C68(v4, v10, &v24);

    v11 = type metadata accessor for HKAVPlayerViewController();
    *(v0 + 16) = v5;
    *(v0 + 40) = v11;
    *(v0 + 48) = &off_28635E710;
    v12 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
    swift_beginAccess();
    sub_25133DF30(v0 + 16, v8 + v12);
    swift_endAccess();
    v13 = *(v0 + 192);
    *(v13 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer) = 1;
    v14 = v13 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer;
    swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 8);

      v15(v17);
      sub_251324764(v15);
    }

    v18 = *(v0 + 256);
    v19 = *(v0 + 264);
    v20 = sub_25133F894();
    v22 = v21;
    v1 = sub_251337774;
    v2 = v20;
    v3 = v22;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_251337774()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2513377D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v27 - v12;
  sub_25133DA50(a3, v27 - v12, &qword_27F42B470, v9);
  v14 = sub_25133F914();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_25133DAD0(v13, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);
  }

  else
  {
    sub_25133F904();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25133F894();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25133F784() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_25133DAD0(a3, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25133DAD0(a3, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251337BAC()
{
  result = qword_27F42B100;
  if (!qword_27F42B100)
  {
    sub_25133F674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B100);
  }

  return result;
}

void sub_251337C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251337C68(void *a1, void *a2, _BYTE *a3)
{
  if ((*a3 & 8) != 0)
  {
    v33 = [v3 leftAnchor];
    v8 = [v3 rightAnchor];
    v35 = [v3 leadingAnchor];
    v37 = [v3 trailingAnchor];
  }

  else
  {
    v6 = [v3 layoutMarginsGuide];
    v33 = [v6 leftAnchor];

    v7 = [v3 layoutMarginsGuide];
    v8 = [v7 rightAnchor];

    v9 = [v3 layoutMarginsGuide];
    v35 = [v9 leadingAnchor];

    v10 = [v3 layoutMarginsGuide];
    v37 = [v10 trailingAnchor];
  }

  [v3 addSubview_];
  [v3 addSubview_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 hk:4.0 maskAllCornersWithRadius:?];
  v36 = objc_opt_self();
  sub_25133C80C(0, &qword_27F42B2A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_251342310;
  v12 = [a1 topAnchor];
  v13 = [v3 layoutMarginsGuide];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v15;
  v16 = [a1 leftAnchor];
  v17 = [v16 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [a1 rightAnchor];
  v19 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v19;
  v20 = [a2 topAnchor];
  v21 = [a1 bottomAnchor];
  v22 = [v20 constraintEqualToSystemSpacingBelowAnchor:v21 multiplier:1.0];

  *(v11 + 56) = v22;
  v23 = [a2 leadingAnchor];
  v24 = [v23 constraintEqualToAnchor_];

  *(v11 + 64) = v24;
  v25 = [a2 trailingAnchor];
  v26 = [v25 constraintEqualToAnchor_];

  *(v11 + 72) = v26;
  v27 = [a2 bottomAnchor];
  v28 = [v3 layoutMarginsGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v11 + 80) = v30;
  sub_251322098(0, &qword_280DE7280, 0x277CCAAD0);
  v31 = sub_25133F844();

  [v36 activateConstraints_];

  LODWORD(v32) = 1148846080;
  [a2 setContentCompressionResistancePriority:1 forAxis:v32];
  [v3 setLayoutMargins_];
}

uint64_t sub_25133818C(uint64_t a1, char a2)
{
  *(v3 + 384) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  *(v3 + 176) = swift_getObjectType();
  v4 = sub_25133F274();
  *(v3 + 184) = v4;
  v5 = *(v4 - 8);
  *(v3 + 192) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = sub_25133F8F4();
  *(v3 + 216) = sub_25133F8E4();
  v8 = sub_25133F894();
  *(v3 + 224) = v8;
  *(v3 + 232) = v7;

  return MEMORY[0x2822009F8](sub_251338294, v8, v7);
}

uint64_t sub_251338294()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v5 = sub_25133EFA4();
  v6 = [v4 initWithURL:v5 options:0];
  *(v0 + 240) = v6;

  v7 = *(v3 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerAsset);
  *(v3 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerAsset) = v6;
  v8 = v6;

  v9 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  *(v0 + 248) = v9;
  v10 = *(v3 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem);
  *(v3 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem) = v9;
  v11 = v9;

  sub_25133C80C(0, &qword_27F42B2A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251342320;
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CE65F8]);
  sub_251322098(0, &qword_27F42B4E8, 0x277CE65B0);
  v14 = v11;
  v15 = sub_25133F844();

  v16 = [v13 initWithItems_];
  *(v0 + 256) = v16;

  v17 = v16;
  [v17 setPreventsDisplaySleepDuringVideoPlayback_];
  v18 = *(v0 + 168);
  if (v1 == 1)
  {
    v19 = [objc_opt_self() playerLooperWithPlayer:v17 templateItem:v14];
    v20 = *(v18 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playerLooper);
    *(v18 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playerLooper) = v19;
  }

  else
  {
    v21 = [objc_opt_self() defaultCenter];
    v20 = sub_25133F724();
    [v21 addObserver:v18 selector:sel_nonLoopingEndOfPlay_completionHandler_ name:v20 object:0];
  }

  v22 = [objc_allocWithZone(type metadata accessor for HKAVPlayerViewController()) init];
  *(v0 + 264) = v22;
  v23 = v22;
  [v23 setPlayer_];

  [v23 setShowsMinimalPlaybackControlsWhenEmbeddedInline_];
  v24 = v8;
  v25 = swift_task_alloc();
  *(v0 + 272) = v25;
  *v25 = v0;
  v25[1] = sub_2513385C4;

  return sub_25133D1B8(v24);
}

uint64_t sub_2513385C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v7 = *(v3 + 232);
  v8 = *(v3 + 224);
  if (v1)
  {
    v9 = sub_251338900;
  }

  else
  {
    v9 = sub_251338708;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_251338708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[35];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v13 = v4[35];
    }

    v6 = sub_25133FB54();
    if (v6)
    {
LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v23 = v4[35];

        v7 = MEMORY[0x253072420](0, v23);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2821FAF00](v6, a2, a3, a4);
        }

        v7 = *(v4[35] + 32);
      }

      v4[37] = v7;
      v8 = v4[26];
      sub_25133D63C(0, &qword_27F42B4F0, type metadata accessor for CGSize);
      v9 = sub_25133F014();
      v4[38] = v9;
      v10 = sub_25133F8E4();
      v4[39] = v10;
      v11 = *(MEMORY[0x277D82DC0] + 4);
      v12 = swift_task_alloc();
      v4[40] = v12;
      *v12 = v4;
      v12[1] = sub_251338B58;
      a4 = MEMORY[0x277D85700];
      v6 = (v4 + 17);
      a2 = v9;
      a3 = v10;

      return MEMORY[0x2821FAF00](v6, a2, a3, a4);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v14 = v4[35];
  v16 = v4[31];
  v15 = v4[32];
  v17 = v4[30];
  v18 = v4[27];

  v19 = v4[25];

  v20 = v4[1];
  v21 = v4[33];

  return v20(v21);
}

uint64_t sub_251338900()
{
  v36 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  v3 = *(v0 + 288);
  v4 = *(v0 + 200);
  sub_25133F244();
  v5 = v3;
  v6 = sub_25133F264();
  v7 = sub_25133F994();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 256);
    v31 = *(v0 + 248);
    v32 = *(v0 + 240);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);
    v33 = *(v0 + 184);
    v34 = *(v0 + 200);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315394;
    v13 = sub_25133FD74();
    v15 = sub_25132F394(v13, v14, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = sub_25133FCD4();
    v21 = sub_25132F394(v19, v20, &v35);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_251318000, v6, v7, "[%s]: Did receive error when loading track from AVAsset: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253072C40](v12, -1, -1);
    MEMORY[0x253072C40](v11, -1, -1);

    (*(v9 + 8))(v34, v33);
  }

  else
  {
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 184);

    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v0 + 200);

  v28 = *(v0 + 8);
  v29 = *(v0 + 264);

  return v28(v29);
}

uint64_t sub_251338B58()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[39];
  v6 = v2[38];
  if (v0)
  {
    v7 = v2[35];

    v8 = v2[28];
    v9 = v2[29];
    v10 = sub_251339058;
  }

  else
  {

    v8 = v2[28];
    v9 = v2[29];
    v10 = sub_251338CC0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_251338CC0()
{
  v1 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 136);
  sub_25133D63C(0, &qword_27F42B500, type metadata accessor for CGAffineTransform);
  v2 = sub_25133F024();
  *(v0 + 352) = v2;
  v3 = sub_25133F8E4();
  *(v0 + 360) = v3;
  v4 = *(MEMORY[0x277D82DC0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 368) = v5;
  *v5 = v0;
  v5[1] = sub_251338DC4;
  v6 = *(v0 + 296);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 16, v2, v3, v7);
}

uint64_t sub_251338DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(v2 + 376) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = *(v2 + 280);

    v8 = *(v2 + 224);
    v9 = *(v2 + 232);
    v10 = sub_2513392B8;
  }

  else
  {

    v8 = *(v2 + 224);
    v9 = *(v2 + 232);
    v10 = sub_251338F44;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

id sub_251338F44()
{
  *(v0 + 64) = *(v0 + 16);
  v16 = *(v0 + 336);
  v1 = *(v0 + 264);
  v2 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v2;
  v3 = CGSizeApplyAffineTransform(v16, (v0 + 64));
  result = [v1 view];
  if (result)
  {
    v5 = result;
    v6 = *(v0 + 296);
    v7 = *(v0 + 280);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);

    [v5 hk:v3.width constraintAspectRatioFromSize:v3.height];

    v12 = *(v0 + 200);

    v13 = *(v0 + 8);
    v14 = *(v0 + 264);

    return v13(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251339058()
{
  v37 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  v4 = *(v0 + 328);
  v5 = *(v0 + 200);
  sub_25133F244();
  v6 = v4;
  v7 = sub_25133F264();
  v8 = sub_25133F994();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v32 = *(v0 + 248);
    v33 = *(v0 + 240);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v34 = *(v0 + 184);
    v35 = *(v0 + 200);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315394;
    v14 = sub_25133FD74();
    v16 = sub_25132F394(v14, v15, &v36);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = sub_25133FCD4();
    v22 = sub_25132F394(v20, v21, &v36);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_251318000, v7, v8, "[%s]: Did receive error when loading track from AVAsset: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253072C40](v13, -1, -1);
    MEMORY[0x253072C40](v12, -1, -1);

    (*(v10 + 8))(v35, v34);
  }

  else
  {
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 184);

    (*(v26 + 8))(v25, v27);
  }

  v28 = *(v0 + 200);

  v29 = *(v0 + 8);
  v30 = *(v0 + 264);

  return v29(v30);
}

uint64_t sub_2513392B8()
{
  v37 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  v4 = *(v0 + 376);
  v5 = *(v0 + 200);
  sub_25133F244();
  v6 = v4;
  v7 = sub_25133F264();
  v8 = sub_25133F994();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v32 = *(v0 + 248);
    v33 = *(v0 + 240);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v34 = *(v0 + 184);
    v35 = *(v0 + 200);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315394;
    v14 = sub_25133FD74();
    v16 = sub_25132F394(v14, v15, &v36);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = sub_25133FCD4();
    v22 = sub_25132F394(v20, v21, &v36);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_251318000, v7, v8, "[%s]: Did receive error when loading track from AVAsset: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253072C40](v13, -1, -1);
    MEMORY[0x253072C40](v12, -1, -1);

    (*(v10 + 8))(v35, v34);
  }

  else
  {
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 184);

    (*(v26 + 8))(v25, v27);
  }

  v28 = *(v0 + 200);

  v29 = *(v0 + 8);
  v30 = *(v0 + 264);

  return v29(v30);
}

void sub_251339518(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_25133D6BC();
    v4 = a3;
    sub_25133F8B4();
  }

  else
  {
    sub_251322098(0, &qword_27F42B4F8, 0x277CE6450);
    sub_25133F854();
    sub_25133D6BC();
    sub_25133F8C4();
  }
}

uint64_t sub_2513395CC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  sub_25133F8F4();
  v2[22] = sub_25133F8E4();
  v4 = sub_25133F894();
  v2[23] = v4;
  v2[24] = v3;

  return MEMORY[0x2822009F8](sub_251339664, v4, v3);
}

uint64_t sub_251339664()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerAsset);
  v0[25] = v1;
  if (v1)
  {
    v2 = v0[20];
    v3 = v1;
    sub_25133EEA4();
    if (v0[15])
    {
      sub_251322098(0, &qword_27F42B4E8, 0x277CE65B0);
      if (swift_dynamicCast())
      {
        v4 = v0[21];
        v5 = v0[19];
        v0[26] = v5;
        v6 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem;
        v7 = *(v4 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem);
        if (v7 && (v5 = v5, v8 = v7, v9 = sub_25133FA94(), v5, v8, (v9 & 1) != 0))
        {
          v10 = v0[21];
          v11 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
          v0[27] = v11;
          v12 = *(v4 + v6);
          *(v4 + v6) = v11;
          v13 = v11;

          sub_25133C80C(0, &qword_27F42B2A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_251342320;
          *(v14 + 32) = v13;
          v15 = objc_allocWithZone(MEMORY[0x277CE65F8]);
          v16 = v13;
          v17 = sub_25133F844();

          v18 = [v15 initWithItems_];
          v0[28] = v18;

          [v18 setPreventsDisplaySleepDuringVideoPlayback_];
          v19 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
          swift_beginAccess();
          sub_25133A57C(v10 + v19, (v0 + 2));
          if (v0[5])
          {
            sub_25133ACBC((v0 + 2), (v0 + 7));
            sub_25133A648((v0 + 2));
            v20 = v0[10];
            v21 = v0[11];
            __swift_project_boxed_opaque_existential_1(v0 + 7, v20);
            v22 = *(v21 + 24);
            v39 = (v22 + *v22);
            v23 = v22[1];
            v24 = swift_task_alloc();
            v0[29] = v24;
            *v24 = v0;
            v24[1] = sub_251339AF4;

            return v39(v18, v20, v21);
          }

          v31 = v0[22];

          sub_25133A648((v0 + 2));
          v32 = v0[27];
          v33 = v0[28];
          v34 = v0[25];
          v35 = v0[26];
          v36 = v0[21];
          v37 = [objc_opt_self() defaultCenter];
          v38 = sub_25133F724();
          [v37 addObserver:v36 selector:sel_nonLoopingEndOfPlay_completionHandler_ name:v38 object:0];
        }

        else
        {
          v29 = v0[22];
        }
      }

      else
      {
        v28 = v0[22];
      }
    }

    else
    {
      v27 = v0[22];

      sub_25133DAD0((v0 + 12), &qword_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_25133C80C);
    }
  }

  else
  {
    v26 = v0[22];
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_251339AF4()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_251339C14, v4, v3);
}

uint64_t sub_251339C14()
{
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[21];
  v7 = [objc_opt_self() defaultCenter];
  v8 = sub_25133F724();
  [v7 addObserver:v6 selector:sel_nonLoopingEndOfPlay_completionHandler_ name:v8 object:0];

  v9 = v0[1];

  return v9();
}

uint64_t sub_251339ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25133EEB4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_25133F8F4();
  v3[8] = sub_25133F8E4();
  v8 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_251339FC8, v8, v7);
}

uint64_t sub_251339FC8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[9] = _Block_copy(v3);
  sub_25133EE94();
  v6 = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_25133A098;
  v8 = v0[7];
  v9 = v0[4];

  return sub_2513395CC(v8);
}

uint64_t sub_25133A098()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  v7 = *(v9 + 8);

  return v7();
}

id VideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall VideoView.viewStateChanged(_:)(HealthArticlesUI::MovementVisibilityState a1)
{
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  if (*(v1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode + 8) == 1 && *(v1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playWhenVisible) == 1)
  {
    v8 = *a1.rawValue;
    v9 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
    swift_beginAccess();
    sub_25133A57C(v1 + v9, &v17);
    if (v18)
    {
      sub_251327E68(&v17, v19);
      v10 = sub_25133F914();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      sub_25133ACBC(v19, &v17);
      sub_25133F8F4();
      v11 = sub_25133F8E4();
      if ((v8 & 3) == 2)
      {
        v12 = swift_allocObject();
        v13 = MEMORY[0x277D85700];
        *(v12 + 16) = v11;
        *(v12 + 24) = v13;
        sub_251327E68(&v17, v12 + 32);
        v14 = &unk_251342348;
      }

      else
      {
        v12 = swift_allocObject();
        v15 = MEMORY[0x277D85700];
        *(v12 + 16) = v11;
        *(v12 + 24) = v15;
        sub_251327E68(&v17, v12 + 32);
        v14 = &unk_251342338;
      }

      sub_2513377D4(0, 0, v7, v14, v12);

      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      sub_25133A648(&v17);
    }
  }
}

uint64_t sub_25133A57C(uint64_t a1, uint64_t a2)
{
  sub_25133A5E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25133A5E0()
{
  if (!qword_27F42B490)
  {
    sub_251327C60(255, &qword_27F42B498);
    v0 = sub_25133FAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B490);
    }
  }
}

uint64_t sub_25133A648(uint64_t a1)
{
  sub_25133A5E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25133A6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25133F8F4();
  v4[3] = sub_25133F8E4();
  v6 = sub_25133F894();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25133A73C, v6, v5);
}

uint64_t sub_25133A73C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25133A860;

  return v8(v2, v3);
}

uint64_t sub_25133A860()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25133DF9C, v4, v3);
}

uint64_t sub_25133A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25133F8F4();
  v4[3] = sub_25133F8E4();
  v6 = sub_25133F894();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25133AA18, v6, v5);
}

uint64_t sub_25133AA18()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25133AB3C;

  return v8(v2, v3);
}

uint64_t sub_25133AB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25133AC5C, v4, v3);
}

uint64_t sub_25133AC5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25133ACBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25133AD20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133ADD0;

  return sub_25133A980(a1, v4, v5, v1 + 32);
}

uint64_t sub_25133ADD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25133AF04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133DF94;

  return sub_25133A6A4(a1, v4, v5, v1 + 32);
}

Swift::Void __swiftcall VideoView.viewVisibilityChanged(_:)(Swift::Double a1)
{
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  if ((*(v1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playWhenVisible) == 1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode);
    v9 = OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
    swift_beginAccess();
    sub_25133A57C(v1 + v9, &v16);
    if (v17)
    {
      sub_251327E68(&v16, v18);
      v10 = sub_25133F914();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      sub_25133ACBC(v18, &v16);
      sub_25133F8F4();
      v11 = sub_25133F8E4();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      *(v12 + 16) = v11;
      *(v12 + 24) = v13;
      sub_251327E68(&v16, v12 + 32);
      if (v8 <= a1)
      {
        v14 = &unk_251342368;
      }

      else
      {
        v14 = &unk_251342358;
      }

      sub_2513377D4(0, 0, v7, v14, v12);

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      sub_25133A648(&v16);
    }
  }
}

uint64_t sub_25133B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25133F8F4();
  v4[3] = sub_25133F8E4();
  v6 = sub_25133F894();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25133B290, v6, v5);
}

uint64_t sub_25133B290()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25133A860;

  return v8(v2, v3);
}

uint64_t sub_25133B3B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133DF94;

  return sub_25133B1F8(a1, v4, v5, v1 + 32);
}

uint64_t sub_25133B464(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133DF94;

  return sub_25133A6A4(a1, v4, v5, v1 + 32);
}

unint64_t sub_25133B518()
{
  result = qword_27F42B4A0;
  if (!qword_27F42B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B4A0);
  }

  return result;
}

unint64_t sub_25133B570()
{
  result = qword_27F42B4A8;
  if (!qword_27F42B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B4A8);
  }

  return result;
}

unint64_t sub_25133B5C8()
{
  result = qword_27F42B4B0;
  if (!qword_27F42B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B4B0);
  }

  return result;
}

unint64_t sub_25133B620()
{
  result = qword_27F42B4B8;
  if (!qword_27F42B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B4B8);
  }

  return result;
}

uint64_t sub_25133B674(HealthArticlesUI::MovementVisibilityState a1)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  VideoView.viewStateChanged(_:)(a1);
}

uint64_t sub_25133B724(Swift::Double a1)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  VideoView.viewVisibilityChanged(_:)(a1);
}

uint64_t sub_25133B7D4()
{
  *(v1 + 16) = v0;
  sub_25133F8F4();
  *(v1 + 24) = sub_25133F8E4();
  v3 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133B86C, v3, v2);
}

uint64_t sub_25133B86C()
{
  v2 = v0[2];
  v1 = v0[3];

  [*v2 play];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25133B8DC()
{
  *(v1 + 16) = v0;
  sub_25133F8F4();
  *(v1 + 24) = sub_25133F8E4();
  v3 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133B974, v3, v2);
}

uint64_t sub_25133B974()
{
  v2 = v0[2];
  v1 = v0[3];

  [*v2 pause];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25133B9E4()
{
  sub_25133F8F4();
  *(v0 + 16) = sub_25133F8E4();
  v2 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133BA78, v2, v1);
}

uint64_t sub_25133BA78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

id sub_25133BF00()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76648] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D76768] object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for HKAVPlayerViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_25133BFFC()
{
  v1 = &v0[OBJC_IVAR____TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController_timeControlStatusBeforeBackground];
  if ((v0[OBJC_IVAR____TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController_timeControlStatusBeforeBackground + 8] & 1) == 0)
  {
    if (*v1 == 2)
    {
      v2 = [v0 player];
      [v2 play];
    }

    *v1 = 0;
    v1[8] = 1;
  }
}

void sub_25133C094()
{
  v1 = [v0 player];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 timeControlStatus];

    v4 = &v0[OBJC_IVAR____TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController_timeControlStatusBeforeBackground];
    *v4 = v3;
    v4[8] = 0;
    if (v3 == 2)
    {
      v5 = [v0 player];
      [v5 pause];
    }
  }
}

void sub_25133C178(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoView.PlayMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoView.PlayMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25133C3E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25133C400(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_25133C430()
{
  *(v1 + 16) = v0;
  sub_25133F8F4();
  *(v1 + 24) = sub_25133F8E4();
  v3 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133C4C8, v3, v2);
}

uint64_t sub_25133C4C8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *v2;
  v4 = [v3 player];
  if (!v4 || (v5 = v4, v6 = [v4 timeControlStatus], v5, v6 != 2))
  {
    v7 = [v3 player];
    [v7 play];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_25133C598()
{
  *(v1 + 16) = v0;
  sub_25133F8F4();
  *(v1 + 24) = sub_25133F8E4();
  v3 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133C630, v3, v2);
}

uint64_t sub_25133C630()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *v2;
  v4 = [v3 player];
  if (!v4 || (v5 = v4, v6 = [v4 timeControlStatus], v5, v6))
  {
    v7 = [v3 player];
    [v7 pause];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_25133C6FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_25133F8F4();
  v2[4] = sub_25133F8E4();
  v4 = sub_25133F894();

  return MEMORY[0x2822009F8](sub_25133C794, v4, v3);
}

uint64_t sub_25133C794()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  [*v2 setPlayer_];
  v4 = v0[1];

  return v4();
}

void sub_25133C80C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_25133C85C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25133C954;

  return v7(a1);
}

uint64_t sub_25133C954()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25133CA4C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25133DF94;

  return v7();
}

uint64_t sub_25133CB34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25133ADD0;

  return v8();
}

uint64_t sub_25133CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v27 - v13;
  sub_25133DA50(a3, v27 - v13, &qword_27F42B470, v9);
  v15 = sub_25133F914();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25133DAD0(v14, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_25133F904();
  (*(v16 + 8))(v14, v15);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v17 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = sub_25133F894();
  v20 = v19;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v21 = sub_25133F784() + 32;
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    if (v20 | v18)
    {
      v28[0] = 0;
      v28[1] = 0;
      v23 = v28;
      v28[2] = v18;
      v28[3] = v20;
    }

    else
    {
      v23 = 0;
    }

    v27[1] = 7;
    v27[2] = v23;
    v27[3] = v21;
    v25 = swift_task_create();

    sub_25133DAD0(a3, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);

    return v25;
  }

LABEL_8:
  sub_25133DAD0(a3, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_251337C04);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25133CFD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25133DF98;

  return v7(a1);
}

void sub_25133D0D0()
{
  v1 = v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_videoPlayer;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playMode;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerAsset) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_primaryPlayerItem) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_playerLooper) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_didBuildVideoPlayer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_unitTesting_onDidBuildVideoPlayer);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView____lazy_storage___captionLabel) = 0;
  sub_25133FC14();
  __break(1u);
}

uint64_t sub_25133D1B8(uint64_t a1)
{
  v1[19] = a1;
  sub_25133D6BC();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25133D278, 0, 0);
}

uint64_t sub_25133D278()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v12 = v1[19];
  v11 = *MEMORY[0x277CE5EA8];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_25133D44C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_25133D73C();
  sub_251327C60(0, &qword_27F42B518);
  sub_25133F8A4();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_251339518;
  v1[13] = &block_descriptor_72;
  [v12 loadTracksWithMediaType:v11 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_25133D44C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_25133D5C8;
  }

  else
  {
    v3 = sub_25133D55C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25133D55C()
{
  v1 = v0[22];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_25133D5C8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

void sub_25133D63C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251322098(255, &qword_27F42B4F8, 0x277CE6450);
    a3(255);
    v5 = sub_25133F004();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25133D6BC()
{
  if (!qword_27F42B508)
  {
    sub_25133D73C();
    sub_251327C60(255, &qword_27F42B518);
    v0 = sub_25133F8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B508);
    }
  }
}

void sub_25133D73C()
{
  if (!qword_27F42B510)
  {
    sub_251322098(255, &qword_27F42B4F8, 0x277CE6450);
    v0 = sub_25133F884();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B510);
    }
  }
}

uint64_t sub_25133D7D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25133DF94;

  return sub_251339ED0(v2, v3, v4);
}

uint64_t sub_25133D884()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25133DF94;

  return sub_25133CA4C(v2, v3, v5);
}

uint64_t objectdestroy_79Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25133D984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25133DF94;

  return sub_25133CB34(a1, v4, v5, v7);
}

uint64_t sub_25133DA50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251337C04(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25133DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_25133DB30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133DF94;

  return sub_25133CFD8(a1, v5);
}

uint64_t sub_25133DBE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25133DC10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25133DC38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133DF94;

  return sub_25133C85C(a1, v5);
}

uint64_t sub_25133DCF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25133ADD0;

  return sub_25133C85C(a1, v5);
}

uint64_t sub_25133DDA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_25133EFC4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[3];
  v21 = v1[2];
  v19 = *(v1 + v6);
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v14 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_25133DF94;

  return sub_25133708C(a1, v21, v20, v10, v1 + v5, v19, v11, v12);
}

uint64_t sub_25133DF30(uint64_t a1, uint64_t a2)
{
  sub_25133A5E0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_25133DFB8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    sub_251322098(0, &qword_280DE7268, 0x277D756B8);
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

char *sub_25133E0B0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel] = 0;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for TileSashView();
  v9 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setPreservesSuperviewLayoutMargins_];
  v10 = sub_25133DFA0();
  [v9 addSubview_];

  v11 = sub_25133DFAC();
  [v9 addSubview_];

  sub_25133E9E8();
  v12 = *&v9[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel];
  sub_251322098(0, &qword_280DE7278, 0x277D74300);
  v13 = *MEMORY[0x277D76A20];
  v14 = *MEMORY[0x277D743F8];
  v15 = v12;
  v16 = sub_25133FA54();
  [v15 setFont_];

  v17 = *MEMORY[0x277D76918];
  v18 = *&v9[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel];
  v19 = sub_25133FA54();
  [v18 setFont_];

  sub_25131C208();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251340BD0;
  v21 = sub_25133F2B4();
  v22 = MEMORY[0x277D74DB8];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  MEMORY[0x2530722E0](v20, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v9;
}

id sub_25133E3C4(void *a1)
{
  *&v1[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel] = 0;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for TileSashView();
  v3 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_25133DFA0();
    [v5 addSubview_];

    v7 = sub_25133DFAC();
    [v5 addSubview_];

    sub_25133E9E8();
    v8 = *&v5[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel];
    sub_251322098(0, &qword_280DE7278, 0x277D74300);
    v9 = *MEMORY[0x277D76A20];
    v10 = *MEMORY[0x277D743F8];
    v11 = v8;
    v12 = sub_25133FA54();
    [v11 setFont_];

    v13 = *MEMORY[0x277D76918];
    v14 = *&v5[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel];
    v15 = sub_25133FA54();
    [v14 setFont_];

    a1 = v15;
  }

  return v4;
}

void sub_25133E784()
{
  v0 = sub_25133DFA0();
  sub_251322098(0, &qword_280DE7278, 0x277D74300);
  v1 = *MEMORY[0x277D76A20];
  v2 = *MEMORY[0x277D743F8];
  v3 = sub_25133FA54();
  [v0 setFont_];

  v4 = sub_25133DFAC();
  v5 = *MEMORY[0x277D76918];
  v6 = sub_25133FA54();
  [v4 setFont_];
}

id TileSashView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileSashView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25133E9E8()
{
  v1 = v0;
  v38 = objc_opt_self();
  sub_251327F10();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_251342310;
  v3 = sub_25133DFA0();
  v4 = [v3 topAnchor];

  v5 = [v1 layoutMarginsGuide];
  v6 = [v5 &selRef_scrollViewDidScrollToTop_];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel;
  v9 = [*&v1[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___titleLabel] leadingAnchor];
  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 0x2796B6F65];
  *(v2 + 40) = v12;
  v13 = [*&v1[v8] trailingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];

  v16 = [v13 0x2796B6F65];
  *(v2 + 48) = v16;
  v17 = sub_25133DFAC();
  v18 = [v17 topAnchor];

  v19 = [*&v1[v8] bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:4.0];

  *(v2 + 56) = v20;
  v21 = OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel;
  v22 = [*&v1[OBJC_IVAR____TtC16HealthArticlesUI12TileSashView____lazy_storage___descriptionLabel] leadingAnchor];
  v23 = [v1 layoutMarginsGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v2 + 64) = v25;
  v26 = [*&v1[v21] trailingAnchor];
  v27 = [v1 layoutMarginsGuide];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v2 + 72) = v29;
  v30 = [*&v1[v21] bottomAnchor];
  v31 = [v1 layoutMarginsGuide];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v2 + 80) = v33;
  sub_251322098(0, &qword_280DE7280, 0x277CCAAD0);
  v34 = sub_25133F844();

  [v38 activateConstraints_];

  type metadata accessor for UILayoutPriority(0);
  sub_25132BD58();
  sub_25133F294();
  sub_25133F284();
  LODWORD(v35) = v39;
  [*&v1[v8] setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = v39;
  return [*&v1[v8] setContentCompressionResistancePriority:1 forAxis:v36];
}