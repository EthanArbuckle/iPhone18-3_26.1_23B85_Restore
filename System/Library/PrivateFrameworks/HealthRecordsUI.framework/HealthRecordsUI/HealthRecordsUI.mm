id sub_1D1021C90()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EE06BB10 = qword_1EE06B6C8;
  *algn_1EE06BB18 = 0xD00000000000001BLL;
  qword_1EE06BB20 = 0x80000001D13BFB60;

  return v1;
}

id sub_1D1021D14()
{
  type metadata accessor for ViewControllerFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE06B6C8 = result;
  return result;
}

uint64_t sub_1D1021DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1D138D1CC();
  if (*(a9 + 16))
  {
    v10 = sub_1D139019C();

    return v10;
  }

  return result;
}

void *sub_1D1021EA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D1021EF0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D1021F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D139016C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1D1021FE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D1022010@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D10220F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D106C93C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D1022138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D106A23C();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D10221E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1D106A23C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D1022288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D10222A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _s9YearRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9YearRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D10223C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1D102241C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D102248C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D10224EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1D1072E70(v3 + v4, a2);
}

uint64_t sub_1D102254C()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1022588()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10225C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022600()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022658()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1022690()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10226C8()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1022798()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1022878()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10228C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10228F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102294C()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1022984()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10229BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10229FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1022A34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1022A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022AA8()
{
  v1 = (_s13ConfigurationVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1D138D76C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v1[7];
  v8 = sub_1D138D57C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[11];
  v10 = sub_1D138D67C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  v6(v0 + v3 + v1[14], v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1022C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1022CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1022CF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022D7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1022DE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1022E30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1022E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttachmentContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1022F28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttachmentContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D10230F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1D10B9380(v1, v2);
}

uint64_t sub_1D1023130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  swift_beginAccess();
  return sub_1D10BA6A0(v3 + v4, a2);
}

uint64_t sub_1D1023198()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10231E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1023230()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023268()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10232B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10232E8()
{
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = sub_1D138D39C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_1D102344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D102350C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D10235C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023600()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102363C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D102373C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D10237F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023830()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023870()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10238B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 117, 7);
}

uint64_t sub_1D1023920()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023958()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023990()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10239C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1023A00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023A50()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1023A94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023ACC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023B10()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023B88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1023BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D138ED5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D1023C74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D138ED5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1023D60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023D98()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023DD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1023E14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1023E68@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D1023F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D1023F7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1D1023FEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1D102403C()
{

  return MEMORY[0x1EEE6BDD0](v0, 58, 7);
}

