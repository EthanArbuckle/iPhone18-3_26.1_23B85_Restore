uint64_t sub_1BE52121C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  sub_1BE525D60();

  return v3();
}

uint64_t sub_1BE52127C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);

  sub_1BE4E01E0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1BE5212D8()
{
  sub_1BE4E01D4();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v0[6] = sub_1BE54C8CC();
  v0[7] = sub_1BE54C8BC();
  v5 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE52134C()
{
  sub_1BE4E4418();
  v12 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v10 = *(v0 + 32);
    v11 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v10;
    MEMORY[0x1BFB47CA0](0xD000000000000013);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    v2 = sub_1BE54C6DC();
  }

  v3 = [*(v0 + 24) arrayForKey_];
  *(v0 + 64) = v3;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1BE521480;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1BE5189D8(v3, 3, 1, v7);
}

uint64_t sub_1BE521480()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_1BE4E01C4();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (v0)
  {
    v11 = sub_1BE521614;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = *(v5 + 56);
    v15 = *(v5 + 48);

    *(v5 + 88) = v3;
    sub_1BE54C87C();
    sub_1BE525D24();
    v11 = sub_1BE50AA94();
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BE5215B4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 56);

  sub_1BE525D60();
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_1BE521614()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  sub_1BE54C87C();
  sub_1BE525D24();
  v3 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE521688()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 56);

  sub_1BE4E01E0();
  v3 = *(v0 + 80);

  return v2();
}

void sub_1BE5216E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedInstance];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1BE5250DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE521C08;
  aBlock[3] = &unk_1F3CCD010;
  v12 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v12);
}

void sub_1BE5218D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  if (a1)
  {
    v32 = a3;
    isUniquelyReferenced_nonNull_native = sub_1BE4D0EB0(a1);
    v6 = isUniquelyReferenced_nonNull_native;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 != v7)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB47FF0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v11 = [v9 adamId];
      v12 = [v11 stringValue];

      v13 = sub_1BE54C70C();
      v15 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v8 + 16);
        sub_1BE542208();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v16 = *(v8 + 16);
      if (v16 >= *(v8 + 24) >> 1)
      {
        sub_1BE542208();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      ++v7;
    }

    v19 = 0;
    v20 = *(v8 + 16);
    v21 = v8 + 40;
    v33 = MEMORY[0x1E69E7CC0];
    v31 = v8 + 40;
LABEL_15:
    v22 = (v21 + 16 * v19);
    while (v20 != v19)
    {
      if (v19 >= *(v8 + 16))
      {
        goto LABEL_30;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v35[0] = v24;
      v35[1] = v23;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v30[2] = v35;

      if (sub_1BE54729C(sub_1BE4E1F04, v30, v34))
      {
        v25 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1BE52B7C8(0, *(v25 + 16) + 1, 1);
          v25 = v36;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1BE52B7C8(v26 > 1, v27 + 1, 1);
          v25 = v36;
        }

        ++v19;
        *(v25 + 16) = v27 + 1;
        v33 = v25;
        v28 = v25 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v23;
        v21 = v31;
        goto LABEL_15;
      }

      v22 += 2;
      ++v19;
    }

    v29 = v33;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v35[0] = v29;
  sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE54C88C();
}

uint64_t sub_1BE521BC4()
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](0);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521C08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1BE4D0D48(0, &qword_1EBDAD148, 0x1E698B4C0);
    v4 = sub_1BE54C82C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1BE521CB0()
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](0);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521D18(unsigned __int8 a1)
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](a1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521D7C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  result = sub_1BE521FA8();
  if (v4 == 5)
  {
    if (result == 5)
    {
      return result;
    }
  }

  else if (result != 5 && result == a1)
  {
    return result;
  }

  result = sub_1BE522030();
  v6 = result;
  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 56);
  for (i = (v9 + 63) >> 6; v11; result = )
  {
    v13 = v7;
LABEL_14:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v6 + 48) + ((v13 << 10) | (16 * v14));
    v17 = *v15;
    v16 = *(v15 + 8);

    v17(v18);
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= i)
    {

      swift_getKeyPath();
      sub_1BE5257EC(&qword_1EBDAC5D0, type metadata accessor for SubscriptionInfo);
      sub_1BE54AFCC();

      swift_getKeyPath();
      sub_1BE54AFEC();

      v19 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
      swift_beginAccess();
      v20 = *(v2 + v19);
      *(v2 + v19) = MEMORY[0x1E69E7CD0];

      swift_getKeyPath();
      sub_1BE54AFDC();
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE521FA8()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return *(v0 + 16);
}

uint64_t sub_1BE522030()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BE525D0C();
  v4 = sub_1BE5257EC(v2, v3);
  sub_1BE4DCEC0(v4, v5, v6, v7, v8, v9, v10, v11, v15, v0);
  sub_1BE54AFCC();

  v12 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
  sub_1BE525D40();
  v13 = *(v1 + v12);
}

uint64_t sub_1BE5220C8(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_1BE521D7C(v2);
}

uint64_t sub_1BE5220D8(unsigned __int8 a1)
{
  if (*(v1 + 16) == a1)
  {

    return sub_1BE5220C8(a1);
  }

  else
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v4);
    sub_1BE525D30();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    sub_1BE525DC4();
  }
}

uint64_t sub_1BE522198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54AE3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDAD150, &qword_1BE551228);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE5256F0(a1, &v23 - v16);
  sub_1BE5256F0(a2, &v17[v18]);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE5256F0(v17, v12);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE5257EC(&qword_1EBDAD158, MEMORY[0x1E6968FB0]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4C6F5C(v17, &qword_1EBDABEE8, &unk_1BE54F050);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4C6F5C(v17, &qword_1EBDAD150, &qword_1BE551228);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4C6F5C(v17, &qword_1EBDABEE8, &unk_1BE54F050);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1BE522468()
{
  sub_1BE525D0C();
  sub_1BE5257EC(v0, v1);
  return sub_1BE54AFBC();
}

uint64_t sub_1BE522510(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1BE5256F0(a1, &v10 - v6);
  v8 = *a2;
  return sub_1BE5225A4(v7);
}

uint64_t sub_1BE5225A4(uint64_t a1)
{
  v3 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  swift_beginAccess();
  sub_1BE5256F0(v1 + v9, v8);
  v10 = sub_1BE522198(v8, a1);
  sub_1BE4C6F5C(v8, &qword_1EBDABEE8, &unk_1BE54F050);
  if (v10)
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v11);
    sub_1BE525D30();
    *(v12 - 16) = v1;
    *(v12 - 8) = a1;
    sub_1BE525DC4();
  }

  else
  {
    swift_beginAccess();
    sub_1BE525760(a1, v1 + v9);
    swift_endAccess();
  }

  return sub_1BE4C6F5C(a1, &qword_1EBDABEE8, &unk_1BE54F050);
}

uint64_t sub_1BE522710(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  swift_beginAccess();
  sub_1BE525760(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BE52277C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1BE5227BC();
}

uint64_t sub_1BE5227BC()
{
  sub_1BE525E18();
  v3 = (v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  if (sub_1BE5080E8(*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText), *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText + 8), v2, v0))
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v4);
    sub_1BE525DC4();
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_1BE5228A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  v4 = *(a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1BE5228F0(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE522030();
  *v1 = result;
  return result;
}

uint64_t sub_1BE522918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE522944(v4);
}

uint64_t sub_1BE522944(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
  swift_beginAccess();
  sub_1BE53941C(*(v1 + v3), a1);
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v7);
    sub_1BE525D30();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1BE525DC4();
  }
}

uint64_t sub_1BE522A0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1BE522A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BE525D0C();
  v6 = sub_1BE5257EC(v4, v5);
  sub_1BE4DCEC0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1BE54AFCC();

  v14 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource;
  sub_1BE525D40();
  return sub_1BE4C6918(v2 + v14, a1);
}

uint64_t sub_1BE522B1C(uint64_t a1, uint64_t *a2)
{
  sub_1BE4C6918(a1, v12);
  v3 = *a2;
  v4 = v13;
  v5 = sub_1BE50A568(v12, v13);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1BE525224(*v8, v8[1], v8[2], v8[3]);
  return sub_1BE4C58A8(v12);
}

uint64_t sub_1BE522C08(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource;
  swift_beginAccess();
  sub_1BE525304((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_1BE522C74()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan);
}

uint64_t sub_1BE522D04()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_1BE54AFCC();

  v11 = v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  v13 = *(v11 + 8);
  return result;
}

uint64_t sub_1BE522DA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain();
  return sub_1BE520660();
}

uint64_t sub_1BE522DDC()
{
  sub_1BE4E01D4();
  *(v0 + 16) = v1;
  sub_1BE54C8CC();
  *(v0 + 24) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE522E60()
{
  sub_1BE4E01D4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_1BE522EF8();
  sub_1BE522EF8();
  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE522EF8()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v3 = sub_1BE4C7570(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE54C91C();
  sub_1BE50A890();
  sub_1BE4C63F8(v6, v7, v8, v9);
  sub_1BE54C8CC();

  v10 = sub_1BE54C8BC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_1BE50BA3C();
}

uint64_t sub_1BE522FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = sub_1BE54C8CC();
  v4[6] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BE5230CC, v7, v6);
}

uint64_t sub_1BE5230CC()
{
  sub_1BE4E01D4();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974();
  }

  sub_1BE525D84(v1);
  v0[9] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[12] = v5;
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523164()
{
  sub_1BE4E4418();
  v13 = v0;
  v1 = *(v0 + 96);
  if (v1)
  {
    v11 = *(v0 + 88);
    v12 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v11;
    v3 = sub_1BE525E24();
    MEMORY[0x1BFB47CA0](v3);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    sub_1BE525E24();
    v2 = sub_1BE54C6DC();
  }

  *(v0 + 104) = [*(v0 + 80) URLForKey_];

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1BE52328C;
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 32);
  sub_1BE525E04();

  return sub_1BE5184F4();
}

uint64_t sub_1BE52328C()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;

  v6 = v2[13];
  if (v0)
  {

    v7 = sub_1BE525DF0();
  }

  else
  {
    v10 = v3[12];
    v11 = v3[9];
    v12 = v3[10];

    v8 = v3[7];
    v9 = v3[8];
    v7 = sub_1BE5233E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE5233E0()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);
  v2 = sub_1BE54AE3C();
  sub_1BE4C63F8(v1, 0, 1, v2);
  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE523454()
{
  sub_1BE4E01D4();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1BE5234C4, v4, v5);
}

uint64_t sub_1BE5234C4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);
  sub_1BE54AE3C();
  sub_1BE50A890();
  sub_1BE4C63F8(v2, v3, v4, v5);
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523534()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 40);
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE5235AC()
{
  sub_1BE4E4418();
  v1 = v0[15];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = sub_1BE4FFBD8();
  sub_1BE5256F0(v5, v6);
  sub_1BE5225A4(v2);
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1BE52362C, v7, v8);
}

uint64_t sub_1BE52362C()
{
  sub_1BE4E01D4();
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  sub_1BE4C6F5C(v3, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE5236B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1BE52375C;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_1BE52375C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  v7 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE523848()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);
  *(v0 + 64) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE5238C0()
{
  sub_1BE4E021C();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  sub_1BE5227BC();

  sub_1BE54C87C();
  sub_1BE525D24();
  v7 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE52396C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE5239C4()
{
  sub_1BE4E01D4();
  v2 = v1;
  *(v0 + 392) = v3;
  v4 = sub_1BE54B2EC();
  *(v0 + 264) = v4;
  sub_1BE4CE78C(v4);
  *(v0 + 272) = v5;
  v7 = *(v6 + 64) + 15;
  *(v0 + 280) = swift_task_alloc();
  v8 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE4C7570(v8);
  v10 = *(v9 + 64) + 15;
  *(v0 + 288) = swift_task_alloc();
  v11 = sub_1BE54AE3C();
  *(v0 + 296) = v11;
  sub_1BE4CE78C(v11);
  *(v0 + 304) = v12;
  v14 = *(v13 + 64) + 15;
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 393) = *v2;
  sub_1BE54C8CC();
  *(v0 + 320) = sub_1BE54C8BC();
  sub_1BE50A968();
  v16 = sub_1BE54C87C();
  *(v0 + 328) = v16;
  *(v0 + 336) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BE523B3C, v16, v15);
}

uint64_t sub_1BE523B3C()
{
  sub_1BE4E01D4();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974();
  }

  sub_1BE525D84(v1);
  v0[43] = v2;
  v0[44] = v3;
  v0[45] = v4;
  v0[46] = v5;
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523BD4()
{
  sub_1BE4E4418();
  v13 = v0;
  v1 = *(v0 + 368);
  if (v1)
  {
    v11 = *(v0 + 360);
    v12 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v11;
    v3 = sub_1BE525E24();
    MEMORY[0x1BFB47CA0](v3);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    sub_1BE525E24();
    v2 = sub_1BE54C6DC();
  }

  *(v0 + 376) = [*(v0 + 352) URLForKey_];

  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_1BE523CFC;
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v9 = *(v0 + 288);
  sub_1BE525E04();

  return sub_1BE5184F4();
}

