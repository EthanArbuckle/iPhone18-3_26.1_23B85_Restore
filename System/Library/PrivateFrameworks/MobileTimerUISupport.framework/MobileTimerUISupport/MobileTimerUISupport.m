double CFPUIRadiusForRectAtAngleWithInset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v12 = a6;
  v13 = fmodf(v12, 6.2832);
  v14 = v13;
  if (v13 < 0.0)
  {
    do
    {
      v14 = v14 + 6.28318531;
    }

    while (v14 < 0.0);
  }

  v15 = 1.57079633;
  if (v14 >= 1.57079633)
  {
    v16 = 3.14159265;
    if (v14 >= 3.14159265)
    {
      if (v14 < 4.71238898)
      {
        v14 = v14 + -3.14159265;
        goto LABEL_9;
      }

      v16 = 6.28318531;
    }

    v14 = v16 - v14;
  }

LABEL_9:
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  Height = CGRectGetHeight(v35);
  v36.size.height = a4;
  v18 = Height + a7 * -2.0;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v19 = CGRectGetWidth(v36) + a7 * -2.0;
  v20 = fmax((a5 - a7) * 1.52866, 0.0);
  v21 = v19 * 0.5;
  if (atan2(-(v20 - v18 * 0.5), v19 * 0.5) >= v14)
  {
    v22 = tan(v14) * v21;
LABEL_13:
    v23 = v22 * v22 + v21 * v21;
    return sqrt(v23);
  }

  v22 = v18 * 0.5;
  if (atan2(v22, v19 * 0.5 - v20) < v14)
  {
    v21 = v22 / tan(v14);
    goto LABEL_13;
  }

  v24 = 0;
  v33 = v22 - v20;
  v25 = 0.0;
  do
  {
    v26 = __sincos_stret((v25 + v15) * 0.5);
    v27 = v21 - v20 + v20 * pow(v26.__cosval, 0.622409222);
    v28 = v33 + v20 * pow(v26.__sinval, 0.622409222);
    v29 = v14 - atan2(v28, v27);
    if (v29 > 0.0)
    {
      v30 = (v25 + v15) * 0.5;
    }

    else
    {
      v30 = v25;
    }

    if (v29 < 0.0)
    {
      v15 = (v25 + v15) * 0.5;
    }

    else
    {
      v25 = v30;
    }

    if (fabs(v29) <= 0.01)
    {
      break;
    }
  }

  while (v24++ < 0x63);
  v23 = v28 * v28 + v27 * v27;
  return sqrt(v23);
}

void sub_25A0ED33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25A0ED76C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25A0EDC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25A0EDEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CLKFormatTimeIntervalSeconds(_BYTE *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9)
{
  v12 = +[_CLKTimeFormatData instanceForCurrentLocale];
  +[_CLKTimeFormatSentinel listenForLocaleChangesIfNecessary];
  v13 = v12;
  v14 = v13;
  v15 = *a9.i64;
  v16 = *a9.i64 / 0x3C;
  if (*a9.i64 > 0xE0F)
  {
    v17 = 1;
  }

  else
  {
    v17 = a2;
  }

  v18 = [v13 singleWidthNumberFormatter];
  if (a6)
  {
    v19 = [v14 doubleWidthNumberFormatter];

    v18 = v19;
  }

  if (v17)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 / 0xE10];
    v21 = [v18 stringFromNumber:v20];
  }

  else
  {
    v21 = &stru_286BCB780;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  v22 = [v14 doubleWidthNumberFormatter];

  v18 = v22;
LABEL_10:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 - 60 * (((v16 * 0x888888888888889uLL) >> 64) >> 1)];
  v24 = [v18 stringFromNumber:v23];

  if (a4)
  {
    v26 = v15 - 60 * v16;
    v27 = [v14 doubleWidthNumberFormatter];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
    v29 = [v27 stringFromNumber:v28];
  }

  else
  {
    v29 = &stru_286BCB780;
  }

  if (a3)
  {
    *v25.i64 = *a9.i64 - trunc(*a9.i64);
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v31 = (*vbslq_s8(vnegq_f64(v30), v25, a9).i64 * 100.0);
    v32 = [v14 doubleWidthNumberFormatter];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
    v34 = [v32 stringFromNumber:v33];
  }

  else
  {
    v34 = &stru_286BCB780;
  }

  v35 = v21;
  v36 = v24;
  v37 = v29;
  v38 = v34;

  v39 = v21;
  v40 = v24;
  v41 = v29;
  v42 = v34;
  if (v17)
  {
    if (!a4 || a7)
    {
      v43 = [v14 formatHourMin];
    }

    else
    {
      if (a3)
      {
        [v14 formatHourMinSecSubsec];
      }

      else
      {
        [v14 formatHourMinSec];
      }
      v43 = ;
    }
  }

  else if (a4)
  {
    if (a7 || (a3 & 1) == 0)
    {
      v43 = [v14 formatMinSec];
    }

    else
    {
      v43 = [v14 formatMinSecSubsec];
    }
  }

  else
  {
    v43 = [v14 formatMin];
  }

  v44 = v43;
  if (a1)
  {
    *a1 = v17;
  }

  if ((v17 & 1) == 0)
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"HH%@", v43];

    v44 = v45;
  }

  v46 = [v44 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v47 = [v46 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v48 = [v47 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v49 = [v48 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v50 = [v49 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v51 = [v50 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  if (a8)
  {
    if ([(__CFString *)v42 length])
    {

      v42 = @"−−";
    }

    v52 = 60.0;
    v53 = *a9.i64;
    if (*a9.i64 >= 60.0 && [(__CFString *)v41 length:60.0])
    {

      v41 = @"−−";
    }
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:v51, v52, v53, v39, v40, v41, v42];

  return v54;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25A0EED18(uint64_t a1, int a2)
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

uint64_t sub_25A0EED38(uint64_t result, int a2, int a3)
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

uint64_t sub_25A0EED80(uint64_t a1, int a2)
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

uint64_t sub_25A0EEDA0(uint64_t result, int a2, int a3)
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

void sub_25A0EEDF0(uint64_t a1, unint64_t *a2)
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

void *sub_25A0EEE50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_25A0EEE88(void *a1, uint64_t *a2)
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

uint64_t Binding<A>.init(readonly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  v9[5] = a4;

  return MEMORY[0x2821339D8](sub_25A0EF000, v8, nullsub_1, v9, a3);
}

uint64_t sub_25A0EEFC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25A0EF000()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_25A0EF028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A0EF0D0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(sub_25A10BF40() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25A10BF80();
  *a2 = result;
  return result;
}

uint64_t sub_25A0EF1DC()
{
  result = sub_25A10BF70();
  qword_27F9F3220 = result;
  return result;
}

uint64_t sub_25A0EF220(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

Swift::String __swiftcall Double.formatForReducedResolution()()
{
  v1 = CLKFormatTimeIntervalSecondsForLowFidelity(0, 0, 0, 1, 1, 0, v0);
  if (v1)
  {
    v3 = v1;
    v4 = sub_25A10C060();
    v6 = v5;

    v1 = v4;
    v2 = v6;
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Double.intervalTextString(forceHours:doubleWidthLeadingMinute:)(Swift::Bool forceHours, Swift::Bool doubleWidthLeadingMinute)
{
  v3 = CLKFormatTimeIntervalSeconds(forceHours, 0, 0, 1, doubleWidthLeadingMinute, 0, v2);
  if (v3)
  {
    v5 = v3;
    v6 = sub_25A10C060();
    v8 = v7;

    v3 = v6;
    v4 = v8;
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

double sub_25A0EF384()
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  return *(v0 + 16);
}

double sub_25A0EF424@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_25A0EF4CC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A0EF5E4()
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  return *(v0 + 24);
}

uint64_t sub_25A0EF684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_25A0EF72C(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  return result;
}

double sub_25A0EF830()
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  return *(v0 + 32);
}

double sub_25A0EF8D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_25A0EF978(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A0EFA90()
{
  swift_getKeyPath();
  v4 = v0;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_25A0EFB40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_25A0EFBEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (sub_25A10C390())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_25A0EFD5C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_25A0EFE0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_25A0EFEB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (v6 = *(v2 + 64), (sub_25A10C390() & 1) != 0))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }
}

uint64_t sub_25A0F0018()
{
  swift_getKeyPath();
  v4 = v0;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v2 = *(v0 + 72);
  v1 = *(v4 + 80);

  return v2;
}

uint64_t sub_25A0F00C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_25A0F0174(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (v6 = *(v2 + 80), (sub_25A10C390() & 1) != 0))
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }
}

uint64_t sub_25A0F02D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v3 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate;
  swift_beginAccess();
  return sub_25A0F25E0(v5 + v3, a1);
}

uint64_t sub_25A0F039C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v4 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate;
  swift_beginAccess();
  return sub_25A0F25E0(v3 + v4, a2);
}

uint64_t sub_25A0F0464(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  sub_25A0F25E0(a1, &v9 - v5);
  v7 = *a2;
  return sub_25A0F04F8(v6);
}

uint64_t sub_25A0F04F8(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate;
  swift_beginAccess();
  sub_25A0F25E0(v1 + v6, v5);
  v7 = sub_25A0F2650(v5, a1);
  sub_25A0F2A3C(v5, &qword_27F9F3288, &qword_25A10D290);
  if (v7)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  else
  {
    sub_25A0F25E0(a1, v5);
    swift_beginAccess();
    sub_25A0F2940(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_25A0F2A3C(a1, &qword_27F9F3288, &qword_25A10D290);
}

uint64_t sub_25A0F06E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate;
  swift_beginAccess();
  sub_25A0F29CC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_25A0F0754()
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  return *(v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing);
}

uint64_t sub_25A0F07FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  *a2 = *(v3 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing);
  return result;
}

uint64_t sub_25A0F08AC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  return result;
}

id sub_25A0F09C4()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v16 - v3;
  v5 = sub_25A10B9A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16[0] = v0;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  if (*(v0 + 24) != 3)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v16[0] = v0;
  sub_25A10BA50();

  v10 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate;
  swift_beginAccess();
  sub_25A0F25E0(v1 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25A0F2A3C(v4, &qword_27F9F3288, &qword_25A10D290);
LABEL_4:
    result = [*(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) remainingTime];
    v13 = v12;
    goto LABEL_6;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_25A10B950();
  v13 = v14;
  result = (*(v6 + 8))(v9, v5);
LABEL_6:
  if (v13 >= 0.0)
  {
    swift_getKeyPath();
    v17 = v1;
    sub_25A10BA50();

    if (*(v1 + 32) < v13)
    {
      swift_getKeyPath();
      v17 = v1;
      sub_25A10BA50();

      v15 = *(v1 + 32);
    }
  }

  return result;
}

id sub_25A0F0CD8()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v31 - v3;
  v5 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer;
  v6 = [*(v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) state];
  if (*(v0 + 24) != v6)
  {
    v7 = v6;
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v31 - 2) = v1;
    *(&v31 - 1) = v7;
    v32 = v1;
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  sub_25A0F1378();
  v8 = [*(v1 + v5) nextTrigger];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 triggerDate];
    sub_25A10B990();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_25A10B9A0();
  (*(*(v12 - 8) + 56))(v4, v11, 1, v12);
  sub_25A0F04F8(v4);

  [*(v1 + v5) duration];
  v14 = v13;
  if (*(v1 + 32) == v13)
  {
    *(v1 + 32) = v13;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v31 - 2) = v1;
    *(&v31 - 1) = v14;
    v32 = v1;
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  v15 = [*(v1 + v5) isFiring];
  v16 = v15;
  if (v15 == *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing))
  {
    *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__firing) = v15;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v16;
    v32 = v1;
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    sub_25A10BA40();
  }

  if ([*(v1 + v5) hasDefaultTitle])
  {
    if (*(v1 + 48))
    {
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      *(&v31 - 3) = 0;
      *(&v31 - 2) = 0;
      *(&v31 - 4) = v1;
      v32 = v1;
      sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
      sub_25A10BA40();
    }

    else
    {
      *(v1 + 40) = 0;
      *(v1 + 48) = 0;
    }
  }

  else
  {
    v17 = [*(v1 + v5) title];
    if (v17)
    {
      v18 = v17;
      v19 = sub_25A10C060();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_25A0EFBEC(v19, v21);
  }

  v22 = sub_25A0F1554();
  sub_25A0EFEB8(v22, v23);
  swift_getKeyPath();
  v32 = v1;
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  if (*(v1 + 48))
  {
    v24 = *(v1 + 40);
    v25 = *(v1 + 48);
LABEL_25:

    return sub_25A0F0174(v24, v25);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v26 setAllowedUnits_];
  [v26 setUnitsStyle_];
  swift_getKeyPath();
  v32 = v1;
  sub_25A10BA50();

  result = [v26 stringFromTimeInterval_];
  if (result || ([*(v1 + v5) duration], (result = CLKFormatTimeIntervalSeconds(0, 0, 0, 1, 1, 0, v28)) != 0))
  {
    v29 = result;
    v24 = sub_25A10C060();
    v25 = v30;

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id sub_25A0F1378()
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  if (*(v0 + 24) == 1)
  {
    if (*(v0 + 16) == 0.0)
    {
      *(v0 + 16) = 0;
      return result;
    }
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) remainingTime];
    if (*(v0 + 16) == v2)
    {
      *(v0 + 16) = v2;
      return result;
    }
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_25A10BA40();
}

id sub_25A0F1554()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  [v2 setMaximumUnitCount_];
  [v2 setFormattingContext_];
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v3 = [v2 stringFromTimeInterval_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25A10C060();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  [v2 setMaximumUnitCount_];
  swift_getKeyPath();
  sub_25A10BA50();

  v8 = [v2 stringFromTimeInterval_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25A10C060();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          return v5;
        }

        v13 = sub_25A10C390();

        if (v13)
        {

          return v5;
        }
      }
    }
  }

  [*(v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) duration];
  result = CLKFormatTimeIntervalSeconds(0, 0, 0, 1, 1, 0, v14);
  if (result)
  {
    v16 = result;
    v5 = sub_25A10C060();

    return v5;
  }

  __break(1u);
  return result;
}