uint64_t sub_1D102407C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10240B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1D10241A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D10241B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D10242DC()
{
  sub_1D1124AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1024364()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102439C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10243D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102440C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024444()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1024484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1D112A0B0(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1D10245CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1D112A0B0(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1D1024704()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1024744()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102477C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10247BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1024804()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102483C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1024888()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D10248C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D1024908()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D102494C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024984()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1024A2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1024A64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1024AD0()
{
  sub_1D113E794();
  sub_1D113EAD4(&qword_1EC60B748, sub_1D113E794);
  sub_1D10940C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D1024BC0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1024C98()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024D04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1D1024DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1024E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1024E68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1024EC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024EFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1024F34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1024F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1024FB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1025008()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025048()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D10250A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D10250F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1025148()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1025198()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10251E0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1025228()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025270()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10252AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10252EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102534C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025394()
{

  return MEMORY[0x1EEE6BDD0](v0, 117, 7);
}

uint64_t sub_1D102541C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1025454()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1025490()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10254DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D1025598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D57C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1025650()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1025698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1D10256F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1D11946C0();
}

uint64_t sub_1D1025748@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_1D10257A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1D11949E4(v1, v2);
}

uint64_t sub_1D1025800()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1025894()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10258CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025904()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1025950()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025990()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10259E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1025A18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1025A78()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1025AB0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1D1025B08@<X0>(void *a1@<X8>)
{
  result = sub_1D11B715C();
  *a1 = result;
  return result;
}

__n128 sub_1D1025B6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1025B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1025BC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1025C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D1025C68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1025CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1D1025DA0()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1025DF0()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D1025E28@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1025E98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1025EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1D1072E70(v3 + v4, a2);
}

id sub_1D1025F58@<X0>(void *a1@<X8>)
{
  result = sub_1D11D1814();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D1025F84(__int128 *a1, void *a2)
{
  v4 = *(*a2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController);
  v2 = *a1;
  *(*a2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController) = *a1;
  v3 = v2;
}

id sub_1D1025FD8@<X0>(void *a1@<X8>)
{
  result = sub_1D11D1998();
  *a1 = result;
  return result;
}

void sub_1D1026004(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController);
  *(*a2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController) = *a1;
  v3 = v2;
}

uint64_t sub_1D1026054()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1026094()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D10260CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1026104()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102613C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1026178()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10261B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10261F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1026230()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1026268()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10262AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D10262FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10263B4()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10263EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102642C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1026464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D10264AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D10264F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1026534()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102657C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10265C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1026628()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1026668()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_1D10266B8@<D0>(uint64_t a1@<X8>)
{
  sub_1D11EBB5C(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1D1026700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseCategory();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D102676C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseCategory();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D10267DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D138D76C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D138D57C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1D138D67C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D1026950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D138D76C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D138D57C();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1D138D67C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

id sub_1D1026AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1026BB4()
{
  sub_1D11FACF0(0, &qword_1EC609C78);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;

  v7 = v6 + *(v2 + 36);
  v8 = sub_1D138D76C();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = _s13ConfigurationVMa();
  v11 = v10[5];
  v12 = sub_1D138D57C();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  v13 = v10[9];
  v14 = sub_1D138D67C();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  v9(v7 + v10[12], v8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1026DD8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1026E14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D1026E74()
{
  v1 = sub_1D138F98C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1026EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D138FA6C();
  *a1 = result;
  return result;
}

uint64_t sub_1D1026F58@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D1204C0C();
}

__n128 sub_1D1026FCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1026FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D1203B30();
  *a1 = result;
  return result;
}

id sub_1D1027038@<X0>(void *a1@<X8>)
{
  v2 = sub_1D1204CA8();
  *a1 = v2;

  return v2;
}

id sub_1D10270AC@<X0>(void *a1@<X8>)
{
  result = sub_1D1203DA4();
  *a1 = result;
  return result;
}

uint64_t sub_1D1027110()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027148()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1027180()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10271D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1027214()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102724C()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027284()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10272CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D120B2C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D138D5EC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_1D102743C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D120B2C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D138D5EC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1D1027564()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10275E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1027630()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102766C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D10276C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

id sub_1D102775C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D10277C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027804()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102787C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10278BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D10278F4()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102792C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1027964()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D10279DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1027A4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1027B04()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1027B54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1D1027C00()
{
  sub_1D1232188(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1D1027C84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1027C90()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027CC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1027D10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027D48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1027D80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1027DD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1027E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D138EE7C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1027F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D138EE7C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D10280F8(void *a1)
{

  *a1 = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1D102812C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028168()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D10281A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10281E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D10282F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1028360()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10283EC()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028424()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1028464()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102849C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10284DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102851C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
  swift_beginAccess();
  return sub_1D1268B4C(v3 + v4, a2);
}

uint64_t sub_1D10285B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D102864C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028684()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10286D4()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102870C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102876C()
{

  return MEMORY[0x1EEE6BDD0](v0, 117, 7);
}

uint64_t sub_1D10287D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028810()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028848()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028880()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D10288C0()
{
  v1 = sub_1D138D01C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1028988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D12874D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D10289B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1D1028A24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028A5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028A9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1028AEC()
{
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_1D1028C40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1028C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028CC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028D3C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1028D84()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1028DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1028E34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028E74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1028EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1028F00()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D1028F60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1028FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D12B3834(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D1029120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_1D12B3834(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D1029248()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1D10292B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D1029320()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1D1029378()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1029470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D138FAAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D10294D8()
{
  swift_unknownObjectRelease();

  sub_1D12C7FD4();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D10295BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138FA8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D1029614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D106A23C();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D10296F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D106A23C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D10297E4()
{
  sub_1D12C88CC();
  sub_1D12C755C(&qword_1EC60EF10, sub_1D12C88CC);
  sub_1D10940C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D1029880(uint64_t a1, uint64_t a2)
{
  sub_1D12C8F0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10298E4(uint64_t a1)
{
  sub_1D12C8F0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1029940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138FA4C();
  *a1 = result;
  return result;
}

uint64_t sub_1D10299EC()
{
  v1 = sub_1D138D01C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1029AB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029AEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1029B3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1029B84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1029BCC()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029C08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029C40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1029C80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029CCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029D04()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1029D74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1029DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1029E00()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029E38()
{
  sub_1D1232304(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1029E78()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029EB0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029EEC()
{
  sub_1D12E1920();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1029F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1029FB4()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1029FEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102A034()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102A084()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D102A0CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102A10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D102A1CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D102A288()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102A2C0()
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = type metadata accessor for AccountIconViewData(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1D138D5EC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D102A410()
{
  v1 = *(type metadata accessor for AccountIconViewData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_1D138D5EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D102A52C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102A57C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102A5BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102A5F4()
{
  sub_1D130CFB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D102A67C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102A6B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102A6F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102A72C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102A764()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102A79C()
{
  if ((*(v0 + 24) - 1) >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102A7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D102A854(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D138D5EC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D102A8D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102A918()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102A950()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102A998()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102A9F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D102AA4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102AAA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102AAEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D102AB40()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102AB88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102ABC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102ABFC()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D102ACC8()
{
  v1 = (type metadata accessor for ClinicalAccountManager.FlowError() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1D138D5EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D102ADB0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D102AE94()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D102AF6C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D102B034()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102B06C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D102B14C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D102B23C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D102B334()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D102B40C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D102B45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D102B518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D138D5EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D102B61C()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102B658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v3 + v4, a2);
}

uint64_t sub_1D102B6B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D102B714()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102B758()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102B790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102B7C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102B810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D106A23C();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D102B8BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D106A23C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D102B960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138E2CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D102B9B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138E2EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D102BA30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102BA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102BAB8()
{
  sub_1D133EE98();
  sub_1D133F284(&qword_1EC60FA18, sub_1D133EE98);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D102BB40()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102BB90()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102BC2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 117, 7);
}

uint64_t sub_1D102BC94()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102BCCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102BD04()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D102BD3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102BD7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102BDB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102BE30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102BE90()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102BED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102BF10()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D102BF64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102BFBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C004()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C03C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D102C088(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1357124(v1);
}

uint64_t sub_1D102C0B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HRConceptHeaderCell_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D102C110(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D1357368(v1, v2);
}

void sub_1D102C15C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1357668(v1);
}

uint64_t sub_1D102C18C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D102C1D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C20C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102C24C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D102C298()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C2D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C310()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102C350()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C394()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C3CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102C404(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D102C414(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D102C434()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C494()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C4DC@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EC608EB0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EC6101E8;
  return result;
}

uint64_t sub_1D102C544@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC6101E9;
  return result;
}

uint64_t sub_1D102C590(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC6101E9 = v1;
  return result;
}

uint64_t sub_1D102C5D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C610()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102C654()
{
  MEMORY[0x1D3888420](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102C68C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102C6CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102C714()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D102C7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D102C850()
{
  v1 = sub_1D138D39C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D102C914()
{
  v1 = sub_1D138FF2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D102C9F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D102CA40()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102CA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102CAC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D102CB20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102CB60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D102CB98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D102CBD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D102CC18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D102CC60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D102CD18()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1D102CD4C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D102CD7C()
{
  v1 = *v0;

  return v1;
}

uint64_t *sub_1D102CDAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_1D102CDC8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D102CE24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D10309D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D1030F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D103177C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1D1034698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D1047BC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id HBXBundle()
{
  v0 = HBXBundle___ClassBundle;
  if (!HBXBundle___ClassBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = HBXBundle___ClassBundle;
    HBXBundle___ClassBundle = v1;

    v0 = HBXBundle___ClassBundle;
  }

  return v0;
}

id HKHealthRecordsUIFrameworkBundle()
{
  v0 = HKHealthRecordsUIFrameworkBundle___ClassBundle;
  if (!HKHealthRecordsUIFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = HKHealthRecordsUIFrameworkBundle___ClassBundle;
    HKHealthRecordsUIFrameworkBundle___ClassBundle = v1;

    v0 = HKHealthRecordsUIFrameworkBundle___ClassBundle;
  }

  return v0;
}

void sub_1D104B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D104C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D104C814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D104CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D1051AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HRWDAsUserActivityResponder(void *a1)
{
  v1 = a1;
  if ([objc_opt_class() conformsToProtocol:&unk_1F4D41470])
  {
    v2 = v1;
  }

  else
  {
    v2 = +[HRWDEmptyUserActivityResponder emptyUserActivityResponder];
  }

  v3 = v2;

  return v3;
}

uint64_t _ConceptsOfRecordsAreDefinedAndEqual(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 primaryConcept];
  v5 = [v4 groupByConcept];

  v6 = [v3 primaryConcept];

  v7 = [v6 groupByConcept];

  if (v5)
  {
    v8 = [v5 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1D1053D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D1053E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D1053FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D1054148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D1054278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D10547D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D1055E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D105C1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D1063B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D1064A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1D1064EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D1068060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t CategoryRecordKind.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CategoryRecordKind.meaningfulDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryRecordKind() + 28);

  return sub_1D106A1D8(v3, a1);
}

uint64_t type metadata accessor for CategoryRecordKind()
{
  result = qword_1EE06B3C0;
  if (!qword_1EE06B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D106A1D8(uint64_t a1, uint64_t a2)
{
  sub_1D106A23C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D106A23C()
{
  if (!qword_1EE06B500)
  {
    sub_1D138D57C();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B500);
    }
  }
}

uint64_t CategoryRecordKind.hash(into:)()
{
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D38870E0](*v0);
  MEMORY[0x1D3887110](*(v0 + 1));
  sub_1D139027C();
  v8 = type metadata accessor for CategoryRecordKind();
  sub_1D106A1D8(&v0[*(v8 + 28)], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1D139179C();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1D139179C();
  sub_1D106C10C(&qword_1EC608ED8, MEMORY[0x1E6969530]);
  sub_1D139007C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t CategoryRecordKind.hashValue.getter()
{
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D139177C();
  MEMORY[0x1D38870E0](*v0);
  MEMORY[0x1D3887110](*(v0 + 1));
  sub_1D139027C();
  v8 = type metadata accessor for CategoryRecordKind();
  sub_1D106A1D8(&v0[*(v8 + 28)], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D139179C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D139179C();
    sub_1D106C10C(&qword_1EC608ED8, MEMORY[0x1E6969530]);
    sub_1D139007C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D106A680(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D139177C();
  MEMORY[0x1D38870E0](*v2);
  MEMORY[0x1D3887110](*(v2 + 1));
  sub_1D139027C();
  sub_1D106A1D8(&v2[*(a2 + 28)], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D139179C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D139179C();
    sub_1D106C10C(&qword_1EC608ED8, MEMORY[0x1E6969530]);
    sub_1D139007C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D106A890(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1D3885FC0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1D106A8E4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1D3885FD0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_1D106A964(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC6094D8, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D106A9D0(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC6094D8, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D106AA3C(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D106AAA8(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609540, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D106AB14(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609540, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D106AB80(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D106ABEC(uint64_t a1, id *a2)
{
  result = sub_1D139014C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D106AC64(uint64_t a1, id *a2)
{
  v3 = sub_1D139015C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D106ACE4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D139016C();
  v2 = sub_1D139012C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D106AD28()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t sub_1D106AD70()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t sub_1D106ADC4(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D106AE30(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D106AE9C(void *a1, uint64_t a2)
{
  v4 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D106AF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D106AFB8(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D106B024(uint64_t a1)
{
  v2 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D106B090(void *a1, uint64_t a2)
{
  v4 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D106B120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D106B19C()
{
  sub_1D139177C();
  sub_1D139007C();
  return sub_1D13917CC();
}

_DWORD *sub_1D106B1FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1D106B20C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1D106B218()
{
  sub_1D106C10C(&qword_1EC6095B8, type metadata accessor for UILayoutPriority);
  sub_1D106C10C(&qword_1EC6095C0, type metadata accessor for UILayoutPriority);
  return sub_1D139146C();
}

uint64_t sub_1D106B2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D106C10C(&qword_1EC609570, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D106B358()
{
  sub_1D106C10C(&qword_1EC609578, type metadata accessor for CIImageRepresentationOption);
  sub_1D106C10C(&qword_1EC609580, type metadata accessor for CIImageRepresentationOption);

  return sub_1D139146C();
}

uint64_t sub_1D106B414()
{
  sub_1D106C10C(&qword_1EC6092C8, type metadata accessor for TextStyle);
  sub_1D106C10C(&unk_1EC6092D0, type metadata accessor for TextStyle);

  return sub_1D139146C();
}

uint64_t sub_1D106B4D0()
{
  sub_1D106C10C(&qword_1EC60F530, type metadata accessor for Key);
  sub_1D106C10C(&qword_1EC6092E0, type metadata accessor for Key);

  return sub_1D139146C();
}

uint64_t sub_1D106B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D106C10C(&qword_1EC609510, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D106B610()
{
  sub_1D106C10C(&qword_1EC6095A8, type metadata accessor for AttributeName);
  sub_1D106C10C(&qword_1EC6095B0, type metadata accessor for AttributeName);

  return sub_1D139146C();
}

uint64_t sub_1D106B6CC()
{
  sub_1D106C10C(&qword_1EC609598, type metadata accessor for FeatureKey);
  sub_1D106C10C(&qword_1EC6095A0, type metadata accessor for FeatureKey);

  return sub_1D139146C();
}

uint64_t sub_1D106B788()
{
  sub_1D106C10C(&qword_1EC609588, type metadata accessor for ActivityType);
  sub_1D106C10C(&qword_1EC609590, type metadata accessor for ActivityType);

  return sub_1D139146C();
}

uint64_t sub_1D106B844()
{
  sub_1D106C10C(&qword_1EC6095D8, type metadata accessor for DocumentReadingOptionKey);
  sub_1D106C10C(&qword_1EC6095E0, type metadata accessor for DocumentReadingOptionKey);

  return sub_1D139146C();
}

uint64_t sub_1D106B900()
{
  sub_1D106C10C(&qword_1EC6095C8, type metadata accessor for DocumentType);
  sub_1D106C10C(&qword_1EC6095D0, type metadata accessor for DocumentType);

  return sub_1D139146C();
}

uint64_t sub_1D106B9BC()
{
  sub_1D106C10C(&qword_1EC6092F8, type metadata accessor for HKOntologyShardIdentifier);
  sub_1D106C10C(&qword_1EC609300, type metadata accessor for HKOntologyShardIdentifier);

  return sub_1D139146C();
}

uint64_t sub_1D106BA78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D139012C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D106BAC0()
{
  sub_1D106C10C(&qword_1EC6092E8, type metadata accessor for HKOntologyShardSchemaType);
  sub_1D106C10C(&qword_1EC6092F0, type metadata accessor for HKOntologyShardSchemaType);

  return sub_1D139146C();
}

uint64_t sub_1D106BBDC()
{
  v0 = sub_1D139016C();
  v1 = MEMORY[0x1D3885CA0](v0);

  return v1;
}

uint64_t sub_1D106BC18()
{
  sub_1D139016C();
  sub_1D139027C();
}

uint64_t sub_1D106BC6C()
{
  sub_1D139016C();
  sub_1D139177C();
  sub_1D139027C();
  v0 = sub_1D13917CC();

  return v0;
}

uint64_t sub_1D106BCF4()
{
  v0 = sub_1D139016C();
  v2 = v1;
  if (v0 == sub_1D139016C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D139162C();
  }

  return v5 & 1;
}

BOOL _s15HealthRecordsUI18CategoryRecordKindV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106C974();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v15 = v12;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for CategoryRecordKind() + 28);
  v17 = *(v15 + 48);
  sub_1D106A1D8(a1 + v16, v14);
  sub_1D106A1D8(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D106C9D8(v14, sub_1D106A23C);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1D106A1D8(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_1D106C9D8(v14, sub_1D106C974);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  sub_1D106C10C(&unk_1EC609370, MEMORY[0x1E6969530]);
  v20 = sub_1D139011C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D106C9D8(v14, sub_1D106A23C);
  return (v20 & 1) != 0;
}

uint64_t sub_1D106C10C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D106C17C()
{
  sub_1D106A23C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_1D106C93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1D106C974()
{
  if (!qword_1EC609368)
  {
    sub_1D106A23C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609368);
    }
  }
}

uint64_t sub_1D106C9D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D106CAA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D106CAC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1D106D430()
{
  result = qword_1EC609500;
  if (!qword_1EC609500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609500);
  }

  return result;
}

void sub_1D106D89C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id SingleValueAnnotationViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SingleValueAnnotationViewDataSource.init()()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_constraints] = MEMORY[0x1E69E7CC0];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueLabel;
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueLabel] = v2;
  v17 = 1;
  v4 = objc_allocWithZone(type metadata accessor for RecordRangeView());
  v5 = RecordRangeView.init(style:)(&v17);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_referenceRangeView] = v5;
  sub_1D106F424();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E6E0;
  v7 = *&v1[v3];
  *(v6 + 32) = v7;
  *(v6 + 40) = v5;
  v8 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D106F934(0, &qword_1EC609680);
  v9 = v7;
  v10 = v5;
  v11 = sub_1D139044C();

  v12 = [v8 initWithArrangedSubviews_];

  v13 = OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueRangeGroup;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueRangeGroup] = v12;
  [v12 setAxis_];
  [*&v1[v13] setAlignment_];
  [*&v1[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v14) = 1132068864;
  [*&v1[v13] setContentHuggingPriority:0 forAxis:v14];
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SingleValueAnnotationViewDataSource();
  return objc_msgSendSuper2(&v16, sel_init);
}

void sub_1D106DBD8(uint64_t a1)
{
  sub_1D106F49C(a1, v1);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))(a1);
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_constraints;
  sub_1D106F934(0, &qword_1EC609690);

  v5 = sub_1D139044C();

  [v3 deactivateConstraints_];

  sub_1D106F424();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E6F0;
  v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_referenceRangeView);
  v8 = [v7 widthAnchor];
  v9 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v10 intrinsicContentSize];
    v13 = v12;

    v14 = v13;
  }

  else
  {
    [v9 intrinsicContentSize];
  }

  v15 = [v8 constraintGreaterThanOrEqualToConstant_];

  *(v6 + 32) = v15;
  v16 = [v7 leadingAnchor];
  v17 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueRangeGroup);
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor_];

  *(v6 + 40) = v19;
  v20 = [v7 trailingAnchor];
  v21 = [v17 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v6 + 48) = v22;
  *(v1 + v4) = v6;

  v23 = sub_1D139044C();

  [v3 activateConstraints_];
}

void sub_1D106DF20()
{
  v1 = sub_1D106FE00();
  sub_1D1271D64(v1);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v1);
}

void sub_1D106DFC8(void *a1)
{
  v2 = [a1 valueString];
  if (v2)
  {

    v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueLabel);
    [v3 setHidden_];
    sub_1D106F934(0, &qword_1EC60E670);
    v4 = sub_1D1390C6C();
    v5 = sub_1D1390C6C();
    v7 = sub_1D106E7E8(v4, v5);

    [v3 setAttributedText_];
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource_valueLabel);

    [v6 setHidden_];
  }
}

uint64_t sub_1D106E140(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB0))(a3, a4);
  sub_1D106E248(a1, type metadata accessor for SingleValueChartData);
  (*((*v6 & *v4) + 0x118))();
}

uint64_t sub_1D106E248(unint64_t a1, void (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1D13910DC();
    sub_1D13912DC();
    v4 = sub_1D13910DC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D13912DC();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D3886B70](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

uint64_t sub_1D106E3CC(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D13912DC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3886B70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D13910DC();
    sub_1D13912DC();
  }

  return v8;
}

void sub_1D106E664(unint64_t a1)
{
  if (a1)
  {
    Array<A>.referenceRangeViewData()(a1);
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69A4488]) init];
  }

  v2 = v1;
  v3 = v1;
  sub_1D1271D64(v2);
}

uint64_t sub_1D106E6E8()
{
}

id SingleValueAnnotationViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleValueAnnotationViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D106E7E8(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 valueString];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_1D139016C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_8:
    sub_1D106F7BC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v42 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1D106F934(0, &qword_1EC60E670);
    *(inited + 40) = a1;
    v43 = v42;
    v44 = a1;
    sub_1D109B2B4(inited);
    swift_setDeallocating();
    sub_1D106F880(inited + 32);
    v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v46 = sub_1D139012C();
LABEL_9:
    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v40 = sub_1D138FFEC();

    v21 = [v45 initWithString:v46 attributes:v40];

    goto LABEL_10;
  }

  v12 = [v3 unitString];
  if (!v12)
  {
    sub_1D106F7BC();
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1D139E700;
    v49 = *MEMORY[0x1E69DB648];
    *(v48 + 32) = *MEMORY[0x1E69DB648];
    *(v48 + 64) = sub_1D106F934(0, &qword_1EC60E670);
    *(v48 + 40) = a1;
    v50 = a1;
    v51 = v49;
    sub_1D109B2B4(v48);
    swift_setDeallocating();
    sub_1D106F880(v48 + 32);
    v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v46 = sub_1D139012C();

    goto LABEL_9;
  }

  v13 = v12;
  sub_1D139016C();

  sub_1D106F7BC();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1D139E700;
  v15 = *MEMORY[0x1E69DB648];
  *(v14 + 32) = *MEMORY[0x1E69DB648];
  v53 = sub_1D106F934(0, &qword_1EC60E670);
  *(v14 + 64) = v53;
  *(v14 + 40) = a1;
  v16 = v15;
  v17 = a1;
  v52 = v16;
  sub_1D109B2B4(v14);
  swift_setDeallocating();
  sub_1D106F880(v14 + 32);
  v18 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v19 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v20 = sub_1D138FFEC();

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D139E700;
  v23 = *MEMORY[0x1E69DB660];
  *(v22 + 32) = *MEMORY[0x1E69DB660];
  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v25 = v23;
  v26 = [v24 initWithDouble_];
  *(v22 + 64) = sub_1D106F934(0, &qword_1EE06B6C0);
  *(v22 + 40) = v26;
  sub_1D109B2B4(v22);
  swift_setDeallocating();
  sub_1D106F880(v22 + 32);
  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v28 = sub_1D139012C();
  v29 = sub_1D138FFEC();

  v30 = [v27 initWithString:v28 attributes:v29];

  [v21 appendAttributedString_];
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1D139E710;
  *(v31 + 32) = v52;
  *(v31 + 40) = a2;
  v32 = *MEMORY[0x1E69DB650];
  *(v31 + 64) = v53;
  *(v31 + 72) = v32;
  v33 = objc_opt_self();
  v34 = a2;
  v35 = v32;
  v36 = [v33 secondaryLabelColor];
  *(v31 + 104) = sub_1D106F934(0, &qword_1EE06B6E0);
  *(v31 + 80) = v36;
  sub_1D109B2B4(v31);
  swift_setDeallocating();
  sub_1D106F814();
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v38 = sub_1D139012C();

  v39 = sub_1D138FFEC();

  v40 = [v37 initWithString:v38 attributes:v39];

  [v21 appendAttributedString_];
LABEL_10:

  return v21;
}

id sub_1D106EDC4(void *a1, void *a2)
{
  v4 = *(v2 + 64);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *(v2 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (*(v2 + 80))
    {
      sub_1D106F7BC();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E700;
      v7 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v8 = sub_1D106F934(0, &qword_1EC60E670);
      *(inited + 64) = v8;
      *(inited + 40) = a1;
      v9 = v7;
      v10 = a1;
      v47 = v9;
      sub_1D109B2B4(inited);
      swift_setDeallocating();
      sub_1D106F880(inited + 32);
      v11 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v12 = sub_1D139012C();
      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v13 = sub_1D138FFEC();

      v14 = [v11 initWithString:v12 attributes:v13];

      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1D139E700;
      v16 = *MEMORY[0x1E69DB660];
      *(v15 + 32) = *MEMORY[0x1E69DB660];
      v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v18 = v16;
      v19 = [v17 initWithDouble_];
      *(v15 + 64) = sub_1D106F934(0, &qword_1EE06B6C0);
      *(v15 + 40) = v19;
      sub_1D109B2B4(v15);
      swift_setDeallocating();
      sub_1D106F880(v15 + 32);
      v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v21 = sub_1D139012C();
      v22 = sub_1D138FFEC();

      v23 = [v20 initWithString:v21 attributes:v22];

      [v14 appendAttributedString_];
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1D139E710;
      *(v24 + 32) = v47;
      *(v24 + 40) = a2;
      v25 = *MEMORY[0x1E69DB650];
      *(v24 + 64) = v8;
      *(v24 + 72) = v25;
      v26 = objc_opt_self();
      v27 = a2;
      v28 = v25;
      v29 = [v26 secondaryLabelColor];
      *(v24 + 104) = sub_1D106F934(0, &qword_1EE06B6E0);
      *(v24 + 80) = v29;
      sub_1D109B2B4(v24);
      swift_setDeallocating();
      sub_1D106F814();
      swift_arrayDestroy();
      v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v31 = sub_1D139012C();
      v32 = sub_1D138FFEC();

      v33 = [v30 initWithString:v31 attributes:v32];

      [v14 appendAttributedString_];
    }

    else
    {
      sub_1D106F7BC();
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_1D139E700;
      v42 = *MEMORY[0x1E69DB648];
      *(v41 + 32) = *MEMORY[0x1E69DB648];
      *(v41 + 64) = sub_1D106F934(0, &qword_1EC60E670);
      *(v41 + 40) = a1;
      v43 = a1;
      v44 = v42;
      sub_1D109B2B4(v41);
      swift_setDeallocating();
      sub_1D106F880(v41 + 32);
      v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v46 = sub_1D139012C();
      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v33 = sub_1D138FFEC();

      v14 = [v45 initWithString:v46 attributes:v33];
    }
  }

  else
  {
LABEL_7:
    if (*(v2 + 100))
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
    }

    sub_1D106F7BC();
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_1D139E700;
    v35 = *MEMORY[0x1E69DB648];
    *(v34 + 32) = *MEMORY[0x1E69DB648];
    *(v34 + 64) = sub_1D106F934(0, &qword_1EC60E670);
    *(v34 + 40) = a1;
    v36 = v35;
    v37 = a1;
    sub_1D109B2B4(v34);
    swift_setDeallocating();
    sub_1D106F880(v34 + 32);
    v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v39 = sub_1D139012C();

    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v33 = sub_1D138FFEC();

    v14 = [v38 initWithString:v39 attributes:v33];
  }

  return v14;
}

void sub_1D106F424()
{
  if (!qword_1EE06A4C0)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4C0);
    }
  }
}

void sub_1D106F49C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel);
  v5 = HKDateFormatterFromTemplate();
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  }

  v6 = sub_1D138D4EC();
  v7 = [v5 stringFromDate_];

  if (!v7)
  {
    sub_1D139016C();
    v7 = sub_1D139012C();
  }

  [v4 setText_];

  v8 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel);
  if (*(a1 + OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_hasTime) == 1)
  {
    v9 = HKDateFormatterFromTemplate();
    if (!v9)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    }

    v10 = sub_1D138D4EC();
    v12 = [v9 stringFromDate_];

    v11 = v12;
    if (!v12)
    {
      sub_1D139016C();
      v13 = sub_1D139012C();

      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = v11;
  [v8 setText_];
}

void sub_1D106F7BC()
{
  if (!qword_1EC60F520)
  {
    sub_1D106F814();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F520);
    }
  }
}

void sub_1D106F814()
{
  if (!qword_1EC6096A0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6096A0);
    }
  }
}

uint64_t sub_1D106F880(uint64_t a1)
{
  sub_1D106F814();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D106F8DC()
{
  result = qword_1EC60F530;
  if (!qword_1EC60F530)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F530);
  }

  return result;
}

uint64_t sub_1D106F934(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D106F97C()
{
  result = qword_1EC6096B0;
  if (!qword_1EC6096B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC6096B0);
  }

  return result;
}

void Array<A>.referenceRangeViewData()(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69A4488]) init];
  Array<A>.minMaxValuesAndUnit()(a1, &v23);
  v3 = v27;
  if (v24 & 1) != 0 || (v26)
  {
    [v2 setValueString_];
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = v25;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v7 = [objc_opt_self() valueRangeWithMinValue:v5 maxValue:v6];

    sub_1D11DE8AC(1);
    if (v8)
    {
      v9 = sub_1D139012C();
    }

    else
    {
      v9 = 0;
    }

    [v2 setValueString_];

    if (!v3)
    {
LABEL_27:
      [v2 setUnitString_];
      if (a1 >> 62)
      {
        goto LABEL_28;
      }

LABEL_10:
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_29;
      }

LABEL_11:
      v21 = v3;
      v22 = v2;
      v14 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D3886B70](v14, a1);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v20 = 0;
LABEL_24:
            v3 = v21;
            v2 = v22;
            goto LABEL_30;
          }
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v15 = *(a1 + 8 * v14 + 32);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_22;
          }
        }

        if (v15[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_partOfOutOfRangeSeries] == 1)
        {
          v17 = v15;
          v18 = *&v15[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_chartableQuantitySet];
          v19 = HKChartableCodedQuantitySet.hasOutOfRangeQuantities.getter();

          if (v19)
          {
            v20 = 1;
            goto LABEL_24;
          }
        }

        else
        {
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v10 = v3;
  sub_1D136D998(v10);
  if (v11)
  {
    v12 = sub_1D139012C();
  }

  else
  {
    v12 = 0;
  }

  [v2 setUnitString_];

  if (!(a1 >> 62))
  {
    goto LABEL_10;
  }

LABEL_28:
  v13 = sub_1D13910DC();
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_29:
  v20 = 0;
LABEL_30:
  [v2 setUseOutOfRangeValueColor_];
}

uint64_t SingleValueChartData.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_date;
  v4 = sub_1D138D57C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SingleValueChartData.__allocating_init(chartableQuantitySet:date:dateFormat:hasTime:partOfOutOfRangeSeries:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  sub_1D1070AAC(a1, a2, a3, a4, a5);
  v13 = v12;

  return v13;
}

uint64_t SingleValueChartData.init(chartableQuantitySet:date:dateFormat:hasTime:partOfOutOfRangeSeries:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_1D1070AAC(a1, a2, a3, a4, a5);
  v7 = v6;

  return v7;
}

id sub_1D106FE00()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69A4488]) init];
  [v0 value];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v2 setValue_];

  v5 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_chartableQuantitySet];
  v6 = [v5 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v7 = sub_1D139045C();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_44:

    return v2;
  }

  result = sub_1D13910DC();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1D3886B70](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  if ([v1 representsRange])
  {
    v11 = [v10 quantity];
    v12 = [v11 _unit];

    [v5 minValueForUnit_];
    v14 = v13;

    v15 = [v10 quantity];
    v16 = [v15 _unit];

    [v5 maxValueForUnit_];
    v18 = v17;

    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v21 = [objc_opt_self() valueRangeWithMinValue:v19 maxValue:v20];

    sub_1D11DE8AC(1);
    if (v22)
    {
      v23 = sub_1D139012C();
    }

    else
    {
      v23 = 0;
    }

    [v2 setValueString_];

    v27 = v1[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_partOfOutOfRangeSeries] == 1 && HKChartableCodedQuantitySet.hasOutOfRangeQuantities.getter();
    [v2 setUseOutOfRangeValueColor_];
    result = [v1 unit];
    if (result)
    {
      v28 = result;
      sub_1D136D998(result);
      v30 = v29;

      if (v30)
      {
        v31 = sub_1D139012C();
      }

      else
      {
        v31 = 0;
      }

      [v2 setUnitString_];

LABEL_39:
LABEL_40:

      return v2;
    }

    goto LABEL_48;
  }

  v24 = [v10 originalCodedQuantity];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 displayString];

    if (!v26)
    {
      sub_1D139016C();
      v26 = sub_1D139012C();
    }
  }

  else
  {
    v26 = 0;
  }

  [v2 setValueString_];

  v32 = [v10 rangeLow];
  [v2 setRangeLow_];

  v33 = [v10 originalRangeLowCodedQuantity];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 displayString];

    if (!v35)
    {
      sub_1D139016C();
      v35 = sub_1D139012C();
    }
  }

  else
  {
    v35 = 0;
  }

  [v2 setRangeLowString_];

  v36 = [v10 rangeHigh];
  [v2 setRangeHigh_];

  v37 = [v10 originalRangeHighCodedQuantity];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 displayString];

    if (!v39)
    {
      sub_1D139016C();
      v39 = sub_1D139012C();
    }
  }

  else
  {
    v39 = 0;
  }

  [v2 setRangeHighString_];

  v40 = [v10 originalCodedQuantity];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 unitCoding];

    if (v42)
    {
      sub_1D136D7C8(v42);
      if (v43)
      {
        v44 = sub_1D139012C();
      }

      else
      {
        v44 = 0;
      }

      [v2 setUnitString_];

      goto LABEL_40;
    }
  }

  result = [v1 unit];
  if (result)
  {
    v45 = result;
    sub_1D136D998(result);
    v47 = v46;

    if (v47)
    {
      v31 = sub_1D139012C();
    }

    else
    {
      v31 = 0;
    }

    [v2 setUnitString_];
    goto LABEL_39;
  }