uint64_t sub_1BE523CFC()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  v5 = v2[48];
  *v4 = *v1;

  v6 = v2[47];
  if (v0)
  {

    v7 = sub_1BE525DF0();
  }

  else
  {
    v10 = v3[46];
    v11 = v3[43];
    v12 = v3[44];

    v8 = v3[41];
    v9 = v3[42];
    v7 = sub_1BE523E50;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE523E50()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 393);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 392);

  sub_1BE4C63F8(v6, 0, 1, v4);
  (*(v5 + 32))(v2, v6, v4);
  v8 = [objc_opt_self() ams:*MEMORY[0x1E698C4D0] sharedAccountStoreForMediaType:?];
  v9 = [objc_allocWithZone(MEMORY[0x1E698C908]) init];
  v10 = sub_1BE54ADFC();
  [v9 setURL_];

  [v9 setAnonymousMetrics_];
  v11 = [v8 ams_activeiTunesAccount];
  [v9 setAccount_];

  sub_1BE4BF11C(&qword_1EBDACD48, &qword_1BE550518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(v0 + 248) = 0x696F507972746E65;
  *(v0 + 256) = 0xEA0000000000746ELL;
  sub_1BE54CA8C();
  v13 = sub_1BE54C6DC();

  *(inited + 96) = sub_1BE4D0D48(0, &qword_1EBDAD058, 0x1E696AEC0);
  *(inited + 72) = v13;
  v14 = sub_1BE54C61C();
  sub_1BE52519C(v14, v9, &selRef_setClientData_);
  v15 = 0xEF746168632E6961;
  v16 = 0x6E65706F2E6D6F63;
  switch(v3)
  {
    case 1:
      v15 = 0x80000001BE5553E0;
      v16 = 0xD000000000000015;
      break;
    case 2:
      v15 = 0xEE00697269532E65;
      v16 = 0x6C7070612E6D6F63;
      break;
    case 3:
      v15 = 0x80000001BE555380;
      v16 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  v17 = *(v0 + 393);
  sub_1BE4BF11C(&qword_1EBDAD160, &qword_1BE551250);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BE550E90;
  *(v18 + 32) = 7368801;
  *(v18 + 40) = 0xE300000000000000;
  *(v18 + 48) = 0xD000000000000012;
  *(v18 + 56) = 0x80000001BE5553A0;
  *(v18 + 64) = 0x6369706F74;
  *(v18 + 72) = 0xE500000000000000;
  *(v18 + 80) = 0xD000000000000016;
  *(v18 + 88) = 0x80000001BE5553C0;
  *(v18 + 96) = 0x70704174736F68;
  *(v18 + 104) = 0xE700000000000000;
  *(v18 + 112) = v16;
  *(v18 + 120) = v15;
  v19 = sub_1BE54C61C();
  switch(v17)
  {
    case 1:

      goto LABEL_8;
    default:
      v20 = sub_1BE54CCDC();

      if (v20)
      {
LABEL_8:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1BE5428D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1BE5428D4();
      }

      else
      {
      }

      v22 = *(v0 + 304);
      v21 = *(v0 + 312);
      v23 = *(v0 + 296);
      v24 = sub_1BE5371B8(v19);

      sub_1BE52519C(v24, v9, &selRef_setMetricsOverlay_);

      (*(v22 + 8))(v21, v23);
      v25 = *(v0 + 312);
      v27 = *(v0 + 280);
      v26 = *(v0 + 288);

      sub_1BE525D60();

      return v28(v9);
  }
}

uint64_t sub_1BE5243BC()
{
  sub_1BE4E01D4();
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];

  v4 = v0[41];
  v5 = v0[42];

  return MEMORY[0x1EEE6DFA0](sub_1BE52442C, v4, v5);
}

uint64_t sub_1BE52442C()
{
  sub_1BE4E021C();
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];

  sub_1BE50A890();
  sub_1BE4C63F8(v5, v6, v7, v3);
  sub_1BE4C6F5C(v2, &qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE54B2DC();
  v8 = sub_1BE54B2BC();
  v9 = sub_1BE54C98C();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[33];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BE4B8000, v8, v9, "Failed to find subscription manage Apple URL", v14, 2u);
    MEMORY[0x1BFB48AC0](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  v15 = v0[39];
  v16 = v0[35];
  v17 = v0[36];

  sub_1BE525D60();

  return v18(0);
}

uint64_t sub_1BE52457C()
{
  sub_1BE4E021C();
  v1[2] = sub_1BE525E50();
  v1[3] = sub_1BE54C8BC();
  v2 = *sub_1BE4C52F4(v0, v0[3]);
  v3 = sub_1BE525E30(dword_1BE551238);
  v1[4] = v3;
  *v3 = v1;
  sub_1BE525D6C(v3);
  sub_1BE525DDC();

  return v4();
}

uint64_t sub_1BE524638()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1BE4E01C4();
  *v6 = v5;

  sub_1BE54C87C();
  sub_1BE525D24();
  v7 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE524758()
{
  sub_1BE4E021C();
  v1[2] = sub_1BE525E50();
  v1[3] = sub_1BE54C8BC();
  v2 = *sub_1BE4C52F4(v0, v0[3]);
  v3 = sub_1BE525E30(dword_1BE551238);
  v1[4] = v3;
  *v3 = v1;
  sub_1BE525D6C(v3);
  sub_1BE525DDC();

  return v4();
}

uint64_t sub_1BE524814()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1BE4E01C4();
  *v6 = v5;

  sub_1BE54C87C();
  sub_1BE525D24();
  v7 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE524934(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v6 = sub_1BE4C7570(v5);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  sub_1BE54C91C();
  sub_1BE50A890();
  sub_1BE4C63F8(v9, v10, v11, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1BE4C6918(a3, v18);
  sub_1BE54C8CC();

  v14 = sub_1BE54C8BC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a2;
  sub_1BE4FF8C0(v18, v15 + 48);

  sub_1BE50BCEC();
}

uint64_t sub_1BE524A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  *(v6 + 72) = a5;
  *(v6 + 40) = a1;
  sub_1BE54C8CC();
  *(v6 + 64) = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE524B2C, v8, v7);
}

uint64_t sub_1BE524B2C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 72);
    v5 = sub_1BE4C52F4(*(v0 + 56), *(*(v0 + 56) + 24));
    sub_1BE4FD8CC(v4, *v5, Strong);
  }

  **(v0 + 40) = Strong == 0;
  sub_1BE4E01E0();

  return v6();
}

uint64_t sub_1BE524BE4()
{
  sub_1BE4C6F5C(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL, &qword_1EBDABEE8, &unk_1BE54F050);
  v1 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText + 8);

  v2 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions);

  sub_1BE4C58A8((v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource));
  sub_1BE525044(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate);
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo___observationRegistrar;
  v4 = sub_1BE54B00C();
  sub_1BE4C745C(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1BE524C9C()
{
  sub_1BE524BE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SubscriptionInfo()
{
  result = qword_1EBDAD120;
  if (!qword_1EBDAD120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE524D48()
{
  sub_1BE524E50();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1BE54B00C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BE524E50()
{
  if (!qword_1EDDD66D0)
  {
    sub_1BE54AE3C();
    v0 = sub_1BE54C9EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD66D0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SubscriptionInfo.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE524F98()
{
  result = qword_1EBDAD130;
  if (!qword_1EBDAD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD130);
  }

  return result;
}

unint64_t sub_1BE524FF0()
{
  result = qword_1EBDAD138;
  if (!qword_1EBDAD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD138);
  }

  return result;
}

uint64_t sub_1BE525084()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1BE5220C8(v1);
}

void sub_1BE5250DC()
{
  sub_1BE525E18();
  v1 = sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE4CE78C(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = sub_1BE4FFBD8();

  sub_1BE5218D8(v5, v6, v7, v8);
}

uint64_t sub_1BE525184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BE52519C(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1BE54C5DC();

  [a2 *a3];
}

uint64_t sub_1BE525224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = &type metadata for AppStoreDaemonDataSource;
  v10[4] = &off_1F3CCD210;
  v8 = swift_allocObject();
  v10[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_getKeyPath();
  sub_1BE522468();

  return sub_1BE4C58A8(v10);
}

uint64_t *sub_1BE525304(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1BE525528()
{
  v1 = v0[3];
  *(v0[2] + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate + 8) = v0[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BE525558()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4E43A8;
  v7 = sub_1BE4FFA4C();

  return sub_1BE5236B0(v7, v8, v9, v3);
}

uint64_t sub_1BE525614()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE525654()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4E43A8;
  v7 = sub_1BE4FFA4C();

  return sub_1BE522FEC(v7, v8, v9, v3);
}

uint64_t sub_1BE5256F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE525760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5257EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE525834(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 40) = &type metadata for ImplicitEngagementPresenter;
  *(v4 + 48) = &off_1F3CCD2A0;
  *(v4 + 16) = a3;
  *(v4 + 64) = sub_1BE54C8CC();
  v7 = a3;
  *(v4 + 72) = sub_1BE54C8BC();
  *(v4 + 96) = a2;
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_1BE525920;

  return sub_1BE5239C4();
}

uint64_t sub_1BE525920()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v2 = v1;
  v4 = v3[10];
  v5 = v3[9];
  v6 = v3[8];
  v7 = *v0;
  sub_1BE4E01C4();
  *v8 = v7;
  *(v10 + 88) = v9;

  sub_1BE54C87C();
  sub_1BE525D24();
  v11 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BE525A44()
{
  sub_1BE4E4418();
  v1 = v0[11];
  v2 = v0[9];

  if (v1)
  {
    v3 = v0[11];
    v4 = v0[7];
    v5 = *sub_1BE4C52F4(v0 + 2, v0[5]);
    v6 = [objc_allocWithZone(MEMORY[0x1E698CB58]) initWithRequest_];
    [v6 setBag_];
    v7 = [v6 present];

    v8 = sub_1BE522D04();
    v10 = sub_1BE525E70(v8, v9);

    swift_unknownObjectRelease();
  }

  sub_1BE4C58A8(v0 + 2);
  sub_1BE4E01E0();

  return v11();
}

uint64_t sub_1BE525B44()
{
  sub_1BE4E021C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4DF8E8;
  v8 = sub_1BE4FFA4C();

  return sub_1BE524A8C(v8, v9, v10, v3, v4, v11);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionQueuedActionType(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BE525CB4()
{
  result = qword_1EBDAD168;
  if (!qword_1EBDAD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD168);
  }

  return result;
}

uint64_t sub_1BE525D40()
{

  return swift_beginAccess();
}

void sub_1BE525D84(uint64_t a1)
{

  sub_1BE508B1C(a1, 0xD000000000000011, v1 | 0x8000000000000000, 49, 0xE100000000000000);
}

void sub_1BE525DA8()
{

  JUMPOUT(0x1BFB47CA0);
}

uint64_t sub_1BE525DC4()
{

  return sub_1BE522468();
}

uint64_t sub_1BE525E30@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_1BE525E50()
{

  return sub_1BE54C8CC();
}

id sub_1BE525E70(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BE52604C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE526054;
  aBlock[3] = &unk_1F3CCD250;
  v4 = _Block_copy(aBlock);

  [v6 addFinishBlock_];
  _Block_release(v4);

  return v6;
}

id sub_1BE525F6C()
{
  sub_1BE50A6A4();
  result = sub_1BE508A44();
  qword_1EBDAD170 = result;
  return result;
}

uint64_t sub_1BE525FBC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [a1 purchaseResult];
    if (v5)
    {

      LOBYTE(v5) = a2 == 0;
    }

    sub_1BE508600(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BE526054(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1BE5260E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BE526108(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE54CA5C();
    sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70);
    sub_1BE5274C4();
    sub_1BE54C95C();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1BE54CA6C() || (sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1BE52752C();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB47D00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE54C84C();
      }

      sub_1BE54C85C();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1BE52636C()
{
  sub_1BE4D0D48(0, &qword_1EBDAD1A8, 0x1E69B7D10);
  v0 = sub_1BE526A18(0xD000000000000021, 0x80000001BE5528B0, &selRef_bundleWithIdentifier_);
  if (!v0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v1 = v0;
  v2 = [v0 privacyFlow];

  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE5273C0(v2);
  if (!v3)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1BE526408(uint64_t a1)
{
  sub_1BE4D0D48(0, &qword_1EBDAD178, 0x1E69B7D58);
  v2 = sub_1BE526A18(0xD000000000000021, 0x80000001BE5528B0, &selRef_presenterForPrivacySplashWithIdentifier_);
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      [v2 setPresentingViewController_];
    }

    goto LABEL_61;
  }

  if (!v2)
  {
LABEL_61:
    [v3 present];

    return;
  }

  v4 = objc_opt_self();
  v45 = v3;
  v44 = v3;
  v5 = [v4 sharedApplication];
  v6 = [v5 connectedScenes];

  sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70);
  sub_1BE5274C4();
  v7 = sub_1BE54C92C();

  v8 = 0;
  sub_1BE526108(v7);
  v3 = v9;
  v43 = 0;

  v10 = 0;
  v50 = v3 & 0xC000000000000001;
  v51 = sub_1BE4D0EB0(v3);
  v46 = v3;
  v48 = v3 + 32;
  v49 = v3 & 0xFFFFFFFFFFFFFF8;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = &unk_1EBDAD198;
  v47 = MEMORY[0x1E69E7CC0];
  while (v10 != v51)
  {
    if (v50)
    {
      v13 = MEMORY[0x1BFB47FF0](v10, v46);
    }

    else
    {
      if (v10 >= *(v49 + 16))
      {
        goto LABEL_63;
      }

      v13 = *(v48 + 8 * v10);
    }

    v14 = v13;
    v15 = __OFADD__(v10++, 1);
    if (v15)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v41 = MEMORY[0x1BFB47FF0](0, v8);
LABEL_58:
      v42 = v41;
LABEL_60:

      [v44 setPresentingViewController_];

      goto LABEL_61;
    }

    v53 = v10;
    v16 = v12;
    v17 = [v13 windows];
    sub_1BE4D0D48(0, &qword_1EBDAD190, 0x1E69DD2E8);
    v3 = sub_1BE54C82C();

    if (v3 >> 62)
    {
      v18 = sub_1BE54CBCC();
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = (v11 >> 62);
    if (v11 >> 62)
    {
      v19 = sub_1BE54CBCC();
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_64;
    }

    v52 = v18;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v8)
      {
LABEL_23:
        sub_1BE54CBCC();
      }

      else
      {
        v8 = (v11 & 0xFFFFFFFFFFFFFF8);
LABEL_22:
        v21 = v8[2];
      }

      v11 = sub_1BE54CAFC();
      v8 = (v11 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_25;
    }

    if (v8)
    {
      goto LABEL_23;
    }

    v8 = (v11 & 0xFFFFFFFFFFFFFF8);
    if (v20 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v22 = v8[2];
    v23 = (v8[3] >> 1) - v22;
    v24 = &v8[v22];
    if (v3 >> 62)
    {
      v27 = sub_1BE54CBCC();
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = v27;
      v29 = sub_1BE54CBCC();
      if (v23 < v29)
      {
        goto LABEL_70;
      }

      if (v28 < 1)
      {
        goto LABEL_71;
      }

      v25 = v29;
      v30 = v24 + 32;
      sub_1BE4C6A14(&qword_1EBDAD1A0, v12, &qword_1BE5513D0);
      for (i = 0; i != v28; ++i)
      {
        sub_1BE4BF11C(v12, &qword_1BE5513D0);
        v32 = sub_1BE527430(v54, i, v3);
        v34 = *v33;
        (v32)(v54, 0);
        *&v30[8 * i] = v34;
        v12 = v16;
      }

LABEL_34:

      v10 = v53;
      if (v25 < v52)
      {
        goto LABEL_65;
      }

      if (v25 > 0)
      {
        v35 = v8[2];
        v15 = __OFADD__(v35, v25);
        v36 = v35 + v25;
        if (v15)
        {
          goto LABEL_68;
        }

        v8[2] = v36;
      }
    }

    else
    {
      v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        if (v23 < v25)
        {
          goto LABEL_69;
        }

        v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_34;
      }

LABEL_38:

      if (v52 > 0)
      {
        goto LABEL_65;
      }
    }
  }

  v54[0] = MEMORY[0x1E69E7CC0];
  v37 = sub_1BE4D0EB0(v11);
  v3 = 0;
  while (v37 != v3)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1BFB47FF0](v3, v11);
    }

    else
    {
      if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v38 = *(v11 + 8 * v3 + 32);
    }

    v39 = v38;
    v40 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_66;
    }

    v8 = [v38 rootViewController];

    ++v3;
    if (v8)
    {
      MEMORY[0x1BFB47D00]();
      if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE54C84C();
      }

      sub_1BE54C85C();
      v47 = v54[0];
      v3 = v40;
    }
  }

  v8 = v47;
  if (!sub_1BE4D0EB0(v47))
  {
    v42 = 0;
    v3 = v45;
    goto LABEL_60;
  }

  v3 = v45;
  if ((v47 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v47 + 32);
    goto LABEL_58;
  }

  __break(1u);
}

id sub_1BE526A18(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

uint64_t sub_1BE526A88@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = type metadata accessor for CaptionWithModalLink();
  v98 = *(v2 - 8);
  v108 = *(v98 + 64);
  v3 = v2 - 8;
  v96 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE54BC6C();
  v5 = sub_1BE4C7470(v94);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  sub_1BE527E40(v9 - v8);
  v10 = sub_1BE54B61C();
  v99 = sub_1BE4C7500(v10);
  v100 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v99);
  sub_1BE4C757C();
  sub_1BE527E40(v15 - v14);
  v16 = sub_1BE4BF11C(&qword_1EBDAD1D0, &qword_1BE551448);
  v103 = sub_1BE4C7500(v16);
  v104 = v17;
  v19 = *(v18 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v20);
  sub_1BE527E40(&v86 - v21);
  v22 = sub_1BE4BF11C(&qword_1EBDAD1D8, &qword_1BE551450);
  v105 = sub_1BE4C7500(v22);
  v106 = v23;
  v25 = *(v24 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v86 - v27;
  v28 = sub_1BE54ADAC();
  v29 = sub_1BE4C7500(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1BE4C757C();
  v36 = v35 - v34;
  v37 = sub_1BE4BF11C(&qword_1EBDAD1E0, &qword_1BE551458);
  v90 = v37;
  v38 = *(*(v37 - 8) + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v86 - v40;
  v42 = sub_1BE4BF11C(&qword_1EBDAD1E8, &qword_1BE551460);
  v43 = sub_1BE4C7500(v42);
  v101 = v44;
  v102 = v43;
  v46 = *(v45 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v47);
  sub_1BE527E40(&v86 - v48);
  (*(v31 + 16))(v36, v1 + *(v3 + 28), v28);
  v88 = sub_1BE54BF7C();
  v87 = v49;
  LOBYTE(v3) = v50;
  v86 = v51;
  KeyPath = swift_getKeyPath();
  v53 = sub_1BE54BE9C();
  v54 = swift_getKeyPath();
  LOBYTE(v28) = v3 & 1;
  v110 = v3 & 1;
  LODWORD(v3) = sub_1BE54BCFC();
  v55 = sub_1BE54BE6C();
  sub_1BE54B59C();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v110 = 0;
  v64 = swift_getKeyPath();
  v65 = &v41[*(v37 + 36)];
  v66 = *(sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38) + 28);
  sub_1BE54B6FC();
  *v65 = v64;
  v67 = v87;
  *v41 = v88;
  *(v41 + 1) = v67;
  v41[16] = v28;
  *(v41 + 3) = v86;
  *(v41 + 4) = KeyPath;
  v41[40] = 0;
  *(v41 + 6) = v54;
  *(v41 + 7) = v53;
  *(v41 + 16) = v3;
  v41[72] = v55;
  *(v41 + 10) = v57;
  *(v41 + 11) = v59;
  *(v41 + 12) = v61;
  *(v41 + 13) = v63;
  v41[112] = 0;
  sub_1BE54BD1C();
  v68 = v91;
  sub_1BE54B60C();
  v69 = v89;
  v70 = v95;
  sub_1BE5276D0(v89, v95);
  v71 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v72 = swift_allocObject();
  sub_1BE527734(v70, v72 + v71);
  sub_1BE5277B0(&qword_1EBDAD1F0, MEMORY[0x1E697BEA8]);
  sub_1BE5277B0(&qword_1EBDAD1F8, MEMORY[0x1E697BE90]);
  v73 = v93;
  v74 = v99;
  sub_1BE54C34C();

  (*(v100 + 8))(v68, v74);
  sub_1BE5276D0(v69, v70);
  v75 = swift_allocObject();
  sub_1BE527734(v70, v75 + v71);
  sub_1BE4C6A14(&qword_1EBDAD200, &qword_1EBDAD1D0, &qword_1BE551448);
  v76 = v97;
  v77 = v103;
  sub_1BE54C33C();

  (*(v104 + 8))(v73, v77);
  sub_1BE54B63C();
  sub_1BE5279FC();
  sub_1BE4C6A14(&qword_1EBDAD240, &qword_1EBDAD1D8, &qword_1BE551450);
  v78 = v92;
  v79 = v105;
  sub_1BE54C09C();
  (*(v106 + 8))(v76, v79);
  sub_1BE527CB0(v41);
  v80 = v69 + *(v96 + 36);
  v81 = *v80;
  v82 = *(v80 + 8);
  v110 = v81;
  v111 = v82;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C24C();
  if (v109)
  {
    v83 = 0.5;
  }

  else
  {
    v83 = 1.0;
  }

  v84 = v107;
  (*(v101 + 32))(v107, v78, v102);
  result = sub_1BE4BF11C(&qword_1EBDAD248, &qword_1BE551518);
  *(v84 + *(result + 36)) = v83;
  return result;
}

uint64_t sub_1BE527288(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for CaptionWithModalLink() + 28));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  return sub_1BE54C25C();
}

