uint64_t NewsLiveActivityRepository.activity(id:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for NewsLiveActivity(0);
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  v4[5] = v9;
  v4[6] = v10;
  v4[7] = v11;
  v14 = (*(a4 + 8) + **(a4 + 8));
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_21A00A3EC;

  return v14(a3, a4);
}

uint64_t sub_21A00A3EC(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_21A00A4EC, 0, 0);
}

void sub_21A00A4EC()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[4];
    v4 = v0[5];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[6];
      v6 = v0[7];
      v8 = v0[5];
      sub_21A00BDE4(v0[9] + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, v8, type metadata accessor for NewsLiveActivity);
      v9 = *v8 == v7 && *(v4 + 8) == v6;
      if (v9 || (sub_21A0E6C5C() & 1) != 0)
      {
        v11 = v0[5];
        v12 = v0[2];

        sub_21A00BA54(v11, v12, type metadata accessor for NewsLiveActivity);
        v10 = 0;
        goto LABEL_12;
      }

      ++v3;
      sub_21A00B9F4(v0[5], type metadata accessor for NewsLiveActivity);
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v10 = 1;
LABEL_12:
    (*(v0[4] + 56))(v0[2], v10, 1, v0[3]);

    v13 = v0[1];

    v13();
  }
}

uint64_t NewsLiveActivity.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NewsLiveActivity.subscriptionSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsLiveActivity(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NewsLiveActivity.dismissalSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsLiveActivity(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NewsLiveActivity.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for NewsLiveActivity(0);
  sub_219F45500(v1 + v6[6], v5, &qword_27CCD97F0);
  v7 = sub_21A0E495C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_219F6409C(v5, &qword_27CCD97F0);
    v9 = 0xE500000000000000;
    v10 = 0x3E6C696E3CLL;
  }

  else
  {
    v10 = sub_21A0E48EC();
    v9 = v11;
    (*(v8 + 8))(v5, v7);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21A0E686C();
  MEMORY[0x21CED1980](4015177, 0xE300000000000000);
  MEMORY[0x21CED1980](*v1, v1[1]);
  MEMORY[0x21CED1980](0xD000000000000015, 0x800000021A10A700);
  v12 = NewsLiveActivitySubscriptionState.description.getter();
  MEMORY[0x21CED1980](v12);

  MEMORY[0x21CED1980](0xD000000000000019, 0x800000021A10A720);
  MEMORY[0x21CED1980](v10, v9);

  MEMORY[0x21CED1980](0xD000000000000015, 0x800000021A10A740);
  v17 = *(v1 + v6[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB678);
  v13 = sub_21A0E622C();
  MEMORY[0x21CED1980](v13);

  MEMORY[0x21CED1980](0xD000000000000012, 0x800000021A10A760);
  v17 = *(v1 + v6[8]);
  v14 = sub_21A0E622C();
  MEMORY[0x21CED1980](v14);

  return v18;
}

uint64_t NewsLiveActivity.scheduledStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduledLiveActivity();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsLiveActivity(0);
  sub_21A00BDE4(v1 + *(v12 + 20), v6, type metadata accessor for NewsLiveActivitySubscriptionState);
  if ((*(v8 + 48))(v6, 3, v7))
  {
    sub_21A00B9F4(v6, type metadata accessor for NewsLiveActivitySubscriptionState);
    v13 = sub_21A0E495C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_21A00BA54(v6, v11, type metadata accessor for ScheduledLiveActivity);
    v15 = *(v7 + 20);
    v16 = sub_21A0E495C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, &v11[v15], v16);
    sub_21A00B9F4(v11, type metadata accessor for ScheduledLiveActivity);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

uint64_t NewsLiveActivity.hash(into:)()
{
  v1 = v0;
  v2 = sub_21A0E495C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ScheduledLiveActivity();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E626C();
  v19 = type metadata accessor for NewsLiveActivity(0);
  sub_21A00BDE4(v1 + v19[5], v18, type metadata accessor for NewsLiveActivitySubscriptionState);
  v20 = (*(v11 + 48))(v18, 3, v10);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }
  }

  else
  {
    if (!v20)
    {
      sub_21A00BA54(v18, v14, type metadata accessor for ScheduledLiveActivity);
      MEMORY[0x21CED2490](0);
      ScheduledLiveActivity.hash(into:)();
      sub_21A00B9F4(v14, type metadata accessor for ScheduledLiveActivity);
      goto LABEL_9;
    }

    v21 = 1;
  }

  MEMORY[0x21CED2490](v21);
LABEL_9:
  sub_219F45500(v1 + v19[6], v9, &qword_27CCD97F0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v22 = v27;
    (*(v3 + 32))(v27, v9, v2);
    sub_21A0E6DCC();
    sub_219F44858(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v3 + 8))(v22, v2);
  }

  v23 = *(v1 + v19[7]);
  sub_21A0E6DCC();
  if (v23 != 7)
  {
    sub_21A0E626C();
  }

  v24 = *(v1 + v19[8]);
  if (v24 == 7)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t NewsLiveActivity.hashValue.getter()
{
  sub_21A0E6DAC();
  NewsLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A00B294()
{
  sub_21A0E6DAC();
  NewsLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A00B2D8()
{
  sub_21A0E6DAC();
  NewsLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivitySubscriptionState.hash(into:)()
{
  v1 = type metadata accessor for ScheduledLiveActivity();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00BDE4(v0, v9, type metadata accessor for NewsLiveActivitySubscriptionState);
  v10 = (*(v2 + 48))(v9, 3, v1);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    if (!v10)
    {
      sub_21A00BA54(v9, v5, type metadata accessor for ScheduledLiveActivity);
      MEMORY[0x21CED2490](0);
      ScheduledLiveActivity.hash(into:)();
      return sub_21A00B9F4(v5, type metadata accessor for ScheduledLiveActivity);
    }

    v12 = 1;
  }

  return MEMORY[0x21CED2490](v12);
}

uint64_t NewsLiveActivitySubscriptionState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E6DAC();
  sub_21A00BDE4(v1, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 1;
LABEL_8:
    MEMORY[0x21CED2490](v12);
    return sub_21A0E6DFC();
  }

  sub_21A00BA54(v10, v6, type metadata accessor for ScheduledLiveActivity);
  MEMORY[0x21CED2490](0);
  ScheduledLiveActivity.hash(into:)();
  sub_21A00B9F4(v6, type metadata accessor for ScheduledLiveActivity);
  return sub_21A0E6DFC();
}

uint64_t sub_21A00B688()
{
  v1 = type metadata accessor for ScheduledLiveActivity();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00BDE4(v0, v9, type metadata accessor for NewsLiveActivitySubscriptionState);
  v10 = (*(v2 + 48))(v9, 3, v1);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    if (!v10)
    {
      sub_21A00BA54(v9, v6, type metadata accessor for ScheduledLiveActivity);
      MEMORY[0x21CED2490](0);
      ScheduledLiveActivity.hash(into:)();
      return sub_21A00B9F4(v6, type metadata accessor for ScheduledLiveActivity);
    }

    v12 = 1;
  }

  return MEMORY[0x21CED2490](v12);
}

uint64_t sub_21A00B828()
{
  v1 = v0;
  v2 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E6DAC();
  sub_21A00BDE4(v1, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 1;
LABEL_8:
    MEMORY[0x21CED2490](v12);
    return sub_21A0E6DFC();
  }

  sub_21A00BA54(v10, v7, type metadata accessor for ScheduledLiveActivity);
  MEMORY[0x21CED2490](0);
  ScheduledLiveActivity.hash(into:)();
  sub_21A00B9F4(v7, type metadata accessor for ScheduledLiveActivity);
  return sub_21A0E6DFC();
}