LABEL_49:
  __break(1u);
  return result;
}

id SingleValueChartData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SingleValueChartData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleValueChartData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1070594@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_date;
  v4 = sub_1D138D57C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void Array<A>.minMaxValuesAndUnit()(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v43 = sub_1D138F0BC();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= 1)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v39 = a2;
    v40 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v41 = (v4 + 8);
    v42 = v7;
    v11 = 1.79769313e308;
    v12 = -1.79769313e308;
    while (1)
    {
      if (v10)
      {
        v16 = MEMORY[0x1D3886B70](v8, a1);
      }

      else
      {
        if (v8 >= *(v44 + 16))
        {
          goto LABEL_26;
        }

        v16 = *(a1 + 8 * v8 + 32);
      }

      v4 = v16;
      a2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v9)
      {
        v9 = [v16 unit];
LABEL_5:
        v4 = v4;
        [v4 minValue];
        if (v13 < v11)
        {
          v11 = v13;
        }

        [v4 maxValue];
        v15 = v14;

        if (v12 <= v15)
        {
          v12 = v15;
        }

        goto LABEL_9;
      }

      v17 = v9;
      v18 = [v4 unit];
      if (!v18)
      {

        goto LABEL_5;
      }

      v19 = v18;
      sub_1D106F934(0, &unk_1EC6096D0);
      if (sub_1D1390D8C())
      {

        v10 = v45;
        goto LABEL_5;
      }

      sub_1D138F04C();
      v20 = sub_1D138F0AC();
      v21 = v6;
      v22 = sub_1D13907FC();
      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D101F000, v20, v22, "Cannot concatenate SingleValueChartData with different units, skipping one entry", v23, 2u);
        v24 = v23;
        a1 = v40;
        MEMORY[0x1D38882F0](v24, -1, -1);
      }

      else
      {
      }

      (*v41)(v21, v43);
      v6 = v21;
      v7 = v42;
      v10 = v45;
