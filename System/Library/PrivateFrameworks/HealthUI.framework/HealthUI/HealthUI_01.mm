uint64_t sub_1C3974744(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C3C6E638(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1C3C6E6F4(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C3974868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C3C6E638(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C3C6E6F4(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C397498C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C3C6E6F4(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C3974A38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C3C6E6F4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C3974AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3974B20()
{
  v1 = type metadata accessor for FeatureRegulatoryInfoView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1C3D1E064();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  sub_1C3C6F2D0(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1C3D1F114();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_1C3974D08()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C3974D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C3974DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C3974E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3974E90(uint64_t a1, uint64_t a2)
{
  sub_1C3C4C410();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C3974EFC(uint64_t a1, uint64_t a2)
{
  sub_1C3C4C410();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C3974F80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3974FC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3975014()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C397504C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3975084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C3C29314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1C3D1E6F4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 40));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1C39751A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C3C29314();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C3D1E6F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C39752A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C39752F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C3975330()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3975368()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C39753B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C39753F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C397556C()
{

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1C39755F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C3975638()
{
  v1 = sub_1C3D1E064();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C39756C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C3D1E5B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C397576C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C3D1E5B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C3975810()
{
  sub_1C3CA9DEC();
  sub_1C3CA9E70();
  sub_1C3CA9ED4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C39758A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C39758E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3D1E654();
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

uint64_t sub_1C3975954(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C3D1E654();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C39759D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3975A10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3975A48()
{
  v1 = sub_1C3D1DCF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C3975B14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3975B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C3975B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

BOOL sub_1C3975BE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return result;
}

uint64_t sub_1C3975C28(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C3975C3C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1C3975C5C()
{
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1C3D1E8C4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C3975E28()
{
  v1 = sub_1C3D1E8C4();
  v2 = *(v1 - 8);
  v13 = *(v2 + 80);
  v3 = (v13 + 48) & ~v13;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_1C3975FC8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_1C3D1EA64();
  *a2 = result & 1;
  return result;
}

void sub_1C3976038()
{
  sub_1C3C612C4();
  sub_1C3D1DF84();
  __break(1u);
}

uint64_t sub_1C3976140(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1C3CC8968(&qword_1EC0810D0, MEMORY[0x1E6968438]);

  return MEMORY[0x1EEDC3C08](v2, v3);
}

void sub_1C3976218(CGFloat *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v9.origin.x = *a1;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = v3;
  v10.origin.y = v4;
  v10.size.width = v5;
  v10.size.height = v6;
  MidY = CGRectGetMidY(v10);
  *a2 = MidX;
  a2[1] = MidY;
}

float64x2_t sub_1C3976288(float64x2_t *a1, float64x2_t *a2)
{
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(a2[1], _Q2));
  *a2 = result;
  return result;
}

uint64_t sub_1C39762A4()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C39762DC()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3976314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  swift_beginAccess();
  return sub_1C3C3A228(v3 + v4, a2);
}

uint64_t sub_1C3976374()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C39763AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1C39763EC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C3976444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C3976498@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C39764F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1C3976544@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C397659C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1C3976618()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3976658()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C39766A0(double *a1, id *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  [*a2 frame];

  return [v4 setFrame_];
}

uint64_t sub_1C3976710()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3976750()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3976788()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C39767C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3976800()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3976838()
{
  v1 = sub_1C3D1DCF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C3976938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C3CE8FB4(0, &qword_1EC0877D0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C3976A18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C3CE8FB4(0, &qword_1EC0877D0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C3976AEC()
{
  sub_1C3CE7AC0();
  sub_1C3CE8750(&qword_1EC0877C8, sub_1C3CE7AC0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C3976BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C3D1F2D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3976BF8(uint64_t a1, uint64_t a2)
{
  sub_1C3CE833C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3976C5C()
{
  sub_1C3CE9944();
  sub_1C3CE96D4();
  sub_1C3D1F5B4();
  sub_1C3CE9A18(&qword_1EC087860, sub_1C3CE96D4);
  swift_getOpaqueTypeConformance2();
  sub_1C3C4999C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C3976D58()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3976D90()
{
  v1 = sub_1C3D1EDA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C3976E34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3976E78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C3D1E1E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1C3D1E294();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    sub_1C3CECDF4(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1C3977020(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1C3D1E1E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1C3D1E294();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  sub_1C3CECDF4(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C39771CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D1F2F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3977224@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D1F254();
  *a1 = result;
  return result;
}

uint64_t sub_1C397727C(uint64_t a1)
{
  result = sub_1C3CF336C(&qword_1EC085C50, sub_1C3C35B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C39772D8()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C39774E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3977520()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C3977560()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C39775A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C39775D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1C3977614@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C397766C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C39776E0()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3977718()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3977750()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3977794()
{
  v1 = type metadata accessor for FeatureRegulatoryAboutView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  v7 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_1C3D1E064();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  v11 = v1[7];
  v12 = sub_1C3D1EDA4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v5 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C3977984(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1C3D06B58(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C3D1EDA4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C3977AD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C3D06B58(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C3D1EDA4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C3977C74(uint64_t a1, uint64_t a2, int *a3)
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

  sub_1C3D09638(0, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1C3977E40(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_1C3D09638(0, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C397800C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C3D1E514();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C3978148(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C3D1E514();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1C3978280(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C3D09638(0, &qword_1EC087DE0, sub_1C3C6F29C, MEMORY[0x1E6981790]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1C3D09638(0, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C39783EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C3D09638(0, &qword_1EC087DE0, sub_1C3C6F29C, MEMORY[0x1E6981790]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_1C3D09638(0, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1C3978554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C39785C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _ValidateQuantity(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E696C510];
  v12 = a1;
  v13 = [v11 unitFromString:a2];
  [v12 doubleValueForUnit:v13];
  v15 = v14;

  v16 = v15 > a6 || v15 < a5;
  if (v15 > a4 || v15 < a3)
  {
    return 2;
  }

  else
  {
    return v16;
  }
}

void sub_1C397AC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

id HKUILogCharting()
{
  if (HKUILogCharting_onceToken != -1)
  {
    HKUILogCharting_cold_1();
  }

  v1 = HKUILogCharting_category;

  return v1;
}

uint64_t __HKUILogCharting_block_invoke()
{
  HKUILogCharting_category = os_log_create("com.apple.HealthKit", "charting");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t HKCodableHealthRecordsLocalizedEducationContentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableHealthRecordsLocalizedEducationContentSection);
        [a1 addSections:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHealthRecordsLocalizedEducationContentSectionReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _GenerateDateFormatterLongMonthHeader()
{
  v0 = _GenerateDateFormatterLongMonthHeader___formatter;
  if (!_GenerateDateFormatterLongMonthHeader___formatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _GenerateDateFormatterLongMonthHeader___formatter;
    _GenerateDateFormatterLongMonthHeader___formatter = v1;

    [_GenerateDateFormatterLongMonthHeader___formatter setLocalizedDateFormatFromTemplate:@"LLLL"];
    v0 = _GenerateDateFormatterLongMonthHeader___formatter;
  }

  return v0;
}

id _GenerateDateFormatterShortMonthHeader()
{
  v0 = _GenerateDateFormatterShortMonthHeader___formatter;
  if (!_GenerateDateFormatterShortMonthHeader___formatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _GenerateDateFormatterShortMonthHeader___formatter;
    _GenerateDateFormatterShortMonthHeader___formatter = v1;

    [_GenerateDateFormatterShortMonthHeader___formatter setLocalizedDateFormatFromTemplate:@"LLL"];
    v0 = _GenerateDateFormatterShortMonthHeader___formatter;
  }

  return v0;
}

id _GenerateDateFormatterDayMonthDateHourMinute()
{
  v0 = _GenerateDateFormatterDayMonthDateHourMinute___formatter;
  if (!_GenerateDateFormatterDayMonthDateHourMinute___formatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _GenerateDateFormatterDayMonthDateHourMinute___formatter;
    _GenerateDateFormatterDayMonthDateHourMinute___formatter = v1;

    v3 = _GenerateDateFormatterDayMonthDateHourMinute___formatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setLocalizedDateFormatFromTemplate:v4];

    v0 = _GenerateDateFormatterDayMonthDateHourMinute___formatter;
  }

  return v0;
}

id _GenerateDateFormatterDayMonthDateHour()
{
  v0 = _GenerateDateFormatterDayMonthDateHour___formatter;
  if (!_GenerateDateFormatterDayMonthDateHour___formatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _GenerateDateFormatterDayMonthDateHour___formatter;
    _GenerateDateFormatterDayMonthDateHour___formatter = v1;

    v3 = _GenerateDateFormatterDayMonthDateHour___formatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setLocalizedDateFormatFromTemplate:v4];

    v0 = _GenerateDateFormatterDayMonthDateHour___formatter;
  }

  return v0;
}

id HKLocalizedStringForDateAndTemplate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = HKDateFormatterFromTemplate(a2);
  v5 = [v4 stringFromDate:v3];

  return v5;
}

uint64_t HKTodayDayFormatterNeeded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isDateInToday:v3] & 1) != 0 || (objc_msgSend(v4, "isDateInYesterday:", v3))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isDateInTomorrow:v3];
  }

  return v5;
}

id HKLastUpdatedTextWithOptions(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (HKTodayDayFormatterNeeded(v5, a2))
    {
      if (a3)
      {
        v7 = 35;
      }

      else
      {
        v7 = 36;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = [v9 component:4 fromDate:v10];

      v12 = [MEMORY[0x1E695DEE8] currentCalendar];
      v13 = [v12 component:4 fromDate:v6];

      v14 = 12;
      if (a3)
      {
        v14 = 39;
      }

      v15 = 9;
      if (a3)
      {
        v15 = 38;
      }

      if (v13 == v11)
      {
        v7 = v14;
      }

      else
      {
        v7 = v15;
      }
    }

    v16 = HKDateFormatterFromTemplate(v7);
    v8 = [v16 stringFromDate:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL HKMinuteFormatterNeeded(uint64_t a1, void *a2)
{
  v2 = [a2 components:96 fromDate:a1];
  v3 = [v2 minute] != 0;

  return v3;
}

id HKMinimalHourIntervalText(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 startDate];
  if (HKMinuteFormatterNeeded(v5, v4))
  {

LABEL_4:
    v8 = [MEMORY[0x1E696AB88] hk_hourMinuteOnlyDateIntervalFormatter];
    goto LABEL_6;
  }

  v6 = [v3 endDate];
  v7 = HKMinuteFormatterNeeded(v6, v4);

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AB88] hk_hourOnlyDateIntervalFormatter];
LABEL_6:
  v9 = v8;
  v10 = [v8 stringFromDateInterval:v3];

  return v10;
}

id HKLastUpdatedIntervalText(void *a1, uint64_t a2, void *a3, char a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = [v7 startDate];
  v10 = [v7 endDate];
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v60 = a4;
    v68 = v7;
    v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v10];
    v14 = v11;
    v65 = HKUIMidDate(v9, v11);
    v15 = [HKValueRange valueRangeWithMinValue:v65 maxValue:v65];
    v67 = v8;
    v16 = [v8 calendar];
    v70 = a2;
    v64 = v15;
    v63 = +[HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:](HKGraphZoomLevelConfiguration, "chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:", a2, v15, [v16 firstWeekday], v16, 1, 3);
    v66 = v13;
    v61 = [v63 isEqual:v13];
    v71 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v17 = [&unk_1F4380FD0 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v73;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v73 != v19)
          {
            objc_enumerationMutation(&unk_1F4380FD0);
          }

          v21 = [*(*(&v72 + 1) + 8 * i) unsignedIntegerValue];
          v22 = v9;
          v23 = [v16 component:v21 fromDate:v9];
          if (v23 == [v16 component:v21 fromDate:v14])
          {
            v24 = v23;
          }

          else
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v9 = v22;
          [v71 setValue:v24 forComponent:v21];
        }

        v18 = [&unk_1F4380FD0 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v18);
    }

    v25 = [v71 era];
    v27 = [v71 year] != 0x7FFFFFFFFFFFFFFFLL && v25 != 0x7FFFFFFFFFFFFFFFLL;
    v28 = [MEMORY[0x1E695DF00] distantFuture];
    v11 = v14;
    v29 = [v14 hk_isAfterOrEqualToDate:v28];

    v30 = [MEMORY[0x1E695DEE8] currentCalendar];
    v31 = [v30 startOfDayForDate:v9];
    v62 = v30;
    v32 = v27;
    if ([v9 isEqualToDate:v31])
    {
      [v30 startOfDayForDate:v11];
      v34 = v33 = v9;
      v35 = [v11 isEqualToDate:v34];

      v9 = v33;
      if (v35)
      {
        v36 = [MEMORY[0x1E695DEE8] currentCalendar];
        v37 = [v36 dateByAddingUnit:128 value:-1 toDate:v11 options:0];

        goto LABEL_24;
      }
    }

    else
    {
    }

    v37 = v11;
LABEL_24:
    v7 = v68;
    a2 = v70;
    v12 = 0;
    v8 = v67;
    if (v70 <= 4)
    {
      if (v70 < 2)
      {
        if (v29)
        {
          v48 = v9;
          v49 = 1;
          goto LABEL_58;
        }

        v50 = [MEMORY[0x1E696AB88] hk_yearIntervalFormatter];
        goto LABEL_49;
      }

      if ((v70 - 3) < 2)
      {
        v38 = v61 ^ 1;
        if (v70 != 4)
        {
          v38 = 1;
        }

        if ((v38 & 1) == 0)
        {
          v39 = _performNSDateFormatterInitializationBlock(&__block_literal_global_713);
LABEL_65:
          v51 = v39;
          v54 = [v39 stringFromDate:v9];
          goto LABEL_66;
        }

        goto LABEL_39;
      }

      if (v70 == 2)
      {
        if (v29)
        {
          v48 = v9;
          v49 = 7;
          goto LABEL_58;
        }

        if (v61)
        {
          v56 = 1;
          goto LABEL_64;
        }

        v50 = [MEMORY[0x1E696AB88] hk_monthIntervalFormatter];
LABEL_49:
        v51 = v50;
        v52 = v9;
        v53 = v11;
        goto LABEL_50;
      }

LABEL_67:

      goto LABEL_68;
    }

    switch(v70)
    {
      case 5:
LABEL_39:
        if (!v32 && v29)
        {
          v48 = v9;
          v49 = 9;
          goto LABEL_58;
        }

        v50 = [MEMORY[0x1E696AB88] hk_dayIntervalFormatter];
        v51 = v50;
        v52 = v9;
        v53 = v37;
LABEL_50:
        v54 = [v50 stringFromDate:v52 toDate:v53];
LABEL_66:
        v12 = v54;

        goto LABEL_67;
      case 6:
        v55 = v61 ^ 1;
        if ((v60 & 2) != 0)
        {
          v55 = 0;
        }

        if (v55)
        {
          goto LABEL_56;
        }

        if (!HKTodayDayFormatterNeeded(v9, v67))
        {
          v56 = 42;
          goto LABEL_64;
        }

        break;
      case 7:
        v40 = [v16 hk_isDate:v9 withinNumberOfCalendarDays:0 ofDate:v11];
        if ((~v60 & 3) != 0)
        {
          v41 = v40 ^ 1;
          if ((v60 & 2) != 0)
          {
            v41 = 0;
          }

          if ((v41 & 1) == 0)
          {
            v42 = HKRelativeMonthDateYearText(v9, v67, 0);
            HKMinimalHourIntervalText(v68, v16);
            v43 = v69 = v37;
            v44 = MEMORY[0x1E696AEC0];
            [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v46 = v45 = v9;
            v47 = [v46 localizedStringForKey:@"DATE_SELECTION_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
            v12 = [v44 stringWithFormat:v47, v42, v43];

            v9 = v45;
            a2 = 7;

            v37 = v69;
            goto LABEL_67;
          }

LABEL_56:
          if (!v29)
          {
            v57 = HKRelativeDateIntervalText(v68, v67);
            goto LABEL_59;
          }

          v48 = v9;
          v49 = 38;
LABEL_58:
          v57 = _FormatOngoingRangeFrom(v48, v49);
LABEL_59:
          v12 = v57;
          goto LABEL_67;
        }

        break;
      default:
        goto LABEL_67;
    }

    v56 = 36;
LABEL_64:
    v39 = HKDateFormatterFromTemplate(v56);
    goto LABEL_65;
  }

LABEL_68:
  if (v7 && !v12)
  {
    if (a2 == 6)
    {
      [MEMORY[0x1E696AB88] hk_hourDateIntervalFormatter];
    }

    else
    {
      [MEMORY[0x1E696AB88] hk_dayIntervalFormatter];
    }
    v58 = ;
    v12 = [v58 stringFromDateInterval:v7];
  }

  return v12;
}

id _FormatOngoingRangeFrom(void *a1, uint64_t a2)
{
  v2 = HKLocalizedStringForDateAndTemplate(a1, a2);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"ONGOING_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DATE_RANGE %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 stringWithFormat:v7, v2, v4];

  return v8;
}

id HKRelativeDateIntervalText(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 startDate];
  v6 = HKTodayDayFormatterNeeded(v5, v4);

  v7 = [v3 startDate];
  v8 = v7;
  if (v6)
  {
    v9 = HKRelativeMonthDateYearText(v7, v4, 0);

    v10 = [v3 endDate];
    v11 = HKRelativeMonthDateYearText(v10, v4, 0);
  }

  else
  {
    if ([v4 isDateInThisCalendarYear:v7])
    {
      v12 = 12;
    }

    else
    {
      v12 = 9;
    }

    v13 = [v3 startDate];
    v9 = HKLocalizedStringForDateAndTemplate(v13, v12);

    v10 = [v3 endDate];
    v11 = HKLocalizedStringForDateAndTemplate(v10, v12);
  }

  v37 = v11;

  v14 = [v4 calendar];
  v15 = [v3 startDate];
  v16 = [v14 components:30 fromDate:v15];

  v17 = [v4 calendar];
  v18 = [v3 endDate];
  v38 = [v17 components:30 fromDate:v18];

  v19 = [v3 startDate];
  v20 = [v4 calendar];
  if (HKMinuteFormatterNeeded(v19, v20))
  {
    v21 = 27;
  }

  else
  {
    v22 = [v3 endDate];
    v23 = [v4 calendar];
    if (HKMinuteFormatterNeeded(v22, v23))
    {
      v21 = 27;
    }

    else
    {
      v21 = 23;
    }
  }

  v24 = [v3 startDate];
  v25 = HKLocalizedStringForDateAndTemplate(v24, v21);

  v26 = [v3 endDate];
  v27 = HKLocalizedStringForDateAndTemplate(v26, v21);

  v28 = v16;
  LODWORD(v26) = [v16 isEqual:v38];
  v29 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v31 = v30;
  if (v26)
  {
    v32 = [v30 localizedStringForKey:@"DATE_SELECTION_LONG_%@_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v33 = [v29 stringWithFormat:v32, v9, v25, v27];
    v34 = v9;
    v35 = v37;
  }

  else
  {
    v32 = [v30 localizedStringForKey:@"DATE_SELECTION_LONG_DIFFERENT_DATE_%@_%@_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v34 = v9;
    v35 = v37;
    v33 = [v29 stringWithFormat:v32, v34, v25, v37, v27];
  }

  return v33;
}

id HKRelativeMonthDateYearText(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    if (HKTodayDayFormatterNeeded(v5, v6))
    {
      v7 = 36;
    }

    else
    {
      if (a3)
      {
        v9 = [v6 isDateWithinLastRollingYear:v5];
      }

      else
      {
        v9 = [v6 isDateInThisCalendarYear:v5];
      }

      if (v9)
      {
        v7 = 12;
      }

      else
      {
        v7 = 9;
      }
    }

    v8 = HKLocalizedStringForDateAndTemplate(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id HKUpperStringForAnnotationDateWithTimeScope(uint64_t a1, void *a2, unint64_t a3)
{
  if (a1)
  {
    v4 = [a2 dateFromComponents:a1];
    v5 = v4;
    if (a3 > 8)
    {
      v6 = 0;
    }

    else
    {
      v6 = HKLocalizedStringForDateAndTemplate(v4, qword_1C3D5CDF8[a3]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id HKLowerStringForAnnotationDateWithTimeScope(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 dateFromComponents:a1];
    v8 = v7;
    v9 = 0;
    if (a3 > 5)
    {
      if (a3 != 8)
      {
        if (a3 != 7)
        {
          if (a3 == 6)
          {
            v12 = [v6 dateByAddingUnit:32 value:1 toDate:v7 options:0];
            v13 = [MEMORY[0x1E696AB88] hk_hourDateIntervalFormatter];
            v9 = [v13 stringFromDate:v8 toDate:v12];
          }

          goto LABEL_6;
        }

        v10 = 27;
        goto LABEL_5;
      }
    }

    else if ((a3 - 2) >= 4)
    {
LABEL_6:

      goto LABEL_8;
    }

    v10 = 1;
LABEL_5:
    v9 = HKLocalizedStringForDateAndTemplate(v7, v10);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

id HKCombinedStringForAnnotationDateWithTimeScope(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v9 = [v7 dateFromComponents:a1];
  v10 = v9;
  v11 = 0;
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          v12 = 33;
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      v14 = [v8 dateByAddingUnit:32 value:1 toDate:v9 options:0];
      v15 = [MEMORY[0x1E696AB88] hk_hourDateIntervalWithDateFormatter];
      v11 = [v15 stringFromDate:v10 toDate:v14];
LABEL_25:

      goto LABEL_15;
    }

    if (a4 != 2)
    {
      if (a4 == 1)
      {
        v14 = [v8 hk_startOfHourForDate:v9 moduloHours:6 addingModuloCount:0];
        v15 = [v8 hk_startOfHourForDate:v10 moduloHours:6 addingModuloCount:1];
        v16 = [MEMORY[0x1E696AB88] hk_hourDateIntervalWithDateFormatter];
        v11 = [v16 stringFromDate:v14 toDate:v15];

        goto LABEL_25;
      }

      if (a4)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

LABEL_5:
    v12 = 9;
LABEL_14:
    v11 = HKLocalizedStringForDateAndTemplate(v9, v12);
    goto LABEL_15;
  }

  if (a3 < 2)
  {
    v12 = 1;
    goto LABEL_14;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v12 = 7;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  return v11;
}

id HKRelativeMonthYearText(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    if ([a2 isDateInThisCalendarYear:v3])
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    v5 = HKLocalizedStringForDateAndTemplate(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _performWithFormatterLock(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_formatterLock);
  v1[2](v1);

  os_unfair_lock_unlock(&_formatterLock);
}

void __ResetLocaleDependentFormatters_block_invoke()
{
  v0 = __yearShortFormatter;
  __yearShortFormatter = 0;

  v1 = __yearFormatter;
  __yearFormatter = 0;

  v2 = __monthYearFormatter;
  __monthYearFormatter = 0;

  v3 = __shortMonthYearFormatter;
  __shortMonthYearFormatter = 0;

  v4 = __monthDateYearTimeFormatter;
  __monthDateYearTimeFormatter = 0;

  v5 = __monthDateYearFormatter;
  __monthDateYearFormatter = 0;

  v6 = __dayMonthDateYearFormatter;
  __dayMonthDateYearFormatter = 0;

  v7 = __longDayMonthDateYearFormatter;
  __longDayMonthDateYearFormatter = 0;

  v8 = __hourFormatter;
  __hourFormatter = 0;

  v9 = __hourMinuteFormatter;
  __hourMinuteFormatter = 0;

  v10 = __hourMinuteLongFormatter;
  __hourMinuteLongFormatter = 0;

  v11 = __MMDDYYTimeFormatter;
  __MMDDYYTimeFormatter = 0;

  v12 = __MMDDTimeFormatter;
  __MMDDTimeFormatter = 0;

  v13 = __MMDDYYYYFormatter;
  __MMDDYYYYFormatter = 0;

  v14 = __MDYYFormatter;
  __MDYYFormatter = 0;

  v15 = __EMMMDYYYYFormatter;
  __EMMMDYYYYFormatter = 0;

  v16 = __dayHourFormatter;
  __dayHourFormatter = 0;

  v17 = __dayHourMinuteFormatter;
  __dayHourMinuteFormatter = 0;

  v18 = __hourDateIntervalFormatter;
  __hourDateIntervalFormatter = 0;

  v19 = __hourDateIntervalWithDayFormatter;
  __hourDateIntervalWithDayFormatter = 0;

  v20 = __hourOnlyDateIntervalFormatter;
  __hourOnlyDateIntervalFormatter = 0;

  v21 = __hourMinuteOnlyDateIntervalFormatter;
  __hourMinuteOnlyDateIntervalFormatter = 0;

  v22 = __dateTimeDateIntervalFormatter;
  __dateTimeDateIntervalFormatter = 0;

  v23 = __dayDateIntervalFormatter;
  __dayDateIntervalFormatter = 0;

  v24 = __monthDateIntervalFormatter;
  __monthDateIntervalFormatter = 0;

  v25 = __yearDateIntervalFormatter;
  __yearDateIntervalFormatter = 0;

  v26 = __monthDayYearDateIntervalFormatter;
  __monthDayYearDateIntervalFormatter = 0;

  v27 = __monthYearDateIntervalFormatter;
  __monthYearDateIntervalFormatter = 0;

  v28 = __mediumMonthDayDateIntervalFormatter;
  __mediumMonthDayDateIntervalFormatter = 0;

  v29 = __mediumDateStyleIntervalFormatter;
  __mediumDateStyleIntervalFormatter = 0;
}

id HKNumberFormatterFromTemplate(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (_HKNumberFormatterIntegerWithPadding_onceToken != -1)
      {
        HKNumberFormatterFromTemplate_cold_1();
      }

      v1 = &_HKNumberFormatterIntegerWithPadding__formatter;
      goto LABEL_13;
    case 1:
      if (_HKNumberFormatterIntegerWithSeparators_onceToken != -1)
      {
        HKNumberFormatterFromTemplate_cold_2();
      }

      v1 = &_HKNumberFormatterIntegerWithSeparators__formatter;
      goto LABEL_13;
    case 0:
      if (_HKNumberFormatterInteger_onceToken != -1)
      {
        HKNumberFormatterFromTemplate_cold_3();
      }

      v1 = &_HKNumberFormatterInteger__formatter;
LABEL_13:
      v2 = *v1;
      goto LABEL_15;
  }

  v2 = 0;
LABEL_15:

  return v2;
}

double HKRoundWithPositiveZeroForDoubleValue(double a1)
{
  v1 = round(a1);
  v2 = v1 == 0.0 && a1 < 0.0;
  result = fabs(v1);
  if (!v2)
  {
    return v1;
  }

  return result;
}

id HKLocalizedStringForNumberWithTemplate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = HKNumberFormatterFromTemplate(a2);
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

id HKLocalizedStringForNumberWithDecimalPrecision(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = HKNumberFormatterWithDecimalPrecisionAndStyle(a2, a3, 1);
  v7 = [v6 stringFromNumber:v5];

  return v7;
}

id HKLocalizedNoDataString()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v1;
}

id HKThisYearDateFormatter()
{
  _RegisterForLocaleChangeNotificationIfNecessary();

  return _performNSDateFormatterInitializationBlock(&__block_literal_global_349);
}

void _RegisterForLocaleChangeNotificationIfNecessary()
{
  if ((_RegisterForLocaleChangeNotificationIfNecessary___registeredForLocaleWillChange & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _LocaleDidChangeCallback, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDrop);
    _RegisterForLocaleChangeNotificationIfNecessary___registeredForLocaleWillChange = 1;
  }
}

id __HKThisYearDateFormatter_block_invoke()
{
  v0 = __thisYearDateFormatter;
  if (!__thisYearDateFormatter)
  {
    v1 = _timeFormatString();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MMM d, %@", v1];
    v3 = MEMORY[0x1E696AB78];
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v3 dateFormatFromTemplate:v2 options:0 locale:v4];

    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v7 = __thisYearDateFormatter;
    __thisYearDateFormatter = v6;

    [__thisYearDateFormatter setDateFormat:v5];
    v0 = __thisYearDateFormatter;
  }

  return v0;
}

id _timeFormatString()
{
  v0 = CPDateFormatStringForFormatType();
  if (!_CPTimeFormatIs24HourMode())
  {
    v1 = [v0 stringByAppendingString:@" a"];

    v0 = v1;
  }

  return v0;
}

id HKPriorYearsDateFormatter()
{
  if (HKPriorYearsDateFormatter_onceToken != -1)
  {
    HKPriorYearsDateFormatter_cold_1();
  }

  v1 = HKPriorYearsDateFormatter___dateFormatter;

  return v1;
}

uint64_t __HKPriorYearsDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKPriorYearsDateFormatter___dateFormatter;
  HKPriorYearsDateFormatter___dateFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [HKPriorYearsDateFormatter___dateFormatter setLocale:v2];

  [HKPriorYearsDateFormatter___dateFormatter setDateStyle:2];
  v3 = HKPriorYearsDateFormatter___dateFormatter;

  return [v3 setTimeStyle:1];
}

id HKPriorYearsDateFormatterNoTime()
{
  if (HKPriorYearsDateFormatterNoTime_onceToken != -1)
  {
    HKPriorYearsDateFormatterNoTime_cold_1();
  }

  v1 = HKPriorYearsDateFormatterNoTime___dateFormatter;

  return v1;
}

uint64_t __HKPriorYearsDateFormatterNoTime_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKPriorYearsDateFormatterNoTime___dateFormatter;
  HKPriorYearsDateFormatterNoTime___dateFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [HKPriorYearsDateFormatterNoTime___dateFormatter setLocale:v2];

  [HKPriorYearsDateFormatterNoTime___dateFormatter setDateStyle:2];
  v3 = HKPriorYearsDateFormatterNoTime___dateFormatter;

  return [v3 setTimeStyle:0];
}

id HKTimeFormatter()
{
  _RegisterForLocaleChangeNotificationIfNecessary();

  return _performNSDateFormatterInitializationBlock(&__block_literal_global_360);
}

id __HKTimeFormatter_block_invoke()
{
  v0 = __timeFormatter;
  if (!__timeFormatter)
  {
    v1 = _timeFormatString();
    v2 = MEMORY[0x1E696AB78];
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v2 dateFormatFromTemplate:v1 options:0 locale:v3];

    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = __timeFormatter;
    __timeFormatter = v5;

    [__timeFormatter setDateFormat:v4];
    v0 = __timeFormatter;
  }

  return v0;
}

id _WDHourDateFormatterAMPM()
{
  if (_WDHourDateFormatterAMPM_onceToken != -1)
  {
    _WDHourDateFormatterAMPM_cold_1();
  }

  v1 = _WDHourDateFormatterAMPM___dateFormatter;

  return v1;
}

id _WDHourDateFormatter24Hour()
{
  if (_WDHourDateFormatter24Hour_onceToken != -1)
  {
    _WDHourDateFormatter24Hour_cold_1();
  }

  v1 = _WDHourDateFormatter24Hour___dateFormatter;

  return v1;
}

id HKHourDateFormatter()
{
  if (_CPTimeFormatIs24HourMode())
  {
    _WDHourDateFormatter24Hour();
  }

  else
  {
    _WDHourDateFormatterAMPM();
  }
  v0 = ;

  return v0;
}

id HKHourMinuteDateFormatterWithTimeZone(void *a1)
{
  v1 = MEMORY[0x1E696AB78];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setTimeZone:v2];

  [v3 setLocalizedDateFormatFromTemplate:@"j:mm a zzz"];

  return v3;
}

id HKFormattedFeetAndInches(double a1)
{
  v1 = vcvtmd_s64_f64(a1);
  v2 = (a1 - floor(a1)) * 12.0;
  v3 = llround(v2 * 100.0);
  if (v3 <= 1199)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 - 1200;
  }

  if (v3 <= 1199)
  {
    v5 = v1;
  }

  else
  {
    v5 = v1 + 1;
  }

  v6 = HKNumberFormatterWithDecimalPrecisionAndStyle(0, 0, 1);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v8 = [v6 stringFromNumber:v7];
  if (v4 % 100)
  {
    *&v9 = v2;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v11 = HKNumberFormatterWithDecimalPrecisionAndStyle(2, 0, 1);
    v12 = [v11 stringFromNumber:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v12 = [v6 stringFromNumber:v10];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"FEET_INCH_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [v13 stringWithFormat:v15, v8, v12];

  return v16;
}

id HKDistanceFormatter()
{
  if (HKDistanceFormatter_onceToken != -1)
  {
    HKDistanceFormatter_cold_1();
  }

  v1 = HKDistanceFormatter___distanceFormatter;

  return v1;
}

void __HKDistanceFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v1 = HKDistanceFormatter___distanceFormatter;
  HKDistanceFormatter___distanceFormatter = v0;

  [HKDistanceFormatter___distanceFormatter setUnitOptions:3];
  v2 = HKNumberFormatterWithDecimalPrecisionAndStyle(2, 1, 1);
  [HKDistanceFormatter___distanceFormatter setNumberFormatter:v2];
}

id HKLastUpdatedSecondaryValueDateFormatter()
{
  if (HKLastUpdatedSecondaryValueDateFormatter_onceToken != -1)
  {
    HKLastUpdatedSecondaryValueDateFormatter_cold_1();
  }

  v1 = HKLastUpdatedSecondaryValueDateFormatter___dateFormatter;

  return v1;
}

uint64_t __HKLastUpdatedSecondaryValueDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKLastUpdatedSecondaryValueDateFormatter___dateFormatter;
  HKLastUpdatedSecondaryValueDateFormatter___dateFormatter = v0;

  [HKLastUpdatedSecondaryValueDateFormatter___dateFormatter setDateStyle:1];
  v2 = HKLastUpdatedSecondaryValueDateFormatter___dateFormatter;

  return [v2 setTimeStyle:0];
}

id HKFormattedStringForDate(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:4 fromDate:v1 toDate:v3 options:0];

  if ([v4 year] <= 0)
  {
    _RegisterForLocaleChangeNotificationIfNecessary();
    _performNSDateFormatterInitializationBlock(&__block_literal_global_349);
  }

  else
  {
    HKPriorYearsDateFormatter();
  }
  v5 = ;
  v6 = [v5 stringFromDate:v1];

  return v6;
}

id HKFormattedStringFromValue(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = [v10 unitForDisplayType:v11];
  v14 = HKFormattedStringFromValueForContextWithUnit(v12, v11, v13, v10, a4, v9, 0);

  return v14;
}

uint64_t HKFormatterIncludesUnitForDisplayTypeInContext(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [a3 unitForDisplayType:v5];
  v7 = [v5 hk_numberFormatterForUnit:v6 formattingContext:a2];

  v8 = [v7 returnsUnitWithValueForDisplay];
  return v8;
}

id HKFormattedStringFromValueForContext(void *a1, void *a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v11 = a5;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [v12 unitForDisplayType:v13];
  v16 = HKFormattedStringFromValueForContextWithUnit(v14, v13, v15, v12, a4, v11, a6);

  return v16;
}

id _WDLocalizedDisplayStringForActivityQuantity(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    [v9 doubleValueForUnit:v11];
    v15 = v14;
    v16 = HKNumberFormatterWithDecimalPrecisionAndStyle(0, 0, 1);
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v18 = [v16 stringFromNumber:v17];
    [v13 addObject:v18];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v13 addObject:v17];
  }

  if ((a5 & 1) == 0)
  {
    [v13 addObject:@"/"];
    if (v10)
    {
      [v10 doubleValueForUnit:v11];
      v20 = v19;
      v21 = HKNumberFormatterWithDecimalPrecisionAndStyle(0, 0, 1);
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v23 = [v21 stringFromNumber:v22];
      [v13 addObject:v23];
    }

    else
    {
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v22 = [v21 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [v13 addObject:v22];
    }
  }

  if (v12)
  {
    [v13 addObject:@" "];
    [v13 addObject:v12];
  }

  v24 = [v13 componentsJoinedByString:&stru_1F42FFBE0];

  return v24;
}

id HKLocalizedDisplayStringForAppleMoveTime(void *a1, void *a2, char a3, int a4)
{
  v7 = MEMORY[0x1E696C510];
  v8 = a2;
  v9 = a1;
  v10 = [v7 minuteUnit];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"MINUTES_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v9 doubleValueForUnit:v10];
  v15 = [v11 localizedStringWithFormat:v13, v14];

  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = _WDLocalizedDisplayStringForActivityQuantity(v9, v8, v10, v16, a3);

  return v17;
}

id HKLocalizedDisplayStringForAppleExerciseTime(void *a1, void *a2, char a3, int a4)
{
  v7 = MEMORY[0x1E696C510];
  v8 = a2;
  v9 = a1;
  v10 = [v7 minuteUnit];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"MINUTES_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v9 doubleValueForUnit:v10];
  v15 = [v11 localizedStringWithFormat:v13, v14];

  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = _WDLocalizedDisplayStringForActivityQuantity(v9, v8, v10, v16, a3);

  return v17;
}

id HKLocalizedDisplayStringForAppleStandHours(void *a1, void *a2, char a3, int a4)
{
  v7 = MEMORY[0x1E696C510];
  v8 = a2;
  v9 = a1;
  v10 = [v7 countUnit];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v9 doubleValueForUnit:v10];
  v15 = [v11 localizedStringWithFormat:v13, v14];

  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = _WDLocalizedDisplayStringForActivityQuantity(v9, v8, v10, v16, a3);

  return v17;
}

id HKFormatValueAndUnitWithSpaceBetweenValueAndUnit(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length])
  {
    v7 = @"VALUE_UNIT_FORMAT %@%@";
    if (a3)
    {
      v7 = @"VALUE_UNIT_FORMAT %@ %@";
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = MEMORY[0x1E696AAE8];
    v10 = v7;
    v11 = [v9 bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v13 = [v8 localizedStringWithFormat:v12, v5, v6];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

id HKFormatAttributedValueAndUnitWithSpaceBetweenValueAndUnit(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v5 = HKGenerateAttributedStringsWithUnitValue(a1, a2, a3, a4, 2, a5);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  [v5 addObject:v6];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  [v5 addObject:v7];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"QUANTITY_VALUE_FORMAT_STRING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = HKUIJoinAttributedStringsWithFormat(v5, v9);

  return v10;
}

id HKFormatAttributedValueAndDetails(void *a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v16[0] = *MEMORY[0x1E69DB648];
  v16[1] = v5;
  v17[0] = a3;
  v6 = MEMORY[0x1E69DC888];
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v6 hk_chartLollipopLabelColor];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v9];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);

  v14 = [v13 initWithString:v8 attributes:v11];
  [v12 appendAttributedString:v14];

  return v12;
}

id HKActiveEnergyIntegerNumberFormatter()
{
  if (HKActiveEnergyIntegerNumberFormatter_onceToken[0] != -1)
  {
    HKActiveEnergyIntegerNumberFormatter_cold_1();
  }

  v1 = HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter;

  return v1;
}

uint64_t __HKActiveEnergyIntegerNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter;
  HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter = v0;

  [HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter setNumberStyle:1];
  [HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter setRoundingMode:2];
  v2 = HKActiveEnergyIntegerNumberFormatter___integerNumberFormatter;

  return [v2 setMaximumFractionDigits:0];
}

id HKLocalizedStringWithEnergy()
{
  v0 = _HKWorkoutFlooredValueForQuantity();
  v1 = HKActiveEnergyIntegerNumberFormatter();
  v2 = [MEMORY[0x1E696AD98] numberWithInt:v0];
  v3 = [v1 stringFromNumber:v2];

  return v3;
}

__CFString *HKTimePeriodStringGenerator(void *a1, __int16 a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  [v3 doubleValue];
  if ((a2 & 0x100) != 0)
  {
    HKSeparateTimeIntervalComponentsWithWeeks();
    goto LABEL_6;
  }

  if ((a2 & 0x80) == 0)
  {
    HKSeparateTimeIntervalComponentsWithDays();
    if (a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = 1;
    goto LABEL_9;
  }

  HKSeparateTimeIntervalComponents();
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v4 = 0;
  v70 = 0;
LABEL_9:
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((v4 & 1) == 0)
  {
    v6 = HKNumberFormatterWithDecimalPrecisionAndStyle(0, 0, 1);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v71];
    v8 = [v6 stringFromNumber:v7];

    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = v10;
    if ((a2 & 2) != 0)
    {
      v12 = @"HOURS_PAIR_MEDIUM_UPPERCASE";
    }

    else
    {
      v12 = @"HOURS_PAIR_MEDIUM";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = [v9 localizedStringWithFormat:v13, v8];

    if (v14)
    {
      [v5 addObject:v14];
    }
  }

  if (v4 == 1)
  {
    v15 = HKNumberFormatterWithDecimalPrecisionAndStyle(0, 0, 1);
    if ((a2 & 0x100) != 0)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithInteger:v72];
      v17 = [v15 stringFromNumber:v51];

      v52 = MEMORY[0x1E696AEC0];
      v53 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v54 = v53;
      if ((a2 & 4) != 0)
      {
        if ((a2 & 2) != 0)
        {
          v61 = [v53 localizedStringForKey:@"DAYS_NUMBERED_UNIT_UPPERCASE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v56 = [v52 localizedStringWithFormat:v61, v72];

          v57 = v17;
          v58 = v56;
          v59 = 0;
        }

        else
        {
          v55 = [v53 localizedStringForKey:@"DAYS_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v56 = [v52 localizedStringWithFormat:v55, v72];

          v57 = v17;
          v58 = v56;
          v59 = 1;
        }

        v25 = HKFormatValueAndUnitWithSpaceBetweenValueAndUnit(v57, v58, v59);
        v54 = v56;
      }

      else
      {
        if ((a2 & 2) != 0)
        {
          v60 = @"DAYS_PAIR_SHORT_UPPERCASE";
        }

        else
        {
          v60 = @"DAYS_PAIR_SHORT";
        }

        v26 = [v53 localizedStringForKey:v60 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v25 = [v52 localizedStringWithFormat:v26, v17];
      }

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v70];
      v17 = [v15 stringFromNumber:v16];

      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v20 = v19;
      v21 = @"MINUTES_PAIR_MEDIUM_PLURAL_UPPERCASE";
      if ((a2 & 2) == 0)
      {
        v21 = @"MINUTES_PAIR_MEDIUM_PLURAL";
      }

      v22 = @"MINUTES_PAIR_MEDIUM";
      if ((a2 & 2) != 0)
      {
        v22 = @"MINUTES_PAIR_MEDIUM_UPPERCASE";
      }

      if ((a2 & 8) != 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = [v19 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v25 = [v18 localizedStringWithFormat:v24, v17];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    [v5 addObject:v25];
LABEL_30:
  }

  if ((a2 & 0x40) != 0)
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v34 = v5;
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v67;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v67 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v66 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@" " withString:@"\uFFFC"];
          [v27 addObject:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v36);
    }
  }

  else
  {
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v28 = v5;
    v29 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v63;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v62 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@" " withString:@" "];
          [v27 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v30);
    }
  }

  v5 = v27;
LABEL_49:
  v40 = [v5 count];
  switch(v40)
  {
    case 3:
      v48 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v43 = [v42 localizedStringForKey:@"TIME_DISPLAY_3" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v44 = [v5 objectAtIndexedSubscript:0];
      v47 = [v5 objectAtIndexedSubscript:1];
      v49 = [v5 objectAtIndexedSubscript:2];
      v45 = [v48 localizedStringWithFormat:v43, v44, v47, v49];

      goto LABEL_55;
    case 2:
      v46 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v43 = [v42 localizedStringForKey:@"TIME_DISPLAY_2" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v44 = [v5 objectAtIndexedSubscript:0];
      v47 = [v5 objectAtIndexedSubscript:1];
      v45 = [v46 localizedStringWithFormat:v43, v44, v47];
LABEL_55:

      goto LABEL_56;
    case 1:
      v41 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v43 = [v42 localizedStringForKey:@"TIME_DISPLAY_1" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v44 = [v5 objectAtIndexedSubscript:0];
      v45 = [v41 localizedStringWithFormat:v43, v44];
LABEL_56:

      goto LABEL_58;
  }

  v45 = @"<error>";
LABEL_58:

  return v45;
}

id HKTimePeriodString(void *a1, __int16 a2)
{
  v2 = a2;
  v3 = HKTimePeriodStringGenerator(a1, a2);
  v4 = v3;
  if ((v2 & 2) != 0)
  {
    v5 = [v3 localizedUppercaseString];

    v4 = v5;
  }

  return v4;
}

id HKTimePeriodStringWithFonts(void *a1, void *a2, void *a3, unint64_t a4)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    v9 = HKTimePeriodStringGenerator(a3, a4 | 0x40);
    v10 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
    v12 = *MEMORY[0x1E69DB648];
    v30 = v8;
    v31 = v7;
    if ((a4 & 0x10) != 0)
    {
      v18 = *MEMORY[0x1E69DB650];
      v38[0] = *MEMORY[0x1E69DB648];
      v38[1] = v18;
      v39[0] = v7;
      v19 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
      v39[1] = v19;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

      v34[1] = v18;
      v35[0] = v8;
      v34[0] = v12;
      v20 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v35[1] = v20;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    }

    else
    {
      v36 = *MEMORY[0x1E69DB648];
      v37 = v7;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v32 = v12;
      v33 = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    v21 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:1 nonBreaking:(a4 >> 5) & 1];
    v22 = [v9 length];
    if (v22 >= 1)
    {
      v23 = v22;
      for (i = 0; i != v23; ++i)
      {
        if ([v10 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", i)}])
        {
          v25 = v13;
        }

        else
        {
          v25 = v14;
        }

        [v11 addAttributes:v25 range:{i, 1}];
      }
    }

    if ([v11 length])
    {
      v26 = 0;
      do
      {
        v27 = [v11 string];
        v28 = [v27 characterAtIndex:v26];

        if (v28 == 65532)
        {
          [v11 replaceCharactersInRange:v26 withAttributedString:{objc_msgSend(@"\uFFFC", "length"), v21}];
          v26 += [v21 length];
        }

        ++v26;
      }

      while (v26 < [v11 length]);
    }

    v8 = v30;
    v7 = v31;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E696AD40]);
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v11 = [v15 initWithString:v17];

    [v11 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, objc_msgSend(v11, "length")}];
  }

  return v11;
}

id HKUIStringForInsulinDeliveryReasonEmbedded(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSULIN_DELIVERY_REASON_%zd", a1];
  v4 = v3;
  if (a2)
  {
    v5 = [v3 stringByAppendingString:@"_EMBEDDED"];

    v4 = v5;
  }

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v7;
}

void sub_1C3985224(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryOngoingFactorsValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = 0x1EC07C000uLL;
    v6 = 0x1EC07C000uLL;
    v7 = 0x1EC07C000uLL;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v42[0] & 0x7F) << v8;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        *(a1 + *(v5 + 3548)) |= 1u;
        v42[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v38 = v42[0];
        v39 = *(v7 + 3552);
LABEL_60:
        *(a1 + v39) = v38;
        goto LABEL_61;
      }

      if (v16 == 1)
      {
        if ((v15 & 7) == 2)
        {
          v42[0] = 0;
          v42[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v43 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v43 & 0x7F) << v19;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v29 = v7;
          v30 = v6;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42[0] & 0x7F) << v31;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v14 = v32++ >= 9;
            if (v14)
            {
              goto LABEL_55;
            }
          }

          [a2 hasError];
LABEL_55:
          PBRepeatedInt64Add();
          v6 = v30;
          v7 = v29;
          v5 = 0x1EC07C000;
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + *(v5 + 3548)) |= 2u;
    v42[0] = 0;
    v27 = [a2 position] + 8;
    if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
    {
      v40 = [a2 data];
      [v40 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v38 = v42[0];
    v39 = *(v6 + 3556);
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

_BYTE *OUTLINED_FUNCTION_4(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1C398E460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C39907C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t HKCodableSleepingSampleBaselineAvailabilityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_46:
        v28 = 8;
LABEL_51:
        *(a1 + v28) = v21;
        goto LABEL_52;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableDayIndexRange);
        objc_storeStrong((a1 + 24), v14);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v21 = 0;
        goto LABEL_50;
      }
    }

    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v24;
    }

LABEL_50:
    v28 = 16;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

SecKeyRef _createPrivateSecKeyRefFromP12(void *a1)
{
  v1 = a1;
  v2 = HKHealthUIFrameworkBundle();
  v3 = [v2 pathForResource:@"donateLifePrivate" ofType:@"p12"];

  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  privateKeyRef = 0;
  [v5 setObject:v1 forKey:*MEMORY[0x1E697B0B0]];

  theArray = 0;
  v6 = SecPKCS12Import(v4, v5, &theArray);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = theArray == 0;
  }

  if (v7 || CFArrayGetCount(theArray) < 1)
  {
    _HKInitializeLogging();
    v19 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _createPrivateSecKeyRefFromP12_cold_1(v6, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
    v10 = SecIdentityCopyPrivateKey(Value, &privateKeyRef);
    if (v10)
    {
      v11 = v10;
      _HKInitializeLogging();
      v12 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _createPrivateSecKeyRefFromP12_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      privateKeyRef = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v26 = privateKeyRef;

  return v26;
}

id _DecodedString(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = NSStringFromClass(*(*(&v11 + 1) + 8 * i));
        [v2 appendString:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = RevealObfuscatedStringWithSalt(a1, v2);

  return v9;
}

id _SignStringWithSHA256RSA(void *a1, __SecKey *a2)
{
  v3 = a1;
  sigLen = SecKeyGetBlockSize(a2);
  v4 = malloc_type_malloc(sigLen, 0x275080CDuLL);
  bzero(v4, sigLen);
  v5 = malloc_type_malloc(0x20uLL, 0xE8F9655FuLL);
  v6 = [v3 bytes];
  v7 = [v3 length];

  if (CC_SHA256(v6, v7, v5))
  {
    SecKeyRawSign(a2, 0x8004u, v5, 0x20uLL, v4, &sigLen);
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:sigLen];
    free(v5);
    free(v4);
  }

  else
  {
    free(v5);
    free(v4);
    v8 = 0;
  }

  return v8;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t HKCodableWheelchairSettingReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_59;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_59:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_60;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 8;
      }

      *(a1 + v35) = v27;
LABEL_60:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C399ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUCallProviderManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUCallProviderManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUCallProviderManagerClass_block_invoke_cold_1();
  }

  getTUCallProviderManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void TelephonyUtilitiesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81B5C38;
    v2 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    TelephonyUtilitiesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTUDialRequestClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUDialRequestClass_block_invoke_cold_1();
  }

  getTUDialRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUHandleClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUHandleClass_block_invoke_cold_1();
  }

  getTUHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKCodableSummaryTrendTileViewModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v35) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v35 & 0x7F) << v5;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_51;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_51;
      case 3u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 120) |= 4u;
        while (1)
        {
          LOBYTE(v35) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v35 & 0x7F) << v20;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_57:
        *(a1 + 64) = v26;
        goto LABEL_63;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_51;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_51;
      case 6u:
        v15 = objc_alloc_init(HKCodableSummaryTrendLineViewModel);
        v27 = 24;
        goto LABEL_46;
      case 7u:
        v15 = objc_alloc_init(HKCodableSummaryTrendLineViewModel);
        v27 = 40;
LABEL_46:
        objc_storeStrong((a1 + v27), v15);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && HKCodableSummaryTrendLineViewModelReadFrom(v15, a2))
        {
          goto LABEL_48;
        }

        goto LABEL_65;
      case 8u:
        v15 = objc_alloc_init(HKCodableSummaryVisualizationPoint);
        [a1 addVisualizationPoints:v15];
        v35 = 0;
        v36 = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryVisualizationPointReadFrom(v15, a2))
        {
          goto LABEL_65;
        }

        goto LABEL_48;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_51;
      case 0xAu:
        *(a1 + 120) |= 1u;
        v35 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 8;
        goto LABEL_62;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_51;
      case 0xCu:
        v15 = objc_alloc_init(HKCodableCellHeaderViewModel);
        objc_storeStrong((a1 + 32), v15);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && HKCodableCellHeaderViewModelReadFrom(v15, a2))
        {
LABEL_48:
          PBReaderRecallMark();

LABEL_63:
          v33 = [a2 position];
          if (v33 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_65:

        return 0;
      case 0xDu:
        *(a1 + 120) |= 2u;
        v35 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 16;
LABEL_62:
        *(a1 + v31) = v30;
        goto LABEL_63;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 88;
LABEL_51:
        v28 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_63;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_63;
    }
  }
}

uint64_t HKCodableSummaryElectrocardiogramValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          *(a1 + 40) |= 4u;
          v34[0] = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v34 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v34[0];
          goto LABEL_59;
        }

LABEL_34:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_59;
      }

      v29 = objc_alloc_init(HKCodableQuantity);
      objc_storeStrong((a1 + 32), v29);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v29, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v34[0] & 0x7F) << v23;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v25;
      }

LABEL_55:
      v30 = 8;
      goto LABEL_56;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v34[0] & 0x7F) << v14;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_51;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_51:
      v30 = 16;
LABEL_56:
      *(a1 + v30) = v20;
      goto LABEL_59;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartHorizontalTimePeriodDataSourceDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableHorizontalTimePeriodData);
        [a1 addDateIntervalsByValue:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHorizontalTimePeriodDataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryCardioFitnessValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 2u;
          v27 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v27;
          goto LABEL_48;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(HKCodableLevelViewDataConfiguration);
          objc_storeStrong((a1 + 24), v21);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !HKCodableLevelViewDataConfigurationReadFrom(v21, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(HKCodableQuantity);
          objc_storeStrong((a1 + 32), v21);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v21, a2))
          {
            goto LABEL_50;
          }

LABEL_38:
          PBReaderRecallMark();

          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_45:
          *(a1 + 8) = v20;
          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartQuantityDataSourceQueryDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableStatisticsCollection);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableStatisticsCollectionReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKAFibBurdenClampedLowerBoundLocalizedString(void *a1)
{
  v1 = HKAFibBurdenRoundedValue(a1);
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"LESS_THAN_SOME_PERCENT_PLAIN" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v3, objc_msgSend(v1, "intValue")];

  return v4;
}

id HKAFibBurdenRoundedValue(void *a1)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (a1)
  {
    [a1 decimalValue];
  }

  v5 = 0uLL;
  v6 = 0;
  MEMORY[0x1C6930EC0](&v5, v7, 0, 0);
  v3 = v5;
  v4 = v6;
  v1 = [MEMORY[0x1E696AB90] decimalNumberWithDecimal:&v3];

  return v1;
}

id HKAFibBurdenClampedLowerBoundAttributedLocalizedString(void *a1, void *a2, void *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"LESS_THAN_SOME_PERCENT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v11 = MEMORY[0x1E696AEC0];
  v12 = HKAFibBurdenRoundedValue(v8);

  v13 = [v11 localizedStringWithFormat:v10, objc_msgSend(v12, "longValue")];

  v14 = *MEMORY[0x1E69DB648];
  v38[0] = v7;
  v15 = *MEMORY[0x1E69DB650];
  v37[0] = v14;
  v37[1] = v15;
  v16 = [MEMORY[0x1E69DC888] labelColor];
  v38[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

  v35[1] = v15;
  v36[0] = v6;
  v35[0] = v14;
  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v36[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v20 = objc_alloc_init(MEMORY[0x1E696AAB8]);
  [v20 setAllowsExtendedAttributes:1];
  v34 = 0;
  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithMarkdownString:v13 options:v20 baseURL:0 error:&v34];
  v22 = v34;
  v23 = [v21 length];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __HKAFibBurdenClampedLowerBoundAttributedLocalizedString_block_invoke;
  v30[3] = &unk_1E81B5CE8;
  v24 = v21;
  v31 = v24;
  v32 = v17;
  v33 = v19;
  v25 = v19;
  v26 = v17;
  [v24 enumerateAttributesInRange:0 options:v23 usingBlock:{0, v30}];
  v27 = v33;
  v28 = v24;

  return v24;
}

void __HKAFibBurdenClampedLowerBoundAttributedLocalizedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = [v10 objectForKeyedSubscript:@"com.apple.Health.valueText"];

  if (v7)
  {
    v8 = 40;
  }

  else
  {
    v9 = [v10 objectForKeyedSubscript:@"com.apple.Health.unitText"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v8 = 48;
  }

  [*(a1 + 32) setAttributes:*(a1 + v8) range:{a3, a4}];
LABEL_6:
}

uint64_t HKCodableStateOfMindValenceDistributionDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_55:
          *(a1 + 24) = v32;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v38 & 0x7F) << v16;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_51:
          *(a1 + 32) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 36) |= 2u;
          v38 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          *(a1 + 36) |= 1u;
          v38 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 8;
        }

        *(a1 + v35) = v34;
      }