uint64_t sub_21A00B9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A00BA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledLiveActivity();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_21A00BDE4(a1, &v23 - v16, type metadata accessor for NewsLiveActivitySubscriptionState);
  sub_21A00BDE4(a2, &v17[v18], type metadata accessor for NewsLiveActivitySubscriptionState);
  v19 = *(v5 + 48);
  v20 = v19(v17, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v17[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v17[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_219F6409C(v17, &qword_27CCDB048);
    return 0;
  }

  if (!v20)
  {
    sub_21A00BDE4(v17, v12, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (!v19(&v17[v18], 3, v4))
    {
      sub_21A00BA54(&v17[v18], v8, type metadata accessor for ScheduledLiveActivity);
      v21 = _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21A00B9F4(v8, type metadata accessor for ScheduledLiveActivity);
      sub_21A00B9F4(v12, type metadata accessor for ScheduledLiveActivity);
      sub_21A00B9F4(v17, type metadata accessor for NewsLiveActivitySubscriptionState);
      return v21;
    }

    sub_21A00B9F4(v12, type metadata accessor for ScheduledLiveActivity);
    goto LABEL_11;
  }

  if (v19(&v17[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_21A00B9F4(v17, type metadata accessor for NewsLiveActivitySubscriptionState);
  return 1;
}

uint64_t sub_21A00BDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_21A0E495C();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v58 = &v54 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for ScheduledLiveActivity();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v54 - v24;
  v26 = *a1;
  v27 = a1[1];
  v28 = *a2;
  v29 = a2[1];
  v61 = a2;
  if ((v26 != v28 || v27 != v29) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v56 = v4;
  v55 = type metadata accessor for NewsLiveActivity(0);
  v30 = *(v55 + 20);
  v31 = *(v22 + 48);
  sub_21A00BDE4(a1 + v30, v25, type metadata accessor for NewsLiveActivitySubscriptionState);
  sub_21A00BDE4(v61 + v30, &v25[v31], type metadata accessor for NewsLiveActivitySubscriptionState);
  v32 = *(v14 + 48);
  v33 = v32(v25, 3, v13);
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      if (v32(&v25[v31], 3, v13) != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v32(&v25[v31], 3, v13) != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v33)
  {
    if (v32(&v25[v31], 3, v13) != 1)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_21A00B9F4(v25, type metadata accessor for NewsLiveActivitySubscriptionState);
    goto LABEL_15;
  }

  sub_21A00BDE4(v25, v21, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (v32(&v25[v31], 3, v13))
  {
    sub_21A00B9F4(v21, type metadata accessor for ScheduledLiveActivity);
LABEL_10:
    v34 = &qword_27CCDB048;
    v35 = v25;
LABEL_21:
    sub_219F6409C(v35, v34);
    return 0;
  }

  sub_21A00BA54(&v25[v31], v17, type metadata accessor for ScheduledLiveActivity);
  v50 = _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(v21, v17);
  sub_21A00B9F4(v17, type metadata accessor for ScheduledLiveActivity);
  sub_21A00B9F4(v21, type metadata accessor for ScheduledLiveActivity);
  sub_21A00B9F4(v25, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (!v50)
  {
    return 0;
  }

LABEL_15:
  v36 = v55;
  v37 = *(v55 + 24);
  v38 = *(v59 + 48);
  sub_219F45500(a1 + v37, v12, &qword_27CCD97F0);
  sub_219F45500(v61 + v37, &v12[v38], &qword_27CCD97F0);
  v39 = v60;
  v40 = *(v60 + 48);
  v41 = v56;
  if (v40(v12, 1, v56) == 1)
  {
    if (v40(&v12[v38], 1, v41) == 1)
    {
      sub_219F6409C(v12, &qword_27CCD97F0);
      goto LABEL_24;
    }

LABEL_20:
    v34 = &qword_27CCD98F8;
    v35 = v12;
    goto LABEL_21;
  }

  v42 = v58;
  sub_219F45500(v12, v58, &qword_27CCD97F0);
  if (v40(&v12[v38], 1, v41) == 1)
  {
    (*(v39 + 8))(v42, v41);
    goto LABEL_20;
  }

  v44 = v57;
  (*(v39 + 32))(v57, &v12[v38], v41);
  sub_219F44858(&qword_27CCD9900, MEMORY[0x277CC9578]);
  v45 = sub_21A0E61CC();
  v46 = *(v39 + 8);
  v46(v44, v41);
  v46(v42, v41);
  sub_219F6409C(v12, &qword_27CCD97F0);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v47 = *(v36 + 28);
  v48 = *(a1 + v47);
  v49 = *(v61 + v47);
  if (v48 == 7)
  {
    if (v49 != 7)
    {
      return 0;
    }
  }

  else if (v49 == 7 || (sub_21A0AB1B8(v48, v49) & 1) == 0)
  {
    return 0;
  }

  v51 = *(v36 + 32);
  v52 = *(a1 + v51);
  v53 = *(v61 + v51);
  if (v52 == 7)
  {
    if (v53 != 7)
    {
      return 0;
    }
  }

  else if (v53 == 7 || (sub_21A0AB1B8(v52, v53) & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t dispatch thunk of NewsLiveActivityRepository.activities.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4E2F8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of NewsLiveActivityRepository.store(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F49B18;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NewsLiveActivityRepository.removeActivity(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return v9(a1, a2, a3);
}

uint64_t AppGroupActivityFileSystem.init(appGroup:)()
{
  v0 = sub_21A0E46CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A0E4D9C();
  strcpy(v11, "LiveActivities");
  v11[15] = -18;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91C0], v0);
  sub_219F3F130();
  sub_21A0E480C();

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t AppGroupActivityFileSystem.activitySubdirectories.getter()
{
  v37[1] = *MEMORY[0x277D85DE8];
  sub_21A0E47AC();
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21A0E61DC();

  v37[0] = 0;
  v2 = [v0 contentsOfDirectoryAtPath:v1 error:v37];

  v3 = v37[0];
  if (v2)
  {
    v4 = sub_21A0E639C();
    v5 = v3;

    v6 = *(v4 + 16);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v37[0] = MEMORY[0x277D84F90];
      sub_219FBE79C(0, v6, 0);
      v8 = v37[0];
      v9 = (v4 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v37[0] = v8;
        v13 = v8[2];
        v12 = v8[3];

        if (v13 >= v12 >> 1)
        {
          sub_219FBE79C((v12 > 1), v13 + 1, 1);
          v8 = v37[0];
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v11;
        v14[5] = v10;
        v9 += 2;
        --v6;
      }

      while (v6);

      v15 = v8[2];
      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
      v15 = *(MEMORY[0x277D84F90] + 16);
      if (v15)
      {
LABEL_8:
        v37[0] = v7;
        sub_219FBE888(0, v15, 0);
        v16 = v37[0];
        v17 = v8 + 5;
        do
        {
          v19 = *(v17 - 1);
          v18 = *v17;
          v37[0] = v16;
          v20 = v16[2];
          v21 = v16[3];

          if (v20 >= v21 >> 1)
          {
            sub_219FBE888((v21 > 1), v20 + 1, 1);
            v16 = v37[0];
          }

          v16[2] = v20 + 1;
          v22 = &v16[2 * v20];
          v22[4] = v19;
          v22[5] = v18;
          v17 += 2;
          --v15;
        }

        while (v15);

        goto LABEL_22;
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    v35 = sub_219FE9484(v16);

    return v35;
  }

  v23 = v37[0];
  v24 = sub_21A0E464C();

  swift_willThrow();
  swift_getErrorValue();
  v25 = v24;
  v26 = sub_21A00CEF0();

  if (!v26)
  {
    if (qword_280C88468 != -1)
    {
      swift_once();
    }

    v27 = sub_21A0E516C();
    __swift_project_value_buffer(v27, qword_280C88470);
    v28 = v24;
    v29 = sub_21A0E514C();
    v30 = sub_21A0E669C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v24;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_219F39000, v29, v30, "Failed retrieving list of cache subdirectories. Error=%@", v31, 0xCu);
      sub_219F8590C(v32);
      MEMORY[0x21CED2D30](v32, -1, -1);
      MEMORY[0x21CED2D30](v31, -1, -1);
    }
  }

  v35 = sub_219FE9484(MEMORY[0x277D84F90]);

  return v35;
}

BOOL sub_21A00CEF0()
{
  v0 = sub_21A0E6D4C();
  v2 = v1;
  if (v0 == sub_21A0E620C() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_21A0E6C5C();

    result = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  return sub_21A0E6D3C() == 260 || sub_21A0E6D3C() == 4;
}

uint64_t AppGroupActivityFileSystem.handlesForExistingFiles(in:)(uint64_t *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v55 = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  MEMORY[0x28223BE20](v55, v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E46CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A0E481C();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  *&v57 = v14;
  *(&v57 + 1) = v15;
  (*(v6 + 104))(v9, *MEMORY[0x277CC91C0], v5);
  sub_219F3F130();

  sub_21A0E480C();
  (*(v6 + 8))(v9, v5);
  v16 = v13;

  v17 = [objc_opt_self() defaultManager];
  v18 = sub_21A0E474C();
  type metadata accessor for URLResourceKey(0);
  v19 = MEMORY[0x277D84F90];
  v20 = sub_21A0E638C();
  *&v57 = 0;
  v21 = [v17 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v20 options:0 error:&v57];

  v22 = v57;
  if (!v21)
  {
    v37 = v57;
    v38 = sub_21A0E464C();

    swift_willThrow();
    (*(v54 + 8))(v16, v10);
    swift_getErrorValue();
    v39 = v38;
    v40 = sub_21A00CEF0();

    if (!v40)
    {
      if (qword_280C88468 != -1)
      {
        swift_once();
      }

      v41 = sub_21A0E516C();
      __swift_project_value_buffer(v41, qword_280C88470);

      v42 = v38;
      v43 = sub_21A0E514C();
      v44 = sub_21A0E669C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = v14;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v57 = v48;
        *v46 = 136315394;
        *(v46 + 4) = sub_219F50144(v45, v15, &v57);
        *(v46 + 12) = 2112;
        v49 = v38;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v50;
        *v47 = v50;
        _os_log_impl(&dword_219F39000, v43, v44, "Failed retrieving list of files in directory. Activity=%s, Error=%@", v46, 0x16u);
        sub_219F8590C(v47);
        MEMORY[0x21CED2D30](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x21CED2D30](v48, -1, -1);
        MEMORY[0x21CED2D30](v46, -1, -1);
      }
    }

    return MEMORY[0x277D84F90];
  }

  v23 = v54;
  v24 = sub_21A0E639C();
  v25 = v22;

  v26 = *(v24 + 16);
  if (!v26)
  {

    (*(v23 + 8))(v16, v10);
    return MEMORY[0x277D84F90];
  }

  v53 = v16;
  v56 = v19;
  sub_219FBE90C(0, v26, 0);
  v27 = v56;
  v30 = *(v23 + 16);
  v29 = v23 + 16;
  v28 = v30;
  v31 = (*(v29 + 64) + 32) & ~*(v29 + 64);
  v52 = v24;
  v32 = v24 + v31;
  v33 = *(v29 + 56);
  do
  {
    v28(v4, v32, v10);
    v56 = v27;
    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_219FBE90C((v34 > 1), v35 + 1, 1);
      v27 = v56;
    }

    v58 = v55;
    v59 = sub_21A00F5AC(&qword_27CCDB688, type metadata accessor for AppGroupActivityFileSystem.FileHandle);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
    sub_21A00F4EC(v4, boxed_opaque_existential_1);
    *(v27 + 16) = v35 + 1;
    sub_219F3EBE0(&v57, v27 + 40 * v35 + 32);
    sub_21A00F550(v4);
    v32 += v33;
    --v26;
  }

  while (v26);
  (*(v54 + 8))(v53, v10);

  return v27;
}

uint64_t AppGroupActivityFileSystem.fileHandle(forAssetKeyedBy:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21A0E46CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E481C();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v20[0] = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v21 = v14;
  a2[3] = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  a2[4] = sub_21A00F5AC(&qword_27CCDB688, type metadata accessor for AppGroupActivityFileSystem.FileHandle);
  v20[1] = __swift_allocate_boxed_opaque_existential_1(a2);
  v24 = v13;
  v25 = v12;
  v16 = *(v5 + 104);
  v16(v8, *MEMORY[0x277CC91C0], v4);
  sub_219F3F130();

  sub_21A0E480C();
  v17 = *(v5 + 8);
  v17(v8, v4);

  v24 = v21;
  v25 = v15;
  v16(v8, *MEMORY[0x277CC91D0], v4);
  v18 = v20[0];
  sub_21A0E480C();
  v17(v8, v4);

  return (*(v22 + 8))(v18, v23);
}

uint64_t AppGroupActivityFileSystem.removeContents(of:)(uint64_t *a1)
{
  v2[9] = v1;
  v4 = sub_21A0E46CC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_21A0E481C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v2[17] = v6;
  v2[18] = v7;
  v2[19] = v8;

  return MEMORY[0x2822009F8](sub_21A00DA04, 0, 0);
}

uint64_t sub_21A00DA04()
{
  v60 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  v0[5] = v0[18];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[6] = v0[19];
  (*(v2 + 104))(v1, *MEMORY[0x277CC91C0], v3);
  sub_219F3F130();

  sub_21A0E480C();
  (*(v2 + 8))(v1, v3);

  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  v8 = sub_21A0E516C();
  __swift_project_value_buffer(v8, qword_280C88470);
  v57 = *(v7 + 16);
  v57(v5, v4, v6);
  v9 = sub_21A0E514C();
  v10 = sub_21A0E66BC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v59[0] = v54;
    *v15 = 136315138;
    sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v16 = sub_21A0E6BFC();
    v18 = v17;
    v19 = v14;
    v20 = *(v13 + 8);
    v20(v12, v19);
    v21 = sub_219F50144(v16, v18, v59);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_219F39000, v9, v10, "Removing cached activity directory. URL=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x21CED2D30](v54, -1, -1);
    MEMORY[0x21CED2D30](v15, -1, -1);
  }

  else
  {

    v22 = v14;
    v20 = *(v13 + 8);
    v20(v12, v22);
  }

  v23 = [objc_opt_self() defaultManager];
  v24 = sub_21A0E474C();
  v0[7] = 0;
  v25 = [v23 removeItemAtURL:v24 error:v0 + 7];

  v26 = v0[7];
  if (v25)
  {
    v27 = v0[17];
    v28 = v0[13];
    v29 = v26;
    v20(v27, v28);
  }

  else
  {
    v30 = v26;
    v31 = sub_21A0E464C();

    swift_willThrow();
    swift_getErrorValue();
    v32 = v31;
    v33 = sub_21A00CEF0();

    if (!v33)
    {
      v56 = v20;
      v57(v0[15], v0[17], v0[13]);
      v35 = v31;
      v36 = sub_21A0E514C();
      v37 = sub_21A0E669C();

      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[15];
      v40 = v0[13];
      if (v38)
      {
        v41 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59[0] = v58;
        *v41 = 136315394;
        sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
        v42 = sub_21A0E6BFC();
        v44 = v43;
        v45 = v40;
        v46 = v56;
        v56(v39, v45);
        v47 = sub_219F50144(v42, v44, v59);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2112;
        v48 = v31;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v49;
        *v55 = v49;
        _os_log_impl(&dword_219F39000, v36, v37, "Failed removing contents of activity directory. URL=%s, Error=%@", v41, 0x16u);
        sub_219F8590C(v55);
        MEMORY[0x21CED2D30](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x21CED2D30](v58, -1, -1);
        MEMORY[0x21CED2D30](v41, -1, -1);
      }

      else
      {

        v50 = v40;
        v46 = v56;
        v56(v39, v50);
      }

      v51 = v0[17];
      v52 = v0[13];
      swift_willThrow();
      v46(v51, v52);

      v34 = v0[1];
      goto LABEL_15;
    }

    v20(v0[17], v0[13]);
  }

  v34 = v0[1];
LABEL_15:

  return v34();
}

uint64_t sub_21A00E0A0()
{
  v1 = AppGroupActivityFileSystem.activitySubdirectories.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21A00E100@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  a1[4] = sub_21A00F5AC(&qword_27CCDB688, type metadata accessor for AppGroupActivityFileSystem.FileHandle);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21A000850(boxed_opaque_existential_1);
}

uint64_t sub_21A00E198(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return AppGroupActivityFileSystem.removeContents(of:)(a1);
}

uint64_t sub_21A00E22C()
{
  v2 = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A0E483C();
  v8 = v7;
  if (v1)
  {
    return v6;
  }

  v24[1] = 0;
  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v9 = sub_21A0E516C();
  __swift_project_value_buffer(v9, qword_280C88470);
  sub_21A00F4EC(v0, v5);
  sub_219F48FB4(v6, v8);
  v10 = sub_21A0E514C();
  v11 = sub_21A0E668C();
  if (!os_log_type_enabled(v10, v11))
  {
    sub_219F49008(v6, v8);

    sub_21A00F550(v5);
    return v6;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  v14 = result;
  v25 = result;
  *v12 = 134218242;
  v15 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v8);
LABEL_16:
    *(v12 + 4) = v16;
    sub_219F49008(v6, v8);
    *(v12 + 12) = 2080;
    sub_21A0E481C();
    sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v20 = sub_21A0E6BFC();
    v22 = v21;
    sub_21A00F550(v5);
    v23 = sub_219F50144(v20, v22, &v25);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_219F39000, v10, v11, "Read %ld bytes from %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CED2D30](v14, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);

    return v6;
  }

  LODWORD(v16) = HIDWORD(v6) - v6;
  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    v16 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A00E4E8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_21A0E481C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A00E64C, 0, 0);
}

uint64_t sub_21A00E64C()
{
  v124 = v0;
  v123[1] = *MEMORY[0x277D85DE8];
  sub_21A0E469C();
  sub_21A0E477C();
  v2 = &off_278250000;
  v121 = objc_opt_self();
  v3 = [v121 defaultManager];
  sub_21A0E47AC();
  v4 = sub_21A0E61DC();

  v5 = [v3 fileExistsAtPath_];

  v6 = &unk_280C88000;
  if ((v5 & 1) == 0)
  {
    if (qword_280C88468 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = sub_21A0E516C();
    __swift_project_value_buffer(v24, qword_280C88470);
    v118 = *(v22 + 16);
    v118(v21, v20, v23);
    v13 = sub_21A0E514C();
    v25 = sub_21A0E668C();
    v26 = os_log_type_enabled(v13, v25);
    v16 = *(v0 + 104);
    v1 = *(v0 + 72);
    v17 = *(v0 + 80);
    if (v26)
    {
      v27 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v123[0] = v117;
      *v27 = 136315138;
      sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v28 = sub_21A0E6BFC();
      v30 = v29;
      v7 = *(v17 + 8);
      v7(v16, v1);
      v31 = v28;
      v6 = &unk_280C88000;
      v32 = sub_219F50144(v31, v30, v123);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_219F39000, v13, v25, "Requesting creation of containing asset directory. URL=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x21CED2D30](v117, -1, -1);
      v33 = v27;
      v2 = &off_278250000;
      MEMORY[0x21CED2D30](v33, -1, -1);

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = *(*(v0 + 80) + 8);
  v7(*(v0 + 112), *(v0 + 72));
  while (1)
  {
    if (v6[141] != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 64);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = sub_21A0E516C();
    v13 = __swift_project_value_buffer(v12, qword_280C88470);
    sub_21A00F4EC(v9, v8);
    sub_219F48FB4(v11, v10);
    v14 = sub_21A0E514C();
    v15 = sub_21A0E668C();
    if (!os_log_type_enabled(v14, v15))
    {
      v34 = *(v0 + 64);
      sub_219F49008(*(v0 + 24), *(v0 + 32));

      sub_21A00F550(v34);
      goto LABEL_28;
    }

    v16 = *(v0 + 32);
    v17 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v123[0] = v2;
    *v17 = 134218242;
    v18 = v16 >> 62;
    if ((v16 >> 62) <= 1)
    {
      if (!v18)
      {
        v19 = *(v0 + 38);
        goto LABEL_27;
      }

      v64 = *(v0 + 24);
      v65 = *(v0 + 28);
      v37 = __OFSUB__(v65, v64);
      LODWORD(v19) = v65 - v64;
      if (!v37)
      {
        v19 = v19;
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_49;
    }

    if (v18 != 2)
    {
      break;
    }

    v35 = *(*(v0 + 24) + 16);
    v36 = *(*(v0 + 24) + 24);
    v37 = __OFSUB__(v36, v35);
    v19 = v36 - v35;
    if (!v37)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_18:

    v7 = *(v17 + 8);
    v7(v16, v1);
LABEL_19:
    v38 = [v121 v2[204]];
    v39 = sub_21A0E474C();
    *(v0 + 16) = 0;
    v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v0 + 16];

    v41 = *(v0 + 16);
    v42 = *(v0 + 112);
    if (v40)
    {
      v118(*(v0 + 96), *(v0 + 112), *(v0 + 72));
      v43 = v41;
      v44 = sub_21A0E514C();
      v2 = sub_21A0E668C();
      v45 = os_log_type_enabled(v44, v2);
      v46 = *(v0 + 112);
      v47 = *(v0 + 96);
      v48 = *(v0 + 72);
      if (v45)
      {
        LODWORD(v121) = v2;
        v2 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v123[0] = v120;
        *v2 = 136315138;
        sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
        v1 = sub_21A0E6BFC();
        v119 = v46;
        v49 = v6;
        v50 = v7;
        v52 = v51;
        v50(v47, v48);
        v53 = sub_219F50144(v1, v52, v123);
        v7 = v50;
        v6 = v49;

        *(v2 + 4) = v53;
        _os_log_impl(&dword_219F39000, v44, v121, "Created (or already existed) directory for assets. URL=%s", v2, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v120);
        MEMORY[0x21CED2D30](v120, -1, -1);
        MEMORY[0x21CED2D30](v2, -1, -1);

        v7(v119, v48);
      }

      else
      {

        v7(v47, v48);
        v7(v46, v48);
      }
    }

    else
    {
      v54 = *(v0 + 72);
      v2 = *(v0 + 80);
      v55 = v41;
      v56 = sub_21A0E464C();

      swift_willThrow();
      v7(v42, v54);
      v57 = v56;
      v58 = sub_21A0E514C();
      v59 = sub_21A0E669C();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = v56;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v63;
        *v61 = v63;
        _os_log_impl(&dword_219F39000, v58, v59, "Failed to create activity subdirectory. Error=%@", v60, 0xCu);
        sub_219F8590C(v61);
        MEMORY[0x21CED2D30](v61, -1, -1);
        MEMORY[0x21CED2D30](v60, -1, -1);
      }

      else
      {
      }
    }
  }

  v19 = 0;
LABEL_27:
  v66 = *(v0 + 64);
  v67 = *(v0 + 24);
  v68 = *(v0 + 32);
  *(v17 + 4) = v19;
  sub_219F49008(v67, v68);
  *(v17 + 12) = 2080;
  sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
  v6 = sub_21A0E6BFC();
  v70 = v69;
  sub_21A00F550(v66);
  v71 = sub_219F50144(v6, v70, v123);

  *(v17 + 14) = v71;
  _os_log_impl(&dword_219F39000, v14, v15, "Writing %ld bytes to %s", v17, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v2);
  MEMORY[0x21CED2D30](v2, -1, -1);
  MEMORY[0x21CED2D30](v17, -1, -1);

LABEL_28:
  sub_21A0E469C();
  sub_21A0E488C();
  v72 = *(v0 + 32);
  v73 = *(v0 + 40);
  v74 = *(v0 + 24);
  v75 = *(v0 + 56);
  v7(*(v0 + 88), *(v0 + 72));
  sub_21A00F4EC(v73, v75);
  sub_219F48FB4(v74, v72);
  v76 = sub_21A0E514C();
  v77 = sub_21A0E668C();
  if (!os_log_type_enabled(v76, v77))
  {
    v83 = *(v0 + 120);
    v84 = *(v0 + 72);
    v85 = *(v0 + 56);
    v87 = *(v0 + 24);
    v86 = *(v0 + 32);

    sub_219F49008(v87, v86);
    sub_21A00F550(v85);
    v7(v83, v84);
    goto LABEL_44;
  }

  v78 = *(v0 + 32);
  v79 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  v123[0] = v80;
  *v79 = 134218242;
  v81 = v78 >> 62;
  v122 = v7;
  if ((v78 >> 62) <= 1)
  {
    if (!v81)
    {
      v82 = *(v0 + 38);
      goto LABEL_43;
    }

    v105 = *(v0 + 24);
    v106 = *(v0 + 28);
    v37 = __OFSUB__(v106, v105);
    LODWORD(v82) = v106 - v105;
    if (!v37)
    {
      v82 = v82;
      goto LABEL_43;
    }

LABEL_50:
    __break(1u);
  }

  if (v81 != 2)
  {
    v82 = 0;
    goto LABEL_43;
  }

  v88 = *(*(v0 + 24) + 16);
  v89 = *(*(v0 + 24) + 24);
  v37 = __OFSUB__(v89, v88);
  v82 = v89 - v88;
  if (v37)
  {
    __break(1u);
    v90 = *(v0 + 24);
    v91 = *(v0 + 28);
    v37 = __OFSUB__(v91, v90);
    v92 = v91 - v90;
    if (!v37)
    {
      v93 = *(v0 + 48);
      v94 = *(v0 + 24);
      v95 = *(v0 + 32);
      *(v77 + 4) = v92;
      sub_219F49008(v94, v95);
      *(v77 + 12) = 2080;
      sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v96 = sub_21A0E6BFC();
      v98 = v97;
      sub_21A00F550(v93);
      v99 = sub_219F50144(v96, v98, v123);

      *(v77 + 14) = v99;
      *(v77 + 22) = 2112;
      v100 = v76;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 24) = v101;
      *v6 = v101;
      _os_log_impl(&dword_219F39000, v79, v80, "Failed to replace asset contents. Data=%ld (bytes), URL=%s, Error=%@", v77, 0x20u);
      sub_219F8590C(v6);
      MEMORY[0x21CED2D30](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v2);
      MEMORY[0x21CED2D30](v2, -1, -1);
      MEMORY[0x21CED2D30](v77, -1, -1);

      v102 = *(v0 + 120);
      v103 = *(v0 + 72);
      swift_willThrow();
      v122(v102, v103);

      v104 = *(v0 + 8);
      goto LABEL_45;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_43:
  v107 = *(v0 + 120);
  v108 = *(v0 + 72);
  v109 = *(v0 + 56);
  v110 = *(v0 + 24);
  v111 = *(v0 + 32);
  *(v79 + 4) = v82;
  sub_219F49008(v110, v111);
  *(v79 + 12) = 2080;
  sub_21A00F5AC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
  v112 = sub_21A0E6BFC();
  v114 = v113;
  sub_21A00F550(v109);
  v115 = sub_219F50144(v112, v114, v123);

  *(v79 + 14) = v115;
  _os_log_impl(&dword_219F39000, v76, v77, "Wrote %ld bytes to %s", v79, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v80);
  MEMORY[0x21CED2D30](v80, -1, -1);
  MEMORY[0x21CED2D30](v79, -1, -1);

  v122(v107, v108);
LABEL_44:

  v104 = *(v0 + 8);
LABEL_45:

  return v104();
}

uint64_t sub_21A00F424(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return sub_21A00E4E8(a1, a2);
}

uint64_t sub_21A00F4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A00F550(uint64_t a1)
{
  v2 = type metadata accessor for AppGroupActivityFileSystem.FileHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A00F5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E481C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E481C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A00F720(uint64_t a1)
{
  result = sub_21A00F5AC(&qword_27CCDB6A0, type metadata accessor for AppGroupActivityFileSystem.FileHandle);
  *(a1 + 8) = result;
  return result;
}

uint64_t ActivityAsset.values(matching:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v57 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21A0E481C();
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v63 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for ActivityAsset();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v54[-v26];
  v28 = *a1;
  v55 = a1[1];
  LODWORD(v56) = v28;
  v29 = *(a1 + 1);
  v30 = v2;
  sub_21A00FD4C(v2, &v54[-v26], type metadata accessor for ActivityAsset);
  v62 = v19;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A010F2C(v27, type metadata accessor for ActivityAsset);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA5F8);
    v45 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A0EE0A0;
    sub_21A00FD4C(v30, v35 + v45, type metadata accessor for ActivityAsset);
    return v35;
  }

  v60 = v20;
  sub_219FC6E38(v27, v18, type metadata accessor for URLAssetConfiguration);
  sub_21A00FD4C(v18, v14, type metadata accessor for URLAssetConfiguration.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v57;
    sub_219FC6E38(v14, v57, type metadata accessor for URLAssetConfiguration.Recipe);
    LOBYTE(v64[0]) = v56;
    BYTE1(v64[0]) = v55;
    v64[1] = v29;
    v33 = URLAssetConfiguration.Recipe.values(matching:)(v64);
    sub_21A010F2C(v32, type metadata accessor for URLAssetConfiguration.Recipe);
    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_4;
    }

LABEL_11:

    sub_21A010F2C(v18, type metadata accessor for URLAssetConfiguration);
    return MEMORY[0x277D84F90];
  }

  v46 = v58;
  v47 = v59 + 32;
  v48 = *(v59 + 32);
  v49 = v63;
  v48(v63, v14, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA640);
  v50 = (*(v47 + 48) + 32) & ~*(v47 + 48);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_21A0EE0A0;
  v52 = v51 + v50;
  v33 = v51;
  v48(v52, v49, v46);
  v34 = *(v33 + 16);
  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_4:
  v57 = v18;
  v64[0] = MEMORY[0x277D84F90];
  sub_219FBE92C(0, v34, 0);
  v35 = v64[0];
  v36 = v58;
  v37 = v59 + 16;
  v59 = *(v59 + 16);
  v38 = *(v37 + 64);
  v56 = v33;
  v39 = v33 + ((v38 + 32) & ~v38);
  v40 = *(v37 + 56);
  v41 = (v37 + 16);
  do
  {
    v42 = v63;
    (v59)(v63, v39, v36);
    (*v41)(v24, v42, v36);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v64[0] = v35;
    v44 = *(v35 + 16);
    v43 = *(v35 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_219FBE92C(v43 > 1, v44 + 1, 1);
      v36 = v58;
      v35 = v64[0];
    }

    *(v35 + 16) = v44 + 1;
    sub_219FC6E38(v24, v35 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v44, type metadata accessor for ActivityAsset);
    v39 += v40;
    --v34;
  }

  while (v34);
  sub_21A010F2C(v57, type metadata accessor for URLAssetConfiguration);

  return v35;
}

uint64_t sub_21A00FD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityAsset.value(matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A0E481C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00FD4C(v3, v24, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v30;
    sub_219FC6E38(v24, v20, type metadata accessor for URLAssetConfiguration);
    sub_21A00FD4C(v20, v11, type metadata accessor for URLAssetConfiguration.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_219FC6E38(v11, v7, type metadata accessor for URLAssetConfiguration.Recipe);
      v26 = *(v29 + 16);
      v31[0] = *v29;
      v31[1] = v26;
      v32 = *(v29 + 32);
      URLAssetConfiguration.Recipe.value(matching:)(v31, v16);
      sub_21A010F2C(v7, type metadata accessor for URLAssetConfiguration.Recipe);
      sub_21A010F2C(v20, type metadata accessor for URLAssetConfiguration);
      (*(v13 + 32))(v25, v16, v12);
    }

    else
    {
      sub_21A010F2C(v20, type metadata accessor for URLAssetConfiguration);
      v28 = *(v13 + 32);
      v28(v16, v11, v12);
      v28(v25, v16, v12);
    }

    swift_storeEnumTagMultiPayload();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_21A010F2C(v24, type metadata accessor for ActivityAsset);
    return sub_21A00FD4C(v3, v30, type metadata accessor for ActivityAsset);
  }
}

uint64_t sub_21A010168()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0101CC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A010218@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21A010298@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21A0102F0(uint64_t a1)
{
  v2 = sub_21A010F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A01032C(uint64_t a1)
{
  v2 = sub_21A010F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for URLAssetConfiguration(0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v31 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB6A8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB6B0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - v17;
  v29 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v29, v19);
  v28 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A010F8C();
  v21 = v35;
  sub_21A0E6E7C();
  if (v21)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_219F6409C(v13, &qword_27CCDB6A8);
    sub_219F3FDF4(a1, &v32);
    v7 = v31;
    URLAssetConfiguration.init(from:)(&v32, v31);
  }

  else
  {
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    v23 = *(sub_21A0E6AFC() + 16);

    v24 = (v15 + 8);
    if (v23)
    {
      sub_219F90414();
      sub_21A0E6ADC();
      (*v24)(v18, v14);
      v25 = v33;
      v26 = v34;
      v22 = v28;
      *v28 = v32;
      *(v22 + 16) = v25;
      *(v22 + 17) = v26;
      goto LABEL_6;
    }

    sub_219F3FDF4(a1, &v32);
    URLAssetConfiguration.init(from:)(&v32, v7);
    (*v24)(v18, v14);
  }

  v22 = v28;
  sub_219FC6E38(v7, v28, type metadata accessor for URLAssetConfiguration);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  sub_219FC6E38(v22, v30, type metadata accessor for ActivityAsset);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityAsset.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB6C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21[-v11];
  v13 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A00FD4C(v2, v16, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FC6E38(v16, v7, type metadata accessor for URLAssetConfiguration);
    URLAssetConfiguration.encode(to:)(a1);
    return sub_21A010F2C(v7, type metadata accessor for URLAssetConfiguration);
  }

  else
  {
    v18 = *v16;
    v19 = *(v16 + 1);
    v20 = v16[16];
    v22 = *(v16 + 17);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21A010F8C();
    sub_21A0E6EAC();
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v22;
    sub_219F913D8();
    sub_21A0E6BBC();
    (*(v9 + 8))(v12, v8);
    return sub_219F79CD8();
  }
}

uint64_t ActivityAsset.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00FD4C(v1, v9, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FC6E38(v9, v5, type metadata accessor for URLAssetConfiguration);
    v21 = 0x28204C5255;
    v22 = 0xE500000000000000;
    v10 = URLAssetConfiguration.description.getter();
    MEMORY[0x21CED1980](v10);

    MEMORY[0x21CED1980](41, 0xE100000000000000);
    v11 = v21;
    sub_21A010F2C(v5, type metadata accessor for URLAssetConfiguration);
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    v14 = v9[16];
    v15 = *(v9 + 17);
    v25 = 0x6F626D7953204653;
    v26 = 0xEB0000000028206CLL;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v16 = SFSymbolConfiguration.description.getter();
    v18 = v17;
    sub_219F79CD8();
    MEMORY[0x21CED1980](v16, v18);

    MEMORY[0x21CED1980](41, 0xE100000000000000);
    return v25;
  }

  return v11;
}

uint64_t ActivityAsset.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A00FD4C(v2, v11, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219FC6E38(v11, v7, type metadata accessor for URLAssetConfiguration);
    MEMORY[0x21CED2490](1);
    URLAssetConfiguration.Format.hash(into:)(a1);
    return sub_21A010F2C(v7, type metadata accessor for URLAssetConfiguration);
  }

  v13 = v11[16];
  v14 = v11[17];
  v15 = v11[18];
  MEMORY[0x21CED2490](0);
  MEMORY[0x21CED2490](v13);
  sub_21A0E626C();
  if (v14 == 9)
  {
    sub_21A0E6DCC();
    if (v15 != 3)
    {
LABEL_5:
      sub_21A0E6DCC();
      sub_21A0E626C();
      sub_219F79CD8();
    }
  }

  else
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v14);
    if (v15 != 3)
    {
      goto LABEL_5;
    }
  }

  sub_21A0E6DCC();
  return sub_219F79CD8();
}

uint64_t ActivityAsset.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityAsset.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A010EAC()
{
  sub_21A0E6DAC();
  ActivityAsset.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A010EF0()
{
  sub_21A0E6DAC();
  ActivityAsset.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A010F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A010F8C()
{
  result = qword_27CCDB6B8;
  if (!qword_27CCDB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB6B8);
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore13ActivityAssetO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityAsset();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99B0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = v32 - v19;
  v21 = v32 + *(v18 + 56) - v19;
  sub_21A00FD4C(a1, v32 - v19, type metadata accessor for ActivityAsset);
  sub_21A00FD4C(a2, v21, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A00FD4C(v20, v12, type metadata accessor for ActivityAsset);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_219FC6E38(v21, v7, type metadata accessor for URLAssetConfiguration);
      v22 = _s22NewsLiveActivitiesCore21URLAssetConfigurationV6FormatO2eeoiySbAE_AEtFZ_0(v12, v7);
      sub_21A010F2C(v7, type metadata accessor for URLAssetConfiguration);
      sub_21A010F2C(v12, type metadata accessor for URLAssetConfiguration);
LABEL_9:
      sub_21A010F2C(v20, type metadata accessor for ActivityAsset);
      return v22 & 1;
    }

    sub_21A010F2C(v12, type metadata accessor for URLAssetConfiguration);
  }

  else
  {
    sub_21A00FD4C(v20, v15, type metadata accessor for ActivityAsset);
    v24 = *v15;
    v23 = *(v15 + 1);
    v25 = v15[16];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *(v15 + 17);
      v27 = *v21;
      v28 = *(v21 + 1);
      v29 = v21[16];
      v30 = *(v21 + 17);
      v35[0] = v24;
      v35[1] = v23;
      v36 = v25;
      v37 = v26;
      v32[0] = v27;
      v32[1] = v28;
      v33 = v29;
      v34 = v30;
      v22 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v35, v32);
      sub_219F79CD8();
      sub_219F79CD8();
      goto LABEL_9;
    }

    sub_219F79CD8();
  }

  sub_219F6409C(v20, &qword_27CCD99B0);
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_21A011324()
{
  result = qword_27CCDB6C8;
  if (!qword_27CCDB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB6C8);
  }

  return result;
}

unint64_t sub_21A01137C()
{
  result = qword_27CCDB6D0;
  if (!qword_27CCDB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB6D0);
  }

  return result;
}

unint64_t sub_21A0113D4()
{
  result = qword_27CCDB6D8;
  if (!qword_27CCDB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB6D8);
  }

  return result;
}

uint64_t sub_21A011428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v80 = a1;
  v77 = a3;
  v4 = type metadata accessor for PrimaryElectionStaticAttributes();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for PrimaryElectionContentState() + 20);
  v76 = a2;
  v10 = *(a2 + v9 + *(type metadata accessor for PrimaryElectionData() + 20));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v99 = v5;
    v100 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v113 = MEMORY[0x277D84F90];
    sub_219FBE644(0, v11, 0);
    v12 = v113;
    v13 = (v10 + 64);
    v14 = *(v113 + 16);
    do
    {
      v16 = *v13;
      v13 += 40;
      v15 = v16;
      v113 = v12;
      v17 = *(v12 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_219FBE644((v17 > 1), v14 + 1, 1);
        v12 = v113;
      }

      *(v12 + 16) = v14 + 1;
      *(v12 + v14++ + 32) = v15;
      --v11;
    }

    while (v11);
    v5 = v99;
    v8 = v100;
  }

  v18 = sub_21A030A38(v12);

  sub_21A0124DC(v80, v8);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_21A012540(v8, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21A0125A4;
  *(v21 + 24) = v20;
  v121[0] = v10;
  v121[1] = v18;
  v121[2] = sub_21A01262C;
  v121[3] = v21;
  v121[4] = sub_21A012388;
  v121[5] = 0;
  v121[6] = sub_21A0123E4;
  v121[7] = 0;
  v121[8] = 5;

  v22 = sub_21A011F54(v121);

  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v113 = MEMORY[0x277D84F90];
    sub_219FBE604(0, v23, 0);
    v25 = v113;
    v26 = (v22 + 56);
    v27 = *(v113 + 16);
    do
    {
      v28 = *v26;
      v113 = v25;
      v29 = *(v25 + 24);
      if (v27 >= v29 >> 1)
      {
        sub_219FBE604((v29 > 1), v27 + 1, 1);
        v25 = v113;
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 8 * v27 + 32) = v28;
      v26 += 20;
      ++v27;
      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v30 = sub_219FF6D60(v25, 1);

  v31 = *(v22 + 16);
  if (v31)
  {
    v120 = v24;
    result = sub_219FBE624(0, v31, 0);
    v81 = *(v22 + 16);
    if (v81)
    {
      v33 = 0;
      v34 = v120;
      v82 = v31 - 1;
      v83 = v30;
      v35 = 32;
      v84 = v22;
      do
      {
        if (v33 >= *(v22 + 16))
        {
          goto LABEL_39;
        }

        v36 = *(v22 + v35 + 16);
        v111[0] = *(v22 + v35);
        v111[1] = v36;
        v37 = *(v22 + v35 + 32);
        v38 = *(v22 + v35 + 48);
        v39 = *(v22 + v35 + 80);
        v111[4] = *(v22 + v35 + 64);
        v111[5] = v39;
        v111[2] = v37;
        v111[3] = v38;
        v40 = *(v22 + v35 + 96);
        v41 = *(v22 + v35 + 112);
        v42 = *(v22 + v35 + 128);
        *(v112 + 14) = *(v22 + v35 + 142);
        v111[7] = v41;
        v112[0] = v42;
        v111[6] = v40;
        v43 = *(v22 + v35 + 112);
        v108 = *(v22 + v35 + 96);
        v109 = v43;
        v110[0] = *(v22 + v35 + 128);
        *(v110 + 14) = *(v22 + v35 + 142);
        v44 = *(v22 + v35 + 48);
        v104 = *(v22 + v35 + 32);
        v105 = v44;
        v45 = *(v22 + v35 + 80);
        v106 = *(v22 + v35 + 64);
        v107 = v45;
        v46 = *(v22 + v35 + 16);
        v102 = *(v22 + v35);
        v103 = v46;
        v113 = v33;
        v116 = v104;
        v119[1] = v108;
        v114 = v102;
        v115 = v46;
        v119[0] = v107;
        v118 = v106;
        v117 = v44;
        *(&v119[3] + 14) = *(v110 + 14);
        v119[3] = v110[0];
        v119[2] = v43;
        if (v33 >= *(v30 + 16))
        {
          goto LABEL_40;
        }

        v47 = BYTE13(v119[4]);
        v48 = *(v30 + 8 * v33 + 32);
        v49 = BYTE13(v119[4]) - 2;
        v88 = v35;
        v99 = v114;
        v100 = v115;
        v98 = *(&v114 + 1);
        if ((BYTE13(v119[4]) - 2) > 1u)
        {
          v52 = (v80 + *(type metadata accessor for PrimaryElectionTheme() + 40));
          v53 = *v52;
          v96 = v52[1];
          v97 = v53;
          v92 = v33;
          v55 = v52[2];
          v54 = v52[3];
          v93 = *(v52 + 32) | (*(v52 + 33) << 8) | (*(v52 + 34) << 16);

          v94 = v54;
          v95 = v55;
          v49 = v47 - 2;
          v33 = v92;
          sub_219F79C1C();
          v50 = v47 == 2;
          if (v47 < 2)
          {
LABEL_25:
            sub_219F45500(v111, v101, &qword_27CCDB6E0);
            sub_219F45500(&v113, v101, &qword_27CCDB6E8);
            sub_219F72F28(v119 + 8, v101);
            v56 = sub_21A0E5C5C();
            v90 = *(v119 + 8);
            v85 = *(&v119[3] + 8);
            v86 = *(&v119[2] + 8);
            v87 = *(&v119[1] + 8);
            v91 = v56;
            v92 = DWORD2(v119[4]) | (BYTE12(v119[4]) << 32);
LABEL_28:
            v89 = sub_21A0E5C5C();
            goto LABEL_29;
          }
        }

        else
        {
          v96 = 0;
          v97 = 0;
          v94 = 0;
          v95 = 0;
          v93 = 0;
          v50 = BYTE13(v119[4]) == 2;
          if (BYTE13(v119[4]) < 2u)
          {
            goto LABEL_25;
          }
        }

        v51 = v34;
        if (v50)
        {
          v57 = swift_allocObject();
          v58 = v57;
          *(v57 + 16) = 1;
          *(v57 + 24) = 0u;
          *(v57 + 40) = 0u;
          *(v57 + 56) = 0u;
          *(v57 + 72) = 0u;
          *(v57 + 92) = 62;
          v59 = v78 & 0xFFFFFFC1FFFFFFFFLL | 0x2000000000;
          v78 = v59;
        }

        else
        {
          v57 = swift_allocObject();
          v58 = v57;
          *(v57 + 16) = 0;
          *(v57 + 24) = 0u;
          *(v57 + 40) = 0u;
          *(v57 + 56) = 0u;
          *(v57 + 72) = 0u;
          *(v57 + 92) = 62;
          v59 = v79 & 0xFFFFFFC1FFFFFFFFLL | 0x2000000000;
          v79 = v59;
        }

        v92 = v59;
        *(v57 + 88) = 0;
        sub_219F45500(v111, v101, &qword_27CCDB6E0);
        sub_219F45500(&v113, v101, &qword_27CCDB6E8);
        v60 = sub_21A0E5C7C();
        *&v61 = v58;
        v91 = v60;
        v90 = v61;
        if (v49)
        {
          v34 = v51;
          goto LABEL_28;
        }

        v89 = sub_21A0E5C7C();
        v34 = v51;
LABEL_29:
        v62 = *(&v116 + 1);
        v63 = v117;
        v64 = v118;

        sub_219F72FD8(&v116 + 8);
        result = sub_219F6409C(&v113, &qword_27CCDB6E8);
        v120 = v34;
        v66 = *(v34 + 16);
        v65 = *(v34 + 24);
        if (v66 >= v65 >> 1)
        {
          result = sub_219FBE624((v65 > 1), v66 + 1, 1);
          v34 = v120;
        }

        *(v34 + 16) = v66 + 1;
        v67 = v34 + 192 * v66;
        v68 = v98;
        *(v67 + 32) = v99;
        *(v67 + 40) = v68;
        *(v67 + 48) = v62;
        *(v67 + 56) = v63;
        *(v67 + 72) = v64;
        v69 = v87;
        *(v67 + 80) = v90;
        *(v67 + 96) = v69;
        v70 = v85;
        *(v67 + 112) = v86;
        *(v67 + 128) = v70;
        v71 = v92;
        *(v67 + 148) = BYTE4(v92);
        *(v67 + 144) = v71;
        v72 = v91;
        *(v67 + 152) = v100;
        *(v67 + 160) = v72;
        *(v67 + 168) = v48;
        v73 = v97;
        *(v67 + 176) = v89;
        *(v67 + 184) = v73;
        v74 = v95;
        *(v67 + 192) = v96;
        *(v67 + 200) = v74;
        *(v67 + 208) = v94;
        LOWORD(v71) = v93;
        *(v67 + 218) = BYTE2(v93);
        *(v67 + 216) = v71;
        if (v82 == v33)
        {

          sub_21A012658(v76, type metadata accessor for PrimaryElectionContentState);
          goto LABEL_37;
        }

        ++v33;
        v35 = v88 + 160;
        v30 = v83;
        v22 = v84;
      }

      while (v81 != v33);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

    sub_21A012658(v76, type metadata accessor for PrimaryElectionContentState);
    v34 = MEMORY[0x277D84F90];
LABEL_37:
    *v77 = v34;
    return sub_21A012658(v80, type metadata accessor for PrimaryElectionStaticAttributes);
  }

  return result;
}

void sub_21A011C50(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v33 = *a2;
  v10 = *(a3 + *(type metadata accessor for PrimaryElectionTheme() + 36));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    while (1)
    {
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[3];
      v41 = v12[2];
      v42 = v15;
      v39 = v13;
      v40 = v14;
      v16 = v12[4];
      v17 = v12[5];
      v18 = v12[6];
      *(v45 + 13) = *(v12 + 109);
      v44 = v17;
      v45[0] = v18;
      v43 = v16;
      v19 = *(&v41 + 1);
      if (v41 == __PAIR128__(v5, v6) || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 120);
      if (!--v11)
      {
        goto LABEL_6;
      }
    }

    *(&v35[4] + 7) = v43;
    *(&v35[5] + 7) = v44;
    *(&v35[6] + 7) = v45[0];
    *(v35 + 7) = v39;
    *(&v35[1] + 7) = v40;
    *(&v35[2] + 7) = v41;
    *(&v35[7] + 4) = *(v45 + 13);
    *(&v35[3] + 7) = v42;
    *&v36 = v6;
    *(&v36 + 1) = v5;
    *&v37 = v7;
    *(&v37 + 1) = v8;
    v38[0] = v9;
    *&v38[109] = *(&v35[6] + 12);
    *&v38[97] = v35[6];
    *&v38[81] = v35[5];
    *&v38[65] = v35[4];
    *&v38[49] = v35[3];
    *&v38[33] = v35[2];
    *&v38[17] = v35[1];
    *&v38[1] = v35[0];
    v38[125] = v33;
    nullsub_1(&v36, v19);
    v29 = *&v38[80];
    a4[6] = *&v38[64];
    a4[7] = v29;
    a4[8] = *&v38[96];
    *(a4 + 142) = *&v38[110];
    v30 = *&v38[16];
    a4[2] = *v38;
    a4[3] = v30;
    v31 = *&v38[48];
    a4[4] = *&v38[32];
    a4[5] = v31;
    v32 = v37;
    *a4 = v36;
    a4[1] = v32;
    sub_219F72ECC(&v39, v34);
  }

  else
  {
LABEL_6:
    if (qword_27CCD90D0 != -1)
    {
      swift_once();
    }

    v20 = sub_21A0E516C();
    __swift_project_value_buffer(v20, qword_27CCD97D8);

    v21 = sub_21A0E514C();
    v22 = sub_21A0E669C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_219F50144(v6, v5, &v36);
      _os_log_impl(&dword_219F39000, v21, v22, "Failed to find candidate theme for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x21CED2D30](v24, -1, -1);
      MEMORY[0x21CED2D30](v23, -1, -1);
    }

    sub_21A0126B8(&v36);
    v25 = *&v38[80];
    a4[6] = *&v38[64];
    a4[7] = v25;
    a4[8] = *&v38[96];
    *(a4 + 142) = *&v38[110];
    v26 = *&v38[16];
    a4[2] = *v38;
    a4[3] = v26;
    v27 = *&v38[48];
    a4[4] = *&v38[32];
    a4[5] = v27;
    v28 = v37;
    *a4 = v36;
    a4[1] = v28;
  }
}

uint64_t sub_21A011F54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[8];

  v8 = MEMORY[0x277D84F90];
  if (v6)
  {
    v44 = 0;
    v47 = v6;
    v40 = v5;
    v9 = 0;
    v41 = (MEMORY[0x277D84F90] + 32);
    while (2)
    {
      v43 = v8;
      v10 = *(v1 + 16);
      if (v9 != v10)
      {
        --v47;
        v11 = (v1 + 64 + 40 * v9);
        while (1)
        {
          if (v9 >= v10)
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v12 = *(v2 + 16);
          if (v9 == v12)
          {
            goto LABEL_29;
          }

          if (v9 >= v12)
          {
            goto LABEL_34;
          }

          v13 = *(v11 - 3);
          v14 = *(v11 - 2);
          v15 = *(v11 - 1);
          v16 = *v11;
          v17 = *(v2 + 32 + v9);
          *&v59 = *(v11 - 4);
          *(&v59 + 1) = v13;
          *&v60 = v14;
          *(&v60 + 1) = v15;
          LOBYTE(v61) = v16;
          BYTE1(v61) = v17;

          v3(&v68, &v59);

          if (v4(&v68))
          {
            break;
          }

          ++v9;
          v65 = v74;
          v66 = v75;
          v67[0] = v76[0];
          *(v67 + 14) = *(v76 + 14);
          v61 = v70;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v59 = v68;
          v60 = v69;
          result = sub_219F6409C(&v59, &qword_27CCDB6F0);
          v10 = *(v1 + 16);
          v11 += 40;
          if (v9 == v10)
          {
            goto LABEL_29;
          }
        }

        v54 = v74;
        v55 = v75;
        v56[0] = v76[0];
        *(v56 + 14) = *(v76 + 14);
        v50 = v70;
        v51 = v71;
        v52 = v72;
        v53 = v73;
        v48 = v68;
        v49 = v69;
        v40(v57, &v48);
        v65 = v54;
        v66 = v55;
        v67[0] = v56[0];
        *(v67 + 14) = *(v56 + 14);
        v61 = v50;
        v62 = v51;
        v63 = v52;
        v64 = v53;
        v59 = v48;
        v60 = v49;
        result = sub_219F6409C(&v59, &qword_27CCDB6F0);
        if (v44)
        {
          v18 = v44 - 1;
          if (__OFSUB__(v44, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v19 = v8[3];
          if (((v19 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
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

          v45 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB6F8);
          v8 = swift_allocObject();
          v22 = (_swift_stdlib_malloc_size(v8) - 32) / 160;
          v8[2] = v45;
          v8[3] = 2 * v22;
          v23 = (v8 + 4);
          v24 = v43[3] >> 1;
          v25 = 160 * v24;
          if (v43[2])
          {
            v26 = (v43 + 4);
            if (v8 != v43 || v23 >= &v26[v25])
            {
              v27 = 160 * v24;
              v42 = v22;
              v39 = v43[3] >> 1;
              memmove(v8 + 4, v26, 160 * v24);
              v25 = v27;
              v24 = v39;
              v23 = (v8 + 4);
              v22 = v42;
            }

            v43[2] = 0;
          }

          v41 = &v23[v25];
          v46 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

          v18 = v46 - 1;
          if (__OFSUB__(v46, 1))
          {
            goto LABEL_36;
          }
        }

        v44 = v18;
        ++v9;
        v28 = v57[1];
        *v41 = v57[0];
        *(v41 + 1) = v28;
        v29 = v57[2];
        v30 = v57[3];
        v31 = v57[5];
        *(v41 + 4) = v57[4];
        *(v41 + 5) = v31;
        *(v41 + 2) = v29;
        *(v41 + 3) = v30;
        v32 = v57[6];
        v33 = v57[7];
        v34 = v58[0];
        *(v41 + 142) = *(v58 + 14);
        *(v41 + 7) = v33;
        *(v41 + 8) = v34;
        *(v41 + 6) = v32;
        v41 += 160;
        if (v47)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v44 = 0;
  }

LABEL_29:

  v35 = v8[3];
  if (v35 < 2)
  {
    return v8;
  }

  v36 = v35 >> 1;
  v37 = __OFSUB__(v36, v44);
  v38 = v36 - v44;
  if (!v37)
  {
    v8[2] = v38;
    return v8;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

BOOL sub_21A012388(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v6[7] = v1;
  v7[0] = a1[8];
  *(v7 + 14) = *(a1 + 142);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v6) == 0;
}

uint64_t sub_21A0123E4@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[7];
  v24[6] = a1[6];
  v24[7] = v4;
  v25[0] = a1[8];
  *(v25 + 14) = *(a1 + 142);
  v5 = a1[3];
  v24[2] = a1[2];
  v24[3] = v5;
  v6 = a1[5];
  v24[4] = a1[4];
  v24[5] = v6;
  v7 = a1[1];
  v24[0] = *a1;
  v24[1] = v7;
  result = get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = a1[6];
    v9 = a1[7];
    v11 = a1[5];
    a2[6] = v10;
    a2[7] = v9;
    v12 = a1[7];
    a2[8] = a1[8];
    *(a2 + 142) = *(a1 + 142);
    v14 = a1[2];
    v13 = a1[3];
    v15 = a1[1];
    a2[2] = v14;
    a2[3] = v13;
    v16 = a1[3];
    v18 = a1[4];
    v17 = a1[5];
    a2[4] = v18;
    a2[5] = v17;
    v19 = a1[1];
    v20 = *a1;
    *a2 = *a1;
    a2[1] = v19;
    v22[6] = v10;
    v22[7] = v12;
    v23[0] = a1[8];
    *(v23 + 14) = *(a1 + 142);
    v22[2] = v14;
    v22[3] = v16;
    v22[4] = v18;
    v22[5] = v11;
    v22[0] = v20;
    v22[1] = v15;
    return sub_219F45500(v22, &v21, &qword_27CCDB6E0);
  }

  return result;
}

uint64_t sub_21A0124DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionStaticAttributes();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A012540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionStaticAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21A0125A4(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(type metadata accessor for PrimaryElectionStaticAttributes() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_21A011C50(a1, a2, v8, a3);
}

uint64_t sub_21A012658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_21A0126B8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 142) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t dispatch thunk of ActivityAssetStore.managedActivities.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4E2F8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ActivityAssetStore.managedAssets(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A012B80;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityAssetStore.store(assetContents:keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ActivityAssetStore.removeAssets(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for NewsLiveActivityFamilyView()
{
  result = qword_280C87DC0;
  if (!qword_280C87DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A012BF8()
{
  sub_21A012C7C();
  if (v0 <= 0x3F)
  {
    sub_21A012CD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A012C7C()
{
  if (!qword_280C87960)
  {
    sub_21A0E5FDC();
    v0 = sub_21A0E525C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C87960);
    }
  }
}

void sub_21A012CD4()
{
  if (!qword_280C87950)
  {
    type metadata accessor for NewsLiveActivityAttributes(255);
    sub_21A013728(qword_280C89F60, type metadata accessor for NewsLiveActivityAttributes);
    v0 = sub_21A0E602C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C87950);
    }
  }
}

uint64_t sub_21A012D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A0E554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA970);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_219F45500(v2, &v16 - v11, &qword_27CCDA970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21A0E5FDC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_21A0E66AC();
    v15 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21A012F84@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v37 = type metadata accessor for NewsContentView();
  MEMORY[0x28223BE20](v37, v1);
  v38 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB708);
  MEMORY[0x28223BE20](v39, v3);
  v41 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB710);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v32 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB718);
  MEMORY[0x28223BE20](v40, v9);
  v11 = v32 - v10;
  v12 = type metadata accessor for NewsLiveActivityWatchContent();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A0E5FDC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A012D84(v20);
  v36 = v17;
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277CE3CB0])
  {
    type metadata accessor for NewsLiveActivityFamilyView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
    sub_21A0E600C();
    sub_21A0E601C();
    v22 = type metadata accessor for NewsLiveActivityWatchContent;
    sub_21A0137D8(v15, v8, type metadata accessor for NewsLiveActivityWatchContent);
    swift_storeEnumTagMultiPayload();
    sub_21A013728(&qword_27CCDB728, type metadata accessor for NewsLiveActivityWatchContent);
    sub_21A013728(qword_280C88240, type metadata accessor for NewsContentView);
    sub_21A0E56BC();
    sub_219F45500(v11, v41, &qword_27CCDB718);
    swift_storeEnumTagMultiPayload();
    sub_21A01363C();
    sub_21A0E56BC();
    sub_21A013770(v11);
    v23 = v15;
    return sub_21A013840(v23, v22);
  }

  v24 = v21;
  v32[1] = v12;
  v33 = v8;
  v34 = v11;
  v35 = *MEMORY[0x277CE3CB8];
  type metadata accessor for NewsLiveActivityFamilyView();
  v25 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA968);
  v26 = v38;
  sub_21A0E600C();
  sub_21A0E601C();
  v27 = v26 + *(v25 + 24);
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  if (v24 == v35)
  {
    v22 = type metadata accessor for NewsContentView;
    v28 = v38;
    sub_21A0137D8(v38, v33, type metadata accessor for NewsContentView);
    swift_storeEnumTagMultiPayload();
    sub_21A013728(&qword_27CCDB728, type metadata accessor for NewsLiveActivityWatchContent);
    sub_21A013728(qword_280C88240, type metadata accessor for NewsContentView);
    v29 = v34;
    sub_21A0E56BC();
    sub_219F45500(v29, v41, &qword_27CCDB718);
    swift_storeEnumTagMultiPayload();
    sub_21A01363C();
    sub_21A0E56BC();
    sub_21A013770(v29);
    v23 = v28;
    return sub_21A013840(v23, v22);
  }

  v31 = v38;
  sub_21A0137D8(v38, v41, type metadata accessor for NewsContentView);
  swift_storeEnumTagMultiPayload();
  sub_21A01363C();
  sub_21A013728(qword_280C88240, type metadata accessor for NewsContentView);
  sub_21A0E56BC();
  sub_21A013840(v31, type metadata accessor for NewsContentView);
  return (*(v36 + 8))(v20, v16);
}

uint64_t sub_21A01360C@<X0>(_BYTE *a1@<X8>)
{
  result = MEMORY[0x21CED0BE0]();
  *a1 = result & 1;
  return result;
}

unint64_t sub_21A01363C()
{
  result = qword_27CCDB720;
  if (!qword_27CCDB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB718);
    sub_21A013728(&qword_27CCDB728, type metadata accessor for NewsLiveActivityWatchContent);
    sub_21A013728(qword_280C88240, type metadata accessor for NewsContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB720);
  }

  return result;
}