LABEL_9:
      ++v8;
      if (a2 == v7)
      {
        v25 = 0;
        a2 = v39;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v26 = v6;
    v27 = sub_1D13910DC();
    v28 = sub_1D13910DC();
    v7 = v28;
    if (v27 >= 2)
    {
      v6 = v26;
      if (!v28)
      {
        v25 = 0;
        v9 = 0;
        v12 = -1.79769313e308;
        v11 = 1.79769313e308;
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

LABEL_30:
  if (!v7)
  {
    v9 = 0;
    v25 = 1;
    v11 = 0.0;
    v12 = 0.0;
LABEL_44:
    *a2 = v11;
    *(a2 + 8) = v25;
    *(a2 + 16) = v12;
    *(a2 + 24) = v25;
    *(a2 + 32) = v9;
    return;
  }

  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1D3886B70](0, a1);
LABEL_34:
    v31 = v30;
    [v30 minValue];
    v11 = v32;

    if (v29)
    {
      v33 = MEMORY[0x1D3886B70](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v33 = *(a1 + 32);
    }

    v34 = v33;
    [v33 maxValue];
    v12 = v35;

    if (v29)
    {
      v36 = MEMORY[0x1D3886B70](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v36 = *(a1 + 32);
    }

    v37 = v36;
    v9 = [v36 unit];

    v25 = 0;
    goto LABEL_44;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(a1 + 32);
    goto LABEL_34;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1D1070AAC(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_chartableQuantitySet] = a1;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_date;
  v12 = sub_1D138D57C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a2, v12);
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_dateFormat] = a3;
  v5[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_hasTime] = a4;
  v5[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_partOfOutOfRangeSeries] = a5;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for SingleValueChartData();
  v14 = sel_init;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v37, sel_init);
  v17 = [v15 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v18 = sub_1D139045C();
  v19 = v18;
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_17;
  }

LABEL_3:

  v36 = a2;
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v20 = MEMORY[0x1D3886B70](0, v19);
    goto LABEL_6;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19[4];
LABEL_6:
  v21 = v20;

  v22 = [v21 quantity];

  v19 = [v22 _unit];
  v16 = v16;
  [v16 setUnit_];
  v14 = &off_1E83DF000;
  v23 = [v15 quantities];
  v24 = sub_1D139045C();
  v17 = v24;
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  if (!sub_1D13910DC())
  {
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

LABEL_8:

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v25 = MEMORY[0x1D3886B70](0, v17);
    goto LABEL_11;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v25 = *(v17 + 32);
LABEL_11:
  v26 = v25;

  [v26 doubleValue];
  v28 = v27;

  [v16 setValue_];
  [v15 minValueForUnit_];
  [v16 setMinValue_];
  [v15 maxValueForUnit_];
  [v16 setMaxValue_];
  v29 = v14;
  v30 = [v15 v14 + 3912];
  v31 = sub_1D139045C();

  if (v31 >> 62)
  {
    v32 = sub_1D13910DC();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v16 setRecordCount_];
  v33 = [v15 v29 + 3912];
  v34 = sub_1D139045C();

  if (v34 >> 62)
  {
    v35 = sub_1D13910DC();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v16 setRepresentsRange_];

  (*(v13 + 8))(v36, v12);
}

uint64_t type metadata accessor for SingleValueChartData()
{
  result = qword_1EC609740;
  if (!qword_1EC609740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1070F6C()
{
  result = sub_1D138D57C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D10710E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_containerView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  if (a3)
  {
    v8 = sub_1D139012C();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LoadingTableViewCell();
  v9 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = v9;
  sub_1D1071300();

  return v10;
}

id sub_1D1071220(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_containerView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LoadingTableViewCell();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1D1071300();
  }

  return v6;
}

void sub_1D1071300()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_containerView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  [v4 setHidesWhenStopped_];
  [v4 startAnimating];
  v5 = [v1 contentView];
  v6 = [v5 heightAnchor];

  v7 = [v6 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v8) = 1132068864;
  [v7 setPriority_];
  v42 = objc_opt_self();
  sub_1D106F424();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E7C0;
  *(v9 + 32) = v7;
  v41 = v7;
  v10 = [v2 centerXAnchor];
  v11 = [v1 contentView];
  v12 = [v11 &selRef_defaultWorkspace + 2];

  v13 = [v10 constraintEqualToAnchor_];
  *(v9 + 40) = v13;
  v14 = [v2 centerYAnchor];
  v15 = [v1 contentView];
  v16 = [v15 centerYAnchor];

  v17 = [v14 &selRef:v16 dateWithTimeIntervalSinceNow:? + 5];
  *(v9 + 48) = v17;
  v18 = [v2 leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v20 multiplier:1.0];
  *(v9 + 56) = v21;
  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v25 multiplier:1.0];
  *(v9 + 64) = v26;
  v27 = [v2 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
  *(v9 + 72) = v30;
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v2 bottomAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v33 multiplier:1.0];

  *(v9 + 80) = v34;
  v35 = [v4 centerXAnchor];
  v36 = [v2 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v9 + 88) = v37;
  v38 = [v4 centerYAnchor];
  v39 = [v2 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v9 + 96) = v40;
  sub_1D1071940();
  v43 = sub_1D139044C();

  [v42 activateConstraints_];
}

id sub_1D107189C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1071940()
{
  result = qword_1EC609690;
  if (!qword_1EC609690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609690);
  }

  return result;
}

uint64_t sub_1D1071AA8()
{
  MEMORY[0x1D3888420](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1071AE0()
{
  v1 = v0;
  sub_1D139179C();
  v2 = *(v0 + 8);
  if (v2)
  {
    sub_1D139179C();
    v3 = v2;
    sub_1D1390D9C();

    v4 = *(v1 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D139179C();
    v6 = *(v1 + 24);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1D139179C();
    return sub_1D139179C();
  }

  sub_1D139179C();
  v4 = *(v0 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D139179C();
  v5 = v4;
  sub_1D1390D9C();

  v6 = *(v1 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D139179C();
  v7 = v6;
  sub_1D1390D9C();

  return sub_1D139179C();
}

uint64_t sub_1D1071BDC()
{
  sub_1D139177C();
  sub_1D1071AE0();
  return sub_1D13917CC();
}

uint64_t sub_1D1071C20()
{
  sub_1D139177C();
  sub_1D1071AE0();
  return sub_1D13917CC();
}

uint64_t sub_1D1071C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1D107D3A0(v5, v7) & 1;
}

uint64_t sub_1D1071CA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D1071D14()
{
  v1 = (v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D1071D6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1D1071E2C(void *a1)
{
  v2 = v1;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR___HRMedicalRecordTimelineViewController_account;
  v9 = *(v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account);
  *(v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account) = a1;
  v10 = a1;

  sub_1D106F934(0, &qword_1EE06B760);
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1D138FF5C();
  (*(v5 + 8))(v7, v4);
  if (a1)
  {
    sub_1D1072508();

    v13 = *(v2 + v8);
    v11 = v13;
    sub_1D138F6BC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D1071FC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = v2;
  v21 = *(a1 + 24);
  v3 = v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState;
  v5 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 8);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 16);
  v6 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 24);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 32) = *(a1 + 32);
  sub_1D1080AD4(&v23, v16, &qword_1EC6099C0, &qword_1EC609988, 0x1E696C020, sub_1D1080A7C);
  sub_1D1080AD4(&v22, v16, &qword_1EC6099C8, &qword_1EC609980, 0x1E696C010, sub_1D1080A7C);
  sub_1D1080AD4(&v21, v16, &qword_1EC6099D0, &qword_1EE06B730, off_1E83DAD18, sub_1D1080A7C);

  sub_1D1072508();

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v16[0] = *v3;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  sub_1D138F6BC();
  sub_1D1080B48(&v23, &qword_1EC6099C0, &qword_1EC609988, 0x1E696C020, sub_1D1080A7C);
  sub_1D1080B48(&v22, &qword_1EC6099C8, &qword_1EC609980, 0x1E696C010, sub_1D1080A7C);
  sub_1D1080B48(&v21, &qword_1EC6099D0, &qword_1EE06B730, off_1E83DAD18, sub_1D1080A7C);
}

id sub_1D10721C8()
{
  v1 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView;
  v2 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for ContentStatusView());
    v6 = ContentStatusView.init(title:subtitle:)(0, 0, 0, 0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D1072294(uint64_t *a1, SEL *a2, Class *a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = [*(v4 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile) *a2];
    v11 = [objc_allocWithZone(*a3) *a4];

    v12 = *(v4 + v5);
    *(v4 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

uint64_t sub_1D1072338()
{
  v1 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider;
  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider))
  {
    v2 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider);
  }

  else
  {
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v3 = [*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile) healthStore];
    v4 = [v3 profileIdentifier];

    MEMORY[0x1EEE9AC00](v5);
    sub_1D138D96C();
    type metadata accessor for AccountStateProvider();
    sub_1D107F580(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

    sub_1D138ED0C();

    v2 = v7;
    *(v0 + v1) = v7;
  }

  return v2;
}

void *sub_1D1072508()
{
  v1 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider;
  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider))
  {
    v2 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider);
  }

  else
  {
    v2 = sub_1D1072570(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1D1072570(uint64_t a1)
{
  v2 = MEMORY[0x1E69695A8];
  v3 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v37 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier) != 0;
  v7 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile);
  v26 = sub_1D107F4BC;
  v33 = v2;
  v34 = &v22 - v5;
  sub_1D1080AD4(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, &v22 - v5, &qword_1EC60D6B0, v2, v3, sub_1D107F4BC);
  v8 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept);
  v30 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider);
  v36 = v30;
  v22 = v7;
  v25 = v8;
  v35 = sub_1D1072270();
  v32 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState);
  v10 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 16);
  v23 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 8);
  v9 = v23;
  v24 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 24);
  v11 = v24;
  v31 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState + 32);
  v40 = *(a1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource);
  type metadata accessor for MedicalRecordTimelineDataSourceProvider();
  v12 = swift_allocObject();
  LOBYTE(v41) = 0;
  sub_1D1081080(0, &qword_1EE06A738);
  swift_allocObject();
  v29 = v11;
  v28 = v9;
  v27 = v10;
  v13 = sub_1D138F6EC();
  v12[5] = v13;
  v38 = OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_parentViewController;
  v39 = v13;
  swift_unknownObjectWeakInit();
  v12[8] = v22;
  *&v41 = 0;
  sub_1D1080F00();
  swift_allocObject();
  v12[2] = sub_1D138F6EC();
  sub_1D1080AD4(v6, v12 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_accountIdentifier, &qword_1EC60D6B0, v2, v3, v26);
  *&v41 = v8;
  sub_1D1080F80();
  swift_allocObject();
  v14 = v25;
  v12[3] = sub_1D138F6EC();
  *(v12 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_isRenderingForConcept) = v37;
  *&v41 = v30;
  sub_1D1081000();
  swift_allocObject();
  v15 = v36;
  v12[4] = sub_1D138F6EC();
  *(v12 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_dataProvider) = v35;
  LOBYTE(v41) = v32;
  *(&v41 + 1) = v23;
  v42 = v10;
  v43 = v24;
  v44 = v31;
  sub_1D1081080(0, &qword_1EC609A28);
  swift_allocObject();
  v16 = v28;
  v17 = v27;
  v18 = v29;
  v12[6] = sub_1D138F6EC();
  v41 = xmmword_1D139E7F0;
  sub_1D10810E0(0, &qword_1EC609A30, &qword_1EC609A38, &type metadata for MedicalRecordTimelineSystemStatusItem.SystemStatus, MEMORY[0x1E695BF98]);
  swift_allocObject();
  v19 = sub_1D138F6EC();

  sub_1D1080B48(v34, &qword_1EC60D6B0, v33, v3, sub_1D107F4BC);
  v12[7] = v19;
  swift_unknownObjectWeakAssign();
  v20 = v40;
  *(v12 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_timelineDataSource) = v40;
  v12[5] = *(v20 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_queryReturned);

  return v12;
}