LABEL_61:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHorizontalTimePeriodDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HKCodableDateInterval);
        [a1 addDateIntervals:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKStartOfHourForDate(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:62 fromDate:v2];

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

id HKEndOfHourForDate(void *a1)
{
  v1 = HKStartOfHourForDate(a1);
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 dateByAddingUnit:32 value:1 toDate:v1 options:0];

  return v3;
}

id HKStartOfDayForDate(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 startOfDayForDate:v2];

  return v4;
}

id HKEndOfDayForDate(void *a1)
{
  v1 = HKStartOfDayForDate(a1);
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 dateByAddingUnit:16 value:1 toDate:v1 options:0];

  return v3;
}

id HKSleepStartDateForDate(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 startOfDayForDate:v2];
  v5 = [v3 dateBySettingUnit:32 value:18 ofDate:v4 options:0];
  v6 = [v3 compareDate:v5 toDate:v2 toUnitGranularity:128];

  if (v6 == 1)
  {
    v7 = [v3 dateByAddingUnit:16 value:-1 toDate:v5 options:0];

    v5 = v7;
  }

  return v5;
}

id HKStartOfRollingDayForDate(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = [v6 startOfDayForDate:v5];

  v8 = v4[2](v4, v6, v7);

  return v8;
}

id HKEndOfRollingDayWithStart(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:1 toDate:v2 options:0];

  return v4;
}