uint64_t sub_21A013728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A013770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A0137D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A013840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A0138A0()
{
  result = qword_27CCDB730;
  if (!qword_27CCDB730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB738);
    sub_21A01363C();
    sub_21A013728(qword_280C88240, type metadata accessor for NewsContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB730);
  }

  return result;
}

uint64_t sub_21A01395C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A0E4FCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB740);
  swift_allocObject();
  result = sub_21A0E517C();
  *a1 = result;
  return result;
}

uint64_t sub_21A013A10()
{
  sub_21A0E4FCC();
  v0 = sub_21A0E518C();

  return v0;
}

uint64_t sub_21A013AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_21A0E4FCC();
  v6 = a4(a1);

  return v6;
}

double sub_21A013B68()
{
  if (qword_27CCD9100 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27CCD9908;
  xmmword_27CCDB748 = xmmword_27CCD9908;
  qword_27CCDB778 = 0;
  dword_27CCDB788 = 0;
  byte_27CCDB78C = 64;
  return result;
}

__n128 static ActivityColor.electionBlue.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27CCD9188 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_27CCDB778;
  *(a1 + 32) = xmmword_27CCDB768;
  *(a1 + 48) = v1;
  *(a1 + 61) = unk_27CCDB785;
  result = unk_27CCDB758;
  *a1 = xmmword_27CCDB748;
  *(a1 + 16) = result;
  return result;
}

