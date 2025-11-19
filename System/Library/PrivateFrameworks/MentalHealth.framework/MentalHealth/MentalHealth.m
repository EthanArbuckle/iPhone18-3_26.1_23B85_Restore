uint64_t sub_25895F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MentalHealthInjector.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25896E998();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25895F5B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MentalHealthInjector.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25896E998();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void *sub_25895F6FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25895F718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MentalHealthInjector.Configuration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25895F784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MentalHealthInjector.Configuration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25895F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25896E958();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25895F8B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25896E958();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25895F980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s13DateGeneratorVMa();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = _s16ValenceGeneratorVMa();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25895FAA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = _s13DateGeneratorVMa();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = _s16ValenceGeneratorVMa();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id HKMHPromptedAssessmentsManagerServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869D30A0];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_getPromptedAssessmentsWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

id _NotificationSettingKeys()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"StateOfMindLoggingReminderNotificationMiddayEnabledKey";
  v3[1] = @"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey";
  v3[2] = @"StateOfMindLoggingReminderNotificationCustomScheduleKey";
  v3[3] = @"PeriodicPromptedAssessmentNotificationEnabledKey";
  v3[4] = @"PeriodicPromptedAssessmentNotificationTimeOfDayOverride";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id HKMHFrameworkBundle()
{
  v0 = HKMHFrameworkBundle___ClassBundle;
  if (!HKMHFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HKMHFrameworkBundle___ClassBundle;
    HKMHFrameworkBundle___ClassBundle = v1;

    v0 = HKMHFrameworkBundle___ClassBundle;
  }

  return v0;
}

id HKMHLocalizedString(void *a1)
{
  v1 = a1;
  v2 = HKMHFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_2869CB100 table:0];

  return v3;
}

