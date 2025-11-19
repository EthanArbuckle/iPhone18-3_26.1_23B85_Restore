uint64_t static LocationDetectionManager.authorizationStatus()()
{
  sub_1D5B5E61C(0, &unk_1EDF17910, sub_1D5B75E24, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D5B77668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakSharedItemManagerObserver();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_observers;
  v7 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v7);
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t sub_1D5B7779C()
{
  v17 = sub_1D72597EC();
  v0 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72597FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D725967C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  *v8 = sub_1D726207C();
  v8[1] = v14;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v17);
  result = sub_1D725984C();
  qword_1EDF186F0 = result;
  return result;
}

uint64_t FCNewsAppConfigurationManager.accessor(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = v2;
  v5[4] = a1;
  sub_1D5B77AA4();
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_1D725BE0C();
}

void sub_1D5B77AA4()
{
  if (!qword_1EDF178A0)
  {
    v0 = sub_1D725BDEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF178A0);
    }
  }
}

uint64_t sub_1D5B77B18()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EDF18190, sub_1D5B77EB8);
  v12[1] = "session.fixed_bundle_session";
  v12[2] = v10;
  v16 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &unk_1EDF02430, &qword_1EDF181B8, &type metadata for BundleSessionStrategy);
  sub_1D5B77F68(0, &qword_1EDF181B8, &type metadata for BundleSessionStrategy, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v15 = 0;
  sub_1D725980C();
  v14 = 1;
  sub_1D725980C();
  v13 = 2;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D5B78024();
  result = sub_1D725982C();
  qword_1EDF18818 = result;
  return result;
}

void sub_1D5B77E58(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D725986C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5B77EB8()
{
  result = qword_1EDF0E6D8;
  if (!qword_1EDF0E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E6D8);
  }

  return result;
}

unint64_t sub_1D5B77F14()
{
  result = qword_1EDF0E6D0;
  if (!qword_1EDF0E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E6D0);
  }

  return result;
}

void sub_1D5B77F68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B77FB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B77F68(255, a3, a4, MEMORY[0x1E69D6EA8]);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D5B78024()
{
  result = qword_1EDF0E6E0;
  if (!qword_1EDF0E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E6E0);
  }

  return result;
}

uint64_t sub_1D5B78078(uint64_t a1)
{
  v2 = sub_1D5B780CC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D5B780CC()
{
  result = qword_1EDF0E6C8;
  if (!qword_1EDF0E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E6C8);
  }

  return result;
}

void sub_1D5B78120(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (v2 != 1)
  {
    v5 = 1869440356;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6769666E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FeedSubscriptionPaidAccess(unsigned __int8 *a1, unsigned int a2)
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

void *sub_1D5B78200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v30 = a1;
  v29 = sub_1D725A93C();
  v25 = *(v29 - 8);
  v27 = v25;
  MEMORY[0x1EEE9AC00](v29, v4);
  v28 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725895C();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725B42C();
  MEMORY[0x1EEE9AC00](v10, v11);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v31 = xmmword_1D7374DA0;
  sub_1D5B78774();
  swift_allocObject();
  *(v2 + 32) = sub_1D725BFEC();
  strcpy((v2 + 48), "familyStatus");
  *(v2 + 61) = 0;
  *(v2 + 62) = -5120;
  v12 = MEMORY[0x1E69D67A0];
  v22 = MEMORY[0x1E69E6F90];
  sub_1D5B787F0(0, &qword_1EDF19B28, MEMORY[0x1E69D67A0], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v21 = xmmword_1D7273AE0;
  *(v13 + 16) = xmmword_1D7273AE0;
  sub_1D725B41C();
  *&v31 = v13;
  sub_1D5B788E4(&unk_1EDF3BAF0, MEMORY[0x1E69D67A0]);
  v14 = MEMORY[0x1E69E62F8];
  sub_1D5B787F0(0, &unk_1EDF1B590, v12, MEMORY[0x1E69E62F8]);
  sub_1D5B7892C(&qword_1EDF1B580, &unk_1EDF1B590, v12);
  sub_1D7263B6C();
  sub_1D5B78990();
  swift_allocObject();
  v3[9] = sub_1D725AD1C();
  sub_1D725894C();
  v15 = sub_1D725893C();
  v17 = v16;
  (*(v23 + 8))(v9, v24);
  v3[10] = v15;
  v3[11] = v17;
  v3[8] = v26;
  v18 = MEMORY[0x1E69D6420];
  sub_1D5B787F0(0, &unk_1EDF19B30, MEMORY[0x1E69D6420], v22);
  v19 = swift_allocObject();
  *(v19 + 16) = v21;
  swift_unknownObjectRetain();
  sub_1D725A92C();
  *&v31 = v19;
  sub_1D5B788E4(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B787F0(0, &qword_1EDF1B5B0, v18, v14);
  sub_1D5B7892C(&qword_1EDF1B5A0, &qword_1EDF1B5B0, v18);
  sub_1D7263B6C();
  sub_1D5B787F0(0, &unk_1EDF3BA80, sub_1D5B789F0, MEMORY[0x1E69D6A80]);
  swift_allocObject();

  v3[5] = sub_1D725B7AC();
  return v3;
}

void *FamilySharingStatusManager.init(database:familyEigibilityProvider:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5B78200(a1, a2);

  swift_unknownObjectRelease();
  return v2;
}

void sub_1D5B78774()
{
  if (!qword_1EDF3B878)
  {
    sub_1D5B5D5E0(255, &qword_1EDF33B80, &type metadata for FamilyStatus, MEMORY[0x1E69E6720]);
    v0 = sub_1D725BFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B878);
    }
  }
}

void sub_1D5B787F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B78854(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B7889C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B788E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B7892C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B787F0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5B78990()
{
  if (!qword_1EDF3BB48)
  {
    v0 = sub_1D725AD3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB48);
    }
  }
}

void sub_1D5B789F0()
{
  if (!qword_1EDF3B810)
  {
    sub_1D5B78A80();
    sub_1D5B78AD4();
    sub_1D5B78B28();
    v0 = sub_1D725C5EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B810);
    }
  }
}

unint64_t sub_1D5B78A80()
{
  result = qword_1EDF23850;
  if (!qword_1EDF23850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23850);
  }

  return result;
}

unint64_t sub_1D5B78AD4()
{
  result = qword_1EDF33B88;
  if (!qword_1EDF33B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33B88);
  }

  return result;
}

unint64_t sub_1D5B78B28()
{
  result = qword_1EDF33B90;
  if (!qword_1EDF33B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33B90);
  }

  return result;
}

uint64_t sub_1D5B78BA0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EDF18180, sub_1D5B78EB4);
  v12 = v10;
  v15 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &qword_1EDF02420, &qword_1EDF181A8, &type metadata for BundleSubscriptionDetectionStrategy);
  sub_1D5B77F68(0, &qword_1EDF181A8, &type metadata for BundleSubscriptionDetectionStrategy, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7270C10;
  v14 = 0;
  sub_1D725980C();
  v13 = 1;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D5B78F64();
  result = sub_1D725982C();
  qword_1EDF18808 = result;
  return result;
}

unint64_t sub_1D5B78EB4()
{
  result = qword_1EDF07218;
  if (!qword_1EDF07218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07218);
  }

  return result;
}

unint64_t sub_1D5B78F10()
{
  result = qword_1EDF07210;
  if (!qword_1EDF07210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07210);
  }

  return result;
}

unint64_t sub_1D5B78F64()
{
  result = qword_1EDF07220[0];
  if (!qword_1EDF07220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF07220);
  }

  return result;
}

uint64_t sub_1D5B78FB8(uint64_t a1)
{
  v2 = sub_1D5B7900C();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D5B7900C()
{
  result = qword_1EDF07208;
  if (!qword_1EDF07208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07208);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FeedLayoutOrder(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeedLayoutOrder(unsigned __int8 *a1, unsigned int a2)
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

id BundleSubscriptionDetectionManager.init(detectionProvider:configurationManager:bundleSubscriptionManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_1D5B791F4(a1, a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

id sub_1D5B791F4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - v11;
  *&v3[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_observers] = MEMORY[0x1E69E7CC0];
  sub_1D5B68374(a1, &v3[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_detectionProvider]);
  *&v3[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_configurationManager] = a2;
  *&v3[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_bundleSubscriptionManager] = a3;
  v20.receiver = v3;
  v20.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v20, sel_init);
  [a3 addObserver_];
  v14 = [objc_opt_self() defaultCenter];
  v15 = sub_1D726203C();
  [v14 addObserver:v13 selector:sel_resetDetectionTimestamp name:v15 object:0];

  v16 = sub_1D726294C();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = a3;
  swift_unknownObjectRetain();
  v18 = v13;
  sub_1D67E16B0(0, 0, v12, &unk_1D72EEBF0, v17);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D5B794C8(v12, &qword_1EDF1ADB0, v8);
  return v18;
}

uint64_t sub_1D5B79480()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5B794C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B480(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *BundleSessionManager.init(bundleSessionProvider:newsletterManager:appConfigurationManager:familySharingStatusManager:featureAvailability:bundleSubscriptionManager:bundleSubscriptionDetectionManager:sceneManager:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v53 = a8;
  v54 = a6;
  v58 = a4;
  v59 = a7;
  v51 = a5;
  v55 = a1;
  v56 = a9;
  v57 = a3;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for BundleSessionCache();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v51 - v20;
  *&v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter;
  v23 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v24 = sub_1D726203C();
  v25 = [v23 initWithBundleIdentifier_];

  *&v10[v22] = v25;
  v26 = &v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_cachedBundleSessionKey];
  *v26 = 0xD000000000000015;
  *(v26 + 1) = 0x80000001D73C5F40;
  v27 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sessionCache;
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v21, v18, type metadata accessor for BundleSessionCache);
  sub_1D5B5D86C(0, &qword_1EDF17AC8, type metadata accessor for BundleSessionCache, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v28 = sub_1D725B94C();
  sub_1D5B79C44(v21, type metadata accessor for BundleSessionCache);
  *&v10[v27] = v28;
  v29 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sceneIsActive;
  v60[0] = 1;
  sub_1D5B79CA4(0, &qword_1EDF3B9E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&v10[v29] = sub_1D725B94C();
  sub_1D5B68374(a1, &v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider]);
  *&v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_newsletterManager] = a2;
  v30 = v58;
  *&v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager] = v57;
  v31 = &v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_familySharingStatusManager];
  v32 = v51;
  *v31 = v30;
  *(v31 + 1) = v32;
  sub_1D5B68374(a6, &v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability]);
  *&v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionManager] = v59;
  v33 = v53;
  sub_1D5B68374(v53, &v10[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager]);
  v61.receiver = v10;
  v61.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = objc_msgSendSuper2(&v61, sel_init);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 defaultCenter];
  v38 = sub_1D726203C();
  [v37 addObserver:v36 selector:sel_familySharingStatusDidChange name:v38 object:0];

  v39 = [v35 defaultCenter];
  v40 = v36;
  v41 = sub_1D726203C();
  [v39 addObserver:v40 selector:sel_resetSession name:v41 object:0];

  v42 = *&v40[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter];
  v43 = v40;
  [v42 setPrivateDelegate_];
  [a2 addObserver_];
  v44 = v33[4];
  v45 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v46 = *(v44 + 16);
  v47 = v43;
  v46();

  v48 = v56;
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_1D5B7A064(&qword_1EDF0F468, v49, type metadata accessor for BundleSessionManager);
  sub_1D725B54C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v47;
}