double sub_21A013C50()
{
  if (qword_27CCD9108 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27CCD9918;
  xmmword_27CCDB790 = xmmword_27CCD9918;
  qword_27CCDB7C0 = 0;
  dword_27CCDB7D0 = 0;
  byte_27CCDB7D4 = 64;
  return result;
}

__n128 static ActivityColor.electionRed.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27CCD9190 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_27CCDB7C0;
  *(a1 + 32) = xmmword_27CCDB7B0;
  *(a1 + 48) = v1;
  *(a1 + 61) = *&algn_27CCDB7C8[5];
  result = unk_27CCDB7A0;
  *a1 = xmmword_27CCDB790;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A013D38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6574737973;
  }

  else
  {
    v3 = 0x65746E4972657375;
  }

  if (v2)
  {
    v4 = 0xED00006563616672;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6574737973;
  }

  else
  {
    v5 = 0x65746E4972657375;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED00006563616672;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_21A013DE8()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A013E74()
{
  sub_21A0E626C();
}

uint64_t sub_21A013EEC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A013F74@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

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

void sub_21A013FD4(uint64_t *a1@<X8>)
{
  v2 = 0x65746E4972657375;
  if (*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xED00006563616672;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21A01401C()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x65746E4972657375;
  }
}

uint64_t sub_21A014060@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

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

uint64_t sub_21A0140C4(uint64_t a1)
{
  v2 = sub_21A015118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A014100(uint64_t a1)
{
  v2 = sub_21A015118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityColor.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB7D8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB7E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32[-1] - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A015118();
  sub_21A0E6E7C();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21A01516C(v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21A0E6E6C();
    LODWORD(v13) = __swift_project_boxed_opaque_existential_1(v32, *(&v33 + 1));
    sub_219F831FC();
    sub_21A0E6C8C();
    LODWORD(v9) = v39;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0x8000000000;
LABEL_8:
    v29 = v31;
    *v31 = v9 | (v27 << 32);
    v29[1] = v13 | (v26 << 32);
    *(v29 + 1) = v23;
    *(v29 + 2) = v24;
    v29[6] = v25;
    v29[7] = v22;
    *(v29 + 16) = v28;
    *(v29 + 68) = BYTE4(v28);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a1;
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  v15 = sub_21A0E6AFC();
  v16 = (2 * *(v15 + 16)) | 1;
  v39 = v15;
  v40 = v15 + 32;
  v41 = 0;
  v42 = v16;
  v17 = sub_219F82598();
  if (v17 != 2 && v41 == v42 >> 1)
  {
    v18 = (v9 + 8);
    if (v17)
    {
      v43 = 1;
      sub_21A0151D4();
      v13 = v12;
      sub_21A0E6ADC();
      (*v18)(v12, v8);
      swift_unknownObjectRelease();
      v25 = 0;
      v9 = LOBYTE(v32[0]);
      v28 = 0x8000000000;
    }

    else
    {
      v43 = 0;
      sub_21A015228();
      sub_21A0E6ADC();
      (*v18)(v12, v8);
      swift_unknownObjectRelease();
      v9 = v32[0];
      v13 = v32[1];
      v23 = v33;
      v24 = v34;
      v22 = v36;
      v25 = v35 & 0xFFFFFFFF00000001;
      v28 = (v37 | (v38 << 32)) & 0x1FFFFFFFFLL;
    }

    v27 = HIDWORD(v9);
    v26 = v13 >> 32;
    goto LABEL_8;
  }

  v19 = sub_21A0E68BC();
  swift_allocError();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
  *v21 = &type metadata for ActivityColor;
  sub_21A0E6A2C();
  sub_21A0E68AC();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
  swift_willThrow();
  (*(v9 + 8))(v12, v8);
  swift_unknownObjectRelease();
  a1 = v14;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB800);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = v26 - v11;
  v13 = v1[1];
  v43 = *v1;
  v15 = v1[2];
  v14 = v1[3];
  v16 = *(v1 + 68);
  if (v16 >> 6)
  {
    if (v16 >> 6 == 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21A0E6E9C();
      v39 = v43;
      v40 = v13;
      v41 = v15;
      v42 = v14;
      __swift_mutable_project_boxed_opaque_existential_1(v32, *(&v33 + 1));
      sub_21A005B84();
      sub_21A0E6CBC();
      return __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v23 = a1;
      v24 = a1[3];
      v25 = v10;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      sub_21A015118();
      sub_21A0E6EAC();
      LOBYTE(v32[0]) = v43;
      LOBYTE(v39) = 1;
      sub_21A01527C();
      sub_21A0E6BBC();
      return (*(v25 + 8))(v8, v4);
    }
  }

  else
  {
    v30 = v10;
    v31 = v2;
    v18 = v1[16] | (v16 << 32);
    v19 = *(v1 + 6);
    v29 = *(v1 + 7);
    v20 = a1[3];
    v26[1] = a1[4];
    v27 = v19;
    __swift_project_boxed_opaque_existential_1(a1, v20);
    sub_21A015118();
    v28 = v4;
    sub_21A0E6EAC();
    v32[0] = v43;
    v32[1] = v13;
    v32[2] = v15;
    v32[3] = v14;
    v21 = *(v1 + 1);
    v34 = *(v1 + 2);
    v33 = v21;
    v35 = v27;
    v36 = v29;
    v38 = BYTE4(v18) & 0x3F;
    v37 = v18;
    LOBYTE(v39) = 0;
    sub_21A0152D0();
    v22 = v28;
    sub_21A0E6BBC();
    return (*(v30 + 8))(v12, v22);
  }
}

uint64_t ActivityColor.customMirror.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (!(*(v0 + 68) >> 6))
  {
    v5 = v0[16] | (*(v0 + 68) << 32);
    v7 = *(v0 + 6);
    v6 = *(v0 + 7);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 20) = v2;
    *(v10 + 24) = v4;
    *(v10 + 28) = v3;
    v8 = *(v0 + 2);
    *(v10 + 32) = *(v0 + 1);
    *(v10 + 48) = v8;
    *(v10 + 64) = v7;
    *(v10 + 72) = v6;
    *(v10 + 84) = BYTE4(v5) & 0x3F;
    *(v10 + 80) = v5;
  }

  return sub_21A0E6E0C();
}

uint64_t ActivityColor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 68);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21A0E9CE0;
      v7 = MEMORY[0x277D83A90];
      v8 = MEMORY[0x277D83B08];
      *(v6 + 56) = MEMORY[0x277D83A90];
      *(v6 + 64) = v8;
      *(v6 + 32) = v1;
      *(v6 + 96) = v7;
      *(v6 + 104) = v8;
      *(v6 + 72) = v2;
      *(v6 + 136) = v7;
      *(v6 + 144) = v8;
      *(v6 + 112) = v4;
      *(v6 + 176) = v7;
      *(v6 + 184) = v8;
      *(v6 + 152) = v3;
      return sub_21A0E621C();
    }

    else
    {
      sub_21A0E686C();

      strcpy(v11, "System(name: ");
      v10 = ActivityColor.System.Name.rawValue.getter();
      MEMORY[0x21CED1980](v10);

      MEMORY[0x21CED1980](41, 0xE100000000000000);
      return v11[0];
    }
  }

  else
  {
    LODWORD(v11[0]) = *v0;
    HIDWORD(v11[0]) = v2;
    v11[1] = __PAIR64__(v3, v4);
    v12 = *(v0 + 1);
    v13 = *(v0 + 2);
    v14 = *(v0 + 3);
    v15 = v0[16];
    v16 = v5 & 0x3F;
    return ActivityColor.UserInterface.description.getter();
  }
}

double ActivityColor.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  static RGBA.parse(hexadecimalString:)(a1, a2, &v5);

  result = *&v5;
  *a3 = v5;
  *(a3 + 48) = 0;
  *(a3 + 68) = 64;
  *(a3 + 64) = 0;
  return result;
}

double sub_21A014C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static RGBA.parse(hexadecimalString:)(*a1, *(a1 + 8), &v4);

  result = *&v4;
  *a2 = v4;
  *(a2 + 48) = 0;
  *(a2 + 68) = 64;
  *(a2 + 64) = 0;
  return result;
}

uint64_t ActivityColor.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[3].n128_u8[0];
  v3 = v0[4].n128_u8[4];
  if (!(v3 >> 6))
  {
    v5 = v0[4].n128_u8[4] & 0x3F;
    MEMORY[0x21CED2490](0);
    RGBA.hash(into:)();
    RGBA.hash(into:)();
    if (v2)
    {
      sub_21A0E6DCC();
      if (!v5)
      {
LABEL_6:
        sub_21A0E6DCC();
        return RGBA.hash(into:)();
      }
    }

    else
    {
      sub_21A0E6DCC();
      RGBA.hash(into:)();
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return sub_21A0E6DCC();
  }

  if (v3 >> 6 == 1)
  {
    MEMORY[0x21CED2490](1, v1);
    return RGBA.hash(into:)();
  }

  MEMORY[0x21CED2490](2, v1);
  ActivityColor.System.Name.rawValue.getter();
  sub_21A0E626C();
}

uint64_t ActivityColor.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityColor.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A014ECC()
{
  sub_21A0E6DAC();
  ActivityColor.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A014F10()
{
  sub_21A0E6DAC();
  ActivityColor.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 68);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 16) | (*(a2 + 68) << 32);
  if (!(v5 >> 6))
  {
    if (!(v8 >> 38))
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = *(a1 + 64) | (*(a1 + 68) << 32);
      v17 = *(a2 + 3);
      v18 = *(a2 + 5);
      v19 = a2[7];
      v33[0] = *a1;
      *&v33[1] = v2;
      *&v33[2] = v3;
      *&v33[3] = v4;
      v34 = v13;
      v35 = v14;
      v36 = v15;
      v37 = v16;
      v38 = BYTE4(v16) & 0x3F;
      v26 = v6;
      v27 = v7;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v32 = BYTE4(v8);
      v31 = v8;
      v12 = _s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(v33, &v26);
      return v12 & 1;
    }

LABEL_19:
    v12 = 0;
    return v12 & 1;
  }

  if (v5 >> 6 == 1)
  {
    if ((v8 & 0xC000000000) == 0x4000000000)
    {
      v10 = v2 == *(&v6 + 1) && *a1 == *&v6;
      v11 = v10 && v3 == *&v7;
      if (v4 == *(&v7 + 1))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    }

    goto LABEL_19;
  }

  if ((v8 & 0xC000000000) != 0x8000000000)
  {
    goto LABEL_19;
  }

  LOBYTE(v33[0]) = *a1;
  LOBYTE(v26) = v6;
  v20 = ActivityColor.System.Name.rawValue.getter();
  v22 = v21;
  if (v20 != ActivityColor.System.Name.rawValue.getter() || v22 != v23)
  {
    v25 = sub_21A0E6C5C();

    return v25 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

unint64_t sub_21A015118()
{
  result = qword_27CCDB7E8;
  if (!qword_27CCDB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB7E8);
  }

  return result;
}

uint64_t sub_21A01516C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A0151D4()
{
  result = qword_27CCDB7F0;
  if (!qword_27CCDB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB7F0);
  }

  return result;
}

unint64_t sub_21A015228()
{
  result = qword_27CCDB7F8;
  if (!qword_27CCDB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB7F8);
  }

  return result;
}

unint64_t sub_21A01527C()
{
  result = qword_27CCDB808;
  if (!qword_27CCDB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB808);
  }

  return result;
}

unint64_t sub_21A0152D0()
{
  result = qword_27CCDB810;
  if (!qword_27CCDB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB810);
  }

  return result;
}

unint64_t sub_21A015328()
{
  result = qword_27CCDB818;
  if (!qword_27CCDB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB818);
  }

  return result;
}

unint64_t sub_21A015380()
{
  result = qword_27CCDB820;
  if (!qword_27CCDB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB820);
  }

  return result;
}

unint64_t sub_21A0153D8()
{
  result = qword_27CCDB828;
  if (!qword_27CCDB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB828);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ActivityColor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ActivityColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | (*(a1 + 68) >> 1 << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ActivityColor(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 68) = 0;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 69) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-2 * a2);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 68) = 2;
      return result;
    }

    *(a1 + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A015538(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_21A015554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (a2 << 38) | ((*(result + 4) & 1) << 32);
  *(result - 16) &= 0xFFFFFFFF00000001;
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

unint64_t sub_21A015594()
{
  result = qword_27CCDB830;
  if (!qword_27CCDB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB830);
  }

  return result;
}

unint64_t sub_21A0155EC()
{
  result = qword_27CCDB838;
  if (!qword_27CCDB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB838);
  }

  return result;
}

unint64_t sub_21A015644()
{
  result = qword_27CCDB840;
  if (!qword_27CCDB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB840);
  }

  return result;
}

uint64_t VariantCondition.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      sub_21A0E686C();

      v6[0] = 0xD000000000000011;
      v6[1] = 0x800000021A10A810;
      if (v1)
      {
        v2 = 1702195828;
      }

      else
      {
        v2 = 0x65736C6166;
      }

      if (v1)
      {
        v3 = 0xE400000000000000;
      }

      else
      {
        v3 = 0xE500000000000000;
      }

      v4 = v3;
    }

    else
    {
      sub_21A0E686C();

      strcpy(v6, "displayScale(");
      HIWORD(v6[1]) = -4864;
      sub_21A015854();
      v2 = sub_21A0E6BFC();
    }

    goto LABEL_14;
  }

  if (*(v0 + 8))
  {
    strcpy(v6, "placement(");
    BYTE3(v6[1]) = 0;
    HIDWORD(v6[1]) = -369098752;
    v2 = Placement.description.getter();
LABEL_14:
    MEMORY[0x21CED1980](v2, v4);

    goto LABEL_15;
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  MEMORY[0x21CED1980](0x686353726F6C6F63, 0xEC00000028656D65);
  sub_21A0E697C();
LABEL_15:
  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return v6[0];
}

unint64_t sub_21A015854()
{
  result = qword_27CCDB848;
  if (!qword_27CCDB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB848);
  }

  return result;
}

uint64_t VariantCondition.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      MEMORY[0x21CED2490](2);
      return sub_21A0E6DCC();
    }

    MEMORY[0x21CED2490](3);
    v3 = v1;
    return MEMORY[0x21CED2490](v3);
  }

  if (*(v0 + 8))
  {
    MEMORY[0x21CED2490](1);
    switch(v1)
    {
      case 4u:
        v3 = 0;
        break;
      case 5u:
        v3 = 1;
        break;
      case 6u:
        v3 = 3;
        break;
      default:
        MEMORY[0x21CED2490](2);
        goto LABEL_4;
    }

    return MEMORY[0x21CED2490](v3);
  }

  MEMORY[0x21CED2490](0);