id sub_25A0F17F8(char a1)
{
  swift_getKeyPath();
  sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
  sub_25A10BA50();

  v4 = *(v1 + 24);
  if (v4 != 1)
  {
    if (v4 != 2 && a1)
    {
      sub_25A0F09C4();
      if (a1 != 2)
      {
        goto LABEL_11;
      }

      result = CLKFormatTimeIntervalSecondsForLowFidelity(0, 0, 0, 1, 1, 0, v5);
      if (result)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    sub_25A0F09C4();
    result = CLKFormatTimeIntervalSeconds(0, 0, 0, 1, 1, 0, v7);
    if (!result)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_12:
    v8 = result;
    v9 = sub_25A10C060();

    return v9;
  }

LABEL_9:
  v3.i64[0] = 0;
  result = CLKFormatTimeIntervalSeconds(0, 0, 0, 1, 1, 0, v3);
  if (result)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  result = CLKFormatTimeIntervalSeconds(0, 0, 0, 1, 1, 0, v5);
  if (result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_25A0F19B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer;
  [*(v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) mutableCopy];
  sub_25A10C1F0();
  swift_unknownObjectRelease();
  sub_25A0F2468(0, &qword_27F9F3270, 0x277D29700);
  if (swift_dynamicCast())
  {
    swift_getKeyPath();
    sub_25A0F2A9C(&qword_27F9F3278, type metadata accessor for TimerModel);
    v3 = v8;
    sub_25A10BA50();

    [v3 setState_];
    swift_getKeyPath();
    sub_25A10BA50();

    if (v0[6])
    {
      v4 = v0[5];
      v5 = v1[6];

      v6 = sub_25A10C050();
    }

    else
    {
      v6 = 0;
    }

    [v3 setTitle_];

    [v3 copy];
    sub_25A10C1F0();
    swift_unknownObjectRelease();

    sub_25A0F2468(0, &qword_27F9F3280, 0x277D29730);
    if (swift_dynamicCast())
    {
      v7 = *(v1 + v2);
      *(v1 + v2) = v8;
    }
  }
}

uint64_t sub_25A0F1BDC()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 8);

  v3 = *(v0 + 10);

  sub_25A0F2A3C(&v0[OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel__fireDate], &qword_27F9F3288, &qword_25A10D290);

  v4 = OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel___observationRegistrar;
  v5 = sub_25A10BA70();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for TimerModel()
{
  result = qword_27F9F3240;
  if (!qword_27F9F3240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25A0F1D14()
{
  sub_25A0F1E1C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_25A10BA70();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25A0F1E1C()
{
  if (!qword_27F9F3250)
  {
    sub_25A10B9A0();
    v0 = sub_25A10C1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9F3250);
    }
  }
}

void sub_25A0F1E74(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) timerIDString];
  v4 = sub_25A10C060();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_25A0F1ED8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25A0F2468(0, &qword_27F9F3260, 0x277D82BB8);
  v4 = *(v3 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);
  v5 = *(v2 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);
  v6 = v4;
  v7 = sub_25A10C1A0();

  return v7 & 1;
}

uint64_t sub_25A0F1F5C()
{
  v1 = sub_25A10B9C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_25A10C3E0();
  v7 = [*(v6 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) timerID];
  sub_25A10B9B0();

  sub_25A0F2A9C(&qword_27F9F3268, MEMORY[0x277CC95F0]);
  sub_25A10C010();
  (*(v2 + 8))(v5, v1);
  return sub_25A10C410();
}

uint64_t sub_25A0F20A8()
{
  v1 = sub_25A10B9C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) timerID];
  sub_25A10B9B0();

  sub_25A0F2A9C(&qword_27F9F3268, MEMORY[0x277CC95F0]);
  sub_25A10C010();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25A0F21E8()
{
  v1 = sub_25A10B9C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A10C3E0();
  v6 = [*(*v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) timerID];
  sub_25A10B9B0();

  sub_25A0F2A9C(&qword_27F9F3268, MEMORY[0x277CC95F0]);
  sub_25A10C010();
  (*(v2 + 8))(v5, v1);
  return sub_25A10C410();
}

uint64_t sub_25A0F2340()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer) description];
  v2 = sub_25A10C060();

  return v2;
}

uint64_t sub_25A0F2428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_25A0EFBEC(v2, v3);
}

uint64_t sub_25A0F2468(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_25A0F2508()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_25A0F256C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_25A0F25E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F2650(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A10B9A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3290, &qword_25A10D2E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20]();
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_25A0F25E0(a1, &v22 - v14);
  sub_25A0F25E0(a2, &v15[v16]);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_25A0F25E0(v15, v11);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v15[v16], v4);
      sub_25A0F2A9C(&qword_27F9F3298, MEMORY[0x277CC9578]);
      v19 = sub_25A10C040();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v11, v4);
      sub_25A0F2A3C(v15, &qword_27F9F3288, &qword_25A10D290);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_25A0F2A3C(v15, &qword_27F9F3290, &qword_25A10D2E8);
    v18 = 1;
    return v18 & 1;
  }

  sub_25A0F2A3C(v15, &qword_27F9F3288, &qword_25A10D290);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25A0F2940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F29CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F2A3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25A0F2A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25A0F2B00()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 80);
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

uint64_t keypath_set_77Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_25A0F2BA4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 64);
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_25A0F2BE4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_25A0F2C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25A10BC20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A0, &qword_25A10D370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = (&v16 - v10);
  sub_25A0F5530(v2, &v16 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_25A10B9F0();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    sub_25A10C180();
    v15 = sub_25A10BCE0();
    sub_25A10BA80();

    sub_25A10BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25A0F2E84()
{
  v1 = sub_25A10BC20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for LocalizedHrMinView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_25A10C180();
    v9 = sub_25A10BCE0();
    sub_25A10BA80();

    sub_25A10BC10();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t LocalizedHrMinView.init(date:component:timeDesignatorSmallCaps:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A0, &qword_25A10D370);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LocalizedHrMinView();
  v9 = a4 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v8[6];
  v11 = sub_25A10B9A0();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  *(a4 + v8[7]) = v7;
  *(a4 + v8[8]) = a3;
  return result;
}

uint64_t LocalizedHrMinView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = *(type metadata accessor for LocalizedHrMinView() - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v4 = sub_25A10B9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A0F332C(v1, v20);
  v16 = v20[1];
  v17 = v20[0];
  v9 = v21;
  v10 = v22;
  v18 = v24;
  v11 = v23;
  sub_25A0F2C9C(v8);
  sub_25A0F4788(v1, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_25A0F47F0(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A8, &qword_25A10D3A0);
  sub_25A0F4858();
  sub_25A0F55A0(&qword_27F9F32D8, MEMORY[0x277CC9788]);
  sub_25A10BF20();

  (*(v5 + 8))(v8, v4);
  return sub_25A0F4A2C(v17, v16, v9, v10, v11, v18);
}

double sub_25A0F332C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25A10BE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25A10B9A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizedHrMinView();
  if (*(a1 + *(v14 + 28)))
  {
    if (*(a1 + *(v14 + 28)) != 1)
    {
      (*(v10 + 16))(v13, a1 + *(v14 + 24), v9);
      v46 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter);

      sub_25A0F55A0(&qword_27F9F3318, MEMORY[0x277CC9578]);
      *&v57 = sub_25A10BE70();
      *(&v57 + 1) = v48;
      *&v58 = v47 & 1;
      *(&v58 + 1) = v49;
      v59 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32D0, &qword_25A10D3B0);
      sub_25A0F49B0();
      sub_25A10BC90();
      goto LABEL_7;
    }

    v15 = *(v10 + 16);
    v16 = a1 + *(v14 + 24);
    v54 = v14;
    v15(v13, v16, v9);
    v17 = sub_25A0F2E84();
    v55 = v5;
    v18 = *(v17 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter);

    sub_25A0F55A0(&qword_27F9F3318, MEMORY[0x277CC9578]);
    v19 = sub_25A10BE70();
    v21 = v20;
    v56 = a2;
    v23 = v22;
    sub_25A10BE40();
    v24 = *(a1 + *(v54 + 32));
    v25 = sub_25A10BE60();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v23 & 1;
    a2 = v56;
    sub_25A0F4ABC(v19, v21, v32);

    (*(v55 + 8))(v8, v4);
    *&v57 = v25;
    *(&v57 + 1) = v27;
    v33 = v27;
    *&v58 = v29 & 1;
    *(&v58 + 1) = v31;
    LOBYTE(v59) = 1;
    v34 = v25;
    v35 = v25;
    v36 = v33;
    sub_25A0F55E8(v34, v33, v29 & 1);

    sub_25A10BC90();
    v57 = v60;
    v58 = v61;
    v59 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32D0, &qword_25A10D3B0);
    sub_25A0F49B0();
    sub_25A10BC90();
    v37 = v35;
    v38 = v36;
    v39 = v29 & 1;
  }

  else
  {
    v40 = sub_25A0F3820();
    v42 = v41;
    *&v57 = v40;
    *(&v57 + 1) = v41;
    v44 = v43 & 1;
    *&v58 = v43 & 1;
    *(&v58 + 1) = v45;
    LOBYTE(v59) = 0;
    sub_25A0F55E8(v40, v41, v43 & 1);

    sub_25A10BC90();
    v57 = v60;
    v58 = v61;
    v59 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32D0, &qword_25A10D3B0);
    sub_25A0F49B0();
    sub_25A10BC90();
    v37 = v40;
    v38 = v42;
    v39 = v44;
  }

  sub_25A0F4ABC(v37, v38, v39);

LABEL_7:
  result = *&v60;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  *a2 = v60;
  *(a2 + 16) = v51;
  *(a2 + 32) = v52;
  *(a2 + 33) = v53;
  return result;
}

uint64_t sub_25A0F3820()
{
  v1 = v0;
  v2 = sub_25A10BE50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25A10B9A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25A0F2E84();
  v12 = sub_25A0FF9C8();

  if (v12)
  {
    v13 = type metadata accessor for LocalizedHrMinView();
    (*(v8 + 16))(v11, v0 + *(v13 + 24), v7);
    v14 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter);

    sub_25A0F55A0(&qword_27F9F3318, MEMORY[0x277CC9578]);
    return sub_25A10BE70();
  }

  v97 = v6;
  v98 = v3;
  v16 = [*(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_fullDateFormatter) dateFormat];
  v100 = v11;
  v101 = v7;
  if (!v16)
  {

    goto LABEL_10;
  }

  v17 = v16;
  v18 = sub_25A10C060();
  v20 = v19;

  v21 = sub_25A0FFB88(97, 0xE100000000000000, v18, v20);
  if (v22)
  {

LABEL_10:
    v41 = type metadata accessor for LocalizedHrMinView();
    v42 = *(v8 + 16);
    v94 = *(v41 + 24);
    v95 = v42;
    v42(v11, &v94[v1], v7);
    v43 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter);

    v92 = sub_25A0F55A0(&qword_27F9F3318, MEMORY[0x277CC9578]);
    v44 = sub_25A10BE70();
    v46 = v45;
    v48 = v47;
    LODWORD(v93) = *(v1 + *(v41 + 32));
    v99 = v8 + 16;
    v96 = v2;
    sub_25A10BC70();
    v49 = sub_25A10BE80();
    v51 = v50;
    LOBYTE(v41) = v52;
    v91 = sub_25A10BE20();
    v90 = v53;
    v88 = v54;
    v89 = v55;
    sub_25A0F4ABC(v49, v51, v41 & 1);

    sub_25A0F4ABC(v44, v46, v48 & 1);

    v95(v100, &v94[v1], v101);
    v56 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter);

    v57 = sub_25A10BE70();
    v59 = v58;
    LOBYTE(v49) = v60;
    v61 = v97;
    sub_25A10BE40();
    v62 = sub_25A10BE60();
    v64 = v63;
    LOBYTE(v46) = v65;
    sub_25A0F4ABC(v57, v59, v49 & 1);

    (*(v98 + 8))(v61, v96);
    v66 = v91;
    v67 = v90;
    v101 = sub_25A10BE20();
    sub_25A0F4ABC(v62, v64, v46 & 1);

    sub_25A0F4ABC(v66, v67, v88 & 1);

    return v101;
  }

  v23 = v21;
  v24 = sub_25A0FFB88(104, 0xE100000000000000, v18, v20);
  v26 = v25;

  if ((v26 & 1) != 0 || v23 >> 14 >= v24 >> 14)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for LocalizedHrMinView();
  v28 = v2;
  v29 = *(v8 + 16);
  v92 = *(v27 + 24);
  v99 = v8 + 16;
  v94 = v29;
  (v29)(v11, v1 + v92, v7);
  v30 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter);

  v93 = sub_25A0F55A0(&qword_27F9F3318, MEMORY[0x277CC9578]);
  v31 = sub_25A10BE70();
  v33 = v32;
  v35 = v34;
  v36 = v97;
  sub_25A10BE40();
  LODWORD(v27) = *(v1 + *(v27 + 32));
  v90 = sub_25A10BE60();
  v91 = v37;
  v39 = v38;
  v95 = v40;
  sub_25A0F4ABC(v31, v33, v35 & 1);

  (*(v98 + 8))(v36, v28);
  sub_25A10BC70();
  v68 = sub_25A10BE80();
  v70 = v69;
  LOBYTE(v28) = v71;
  v72 = v39;
  v73 = v90;
  v74 = v91;
  v75 = sub_25A10BE20();
  v97 = v76;
  v98 = v75;
  LODWORD(v89) = v77;
  v96 = v78;
  sub_25A0F4ABC(v68, v70, v28 & 1);

  sub_25A0F4ABC(v73, v74, v72 & 1);

  (v94)(v100, v1 + v92, v101);
  v79 = *(sub_25A0F2E84() + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter);

  v80 = sub_25A10BE70();
  v82 = v81;
  v84 = v83;
  v85 = v97;
  v86 = v98;
  v101 = sub_25A10BE20();
  sub_25A0F4ABC(v80, v82, v84 & 1);

  sub_25A0F4ABC(v86, v85, v89 & 1);

  return v101;
}

uint64_t LocalizedHrMinView.Component.hashValue.getter()
{
  v1 = *v0;
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](v1);
  return sub_25A10C410();
}