id HKStartOfRollingWeekForDate(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = HKCalendarDateTransformNone();
  v8 = HKStartOfRollingDayForDate(v5, v7);

  v9 = [v6 hk_dateBySubtractingDays:6 fromDate:v8];
  v10 = v4[2](v4, v6, v9);

  return v10;
}

id HKEndOfRollingWeekWithStart(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:7 toDate:v2 options:0];

  return v4;
}

id HKStartOfRollingMonthForDate(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = HKCalendarDateTransformNone();
  v8 = HKStartOfRollingDayForDate(v5, v7);

  v9 = [v6 hk_dateBySubtractingDays:30 fromDate:v8];
  v10 = v4[2](v4, v6, v9);

  return v10;
}

id HKEndOfRollingMonthWithStart(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:31 toDate:v2 options:0];

  return v4;
}

id HKStartOfRollingYearForDate(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = [v6 components:14 fromDate:v5];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 dateFromComponents:v7];
  v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v10 setYear:-1];
  [v10 setMonth:1];
  v11 = [v8 dateByAddingComponents:v10 toDate:v9 options:0];
  v12 = v4[2](v4, v8, v11);

  return v12;
}

id HKEndOfRollingYearWithStart(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 dateByAddingUnit:4 value:1 toDate:v2 options:0];

  return v4;
}