LABEL_4:
  sub_21A0E626C();
}

uint64_t VariantCondition.hashValue.getter()
{
  sub_21A0E6DAC();
  VariantCondition.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A015A9C()
{
  sub_21A0E6DAC();
  VariantCondition.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A015AF4()
{
  sub_21A0E6DAC();
  VariantCondition.hash(into:)();
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore16VariantConditionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 > 1)
  {
    v16 = v6 ^ v4 ^ 1;
    if (v7 != 2)
    {
      v16 = 0;
    }

    v18 = v7 == 3 && v4 == v6;
    if (v5 == 2)
    {
      return v16;
    }

    return v18;
  }

  if (v5)
  {
    if (v7 == 1)
    {
      switch(v4)
      {
        case 6u:
          if (v6 != 6)
          {
            return 0;
          }

          break;
        case 5u:
          if (v6 != 5)
          {
            return 0;
          }

          break;
        case 4u:
          if (v6 != 4)
          {
            return 0;
          }

          break;
        default:
          if ((v6 - 4) < 3u || (sub_21A0AA1DC(v4, v6) & 1) == 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

  v8 = (v4 & 1) == 0;
  if (v4)
  {
    v9 = 1802658148;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6)
  {
    v11 = 1802658148;
  }

  else
  {
    v11 = 0x746867696CLL;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v9 != v11 || v10 != v12)
  {
    v14 = sub_21A0E6C5C();

    return v14 & 1;
  }

  return 1;
}

unint64_t sub_21A015CBC()
{
  result = qword_27CCDB850;
  if (!qword_27CCDB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VariantCondition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VariantCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t RemoteAssetKey.activityIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RemoteAssetKey.remoteAssetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteAssetKey() + 20);
  v4 = sub_21A0E481C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteAssetKey.init(activityIdentifier:remoteAssetURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for RemoteAssetKey() + 20);
  v7 = sub_21A0E481C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t RemoteAssetKey.customMirror.getter()
{
  v1 = v0;
  v2 = sub_21A0E6E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v16 - v9;
  v11 = type metadata accessor for RemoteAssetKey();
  MEMORY[0x28223BE20](v11, v12);
  sub_21A0160DC(v1, v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A0160DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAssetKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A016140()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = v15 - v9;
  MEMORY[0x28223BE20](v8, v11);
  sub_21A0160DC(v0, v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_21A0E6E1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t RemoteAssetKey.description.getter()
{
  sub_21A0E686C();

  MEMORY[0x21CED1980](*v0, v0[1]);
  MEMORY[0x21CED1980](0x3D4C5255202CLL, 0xE600000000000000);
  type metadata accessor for RemoteAssetKey();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
  v1 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v1);

  return 0x7974697669746341;
}

uint64_t static RemoteAssetKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RemoteAssetKey();

  return sub_21A0E478C();
}

uint64_t sub_21A0164C8(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  return sub_21A0E478C();
}

uint64_t RemoteAssetKey.hash(into:)()
{
  sub_21A0E626C();
  type metadata accessor for RemoteAssetKey();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  return sub_21A0E615C();
}

uint64_t RemoteAssetKey.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  type metadata accessor for RemoteAssetKey();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A016688()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A016730()
{
  sub_21A0E626C();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  return sub_21A0E615C();
}

uint64_t sub_21A0167BC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E481C();
  sub_219F43F2C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  return sub_21A0E6DFC();
}

uint64_t ActivityHeaderData.kicker.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityHeaderData.kicker.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityHeaderData.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityHeaderData.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ActivityHeaderData.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ActivityHeaderData.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ActivityHeaderData.compactTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ActivityHeaderData.compactTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ActivityHeaderData.compactSubtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ActivityHeaderData.compactSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ActivityHeaderData.excerpt.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ActivityHeaderData.excerpt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ActivityHeaderData.logo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityHeaderData() + 40);

  return sub_21A016BFC(v3, a1);
}

uint64_t sub_21A016BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityHeaderData.logo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityHeaderData() + 40);

  return sub_219FC63EC(a1, v3);
}

uint64_t ActivityHeaderData.init(kicker:title:subtitle:compactTitle:compactSubtitle:excerpt:logo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(type metadata accessor for ActivityHeaderData() + 40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;

  return sub_219FC63EC(a13, a9 + v20);
}

uint64_t sub_21A016E08()
{
  v1 = *v0;
  v2 = 0x72656B63696BLL;
  v3 = 0x74707265637865;
  if (v1 != 5)
  {
    v3 = 1869049708;
  }

  v4 = 0x54746361706D6F63;
  if (v1 != 3)
  {
    v4 = 0x53746361706D6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_21A016EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A018390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A016F1C(uint64_t a1)
{
  v2 = sub_21A017E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A016F58(uint64_t a1)
{
  v2 = sub_21A017E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityHeaderData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB858);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A017E98();
  sub_21A0E6EAC();
  v9[15] = 0;
  sub_21A0E6B3C();
  if (!v1)
  {
    v9[14] = 1;
    sub_21A0E6B3C();
    v9[13] = 2;
    sub_21A0E6B3C();
    v9[12] = 3;
    sub_21A0E6B3C();
    v9[11] = 4;
    sub_21A0E6B3C();
    v9[10] = 5;
    sub_21A0E6B3C();
    type metadata accessor for ActivityHeaderData();
    v9[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
    sub_21A017F48(&qword_27CCDAF48);
    sub_21A0E6B6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityHeaderData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v15 - v11;
  if (v2[1])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_21A0E6DCC();
    if (v2[3])
    {
LABEL_3:
      sub_21A0E6DCC();
      sub_21A0E626C();
      if (v2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  sub_21A0E6DCC();
  if (v2[5])
  {
LABEL_4:
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v2[7])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_21A0E6DCC();
  if (v2[7])
  {
LABEL_5:
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v2[9])
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_21A0E6DCC();
    if (v2[11])
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  sub_21A0E6DCC();
  if (!v2[9])
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_21A0E6DCC();
  sub_21A0E626C();
  if (v2[11])
  {
LABEL_7:
    sub_21A0E6DCC();
    sub_21A0E626C();
    goto LABEL_14;
  }

LABEL_13:
  sub_21A0E6DCC();
LABEL_14:
  v13 = type metadata accessor for ActivityHeaderData();
  sub_21A016BFC(v2 + *(v13 + 40), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_219F73094(v12, v8);
  sub_21A0E6DCC();
  sub_219FAB16C(a1);
  return sub_219F6409C(v8, &qword_27CCD98D0);
}

uint64_t ActivityHeaderData.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityHeaderData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ActivityHeaderData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB868);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ActivityHeaderData();
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 4) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = *(v13 + 48);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21A017E98();
  v19 = v33;
  sub_21A0E6E7C();
  if (!v19)
  {
    v33 = v16;
    v21 = v31;
    v20 = v32;
    v41 = 0;
    *v15 = sub_21A0E6A5C();
    *(v15 + 1) = v22;
    v40 = 1;
    *(v15 + 2) = sub_21A0E6A5C();
    *(v15 + 3) = v23;
    v39 = 2;
    *(v15 + 4) = sub_21A0E6A5C();
    *(v15 + 5) = v24;
    v38 = 3;
    *(v15 + 6) = sub_21A0E6A5C();
    *(v15 + 7) = v25;
    v37 = 4;
    *(v15 + 8) = sub_21A0E6A5C();
    *(v15 + 9) = v27;
    v36 = 5;
    *(v15 + 10) = sub_21A0E6A5C();
    *(v15 + 11) = v28;
    v35 = 6;
    sub_21A017F48(&qword_27CCDAF70);
    sub_21A0E6A8C();
    (*(v21 + 8))(v10, v20);
    sub_219FC63EC(v6, &v15[v33]);
    sub_21A01801C(v15, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_21A017EEC(v15);
}

uint64_t sub_21A017904()
{
  sub_21A0E6DAC();
  ActivityHeaderData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A017948()
{
  sub_21A0E6DAC();
  ActivityHeaderData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore18ActivityHeaderDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFD0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v51 - v16;
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*a1 != *a2 || v18 != v19)
    {
      v20 = v15;
      v21 = sub_21A0E6C5C();
      v15 = v20;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v22 = a1[3];
  v23 = a2[3];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v22 != v23)
    {
      v24 = v15;
      v25 = sub_21A0E6C5C();
      v15 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  v26 = a1[5];
  v27 = a2[5];
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v26 != v27)
    {
      v28 = v15;
      v29 = sub_21A0E6C5C();
      v15 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = a1[7];
  v31 = a2[7];
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v30 != v31)
    {
      v32 = v15;
      v33 = sub_21A0E6C5C();
      v15 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = a1[9];
  v35 = a2[9];
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v34 != v35)
    {
      v36 = v15;
      v37 = sub_21A0E6C5C();
      v15 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = v15;
    if ((a1[10] != a2[10] || v38 != v39) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    v41 = *(type metadata accessor for ActivityHeaderData() + 40);
    v42 = *(v40 + 48);
    sub_21A016BFC(a1 + v41, v17);
    sub_21A016BFC(a2 + v41, &v17[v42]);
    v43 = *(v5 + 48);
    if (v43(v17, 1, v4) == 1)
    {
      if (v43(&v17[v42], 1, v4) == 1)
      {
LABEL_45:
        sub_219F6409C(v17, &qword_27CCD98D8);
        return 1;
      }
    }

    else
    {
      sub_21A016BFC(v17, v12);
      if (v43(&v17[v42], 1, v4) != 1)
      {
        sub_219F73094(&v17[v42], v8);
        if (_s22NewsLiveActivitiesCore13ActivityAssetO2eeoiySbAC_ACtFZ_0(v12, v8))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
          v47 = *(v46 + 28);
          v48 = *&v12[v47];
          v49 = *&v8[v47];

          v50 = sub_219FAAA00(v48, v49);

          if (v50 & 1) != 0 && (sub_219F75DC0(*&v12[*(v46 + 32)], *&v8[*(v46 + 32)]))
          {
            sub_219F6409C(v8, &qword_27CCD98D0);
            sub_219F6409C(v12, &qword_27CCD98D0);
            goto LABEL_45;
          }
        }

        sub_219F6409C(v8, &qword_27CCD98D0);
        sub_219F6409C(v12, &qword_27CCD98D0);
        v45 = &qword_27CCD98D8;
        goto LABEL_54;
      }

      sub_219F6409C(v12, &qword_27CCD98D0);
    }

    v45 = &qword_27CCDAFD0;
LABEL_54:
    sub_219F6409C(v17, v45);
    return 0;
  }

  v40 = v15;
  if (!v39)
  {
    goto LABEL_43;
  }

  return 0;
}

unint64_t sub_21A017E98()
{
  result = qword_27CCDB860;
  if (!qword_27CCDB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB860);
  }

  return result;
}

uint64_t sub_21A017EEC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityHeaderData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A017F48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD98D0);
    sub_21A0180C8(&qword_27CCDAF50, type metadata accessor for ActivityAsset);
    sub_21A0180C8(&qword_27CCDAF58, type metadata accessor for ActivityAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A01801C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityHeaderData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0180C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NewsLiveActivityChangeSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsLiveActivityChangeSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A01828C()
{
  result = qword_27CCDB878;
  if (!qword_27CCDB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB878);
  }

  return result;
}

unint64_t sub_21A0182E4()
{
  result = qword_27CCDB880;
  if (!qword_27CCDB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB880);
  }

  return result;
}

unint64_t sub_21A01833C()
{
  result = qword_27CCDB888;
  if (!qword_27CCDB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB888);
  }

  return result;
}

uint64_t sub_21A018390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656B63696BLL && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746361706D6F63 && a2 == 0xEC000000656C7469 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746361706D6F63 && a2 == 0xEF656C7469746275 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74707265637865 && a2 == 0xE700000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

double sub_21A0185EC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = 0.0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 92) = 62;
  *(v4 + 88) = 0;
  *a2 = v4;
  *(a2 + 68) = 32;
  *(a2 + 64) = 0;
  return result;
}

BOOL static ActivityFill.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v69 = *(a1 + 32);
  *v70 = v3;
  v4 = *(a1 + 16);
  v67 = *a1;
  v68 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v73 = *(a2 + 32);
  *v74 = v6;
  v7 = *(a2 + 16);
  v71 = *a2;
  v72 = v7;
  v8 = *(a1 + 48);
  v75[2] = v69;
  *v76 = v8;
  v75[0] = v67;
  v75[1] = v2;
  *&v76[5] = v5;
  *&v76[7] = v73;
  *v77 = *(a2 + 48);
  *&v70[13] = *(a1 + 61);
  *&v74[13] = *(a2 + 61);
  *(&v76[1] + 5) = *(a1 + 61);
  *&v77[13] = *(a2 + 61);
  *&v76[3] = v71;
  v9 = (v70[20] >> 4) & 3;
  if (!v9)
  {
    v11 = *&v74[16] | (v74[20] << 32);
    if ((v11 & 0x3000000000) != 0)
    {
LABEL_21:
      sub_219F72F28(&v71, &v44);
      goto LABEL_22;
    }

    v12 = *&v70[16] | (v70[20] << 32);
    v13 = (v12 >> 38) & 3;
    if (!v13)
    {
      if (v11 >> 38)
      {
        goto LABEL_22;
      }

      v44 = v67;
      v45 = v68;
      v46 = v69;
      *v47 = *v70;
      *&v47[16] = *&v70[16];
      v47[20] = BYTE4(v12) & 0xF;
      v63 = v71;
      v64 = v72;
      v65 = v73;
      *v66 = *v74;
      v66[20] = BYTE4(v11);
      *&v66[16] = *&v74[16];
      v26 = _s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(&v44, &v63);
LABEL_36:
      sub_219F6409C(v75, &qword_27CCDB890);
      return (v26 & 1) != 0;
    }

    v14 = v11 & 0xC000000000;
    if (v13 != 1)
    {
      if (v14 != 0x8000000000)
      {
        goto LABEL_22;
      }

      v44.i8[0] = v67.i8[0];
      v63.i8[0] = v71.i8[0];
      v27 = ActivityColor.System.Name.rawValue.getter();
      v29 = v28;
      if (v27 == ActivityColor.System.Name.rawValue.getter() && v29 == v30)
      {

        sub_219F6409C(v75, &qword_27CCDB890);
        return 1;
      }

      v31 = sub_21A0E6C5C();

      sub_219F6409C(v75, &qword_27CCDB890);
      return (v31 & 1) != 0;
    }

    if (v14 == 0x4000000000)
    {
      sub_219F6409C(v75, &qword_27CCDB890);
      return v67.f32[0] == v71.f32[0] && v67.f32[1] == v71.f32[1] && v67.f32[2] == v71.f32[2] && v67.f32[3] == v71.f32[3];
    }

LABEL_22:
    sub_219F6409C(v75, &qword_27CCDB890);
    return 0;
  }

  if (v9 != 1)
  {
    v15 = *(v67.i64[0] + 16);
    v16 = *(v67.i64[0] + 40);
    v17 = *(v67.i64[0] + 72);
    v65 = *(v67.i64[0] + 56);
    *v66 = v17;
    *&v66[13] = *(v67.i64[0] + 85);
    v64 = v16;
    v63 = *(v67.i64[0] + 24);
    if (((v74[20] << 32) & 0x3000000000) != 0x2000000000)
    {

      goto LABEL_21;
    }

    v18 = *(v71.i64[0] + 40);
    v19 = *(v71.i64[0] + 72);
    v20 = *(v71.i64[0] + 16);
    v61 = *(v71.i64[0] + 56);
    *v62 = v19;
    *&v62[13] = *(v71.i64[0] + 85);
    v60 = v18;
    v59 = *(v71.i64[0] + 24);
    sub_219F72F28(&v71, &v44);
    sub_219F72F28(&v67, &v44);
    if (sub_21A0AB01C(v15, v20))
    {
      v55 = v63;
      v56 = v64;
      v57 = v65;
      v58 = *v66;
      v21 = *&v66[16] | (v66[20] << 32);
      *&v54[3] = v59;
      *&v54[19] = v60;
      v22 = *&v62[16] | (v62[20] << 32);
      *&v54[35] = v61;
      *&v54[51] = *v62;
      if ((~(v66[20] << 32) & 0x3E00000000) == 0)
      {
        if ((~v22 & 0x3E00000000) == 0)
        {
          v44 = v63;
          v45 = v64;
          v46 = v65;
          *v47 = *v66;
          *&v47[16] = *&v66[16];
          v47[20] = v66[20];
          sub_21A018D58(&v63, &v40);
          sub_21A018D58(&v59, &v40);
          sub_219F6409C(&v44, &qword_27CCD98B8);
          sub_219F6409C(v75, &qword_27CCDB890);
          return 1;
        }

        sub_21A018D58(&v63, &v44);
        sub_21A018D58(&v59, &v44);
LABEL_34:
        v44 = v55;
        v45 = v56;
        v46 = v57;
        *v47 = v58;
        *&v47[16] = v21;
        v47[20] = BYTE4(v21);
        v49 = *&v54[16];
        v50 = *&v54[32];
        *v51 = *&v54[48];
        v48 = *v54;
        v53 = BYTE4(v22);
        *&v51[15] = *&v54[63];
        v52 = v22;
        sub_219F6409C(&v44, &qword_27CCDB898);
        goto LABEL_22;
      }

      v44 = v63;
      v45 = v64;
      v46 = v65;
      *v47 = *v66;
      *&v47[16] = *&v66[16];
      v47[20] = v66[20];
      v42 = v65;
      v43[0] = *v66;
      v40 = v63;
      v41 = v64;
      *(v43 + 13) = *&v47[13];
      if ((~v22 & 0x3E00000000) == 0)
      {
        v38 = v46;
        *v39 = *v47;
        *&v39[13] = *&v47[13];
        v36 = v44;
        v37 = v45;
        sub_21A018D58(&v63, v34);
        sub_21A018D58(&v59, v34);
        sub_21A018D58(&v44, v34);
        sub_219F72F84(&v36);
        goto LABEL_34;
      }

      v36 = v59;
      v37 = v60;
      v38 = v61;
      *v39 = *v62;
      v39[20] = BYTE4(v22);
      *&v39[16] = *&v62[16];
      sub_21A018D58(&v63, v34);
      sub_21A018D58(&v59, v34);
      sub_21A018D58(&v44, v34);
      v26 = static ActivityFill.== infix(_:_:)(&v40, &v36);
      v32[2] = v38;
      v33[0] = *v39;
      *(v33 + 13) = *&v39[13];
      v32[0] = v36;
      v32[1] = v37;
      sub_219F72F84(v32);
      v34[2] = v42;
      v35[0] = v43[0];
      *(v35 + 13) = *(v43 + 13);
      v34[0] = v40;
      v34[1] = v41;
      sub_219F72F84(v34);
      v36 = v55;
      v37 = v56;
      v38 = v57;
      *v39 = v58;
      v39[20] = BYTE4(v21);
      *&v39[16] = v21;
      sub_219F6409C(&v36, &qword_27CCD98B8);
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  if (((v74[20] << 32) & 0x3000000000) != 0x1000000000)
  {
    *&v47[13] = *(a1 + 61);
    v23 = *(a1 + 48);
    v46 = *(a1 + 32);
    *v47 = v23;
    v24 = *(a1 + 16);
    v44 = *a1;
    v45 = v24;
    v47[20] = ((*&v47[16] | (v47[20] << 32)) & 0xFFFFFFCFFFFFFFFFLL) >> 32;
    sub_21A018DC8(&v44, &v63);
    goto LABEL_21;
  }

  v63 = v67;
  v64 = v68;
  v65 = v69;
  *v66 = *v70;
  v66[8] = v70[8];
  v59 = v71;
  v60 = v72;
  v61 = v73;
  *v62 = *v74;
  v62[8] = v74[8];
  sub_219F72F28(&v71, &v44);
  sub_219F72F28(&v67, &v44);
  v10 = _s22NewsLiveActivitiesCore22ActivityLinearGradientV2eeoiySbAC_ACtFZ_0(&v63, &v59);
  sub_219F6409C(v75, &qword_27CCDB890);
  return v10;
}

uint64_t sub_21A018D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static ActivityFill.clear.getter(uint64_t a1@<X8>)
{
  *a1 = 5;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x80;
}

NewsLiveActivitiesCore::ActivityFill::Hierarchical_optional __swiftcall ActivityFill.Hierarchical.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFill.Hierarchical.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D697270;
  v3 = 0x7972616974726574;
  v4 = 0x616E726574617571;
  if (v1 != 3)
  {
    v4 = 0x7972616E697571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7261646E6F636573;
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

void sub_21A018F58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D697270;
  v5 = 0xE800000000000000;
  v6 = 0x7972616974726574;
  v7 = 0xEA00000000007972;
  v8 = 0x616E726574617571;
  if (v2 != 3)
  {
    v8 = 0x7972616E697571;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7261646E6F636573;
    v3 = 0xE900000000000079;
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

uint64_t sub_21A019000()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0190EC()
{
  sub_21A0E626C();
}

uint64_t sub_21A0191C4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t ActivityFill.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = v1[6];
  v10 = *(v1 + 56);
  v11 = *(v1 + 68);
  v12 = (v11 >> 4) & 3;
  if (!v12)
  {
    v17 = *(v1 + 16);
    v19 = *(v1 + 17);
    v18 = v1 + 17;
    v33 = v8;
    v36 = *(v18 + 40);
    v35 = *(v18 + 44);
    v34 = v17 | (v11 << 32);
    v32 = *(v18 + 24);
    v28 = v7;
    v20 = *(v18 + 4);
    v31 = *(v18 + 28);
    v30 = v9;
    v21 = *(v18 + 6);
    v22 = *(v18 + 30);
    v29 = *(v18 + 46);
    MEMORY[0x21CED2490](0);
    *&v44 = v3;
    *(&v44 + 1) = v4;
    LOBYTE(v45) = v5;
    BYTE7(v45) = v21;
    *(&v45 + 5) = v20;
    *(&v45 + 1) = v19;
    *(&v45 + 1) = v6;
    *&v46 = v28;
    BYTE8(v46) = v33;
    HIBYTE(v46) = v22;
    *(&v46 + 13) = v31;
    *(&v46 + 9) = v32;
    *v47 = v30;
    v47[8] = v10;
    v47[15] = v29;
    *&v47[13] = v35;
    *&v47[9] = v36;
    v47[20] = (v34 & 0xFFFFFFCFFFFFFFFFLL) >> 32;
    *&v47[16] = v34;
    return ActivityColor.hash(into:)();
  }

  if (v12 != 1)
  {
    v23 = *(v3 + 40);
    v48 = *(v3 + 24);
    v49 = v23;
    v24 = *(v3 + 72);
    v25 = *(v3 + 88) | (*(v3 + 92) << 32);
    v50 = *(v3 + 56);
    v51 = v24;
    MEMORY[0x21CED2490](2);
    sub_21A0E626C();

    if ((~v25 & 0x3E00000000) == 0)
    {
      return sub_21A0E6DCC();
    }

    v37 = v48;
    v38 = v49;
    v39 = v50;
    *v40 = v51;
    v40[20] = BYTE4(v25);
    *&v40[16] = v25;
    sub_21A0E6DCC();
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    v43 = BYTE4(v25);
    v42 = v25;
    sub_219F72F28(v41, &v44);
    ActivityFill.hash(into:)(a1);
    v46 = v39;
    *v47 = *v40;
    *&v47[13] = *&v40[13];
    v44 = v37;
    v45 = v38;
    return sub_219F72F84(&v44);
  }

  v13 = *(v1 + 40);
  MEMORY[0x21CED2490](1);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x21CED2490](0);
    sub_21A0E626C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    MEMORY[0x21CED2490](1);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v6;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x21CED24C0](v26);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v7;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x21CED24C0](v27);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  MEMORY[0x21CED2490](1);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x21CED24C0](v14);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x21CED24C0](v15);
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_11:
  MEMORY[0x21CED2490](0);
  sub_21A0E626C();

  if ((v10 & 1) == 0)
  {
LABEL_12:
    MEMORY[0x21CED2490](0);

    return sub_219F6DDE8(a1, v9);
  }

LABEL_26:
  MEMORY[0x21CED2490](1);

  return sub_219F6DA14(a1, v9);
}