uint64_t sub_25A0F41A4()
{
  v1 = *v0;
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](v1);
  return sub_25A10C410();
}

uint64_t sub_25A0F4218()
{
  v1 = *v0;
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](v1);
  return sub_25A10C410();
}

uint64_t sub_25A0F4280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v5 = sub_25A10B9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A0F332C(v2, v21);
  v17 = v21[1];
  v18 = v21[0];
  v10 = v22;
  v11 = v23;
  v19 = v25;
  v12 = v24;
  sub_25A0F2C9C(v9);
  sub_25A0F4788(v2, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_25A0F47F0(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A8, &qword_25A10D3A0);
  sub_25A0F4858();
  sub_25A0F55A0(&qword_27F9F32D8, MEMORY[0x277CC9788]);
  sub_25A10BF20();

  (*(v6 + 8))(v9, v5);
  return sub_25A0F4A2C(v18, v17, v10, v11, v12, v19);
}

uint64_t sub_25A0F4530(uint64_t a1)
{
  v2 = *(*(sub_25A10B9F0() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25A10BBE0();
}

uint64_t type metadata accessor for LocalizedHrMinView()
{
  result = qword_27F9F32F8;
  if (!qword_27F9F32F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentValues.dateProvider.getter()
{
  sub_25A0F4ACC();
  sub_25A10BC30();
  return v1;
}

uint64_t sub_25A0F4684@<X0>(void *a1@<X8>)
{
  sub_25A0F4ACC();
  result = sub_25A10BC30();
  *a1 = v3;
  return result;
}

uint64_t sub_25A0F46D4@<X0>(void *a1@<X8>)
{
  sub_25A0F4ACC();
  result = sub_25A10BC30();
  *a1 = v3;
  return result;
}

uint64_t sub_25A0F4724(uint64_t *a1)
{
  v2 = *a1;
  sub_25A0F4ACC();

  return sub_25A10BC40();
}

uint64_t sub_25A0F4788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedHrMinView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F47F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedHrMinView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A0F4858()
{
  result = qword_27F9F32B0;
  if (!qword_27F9F32B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F32A8, &qword_25A10D3A0);
    sub_25A0F4924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F32B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25A0F4924()
{
  result = qword_27F9F32B8;
  if (!qword_27F9F32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F32C0, &qword_25A10D3A8);
    sub_25A0F49B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F32B8);
  }

  return result;
}

unint64_t sub_25A0F49B0()
{
  result = qword_27F9F32C8;
  if (!qword_27F9F32C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F32D0, &qword_25A10D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F32C8);
  }

  return result;
}

uint64_t sub_25A0F4A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_25A0F4ABC(a1, a2, a3 & 1);
  }

  else
  {

    return sub_25A0F4A80(a1, a2, a3);
  }
}

uint64_t sub_25A0F4A80(uint64_t a1, uint64_t a2, char a3)
{
  sub_25A0F4ABC(a1, a2, a3 & 1);
}

uint64_t sub_25A0F4ABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25A0F4ACC()
{
  result = qword_27F9F32E0;
  if (!qword_27F9F32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F32E0);
  }

  return result;
}

uint64_t sub_25A0F4B5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(sub_25A10B9F0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A10B9E0();
  v5 = type metadata accessor for DateProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = DateProvider.init(locale:)(v4);
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.dateProvider.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25A0F4ACC();
  sub_25A10BC30();
  return sub_25A0F4C58;
}

uint64_t sub_25A0F4C58(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_25A10BC40();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_25A10BC40();
  }
}

unint64_t sub_25A0F4CF0()
{
  result = qword_27F9F32E8;
  if (!qword_27F9F32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F32E8);
  }

  return result;
}

uint64_t sub_25A0F4D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32F0, qword_25A10D478);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_25A10B9A0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25A0F4EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32F0, qword_25A10D478);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_25A10B9A0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25A0F4FE4()
{
  sub_25A0F50D0(319, &qword_27F9F3308, MEMORY[0x277CC9788]);
  if (v0 <= 0x3F)
  {
    sub_25A0F50D0(319, &qword_27F9F3310, type metadata accessor for DateProvider);
    if (v1 <= 0x3F)
    {
      sub_25A10B9A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25A0F50D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25A10BAF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LocalizedHrMinView.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalizedHrMinView.Component(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25A0F5290()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F32A8, &qword_25A10D3A0);
  sub_25A10B9F0();
  sub_25A0F4858();
  sub_25A0F55A0(&qword_27F9F32D8, MEMORY[0x277CC9788]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for LocalizedHrMinView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A0, &qword_25A10D370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25A10B9F0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[*(v1 + 20)];

  v9 = *(v1 + 24);
  v10 = sub_25A10B9A0();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25A0F54B0()
{
  v1 = *(type metadata accessor for LocalizedHrMinView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_25A0F2E84();
  sub_25A0FF8B0();
}

uint64_t sub_25A0F5530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A0, &qword_25A10D370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F55A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25A0F55E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

int *TimerTimelineSchedule.init(with:isPaused:timerDuration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_25A10B9A0();
  (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  sub_25A0F29CC(a1, a3);
  result = type metadata accessor for TimerTimelineSchedule();
  *(a3 + result[5]) = a2;
  *(a3 + result[6]) = a4;
  v10 = qword_27F9F7058;
  *(a3 + result[7]) = qword_27F9F7058;
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 > 1000)
    {
      v12 = 0;
    }

    qword_27F9F7058 = v12;

    return sub_25A0F5728(a1);
  }

  return result;
}

uint64_t type metadata accessor for TimerTimelineSchedule()
{
  result = qword_27F9F3338;
  if (!qword_27F9F3338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A0F5728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TimerTimelineSchedule.entries(from:mode:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_25A10B9A0();
  v4 = *(v3 - 8);
  v27 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25A10BCB0();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimerTimelineSchedule();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v23 = swift_allocBox();
  v11 = *(v4 + 16);
  v11(v12, a1, v3);
  sub_25A0F6560(v25, v10);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v28);
  v11(v29, a1, v3);
  v13 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v6 + 80) + v14 + 8) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v4 + 80) + v16 + 8) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_25A0F67E8(v10, v18 + v13);
  *(v18 + v14) = v23;
  (*(v6 + 32))(v18 + v15, v21, v28);
  *(v18 + v16) = v24;
  (*(v4 + 32))(v18 + v17, v29, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3320, &qword_25A10D528);
  result = swift_allocObject();
  *(result + 16) = sub_25A0F684C;
  *(result + 24) = v18;
  return result;
}

uint64_t sub_25A0F5AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v74 = a3;
  v76 = a2;
  v8 = sub_25A10BCB0();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  (MEMORY[0x28223BE20])();
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v14 = &v65 - v13;
  v15 = sub_25A10B9A0();
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v77 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v78 = swift_projectBox();
  v26 = type metadata accessor for TimerTimelineSchedule();
  if (*(a1 + *(v26 + 20)) != 1)
  {
    v29 = v26;
    v72 = a5;
    sub_25A0F25E0(a1, v14);
    if ((*(v79 + 48))(v14, 1, v15) == 1)
    {
      sub_25A0F5728(v14);
      return (*(v79 + 56))(v72, 1, 1, v15);
    }

    v70 = a4;
    v69 = v21;
    (*(v79 + 32))(v25, v14, v15);
    v30 = v78;
    swift_beginAccess();
    v31 = v79 + 16;
    v32 = v25;
    v33 = v15;
    v34 = v77;
    v71 = *(v79 + 16);
    v71(v77, v30, v33);
    sub_25A10B950();
    v36 = v35;
    v37 = *(v79 + 8);
    v38 = v34;
    v15 = v33;
    v37(v38, v33);
    if (v36 <= 0.0)
    {
      v37(v32, v33);
      return (*(v79 + 56))(v72, 1, 1, v15);
    }

    v67 = v37;
    v68 = v31;
    v39 = v75;
    (*(v75 + 104))(v11, *MEMORY[0x277CE03B0], v8);
    v40 = sub_25A10BCA0();
    (*(v39 + 8))(v11, v8);
    if (v40)
    {
      v41 = v78;
      swift_beginAccess();
      sub_25A10B980();
      swift_endAccess();
      v67(v32, v33);
      v42 = v72;
      v43 = v71;
LABEL_23:
      swift_beginAccess();
      v43(v42, v41, v33);
      return (*(v79 + 56))(v42, 0, 1, v33);
    }

    v41 = v78;
    if (v36 <= 60.0 || (v44 = *(a1 + *(v29 + 24)), v44 <= 120.0))
    {
      v51 = v74;
      swift_beginAccess();
      v42 = v72;
      v43 = v71;
      if (*(v51 + 16) == 1)
      {
        sub_25A10B950();
        v52 = v69;
        sub_25A10B970();
        v53 = v77;
        sub_25A10B960();
        v54 = v52;
        v55 = v67;
        v67(v54, v33);
        v55(v32, v33);
        swift_beginAccess();
        (*(v79 + 40))(v41, v53, v33);
LABEL_19:
        swift_beginAccess();
        *(v51 + 16) = 3;
        goto LABEL_23;
      }
    }

    else
    {
      v42 = v72;
      v43 = v71;
      if (v44 + -60.0 > v36)
      {
        v45 = v74;
        swift_beginAccess();
        if (*(v45 + 16) - 1 > 1)
        {
          swift_beginAccess();
          sub_25A10B980();
          swift_endAccess();
          swift_beginAccess();
          v61 = v77;
          v43(v77, v41, v33);
          sub_25A10B950();
          v63 = v62;
          v64 = v67;
          v67(v61, v33);
          if (v63 >= 60.0)
          {
            v64(v32, v33);
          }

          else
          {
            sub_25A10B970();
            v64(v32, v33);
            swift_beginAccess();
            (*(v79 + 40))(v41, v61, v33);
          }

          goto LABEL_23;
        }

        swift_beginAccess();
        v46 = v69;
        v66 = v32;
        v43(v69, v41, v33);
        sub_25A10B950();
        v47 = v73;
        sub_25A10B970();
        v48 = v77;
        sub_25A10B960();
        v49 = v67;
        v67(v47, v33);
        v49(v46, v33);
        swift_beginAccess();
        v50 = *(v79 + 40);
        v50(v41, v48, v33);
        swift_beginAccess();
        v43(v46, v41, v33);
        sub_25A10B960();
        v49(v46, v33);
        v49(v66, v33);
        swift_beginAccess();
        v50(v41, v48, v33);
        v51 = v74;
        goto LABEL_19;
      }

      v56 = v74;
      swift_beginAccess();
      if (*(v56 + 16) == 1)
      {
        sub_25A10B950();
        v57 = v69;
        sub_25A10B970();
        v58 = v77;
        sub_25A10B960();
        v59 = v57;
        v60 = v67;
        v67(v59, v33);
        v60(v32, v33);
        swift_beginAccess();
        (*(v79 + 40))(v41, v58, v33);
        swift_beginAccess();
        *(v56 + 16) = 2;
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    sub_25A10B980();
    swift_endAccess();
    v67(v32, v33);
    goto LABEL_23;
  }

  v27 = *(v79 + 56);

  return v27(a5, 1, 1, v15);
}

uint64_t sub_25A0F6560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerTimelineSchedule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F65C4()
{
  v1 = *(type metadata accessor for TimerTimelineSchedule() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(v1 + 64);
  v4 = sub_25A10BCB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_25A10B9A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v20 = *(v9 + 64);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v11 = v2 | v6 | v10;
  v12 = (v19 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v6 + 8) & ~v6;
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v10 + 8) & ~v10;
  v16 = *(v0 + v12);

  (*(v5 + 8))(v0 + v13, v4);
  v17 = *(v0 + v14);

  (*(v9 + 8))(v0 + v15, v8);

  return MEMORY[0x2821FE8E8](v0, v15 + v20, v11 | 7);
}

uint64_t sub_25A0F67E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerTimelineSchedule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0F684C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimerTimelineSchedule() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_25A10BCB0() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_25A10B9A0() - 8);
  v10 = *(v1 + v5);
  v11 = *(v1 + v8);
  v12 = v1 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_25A0F5AD8(v1 + v4, v1 + v7, v11, v12, a1);
}

unint64_t sub_25A0F69A8()
{
  result = qword_27F9F3328;
  if (!qword_27F9F3328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3330, &qword_25A10D530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3328);
  }

  return result;
}

uint64_t sub_25A0F6A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TimerTimelineSchedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A0F6A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25A0F6B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3288, &qword_25A10D290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_25A0F6BF8()
{
  sub_25A0F1E1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t ClockFaceKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C617469676964;
  }

  else
  {
    result = 0x676F6C616E61;
  }

  *v0;
  return result;
}