uint64_t HKDateMidpoint(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = MEMORY[0x1E695DF00];

  return [v8 dateWithTimeIntervalSinceReferenceDate:(v5 + v7) * 0.5];
}

void sub_1C39B70B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C39B7CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C39B815C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C39B85A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _DefaultOverlayDeselectDelay()
{
  v0 = [MEMORY[0x1E696C608] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  v2 = 4.0;
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x1E696C858]];
    if ([v4 hk_keyExists:@"HKOverlayDeselectDelayInSec"])
    {
      [v4 doubleForKey:@"HKOverlayDeselectDelayInSec"];
      v2 = v5;
    }
  }

  return v2;
}

uint64_t HKCodableSummaryCorrelatedTrendResultsReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[32] |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_46:
        v28 = 8;
LABEL_51:
        *&a1[v28] = v21;
        goto LABEL_52;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableSummaryCorrelatedTrendValue);
        [a1 addTrendValues:v14];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryCorrelatedTrendValueReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    a1[32] |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v21 = 0;
        goto LABEL_50;
      }
    }

    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v24;
    }

LABEL_50:
    v28 = 16;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C39C0DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C39C157C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C39C3F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void DrawDiagonalSlashPatternLine(CGContext *a1, CGColor *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGContextSaveGState(a1);
  if (PatternColorSpace_onceToken != -1)
  {
    DrawDiagonalSlashPatternLine_cold_1();
  }

  CGContextSetStrokeColorSpace(a1, PatternColorSpace_patternColorSpace);
  if (a3)
  {
    if (DiagonalPatternInvertedAndScaled_onceToken != -1)
    {
      DrawDiagonalSlashPatternLine_cold_3();
    }

    v16 = &DiagonalPatternInvertedAndScaled_diagonalPattern;
  }

  else
  {
    if (DiagonalPattern_onceToken != -1)
    {
      DrawDiagonalSlashPatternLine_cold_2();
    }

    v16 = &DiagonalPattern_diagonalPattern;
  }

  v17 = *v16;
  Components = CGColorGetComponents(a2);
  CGContextSetStrokePattern(a1, v17, Components);
  CGContextSetLineWidth(a1, a4);
  CGContextSetLineCap(a1, kCGLineCapButt);
  CGContextMoveToPoint(a1, a5, a6);
  CGContextAddLineToPoint(a1, a7, a8);
  CGContextStrokePath(a1);

  CGContextRestoreGState(a1);
}