uint64_t ActivityFill.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0199D8()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A019A1C()
{
  sub_21A0E6DAC();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A019A5C()
{
  v1 = 0x6863726172656968;
  if (*v0 != 1)
  {
    v1 = 0x72477261656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F4364696C6F73;
  }
}

uint64_t sub_21A019AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A01B36C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A019AF8(uint64_t a1)
{
  v2 = sub_21A01AD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A019B34(uint64_t a1)
{
  v2 = sub_21A01AD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A019B70()
{
  if (*v0)
  {
    return 26223;
  }

  else
  {
    return 0x6C6576656CLL;
  }
}

uint64_t sub_21A019B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 26223 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A019C6C(uint64_t a1)
{
  v2 = sub_21A01ADE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A019CA8(uint64_t a1)
{
  v2 = sub_21A01ADE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFill.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB8A0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB8A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - v11;
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21A01AD38();
  sub_21A0E6E7C();
  if (!v2)
  {
    v14 = v7;
    v15 = v9;
    v16 = v34;
    v17 = sub_21A0E6AFC();
    v18 = (2 * *(v17 + 16)) | 1;
    v43 = v17;
    v44 = v17 + 32;
    v45 = 0;
    v46 = v18;
    v19 = sub_219F825A0();
    if (v19 == 3 || v45 != v46 >> 1)
    {
      v21 = sub_21A0E68BC();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
      *v23 = &type metadata for ActivityFill;
      sub_21A0E6A2C();
      sub_21A0E68AC();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v9 + 8))(v12, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v36) = 1;
          sub_21A01ADE0();
          sub_21A0E6A1C();
          v20 = swift_allocObject();
          LOBYTE(v36) = 0;
          sub_21A01AE34();
          v32 = v20;
          sub_21A0E6ADC();
          LOBYTE(v36) = 1;
          sub_219FA3584();
          v25 = v32;
          sub_21A0E6A8C();
          (*(v33 + 8))(v14, v4);
          (*(v15 + 8))(v12, v8);
          swift_unknownObjectRelease();
          *&v30 = v25;
          v31 = 0x2000000000;
        }

        else
        {
          v47 = 2;
          sub_21A01AD8C();
          sub_21A0E6ADC();
          (*(v9 + 8))(v12, v8);
          swift_unknownObjectRelease();
          v30 = v36;
          v28 = v37;
          v29 = v38;
          v26 = v39;
          v31 = 0x1000000000;
          v27 = v40;
        }
      }

      else
      {
        v47 = 0;
        sub_219F81E1C();
        sub_21A0E6ADC();
        (*(v9 + 8))(v12, v8);
        swift_unknownObjectRelease();
        v30 = v36;
        v28 = v37;
        v29 = v38;
        v26 = v39;
        v27 = v40;
        v31 = (v41 | (v42 << 32)) & 0xFFFFFFC1FFFFFFFFLL;
      }

      *v16 = v30;
      *(v16 + 16) = v28;
      *(v16 + 32) = v29;
      *(v16 + 48) = v26;
      *(v16 + 56) = v27;
      *(v16 + 64) = v31;
      *(v16 + 68) = BYTE4(v31);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t ActivityFill.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB8D0);
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v3);
  v26 = &v26 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB8D8);
  v33 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v29 = v1[3];
  v9 = v1[5];
  *&v30 = v1[4];
  *(&v30 + 1) = v9;
  v10 = v1[7];
  *&v31 = v1[6];
  *(&v31 + 1) = v10;
  v11 = *(v1 + 68);
  v12 = *(v1 + 16);
  v13 = a1[3];
  v14 = a1;
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_21A01AD38();
  sub_21A0E6EAC();
  v17 = (v11 >> 4) & 3;
  if (!v17)
  {
    *&v39 = v6;
    *(&v39 + 1) = v7;
    *&v40 = v8;
    *(&v40 + 1) = v29;
    v41 = v30;
    *v42 = v31;
    *&v42[16] = v12;
    v42[20] = ((v12 | (v11 << 32)) & 0xFFFFFFCFFFFFFFFFLL) >> 32;
    LOBYTE(v34) = 0;
    sub_219F81DC8();
    goto LABEL_5;
  }

  if (v17 == 1)
  {
    *&v39 = v6;
    *(&v39 + 1) = v7;
    *&v40 = v8;
    *(&v40 + 1) = v29;
    v41 = v30;
    *v42 = v31;
    v42[8] = BYTE8(v31);
    LOBYTE(v34) = 2;
    sub_21A01AE88();
LABEL_5:
    v18 = v43;
    sub_21A0E6BBC();
    return (*(v33 + 8))(v16, v18);
  }

  v20 = *(v6 + 16);
  v21 = *(v6 + 56);
  v40 = *(v6 + 40);
  v41 = v21;
  *v42 = *(v6 + 72);
  *&v42[13] = *(v6 + 85);
  v39 = *(v6 + 24);
  LOBYTE(v34) = 1;
  sub_21A01ADE0();
  v22 = v26;
  v23 = v43;
  sub_21A0E6B2C();
  LOBYTE(v34) = v20;
  v38 = 0;
  sub_21A01AEDC();
  v24 = v28;
  v25 = v32;
  sub_21A0E6BBC();
  if (v25)
  {
    (*(v27 + 8))(v22, v24);
    return (*(v33 + 8))(v16, v23);
  }

  else
  {
    v36 = v41;
    *v37 = *v42;
    *&v37[13] = *&v42[13];
    v34 = v39;
    v35 = v40;
    v38 = 1;
    sub_219FA35D8();
    sub_21A0E6B6C();
    (*(v27 + 8))(v22, v24);
    return (*(v33 + 8))(v16, v23);
  }
}

uint64_t ActivityFill.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16[-v8];
  v10 = *(v0 + 16);
  v11 = *(v0 + 48);
  v23 = *(v0 + 32);
  v24[0] = v11;
  v12 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v12;
  v13 = *(v0 + 48);
  v20 = v23;
  v21[0] = v13;
  *(v24 + 13) = *(v0 + 61);
  *(v21 + 13) = *(v0 + 61);
  v18 = v22[0];
  v19 = v10;
  v17 = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_219F72F28(v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A01A8C8()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16[-v8];
  v10 = *(v0 + 16);
  v11 = *(v0 + 48);
  v23 = *(v0 + 32);
  v24[0] = v11;
  v12 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v12;
  v13 = *(v0 + 48);
  v20 = v23;
  v21[0] = v13;
  *(v24 + 13) = *(v0 + 61);
  *(v21 + 13) = *(v0 + 61);
  v18 = v22[0];
  v19 = v10;
  v17 = MEMORY[0x277D84F90];
  v14 = sub_21A0E6E1C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_219F72F28(v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t ActivityFill.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = (*(v8 + 68) >> 4) & 3;
  if (!v10)
  {
    v14 = 0x6C6F4364696C6F73;
    v11 = ActivityColor.description.getter();
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    sub_21A0E686C();

    v14 = 0x72477261656E696CLL;
    v11 = ActivityLinearGradient.description.getter();
LABEL_5:
    MEMORY[0x21CED1980](v11);

    MEMORY[0x21CED1980](41, 0xE100000000000000);
    return v14;
  }

  if ((~(*(v9 + 92) << 32) & 0x3E00000000) == 0)
  {
    sub_21A0E686C();
    MEMORY[0x21CED1980](0x6863726172656968, 0xED0000286C616369);
    sub_21A0E697C();
    MEMORY[0x21CED1980](41, 0xE100000000000000);
    return 0;
  }

  v14 = 0;
  v13 = ActivityFill.description.getter(a1, a2, a3, a4, a5, a6, a7, a8, *(v9 + 24));
  MEMORY[0x21CED1980](v13);

  MEMORY[0x21CED1980](46, 0xE100000000000000);
  sub_21A0E697C();
  return v14;
}

unint64_t sub_21A01AD38()
{
  result = qword_27CCDB8B0;
  if (!qword_27CCDB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8B0);
  }

  return result;
}

unint64_t sub_21A01AD8C()
{
  result = qword_27CCDB8B8;
  if (!qword_27CCDB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8B8);
  }

  return result;
}

unint64_t sub_21A01ADE0()
{
  result = qword_27CCDB8C0;
  if (!qword_27CCDB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8C0);
  }

  return result;
}

unint64_t sub_21A01AE34()
{
  result = qword_27CCDB8C8;
  if (!qword_27CCDB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8C8);
  }

  return result;
}

unint64_t sub_21A01AE88()
{
  result = qword_27CCDB8E0;
  if (!qword_27CCDB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8E0);
  }

  return result;
}

unint64_t sub_21A01AEDC()
{
  result = qword_27CCDB8E8;
  if (!qword_27CCDB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8E8);
  }

  return result;
}

unint64_t sub_21A01AF34()
{
  result = qword_27CCDB8F0;
  if (!qword_27CCDB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8F0);
  }

  return result;
}

unint64_t sub_21A01AF8C()
{
  result = qword_27CCDB8F8;
  if (!qword_27CCDB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB8F8);
  }

  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A01B004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 69))
  {
    return (*a1 + 30);
  }

  v3 = ((4 * ((*(a1 + 68) >> 1) & 7)) | (*(a1 + 68) >> 4) & 3) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A01B058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 68) = 2 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
      *(result + 64) = 0;
    }
  }

  return result;
}

uint64_t sub_21A01B0D4(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  v3 = *(result + 4);
  *result = v2;
  *(result + 4) = ((v2 | (v3 << 32)) & 0xFFFFFFCFFFFFFFFFLL) >> 32;
  return result;
}

uint64_t sub_21A01B0F4(uint64_t a1, char a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (v3 | (*(result + 4) << 32)) & 0xFFFFFFC1FFFFFFFFLL;
  *result = v3;
  *(result + 4) = (v4 | ((a2 & 3) << 36)) >> 32;
  return result;
}

unint64_t sub_21A01B160()
{
  result = qword_27CCDB900;
  if (!qword_27CCDB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB900);
  }

  return result;
}

unint64_t sub_21A01B1B8()
{
  result = qword_27CCDB908;
  if (!qword_27CCDB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB908);
  }

  return result;
}

unint64_t sub_21A01B210()
{
  result = qword_27CCDB910;
  if (!qword_27CCDB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB910);
  }

  return result;
}

unint64_t sub_21A01B268()
{
  result = qword_27CCDB918;
  if (!qword_27CCDB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB918);
  }

  return result;
}

unint64_t sub_21A01B2C0()
{
  result = qword_27CCDB920;
  if (!qword_27CCDB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB920);
  }

  return result;
}

unint64_t sub_21A01B318()
{
  result = qword_27CCDB928;
  if (!qword_27CCDB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB928);
  }

  return result;
}

uint64_t sub_21A01B36C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F4364696C6F73 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72477261656E696CLL && a2 == 0xEE00746E65696461)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

unint64_t sub_21A01B498()
{
  result = qword_27CCDB930;
  if (!qword_27CCDB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB930);
  }

  return result;
}