uint64_t sub_1D10729E4()
{
  v1 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource);
  }

  else
  {
    sub_1D1072508();
    type metadata accessor for MedicalRecordTimelineDataSourceProvider();
    sub_1D107F580(&qword_1EC609A98, type metadata accessor for MedicalRecordTimelineDataSourceProvider);
    v2 = sub_1D138EB5C();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1D1072AC4(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1D1072B2C()
{
  v1 = (v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D1072B80(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1D1072C44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1D1072CF4(uint64_t a1)
{
  v3 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D1072DAC(uint64_t a1, uint64_t *a2)
{
  sub_1D1072E70(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v4);
  sub_1D102CC18(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D1072E18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1D1072E70(v1 + v3, a1);
}

uint64_t sub_1D1072E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D1072ED4(__int128 *a1)
{
  v3 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  sub_1D102CC18(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D1073014()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69695A8];
  v5 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1080AD4(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, v8, &qword_1EC60D6B0, v4, v5, sub_1D107F4BC);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D1080B48(v8, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    swift_storeEnumTagMultiPayload();
    v21 = sub_1D139024C();
    v22 = v13;
    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v14 = sub_1D13567F8();
    MEMORY[0x1D3885C10](v14);

    v15 = v21;
    sub_1D107F65C(v3, type metadata accessor for BrowseCategory);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1D107D12C();
    v17 = &v3[*(v16 + 48)];
    (*(v10 + 16))(v3, v12, v9);
    *v17 = 0;
    *(v17 + 1) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    v21 = sub_1D139024C();
    v22 = v18;
    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v19 = sub_1D13567F8();
    MEMORY[0x1D3885C10](v19);

    v15 = v21;
    sub_1D107F65C(v3, type metadata accessor for BrowseCategory);
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

char *MedicalRecordTimelineViewController.__allocating_init(profile:category:accountId:conceptIdentifier:userDomainConcept:highlightedRecordId:displayingRemovedRecords:preloadedRemovedRecords:predicatePerSampleType:showExportButton:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v68 = a8;
  v79 = a6;
  v67 = a5;
  v80 = a3;
  v74 = a1;
  LODWORD(v77) = a10;
  v66 = a9;
  v15 = MEMORY[0x1E69695A8];
  v16 = MEMORY[0x1E69E6720];
  v72 = MEMORY[0x1E69E6720];
  v73 = MEMORY[0x1E69695A8];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v78 = &v62 - v18;
  v81 = sub_1D138D5EC();
  v19 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v63 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v11);
  v22 = v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle;
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_observer) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account) = 0;
  v75 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable) = 0;
  v23 = v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v23 = 0;
  v23[8] = 1;
  v24 = v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v24 = 0;
  v24[8] = 1;
  v25 = v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView;
  sub_1D138E37C();
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = MEMORY[0x1E69A3658];
  *v25 = v26;
  v25[1] = v27;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile) = a1;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_category) = a2;
  v71 = sub_1D107F4BC;
  v28 = v80;
  sub_1D1080AD4(v80, v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, &qword_1EC60D6B0, v15, v16, sub_1D107F4BC);
  v29 = a4;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier) = a4;
  v30 = v67;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept) = v67;
  v31 = v66;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType) = v66;
  v32 = v68;
  LOBYTE(v15) = v68 != 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords) = v68 != 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton) = v77;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive) = 0;
  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords) = v32;
  v64 = v19;
  v33 = *(v19 + 48);
  v69 = v19 + 48;
  v70 = v33;
  v34 = v33(v28, 1, v81) != 1;
  v35 = *&v75[v21];
  v36 = v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState;
  *v36 = v34;
  *(v36 + 1) = v29;
  *(v36 + 2) = v35;
  *(v36 + 3) = a2;
  v36[32] = v15;
  v37 = objc_opt_self();
  v38 = v35;
  v39 = a2;
  v65 = v29;
  v75 = v39;
  v40 = v74;
  v74 = v30;

  v41 = [v37 clearColor];
  v84 = sub_1D138E90C();
  v85 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v83);
  sub_1D138E8FC();
  sub_1D102CC18(&v83, v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider);
  v77 = v40;
  v42 = [v40 healthStore];
  v43 = v80;
  v44 = sub_1D107D9D8(v42, a2, v29, v30, v31, v80, v32);

  *(v21 + OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource) = v44;
  v45 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v82.receiver = v21;
  v82.super_class = v76;
  v46 = objc_msgSendSuper2(&v82, sel_initWithCollectionViewLayout_, v45);

  v47 = v46;
  sub_1D1072338();

  sub_1D138F6CC();
  v48 = v81;

  v49 = BYTE8(v83);
  v50 = &v47[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v50 = v83;
  v50[8] = v49;

  sub_1D138F6CC();
  v51 = v78;

  v52 = v83;
  v53 = BYTE8(v83);
  if (v83 <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v83;
  }

  if (!BYTE8(v83))
  {
    v52 = v54;
  }

  v55 = &v47[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v55 = v52;
  v55[8] = v53;
  sub_1D1080AD4(v43, v51, &qword_1EC60D6B0, v73, v72, v71);
  if (v70(v51, 1, v48) != 1)
  {
    v57 = v64;
    v58 = v63;
    (*(v64 + 32))(v63, v51, v48);
    sub_1D107B54C(v58);
    (*(v57 + 8))(v58, v48);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_1D107A01C();
    v56 = v75;
    goto LABEL_11;
  }

  sub_1D1080B48(v51, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1D107AEBC();

  v56 = v65;
LABEL_11:

  v59 = MEMORY[0x1E69695A8];
  v60 = MEMORY[0x1E69E6720];
  sub_1D1080B48(v79, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  sub_1D1080B48(v43, &qword_1EC60D6B0, v59, v60, sub_1D107F4BC);

  return v47;
}

char *MedicalRecordTimelineViewController.init(profile:category:accountId:conceptIdentifier:userDomainConcept:highlightedRecordId:displayingRemovedRecords:preloadedRemovedRecords:predicatePerSampleType:showExportButton:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10)
{
  v11 = sub_1D107E9F4(a1, a2, a3, a4, a5, a6, a8, a9, a10);

  return v11;
}

_BYTE *MedicalRecordTimelineViewController.__allocating_init(profile:)(void *a1)
{
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  v9 = sub_1D138D5EC();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v5, 1, 1, v9);
  v11 = *(v1 + 968);
  v12 = a1;
  v13 = v11(v12, 0);
  v13[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 1;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemBlueColor];
  v17 = [v16 colorWithAlphaComponent_];

  v22 = sub_1D138E90C();
  v23 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v21);
  sub_1D138E8FC();

  v18 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v15[v18]);
  sub_1D102CC18(&v21, &v15[v18]);
  swift_endAccess();

  return v15;
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(profile:category:predicatePerSampleType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = sub_1D138D5EC();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  v16 = 0;
  return (*(v3 + 968))(a1, a2, v12, 0, 0, v10, 0, 0, a3, v16);
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(profile:accountId:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();
  v11 = sub_1D138D5EC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a2, v11);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v13(v6, 1, 1, v11);
  v16 = 1;
  v14 = (*(ObjectType + 968))(v18, 0, v9, 0, 0, v6, 0, 0, 0, v16);
  (*(v12 + 8))(a2, v11);
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t MedicalRecordTimelineViewController.init(profile:accountId:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  ObjectType = swift_getObjectType();
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a2, v10);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v12(v6, 1, 1, v10);
  v15 = 1;
  v13 = (*(ObjectType + 968))(v17, 0, v8, 0, 0, v6, 0, 0, 0, v15);
  (*(v11 + 8))(a2, v10);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(profile:conceptIdentifier:category:highlightedRecordId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69695A8];
  v10 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = sub_1D138D5EC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D1080AD4(a4, v14, &qword_1EC60D6B0, v9, v10, sub_1D107F4BC);
  v20 = 0;
  v18 = (*(v4 + 968))(a1, a3, v16, a2, 0, v14, 0, 0, 0, v20);
  sub_1D1080B48(a4, &qword_1EC60D6B0, v9, v10, sub_1D107F4BC);
  return v18;
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(profile:userDomainConcept:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = sub_1D138D5EC();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  v16 = 0;
  return (*(v3 + 968))(a1, a3, v12, 0, a2, v10, 0, 0, 0, v16);
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(profile:preloadedRemovedRecords:)(uint64_t a1, uint64_t a2)
{
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = sub_1D138D5EC();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v8, 1, 1, v11);
  v14 = 0;
  return (*(v2 + 968))(a1, 0, v10, 0, 0, v8, 1, a2, 0, v14);
}

uint64_t MedicalRecordTimelineViewController.__allocating_init(forRemovedRecordWithProfile:category:)(uint64_t a1, uint64_t a2)
{
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = sub_1D138D5EC();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v8, 1, 1, v11);
  v14 = 0;
  return (*(v2 + 968))(a1, a2, v10, 0, 0, v8, 1, 0, 0, v14);
}

id MedicalRecordTimelineViewController.__deallocating_deinit()
{
  sub_1D1077EF4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1074F80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v55 - v4;
  v5 = sub_1D138DEBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR___HRMedicalRecordTimelineViewController_account];
  if (v9)
  {
    v10 = v9;
    sub_1D1072508();

    v58 = v9;
    v11 = v10;
    sub_1D138F6BC();
  }

  v12 = type metadata accessor for MedicalRecordTimelineViewController();
  v59.receiver = v0;
  v59.super_class = v12;
  v57 = v12;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  sub_1D10729E4();
  sub_1D138E86C();
  v13 = sub_1D138E1CC();

  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v15 = result;
  [result setCollectionViewLayout:v13 animated:0];

  sub_1D116C1B8();
  result = [v1 collectionView];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = result;
  v17 = ObjectType;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = result;
  [result setAlwaysBounceVertical_];

  v19 = [v1 navigationItem];
  [v19 _setSupportsTwoLineLargeTitles_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v20 = result;
  sub_1D139093C();
  v21 = sub_1D138DEAC();
  (*(v6 + 8))(v8, v5);
  [v20 setBackgroundColor_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v22 = result;
  [result setSelfSizingInvalidation_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v23 = result;
  type metadata accessor for DataSourceObserver();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v25 = sub_1D138E1AC();
  [v25 registerObserver_];

  *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = v24;

  if (*&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept])
  {
LABEL_10:
    [v1 setTitle_];
    goto LABEL_19;
  }

  v26 = *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept];
  if (v26)
  {
    v27 = v26;
    v28 = [v27 localizedPreferredName];
    if (v28)
    {
      v29 = v28;
      sub_1D139016C();
    }

    else
    {
    }

    v30 = sub_1D139012C();

    [v1 setTitle_];
    goto LABEL_18;
  }

  if (*&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier])
  {
    v30 = [v1 navigationItem];
    [v30 setLargeTitleDisplayMode_];
LABEL_18:

    goto LABEL_19;
  }

  v45 = *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords];
  if (v45)
  {
    if (v45 >> 62)
    {
      if (sub_1D13910DC() > 0)
      {
        goto LABEL_35;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
LABEL_35:
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v46 = sub_1D139012C();

      [v1 setTitle_];

      goto LABEL_19;
    }
  }

  if (v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] == 1)
  {
    goto LABEL_35;
  }

  v47 = *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_category];
  if (v47)
  {
    v48 = v47;
    v49 = [v48 displayName];
    if (!v49)
    {
      sub_1D139016C();
      v49 = sub_1D139012C();
    }

    [v1 setTitle_];
  }

  else
  {
    v50 = MEMORY[0x1E69695A8];
    v51 = MEMORY[0x1E69E6720];
    v52 = v56;
    sub_1D1080AD4(&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId], v56, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v53 = sub_1D138D5EC();
    v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
    sub_1D1080B48(v52, &qword_1EC60D6B0, v50, v51, sub_1D107F4BC);
    if (v54 != 1)
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  v31 = &v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  swift_beginAccess();
  if (*(v31 + 1))
  {

    v32 = sub_1D139012C();

    [v1 setTitle_];
  }

  v33 = [v1 title];
  v34 = v17;
  if (!v33)
  {
    if (sub_1D107F3EC())
    {
      goto LABEL_25;
    }

    v35 = [v1 navigationItem];
    [v35 setLargeTitleDisplayMode_];

    v36 = [v1 navigationItem];
    [v36 _setManualScrollEdgeAppearanceEnabled_];

    v37 = [v1 navigationItem];
    [v37 _setAutoScrollEdgeTransitionDistance_];

    v38 = [v1 navigationItem];
    [v38 _setManualScrollEdgeAppearanceEnabled_];
    v33 = v38;
  }

LABEL_25:
  sub_1D1079910();
  sub_1D10775AC();
  sub_1D10790F4(0);
  if (v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] == 1)
  {
    sub_1D107F580(&qword_1EC609888, type metadata accessor for MedicalRecordTimelineViewController);
    sub_1D138E8DC();
    result = [v1 collectionView];
    if (result)
    {
      v39 = result;
      v40 = [objc_opt_self() clearColor];
      [v39 setBackgroundColor_];

      goto LABEL_28;
    }

LABEL_52:
    __break(1u);
    return result;
  }