uint64_t type metadata accessor for BundleSessionCache()
{
  result = qword_1EDF2E760;
  if (!qword_1EDF2E760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B79AF4()
{
  sub_1D5B76C1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B79B68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5B79B68()
{
  if (!qword_1EDF33298[0])
  {
    sub_1D5B76C1C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF33298);
    }
  }
}

uint64_t sub_1D5B79BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5B79C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5B79CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t BundleSubscriptionDetectionManager.add(observer:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D7261B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v10 = sub_1D726308C();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1D7261BBC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_observers;
    swift_beginAccess();
    v25 = v12;
    v6 = *(v3 + v12);
    v26 = MEMORY[0x1E69E7CC0];
    if (!(v6 >> 62))
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v13 = sub_1D7263BFC();
LABEL_4:

  if (v13)
  {
    v23 = a2;
    v24 = v3;
    a2 = 0;
    v3 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        MEMORY[0x1DA6FB460](a2, v6);
        v14 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v17 = v26;
          a2 = v23;
          v3 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v14 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v16 = Strong, swift_unknownObjectRelease(), v16 == a1))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++a2;
      if (v14 == v13)
      {
        goto LABEL_18;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v18 = v25;
  *(v3 + v25) = v17;

  type metadata accessor for BundleSubscriptionDetectionObserverProxy();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v20 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v20);
  if (*((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t sub_1D5B7A064(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5B7A110()
{
  if (!qword_1EDF43B60)
  {
    sub_1D5B5A498(255, &qword_1EDF3C740);
    v0 = sub_1D725794C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B60);
    }
  }
}

void sub_1D5B7A178()
{
  sub_1D5B7A110();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for PuzzleStatistic()
{
  result = qword_1EDF40E70;
  if (!qword_1EDF40E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5B7A234()
{
  result = sub_1D5B7A2B8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PuzzleStatisticCategory(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5B7A2B8()
{
  result = qword_1EDF3C700;
  if (!qword_1EDF3C700)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C700);
  }

  return result;
}

void sub_1D5B7A35C()
{
  type metadata accessor for PuzzleStatisticValue(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleStatisticDifficultyLevelValue(319);
    if (v1 <= 0x3F)
    {
      sub_1D5B7A644(319, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PuzzleStatisticsGroupedValue(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5B7A428(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B7A478()
{
  sub_1D5B7A428(319, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B7A428(319, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5B7A644(319, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D5B7A59C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7A5F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7A644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PuzzleStreak()
{
  result = qword_1EDF41858;
  if (!qword_1EDF41858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B7A6F4()
{
  result = sub_1D7257ADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5B7A780()
{
  result = type metadata accessor for PuzzleStatisticValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B7A814()
{
  type metadata accessor for PuzzleLeaderboardEntry();
  if (v0 <= 0x3F)
  {
    sub_1D5B7A644(319, &qword_1EDF3C898, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D5B7A428(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for PuzzleLeaderboardEntry()
{
  result = qword_1EDF3F888;
  if (!qword_1EDF3F888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B7A958()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B7AA08()
{
  sub_1D5B7A428(319, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B7A644(319, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5B7AB2C();
      if (v2 <= 0x3F)
      {
        sub_1D5B7ACBC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5B7AB2C()
{
  if (!qword_1EDF3DB38)
  {
    sub_1D5B7A428(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5B698D4(&qword_1EDF3C7A0);
    sub_1D5B698D4(&unk_1EDF3C7B0);
    sub_1D5B698D4(&qword_1EDF3C7A8);
    v0 = type metadata accessor for PuzzleStatisticDifficultyLevel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3DB38);
    }
  }
}

uint64_t sub_1D5B7AC44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B7ACBC()
{
  if (!qword_1EDF3DB40[0])
  {
    sub_1D5B7A428(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5B69970();
    sub_1D5B7AD68();
    sub_1D5B69A04();
    v0 = type metadata accessor for PuzzleStatisticDifficultyLevel();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF3DB40);
    }
  }
}

unint64_t sub_1D5B7AD68()
{
  result = qword_1EDF3C7F8;
  if (!qword_1EDF3C7F8)
  {
    sub_1D5B7A428(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C7F8);
  }

  return result;
}

unint64_t sub_1D5B7ADFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D72646CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1D5B7AEB4()
{
  if (!qword_1EDF3B7B8)
  {
    sub_1D5B7AF18();
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B7B8);
    }
  }
}

unint64_t sub_1D5B7AF18()
{
  result = qword_1EDF22E20;
  if (!qword_1EDF22E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22E20);
  }

  return result;
}

unint64_t sub_1D5B7AF6C()
{
  result = qword_1EDF3C6B0;
  if (!qword_1EDF3C6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF3C6B0);
  }

  return result;
}

void sub_1D5B7AFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for UserAction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B7B018()
{
  sub_1D5B483C4(0, qword_1EDF28DA8);
  sub_1D725B53C();

  sub_1D5B483C4(0, qword_1EDF26B90);
  swift_beginAccess();

  sub_1D725B53C();

  sub_1D5B483C4(0, qword_1EDF1EBA8);
  sub_1D725B53C();
}

void sub_1D5B7B1C8()
{
  if (!qword_1EDF31C08[0])
  {
    v0 = type metadata accessor for OfflineManager();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF31C08);
    }
  }
}

void sub_1D5B7B268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B7B2CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B3C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B7B480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B4D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B7B58C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B7B644(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B7B6FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7B7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B7B85C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FeedAppConfigManager();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    type metadata accessor for FormatFeedConfigManager();
    swift_allocObject();
    result = sub_1D5B7B960();
    *(v6 + 24) = result;
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedAppConfigManager;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5B7B960()
{
  v1 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v3 = sub_1D725A7AC();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v3;

  v0[4] = 0;

  type metadata accessor for FormatJSONDecoder();
  v0[5] = 0;
  v0[6] = 0;
  swift_allocObject();
  v0[7] = sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t type metadata accessor for FormatJSONDecoder()
{
  result = qword_1EDF40630;
  if (!qword_1EDF40630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B7BACC(uint64_t a1)
{
  v66 = a1;
  sub_1D5B7C1C0();
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v62 = &v58 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v65 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v58 - v12;
  v14 = sub_1D7263FCC();
  v67 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v59 = &v58 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v61 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v64 = &v58 - v25;
  v26 = sub_1D725A67C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = (&v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1D725A65C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = (&v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1D725A6BC();
  *v35 = sub_1D6322C80;
  v35[1] = 0;
  (*(v32 + 104))(v35, *MEMORY[0x1E69D6348], v31);

  sub_1D725A66C();
  *v30 = sub_1D6322A3C;
  v30[1] = 0;
  (*(v27 + 104))(v30, *MEMORY[0x1E69D6350], v26);
  sub_1D725A68C();
  v37 = sub_1D5B7C218(0, v66);
  v38 = sub_1D725A6AC();
  sub_1D7263FBC();
  v39 = v67;
  v63 = *(v67 + 48);
  result = v63(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v41 = *(v39 + 32);
  v42 = v64;
  v67 = v39 + 32;
  v41(v64, v13, v14);
  v69 = MEMORY[0x1E69E6370];
  v68[0] = v37;
  sub_1D5B7C248(v68, v42);
  v38(v70, 0);
  v43 = v66;
  sub_1D5B7C218(0, v66);
  v44 = sub_1D725A6AC();
  sub_1D7261D8C();
  v44(v70, 0);
  v45 = sub_1D5B7C218(0, v43);
  v46 = sub_1D725A6AC();
  v47 = v65;
  sub_1D7263FBC();
  v48 = v63;
  result = v63(v47, 1, v14);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v49 = v61;
  v41(v61, v47, v14);
  v69 = MEMORY[0x1E69E6370];
  v68[0] = v45;
  sub_1D5B7C248(v68, v49);
  v46(v70, 0);
  v50 = sub_1D5B7C218(1u, v66);
  v51 = sub_1D725A6AC();
  v52 = v62;
  sub_1D7263FBC();
  result = v48(v52, 1, v14);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v53 = v59;
  v41(v59, v52, v14);
  v69 = MEMORY[0x1E69E6370];
  v68[0] = v50;
  sub_1D5B7C248(v68, v53);
  v51(v70, 0);
  v54 = sub_1D5B7C218(2u, v66);

  v55 = sub_1D725A6AC();
  v56 = v60;
  sub_1D7263FBC();
  result = v48(v56, 1, v14);
  if (result != 1)
  {
    v57 = v58;
    v41(v58, v56, v14);
    v69 = MEMORY[0x1E69E6370];
    v68[0] = v54;
    sub_1D5B7C248(v68, v57);
    v55(v70, 0);

    return v36;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D5B7C1C0()
{
  if (!qword_1EDF3C698)
  {
    sub_1D7263FCC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C698);
    }
  }
}

BOOL sub_1D5B7C218(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D5B7C248(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1D5B7C3A0(v10, a2, isUniquelyReferenced_nonNull_native, sub_1D5B7CB48, sub_1D5B7C390, sub_1D5B7C390);
    v5 = sub_1D7263FCC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    sub_1D6D88728(a1, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    sub_1D607E194(a2, v10);
    v8 = sub_1D7263FCC();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1D6D88728(v10, &qword_1EDF43B70, v7 + 8);
  }

  return result;
}

_OWORD *sub_1D5B7C390(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D5B7C3A0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(unint64_t, _BYTE *), uint64_t (*a6)(uint64_t, uint64_t))
{
  v31 = a6;
  v32 = a4;
  v33 = a5;
  v7 = v6;
  v11 = sub_1D7263FCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1D5B7C598(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_1D6D86AFC(v32, v33);
      goto LABEL_7;
    }

    sub_1D5B7C794(v21, a3 & 1, v32, v33);
    v28 = sub_1D5B7C598(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a2, v11);
      return sub_1D5B7CBB4(v18, v15, a1, v24, v33);
    }

LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7] + 32 * v18;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v26 = v31;

  return v26(a1, v25);
}

unint64_t sub_1D5B7C598(uint64_t a1)
{
  sub_1D7263FCC();
  v2 = sub_1D7261E7C();

  return sub_1D5B7C5FC(a1, v2);
}

unint64_t sub_1D5B7C5FC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1D7263FCC();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1D7261FBC();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1D5B7C794(uint64_t a1, int a2, void (*a3)(void), void (*a4)(unint64_t, _BYTE *))
{
  v44 = a4;
  v6 = v4;
  v8 = sub_1D7263FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  a3(0);
  v42 = a2;
  result = sub_1D726410C();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v8;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v9 + 16);
    v40 = v9;
    v43 = (v9 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v9 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44(*(v13 + 56) + 32 * v27, v48);
      }

      else
      {
        (*v39)(v46, v29, v47);
        sub_1D5B76B10(*(v13 + 56) + 32 * v27, v48);
      }

      result = sub_1D7261E7C();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v9 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v9 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v43)((*(v15 + 48) + v45 * v23), v46, v47);
      result = (v44)(v48, *(v15 + 56) + 32 * v23);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
  return result;
}

void sub_1D5B7CB48()
{
  if (!qword_1EDF1A2A0)
  {
    sub_1D7263FCC();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2A0);
    }
  }
}

uint64_t sub_1D5B7CBB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1D7263FCC();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 32 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

double sub_1D5B7CCAC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 > 1)
  {
    if ((v3 - 2) >= 2 && v3 == 5)
    {
      result = 0.0;
      *a1 = xmmword_1D727C330;
      return result;
    }

LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    return result;
  }

  if (v3 == -1)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      result = 0.0;
      *a1 = xmmword_1D72830B0;
      return result;
    }

    goto LABEL_7;
  }

  result = 0.0;
  *a1 = xmmword_1D7279980;
  return result;
}

uint64_t sub_1D5B7CD94(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1D5B7CDAC()
{
  sub_1D5B63E64(0, &unk_1EDF3B350, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &qword_1EDF3B1F0, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B110 = result;
  return result;
}

uint64_t sub_1D5B7CEF4()
{
  sub_1D5B63E64(0, &unk_1EDF3B350, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &qword_1EDF3B1F0, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B0C8 = result;
  return result;
}

uint64_t sub_1D5B7D03C()
{
  sub_1D5B63E64(0, &unk_1EDF3B350, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &qword_1EDF3B1F0, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B148 = result;
  return result;
}

uint64_t sub_1D5B7D184()
{
  sub_1D5B63E64(0, &unk_1EDF3B350, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &qword_1EDF3B1F0, &type metadata for DebugGroupLayoutContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B0F8 = result;
  return result;
}

uint64_t sub_1D5B7D2CC(void *a1, void (*a2)(void), void (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    a3(0);
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5B7D358(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &qword_1EDF3DE20);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for WebEmbedDiagnosticAttachmentProvider();
    v2 = swift_allocObject();
    sub_1D5B63F14(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5B7D3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WebEmbedDataVisualization();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5B7D454()
{
  sub_1D5B7D3F4(0, &qword_1EDF3B348, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7D3F4(0, &qword_1EDF3B1E8, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AB58 = result;
  return result;
}

uint64_t sub_1D5B7D58C(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, a2);
  result = sub_1D725AACC();
  if (v11)
  {
    a4(0);
    v9 = swift_allocObject();
    a5(v10, v9 + 16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5B7D650()
{
  sub_1D5B7D3F4(0, &qword_1EDF3B348, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7D3F4(0, &qword_1EDF3B1E8, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AB40 = result;
  return result;
}

uint64_t sub_1D5B7D788()
{
  sub_1D5B7D8C0(0, &qword_1EDF3B2D8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7D8C0(0, &qword_1EDF3B178, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AD58 = result;
  return result;
}

void sub_1D5B7D8C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B7D920();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5B7D920()
{
  result = qword_1EDF1A870;
  if (!qword_1EDF1A870)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A870);
  }

  return result;
}

void sub_1D5B7D984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B67084(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5B7DA08()
{
  sub_1D5B7D984(0, &qword_1EDF3B300, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7D984(0, &unk_1EDF3B1A0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AD20 = result;
  return result;
}

uint64_t sub_1D5B7DB40()
{
  sub_1D5B7E34C(0, &qword_1EDF3B2E8, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7E34C(0, &qword_1EDF3B188, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AD08 = result;
  return result;
}

uint64_t sub_1D5B7DC94()
{
  sub_1D5B7E34C(0, &qword_1EDF3B2E8, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7E34C(0, &qword_1EDF3B188, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ACF0 = result;
  return result;
}

id OfflineManager.init(offlineProvider:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[qword_1EC894F50];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D5B68374(a1, &v1[qword_1EC894F58]);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  sub_1D5B68374(v5 + qword_1EC894F58, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v8 = *(v7 + 16);
  v9 = v5;
  v8(v5, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

void sub_1D5B7DF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B7DF98()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AEB0 = result;
  return result;
}

uint64_t sub_1D5B7E0EC()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AF28 = result;
  return result;
}

void sub_1D5B7E264(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5534C(255, a3);
    v4 = sub_1D725BC0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5B7E2C0()
{
  result = qword_1EDF3C960;
  if (!qword_1EDF3C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C960);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D5B7E34C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)()
{
  sub_1D5B7E264(0, &qword_1EDF3B8F0, &qword_1EDF1A890);
  swift_allocObject();
  return sub_1D725BBAC();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D5B7E44C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D5B887D4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D5FFFF14();
      goto LABEL_16;
    }

    sub_1D5B7E5CC();
  }

  v10 = *v4;
  sub_1D7264A0C();
  sub_1D72621EC();
  result = sub_1D7264A5C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D72646CC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5B7E5CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF1A590);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      result = sub_1D7264A5C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D5B7E810(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D5B8C520(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D5B8C520((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D5B7C390(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5B7E910(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1D5B7E948()
{
  sub_1D5B49474(319, &unk_1EDF42D60);
  if (v0 <= 0x3F)
  {
    sub_1D5B7EB5C(319, &qword_1EDF3C938);
    if (v1 <= 0x3F)
    {
      sub_1D5B7EBB4();
      if (v2 <= 0x3F)
      {
        sub_1D5B7EF80();
        if (v3 <= 0x3F)
        {
          sub_1D5B7EB5C(319, &qword_1EDF3C940);
          if (v4 <= 0x3F)
          {
            sub_1D5B7F04C(319, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1D5B7EB5C(319, &qword_1EDF3C948);
              if (v6 <= 0x3F)
              {
                sub_1D725A0AC();
                if (v7 <= 0x3F)
                {
                  sub_1D5B7F09C(319, &qword_1EDF3C958, MEMORY[0x1E69E5E28]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D5B7F04C(319, &unk_1EDF3C888, &type metadata for GroupLayoutBindingContext.OrderedItemBinding, MEMORY[0x1E69E62F8]);
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

void sub_1D5B7EB5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7261E1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5B7EBB4()
{
  if (!qword_1EDF3C7D8)
  {
    type metadata accessor for FeedGroupItem();
    sub_1D5B7EEE0(qword_1EDF41EF8, type metadata accessor for FeedGroupItem);
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C7D8);
    }
  }
}

uint64_t type metadata accessor for FeedGroupItem()
{
  result = qword_1EDF41EE0;
  if (!qword_1EDF41EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedSponsorshipBannerAd()
{
  result = qword_1EDF429B0;
  if (!qword_1EDF429B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for GroupLayoutBindingContext()
{
  result = qword_1EDF3ED40;
  if (!qword_1EDF3ED40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B7ED50()
{
  result = type metadata accessor for FeedWeather(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedHeadline(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedWebEmbed();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeedPuzzleStatistic();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FeedSponsorshipBannerAd();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FeedRecipe();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5B7EE64()
{
  result = sub_1D72608BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5B7EEE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5B7EF28()
{
  result = qword_1EDF41EF0;
  if (!qword_1EDF41EF0)
  {
    type metadata accessor for FeedGroupItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41EF0);
  }

  return result;
}

void sub_1D5B7EF80()
{
  if (!qword_1EDF3C950)
  {
    sub_1D5B7EFE8();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C950);
    }
  }
}

unint64_t sub_1D5B7EFE8()
{
  result = qword_1EDF431A0[0];
  if (!qword_1EDF431A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDF431A0);
  }

  return result;
}

void sub_1D5B7F04C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B7F09C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5B7F110();
    v7 = v6;
    v8 = sub_1D5B7F178();
    v9 = a3(a1, &type metadata for GroupLayoutBindingKey, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B7F110()
{
  if (!qword_1EDF3C928)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C928);
    }
  }
}

unint64_t sub_1D5B7F178()
{
  result = qword_1EDF3FD20[0];
  if (!qword_1EDF3FD20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3FD20);
  }

  return result;
}

unint64_t sub_1D5B7F1D0()
{
  result = qword_1EDF3FD18;
  if (!qword_1EDF3FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FD18);
  }

  return result;
}

uint64_t type metadata accessor for GroupLayoutContext()
{
  result = qword_1EDF40420;
  if (!qword_1EDF40420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B7F270()
{
  result = sub_1D7259F5C();
  if (v1 <= 0x3F)
  {
    result = sub_1D7259CFC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedLayoutSolverOptions(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeedLayoutContext();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1D5B7F378()
{
  sub_1D5B7F4C8(319, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF36640);
    if (v1 <= 0x3F)
    {
      sub_1D5B7F4C8(319, &qword_1EDF3B4C8, MEMORY[0x1E69D8218]);
      if (v2 <= 0x3F)
      {
        sub_1D5B49CBC(319, qword_1EDF36648);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5B7F4C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B7F51C()
{
  result = sub_1D725E23C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5B7F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D5B80A78, 0, 0);
}

void sub_1D5B7F5CC(void *a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v74 - v14;
  sub_1D5B7B480(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v74 - v22;
  if ([a1 isSubscribed])
  {
    v79 = v20;
    v80 = v15;
    v81 = v1;
    v24 = &v1[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_detectionProvider];
    swift_beginAccess();
    v82 = v3;
    v25 = *(v24 + 3);
    v26 = *(v24 + 4);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 8);
    v28 = v26;
    v29 = v82;
    v27(v25, v28);
    swift_endAccess();
    v30 = (*(v4 + 48))(v23, 1, v29);
    sub_1D5B794C8(v23, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if (v30 == 1)
    {
      v31 = [*&v81[OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_configurationManager] configuration];
      if (!v31)
      {
        __break(1u);
        return;
      }

      v32 = v31;
      if (([v31 respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        return;
      }

      v33 = [v32 paidBundleConfig];
      swift_unknownObjectRelease();
      v34 = [v33 maxAllowedSubscriptionDetectionTime];

      v35 = [a1 initialPurchaseTimestamp];
      if (v35)
      {
        v77 = v35;
        [v35 doubleValue];
        sub_1D725888C();
        sub_1D725890C();
        sub_1D72587FC();
        v37 = *&v36;
        v38 = v29;
        v39 = v36;
        v75 = *(v4 + 8);
        v76 = v4 + 8;
        v75(v12, v38);
        v40 = swift_allocBox();
        v41 = *(v4 + 56);
        v78 = v42;
        v41(v42, 1, 1, v38);
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v37 > -9.22337204e18)
        {
          if (v37 < 9.22337204e18)
          {
            v74 = v40;
            if (v34 >= v37)
            {
              v55 = v79;
              sub_1D72588CC();
              v40 = v82;
              v41(v55, 0, 1, v82);
              sub_1D67E2C80(v55, v78);
              if (qword_1EDF175B8 != -1)
              {
                swift_once();
              }

              v56 = sub_1D725C42C();
              __swift_project_value_buffer(v56, qword_1EDFFC708);
              v57 = sub_1D725C3FC();
              v58 = sub_1D7262EDC();
              if (!os_log_type_enabled(v57, v58))
              {

                v66 = v77;
                v54 = v75;
                goto LABEL_24;
              }

              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v83[0] = v60;
              *v59 = 136315138;
              sub_1D72588CC();
              sub_1D5C44ED8();
              v61 = sub_1D72644BC();
              v63 = v62;
              v64 = v12;
              v54 = v75;
              v75(v64, v40);
              v65 = sub_1D5BC5100(v61, v63, v83);

              *(v59 + 4) = v65;
              _os_log_impl(&dword_1D5B42000, v57, v58, "BundleSubscriptionDetectionManager loaded the new subscriber detection timestamp to: %s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v60);
              MEMORY[0x1DA6FD500](v60, -1, -1);
              MEMORY[0x1DA6FD500](v59, -1, -1);

LABEL_22:
              v66 = v77;
LABEL_24:
              v67 = v79;
              sub_1D5B7573C(v78, v79, &qword_1EDF45B00, MEMORY[0x1E6969530]);
              swift_beginAccess();
              v68 = *(v24 + 3);
              v69 = *(v24 + 4);
              __swift_mutable_project_boxed_opaque_existential_1(v24, v68);
              (*(v69 + 16))(v67, v68, v69);
              swift_endAccess();
              v70 = swift_allocObject();
              v71 = v81;
              v72 = v74;
              *(v70 + 16) = v81;
              *(v70 + 24) = v72;
              v73 = v71;

              sub_1D725BFFC();

              v54(v80, v40);

              return;
            }

            v43 = v78;
            sub_1D5B794C8(v78, &qword_1EDF45B00, MEMORY[0x1E6969530]);
            v39 = *(v4 + 16);
            v38 = v80;
            v40 = v82;
            (v39)(v43, v80, v82);
            v41(v43, 0, 1, v40);
            if (qword_1EDF175B8 == -1)
            {
LABEL_11:
              v44 = sub_1D725C42C();
              __swift_project_value_buffer(v44, qword_1EDFFC708);
              (v39)(v8, v38, v40);
              v45 = sub_1D725C3FC();
              v46 = sub_1D7262EDC();
              if (os_log_type_enabled(v45, v46))
              {
                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                v83[0] = v48;
                *v47 = 136315138;
                sub_1D5C44ED8();
                v49 = sub_1D72644BC();
                v51 = v50;
                v52 = v75;
                v75(v8, v40);
                v53 = sub_1D5BC5100(v49, v51, v83);

                *(v47 + 4) = v53;
                _os_log_impl(&dword_1D5B42000, v45, v46, "BundleSubscriptionDetectionManager loaded the new subscriber detection timestamp to: %s", v47, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v48);
                MEMORY[0x1DA6FD500](v48, -1, -1);
                MEMORY[0x1DA6FD500](v47, -1, -1);

                v54 = v52;
              }

              else
              {

                v54 = v75;
                v75(v8, v40);
              }

              goto LABEL_22;
            }

LABEL_29:
            swift_once();
            goto LABEL_11;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_28;
      }
    }
  }

  else
  {

    BundleSubscriptionDetectionManager.resetDetectionTimestamp()();
  }
}

uint64_t sub_1D5B7FE5C()
{

  return swift_deallocObject();
}

void sub_1D5B7FEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for OpenChannelCommandContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B7FEF4()
{
  if (!qword_1EDF3B2F0)
  {
    sub_1D5B65AF4();
    v0 = sub_1D725F79C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B2F0);
    }
  }
}

uint64_t sub_1D5B7FF4C()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16AF8 = result;
  return result;
}

uint64_t sub_1D5B800A0()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B08 = result;
  return result;
}

uint64_t sub_1D5B801D0()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B98 = result;
  return result;
}

unint64_t sub_1D5B80300()
{
  result = qword_1EDF37500;
  if (!qword_1EDF37500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37500);
  }

  return result;
}

uint64_t sub_1D5B80354()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8243C(0, &unk_1EDF172C0, sub_1D5B840B4);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16DA0 = result;
  return result;
}

uint64_t sub_1D5B8047C()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8243C(0, &qword_1EDF172B8, sub_1D5B90AC0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D90 = result;
  return result;
}

unint64_t sub_1D5B805A4()
{
  result = qword_1EDF15128[0];
  if (!qword_1EDF15128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15128);
  }

  return result;
}

void sub_1D5B805F8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D725CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B80664(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D5B8070C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &unk_1EDF40590);
    result = sub_1D725AACC();
    if (v9)
    {
      v6 = type metadata accessor for PuzzleTypeManager();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1D5B63F14(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F51F2C60;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5B80838()
{
  sub_1D5B816F8();
  if (v0 <= 0x3F)
  {
    sub_1D5B915C4(319, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5B809B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5B7F5AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D5B80A78()
{
  v1 = [*(v0 + 24) cachedSubscription];
  sub_1D5B7F5CC(v1);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall BundleSubscriptionDetectionManager.resetDetectionTimestamp()()
{
  v1 = v0;
  sub_1D5B7B480(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_1D725891C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_detectionProvider;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 16))(v5, v8, v9);
  swift_endAccess();
  if (qword_1EDF175B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D725C42C();
  __swift_project_value_buffer(v10, qword_1EDFFC708);
  v11 = sub_1D725C3FC();
  v12 = sub_1D7262EDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D5B42000, v11, v12, "BundleSubscriptionManager reset the new subscriber detection timestamp.", v13, 2u);
    MEMORY[0x1DA6FD500](v13, -1, -1);
  }

  *(swift_allocObject() + 16) = v1;
  v14 = v1;
  sub_1D725BFFC();
}

uint64_t sub_1D5B80D20()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B80D7C()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A50 = result;
  return result;
}

uint64_t sub_1D5B80ED0()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A80 = result;
  return result;
}

unint64_t sub_1D5B81000()
{
  result = qword_1EDF13D30;
  if (!qword_1EDF13D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13D30);
  }

  return result;
}

uint64_t sub_1D5B81054()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8243C(0, &qword_1EDF172D0, sub_1D5B805A4);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16DC8 = result;
  return result;
}

uint64_t sub_1D5B811A0()
{
  sub_1D5B812C8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B805F8(0, &qword_1EDF17270, sub_1D5B8131C);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16BF8 = result;
  return result;
}

void sub_1D5B812C8()
{
  if (!qword_1EDF3B2C0)
  {
    v0 = sub_1D725F79C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B2C0);
    }
  }
}

unint64_t sub_1D5B8131C()
{
  result = qword_1EDF0BE50;
  if (!qword_1EDF0BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BE50);
  }

  return result;
}

uint64_t sub_1D5B813B8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Puzzles.BadgeCountOverride(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18240 = result;
  return result;
}

uint64_t sub_1D5B815C0()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A10 = result;
  return result;
}

unint64_t sub_1D5B816F8()
{
  result = qword_1EDF04590;
  if (!qword_1EDF04590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04590);
  }

  return result;
}

void sub_1D5B81744()
{
  sub_1D725DF2C();
  if (v0 <= 0x3F)
  {
    sub_1D5B915C4(319, &qword_1EDF01CC0, sub_1D5B5D9E0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of PuzzleGameCenterServiceType.addListener(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_1D5B8192C()
{
  result = qword_1EDF1B580;
  if (!qword_1EDF1B580)
  {
    sub_1D5B82958(255, &unk_1EDF1B590, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B580);
  }

  return result;
}

uint64_t sub_1D5B819B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17DE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B81A5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1D5B81B04()
{
  if (!qword_1EDF43B90)
  {
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B90);
    }
  }
}

void sub_1D5B81B5C()
{
  if (!qword_1EDF042A8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF042A8);
    }
  }
}

uint64_t sub_1D5B81BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v7)
  {
    v4 = type metadata accessor for ArticleURLHandlerPatternProvider();
    v5 = swift_allocObject();
    result = sub_1D5B63F14(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for ArticleURLHandlerPatternProvider;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5B81C74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t LocationDetectionManager.addObserver(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v10;
          v7 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v1 + v2) = v7;

  type metadata accessor for LocationDetectionManagerObserverProxy();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v8);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t sub_1D5B81F5C()
{
  sub_1D725B77C();
  if (v2)
  {
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D5B81FE8()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B58 = result;
  return result;
}

unint64_t sub_1D5B82160()
{
  result = qword_1EDF37340;
  if (!qword_1EDF37340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37340);
  }

  return result;
}

uint64_t sub_1D5B821D8()
{
  v0 = MEMORY[0x1E69E63B0];
  sub_1D5B8AFAC(0, &unk_1EDF3B410, qword_1EDF2D048, MEMORY[0x1E69E63B0], MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B8AFAC(0, &unk_1EDF3B280, qword_1EDF2D048, v0, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EDF3AF50 = result;
  return result;
}

void sub_1D5B82350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D725CDBC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5B823D0()
{
  result = type metadata accessor for FeedHeadline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B8243C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D725CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B824D8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF18178);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18288 = result;
  return result;
}

uint64_t sub_1D5B826C8()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A28 = result;
  return result;
}

uint64_t sub_1D5B82800(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5B91618, v2, 0);
}

uint64_t sub_1D5B82824(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_1D6D88728(a1, &qword_1EDF0A800, &type metadata for PuzzleGameCenterListenerType);
    v8 = sub_1D5B91830(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D6D86960();
        v12 = v14;
      }

      sub_1D5B808F0(*(v12 + 56) + 16 * v10, &v15);
      sub_1D671588C(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_1D7279980;
    }

    return sub_1D6D88728(&v15, &qword_1EDF0A800, &type metadata for PuzzleGameCenterListenerType);
  }

  else
  {
    sub_1D5B808F0(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1D5B9186C(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

void sub_1D5B82958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B829BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D725ABEC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D725ABDC();
}

char *sub_1D5B82A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = *v9;
  (*(*(*(*v9 + 80) - 8) + 16))(&v9[*(*v9 + 136)], a1, *(*v9 + 80));
  (*(*(*(v17 + 88) - 8) + 16))(&v9[*(*v9 + 128)], a2);
  *(v9 + 2) = a3;
  sub_1D5B68374(a4, (v9 + 24));
  sub_1D5B68374(a5, &v9[*(*v9 + 144)]);
  *&v9[*(*v9 + 152)] = a6;
  v18 = &v9[*(*v9 + 160)];
  *v18 = a7;
  *(v18 + 1) = a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorStore();
  v19 = sub_1D5B837D0(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  *&v9[*(*v9 + 168)] = v19;
  return v9;
}

uint64_t sub_1D5B82C9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5B82CD8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  swift_getTupleTypeMetadata2();
  v2 = sub_1D726393C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1D725B98C();
  (*(v3 + 16))(v6, a1, v2);
  return sub_1D725B93C();
}

uint64_t type metadata accessor for LatestPuzzleProvider()
{
  result = qword_1EDF0E9D0;
  if (!qword_1EDF0E9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B82EA8(int a1, void *a2)
{
  v3 = v2;
  v23 = a2;
  v22 = a1;
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D5B92BEC();
  swift_allocObject();
  *(v2 + 16) = sub_1D725AEFC();
  v10 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  v11 = sub_1D725891C();
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift) = 0;
  *(v3 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth) = 0;
  v13 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_lock;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D5B8A99C();
  sub_1D5B92C40(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5B89968();
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v14 = v22;
  *(v3 + v13) = sub_1D725A7AC();
  v15 = v23;
  *(v3 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_log) = v23;
  v16 = v15;
  if (v14)
  {
    sub_1D725AEEC();
    sub_1D725890C();
    v12(v7, 0, 1, v11);
    v17 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
    swift_beginAccess();
    sub_1D5B8A9F4(v7, v3 + v17);
    swift_endAccess();
  }

  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  v19 = MEMORY[0x1E69E63A8];
  *(v18 + 56) = MEMORY[0x1E69E6370];
  *(v18 + 64) = v19;
  *(v18 + 32) = v14 & 1;
  sub_1D7262EDC();
  sub_1D725C30C();

  return v3;
}

uint64_t sub_1D5B831D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CACurrentMediaTime();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedDatabaseStore();
  v5 = a1;
  sub_1D725B77C();
  v6 = sub_1D5B9F6D4(v5, v11);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = CACurrentMediaTime();
  v9 = MEMORY[0x1E69E6438];
  *(v7 + 56) = MEMORY[0x1E69E63B0];
  *(v7 + 64) = v9;
  *(v7 + 32) = (v8 - v4) * 1000.0;
  sub_1D7262EDC();
  sub_1D725C30C();

  *a2 = v6;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t FeedPoolManager.init(feed:service:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v11 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(*v3 + 112);
  v8 = *(*v3 + 80);
  type metadata accessor for FeedPoolManager.Key();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_1D725B84C();
  v10 = *(a1 + 1);
  *(v3 + v7) = sub_1D725B82C();
  *(v3 + *(*v3 + 120)) = 0x4072C00000000000;
  *(v3 + 16) = v5;
  *(v3 + 24) = v10;
  *(v3 + 40) = v11;
  *(v3 + 48) = v6;
  (*(*(v8 - 8) + 32))(v3 + *(*v3 + 104), a2, v8);
  return v3;
}

uint64_t sub_1D5B8372C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1D5B8380C(void *a1)
{
  v2 = v1;
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v1[2] = sub_1D725A7AC();
  type metadata accessor for FeedCursorStore.WeakCursorContainer();
  v1[3] = sub_1D7261CEC();
  type metadata accessor for FeedCursorContainer();
  v1[4] = sub_1D7261CEC();
  type metadata accessor for FeedCursorStore.WeakToken();
  sub_1D72627FC();
  v6 = sub_1D7261CEC();
  v7 = MEMORY[0x1E69E7CD0];
  v1[6] = a1;
  v1[7] = v7;
  v1[5] = v6;
  v8 = qword_1EDF37050;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D5B83ADC();
  return v2;
}

uint64_t sub_1D5B839C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5B839FC()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FeedCursorStoreManager();
  v2 = swift_allocObject();
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  result = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  qword_1EDF37058 = v2;
  return result;
}

uint64_t sub_1D5B83ADC()
{
  sub_1D725A76C();
  type metadata accessor for FeedCursorStoreManager.WeakWrapper();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v8 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_21:
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v5 = v8;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v3;
      if (v4 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v0 + 24) = v5;

  swift_beginAccess();

  MEMORY[0x1DA6F9CE0](v6);
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();

  return sub_1D725A77C();
}

uint64_t FeedService.init(feed:cursorFactory:personalizationService:offlineProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(v4 + 32) = *a1;
  *(v4 + 40) = v5;
  *(v4 + 48) = v8;
  *(v4 + 56) = v7;
  *(v4 + 64) = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceState();
  v18 = v6;
  v19 = v5;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  swift_bridgeObjectRetain_n();
  v10 = v8;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  *(v4 + 16) = FeedServiceState.__allocating_init(feed:)(&v18);
  v18 = v6;
  v19 = v5;
  v20 = v12;
  v21 = v13;
  v22 = v9;
  *(v4 + 24) = sub_1D62E3B04(&v18);
  *(v4 + 112) = a2;
  sub_1D5B63F14(a3, v4 + 72);
  sub_1D5B63F14(a4, v4 + 120);
  return v4;
}

uint64_t FeedServiceState.__allocating_init(feed:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  FeedServiceState.init(feed:)(a1);
  return v2;
}

uint64_t FeedServiceState.init(feed:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 32);
  sub_1D62E3B54();
  swift_allocObject();
  *(v1 + 24) = sub_1D725AE2C();
  *(v1 + 32) = v3;
  *(v1 + 40) = *(a1 + 1);
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  type metadata accessor for FeedServiceState.GapState();
  sub_1D725AE8C();
  *(v1 + 16) = sub_1D725AE1C();
  return v1;
}

unint64_t sub_1D5B840B4()
{
  result = qword_1EDF14A38;
  if (!qword_1EDF14A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A38);
  }

  return result;
}

unint64_t sub_1D5B84108()
{
  result = qword_1EDF0D2E8;
  if (!qword_1EDF0D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D2E8);
  }

  return result;
}

uint64_t sub_1D5B84190@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17DC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B84240@<X0>(void *a1@<X8>)
{
  if (qword_1EDF38CD8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_1EDF38CE8;
  *a1 = qword_1EDF38CE0;
  a1[1] = v2;
}

uint64_t sub_1D5B842E8()
{
  result = sub_1D5B84308();
  qword_1EDFFCEE8 = result;
  return result;
}

uint64_t sub_1D5B84308()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D5B86020(MEMORY[0x1E69E7CC0]);
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C278 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v19 == 1)
  {
    sub_1D5B860D0(&v19, 0xD000000000000022, 0x80000001D73CD1A0);

    sub_1D72596DC();
    if (qword_1EC87D550 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v22 = v19;
    sub_1D5BF4D9C();
    v5 = sub_1D7263ACC();

    v17 = v5;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v1 + 8);
      v8 = (v17 + 56);
      do
      {
        v18 = *(v8 - 3);
        v10 = *(v8 - 1);
        v9 = *v8;
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;

        sub_1D7263D4C();

        *&v22 = 0xD00000000000001ALL;
        *(&v22 + 1) = 0x80000001D73CD1D0;
        v19 = v18;
        v20 = v10;
        v21 = v9;
        sub_1D72579DC();
        sub_1D61A0208();
        sub_1D7263A4C();
        (*v7)(v4, v0);

        v11 = sub_1D726210C();
        v12 = v0;
        v14 = v13;

        MEMORY[0x1DA6F9910](v11, v14);
        v0 = v12;

        sub_1D5B860D0(&v19, v22, *(&v22 + 1));

        v8 += 4;
        --v6;
      }

      while (v6);
    }
  }

  return v23;
}

uint64_t sub_1D5B84624()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C280 = result;
  return result;
}

uint64_t sub_1D5B847F0()
{
  result = sub_1D5B84810();
  qword_1EDFFCEF0 = result;
  return result;
}

uint64_t sub_1D5B84810()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5B86020(MEMORY[0x1E69E7CC0]);
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C268 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v16 == 1)
  {
    sub_1D72596DC();
    if (qword_1EC87D560 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v19 = v16;
    sub_1D5BF4D9C();
    v5 = sub_1D7263ACC();

    v15 = v5;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v15 + 56);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v16 = *(v7 - 3);
        v17 = v8;
        v18 = v9;

        sub_1D72579DC();
        sub_1D61A0208();
        sub_1D7263A4C();
        (*(v1 + 8))(v4, v0);

        v10 = sub_1D726210C();
        v12 = v11;

        sub_1D5B860D0(&v16, v10, v12);

        v7 += 4;
        --v6;
      }

      while (v6);
    }
  }

  return v20;
}

uint64_t sub_1D5B84AA8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C270 = result;
  return result;
}

uint64_t sub_1D5B84C74()
{
  v0 = sub_1D725BD1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v32 - v7;
  if (qword_1EDF31F20 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1EDFFCE18 + 16);
  if (v9)
  {
    v10 = qword_1EDFFCE18 + 32;
    v11 = (v1 + 16);
    v12 = (v1 + 8);
    v32[1] = qword_1EDFFCE18;
    v33 = 0x80000001D7402EB0;

    v34 = (v1 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5B68374(v10, v38);
      v13 = v39;
      v14 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v14 + 8))(v13, v14);
      if (qword_1EDF31F58 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v0, qword_1EDFFCE98);
      (*v11)(v4, v15, v0);
      sub_1D5B854B0();
      v16 = sub_1D7261F5C();
      v17 = *v12;
      (*v12)(v4, v0);
      v17(v8, v0);
      if (v16)
      {
        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1D7263D4C();

        v36 = 0xD000000000000017;
        v37 = v33;
        v18 = v39;
        v19 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v19 + 16))(v18, v19);
        v20 = sub_1D726210C();
        v22 = v21;

        MEMORY[0x1DA6F9910](v20, v22);

        v23 = v36;
        v24 = v37;
        __swift_destroy_boxed_opaque_existential_1(v38);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = v35;
        }

        else
        {
          v25 = sub_1D5B858EC(0, *(v35 + 2) + 1, 1, v35);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1D5B858EC((v26 > 1), v27 + 1, 1, v25);
        }

        *(v25 + 2) = v27 + 1;
        v35 = v25;
        v28 = &v25[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v24;
        v11 = v34;
      }

      v10 += 40;
      --v9;
    }

    while (v9);

    v29 = v35;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1D5B86020(v29);

  qword_1EDFFCC88 = v30;
  return result;
}

void *sub_1D5B85000()
{
  if (qword_1EDF31F18 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFCE10;
  v1 = qword_1EDF31EC0;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1D5B85348(v2);
  qword_1EDFFCE18 = v0;
  return result;
}

void sub_1D5B850B8()
{
  if (!qword_1EDF198F8)
  {
    sub_1D5B483C4(255, &qword_1EDF331B0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF198F8);
    }
  }
}

double sub_1D5B85124()
{
  sub_1D5B850B8();
  v0 = swift_allocObject();
  *&result = 19;
  *(v0 + 16) = xmmword_1D73B32A0;
  *(v0 + 56) = &type metadata for FormatVersions.JazzkonC;
  *(v0 + 64) = &off_1F51F6C78;
  *(v0 + 96) = &type metadata for FormatVersions.JazzkonG;
  *(v0 + 104) = &off_1F51F6BF8;
  *(v0 + 136) = &type metadata for FormatVersions.Azden;
  *(v0 + 144) = &off_1F51F6B78;
  *(v0 + 176) = &type metadata for FormatVersions.AzdenB;
  *(v0 + 184) = &off_1F51F6AD8;
  *(v0 + 216) = &type metadata for FormatVersions.AzdenC;
  *(v0 + 224) = &off_1F51F6BB8;
  *(v0 + 256) = &type metadata for FormatVersions.AzdenE;
  *(v0 + 264) = &off_1F51F6C18;
  *(v0 + 296) = &type metadata for FormatVersions.StarSky;
  *(v0 + 304) = &off_1F51F6CD8;
  *(v0 + 336) = &type metadata for FormatVersions.StarSkyC;
  *(v0 + 344) = &off_1F51F6B18;
  *(v0 + 376) = &type metadata for FormatVersions.StarSkyE;
  *(v0 + 384) = &off_1F51F6CB8;
  *(v0 + 416) = &type metadata for FormatVersions.Sydro;
  *(v0 + 424) = &off_1F51F6C38;
  *(v0 + 456) = &type metadata for FormatVersions.SydroC;
  *(v0 + 464) = &off_1F51F6A98;
  *(v0 + 496) = &type metadata for FormatVersions.SydroF;
  *(v0 + 504) = &off_1F51F6C58;
  *(v0 + 536) = &type metadata for FormatVersions.Dawnburst;
  *(v0 + 544) = &off_1F51F6CF8;
  *(v0 + 576) = &type metadata for FormatVersions.DawnburstC;
  *(v0 + 584) = &off_1F51F6B98;
  *(v0 + 616) = &type metadata for FormatVersions.DawnburstF;
  *(v0 + 624) = &off_1F51F6BD8;
  *(v0 + 656) = &type metadata for FormatVersions.CrystalGlow;
  *(v0 + 664) = &off_1F51F6B38;
  *(v0 + 696) = &type metadata for FormatVersions.CrystalGlowC;
  *(v0 + 704) = &off_1F51F6AF8;
  *(v0 + 736) = &type metadata for FormatVersions.CrystalGlowE;
  *(v0 + 744) = &off_1F51F6C98;
  *(v0 + 776) = &type metadata for FormatVersions.CrystalGlowG;
  *(v0 + 784) = &off_1F51F6B58;
  qword_1EDFFCE10 = v0;
  return result;
}

double sub_1D5B852F8()
{
  sub_1D5B850B8();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1D7273AE0;
  *(v0 + 56) = &type metadata for FormatVersions.LuckCheer;
  *(v0 + 64) = &off_1F51F6AB8;
  qword_1EDFFCD48 = v0;
  return result;
}

uint64_t sub_1D5B853A8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D725BD1C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D5B85444(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D725BD2C();
}

unint64_t sub_1D5B854B0()
{
  result = qword_1EDF43A50;
  if (!qword_1EDF43A50)
  {
    sub_1D725BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43A50);
  }

  return result;
}

void sub_1D5B85738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D5B8579C(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D5B483C4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D5B858EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D5B85A10(void *result, void (*a2)(void), unint64_t *a3)
{
  v4 = result[2];
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= v5[3] >> 1)
  {
    if (v10[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v14 = v6 + v4;
  }

  else
  {
    v14 = v6;
  }

  result = sub_1D5B8579C(result, v14, 1, v5, a2, a3);
  v5 = result;
  if (!v10[2])
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v5[3] >> 1) - v5[2] < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D5B483C4(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v11 = v5[2];
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    v5[2] = v13;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D5B85B50()
{
  sub_1D5B5C16C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v4, qword_1EDF3CAA0);
  v5 = __swift_project_value_buffer(v4, qword_1EDF3CAA0);
  type metadata accessor for FormatJSONDecoder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1D725BD5C();
  v8 = *(v4 - 8);
  result = (*(v8 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v8 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void *sub_1D5B85CC4(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D5B483C4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5B85E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B85FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B86020(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6FA1E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D5B860D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D5B860D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();
  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D5B7E44C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D5B8624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else if ((*(a1 + *(a3 + 32)) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 32)) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5B8630C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6, uint64_t a7)
{
  v126 = a7;
  v139 = a6;
  v135 = a4;
  v142 = a3;
  v140 = a2;
  v136 = a1;
  sub_1D5B5D924(0, &qword_1EDF33290, type metadata accessor for BundleSession);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v141 = &v124 - v10;
  v138 = type metadata accessor for BundleSession();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v11);
  v125 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D725891C();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v13);
  v131 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D924(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v130 = &v124 - v17;
  sub_1D5B5D924(0, &qword_1EDF3C388, MEMORY[0x1E6969680]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v124 - v20;
  v127 = sub_1D7258A8C();
  v22 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v23);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D7258AAC();
  v26 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v27);
  v29 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v124 - v32;
  sub_1D5B5D924(0, &qword_1EDF3C390, MEMORY[0x1E6969610]);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v124 - v36;
  v132 = *a5;
  sub_1D5B49E48(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D72AACF0;
  strcpy(v144, "platform-");
  WORD1(v144[1]) = 0;
  HIDWORD(v144[1]) = -385875968;
  v39 = [objc_opt_self() currentDevice];
  v40 = [v39 userInterfaceIdiom];

  v129 = v21;
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v41 = 0xE200000000000000;
      v42 = 30324;
      goto LABEL_15;
    }

    if (v40 != 3)
    {
      if (v40 == 5)
      {
        v41 = 0xE300000000000000;
        v42 = 6513005;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v41 = 0xE700000000000000;
    v42 = 0x79616C50726163;
  }

  else
  {
    if (v40 == -1)
    {
      v41 = 0xEB00000000646569;
      v42 = 0x6669636570736E75;
      goto LABEL_15;
    }

    if (v40)
    {
      if (v40 == 1)
      {
        v41 = 0xE300000000000000;
        v42 = 6578544;
        goto LABEL_15;
      }

LABEL_12:
      v41 = 0xE700000000000000;
      v42 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    }

    v41 = 0xE500000000000000;
    v42 = 0x656E6F6870;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](v42, v41);

  v43 = v144[1];
  *(inited + 32) = v144[0];
  *(inited + 40) = v43;
  v144[0] = 0;
  v144[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v144[0] = 0xD000000000000019;
  v144[1] = 0x80000001D73CD1F0;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    v44 = 0x6C616E7265746E69;
  }

  else
  {
    v44 = 0x6C616E7265747865;
  }

  MEMORY[0x1DA6F9910](v44, 0xE800000000000000);

  v45 = v144[1];
  *(inited + 48) = v144[0];
  *(inited + 56) = v45;
  v144[0] = 0x2D676E616CLL;
  v144[1] = 0xE500000000000000;
  sub_1D7258A4C();
  sub_1D7258A9C();
  v46 = *(v26 + 8);
  v47 = v128;
  v46(v33, v128);
  sub_1D7258A5C();
  (*(v22 + 8))(v25, v127);
  v48 = sub_1D72589AC();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v37, 1, v48) == 1)
  {
    sub_1D5BFC618(v37, &qword_1EDF3C390, MEMORY[0x1E6969610]);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = sub_1D725899C();
    v51 = v53;
    (*(v49 + 8))(v37, v48);
    v50 = v52;
  }

  v54 = v129;
  MEMORY[0x1DA6F9910](v50, v51);

  v55 = sub_1D726210C();
  v57 = v56;

  *(inited + 64) = v55;
  *(inited + 72) = v57;
  strcpy(v144, "region-");
  v144[1] = 0xE700000000000000;
  sub_1D7258A4C();
  sub_1D7258A3C();
  v46(v29, v47);
  v58 = sub_1D7258A2C();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 48))(v54, 1, v58);
  v61 = v130;
  if (v60 == 1)
  {
    sub_1D5BFC618(v54, &qword_1EDF3C388, MEMORY[0x1E6969680]);
    v62 = 0;
    v63 = 0xE000000000000000;
  }

  else
  {
    v64 = sub_1D725899C();
    v63 = v65;
    (*(v59 + 8))(v54, v58);
    v62 = v64;
  }

  MEMORY[0x1DA6F9910](v62, v63);

  v66 = sub_1D726210C();
  v68 = v67;

  *(inited + 80) = v66;
  *(inited + 88) = v68;
  strcpy(v144, "app-version-");
  BYTE5(v144[1]) = 0;
  HIWORD(v144[1]) = -5120;
  v69 = objc_opt_self();
  v70 = [v69 mainBundle];
  sub_1D725BD5C();
  v71 = sub_1D725BD1C();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v61, 1, v71) == 1)
  {
    v73 = 0x6E776F6E6B6E75;
    sub_1D5BFC618(v61, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v74 = 0xE700000000000000;
  }

  else
  {
    v73 = sub_1D725BC9C();
    v74 = v75;
    (*(v72 + 8))(v61, v71);
  }

  MEMORY[0x1DA6F9910](v73, v74);

  v76 = sub_1D726210C();
  v78 = v77;

  *(inited + 96) = v76;
  *(inited + 104) = v78;
  strcpy(v144, "app-build-");
  BYTE3(v144[1]) = 0;
  HIDWORD(v144[1]) = -369098752;
  v79 = [v69 mainBundle];
  v80 = sub_1D72636BC();
  v82 = v81;

  MEMORY[0x1DA6F9910](v80, v82);

  v83 = sub_1D726210C();
  v85 = v84;

  *(inited + 112) = v83;
  *(inited + 120) = v85;
  v86 = 0xE000000000000000;
  v144[0] = 0;
  v144[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v144[0] = 0x762D74616D726F66;
  v144[1] = 0xEF2D6E6F69737265;
  if (qword_1EDF3CA50 != -1)
  {
LABEL_71:
    swift_once();
  }

  __swift_project_value_buffer(v71, qword_1EDF3CA58);
  v87 = sub_1D725BC9C();
  MEMORY[0x1DA6F9910](v87);

  v88 = v144[1];
  *(inited + 128) = v144[0];
  *(inited + 136) = v88;
  v144[0] = 0;
  v144[1] = v86;
  sub_1D7263D4C();

  v144[0] = 0xD000000000000013;
  v144[1] = 0x80000001D73CD210;
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v71, qword_1EDF3CAA0);
  v89 = sub_1D725BC9C();
  MEMORY[0x1DA6F9910](v89);

  v90 = v144[1];
  *(inited + 144) = v144[0];
  *(inited + 152) = v90;
  v91 = sub_1D5B86020(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v145 = v91;
  if (qword_1EDF34D10 != -1)
  {
    swift_once();
  }

  sub_1D5B886D0(v92);
  if (qword_1EDF34D18 != -1)
  {
    swift_once();
  }

  sub_1D5B886D0(v93);
  if (qword_1EDF31E68 != -1)
  {
    swift_once();
  }

  sub_1D5B886D0(v94);
  v95 = v131;
  sub_1D725890C();
  v96 = sub_1D5BFAE14();
  (*(v133 + 8))(v95, v134);
  v97 = sub_1D5B86020(v96);

  sub_1D5B886D0(v97);
  if (v135)
  {
    v98 = sub_1D5C379E4();
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
  }

  v99 = v136;
  sub_1D5B87D50(v98);

  v100 = [v99 unprotectedSubscriptionState];
  if (v100 > 1)
  {
    if (v100 == 2)
    {
      v103 = "bundle-subscription-expired";
      goto LABEL_49;
    }

    if (v100 == 3)
    {
      v101 = "bundle-subscription-expired";
      v102 = 0xD000000000000022;
      goto LABEL_50;
    }
  }

  else
  {
    if (!v100)
    {
      v101 = "selectors";
      v102 = 0xD000000000000019;
      goto LABEL_50;
    }

    if (v100 == 1)
    {
      v101 = "ion-not-subscribed";
      v102 = 0xD00000000000001ELL;
      goto LABEL_50;
    }
  }

  v103 = "bundle-subscription-unknown";
LABEL_49:
  v101 = (v103 - 32);
  v102 = 0xD00000000000001BLL;
LABEL_50:
  sub_1D5B860D0(v144, v102, v101 | 0x8000000000000000);

  if (v132)
  {
    v104 = &unk_1F50F5558;
  }

  else
  {
    v104 = &unk_1F50F5528;
  }

  if (v132)
  {
    v105 = &unk_1F50F5578;
  }

  else
  {
    v105 = &unk_1F50F5548;
  }

  v106 = sub_1D5BFAC38(v104);
  sub_1D5BFB68C(v105);
  sub_1D5B886D0(v106);
  v107 = v139[3];
  v108 = v139[4];
  __swift_project_boxed_opaque_existential_1(v139, v107);
  v109 = (*(v108 + 16))(v107, v108);
  sub_1D5B886D0(v109);
  v110 = v141;
  sub_1D5B8866C(v140, v141);
  if ((*(v137 + 48))(v110, 1, v138) == 1)
  {
    sub_1D5BFC618(v110, &qword_1EDF33290, type metadata accessor for BundleSession);
  }

  else
  {
    v111 = v110;
    v112 = v125;
    sub_1D5E31B7C(v111, v125);
    v113 = sub_1D6AB8834();
    sub_1D5B886D0(v113);
    sub_1D61A025C(v112, type metadata accessor for BundleSession);
  }

  v114 = v142 + 56;
  v115 = 1 << *(v142 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & *(v142 + 56);
  v118 = (v115 + 63) >> 6;

  v86 = 0;
  inited = MEMORY[0x1E69E72F0];
  v71 = MEMORY[0x1E69E7340];
  if (v117)
  {
    while (1)
    {
      v119 = v86;
LABEL_67:
      v120 = *(*(v142 + 48) + ((v119 << 8) | (4 * __clz(__rbit64(v117)))));
      v117 &= v117 - 1;
      v144[0] = 0;
      v144[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v144[0] = 0xD000000000000010;
      v144[1] = 0x80000001D73CD250;
      v143 = v120;
      v121 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v121);

      sub_1D5B860D0(v144, v144[0], v144[1]);

      if (!v117)
      {
        goto LABEL_63;
      }
    }
  }

  while (1)
  {
LABEL_63:
    v119 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v119 >= v118)
    {
      break;
    }

    v117 = *(v114 + 8 * v119);
    ++v86;
    if (v117)
    {
      v86 = v119;
      goto LABEL_67;
    }
  }

  sub_1D5B886D0(v122);
  return v145;
}

void sub_1D5B87494(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7263CEC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D5B874E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1D7262C2C();
  if (!v22)
  {
    return sub_1D726275C();
  }

  v44 = v22;
  v48 = sub_1D7263F0C();
  v35 = sub_1D7263F1C();
  sub_1D7263EBC();
  result = sub_1D7262BFC();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1D7262D0C();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1D7263EFC();
      result = sub_1D7262C6C();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5B87904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B87964(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B320(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B879C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B374(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B87A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B7B698(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87AEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B6FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BFCA08(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D70BB9D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B7A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87C84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B55010(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B7B7F8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B87D50(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1D5B860D0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1D5B87DC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1D5B87E40@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char **a3@<X8>)
{
  v4 = v3;
  v75 = *v4;
  sub_1D5B76C1C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v69[-v14];
  v79 = *a2;
  v16 = *(v4 + 40);
  v17 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = [*(v4 + 64) cachedSubscription];
  v20 = *(v4 + 96);
  v21 = *(v4 + 104);
  __swift_project_boxed_opaque_existential_1((v4 + 72), v20);
  v22 = *(v21 + 8);
  v81 = v15;
  v22(v20, v21);
  v23 = [v19 isSubscribed];
  v24 = &selRef_isFreeBadgeEnabledForSubscribers;
  if (!v23)
  {
    v24 = &selRef_isFreeBadgeEnabledForNonSubscribers;
  }

  v78 = [v18 *v24];
  v73 = v19;
  v25 = [v19 isSubscribed];
  v26 = &selRef_isPaidBadgeEnabledForSubscribers;
  if (!v25)
  {
    v26 = &selRef_isPaidBadgeEnabledForNonSubscribers;
  }

  v27 = *v26;
  v80 = v18;
  v77 = [v18 v27];
  v28 = [objc_opt_self() mainBundle];
  v29 = [v28 bundleIdentifier];

  if (!v29)
  {
    v76 = 0;
    goto LABEL_13;
  }

  v30 = sub_1D726207C();
  v32 = v31;

  if (v30 == 0xD000000000000010 && 0x80000001D73E7810 == v32)
  {

LABEL_11:
    v34 = *(v4 + 136);
    v35 = *(v4 + 144);
    __swift_project_boxed_opaque_existential_1((v4 + 112), v34);
    v76 = (*(v35 + 32))(v34, v35);
    goto LABEL_13;
  }

  v33 = sub_1D72646CC();

  if (v33)
  {
    goto LABEL_11;
  }

  v76 = 0;
LABEL_13:
  v90 = a1;
  v36 = *(v4 + 136);
  v37 = *(v4 + 144);
  __swift_project_boxed_opaque_existential_1((v4 + 112), v36);
  v38 = *(v37 + 176);

  if (v38(v36, v37))
  {
    sub_1D5B860D0(&v87, 0xD000000000000016, 0x80000001D73EB430);
  }

  v39 = *(v4 + 136);
  v40 = *(v4 + 144);
  __swift_project_boxed_opaque_existential_1((v4 + 112), v39);
  if ((*(v40 + 200))(v39, v40))
  {
    sub_1D5B860D0(&v87, 0x2D65727574616566, 0xEC000000646F6F66);
  }

  if (*(v4 + 248))
  {
    sub_1D5BA9A04();
    sub_1D5B886D0(v41);
  }

  sub_1D5B8866C(v81, v11);
  v42 = v11;
  if (qword_1EDF3C2C0 != -1)
  {
    swift_once();
  }

  sub_1D5B9D7E8();
  sub_1D725964C();
  v70 = v89;
  v43 = *(v4 + 176);
  v44 = *(v4 + 184);
  __swift_project_boxed_opaque_existential_1((v4 + 152), v43);
  v72 = (*(v44 + 8))(v43, v44);
  v46 = *(v4 + 192);
  v45 = *(v4 + 200);
  v47 = *(v4 + 176);
  v48 = *(v4 + 184);
  __swift_project_boxed_opaque_existential_1((v4 + 152), v47);
  v49 = *(v48 + 16);
  v75 = v46;
  v74 = v45;
  sub_1D5B7CD94(v46, v45);
  v50 = v49(v47, v48);
  v51 = *(v4 + 176);
  v52 = *(v4 + 184);
  __swift_project_boxed_opaque_existential_1((v4 + 152), v51);
  (*(v52 + 24))(&v88, v51, v52);
  v71 = v88;
  sub_1D5B68374(v4 + 208, &v87);
  v53 = v90;
  v54 = v73;
  *a3 = v73;
  v55 = type metadata accessor for FeedContext();
  sub_1D5B8866C(v42, a3 + v55[5]);
  v56 = v54;
  v57 = objc_getAssociatedObject(v56, v54 + 1);
  v58 = v42;
  if (v57)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  if (!*(&v84 + 1))
  {
    sub_1D5B88CA0(&v85, sub_1D5BE1404);
    goto LABEL_29;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v59 = 0;
    v60 = 0;
    goto LABEL_30;
  }

  v59 = v82;
  v60 = [v82 integerValue];
  if (v60 == -1)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (objc_getAssociatedObject(v56, ~v60))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  if (!*(&v84 + 1))
  {
    sub_1D5B88CA0(&v85, sub_1D5BE1404);
    goto LABEL_37;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    v63 = -99;
    goto LABEL_38;
  }

  v61 = v82;
  v62 = [v61 integerValue];

  v63 = v62 - 99;
LABEL_38:
  *(a3 + v55[6]) = ((v63 ^ v60) & 1) == 0;
  *(a3 + v55[7]) = v78;
  *(a3 + v55[8]) = v77;
  *(a3 + v55[9]) = v70;
  LOBYTE(v85) = v79;
  v64 = v72;
  v65 = sub_1D5B8630C(v56, v58, v72, v50, &v85, &v87, v53);

  __swift_destroy_boxed_opaque_existential_1(&v87);
  sub_1D5B88CA0(v58, sub_1D5B76C1C);
  sub_1D5B88CA0(v81, sub_1D5B76C1C);
  *(a3 + v55[10]) = v65;
  *(a3 + v55[11]) = v64;
  v66 = (a3 + v55[12]);
  v67 = v74;
  *v66 = v75;
  v66[1] = v67;
  *(a3 + v55[13]) = v76 & 1;
  *(a3 + v55[14]) = v50;
  result = *&v71;
  *(a3 + v55[15]) = v71;
  return result;
}

uint64_t sub_1D5B8866C(uint64_t a1, uint64_t a2)
{
  sub_1D5B76C1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5B886D0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1D5B860D0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D5B887D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF1A590);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D5B88A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5B88AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5B88B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88B60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B49DF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B88BD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D67B3544(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B88C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88D00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6C78BE4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5B88D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5B88E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B88EF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D71337A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FeedUserInfo.contextSelectors.getter()
{
  v10 = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + 16);
  v2 = [v1 progressivePersonalization];
  if (!v2)
  {
    v3 = "user-info-sports-onboarded";
    v4 = 0xD00000000000002DLL;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = "ssive-personalization-unknown";
    v4 = 0xD00000000000002FLL;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = "ssive-personalization-opted-out";
    v4 = 0xD00000000000002ELL;
LABEL_7:
    sub_1D5B860D0(&v9, v4, v3 | 0x8000000000000000);
  }

  if ([v1 sportsSyncState] != 2 || (v5 = objc_msgSend(v1, sel_sportsOnboardingState)) == 0)
  {
    v7 = 0xD00000000000001ELL;
    v6 = 0x80000001D73D8C10;
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v6 = 0x80000001D73D8C30;
    v7 = 0xD00000000000001ALL;
LABEL_13:
    sub_1D5B860D0(&v9, v7, v6);
  }

  return v10;
}

uint64_t sub_1D5B890A4()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EDF3CA58);
  v1 = __swift_project_value_buffer(v0, qword_1EDF3CA58);
  return sub_1D5B890F0(v1);
}

uint64_t sub_1D5B890F0@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B5C16C(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B20 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v13[15] == 1)
  {
    if (qword_1EDF3CA78 != -1)
    {
      swift_once();
    }

    v8 = sub_1D725BD1C();
    __swift_project_value_buffer(v8, qword_1EDF3CA80);
    sub_1D725BCFC();
    v9 = sub_1D725B17C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    return sub_1D725BCEC();
  }

  else
  {
    if (qword_1EDF3CA78 != -1)
    {
      swift_once();
    }

    v11 = sub_1D725BD1C();
    v12 = __swift_project_value_buffer(v11, qword_1EDF3CA80);
    return (*(*(v11 - 8) + 16))(a1, v12, v11);
  }
}

uint64_t sub_1D5B89340()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF43B28 = result;
  return result;
}

uint64_t sub_1D5B8950C()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EDF3CA80);
  v1 = __swift_project_value_buffer(v0, qword_1EDF3CA80);
  if (qword_1EDF1BC00 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDFFC838);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D5B895D4()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EDFFC838);
  __swift_project_value_buffer(v0, qword_1EDFFC838);
  return sub_1D725BD2C();
}

uint64_t sub_1D5B8962C()
{
  sub_1D5B8AAA8(0, &qword_1EDF3B3E8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B8AAA8(0, &unk_1EDF3B250, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ACE0 = result;
  return result;
}

uint64_t sub_1D5B89764()
{
  sub_1D5B7E34C(0, &qword_1EDF16E00, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7E34C(0, &qword_1EDF16DD0, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169B0 = result;
  return result;
}

unint64_t sub_1D5B89968()
{
  result = qword_1EDF1B5C0;
  if (!qword_1EDF1B5C0)
  {
    sub_1D5B679FC(255, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B5C0);
  }

  return result;
}

uint64_t sub_1D5B89A08(uint64_t a1)
{
  v2 = type metadata accessor for FeedServiceOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5B89A64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53C80(0, &qword_1EDF439F0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], MEMORY[0x1E69E6720]);
  result = sub_1D725AA8C();
  if (*(&v5 + 1) == 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
  }

  return result;
}

uint64_t sub_1D5B89B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EC87F778);
  result = sub_1D725AACC();
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = sub_1D7260D3C();
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B5534C(0, &qword_1EDF439C0);
    result = sub_1D725AABC();
    if (result)
    {
      v6 = type metadata accessor for StubImageProcessor();
      v7 = swift_allocObject();
      v11 = v6;
      v12 = sub_1D5B471E8(&unk_1EC87F780, 255, type metadata accessor for StubImageProcessor);
      v10[0] = v7;
      [objc_allocWithZone(type metadata accessor for StubImageDownloader()) init];
      sub_1D5B471E8(&unk_1EC87F680, 255, type metadata accessor for StubImageDownloader);
      v8 = sub_1D725CA3C();
      swift_allocObject();
      result = sub_1D725CA2C();
      v9 = MEMORY[0x1E69D7580];
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      *a2 = result;
      return result;
    }

    goto LABEL_8;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D5B89D40@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0);
  result = sub_1D725AABC();
  if (result)
  {
    a2(0);
    swift_allocObject();
    sub_1D5B471E8(a3, 255, a4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF439C8);
    result = sub_1D725AACC();
    if (v13)
    {
      v11 = sub_1D725CA3C();
      swift_allocObject();
      result = sub_1D725CA2C();
      v12 = MEMORY[0x1E69D7580];
      a5[3] = v11;
      a5[4] = v12;
      *a5 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5B89EAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0);
  if (sub_1D725AA7C() || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (result = sub_1D725AABC()) != 0))
  {
    sub_1D725E09C();
    swift_allocObject();
    v5 = sub_1D725E08C();
    type metadata accessor for FormatImageProcessor();
    *(swift_allocObject() + 16) = v5;
    sub_1D5B471E8(&qword_1EDF2B098, 255, type metadata accessor for FormatImageProcessor);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF439C8);
    result = sub_1D725AACC();
    if (v8)
    {
      v6 = sub_1D725CA3C();
      swift_allocObject();
      result = sub_1D725CA2C();
      v7 = MEMORY[0x1E69D7580];
      a2[3] = v6;
      a2[4] = v7;
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5B8A0B4()
{
  sub_1D5B7FEF4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8AB44();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D50 = result;
  return result;
}

unint64_t sub_1D5B8A1B8()
{
  result = qword_1EDF0E9F0;
  if (!qword_1EDF0E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E9F0);
  }

  return result;
}

uint64_t sub_1D5B8A20C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

unint64_t UserActionObservationManager.add(monitor:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DisposableMonitor();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v7 + 24) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  MEMORY[0x1DA6F9CE0](v8);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  a2[3] = v6;
  result = sub_1D5B91118();
  a2[4] = result;
  *a2 = v7;
  return result;
}

void *sub_1D5B8A3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1D725B42C();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1D5B78854(&unk_1EDF3BAF0, 255, MEMORY[0x1E69D67A0]);
  sub_1D5B64F48(0);
  sub_1D5B78854(&qword_1EDF1B580, 255, sub_1D5B64F48);
  sub_1D7263B6C();
  sub_1D5B8A5F4();
  swift_allocObject();
  v3[4] = sub_1D725AD1C();
  v11[0] = 0;
  sub_1D5B5F744(0, &qword_1EDF17AC0, sub_1D5B91FD4, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v3[5] = sub_1D725B94C();
  v3[2] = a1;
  v3[3] = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1D5B78854(&qword_1EDF0B2B0, v9, type metadata accessor for SportsTaxonomyGraphManager);
  swift_unknownObjectRetain();

  sub_1D725B54C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v3;
}

void sub_1D5B8A5F4()
{
  if (!qword_1EDF17C70)
  {
    type metadata accessor for SportsTaxonomyGraph();
    v0 = sub_1D725AD3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C70);
    }
  }
}

uint64_t sub_1D5B8A6C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17C78 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17C80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *FeedDatabase.init(log:feedCursorFactory:feedGroupProcessor:lazyDatabase:referenceService:saveJournalEntries:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *v6;
  v10 = sub_1D5B8DC0C(a1, a2, a3, a4, a5, a6);

  (*(*(*(v9 + 88) - 8) + 8))(a3);

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D5B8A814(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorTrackerSnapshot();
  v2 = sub_1D726393C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1D725B98C();
  (*(v3 + 16))(v6, a1, v2);
  return sub_1D725B93C();
}

uint64_t sub_1D5B8A954(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5B8A99C()
{
  result = qword_1EDF3BDF0;
  if (!qword_1EDF3BDF0)
  {
    sub_1D725A79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BDF0);
  }

  return result;
}

uint64_t sub_1D5B8A9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D5B8AAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RecipeCommandContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B8AB44()
{
  if (!qword_1EDF17288)
  {
    sub_1D5B65AF4();
    sub_1D5B8A1B8();
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17288);
    }
  }
}

uint64_t sub_1D5B8ABB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t FeedGroupKnobsRuleValue.init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 112), a1);
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t sub_1D5B8AD04()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16BE8 = result;
  return result;
}

uint64_t sub_1D5B8AE58()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B28 = result;
  return result;
}

void sub_1D5B8AFAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B5A664(255, a3, a4, type metadata accessor for AudioCommandContext);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5B8B028@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t, char *)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FD00);
  result = sub_1D725AACC();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &unk_1EDF3BAC8);
    result = sub_1D725AACC();
    if (v14)
    {
      v10 = a2(0);
      swift_allocObject();
      v11 = a3(v15, v16, v13);
      result = swift_unknownObjectRelease();
      a5[3] = v10;
      a5[4] = a4;
      *a5 = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5B8B1A8()
{
  if (!qword_1EDF17C68)
  {
    v0 = sub_1D725AD3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C68);
    }
  }
}

uint64_t sub_1D5B8B26C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17CC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_1D5B8B394(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v43 = a3;
  v45 = *a1;
  v8 = sub_1D725891C();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v45 + 96);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v37 - v16;
  sub_1D5B8B8F8(v37 - v16);
  if (!v4)
  {
    v40 = v8;
    v41 = v11;
    v18 = (*(*(*a1 + 112) + 24))(a2, *(*a1 + 88));
    v19 = *(*(v45 + 120) + 56);
    v42 = a2;
    v20 = v19(a2, v18, v12);
    (*(v13 + 8))(v17, v12);

    v39 = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v37[2] = swift_getAssociatedConformanceWitness();
    v23 = v41;
    FeedCursorContainer.createdDate.getter(v20, v41);
    v24 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = FeedServiceContextType.shouldRefreshRootCursor(createdDate:)(v23, v24, AssociatedConformanceWitness);
    v26 = *(v44 + 8);
    v27 = v40;
    v26(v23, v40);
    v44 = a1[6];
    sub_1D5C384A0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7270C10;
    v45 = v20;
    v37[1] = AssociatedTypeWitness;
    FeedCursorContainer.createdDate.getter(v20, v23);
    sub_1D5C44ED8();
    v29 = sub_1D72644BC();
    v31 = v30;
    v26(v23, v27);
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1D5B7E2C0();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v32 = CACurrentMediaTime();
    v33 = MEMORY[0x1E69E6438];
    *(v28 + 96) = MEMORY[0x1E69E63B0];
    *(v28 + 104) = v33;
    *(v28 + 72) = (v32 - a4) * 1000.0;
    sub_1D7262EDC();
    if (v38)
    {
      sub_1D725C30C();

      LOBYTE(v46[0]) = 2;
      sub_1D5C44F30();
      sub_1D725AE7C();
      v34 = v43;
      swift_beginAccess();
      v35 = *(v34 + 16);
      v36 = v45;
      *(v34 + 16) = v45;

      sub_1D5BD9F54(v35);
      v11 = sub_1D6063628(v36, v42);
    }

    else
    {
      sub_1D725C30C();

      LOBYTE(v46[0]) = 1;
      sub_1D5C44F30();
      sub_1D725AE7C();
      type metadata accessor for FeedLocation();
      sub_1D725BC0C();
      sub_1D5C45010(v45, v46);
      v11 = sub_1D725BB0C();
    }
  }

  return v11;
}

uint64_t sub_1D5B8B8F8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FeedServiceOptions(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v9 = swift_checkMetadataState();
  v8(v9, AssociatedConformanceWitness);
  v10 = v6[*(v3 + 36)];
  sub_1D5B89A08(v6);
  v13 = v10;
  return sub_1D5B98350(&v13, a1);
}

unint64_t sub_1D5B8BAC4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D5B8BB30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D5B808F0(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t FeedClusteringService.init(cloudContext:allowlistProvider:personalizationService:topicClusteringJournalStorageService:tagService:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D5B63F14(a3, v5 + 32);
  sub_1D5B63F14(a4, v5 + 72);
  sub_1D5B63F14(a5, v5 + 112);
  return v5;
}

uint64_t FeedDatabase.readRootCursor(context:state:)(uint64_t a1, uint64_t a2)
{
  v6 = CACurrentMediaTime();
  v7 = sub_1D5B81F5C();
  if (!v3)
  {
    v8 = v7;
    sub_1D7262EDC();
    sub_1D725C30C();
    v2 = sub_1D5BA006C(a1, a2, v8, 0);
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7279970;
    v10 = sub_1D5BFB900(v2);
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1D5B7E2C0();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    FeedCursorContainer.kind.getter(v2, &v21);
    if (v21 <= 2u)
    {
      if (v21)
      {
        v14 = MEMORY[0x1E69E6158];
        if (v21 == 1)
        {
          v15 = 0xE400000000000000;
          v16 = 1852138835;
        }

        else
        {
          v15 = 0xE600000000000000;
          v16 = 0x6E657A6F7246;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x657669746341;
        v14 = MEMORY[0x1E69E6158];
      }
    }

    else if (v21 > 4u)
    {
      v14 = MEMORY[0x1E69E6158];
      v15 = 0xE800000000000000;
      if (v21 == 5)
      {
        v18 = 0x6C6F6F706552;
      }

      else
      {
        v18 = 0x646E61707845;
      }

      v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else
    {
      v14 = MEMORY[0x1E69E6158];
      if (v21 == 3)
      {
        v15 = 0xEB00000000646565;
        v16 = 0x4620666F20646E45;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x646568636143;
      }
    }

    *(v9 + 96) = v14;
    *(v9 + 104) = v13;
    *(v9 + 72) = v16;
    *(v9 + 80) = v15;

    v19 = CACurrentMediaTime();
    v20 = MEMORY[0x1E69E6438];
    *(v9 + 136) = MEMORY[0x1E69E63B0];
    *(v9 + 144) = v20;
    *(v9 + 112) = (v19 - v6) * 1000.0;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  return v2;
}

uint64_t sub_1D5B8C228()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B8C298()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1D6DBEA70;
  }

  else
  {

    v4 = sub_1D5B8EDD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

char *sub_1D5B8C3F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF3C5D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D5B8C520(char *a1, int64_t a2, char a3)
{
  result = sub_1D5B8C3F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D5B8C540()
{
  sub_1D5B8F4F0(0, &qword_1EDF16E08, sub_1D5B90088, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B8F4F0(0, &qword_1EDF16DD8, sub_1D5B90088, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16C40 = result;
  return result;
}

uint64_t sub_1D5B8C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B8F554(0, &unk_1EDF16E18, a3, type metadata accessor for Commands.RemoveIssues.Prompt, MEMORY[0x1E69D8788]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  sub_1D5B8F554(0, &qword_1EDF16DE8, v9, type metadata accessor for Commands.RemoveIssues.Prompt, MEMORY[0x1E69D8790]);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D8780], v4);
  result = sub_1D725F7CC();
  qword_1EDF16C60 = result;
  return result;
}

uint64_t sub_1D5B8C854()
{
  sub_1D5B67084(0, &unk_1EDF3B360, &type metadata for OpenSportEventContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B67084(0, &unk_1EDF3B1F8, &type metadata for OpenSportEventContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AD40 = result;
  return result;
}

uint64_t sub_1D5B8C99C()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A70 = result;
  return result;
}

id OfflineManager.onStateChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EC894F50);
  v4 = *(v2 + qword_1EC894F50);
  *v3 = a1;
  v3[1] = a2;
  sub_1D5B74328(v4);

  return v6;
}

uint64_t sub_1D5B8CB78()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A30 = result;
  return result;
}

uint64_t sub_1D5B8CCA8()
{
  v0 = MEMORY[0x1E69E63B0];
  sub_1D5B8AFAC(0, &unk_1EDF3B410, qword_1EDF2D048, MEMORY[0x1E69E63B0], MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B8AFAC(0, &unk_1EDF3B280, qword_1EDF2D048, v0, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EDF3AF08 = result;
  return result;
}

uint64_t sub_1D5B8CE20()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B70 = result;
  return result;
}

uint64_t sub_1D5B8CF74()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16AD8 = result;
  return result;
}

uint64_t sub_1D5B8D0EC()
{
  sub_1D5B7DF00(0, &qword_1EDF3B3A8, type metadata accessor for FeedHeadline, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B82350(0, &unk_1EDF3B780, type metadata accessor for FeedHeadline, sub_1D5B80300);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B098 = result;
  return result;
}

uint64_t sub_1D5B8D278()
{
  sub_1D5B7DF00(0, &unk_1EDF3B398, type metadata accessor for FeedHeadlineAudioCommandContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B82350(0, &unk_1EDF3B770, type metadata accessor for FeedHeadlineAudioCommandContext, sub_1D5B82160);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B0B0 = result;
  return result;
}

uint64_t type metadata accessor for FeedHeadlineAudioCommandContext()
{
  result = qword_1EDF35468;
  if (!qword_1EDF35468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5B8D474()
{
  result = qword_1EDF14040;
  if (!qword_1EDF14040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14040);
  }

  return result;
}

uint64_t sub_1D5B8D4C8()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B90C60();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D80 = result;
  return result;
}

unint64_t sub_1D5B8D5CC()
{
  result = qword_1EDF0D110;
  if (!qword_1EDF0D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D110);
  }

  return result;
}

unint64_t sub_1D5B8D68C()
{
  result = qword_1EDF1C940;
  if (!qword_1EDF1C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C940);
  }

  return result;
}

uint64_t sub_1D5B8D728()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169D8 = result;
  return result;
}

void sub_1D5B8D860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SportsEmbedConfiguration);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B8D8B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17D78 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17D80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B8D95C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17D50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17D58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B8DA74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17D08 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B8DB40@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17E50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1D5B8DC0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44 = a6;
  v41 = a3;
  v42 = a5;
  v54 = a4;
  v39 = a1;
  v40 = a2;
  v8 = *v6;
  v53 = sub_1D725A93C();
  v50 = *(v53 - 8);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[12];
  v12 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v12;
  v38[1] = AssociatedTypeWitness;
  v38[0] = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FeedCursorTrackerSnapshot();
  v15 = sub_1D726393C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v38 - v18;
  v20 = v8[24];
  (*(*(v14 - 8) + 56))(v38 - v18, 1, 1, v14);
  v21 = v8[11];
  v45 = v8[13];
  v48 = v8[14];
  v47 = v8[15];
  v46 = v8[16];
  v49 = v8[17];
  v22 = sub_1D5B8A814(v19);
  (*(v16 + 8))(v19, v15);
  *(v7 + v20) = v22;
  v23 = *(*v7 + 200);
  sub_1D5B81B5C();
  v24 = swift_allocObject();
  *(v7 + v23) = v24;
  *(v24 + 16) = 0;
  *(v7 + *(*v7 + 208)) = 1;
  v25 = v39;
  v26 = v40;
  v7[2] = v39;
  v7[3] = v26;
  (*(*(v21 - 8) + 16))(v7 + *(*v7 + 160), v41, v21);
  *(v7 + *(*v7 + 176)) = v42;
  *(v7 + *(*v7 + 184)) = v44;
  type metadata accessor for FeedDatabaseStore();
  sub_1D725B9EC();
  sub_1D725B7BC();
  v27 = MEMORY[0x1E69D6420];
  sub_1D5B76550(0, &unk_1EDF19B30, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  v29 = v25;
  swift_unknownObjectRetain();

  sub_1D725A92C();
  v55 = v28;
  sub_1D5B8A954(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B76550(0, &qword_1EDF1B5B0, v27, MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  sub_1D7263B6C();
  v30 = swift_allocObject();
  *&v31 = v43;
  *(&v31 + 1) = v21;
  *&v32 = v11;
  *(&v32 + 1) = v45;
  *(v30 + 16) = v31;
  *(v30 + 32) = v32;
  v33 = v47;
  *(v30 + 48) = v48;
  *(v30 + 56) = v33;
  v34 = v49;
  *(v30 + 64) = v46;
  *(v30 + 72) = v34;
  v35 = v54;
  *(v30 + 80) = v29;
  *(v30 + 88) = v35;
  v36 = v29;
  *(v7 + *(*v7 + 168)) = sub_1D725B79C();
  return v7;
}

uint64_t sub_1D5B8E1AC()
{

  return swift_deallocObject();
}

void sub_1D5B8E204()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1D5B81B04();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FeedCursorTrackerGroup();
      sub_1D7261E1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5B8E384(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t sub_1D5B8E61C(_DWORD *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t FeedLoadingGate.init(log:)(void *a1)
{
  v2 = sub_1D5B929F8(a1);

  return v2;
}

void *FeedManager.init(feed:database:offlineDatabase:service:serviceConfigFetcher:loadingGate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = sub_1D5B92CA4(a1, a2, a3, a4, a5, a6);
  (*(*(*(v11 + 80) - 8) + 8))(a5);
  (*(*(*(v11 + 88) - 8) + 8))(a4);
  v13 = sub_1D726393C();
  v14 = *(*(v13 - 8) + 8);
  v14(a3, v13);
  v14(a2, v13);
  return v12;
}

uint64_t sub_1D5B8E9E8()
{
  result = sub_1D7258CFC();
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

unint64_t sub_1D5B8EA84()
{
  result = qword_1EDF3C5C0;
  if (!qword_1EDF3C5C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C5C0);
  }

  return result;
}

uint64_t FeedService.init(feed:cursorFactory:personalizationService:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(v3 + 32) = *a1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v7;
  *(v3 + 56) = v6;
  *(v3 + 64) = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceState();
  v16 = v5;
  v17 = v4;
  v18 = v7;
  v19 = v6;
  v20 = v8;
  swift_bridgeObjectRetain_n();
  v9 = v7;
  v10 = v6;
  v11 = v9;
  v12 = v10;
  *(v3 + 16) = FeedServiceState.__allocating_init(feed:)(&v16);
  v16 = v5;
  v17 = v4;
  v18 = v11;
  v19 = v12;
  v20 = v8;
  *(v3 + 24) = sub_1D62E3B04(&v16);
  *(v3 + 112) = a2;
  sub_1D5B63F14(a3, v3 + 72);
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  return v3;
}

void *sub_1D5B8EC54@<X0>(void *a1@<X8>)
{
  matched = type metadata accessor for ArticleURLHandlerMatchIDProvider();
  result = swift_allocObject();
  result[2] = 0x49656C6369747261;
  result[3] = 0xE900000000000044;
  result[4] = 0xD000000000000010;
  result[5] = 0x80000001D73D4590;
  a1[3] = matched;
  a1[4] = &protocol witness table for ArticleURLHandlerMatchIDProvider;
  *a1 = result;
  return result;
}

uint64_t sub_1D5B8ED34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5B8EDD4()
{
  v1 = [*(v0 + 16) puzzlesConfig];
  swift_unknownObjectRelease();
  [v1 puzzleLeaderboardsEnabled];

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C220 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72596EC();

  if (v2)
  {
    if (qword_1EDF181C8 != -1)
    {
      swift_once();
    }

    sub_1D5B6F648(&qword_1EDF0D2E0, v3, type metadata accessor for PuzzleGameCenterService);
    sub_1D725964C();
    v4 = *(v0 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t (*sub_1D5B8EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D5B96E1C;
}

uint64_t sub_1D5B8F0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725891C();
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

uint64_t FeedEditionConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D5B93FF0(0, &qword_1EDF03C80, sub_1D5B94070, &type metadata for FeedEditionConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B94070();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v15;
  sub_1D5B49714(0, &qword_1EDF05240);
  v16 = 0;
  sub_1D5B8F414();
  sub_1D726431C();
  v12 = v17;
  sub_1D5B49714(0, &qword_1EDF05230);
  v16 = 1;
  sub_1D5B94E68();
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v13 = v17;
  *v11 = v12;
  v11[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5B8F414()
{
  result = qword_1EDF05238;
  if (!qword_1EDF05238)
  {
    sub_1D5B49714(255, &qword_1EDF05240);
    sub_1D5B8FCD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05238);
  }

  return result;
}

unint64_t sub_1D5B8F49C()
{
  result = qword_1EDF14F70;
  if (!qword_1EDF14F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F70);
  }

  return result;
}

void sub_1D5B8F4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B8F554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5B8F5DC()
{
  sub_1D5B8F554(0, &qword_1EDF16E08, 255, sub_1D5B90088, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B8F554(0, &qword_1EDF16DD8, 255, sub_1D5B90088, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D28 = result;
  return result;
}

uint64_t sub_1D5B8F738()
{
  sub_1D5B7FEA0(0, &qword_1EDF3B440, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7FEA0(0, &qword_1EDF3B2A8, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3B020 = result;
  return result;
}

uint64_t sub_1D5B8F870()
{
  sub_1D5B63E64(0, &unk_1EDF16E28, &type metadata for FeedReadStoryCommandContext, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &unk_1EDF16DF0, &type metadata for FeedReadStoryCommandContext, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169A0 = result;
  return result;
}

uint64_t sub_1D5B8F9DC()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B88 = result;
  return result;
}

uint64_t *AnyFeedManager.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D5B93910(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1D5B8FB74()
{
  sub_1D5B8EF70();
}

uint64_t (*sub_1D5B8FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D5C3EC98;
}

unint64_t sub_1D5B8FCD8()
{
  result = qword_1EDF14F30;
  if (!qword_1EDF14F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F30);
  }

  return result;
}

unint64_t sub_1D5B8FD3C()
{
  result = qword_1EDF150E0;
  if (!qword_1EDF150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150E0);
  }

  return result;
}

unint64_t sub_1D5B8FDA0()
{
  result = qword_1EDF150F8;
  if (!qword_1EDF150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150F8);
  }

  return result;
}

unint64_t sub_1D5B8FDF8()
{
  result = qword_1EDF150E8;
  if (!qword_1EDF150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150E8);
  }

  return result;
}

unint64_t sub_1D5B8FE50()
{
  result = qword_1EDF15388;
  if (!qword_1EDF15388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15388);
  }

  return result;
}

unint64_t sub_1D5B8FEA4()
{
  result = qword_1EDF140A0;
  if (!qword_1EDF140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF140A0);
  }

  return result;
}

unint64_t sub_1D5B8FF0C()
{
  result = qword_1EDF14088;
  if (!qword_1EDF14088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14088);
  }

  return result;
}

unint64_t sub_1D5B8FF70()
{
  result = qword_1EDF141C0;
  if (!qword_1EDF141C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141C0);
  }

  return result;
}

unint64_t sub_1D5B8FFCC()
{
  result = qword_1EDF141E0;
  if (!qword_1EDF141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141E0);
  }

  return result;
}

unint64_t sub_1D5B90030()
{
  result = qword_1EDF15758;
  if (!qword_1EDF15758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15758);
  }

  return result;
}

void sub_1D5B90088()
{
  if (!qword_1EDF1AE40)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AE40);
    }
  }
}

uint64_t sub_1D5B900F0()
{
  sub_1D5B8F554(0, &qword_1EDF16E08, 255, sub_1D5B90088, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B8F554(0, &qword_1EDF16DD8, 255, sub_1D5B90088, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D40 = result;
  return result;
}

uint64_t sub_1D5B90294()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16AA0 = result;
  return result;
}

uint64_t sub_1D5B9040C()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16B40 = result;
  return result;
}

void sub_1D5B90584()
{
  if (!qword_1EDF172E8)
  {
    sub_1D5B5A664(255, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AudioCommandContext);
    sub_1D5B82160();
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF172E8);
    }
  }
}

uint64_t sub_1D5B90618()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16AB0 = result;
  return result;
}

uint64_t sub_1D5B90790()
{
  sub_1D5B8AFAC(0, &qword_1EDF3B3F8, &unk_1EDF2D030, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B90584();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16AC0 = result;
  return result;
}

uint64_t sub_1D5B90908()
{
  v0 = MEMORY[0x1E69E63B0];
  sub_1D5B8AFAC(0, &unk_1EDF3B410, qword_1EDF2D048, MEMORY[0x1E69E63B0], MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B8AFAC(0, &unk_1EDF3B280, qword_1EDF2D048, v0, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EDF3AEC8 = result;
  return result;
}

void sub_1D5B90A70()
{
  if (!qword_1EDF16E38)
  {
    v0 = sub_1D725F79C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16E38);
    }
  }
}

unint64_t sub_1D5B90AC0()
{
  result = qword_1EDF147E0;
  if (!qword_1EDF147E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147E0);
  }

  return result;
}

uint64_t sub_1D5B90B14()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8243C(0, &unk_1EDF172D8, sub_1D5B8D474);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16D68 = result;
  return result;
}

void sub_1D5B90C60()
{
  if (!qword_1EDF172A0)
  {
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF172A0);
    }
  }
}

uint64_t sub_1D5B90CE4()
{
  sub_1D5B90A70();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B8243C(0, &unk_1EDF172A8, sub_1D5B81000);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16DB8 = result;
  return result;
}

uint64_t sub_1D5B90E44()
{
  sub_1D5B812C8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B805F8(0, &qword_1EDF17278, sub_1D5B8D5CC);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16C10 = result;
  return result;
}

uint64_t sub_1D5B90F90()
{
  sub_1D5B812C8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B805F8(0, &qword_1EDF17280, sub_1D5B84108);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16C28 = result;
  return result;
}

unint64_t sub_1D5B91118()
{
  result = qword_1EDF10F20[0];
  if (!qword_1EDF10F20[0])
  {
    type metadata accessor for DisposableMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF10F20);
  }

  return result;
}

uint64_t _s11TeaSettings0B0C8NewsFeedE7PuzzlesV15ConfigOverridesC3key12defaultValue6accessAHSSSg_SbAA6AccessOtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t sub_1D5B912EC()
{
  sub_1D5B7FEF4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B913F0();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16A00 = result;
  return result;
}

void sub_1D5B913F0()
{
  if (!qword_1EDF17290)
  {
    sub_1D5B65AF4();
    sub_1D5B8D68C();
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17290);
    }
  }
}

uint64_t sub_1D5B9145C()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169F0 = result;
  return result;
}

void sub_1D5B915C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B91618()
{
  sub_1D5B9167C(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D5B9167C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 304);
  if (*(v5 + 16) && (v6 = sub_1D5B91830(a1), (v7 & 1) != 0))
  {
    sub_1D5C42B84(*(v5 + 56) + 16 * v6, &v10);
  }

  else
  {
    v10 = xmmword_1D7279980;
  }

  swift_endAccess();
  v8 = v10;
  result = sub_1D5B91764(&v10);
  if (v8 == __PAIR128__(1, 0))
  {
    *(&v10 + 1) = a2;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_1D5B82824(&v10, a1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D5B91764(uint64_t a1)
{
  sub_1D5B49D58(0, &qword_1EDF0A800, &type metadata for PuzzleGameCenterListenerType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5B917E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5B9186C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D5B91830(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D6D86960();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D5B9198C(v14, a3 & 1);
    v9 = sub_1D5B91830(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_1D6D88F84(a1, v20);
  }

  else
  {

    return sub_1D5B8BB30(v9, a2, a1, v19);
  }
}

uint64_t sub_1D5B9198C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D5B91BF8();
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_1D5B808F0(v21, v31);
      }

      else
      {
        sub_1D5C42B84(v21, v31);
      }

      result = sub_1D72649FC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1D5B808F0(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}