CGColorSpaceRef __PatternColorSpace_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  result = CGColorSpaceCreatePattern(v0);
  PatternColorSpace_patternColorSpace = result;
  return result;
}

CGPatternRef __DiagonalPatternInvertedAndScaled_block_invoke()
{
  v0 = *(MEMORY[0x1E695EFD0] + 16);
  *&v7.a = *MEMORY[0x1E695EFD0];
  *&v7.c = v0;
  *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&matrix.a = *&v7.a;
  *&matrix.c = v0;
  *&matrix.tx = *&v7.tx;
  CGAffineTransformTranslate(&v7, &matrix, 0.0, 4.0);
  v5 = v7;
  CGAffineTransformScale(&matrix, &v5, 1.0, -1.0);
  v7 = matrix;
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  v3 = v2;

  v5 = v7;
  CGAffineTransformScale(&matrix, &v5, v3, v3);
  v7 = matrix;
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 4.0;
  v8.size.height = 4.0;
  result = CGPatternCreate(0, v8, &matrix, 4.0, 4.0, kCGPatternTilingConstantSpacing, 0, &DiagonalSlashPatternCallbacks);
  DiagonalPatternInvertedAndScaled_diagonalPattern = result;
  return result;
}

void DiagonalSlashPattern(int a1, CGContextRef c)
{
  CGContextSetLineWidth(c, 1.0);
  CGContextSetLineCap(c, kCGLineCapSquare);
  CGContextMoveToPoint(c, 0.0, 2.0);
  CGContextAddLineToPoint(c, 2.0, 0.0);
  CGContextMoveToPoint(c, 2.0, 4.0);
  CGContextAddLineToPoint(c, 4.0, 2.0);

  CGContextStrokePath(c);
}