LABEL_28:
  v41 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D88 != -1)
  {
    swift_once();
  }

  [v41 addObserver:v1 selector:? name:? object:?];

  sub_1D107F4BC(0, &qword_1EC60D0C0, sub_1D107F520, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D139E700;
  v43 = sub_1D138FF6C();
  v44 = sub_1D107F580(&qword_1EC609880, MEMORY[0x1E69A4080]);
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  *(swift_allocObject() + 16) = v34;
  sub_1D139099C();

  swift_unknownObjectRelease();
}

void sub_1D1075A64(void *a1)
{
  v2 = [a1 traitCollection];
  sub_1D1390AEC();

  sub_1D1390C2C();
  sub_1D10729E4();
  sub_1D138E85C();

  v3 = [a1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D1075B90(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  objc_msgSendSuper2(&v9, sel_viewIsAppearing_, a1 & 1);
  v4 = [v2 traitCollection];
  sub_1D1390AEC();

  result = sub_1D1390C2C();
  if (*(v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom) == 1)
  {
    v6 = OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider;
    swift_beginAccess();
    sub_1D1072E70(v2 + v6, v8);
    __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
    v7 = [v2 traitCollection];
    sub_1D138E48C();

    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return result;
}

uint64_t sub_1D1075E7C()
{
  v1 = v0;
  v17 = MEMORY[0x1E69E8050];
  v16 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  sub_1D1080870();
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_1D1072338() + 24);

  v20 = v9;
  sub_1D106F934(0, &qword_1EE06B760);
  v10 = sub_1D1390A7C();
  v19 = v10;
  v11 = sub_1D1390A2C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1D10810E0(0, &qword_1EE06A760, &qword_1EE06B5D0, &type metadata for AccountStateChange, MEMORY[0x1E695BF70]);
  sub_1D108096C();
  sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  sub_1D1080B48(v4, &qword_1EE06A620, v17, v16, sub_1D107F4BC);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D107F580(&qword_1EC6099B8, sub_1D1080870);
  v12 = v18;
  v13 = sub_1D138F90C();

  (*(v6 + 8))(v8, v12);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable) = v13;
}

void sub_1D10761C4(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v1;
      MedicalRecordTimelineViewController.accountStateDidChange(account:changeType:)(v3, v2);
      sub_1D1080A3C(v1, v3);
    }
  }
}

void MedicalRecordTimelineViewController.accountStateDidChange(account:changeType:)(void *a1, void *a2)
{
  v3 = v2;
  v160 = a2;
  v165 = v3;
  ObjectType = swift_getObjectType();
  sub_1D107F5C8();
  v161 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v154 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v156 = &v148 - v8;
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v151 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v155 = &v148 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v150 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v148 - v16;
  v17 = sub_1D138D5EC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D138F0BC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v149 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = &v148 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v148 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v148 - v29;
  sub_1D138F06C();
  v31 = a1;
  v32 = sub_1D138F0AC();
  v33 = sub_1D13907EC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = &selRef_deselectRowAtIndexPath_animated_;
  v163 = v21;
  v164 = v22;
  v162 = v17;
  v158 = v20;
  if (v34)
  {
    v36 = v17;
    v37 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v166[0] = v157;
    *v37 = 136446722;
    v38 = sub_1D139184C();
    v40 = sub_1D11DF718(v38, v39, v166);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    v41 = [v31 identifier];
    sub_1D138D5CC();

    sub_1D107F580(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v42 = sub_1D13915CC();
    v44 = v43;
    (*(v18 + 8))(v20, v36);
    v45 = sub_1D11DF718(v42, v44, v166);

    *(v37 + 14) = v45;
    *(v37 + 22) = 2082;
    v46 = v160;
    v47 = NSStringFromAccountStateChangeType();
    v48 = sub_1D139016C();
    v50 = v49;

    v51 = v48;
    v21 = v163;
    v52 = sub_1D11DF718(v51, v50, v166);

    *(v37 + 24) = v52;
    v35 = &selRef_deselectRowAtIndexPath_animated_;
    _os_log_impl(&dword_1D101F000, v32, v33, "%{public}s got notified that account %{public}s was changed with type %{public}s", v37, 0x20u);
    v53 = v157;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v53, -1, -1);
    MEMORY[0x1D38882F0](v37, -1, -1);

    v157 = *(v164 + 8);
    v157(v30, v21);
  }

  else
  {

    v157 = *(v22 + 8);
    v157(v30, v21);
    v46 = v160;
  }

  v54 = OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId;
  v55 = v35[171];
  v160 = v31;
  v56 = [v31 v55];
  v57 = (v18 + 56);
  v58 = (v18 + 48);
  v59 = v18;
  if (v46 != 3)
  {
    v156 = v18;
    v72 = v155;
    sub_1D138D5CC();

    v73 = v162;
    (*v57)(v72, 0, 1, v162);
    v74 = *(v161 + 48);
    v75 = MEMORY[0x1E69695A8];
    v76 = MEMORY[0x1E69E6720];
    v77 = v165 + v54;
    v78 = v154;
    sub_1D1080AD4(v77, v154, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    sub_1D1080AD4(v72, v78 + v74, &qword_1EC60D6B0, v75, v76, sub_1D107F4BC);
    v79 = *v58;
    if ((*v58)(v78, 1, v73) == 1)
    {
      sub_1D1080B48(v72, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      if (v79(v78 + v74, 1, v73) == 1)
      {
        sub_1D1080B48(v78, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
LABEL_24:
        v128 = v149;
        sub_1D138F06C();
        v129 = v160;
        v130 = sub_1D138F0AC();
        v131 = sub_1D13907DC();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = v128;
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v166[0] = v134;
          *v133 = 136446466;
          v135 = sub_1D139184C();
          v137 = sub_1D11DF718(v135, v136, v166);

          *(v133 + 4) = v137;
          *(v133 + 12) = 2082;
          v138 = [v129 identifier];
          v139 = v158;
          sub_1D138D5CC();

          sub_1D107F580(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
          v140 = v162;
          v141 = sub_1D13915CC();
          v143 = v142;
          (*(v156 + 8))(v139, v140);
          v144 = sub_1D11DF718(v141, v143, v166);

          *(v133 + 14) = v144;
          _os_log_impl(&dword_1D101F000, v130, v131, "%{public}s account %{public}s was changed, reloading account details", v133, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v134, -1, -1);
          MEMORY[0x1D38882F0](v133, -1, -1);

          v145 = v163;
          v146 = v132;
        }

        else
        {

          v146 = v128;
          v145 = v21;
        }

        v157(v146, v145);
        v147 = v129;
        sub_1D1071E2C(v129);
        return;
      }
    }

    else
    {
      v99 = v151;
      sub_1D1080AD4(v78, v151, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      if (v79(v78 + v74, 1, v73) != 1)
      {
        v121 = v156;
        v122 = v158;
        (*(v156 + 32))(v158, v78 + v74, v73);
        sub_1D107F580(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
        v123 = v99;
        v124 = sub_1D139011C();
        v125 = *(v121 + 8);
        v125(v122, v73);
        v126 = MEMORY[0x1E69695A8];
        v127 = MEMORY[0x1E69E6720];
        sub_1D1080B48(v155, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
        v125(v123, v73);
        sub_1D1080B48(v78, &qword_1EC60D6B0, v126, v127, sub_1D107F4BC);
        if ((v124 & 1) == 0)
        {
          return;
        }

        goto LABEL_24;
      }

      sub_1D1080B48(v72, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      (*(v156 + 8))(v99, v73);
    }

    sub_1D107F65C(v78, sub_1D107F5C8);
    return;
  }

  v60 = v153;
  sub_1D138D5CC();

  v61 = v162;
  (*v57)(v60, 0, 1, v162);
  v62 = *(v161 + 48);
  v63 = MEMORY[0x1E69695A8];
  v64 = MEMORY[0x1E69E6720];
  v65 = v165 + v54;
  v66 = v156;
  sub_1D1080AD4(v65, v156, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  v67 = v63;
  v68 = v61;
  sub_1D1080AD4(v60, v66 + v62, &qword_1EC60D6B0, v67, v64, sub_1D107F4BC);
  v69 = *v58;
  if ((*v58)(v66, 1, v61) == 1)
  {
    sub_1D1080B48(v60, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v70 = v69(v66 + v62, 1, v61);
    v71 = v160;
    if (v70 == 1)
    {
      sub_1D1080B48(v66, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
LABEL_21:
      v103 = v148;
      sub_1D138F06C();
      v104 = v71;
      v105 = sub_1D138F0AC();
      v106 = sub_1D13907DC();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = v68;
        v108 = swift_slowAlloc();
        v109 = v103;
        v110 = swift_slowAlloc();
        v166[0] = v110;
        *v108 = 136446466;
        v111 = sub_1D139184C();
        v113 = sub_1D11DF718(v111, v112, v166);

        *(v108 + 4) = v113;
        *(v108 + 12) = 2082;
        v114 = [v104 identifier];
        v115 = v158;
        sub_1D138D5CC();

        sub_1D107F580(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
        v116 = sub_1D13915CC();
        v118 = v117;
        (*(v59 + 8))(v115, v107);
        v119 = sub_1D11DF718(v116, v118, v166);

        *(v108 + 14) = v119;
        _os_log_impl(&dword_1D101F000, v105, v106, "%{public}s account %{public}s was deleted, popping timeline view controller for the account", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v110, -1, -1);
        MEMORY[0x1D38882F0](v108, -1, -1);

        v120 = v109;
      }

      else
      {

        v120 = v103;
      }

      v157(v120, v163);
      sub_1D107BF4C();
      sub_1D1072508();

      v166[0] = 0;
      sub_1D138F6BC();

      sub_1D10DD700();
      return;
    }
  }

  else
  {
    v80 = v150;
    sub_1D1080AD4(v66, v150, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v81 = v69(v66 + v62, 1, v68);
    v82 = v158;
    if (v81 != 1)
    {
      (*(v59 + 32))(v158, v66 + v62, v68);
      sub_1D107F580(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
      LODWORD(v161) = sub_1D139011C();
      v100 = *(v59 + 8);
      v100(v82, v68);
      v101 = MEMORY[0x1E69695A8];
      v102 = MEMORY[0x1E69E6720];
      sub_1D1080B48(v60, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      v100(v80, v68);
      sub_1D1080B48(v156, &qword_1EC60D6B0, v101, v102, sub_1D107F4BC);
      v71 = v160;
      if (v161)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_1D1080B48(v60, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    (*(v59 + 8))(v80, v68);
    v71 = v160;
  }

  sub_1D107F65C(v66, sub_1D107F5C8);
LABEL_14:
  v83 = v152;
  sub_1D138F06C();
  v84 = v71;
  v85 = sub_1D138F0AC();
  v86 = sub_1D13907DC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = v68;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v166[0] = v89;
    *v88 = 136446466;
    v90 = sub_1D139184C();
    v92 = sub_1D11DF718(v90, v91, v166);

    *(v88 + 4) = v92;
    *(v88 + 12) = 2082;
    v93 = [v84 identifier];
    v94 = v158;
    sub_1D138D5CC();

    sub_1D107F580(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v95 = sub_1D13915CC();
    v97 = v96;
    (*(v59 + 8))(v94, v87);
    v98 = sub_1D11DF718(v95, v97, v166);

    *(v88 + 14) = v98;
    _os_log_impl(&dword_1D101F000, v85, v86, "%{public}s account %{public}s was deleted, reloading data", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v89, -1, -1);
    MEMORY[0x1D38882F0](v88, -1, -1);
  }

  v157(v83, v163);
  sub_1D10DD700();
}

uint64_t sub_1D10775AC()
{
  v1 = v0;
  sub_1D108116C();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1081304();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E8050];
  v51 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  sub_1D1081470();
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1075E7C();
  v15 = [*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile) healthStore];
  v16 = [objc_allocWithZone(MEMORY[0x1E696BFE8]) initWithHealthStore:v15 delegate:v1];

  v17 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver) = v16;

  v18 = sub_1D1072508()[5];

  v53 = v18;
  sub_1D106F934(0, &qword_1EE06B760);
  v19 = sub_1D1390A7C();
  v52 = v19;
  v49 = sub_1D1390A2C();
  v20 = *(v49 - 8);
  v48 = *(v20 + 56);
  v50 = v20 + 56;
  v48(v10, 1, 1, v49);
  sub_1D1081080(0, &qword_1EE06A738);
  sub_1D1081550();
  v47 = sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  v46 = sub_1D107F4BC;
  v21 = v44;
  sub_1D1080B48(v10, &qword_1EE06A620, v44, v51, sub_1D107F4BC);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = MEMORY[0x1E695BE98];
  sub_1D107F580(&qword_1EC609A78, sub_1D1081470);
  v22 = v36;
  v23 = sub_1D138F90C();

  (*(v37 + 8))(v14, v22);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable) = v23;

  v24 = *(sub_1D1072338() + 32);

  v53 = v24;
  v25 = sub_1D1390A7C();
  v52 = v25;
  v48(v10, 1, 1, v49);
  sub_1D1081288(0, &qword_1EE06A730, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState);
  sub_1D1081420(&qword_1EC609A60, &qword_1EE06A730, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState);
  v26 = v38;
  sub_1D138F8BC();
  v27 = v21;
  v28 = v51;
  sub_1D1080B48(v10, &qword_1EE06A620, v27, v51, v46);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D107F580(&qword_1EC609A80, sub_1D1081304);
  v29 = v39;
  v30 = sub_1D138F90C();

  (*(v40 + 8))(v26, v29);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable) = v30;

  v53 = *(*(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider) + 40);

  v31 = sub_1D1390A7C();
  v52 = v31;
  v48(v10, 1, 1, v49);
  sub_1D1081288(0, &unk_1EE06A720, &qword_1EE06A5C8, type metadata accessor for HKConceptIndexManagerState);
  sub_1D1081420(&qword_1EC609A50, &unk_1EE06A720, &qword_1EE06A5C8, type metadata accessor for HKConceptIndexManagerState);
  v32 = v41;
  sub_1D138F8BC();
  sub_1D1080B48(v10, &qword_1EE06A620, v44, v28, v46);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D107F580(&qword_1EC609A88, sub_1D108116C);
  v33 = v42;
  v34 = sub_1D138F90C();

  (*(v43 + 8))(v32, v33);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable) = v34;
}

void sub_1D1077DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D10790F4(0);
  }
}

void sub_1D1077DFC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + *a3;
    v9 = *v8;
    v10 = *(v8 + 8);
    *v8 = v4;
    *(v8 + 8) = v5;
    if (v5)
    {
      if (v10)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      if (v4 != v9)
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1D10790F4(0);
    if ((*(v8 + 8) & 1) == 0 && *v8 == 1)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v7 selector:sel_reloadData object:0];
      [v7 performSelector:sel_reloadData withObject:0 afterDelay:1.25];
    }

    goto LABEL_11;
  }
}

void sub_1D1077EF4()
{
  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable))
  {

    sub_1D138F64C();
  }

  v1 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver);
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver) = 0;

  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable))
  {

    sub_1D138F64C();
  }

  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable))
  {

    sub_1D138F64C();
  }

  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable))
  {

    sub_1D138F64C();
  }
}