void sub_25A0F6CE8(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C616E61;
  if (*v1)
  {
    v2 = 0x6C617469676964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A0F6D24()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F6DA4()
{
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0F6E10()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F6E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C617469676964;
  }

  else
  {
    v4 = 0x676F6C616E61;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C617469676964;
  }

  else
  {
    v6 = 0x676F6C616E61;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A10C390();
  }

  return v9 & 1;
}

uint64_t sub_25A0F6FFC@<X0>(char *a1@<X8>)
{
  v2 = sub_25A10C2B0();

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

unint64_t ClockFaceKind.DescriptorLocalizedStringKey.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_25A0F7094(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "e_";
  }

  else
  {
    v5 = "ANALOG_CLOCK_TITLE";
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "ANALOG_CLOCK_TITLE";
  }

  else
  {
    v7 = "e_";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A10C390();
  }

  return v9 & 1;
}

uint64_t sub_25A0F713C()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F71B8()
{
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0F7220()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F72A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A10C2B0();

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

void sub_25A0F7300(unint64_t *a1@<X8>)
{
  v2 = "ANALOG_CLOCK_TITLE";
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = "e_";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_25A0F734C()
{
  result = qword_27F9F3348;
  if (!qword_27F9F3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3348);
  }

  return result;
}

unint64_t sub_25A0F73A4()
{
  result = qword_27F9F3350;
  if (!qword_27F9F3350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3358, &qword_25A10D6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3350);
  }

  return result;
}

unint64_t sub_25A0F740C()
{
  result = qword_27F9F3360;
  if (!qword_27F9F3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClockFaceLook.SwatchComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockFaceLook.SwatchComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A0F75D4()
{
  result = qword_27F9F3368;
  if (!qword_27F9F3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3368);
  }

  return result;
}

void static ClockFaceLook.swatch.getter(uint64_t a1@<X8>)
{
  *a1 = 0x686374617773;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 96) = 0;
}

uint64_t sub_25A0F7658()
{
  sub_25A0F76E0(v0, v3);
  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      v1 = v3[1];

      return v1;
    }

    v1 = v4[5];
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
    return v1;
  }

  if (v5)
  {
    v1 = v4[0];
    goto LABEL_8;
  }

  return v3[0];
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25A0F7764()
{
  sub_25A0F76E0(v0, &v5);
  if (v7 > 1u)
  {
    if (v7 == 2)
    {
      v1 = v5;
    }

    else
    {

      sub_25A0FA9BC(&v5, v4);
      sub_25A0FA9BC(&v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3400, &qword_25A10DCD8);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_25A10D810;
      sub_25A0F9F40(v4, v1 + 32);
      sub_25A0FA9BC(v3, v1 + 72);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else if (v7)
  {

    sub_25A0FA9BC(&v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3400, &qword_25A10DCD8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_25A10D820;
    sub_25A0FA9BC(v4, v1 + 32);
  }

  else
  {
    sub_25A0FAE70(&v5);
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t ClockFaceLook.localizedTitle.getter()
{
  sub_25A0F76E0(v0, v6);
  if (v8 <= 1u)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v3 = v7[1];
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v8 != 2)
  {
    v3 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
    goto LABEL_9;
  }

  v1 = v6[2];

  if (v1)
  {
LABEL_10:
    v4 = [objc_opt_self() mainBundle];
    v2 = sub_25A10B930();

    return v2;
  }

  return 0;
}

uint64_t static String.localized(key:tableSuffix:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  if (a4 && sub_25A10C0A0() >= 1)
  {
    MEMORY[0x25F84C6E0](a3, a4);
    sub_25A10C0F0();
    sub_25A10C0C0();
  }

  v7 = sub_25A10B930();

  return v7;
}

uint64_t ClockFaceLook.color(for:withFallback:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_25A0F9DC8(v6, a2, v2, v4, v5);
}

id sub_25A0F7B74(uint64_t a1, uint64_t a2)
{
  v4 = ClockFaceLook.identifier.getter(a1, a2);
  MEMORY[0x25F84C6E0](v4);

  MEMORY[0x25F84C6E0](47, 0xE100000000000000);
  MEMORY[0x25F84C6E0](a1, a2);
  if (qword_27F9F31E0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F9F36E0;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentTraitCollection];
  v9 = sub_25A10C050();

  v10 = [objc_opt_self() colorNamed:v9 inBundle:v7 compatibleWithTraitCollection:v8];

  return v10;
}

uint64_t ClockFaceLook.hash(into:)(uint64_t a1, uint64_t a2)
{
  ClockFaceLook.identifier.getter(a1, a2);
  sub_25A10C090();

  v2 = sub_25A0F7764();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_25A0F9F40(v4, v14);
      sub_25A0F9F40(v14, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3370, &qword_25A10D830);
      if (swift_dynamicCast())
      {
        sub_25A10C090();
      }

      sub_25A0F9F40(v14, v12);
      if (swift_dynamicCast())
      {
        v5 = *&v10;
        if (*&v10 == 0.0)
        {
          v5 = 0.0;
        }

        MEMORY[0x25F84CA10](*&v5);
        if (*(&v10 + 1) == 0.0)
        {
          v6 = 0.0;
        }

        else
        {
          v6 = *(&v10 + 1);
        }

        MEMORY[0x25F84CA10](*&v6);
        if (*&v11 == 0.0)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = *&v11;
        }

        MEMORY[0x25F84CA10](*&v7);
        if (*(&v11 + 1) == 0.0)
        {
          v8 = 0.0;
        }

        else
        {
          v8 = *(&v11 + 1);
        }

        MEMORY[0x25F84CA10](*&v8);
      }

      sub_25A0F9F40(v14, v13);
      if (swift_dynamicCast())
      {
        v10 = v12[0];
        v11 = v12[1];
        DynamicClockFaceColor.hash(into:)();
      }

      __swift_destroy_boxed_opaque_existential_1(v14);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

uint64_t ClockFaceLook.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3378, &qword_25A10D838);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A0F9FA4();
  sub_25A10C430();
  sub_25A0F81A8();
  LOBYTE(v21[0]) = 1;
  sub_25A10C310();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v7;

    sub_25A0F7658();
    if (v10)
    {
      LOBYTE(v21[0]) = 2;
      sub_25A10C310();
    }

    v17 = v4;
    v18 = v3;
    LOBYTE(v20[0]) = 0;
    sub_25A10C300();
    result = sub_25A0F7764();
    v11 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v12 = 0;
      v13 = result + 32;
      while (v12 < *(v11 + 16))
      {
        sub_25A0F9F40(v13, v20);
        v14 = v20[4];
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
        v15 = *(v14 + 16);
        sub_25A10C380();
        ++v12;
        result = __swift_destroy_boxed_opaque_existential_1(v20);
        v13 += 40;
        if (v22 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      (*(v17 + 8))(v19, v18);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  return result;
}

uint64_t sub_25A0F81A8()
{
  sub_25A0F76E0(v0, v2);
  if (v4 > 1u)
  {
    if (v4 == 2)
    {
      sub_25A0FAE70(v2);
      return 0x746E656964617267;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v3);
      __swift_destroy_boxed_opaque_existential_1(v2);
      return 0x6E6F5474696C7073;
    }
  }

  else if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v2);
    return 0x726F6C6F63;
  }

  else
  {
    sub_25A0FAE70(v2);
    return 0x6D6F747375636E75;
  }
}

uint64_t ClockFaceLook.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3388, &qword_25A10D840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A0F9FA4();
  sub_25A10C420();
  if (!v2)
  {
    v44 = v6;
    LOBYTE(v30) = 0;
    sub_25A10C2C0();
    v28 = v5;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v11 = sub_25A10C370();
    v12 = MEMORY[0x277D84F90];
    if ((v11 & 1) == 0)
    {
      v29 = a1;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
        sub_25A0FA048();
        sub_25A10C350();
        if (v41)
        {
          v30 = 0u;
          v31 = 0u;
          *&v32 = 0;
        }

        else
        {
          *(&v31 + 1) = &type metadata for SolidClockFaceColor;
          *&v32 = sub_25A0FA9D4();
          v17 = swift_allocObject();
          *&v30 = v17;
          v18 = v40;
          *(v17 + 16) = v39;
          *(v17 + 32) = v18;
        }

        sub_25A0FA09C(&v30, &v39);
        v13 = *(&v40 + 1);
        sub_25A0FA10C(&v39);
        if (!v13)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
          *(&v40 + 1) = &type metadata for DynamicClockFaceColor;
          v41 = sub_25A0FA174();
          *&v39 = swift_allocObject();
          sub_25A0FA1D8();
          sub_25A10C360();
          sub_25A0FA27C(&v39, &v30);
          a1 = v29;
        }

        sub_25A0FA09C(&v30, &v39);
        v14 = *(&v40 + 1);
        sub_25A0FA10C(&v39);
        if (!v14)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
          *(&v40 + 1) = &type metadata for AssetCatalogColor;
          v41 = sub_25A0FA2EC();
          sub_25A0FA340();
          sub_25A10C360();
          sub_25A0FA27C(&v39, &v30);
          a1 = v29;
        }

        sub_25A0FA09C(&v30, &v37);
        if (!v38)
        {
          break;
        }

        sub_25A0FA9BC(&v37, &v39);
        sub_25A0F9F40(&v39, &v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_25A0F9B64(0, v12[2] + 1, 1, v12);
        }

        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          v12 = sub_25A0F9B64((v15 > 1), v16 + 1, 1, v12);
        }

        __swift_destroy_boxed_opaque_existential_1(&v39);
        v12[2] = v16 + 1;
        sub_25A0FA9BC(&v37, &v12[5 * v16 + 4]);
        sub_25A0FA10C(&v30);
        __swift_project_boxed_opaque_existential_1(v42, v43);
        if (sub_25A10C370())
        {
          goto LABEL_19;
        }
      }

      sub_25A0FA10C(&v37);
      sub_25A0FA10C(&v30);
    }

LABEL_19:
    LOBYTE(v30) = 1;
    v19 = sub_25A10C2D0();
    v21 = sub_25A0FA8D0(v19, v20);

    LOBYTE(v30) = 2;
    v22 = sub_25A10C2D0();
    sub_25A0F8924(v21, v12, v22, v23, &v30);
    (*(v44 + 8))(v9, v28);

    v25 = v35;
    *(a2 + 64) = v34;
    *(a2 + 80) = v25;
    *(a2 + 96) = v36;
    v26 = v31;
    *a2 = v30;
    *(a2 + 16) = v26;
    v27 = v33;
    *(a2 + 32) = v32;
    *(a2 + 48) = v27;
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25A0F8924@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = a4;
      *(a5 + 96) = 2;
    }

    if (*(a2 + 16) == 2)
    {
      sub_25A0F9F40(a2 + 32, a5);
      sub_25A0F9F40(a2 + 72, a5 + 40);
      *(a5 + 80) = a3;
      *(a5 + 88) = a4;
      *(a5 + 96) = 3;
    }

    sub_25A10C210();
    sub_25A10C280();
    v13 = "will not update.";
    v8 = 0xD000000000000025;
LABEL_13:
    v7 = v13 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (a1)
  {
    if (*(a2 + 16) == 1)
    {
      sub_25A0F9F40(a2 + 32, a5);
      *(a5 + 40) = a3;
      *(a5 + 48) = a4;
      *(a5 + 96) = 1;
    }

    sub_25A10C210();
    sub_25A10C280();
    v13 = "actly 2 color, not: '";
    v8 = 0xD000000000000026;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    sub_25A10C210();
    sub_25A10C280();
    v7 = 0x800000025A10FC00;
    v8 = 0xD00000000000001FLL;
LABEL_14:
    MEMORY[0x25F84C6E0](v8, v7);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3370, &qword_25A10D830);
    v15 = MEMORY[0x25F84C730](a2, v14);
    MEMORY[0x25F84C6E0](v15);

    v16 = 39;
    v17 = 0xE100000000000000;
LABEL_15:
    MEMORY[0x25F84C6E0](v16, v17);
    sub_25A0FAE1C();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0xE000000000000000;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  if (!a4)
  {
    sub_25A10C210();
    sub_25A10C280();
    v16 = 0xD000000000000020;
    v17 = 0x800000025A10FC20;
    goto LABEL_15;
  }

  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 96) = 0;
}

uint64_t _s20MobileTimerUISupport13ClockFaceLookO10identifierSSvg_0()
{
  sub_25A0F76E0(v0, v6);
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v1 = v6[1];
      v2 = v6[2];

      if (v2)
      {
        return v1;
      }

LABEL_10:
      v4 = sub_25A0F7764();
      v1 = sub_25A10198C(v4);

      return v1;
    }

    v1 = v7[5];
    v3 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v3)
    {
      return v1;
    }

    goto LABEL_10;
  }

  if (v8)
  {
    v1 = v7[0];
    v3 = v7[1];
    goto LABEL_9;
  }

  return v6[0];
}

uint64_t sub_25A0F8CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65644965707974;
  v4 = 0xEE00726569666974;
  v5 = 0x800000025A10F9A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000025A10F9A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73726F6C6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6E65644965707974;
  if (*a2 == 1)
  {
    v5 = 0xEE00726569666974;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73726F6C6F63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A10C390();
  }

  return v11 & 1;
}

uint64_t sub_25A0F8E0C()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F8EBC()
{
  *v0;
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0F8F58()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F9004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A0FADCC();
  *a2 = result;
  return result;
}