CGPatternRef __DiagonalPattern_block_invoke()
{
  v0 = *(MEMORY[0x1E695EFD0] + 16);
  *&v5.a = *MEMORY[0x1E695EFD0];
  *&v5.c = v0;
  *&v5.tx = *(MEMORY[0x1E695EFD0] + 32);
  v1 = 0;
  *&v0 = 0;
  v2 = 4.0;
  v3 = 4.0;
  result = CGPatternCreate(0, *(&v0 - 8), &v5, 4.0, 4.0, kCGPatternTilingConstantSpacing, 0, &DiagonalSlashPatternCallbacks);
  DiagonalPattern_diagonalPattern = result;
  return result;
}

uint64_t HKCodableSummaryTrendLineViewModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          *(a1 + 40) |= 1u;
          v23[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v23 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v23[0];
          goto LABEL_35;
        }

LABEL_26:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_35;
      }

      v18 = objc_alloc_init(HKCodableDateInterval);
      objc_storeStrong((a1 + 16), v18);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_35:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v16 = PBReaderReadString();
      v17 = 32;
      goto LABEL_32;
    }

    if (v13 == 4)
    {
      v16 = PBReaderReadString();
      v17 = 24;
LABEL_32:
      v19 = *(a1 + v17);
      *(a1 + v17) = v16;

      goto LABEL_35;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableLevelViewDataConfigurationReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = objc_alloc_init(HKCodableLevelViewDataConfigurationBucket);
        [a1 addSortedNormalizedBuckets:v15];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableLevelViewDataConfigurationBucketReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v19[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        a1[1] = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C39CCB38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C39CE608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C39D7A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C39D8124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C39D884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1C39D8A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C39D9118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1C39D9580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1C39DADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_1C39DB75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C39DBC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1C39DC368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C39E0A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_1E81B5C18;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C39E0B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  SOSLibrary();
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SOSLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SOSLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81B6678;
    v2 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    SOSLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SOSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSOSContactsManagerClass_block_invoke(uint64_t a1)
{
  SOSLibrary();
  result = objc_getClass("SOSContactsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSContactsManagerClass_block_invoke_cold_1();
  }

  getSOSContactsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKCodableSummaryCorrelatedTrendValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKCodableSummaryTrendValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HKCodableSummaryTrendValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

double HKRangeMax(double result, double a2)
{
  v2 = result + a2;
  if (result < v2)
  {
    return v2;
  }

  return result;
}

double HKRangeMin(double result, double a2)
{
  v2 = result + a2;
  if (result >= v2)
  {
    return v2;
  }

  return result;
}

uint64_t HKCodableMetadataDictionaryReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableMetadataKeyValuePair);
        [a1 addKeyValuePairs:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableMetadataKeyValuePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C39E72FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _drawSeriesGroup(CGContext *a1, int a2, CGColor *a3, CGColor *a4, uint64_t a5, CGFloat a6, CGFloat a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  if (vabdd_f64(a9, a10) >= HKUIOnePixel())
  {
    if (a2)
    {
      v22 = a4;
      v23 = a7;
    }

    else
    {
      v22 = a3;
      v23 = a6;
    }

    _drawSeriesLine(a1, v22, v23, a9, a10, a11);
  }

  else
  {

    [HKGraphSeries drawFilledMarkerInContext:a1 color:a5 x:a9 y:a11 radius:a8];
  }
}

void _drawSeriesLine(CGContext *a1, CGColor *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextSetLineWidth(a1, a3);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetStrokeColorWithColor(a1, a2);
  CGContextMoveToPoint(a1, a4, a6);
  CGContextAddLineToPoint(a1, a5, a6);

  CGContextStrokePath(a1);
}

void sub_1C39E8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_1C39E95CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose((v62 - 232), 8);
  _Block_object_dispose((v62 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C39E9FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C39EAC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_1C39EB3D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C39EED70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void _drawSolidCircleInContext(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  CGContextSaveGState(a1);
  v12 = [v11 CGColor];

  CGContextSetFillColorWithColor(a1, v12);
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGContextFillEllipseInRect(a1, v14);

  CGContextRestoreGState(a1);
}

void _drawHollowCircleInContext(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  _drawSolidCircleInContext(a1, a2, a3, a4, a5, a6);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  v18 = CGRectInset(v17, 2.0, 2.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  _drawSolidCircleInContext(a1, v15, x, y, width, height);
}

uint64_t HKCodableStateOfMindValenceDistributionSummaryReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDayIndexRange);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableStateOfMindValenceDistributionData);
    [a1 addValenceDistributionData:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableStateOfMindValenceDistributionDataReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummarySleepScoreValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 56) |= 2u;
            v47 = 0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v42 = v47;
            v43 = 16;
            break;
          case 5:
            *(a1 + 56) |= 1u;
            v47 = 0;
            v38 = [a2 position] + 8;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v42 = v47;
            v43 = 8;
            break;
          case 6:
            *(a1 + 56) |= 4u;
            v47 = 0;
            v21 = [a2 position] + 8;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v42 = v47;
            v43 = 24;
            break;
          default:
LABEL_48:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_82;
        }

        *(a1 + v43) = v42;
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v47 & 0x7F) << v23;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_65:
            v40 = 40;
            break;
          case 2:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 56) |= 0x20u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v47 & 0x7F) << v32;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v34;
            }