BOOL sub_1D1077FD0()
{
  sub_1D1072508();

  sub_1D138F6CC();

  if (v2 != 1 || (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive) & 1) != 0 || (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState + 8) & 1) == 0 && *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState) == 3)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState + 8))
  {
    return 0;
  }

  return *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState) == 2;
}

uint64_t sub_1D10780EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1D138F0BC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = sub_1D13905AC();
  v5[10] = sub_1D139059C();
  v8 = sub_1D139055C();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D10781E4, v8, v7);
}

uint64_t sub_1D10781E4()
{
  *(v0 + 104) = sub_1D139059C();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D10782A8;

  return sub_1D10EBD50();
}

uint64_t sub_1D10782A8()
{
  *(*v1 + 120) = v0;

  v3 = sub_1D139055C();
  if (v0)
  {
    v4 = sub_1D10784D0;
  }

  else
  {
    v4 = sub_1D1078404;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D1078404()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1078468, v1, v2);
}

uint64_t sub_1D1078468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10784D0()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1078534, v1, v2);
}

uint64_t sub_1D1078534()
{
  v25 = v0;
  v1 = *(v0 + 120);

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 56);
    v23 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v0 + 16) = v8;
    swift_getMetatypeMetadata();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 24) = v5;
    v14 = v5;
    sub_1D1080EA4(0, &qword_1EE06B690);
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s: failed to fetch more data: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D107877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  sub_1D1080AD4(a3, v26 - v12, &qword_1EE06A650, v9, v10, sub_1D107F4BC);
  v14 = sub_1D13905DC();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1D1080B48(v13, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);
  }

  else
  {
    sub_1D13905CC();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D139055C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D139021C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1D1080B48(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1080B48(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D1078B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  sub_1D1080AD4(a3, v26 - v12, &qword_1EE06A650, v9, v10, sub_1D107F4BC);
  v14 = sub_1D13905DC();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1D1080B48(v13, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);
  }

  else
  {
    sub_1D13905CC();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D139055C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_1D139021C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1D10817A4(0, &qword_1EC609990, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1D1080B48(v26[0], &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1080B48(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D107F4BC);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_1D10817A4(0, &qword_1EC609990, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_1D10790F4(char a1)
{
  v2 = v1;
  swift_getObjectType();
  [swift_getObjCClassFromMetadata() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_updateSystemStatusView object:0];
  if ((a1 & 1) == 0)
  {
    type metadata accessor for TimelinePagingDataSource();
    sub_1D107F580(&qword_1EC609A40, type metadata accessor for TimelinePagingDataSource);
    v5 = sub_1D138E21C();
    if (sub_1D1077FD0())
    {
      if (!v5 && ((v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] & 1) != 0 || !*&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] || (v12 = *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider]) == 0 || [v12 numOfRemovedRecords] <= 0))
      {
        v13 = sub_1D10721C8();
        [*&v13[OBJC_IVAR___HRContentStatusView_spinnerView] startAnimating];
        [v13 setNeedsLayout];

        v14 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView;
        v15 = *&v2[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView];
        v16 = &v15[OBJC_IVAR___HRContentStatusView_subtitle];
        swift_beginAccess();
        *v16 = 0;
        *(v16 + 1) = 0;
        v17 = v15;

        [*&v17[OBJC_IVAR___HRContentStatusView_subtitleLabel] setText_];
        [v17 setNeedsLayout];

        result = [v2 collectionView];
        if (result)
        {
          v18 = result;
          [result setBackgroundView_];

          result = [v2 collectionView];
          if (result)
          {
            v19 = result;
            [result setScrollEnabled_];

            sub_1D1072508();

            goto LABEL_29;
          }

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      v6 = sub_1D10721C8();
      [*&v6[OBJC_IVAR___HRContentStatusView_spinnerView] stopAnimating];
      [v6 setNeedsLayout];

      result = [v2 collectionView];
      if (result)
      {
        v7 = result;
        [result setBackgroundView_];

        result = [v2 collectionView];
        if (result)
        {
          v8 = result;
          [result setScrollEnabled_];

          sub_1D1072508();

LABEL_29:
          sub_1D138F6BC();
        }

        goto LABEL_32;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v5 || (v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] & 1) == 0 && *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] && (v20 = *&v1[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider]) != 0 && [v20 numOfRemovedRecords] > 0)
    {
      v9 = sub_1D10721C8();
      [*&v9[OBJC_IVAR___HRContentStatusView_spinnerView] stopAnimating];
      [v9 setNeedsLayout];

      result = [v2 collectionView];
      if (!result)
      {
        goto LABEL_31;
      }

      v10 = result;
      [result setBackgroundView_];

      result = [v2 collectionView];
      if (!result)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v11 = result;
      [result setScrollEnabled_];
    }

    else
    {
      v21 = sub_1D10721C8();
      [*&v21[OBJC_IVAR___HRContentStatusView_spinnerView] stopAnimating];
      [v21 setNeedsLayout];

      v22 = OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView;
      v23 = *&v2[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView];
      v24 = sub_1D139012C();
      v25 = HBXLocalizedString(v24);

      v26 = sub_1D139016C();
      v28 = v27;

      v29 = &v23[OBJC_IVAR___HRContentStatusView_title];
      swift_beginAccess();
      *v29 = v26;
      v29[1] = v28;

      v30 = *&v23[OBJC_IVAR___HRContentStatusView_titleLabel];

      v31 = sub_1D139012C();

      [v30 setText_];

      [v23 setNeedsLayout];
      v32 = *&v2[v22];
      v33 = &v32[OBJC_IVAR___HRContentStatusView_subtitle];
      swift_beginAccess();
      *v33 = 0;
      *(v33 + 1) = 0;
      v34 = v32;

      [*&v34[OBJC_IVAR___HRContentStatusView_subtitleLabel] setText_];
      [v34 setNeedsLayout];

      result = [v2 collectionView];
      if (!result)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v35 = result;
      [result setBackgroundView_];

      result = [v2 collectionView];
      if (!result)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v11 = result;
      [result setScrollEnabled_];
    }

    sub_1D1072508();

    goto LABEL_29;
  }

  return [v1 performSelector:sel_updateSystemStatusView withObject:v1 afterDelay:0.25];
}

void sub_1D10797AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile];
  v3 = *&v0[OBJC_IVAR___HRMedicalRecordTimelineViewController_account];
  v4 = type metadata accessor for PDFConfigurationViewController();
  v5 = objc_allocWithZone(v4);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  objc_allocWithZone(v4);
  v6 = v3;
  v7 = v2;
  v8 = sub_1D11B6250(v7, v3, v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v9 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_1D1079910()
{
  v1 = v0;
  v23 = MEMORY[0x1E69E7CC0];
  if (*(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton) == 1)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v2 = type metadata accessor for MedicalRecordTimelineViewController();
    v22 = v2;
    v21[0] = v0;
    v3 = v0;
    v4 = sub_1D139012C();

    if (v2)
    {
      v5 = __swift_project_boxed_opaque_existential_1Tm(v21, v2);
      v6 = *(v2 - 8);
      MEMORY[0x1EEE9AC00](v5);
      v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v9 = sub_1D139161C();
      (*(v6 + 8))(v8, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v4 style:0 target:v9 action:sel_didTapExportPDFButton];

    swift_unknownObjectRelease();
    v11 = v10;
    MEMORY[0x1D3885D90]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
  }

  v12 = [objc_opt_self() sharedBehavior];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isAppleInternalInstall];

    if (v14)
    {
      v22 = type metadata accessor for MedicalRecordTimelineViewController();
      v21[0] = v1;
      v15 = v1;
      v16 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v21, sel_tapToRadarWithSender_);
      sub_1D1080B48(v21, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10817A4);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x1D3885D90]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
      }
    }

    v18 = [v1 navigationItem];
    sub_1D106F934(0, &qword_1EC609A90);
    v19 = sub_1D139044C();

    [v18 setRightBarButtonItems:v19 animated:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1079E2C(void *a1)
{
  if ([a1 object])
  {
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1D1080B48(v7, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10817A4);
LABEL_9:
    sub_1D10DD700();
    return;
  }

  type metadata accessor for MedicalRecordTimelineViewController();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1D1390D8C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1D107A01C()
{
  v1 = v0;
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v110 - v6;
  v122 = sub_1D138D5EC();
  v8 = *(v122 - 8);
  v9 = MEMORY[0x1EEE9AC00](v122);
  v113 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v110 - v11;
  v12 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_category);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  if (v12 && (v14 = [v12 additionalPredicatesForCategory]) != 0)
  {
    v15 = v14;
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B790);
    sub_1D10809F0(&qword_1EE06B778, &qword_1EE06B780);
    v127 = sub_1D138FFFC();
  }

  else
  {
    v127 = 0;
  }

  v16 = *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType);
  v125 = v13;
  v123 = v12 != 0;
  v121 = v16;
  if (!v16)
  {
LABEL_50:
    v68 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept);
    if (v68)
    {
      v69 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile);
      v70 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords);
      LODWORD(v124) = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords);
      v71 = v68;
      v72 = v69;
      sub_1D107D710(v121, v12);
      sub_1D1080AD4(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, v7, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      v73 = v122;
      if ((*(v8 + 48))(v7, 1, v122) == 1)
      {
        sub_1D1080B48(v7, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
        v126 = 0;
      }

      else
      {
        v78 = v71;
        v79 = v120;
        (*(v8 + 32))(v120, v7, v73);
        v80 = objc_opt_self();
        v81 = v72;
        v82 = sub_1D138D5AC();
        v126 = [v80 predicateForRecordsFromClinicalAccountIdentifier_];

        v72 = v81;
        v83 = v79;
        v71 = v78;
        (*(v8 + 8))(v83, v73);
      }

      sub_1D10817A4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D139E810;
      v85 = v125;
      *(v84 + 32) = v125;
      if (v70)
      {
        sub_1D106F934(0, &qword_1EE06B0E0);
        v86 = v85;
        v87 = sub_1D139044C();
      }

      else
      {
        v88 = v85;
        v87 = 0;
      }

      sub_1D106F934(0, &qword_1EE06B780);
      v89 = sub_1D139044C();

      v90 = v127;
      if (v127)
      {
        sub_1D106F934(0, &qword_1EE06B790);
        sub_1D10809F0(&qword_1EE06B778, &qword_1EE06B780);
        v90 = sub_1D138FFEC();
      }

      v91 = objc_allocWithZone(WDMedicalRecordDisplayItemProvider);
      sub_1D106F934(0, &qword_1EE06B578);
      v92 = sub_1D139044C();

      v93 = [v91 initWithProfile:v72 userDomainConcept:v71 preloadedRemovedRecords:v87 removedRecordsOnly:v124 displayItemOptions:v123 sampleTypes:v89 filter:v126 additionalPredicates:v90 sortDescriptors:v92];
    }

    else
    {
      v74 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile);
      v75 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept);
      v124 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords);
      v76 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords);
      v71 = v75;
      v72 = v74;
      sub_1D107D710(v121, v12);
      sub_1D1080AD4(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, v5, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
      v77 = v122;
      if ((*(v8 + 48))(v5, 1, v122) == 1)
      {
        sub_1D1080B48(v5, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
        v126 = 0;
      }

      else
      {
        v94 = *(v8 + 32);
        v121 = v71;
        v95 = v113;
        v94(v113, v5, v77);
        v96 = v77;
        v97 = objc_opt_self();
        v98 = v76;
        v99 = v13;
        v100 = v72;
        v101 = v8;
        v102 = sub_1D138D5AC();
        v126 = [v97 predicateForRecordsFromClinicalAccountIdentifier_];

        v103 = v95;
        v71 = v121;
        (*(v101 + 8))(v103, v96);
        v72 = v100;
        v13 = v99;
        v76 = v98;
      }

      sub_1D10817A4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_1D139E810;
      *(v104 + 32) = v13;
      v87 = v124;
      if (v124)
      {
        sub_1D106F934(0, &qword_1EE06B0E0);
        v105 = v13;
        v87 = sub_1D139044C();
      }

      else
      {
        v106 = v13;
      }

      sub_1D106F934(0, &qword_1EE06B780);
      v89 = sub_1D139044C();

      if (v127)
      {
        sub_1D106F934(0, &qword_1EE06B790);
        sub_1D10809F0(&qword_1EE06B778, &qword_1EE06B780);
        v90 = sub_1D138FFEC();
      }

      else
      {
        v90 = 0;
      }

      v107 = objc_allocWithZone(WDMedicalRecordDisplayItemProvider);
      sub_1D106F934(0, &qword_1EE06B578);
      v92 = sub_1D139044C();

      v93 = [v107 initWithProfile:v72 ontologyConcept:v71 preloadedRemovedRecords:v87 removedRecordsOnly:v76 displayItemOptions:v123 sampleTypes:v89 filter:v126 additionalPredicates:v90 sortDescriptors:v92];
    }

    v108 = v93;

    v109 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider);
    *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider) = v108;

    return;
  }

  v115 = v12;
  v116 = v7;
  v117 = v5;
  v118 = v8;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v21 = -1 << *(v16 + 32);
    v18 = ~v21;
    v17 = v16 + 64;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(v16 + 64);
    v20 = v16;
  }

  v24 = 0;
  v114 = v18;
  v25 = (v18 + 64) >> 6;
  v112 = xmmword_1D139E6E0;
  v119 = v1;