uint64_t type metadata accessor for ActivityFlexibleUpdateView()
{
  result = qword_27CCDB938;
  if (!qword_27CCDB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A01B560()
{
  sub_21A01B65C(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21A01B65C(319, &qword_27CCDB948, &type metadata for ActivityFlexibleUpdateTheme, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityFlexibleUpdate(319);
      if (v2 <= 0x3F)
      {
        sub_219F419CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A01B65C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21A01B6C8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v97 = v3;
  updated = type metadata accessor for ActivityFlexibleUpdateGraphicView();
  v100 = *(updated - 8);
  v6 = MEMORY[0x28223BE20](updated, v5);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v88 = &v84 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v92 = &v84 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v85 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v93 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v84 - v21;
  v23 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v87 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v86 = &v84 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v84 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB958);
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v95 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v96 = &v84 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v99 = &v84 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v84 - v49;
  v51 = v2;
  v90 = v2 + *(type metadata accessor for ActivityFlexibleUpdateView() + 24);
  sub_219F45500(v90, v22, &qword_27CCDB1B0);
  v52 = *(v24 + 48);
  v94 = v23;
  v91 = v52;
  v53 = v52(v22, 1, v23);
  v98 = updated;
  v101 = v50;
  if (v53 == 1)
  {
    sub_219F6409C(v22, &qword_27CCDB1B0);
    v54 = *(v100 + 56);
    v54(v50, 1, 1, updated);
    v55 = v93;
  }

  else
  {
    sub_21A01E274(v22, v37, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    sub_21A01E274(v37, v34, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    memcpy(v103, (v2 + 48), 0x968uLL);
    if (sub_21A01E250(v103) == 1)
    {
      sub_219FF06D0(v102);
    }

    else
    {
      sub_219F45500(v103, v102, &qword_27CCDB1B8);
      memcpy(v102, v103, 0x2C0uLL);
    }

    v56 = v101;
    v57 = v92;
    v55 = v93;
    sub_21A01E274(v34, v92, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    v58 = v98;
    memcpy((v57 + *(v98 + 20)), v102, 0x2C0uLL);
    v59 = v57;
    v60 = v85;
    sub_21A01E274(v59, v85, type metadata accessor for ActivityFlexibleUpdateGraphicView);
    sub_21A01E274(v60, v56, type metadata accessor for ActivityFlexibleUpdateGraphicView);
    v54 = *(v100 + 56);
    v54(v56, 0, 1, v58);
  }

  v93 = sub_21A0E567C();
  v105 = 0;
  sub_21A01BFB4(v51, v61);
  memcpy(v106, v103, sizeof(v106));
  memcpy(v107, v103, 0xA38uLL);
  sub_219F45500(v106, v102, &qword_27CCDB960);
  sub_219F6409C(v107, &qword_27CCDB960);
  memcpy(&v104[7], v106, 0xA38uLL);
  LODWORD(v92) = v105;
  v62 = type metadata accessor for ActivityFlexibleUpdate(0);
  sub_219F45500(v90 + *(v62 + 40), v55, &qword_27CCDB1B0);
  if (v91(v55, 1, v94) == 1)
  {
    sub_219F6409C(v55, &qword_27CCDB1B0);
    v63 = v99;
    v64 = v99;
    v65 = 1;
    v66 = v98;
  }

  else
  {
    v67 = v55;
    v68 = v86;
    sub_21A01E274(v67, v86, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    v69 = v87;
    sub_21A01E274(v68, v87, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    memcpy(v103, (v51 + 48), 0x968uLL);
    if (sub_21A01E250(v103) == 1)
    {
      sub_219FF06D0(v102);
    }

    else
    {
      sub_219F45500(&v103[213], v102, &qword_27CCDB1B8);
      memcpy(v102, &v103[213], 0x2C0uLL);
    }

    v70 = v98;
    v71 = v69;
    v72 = v89;
    sub_21A01E274(v71, v89, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    memcpy((v72 + *(v70 + 20)), v102, 0x2C0uLL);
    v73 = v72;
    v74 = v88;
    sub_21A01E274(v73, v88, type metadata accessor for ActivityFlexibleUpdateGraphicView);
    v75 = v74;
    v63 = v99;
    sub_21A01E274(v75, v99, type metadata accessor for ActivityFlexibleUpdateGraphicView);
    v64 = v63;
    v65 = 0;
    v66 = v70;
  }

  v54(v64, v65, 1, v66);
  v76 = v96;
  sub_219F45500(v101, v96, &qword_27CCDB958);
  v77 = v95;
  sub_219F45500(v63, v95, &qword_27CCDB958);
  v78 = v97;
  sub_219F45500(v76, v97, &qword_27CCDB958);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB968);
  v80 = *(v79 + 48);
  v81 = v93;
  v102[0] = v93;
  v102[1] = 0;
  v82 = v92;
  LOBYTE(v102[2]) = v92;
  memcpy(&v102[2] + 1, v104, 0xA3FuLL);
  memcpy((v78 + v80), v102, 0xA50uLL);
  sub_219F45500(v77, v78 + *(v79 + 64), &qword_27CCDB958);
  sub_219F45500(v102, v103, &qword_27CCDB970);
  sub_219F6409C(v99, &qword_27CCDB958);
  sub_219F6409C(v101, &qword_27CCDB958);
  sub_219F6409C(v77, &qword_27CCDB958);
  v103[0] = v81;
  v103[1] = 0;
  LOBYTE(v103[2]) = v82;
  memcpy(&v103[2] + 1, v104, 0xA3FuLL);
  sub_219F6409C(v103, &qword_27CCDB970);
  return sub_219F6409C(v76, &qword_27CCDB958);
}

uint64_t sub_21A01BFB4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v169 = v3;
  v4 = sub_21A0E554C();
  v172 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for ActivityFlexibleUpdate(0);
  MEMORY[0x28223BE20](v183, v8);
  v10 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v217, (v2 + 48), 0x968uLL);
  updated = type metadata accessor for ActivityFlexibleUpdateView();
  v178 = v2 + *(updated + 24);
  v182 = v10;
  sub_21A01E2DC(v178, v10);
  v12 = *(v2 + *(updated + 28));
  v14 = *v2;
  v13 = *(v2 + 8);
  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  v17 = *(v2 + 32);
  v184 = v2;
  v18 = *(v2 + 40);
  v170 = v7;
  v171 = v4;
  v179 = v12;
  if (v18 == 1)
  {
    *&v214 = v14;
    *(&v214 + 1) = v13;
    *&v215 = v16;
    *(&v215 + 1) = v15;
    v216 = v17;
    sub_219F45500(v217, v209, &qword_27CCDB1A8);

    sub_219F7F800(v14, v13, v16, v15, v17, 1);
  }

  else
  {
    sub_219F45500(v217, v209, &qword_27CCDB1A8);

    sub_219F7F800(v14, v13, v16, v15, v17, 0);
    sub_21A0E66AC();
    v19 = v4;
    v20 = sub_21A0E575C();
    sub_21A0E512C();

    v12 = v179;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v14, v13, v16, v15, v17, 0);
    (*(v172 + 8))(v7, v19);
  }

  v210 = v214;
  v211 = v215;
  v212 = v216;
  KeyPath = swift_getKeyPath();
  LOBYTE(v205) = 0;
  sub_219FF05B0(v213);
  memcpy(v196, v213, 0x968uLL);
  v22 = v182;
  v21 = v183;
  v23 = &v182[v183[5]];
  v24 = *v23;
  v25 = v23[1];
  v209[0] = v210;
  v209[1] = v211;
  *&v209[2] = v212;

  sub_219F63900(&v210, v208);
  v180 = sub_21A0B892C(v24, v25, v12, v209);
  v176 = v27;
  v177 = v26;
  v29 = v28;
  v30 = (v22 + v21[6]);
  v31 = *v30;
  v32 = v30[1];
  v209[0] = v210;
  v209[1] = v211;
  *&v209[2] = v212;

  v33 = sub_21A0B892C(v31, v32, v12, v209);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_21A01E340(v22);
  if (v29 | v39)
  {
    memcpy(v185, v196, 0x968uLL);
    sub_219F6409C(v185, &qword_27CCDB1A8);
    *(v197 + 8) = 0u;
    *(&v197[1] + 8) = 0u;
    BYTE8(v197[2]) = v205;
    *&v197[0] = KeyPath;
    v175 = v33;
    *&v197[3] = v180;
    *(&v197[3] + 1) = v177;
    *&v197[4] = v176;
    *(&v197[4] + 1) = v29;
    *&v197[5] = v33;
    *(&v197[5] + 1) = v35;
    *&v197[6] = v37;
    *(&v197[6] + 1) = v39;
    memcpy(&v197[7], v217, 0x968uLL);
    *(v198 + 8) = 0u;
    *(&v198[1] + 8) = 0u;
    BYTE8(v198[2]) = v205;
    *&v198[0] = KeyPath;
    *&v198[3] = v180;
    *(&v198[3] + 1) = v177;
    *&v198[4] = v176;
    *(&v198[4] + 1) = v29;
    *&v198[5] = v33;
    *(&v198[5] + 1) = v35;
    *&v198[6] = v37;
    *(&v198[6] + 1) = v39;
    memcpy(&v198[7], v217, 0x968uLL);
    sub_21A01E3EC(v197, v209);
    sub_21A01E39C(v198);
    memcpy(v208, v197, 0x9D8uLL);
    nullsub_1(v208, v40);
    memcpy(v209, v208, 0x9D8uLL);
  }

  else
  {
    sub_219F6409C(v217, &qword_27CCDB1A8);
    *&v208[0] = KeyPath;
    *(v208 + 8) = 0u;
    *(&v208[1] + 8) = 0u;
    BYTE8(v208[2]) = v205;
    memset(&v208[3], 0, 64);
    memcpy(&v208[7], v196, 0x968uLL);
    sub_21A01E39C(v208);
    sub_21A01E3CC(v209);
  }

  v41 = (v178 + v183[7]);
  v42 = *v41;
  v43 = v41[1];
  v45 = *v184;
  v44 = *(v184 + 8);
  v47 = *(v184 + 16);
  v46 = *(v184 + 24);
  v48 = *(v184 + 32);
  if (*(v184 + 40) == 1)
  {
    *&v205 = *v184;
    *(&v205 + 1) = v44;
    *&v206 = v47;
    *(&v206 + 1) = v46;
    v207 = v48;

    sub_219F7F800(v45, v44, v47, v46, v48, 1);
  }

  else
  {

    sub_219F7F800(v45, v44, v47, v46, v48, 0);
    sub_21A0E66AC();
    v49 = sub_21A0E575C();
    v182 = v42;
    v50 = v49;
    sub_21A0E512C();

    v51 = v170;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v45, v44, v47, v46, v48, 0);
    v52 = v51;
    v42 = v182;
    (*(v172 + 8))(v52, v171);
  }

  v208[0] = v205;
  v208[1] = v206;
  *&v208[2] = v207;
  v53 = v179;

  v54 = sub_21A0B892C(v42, v43, v53, v208);
  if (v57)
  {
    v180 = v56;
    KeyPath = v55;
    v182 = v54;
    memcpy(v208, (v184 + 48), 0x968uLL);
    if (sub_21A01E250(v208) == 1)
    {
      sub_219F639B0(v198);
    }

    else
    {
      sub_219F45500(&v208[69], v198, &qword_27CCD95B8);
      v198[10] = v208[79];
      v198[11] = v208[80];
      *&v198[12] = *&v208[81];
      v198[6] = v208[75];
      v198[7] = v208[76];
      v198[9] = v208[78];
      v198[8] = v208[77];
      v198[2] = v208[71];
      v198[3] = v208[72];
      v198[5] = v208[74];
      v198[4] = v208[73];
      v198[1] = v208[70];
      v198[0] = v208[69];
    }

    v197[10] = v198[10];
    v197[11] = v198[11];
    *&v197[12] = *&v198[12];
    v197[6] = v198[6];
    v197[7] = v198[7];
    v197[9] = v198[9];
    v197[8] = v198[8];
    v197[2] = v198[2];
    v197[3] = v198[3];
    v197[5] = v198[5];
    v197[4] = v198[4];
    v197[1] = v198[1];
    v197[0] = v198[0];
    memset(v185, 0, 80);
    v185[20] = 0x4000000;
    LOBYTE(v189) = 9;
    v59 = *v184;
    v58 = *(v184 + 8);
    v61 = *(v184 + 16);
    v60 = *(v184 + 24);
    v62 = *(v184 + 32);
    if (*(v184 + 40) == 1)
    {
      *&v202 = *v184;
      *(&v202 + 1) = v58;
      *&v203 = v61;
      *(&v203 + 1) = v60;
      v204 = v62;
      *&v196[0] = v59;
      *(&v196[0] + 1) = v58;
      *&v196[1] = v61;
      *(&v196[1] + 1) = v60;
      *&v196[2] = v62;
      BYTE8(v196[2]) = 1;
      sub_219F63900(v196, &v199);
    }

    else
    {

      sub_21A0E66AC();
      v63 = sub_21A0E575C();
      sub_21A0E512C();

      v64 = v170;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v59, v58, v61, v60, v62, 0);
      (*(v172 + 8))(v64, v171);
    }

    v192 = v202;
    v193 = v203;
    v194 = v204;
    v65 = Text.activityTextModifier(_:fallback:font:environment:)(v197, v185, &v189, &v192, v182, KeyPath, v180 & 1);
    v67 = v66;
    v69 = v68;
    v199 = v192;
    v200 = v193;
    v201 = v194;
    sub_219F5ED9C(&v199);
    v196[10] = v197[10];
    v196[11] = v197[11];
    *&v196[12] = *&v197[12];
    v196[6] = v197[6];
    v196[7] = v197[7];
    v196[9] = v197[9];
    v196[8] = v197[8];
    v196[2] = v197[2];
    v196[3] = v197[3];
    v196[5] = v197[5];
    v196[4] = v197[4];
    v196[1] = v197[1];
    v196[0] = v197[0];
    sub_219F6409C(v196, &qword_27CCD95B8);
    sub_21A0E593C();
    v70 = sub_21A0E599C();
    v72 = v71;
    LODWORD(v177) = v73;
    v75 = v74;
    sub_219F63A30(v182, KeyPath, v180 & 1);

    sub_219F63A30(v65, v67, v69 & 1);

    v76 = v177 & 1;
    v182 = v70;
    v177 = v72;
    v180 = v76;
    sub_219F63A40(v70, v72, v76);
    KeyPath = v75;
  }

  else
  {
    KeyPath = 0;
    v182 = 0;
    v177 = 0;
    v180 = 0;
  }

  v77 = (v178 + v183[8]);
  v78 = *v77;
  v79 = v77[1];
  v81 = *v184;
  v80 = *(v184 + 8);
  v83 = *(v184 + 16);
  v82 = *(v184 + 24);
  v84 = *(v184 + 32);
  if (*(v184 + 40) == 1)
  {
    *&v202 = *v184;
    *(&v202 + 1) = v80;
    *&v203 = v83;
    *(&v203 + 1) = v82;
    v204 = v84;

    sub_219F7F800(v81, v80, v83, v82, v84, 1);
  }

  else
  {

    sub_219F7F800(v81, v80, v83, v82, v84, 0);
    sub_21A0E66AC();
    v85 = sub_21A0E575C();
    v176 = v78;
    v86 = v85;
    sub_21A0E512C();

    v87 = v170;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v81, v80, v83, v82, v84, 0);
    v88 = v87;
    v78 = v176;
    (*(v172 + 8))(v88, v171);
  }

  v208[0] = v202;
  v208[1] = v203;
  *&v208[2] = v204;
  v89 = v179;

  v90 = sub_21A0B892C(v78, v79, v89, v208);
  if (v93)
  {
    v174 = v92;
    v175 = v91;
    v176 = v90;
    memcpy(v208, (v184 + 48), 0x968uLL);
    if (sub_21A01E250(v208) == 1)
    {
      sub_219F639B0(v198);
    }

    else
    {
      sub_219F45500(&v208[81] + 8, v198, &qword_27CCD95B8);
      v198[10] = *(&v208[91] + 8);
      v198[11] = *(&v208[92] + 8);
      *&v198[12] = *(&v208[93] + 1);
      v198[6] = *(&v208[87] + 8);
      v198[7] = *(&v208[88] + 8);
      v198[9] = *(&v208[90] + 8);
      v198[8] = *(&v208[89] + 8);
      v198[2] = *(&v208[83] + 8);
      v198[3] = *(&v208[84] + 8);
      v198[5] = *(&v208[86] + 8);
      v198[4] = *(&v208[85] + 8);
      v198[1] = *(&v208[82] + 8);
      v198[0] = *(&v208[81] + 8);
    }

    v197[10] = v198[10];
    v197[11] = v198[11];
    *&v197[12] = *&v198[12];
    v197[6] = v198[6];
    v197[7] = v198[7];
    v197[9] = v198[9];
    v197[8] = v198[8];
    v197[2] = v198[2];
    v197[3] = v198[3];
    v197[5] = v198[5];
    v197[4] = v198[4];
    v197[1] = v198[1];
    v197[0] = v198[0];
    memset(v185, 0, 80);
    v185[20] = 0x4000000;
    LOBYTE(v186) = 9;
    v95 = *v184;
    v94 = *(v184 + 8);
    v97 = *(v184 + 16);
    v96 = *(v184 + 24);
    v98 = *(v184 + 32);
    if (*(v184 + 40) == 1)
    {
      *&v199 = *v184;
      *(&v199 + 1) = v94;
      *&v200 = v97;
      *(&v200 + 1) = v96;
      v201 = v98;
      *&v196[0] = v95;
      *(&v196[0] + 1) = v94;
      *&v196[1] = v97;
      *(&v196[1] + 1) = v96;
      *&v196[2] = v98;
      BYTE8(v196[2]) = 1;
      sub_219F63900(v196, &v192);
    }

    else
    {

      sub_21A0E66AC();
      v99 = sub_21A0E575C();
      sub_21A0E512C();

      v100 = v170;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v95, v94, v97, v96, v98, 0);
      (*(v172 + 8))(v100, v171);
    }

    v189 = v199;
    v190 = v200;
    v191 = v201;
    v101 = Text.activityTextModifier(_:fallback:font:environment:)(v197, v185, &v186, &v189, v176, v175, v174 & 1);
    v103 = v102;
    v105 = v104;
    v192 = v189;
    v193 = v190;
    v194 = v191;
    sub_219F5ED9C(&v192);
    v196[10] = v197[10];
    v196[11] = v197[11];
    *&v196[12] = *&v197[12];
    v196[6] = v197[6];
    v196[7] = v197[7];
    v196[9] = v197[9];
    v196[8] = v197[8];
    v196[2] = v197[2];
    v196[3] = v197[3];
    v196[5] = v197[5];
    v196[4] = v197[4];
    v196[1] = v197[1];
    v196[0] = v197[0];
    sub_219F6409C(v196, &qword_27CCD95B8);
    sub_21A0E57DC();
    v106 = sub_21A0E599C();
    v108 = v107;
    LODWORD(v173) = v109;
    v111 = v110;
    sub_219F63A30(v176, v175, v174 & 1);

    sub_219F63A30(v101, v103, v105 & 1);

    v112 = v173 & 1;
    v175 = v108;
    v176 = v106;
    v173 &= 1u;
    sub_219F63A40(v106, v108, v112);
    v174 = v111;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
  }

  v113 = v178 + v183[9];
  v114 = *v113;
  v115 = *(v113 + 8);
  v116 = *v184;
  v117 = *(v184 + 8);
  v119 = *(v184 + 16);
  v118 = *(v184 + 24);
  v120 = *(v184 + 32);
  if (*(v184 + 40) == 1)
  {
    *&v199 = *v184;
    *(&v199 + 1) = v117;
    *&v200 = v119;
    *(&v200 + 1) = v118;
    v201 = v120;

    sub_219F7F800(v116, v117, v119, v118, v120, 1);
  }

  else
  {

    sub_219F7F800(v116, v117, v119, v118, v120, 0);
    sub_21A0E66AC();
    v121 = sub_21A0E575C();
    v183 = v114;
    v122 = v121;
    sub_21A0E512C();

    v123 = v170;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v116, v117, v119, v118, v120, 0);
    v124 = v123;
    v114 = v183;
    (*(v172 + 8))(v124, v171);
  }

  v208[0] = v199;
  v208[1] = v200;
  *&v208[2] = v201;
  v125 = sub_21A0B892C(v114, v115, v179, v208);
  if (v128)
  {
    v129 = v125;
    v179 = v127;
    v183 = v126;
    memcpy(v208, (v184 + 48), 0x968uLL);
    if (sub_21A01E250(v208) == 1)
    {
      sub_219F639B0(v198);
    }

    else
    {
      sub_219F45500(&v208[94], v198, &qword_27CCD95B8);
      v198[10] = v208[104];
      v198[11] = v208[105];
      *&v198[12] = *&v208[106];
      v198[6] = v208[100];
      v198[7] = v208[101];
      v198[9] = v208[103];
      v198[8] = v208[102];
      v198[2] = v208[96];
      v198[3] = v208[97];
      v198[5] = v208[99];
      v198[4] = v208[98];
      v198[1] = v208[95];
      v198[0] = v208[94];
    }

    v197[10] = v198[10];
    v197[11] = v198[11];
    *&v197[12] = *&v198[12];
    v197[6] = v198[6];
    v197[7] = v198[7];
    v197[9] = v198[9];
    v197[8] = v198[8];
    v197[2] = v198[2];
    v197[3] = v198[3];
    v197[5] = v198[5];
    v197[4] = v198[4];
    v197[1] = v198[1];
    v197[0] = v198[0];
    memset(v185, 0, 80);
    v185[20] = 0x4000000;
    v195 = 9;
    v133 = *v184;
    v132 = *(v184 + 8);
    v135 = *(v184 + 16);
    v134 = *(v184 + 24);
    v136 = *(v184 + 32);
    if (*(v184 + 40) == 1)
    {
      *&v192 = *v184;
      *(&v192 + 1) = v132;
      *&v193 = v135;
      *(&v193 + 1) = v134;
      v194 = v136;
      *&v196[0] = v133;
      *(&v196[0] + 1) = v132;
      *&v196[1] = v135;
      *(&v196[1] + 1) = v134;
      *&v196[2] = v136;
      BYTE8(v196[2]) = 1;
      sub_219F63900(v196, &v189);
    }

    else
    {

      sub_21A0E66AC();
      v137 = sub_21A0E575C();
      sub_21A0E512C();

      v138 = v170;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v133, v132, v135, v134, v136, 0);
      (*(v172 + 8))(v138, v171);
    }

    v186 = v192;
    v187 = v193;
    v188 = v194;
    v139 = Text.activityTextModifier(_:fallback:font:environment:)(v197, v185, &v195, &v186, v129, v183, v179 & 1);
    v184 = v129;
    v141 = v140;
    v143 = v142;
    v178 = v144;
    v189 = v186;
    v190 = v187;
    v191 = v188;
    sub_219F5ED9C(&v189);
    v196[10] = v197[10];
    v196[11] = v197[11];
    *&v196[12] = *&v197[12];
    v196[6] = v197[6];
    v196[7] = v197[7];
    v196[9] = v197[9];
    v196[8] = v197[8];
    v196[2] = v197[2];
    v196[3] = v197[3];
    v196[5] = v197[5];
    v196[4] = v197[4];
    v196[1] = v197[1];
    v196[0] = v197[0];
    sub_219F6409C(v196, &qword_27CCD95B8);
    sub_21A0E58FC();
    v145 = v139;
    v146 = sub_21A0E599C();
    v148 = v147;
    v150 = v149;
    v152 = v151;
    sub_219F63A30(v184, v183, v179 & 1);

    sub_219F63A30(v145, v141, v143 & 1);

    v184 = v146;
    v130 = v148;
    v131 = v150 & 1;
    sub_219F63A40(v146, v148, v150 & 1);
    v183 = v152;
  }

  else
  {
    v183 = 0;
    v184 = 0;
    v130 = 0;
    v131 = 0;
  }

  memcpy(v196, v209, 0x9D8uLL);
  memcpy(v197, v209, 0x9D8uLL);
  memcpy(v198, v209, 0x9D8uLL);
  sub_219F45500(v209, v208, &qword_27CCDB978);
  sub_219F45500(v197, v208, &qword_27CCDB978);
  v153 = v177;
  sub_21A006EE4(v182, v177, v180, KeyPath);
  v155 = v175;
  v154 = v176;
  v157 = v173;
  v156 = v174;
  sub_21A006EE4(v176, v175, v173, v174);
  v159 = v183;
  v158 = v184;
  sub_21A006EE4(v184, v130, v131, v183);
  v175 = v155;
  sub_21A006F28(v154, v155, v157, v156);
  v160 = KeyPath;
  v161 = v182;
  v162 = v153;
  v163 = v180;
  sub_21A006F28(v182, v162, v180, KeyPath);
  sub_21A006F28(v158, v130, v131, v159);
  sub_219F6409C(v209, &qword_27CCDB978);
  v164 = v169;
  memcpy(v169, v198, 0x9D8uLL);
  v164[315] = v161;
  v165 = v177;
  v164[316] = v177;
  v164[317] = v163;
  v164[318] = v160;
  v166 = v176;
  v164[319] = v176;
  v164[320] = v155;
  LOBYTE(v155) = v173;
  v167 = v174;
  v164[321] = v173;
  v164[322] = v167;
  v164[323] = v158;
  v164[324] = v130;
  v164[325] = v131;
  v164[326] = v159;
  sub_21A006F28(v158, v130, v131, v159);
  sub_21A006F28(v166, v175, v155, v167);
  sub_21A006F28(v182, v165, v180, KeyPath);
  memcpy(v208, v196, 0x9D8uLL);
  return sub_219F6409C(v208, &qword_27CCDB978);
}