void sub_25A0F9034(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEE00726569666974;
  v5 = 0x6E65644965707974;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000025A10F9A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73726F6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A0F90A0()
{
  v1 = 0x6E65644965707974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t sub_25A0F9108@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A0FADCC();
  *a1 = result;
  return result;
}

uint64_t sub_25A0F9148(uint64_t a1)
{
  v2 = sub_25A0F9FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A0F9184(uint64_t a1)
{
  v2 = sub_25A0F9FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClockFaceLook.hashValue.getter()
{
  sub_25A10C3E0();
  ClockFaceLook.hash(into:)(v2, v0);
  return sub_25A10C410();
}

uint64_t sub_25A0F9200()
{
  sub_25A10C3E0();
  ClockFaceLook.hash(into:)(v2, v0);
  return sub_25A10C410();
}

uint64_t sub_25A0F9244()
{
  sub_25A10C3E0();
  ClockFaceLook.hash(into:)(v2, v0);
  return sub_25A10C410();
}

uint64_t sub_25A0F92B4@<X0>(uint64_t *a1@<X8>)
{
  result = ClockFaceLook.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25A0F92F8()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F93DC()
{
  *v0;
  *v0;
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0F94AC()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F958C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A0FA884();
  *a2 = result;
  return result;
}

void sub_25A0F95BC(uint64_t *a1@<X8>)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = 0xEE0079617272615FLL;
  v5 = 0x746E656964617267;
  if (*v1 != 2)
  {
    v5 = 0x6E6F5474696C7073;
    v4 = 0xED0000625F615F65;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ClockFaceLook.SwatchComponent.description.getter()
{
  if (*v0)
  {
    result = 0x736C6172656D756ELL;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

MobileTimerUISupport::ClockFaceLook::SwatchComponent_optional __swiftcall ClockFaceLook.SwatchComponent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A10C2B0();

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

uint64_t sub_25A0F9700(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736C6172656D756ELL;
  }

  else
  {
    v4 = 0x756F72676B636162;
  }

  if (v3)
  {
    v5 = 0xEA0000000000646ELL;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x736C6172656D756ELL;
  }

  else
  {
    v6 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA0000000000646ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A10C390();
  }

  return v9 & 1;
}

uint64_t sub_25A0F97AC()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F9834()
{
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0F98A8()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0F992C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A10C2B0();

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

void sub_25A0F998C(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x736C6172656D756ELL;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A0F99D0()
{
  if (*v0)
  {
    result = 0x736C6172656D756ELL;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t ClockFaceLook.swatchColor(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_25A10BF50();
  if (v1)
  {
    v3 = 0x736C6172656D756ELL;
  }

  else
  {
    v3 = 0x756F72676B636162;
  }

  if (v1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000646ELL;
  }

  v5 = sub_25A0F7B74(v3, v4);

  if (!v5)
  {
    return v2;
  }

  v6 = sub_25A10BF30();

  return v6;
}

uint64_t static String.localized(key:table:comment:)()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_25A10B930();

  return v1;
}

void *sub_25A0F9B64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3400, &qword_25A10DCD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3370, &qword_25A10D830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A0F9CAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F33F8, &qword_25A10DCD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25A0F9DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = *(a5 + 8);
  v13 = sub_25A10C340();
  v15 = sub_25A0F7B74(v13, v14);

  if (v15)
  {
    a2 = sub_25A10BF30();
  }

  else
  {
  }

  (*(v8 + 8))(v11, a4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25A0F9F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25A0F9FA4()
{
  result = qword_27F9F3380;
  if (!qword_27F9F3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3380);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_25A0FA048()
{
  result = qword_27F9F3390;
  if (!qword_27F9F3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3390);
  }

  return result;
}

uint64_t sub_25A0FA09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3398, &qword_25A10D848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0FA10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3398, &qword_25A10D848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A0FA174()
{
  result = qword_27F9F33A0;
  if (!qword_27F9F33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33A0);
  }

  return result;
}

unint64_t sub_25A0FA1D8()
{
  result = qword_27F9F33A8;
  if (!qword_27F9F33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33A8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F84D180);
  }

  return result;
}

uint64_t sub_25A0FA27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3398, &qword_25A10D848);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A0FA2EC()
{
  result = qword_27F9F33B0;
  if (!qword_27F9F33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33B0);
  }

  return result;
}

unint64_t sub_25A0FA340()
{
  result = qword_27F9F33B8;
  if (!qword_27F9F33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33B8);
  }

  return result;
}

uint64_t _s20MobileTimerUISupport13ClockFaceLookO2eeoiySbAC_ACtFZ_0()
{
  v0 = sub_25A0F81A8();
  v2 = v1;
  if (v0 == sub_25A0F81A8() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_25A10C390();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = sub_25A0F7658();
  v7 = v6;
  v8 = sub_25A0F7658();
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_11:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v10 = sub_25A10C390();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_14:
  v11 = ClockFaceLook.identifier.getter(v8, v9);
  v13 = v12;
  if (v11 == ClockFaceLook.identifier.getter(v11, v12) && v13 == v14)
  {

    goto LABEL_18;
  }

  v15 = sub_25A10C390();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v16 = sub_25A0F7764();
  result = sub_25A0F7764();
  v18 = result;
  v32 = *(result + 16);
  if (v32)
  {
    v19 = 0;
    v20 = 32;
    v24 = result;
    v25 = v16;
    while (v19 < *(v18 + 16))
    {
      result = sub_25A0F9F40(v18 + v20, v40);
      v21 = *(v16 + 16);
      if (v19 == v21)
      {

LABEL_41:
        __swift_destroy_boxed_opaque_existential_1(v40);
        return 0;
      }

      if (v19 >= v21)
      {
        goto LABEL_44;
      }

      sub_25A0F9F40(v16 + v20, v39);
      sub_25A0F9F40(v40, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3370, &qword_25A10D830);
      if (swift_dynamicCast())
      {
        v28 = v38;
        v30 = v37;
        sub_25A0F9F40(v39, &v33);
        if ((swift_dynamicCast() & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v30, v37), vceqq_f64(v28, v38)))) & 1) == 0)
        {
LABEL_40:

          __swift_destroy_boxed_opaque_existential_1(v39);
          goto LABEL_41;
        }
      }

      sub_25A0F9F40(v40, &v33);
      if (swift_dynamicCast())
      {
        v22 = v37;
        sub_25A0F9F40(v39, &v33);
        if (swift_dynamicCast())
        {
          if (*&v22 == *&v37)
          {

            v18 = v24;
            v16 = v25;
          }

          else
          {
            v23 = sub_25A10C390();

            v18 = v24;
            v16 = v25;
            if ((v23 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
        }
      }

      sub_25A0FA9BC(v40, &v37);
      if (swift_dynamicCast())
      {
        v29 = v35;
        v31 = v36;
        v26 = v34;
        v27 = v33;
        sub_25A0FA9BC(v39, &v37);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v27, v33), vceqq_f64(v26, v34)), vuzp1q_s32(vceqq_f64(v29, v35), vceqq_f64(v31, v36))))) & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v39);
      }

      ++v19;
      v20 += 40;
      if (v32 == v19)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_38:

    return 1;
  }

  return result;
}

uint64_t sub_25A0FA884()
{
  v0 = sub_25A10C2B0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25A0FA8D0(uint64_t a1, uint64_t a2)
{

  v4 = sub_25A10C2B0();

  if (v4 > 3)
  {
    sub_25A10C210();

    MEMORY[0x25F84C6E0](a1, a2);
    sub_25A0FAE1C();
    swift_allocError();
    *v5 = 0xD000000000000010;
    *(v5 + 8) = 0x800000025A10FC50;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_25A0FA9BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_25A0FA9D4()
{
  result = qword_27F9F33C0;
  if (!qword_27F9F33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33C0);
  }

  return result;
}

unint64_t sub_25A0FAA3C()
{
  result = qword_27F9F33C8;
  if (!qword_27F9F33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33C8);
  }

  return result;
}

unint64_t sub_25A0FAA94()
{
  result = qword_27F9F33D0;
  if (!qword_27F9F33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33D0);
  }

  return result;
}

unint64_t sub_25A0FAAE8(uint64_t a1)
{
  result = sub_25A0FAB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25A0FAB10()
{
  result = qword_27F9F33D8;
  if (!qword_27F9F33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33D8);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25A0FAB9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A0FABD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_25A0FAC2C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

unint64_t sub_25A0FACC8()
{
  result = qword_27F9F33E0;
  if (!qword_27F9F33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33E0);
  }

  return result;
}

unint64_t sub_25A0FAD20()
{
  result = qword_27F9F33E8;
  if (!qword_27F9F33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33E8);
  }

  return result;
}

unint64_t sub_25A0FAD78()
{
  result = qword_27F9F33F0;
  if (!qword_27F9F33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F33F0);
  }

  return result;
}

uint64_t sub_25A0FADCC()
{
  v0 = sub_25A10C2B0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25A0FAE1C()
{
  result = qword_27F9F3408;
  if (!qword_27F9F3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3408);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25A0FAEC0(uint64_t a1, unsigned int a2)
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

uint64_t sub_25A0FAF08(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ClockFaceLookType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockFaceLookType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A0FB0BC()
{
  result = qword_27F9F3410;
  if (!qword_27F9F3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3410);
  }

  return result;
}

uint64_t CityAndTimeSnippet.init(cityName:timeInCity:dayAndTimeZoneOffsetString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for CityAndTimeSnippet();
  v11 = *(v10 + 20);
  v12 = sub_25A10B9A0();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t type metadata accessor for CityAndTimeSnippet()
{
  result = qword_27F9F3430;
  if (!qword_27F9F3430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CityAndTimeSnippet.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3418, &qword_25A10DE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_25A10BC50();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3420, &qword_25A10DE78);
  sub_25A0FB320(v0, &v4[*(v5 + 44)]);
  sub_25A10BD00();
  sub_25A0FC10C(&qword_27F9F3428, &qword_27F9F3418, &qword_25A10DE70);
  sub_25A10BF00();
  return sub_25A0F2A3C(v4, &qword_27F9F3418, &qword_25A10DE70);
}

uint64_t sub_25A0FB320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3440, &qword_25A10DF18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3448, &qword_25A10DF20);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v10 = (&v47 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3450, &qword_25A10DF28);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3458, &qword_25A10DF30);
  v16 = *(v15 - 8);
  v47 = v15 - 8;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8);
  v54 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v50 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v52 = &v47 - v22;
  v53 = sub_25A10BC80();
  LOBYTE(v64) = 1;
  sub_25A0FB8AC(a1, v71);
  *&v63[7] = v71[0];
  *&v63[23] = v71[1];
  *&v63[39] = v71[2];
  *&v63[55] = v71[3];
  v51 = v64;
  v23 = *(type metadata accessor for CityAndTimeSnippet() + 20);
  v24 = type metadata accessor for LocalizedHrMinView();
  v25 = v24[6];
  v26 = sub_25A10B9A0();
  (*(*(v26 - 8) + 16))(v10 + v25, a1 + v23, v26);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F32A0, &qword_25A10D370);
  swift_storeEnumTagMultiPayload();
  v27 = v10 + v24[5];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *(v10 + v24[7]) = 0;
  *(v10 + v24[8]) = 1;
  v28 = sub_25A10BD70();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  v29 = sub_25A10BDB0();
  sub_25A0F2A3C(v7, &qword_27F9F3440, &qword_25A10DF18);
  KeyPath = swift_getKeyPath();
  v31 = (v10 + *(v49 + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  sub_25A10BD80();
  sub_25A0FBFFC();
  v32 = v48;
  sub_25A10BEC0();
  sub_25A0F2A3C(v10, &qword_27F9F3448, &qword_25A10DF20);
  *(v32 + *(v12 + 44)) = sub_25A10BCC0();
  sub_25A10C000();
  sub_25A10BB80();
  v33 = v50;
  sub_25A0FC154(v32, v50, &qword_27F9F3450, &qword_25A10DF28);
  v34 = (v33 + *(v47 + 44));
  v35 = v69;
  v34[4] = v68;
  v34[5] = v35;
  v34[6] = v70;
  v36 = v65;
  *v34 = v64;
  v34[1] = v36;
  v37 = v67;
  v34[2] = v66;
  v34[3] = v37;
  v38 = v52;
  sub_25A0FC154(v33, v52, &qword_27F9F3458, &qword_25A10DF30);
  v39 = v54;
  sub_25A0FC1BC(v38, v54);
  v40 = v53;
  v55[0] = v53;
  v55[1] = 0;
  LOBYTE(v27) = v51;
  v56[0] = v51;
  *&v56[1] = *v63;
  *&v56[17] = *&v63[16];
  *&v56[33] = *&v63[32];
  *&v56[49] = *&v63[48];
  v41 = *&v63[63];
  *&v56[64] = *&v63[63];
  v42 = *v56;
  *a2 = v53;
  *(a2 + 16) = v42;
  v43 = *&v56[16];
  v44 = *&v56[48];
  *(a2 + 48) = *&v56[32];
  *(a2 + 64) = v44;
  *(a2 + 32) = v43;
  *(a2 + 80) = v41;
  *(a2 + 88) = 0x4028000000000000;
  *(a2 + 96) = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3480, &qword_25A10DFD0);
  sub_25A0FC1BC(v39, a2 + *(v45 + 64));
  sub_25A0FC22C(v55, v57);
  sub_25A0F2A3C(v38, &qword_27F9F3458, &qword_25A10DF30);
  sub_25A0F2A3C(v39, &qword_27F9F3458, &qword_25A10DF30);
  v57[0] = v40;
  v57[1] = 0;
  v58 = v27;
  v60 = *&v63[16];
  v61 = *&v63[32];
  *v62 = *&v63[48];
  *&v62[15] = *&v63[63];
  v59 = *v63;
  return sub_25A0F2A3C(v57, &qword_27F9F3488, &qword_25A10DFD8);
}

uint64_t sub_25A0FB8AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CityAndTimeSnippet() + 24));
  v47 = *v3;
  v49 = v3[1];
  sub_25A0FC29C();

  v4 = sub_25A10BE90();
  v6 = v5;
  v8 = v7;
  sub_25A10BD40();
  v9 = sub_25A10BE30();
  v11 = v10;
  v13 = v12;

  sub_25A0F4ABC(v4, v6, v8 & 1);

  sub_25A10BDA0();
  v14 = sub_25A10BE00();
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_25A0F4ABC(v9, v11, v13 & 1);

  sub_25A10BCD0();
  v18 = sub_25A10BE10();
  v44 = v19;
  v45 = v18;
  v43 = v20;
  v46 = v21;
  sub_25A0F4ABC(v14, v16, v4 & 1);

  v48 = *a1;
  v50 = a1[1];

  v22 = sub_25A10BE90();
  v24 = v23;
  LOBYTE(v16) = v25;
  sub_25A10BD60();
  v26 = sub_25A10BE30();
  v28 = v27;
  v30 = v29;

  sub_25A0F4ABC(v22, v24, v16 & 1);

  sub_25A10BD90();
  v31 = sub_25A10BE00();
  v33 = v32;
  LOBYTE(v16) = v34;
  sub_25A0F4ABC(v26, v28, v30 & 1);

  sub_25A10BCC0();
  v35 = sub_25A10BE10();
  v37 = v36;
  LOBYTE(v26) = v38;
  v40 = v39;
  sub_25A0F4ABC(v31, v33, v16 & 1);

  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 16) = v43 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = v35;
  *(a2 + 40) = v37;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v40;
  sub_25A0F55E8(v45, v44, v43 & 1);

  sub_25A0F55E8(v35, v37, v26 & 1);

  sub_25A0F4ABC(v35, v37, v26 & 1);

  sub_25A0F4ABC(v45, v44, v43 & 1);
}

uint64_t sub_25A0FBBE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3418, &qword_25A10DE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_25A10BC50();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3420, &qword_25A10DE78);
  sub_25A0FB320(v0, &v4[*(v5 + 44)]);
  sub_25A10BD00();
  sub_25A0FC10C(&qword_27F9F3428, &qword_27F9F3418, &qword_25A10DE70);
  sub_25A10BF00();
  return sub_25A0F2A3C(v4, &qword_27F9F3418, &qword_25A10DE70);
}

uint64_t sub_25A0FBD1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25A10B9A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25A0FBDDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25A10B9A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25A0FBE80()
{
  result = sub_25A10B9A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25A0FBEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3418, &qword_25A10DE70);
  sub_25A0FC10C(&qword_27F9F3428, &qword_27F9F3418, &qword_25A10DE70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25A0FBFA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25A10BBB0();
  *a1 = result;
  return result;
}