uint64_t sub_1BE5272FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CaptionWithModalLink();
  v4 = (a2 + *(v3 + 28));
  v9 = *v4;
  v10 = *(v4 + 1);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v5 = sub_1BE54C25C();
  v6 = a2 + *(v3 + 24);
  v7 = *(v6 + 8);
  return (*v6)(v5);
}

unint64_t sub_1BE52739C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BE5273C0(void *a1)
{
  v2 = [a1 localizedButtonTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

void (*sub_1BE527430(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1BE527390(a3);
  sub_1BE52739C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1BFB47FF0](a2, a3);
  }

  *a1 = v7;
  return sub_1BE5274BC;
}

unint64_t sub_1BE5274C4()
{
  result = qword_1EBDAD188;
  if (!qword_1EBDAD188)
  {
    sub_1BE4D0D48(255, &qword_1EBDAD180, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD188);
  }

  return result;
}

uint64_t type metadata accessor for CaptionWithModalLink()
{
  result = qword_1EBDAD1B8;
  if (!qword_1EBDAD1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE5275A8()
{
  sub_1BE52765C();
  if (v0 <= 0x3F)
  {
    sub_1BE54ADAC();
    if (v1 <= 0x3F)
    {
      sub_1BE4C65D8();
      if (v2 <= 0x3F)
      {
        sub_1BE4FCC78();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE52765C()
{
  if (!qword_1EBDAD1C8)
  {
    sub_1BE54B70C();
    v0 = sub_1BE54B62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDAD1C8);
    }
  }
}

uint64_t sub_1BE5276D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionWithModalLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE527734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionWithModalLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5277B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE5277F8()
{
  v1 = type metadata accessor for CaptionWithModalLink();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_1BE4BF11C(&qword_1EBDABEF0, &qword_1BE54E460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE54B70C();
    sub_1BE4C7470(v6);
    (*(v7 + 8))(v0 + v3);
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  v10 = sub_1BE54ADAC();
  sub_1BE4C7470(v10);
  (*(v11 + 8))(&v5[v9]);
  v12 = *&v5[v1[6] + 8];

  v13 = *&v5[v1[7] + 8];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE527978(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CaptionWithModalLink() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BE5279FC()
{
  result = qword_1EBDAD208;
  if (!qword_1EBDAD208)
  {
    sub_1BE4C5948(&qword_1EBDAD1E0, &qword_1BE551458);
    sub_1BE527AB4();
    sub_1BE4C6A14(&qword_1EBDAC788, &qword_1EBDAC790, &unk_1BE54FA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD208);
  }

  return result;
}

unint64_t sub_1BE527AB4()
{
  result = qword_1EBDAD210;
  if (!qword_1EBDAD210)
  {
    sub_1BE4C5948(&qword_1EBDAD218, &qword_1BE5514F8);
    sub_1BE527B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD210);
  }

  return result;
}

unint64_t sub_1BE527B40()
{
  result = qword_1EBDAD220;
  if (!qword_1EBDAD220)
  {
    sub_1BE4C5948(&qword_1EBDAD228, &qword_1BE551500);
    sub_1BE527BF8();
    sub_1BE4C6A14(&qword_1EBDAC8C8, &qword_1EBDAC8D0, &qword_1BE54FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD220);
  }

  return result;
}

unint64_t sub_1BE527BF8()
{
  result = qword_1EBDAD230;
  if (!qword_1EBDAD230)
  {
    sub_1BE4C5948(&qword_1EBDAD238, &qword_1BE551508);
    sub_1BE4D81A4();
    sub_1BE4C6A14(&qword_1EBDACE50, &qword_1EBDACE40, &qword_1BE551510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD230);
  }

  return result;
}

uint64_t sub_1BE527CB0(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD1E0, &qword_1BE551458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE527D18()
{
  result = qword_1EBDAD250;
  if (!qword_1EBDAD250)
  {
    sub_1BE4C5948(&qword_1EBDAD248, &qword_1BE551518);
    sub_1BE4C5948(&qword_1EBDAD1E0, &qword_1BE551458);
    sub_1BE4C5948(&qword_1EBDAD1D8, &qword_1BE551450);
    sub_1BE5279FC();
    sub_1BE4C6A14(&qword_1EBDAD240, &qword_1EBDAD1D8, &qword_1BE551450);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD250);
  }

  return result;
}

uint64_t sub_1BE527E4C()
{
  swift_getKeyPath();
  sub_1BE528778();
  sub_1BE54AFCC();

  return *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup);
}

id sub_1BE527EC4()
{
  v2 = *v0;
  [*v0 setDelegate_];
  swift_unknownObjectRelease();

  return v2;
}

void sub_1BE527F2C(void *a1)
{
  v3 = *(v1 + 24);
  v9[2] = *(v1 + 16);
  v9[3] = v3;
  v10 = *(v1 + 32);
  v4 = sub_1BE4BF11C(&qword_1EBDAD290, &qword_1BE5516A8);
  MEMORY[0x1BFB47810](v9, v4);
  if (v9[1])
  {
    v5 = *MEMORY[0x1E698B328];
    sub_1BE4D0D48(0, &qword_1EBDAD298, 0x1E698B3C0);
    sub_1BE4D0D48(0, &qword_1EBDAD2A0, 0x1E698B398);
    v6 = v5;
    v7 = sub_1BE528048();
    v8 = sub_1BE5280BC(v7, *MEMORY[0x1E698B360], v6);
    [a1 setRequest_];
  }
}

id sub_1BE528048()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BE54C6DC();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_1BE5280BC(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3];

  return v6;
}

uint64_t sub_1BE528180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE52870C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BE5281E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE52870C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BE528248()
{
  sub_1BE52870C();
  sub_1BE54BBCC();
  __break(1u);
}

uint64_t sub_1BE528270(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BE528320();
  }

  return result;
}

id sub_1BE5283A8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup] = 0;
  sub_1BE54AFFC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t type metadata accessor for LockupViewDelegate()
{
  result = qword_1EBDAD278;
  if (!qword_1EBDAD278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE5285D0()
{
  result = sub_1BE54B00C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BE52866C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE5286AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BE52870C()
{
  result = qword_1EBDAD2A8;
  if (!qword_1EBDAD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD2A8);
  }

  return result;
}

unint64_t sub_1BE528778()
{
  result = qword_1EBDAD2B0;
  if (!qword_1EBDAD2B0)
  {
    type metadata accessor for LockupViewDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD2B0);
  }

  return result;
}

uint64_t static GenerativePartnerRestrictionUtils.isExternalAIAvailable.getter()
{
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1BE52AC38() ^ 1;
  }

  return v0 & 1;
}

void static GenerativePartnerRestrictionUtils.restrictionReasonText.getter()
{
  sub_1BE4FFB64();
  v64 = v1;
  v2 = sub_1BE54B0EC();
  v3 = sub_1BE4C7500(v2);
  v59 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v9 = v8 - v7;
  v10 = sub_1BE54B05C();
  v11 = sub_1BE4C7500(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BE4C757C();
  v18 = v17 - v16;
  v19 = sub_1BE54B12C();
  v20 = sub_1BE4C7500(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v25 = sub_1BE54B10C();
  v60 = sub_1BE4C7500(v25);
  v61 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1BE4C757C();
  v31 = v30 - v29;
  v32 = sub_1BE54AF6C();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  sub_1BE4C757C();
  sub_1BE4CE71C();
  v34 = sub_1BE54AD8C();
  v35 = sub_1BE4C7500(v34);
  v62 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1BE4C757C();
  v63 = v40 - v39;
  sub_1BE4CE71C();
  v41 = sub_1BE54C6BC();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  sub_1BE4C757C();
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0 || (sub_1BE52AC38()) && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0)
  {
    if (sub_1BE52AA84() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isAssetNotReady.getter(), (v48))
    {
      sub_1BE54B04C();
      sub_1BE52A114(v0);
      (*(v13 + 8))(v18, v10);
      if ((*(v22 + 88))(v0, v19) == *MEMORY[0x1E69A0F00])
      {
        (*(v22 + 96))(v0, v19);
        (*(v61 + 32))(v31, v0, v60);
        v49 = sub_1BE54B0FC();
        v50 = *(v59 + 104);
        v50(v9, *MEMORY[0x1E69A1028], v2);
        v51 = sub_1BE528F38(v9, v49);

        v52 = v59 + 8;
        v53 = *(v59 + 8);
        v53(v9, v2);
        if (v51)
        {
          sub_1BE54C65C();
          if (qword_1EBDABA88 == -1)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        v52 = sub_1BE54B0FC();
        v50(v9, *MEMORY[0x1E69A10C0], v2);
        v55 = sub_1BE528F38(v9, v52);

        v53(v9, v2);
        if (v55)
        {
          sub_1BE52C74C();
          sub_1BE54C65C();
          if (qword_1EBDABA88 == -1)
          {
LABEL_22:
            sub_1BE4C52BC(v34, qword_1EBDB0C08);
            v56 = sub_1BE52C730();
            v57(v56);
            sub_1BE54AF2C();
            sub_1BE52C6A8();
            (*(v61 + 8))(v31, v60);
LABEL_23:
            v58 = sub_1BE54ADAC();
            sub_1BE4C63F8(v52, 0, 1, v58);
            sub_1BE4FFB4C();
            return;
          }

LABEL_25:
          sub_1BE4CE5C4();
          goto LABEL_22;
        }

        (*(v61 + 8))(v31, v60);
      }

      else
      {
        (*(v22 + 8))(v0, v19);
      }

      static GenerativePartnerRestrictionUtils.isAssetNotReady.getter();
      sub_1BE52C74C();
    }

    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    v54 = sub_1BE4C52BC(v34, qword_1EBDB0C08);
    (*(v62 + 16))(v63, v54, v34);
    sub_1BE54AF2C();
    v52 = v64;
    sub_1BE54ADBC();
    goto LABEL_23;
  }

  sub_1BE54ADAC();
  sub_1BE4FFB4C();

  sub_1BE4C63F8(v43, v44, v45, v46);
}

id static GenerativePartnerRestrictionUtils.isExternalIntelligenceSignInAllowed.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isExternalIntelligenceSignInAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BE528F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
  v18 = a1;
  v10 = sub_1BE54C62C();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168]);
    v16 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t sub_1BE52913C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), sub_1BE54CD8C(), sub_1BE4DA590(), v5 = sub_1BE54CDAC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xEF6E6F6974617267;
      v10 = 0x65746E4969726973;
      switch(*(*(a2 + 48) + v7))
      {
        case 1:
          sub_1BE511AB4();
          v10 = v11 + 3;
          v9 = 0x80000001BE552A90;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v9 = 0x80000001BE552AB0;
          break;
        case 3:
          sub_1BE511AB4();
          v10 = v12 + 5;
          v9 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      v13 = 0x65746E4969726973;
      v14 = 0xEF6E6F6974617267;
      switch(a1)
      {
        case 1:
          sub_1BE511AB4();
          v13 = v15 + 3;
          v14 = 0x80000001BE552A90;
          break;
        case 2:
          v13 = 0xD000000000000013;
          v14 = 0x80000001BE552AB0;
          break;
        case 3:
          sub_1BE511AB4();
          v13 = v16 + 5;
          v14 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      if (v10 == v13 && v9 == v14)
      {
        break;
      }

      v18 = sub_1BE54CCDC();

      if ((v18 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

BOOL sub_1BE52935C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_1BE52C590(&qword_1EBDACD80, MEMORY[0x1E69A0F90]);
  v18 = a1;
  v10 = sub_1BE54C62C();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_1BE52C590(&qword_1EBDAD2E0, MEMORY[0x1E69A0F90]);
    v16 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

void static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)()
{
  sub_1BE4FFB64();
  sub_1BE52C7AC();
  v1 = sub_1BE54B0EC();
  v2 = sub_1BE4C7500(v1);
  v57 = v3;
  v58 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  v55 = v7 - v6;
  sub_1BE4CE71C();
  v56 = sub_1BE54B10C();
  v8 = sub_1BE4C7500(v56);
  v54 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4C757C();
  v53 = v13 - v12;
  sub_1BE4CE71C();
  v14 = sub_1BE54B0BC();
  v15 = sub_1BE4C7500(v14);
  v62 = v16;
  v63 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1BE4C757C();
  v60 = v20 - v19;
  sub_1BE4CE71C();
  v61 = sub_1BE54B0DC();
  v21 = sub_1BE4C7500(v61);
  v59 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1BE4C757C();
  v27 = v26 - v25;
  v28 = sub_1BE54B05C();
  v29 = sub_1BE4C7500(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1BE4C757C();
  v36 = v35 - v34;
  v37 = sub_1BE54B12C();
  v38 = sub_1BE4C7500(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1BE4C757C();
  v45 = v44 - v43;
  v46 = v0[3];
  v47 = v0[4];
  sub_1BE4C52F4(v0, v46);
  (*(v47 + 112))(v46, v47);
  sub_1BE52A114(v45);
  (*(v31 + 8))(v36, v28);
  v48 = (*(v40 + 88))(v45, v37);
  if (v48 == *MEMORY[0x1E69A0EF8])
  {
    (*(v40 + 96))(v45, v37);
    (*(v59 + 32))(v27, v45, v61);
    sub_1BE54B0CC();
    (*(v62 + 104))(v60, *MEMORY[0x1E69A0F80], v63);
    v49 = sub_1BE4FFD2C();
    sub_1BE52935C(v49, v50);

    (*(v62 + 8))(v60, v63);
    (*(v59 + 8))(v27, v61);
LABEL_6:
    sub_1BE4FFB4C();
    return;
  }

  if (v48 == *MEMORY[0x1E69A0F00])
  {
    (*(v40 + 96))(v45, v37);
    (*(v54 + 32))(v53, v45, v56);
    sub_1BE54B0FC();
    (*(v57 + 104))(v55, *MEMORY[0x1E69A1150], v58);
    v51 = sub_1BE4FFD2C();
    sub_1BE528F38(v51, v52);

    (*(v57 + 8))(v55, v58);
    (*(v54 + 8))(v53, v56);
    goto LABEL_6;
  }

  if (v48 == *MEMORY[0x1E69A11A0])
  {
    goto LABEL_6;
  }

  sub_1BE54CCCC();
  __break(1u);
}

void sub_1BE529A24()
{
  sub_1BE4FFB64();
  v1 = v0;
  sub_1BE52C7AC();
  v2 = sub_1BE54AC9C();
  v3 = sub_1BE4C7500(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v10 = v9 - v8;
  v11 = [objc_opt_self() sharedConnection];
  if (v11)
  {
    v12 = sub_1BE52C5D8(v11);
    v13 = sub_1BE52B40C();
    v15 = v14;

    if (v15)
    {
      if (v15 == 1)
      {
        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664();
        }

        v16 = sub_1BE54B2EC();
        sub_1BE52C7B8(v16, qword_1EBDB0CB0);
        v17 = sub_1BE54B2BC();
        v18 = sub_1BE54C97C();
        if (sub_1BE52C784(v18))
        {
          sub_1BE50AB7C();
          v55 = sub_1BE51D8D4();
          *v12 = 136446210;
          *(v12 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
          sub_1BE52C7D0(&dword_1BE4B8000, v19, v20, "%{public}s: no workspace restriction");
          sub_1BE4C58A8(v55);
          sub_1BE52C714();
          sub_1BE4C75DC();
        }

        goto LABEL_8;
      }

      if (v1)
      {
        sub_1BE54C74C();
        sub_1BE54AC8C();
        sub_1BE4FEA4C();
        v27 = sub_1BE54CA2C();
        v29 = v28;
        (*(v5 + 8))(v10, v2);

        if (v13 == v27 && v15 == v29)
        {
          v46 = sub_1BE52C7A0();
          sub_1BE52C63C(v46, v47);
        }

        else
        {
          sub_1BE52C7A0();
          v31 = sub_1BE54CCDC();
          v32 = sub_1BE52C7A0();
          sub_1BE52C63C(v32, v33);
          if ((v31 & 1) == 0)
          {
            if (qword_1EBDABAD8 != -1)
            {
              sub_1BE52C664();
            }

            v34 = sub_1BE54B2EC();
            sub_1BE52C7B8(v34, qword_1EBDB0CB0);

            v35 = sub_1BE54B2BC();
            v36 = sub_1BE54C98C();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              swift_slowAlloc();
              *v37 = 136446466;
              v38 = sub_1BE52C684("workspaceAllowed(workspaceId:)");
              v39 = sub_1BE52C75C(v38);

              *(v37 + 14) = v39;
              sub_1BE52C810(&dword_1BE4B8000, v40, v41, "%{public}s: %{public}s is not allowed");
              swift_arrayDestroy();
              sub_1BE4C75DC();
              sub_1BE52C714();
LABEL_35:

              goto LABEL_36;
            }

            goto LABEL_34;
          }
        }

        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664();
        }

        v48 = sub_1BE54B2EC();
        sub_1BE52C7B8(v48, qword_1EBDB0CB0);

        v35 = sub_1BE54B2BC();
        v49 = sub_1BE54C97C();

        if (os_log_type_enabled(v35, v49))
        {
          v50 = swift_slowAlloc();
          swift_slowAlloc();
          *v50 = 136446466;
          v51 = sub_1BE52C684("workspaceAllowed(workspaceId:)");
          v52 = sub_1BE52C75C(v51);

          *(v50 + 14) = v52;
          sub_1BE52C810(&dword_1BE4B8000, v53, v54, "%{public}s: workspace id %{public}s matched. User signed in with an accepted workspace.");
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE52C714();
          goto LABEL_35;
        }

LABEL_34:

        goto LABEL_35;
      }

      v42 = sub_1BE52C7A0();
      sub_1BE52C63C(v42, v43);
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664();
      }

      v44 = sub_1BE54B2EC();
      sub_1BE52C7B8(v44, qword_1EBDB0CB0);
      v17 = sub_1BE54B2BC();
      v45 = sub_1BE54C98C();
      if (!sub_1BE52C784(v45))
      {
        goto LABEL_8;
      }

      sub_1BE50AB7C();
      v23 = sub_1BE51D8D4();
      *v12 = 136446210;
      *(v12 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
      v26 = "%{public}s: a workspace is required, but the credentials have none";
    }

    else
    {
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664();
      }

      v21 = sub_1BE54B2EC();
      sub_1BE52C7B8(v21, qword_1EBDB0CB0);
      v17 = sub_1BE54B2BC();
      v22 = sub_1BE54C98C();
      if (!sub_1BE52C784(v22))
      {
        goto LABEL_8;
      }

      sub_1BE50AB7C();
      v23 = sub_1BE51D8D4();
      *v12 = 136446210;
      *(v12 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
      v26 = "%{public}s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    }

    sub_1BE52C7D0(&dword_1BE4B8000, v24, v25, v26);
    sub_1BE4C58A8(v23);
    sub_1BE52C714();
    sub_1BE4C75DC();
LABEL_8:

LABEL_36:
    sub_1BE4FFB4C();
    return;
  }

  __break(1u);
}

uint64_t static GenerativePartnerRestrictionUtils.isHardDisabled.getter()
{
  sub_1BE54B24C();
  sub_1BE54B22C();
  v0 = sub_1BE54B23C();

  v1 = 0;
  v2 = *(v0 + 16);
  v3 = v0 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v1)
    {

      v8 = *(v4 + 16);

      return v8 == 0;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_1BE4C6918(v3, v11);
    if (sub_1BE52A354(v11))
    {
      sub_1BE4BF094(v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B828(0, *(v4 + 16) + 1, 1);
        v4 = v12;
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BE52B828((v6 > 1), v7 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v7 + 1;
      sub_1BE4BF094(v10, v4 + 40 * v7 + 32);
    }

    else
    {
      sub_1BE4C58A8(v11);
    }

    v3 += 40;
    ++v1;
  }

  __break(1u);

  sub_1BE4C58A8(v11);

  __break(1u);
  return result;
}

uint64_t sub_1BE52A114@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = sub_1BE54B1BC();
  v1 = *(v16[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v16[0]);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54B14C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54B1EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54B03C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69A12A0], v16[0]);
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v6 + 8))(v9, v5);
  sub_1BE54B17C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BE52A354(void *a1)
{
  v2 = sub_1BE54B0EC();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v70 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  v69 = sub_1BE54B05C();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1BE54B12C();
  v12 = *(v68 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE54B10C();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v61 = a1;
  v62 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE54B27C();
  sub_1BE52A114(v15);
  (*(v8 + 8))(v11, v69);
  v20 = v68;
  if ((*(v12 + 88))(v15, v68) == *MEMORY[0x1E69A0F00])
  {
    (*(v12 + 96))(v15, v20);
    v21 = v62;
    v22 = v63;
    v23 = v64;
    (*(v63 + 32))(v62, v15, v64);
    v24 = sub_1BE54B0FC();
    v25 = *MEMORY[0x1E69A1060];
    v26 = v66;
    v65 = *(v66 + 104);
    v65(v7, v25, v2);
    v27 = sub_1BE528F38(v7, v24);

    v68 = *(v26 + 8);
    v69 = v26 + 8;
    (v68)(v7, v2);
    if (v27)
    {
      (*(v22 + 8))(v21, v23);
      return 0;
    }

    else
    {
      sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
      v29 = *(v26 + 72);
      v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BE54DC10;
      v32 = v31 + v30;
      v33 = v65;
      v65(v32, *MEMORY[0x1E69A1150], v2);
      v34 = *MEMORY[0x1E69A1138];
      v67 = v29;
      v33(v32 + v29, v34, v2);
      sub_1BE5103DC();
      v36 = v35;
      v37 = sub_1BE54B0FC();
      v38 = v37;
      v39 = v36 + 56;
      v40 = 1 << *(v36 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v36 + 56);
      v43 = (v40 + 63) >> 6;
      v65 = (v37 + 56);
      v66 = v26 + 16;

      v44 = 0;
      v45 = v70;
      v59 = v36 + 56;
      v60 = v36;
      v58 = v43;
      if (v42)
      {
        while (1)
        {
          v46 = v44;
LABEL_14:
          v47 = *(v36 + 48) + (__clz(__rbit64(v42)) | (v46 << 6)) * v67;
          v48 = *v66;
          (*v66)(v45, v47, v2);
          if (!*(v38 + 16))
          {
            break;
          }

          v42 &= v42 - 1;
          v49 = *(v38 + 40);
          sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
          v50 = sub_1BE54C62C();
          v51 = v38;
          v52 = ~(-1 << *(v38 + 32));
          do
          {
            v53 = v50 & v52;
            if (((*(v65 + (((v50 & v52) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v50 & v52)) & 1) == 0)
            {
              v45 = v70;
              goto LABEL_21;
            }

            v48(v7, *(v51 + 48) + v53 * v67, v2);
            sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168]);
            v54 = sub_1BE54C64C();
            (v68)(v7, v2);
            v50 = v53 + 1;
          }

          while ((v54 & 1) == 0);
          v45 = v70;
          result = (v68)(v70, v2);
          v44 = v46;
          v39 = v59;
          v36 = v60;
          v38 = v51;
          v43 = v58;
          if (!v42)
          {
            goto LABEL_11;
          }
        }

LABEL_21:
        (v68)(v45, v2);

        (*(v63 + 8))(v62, v64);
      }

      else
      {
        while (1)
        {
LABEL_11:
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            return result;
          }

          if (v46 >= v43)
          {
            break;
          }

          v42 = *(v39 + 8 * v46);
          ++v44;
          if (v42)
          {
            goto LABEL_14;
          }
        }

        v55 = v61[4];
        sub_1BE4C52F4(v61, v61[3]);
        v56 = sub_1BE54B25C();
        (*(v63 + 8))(v62, v64);
        if (!v56)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    (*(v12 + 8))(v15, v20);
    return 1;
  }
}

uint64_t sub_1BE52AA84()
{
  v1 = sub_1BE54B05C();
  v2 = sub_1BE4C7500(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v7 = sub_1BE54B12C();
  v8 = sub_1BE4C7500(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  sub_1BE54B02C();
  sub_1BE52A114(v17);
  (*(v4 + 8))(v0, v1);
  (*(v10 + 104))(v15, *MEMORY[0x1E69A11A0], v7);
  LOBYTE(v1) = sub_1BE54B11C();
  v18 = *(v10 + 8);
  v18(v15, v7);
  v18(v17, v7);
  return v1 & 1;
}

uint64_t sub_1BE52AC38()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (result)
  {
    sub_1BE52C5D8(result);
    v2 = sub_1BE52B40C();
    v4 = v3;
    sub_1BE52C650(v2, v3);

    if (v4)
    {
      sub_1BE52C63C(v2, v4);
    }

    else
    {
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664();
      }

      v5 = sub_1BE54B2EC();
      sub_1BE52C7B8(v5, qword_1EBDB0CB0);
      v6 = sub_1BE54B2BC();
      v7 = sub_1BE54C98C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = sub_1BE50AB7C();
        v16 = swift_slowAlloc();
        *v8 = 136315138;
        *(v8 + 4) = sub_1BE52C6E0(v16);
        _os_log_impl(&dword_1BE4B8000, v6, v7, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v8, 0xCu);
        sub_1BE4C58A8(v16);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    result = [v0 sharedConnection];
    if (result)
    {
      v9 = result;
      v10 = [result isExternalIntelligenceSignInAllowed];

      if ((v10 & 1) != 0 || (sub_1BE52B528() & 1) == 0)
      {
        v15 = 0;
        if (!v4)
        {
          return 1;
        }
      }

      else
      {
        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664();
        }

        v11 = sub_1BE54B2EC();
        sub_1BE52C7B8(v11, qword_1EBDB0CB0);
        v12 = sub_1BE54B2BC();
        v13 = sub_1BE54C98C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = sub_1BE50AB7C();
          v17 = swift_slowAlloc();
          *v14 = 136315138;
          *(v14 + 4) = sub_1BE52C6E0(v17);
          _os_log_impl(&dword_1BE4B8000, v12, v13, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v14, 0xCu);
          sub_1BE4C58A8(v17);
          sub_1BE4C75DC();
          sub_1BE4C75DC();
        }

        v15 = 1;
        if (!v4)
        {
          return 1;
        }
      }

      sub_1BE52C63C(v2, v4);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static GenerativePartnerRestrictionUtils.isAssetNotReady.getter()
{
  sub_1BE4FFB64();
  v1 = sub_1BE54B10C();
  v2 = sub_1BE4C7500(v1);
  v63 = v3;
  v64 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v6 = sub_1BE54B0DC();
  v7 = sub_1BE4C7500(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BE4C757C();
  v14 = v13 - v12;
  v15 = sub_1BE54B05C();
  v16 = sub_1BE4C7500(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1BE4C757C();
  v23 = v22 - v21;
  v24 = sub_1BE54B12C();
  v25 = sub_1BE4C7500(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4C757C();
  v32 = v31 - v30;
  sub_1BE54B02C();
  sub_1BE52A114(v32);
  (*(v18 + 8))(v23, v15);
  v33 = *(v27 + 88);
  v34 = sub_1BE4FFD2C();
  v36 = v35(v34);
  if (v36 == *MEMORY[0x1E69A0EF8])
  {
    v37 = *(v27 + 96);
    v38 = sub_1BE4FFD2C();
    v39(v38);
    (*(v9 + 32))(v14, v32, v6);
    v40 = sub_1BE54B0CC();
    sub_1BE4BF11C(&qword_1EBDAD2C0, &qword_1BE5516E8);
    sub_1BE52C7AC();
    v41 = sub_1BE54B0BC();
    sub_1BE4C7500(v41);
    v43 = v42;
    v45 = *(v44 + 72);
    v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BE54DC10;
    v48 = v47 + v46;
    v49 = *(v43 + 104);
    v49(v48, *MEMORY[0x1E69A0F38], v41);
    v49(v48 + v45, *MEMORY[0x1E69A0F60], v41);
    sub_1BE52C228(v47, v40);

    swift_setDeallocating();
    sub_1BE52B6C4(MEMORY[0x1E69A0F90]);
    (*(v9 + 8))(v14, v6);
LABEL_6:
    sub_1BE4FFB4C();
    return;
  }

  if (v36 == *MEMORY[0x1E69A0F00])
  {
    v50 = *(v27 + 96);
    v51 = sub_1BE4FFD2C();
    v52(v51);
    (*(v63 + 32))(v0, v32, v64);
    v53 = sub_1BE54B0FC();
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v54 = sub_1BE54B0EC();
    sub_1BE4C7500(v54);
    v56 = v55;
    v58 = *(v57 + 72);
    v59 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1BE550E90;
    v61 = v60 + v59;
    v62 = *(v56 + 104);
    v62(v61, *MEMORY[0x1E69A1058], v54);
    v62(v61 + v58, *MEMORY[0x1E69A10C8], v54);
    v62(v61 + 2 * v58, *MEMORY[0x1E69A10F0], v54);
    sub_1BE52BF6C(v60, v53);

    swift_setDeallocating();
    sub_1BE52B6C4(MEMORY[0x1E69A1168]);
    (*(v63 + 8))(v0, v64);
    goto LABEL_6;
  }

  if (v36 == *MEMORY[0x1E69A11A0])
  {
    goto LABEL_6;
  }

  sub_1BE54CCCC();
  __break(1u);
}

void *sub_1BE52B40C()
{
  sub_1BE52C7AC();
  v1 = sub_1BE54AC9C();
  v2 = sub_1BE4C7500(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  v9 = v8 - v7;
  if (v0)
  {
    if (v0[2])
    {
      v10 = v0[4];
      v11 = v0[5];
      sub_1BE54C74C();
      sub_1BE54AC8C();
      sub_1BE4FEA4C();
      v0 = sub_1BE54CA2C();
      (*(v4 + 8))(v9, v1);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

id sub_1BE52B528()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    sub_1BE52C5D8(result);
    v1 = sub_1BE52B40C();
    v3 = v2;

    sub_1BE52C63C(v1, v3);
    if (qword_1EBDABAD8 != -1)
    {
      sub_1BE52C664();
    }

    v4 = sub_1BE54B2EC();
    sub_1BE52C7B8(v4, qword_1EBDB0CB0);
    v5 = sub_1BE54B2BC();
    v6 = sub_1BE54C97C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1BE4C5338(0xD000000000000025, 0x80000001BE555660, &v9);
      *(v7 + 12) = 1026;
      *(v7 + 14) = v3 != 1;
      _os_log_impl(&dword_1BE4B8000, v5, v6, "%{public}s: %{BOOL,public}d", v7, 0x12u);
      sub_1BE4C58A8(v8);
      sub_1BE4C75DC();
      sub_1BE52C714();
    }

    return (v3 != 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE52B6C4(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  sub_1BE52C7F0();

  return MEMORY[0x1EEE6BDC0](v1, 32, 7);
}

uint64_t sub_1BE52B734()
{
  v1 = *(*(sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0) - 8) + 80);
  sub_1BE52C7F0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1BE52B7A8(void *a1, int64_t a2, char a3)
{
  result = sub_1BE52B868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BE52B7C8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BE52B980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BE52B7E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BE52BA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BE52B808(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BE52BC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B828(void *a1, int64_t a2, char a3)
{
  result = sub_1BE52BD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BE52B848(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BE52BE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B868(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2D0, &unk_1BE551730);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE543160(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52B980(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1BE542510((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1BE52BA80(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BE4BF11C(&qword_1EBDAD2D8, &qword_1BE551748);
  v10 = *(type metadata accessor for DecodedLLMProvider() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DecodedLLMProvider() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BE542530(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BE52BC34(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2C8, &qword_1BE551728);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1BE542548((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BE52BD3C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2E8, &qword_1BE551750);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE543160(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&qword_1EBDAD2F0, &qword_1BE551758);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52BE54(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE4BECA8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52BF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0EC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  if (*(a2 + 16))
  {
    v24 = *(a1 + 16);
    if (v24)
    {
      v12 = a2;
      v13 = 0;
      v15 = *(v9 + 16);
      v14 = v9 + 16;
      v25 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v28 = *(v14 + 56);
      v29 = v15;
      v27 = v12 + 56;
      v16 = (v14 - 8);
      do
      {
        v26 = v13;
        v29(v11, v25 + v28 * v13, v4);
        if (*(v12 + 16))
        {
          v17 = *(v12 + 40);
          sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
          v18 = sub_1BE54C62C();
          v19 = ~(-1 << *(v12 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v27 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v29(v8, *(v12 + 48) + v20 * v28, v4);
            sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168]);
            v21 = sub_1BE54C64C();
            v22 = *v16;
            (*v16)(v8, v4);
            v18 = v20 + 1;
            if (v21)
            {
              v22(v11, v4);
              return 0;
            }
          }
        }

        v13 = v26 + 1;
        (*v16)(v11, v4);
      }

      while (v13 != v24);
    }
  }

  return 1;
}

uint64_t sub_1BE52C228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0BC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  if (*(a2 + 16))
  {
    v24 = *(a1 + 16);
    if (v24)
    {
      v12 = a2;
      v13 = 0;
      v15 = *(v9 + 16);
      v14 = v9 + 16;
      v25 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v28 = *(v14 + 56);
      v29 = v15;
      v27 = v12 + 56;
      v16 = (v14 - 8);
      do
      {
        v26 = v13;
        v29(v11, v25 + v28 * v13, v4);
        if (*(v12 + 16))
        {
          v17 = *(v12 + 40);
          sub_1BE52C590(&qword_1EBDACD80, MEMORY[0x1E69A0F90]);
          v18 = sub_1BE54C62C();
          v19 = ~(-1 << *(v12 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v27 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v29(v8, *(v12 + 48) + v20 * v28, v4);
            sub_1BE52C590(&qword_1EBDAD2E0, MEMORY[0x1E69A0F90]);
            v21 = sub_1BE54C64C();
            v22 = *v16;
            (*v16)(v8, v4);
            v18 = v20 + 1;
            if (v21)
            {
              v22(v11, v4);
              return 0;
            }
          }
        }

        v13 = v26 + 1;
        (*v16)(v11, v4);
      }

      while (v13 != v24);
    }
  }

  return 1;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerRestrictionUtils(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BE52C590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE52C5D8(void *a1)
{
  v2 = [a1 allowedExternalIntelligenceWorkspaceIDs];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C82C();

  return v3;
}

uint64_t sub_1BE52C63C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1BE52C650(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1BE52C664()
{

  return swift_once();
}

uint64_t sub_1BE52C684@<X0>(uint64_t a1@<X8>)
{

  return sub_1BE4C5338(0xD00000000000001ELL, (a1 - 32) | 0x8000000000000000, (v1 - 96));
}

uint64_t sub_1BE52C6A8()
{
  v2 = *(v0 - 96);

  return sub_1BE54ADBC();
}

uint64_t sub_1BE52C6E0(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1BE4C5338(0x6E6F6373694D7369, 0xEF64657275676966, va);
}

void sub_1BE52C714()
{

  JUMPOUT(0x1BFB48AC0);
}

uint64_t sub_1BE52C75C(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_1BE4C5338(v2, v1, (v4 - 96));
}

BOOL sub_1BE52C784(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1BE52C7D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BE52C7F0()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

void sub_1BE52C810(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

char *sub_1BE52C830()
{
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_activeProviderListener] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_useConfirmationPromptsListener] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers] = MEMORY[0x1E69E7CC0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SettingsObserver();
  v1 = objc_msgSendSuper2(&v19, sel_init);
  v2 = qword_1EDDD68A0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDDD7090;
  swift_getKeyPath();
  v5 = v4;
  v6 = sub_1BE52D9B0();
  v10 = sub_1BE52CB24(v6, v7, v8, v9);

  v11 = *&v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_activeProviderListener];
  *&v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_activeProviderListener] = v10;

  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  v12 = sub_1BE52D9B0();
  v16 = sub_1BE52CCD0(v12, v13, v14, v15);

  v17 = *&v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_useConfirmationPromptsListener];
  *&v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_useConfirmationPromptsListener] = v16;

  return v3;
}

void sub_1BE52C9C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 selectedLLMId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE54C70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1BE52CA28(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BE52CA94(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BE52CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAD320, &qword_1BE551888);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  if (a1)
  {
    sub_1BE54ADCC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    sub_1BE52D744(&qword_1EBDAD328, &qword_1EBDAD320, &qword_1BE551888);

    a1 = sub_1BE54B55C();

    (*(v8 + 8))(v11, v7);
  }

  return a1;
}

uint64_t sub_1BE52CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAD310, &unk_1BE551868);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  if (a1)
  {
    sub_1BE54ADCC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    sub_1BE52D744(&qword_1EBDAD318, &qword_1EBDAD310, &unk_1BE551868);

    a1 = sub_1BE54B55C();

    (*(v8 + 8))(v11, v7);
  }

  return a1;
}

uint64_t sub_1BE52CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
    swift_beginAccess();
    v13 = *&v11[v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BE54C91C();
  sub_1BE4C63F8(v9, 1, 1, v14);
  sub_1BE54C8CC();

  v15 = sub_1BE54C8BC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = a3;
  v16[6] = a4;
  sub_1BE50BCEC();
}

uint64_t sub_1BE52CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
    swift_beginAccess();
    v14 = *&v12[v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1BE54C91C();
  sub_1BE4C63F8(v10, 1, 1, v15);
  sub_1BE54C8CC();

  v16 = sub_1BE54C8BC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = a4;
  v17[6] = a5;
  sub_1BE50BCEC();
}

uint64_t sub_1BE52D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  sub_1BE54C8CC();
  v6[8] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE52D1F8, v8, v7);
}

uint64_t sub_1BE52D1F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      do
      {
        v7 = *(v0 + 48);
        v6 = *(v0 + 56);
        sub_1BE52D678(v5, v0 + 16);
        v7(v0 + 16);
        sub_1BE52D6B0(v0 + 16);
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  **(v0 + 32) = v2 == 0;
  v8 = *(v0 + 8);

  return v8();
}

id sub_1BE52D2C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BE52D374(void *a1)
{
  v1 = a1;
  sub_1BE52D3EC();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BE52D3EC()
{
  v1 = sub_1BE54C6DC();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE52D488(void *a1)
{
  v1 = a1;
  v2 = sub_1BE52D550();

  return v2 & 1;
}

uint64_t sub_1BE52D4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE52D500(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

id sub_1BE52D550()
{
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE52D5D8()
{
  sub_1BE52D99C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1BE52D978(v1);

  return sub_1BE52D15C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BE52D6F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE52D744(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE52D798()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE52D7E0()
{
  sub_1BE52D99C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1BE52D978(v1);

  return sub_1BE52D15C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BE52D880()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1BE52D99C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void sub_1BE52D9C4(char a1, uint64_t a2)
{
  if (qword_1EBDABAB8 != -1)
  {
    swift_once();
  }

  v4 = 0xD000000000000017;
  v5 = sub_1BE54B2EC();
  sub_1BE4C52BC(v5, qword_1EBDB0C68);

  v6 = sub_1BE54B2BC();
  v7 = sub_1BE54C96C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    v10 = "enablement-sheet-exited";
    v11 = v9;
    v12 = 0xD000000000000017;
    switch(a1)
    {
      case 1:
        v10 = "enablement-sheet-link-opened";
        break;
      case 2:
        v10 = "@NSDictionary8@?0";
        v12 = 0xD00000000000001CLL;
        break;
      case 3:
        v10 = "tivepartnerservice.";
        break;
      default:
        break;
    }

    v13 = sub_1BE4C5338(v12, v10 | 0x8000000000000000, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_1BE4C70B0();
    v14 = sub_1BE54C60C();
    v16 = sub_1BE4C5338(v14, v15, &v21);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1BE4B8000, v6, v7, "Emitted analytics event for %{public}s with %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v11, -1, -1);
    MEMORY[0x1BFB48AC0](v8, -1, -1);
  }

  else
  {
  }

  v21 = 0xD000000000000023;
  v22 = 0x80000001BE5557A0;
  v17 = "enablement-sheet-exited";
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v17 = "enablement-sheet-link-opened";
      break;
    case 2:
      v17 = "@NSDictionary8@?0";
      v4 = 0xD00000000000001CLL;
      break;
    case 3:
      v17 = "tivepartnerservice.";
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x1BFB47CA0](v4, v17 | 0x8000000000000000);

  v18 = sub_1BE54C6DC();

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v25 = sub_1BE52DE10;
  v26 = v19;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BE52DD50;
  v24 = &unk_1F3CCD590;
  v20 = _Block_copy(&v21);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

id sub_1BE52DD50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1BE4C70B0();
    v5 = sub_1BE54C5DC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1BE52DE18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BE52DE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BE5339B0();
  v4 = MEMORY[0x1BFB47E50](v2, &type metadata for LLMCapabilityForOnboardingDisplay, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1BE52FE34(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_1BE52DEC8(uint64_t a1)
{
  result = MEMORY[0x1BFB47E50](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BE53007C(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52DF88(uint64_t a1)
{
  v2 = type metadata accessor for DecodedLLMProvider();
  v3 = sub_1BE4C7500(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BE52B7A8(0, v10, 0);
    v11 = v21;
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1BE5338F0(v12, v9);
      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BE52B7A8((v14 > 1), v15 + 1, 1);
        v11 = v21;
      }

      v19 = v2;
      v20 = &protocol witness table for DecodedLLMProvider;
      v16 = sub_1BE50B648(&v18);
      sub_1BE5338F0(v9, v16);
      *(v11 + 16) = v15 + 1;
      sub_1BE4BF094(&v18, v11 + 40 * v15 + 32);
      sub_1BE533954(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1BE52E110(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1BE54CB4C();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1BE54C6DC();

      sub_1BE54CB2C();
      v7 = *(v8 + 16);
      sub_1BE54CB5C();
      sub_1BE54CB6C();
      sub_1BE54CB3C();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BE52E1D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BE52B848(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1BE4C6918(v4, v11);
      sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
      sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BE52B848(v5 > 1, v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BE52E310()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04();
    }

    v5 = sub_1BE54B2EC();
    sub_1BE4C52BC(v5, qword_1EBDB0C20);
    v1 = sub_1BE54B2BC();
    v6 = sub_1BE54C98C();
    if (sub_1BE52C784(v6))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_1BE4C75DC();
    }

    goto LABEL_23;
  }

  v1 = v0;
  error[0] = 0;
  sub_1BE533A68();
  v2 = sub_1BE54C6DC();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v12 = sub_1BE54B2EC();
    sub_1BE4C52BC(v12, qword_1EDDD7030);
    sub_1BE533A5C();

    v13 = sub_1BE54B2BC();
    v14 = sub_1BE54C98C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1BE50AB7C();
      v16 = sub_1BE50AAC4();
      v32 = v16;
      *v15 = 136446210;
      v17 = sub_1BE533A68();
      *(v15 + 4) = sub_1BE4C5338(v17, v18, v19);
      sub_1BE533AA4(&dword_1BE4B8000, v20, v21, "Missing entitlement key %{public}s");
      sub_1BE4C58A8(v16);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    goto LABEL_21;
  }

  v32 = v3;
  swift_unknownObjectRetain();
  sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v22 = sub_1BE54B2EC();
    sub_1BE4C52BC(v22, qword_1EDDD7030);
    sub_1BE533A5C();

    v23 = sub_1BE54B2BC();
    v24 = sub_1BE54C98C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_1BE533A68();
      *(v25 + 4) = sub_1BE4C5338(v26, v27, v28);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1BE4C5338(0x74533C7961727241, 0xED00003E676E6972, &v32);
      _os_log_impl(&dword_1BE4B8000, v23, v24, "Entitlement key %{public}s is present, but its value isn't %{public}s!", v25, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    v4 = 0;
    goto LABEL_24;
  }

  swift_unknownObjectRelease();
  v4 = v31;
  if (error[0])
  {
  }

LABEL_24:
  v29 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1BE52E6B8(uint64_t a1, unint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error[0] = 0;
    v6 = sub_1BE54C6DC();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, error);

    if (v7)
    {
      v25 = v7;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        v8 = v24;
        if (error[0])
        {
        }

        goto LABEL_10;
      }

      if (qword_1EDDD63E0 != -1)
      {
        swift_once();
      }

      v17 = sub_1BE54B2EC();
      sub_1BE4C52BC(v17, qword_1EDDD7030);

      v18 = sub_1BE54B2BC();
      v19 = sub_1BE54C98C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136446466;
        *(v20 + 4) = sub_1BE4C5338(a1, a2, &v25);
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_1BE4C5338(1819242306, 0xE400000000000000, &v25);
        _os_log_impl(&dword_1BE4B8000, v18, v19, "Entitlement key %{public}s is present, but its value isn't %{public}s!", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB48AC0](v21, -1, -1);
        MEMORY[0x1BFB48AC0](v20, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDDD63E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1BE54B2EC();
      sub_1BE4C52BC(v12, qword_1EDDD7030);

      v13 = sub_1BE54B2BC();
      v14 = sub_1BE54C98C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_1BE4C5338(a1, a2, &v25);
        _os_log_impl(&dword_1BE4B8000, v13, v14, "Missing entitlement key %{public}s", v15, 0xCu);
        sub_1BE4C58A8(v16);
        MEMORY[0x1BFB48AC0](v16, -1, -1);
        MEMORY[0x1BFB48AC0](v15, -1, -1);
      }
    }

    if (error[0])
    {
    }

LABEL_23:

    v8 = 2;
    goto LABEL_24;
  }

  if (qword_1EBDABA98 != -1)
  {
    swift_once();
  }

  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EBDB0C20);
  v5 = sub_1BE54B2BC();
  v10 = sub_1BE54C98C();
  if (!os_log_type_enabled(v5, v10))
  {
    goto LABEL_23;
  }

  v8 = 2;
  v11 = swift_slowAlloc();
  *v11 = 0;
  _os_log_impl(&dword_1BE4B8000, v5, v10, "Failed to create sec task for checking entitlements", v11, 2u);
  MEMORY[0x1BFB48AC0](v11, -1, -1);
LABEL_10:

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1BE52EAE0(uint64_t a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    error[0] = 0;
    sub_1BE52E110(a1);
    type metadata accessor for CFString();
    sub_1BE4D985C();
    v4 = sub_1BE54C80C();

    v5 = SecTaskCopyValuesForEntitlements(v3, v4, error);

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v34 = 0;
        v6 = v5;
        sub_1BE54C5EC();
      }

      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24();
      }

      v14 = sub_1BE54B2EC();
      sub_1BE4C52BC(v14, qword_1EDDD7030);
      sub_1BE533A5C();

      v15 = sub_1BE54B2BC();
      v16 = sub_1BE54C98C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = sub_1BE50AB7C();
        v18 = sub_1BE50AAC4();
        v34 = v18;
        *v17 = 136446210;
        v19 = MEMORY[0x1BFB47D40](a1, MEMORY[0x1E69E6158]);
        v21 = sub_1BE4C5338(v19, v20, &v34);

        *(v17 + 4) = v21;
        sub_1BE533AA4(&dword_1BE4B8000, v22, v23, "Entitlements for keys %{public}s are present, but the values aren't convertible to [String: Any]!");
        sub_1BE4C58A8(v18);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    else
    {
      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24();
      }

      v24 = sub_1BE54B2EC();
      sub_1BE4C52BC(v24, qword_1EDDD7030);
      sub_1BE533A5C();

      v25 = sub_1BE54B2BC();
      v26 = sub_1BE54C98C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = sub_1BE50AB7C();
        v28 = sub_1BE50AAC4();
        v34 = v28;
        *v27 = 136446210;
        v29 = MEMORY[0x1BFB47D40](a1, MEMORY[0x1E69E6158]);
        v31 = sub_1BE4C5338(v29, v30, &v34);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1BE4B8000, v25, v26, "Missing entitlements for keys %{public}s", v27, 0xCu);
        sub_1BE4C58A8(v28);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    if (error[0])
    {
    }
  }

  else
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04();
    }

    v7 = sub_1BE54B2EC();
    sub_1BE4C52BC(v7, qword_1EBDB0C20);
    v3 = sub_1BE54B2BC();
    v8 = sub_1BE54C98C();
    if (sub_1BE52C784(v8))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_1BE4C75DC();
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1BE52EE94()
{
  v0 = sub_1BE52E6B8(0xD000000000000040, 0x80000001BE555890);
  if (v0 == 2)
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04();
    }

    v1 = sub_1BE54B2EC();
    sub_1BE4C52BC(v1, qword_1EBDB0C20);
    v2 = sub_1BE54B2BC();
    v3 = sub_1BE54C98C();
    if (sub_1BE52C784(v3))
    {
      v4 = sub_1BE50AB7C();
      v5 = sub_1BE50AAC4();
      v12 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1BE4C5338(0xD000000000000040, 0x80000001BE555890, &v12);
      sub_1BE511AC0();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      sub_1BE4C58A8(v5);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1BE52EFB4()
{
  v0 = sub_1BE52E310();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1BE52DEC8(&unk_1F3CCAB90);
    v3 = sub_1BE52DEC8(v1);
    v4 = sub_1BE52F1FC(v3, v2);

    if (!*(v4 + 16))
    {

      return 1;
    }

    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04();
    }

    v5 = sub_1BE54B2EC();
    sub_1BE4C52BC(v5, qword_1EBDB0C20);
    sub_1BE533A5C();

    v6 = sub_1BE54B2BC();
    v7 = sub_1BE54C98C();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_14;
    }

    v8 = sub_1BE50AB7C();
    v9 = sub_1BE50AAC4();
    v22 = v9;
    *v8 = 136446210;
    v10 = sub_1BE54C93C();
    v12 = v11;

    v13 = sub_1BE4C5338(v10, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BE4B8000, v6, v7, "(Anvil) Missing required keychain access groups: %{public}s", v8, 0xCu);
    sub_1BE4C58A8(v9);
    sub_1BE4C75DC();
  }

  else
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04();
    }

    v14 = sub_1BE54B2EC();
    sub_1BE4C52BC(v14, qword_1EBDB0C20);
    v6 = sub_1BE54B2BC();
    v15 = sub_1BE54C98C();
    if (!sub_1BE52C784(v15))
    {
      goto LABEL_14;
    }

    *swift_slowAlloc() = 0;
    sub_1BE511AC0();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
  }

  sub_1BE4C75DC();
LABEL_14:

  return 0;
}

uint64_t sub_1BE52F1FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1BE5333A8(a1);
    return a2;
  }

  else
  {

    return sub_1BE53288C(a1, a2);
  }
}

uint64_t sub_1BE52F250()
{
  result = sub_1BE52F274();
  byte_1EBDB0BF0 = result & 1;
  return result;
}

uint64_t sub_1BE52F274()
{
  v0 = sub_1BE52EAE0(&unk_1F3CCAB60);
  if (!v0)
  {
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v9 = sub_1BE54B2EC();
    sub_1BE4C52BC(v9, qword_1EBDB0C20);
    v10 = sub_1BE54B2BC();
    v11 = sub_1BE54C98C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    v14 = MEMORY[0x1BFB47D40](&unk_1F3CCAB60, MEMORY[0x1E69E6158]);
    v16 = sub_1BE4C5338(v14, v15, &v28);

    *(v12 + 4) = v16;
    v17 = "(Anvil) Unable to find necessary entitlement keys in process: %{public}s";
    goto LABEL_21;
  }

  v1 = sub_1BE4E255C(v0);

  if (!v1)
  {
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v24 = sub_1BE54B2EC();
    sub_1BE4C52BC(v24, qword_1EBDB0C20);
    v10 = sub_1BE54B2BC();
    v11 = sub_1BE54C98C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    v25 = MEMORY[0x1BFB47D40](&unk_1F3CCAB60, MEMORY[0x1E69E6158]);
    v27 = sub_1BE4C5338(v25, v26, &v28);

    *(v12 + 4) = v27;
    v17 = "(Anvil) Entitlement values for keys %{public}s are present, but the values aren't convertible to [String: Bool]!";
LABEL_21:
    _os_log_impl(&dword_1BE4B8000, v10, v11, v17, v12, 0xCu);
    sub_1BE4C58A8(v13);
    MEMORY[0x1BFB48AC0](v13, -1, -1);
    MEMORY[0x1BFB48AC0](v12, -1, -1);
LABEL_22:

    return 0;
  }

  v3 = qword_1F3CCAB80;
  v2 = off_1F3CCAB88;
  v4 = *(v1 + 16);

  if (!v4 || (v5 = sub_1BE52F67C(), (v6 & 1) == 0))
  {

    goto LABEL_13;
  }

  v7 = *(*(v1 + 56) + v5);

  if (v7 != 1)
  {
LABEL_13:
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v18 = sub_1BE54B2EC();
    sub_1BE4C52BC(v18, qword_1EBDB0C20);

    v19 = sub_1BE54B2BC();
    v20 = sub_1BE54C98C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      v23 = sub_1BE4C5338(v3, v2, &v28);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1BE4B8000, v19, v20, "(Anvil) Required entitlement key %{public}s has value <false>", v21, 0xCu);
      sub_1BE4C58A8(v22);
      MEMORY[0x1BFB48AC0](v22, -1, -1);
      MEMORY[0x1BFB48AC0](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (sub_1BE52EE94())
  {
    return 1;
  }

  return sub_1BE52EFB4();
}

unint64_t sub_1BE52F67C()
{
  v1 = *(v0 + 40);
  sub_1BE54CD8C();
  sub_1BE54C77C();
  sub_1BE54CDAC();
  v2 = sub_1BE533A68();

  return sub_1BE520200(v2, v3, v4);
}

unint64_t sub_1BE52F6F0()
{
  v1 = *(v0 + 40);
  sub_1BE54B40C();
  sub_1BE5338AC(&qword_1EBDACB58, MEMORY[0x1E698AA60]);
  sub_1BE54C62C();
  v2 = sub_1BE4D985C();

  return sub_1BE52F8E4(v2, v3);
}

unint64_t sub_1BE52F784(char a1)
{
  v3 = *(v1 + 40);
  sub_1BE54CD8C();
  sub_1BE517700(a1);
  sub_1BE54C77C();

  v4 = sub_1BE54CDAC();

  return sub_1BE52FAA0(a1, v4);
}

unint64_t sub_1BE52F80C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1BE54CD7C();

  return sub_1BE52FCDC(a1, v4);
}

unint64_t sub_1BE52F850(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BE54C70C();
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v4 = sub_1BE54CDAC();

  return sub_1BE52FD3C(a1, v4);
}

unint64_t sub_1BE52F8E4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1BE54B40C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BE5338AC(&qword_1EBDAD338, MEMORY[0x1E698AA60]);
    v10 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BE52FAA0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000044;
      v8 = 0x496D616441707061;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6C646E7542707061;
          v7 = 0xEB00000000444965;
          break;
        case 2:
          v8 = 0xD000000000000017;
          v7 = 0x80000001BE552A20;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001BE552A40;
          break;
        case 4:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001BE552A60;
          break;
        default:
          break;
      }

      v9 = 0x496D616441707061;
      v10 = 0xE900000000000044;
      switch(a1)
      {
        case 1:
          v9 = 0x6C646E7542707061;
          v10 = 0xEB00000000444965;
          break;
        case 2:
          v9 = 0xD000000000000017;
          v10 = 0x80000001BE552A20;
          break;
        case 3:
          v9 = 0xD000000000000013;
          v10 = 0x80000001BE552A40;
          break;
        case 4:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001BE552A60;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1BE54CCDC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BE52FCDC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1BE52FD3C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1BE54C70C();
    v8 = v7;
    if (v6 == sub_1BE54C70C() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1BE54CCDC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1BE52FE34(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1BE54CD8C();
  sub_1BE4DA590();
  sub_1BE54CDAC();
  v6 = *(v4 + 32);
  sub_1BE533A74();
  v9 = v8 & ~v7;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v7;
    sub_1BE533A80();
    v30 = v11;
    v31 = v12;
    sub_1BE533A80();
    v29 = v13;
    while (1)
    {
      v14 = 0xEF6E6F6974617267;
      v15 = 0x65746E4969726973;
      switch(*(*(v4 + 48) + v9))
      {
        case 1:
          sub_1BE511AB4();
          v15 = v16 + 3;
          v14 = v29;
          break;
        case 2:
          v15 = 0xD000000000000013;
          v14 = v30;
          break;
        case 3:
          sub_1BE511AB4();
          v15 = v17 + 5;
          v14 = v31;
          break;
        default:
          break;
      }

      v18 = 0x65746E4969726973;
      v19 = 0xEF6E6F6974617267;
      switch(a2)
      {
        case 1:
          sub_1BE511AB4();
          v18 = v20 + 3;
          v19 = v29;
          break;
        case 2:
          v18 = 0xD000000000000013;
          v19 = v30;
          break;
        case 3:
          sub_1BE511AB4();
          v18 = v21 + 5;
          v19 = v31;
          break;
        default:
          break;
      }

      if (v15 == v18 && v14 == v19)
      {
        break;
      }

      v23 = sub_1BE54CCDC();

      if (v23)
      {
        goto LABEL_19;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_17:
    v24 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v27;
    sub_1BE530A50(a2, v9, isUniquelyReferenced_nonNull_native);
    *v27 = v32;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1BE53007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE533AC4();
  sub_1BE54C77C();
  sub_1BE54CDAC();
  v8 = *(v5 + 32);
  sub_1BE533A74();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v5 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      break;
    }

    v14 = (*(v5 + 48) + 16 * v12);
    v15 = *v14 == a2 && v14[1] == a3;
    if (v15 || (sub_1BE54CCDC() & 1) != 0)
    {

      v16 = (*(v5 + 48) + 16 * v12);
      v17 = v16[1];
      *v3 = *v16;
      v3[1] = v17;

      return v13 == 0;
    }

    v9 = v12 + 1;
  }

  v18 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v4;

  sub_1BE530CF8(a2, a3, v12, isUniquelyReferenced_nonNull_native);
  *v4 = v21;
  *v3 = a2;
  v3[1] = a3;
  return v13 == 0;
}

BOOL sub_1BE5301B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE533AC4();
  MEMORY[0x1BFB482A0](0);
  sub_1BE54CDAC();
  v8 = *(v5 + 32);
  sub_1BE533A74();
  v11 = v9 & ~v10;
  v12 = (1 << v11) & *(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v12)
  {

    v13 = (*(v5 + 48) + 16 * v11);
    a2 = *v13;
    a3 = v13[1];
  }

  else
  {
    v14 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;

    v16 = sub_1BE533A68();
    sub_1BE530E60(v16, v17, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v19;
  }

  result = v12 == 0;
  *v3 = a2;
  v3[1] = a3;
  return result;
}

uint64_t sub_1BE5302A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  result = sub_1BE54CAAC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1BE530F88(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1BE54CD8C();
    sub_1BE54C77C();

    result = sub_1BE54CDAC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BE5305A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CAAC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1BE530F88(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1BE54CD8C();
    sub_1BE54C77C();
    result = sub_1BE54CDAC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BE530804(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  result = sub_1BE54CAAC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1BE530F88(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v27 = *(*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v17 = *(v6 + 40);
    sub_1BE54CD8C();
    MEMORY[0x1BFB482A0](0);
    result = sub_1BE54CDAC();
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 16 * v21) = v27;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BE530A50(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1BE5302A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BE530FEC();
      goto LABEL_24;
    }

    sub_1BE5313D8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1BE54CD8C();
  sub_1BE4DA590();
  result = sub_1BE54CDAC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xEF6E6F6974617267;
      v13 = 0x65746E4969726973;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v13 = 0xD000000000000016;
          v12 = 0x80000001BE552A90;
          break;
        case 2:
          v13 = 0xD000000000000013;
          v12 = 0x80000001BE552AB0;
          break;
        case 3:
          v13 = 0xD000000000000018;
          v12 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      v14 = 0x65746E4969726973;
      v15 = 0xEF6E6F6974617267;
      switch(v5)
      {
        case 1:
          v14 = 0xD000000000000016;
          v15 = 0x80000001BE552A90;
          break;
        case 2:
          v14 = 0xD000000000000013;
          v15 = 0x80000001BE552AB0;
          break;
        case 3:
          v14 = 0xD000000000000018;
          v15 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      if (v13 == v14 && v12 == v15)
      {
        goto LABEL_27;
      }

      v17 = sub_1BE54CCDC();

      if (v17)
      {
        goto LABEL_28;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_27:

LABEL_28:
  result = sub_1BE54CCEC();
  __break(1u);
  return result;
}

uint64_t sub_1BE530CF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BE5305A8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BE5316AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1BE54CD8C();
      sub_1BE54C77C();
      result = sub_1BE54CDAC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1BE54CCDC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BE53112C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1BE54CCEC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1BE530E60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BE530804(v8 + 1);
      goto LABEL_8;
    }

    if (v9 <= v8)
    {
      sub_1BE5318E0(v8 + 1);
LABEL_8:
      v10 = *v4;
      v11 = *(*v4 + 40);
      sub_1BE54CD8C();
      MEMORY[0x1BFB482A0](0);
      result = sub_1BE54CDAC();
      a3 = result & ~(-1 << *(v10 + 32));
      if ((*(v10 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a3))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    result = sub_1BE531284();
  }

LABEL_9:
  v12 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v13 = (*(v12 + 48) + 16 * a3);
  *v13 = v7;
  v13[1] = a2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1BE54CCEC();
  __break(1u);
  return result;
}

uint64_t sub_1BE530F88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BE5518D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1BE530FEC()
{
  v1 = v0;
  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1BE53112C()
{
  v1 = v0;
  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_1BE531284()
{
  v1 = v0;
  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_1BE5313D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  result = sub_1BE54CAAC();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1BE54CD8C();
        sub_1BE54C77C();

        result = sub_1BE54CDAC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BE5316AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CAAC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1BE54CD8C();

        sub_1BE54C77C();
        result = sub_1BE54CDAC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BE5318E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  result = sub_1BE54CAAC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v25 = *(*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v16 = *(v6 + 40);
        sub_1BE54CD8C();
        MEMORY[0x1BFB482A0](0);
        result = sub_1BE54CDAC();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v6 + 48) + 16 * v20) = v25;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BE531AF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1BE54B0EC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BE4BF11C(&qword_1EBDACD98, &unk_1BE550680);
  result = sub_1BE54CABC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1BE5338AC(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
    result = sub_1BE54C62C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1BE531E18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
      sub_1BE533A5C();
      v8 = sub_1BE54CABC();
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      sub_1BE533A80();
      sub_1BE533A80();
      v11 = v8 + 56;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = *(*(a4 + 48) + (v12 | (v10 << 6)));
        v16 = *(v8 + 40);
        sub_1BE54CD8C();
        switch(v15)
        {
          case 1:
          case 3:
            sub_1BE511AB4();
            break;
          default:
            break;
        }

        sub_1BE54C77C();

        v17 = sub_1BE54CDAC();
        v18 = -1 << *(v8 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          while (++v20 != v23 || (v22 & 1) == 0)
          {
            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v11 + 8 * v20);
            if (v25 != -1)
            {
              v21 = __clz(__rbit64(~v25)) + (v20 << 6);
              goto LABEL_27;
            }
          }

          goto LABEL_31;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v8 + 48) + v21) = v15;
        ++*(v8 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_32;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1BE5320BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CABC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1BE54CD8C();

    sub_1BE54C77C();
    result = sub_1BE54CDAC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1BE5322D8(uint64_t a1, uint64_t a2)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v57 = 0;
  v4 = sub_1BE54B0EC();
  v5 = sub_1BE4C7500(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - v15;
  if (!*(a2 + 16))
  {

    goto LABEL_26;
  }

  v73[0] = a1;
  v16 = *(a1 + 16);
  v67 = (a2 + 56);
  v71 = (v7 + 8);
  v72 = v7 + 16;

  v17 = 0;
  v59 = v16;
  v60 = v7;
LABEL_3:
  if (v17 == v16)
  {
LABEL_24:

LABEL_26:
    v53 = *MEMORY[0x1E69E9840];
    return;
  }

  v18 = *(v7 + 72);
  v63 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v66 = v17 + 1;
  v73[1] = v17 + 1;
  v19 = *(v7 + 16);
  sub_1BE533A98();
  v69 = v20;
  v70 = v21;
  v20();
  v22 = *(a2 + 40);
  sub_1BE533A44();
  v62 = sub_1BE5338AC(&qword_1EDDD66C0, v23);
  sub_1BE54C62C();
  v24 = *(a2 + 32);
  sub_1BE533A74();
  v64 = ~v26;
  while (1)
  {
    v27 = v25 & v64;
    v28 = (v25 & v64) >> 6;
    v29 = 1 << (v25 & v64);
    if ((v29 & v67[v28]) == 0)
    {
      (*v71)(v65, v4);
      v17 = v66;
      v16 = v59;
      v7 = v60;
      goto LABEL_3;
    }

    v30 = *(a2 + 48);
    sub_1BE533A98();
    v31();
    sub_1BE533A44();
    sub_1BE5338AC(&qword_1EDDD66B8, v32);
    v33 = sub_1BE54C64C();
    v34 = *v71;
    (*v71)(v14, v4);
    if (v33)
    {
      break;
    }

    v25 = v27 + 1;
  }

  sub_1BE533A8C();
  v35 = v34();
  v36 = *(a2 + 32);
  v58 = ((1 << v36) + 63) >> 6;
  v37 = 8 * v58;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v59 = &v56;
    MEMORY[0x1EEE9AC00](v35);
    v27 = &v56 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v27, v67, v37);
    v38 = *(a2 + 16);
    *(v27 + 8 * v28) &= ~v29;
    v39 = v38 - 1;
    v40 = *(a1 + 16);
    v64 = v27;
    v65 = v40;
    v41 = v66;
    v61 = a1;
    while (1)
    {
      v60 = v39;
      v42 = v41;
LABEL_12:
      if (v42 == v65)
      {
        sub_1BE531AF8(v64, v58, v60, a2);
        goto LABEL_24;
      }

      if (v42 >= *(a1 + 16))
      {
        break;
      }

      v66 = v42 + 1;
      v37 = v68;
      sub_1BE533A98();
      v43();
      v44 = *(a2 + 40);
      sub_1BE54C62C();
      v45 = a2;
      v46 = *(a2 + 32);
      sub_1BE533A74();
      v29 = ~v48;
      do
      {
        v49 = v47 & v29;
        v28 = (v47 & v29) >> 6;
        v27 = 1 << (v47 & v29);
        if ((v27 & v67[v28]) == 0)
        {
          sub_1BE533A8C();
          v34();
          v42 = v66;
          a2 = v45;
          a1 = v61;
          goto LABEL_12;
        }

        v50 = *(v45 + 48);
        sub_1BE533A98();
        v51();
        v37 = sub_1BE54C64C();
        sub_1BE533A8C();
        v34();
        v47 = v49 + 1;
      }

      while ((v37 & 1) == 0);
      sub_1BE533A8C();
      v34();
      v52 = *(v64 + 8 * v28);
      *(v64 + 8 * v28) = v52 & ~v27;
      v41 = v66;
      v42 = v66;
      a2 = v45;
      a1 = v61;
      if ((v52 & v27) == 0)
      {
        goto LABEL_12;
      }

      v39 = v60 - 1;
      if (__OFSUB__(v60, 1))
      {
        __break(1u);
      }

      if (v60 == 1)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v54 = swift_slowAlloc();
  v55 = v57;
  sub_1BE533298(v54, v58, v67, v58, a2, v27, v73);
  if (!v55)
  {

    sub_1BE4C75DC();
    goto LABEL_24;
  }

  sub_1BE4C75DC();
  __break(1u);
}

uint64_t sub_1BE53288C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_1BE54CD8C();

        sub_1BE54C77C();
        v21 = sub_1BE54CDAC();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_1BE54CCDC() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_1BE54CD8C();

                sub_1BE54C77C();
                v36 = sub_1BE54CDAC();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_1BE54CCDC();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1BE5320BC(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_1BE533320(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x1BFB48AC0](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1BE52752C();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1BE532D64(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1BE54B0EC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = &v37 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v40 = a1;
  v41 = v19;
  *(a1 + v17) = v18;
  v20 = v16 - 1;
  v46 = v19 + 16;
  v47 = a3;
  v42 = a5;
  v43 = a3 + 56;
  v21 = (v19 + 8);
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v23 = a5[1];
    v24 = *(*a5 + 16);
    if (v23 == v24)
    {
      v36 = v47;

      return sub_1BE531AF8(v40, v38, v39, v36);
    }

    if (v23 >= v24)
    {
      break;
    }

    v25 = *(v41 + 80);
    v45 = *(v41 + 72);
    v44 = *(v41 + 16);
    v44(v48, v22 + ((v25 + 32) & ~v25) + v45 * v23, v9);
    a5[1] = v23 + 1;
    v26 = v47;
    v27 = *(v47 + 40);
    sub_1BE5338AC(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
    v28 = sub_1BE54C62C();
    v29 = ~(-1 << *(v26 + 32));
    do
    {
      v30 = v28 & v29;
      v31 = (v28 & v29) >> 6;
      v32 = 1 << (v28 & v29);
      if ((v32 & *(v43 + 8 * v31)) == 0)
      {
        result = (*v21)(v48, v9);
        a5 = v42;
        goto LABEL_3;
      }

      v44(v13, *(v47 + 48) + v30 * v45, v9);
      sub_1BE5338AC(&qword_1EDDD66B8, MEMORY[0x1E69A1168]);
      v33 = sub_1BE54C64C();
      v34 = *v21;
      (*v21)(v13, v9);
      v28 = v30 + 1;
    }

    while ((v33 & 1) == 0);
    result = v34(v48, v9);
    v35 = v40[v31];
    v40[v31] = v35 & ~v32;
    a5 = v42;
    if ((v35 & v32) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_17;
    }

    if (v39 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BE5330AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1BE54CD8C();

    sub_1BE54C77C();
    v17 = sub_1BE54CDAC();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_1BE54CCDC();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1BE5320BC(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BE533298(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BE532D64(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1BE533320(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BE5330AC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1BE5333A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1BE5334D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1BE5334D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v7 = sub_1BE54CDAC();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BE54CCDC() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BE53112C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1BE5335FC(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_1BE5335FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1BE54CA4C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1BE54CD8C();

        sub_1BE54C77C();
        v15 = sub_1BE54CDAC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1BE5337B4()
{
  v0 = sub_1BE54C70C();
  v2 = v1;
  if (v0 == sub_1BE54C70C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BE54CCDC();
  }

  return v5 & 1;
}

uint64_t sub_1BE533838()
{
  sub_1BE54C70C();
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v0 = sub_1BE54CDAC();

  return v0;
}

uint64_t sub_1BE5338AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE5338F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecodedLLMProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE533954(uint64_t a1)
{
  v2 = type metadata accessor for DecodedLLMProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE5339B0()
{
  result = qword_1EBDAD348;
  if (!qword_1EBDAD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD348);
  }

  return result;
}

uint64_t sub_1BE533A04()
{

  return swift_once();
}

uint64_t sub_1BE533A24()
{

  return swift_once();
}

void sub_1BE533AA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BE533AC4()
{
  v2 = *(*v0 + 40);

  return sub_1BE54CD8C();
}

uint64_t sub_1BE533AE4()
{
  sub_1BE4E01D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAD380, &qword_1BE551918);
  sub_1BE4C7570(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_1BE51DB24();
  v6 = sub_1BE54B33C();
  sub_1BE536D54(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BE533BB4()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_1BE4C6EFC(v0[3] + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession, v2, &qword_1EBDAD380, &qword_1BE551918);
  sub_1BE536A20(&qword_1EBDAD398, &qword_1BE551948, MEMORY[0x1E6985C18], v1);
  sub_1BE4D0E58(v2, &qword_1EBDAD380, &qword_1BE551918);
  swift_task_alloc();
  sub_1BE50A8BC();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1BE533CC4;
  v5 = v0[7];
  v6 = v0[2];
  v7 = v0[3];

  return sub_1BE535104(v6, v5);
}

uint64_t sub_1BE533CC4()
{
  sub_1BE4E021C();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  sub_1BE4E01C4();
  *v11 = v10;
  v3[9] = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = v3[7];
    v16 = v3[4];

    sub_1BE4E01E0();

    return v17();
  }
}

uint64_t sub_1BE533E5C()
{
  sub_1BE4E01D4();
  v1 = v0[7];
  v2 = v0[4];

  sub_1BE4E01E0();
  v4 = v0[9];

  return v3();
}

uint64_t sub_1BE533EC4()
{
  v1 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v2 = sub_1BE4C7570(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = sub_1BE54B0AC();
  v8 = sub_1BE4C7500(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4C757C();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle;
  swift_beginAccess();
  sub_1BE4C6EFC(v0 + v16, v6, &qword_1EBDAD390, &qword_1BE551940);
  if (sub_1BE4C63BC(v6, 1, v7) == 1)
  {
    sub_1BE4D0E58(v6, &qword_1EBDAD390, &qword_1BE551940);
    sub_1BE54B4FC();
    sub_1BE50A890();
    return sub_1BE4C63F8(v17, v18, v19, v20);
  }

  else
  {
    (*(v10 + 32))(v15, v6, v7);
    sub_1BE54B44C();
    return (*(v10 + 8))(v15, v7);
  }
}

uint64_t sub_1BE534080()
{
  sub_1BE4E01D4();
  *(v1 + 16) = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE534108()
{
  sub_1BE4E01D4();
  v2 = v0[2];
  v1 = v0[3];
  sub_1BE533EC4();
  v3 = sub_1BE54B4FC();
  v0[4] = v3;
  if (sub_1BE4C63BC(v1, 1, v3) == 1)
  {
    sub_1BE4D0E58(v0[3], &qword_1EBDAC5A8, &qword_1BE54F818);
    v4 = v0[3];

    sub_1BE4E01E0();

    return v5();
  }

  else
  {
    v7 = *(MEMORY[0x1E698AAA0] + 4);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1BE534214;
    v9 = v0[3];

    return MEMORY[0x1EEDEB768]();
  }
}

uint64_t sub_1BE534214()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(*(v3[4] - 8) + 8))(v3[3]);
    v12 = v3[3];

    sub_1BE4E01E0();

    return v13();
  }
}