LABEL_73:
            v40 = 48;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v14;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_69:
            v40 = 32;
            break;
          default:
            goto LABEL_48;
        }

        *(a1 + v40) = v20;
      }

LABEL_82:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C39F3740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummarySupplementaryValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKStringForBloodType(unint64_t a1)
{
  if (a1 <= 8)
  {
    v2 = off_1E81B6C20[a1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v1 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v1;
}

uint64_t HKCodableDateIntervalReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HKCodableDateInterval__startDate;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HKCodableDateInterval__endDate;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableStatisticsCollectionReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDateComponents);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateComponentsReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableStatistics);
    [a1 addStatistics:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableStatisticsReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C39FA910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableHealthRecordsProviderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___HKCodableHealthRecordsProvider__providerLogo;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HKCodableHealthRecordsProvider__providerName;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___HKCodableHealthRecordsProvider__providerURI;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id _BoldImageCache()
{
  v0 = _BoldImageCache___cache;
  if (!_BoldImageCache___cache)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v2 = _BoldImageCache___cache;
    _BoldImageCache___cache = v1;

    v0 = _BoldImageCache___cache;
  }

  return v0;
}

id _NormalImageCache()
{
  v0 = _NormalImageCache___cache;
  if (!_NormalImageCache___cache)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v2 = _NormalImageCache___cache;
    _NormalImageCache___cache = v1;

    v0 = _NormalImageCache___cache;
  }

  return v0;
}

uint64_t HKCodableSleepSummaryEntryReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableSleepPeriod);
    [a1 addPeriod:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableSleepPeriodReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A00854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3A00BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id HKHealthPrivacyServiceRemoteAuthorizationViewControllerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4479518];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_setRequestRecord_presentationRequests_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t HKCodableSummaryBloodPressureValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v21[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:v21 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v21[0];
        goto LABEL_32;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 16;
      }

      else
      {
        if (v13 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 24;
      }

      objc_storeStrong((a1 + v15), v14);
      v21[0] = 0;
      v21[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_32:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A0ACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_6(id a1)
{

  return a1;
}

id _HKMediumScaledPreferredBodyFontWithValue(double a1)
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 _scaledValueForValue:a1];
  v4 = [v2 systemFontOfSize:? weight:?];

  return v4;
}

id _HKMediumScaledPreferredBodyFontWithButton(void *a1)
{
  v1 = [a1 titleLabel];
  v2 = [v1 font];
  [v2 pointSize];
  v4 = _HKMediumScaledPreferredBodyFontWithValue(v3);

  return v4;
}

uint64_t HKCodableChartInsulinDataSourceQueryDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HKCodableChartInsulinValue);
        [a1 addTotalInsulinValues:v13];
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HKCodableChartInsulinValue);
        [a1 addBasalInsulinValues:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableChartInsulinValueReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A0EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_1C3A0FEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKCodableQueryAnchorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *HKQuantityDistributionBucketSizeForQuantityType(void *a1)
{
  v1 = HKQuantityDistributionBucketSizeForQuantityType_onceToken[0];
  v2 = a1;
  if (v1 != -1)
  {
    HKQuantityDistributionBucketSizeForQuantityType_cold_1();
  }

  v3 = HKQuantityDistributionBucketSizeForQuantityType_quantityTypeBucketSizes;
  v4 = [v2 identifier];

  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_1F43848A0;
  }

  v8 = v7;

  return v7;
}

void __HKQuantityDistributionBucketSizeForQuantityType_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696BD70];
  v3[0] = *MEMORY[0x1E696BD58];
  v3[1] = v0;
  v4[0] = &unk_1F4384880;
  v4[1] = &unk_1F4384890;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = HKQuantityDistributionBucketSizeForQuantityType_quantityTypeBucketSizes;
  HKQuantityDistributionBucketSizeForQuantityType_quantityTypeBucketSizes = v1;
}

double _doubleValueIfCompatibleForQuantity(void *a1, void *a2, objc_class *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 _unit];
  v8 = [v7 _isCompatibleWithUnit:v6];

  if (v8)
  {
    [v5 doubleValueForUnit:v6];
    v10 = v9;
  }

  else
  {
    if (!LogFirstIncompatibleUnitConversionSet)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = LogFirstIncompatibleUnitConversionSet;
      LogFirstIncompatibleUnitConversionSet = v11;
    }

    v13 = [v5 _unit];
    v14 = [v13 unitString];

    v15 = MEMORY[0x1E696AEC0];
    v16 = [v6 unitString];
    v17 = [v15 stringWithFormat:@"%@:%@", v14, v16];

    v18 = NSStringFromClass(a3);
    if (([LogFirstIncompatibleUnitConversionSet containsObject:v17] & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x1E696B988];
      if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_FAULT))
      {
        v21 = v19;
        v22 = [v6 unitString];
        *buf = 138412802;
        v24 = v18;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v22;
        _os_log_fault_impl(&dword_1C3942000, v21, OS_LOG_TYPE_FAULT, "[%@] Incompatible unit conversion for %@ to %@", buf, 0x20u);
      }

      [LogFirstIncompatibleUnitConversionSet addObject:v17];
    }

    v10 = 0.0;
  }

  return v10;
}

__CFString *_NSStringFromSelectedRangeStatisticsType(uint64_t a1)
{
  if ((a1 - 1) > 0x1F)
  {
    return @"HKSelectedRangeStatisticsTypeNone";
  }

  else
  {
    return off_1E81B70D0[a1 - 1];
  }
}

__CFString *_NSStringFromSelectedRangeDataType(uint64_t a1)
{
  if ((a1 - 1) > 0x2B)
  {
    return @"HKSelectedRangeDataTypeNone";
  }

  else
  {
    return off_1E81B71D0[a1 - 1];
  }
}

uint64_t HKCodableSampleChartDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 56) |= 2u;
            v39 = 0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 16;
            goto LABEL_69;
          case 5:
            v16 = objc_alloc_init(HKCodableMetadataDictionary);
            objc_storeStrong((a1 + 40), v16);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !HKCodableMetadataDictionaryReadFrom(v16, a2))
            {
LABEL_72:

              return 0;
            }

            goto LABEL_55;
          case 6:
            v16 = objc_alloc_init(HKCodableQuantity);
            objc_storeStrong((a1 + 48), v16);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v16, a2))
            {
              goto LABEL_72;
            }

LABEL_55:
            PBReaderRecallMark();

            goto LABEL_70;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v39 & 0x7F) << v17;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_59:
            v32 = 8;
            goto LABEL_64;
          case 2:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v39 & 0x7F) << v26;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v28;
            }

LABEL_63:
            v32 = 24;
LABEL_64:
            *(a1 + v32) = v23;
            goto LABEL_70;
          case 3:
            *(a1 + 56) |= 8u;
            v39 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 32;
LABEL_69:
            *(a1 + v35) = v34;
            goto LABEL_70;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKErrorTableViewCell(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v3 = [v2 textLabel];
    [v3 setText:v1];
    v4 = [MEMORY[0x1E69DC888] redColor];
    [v2 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewCell *HKErrorTableViewCell(NSString *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"HKTableViewController.m" lineNumber:67 description:{@"Unexpected error in creation of table view cell: %@", v1}];
  }

  return v2;
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1C3A2B794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3A330E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3A332F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __setCurrentlyEditingCell(void *a1)
{
  v2 = a1;
  v3 = __setCurrentlyEditingCell___currentCell;
  if (__setCurrentlyEditingCell___currentCell != v2)
  {
    v5 = v2;
    [__setCurrentlyEditingCell___currentCell commitEditing];
    objc_storeStrong(&__setCurrentlyEditingCell___currentCell, a1);
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

uint64_t HKCodablePrescriptionTypeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ClampedWeightLoggingOutOfBoundsValues(void *a1)
{
  v1 = a1;
  [v1 doubleValue];
  if (v2 < 0.0)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_FAULT))
    {
      ClampedWeightLoggingOutOfBoundsValues_cold_2(v1, v3);
    }

    v4 = MEMORY[0x1E696AD98];
    v5 = 0.0;
LABEL_9:
    v8 = [v4 numberWithDouble:v5];
    goto LABEL_11;
  }

  [v1 doubleValue];
  if (v6 > 658.0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_FAULT))
    {
      ClampedWeightLoggingOutOfBoundsValues_cold_1(v1, v7);
    }

    v4 = MEMORY[0x1E696AD98];
    v5 = 658.0;
    goto LABEL_9;
  }

  v8 = v1;
LABEL_11:
  v9 = v8;

  return v9;
}

uint64_t HKCodableDismissibleCellHeaderViewModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableCellHeaderViewModel);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableCellHeaderViewModelReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableColorRepresentation);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableColorRepresentationReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A38B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableChartHandwashingEventDataSourceDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableHandwashingEvent);
        [a1 addEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHandwashingEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A3B660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HKPopulationNormsSortedAgeRangesFromTable_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

double hk_rectRoundToViewScale(void *a1)
{
  v1 = a1;
  UIPointRoundToViewScale();
  v3 = v2;
  UISizeRoundToViewScale();

  return v3;
}

id _ChartPointInformationProvidersForMappingData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 chartPoints];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

uint64_t HKCodableHealthRecordsCodeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E81B7950[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}