uint64_t sub_25A0FBFD0(uint64_t *a1)
{
  v1 = *a1;

  return sub_25A10BBC0();
}

unint64_t sub_25A0FBFFC()
{
  result = qword_27F9F3460;
  if (!qword_27F9F3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3448, &qword_25A10DF20);
    sub_25A0FC0B4();
    sub_25A0FC10C(&qword_27F9F3470, &qword_27F9F3478, &qword_25A10DFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3460);
  }

  return result;
}

unint64_t sub_25A0FC0B4()
{
  result = qword_27F9F3468;
  if (!qword_27F9F3468)
  {
    type metadata accessor for LocalizedHrMinView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3468);
  }

  return result;
}

uint64_t sub_25A0FC10C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A0FC154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25A0FC1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3458, &qword_25A10DF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A0FC22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3488, &qword_25A10DFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A0FC29C()
{
  result = qword_27F9F3490;
  if (!qword_27F9F3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3490);
  }

  return result;
}

MobileTimerUISupport::ClockFaceNumerals_optional __swiftcall ClockFaceNumerals.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A10C2B0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_25A0FC364(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x636962617261;
  v5 = 0xE500000000000000;
  v6 = 0x6E616D6F72;
  v7 = 0xEA00000000006972;
  v8 = 0x6167616E61766564;
  if (v2 != 3)
  {
    v8 = 0x6573656E696863;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E49636962617261;
    v3 = 0xEB00000000636964;
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

uint64_t sub_25A0FC408()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A0FC4F0()
{
  *v0;
  *v0;
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A0FC5C4()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t ClockFaceNumerals.id.getter()
{
  v1 = *v0;
  v2 = 0x636962617261;
  v3 = 0x6E616D6F72;
  v4 = 0x6167616E61766564;
  if (v1 != 3)
  {
    v4 = 0x6573656E696863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E49636962617261;
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

unint64_t sub_25A0FC818()
{
  result = qword_27F9F3498;
  if (!qword_27F9F3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3498);
  }

  return result;
}

unint64_t sub_25A0FC870()
{
  result = qword_27F9F34A0;
  if (!qword_27F9F34A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F34A8, &qword_25A10E0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F34A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClockFaceNumerals(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockFaceNumerals(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A0FCA60()
{
  result = qword_27F9F34B0[0];
  if (!qword_27F9F34B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9F34B0);
  }

  return result;
}

uint64_t sub_25A0FCABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25A0FCB5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v5;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for CPUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t sub_25A0FCD08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  sub_25A0FCABC(a1);
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_25A0FCD70(uint64_t a1)
{
  v3 = *v1;
  sub_25A0FD0C4(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_25A0FCDEC(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_25A0FCD08(v9);
  return sub_25A0FCF00;
}

void sub_25A0FCF00(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_25A0FD0C4(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_25A0FD0C4((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25A0FD0C4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = v1[2];
  swift_beginAccess();
  os_unfair_lock_lock(v8 + 4);
  swift_endAccess();
  (*(v4 + 16))(v7, a1, v3);
  sub_25A0FCB5C(v7);
  swift_beginAccess();
  os_unfair_lock_unlock(v8 + 4);
  return swift_endAccess();
}

uint64_t sub_25A0FD24C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IntervalPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_25A10BB70();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3538, &qword_25A10E230);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3540, &qword_25A10E238);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *(v1 + 32);
  v49[1] = *(v1 + 16);
  v49[2] = v16;
  v49[0] = *v1;
  v50 = *(v1 + 48);
  v52 = v49[0];
  v64 = v49[0];
  v51 = v16;
  v67 = v16;
  *v68 = v50;
  v46 = v49;
  sub_25A0FDB64(&v52, v47);
  sub_25A0FDBC0(&v51, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3548, &qword_25A10E240);
  sub_25A0FDC1C();
  sub_25A0FC29C();
  sub_25A10BFA0();
  sub_25A10BB60();
  v17 = sub_25A0FC10C(&qword_27F9F3568, &qword_27F9F3538, &qword_25A10E230);
  v18 = MEMORY[0x277CDDB70];
  v19 = v15;
  v20 = v6;
  v21 = v7;
  v22 = v41;
  sub_25A10BEE0();
  (*(v42 + 8))(v20, v22);
  (*(v38 + 8))(v10, v21);
  *&v67 = v21;
  *(&v67 + 1) = v22;
  *v68 = v17;
  *&v68[8] = v18;
  swift_getOpaqueTypeConformance2();
  v23 = v43;
  v24 = v39;
  sub_25A10BEF0();
  (*(v40 + 8))(v19, v24);
  v25 = sub_25A10BFF0();
  v27 = v26;
  v45 = v49;
  v44 = v49;
  v28 = sub_25A10BC60();
  v47[0] = 1;
  sub_25A0FE850(sub_25A0FE3E4, sub_25A0FE584, &v67);
  v59 = *&v68[80];
  v60 = *&v68[96];
  v61 = *&v68[112];
  v62 = *&v68[128];
  v55 = *&v68[16];
  v56 = *&v68[32];
  v57 = *&v68[48];
  v58 = *&v68[64];
  v53 = v67;
  v54 = *v68;
  v63[6] = *&v68[80];
  v63[7] = *&v68[96];
  v63[8] = *&v68[112];
  v63[9] = *&v68[128];
  v63[2] = *&v68[16];
  v63[3] = *&v68[32];
  v63[4] = *&v68[48];
  v63[5] = *&v68[64];
  v63[0] = v67;
  v63[1] = *v68;
  sub_25A0FF410(&v53, &v64, &qword_27F9F3570, &qword_25A10E250);
  sub_25A0F2A3C(v63, &qword_27F9F3570, &qword_25A10E250);
  *&v48[55] = v56;
  *&v48[39] = v55;
  *&v48[103] = v59;
  *&v48[119] = v60;
  *&v48[135] = v61;
  *&v48[151] = v62;
  *&v48[71] = v57;
  *&v48[87] = v58;
  *&v48[7] = v53;
  *&v48[23] = v54;
  *(&v65[7] + 1) = *&v48[112];
  *(&v65[8] + 1) = *&v48[128];
  *(&v65[9] + 1) = *&v48[144];
  *(&v65[3] + 1) = *&v48[48];
  *(&v65[4] + 1) = *&v48[64];
  *(&v65[5] + 1) = *&v48[80];
  *(&v65[6] + 1) = *&v48[96];
  *(v65 + 1) = *v48;
  *(&v65[1] + 1) = *&v48[16];
  LOBYTE(v10) = v47[0];
  v64 = v28;
  LOBYTE(v65[0]) = v47[0];
  *(&v65[2] + 1) = *&v48[32];
  *&v65[10] = *(&v62 + 1);
  *(&v65[10] + 1) = v25;
  v66 = v27;
  v29 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3578, &qword_25A10E258) + 36);
  v30 = v65[10];
  *(v29 + 160) = v65[9];
  *(v29 + 176) = v30;
  v31 = v65[6];
  *(v29 + 96) = v65[5];
  *(v29 + 112) = v31;
  v32 = v65[8];
  *(v29 + 128) = v65[7];
  *(v29 + 144) = v32;
  v33 = v65[2];
  *(v29 + 32) = v65[1];
  *(v29 + 48) = v33;
  v34 = v65[4];
  *(v29 + 64) = v65[3];
  *(v29 + 80) = v34;
  v35 = v65[0];
  *v29 = v64;
  *(v29 + 16) = v35;
  *&v68[113] = *&v48[112];
  *&v68[129] = *&v48[128];
  *v69 = *&v48[144];
  v36 = *&v48[32];
  *&v68[49] = *&v48[48];
  *&v68[65] = *&v48[64];
  *&v68[81] = *&v48[80];
  *&v68[97] = *&v48[96];
  *&v68[1] = *v48;
  *&v68[17] = *&v48[16];
  *(v29 + 192) = v66;
  v67 = v28;
  v68[0] = v10;
  *&v68[33] = v36;
  *&v69[15] = *&v48[159];
  v70 = v25;
  v71 = v27;
  sub_25A0FF410(&v64, v47, &qword_27F9F3580, &qword_25A10E260);
  return sub_25A0F2A3C(&v67, &qword_27F9F3580, &qword_25A10E260);
}

uint64_t sub_25A0FDA1C(uint64_t a1)
{
  v6 = *(a1 + 16);
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25A0FF2E8(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3620, &qword_25A10E3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3560, &qword_25A10E248);
  sub_25A0FF320();
  sub_25A0FC10C(&qword_27F9F3558, &qword_27F9F3560, &qword_25A10E248);
  return sub_25A10BFE0();
}

unint64_t sub_25A0FDC1C()
{
  result = qword_27F9F3550;
  if (!qword_27F9F3550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3548, &qword_25A10E240);
    sub_25A0FC10C(&qword_27F9F3558, &qword_27F9F3560, &qword_25A10E248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3550);
  }

  return result;
}

double sub_25A0FDCCC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  v3 = sub_25A10BC60();
  v26 = 1;
  sub_25A0FE5BC(sub_25A0FF400, sub_25A0FF408, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_25A0FF410(&v27, v12, &qword_27F9F3638, &qword_25A10E3D0);
  sub_25A0F2A3C(v39, &qword_27F9F3638, &qword_25A10E3D0);
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[11] + 7) = v38;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  *(&v25[3] + 7) = v30;
  v4 = v25[9];
  *(a2 + 145) = v25[8];
  *(a2 + 161) = v4;
  *(a2 + 177) = v25[10];
  *(a2 + 192) = *(&v25[10] + 15);
  v5 = v25[5];
  *(a2 + 81) = v25[4];
  *(a2 + 97) = v5;
  v6 = v25[7];
  *(a2 + 113) = v25[6];
  *(a2 + 129) = v6;
  v7 = v25[1];
  *(a2 + 17) = v25[0];
  *(a2 + 33) = v7;
  result = *&v25[2];
  v9 = v25[3];
  *(a2 + 49) = v25[2];
  v10 = v26;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 65) = v9;
  return result;
}

double sub_25A0FDEA4@<D0>(uint64_t a1@<X8>)
{
  DWORD1(v26) = sub_25A10C340() >> 32;
  *(&v26 + 1) = v2;
  sub_25A0FC29C();
  v3 = sub_25A10BE90();
  v5 = v4;
  v7 = v6;
  sub_25A10BD60();
  v8 = sub_25A10BE30();
  v10 = v9;
  v12 = v11;

  sub_25A0F4ABC(v3, v5, v7 & 1);

  LODWORD(v26) = sub_25A10BCC0();
  v13 = sub_25A10BE10();
  v15 = v14;
  v17 = v16;
  sub_25A0F4ABC(v8, v10, v12 & 1);

  sub_25A10BD90();
  v18 = sub_25A10BE00();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  sub_25A0F4ABC(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  sub_25A10C000();
  sub_25A10BB00();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v26;
  *(a1 + 72) = v27;
  result = *&v28;
  *(a1 + 88) = v28;
  return result;
}

uint64_t sub_25A0FE084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  v24 = a1[1];
  sub_25A0FC29C();

  v3 = sub_25A10BE90();
  v5 = v4;
  v7 = v6;
  sub_25A10BD50();
  v8 = sub_25A10BE30();
  v10 = v9;
  v12 = v11;

  sub_25A0F4ABC(v3, v5, v7 & 1);

  sub_25A10BCD0();
  v13 = sub_25A10BE10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25A0F4ABC(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  result = sub_25A10BF60();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v21;
  *(a2 + 64) = 0x3FE999999999999ALL;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_25A0FE208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *(a1 + 24);
  HIDWORD(v26) = sub_25A10C340() >> 32;
  sub_25A0FC29C();
  v3 = sub_25A10BE90();
  v5 = v4;
  v7 = v6;
  sub_25A10BD60();
  v8 = sub_25A10BE30();
  v10 = v9;
  v12 = v11;

  sub_25A0F4ABC(v3, v5, v7 & 1);

  LODWORD(v26) = sub_25A10BCC0();
  v13 = sub_25A10BE10();
  v15 = v14;
  v17 = v16;
  sub_25A0F4ABC(v8, v10, v12 & 1);

  sub_25A10BD90();
  v18 = sub_25A10BE00();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  sub_25A0F4ABC(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  result = sub_25A10BF60();
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10 & 1;
  *(a2 + 17) = v26;
  *(a2 + 20) = *(&v26 + 3);
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 49) = *v27;
  *(a2 + 52) = *&v27[3];
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_25A0FE3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  v24 = a1[1];
  sub_25A0FC29C();

  v3 = sub_25A10BE90();
  v5 = v4;
  v7 = v6;
  sub_25A10BD50();
  v8 = sub_25A10BE30();
  v10 = v9;
  v12 = v11;

  sub_25A0F4ABC(v3, v5, v7 & 1);

  sub_25A10BCD0();
  v13 = sub_25A10BE10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25A0F4ABC(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  result = sub_25A10BC60();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v21;
  *(a2 + 64) = 0x3FE999999999999ALL;
  *(a2 + 72) = result;
  *(a2 + 80) = sub_25A0FE58C;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_25A0FE5BC@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  a1(&v39);
  v24 = v43;
  v25 = v44;
  v26 = v45;
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v27[0] = v39;
  v27[1] = v40;
  v27[2] = v41;
  v27[3] = v42;
  v27[4] = v43;
  v27[5] = v44;
  v28 = v45;
  sub_25A0FF410(&v20, v35, &qword_27F9F3640, &qword_25A10E3D8);
  v5 = sub_25A0F2A3C(v27, &qword_27F9F3640, &qword_25A10E3D8);
  a2(&v39, v5);
  v31 = v41;
  v32 = v42;
  v29 = v39;
  v30 = v40;
  v34[2] = v41;
  v34[3] = v42;
  v34[4] = v43;
  v34[1] = v40;
  v33 = v43;
  v34[0] = v39;
  sub_25A0FF410(&v29, v35, &qword_27F9F3648, &unk_25A10E3E0);
  sub_25A0F2A3C(v34, &qword_27F9F3648, &unk_25A10E3E0);
  v17 = v24;
  v18 = v25;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v38[3] = v32;
  v38[4] = v33;
  v38[1] = v30;
  v38[2] = v31;
  v38[0] = v29;
  v35[0] = v20;
  v35[1] = v21;
  v35[4] = v24;
  v35[5] = v25;
  v35[2] = v22;
  v35[3] = v23;
  v10 = v24;
  v11 = v25;
  v37[3] = v32;
  v37[4] = v33;
  v37[0] = v29;
  v37[1] = v30;
  v37[2] = v31;
  v19 = v26;
  v36 = v26;
  *v12 = v26;
  *&v12[8] = v29;
  *&v12[72] = v33;
  *&v12[56] = v32;
  *&v12[40] = v31;
  *&v12[24] = v30;
  v6 = v20;
  v7 = v21;
  v8 = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v8;
  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 96) = *v12;
  *(a3 + 112) = *&v12[16];
  *(a3 + 64) = v10;
  *(a3 + 80) = v11;
  *(a3 + 176) = *&v12[80];
  *(a3 + 144) = *&v12[48];
  *(a3 + 160) = *&v12[64];
  *(a3 + 128) = *&v12[32];
  sub_25A0FF410(v35, &v39, &qword_27F9F3640, &qword_25A10E3D8);
  sub_25A0FF410(v37, &v39, &qword_27F9F3648, &unk_25A10E3E0);
  sub_25A0F2A3C(v38, &qword_27F9F3648, &unk_25A10E3E0);
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  return sub_25A0F2A3C(&v39, &qword_27F9F3640, &qword_25A10E3D8);
}

uint64_t sub_25A0FE850@<X0>(void *(*a1)(__int128 *__return_ptr)@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1(&v29);
  v6 = v29;
  v28[0] = *(&v30 + 1);
  *(v28 + 3) = DWORD1(v30);
  v7 = *(&v30 + 1);
  v8 = *v31;
  v27 = *&v31[8];
  v9 = *&v31[24];
  v10 = v30;
  a2(&v29, v5);
  v21 = *v31;
  v22 = *&v31[16];
  v23 = v32;
  v24 = v33;
  v19 = v29;
  v20 = v30;
  v25[2] = *v31;
  v25[3] = *&v31[16];
  v25[4] = v32;
  v25[5] = v33;
  v25[0] = v29;
  v25[1] = v30;
  sub_25A0FF410(&v19, v26, &qword_27F9F3618, &qword_25A10E340);
  sub_25A0F2A3C(v25, &qword_27F9F3618, &qword_25A10E340);
  v12 = v21;
  v11 = v22;
  *v31 = v21;
  *&v31[16] = v22;
  v13 = v19;
  v14 = v20;
  v29 = v19;
  v30 = v20;
  v26[0] = v19;
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  v16 = v23;
  v15 = v24;
  v32 = v23;
  v33 = v24;
  v26[4] = v23;
  v26[5] = v24;
  *(a3 + 40) = v27;
  *a3 = v6;
  *(a3 + 16) = v10;
  *(a3 + 20) = *(v28 + 3);
  *(a3 + 17) = v28[0];
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 56) = v9;
  *(a3 + 128) = v16;
  *(a3 + 144) = v15;
  *(a3 + 96) = v12;
  *(a3 + 112) = v11;
  *(a3 + 64) = v13;
  *(a3 + 80) = v14;
  sub_25A0F55E8(v6, *(&v6 + 1), v10 & 1);

  sub_25A0FF410(v26, &v18, &qword_27F9F3618, &qword_25A10E340);
  sub_25A0F2A3C(&v29, &qword_27F9F3618, &qword_25A10E340);
  sub_25A0F4ABC(v6, *(&v6 + 1), v10 & 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25A0FEA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25A0FEAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A0FEB04()
{
  result = qword_27F9F3588;
  if (!qword_27F9F3588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3578, &qword_25A10E258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3540, &qword_25A10E238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3538, &qword_25A10E230);
    sub_25A10BB70();
    sub_25A0FC10C(&qword_27F9F3568, &qword_27F9F3538, &qword_25A10E230);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25A0FC10C(qword_27F9F3590, &qword_27F9F3580, &qword_25A10E260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3588);
  }

  return result;
}

uint64_t sub_25A0FEC90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = sub_25A10C030();
  if (v4 <= 0x3F)
  {
    result = sub_25A10BFD0();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25A0FED30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v6 + 16) & ~v6) + v7 + ((((v6 + 16) & ~v6) + v7 + (v6 | 7) + ((v7 + v6) & ~v6)) & ~(v6 | 7));
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_25A0FEED0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v10 + v9) & ~v9) + v10;
  v12 = ((v9 + 16) & ~v9) + v10 + ((((v9 + 16) & ~v9) + (v9 | 7) + v11) & ~(v9 | 7));
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_57:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v12] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v15)
  {
    goto LABEL_30;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = (&a1[v9 + 16] & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v7 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_25A0FF1E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_25A10BBF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25A0FF214(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25A10BC00();
}

uint64_t sub_25A0FF244@<X0>(void *a1@<X8>)
{
  result = sub_25A10BB90();
  *a1 = v3;
  return result;
}

uint64_t sub_25A0FF298()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_25A0FF320()
{
  result = qword_27F9F3628;
  if (!qword_27F9F3628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3620, &qword_25A10E3C8);
    sub_25A0FF3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3628);
  }

  return result;
}