LABEL_13:
  while (2)
  {
    while (2)
    {
      v126 = (v127 & 0xC000000000000001);
      v26 = v127 & 0xFFFFFFFFFFFFFF8;
      if (v127 < 0)
      {
        v26 = v127;
      }

      v124 = v26;
      while (1)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          v33 = sub_1D139139C();
          if (!v33 || (v35 = v34, v128 = v33, sub_1D106F934(0, &qword_1EE06B780), swift_dynamicCast(), v31 = v129, v128 = v35, sub_1D106F934(0, &qword_1EE06B790), swift_dynamicCast(), v32 = v129, !v31))
          {
LABEL_49:
            sub_1D102CC30();
            v8 = v118;
            v1 = v119;
            v13 = v125;
            v7 = v116;
            v5 = v117;
            v12 = v115;
            goto LABEL_50;
          }
        }

        else
        {
          v27 = v24;
          v28 = v19;
          if (!v19)
          {
            while (1)
            {
              v24 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v24 >= v25)
              {
                goto LABEL_49;
              }

              v28 = *(v17 + 8 * v24);
              ++v27;
              if (v28)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

LABEL_23:
          v19 = (v28 - 1) & v28;
          v29 = (v24 << 9) | (8 * __clz(__rbit64(v28)));
          v30 = *(*(v20 + 56) + v29);
          v31 = *(*(v20 + 48) + v29);
          v32 = v30;
          if (!v31)
          {
            goto LABEL_49;
          }
        }

        v36 = v127;
        if (!v127)
        {

          v127 = 0;
          goto LABEL_13;
        }

        if (!v126)
        {
          break;
        }

        v37 = v31;
        v38 = sub_1D139137C();

        if (v38)
        {
          v128 = v38;
          sub_1D106F934(0, &qword_1EE06B790);
          swift_dynamicCast();
          v39 = v129;
          goto LABEL_16;
        }

LABEL_17:
      }

      if (!*(v127 + 16))
      {
        goto LABEL_17;
      }

      v40 = sub_1D129DF14(v31);
      if ((v41 & 1) == 0)
      {
        goto LABEL_17;
      }

      v39 = *(*(v36 + 56) + 8 * v40);
LABEL_16:
      if (!v39)
      {
        goto LABEL_17;
      }

      v42 = v39;
      sub_1D10817A4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v43 = swift_allocObject();
      *(v43 + 16) = v112;
      *(v43 + 32) = v32;
      *(v43 + 40) = v42;
      sub_1D106F934(0, &qword_1EE06B790);
      v44 = v32;
      v45 = v42;
      v46 = sub_1D139044C();

      v110 = [objc_opt_self() andPredicateWithSubpredicates_];

      v111 = v44;
      if (v126)
      {
        v47 = v124;
        v48 = sub_1D13910DC();
        if (__OFADD__(v48, 1))
        {
          goto LABEL_73;
        }

        v49 = v45;
        v50 = sub_1D12F54B0(v47, v48 + 1);
      }

      else
      {
        v49 = v45;
        v50 = v127;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v50;
      v52 = sub_1D129DF14(v31);
      v54 = *(v50 + 16);
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_72;
      }

      v58 = v53;
      if (*(v50 + 24) >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = v52;
          sub_1D1180B44();
          v52 = v67;
        }
      }

      else
      {
        sub_1D1179450(v57, isUniquelyReferenced_nonNull_native);
        v52 = sub_1D129DF14(v31);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_75;
        }
      }

      v61 = v110;
      v60 = v111;
      v62 = v129;
      v127 = v129;
      if (v58)
      {
        v63 = v129[7];
        v64 = *(v63 + 8 * v52);
        *(v63 + 8 * v52) = v110;

        continue;
      }

      break;
    }

    v129[(v52 >> 6) + 8] |= 1 << v52;
    *(v62[6] + 8 * v52) = v31;
    *(v62[7] + 8 * v52) = v61;

    v65 = v62[2];
    v56 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (!v56)
    {
      v62[2] = v66;
      continue;
    }

    break;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  sub_1D106F934(0, &qword_1EE06B780);
  sub_1D13916CC();
  __break(1u);
}

void sub_1D107AEBC()
{
  v1 = *&v0[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier];
  if (v1)
  {
    v7 = v1;
    if ([v7 isInMemory])
    {
      v2 = [v0 navigationController];
      if (v2)
      {
        v3 = v2;
      }
    }

    else
    {
      v4 = [*&v0[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] conceptStore];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D1081790;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1226920;
      aBlock[3] = &block_descriptor_172;
      v6 = _Block_copy(aBlock);

      [v4 fetchConceptForIdentifier:v7 loadRelationships:1 completionHandler:v6];
      _Block_release(v6);
    }
  }
}

uint64_t sub_1D107B05C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D138FECC();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138FF0C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v12 = sub_1D1390A7C();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a2;
  v13[4] = a1;
  aBlock[4] = sub_1D1081798;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_178;
  v14 = _Block_copy(aBlock);

  v15 = a2;
  v16 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D107F580(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D107F4BC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_1D107B364(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 || !a3)
    {
      v14 = [Strong navigationController];
      if (!v14)
      {
LABEL_14:

        return;
      }

      v15 = v14;
      v16 = [v14 popViewControllerAnimated_];
    }

    else
    {
      v7 = a3;
      sub_1D107D550(a3);

      sub_1D1072508();

      sub_1D138F6BC();

      sub_1D107A01C();
      v18 = *&v6[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider];
      v8 = v18;

      sub_1D138F6BC();

      v9 = *&v6[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept];
      if (v9)
      {
        v10 = v6;
        v11 = v9;
        v12 = [v11 localizedPreferredName];
        if (v12)
        {
          v13 = v12;
          sub_1D139016C();
        }

        else
        {
        }

        v16 = sub_1D139012C();
      }

      else
      {
        v17 = v6;
        v16 = 0;
      }

      [v6 setTitle_];
      v15 = v6;
    }

    goto LABEL_14;
  }
}

void sub_1D107B54C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1D107224C();
  v7 = sub_1D138D5AC();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1D108164C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_162;
  v11 = _Block_copy(aBlock);

  [v6 fetchAccountWithIdentifier:v7 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D107B75C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a5;
  v30 = sub_1D138FECC();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138FF0C();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1D106F934(0, &qword_1EE06B760);
  v28 = sub_1D1390A7C();
  (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a1;
  v17 = a1;
  v18 = v26;
  *(v16 + 4) = v26;
  (*(v13 + 32))(&v16[v15], &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *&v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v27;
  aBlock[4] = sub_1D10816FC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_168;
  v19 = _Block_copy(aBlock);

  v20 = v17;
  v21 = v18;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D107F580(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D107F4BC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  v23 = v29;
  v22 = v30;
  sub_1D139103C();
  v24 = v28;
  MEMORY[0x1D3886400](0, v11, v23, v19);
  _Block_release(v19);

  (*(v33 + 8))(v23, v22);
  return (*(v31 + 8))(v11, v32);
}