void sub_258965328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2589655A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258965718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258965C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t _s13DateGeneratorVMa()
{
  result = qword_27F96A390;
  if (!qword_27F96A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2589674D0()
{
  result = type metadata accessor for MentalHealthInjector.Configuration();
  if (v1 <= 0x3F)
  {
    result = sub_25896E998();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2589675B8(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v46 = sub_25896E998();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25896E958();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25896E9C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MentalHealthInjector.Configuration();
  v18 = *(v17 + 24);
  v42 = v8;
  v43 = v7;
  (*(v8 + 16))(v11, v2 + v18, v7);
  v19 = _s13DateGeneratorVMa();
  v20 = *(v3 + 16);
  v45 = *(v19 + 20);
  v20(v6, v2 + v45, v46);
  sub_25896E9A8();
  v21 = sub_25896E9B8();
  (*(v13 + 8))(v16, v12);
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *(v2 + 8);
  if (!v23)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = *(v19 + 24);
  v25 = *(v2 + v24);
  if (v25 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_18;
  }

  v26 = v25 / v23;
  v27 = *(v2 + *(v17 + 28));
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    goto LABEL_13;
  }

  v30 = v22 - v29;
  if (__OFSUB__(v22, v29))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = objc_opt_self();
  v32 = sub_25896E988();
  v33 = [v31 hk:v30 dateOnDayIndex:1 atHour:v32 calendar:?];

  [v33 timeIntervalSinceReferenceDate];
  v35 = v34;

  v36 = sub_25896E988();
  v37 = [v31 hk:v30 dateOnDayIndex:23 atHour:v36 calendar:?];

  [v37 timeIntervalSinceReferenceDate];
  v39 = v38;

  if (v35 > v39)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (COERCE__INT64(fabs(v39 - v35)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_25896D078(0x20000000000001);
    if (!__OFADD__(v25, 1))
    {
      *(v2 + v24) = v25 + 1;
      v40 = v44;
      sub_25896E948();
      (*(v42 + 56))(v40, 0, 1, v43);
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_2589679E4()
{
  v1 = sub_258968764(v0);
  sub_258967E78(v0, _s13DateGeneratorVMa);
  return v1;
}

uint64_t sub_258967A30(void *a1, char *a2, uint64_t a3)
{
  sub_258967E20();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25896E958();
  v21 = *(v11 - 8);
  v12 = *(v21 + 64);
  result = MEMORY[0x28223BE20]();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_258967ED8(v3, a1, _s13DateGeneratorVMa);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    v16 = (v21 + 48);
    a1 = (v21 + 32);
    v17 = 1;
    while (1)
    {
      sub_2589675B8(v10);
      if ((*v16)(v10, 1, v11) == 1)
      {
        break;
      }

      v18 = *a1;
      (*a1)(v15, v10, v11);
      v18(a2, v15, v11);
      if (a3 == v17)
      {
        goto LABEL_12;
      }

      a2 += *(v21 + 72);
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_258967E78(v10, sub_258967E20);
    a3 = v17 - 1;
LABEL_12:
    a1 = v20;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_258967C34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    sub_258967ED8(v3, v4, type metadata accessor for MentalHealthInjector);
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3 - 1;
    while (1)
    {
      v9 = MentalHealthInjector.next()();
      if (!v9)
      {
        break;
      }

      *(a2 + 8 * v7) = v9;
      if (v8 == v7)
      {
        goto LABEL_12;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_258967D04()
{
  v1 = *v0;
  sub_25896EBF8();
  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_258967D4C()
{
  v1 = *v0;
  sub_25896EBF8();
  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_258967DD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258967E20()
{
  if (!qword_27F96A3B8)
  {
    sub_25896E958();
    v0 = sub_25896EA88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A3B8);
    }
  }
}

uint64_t sub_258967E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258967ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258967F54(uint64_t a1, unint64_t *a2)
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

uint64_t _s16ValenceGeneratorVMa()
{
  result = qword_27F96A3D0;
  if (!qword_27F96A3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258968074()
{
  result = type metadata accessor for MentalHealthInjector.Configuration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2589680E0()
{
  v1 = *(*(_s16ValenceGeneratorVMa() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258968CC4(v0, v3, _s16ValenceGeneratorVMa);
  v4 = &v3[*(type metadata accessor for MentalHealthInjector.Configuration() + 36)];
  v6 = *v4;
  v5 = v4[1];
  result = sub_258968B48(v3, type metadata accessor for MentalHealthInjector.Configuration);
  if (COERCE__INT64(fabs(v5 - v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_25896D078(0x20000000000001);
    v9 = v6 + (v5 - v6) * vcvtd_n_f64_u64(v8, 0x35uLL);
    if (v8 == 0x20000000000000)
    {
      v9 = v5;
    }

    return *&v9;
  }

  return result;
}

uint64_t sub_258968244@<X0>(uint64_t a1@<X8>)
{
  result = sub_2589680E0();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t sub_258968274()
{
  result = qword_27F96A3E0;
  if (!qword_27F96A3E0)
  {
    _s16ValenceGeneratorVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A3E0);
  }

  return result;
}

uint64_t sub_2589682CC(uint64_t a1)
{
  v2 = type metadata accessor for MentalHealthInjector();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258968CC4(a1, v5, type metadata accessor for MentalHealthInjector);
  result = MentalHealthInjector.next()();
  v7 = MEMORY[0x277D84F90];
  v8 = 0;
  if (result)
  {
    v9 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v8)
      {
        v10 = v7[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v11 = result;
        v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        sub_258968C60(0, &qword_27F96A3F8, sub_258968D2C, MEMORY[0x277D84560]);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v17 = v16 >> 3;
        v14[2] = v13;
        v14[3] = 2 * (v16 >> 3);
        v18 = (v14 + 4);
        v19 = v7[3] >> 1;
        if (v7[2])
        {
          if (v14 != v7 || v18 >= &v7[v19 + 4])
          {
            memmove(v14 + 4, v7 + 4, 8 * v19);
          }

          v7[2] = 0;
        }

        v9 = (v18 + 8 * v19);
        v8 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v7 = v14;
        result = v11;
      }

      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
        break;
      }

      *v9++ = result;
      result = MentalHealthInjector.next()();
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  result = sub_258968B48(v5, type metadata accessor for MentalHealthInjector);
  v22 = v7[3];
  if (v22 < 2)
  {
    return v7;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v8);
  v24 = v23 - v8;
  if (!v21)
  {
    v7[2] = v24;
    return v7;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2589684C8(uint64_t a1)
{
  v2 = _s16ValenceGeneratorVMa();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  sub_258968CC4(a1, &v31 - v7, _s16ValenceGeneratorVMa);
  sub_258968CC4(v8, v6, _s16ValenceGeneratorVMa);
  v9 = type metadata accessor for MentalHealthInjector.Configuration();
  v10 = &v6[*(v9 + 36)];
  v12 = *v10;
  v11 = v10[1];
  sub_258968B48(v6, type metadata accessor for MentalHealthInjector.Configuration);
  v13 = v11 - v12;
  if (COERCE__INT64(fabs(v11 - v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v16 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      do
      {
        v32 = 0;
        MEMORY[0x259C8F540](&v32, 8);
      }

      while (0x20000000000001 * v32 < 0x1FFFFFFFFFF801);
      v17 = (v32 * 0x20000000000001uLL) >> 64;
      v18 = v12 + v13 * vcvtd_n_f64_u64(v17, 0x35uLL);
      if (v17 != 0x20000000000000)
      {
        v11 = v18;
      }

      if (!v14)
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_258968BA8();
        v22 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v22);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 25;
        }

        v25 = v24 >> 3;
        v22[2] = v21;
        v22[3] = 2 * (v24 >> 3);
        v26 = (v22 + 4);
        v27 = v15[3] >> 1;
        if (v15[2])
        {
          v28 = v15 + 4;
          if (v22 != v15 || v26 >= v28 + 8 * v27)
          {
            memmove(v22 + 4, v28, 8 * v27);
          }

          v15[2] = 0;
        }

        v16 = (v26 + 8 * v27);
        v14 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v15 = v22;
      }

      if (__OFSUB__(v14--, 1))
      {
        break;
      }

      *v16++ = v11;
      sub_258968CC4(v8, v6, _s16ValenceGeneratorVMa);
      v30 = &v6[*(v9 + 36)];
      v12 = *v30;
      v11 = v30[1];
      sub_258968B48(v6, type metadata accessor for MentalHealthInjector.Configuration);
      v13 = v11 - v12;
      if (COERCE__INT64(fabs(v11 - v12)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_258968764(uint64_t a1)
{
  sub_258967E20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25896E958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(_s13DateGeneratorVMa() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v7 + 80);
  sub_258968CC4(a1, v13, _s13DateGeneratorVMa);
  v46 = v13;
  sub_2589675B8(v5);
  v44 = *(v7 + 48);
  v45 = v7 + 48;
  v15 = v44(v5, 1, v6);
  v16 = MEMORY[0x277D84F90];
  if (v15 != 1)
  {
    v17 = 0;
    v41 = v7;
    v42 = v14;
    v23 = *(v7 + 32);
    v43 = (v14 + 32) & ~v14;
    v24 = MEMORY[0x277D84F90] + v43;
    v25 = MEMORY[0x277D84F90];
    v47 = v23;
    for (result = v23(v10, v5, v6); ; result = v23(v10, v5, v6))
    {
      if (v17)
      {
        v16 = v25;
        v21 = __OFSUB__(v17--, 1);
        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = v25[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v27 = v10;
        v28 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        sub_258968C60(0, &qword_27F96A3F0, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
        v30 = *(v7 + 72);
        v31 = v43;
        v16 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v16);
        if (!v30)
        {
          goto LABEL_35;
        }

        v32 = result - v31;
        if (result - v31 == 0x8000000000000000 && v30 == -1)
        {
          goto LABEL_36;
        }

        v34 = v32 / v30;
        v16[2] = v29;
        v16[3] = 2 * (v32 / v30);
        v35 = v16 + v31;
        v36 = v25[3] >> 1;
        v37 = v36 * v30;
        if (v25[2])
        {
          if (v16 < v25 || v35 >= v25 + v43 + v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v16 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25[2] = 0;
        }

        v24 = &v35[v37];
        v39 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v7 = v41;
        v10 = v27;
        v23 = v47;
        v21 = __OFSUB__(v39, 1);
        v17 = v39 - 1;
        if (v21)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }
      }

      v23(v24, v10, v6);
      v24 += *(v7 + 72);
      sub_2589675B8(v5);
      v23 = v47;
      v25 = v16;
      if (v44(v5, 1, v6) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v17 = 0;
LABEL_3:
  sub_258968B48(v46, _s13DateGeneratorVMa);
  result = sub_258968B48(v5, sub_258967E20);
  v19 = v16[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v21 = __OFSUB__(v20, v17);
    v22 = v20 - v17;
    if (v21)
    {
      goto LABEL_37;
    }

    v16[2] = v22;
  }

  return v16;
}

uint64_t sub_258968B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258968BA8()
{
  if (!qword_27F96A3E8)
  {
    v0 = sub_25896EBB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A3E8);
    }
  }
}

uint64_t sub_258968BFC(uint64_t a1, uint64_t a2)
{
  v4 = _s16ValenceGeneratorVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258968C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258968CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258968D60()
{
  result = qword_27F96A408;
  if (!qword_27F96A408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96A408);
  }

  return result;
}

uint64_t MentalHealthInjector.Configuration.init(reflectiveInterval:daysToBackfill:samplesPerDay:injectionDate:injectionDayOffset:valenceRange:domainCounts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  if ((sub_258969568(a6) & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = type metadata accessor for MentalHealthInjector.Configuration();
  *&a7[v18[8]] = a1;
  *a7 = a2;
  *(a7 + 1) = a3;
  *&a7[v18[10]] = a6;
  v19 = &a7[v18[9]];
  *v19 = a8;
  v19[1] = a9;
  v20 = v18[6];
  v21 = sub_25896E958();
  v22 = a4;
  a4 = *(v21 - 8);
  v41 = v20;
  v23 = v21;
  v42 = v22;
  result = (*(a4 + 16))(&a7[v20]);
  v25 = 0;
  v26 = 0;
  *&a7[v18[7]] = a5;
  v27 = 1 << *(a6 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a6 + 64);
  v30 = (v27 + 63) >> 6;
  while (v29)
  {
    v31 = v25;
LABEL_11:
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v33 = *(*(a6 + 56) + ((v31 << 9) | (8 * v32)));
    v34 = __OFADD__(v26, v33);
    v26 += v33;
    if (v34)
    {
      __break(1u);
LABEL_14:

      v35 = objc_opt_self();
      v36 = sub_25896E9F8();
      [v35 hk:3 error:v36 description:?];

      swift_willThrow();
      v37 = sub_25896E958();
      return (*(*(v37 - 8) + 8))(a4, v37);
    }
  }

  while (1)
  {
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(a6 + 64 + 8 * v31);
    ++v25;
    if (v29)
    {
      v25 = v31;
      goto LABEL_11;
    }
  }

  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (a3 * a2 >= v26)
  {
    return (*(a4 + 8))(v42, v23);
  }

  v38 = objc_opt_self();
  v39 = sub_25896E9F8();
  [v38 hk:3 error:v39 description:?];

  swift_willThrow();
  v40 = *(a4 + 8);
  v40(v42, v23);
  v40(&a7[v41], v23);
}

uint64_t MentalHealthInjector.Configuration.init(reflectiveInterval:daysToBackfill:samplesPerDay:injectionDate:injectionDayOffset:valenceRange:domainPercentages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v55 = a1;
  v56 = a7;
  v16 = sub_25896E958();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3 * a2;
  if ((a3 * a2) >> 64 == (a3 * a2) >> 63)
  {
    v54 = a5;
    v23 = sub_258969650(a6, a3 * a2);

    if (v23)
    {
      v24 = v16;
      v16 = v21;
      v52 = v24;
      v53 = v17;
      v17 = *(v17 + 16);
      (v17)(v21, a4);
      if (sub_258969568(v23))
      {
        v51 = a4;
        v25 = type metadata accessor for MentalHealthInjector.Configuration();
        v26 = v56;
        *(v56 + v25[8]) = v55;
        *v26 = a2;
        v26[1] = a3;
        *(v26 + v25[10]) = v23;
        v27 = (v26 + v25[9]);
        *v27 = a8;
        v27[1] = a9;
        v28 = v25[6];
        v55 = v16;
        v29 = v52;
        result = (v17)(v26 + v28, v16, v52);
        v30 = 0;
        v31 = 0;
        *(v26 + v25[7]) = v54;
        v32 = 1 << *(v23 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & *(v23 + 64);
        v35 = (v32 + 63) >> 6;
        a4 = v29;
        v36 = v53;
        while (v34)
        {
          v37 = v30;
LABEL_13:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v39 = *(*(v23 + 56) + ((v37 << 9) | (8 * v38)));
          v40 = __OFADD__(v31, v39);
          v31 += v39;
          if (v40)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        while (1)
        {
          v37 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_22;
          }

          if (v37 >= v35)
          {
            break;
          }

          v34 = *(v23 + 64 + 8 * v37);
          ++v30;
          if (v34)
          {
            v30 = v37;
            goto LABEL_13;
          }
        }

        if (v22 >= v31)
        {
          v50 = *(v53 + 8);
          v50(v51, a4);
          return (v50)(v55, a4);
        }

        else
        {
          v47 = objc_opt_self();
          v48 = sub_25896E9F8();
          [v47 hk:3 error:v48 description:?];

          swift_willThrow();
          v49 = *(v36 + 8);
          v49(v51, a4);
          v49(v55, a4);
          v49(v56 + v28, a4);
        }
      }

      else
      {

        v43 = objc_opt_self();
        v44 = sub_25896E9F8();
        [v43 hk:3 error:v44 description:?];

        swift_willThrow();
        v45 = *(v53 + 8);
        v46 = v52;
        v45(a4, v52);
        return (v45)(v16, v46);
      }
    }

    else
    {
LABEL_16:
      v41 = objc_opt_self();
      v42 = sub_25896E9F8();
      [v41 hk:3 error:v42 description:?];

      swift_willThrow();
      return (*(v17 + 8))(a4, v16);
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_258969568(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 56) + ((v6 << 9) | (8 * v7))) <= 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MentalHealthInjector.Configuration()
{
  result = qword_27F96A410;
  if (!qword_27F96A410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258969650(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = a2;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v11 = 0.0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v7)
        {

          return v10;
        }

        v6 = *(v3 + 8 * v12);
        ++v9;
        if (v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_25896EBE8();
      __break(1u);
      return result;
    }

    v12 = v9;
LABEL_11:
    if (1.0 - v11 <= 2.22507386e-308)
    {
      break;
    }

    v13 = __clz(__rbit64(v6)) | (v12 << 6);
    v14 = *(a1 + 56);
    if (*(v14 + 8 * v13) >= 1.0 - v11)
    {
      v15 = 1.0 - v11;
    }

    else
    {
      v15 = *(v14 + 8 * v13);
    }

    v16 = floor(v15 * v8);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    if (v16 <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v16 >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    v17 = *(a1 + 48) + 16 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_25896B9A8(v18, v19);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_34;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v21;
        sub_25896D930();
        v21 = v33;
      }
    }

    else
    {
      sub_25896D390(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_25896B9A8(v18, v19);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_36;
      }
    }

    v6 &= v6 - 1;
    v29 = v16;
    if (v27)
    {
      *(v10[7] + 8 * v21) = v29;
    }

    else
    {
      v10[(v21 >> 6) + 8] |= 1 << v21;
      v30 = v10[6] + 16 * v21;
      *v30 = v18;
      *(v30 + 8) = v19;
      *(v10[7] + 8 * v21) = v29;
      v31 = v10[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_35;
      }

      v10[2] = v32;
    }

    v11 = v11 + v15;
    v9 = v12;
  }

  return 0;
}

void sub_258969914()
{
  sub_25896E958();
  if (v0 <= 0x3F)
  {
    type metadata accessor for __HKStateOfMindReflectiveInterval(319);
    if (v1 <= 0x3F)
    {
      sub_2589699D8();
      if (v2 <= 0x3F)
      {
        sub_258969A30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2589699D8()
{
  if (!qword_27F96A420)
  {
    v0 = sub_25896E9E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A420);
    }
  }
}

void sub_258969A30()
{
  if (!qword_27F96A428)
  {
    sub_258969A94();
    v0 = sub_25896E9D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A428);
    }
  }
}

unint64_t sub_258969A94()
{
  result = qword_27F96A430;
  if (!qword_27F96A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A430);
  }

  return result;
}

uint64_t _s13ConfigurationV9ConstantsOwet(unsigned int *a1, int a2)
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

_WORD *_s13ConfigurationV9ConstantsOwst(_WORD *result, int a2, int a3)
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

BOOL static MentalHealthInjector.StateOfMindDomainOrNone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_258969C28()
{
  v1 = *v0;
  sub_25896EBF8();
  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_258969C9C()
{
  v1 = *v0;
  sub_25896EBF8();
  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_258969CE0()
{
  if (*v0)
  {
    result = 1701736302;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_258969D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_25896EBC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25896EBC8();

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

uint64_t sub_258969E00(uint64_t a1)
{
  v2 = sub_25896B460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258969E3C(uint64_t a1)
{
  v2 = sub_25896B460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258969E80()
{
  sub_25896EBF8();
  MEMORY[0x259C8EF80](0);
  return sub_25896EC18();
}

uint64_t sub_258969EEC()
{
  sub_25896EBF8();
  MEMORY[0x259C8EF80](0);
  return sub_25896EC18();
}

uint64_t sub_258969F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25896EBC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258969FB8(uint64_t a1)
{
  v2 = sub_25896B40C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258969FF4(uint64_t a1)
{
  v2 = sub_25896B40C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25896A03C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25896A06C(uint64_t a1)
{
  v2 = sub_25896B3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25896A0A8(uint64_t a1)
{
  v2 = sub_25896B3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MentalHealthInjector.StateOfMindDomainOrNone.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_25896B4F8(0, &qword_27F96A438, sub_25896B3B8, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.NoneCodingKeys, MEMORY[0x277D84538]);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - v6;
  sub_25896B4F8(0, &qword_27F96A448, sub_25896B40C, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.DomainCodingKeys, v3);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  sub_25896B4F8(0, &qword_27F96A458, sub_25896B460, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.CodingKeys, v3);
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v23 = *v1;
  LOBYTE(v3) = *(v1 + 8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25896B460();
  sub_25896EC38();
  if (v3)
  {
    v32 = 1;
    sub_25896B3B8();
    v17 = v24;
    v18 = v29;
    sub_25896EB98();
    (*(v25 + 8))(v17, v26);
    return (*(v12 + 8))(v15, v18);
  }

  else
  {
    v31 = 0;
    sub_25896B40C();
    v20 = v29;
    sub_25896EB98();
    v30 = v23;
    type metadata accessor for __HKStateOfMindDomain(0);
    sub_25896D030(&qword_27F96A468, type metadata accessor for __HKStateOfMindDomain);
    v21 = v28;
    sub_25896EBA8();
    (*(v27 + 8))(v10, v21);
    return (*(v12 + 8))(v15, v20);
  }
}

uint64_t MentalHealthInjector.StateOfMindDomainOrNone.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x259C8EF80](0);
  }

  return MEMORY[0x259C8EF80](v1);
}

uint64_t MentalHealthInjector.StateOfMindDomainOrNone.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25896EBF8();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x259C8EF80](0);
  }

  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t MentalHealthInjector.StateOfMindDomainOrNone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_25896B4F8(0, &qword_27F96A470, sub_25896B3B8, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.NoneCodingKeys, MEMORY[0x277D844C8]);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - v6;
  sub_25896B4F8(0, &qword_27F96A478, sub_25896B40C, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.DomainCodingKeys, v3);
  v8 = v7;
  v38 = *(v7 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_25896B4F8(0, &qword_27F96A480, sub_25896B460, &type metadata for MentalHealthInjector.StateOfMindDomainOrNone.CodingKeys, v3);
  v13 = v12;
  v39 = *(v12 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25896B460();
  v18 = v42;
  sub_25896EC28();
  if (v18)
  {
    goto LABEL_7;
  }

  v20 = v39;
  v19 = v40;
  v35 = v8;
  v42 = a1;
  v21 = v41;
  v22 = sub_25896EB88();
  if (*(v22 + 16) != 1)
  {
    v26 = sub_25896EAF8();
    swift_allocError();
    v28 = v27;
    sub_25896B5AC();
    v30 = *(v29 + 48);
    *v28 = &type metadata for MentalHealthInjector.StateOfMindDomainOrNone;
    sub_25896EB68();
    sub_25896EAD8();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_7:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v44 = *(v22 + 32);
  if (v44)
  {
    v46 = 1;
    sub_25896B3B8();
    v23 = v19;
    sub_25896EB58();
    v24 = v21;
    (*(v36 + 8))(v23, v37);
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v25 = 0;
  }

  else
  {
    v45 = 0;
    sub_25896B40C();
    sub_25896EB58();
    v24 = v21;
    type metadata accessor for __HKStateOfMindDomain(0);
    sub_25896D030(&qword_27F96A498, type metadata accessor for __HKStateOfMindDomain);
    v31 = v35;
    sub_25896EB78();
    (*(v38 + 8))(v11, v31);
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v25 = v43;
  }

  *v24 = v25;
  *(v24 + 8) = v44;
  v32 = v42;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_25896AAAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25896EBF8();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x259C8EF80](0);
  }

  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_25896AB10()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x259C8EF80](0);
  }

  return MEMORY[0x259C8EF80](v1);
}

uint64_t sub_25896AB58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25896EBF8();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x259C8EF80](0);
  }

  MEMORY[0x259C8EF80](v1);
  return sub_25896EC18();
}

uint64_t sub_25896ABE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t MentalHealthInjector.init(configuration:batchSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25896E968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a2;
  result = type metadata accessor for MentalHealthInjector.Configuration();
  a3[1] = *(a1 + *(result + 32));
  v12 = a1[1];
  v13 = v12 * *a1;
  if ((v12 * *a1) >> 64 == v13 >> 63)
  {
    v14 = *(a1 + *(result + 40));

    a3[2] = sub_25896DE90(v15, v13);
    a3[3] = v16;
    a3[4] = v17;
    a3[5] = v18;
    v19 = type metadata accessor for MentalHealthInjector();
    v20 = a3 + *(v19 + 28);
    sub_25896CE5C(a1, v20, type metadata accessor for MentalHealthInjector.Configuration);
    v21 = _s13DateGeneratorVMa();
    v22 = *(v21 + 20);
    (*(v7 + 104))(v10, *MEMORY[0x277CC9830], v6);
    sub_25896E978();
    (*(v7 + 8))(v10, v6);
    *(v20 + *(v21 + 24)) = 0;
    return sub_25896CD90(a1, a3 + *(v19 + 32), type metadata accessor for MentalHealthInjector.Configuration);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall MentalHealthInjector.next()()
{
  v1 = v0;
  sub_25896CF38(0, &qword_27F96A3B8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v40 - v4;
  v6 = sub_25896E958();
  v7 = *(*(v6 - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v40 - v13;
  v14 = MEMORY[0x277D84F90];
  v15 = *v0;
  v49 = v0 + 2;
  v50 = v15;
  v56 = MEMORY[0x277D84F90];
  v47 = (v16 + 32);
  v48 = (v16 + 48);
  v45 = (v16 + 16);
  v46 = (v16 + 8);
  v40 = xmmword_258970670;
  v43 = v0;
  v44 = v10;
  v41 = v11;
  v42 = v5;
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_29;
  }

LABEL_2:
  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25896EB08())
  {
    if (i >= v50)
    {
      goto LABEL_32;
    }

    sub_25896D124(&v52);
    if (v54)
    {
      goto LABEL_32;
    }

    v18 = v52;
    v19 = v53;
    v20 = type metadata accessor for MentalHealthInjector();
    v21 = v1 + *(v20 + 28);
    sub_2589675B8(v5);
    if ((*v48)(v5, 1, v6) == 1)
    {
      sub_25896C5D4(v5);
LABEL_32:
      v25 = v14;
      goto LABEL_37;
    }

    (*v47)(v51, v5, v6);
    v22 = v1 + *(v20 + 32);
    sub_2589680E0();
    if (v23)
    {
      (*v46)(v51, v6);
      goto LABEL_32;
    }

    v24 = sub_25896EA68();
    v25 = sub_25896B668(2uLL);
    v55 = MEMORY[0x277D84FA0];
    if ((v25 + 1) < 0)
    {
      goto LABEL_34;
    }

    if (v25 != -1)
    {
      break;
    }

LABEL_20:
    if ((v19 & 1) == 0)
    {
      sub_25896CF38(0, &qword_27F96A4A8, type metadata accessor for __HKStateOfMindDomain, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = v40;
      *(v32 + 32) = v18;
    }

    (*v45)(v10, v51, v6);
    v33 = v1[1];
    v34 = v55;
    v35 = *(v55 + 16);
    if (v35)
    {
      v36 = sub_25896BCE0(*(v55 + 16), 0);
      v37 = sub_25896B6F4(&v52, v36 + 4, v35, v34);
      v25 = sub_25896C660();
      if (v37 != v35)
      {
        goto LABEL_36;
      }

      v38 = MEMORY[0x277D84F90];
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    sub_25896C668();
    sub_25896C470(v38);
    sub_25896EA58();
    MEMORY[0x259C8EDA0]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25896EA38();
      v10 = v44;
    }

    sub_25896EA48();
    (*v46)(v51, v6);
    v14 = v56;
    if (!(v56 >> 62))
    {
      goto LABEL_2;
    }

LABEL_29:
    ;
  }

  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = v25;
    v28 = 0;
    v29 = -v26;
    while (1)
    {
      v52 = 0;
      v25 = MEMORY[0x259C8F540](&v52, 8);
      v30 = (v52 * v26) >> 64;
      if (v26 > v52 * v26 && v29 % v26 > v52 * v26)
      {
        do
        {
          v52 = 0;
          v25 = MEMORY[0x259C8F540](&v52, 8);
        }

        while (v29 % v26 > v52 * v26);
        v30 = (v52 * v26) >> 64;
      }

      if (v30 >= *(v24 + 16))
      {
        break;
      }

      sub_25896BBE8(&v52, *(v24 + 32 + 8 * v30));
      if (v28++ == v27)
      {

        v5 = v42;
        v1 = v43;
        v6 = v41;
        v10 = v44;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result.value._rawValue = v25;
  result.is_nil = v12;
  return result;
}

uint64_t sub_25896B344()
{
  v1 = sub_2589682CC(v0);
  sub_25896CD30(v0, type metadata accessor for MentalHealthInjector);
  return v1;
}

unint64_t sub_25896B390@<X0>(unint64_t *a1@<X8>)
{
  result = MentalHealthInjector.next()();
  *a1 = result;
  return result;
}

unint64_t sub_25896B3B8()
{
  result = qword_27F96A440;
  if (!qword_27F96A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A440);
  }

  return result;
}

unint64_t sub_25896B40C()
{
  result = qword_27F96A450;
  if (!qword_27F96A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A450);
  }

  return result;
}

unint64_t sub_25896B460()
{
  result = qword_27F96A460;
  if (!qword_27F96A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A460);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_25896B4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
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

void sub_25896B5AC()
{
  if (!qword_27F96A488)
  {
    sub_25896B61C();
    sub_25896EAE8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96A488);
    }
  }
}

unint64_t sub_25896B61C()
{
  result = qword_27F96A490;
  if (!qword_27F96A490)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F96A490);
  }

  return result;
}

unint64_t sub_25896B668(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C8F540](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C8F540](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25896B6F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25896B7F4(uint64_t a1, double *a2, uint64_t a3)
{
  v7 = _s16ValenceGeneratorVMa();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_25896CD90(v3, a1, _s16ValenceGeneratorVMa);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 1;
    while (1)
    {
      sub_25896CE5C(v3, v11, _s16ValenceGeneratorVMa);
      v13 = &v11[*(type metadata accessor for MentalHealthInjector.Configuration() + 36)];
      v15 = *v13;
      v14 = v13[1];
      result = sub_25896CD30(v11, type metadata accessor for MentalHealthInjector.Configuration);
      if (COERCE__INT64(fabs(v14 - v15)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      do
      {
        v20 = 0;
        MEMORY[0x259C8F540](&v20, 8);
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v16 = (v20 * 0x20000000000001uLL) >> 64;
      v17 = v15 + (v14 - v15) * vcvtd_n_f64_u64(v16, 0x35uLL);
      if (v16 == 0x20000000000000)
      {
        v17 = v14;
      }

      *a2 = v17;
      if (v12 == a3)
      {
        goto LABEL_14;
      }

      ++a2;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25896B9A8(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_25896EBF8();
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    MEMORY[0x259C8EF80](0);
    v6 = a1;
  }

  MEMORY[0x259C8EF80](v6);
  v7 = sub_25896EC18();

  return sub_25896BAAC(a1, a2 & 1, v7);
}

unint64_t sub_25896BA34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25896EBF8();
  sub_25896EA08();
  v6 = sub_25896EC18();

  return sub_25896BB30(a1, a2, v6);
}

unint64_t sub_25896BAAC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25896BB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25896EBC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25896BBE8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25896EBF8();
  MEMORY[0x259C8EF80](a2);
  v7 = sub_25896EC18();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_25896BFCC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void *sub_25896BCE0(uint64_t a1, uint64_t a2)
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

  sub_25896CF38(0, &qword_27F96A520, type metadata accessor for Label, MEMORY[0x277D84560]);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_25896BD88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25896CF9C();
  result = sub_25896EAB8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_25896EBF8();
      MEMORY[0x259C8EF80](v18);
      result = sub_25896EC18();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_25896BFCC(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25896BD88(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_25896C128();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25896C25C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_25896EBF8();
  MEMORY[0x259C8EF80](a1);
  v10 = sub_25896EC18();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for Label(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25896EBD8();
  __break(1u);
}

void *sub_25896C128()
{
  v1 = v0;
  sub_25896CF9C();
  v2 = *v0;
  v3 = sub_25896EAA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25896C25C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25896CF9C();
  result = sub_25896EAB8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_25896EBF8();
      MEMORY[0x259C8EF80](v17);
      result = sub_25896EC18();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_25896C470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25896CDF8();
    v3 = sub_25896EB38();
    v4 = a1 + 32;

    while (1)
    {
      sub_25896CE5C(v4, &v13, sub_25896CEC4);
      v5 = v13;
      v6 = v14;
      result = sub_25896BA34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25896CF28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for MentalHealthInjector()
{
  result = qword_27F96A4C0;
  if (!qword_27F96A4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25896C5D4(uint64_t a1)
{
  sub_25896CF38(0, &qword_27F96A3B8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25896C668()
{
  result = qword_27F96A4A0;
  if (!qword_27F96A4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96A4A0);
  }

  return result;
}

unint64_t sub_25896C6B8()
{
  result = qword_27F96A4B0;
  if (!qword_27F96A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4B0);
  }

  return result;
}

void sub_25896C77C()
{
  type metadata accessor for __HKStateOfMindReflectiveInterval(319);
  if (v0 <= 0x3F)
  {
    _s13DateGeneratorVMa();
    if (v1 <= 0x3F)
    {
      _s16ValenceGeneratorVMa();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthInjector.StateOfMindDomainOrNone(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MentalHealthInjector.StateOfMindDomainOrNone(uint64_t result, int a2, int a3)
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

uint64_t sub_25896C894(uint64_t a1)
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

uint64_t sub_25896C8B0(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for MentalHealthInjector.StateOfMindDomainOrNone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MentalHealthInjector.StateOfMindDomainOrNone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25896CA74()
{
  result = qword_27F96A4D0;
  if (!qword_27F96A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4D0);
  }

  return result;
}

unint64_t sub_25896CACC()
{
  result = qword_27F96A4D8;
  if (!qword_27F96A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4D8);
  }

  return result;
}

unint64_t sub_25896CB24()
{
  result = qword_27F96A4E0;
  if (!qword_27F96A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4E0);
  }

  return result;
}

unint64_t sub_25896CB7C()
{
  result = qword_27F96A4E8;
  if (!qword_27F96A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4E8);
  }

  return result;
}

unint64_t sub_25896CBD4()
{
  result = qword_27F96A4F0;
  if (!qword_27F96A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4F0);
  }

  return result;
}

unint64_t sub_25896CC2C()
{
  result = qword_27F96A4F8;
  if (!qword_27F96A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A4F8);
  }

  return result;
}

unint64_t sub_25896CC84()
{
  result = qword_27F96A500;
  if (!qword_27F96A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A500);
  }

  return result;
}

unint64_t sub_25896CCDC()
{
  result = qword_27F96A508;
  if (!qword_27F96A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96A508);
  }

  return result;
}

uint64_t sub_25896CD30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25896CD90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25896CDF8()
{
  if (!qword_27F96A510)
  {
    v0 = sub_25896EB48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A510);
    }
  }
}

uint64_t sub_25896CE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25896CEC4()
{
  if (!qword_27F96A518)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96A518);
    }
  }
}

_OWORD *sub_25896CF28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_25896CF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25896CF9C()
{
  if (!qword_27F96A528)
  {
    type metadata accessor for Label(255);
    sub_25896D030(&qword_27F96A530, type metadata accessor for Label);
    v0 = sub_25896EAC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A528);
    }
  }
}

uint64_t sub_25896D030(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25896D08C(uint64_t *a1, int a2)
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

uint64_t sub_25896D0D4(uint64_t result, int a2, int a3)
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

uint64_t sub_25896D124@<X0>(uint64_t a1@<X8>)
{
  result = v1[3];
  v4 = result - 1;
  if (result < 1)
  {
    goto LABEL_24;
  }

  result = sub_25896D078(result);
  v5 = v1[2];
  if (v5)
  {
    v6 = result < v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = 0;
    v8 = *v1;
    v9 = 1 << *(*v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(*v1 + 64);
    v12 = (v9 + 63) >> 6;
    do
    {
      if (!v11)
      {
        while (1)
        {
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v13 >= v12)
          {
            goto LABEL_24;
          }

          v11 = *(*v1 + 64 + 8 * v13);
          ++v7;
          if (v11)
          {
            v7 = v13;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_14:
      v14 = __clz(__rbit64(v11)) | (v7 << 6);
      v15 = *(*(v8 + 56) + 8 * v14);
      v16 = __OFADD__(v5, v15);
      v5 += v15;
      if (v16)
      {
        goto LABEL_28;
      }

      v11 &= v11 - 1;
    }

    while (result >= v5);
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_31;
    }

    v18 = *(v8 + 48) + 16 * v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *v1;
    if (v15 == 1)
    {

      sub_25896D2F8(v19, v20);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v1;
      sub_25896D7EC(v17, v19, v20, isUniquelyReferenced_nonNull_native);

      *v1 = v26;
    }

    goto LABEL_23;
  }

  v23 = v1[1];
  result = *(v23 + 16);
  if (!result)
  {
LABEL_24:
    v19 = 0;
    v20 = 0;
    v25 = 1;
    goto LABEL_25;
  }

  result = sub_25896B668(result);
  if (result < 0)
  {
LABEL_29:
    __break(1u);
  }

  else if (result < *(v23 + 16))
  {
    v24 = v23 + 16 * result;
    v19 = *(v24 + 32);
    v20 = *(v24 + 40);
    v1[2] = v5 - 1;
LABEL_23:
    v25 = 0;
    v1[3] = v4;
LABEL_25:
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 9) = v25;
    return result;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25896D2F8(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_25896B9A8(a1, a2 & 1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25896D930();
    v10 = v14;
  }

  v11 = v7;
  v12 = *(*(v10 + 56) + 8 * v7);
  sub_25896D630(v11, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_25896D390(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25896DB78();
  result = sub_25896EB28();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v22 + 8);
      v24 = *v22;
      v37 = *(*(v5 + 56) + 8 * v21);
      v25 = *(v8 + 40);
      sub_25896EBF8();
      if (v23)
      {
        v26 = 1;
      }

      else
      {
        MEMORY[0x259C8EF80](0);
        v26 = v24;
      }

      MEMORY[0x259C8EF80](v26);
      result = sub_25896EC18();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v23;
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25896D630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25896EA98() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_25896EBF8();
      if (v13)
      {
        v12 = 1;
      }

      else
      {
        MEMORY[0x259C8EF80](0);
      }

      MEMORY[0x259C8EF80](v12);
      result = sub_25896EC18();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
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

LABEL_4:
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

  return result;
}

unint64_t sub_25896D7EC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25896B9A8(a2, a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_25896D930();
    result = v19;
    goto LABEL_8;
  }

  sub_25896D390(v16, a4 & 1);
  v20 = *v5;
  result = sub_25896B9A8(a2, a3 & 1);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      *(v22[7] + 8 * result) = a1;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    v23 = v22[6] + 16 * result;
    *v23 = a2;
    *(v23 + 8) = a3 & 1;
    *(v22[7] + 8 * result) = a1;
    v24 = v22[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v22[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25896EBE8();
  __break(1u);
  return result;
}

void *sub_25896D930()
{
  v1 = v0;
  sub_25896DB78();
  v2 = *v0;
  v3 = sub_25896EB18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_25896DA84(char *result, int64_t a2, char a3, char *a4)
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
    sub_25896DF64();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void sub_25896DB78()
{
  if (!qword_27F96A538)
  {
    sub_258969A94();
    v0 = sub_25896EB48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A538);
    }
  }
}

char *sub_25896DBDC(uint64_t a1)
{
  v2 = sub_25896EA78();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v30 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      v8 = 0;
      v9 = *(v30 + 8 * v5++);
      v10 = 1 << *(a1 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(a1 + 64);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
LABEL_15:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(a1 + 48) + ((v8 << 10) | (16 * v15));
        if ((*(v16 + 8) & 1) == 0 && v9 == *v16)
        {
          goto LABEL_4;
        }
      }

      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v14 >= v13)
        {
          break;
        }

        v12 = *(a1 + 64 + 8 * v14);
        ++v8;
        if (v12)
        {
          v8 = v14;
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25896DA84(0, *(v6 + 2) + 1, 1, v6);
      }

      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      if (v18 >= v17 >> 1)
      {
        v6 = sub_25896DA84((v17 > 1), v18 + 1, 1, v6);
      }

      *(v6 + 2) = v18 + 1;
      v7 = &v6[16 * v18];
      *(v7 + 4) = v9;
      v7[40] = 0;
LABEL_4:
      if (v5 == v4)
      {

        goto LABEL_24;
      }
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_24:
    v19 = 0;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 64);
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
      v24 = v19;
LABEL_33:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      if (*(*(a1 + 48) + ((v24 << 10) | (16 * v25)) + 8))
      {
        return v6;
      }
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v22 = *(a1 + 64 + 8 * v24);
      ++v19;
      if (v22)
      {
        v19 = v24;
        goto LABEL_33;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  v6 = sub_25896DA84(0, *(v6 + 2) + 1, 1, v6);
LABEL_36:
  v27 = *(v6 + 2);
  v26 = *(v6 + 3);
  if (v27 >= v26 >> 1)
  {
    v6 = sub_25896DA84((v26 > 1), v27 + 1, 1, v6);
  }

  *(v6 + 2) = v27 + 1;
  v28 = &v6[16 * v27];
  *(v28 + 4) = 0;
  v28[40] = 1;
  return v6;
}

char *sub_25896DE90(uint64_t a1, uint64_t a2)
{
  result = sub_25896DBDC(a1);
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 64 + 8 * v11);
        ++v5;
        if (v9)
        {
          v5 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 56) + ((v11 << 9) | (8 * v12)));
    v14 = __OFADD__(v6, v13);
    v6 += v13;
  }

  while (!v14);
  __break(1u);
LABEL_13:
  if (!__OFSUB__(a2, v6))
  {
    return a1;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_25896DF64()
{
  if (!qword_27F96A540)
  {
    v0 = sub_25896EBB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96A540);
    }
  }
}