unint64_t sub_25A0FF3AC()
{
  result = qword_27F9F3630;
  if (!qword_27F9F3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3630);
  }

  return result;
}

double sub_25A0FF400@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25A0FDEA4(a1);
}

uint64_t sub_25A0FF410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t DateProvider.__allocating_init(locale:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DateProvider.init(locale:)(a1);
  return v5;
}

uint64_t sub_25A0FF4F8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DateProvider.init(locale:)(uint64_t a1)
{
  v26 = a1;
  v2 = sub_25A10B9A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25A10BA00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25A10BA20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A10BA60();
  (*(v8 + 104))(v11, *MEMORY[0x277CC9830], v7);
  sub_25A10BA10();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 32))(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_calendar, v16, v12);
  sub_25A10B940();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_referenceDate, v6, v2);
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter) = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_fullDateFormatter) = v19;
  v20 = *(v1 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter);
  v21 = sub_25A10C050();
  [v20 setDateFormat_];

  v22 = v26;
  sub_25A0FF8B0();
  v23 = sub_25A10B9F0();
  (*(*(v23 - 8) + 8))(v22, v23);
  return v1;
}

void sub_25A0FF8B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter);
  v2 = sub_25A10B9D0();
  [v1 setLocale_];

  v3 = sub_25A10C050();
  [v1 setLocalizedDateFormatFromTemplate_];

  v4 = *(v0 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_amPmFormatter);
  v5 = sub_25A10B9D0();
  [v4 setLocale_];

  v6 = *(v0 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_fullDateFormatter);
  v7 = sub_25A10B9D0();
  [v6 setLocale_];

  v8 = sub_25A10C050();
  [v6 setLocalizedDateFormatFromTemplate_];
}

uint64_t sub_25A0FF9C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_hourMinFormatter) dateFormat];
  if (v1)
  {
    v2 = v1;
    sub_25A10C060();

    sub_25A0FC29C();
    if (sub_25A10C1E0())
    {

      v3 = 1;
    }

    else
    {
      v3 = sub_25A10C1E0();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_25A0FFAC4()
{
  result = [*(v0 + OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_fullDateFormatter) dateFormat];
  if (result)
  {
    v2 = result;
    v3 = sub_25A10C060();
    v5 = v4;

    v6 = sub_25A0FFB88(97, 0xE100000000000000, v3, v5);
    if (v7)
    {

      return 0;
    }

    else
    {
      v8 = v6;
      v9 = sub_25A0FFB88(104, 0xE100000000000000, v3, v5);
      v11 = v10;

      if (v11)
      {
        return 0;
      }

      else
      {
        return (v8 >> 14 < v9 >> 14);
      }
    }
  }

  return result;
}

unint64_t sub_25A0FFB88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_25A10C0E0() != a1 || v9 != a2)
  {
    v10 = sub_25A10C390();

    if (v10)
    {
      return v8;
    }

    v8 = sub_25A10C0B0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t DateProvider.deinit()
{
  v1 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_calendar;
  v2 = sub_25A10BA20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_referenceDate;
  v4 = sub_25A10B9A0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider___observationRegistrar;
  v6 = sub_25A10BA70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t DateProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_calendar;
  v2 = sub_25A10BA20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider_referenceDate;
  v4 = sub_25A10B9A0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20MobileTimerUISupport12DateProvider___observationRegistrar;
  v6 = sub_25A10BA70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for DateProvider()
{
  result = qword_27F9F3658;
  if (!qword_27F9F3658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A0FFF28()
{
  result = sub_25A10BA20();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_25A10B9A0();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_25A10BA70();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

MobileTimerUISupport::ClockFaceBackground_optional __swiftcall ClockFaceBackground.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A10C2B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_25A100148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A10019C()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A100234()
{
  *v0;
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A1002B8()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A10034C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7964;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A10C390();
  }

  return v11 & 1;
}

uint64_t ClockFaceBackground.id.getter()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x63696D616E7964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

unint64_t sub_25A100550()
{
  result = qword_27F9F3668;
  if (!qword_27F9F3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3668);
  }

  return result;
}

unint64_t sub_25A1005A8()
{
  result = qword_27F9F3670;
  if (!qword_27F9F3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3678, &qword_25A10E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3670);
  }

  return result;
}

unint64_t sub_25A100658()
{
  result = qword_27F9F3680;
  if (!qword_27F9F3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3680);
  }

  return result;
}

uint64_t TimePickerView.init(hours:minutes:seconds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = 0xC042000000000000;
  return result;
}

void *TimePickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v14[2] = v1[2];
  v14[3] = v3;
  v14[4] = v1[4];
  v4 = v1[1];
  v14[0] = *v1;
  v14[1] = v4;
  v5 = sub_25A10BC60();
  v13 = 0;
  sub_25A1007DC(v14, __src);
  memcpy(__dst, __src, 0x133uLL);
  memcpy(v16, __src, 0x133uLL);
  sub_25A0FF410(__dst, v10, &qword_27F9F3688, &qword_25A10E640);
  sub_25A0F2A3C(v16, &qword_27F9F3688, &qword_25A10E640);
  memcpy(&v12[7], __dst, 0x133uLL);
  v6 = v13;
  v7 = sub_25A10BD30();
  v8 = sub_25A10BB50();
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  result = memcpy((a1 + 17), v12, 0x13AuLL);
  *(a1 + 336) = v8;
  *(a1 + 344) = v7;
  return result;
}

uint64_t sub_25A1007DC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v82 = *a1;
  *&v83 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F36B0, &qword_25A10E728);
  sub_25A10BFB0();
  v41 = *(&v70 + 1);
  v42 = v70;
  v44 = v71;
  v40 = sub_25A10BD20();
  v3 = *(a1 + 9);
  sub_25A10BAE0();
  v5 = v4;
  v38 = v6;
  v39 = v4;
  v7 = v6;
  v9 = v8;
  v36 = v10;
  v37 = v8;
  v11 = v10;
  LOBYTE(v82) = 0;
  v82 = *(a1 + 24);
  *&v83 = *(a1 + 5);
  sub_25A10BFB0();
  v34 = *(&v70 + 1);
  v35 = v70;
  v33 = sub_25A10BCF0();
  sub_25A10BAE0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v32 = v18;
  LOBYTE(v82) = 0;
  v82 = a1[3];
  *&v83 = *(a1 + 8);
  sub_25A10BFB0();
  v19 = v70;
  v20 = sub_25A10BD10();
  sub_25A10BAE0();
  LOBYTE(v82) = 0;
  *&v47[0] = 0x7372756F68;
  *(&v47[0] + 1) = 0xE500000000000000;
  v47[1] = xmmword_25A10E620;
  v47[2] = v70;
  *&v48 = v71;
  BYTE8(v48) = v40;
  *&v49 = v5;
  *(&v49 + 1) = v7;
  *v50 = v9;
  *&v50[8] = v11;
  v50[16] = 0;
  *&v50[17] = 256;
  __src[0] = v47[0];
  __src[1] = xmmword_25A10E620;
  *(&__src[5] + 15) = *&v50[15];
  __src[4] = v49;
  __src[5] = *v50;
  __src[2] = v70;
  __src[3] = v48;
  *&v51[0] = 7235949;
  *(&v51[0] + 1) = 0xE300000000000000;
  v51[1] = xmmword_25A10E630;
  v51[2] = v70;
  v21 = v71;
  *&v52 = v71;
  BYTE8(v52) = v33;
  *&v53 = v13;
  *(&v53 + 1) = v15;
  *v54 = v17;
  *&v54[8] = v32;
  v54[16] = 0;
  *&v54[17] = 256;
  *(&__src[8] + 8) = v70;
  *(&__src[7] + 8) = xmmword_25A10E630;
  *(&__src[6] + 8) = v51[0];
  *(&__src[12] + 7) = *&v54[15];
  *(&__src[11] + 8) = *v54;
  *(&__src[10] + 8) = v53;
  *(&__src[9] + 8) = v52;
  *&v55[0] = 6514035;
  *(&v55[0] + 1) = 0xE300000000000000;
  v55[1] = xmmword_25A10E630;
  v55[2] = v70;
  v22 = v71;
  *&v56 = v71;
  BYTE8(v56) = v20;
  v24 = v23;
  *&v57 = v23;
  v26 = v25;
  *(&v57 + 1) = v25;
  v28 = v27;
  *v58 = v27;
  v30 = v29;
  *&v58[8] = v29;
  v58[16] = 0;
  *&v58[17] = 256;
  *(&__src[18] + 15) = *&v58[15];
  __src[13] = v55[0];
  __src[14] = xmmword_25A10E630;
  __src[17] = v57;
  __src[18] = *v58;
  __src[15] = v70;
  __src[16] = v56;
  memcpy(a2, __src, 0x133uLL);
  v59[0] = 6514035;
  v59[1] = 0xE300000000000000;
  v60 = xmmword_25A10E630;
  v61 = v19;
  v62 = v22;
  v63 = v20;
  v64 = v24;
  v65 = v26;
  v66 = v28;
  v67 = v30;
  v68 = 0;
  v69 = 256;
  sub_25A0FF410(v47, &v82, &qword_27F9F36B8, qword_25A10E730);
  sub_25A0FF410(v51, &v82, &qword_27F9F36B8, qword_25A10E730);
  sub_25A0FF410(v55, &v82, &qword_27F9F36B8, qword_25A10E730);
  sub_25A0F2A3C(v59, &qword_27F9F36B8, qword_25A10E730);
  *&v70 = 7235949;
  *(&v70 + 1) = 0xE300000000000000;
  v71 = xmmword_25A10E630;
  v72 = v35;
  v73 = v34;
  v74 = v21;
  v75 = v33;
  v76 = v13;
  v77 = v15;
  v78 = v17;
  v79 = v32;
  v80 = 0;
  v81 = 256;
  sub_25A0F2A3C(&v70, &qword_27F9F36B8, qword_25A10E730);
  *&v82 = 0x7372756F68;
  *(&v82 + 1) = 0xE500000000000000;
  v83 = xmmword_25A10E620;
  v84 = v42;
  v85 = v41;
  v86 = v44;
  v87 = v40;
  *v88 = *v46;
  *&v88[3] = *&v46[3];
  v89 = v39;
  v90 = v38;
  v91 = v37;
  v92 = v36;
  v93 = 0;
  v94 = 256;
  return sub_25A0F2A3C(&v82, &qword_27F9F36B8, qword_25A10E730);
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