uint64_t sub_21A01D784(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v55 = v3;
  v4 = sub_21A0E554C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  if (v10)
  {
    memcpy(v108, (v2 + 112), sizeof(v108));
    if (sub_21A01E250(v108) == 1)
    {
      sub_219F639B0(v109);
    }

    else
    {
      v103 = *&v108[864];
      v104 = *&v108[880];
      v105 = *&v108[896];
      v99 = *&v108[800];
      v100 = *&v108[816];
      v101 = *&v108[832];
      v102 = *&v108[848];
      v95 = *&v108[736];
      v96 = *&v108[752];
      v97 = *&v108[768];
      v98 = *&v108[784];
      v93 = *&v108[704];
      v94 = *&v108[720];
      sub_219F45500(&v93, v109, &qword_27CCD95B8);
      v109[10] = v103;
      v109[11] = v104;
      *&v109[12] = v105;
      v109[6] = v99;
      v109[7] = v100;
      v109[9] = v102;
      v109[8] = v101;
      v109[2] = v95;
      v109[3] = v96;
      v109[5] = v98;
      v109[4] = v97;
      v109[1] = v94;
      v109[0] = v93;
    }

    v103 = v109[10];
    v104 = v109[11];
    v105 = *&v109[12];
    v99 = v109[6];
    v100 = v109[7];
    v101 = v109[8];
    v102 = v109[9];
    v95 = v109[2];
    v96 = v109[3];
    v97 = v109[4];
    v98 = v109[5];
    v93 = v109[0];
    v94 = v109[1];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    LODWORD(v68) = 0x4000000;
    LOBYTE(v61[0]) = 9;
    *&v107[25] = *(v2 + 25);
    v12 = *(v2 + 16);
    *v107 = *v2;
    *&v107[16] = v12;
    v49 = v2;
    if (v107[40] == 1)
    {
      *&v78[0] = *v107;
      *(v78 + 8) = *&v107[8];
      *(&v78[1] + 8) = *&v107[24];
      sub_21A006EE4(v7, v8, v9, v10);
      sub_219F45500(v107, &v80, &qword_27CCD9580);
    }

    else
    {
      sub_21A006EE4(v7, v8, v9, v10);
      sub_219F45500(v107, &v80, &qword_27CCD9580);
      sub_21A0E66AC();
      v13 = v10;
      v14 = sub_21A0E575C();
      sub_21A0E512C();

      v15 = v52;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(v107, &qword_27CCD9580);
      v16 = v15;
      v10 = v13;
      (*(v53 + 8))(v16, v54);
    }

    v51 = v10;
    v56 = v8;
    v57 = v7;
    *v76 = v78[0];
    *&v76[16] = v78[1];
    *&v76[32] = *&v78[2];
    v17 = Text.activityTextModifier(_:fallback:font:environment:)(&v93, &v63, v61, v76, v7, v8, v9 & 1);
    v19 = v18;
    v21 = v20;
    *v106 = *v76;
    *&v106[16] = *&v76[16];
    *&v106[32] = *&v76[32];
    sub_219F5ED9C(v106);
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    v82 = v95;
    v83 = v96;
    v84 = v97;
    v85 = v98;
    v80 = v93;
    v81 = v94;
    sub_219F6409C(&v80, &qword_27CCD95B8);
    sub_21A0E592C();
    sub_21A0E588C();
    sub_21A0E58CC();

    v22 = v17;
    v7 = sub_21A0E599C();
    v24 = v23;
    v25 = v9;
    v27 = v26;
    v11 = v28;
    sub_219F63A30(v57, v56, v25 & 1);

    sub_219F63A30(v22, v19, v21 & 1);

    v9 = v27 & 1;
    sub_219F63A40(v7, v24, v9);

    v8 = v24;
    v2 = v49;
  }

  else
  {
    v11 = 0;
  }

  v30 = *(v2 + 80);
  v29 = *(v2 + 88);
  v31 = *(v2 + 96);
  v32 = *(v2 + 104);
  if (v32)
  {
    v51 = v9;
    memcpy(v109, (v2 + 112), 0x968uLL);
    v33 = sub_21A01E250(v109);
    v50 = v11;
    if (v33 == 1)
    {
      sub_219F639B0(&v93);
    }

    else
    {
      v92 = *(&v109[68] + 1);
      v90 = *(&v109[66] + 8);
      v91 = *(&v109[67] + 8);
      v86 = *(&v109[62] + 8);
      v87 = *(&v109[63] + 8);
      v88 = *(&v109[64] + 8);
      v89 = *(&v109[65] + 8);
      v82 = *(&v109[58] + 8);
      v83 = *(&v109[59] + 8);
      v84 = *(&v109[60] + 8);
      v85 = *(&v109[61] + 8);
      v80 = *(&v109[56] + 8);
      v81 = *(&v109[57] + 8);
      sub_219F45500(&v80, &v93, &qword_27CCD95B8);
      v103 = v90;
      v104 = v91;
      v105 = v92;
      v99 = v86;
      v100 = v87;
      v101 = v88;
      v102 = v89;
      v95 = v82;
      v96 = v83;
      v97 = v84;
      v98 = v85;
      v93 = v80;
      v94 = v81;
    }

    v56 = v8;
    v57 = v7;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    v82 = v95;
    v83 = v96;
    v84 = v97;
    v85 = v98;
    v80 = v93;
    v81 = v94;
    memset(v78, 0, sizeof(v78));
    v79 = 0x4000000;
    v77 = 9;
    *&v106[25] = *(v2 + 25);
    v34 = *(v2 + 16);
    *v106 = *v2;
    *&v106[16] = v34;
    if (v106[40] == 1)
    {
      *v76 = *v106;
      *&v76[8] = *&v106[8];
      *&v76[24] = *&v106[24];
      sub_21A006EE4(v30, v29, v31, v32);
      sub_219F45500(v106, &v63, &qword_27CCD9580);
    }

    else
    {
      sub_21A006EE4(v30, v29, v31, v32);
      sub_219F45500(v106, &v63, &qword_27CCD9580);
      sub_21A0E66AC();
      v35 = sub_21A0E575C();
      sub_21A0E512C();

      v36 = v52;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(v106, &qword_27CCD9580);
      (*(v53 + 8))(v36, v54);
    }

    v58 = *v76;
    v59 = *&v76[16];
    v60 = *&v76[32];
    v48 = v32;
    v37 = Text.activityTextModifier(_:fallback:font:environment:)(&v80, v78, &v77, &v58, v30, v29, v31 & 1);
    v52 = v38;
    LODWORD(v53) = v39;
    v61[0] = v58;
    v61[1] = v59;
    v62 = v60;
    sub_219F5ED9C(v61);
    v73 = v90;
    v74 = v91;
    v75 = v92;
    v69 = v86;
    v70 = v87;
    v71 = v88;
    v72 = v89;
    v65 = v82;
    v66 = v83;
    v67 = v84;
    v68 = v85;
    v63 = v80;
    v64 = v81;
    sub_219F6409C(&v63, &qword_27CCD95B8);
    sub_21A0E592C();
    sub_21A0E588C();
    sub_21A0E58CC();

    v40 = sub_21A0E599C();
    v42 = v41;
    LODWORD(v54) = v43;
    v32 = v44;
    sub_219F63A30(v30, v29, v31 & 1);

    sub_219F63A30(v37, v52, v53 & 1);

    v31 = v54 & 1;
    sub_219F63A40(v40, v42, v54 & 1);

    v30 = v40;
    v29 = v42;
    v11 = v50;
    v9 = v51;
    v8 = v56;
    v7 = v57;
  }

  LOBYTE(v93) = 1;
  sub_21A006EE4(v7, v8, v9, v11);
  sub_21A006EE4(v30, v29, v31, v32);
  sub_21A006F28(v7, v8, v9, v11);
  sub_21A006F28(v30, v29, v31, v32);
  v45 = v93;
  v46 = v55;
  *v55 = v7;
  v46[1] = v8;
  v46[2] = v9;
  v46[3] = v11;
  v46[4] = 0;
  *(v46 + 40) = v45;
  v46[6] = v30;
  v46[7] = v29;
  v46[8] = v31;
  v46[9] = v32;
  sub_21A006F28(v30, v29, v31, v32);
  return sub_21A006F28(v7, v8, v9, v11);
}

double sub_21A01E0D0@<D0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21A0E55BC();
  v16 = 1;
  sub_21A01D784(__dst, v4);
  v20 = v12;
  v21 = v13;
  v18 = v10;
  v19 = v11;
  v23[1] = v11;
  v23[2] = v12;
  v23[3] = v13;
  v23[4] = v14;
  v22 = v14;
  v23[0] = v10;
  sub_219F45500(&v18, v9, &qword_27CCDB990);
  sub_219F6409C(v23, &qword_27CCDB990);
  *&v15[7] = v18;
  *&v15[71] = v22;
  *&v15[55] = v21;
  *&v15[39] = v20;
  *&v15[23] = v19;
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  v8 = v16;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 96) = *&v15[79];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_21A01E1FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E55BC();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB950);
  return sub_21A01B6C8(v1, v3);
}

uint64_t sub_21A01E250(uint64_t a1)
{
  v1 = *(a1 + 888);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A01E274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A01E2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFlexibleUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A01E340(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFlexibleUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A01E3CC(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  bzero((a1 + 80), 0x988uLL);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore18ActivityPhotoThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore18ActivityAssetThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeV7GraphicVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 <= 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 888);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A01E4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2520))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_21A01E520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2520) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2520) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_21A01E838(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityHeaderViewModel.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v53 = &v42 - v5;
  v6 = type metadata accessor for ActivityHeaderData();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ActivityHeaderViewModel();
  v56 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v42 - v18;
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  v54 = v17;
  v20 = *(v17 + 40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v22 = *(*(v21 - 8) + 56);
  v55 = v20;
  v22(&v19[v20], 1, 1, v21);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_219F6409C(a1, &qword_27CCD9608);
  }

  else
  {
    sub_21A01FA8C(a1, v10, type metadata accessor for ActivityHeaderData);
    v23 = v10[3];
    if (v23)
    {
      v25 = v10[1];
      v24 = v10[2];
      v26 = *v10;
      v27 = v10[5];
      v50 = v10[4];
      v51 = v24;
      v28 = v10[6];
      v43 = v10[7];
      v44 = v27;
      v29 = v10[9];
      v48 = v10[8];
      v49 = v28;
      v52 = v29;
      v31 = v10[10];
      v30 = v10[11];
      v46 = v26;
      v47 = v31;
      v45 = v30;

      sub_21A01FAF4(v10, type metadata accessor for ActivityHeaderData);
      v32 = v53;
      v22(v53, 1, 1, v21);
      v33 = v54;
      v34 = *(v54 + 40);
      v22(&v15[v34], 1, 1, v21);
      *v15 = v46;
      *(v15 + 1) = v25;
      v35 = v50;
      *(v15 + 2) = v51;
      *(v15 + 3) = v23;
      v36 = v44;
      *(v15 + 4) = v35;
      *(v15 + 5) = v36;
      v37 = v43;
      *(v15 + 6) = v49;
      *(v15 + 7) = v37;
      v38 = v52;
      *(v15 + 8) = v48;
      *(v15 + 9) = v38;
      v39 = v45;
      *(v15 + 10) = v47;
      *(v15 + 11) = v39;
      sub_219FC63EC(v32, &v15[v34]);
      sub_219F6409C(&v19[v55], &qword_27CCD98D8);
      sub_21A01FA8C(v15, v19, type metadata accessor for ActivityHeaderViewModel);
      v40 = v57;
      sub_21A01FB54(v19, v57, type metadata accessor for ActivityHeaderViewModel);
      (*(v56 + 56))(v40, 0, 1, v33);
      return sub_21A01FAF4(v19, type metadata accessor for ActivityHeaderViewModel);
    }

    sub_21A01FAF4(v10, type metadata accessor for ActivityHeaderData);
  }

  sub_219F6409C(&v19[v55], &qword_27CCD98D8);
  return (*(v56 + 56))(v57, 1, 1, v54);
}

uint64_t type metadata accessor for ActivityHeaderViewModel()
{
  result = qword_27CCDB9B0;
  if (!qword_27CCDB9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityHeaderViewModel.init(from:override:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v92 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v85 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v87 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v90 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v77 - v23;
  v25 = type metadata accessor for ActivityHeaderData();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v88 = (&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28, v30);
  v32 = (&v77 - v31);
  v33 = type metadata accessor for ActivityHeaderViewModel();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v89 = (&v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1;
  sub_219F45500(a1, v24, &qword_27CCD9608);
  v86 = v26;
  v38 = *(v26 + 48);
  if (v38(v24, 1, v25) != 1)
  {
    v84 = v37;
    v90 = v34;
    sub_21A01FA8C(v24, v32, type metadata accessor for ActivityHeaderData);
    v44 = v91;
    sub_219F45500(v91, v17, &qword_27CCD9608);
    if (v38(v17, 1, v25) == 1)
    {
      sub_219F6409C(v17, &qword_27CCD9608);
      v45 = v21;
      sub_21A01FB54(v32, v21, type metadata accessor for ActivityHeaderData);
      (*(v86 + 56))(v21, 0, 1, v25);
      v46 = v87;
      ActivityHeaderViewModel.init(from:)(v45, v87);
      sub_219F6409C(v44, &qword_27CCD9608);
      sub_219F6409C(v84, &qword_27CCD9608);
      sub_21A01FAF4(v32, type metadata accessor for ActivityHeaderData);
      v42 = v90;
      v41 = v33;
      if ((*(v90 + 48))(v46, 1, v33))
      {
        v43 = v46;
        goto LABEL_7;
      }

      v52 = v46;
      goto LABEL_12;
    }

    sub_219F6409C(v44, &qword_27CCD9608);
    sub_219F6409C(v84, &qword_27CCD9608);
    v49 = v88;
    sub_21A01FA8C(v17, v88, type metadata accessor for ActivityHeaderData);
    v50 = v49[3];
    if (v50)
    {
      v87 = v49[2];
      v51 = v50;
    }

    else
    {
      if (!v32[3])
      {
        sub_21A01FAF4(v49, type metadata accessor for ActivityHeaderData);
        sub_21A01FAF4(v32, type metadata accessor for ActivityHeaderData);
        v47 = 1;
        v48 = v92;
        v41 = v33;
        v42 = v90;
        return (*(v42 + 56))(v48, v47, 1, v41);
      }

      v87 = v32[2];
    }

    v54 = v49[1];
    v91 = v51;
    if (v54)
    {
      v86 = *v49;
      v84 = v54;
      v55 = v49[5];
      if (v55)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v61 = v32[1];
      v86 = *v32;
      v84 = v61;

      v55 = v49[5];
      if (v55)
      {
LABEL_17:
        v56 = v49[4];
        v82 = v55;
        v83 = v56;
        v57 = v49[7];
        if (v57)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    v62 = v32[4];
    v82 = v32[5];
    v83 = v62;

    v57 = v49[7];
    if (v57)
    {
LABEL_18:
      v58 = v49[6];
      v80 = v57;
      v81 = v58;
      v59 = v49[9];
      if (v59)
      {
LABEL_19:
        v60 = v49[8];
        v78 = v59;
        v79 = v60;
LABEL_24:
        v65 = v49[10];
        v66 = v49[11];

        sub_21A01FAF4(v49, type metadata accessor for ActivityHeaderData);
        if (!v66)
        {
          v65 = v32[10];
          v66 = v32[11];
        }

        v41 = v33;
        sub_21A01FAF4(v32, type metadata accessor for ActivityHeaderData);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
        v68 = *(*(v67 - 8) + 56);
        v69 = v85;
        v68(v85, 1, 1, v67);
        v70 = *(v33 + 40);
        v53 = v89;
        v68(v89 + v70, 1, 1, v67);
        v71 = v84;
        *v53 = v86;
        v53[1] = v71;
        v72 = v91;
        v53[2] = v87;
        v53[3] = v72;
        v73 = v82;
        v53[4] = v83;
        v53[5] = v73;
        v74 = v80;
        v53[6] = v81;
        v53[7] = v74;
        v75 = v78;
        v53[8] = v79;
        v53[9] = v75;
        v53[10] = v65;
        v53[11] = v66;
        sub_219FC63EC(v69, v53 + v70);
        v48 = v92;
        v42 = v90;
        goto LABEL_27;
      }

LABEL_23:
      v64 = v32[6];
      v78 = v32[7];
      v79 = v64;

      goto LABEL_24;
    }

LABEL_22:
    v63 = v32[6];
    v80 = v32[7];
    v81 = v63;

    v59 = v49[9];
    if (v59)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  sub_219F6409C(v24, &qword_27CCD9608);
  v39 = v91;
  sub_219F45500(v91, v21, &qword_27CCD9608);
  v40 = v90;
  ActivityHeaderViewModel.init(from:)(v21, v90);
  sub_219F6409C(v39, &qword_27CCD9608);
  sub_219F6409C(v37, &qword_27CCD9608);
  v41 = v33;
  v42 = v34;
  if (!(*(v34 + 48))(v40, 1, v33))
  {
    v52 = v40;
LABEL_12:
    v53 = v89;
    sub_21A01FA8C(v52, v89, type metadata accessor for ActivityHeaderViewModel);
    v48 = v92;
LABEL_27:
    sub_21A01FA8C(v53, v48, type metadata accessor for ActivityHeaderViewModel);
    v47 = 0;
    return (*(v42 + 56))(v48, v47, 1, v41);
  }

  v43 = v40;
LABEL_7:
  sub_219F6409C(v43, &qword_27CCD9610);
  v47 = 1;
  v48 = v92;
  return (*(v42 + 56))(v48, v47, 1, v41);
}

uint64_t ActivityHeaderViewModel.kicker.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityHeaderViewModel.kicker.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityHeaderViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ActivityHeaderViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.compactTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ActivityHeaderViewModel.compactTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.compactSubtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ActivityHeaderViewModel.compactSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.excerpt.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ActivityHeaderViewModel.excerpt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ActivityHeaderViewModel.logo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityHeaderViewModel() + 40);

  return sub_219FC63EC(a1, v3);
}

uint64_t ActivityHeaderViewModel.init(kicker:title:subtitle:compactTitle:compactSubtitle:excerpt:logo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(type metadata accessor for ActivityHeaderViewModel() + 40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;

  return sub_219FC63EC(a13, a9 + v20);
}

uint64_t sub_21A01FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A01FAF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A01FB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityHeaderViewModel.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v22 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - v13;
  if (v1[1])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  sub_21A0E626C();
  if (v1[5])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v1[7])
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_21A0E6DCC();
    if (v1[7])
    {
LABEL_6:
      sub_21A0E6DCC();
      sub_21A0E626C();
      if (v1[9])
      {
        goto LABEL_7;
      }

LABEL_11:
      sub_21A0E6DCC();
      if (v1[11])
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  sub_21A0E6DCC();
  if (!v1[9])
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_21A0E6DCC();
  sub_21A0E626C();
  if (v1[11])
  {
LABEL_8:
    sub_21A0E6DCC();
    sub_21A0E626C();
    goto LABEL_13;
  }

LABEL_12:
  sub_21A0E6DCC();
LABEL_13:
  v15 = type metadata accessor for ActivityHeaderViewModel();
  sub_219F45500(v1 + *(v15 + 40), v14, &qword_27CCD98D8);
  if ((*(v7 + 48))(v14, 1, v23) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_219F73094(v14, v10);
  sub_21A0E6DCC();
  ActivityAsset.hash(into:)(a1);
  sub_219F91544(a1, *&v10[*(v3 + 28)]);
  v17 = *&v10[*(v3 + 32)];
  MEMORY[0x21CED2490](*(v17 + 16));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v20 = *(v22 + 72);
    do
    {
      sub_219F45500(v19, v6, &qword_27CCD98C8);
      v21 = sub_219F73104();
      sub_219FC5A20(a1, v3, v21);
      sub_219F6409C(v6, &qword_27CCD98C8);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return sub_219F6409C(v10, &qword_27CCD98D0);
}

uint64_t ActivityHeaderViewModel.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityHeaderViewModel.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A01FFFC()
{
  sub_21A0E6DAC();
  ActivityHeaderViewModel.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A020040()
{
  sub_21A0E6DAC();
  ActivityHeaderViewModel.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore23ActivityHeaderViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFD0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v38 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[5];
  v20 = a2[5];
  if (v19)
  {
    if (!v20 || (a1[4] != a2[4] || v19 != v20) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22 || (a1[6] != a2[6] || v21 != v22) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = a1[9];
  v24 = a2[9];
  if (v23)
  {
    if (!v24 || (a1[8] != a2[8] || v23 != v24) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = a1[11];
  v26 = a2[11];
  if (v25)
  {
    if (!v26 || (a1[10] != a2[10] || v25 != v26) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    v27 = *(type metadata accessor for ActivityHeaderViewModel() + 40);
    v28 = a1 + v27;
    v29 = *(v13 + 48);
    sub_219F45500(v28, v16, &qword_27CCD98D8);
    sub_219F45500(a2 + v27, &v16[v29], &qword_27CCD98D8);
    v30 = *(v5 + 48);
    if (v30(v16, 1, v4) == 1)
    {
      if (v30(&v16[v29], 1, v4) == 1)
      {
LABEL_41:
        sub_219F6409C(v16, &qword_27CCD98D8);
        return 1;
      }
    }

    else
    {
      sub_219F45500(v16, v12, &qword_27CCD98D8);
      if (v30(&v16[v29], 1, v4) != 1)
      {
        sub_219F73094(&v16[v29], v8);
        if (static ActivityAsset.== infix(_:_:)(v12, v8))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
          v34 = *(v33 + 28);
          v35 = *&v12[v34];
          v36 = *&v8[v34];

          v37 = sub_219FAAA00(v35, v36);

          if (v37 & 1) != 0 && (sub_219F75DC0(*&v12[*(v33 + 32)], *&v8[*(v33 + 32)]))
          {
            sub_219F6409C(v8, &qword_27CCD98D0);
            sub_219F6409C(v12, &qword_27CCD98D0);
            goto LABEL_41;
          }
        }

        sub_219F6409C(v8, &qword_27CCD98D0);
        sub_219F6409C(v12, &qword_27CCD98D0);
        v32 = &qword_27CCD98D8;
        goto LABEL_50;
      }

      sub_219F6409C(v12, &qword_27CCD98D0);
    }

    v32 = &qword_27CCDAFD0;
LABEL_50:
    sub_219F6409C(v16, v32);
    return 0;
  }

  if (!v26)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t sub_21A0205A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21A020610()
{
  sub_219F40360();
  if (v0 <= 0x3F)
  {
    sub_219F3EAEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t DisplayScale.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_21A0E6C7C();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DisplayScale.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E9C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_21A0E6CAC();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_21A020820@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_21A0E6C7C();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A0208D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E9C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_21A0E6CAC();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t DisplayScale.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v12 - v8;
  v12[1] = *v0;
  v12[0] = MEMORY[0x277D84F90];
  v10 = sub_21A0E6E1C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A020B84()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v12 - v8;
  v12[1] = *v0;
  v12[0] = MEMORY[0x277D84F90];
  v10 = sub_21A0E6E1C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

unint64_t sub_21A020DD4()
{
  result = qword_27CCDB9C0;
  if (!qword_27CCDB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB9C0);
  }

  return result;
}

uint64_t static FormatStyle<>.electionPercent.getter()
{
  v0 = sub_21A0E468C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  sub_21A0E499C();
  sub_21A021038();
  sub_21A0E465C();
  sub_21A0E467C();
  MEMORY[0x21CECFD40](v4, v7);
  (*(v1 + 8))(v4, v0);
  return (*(v8 + 8))(v11, v7);
}