uint64_t sub_25A100CB8(uint64_t a1, int a2)
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

uint64_t sub_25A100D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A100D68()
{
  result = qword_27F9F3690;
  if (!qword_27F9F3690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F3698, &qword_25A10E718);
    sub_25A100DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3690);
  }

  return result;
}

unint64_t sub_25A100DF4()
{
  result = qword_27F9F36A0;
  if (!qword_27F9F36A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F36A8, &qword_25A10E720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F36A0);
  }

  return result;
}

uint64_t sub_25A100E8C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ClockFaceViewType.hashValue.getter()
{
  v1 = *v0;
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](v1);
  return sub_25A10C410();
}

uint64_t sub_25A100F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25A101310();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.type.getter()
{
  sub_25A101034();

  return sub_25A10BC30();
}

unint64_t sub_25A101034()
{
  result = qword_27F9F36C0;
  if (!qword_27F9F36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F36C0);
  }

  return result;
}

uint64_t sub_25A101088@<X0>(_BYTE *a1@<X8>)
{
  sub_25A101034();
  result = sub_25A10BC30();
  *a1 = v3;
  return result;
}

uint64_t sub_25A1010D8(char *a1)
{
  v2 = *a1;
  sub_25A101034();
  return sub_25A10BC40();
}

uint64_t EnvironmentValues.type.setter(char *a1)
{
  v2 = *a1;
  sub_25A101034();
  return sub_25A10BC40();
}

uint64_t (*EnvironmentValues.type.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_25A101034();
  sub_25A10BC30();
  return sub_25A1011C4;
}

uint64_t sub_25A1011C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25A10BC40();
}

uint64_t View.type(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_25A10BED0();
}

uint64_t sub_25A101270@<X0>(_BYTE *a1@<X8>)
{
  sub_25A101034();
  result = sub_25A10BC30();
  *a1 = v3;
  return result;
}

uint64_t sub_25A1012C0(char *a1)
{
  v2 = *a1;
  sub_25A101034();
  return sub_25A10BC40();
}

unint64_t sub_25A101310()
{
  result = qword_27F9F36C8;
  if (!qword_27F9F36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F36C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClockFaceViewTypeKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ClockFaceViewTypeKey(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25A101454(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F36D0, "X7");
  sub_25A10BB40();
  sub_25A1014CC();
  return swift_getWitnessTable();
}

unint64_t sub_25A1014CC()
{
  result = qword_27F9F36D8;
  if (!qword_27F9F36D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F36D0, "X7");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F36D8);
  }

  return result;
}

uint64_t sub_25A101530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E65636361;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972616D697270;
    }

    else
    {
      v4 = 0x7261646E6F636573;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000079;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F72676B636162;
    }

    else
    {
      v4 = 0x746E65636361;
    }

    if (v3)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7972616D697270;
  if (a2 != 2)
  {
    v8 = 0x7261646E6F636573;
    v7 = 0xE900000000000079;
  }

  if (a2)
  {
    v2 = 0x756F72676B636162;
    v6 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A10C390();
  }

  return v11 & 1;
}

uint64_t sub_25A101680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E49636962617261;
    }

    else
    {
      v3 = 0x636962617261;
    }

    if (v2)
    {
      v4 = 0xEB00000000636964;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6E616D6F72;
  }

  else if (a1 == 3)
  {
    v3 = 0x6167616E61766564;
    v4 = 0xEA00000000006972;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6573656E696863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E49636962617261;
    }

    else
    {
      v9 = 0x636962617261;
    }

    if (a2)
    {
      v8 = 0xEB00000000636964;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6167616E61766564;
    v6 = 0xEA00000000006972;
    if (a2 != 3)
    {
      v5 = 0x6573656E696863;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6E616D6F72;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25A10C390();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25A101818(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x746E656964617267;
    }

    else
    {
      v5 = 0x6E6F5474696C7073;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0079617272615FLL;
    }

    else
    {
      v6 = 0xED0000625F615F65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F6C6F63;
    }

    else
    {
      v5 = 0x6D6F747375636E75;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00656C62617A69;
    }
  }

  v7 = 0x746E656964617267;
  v8 = 0xEE0079617272615FLL;
  if (a2 != 2)
  {
    v7 = 0x6E6F5474696C7073;
    v8 = 0xED0000625F615F65;
  }

  if (a2)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A10C390();
  }

  return v11 & 1;
}

uint64_t sub_25A10198C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25A104DEC(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_25A0F9F40(v4, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = (*(v6 + 32))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v20 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25A104DEC((v10 > 1), v11 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F37E8, &qword_25A10F1D8);
  sub_25A105E9C();
  v13 = sub_25A10C020();
  v15 = v14;

  v17[0] = 91;
  v17[1] = 0xE100000000000000;
  MEMORY[0x25F84C6E0](v13, v15);

  MEMORY[0x25F84C6E0](93, 0xE100000000000000);
  return v17[0];
}

id UIColor.redModeAdjusting.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v7[4] = sub_25A104C54;
  v7[5] = v1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25A104D6C;
  v7[3] = &block_descriptor;
  v3 = _Block_copy(v7);
  v4 = v0;
  v5 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v5;
}

MobileTimerUISupport::ClockFaceColorVariation_optional __swiftcall ClockFaceColorVariation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A10C2B0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ClockFaceColorVariation.rawValue.getter()
{
  v1 = 0x746E65636361;
  v2 = 0x7972616D697270;
  if (*v0 != 2)
  {
    v2 = 0x7261646E6F636573;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_25A101CEC()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

uint64_t sub_25A101DB4()
{
  *v0;
  *v0;
  *v0;
  sub_25A10C090();
}

uint64_t sub_25A101E68()
{
  v1 = *v0;
  sub_25A10C3E0();
  sub_25A10C090();

  return sub_25A10C410();
}

void sub_25A101F38(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746E65636361;
  v4 = 0xE700000000000000;
  v5 = 0x7972616D697270;
  if (*v1 != 2)
  {
    v5 = 0x7261646E6F636573;
    v4 = 0xE900000000000079;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

__n128 DynamicClockFaceColor.base.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DynamicClockFaceColor.variation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t DynamicClockFaceColor.stringValue.getter()
{
  sub_25A10C210();

  v6 = *v0;
  v7 = v0[1];
  v1 = SolidClockFaceColor.stringValue.getter();
  v4 = v0[3];
  v5 = v0[2];
  MEMORY[0x25F84C6E0](v1);

  MEMORY[0x25F84C6E0](0x6974616972617620, 0xEC000000203A6E6FLL);
  v2 = SolidClockFaceColor.stringValue.getter();
  MEMORY[0x25F84C6E0](v2);

  MEMORY[0x25F84C6E0](93, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t SolidClockFaceColor.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F36E8, &qword_25A10E900);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D839F8];
  *(v5 + 16) = xmmword_25A10D820;
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  v8 = sub_25A10C070();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25A10D820;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v2;
  v12 = sub_25A10C070();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25A10D820;
  *(v15 + 56) = v6;
  *(v15 + 64) = v7;
  *(v15 + 32) = v4;
  v16 = sub_25A10C070();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25A10D820;
  *(v19 + 56) = v6;
  *(v19 + 64) = v7;
  *(v19 + 32) = v3;
  v20 = sub_25A10C070();
  v22 = v21;
  sub_25A10C210();

  MEMORY[0x25F84C6E0](v8, v10);

  MEMORY[0x25F84C6E0](44, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v12, v14);

  MEMORY[0x25F84C6E0](44, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v16, v18);

  MEMORY[0x25F84C6E0](32, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v20, v22);

  MEMORY[0x25F84C6E0](93, 0xE100000000000000);
  return 0xD000000000000015;
}

id DynamicClockFaceColor.secondaryUIColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v0[4] green:v0[5] blue:v0[6] alpha:v0[7]];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v7[4] = sub_25A105FB4;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25A104D6C;
  v7[3] = &block_descriptor_21;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

uint64_t DynamicClockFaceColor.secondaryColor.getter()
{
  v1 = sub_25A10BF40();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  (*(v8 + 104))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_25A10BF80();
}

id sub_25A1025C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v3 green:v3[1] blue:v3[2] alpha:v3[3]];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);
  v12[4] = a2;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25A104D6C;
  v12[3] = a3;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithDynamicProvider_];
  _Block_release(v9);

  return v10;
}

uint64_t _s20MobileTimerUISupport21DynamicClockFaceColorV010backgroundG07SwiftUI0G0Vvg_0()
{
  v1 = sub_25A10BF40();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  (*(v8 + 104))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_25A10BF80();
}

uint64_t sub_25A10280C()
{
  if (*v0)
  {
    result = 0x6F69746169726176;
  }

  else
  {
    result = 1702060386;
  }

  *v0;
  return result;
}

uint64_t sub_25A102844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_25A10C390() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25A10C390();

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

uint64_t sub_25A102934(uint64_t a1)
{
  v2 = sub_25A105064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A102970(uint64_t a1)
{
  v2 = sub_25A105064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicClockFaceColor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F36F0, &qword_25A10E908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = v3[2];
  v14 = v3[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A105064();
  sub_25A10C430();
  v12 = v3[1];
  v17 = *v3;
  v18 = v12;
  v16 = 0;
  sub_25A1050B8();
  sub_25A10C330();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v16 = 1;
    sub_25A10C330();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DynamicClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25F84CA10](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x25F84CA10](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x25F84CA10](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x25F84CA10](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x25F84CA10](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x25F84CA10](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x25F84CA10](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x25F84CA10](*&v15);
}

uint64_t DynamicClockFaceColor.hashValue.getter()
{
  sub_25A10C3E0();
  DynamicClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

uint64_t DynamicClockFaceColor.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3708, &qword_25A10E910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A105064();
  sub_25A10C420();
  if (!v2)
  {
    v18 = 0;
    sub_25A0FA048();
    sub_25A10C2F0();
    v14 = v16;
    v15 = v17;
    v18 = 1;
    sub_25A10C2F0();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v14;
    a2[1] = v11;
    v12 = v17;
    a2[2] = v16;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25A102E68()
{
  v1 = sub_25A10BF40();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  (*(v8 + 104))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_25A10BF80();
}

uint64_t sub_25A102F5C()
{
  sub_25A10C3E0();
  DynamicClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

uint64_t sub_25A102FA0()
{
  sub_25A10C3E0();
  DynamicClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

id sub_25A103010()
{
  result = [objc_opt_self() mainBundle];
  qword_27F9F36E0 = result;
  return result;
}

uint64_t AssetCatalogColor.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AssetCatalogColor.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetCatalogColor.primaryUIColor.getter()
{
  MEMORY[0x25F84C6E0](*v0, v0[1]);
  MEMORY[0x25F84C6E0](47, 0xE100000000000000);
  MEMORY[0x25F84C6E0](0x7972616D697270, 0xE700000000000000);
  if (qword_27F9F31E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9F36E0;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentTraitCollection];
  v5 = sub_25A10C050();

  v6 = [objc_opt_self() colorNamed:v5 inBundle:v3 compatibleWithTraitCollection:v4];

  if (v6)
  {
    return v6;
  }

  result = sub_25A10C290();
  __break(1u);
  return result;
}

uint64_t sub_25A1032FC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x25F84C6E0](*v2, v2[1]);
  MEMORY[0x25F84C6E0](47, 0xE100000000000000);
  MEMORY[0x25F84C6E0](a1, a2);
  if (qword_27F9F31E0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F9F36E0;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentTraitCollection];
  v9 = sub_25A10C050();

  v10 = [objc_opt_self() colorNamed:v9 inBundle:v7 compatibleWithTraitCollection:v8];

  result = v10;
  if (!v10)
  {
    return AssetCatalogColor.primaryUIColor.getter();
  }

  return result;
}

uint64_t sub_25A103478(uint64_t a1, uint64_t a2)
{
  MEMORY[0x25F84C6E0](*v2, v2[1]);
  MEMORY[0x25F84C6E0](47, 0xE100000000000000);
  MEMORY[0x25F84C6E0](a1, a2);
  if (qword_27F9F31E0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F9F36E0;
  v6 = qword_27F9F36E0;

  return MEMORY[0x282133540](0x2F73726F6C6F43, 0xE700000000000000, v5);
}

uint64_t static AssetCatalogColor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25A10C390();
  }
}

uint64_t sub_25A103584()
{
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](0);
  return sub_25A10C410();
}

uint64_t sub_25A1035F0()
{
  sub_25A10C3E0();
  MEMORY[0x25F84CA00](0);
  return sub_25A10C410();
}

uint64_t sub_25A103640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25A10C390();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25A1036D4(uint64_t a1)
{
  v2 = sub_25A10510C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A103710(uint64_t a1)
{
  v2 = sub_25A10510C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetCatalogColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3710, &qword_25A10E918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A10510C();
  sub_25A10C430();
  sub_25A10C310();
  return (*(v4 + 8))(v7, v3);
}