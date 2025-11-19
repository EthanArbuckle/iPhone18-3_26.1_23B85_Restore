uint64_t sub_1D6AB9AFC()
{
  v21 = MEMORY[0x1E69E7CD0];
  v1 = type metadata accessor for BundleSession();
  if (*(v0 + *(v1 + 40)) == 1)
  {
    v2 = 0x80000001D73E4300;
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000001D73E42A0;
  }

  sub_1D5B860D0(&v20, v3, v2);

  v4 = *(v0 + *(v1 + 36));
  sub_1D6AB8740(v4);
  v5 = v4 >> 62;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_38:
    if (!sub_1D7263BFC())
    {
      goto LABEL_20;
    }

    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_17:
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  v8 = 0;
  do
  {
    if (v7 == v8)
    {
      v12 = "newsletters-subscribed-none";
      v13 = 0xD00000000000001ALL;
      goto LABEL_32;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA6FB460](v8, v4);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v4 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v11 = [v9 enrollment];

    ++v8;
  }

  while (v11 == 2);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
  if (sub_1D7263BFC())
  {
    v14 = sub_1D7263BFC();
LABEL_22:
    v15 = 0;
    v5 = v4 & 0xC000000000000001;
    while (v14 != v15)
    {
      if (v5)
      {
        v16 = MEMORY[0x1DA6FB460](v15, v4);
      }

      else
      {
        if (v15 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_36;
      }

      v18 = [v16 enrollment];

      ++v15;
      if (v18 != 1)
      {
        return v21;
      }
    }
  }

LABEL_31:
  v12 = "newsletters-unsubscribed";
  v13 = 0xD00000000000001BLL;
LABEL_32:
  sub_1D5B860D0(&v20, v13, v12 | 0x8000000000000000);

  return v21;
}

id sub_1D6AB9D78(id *a1)
{
  v1 = *a1;
  result = [*a1 identifier];
  if (result)
  {
    v3 = result;
    sub_1D726207C();

    v4 = sub_1D726210C();
    v6 = v5;

    v7 = [v1 enrollment];
    if (!v7)
    {
      goto LABEL_6;
    }

    if (v7 == 1)
    {
      sub_1D7263D4C();

      strcpy(v10, "newsletters-");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      MEMORY[0x1DA6F9910](v4, v6);

      v8 = 0x63736275736E752DLL;
      v9 = 0xED00006465626972;
      goto LABEL_8;
    }

    if (v7 == 2)
    {
      sub_1D7263D4C();

      strcpy(v10, "newsletters-");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      MEMORY[0x1DA6F9910](v4, v6);

      v8 = 0x697263736275732DLL;
      v9 = 0xEB00000000646562;
    }

    else
    {
LABEL_6:
      sub_1D7263D4C();

      strcpy(v10, "newsletters-");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      MEMORY[0x1DA6F9910](v4, v6);

      v8 = 0x6E776F6E6B6E752DLL;
      v9 = 0xE800000000000000;
    }

LABEL_8:
    MEMORY[0x1DA6F9910](v8, v9);
    sub_1D5B860D0(v10, v10[0], v10[1]);
  }

  return result;
}

uint64_t _s8NewsFeed13BundleSessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BundleSession();
  if ((sub_1D72588AC() & 1) == 0)
  {
    goto LABEL_43;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0xE700000000000000;
      v9 = 0x64657269707865;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_11:
      v10 = 0xE600000000000000;
      if (v9 != 0x657669746361)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v8 = 0xE800000000000000;
    v9 = 0x64656C6261736964;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x657669746361;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

LABEL_6:
  if (v7 == 1)
  {
    v10 = 0xE700000000000000;
    if (v9 != 0x64657269707865)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v9 != 0x64656C6261736964)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v8 == v10)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_1D72646CC();

  if ((v12 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  v13 = 0xED000064656E696DLL;
  v14 = 0x7265746544746F6ELL;
  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v18 = 0xE600000000000000;
      v19 = 0x6465696E6564;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = 0x7A69726F68747561;
      v18 = 0xEA00000000006465;
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v19 = 0x7265746544746F6ELL;
    v18 = 0xED000064656E696DLL;
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  if (v17 != 1)
  {
    v13 = 0xEA00000000006465;
    if (v19 != 0x7A69726F68747561)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v13 = 0xE600000000000000;
  v14 = 0x6465696E6564;
LABEL_28:
  if (v19 != v14)
  {
LABEL_33:
    v20 = sub_1D72646CC();

    if ((v20 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (v18 != v13)
  {
    goto LABEL_33;
  }

LABEL_34:
  v21 = v4[8];
  v22 = a1 + v21;
  v23 = *(a1 + v21);
  v24 = a2 + v21;
  v25 = *(a2 + v21);
  v26 = 0;
  if (v23 < 0)
  {
    if ((v25 & 0x8000000000000000) == 0 || ((v25 ^ v23) & 1) != 0 || *(v22 + 1) != *(v24 + 1))
    {
      return v26 & 1;
    }
  }

  else if (v25 < 0 || ((v25 ^ v23) & 1) != 0)
  {
    return v26 & 1;
  }

  if ((sub_1D635D3FC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]))
  {
    v26 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v26 & 1;
  }

LABEL_43:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1D6ABA278()
{
  result = qword_1EDF11EC8;
  if (!qword_1EDF11EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EC8);
  }

  return result;
}

unint64_t sub_1D6ABA2CC()
{
  result = qword_1EC891258;
  if (!qword_1EC891258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891258);
  }

  return result;
}

void sub_1D6ABA320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ABA278();
    v7 = a3(a1, &type metadata for BundleSession.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6ABA384()
{
  result = qword_1EC891260;
  if (!qword_1EC891260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891260);
  }

  return result;
}

unint64_t sub_1D6ABA3D8()
{
  result = qword_1EC891270;
  if (!qword_1EC891270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891270);
  }

  return result;
}

uint64_t sub_1D6ABA42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6ABA490(uint64_t a1)
{
  v2 = type metadata accessor for BundleSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6ABA510()
{
  result = qword_1EC891278;
  if (!qword_1EC891278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891278);
  }

  return result;
}

unint64_t sub_1D6ABA568()
{
  result = qword_1EC891280;
  if (!qword_1EC891280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891280);
  }

  return result;
}

unint64_t sub_1D6ABA5C0()
{
  result = qword_1EDF11EB8;
  if (!qword_1EDF11EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EB8);
  }

  return result;
}

unint64_t sub_1D6ABA618()
{
  result = qword_1EDF11EC0;
  if (!qword_1EDF11EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EC0);
  }

  return result;
}

uint64_t sub_1D6ABA66C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

id LocationDetectionManager.observableMostFrequentLocation.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t LocationDetectionManager.mostFrequentLocation.getter()
{

  sub_1D725B96C();

  return v1;
}

uint64_t sub_1D6ABA8A0@<X0>(void *a1@<X8>)
{

  sub_1D725B96C();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6ABA8F8(id *a1)
{
  v1 = *a1;

  sub_1D725B97C();
}

BOOL LocationDetectionManager.authorized.getter()
{
  if (qword_1EDF29DF0 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D725C30C();
  return [*(v0 + OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager) _authorizationStatus] - 3 < 2;
}

id LocationDetectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LocationDetectionManager.removeObserver(_:)(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v10 = v3;
    v11 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v3, v4);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v1 = v11;
          v8 = v12;
          v3 = v10;
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        v1 = &v12;
        sub_1D7263EAC();
      }

      ++v3;
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v1 + v3) = v8;
}

uint64_t LocationDetectionManager.isAuthorized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6ABADC8;
  v2 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 24, 0, 0, 0x726F687475417369, 0xEE00292864657A69, sub_1D6ABAEDC, 0, v2);
}

uint64_t sub_1D6ABADC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6ABAEC4, 0, 0);
}

uint64_t sub_1D6ABAEDC(uint64_t a1)
{
  sub_1D6ABBB80();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2, v6);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  _s8NewsFeed24LocationDetectionManagerC24fetchAuthorizationStatus10completionyySo010CLLocationE0C_So015CLAuthorizationH0Vtc_tFZ_0(sub_1D6ABBBE0, v9);
}

uint64_t sub_1D6ABB1A4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D6ABB28C;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 32, 0, 0, 0x726F687475417369, 0xEE00292864657A69, sub_1D6ABAEDC, 0, v3);
}

uint64_t sub_1D6ABB28C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6ABB388, 0, 0);
}

uint64_t sub_1D6ABB388()
{
  v1 = *(v0 + 16);
  v1[2](v1, *(v0 + 32));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

id LocationDetectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LocationDetectionManager.requiresPresentation()()
{
  sub_1D6ABB84C();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6ABB528(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D6ABBB0C;
  *(v5 + 24) = v4;

  _s8NewsFeed24LocationDetectionManagerC24fetchAuthorizationStatus10completionyySo010CLLocationE0C_So015CLAuthorizationH0Vtc_tFZ_0(sub_1D6ABBB44, v5);
}

void (*LocationDetectionManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D6ABB89C;
}

void sub_1D6ABB62C(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = &v5[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC];
    v8 = *&v5[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC];
    *v7 = sub_1D6ABBADC;
    v7[1] = v6;

    sub_1D5B74328(v8);
    [*&v5[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager] requestWhenInUseAuthorization];
  }

  else
  {
    v9 = sub_1D725E8CC();
    sub_1D5B641B0(&qword_1EC891328, MEMORY[0x1E69D8050]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D8048], v9);
    a1(v10, 1);
  }
}

uint64_t sub_1D6ABB7A0()
{
  sub_1D6ABB84C();
  swift_allocObject();
  return sub_1D725BBAC();
}

void (*sub_1D6ABB7F0())(void (*)(void *, uint64_t), uint64_t)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D6ABBC60;
}

void sub_1D6ABB84C()
{
  if (!qword_1EDF17948)
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17948);
    }
  }
}

uint64_t sub_1D6ABB8A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6ABB1A4(v2);
}

uint64_t sub_1D6ABB950()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D5B64680;

  return sub_1D6DCEEAC(v2, v3, v4);
}

uint64_t sub_1D6ABBA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DCEF94(a1, v4, v5, v6);
}

uint64_t sub_1D6ABBB0C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1D6ABBB80()
{
  if (!qword_1EC891330)
  {
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891330);
    }
  }
}

uint64_t type metadata accessor for DebugFormatLayoutModel()
{
  result = qword_1EC891338;
  if (!qword_1EC891338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ABBD20()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D6ABBC8C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6ABBDEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D6998094(0, v2, 0);
    v3 = v24;
    v6 = (a1 + 32);
    do
    {
      v7 = *a2;
      v8 = v6[3];
      v9 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v8);
      v10 = *(v9 + 40);

      v10(&v22, v8, v9);
      v11 = v22;
      LOBYTE(v9) = sub_1D61851A4(v22, *(&v22 + 1), v7);

      sub_1D5BF6680(v11, *(&v11 + 1));
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v13 = v6[3];
        v14 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v13);
        (*(v14 + 40))(v21, v13, v14);
        sub_1D5FEAEF8(&v22, v21[0], v21[1]);
        sub_1D5BF6680(v22, *(&v22 + 1));
        v12 = 1;
      }

      sub_1D5B68374(v6, &v22);
      v23[24] = v12;
      v24 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6998094((v15 > 1), v16 + 1, 1);
        v3 = v24;
      }

      *(v3 + 16) = v16 + 1;
      v17 = (v3 + 48 * v16);
      v18 = v22;
      v19 = *v23;
      *(v17 + 57) = *&v23[9];
      v17[2] = v18;
      v17[3] = v19;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D6ABBFAC()
{
  sub_1D6ABBC8C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F80E4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatLayoutModel();
  sub_1D6AC2DFC(v0 + *(v9 + 32), v4, sub_1D6ABBC8C);
  v10 = type metadata accessor for FormatSourceMapEntry();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_1D6AC314C(v4, sub_1D6ABBC8C);
    v11 = type metadata accessor for FormatSourceMapContext();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    sub_1D6AC2DFC(&v4[*(v10 + 24)], v8, sub_1D69F80E4);
    sub_1D6AC314C(v4, type metadata accessor for FormatSourceMapEntry);
    v12 = type metadata accessor for FormatSourceMapContext();
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v15 = sub_1D6B98AF0(v14);
        v18 = MEMORY[0x1E69E7CD0];
        v16 = sub_1D6ABBDEC(v15, &v18);

        return v16;
      }

      sub_1D6AC314C(v8, type metadata accessor for FormatSourceMapContext);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6ABC250()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    v4 = *v0;
    if (v1 == 3)
    {
      result = 0x6E6F74747542;
      switch((v4 >> 59) & 0x1E | (v4 >> 2) & 1)
      {
        case 1uLL:
          result = 1954047316;
          break;
        case 2uLL:
          result = 2003134806;
          break;
        case 3uLL:
          return result;
        case 4uLL:
          if (*(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152))
          {
            result = 0x756F72476B73614DLL;
          }

          else
          {
            result = 0x70756F7247;
          }

          break;
        case 5uLL:
          result = 0x6465626D45626557;
          break;
        case 6uLL:
          result = 0x6569566574617453;
          break;
        case 7uLL:
          result = 0x6D6F74737543;
          break;
        case 8uLL:
          result = 0x63697274654D6441;
          break;
        case 9uLL:
          result = 1633904973;
          break;
        case 0xAuLL:
          result = 0x4D6465726579614CLL;
          break;
        case 0xBuLL:
          result = 0x6F65646956;
          break;
        case 0xCuLL:
          result = 0x766F436575737349;
          break;
        case 0xDuLL:
          result = 0xD000000000000010;
          break;
        case 0xEuLL:
          result = 0x616C506F65646956;
          break;
        case 0xFuLL:
          result = 0x73736572676F7250;
          break;
        case 0x10uLL:
          result = 1835365449;
          break;
        case 0x11uLL:
          result = 0x6D45656C7A7A7550;
          break;
        case 0x12uLL:
          result = 0x65726F736E6F7053;
          break;
        default:
          result = 0x6567616D49;
          break;
      }
    }

    else
    {
      if (v1 == 4)
      {

        v9 = 0x28206E6F74747542;
        v5 = sub_1D71C0F40();
        v7 = v6;

        MEMORY[0x1DA6F9910](v5, v7);
      }

      else
      {
        v8 = v0[1];

        v9 = 0x28206574617453;
        MEMORY[0x1DA6F9910](v4, v8);
      }

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      return v9;
    }
  }

  else
  {
    v2 = 1835365449;
    if (v1 != 1)
    {
      v2 = 0x656D656C70707553;
    }

    if (*(v0 + 40))
    {
      return v2;
    }

    else
    {
      return 0x697461726F636544;
    }
  }

  return result;
}

uint64_t sub_1D6ABC93C()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v4 = v0[1];
      }

      else
      {
        v4 = *(v0[2] + 32);
      }

LABEL_13:
      v5 = *(v4 + 48);
      goto LABEL_14;
    }

    v5 = sub_1D6EE8B60();
  }

  else
  {
    if (*(v0 + 40))
    {
      if (v2 == 1)
      {
        v3 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      else
      {
        v3 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      v4 = *(v1 + *v3);
      goto LABEL_13;
    }

    v5 = *(v1 + 16);
  }

LABEL_14:

  return v5;
}

uint64_t sub_1D6ABC9F0()
{
  v1 = *(v0 + 40);
  if (*(v0 + 40) <= 2u)
  {
    if (!*(v0 + 40))
    {
      return v1;
    }

    if (v1 == 1)
    {
      v2 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v3 = *(*v0 + *v2);
    goto LABEL_13;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      v3 = *(v0 + 8);
    }

    else
    {
      v3 = *(*(v0 + 16) + 32);
    }

LABEL_13:
    v1 = *(v3 + 64);
    goto LABEL_14;
  }

  v1 = sub_1D6EE8E64();
LABEL_14:

  return v1;
}

uint64_t sub_1D6ABCAA4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  if (*(v0 + 40) > 2u)
  {
    if (v4 == 3)
    {
      v4 = 1954047348;
      switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
      {
        case 1uLL:
          return v4;
        case 2uLL:
          v4 = 2003134838;
          break;
        case 3uLL:
          v4 = 0x6E6F74747562;
          break;
        case 4uLL:
          v4 = 0x70756F7267;
          break;
        case 5uLL:
          v4 = 0x6465626D45626577;
          break;
        case 6uLL:
          v4 = 0x6569566574617473;
          break;
        case 7uLL:
          v4 = 0x6D6F74737563;
          break;
        case 8uLL:
          v4 = 0x63697274654D6461;
          break;
        case 9uLL:
          v4 = 1633905005;
          break;
        case 0xAuLL:
          v4 = 0x4D6465726579616CLL;
          break;
        case 0xBuLL:
          v4 = 0x6F65646976;
          break;
        case 0xCuLL:
          v4 = 0x766F436575737369;
          break;
        case 0xDuLL:
          v4 = 0xD000000000000010;
          break;
        case 0xEuLL:
          v4 = 0x616C506F65646976;
          break;
        case 0xFuLL:
          v4 = 0x73736572676F7270;
          break;
        case 0x10uLL:
          v4 = 1835365481;
          break;
        case 0x11uLL:
          v4 = 0x6D45656C7A7A7570;
          break;
        case 0x12uLL:
          v4 = 0x65726F736E6F7073;
          break;
        default:
          v4 = 0x6567616D69;
          break;
      }
    }

    else
    {
      if (v4 == 4)
      {
        v8 = *(v1 + 96);

        v4 = sub_1D6EE5A3C(v8);
      }

      else
      {
        v10 = *(*(v3 + 32) + 96);

        v4 = sub_1D6EE5A3C(v10);
      }
    }
  }

  else if (*(v0 + 40))
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    if (v4 == 1)
    {
      sub_1D6AC2C20(v2, v1, v3, v5, v6, 1u);

      v4 = sub_1D6EE5A3C(v7);

      sub_1D6AC2D2C(v2, v1, v3, v5, v6, 1u);
    }

    else
    {
      sub_1D6AC2C20(v2, v1, v3, v5, v6, 2u);

      v4 = sub_1D6EE5A3C(v9);

      sub_1D6AC2D2C(v2, v1, v3, v5, v6, 2u);
    }
  }

  return v4;
}

__n128 sub_1D6ABCE58()
{
  result = *(v0 + 8);
  v2 = *(v0 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      result.n128_f64[0] = sub_1D6EE5E70();
      result.n128_u64[1] = v5;
    }

    else
    {
      if (v2 == 4)
      {
        v4 = *(v0 + 8);

        swift_beginAccess();
        v8 = *(v4 + 16);
      }

      else
      {
        v7 = *(result.n128_u64[1] + 32);

        swift_beginAccess();
        v8 = *(v7 + 16);
      }

      return v8;
    }
  }

  else if (*(v0 + 40))
  {
    if (v2 == 1)
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v6 = *(*v0 + *v3);
    swift_beginAccess();
    return v6[1];
  }

  return result;
}

void sub_1D6ABCF84(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_1D6EE6210(a1);
      return;
    }

    v3 = *(v1 + 16);
    if (v2 != 4)
    {
      v3 = *(v3 + 40);
    }
  }

  else
  {
    if (!*(v1 + 40))
    {
      *a1 = 0;
      return;
    }

    v3 = *(*v1 + 40);
  }

  *a1 = v3;
}

double sub_1D6ABD018()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      sub_1D6EE5E70();
    }

    else
    {
      if (v1 == 4)
      {

        swift_beginAccess();
      }

      else
      {

        swift_beginAccess();
      }
    }
  }

  else if (*(v0 + 40))
  {
    swift_beginAccess();
  }

  return 0.0;
}

uint64_t sub_1D6ABD140()
{
  result = 0;
  v2 = *v0;
  v3 = *(v0 + 40);
  if (v3 > 2)
  {
    if (v3 - 4 >= 2)
    {
      return sub_1D6EE65AC();
    }
  }

  else if (*(v0 + 40))
  {
    if (v3 != 1)
    {
      if (*(v2 + 56))
      {
        return 0;
      }

      else
      {
        return *(v2 + 48);
      }
    }
  }

  else if (*(v2 + 88))
  {
    return -100;
  }

  else
  {
    return *(v2 + 80);
  }

  return result;
}

uint64_t sub_1D6ABD1C8()
{
  v1 = *v0;
  if (*(v0 + 40) > 2u)
  {
    if (*(v0 + 40) - 4 >= 2)
    {
      v4 = 0;
      switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
      {
        case 1uLL:
        case 5uLL:
          v6 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          goto LABEL_32;
        case 2uLL:
          v7 = qword_1EDF31DD0;
          v8 = type metadata accessor for FormatViewData;
          v9 = sub_1D6AC2EDC;
          goto LABEL_23;
        case 3uLL:
        case 6uLL:
        case 8uLL:
        case 0xDuLL:
        case 0x12uLL:
          return v4;
        case 4uLL:
          v2 = *(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 192);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 7uLL:
          v2 = *(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 128);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 9uLL:
          v7 = &qword_1EC884E90;
          v8 = type metadata accessor for FormatMicaData;
          v9 = type metadata accessor for FormatMicaNodeLayoutAttributes;
LABEL_23:
          sub_1D6AC2FE0(0, v7, v8, v9);
          v6 = *(swift_projectBox() + *(v15 + 48));
          goto LABEL_32;
        case 0xAuLL:
          v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
          goto LABEL_29;
        case 0xBuLL:
          v11 = &qword_1EC884E78;
          v12 = type metadata accessor for FormatVideoData;
          v13 = sub_1D6AC2E64;
          goto LABEL_19;
        case 0xCuLL:
          v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
          goto LABEL_29;
        case 0xEuLL:
          v11 = &qword_1EC880340;
          v12 = type metadata accessor for FormatVideoPlayerData;
          v13 = sub_1D6AC2DC8;
LABEL_19:
          sub_1D6AC2FE0(0, v11, v12, v13);
          v10 = *(swift_projectBox() + *(v14 + 48));
LABEL_29:
          v2 = *(v10 + 144);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 0xFuLL:
          v6 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          goto LABEL_32;
        case 0x10uLL:
          sub_1D6AC2FE0(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
          v2 = *(*(swift_projectBox() + *(v16 + 48)) + 32);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 0x11uLL:
          v17 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          if (!*(v17 + 104))
          {
            return 0;
          }

          v3 = (v17 + 112);
          goto LABEL_8;
        default:
          v6 = *(v1 + 24);
LABEL_32:
          v2 = *(v6 + 96);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
      }
    }
  }

  else
  {
    if (!*(v0 + 40))
    {
      v3 = (v1 + 16);
      goto LABEL_8;
    }

    v2 = *(v1 + 32);
    if (v2)
    {
LABEL_4:
      v3 = (v2 + 32);
LABEL_8:
      v4 = *v3;

      return v4;
    }
  }

  return 0;
}

uint64_t sub_1D6ABD490()
{
  sub_1D6ABBC8C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F80E4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatLayoutModel();
  sub_1D6AC2DFC(v0 + *(v9 + 32), v4, sub_1D6ABBC8C);
  v10 = type metadata accessor for FormatSourceMapEntry();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = sub_1D6ABBC8C;
    v12 = v4;
  }

  else
  {
    sub_1D6AC2DFC(&v4[*(v10 + 24)], v8, sub_1D69F80E4);
    sub_1D6AC314C(v4, type metadata accessor for FormatSourceMapEntry);
    v13 = type metadata accessor for FormatSourceMapContext();
    if ((*(*(v13 - 8) + 48))(v8, 1, v13) != 1)
    {
      v14 = sub_1D60682B0();
      sub_1D6AC314C(v8, type metadata accessor for FormatSourceMapContext);
      return v14;
    }

    v11 = sub_1D69F80E4;
    v12 = v8;
  }

  sub_1D6AC314C(v12, v11);
  if (qword_1EC87DBF0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC9BAD18;

  return v14;
}

void *sub_1D6ABD6E0(uint64_t a1)
{
  v447 = *MEMORY[0x1E69E9840];
  sub_1D6AC2BB8(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v407 = &v390 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v406 = type metadata accessor for FormatVideoPlayerData();
  *&v405 = *(v406 - 8);
  MEMORY[0x1EEE9AC00](v406, v6);
  v411 = &v390 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCC6B8(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v400 = &v390 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatShareAttributionData();
  v398 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v402 = &v390 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2BEC(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v403 = &v390 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = type metadata accessor for FormatVideoData(0);
  v399 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401, v17);
  *&v408 = &v390 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v413 = sub_1D726035C();
  *&v412 = *(v413 - 8);
  MEMORY[0x1EEE9AC00](v413, v19);
  v21 = &v390 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v410 = (&v390 - v24);
  v25 = type metadata accessor for FormatAdMetricsData();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  *&v409 = &v390 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FormatMicaData();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v390 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC30E8(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  *&v404 = &v390 - v34;
  sub_1D6A69418(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v390 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FormatButtonNodeData();
  v397 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v390 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D6ABD018();
  sub_1D6A9DF10(a1, &v437, 0.0, 0.0, v43, v44);
  v46 = *v1;
  v45 = *(v1 + 8);
  v48 = *(v1 + 16);
  v47 = *(v1 + 24);
  v49 = *(v1 + 32);
  v50 = *(v1 + 40);
  if (v50 > 2)
  {
    if (v50 != 3)
    {
LABEL_6:
      sub_1D6202060(&v437);
      return 0;
    }

    switch((v46 >> 59) & 0x1E | (v46 >> 2) & 1)
    {
      case 1uLL:
        v245 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v395 = *(v1 + 8);
        v246 = v395;
        v396 = v48;
        v247 = v48;
        v248 = MEMORY[0x1E69E6F90];
        v249 = v47;
        v221 = v49;
        v250 = v46;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v251 = swift_allocObject();
        *(v251 + 16) = xmmword_1D7270C10;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v252 = v245[12];
        sub_1D6AC2C20(v250, v246, v247, v249, v221, 3u);
        v253 = sub_1D6DB1418(&v422, v252);
        *(v251 + 56) = &type metadata for FormatInspection;
        *(v251 + 64) = &off_1F51E3FD0;
        *(v251 + 32) = v253;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v248);
        sub_1D5EA74B8();
        v255 = (*(*(v254 - 8) + 80) + 32) & ~*(*(v254 - 8) + 80);
        v256 = swift_allocObject();
        *(v256 + 16) = xmmword_1D7273AE0;
        v257 = v245[19];
        v258 = v245[20];

        sub_1D711F844(1701667150, 0xE400000000000000, v257, v258, (v256 + v255));
        v259 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v259 - 8) + 56))(v256 + v255, 0, 1, v259);
        sub_1D6795150(0x6D614E2077656956, 0xE900000000000065, 0, 0, v256, &v422);
        swift_setDeallocating();
        sub_1D6AC314C(v256 + v255, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v251 + 96) = &type metadata for FormatInspectionGroup;
        *(v251 + 104) = &off_1F518B2C0;
        v260 = swift_allocObject();
        *(v251 + 72) = v260;
        v261 = *v423;
        *(v260 + 16) = v422;
        *(v260 + 32) = v261;
        *(v260 + 48) = *&v423[16];
        v57 = sub_1D7073500(v251);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        v69 = v250;
        v70 = v395;
        v71 = v396;
        v72 = v249;
        goto LABEL_26;
      case 2uLL:
        v395 = *(v1 + 8);
        v198 = v395;
        v396 = v48;
        v199 = v47;
        v393 = v47;
        v394 = v49;
        v200 = v49;
        v201 = v46;
        sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
        v203 = (swift_projectBox() + *(v202 + 48));
        v204 = *v203;
        v205 = v203[2];
        *&v413 = v203[3];
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v206 = *(v204 + 96);
        v207 = v198;
        v208 = v396;
        sub_1D6AC2C20(v201, v207, v396, v199, v200, 3u);

        v209 = v205;
        v210 = v413;
        sub_1D5EBC314(v205, v413);

        v57 = sub_1D679BC28(&v422, v206);

        sub_1D5EBC358(v209, v210);

        sub_1D6202060(&v437);
        v69 = v201;
        v70 = v395;
        v71 = v208;
        goto LABEL_59;
      case 3uLL:
        v219 = *(v1 + 8);
        v220 = *(v1 + 16);
        v393 = *(v1 + 24);
        v221 = v49;
        v222 = v46;
        sub_1D6AC2FE0(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, sub_1D6AC305C);
        v392 = v222;
        v223 = swift_projectBox();
        sub_1D6AC2DFC(v223, v42, type metadata accessor for FormatButtonNodeData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v224 = swift_allocObject();
        *(v224 + 16) = xmmword_1D7273AE0;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        sub_1D6AC2DFC(v42, v38, type metadata accessor for FormatButtonNodeData);
        (*(v397 + 56))(v38, 0, 1, v39);
        v225 = v222;
        v226 = v393;
        sub_1D6AC2C20(v225, v219, v220, v393, v221, 3u);
        v227 = sub_1D6A687D0(&v422, v38);
        sub_1D6AC314C(v38, sub_1D6A69418);
        *(v224 + 56) = &type metadata for FormatInspection;
        *(v224 + 64) = &off_1F51E3FD0;
        *(v224 + 32) = v227;
        v57 = sub_1D7073500(v224);
        swift_setDeallocating();
        sub_1D6AC314C(v224 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        sub_1D6AC314C(v42, type metadata accessor for FormatButtonNodeData);
        v69 = v392;
        v70 = v219;
        v71 = v220;
        v72 = v226;
LABEL_26:
        v73 = v221;
        break;
      case 4uLL:
        v156 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v411 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v157 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        *&v412 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        *&v413 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v158 = v45;
        v395 = v45;
        v396 = v48;
        v159 = v48;
        v160 = v47;
        v393 = v47;
        v394 = v49;
        v161 = v49;
        v162 = v46;
        v392 = v46;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v163 = swift_allocObject();
        *(v163 + 16) = xmmword_1D7273AE0;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v164 = *(v156 + 192);
        sub_1D6AC2C20(v162, v158, v159, v160, v161, 3u);

        v165 = v412;
        sub_1D5EBC314(v412, v157);

        v166 = sub_1D6010808(&v422, v164);

        *(v163 + 56) = &type metadata for FormatInspection;
        *(v163 + 64) = &off_1F51E3FD0;
        *(v163 + 32) = v166;
        v57 = sub_1D7073500(v163);
        swift_setDeallocating();
        sub_1D6AC314C(v163 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v437);

        sub_1D5EBC358(v165, v157);
        goto LABEL_58;
      case 5uLL:
        v395 = *(v1 + 8);
        v396 = v48;
        v393 = v47;
        v394 = v49;
        v392 = v46;
        v272 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v413 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v273 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v274 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v275 = swift_allocObject();
        v409 = xmmword_1D7279970;
        *(v275 + 16) = xmmword_1D7279970;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v274);
        v277 = v276;
        sub_1D5EA74B8();
        v279 = v278;
        v280 = *(v278 - 8);
        v281 = *(v280 + 72);
        v282 = (*(v280 + 80) + 32) & ~*(v280 + 80);
        *&v407 = *(v280 + 80);
        *&v408 = v277;
        v283 = swift_allocObject();
        *(v283 + 16) = xmmword_1D7273AE0;
        v284 = v282;
        v285 = v283 + v282;
        v411 = v272;
        *&v412 = v279;
        v410 = v281;
        swift_beginAccess();
        if (!v273)
        {
          v273 = v272;
        }

        v354 = *(v273 + 80);
        v405 = *(v273 + 64);
        v406 = v354;
        v355 = type metadata accessor for FormatInspectionItem(0);
        v356 = v285 + *(v355 + 24);
        v357 = v406;
        *v356 = v405;
        *(v356 + 16) = v357;
        *(v356 + 32) = 0;
        *(v356 + 40) = 0;
        *(v356 + 48) = 1;
        v358 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v358 - 8) + 56))(v356, 0, 1, v358);
        v359 = v284;
        *(v283 + v284) = xmmword_1D72E27B0;
        *(v285 + 16) = 0;
        *(v285 + 24) = 0;
        v360 = v285 + *(v355 + 28);
        *v360 = 0;
        *(v360 + 8) = 0;
        *(v360 + 16) = -1;
        v361 = *(v355 - 8);
        *&v405 = *(v361 + 56);
        *&v406 = v361 + 56;
        (v405)(v285, 0, 1, v355);

        sub_1D6795150(0x20746E65746E6F43, 0xED0000656D617246, 0, 0, v283, &v431);
        swift_setDeallocating();
        sub_1D6AC314C(v285, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v275 + 56) = &type metadata for FormatInspectionGroup;
        *(v275 + 64) = &off_1F518B2C0;
        v362 = swift_allocObject();
        *(v275 + 32) = v362;
        v363 = v432;
        *(v362 + 16) = v431;
        *(v362 + 32) = v363;
        *(v362 + 48) = *&v433[0];
        v364 = v410;
        v365 = 2 * v410;
        v366 = swift_allocObject();
        *(v366 + 16) = v409;
        v367 = (v366 + v359);
        v368 = v411;
        v369 = *(v411 + 168);
        v370 = *(v411 + 176);

        sub_1D711F844(0x6E6F697461636F4CLL, 0xE800000000000000, v369, v370, v367);
        v371 = v405;
        (v405)(v367, 0, 1, v355);
        if (*(v368 + 184))
        {
          v372 = 0x6567616D49;
        }

        else
        {
          v372 = 0x7765695620626557;
        }

        if (*(v368 + 184))
        {
          v373 = 0xE500000000000000;
        }

        else
        {
          v373 = 0xE800000000000000;
        }

        sub_1D711F844(0x6E697265646E6552, 0xE900000000000067, v372, v373, (v364 + v367));
        v371(v364 + v367, 0, 1, v355);
        v374 = v404;
        sub_1D6AC13F8(v413, v404);
        sub_1D712E754(0x6769666E6F43, 0xE600000000000000, v374, v367 + v365);
        v371(v367 + v365, 0, 1, v355);
        sub_1D6795150(0x72756769666E6F43, 0xED00006E6F697461, 0, 0, v366, &v414);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(v275 + 96) = &type metadata for FormatInspectionGroup;
        *(v275 + 104) = &off_1F518B2C0;
        v375 = swift_allocObject();
        *(v275 + 72) = v375;
        v376 = v415;
        *(v375 + 16) = v414;
        *(v375 + 32) = v376;
        *(v375 + 48) = *&v416[0];
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v377 = sub_1D6193AA8(&v422, *(v368 + 96));
        *(v275 + 136) = &type metadata for FormatInspection;
        *(v275 + 144) = &off_1F51E3FD0;
        *(v275 + 112) = v377;
        v57 = sub_1D7073500(v275);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        goto LABEL_57;
      case 6uLL:
        v292 = *(*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 72);
        v392 = v46;
        if (v292 < 0)
        {
          v296 = v45;
          v295 = v48;
          v171 = v47;
          v172 = v49;
          sub_1D6AC2C20(v46, v45, v48, v47, v49, 3u);
        }

        else
        {
          v294 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter);
          v293 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter + 8);
          v172 = v49;
          v171 = v47;
          v295 = v48;
          v296 = v45;

          sub_1D6CC591C(v294, v293, &v422);
          v422 = *&v423[8];
          sub_1D69D10F8();
          swift_allocObject();

          sub_1D725AB4C();
        }

        v378 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v379 = swift_allocObject();
        v413 = xmmword_1D7273AE0;
        *(v379 + 16) = xmmword_1D7273AE0;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v378);
        sub_1D5EA74B8();
        v381 = (*(*(v380 - 8) + 80) + 32) & ~*(*(v380 - 8) + 80);
        v382 = swift_allocObject();
        *(v382 + 16) = v413;
        sub_1D725AB5C();
        sub_1D711F844(0x6574617453, 0xE500000000000000, v422, *(&v422 + 1), (v382 + v381));
        v383 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v383 - 8) + 56))(v382 + v381, 0, 1, v383);
        sub_1D6795150(0x614D206574617453, 0xED0000656E696863, 0, 0, v382, &v422);
        swift_setDeallocating();
        sub_1D6AC314C(v382 + v381, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v379 + 56) = &type metadata for FormatInspectionGroup;
        *(v379 + 64) = &off_1F518B2C0;
        v384 = swift_allocObject();
        *(v379 + 32) = v384;
        v385 = *v423;
        *(v384 + 16) = v422;
        *(v384 + 32) = v385;
        *(v384 + 48) = *&v423[16];
        v57 = sub_1D7073500(v379);
        swift_setDeallocating();
        sub_1D6AC314C(v379 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v437);

        v69 = v392;
        v70 = v296;
        v71 = v295;
        goto LABEL_54;
      case 7uLL:
        v228 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v395 = *(v1 + 8);
        v396 = v48;
        v229 = MEMORY[0x1E69E6F90];
        v393 = v47;
        v394 = v49;
        v392 = v46;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v230 = swift_allocObject();
        *(v230 + 16) = xmmword_1D7270C10;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v229);
        sub_1D5EA74B8();
        v232 = (*(*(v231 - 8) + 80) + 32) & ~*(*(v231 - 8) + 80);
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_1D7273AE0;
        v234 = (v233 + v232);

        v235 = sub_1D7264C5C();
        v237 = v236;
        v238 = type metadata accessor for FormatInspectionItem(0);
        v239 = (v234 + *(v238 + 24));
        *v239 = 0;
        v239[1] = 0xE000000000000000;
        v240 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
        *v234 = v235;
        v234[1] = v237;
        v234[2] = 0;
        v234[3] = 0;
        v241 = v234 + *(v238 + 28);
        *v241 = 0;
        *(v241 + 1) = 0;
        v241[16] = -1;
        (*(*(v238 - 8) + 56))(v234, 0, 1, v238);
        sub_1D6795150(0x4320656372756F53, 0xEC0000007373616CLL, 0, 0, v233, &v414);
        swift_setDeallocating();
        sub_1D6AC314C(v234, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v230 + 56) = &type metadata for FormatInspectionGroup;
        *(v230 + 64) = &off_1F518B2C0;
        v242 = swift_allocObject();
        *(v230 + 32) = v242;
        v243 = v415;
        *(v242 + 16) = v414;
        *(v242 + 32) = v243;
        *(v242 + 48) = *&v416[0];
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v244 = sub_1D615AE50(&v422, *(v228 + 128));
        *(v230 + 96) = &type metadata for FormatInspection;
        *(v230 + 104) = &off_1F51E3FD0;
        *(v230 + 72) = v244;
        v57 = sub_1D7073500(v230);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        goto LABEL_57;
      case 8uLL:
        v309 = *(v1 + 32);
        v310 = *(v1 + 24);
        v311 = *(v1 + 16);
        v312 = *(v1 + 8);
        v313 = *v1;
        sub_1D61CAFE8();
        v315 = v314;
        v316 = swift_projectBox();
        v317 = *(v316 + *(v315 + 64));
        sub_1D6AC2DFC(v316, v409, type metadata accessor for FormatAdMetricsData);
        v392 = v313;
        v318 = v313;
        v395 = v312;
        v396 = v311;
        v319 = v310;
        v320 = v309;
        sub_1D6AC2C20(v318, v312, v311, v310, v309, 3u);

        sub_1D72603AC();
        sub_1D726038C();
        v321 = v410;
        sub_1D7260CCC();

        sub_1D6AC2F90(0, &qword_1EC88EB30, &type metadata for FormatInspectionGroup, MEMORY[0x1E69E6F90]);
        v322 = swift_allocObject();
        *(v322 + 16) = xmmword_1D7270C10;
        (*(v412 + 16))(v21, v321, v413);
        sub_1D62E5070(v21, &v431);
        v323 = v432;
        *(v322 + 32) = v431;
        *(v322 + 48) = v323;
        *(v322 + 64) = *&v433[0];
        v324 = sub_1D72602CC();
        sub_1D62E5478(v324, &v414);
        v325 = v415;
        *(v322 + 72) = v414;
        *(v322 + 88) = v325;
        *(v322 + 104) = *&v416[0];
        if (v317)
        {
          sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          sub_1D5EA74B8();
          v327 = (*(*(v326 - 8) + 80) + 32) & ~*(*(v326 - 8) + 80);
          v328 = swift_allocObject();
          *(v328 + 16) = xmmword_1D7273AE0;
          v329 = v328 + v327;
          swift_beginAccess();
          v330 = type metadata accessor for FormatInspectionItem(0);
          v331 = v329 + *(v330 + 24);
          v332 = *(v317 + 80);
          *v331 = *(v317 + 64);
          *(v331 + 16) = v332;
          *(v331 + 32) = 0;
          *(v331 + 40) = 0;
          *(v331 + 48) = 1;
          v333 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v333 - 8) + 56))(v331, 0, 1, v333);
          *v329 = xmmword_1D731C260;
          *(v329 + 16) = 0;
          *(v329 + 24) = 0;
          v334 = v329 + *(v330 + 28);
          *v334 = 0;
          *(v334 + 8) = 0;
          *(v334 + 16) = -1;
          (*(*(v330 - 8) + 56))(v329, 0, 1, v330);

          sub_1D6795150(0x2079636176697250, 0xEE0072656B72614DLL, 0, 0, v328, &v422);
          swift_setDeallocating();
          sub_1D6AC314C(v329, sub_1D5EA74B8);
          swift_deallocClassInstance();
          v322 = sub_1D698BB14(1, 3, 1, v322);

          *(v322 + 16) = 3;
          v335 = *v423;
          *(v322 + 112) = v422;
          *(v322 + 128) = v335;
          *(v322 + 144) = *&v423[16];
        }

        v336 = sub_1D5F63640(v322);

        v57 = sub_1D7073500(v336);

        sub_1D6202060(&v437);

        (*(v412 + 8))(v410, v413);
        sub_1D6AC314C(v409, type metadata accessor for FormatAdMetricsData);
        v69 = v392;
        v70 = v395;
        v71 = v396;
        v72 = v319;
        v73 = v320;
        break;
      case 9uLL:
        v395 = *(v1 + 8);
        v396 = v48;
        v178 = v48;
        v179 = v47;
        v393 = v47;
        v394 = v49;
        v180 = v49;
        v181 = v46;
        sub_1D6AC2FE0(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
        v183 = v182;
        v392 = v181;
        v184 = swift_projectBox();
        v185 = *(v184 + *(v183 + 48));
        v391 = v31;
        sub_1D6AC2DFC(v184, v31, type metadata accessor for FormatMicaData);
        v186 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v187 = swift_allocObject();
        *(v187 + 16) = xmmword_1D7279970;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v188 = *(v185 + 96);
        sub_1D6AC2C20(v181, v395, v178, v179, v180, 3u);

        v189 = sub_1D6D90460(&v422, v188);

        *(v187 + 56) = &type metadata for FormatInspection;
        *(v187 + 64) = &off_1F51E3FD0;
        *(v187 + 32) = v189;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v190 = v391;
        v191 = sub_1D671FE3C(&v422, &v391[*(v28 + 20)]);
        *(v187 + 96) = &type metadata for FormatInspection;
        *(v187 + 104) = &off_1F51E3FD0;
        *(v187 + 72) = v191;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v186);
        sub_1D5EA74B8();
        v193 = (*(*(v192 - 8) + 80) + 32) & ~*(*(v192 - 8) + 80);
        v194 = swift_allocObject();
        *(v194 + 16) = xmmword_1D7273AE0;
        sub_1D712EA64(0x65646F4D206E7552, 0xE800000000000000, *(v190 + *(v28 + 24)) | (*(v190 + *(v28 + 24) + 4) << 32), (v194 + v193));
        v195 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v195 - 8) + 56))(v194 + v193, 0, 1, v195);
        sub_1D6795150(0x656E696C656D6954, 0xE800000000000000, 0, 0, v194, &v422);
        swift_setDeallocating();
        sub_1D6AC314C(v194 + v193, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v187 + 136) = &type metadata for FormatInspectionGroup;
        *(v187 + 144) = &off_1F518B2C0;
        v196 = swift_allocObject();
        *(v187 + 112) = v196;
        v197 = *v423;
        *(v196 + 16) = v422;
        *(v196 + 32) = v197;
        *(v196 + 48) = *&v423[16];
        v57 = sub_1D7073500(v187);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);

        v137 = type metadata accessor for FormatMicaData;
        v138 = v190;
        goto LABEL_20;
      case 0xAuLL:
        v297 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v413 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v298 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        *&v412 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        LODWORD(v411) = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v299 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v300 = v45;
        v395 = v45;
        v396 = v48;
        v301 = v48;
        v302 = v47;
        v303 = v49;
        v304 = v46;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_1D7270C10;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v306 = *(v299 + 144);
        sub_1D6AC2C20(v304, v300, v301, v302, v303, 3u);
        v307 = sub_1D67AEC44(&v422, v306);
        *(v305 + 56) = &type metadata for FormatInspection;
        *(v305 + 64) = &off_1F51E3FD0;
        *(v305 + 32) = v307;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        *&v414 = v413;
        *(&v414 + 1) = v297;
        *&v415 = v412;
        *(&v415 + 1) = v298;
        LOBYTE(v416[0]) = v411;

        v308 = sub_1D71A29F4(&v422, &v414);
        sub_1D6AC2E98(v414, *(&v414 + 1));
        *(v305 + 96) = &type metadata for FormatInspection;
        *(v305 + 104) = &off_1F51E3FD0;
        *(v305 + 72) = v308;
        v57 = sub_1D7073500(v305);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        v69 = v304;
        v70 = v395;
        v71 = v396;
        goto LABEL_43;
      case 0xBuLL:
        v395 = *(v1 + 8);
        v396 = v48;
        v139 = v47;
        v393 = v47;
        v394 = v49;
        v140 = v49;
        v141 = v46;
        sub_1D6AC2FE0(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, sub_1D6AC2E64);
        v143 = v142;
        v392 = v141;
        v144 = swift_projectBox();
        v145 = (v144 + *(v143 + 48));
        v146 = *v145;
        v147 = v145[1];
        v148 = v145[3];
        *&v409 = v145[2];
        *&v413 = v145[4];
        v410 = type metadata accessor for FormatVideoData;
        v411 = v147;
        sub_1D6AC2DFC(v144, v408, type metadata accessor for FormatVideoData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_1D7270C10;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        *&v412 = v146;
        v150 = *(v146 + 144);
        sub_1D6AC2C20(v141, v395, v396, v139, v140, 3u);

        v151 = v409;
        sub_1D5EBC314(v409, v148);

        v152 = sub_1D6889468(&v422, v150);

        *(v149 + 56) = &type metadata for FormatInspection;
        *(v149 + 64) = &off_1F51E3FD0;
        *(v149 + 32) = v152;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v153 = v408;
        v154 = v403;
        sub_1D6AC2DFC(v408, v403, v410);
        (*(v399 + 56))(v154, 0, 1, v401);
        v155 = sub_1D6B681E4(&v422, v154);
        sub_1D6AC314C(v154, sub_1D6AC2BEC);
        *(v149 + 96) = &type metadata for FormatInspection;
        *(v149 + 104) = &off_1F51E3FD0;
        *(v149 + 72) = v155;
        v57 = sub_1D7073500(v149);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);

        sub_1D5EBC358(v151, v148);
        v137 = type metadata accessor for FormatVideoData;
        v138 = v153;
        goto LABEL_20;
      case 0xCuLL:
        v167 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v431 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v432 = v167;
        v433[0] = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        *(v433 + 9) = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v168 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v169 = v45;
        v395 = v45;
        v396 = v48;
        v170 = v48;
        v171 = v47;
        v172 = v49;
        v173 = v46;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v174 = swift_allocObject();
        *(v174 + 16) = xmmword_1D7270C10;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v175 = *(v168 + 144);
        sub_1D6AC2C20(v173, v169, v170, v171, v172, 3u);
        v176 = sub_1D615EEF4(&v422, v175);
        *(v174 + 56) = &type metadata for FormatInspection;
        *(v174 + 64) = &off_1F51E3FD0;
        *(v174 + 32) = v176;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v419 = v431;
        v420 = v432;
        v421[0] = v433[0];
        *(v421 + 9) = *(v433 + 9);
        sub_1D5EBC4A0(&v431, &v414);
        v177 = sub_1D70B3C30(&v422, &v419);
        v414 = v419;
        v415 = v420;
        v416[0] = v421[0];
        *(v416 + 9) = *(v421 + 9);
        sub_1D6AC2CBC(&v414, &qword_1EC891358, &type metadata for FormatIssueCoverData);
        *(v174 + 96) = &type metadata for FormatInspection;
        *(v174 + 104) = &off_1F51E3FD0;
        *(v174 + 72) = v177;
        v57 = sub_1D7073500(v174);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        v69 = v173;
        v70 = v395;
        v71 = v396;
LABEL_54:
        v72 = v171;
        v73 = v172;
        break;
      case 0xDuLL:
        v113 = *(v1 + 8);
        v114 = *(v1 + 16);
        v115 = *(v1 + 24);
        v394 = *(v1 + 32);
        v286 = v46;
        sub_1D6AC2FE0(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
        v287 = swift_projectBox();
        v288 = v402;
        sub_1D6AC2DFC(v287, v402, type metadata accessor for FormatShareAttributionData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v289 = swift_allocObject();
        *(v289 + 16) = xmmword_1D7273AE0;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v290 = v400;
        sub_1D6AC2DFC(v288, v400, type metadata accessor for FormatShareAttributionData);
        (*(v398 + 56))(v290, 0, 1, v11);
        v116 = v394;
        sub_1D6AC2C20(v286, v113, v114, v115, v394, 3u);
        v291 = sub_1D5FCC280(&v422, v290);
        sub_1D6AC314C(v290, sub_1D5FCC6B8);
        *(v289 + 56) = &type metadata for FormatInspection;
        *(v289 + 64) = &off_1F51E3FD0;
        *(v289 + 32) = v291;
        v57 = sub_1D7073500(v289);
        swift_setDeallocating();
        sub_1D6AC314C(v289 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        sub_1D6AC314C(v288, type metadata accessor for FormatShareAttributionData);
        v69 = v286;
        goto LABEL_32;
      case 0xEuLL:
        v395 = *(v1 + 8);
        v396 = v48;
        v121 = v47;
        v393 = v47;
        v394 = v49;
        v122 = v49;
        v123 = v46;
        sub_1D6AC2FE0(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, sub_1D6AC2DC8);
        v125 = v124;
        v392 = v123;
        v126 = swift_projectBox();
        v127 = (v126 + *(v125 + 48));
        v128 = *v127;
        v410 = v127[1];
        v129 = v127[3];
        *&v408 = v127[2];
        *&v413 = v127[4];
        *&v409 = type metadata accessor for FormatVideoPlayerData;
        sub_1D6AC2DFC(v126, v411, type metadata accessor for FormatVideoPlayerData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1D7270C10;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        *&v412 = v128;
        v131 = *(v128 + 144);
        sub_1D6AC2C20(v123, v395, v396, v121, v122, 3u);

        v132 = v408;
        sub_1D5EBC314(v408, v129);

        v133 = sub_1D719D288(&v422, v131);

        *(v130 + 56) = &type metadata for FormatInspection;
        *(v130 + 64) = &off_1F51E3FD0;
        *(v130 + 32) = v133;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v134 = v411;
        v135 = v407;
        sub_1D6AC2DFC(v411, v407, v409);
        (*(v405 + 56))(v135, 0, 1, v406);
        v136 = sub_1D6AE5DA0(&v422, v135);
        sub_1D6AC314C(v135, sub_1D6AC2BB8);
        *(v130 + 96) = &type metadata for FormatInspection;
        *(v130 + 104) = &off_1F51E3FD0;
        *(v130 + 72) = v136;
        v57 = sub_1D7073500(v130);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);

        sub_1D5EBC358(v132, v129);
        v137 = type metadata accessor for FormatVideoPlayerData;
        v138 = v134;
LABEL_20:
        sub_1D6AC314C(v138, v137);
        goto LABEL_58;
      case 0xFuLL:
        v211 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v212 = *(v211 + 96);
        v213 = v45;
        v214 = v48;
        v215 = v47;
        v216 = v49;
        v217 = v46;
        sub_1D6AC2C20(v46, v45, v48, v47, v49, 3u);

        v218 = sub_1D61805AC(&v422, v212);
        goto LABEL_40;
      case 0x10uLL:
        v113 = *(v1 + 8);
        v114 = *(v1 + 16);
        v115 = *(v1 + 24);
        v116 = *(v1 + 32);
        v117 = *v1;
        sub_1D6AC2FE0(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
        v119 = *(swift_projectBox() + *(v118 + 48));
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v120 = *(v119 + 32);
        sub_1D6AC2C20(v117, v113, v114, v115, v116, 3u);

        v57 = sub_1D69F3870(&v422, v120);

        sub_1D6202060(&v437);
        v69 = v117;
LABEL_32:
        v70 = v113;
        v71 = v114;
        v72 = v115;
        v73 = v116;
        break;
      case 0x11uLL:
        v262 = *(v1 + 8);
        v396 = *(v1 + 16);
        v393 = v47;
        v394 = v49;
        v263 = v46;
        v265 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v264 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v266 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v267 = swift_allocObject();
        *(v267 + 16) = xmmword_1D7270C10;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v266);
        sub_1D5EA74B8();
        v269 = (*(*(v268 - 8) + 80) + 32) & ~*(*(v268 - 8) + 80);
        v270 = swift_allocObject();
        *(v270 + 16) = xmmword_1D7273AE0;
        v271 = v270 + v269;
        swift_beginAccess();
        if (!v264)
        {
          v264 = v265;
        }

        v338 = v264[5];
        v412 = v264[4];
        v413 = v338;
        v339 = type metadata accessor for FormatInspectionItem(0);
        v340 = v271 + *(v339 + 24);
        v341 = v413;
        *v340 = v412;
        *(v340 + 16) = v341;
        *(v340 + 32) = 0;
        *(v340 + 40) = 0;
        *(v340 + 48) = 1;
        v342 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v342 - 8) + 56))(v340, 0, 1, v342);
        *v271 = xmmword_1D72E27B0;
        *(v271 + 16) = 0;
        *(v271 + 24) = 0;
        v343 = v271 + *(v339 + 28);
        *v343 = 0;
        *(v343 + 8) = 0;
        *(v343 + 16) = -1;
        (*(*(v339 - 8) + 56))(v271, 0, 1, v339);
        v392 = v263;
        v344 = v263;
        v345 = v396;
        v302 = v393;
        v303 = v394;
        sub_1D6AC2C20(v344, v262, v396, v393, v394, 3u);
        sub_1D6795150(0x20746E65746E6F43, 0xED0000656D617246, 0, 0, v270, &v434);
        swift_setDeallocating();
        sub_1D6AC314C(v271, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v267 + 56) = &type metadata for FormatInspectionGroup;
        *(v267 + 64) = &off_1F518B2C0;
        v346 = swift_allocObject();
        *(v267 + 32) = v346;
        v347 = v435;
        *(v346 + 16) = v434;
        *(v346 + 32) = v347;
        *(v346 + 48) = v436;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v430 = v446;
        *&v423[16] = v439;
        v424 = v440;
        v425 = v441;
        v426 = v442;
        v422 = v437;
        *v423 = v438;
        v348 = v265[7];
        v431 = v265[6];
        v432 = v348;
        v349 = v265[9];
        v351 = v265[6];
        v350 = v265[7];
        v433[0] = v265[8];
        v433[1] = v349;
        v419 = v351;
        v420 = v350;
        v352 = v265[9];
        v421[0] = v265[8];
        v421[1] = v352;
        sub_1D6AC2F10(&v431, &v414, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
        v353 = sub_1D6A5355C(&v422, &v419);
        v414 = v419;
        v415 = v420;
        v416[0] = v421[0];
        v416[1] = v421[1];
        sub_1D6AC2CBC(&v414, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
        *(v267 + 96) = &type metadata for FormatInspection;
        *(v267 + 104) = &off_1F51E3FD0;
        *(v267 + 72) = v353;
        v57 = sub_1D7073500(v267);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v437);
        v69 = v392;
        v70 = v262;
        v71 = v345;
LABEL_43:
        v72 = v302;
        v73 = v303;
        break;
      case 0x12uLL:
        goto LABEL_6;
      default:
        v75 = *(v46 + 16);
        v76 = *(v46 + 24);
        if (v75 >> 61 == 1 && (v77 = v75 & 0x1FFFFFFFFFFFFFFFLL, v78 = *(v77 + 56), v79 = *(v77 + 120), v416[1] = *(v77 + 104), v417 = v79, v80 = *(v77 + 88), v418 = *(v77 + 136), v81 = *(v77 + 72), v414 = v78, v415 = v81, v416[0] = v80, *(&v78 + 1)))
        {
          *&v413 = v76;
          v407 = v416[1];
          v408 = v417;
          LODWORD(v412) = v418;
          v395 = v45;
          v396 = v48;
          v82 = MEMORY[0x1E69E6F90];
          v393 = v47;
          v394 = v49;
          v83 = v46;
          sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1D7279970;
          sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v82);
          v411 = v85;
          sub_1D5EA74B8();
          v87 = *(v86 - 8);
          v410 = *(v87 + 72);
          v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
          v89 = swift_allocObject();
          v409 = xmmword_1D7273AE0;
          *(v89 + 16) = xmmword_1D7273AE0;
          v90 = (v89 + v88);
          v91 = type metadata accessor for FormatInspectionItem(0);
          v92 = v89 + v88 + *(v91 + 24);
          v93 = v416[0];
          *v92 = v415;
          *(v92 + 16) = v93;
          *(v92 + 32) = 0u;
          *(v92 + 48) = 4;
          v94 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v94 - 8) + 56))(v92, 0, 1, v94);
          *v90 = xmmword_1D72E27B0;
          v90[1] = 0u;
          v95 = v89 + v88 + *(v91 + 28);
          *v95 = 0u;
          *(v95 + 16) = -1;
          v96 = *(*(v91 - 8) + 56);
          v96(v89 + v88, 0, 1, v91);
          v392 = v83;
          sub_1D6AC2C20(v83, v395, v396, v393, v394, 3u);
          sub_1D6AC2F10(&v414, &v422, &qword_1EDF28820, &type metadata for FormatImageRequestData);
          sub_1D6795150(0x6953206567616D49, 0xEA0000000000657ALL, 0, 0, v89, &v434);
          swift_setDeallocating();
          sub_1D6AC314C(v89 + v88, sub_1D5EA74B8);
          swift_deallocClassInstance();
          *(v84 + 56) = &type metadata for FormatInspectionGroup;
          *(v84 + 64) = &off_1F518B2C0;
          v97 = swift_allocObject();
          *(v84 + 32) = v97;
          v98 = v435;
          *(v97 + 16) = v434;
          *(v97 + 32) = v98;
          *(v97 + 48) = v436;
          v99 = swift_allocObject();
          *(v99 + 16) = v409;
          sub_1D6AC2CBC(&v414, &qword_1EDF28820, &type metadata for FormatImageRequestData);
          if (v412)
          {
            v100 = 0;
            v101 = 0uLL;
            v102 = v413;
            v103 = 0uLL;
            v104 = 1;
          }

          else
          {
            v104 = 0;
            v100 = 5;
            v103 = v407;
            v101 = v408;
            v102 = v413;
          }

          v431 = v103;
          v432 = v101;
          *&v433[0] = 0;
          *(&v433[0] + 1) = v104;
          LOBYTE(v433[1]) = v100;
          sub_1D7124DC4(0, 0xE000000000000000, &v431, (v99 + v88));
          v96(v99 + v88, 0, 1, v91);
          sub_1D6795150(0x6150206567616D49, 0xEA00000000006874, 0, 0, v99, &v419);
          swift_setDeallocating();
          sub_1D6AC314C(v99 + v88, sub_1D5EA74B8);
          swift_deallocClassInstance();
          *(v84 + 96) = &type metadata for FormatInspectionGroup;
          *(v84 + 104) = &off_1F518B2C0;
          v386 = swift_allocObject();
          *(v84 + 72) = v386;
          v387 = v420;
          *(v386 + 16) = v419;
          *(v386 + 32) = v387;
          *(v386 + 48) = *&v421[0];
          v427 = v443;
          v428 = v444;
          v429 = v445;
          v430 = v446;
          *&v423[16] = v439;
          v424 = v440;
          v425 = v441;
          v426 = v442;
          v422 = v437;
          *v423 = v438;
          v388 = sub_1D6FAFFB8(&v422, *(v102 + 96));
          *(v84 + 136) = &type metadata for FormatInspection;
          *(v84 + 144) = &off_1F51E3FD0;
          *(v84 + 112) = v388;
          v57 = sub_1D7073500(v84);
          swift_setDeallocating();
          sub_1D5E4F358(0);
LABEL_57:
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_1D6202060(&v437);
LABEL_58:
          v69 = v392;
          v70 = v395;
          v71 = v396;
LABEL_59:
          v72 = v393;
          v73 = v394;
        }

        else
        {
          v427 = v443;
          v428 = v444;
          v429 = v445;
          v430 = v446;
          *&v423[16] = v439;
          v424 = v440;
          v425 = v441;
          v426 = v442;
          v422 = v437;
          *v423 = v438;
          v337 = *(v76 + 96);
          v213 = v45;
          v214 = v48;
          v215 = v47;
          v216 = v49;
          v217 = v46;
          sub_1D6AC2C20(v46, v45, v48, v47, v49, 3u);

          v218 = sub_1D6FAFFB8(&v422, v337);
LABEL_40:
          v57 = v218;

          sub_1D6202060(&v437);
          v69 = v217;
          v70 = v213;
          v71 = v214;
          v72 = v215;
          v73 = v216;
        }

        break;
    }

    v74 = 3;
LABEL_61:
    sub_1D6AC2D2C(v69, v70, v71, v72, v73, v74);
    return v57;
  }

  if (!*(v1 + 40))
  {
    v395 = *(v1 + 8);
    v396 = v48;
    v58 = v47;
    v393 = v47;
    v394 = v49;
    v59 = v49;
    v60 = v46;
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v61 = swift_allocObject();
    v404 = xmmword_1D7273AE0;
    *(v61 + 16) = xmmword_1D7273AE0;
    *&v413 = *(v60 + 24);
    v62 = *(v60 + 40);
    v63 = *(v60 + 64);
    v410 = *(v60 + 56);
    v411 = *(v60 + 72);
    *&v412 = v62;
    v64 = *(v60 + 104);
    *&v405 = *(v60 + 96);
    *&v407 = v64;
    *&v409 = *(v60 + 112);
    LODWORD(v408) = *(v60 + 120) | (*(v60 + 122) << 16);
    v65 = swift_allocObject();
    *(v65 + 16) = v404;
    v427 = v443;
    v428 = v444;
    v429 = v445;
    v430 = v446;
    *&v423[16] = v439;
    v424 = v440;
    v425 = v441;
    v426 = v442;
    v422 = v437;
    *v423 = v438;
    *&v414 = v63;
    sub_1D6AC2C20(v60, v395, v396, v58, v59, 0);
    *&v406 = v63;

    v66 = v409;
    v67 = v408;
    sub_1D62B7DCC(v409, v408);

    v68 = sub_1D6AAFB58(&v422, &v414);
    sub_1D5C84FF4(v414);
    *(v65 + 56) = &type metadata for FormatInspection;
    *(v65 + 64) = &off_1F51E3FD0;
    *(v65 + 32) = v68;
    *&v404 = sub_1D7073500(v65);
    swift_setDeallocating();
    sub_1D6AC314C(v65 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();

    sub_1D62B6F70(v66, v67);
    *(v61 + 56) = &type metadata for FormatInspection;
    *(v61 + 64) = &off_1F51E3FD0;
    *(v61 + 32) = v404;
    v57 = sub_1D7073500(v61);
    swift_setDeallocating();
    sub_1D6AC314C(v61 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v437);
    v69 = v60;
    v70 = v395;
    v71 = v396;
    v72 = v393;
    v73 = v394;
    v74 = 0;
    goto LABEL_61;
  }

  if (v50 != 1)
  {
    v105 = *(v1 + 8);
    v106 = *(v1 + 16);
    v107 = *(v1 + 24);
    v108 = *(v1 + 32);
    v109 = *v1;
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1D7273AE0;
    v427 = v443;
    v428 = v444;
    v429 = v445;
    v430 = v446;
    *&v423[16] = v439;
    v424 = v440;
    v425 = v441;
    v426 = v442;
    v422 = v437;
    *v423 = v438;
    v111 = *(v109 + 32);
    sub_1D6AC2C20(v109, v105, v106, v107, v108, 2u);

    v112 = sub_1D71C7B18(&v422, v111);

    *(v110 + 56) = &type metadata for FormatInspection;
    *(v110 + 64) = &off_1F51E3FD0;
    *(v110 + 32) = v112;
    v57 = sub_1D7073500(v110);
    swift_setDeallocating();
    sub_1D6AC314C(v110 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v437);
    v69 = v109;
    v70 = v105;
    v71 = v106;
    v72 = v107;
    v73 = v108;
    v74 = 2;
    goto LABEL_61;
  }

  v427 = v443;
  v428 = v444;
  v429 = v445;
  v430 = v446;
  *&v423[16] = v439;
  v424 = v440;
  v425 = v441;
  v426 = v442;
  v422 = v437;
  *v423 = v438;
  v51 = *(v46 + 32);
  v52 = v45;
  v53 = v48;
  v54 = v47;
  v55 = v49;
  v56 = v46;
  sub_1D6AC2C20(v46, v45, v48, v47, v49, 1u);

  v57 = sub_1D69F3870(&v422, v51);
  sub_1D6AC2D2C(v56, v52, v53, v54, v55, 1u);

  sub_1D6202060(&v437);
  return v57;
}

uint64_t sub_1D6AC13F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725B76C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2DFC(*(a1 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + OBJC_IVAR____TtC8NewsFeed24FormatWebEmbedDataConfig_json, v7, sub_1D5B57CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6AC314C(v7, sub_1D5B57CA0);
    v13 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v18[3] = v8;
    v18[4] = sub_1D6AC3090();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    sub_1D725F89C();
    (*(v9 + 8))(v12, v8);
    v13 = 0;
  }

  v15 = sub_1D725F88C();
  return (*(*(v15 - 8) + 56))(a2, v13, 1, v15);
}

void *sub_1D6AC1630(uint64_t a1)
{

  sub_1D6ABD018();
  sub_1D6A9DF10(a1, &v70, 0.0, 0.0, v3, v4);
  if (*(v1 + 40) == 3)
  {
    v7 = *v1;
    v6 = *(v1 + 8);
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    v59 = *(v1 + 32);
    switch((v7 >> 59) & 0x1E | (v7 >> 2) & 1)
    {
      case 1uLL:
      case 6uLL:
      case 7uLL:
        v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        goto LABEL_19;
      case 2uLL:
        sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
        v25 = (swift_projectBox() + *(v24 + 48));
        v26 = v25[1];
        v27 = v25[3];
        v54 = v25[2];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v26)
        {
          v29 = *(v26 + 16);
        }

        else
        {
          v29 = 0;
        }

        sub_1D6AC2C20(v7, v6, v8, v9, v59, 3u);

        sub_1D5EBC314(v54, v27);
        v50 = sub_1D6A4785C(&v60, v29);

        *(v28 + 56) = &type metadata for FormatInspection;
        *(v28 + 64) = &off_1F51E3FD0;
        *(v28 + 32) = v50;
        v42 = sub_1D7073500(v28);
        swift_setDeallocating();
        sub_1D6AC314C(v28 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v70);

        sub_1D5EBC358(v54, v27);
        v43 = v7;
        v44 = v6;
        v45 = v8;
        v46 = v9;
        goto LABEL_32;
      case 3uLL:
        sub_1D6AC2FE0(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, sub_1D6AC305C);
        v34 = (swift_projectBox() + *(v33 + 48));
        v35 = v34[1];
        v36 = v34[2];
        v37 = v34[3];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v35)
        {
          v39 = *(v35 + 16);
        }

        else
        {
          v39 = 0;
        }

        v56 = v8;
        v57 = v9;
        sub_1D6AC2C20(v7, v6, v8, v9, v59, 3u);

        sub_1D5EBC314(v36, v37);
        v52 = v36;
        v53 = sub_1D6A4785C(&v60, v39);

        *(v38 + 56) = &type metadata for FormatInspection;
        *(v38 + 64) = &off_1F51E3FD0;
        *(v38 + 32) = v53;
        v42 = sub_1D7073500(v38);
        swift_setDeallocating();
        sub_1D6AC314C(v38 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v70);

        sub_1D5EBC358(v52, v37);
        v43 = v7;
        v44 = v6;
        v45 = v56;
        goto LABEL_31;
      case 4uLL:
        v19 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v20 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v21 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v19)
        {
          v23 = *(v19 + 16);
        }

        else
        {
          v23 = 0;
        }

        v58 = v6;
        sub_1D6AC2C20(v7, v6, v8, v9, v59, 3u);

        sub_1D5EBC314(v20, v21);
        v48 = v20;
        v49 = sub_1D6A4785C(&v60, v23);

        *(v22 + 56) = &type metadata for FormatInspection;
        *(v22 + 64) = &off_1F51E3FD0;
        *(v22 + 32) = v49;
        v42 = sub_1D7073500(v22);
        swift_setDeallocating();
        sub_1D6AC314C(v22 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v70);

        sub_1D5EBC358(v48, v21);
        v43 = v7;
        v44 = v58;
        v45 = v8;
        v46 = v9;
        goto LABEL_32;
      case 5uLL:
      case 8uLL:
      case 9uLL:
      case 0xDuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
        goto LABEL_2;
      case 0xAuLL:
        v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        goto LABEL_19;
      case 0xBuLL:
        sub_1D6AC2FE0(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, sub_1D6AC2E64);
        v12 = (swift_projectBox() + *(v11 + 48));
        v13 = v12[1];
        v14 = v12[2];
        v55 = v12[3];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        v16 = v13;
        *(v15 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v13)
        {
          v17 = v14;
          v18 = *(v16 + 16);
          goto LABEL_15;
        }

        v17 = v14;
        v18 = 0;
        break;
      case 0xCuLL:
        v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
        goto LABEL_19;
      case 0xEuLL:
        sub_1D6AC2FE0(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, sub_1D6AC2DC8);
        v31 = (swift_projectBox() + *(v30 + 48));
        v32 = v31[1];
        v17 = v31[2];
        v55 = v31[3];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v32)
        {
          v18 = *(v32 + 16);
LABEL_15:
        }

        else
        {
          v18 = 0;
        }

        break;
      default:
        v10 = *(v7 + 32);
LABEL_19:
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D7273AE0;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v62 = v72;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v60 = v70;
        v61 = v71;
        if (v10)
        {
          v10 = *(v10 + 16);
        }

        sub_1D6AC2C20(v7, v6, v8, v9, v59, 3u);
        v41 = sub_1D6A4785C(&v60, v10);

        *(v40 + 56) = &type metadata for FormatInspection;
        *(v40 + 64) = &off_1F51E3FD0;
        *(v40 + 32) = v41;
        v42 = sub_1D7073500(v40);
        swift_setDeallocating();
        sub_1D6AC314C(v40 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v70);
        v43 = v7;
        v44 = v6;
        v45 = v8;
        v46 = v9;
        v47 = v59;
        goto LABEL_33;
    }

    v57 = v9;
    sub_1D6AC2C20(v7, v6, v8, v9, v59, 3u);

    sub_1D5EBC314(v17, v55);
    v51 = sub_1D6A4785C(&v60, v18);

    *(v15 + 56) = &type metadata for FormatInspection;
    *(v15 + 64) = &off_1F51E3FD0;
    *(v15 + 32) = v51;
    v42 = sub_1D7073500(v15);
    swift_setDeallocating();
    sub_1D6AC314C(v15 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v70);

    sub_1D5EBC358(v17, v55);
    v43 = v7;
    v44 = v6;
    v45 = v8;
LABEL_31:
    v46 = v57;
LABEL_32:
    v47 = v59;
LABEL_33:
    sub_1D6AC2D2C(v43, v44, v45, v46, v47, 3u);
    return v42;
  }

  else
  {
LABEL_2:
    sub_1D6202060(&v70);
    return 0;
  }
}

uint64_t sub_1D6AC2140()
{
  if (*(v0 + 40) != 3)
  {
    return 0;
  }

  v1 = *v0;
  result = 0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 2uLL:
      sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
      if (!*(*(swift_projectBox() + *(v3 + 48)) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
      return result;
    case 4uLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 192))
      {
        return 0;
      }

      goto LABEL_20;
    case 9uLL:
      sub_1D6AC2FE0(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
      if (!*(*(swift_projectBox() + *(v7 + 48)) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xAuLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38) + 144))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xBuLL:
      v4 = &qword_1EC884E78;
      v5 = type metadata accessor for FormatVideoData;
      v6 = sub_1D6AC2E64;
      goto LABEL_19;
    case 0xCuLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50) + 144))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xEuLL:
      v4 = &qword_1EC880340;
      v5 = type metadata accessor for FormatVideoPlayerData;
      v6 = sub_1D6AC2DC8;
LABEL_19:
      sub_1D6AC2FE0(0, v4, v5, v6);
      if (*(*(swift_projectBox() + *(v8 + 48)) + 144))
      {
        goto LABEL_20;
      }

      return 0;
    default:
      if (!*(*(v1 + 24) + 96))
      {
        return 0;
      }

LABEL_20:

      break;
  }

  return result;
}

uint64_t sub_1D6AC236C()
{
  v1 = *(v0 + 40);
  if (*(v0 + 40) <= 2u)
  {
    if (!*(v0 + 40))
    {
      return v1;
    }

    if (v1 == 1)
    {
      v2 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v3 = *(*v0 + *v2);
    goto LABEL_13;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      v3 = *(v0 + 8);
    }

    else
    {
      v3 = *(*(v0 + 16) + 32);
    }

LABEL_13:
    v1 = *(v3 + 80);
    goto LABEL_14;
  }

  v1 = sub_1D6EE9168();
LABEL_14:

  return v1;
}

void sub_1D6AC2420(uint64_t a1@<X8>)
{
  v2 = 0uLL;
  if (*(v1 + 40) == 3 && ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 4 && (v3 = *(*((*v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152)) != 0)
  {
    v4 = 0;
    v5 = *(v3 + 16);
    v2 = *(v5 + 48);
    v6 = *(v5 + 64);
  }

  else
  {
    v4 = 1;
    v6 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
}

uint64_t sub_1D6AC2480()
{
  if (*(v0 + 40) == 3 && ((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1) == 4 && (v1 = *(*((*v0 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152)) != 0 && *(*(v1 + 16) + 80))
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1D6AC24EC(uint64_t a1)
{

  sub_1D6ABD018();
  sub_1D6A9DF10(a1, v21, 0.0, 0.0, v3, v4);
  if (*(v1 + 40) == 3 && (v7 = *v1, ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 4))
  {
    v9 = *(v1 + 8);
    v8 = *(v1 + 16);
    v11 = *(v1 + 24);
    v10 = *(v1 + 32);
    v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v17 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v18 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v19[6] = v21[6];
    v19[7] = v21[7];
    v19[8] = v21[8];
    v20 = v22;
    v19[2] = v21[2];
    v19[3] = v21[3];
    v19[4] = v21[4];
    v19[5] = v21[5];
    v19[0] = v21[0];
    v19[1] = v21[1];
    v14 = *(v12 + 152);
    if (v14)
    {
      v15 = *(*(v14 + 16) + 80);
    }

    else
    {
      v15 = 0;
    }

    sub_1D6AC2C20(v7, v9, v8, v11, v10, 3u);

    sub_1D5EBC314(v18, v17);
    v16 = sub_1D6735C3C(v19, v15);

    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v16;
    v5 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D6AC314C(inited + 32, sub_1D5E4F358);
    sub_1D6202060(v21);
    sub_1D6AC2D2C(v7, v9, v8, v11, v10, 3u);

    sub_1D5EBC358(v18, v17);
  }

  else
  {
    sub_1D6202060(v21);
    return 0;
  }

  return v5;
}

char *sub_1D6AC2758()
{
  v1 = v0;
  if (sub_1D6AC2A8C())
  {
    if (*(v0 + 40) > 2u)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73E4810);
      type metadata accessor for CGRect(0);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0x2065687420666F20, 0xEE00746E65726170);
      v6 = 1;
      result = sub_1D6995C30(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(result + 2);
      v7 = *(result + 3);
      v5 = v4 + 1;
      if (v4 >= v7 >> 1)
      {
        v6 = 1;
        result = sub_1D6995C30((v7 > 1), v4 + 1, 1, result);
      }
    }

    else
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73E4810);
      type metadata accessor for CGRect(0);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD00000000000005DLL, 0x80000001D73E4830);
      result = sub_1D6995C30(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(result + 2);
      v3 = *(result + 3);
      v5 = v4 + 1;
      if (v4 >= v3 >> 1)
      {
        result = sub_1D6995C30((v3 > 1), v4 + 1, 1, result);
      }

      v6 = 0;
    }

    *(result + 2) = v5;
    v8 = &result[40 * v4];
    v8[32] = v6;
    *(v8 + 5) = 0xD000000000000017;
    *(v8 + 6) = 0x80000001D73E47F0;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0xE000000000000000;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v1 + 40) == 3 && ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 5;
  if (v9 && *(*((*v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 184) == 1)
  {
    v10 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v10;
    }

    else
    {
      result = sub_1D6995C30(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(result + 2);
    v11 = *(result + 3);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D6995C30((v11 > 1), v12 + 1, 1, result);
    }

    *(result + 2) = v12 + 1;
    v13 = &result[40 * v12];
    v13[32] = 1;
    *(v13 + 5) = 0xD00000000000001ALL;
    *(v13 + 6) = 0x80000001D73E4770;
    *(v13 + 7) = 0xD000000000000057;
    *(v13 + 8) = 0x80000001D73E4790;
  }

  return result;
}

BOOL sub_1D6AC2A8C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (*(v0 + 40) > 2u)
  {
    goto LABEL_8;
  }

  CGRectGetHeight(*(v0 + 112));
  if (sub_1D725A63C())
  {
    sub_1D6ABCE58();
    *&v18.origin.x = sub_1D6ABCE58().n128_u64[0];
    CGRectGetMinY(v18);
    sub_1D72632EC();
    goto LABEL_9;
  }

  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  CGRectGetWidth(v19);
  if ((sub_1D725A63C() & 1) == 0)
  {
LABEL_8:
    *&v5 = sub_1D6ABCE58().n128_u64[0];
    goto LABEL_9;
  }

  *&v9 = sub_1D6ABCE58().n128_u64[0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *&v20.origin.x = sub_1D6ABCE58().n128_u64[0];
  v16.n128_f64[0] = CGRectGetMinX(v20);
  if (v16.n128_f64[0] <= 0.0)
  {
    v16.n128_f64[0] = 0.0;
  }

  MEMORY[0x1DA6FA970](v16, v9, v11, v13, v15);
LABEL_9:
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v8;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  return !CGRectContainsRect(v21, v22);
}

uint64_t sub_1D6AC2C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    switch(a6)
    {
      case 5u:

        break;
      case 4u:

        break;
      case 3u:
        break;
      default:
        return result;
    }
  }

  else if (a6 >= 3u)
  {
    return result;
  }
}

uint64_t sub_1D6AC2CBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6AC2F90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6AC2D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    switch(a6)
    {
      case 5u:

        break;
      case 4u:

        break;
      case 3u:
        break;
      default:
        return result;
    }
  }

  else if (a6 >= 3u)
  {
    return result;
  }
}

uint64_t sub_1D6AC2DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AC2E98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D6AC2F10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6AC2F90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6AC2F90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6AC2FE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6AC3090()
{
  result = qword_1EDF3BAA8;
  if (!qword_1EDF3BAA8)
  {
    sub_1D725B76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BAA8);
  }

  return result;
}

void sub_1D6AC30E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6AC314C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6AC31AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6AC3DDC(a2, a1, a3);
  v19 = *(a3 + 16);
  FormatOptionValue.type.getter(&v18);
  FormatPropertyDefinition.type.getter(&v19);
  v4 = FormatOptionType.rawValue.getter();
  v6 = v5;
  if (v4 == FormatOptionType.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D72646CC();

    if ((v9 & 1) == 0)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v11 = v10;
      v12 = FormatPropertyDefinition.identifier.getter();
      v14 = v13;
      FormatPropertyDefinition.type.getter(&v18);
      v15 = v18;
      v19 = *(a3 + 16);
      FormatOptionValue.type.getter(&v17);
      v16 = v17;
      *v11 = v12;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 17) = v16;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D6AC4D8C(a3, type metadata accessor for FormatOption);
    }
  }

  return result;
}

uint64_t FormatOptionConverter.convert(option:context:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v8 = *a2;
  v9 = v5;
  v6 = sub_1D6AC33DC(&v8);
  FormatOptionConverter.convert(option:contextProperties:)(a1, v6, a3);
}

unint64_t sub_1D6AC33DC(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (!*(v1[10] + 16))
      {
        goto LABEL_15;
      }
    }

    else if (!*(v1[9] + 16))
    {
      goto LABEL_15;
    }
  }

  else if (v5 == 2)
  {
    if (!*(v1[11] + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v5 != 3)
    {
    }

    if (!*(v1[12] + 16))
    {
      goto LABEL_15;
    }
  }

  sub_1D5B69D90(v3, v4);
  if (v6)
  {
  }

LABEL_15:
  v8 = MEMORY[0x1E69E7CC0];

  return sub_1D605B0B0(v8);
}

uint64_t FormatOptionConverter.convert(option:contextProperties:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v32 = a3;
  v8 = type metadata accessor for FormatCompilerProperty(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = a1[1];
  if (*(a2 + 16) && (v19 = sub_1D5B69D90(*a1, a1[1]), (v20 & 1) != 0))
  {
    sub_1D5D67568(*(a2 + 56) + *(v9 + 72) * v19, v12, type metadata accessor for FormatCompilerProperty);
    sub_1D6AC6034(v12, v16, type metadata accessor for FormatCompilerProperty);
    v21 = v32;
    sub_1D6AC4104(a1, v16, v32);
    result = sub_1D6AC4D8C(v16, type metadata accessor for FormatCompilerProperty);
    if (!v4)
    {
      v23 = type metadata accessor for FormatOption();
      return (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    }
  }

  else
  {
    v24 = v5[6];
    v25 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v24);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73E49A0);
    MEMORY[0x1DA6F9910](v17, v18);
    MEMORY[0x1DA6F9910](0x6B636170206E6920, 0xEC00000020656761);
    v26 = v5[2];
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);

    MEMORY[0x1DA6F9910](v27, v28);

    MEMORY[0x1DA6F9910](0xD000000000000061, 0x80000001D73E49C0);
    (*(v25 + 40))(v30, v31, v24, v25);

    v29 = type metadata accessor for FormatOption();
    return (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  }

  return result;
}

void *FormatOptionConverter.convert(options:context:)(uint64_t a1, __int128 *a2)
{
  v6 = type metadata accessor for FormatCompilerProperty(0);
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v64 = &v58 - v11;
  sub_1D5D27E1C(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v58 - v14;
  v74 = type metadata accessor for FormatOption();
  v16 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v17);
  v73 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v58 - v24);
  v26 = *(a1 + 16);
  if (v26)
  {
    v63 = v3;
    v27 = *(a2 + 16);
    v76 = *a2;
    v77 = v27;
    v72 = v2;
    v28 = sub_1D6AC33DC(&v76);
    v61 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = a1 + v61;
    v30 = *(v16 + 72);
    v69 = (v16 + 56);
    v65 = "Discarding option ";
    v66 = "sparkles.rectangle.stack";
    v78 = MEMORY[0x1E69E7CC0];
    v67 = v15;
    v68 = (v16 + 48);
    v70 = v30;
    v71 = v28;
    while (1)
    {
      sub_1D5D67568(v29, v25, type metadata accessor for FormatOption);
      v32 = *v25;
      v33 = v25[1];
      if (*(v28 + 16) && (v34 = sub_1D5B69D90(*v25, v25[1]), (v35 & 1) != 0))
      {
        v36 = v59;
        sub_1D5D67568(*(v28 + 56) + *(v60 + 72) * v34, v59, type metadata accessor for FormatCompilerProperty);
        v37 = v36;
        v38 = v64;
        sub_1D6AC6034(v37, v64, type metadata accessor for FormatCompilerProperty);
        v39 = v63;
        sub_1D6AC4104(v25, v38, v15);
        if (v39)
        {
          sub_1D6AC4D8C(v64, type metadata accessor for FormatCompilerProperty);
          sub_1D6AC4D8C(v25, type metadata accessor for FormatOption);

          return v78;
        }

        v63 = 0;
        sub_1D6AC4D8C(v64, type metadata accessor for FormatCompilerProperty);
        v40 = 0;
      }

      else
      {
        v41 = v25;
        v42 = v72;
        v43 = v72[6];
        v44 = v72[7];
        v75 = __swift_project_boxed_opaque_existential_1(v72 + 3, v43);
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000012, v66 | 0x8000000000000000);
        MEMORY[0x1DA6F9910](v32, v33);
        MEMORY[0x1DA6F9910](0x6B636170206E6920, 0xEC00000020656761);
        v45 = v42[2];
        v25 = v41;
        v46 = *(v45 + 16);
        v47 = *(v45 + 24);

        MEMORY[0x1DA6F9910](v46, v47);

        MEMORY[0x1DA6F9910](0xD000000000000061, v65 | 0x8000000000000000);
        v48 = *(v44 + 40);
        v49 = v44;
        v15 = v67;
        v48(v76, *(&v76 + 1), v43, v49);

        v40 = 1;
      }

      v50 = v74;
      (*v69)(v15, v40, 1, v74);
      sub_1D6AC4D8C(v25, type metadata accessor for FormatOption);
      if ((*v68)(v15, 1, v50) == 1)
      {
        sub_1D6AC4DEC(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v31 = v70;
        v28 = v71;
      }

      else
      {
        v51 = v62;
        sub_1D6AC6034(v15, v62, type metadata accessor for FormatOption);
        sub_1D6AC6034(v51, v73, type metadata accessor for FormatOption);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1D5CEABA0(0, v78[2] + 1, 1, v78);
        }

        v54 = v78[2];
        v53 = v78[3];
        if (v54 >= v53 >> 1)
        {
          v78 = sub_1D5CEABA0(v53 > 1, v54 + 1, 1, v78);
        }

        v55 = v78;
        v78[2] = v54 + 1;
        v56 = v55 + v61 + v54 * v70;
        v31 = v70;
        sub_1D6AC6034(v73, v56, type metadata accessor for FormatOption);
      }

      v29 += v31;
      if (!--v26)
      {

        return v78;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6AC3DDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC5FCC();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[2];
  v20 = *(v19 + 56);
  sub_1D5D67568(a1, v17, type metadata accessor for FormatPropertyDefinition);
  *&v17[v20] = v18;
  if (swift_getEnumCaseMultiPayload() != 3)
  {

LABEL_6:
    sub_1D5D67568(a2, a3, type metadata accessor for FormatOption);
    v30 = sub_1D6AC5FCC;
    return sub_1D6AC4D8C(v17, v30);
  }

  sub_1D5D67568(v17, v13, type metadata accessor for FormatPropertyDefinition);
  if (v18 >> 60 != 5)
  {

    sub_1D6AC4D8C(v13, type metadata accessor for FormatEnumPropertyDefinition);
    goto LABEL_6;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v35 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v22 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  sub_1D6AC6034(v13, v9, type metadata accessor for FormatEnumPropertyDefinition);
  v23 = *a2;
  v24 = a2[1];
  v34 = v23;
  v25 = swift_allocObject();
  v26 = *(v9 + 5);
  v33 = *(v9 + 4);

  sub_1D6AC4D8C(v9, type metadata accessor for FormatEnumPropertyDefinition);
  v27 = v34;
  *(v25 + 16) = v33;
  *(v25 + 24) = v26;
  *(v25 + 32) = v35;
  *(v25 + 40) = v21;
  *(v25 + 48) = v22;
  *a3 = v27;
  *(a3 + 1) = v24;
  *(a3 + 2) = v25 | 0x1000000000000000;
  *(a3 + 3) = 1;
  v28 = *(type metadata accessor for FormatOption() + 28);
  v29 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v29 - 8) + 56))(&a3[v28], 1, 1, v29);

  v30 = type metadata accessor for FormatPropertyDefinition;
  return sub_1D6AC4D8C(v17, v30);
}

uint64_t sub_1D6AC4104@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1D6AC42C0(a1, a2, a3);
  if (!v3)
  {
    FormatCompilerProperty.type.getter(&v18);
    v19 = *(a3 + 16);
    FormatOptionValue.type.getter(&v17);
    v6 = FormatOptionType.rawValue.getter();
    v8 = v7;
    if (v6 == FormatOptionType.rawValue.getter() && v8 == v9)
    {
    }

    else
    {
      v10 = sub_1D72646CC();

      if ((v10 & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v12 = v11;
        v14 = *a3;
        v13 = *(a3 + 8);

        FormatCompilerProperty.type.getter(&v18);
        v15 = v18;
        v19 = *(a3 + 16);
        FormatOptionValue.type.getter(&v17);
        v16 = v17;
        *v12 = v14;
        *(v12 + 8) = v13;
        *(v12 + 16) = v15;
        *(v12 + 17) = v16;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D6AC4D8C(a3, type metadata accessor for FormatOption);
      }
    }
  }

  return result;
}

uint64_t sub_1D6AC42C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v4;
  v88 = a2;
  v103 = a3;
  sub_1D6AC4E74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v84 - v14;
  v16 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[2];
  v25 = v24 >> 60;
  if ((v24 >> 60) > 4)
  {
    if (v25 <= 0xD)
    {
      if (((1 << v25) & 0x36C0) != 0)
      {
        return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
      }

      if (v25 == 8)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v27 = v26;
        v29 = *a1;
        v28 = a1[1];

        FormatCompilerProperty.type.getter(&v96);
        v30 = v96;
        v31 = 0x80000001D73E4B20;
        *v27 = v29;
        *(v27 + 8) = v28;
        *(v27 + 16) = v30;
        v32 = 0xD00000000000002CLL;
LABEL_14:
        *(v27 + 24) = v32;
        *(v27 + 32) = v31;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      if (v25 == 11)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v27 = v51;
        v53 = *a1;
        v52 = a1[1];

        FormatCompilerProperty.type.getter(&v96);
        v54 = v96;
        v31 = 0x80000001D73E4AF0;
        *v27 = v53;
        *(v27 + 8) = v52;
        *(v27 + 16) = v54;
        v32 = 0xD00000000000002DLL;
        goto LABEL_14;
      }
    }

    v56 = (v24 & 0xFFFFFFFFFFFFFFFLL);
    v57 = v56[3];
    v86 = v56[2];
    v87 = v56[4];
    sub_1D5D67568(v88, v19, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v58 = v57;
      sub_1D6AC6034(v19, v23, type metadata accessor for FormatCompilerEnumProperty);
      v59 = (*(v3 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
      swift_beginAccess();
      v60 = v59[1];
      v61 = *(v23 + 2);
      v62 = *(v23 + 3);
      if (*(v60 + 16))
      {
        v63 = *v59;
        v85 = v58;

        v84 = v63;

        v64 = sub_1D5B69D90(v61, v62);
        if (v65)
        {
          sub_1D5D67568(*(v60 + 56) + *(v8 + 72) * v64, v15, sub_1D6AC4E74);
          v66 = *(v15 + 3);
          v98 = *(v15 + 2);
          v99 = v66;
          v100 = *(v15 + 4);
          v101 = v15[80];
          v67 = *(v15 + 1);
          v96 = *v15;
          v97 = v67;
          sub_1D62B7D1C(&v96, &v90);
          sub_1D6AC4D8C(v15, sub_1D6AC4E74);

          v69 = *a1;
          v68 = a1[1];
          v70 = swift_allocObject();
          v92 = v98;
          v93 = v99;
          v94 = v100;
          v95 = v101;
          v90 = v96;
          v91 = v97;
          v102[0] = v86;
          v102[1] = v85;
          v102[2] = v87;

          FormatOptionEnum.init(type:value:)(&v90, v102, (v70 + 16));
          if (v5)
          {

            sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
            return swift_deallocUninitializedObject();
          }

          v81 = v103;
          *v103 = v69;
          *(v81 + 1) = v68;
          *(v81 + 2) = v70 | 0x1000000000000000;
          *(v81 + 3) = 1;
          v82 = *(type metadata accessor for FormatOption() + 28);
          v83 = type metadata accessor for FormatVersionRequirement(0);
          (*(*(v83 - 8) + 56))(&v81[v82], 1, 1, v83);
          return sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
        }
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v78 = v77;
      sub_1D6AC4ED0();
      v80 = *(v79 + 48);
      *v78 = v61;
      v78[1] = v62;
      sub_1D5D67568(v88, v78 + v80, type metadata accessor for FormatCompilerProperty);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
    }

    sub_1D6AC4D8C(v19, type metadata accessor for FormatCompilerProperty);
    return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
  }

  if ((v25 - 2) < 3 || !v25)
  {
    return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
  }

  v33 = (v24 & 0xFFFFFFFFFFFFFFFLL);
  v34 = v33[3];
  v86 = v33[2];
  v35 = v33[5];
  v87 = v33[4];
  v36 = v33[6];
  v37 = (*(v3 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v38 = v37[1];
  v85 = *v37;
  v39 = *(v38 + 16);

  v88 = v35;
  v40 = v36;
  v41 = v86;

  if (!v39)
  {
LABEL_24:
    type metadata accessor for FormatLayoutError();
    sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v71 = v41;
    v71[1] = v34;
    v71[2] = v41;
    v71[3] = v34;
    v72 = v88;
    v71[4] = v87;
    v71[5] = v72;
    v71[6] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v42 = sub_1D5B69D90(v41, v34);
  if ((v43 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_1D5D67568(*(v38 + 56) + *(v8 + 72) * v42, v11, sub_1D6AC4E74);
  v44 = *(v11 + 3);
  v98 = *(v11 + 2);
  v99 = v44;
  v100 = *(v11 + 4);
  v101 = v11[80];
  v45 = *(v11 + 1);
  v96 = *v11;
  v97 = v45;
  sub_1D62B7D1C(&v96, &v90);
  sub_1D6AC4D8C(v11, sub_1D6AC4E74);

  v46 = v34;
  v47 = v41;
  v49 = *a1;
  v48 = a1[1];
  v50 = swift_allocObject();
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v95 = v101;
  v90 = v96;
  v91 = v97;
  v89[0] = v47;
  v89[1] = v46;
  v89[2] = v87;
  v89[3] = v88;
  v89[4] = v40;

  FormatOptionEnum.init(type:value:)(&v90, v89, (v50 + 16));
  if (v5)
  {

    return swift_deallocUninitializedObject();
  }

  v73 = v50 | 0x1000000000000000;
  v74 = v103;
  *v103 = v49;
  *(v74 + 1) = v48;
  *(v74 + 2) = v73;
  *(v74 + 3) = 1;
  v75 = *(type metadata accessor for FormatOption() + 28);
  v76 = type metadata accessor for FormatVersionRequirement(0);
  return (*(*(v76 - 8) + 56))(&v74[v75], 1, 1, v76);
}

uint64_t FormatOptionConverter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return v0;
}

uint64_t FormatOptionConverter.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AC4D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6AC4DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27E1C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6AC4E74()
{
  if (!qword_1EDF33890)
  {
    sub_1D5B4C700();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33890);
    }
  }
}

void sub_1D6AC4ED0()
{
  if (!qword_1EDF1B6F8)
  {
    type metadata accessor for FormatCompilerProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B6F8);
    }
  }
}

void *sub_1D6AC4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - v14;
  (*(v8 + 32))(&v19 - v14, v13);
  v16 = swift_allocObject();
  (*(v8 + 16))(v10, v15, a4);
  v17 = sub_1D6AC5098(a1, v10, v16, a4, a5);
  (*(v8 + 8))(v15, a4);
  return v17;
}

void *sub_1D6AC5098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6720];
  sub_1D5D27E1C(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v132 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v129 - v16;
  sub_1D5D27E1C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v10);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v140 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v139 = (&v129 - v27);
  v138 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v28 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v29);
  v146 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156[3] = a4;
  v156[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v156);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  sub_1D5B68374(v156, (a3 + 3));
  v32 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
  v155 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  sub_1D5D27E1C(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
  v34 = v33;
  v35 = sub_1D5D66C8C();
  v36 = sub_1D5B573D8(&qword_1EDF28988, type metadata accessor for FormatCompilerProperty);

  v142 = v36;
  v37 = sub_1D72623AC();
  v130 = a3;
  a3[8] = v37;
  v38 = *(v32 + 8);
  v133 = *(v38 + 16);
  if (v133)
  {
    v141 = v35;
    v136 = v24;
    v131 = v17;
    v129 = a1;
    v135 = v28;
    v134 = v38 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v137 = v38;

    v39 = 0;
    v145 = 0;
    v40 = MEMORY[0x1E69E7CC8];
    v41 = MEMORY[0x1E69E7CC8];
    v42 = MEMORY[0x1E69E7CC8];
    v43 = MEMORY[0x1E69E7CC8];
    v44 = v146;
    v143 = v34;
    while (1)
    {
      if (v39 >= *(v137 + 16))
      {
        goto LABEL_79;
      }

      v150 = v43;
      v45 = *(v135 + 72);
      v144 = v39;
      sub_1D5D67568(v134 + v45 * v39, v44, type metadata accessor for FormatCompilerSlotDefinition);
      v155 = *(v44 + 48);
      v154 = sub_1D72623AC();
      v151 = *(v138 + 40);
      v46 = v139;
      sub_1D6AC5F4C(v44 + v151, v139, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v47 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
      v48 = *(*(v47 - 8) + 48);
      v49 = v48(v46, 1, v47);
      v149 = v42;
      if (v49 == 1)
      {
        sub_1D6AC4DEC(v46, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v153 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v50 = *v46;

        sub_1D6AC4D8C(v46, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v155 = v50;
        v153 = sub_1D72623AC();
      }

      v51 = v151;
      v52 = v136;
      sub_1D6AC5F4C(v146 + v151, v136, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      if (v48(v52, 1, v47) == 1)
      {
        sub_1D6AC4DEC(v52, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v152 = MEMORY[0x1E69E7CC8];
        v42 = v149;
      }

      else
      {
        v53 = v131;
        sub_1D6AC5F4C(v52 + *(v47 + 20), v131, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        sub_1D6AC4D8C(v52, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v54 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
        if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
        {
          sub_1D6AC4DEC(v53, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v152 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          v55 = *v53;

          sub_1D6AC4D8C(v53, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v155 = v55;
          v152 = sub_1D72623AC();
        }

        v42 = v149;
      }

      v56 = v140;
      sub_1D6AC5F4C(v146 + v51, v140, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      if (v48(v56, 1, v47) == 1)
      {
        v57 = sub_1D6AC4DEC(v56, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v151 = MEMORY[0x1E69E7CC8];
        v59 = v146;
      }

      else
      {
        v60 = v132;
        sub_1D6AC5F4C(v56 + *(v47 + 20), v132, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        sub_1D6AC4D8C(v56, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v61 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
        if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
        {
          v57 = sub_1D6AC4DEC(v60, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v151 = MEMORY[0x1E69E7CC8];
          v59 = v146;
        }

        else
        {
          v62 = *(v60 + 8);

          v57 = sub_1D6AC4D8C(v60, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v59 = v146;
          if (v62)
          {
            v155 = v62;
            v151 = sub_1D72623AC();
          }

          else
          {
            v151 = MEMORY[0x1E69E7CC8];
          }
        }

        v42 = v149;
      }

      if ((*(v59 + 64) & 0x8000000000000000) != 0)
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v57, v58);
      *(&v129 - 2) = v59;
      v63 = v145;
      v65 = sub_1D5D6791C(sub_1D5D67AA0, (&v129 - 4), 0, v64);
      v66 = v65;
      v148 = *(v65 + 16);
      v145 = v63;
      if (v148)
      {
        v67 = 0;
        v68 = (v65 + 40);
        v147 = v65;
        while (1)
        {
          if (v67 >= *(v66 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v70 = *(v68 - 1);
          v69 = *v68;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v40;
          v72 = sub_1D5B69D90(v70, v69);
          v74 = v40[2];
          v75 = (v73 & 1) == 0;
          v76 = __OFADD__(v74, v75);
          v77 = v74 + v75;
          if (v76)
          {
            goto LABEL_71;
          }

          v78 = v73;
          if (v40[3] < v77)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_33;
          }

          v81 = v72;
          sub_1D6D7FBBC();
          v72 = v81;
          v80 = v155;
          if (v78)
          {
LABEL_34:
            *(v80[7] + 8 * v72) = v154;

            goto LABEL_38;
          }

LABEL_36:
          v80[(v72 >> 6) + 8] |= 1 << v72;
          v82 = (v80[6] + 16 * v72);
          *v82 = v70;
          v82[1] = v69;
          *(v80[7] + 8 * v72) = v154;
          v83 = v80[2];
          v76 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v76)
          {
            goto LABEL_75;
          }

          v80[2] = v84;

LABEL_38:

          v85 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v41;
          v86 = sub_1D5B69D90(v70, v69);
          v88 = v41[2];
          v89 = (v87 & 1) == 0;
          v76 = __OFADD__(v88, v89);
          v90 = v88 + v89;
          if (v76)
          {
            goto LABEL_72;
          }

          v91 = v87;
          if (v41[3] < v90)
          {
            sub_1D5D67BA8(v90, v85);
            v86 = sub_1D5B69D90(v70, v69);
            if ((v91 & 1) != (v92 & 1))
            {
              goto LABEL_81;
            }

LABEL_43:
            v93 = v155;
            if (v91)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          if (v85)
          {
            goto LABEL_43;
          }

          v94 = v86;
          sub_1D6D7FBBC();
          v86 = v94;
          v93 = v155;
          if (v91)
          {
LABEL_44:
            *(v93[7] + 8 * v86) = v153;

            goto LABEL_48;
          }

LABEL_46:
          v93[(v86 >> 6) + 8] |= 1 << v86;
          v95 = (v93[6] + 16 * v86);
          *v95 = v70;
          v95[1] = v69;
          *(v93[7] + 8 * v86) = v153;
          v96 = v93[2];
          v76 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v76)
          {
            goto LABEL_76;
          }

          v93[2] = v97;

LABEL_48:

          v98 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v42;
          v99 = sub_1D5B69D90(v70, v69);
          v101 = v42[2];
          v102 = (v100 & 1) == 0;
          v76 = __OFADD__(v101, v102);
          v103 = v101 + v102;
          if (v76)
          {
            goto LABEL_73;
          }

          v104 = v100;
          if (v42[3] >= v103)
          {
            if ((v98 & 1) == 0)
            {
              v126 = v99;
              sub_1D6D7FBBC();
              v99 = v126;
            }
          }

          else
          {
            sub_1D5D67BA8(v103, v98);
            v99 = sub_1D5B69D90(v70, v69);
            if ((v104 & 1) != (v105 & 1))
            {
              goto LABEL_81;
            }
          }

          v106 = v155;
          v149 = v80;
          if (v104)
          {
            v107 = v93;
            v108 = v155;
            *(v155[7] + 8 * v99) = v152;
          }

          else
          {
            v155[(v99 >> 6) + 8] |= 1 << v99;
            v109 = (v106[6] + 16 * v99);
            *v109 = v70;
            v109[1] = v69;
            *(v106[7] + 8 * v99) = v152;
            v110 = v106[2];
            v76 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v76)
            {
              goto LABEL_77;
            }

            v107 = v93;
            v108 = v106;
            v106[2] = v111;
          }

          v112 = v150;
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v112;
          v115 = sub_1D5B69D90(v70, v69);
          v116 = v112[2];
          v117 = (v114 & 1) == 0;
          v118 = v116 + v117;
          if (__OFADD__(v116, v117))
          {
            goto LABEL_74;
          }

          v119 = v114;
          if (v112[3] >= v118)
          {
            if ((v113 & 1) == 0)
            {
              sub_1D6D7FBBC();
            }
          }

          else
          {
            sub_1D5D67BA8(v118, v113);
            v120 = sub_1D5B69D90(v70, v69);
            if ((v119 & 1) != (v121 & 1))
            {
              goto LABEL_81;
            }

            v115 = v120;
          }

          v42 = v108;
          v41 = v107;
          if (v119)
          {

            v150 = v155;
            *(v155[7] + 8 * v115) = v151;

            v40 = v149;
          }

          else
          {
            v122 = v155;
            v155[(v115 >> 6) + 8] |= 1 << v115;
            v123 = (v122[6] + 16 * v115);
            *v123 = v70;
            v123[1] = v69;
            *(v122[7] + 8 * v115) = v151;
            v124 = v122[2];
            v76 = __OFADD__(v124, 1);
            v125 = v124 + 1;
            v40 = v149;
            if (v76)
            {
              goto LABEL_78;
            }

            v150 = v122;
            v122[2] = v125;
          }

          ++v67;
          v68 += 2;
          v66 = v147;
          if (v148 == v67)
          {
            goto LABEL_3;
          }
        }

        sub_1D5D67BA8(v77, isUniquelyReferenced_nonNull_native);
        v72 = sub_1D5B69D90(v70, v69);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_81;
        }

LABEL_33:
        v80 = v155;
        if (v78)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

LABEL_3:
      v39 = v144 + 1;

      v44 = v146;
      sub_1D6AC4D8C(v146, type metadata accessor for FormatCompilerSlotDefinition);
      v43 = v150;
      if (v39 == v133)
      {
        v127 = v150;

        goto LABEL_69;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC8];
    v42 = MEMORY[0x1E69E7CC8];
    v41 = MEMORY[0x1E69E7CC8];
    v40 = MEMORY[0x1E69E7CC8];
LABEL_69:
    __swift_destroy_boxed_opaque_existential_1(v156);
    result = v130;
    v130[9] = v40;
    result[10] = v41;
    result[11] = v42;
    result[12] = v127;
  }

  return result;
}

uint64_t sub_1D6AC5F4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D27E1C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6AC5FCC()
{
  if (!qword_1EDF25CB8)
  {
    type metadata accessor for FormatPropertyDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF25CB8);
    }
  }
}

uint64_t sub_1D6AC6034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Commands.copyArticle.getter()
{
  if (qword_1EDF3B028 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D6AC60FC(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B543A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v28 - v9;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [a1 routeURL];
  if (v18)
  {
    v19 = v18;
    sub_1D72584EC();

    v20 = sub_1D725844C();
    (*(v12 + 8))(v16, v11);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() nss:v17 NewsURLForArticleID:v20 routeURL:?];

  if (v21)
  {
    sub_1D72584EC();

    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1D5E3E404(v10);
    if (qword_1EDF3B028 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();

    v24 = [v23 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BBB8 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDF1BBC0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
    v28[1] = a1;
    sub_1D725D3DC();
    swift_allocObject();
    v26 = v25;
    swift_unknownObjectRetain();
    return sub_1D725D3AC();
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1D5E3E404(v10);
    return 0;
  }
}

uint64_t type metadata accessor for FormatDerivedDataBinderResult()
{
  result = qword_1EC891360;
  if (!qword_1EC891360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AC65D0()
{
  sub_1D5C8F9E0();
  if (v0 <= 0x3F)
  {
    sub_1D6AC6674();
    if (v1 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6AC6674()
{
  if (!qword_1EC891370)
  {
    type metadata accessor for FormatDerivedDataBindingSlotResult();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891370);
    }
  }
}

uint64_t sub_1D6AC66DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6AC6CE4(0, &qword_1EC891388, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AC6C90();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6AC685C(uint64_t a1)
{
  v2 = sub_1D6AC6C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AC6898(uint64_t a1)
{
  v2 = sub_1D6AC6C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6AC68D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6AC6A9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6AC6924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x656C7A7A7550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v11;

  result = sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = result;
  return result;
}

uint64_t sub_1D6AC6A9C(void *a1)
{
  sub_1D6AC6CE4(0, &qword_1EC891378, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AC6C90();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6AC6C90()
{
  result = qword_1EC891380;
  if (!qword_1EC891380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891380);
  }

  return result;
}

void sub_1D6AC6CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6AC6C90();
    v7 = a3(a1, &type metadata for DebugInspectionPuzzle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6AC6D5C()
{
  result = qword_1EC891390;
  if (!qword_1EC891390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891390);
  }

  return result;
}

unint64_t sub_1D6AC6DB4()
{
  result = qword_1EC891398;
  if (!qword_1EC891398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891398);
  }

  return result;
}

unint64_t sub_1D6AC6E0C()
{
  result = qword_1EC8913A0;
  if (!qword_1EC8913A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913A0);
  }

  return result;
}

char **sub_1D6AC6E60(char **a1, __int128 *a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v26 = *v2;
  v27 = v7;
  v28 = v9;
  v29 = v8;
  v10 = a2[5];
  v23 = a2[4];
  v24 = v10;
  v25 = a2[6];
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  v12 = a2[3];
  v21 = a2[2];
  v22 = v12;
  result = sub_1D62B2F7C(a1, &v19);
  if (!v3)
  {
    v14 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
    if (v14 <= 1)
    {
      if (!v14)
      {
        sub_1D5FE94C8(&v19, 3);
        return sub_1D5FE94C8(&v19, 4);
      }

      sub_1D5FE94C8(&v19, 8);
      sub_1D5FE94C8(&v19, 7);
      sub_1D5FE94C8(&v19, 6);
      v17 = v6 & 1;
      *&v19 = v17;
      *(&v19 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL;
      *&v20 = v9;
      *(&v20 + 1) = v8;

      sub_1D6AC6E60(a1, a2);
      v15 = v17;
      v16 = v7 & 0xEFFFFFFFFFFFFFFBLL;
      return sub_1D5F580D0(v15, v16);
    }

    if (v14 == 2)
    {
      v30 = 0;
      sub_1D5FE94C8(&v19, 11);
      sub_1D5FE94C8(&v19, 10);
      sub_1D5FE94C8(&v19, 9);
      *&v19 = v6 & 1;
      *(&v19 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL | 4;
      *&v20 = v9;
      *(&v20 + 1) = v8;

      sub_1D6AC6E60(a1, a2);
      v15 = v6 & 1;
      v16 = v7 & 0xEFFFFFFFFFFFFFFBLL | 4;
      return sub_1D5F580D0(v15, v16);
    }

    if (v7 != 0x1000000000000004 || v8 | v9 | v6)
    {
      sub_1D5FE94C8(&v19, 0);
      v18 = 2;
    }

    else
    {
      sub_1D5FE94C8(&v19, 0);
      v18 = 1;
    }

    return sub_1D5FE94C8(&v19, v18);
  }

  return result;
}

uint64_t static FormatTagIconStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDF1C280;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D6AC90B0(0, &qword_1EDF19860, sub_1D5F3FE7C);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4020000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  *a1 = 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
}

_BYTE *FormatTagIconStyle.init(prefersSource:font:padding:cornerRadius:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  return result;
}

uint64_t sub_1D6AC722C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v7 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v7 == 0x1000000000000004 && !(v9 | v10 | v8))
      {
        v54 = *(a3 + 96);
        v129 = *(a3 + 80);
        v130 = v54;
        v131 = *(a3 + 112);
        v132 = *(a3 + 128);
        v55 = *(a3 + 64);
        v127 = *(a3 + 48);
        v128 = v55;
        v56 = swift_allocObject();
        *&v115[39] = *(a3 + 80);
        *&v115[55] = *(a3 + 96);
        *&v115[71] = *(a3 + 112);
        v57 = *(a3 + 64);
        *&v115[7] = *(a3 + 48);
        *(v56 + 16) = a1;
        LOBYTE(v122) = 1;
        v115[87] = *(a3 + 128);
        *&v115[23] = v57;
        v58 = swift_allocObject();
        *(v58 + 16) = 0u;
        *(v58 + 32) = 0u;
        *(v58 + 81) = *&v115[32];
        *(v58 + 97) = *&v115[48];
        *(v58 + 113) = *&v115[64];
        *(v58 + 49) = *v115;
        *(v58 + 48) = 1;
        *(v58 + 129) = *&v115[80];
        *(v58 + 65) = *&v115[16];
        *(v58 + 144) = sub_1D6AC916C;
        *(v58 + 152) = v56;
        *a4 = v58 | 0x2000000000000000;
        sub_1D673F334(&v127, &v122);
        return swift_unknownObjectRetain();
      }

      v59 = *(a3 + 96);
      v129 = *(a3 + 80);
      v130 = v59;
      v131 = *(a3 + 112);
      v132 = *(a3 + 128);
      v60 = *(a3 + 64);
      v127 = *(a3 + 48);
      v128 = v60;
      v61 = swift_allocObject();
      *&v116[39] = *(a3 + 80);
      *&v116[55] = *(a3 + 96);
      *&v116[71] = *(a3 + 112);
      v62 = *(a3 + 64);
      *&v116[7] = *(a3 + 48);
      *(v61 + 16) = a1;
      LOBYTE(v122) = 1;
      v116[87] = *(a3 + 128);
      *&v116[23] = v62;
      v63 = swift_allocObject();
      *(v63 + 16) = 0u;
      *(v63 + 32) = 0u;
      *(v63 + 81) = *&v116[32];
      *(v63 + 97) = *&v116[48];
      *(v63 + 113) = *&v116[64];
      *(v63 + 49) = *v116;
      *(v63 + 48) = 1;
      *(v63 + 129) = *&v116[80];
      *(v63 + 65) = *&v116[16];
      *(v63 + 144) = sub_1D6AC9164;
      *(v63 + 152) = v61;
      *a4 = v63 | 0x2000000000000000;
      swift_unknownObjectRetain();
      return sub_1D673F334(&v127, &v122);
    }

    v112 = a2;
    v28 = *(a3 + 32);
    v29 = *(a3 + 16) * v28;
    v30 = v28 * *(a3 + 24);
    LOBYTE(v127) = 11;
    swift_getObjectType();
    v31 = sub_1D6F1DD74(a1, &v127);
    if (v31)
    {
      if (v29 <= 210.0 && v30 <= 210.0)
      {
        v64 = v31;
        v123 = sub_1D5C169F4();
        v124 = sub_1D5EECFF8();
        *&v122 = v64;
        v65 = *(a3 + 96);
        v129 = *(a3 + 80);
        v130 = v65;
        v131 = *(a3 + 112);
        v132 = *(a3 + 128);
        v66 = *(a3 + 64);
        v127 = *(a3 + 48);
        v128 = v66;
        v126 = 1;
        *&v120[23] = v66;
        *&v120[7] = v127;
        v120[87] = v132;
        *&v120[71] = v131;
        *&v120[39] = v129;
        *&v120[55] = v65;
        v67 = swift_allocObject();
        sub_1D5B63F14(&v122, v67 + 16);
        v68 = v126;
        v69 = swift_allocObject();
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0u;
        *(v69 + 48) = v68;
        *(v69 + 81) = *&v120[32];
        *(v69 + 97) = *&v120[48];
        *(v69 + 113) = *&v120[64];
        *(v69 + 129) = *&v120[80];
        *(v69 + 49) = *v120;
        *(v69 + 65) = *&v120[16];
        v70 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v127) = 10;
    v33 = sub_1D6F1DD74(a1, &v127);
    if (v33)
    {
      if (v29 <= 480.0 && v30 <= 480.0)
      {
        v75 = v33;
        v123 = sub_1D5C169F4();
        v124 = sub_1D5EECFF8();
        *&v122 = v75;
        v76 = *(a3 + 96);
        v129 = *(a3 + 80);
        v130 = v76;
        v131 = *(a3 + 112);
        v132 = *(a3 + 128);
        v77 = *(a3 + 64);
        v127 = *(a3 + 48);
        v128 = v77;
        v126 = 1;
        *&v121[23] = v77;
        *&v121[7] = v127;
        v121[87] = v132;
        *&v121[71] = v131;
        *&v121[39] = v129;
        *&v121[55] = v76;
        v67 = swift_allocObject();
        sub_1D5B63F14(&v122, v67 + 16);
        v78 = v126;
        v69 = swift_allocObject();
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0u;
        *(v69 + 81) = *&v121[32];
        *(v69 + 97) = *&v121[48];
        *(v69 + 113) = *&v121[64];
        *(v69 + 49) = *v121;
        *(v69 + 48) = v78;
        *(v69 + 129) = *&v121[80];
        *(v69 + 65) = *&v121[16];
        v70 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v127) = 9;
    v35 = sub_1D6F1DD74(a1, &v127);
    if (!v35)
    {
      v111 = v9;
      if (qword_1EDF1BB50 != -1)
      {
        swift_once();
      }

      sub_1D7262EBC();
      sub_1D6AC90B0(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1D7273AE0;
      v84 = [a1 identifier];
      v85 = sub_1D726207C();
      v87 = v86;

      *(v83 + 56) = MEMORY[0x1E69E6158];
      *(v83 + 64) = sub_1D5B7E2C0();
      *(v83 + 32) = v85;
      *(v83 + 40) = v87;
      sub_1D725C30C();

      *&v127 = v8 & 1;
      *(&v127 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL | 4;
      goto LABEL_64;
    }

    v36 = v35;
    v123 = sub_1D5C169F4();
    v124 = sub_1D5EECFF8();
    *&v122 = v36;
    v37 = *(a3 + 96);
    v129 = *(a3 + 80);
    v130 = v37;
    v131 = *(a3 + 112);
    v132 = *(a3 + 128);
    v38 = *(a3 + 64);
    v127 = *(a3 + 48);
    v128 = v38;
    v126 = 1;
    *&v125[23] = v38;
    *&v125[7] = v127;
    v125[87] = v132;
    *&v125[71] = v131;
    *&v125[39] = v129;
    *&v125[55] = v37;
    v67 = swift_allocObject();
    sub_1D5B63F14(&v122, v67 + 16);
    v39 = v126;
    v69 = swift_allocObject();
    *(v69 + 16) = 0u;
    *(v69 + 32) = 0u;
    v40 = *&v125[48];
    *(v69 + 81) = *&v125[32];
    *(v69 + 97) = v40;
    *(v69 + 113) = *&v125[64];
    v41 = *&v125[16];
    *(v69 + 49) = *v125;
    *(v69 + 48) = v39;
    *(v69 + 129) = *&v125[80];
    *(v69 + 65) = v41;
    v70 = sub_1D6723C3C;
LABEL_56:
    *(v69 + 144) = v70;
    *(v69 + 152) = v67;
    *a4 = v69 | 0x2000000000000000;
    return sub_1D673F334(&v127, &v122);
  }

  v112 = a2;
  if (v11)
  {
    v42 = *(a3 + 32);
    v43 = *(a3 + 16) * v42;
    v44 = v42 * *(a3 + 24);
    LOBYTE(v127) = 8;
    swift_getObjectType();
    v45 = sub_1D6F1DD74(a1, &v127);
    if (v45)
    {
      if (v43 <= 210.0 && v44 <= 210.0)
      {
        v71 = v45;
        v123 = sub_1D5C169F4();
        v124 = sub_1D5EECFF8();
        *&v122 = v71;
        v72 = *(a3 + 96);
        v129 = *(a3 + 80);
        v130 = v72;
        v131 = *(a3 + 112);
        v132 = *(a3 + 128);
        v73 = *(a3 + 64);
        v127 = *(a3 + 48);
        v128 = v73;
        v126 = 1;
        *&v117[23] = v73;
        *&v117[7] = v127;
        v117[87] = v132;
        *&v117[71] = v131;
        *&v117[39] = v129;
        *&v117[55] = v72;
        v67 = swift_allocObject();
        sub_1D5B63F14(&v122, v67 + 16);
        v74 = v126;
        v69 = swift_allocObject();
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0u;
        *(v69 + 81) = *&v117[32];
        *(v69 + 97) = *&v117[48];
        *(v69 + 113) = *&v117[64];
        *(v69 + 49) = *v117;
        *(v69 + 48) = v74;
        *(v69 + 129) = *&v117[80];
        *(v69 + 65) = *&v117[16];
        v70 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v127) = 7;
    v47 = sub_1D6F1DD74(a1, &v127);
    if (v47)
    {
      if (v43 <= 480.0 && v44 <= 480.0)
      {
        v79 = v47;
        v123 = sub_1D5C169F4();
        v124 = sub_1D5EECFF8();
        *&v122 = v79;
        v80 = *(a3 + 96);
        v129 = *(a3 + 80);
        v130 = v80;
        v131 = *(a3 + 112);
        v132 = *(a3 + 128);
        v81 = *(a3 + 64);
        v127 = *(a3 + 48);
        v128 = v81;
        v126 = 1;
        *&v118[23] = v81;
        *&v118[7] = v127;
        v118[87] = v132;
        *&v118[71] = v131;
        *&v118[39] = v129;
        *&v118[55] = v80;
        v67 = swift_allocObject();
        sub_1D5B63F14(&v122, v67 + 16);
        v82 = v126;
        v69 = swift_allocObject();
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0u;
        *(v69 + 81) = *&v118[32];
        *(v69 + 97) = *&v118[48];
        *(v69 + 113) = *&v118[64];
        *(v69 + 49) = *v118;
        *(v69 + 48) = v82;
        *(v69 + 129) = *&v118[80];
        *(v69 + 65) = *&v118[16];
        v70 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v127) = 6;
    v49 = sub_1D6F1DD74(a1, &v127);
    if (v49)
    {
      v50 = v49;
      v123 = sub_1D5C169F4();
      v124 = sub_1D5EECFF8();
      *&v122 = v50;
      v51 = *(a3 + 96);
      v129 = *(a3 + 80);
      v130 = v51;
      v131 = *(a3 + 112);
      v132 = *(a3 + 128);
      v52 = *(a3 + 64);
      v127 = *(a3 + 48);
      v128 = v52;
      v126 = 1;
      *&v119[23] = v52;
      *&v119[7] = v127;
      v119[87] = v132;
      *&v119[71] = v131;
      *&v119[39] = v129;
      *&v119[55] = v51;
      v67 = swift_allocObject();
      sub_1D5B63F14(&v122, v67 + 16);
      v53 = v126;
      v69 = swift_allocObject();
      *(v69 + 16) = 0u;
      *(v69 + 32) = 0u;
      *(v69 + 81) = *&v119[32];
      *(v69 + 97) = *&v119[48];
      *(v69 + 113) = *&v119[64];
      *(v69 + 49) = *v119;
      *(v69 + 48) = v53;
      *(v69 + 129) = *&v119[80];
      *(v69 + 65) = *&v119[16];
      v70 = sub_1D6AC91D8;
      goto LABEL_56;
    }

    v111 = v9;
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D6AC90B0(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1D7273AE0;
    v89 = [a1 identifier];
    v90 = sub_1D726207C();
    v92 = v91;

    *(v88 + 56) = MEMORY[0x1E69E6158];
    *(v88 + 64) = sub_1D5B7E2C0();
    *(v88 + 32) = v90;
    *(v88 + 40) = v92;
    sub_1D725C30C();

    *&v127 = v8 & 1;
    *(&v127 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL;
LABEL_64:
    *&v128 = v10;
    *(&v128 + 1) = v111;

    sub_1D6AC722C(a1, v112, a3);
    return sub_1D5F580D0(v127, *(&v127 + 1));
  }

  v110 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  sub_1D6AC90B0(0, &qword_1EDF021A8, sub_1D6AC9104);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1D7270C10;
  v16 = sub_1D6AC9048;
  if (v8)
  {
    v17 = sub_1D6AC90A8;
  }

  else
  {
    v17 = sub_1D6AC9048;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  if ((v8 & 1) == 0)
  {
    v16 = sub_1D6AC90A8;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v18;
  if (v8)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  *(v14 + 48) = v16;
  *(v14 + 56) = v19;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  v20 = *(v15 + 32);

  v20(&v127, v21);

  v22 = v127;
  if ((~v127 & 0xF000000000000007) != 0 || (v23 = *(v15 + 48), v24 = , v23(&v127, v24), , v22 = v127, (~v127 & 0xF000000000000007) != 0))
  {

    *a4 = v22;
  }

  else
  {

    *&v127 = v7;

    v25 = v133;
    v26 = sub_1D5F4FDC4(v112);
    if (v25)
    {
    }

    else
    {
      v109 = v26;

      *&v127 = v112;
      v133 = 0;
      v93 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v94 = v93();
      v95 = v133;
      v96 = sub_1D5E02AFC(v94, v10);

      if (v95)
      {
      }

      else
      {
        *&v127 = v112;
        v97 = v93();
        v98 = sub_1D5E02AFC(v97, v110);

        v133 = 0;
        ObjectType = swift_getObjectType();
        v99 = FCTagProviding.iconColor.getter();
        v100 = objc_opt_self();
        v101 = v109;
        v102 = [v100 whiteColor];
        v103 = [v99 _isSimilarToColor_withinPercentage_];

        if (v103)
        {
          v104 = [v100 blackColor];

          v99 = v104;
        }

        v105 = swift_allocObject();
        v106 = *(a3 + 16);
        v107 = *(a3 + 24);
        *&v127 = v98;
        *(&v127 + 1) = v99;
        *&v128 = v101;
        *(&v128 + 1) = v96;
        v108 = FCTagProviding.createTagImage(imageSize:style:)(&v127, ObjectType, v106, v107);

        *(v105 + 16) = v108;
        *a4 = v105;
      }
    }
  }

  return result;
}

double sub_1D6AC81A4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v11 = 0;
    swift_getObjectType();
    v6 = &v11;
  }

  else
  {
    v7 = [a1 userInterfaceStyle];
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v12 = 0;
        swift_getObjectType();
        v6 = &v12;
      }

      else
      {
        v14 = 1;
        swift_getObjectType();
        v6 = &v14;
      }
    }

    else
    {
      v13 = 1;
      swift_getObjectType();
      v6 = &v13;
    }
  }

  v8 = sub_1D6F1DD74(a3, v6);
  if (v8)
  {
    v9 = v8;
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v9;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1D6AC828C@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    v9 = 0;
    swift_getObjectType();
    v5 = &v9;
  }

  else
  {
    v10 = 2;
    swift_getObjectType();
    v5 = &v10;
  }

  v6 = sub_1D6F1DD74(a2, v5);
  if (v6)
  {
    v7 = v6;
    *(a3 + 24) = sub_1D5C169F4();
    *(a3 + 32) = sub_1D5EECFF8();
    *a3 = v7;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6AC8328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LOBYTE(v22[0]) = 3;
  swift_getObjectType();
  result = sub_1D6F1DD74(a1, v22);
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v9 = *(a2 + 80);
    v10 = *(a2 + 112);
    v22[3] = *(a2 + 96);
    v22[4] = v10;
    v23 = *(a2 + 128);
    v11 = *(a2 + 64);
    v22[0] = *(a2 + 48);
    v22[1] = v11;
    v22[2] = v9;
    v12 = swift_allocObject();
    __asm { FMOV            V1.2D, #1.0 }

    *(v8 + 16) = xmmword_1D731C7A0;
    *(v8 + 32) = _Q1;
    v18 = *(a2 + 96);
    *(v8 + 88) = *(a2 + 80);
    *(v8 + 104) = v18;
    *(v8 + 120) = *(a2 + 112);
    v19 = *(a2 + 64);
    *(v8 + 56) = *(a2 + 48);
    *(v12 + 16) = v7;
    *(v8 + 48) = 0;
    *(v8 + 136) = *(a2 + 128);
    *(v8 + 72) = v19;
    v20 = v8 | 0x2000000000000000;
    *(v8 + 144) = sub_1D6AC9174;
    *(v8 + 152) = v12;
    result = sub_1D673F334(v22, v21);
  }

  else
  {
    v20 = 0xF000000000000007;
  }

  *a3 = v20;
  return result;
}

id sub_1D6AC844C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if ((*(a1 + 16) >= 75.0 || *(a1 + 24) >= 75.0) && (LOBYTE(v16[0]) = 5, swift_getObjectType(), (result = sub_1D6F1DD74(a2, v16)) != 0) || (LOBYTE(v16[0]) = 4, swift_getObjectType(), (result = sub_1D6F1DD74(a2, v16)) != 0))
  {
    v7 = result;
    v8 = swift_allocObject();
    v9 = *(a1 + 80);
    v10 = *(a1 + 112);
    v16[3] = *(a1 + 96);
    v16[4] = v10;
    v17 = *(a1 + 128);
    v11 = *(a1 + 64);
    v16[0] = *(a1 + 48);
    v16[1] = v11;
    v16[2] = v9;
    v12 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    v13 = *(a1 + 96);
    *(v8 + 88) = *(a1 + 80);
    *(v8 + 104) = v13;
    *(v8 + 120) = *(a1 + 112);
    v14 = *(a1 + 64);
    *(v8 + 56) = *(a1 + 48);
    *(v12 + 16) = v7;
    *(v8 + 48) = 1;
    *(v8 + 136) = *(a1 + 128);
    *(v8 + 72) = v14;
    *(v8 + 144) = sub_1D6AC91D4;
    *(v8 + 152) = v12;
    *a3 = v8 | 0x2000000000000000;
    return sub_1D673F334(v16, v15);
  }

  else
  {
    *a3 = 0xF000000000000007;
  }

  return result;
}

uint64_t FormatTagIconPreferredSource.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed18FormatTagIconStyleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a1[1];
  v8 = a2[1];
  v9 = v6;
  if ((static FormatFont.== infix(_:_:)(&v9, &v8) & 1) == 0 || (sub_1D633A310(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A310(v2, v4);
}

uint64_t _s8NewsFeed16FormatTagBindingV5ImageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = (v2 >> 59) & 2 | (v2 >> 2) & 1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v2 == 0x1000000000000004 && (v4 | v5 | v3) == 0)
      {
        if (((v6 >> 59) & 2 | (v6 >> 2) & 1) == 3 && v6 == 0x1000000000000004 && (v8 | v9 | v7) == 0)
        {
          sub_1D5F580D0(0, 0x1000000000000004uLL);
          sub_1D5F580D0(0, 0x1000000000000004uLL);
          v11 = 1;
          return v11 & 1;
        }
      }

      else if (((v6 >> 59) & 2 | (v6 >> 2) & 1) == 3 && v7 == 1 && v6 == 0x1000000000000004 && (v8 | v9) == 0)
      {
        v11 = 1;
        sub_1D5F580D0(1, 0x1000000000000004uLL);
        sub_1D5F580D0(1, 0x1000000000000004uLL);
        return v11 & 1;
      }

LABEL_34:
      sub_1D5F58484(*a2, a2[1]);
      sub_1D5F58484(v3, v2);
      sub_1D5F580D0(v3, v2);
      sub_1D5F580D0(v7, v6);
      v11 = 0;
      return v11 & 1;
    }

    if (((v6 >> 59) & 2 | (v6 >> 2) & 1) != 2)
    {
      goto LABEL_34;
    }

LABEL_9:
    LOBYTE(v23) = v3 & 1;
    v24 = v2 & 0xEFFFFFFFFFFFFFFBLL;
    v25 = v5;
    v26 = v4;
    LOBYTE(v19) = v7 & 1;
    v20 = v6 & 0xEFFFFFFFFFFFFFFBLL;
    goto LABEL_10;
  }

  if (v10)
  {
    if (((v6 >> 59) & 2 | (v6 >> 2) & 1) != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  if ((v6 >> 59) & 2 | (v6 >> 2) & 1)
  {
    goto LABEL_34;
  }

  LOBYTE(v23) = v3 & 1;
  v24 = v2;
  v25 = v5;
  v26 = v4;
  LOBYTE(v19) = v7 & 1;
  v20 = v6;
LABEL_10:
  v21 = v9;
  v22 = v8;
  sub_1D5F58484(v7, v6);
  sub_1D5F58484(v3, v2);
  sub_1D5F58484(v7, v6);
  sub_1D5F58484(v3, v2);
  v11 = _s8NewsFeed18FormatTagIconStyleV2eeoiySbAC_ACtFZ_0(&v23, &v19);
  sub_1D5F580D0(v3, v2);
  sub_1D5F580D0(v7, v6);
  sub_1D5F580D0(v7, v6);
  sub_1D5F580D0(v3, v2);
  return v11 & 1;
}

unint64_t sub_1D6AC8B28(uint64_t a1)
{
  result = sub_1D66BE2BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8B90()
{
  result = qword_1EC8913B0;
  if (!qword_1EC8913B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913B0);
  }

  return result;
}

unint64_t sub_1D6AC8BE4(uint64_t a1)
{
  result = sub_1D6AC8C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8C0C()
{
  result = qword_1EC8913B8;
  if (!qword_1EC8913B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913B8);
  }

  return result;
}

unint64_t sub_1D6AC8CA0()
{
  result = qword_1EC8913C0;
  if (!qword_1EC8913C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913C0);
  }

  return result;
}

unint64_t sub_1D6AC8CF8()
{
  result = qword_1EC8913C8;
  if (!qword_1EC8913C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913C8);
  }

  return result;
}

unint64_t sub_1D6AC8D4C(uint64_t a1)
{
  result = sub_1D6AC8D74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8D74()
{
  result = qword_1EC8913D0;
  if (!qword_1EC8913D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913D0);
  }

  return result;
}

uint64_t sub_1D6AC8E08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatTagBindingV5ImageO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >> 2;
  v3 = (v1 >> 2) & 1 | (v1 >> 59) & 2;
  if (v3 == 3)
  {
    return (v2 & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6AC8E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
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

uint64_t sub_1D6AC8EDC(uint64_t result, int a2, int a3)
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

void *sub_1D6AC8F3C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = ((a2 << 59) | (4 * a2)) & 0x1000000000000004 | result[1] & 0xEFFFFFFFFFFFFFF8;
    *result &= 1uLL;
    result[1] = v2;
  }

  else
  {
    *result = (a2 - 3) & 1;
    result[1] = (4 * (a2 - 3)) | 0x1000000000000004;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_1D6AC8FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6AC8FE8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t objectdestroy_48Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

void sub_1D6AC90B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6AC9104()
{
  result = qword_1EDF12970;
  if (!qword_1EDF12970)
  {
    sub_1D5B49CBC(255, &qword_1EDF12978);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDF12970);
  }

  return result;
}

id sub_1D6AC9178@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5EECFF8();
  *a1 = v4;

  return v4;
}

uint64_t sub_1D6AC91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 32);
  *v57 = *(a2 + 16);
  *&v57[16] = v11;
  v58[0] = *(a2 + 48);
  *(v58 + 15) = *(a2 + 63);
  v12 = sub_1D688DD04(a1);
  if (v6)
  {
  }

  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v47 = v12;
  if (!v13)
  {
LABEL_20:
    v56[0] = a4;
    v56[1] = a5;

    sub_1D70BE5B0(v56, a6, v57);

    v41 = *v57;
    v42 = v14;
    v43 = *&v57[24];
    v44 = *&v58[0];
    sub_1D6AC9CBC();
    v55 = *&v57[8];
    result = swift_allocObject();
    *(result + 16) = v47;
    *(result + 24) = v42;
    *(result + 32) = v41;
    *(result + 40) = v55;
    *(result + 56) = v43;
    *(result + 64) = v44;
    return result;
  }

  v45 = a4;
  v56[0] = MEMORY[0x1E69E7CC0];
  v53 = v13;
  sub_1D6997A40(0, v13, 0);
  v14 = v56[0];
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
  if (*(a6 + 16))
  {
    v19 = (a3 + 104);
    v20 = *(a3 + 64);
    v48 = a6;
    while (1)
    {
      sub_1D5D03180(v15, v16, v17);

      sub_1D5D03180(v15, v16, v17);
      v21 = sub_1D5B69D90(v18, v20);
      if ((v22 & 1) == 0)
      {
        v52 = v16;
        v54 = v20;
        v50 = v17;
        v32 = v15;
        goto LABEL_14;
      }

      v23 = (*(a6 + 56) + 40 * v21);
      v24 = v23[1];
      v25 = v23[2];
      v49 = v23[3];
      v51 = *v23;
      v26 = v23[4];

      v59 = v26;

      sub_1D5D07BA8(v15, v16, v17);

      v56[0] = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D6997A40((v27 > 1), v28 + 1, 1);
        v14 = v56[0];
      }

      *(v14 + 16) = v28 + 1;
      v29 = v14 + (v28 << 6);
      *(v29 + 32) = v15;
      *(v29 + 40) = v16;
      *(v29 + 48) = v17;
      v30 = *&v57[3];
      *(v29 + 49) = *v57;
      *(v29 + 52) = v30;
      *(v29 + 56) = v51;
      *(v29 + 64) = v24;
      *(v29 + 72) = v25;
      *(v29 + 80) = v49;
      *(v29 + 88) = v59;
      if (v53 == 1)
      {
        break;
      }

      --v53;
      v15 = *(v19 - 4);
      v16 = *(v19 - 3);
      v17 = *(v19 - 16);
      v18 = *(v19 - 1);
      v20 = *v19;
      v19 += 5;
      a6 = v48;
      if (!*(v48 + 16))
      {
        goto LABEL_12;
      }
    }

    a6 = v48;
    a4 = v45;
    goto LABEL_20;
  }

  v20 = *(a3 + 64);
LABEL_12:
  sub_1D5D03180(v15, v16, v17);
  v54 = v20;

  v31 = v16;
  v32 = v15;
  v52 = v31;
  v50 = v17;
  sub_1D5D03180(v15, v31, v17);
LABEL_14:
  v33 = type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  v59 = v33;
  swift_allocError();
  v35 = v34;
  v36 = *(a6 + 16);
  if (!v36)
  {
    v40 = v54;

    v37 = MEMORY[0x1E69E7CC0];
    v39 = v32;
    goto LABEL_18;
  }

  v37 = sub_1D5B9A6D8(*(a6 + 16), 0);
  v46 = sub_1D5E2A8BC(v57, v37 + 4, v36, a6);

  result = sub_1D5B87E38();
  if (v46 == v36)
  {
    v39 = v32;
    v40 = v54;
LABEL_18:
    *v35 = v18;
    v35[1] = v40;
    v35[2] = v37;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D5D07BA8(v39, v52, v50);

    sub_1D5D07BA8(v39, v52, v50);
  }

  __break(1u);
  return result;
}

void *sub_1D6AC9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1D688DD04(a1);
  if (v5)
  {
  }

  v22 = v8;
  v9 = *(a3 + 16);
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6999C9C(0, v9, 0);
    v10 = v25;
    v11 = a3 + 56;
    v23 = a5;
    do
    {
      v24 = v10;
      v12 = *(v11 - 24);
      v13 = *(v11 - 16);
      v14 = *(v11 - 8);
      sub_1D5D03180(v12, v13, v14);

      sub_1D5D03180(v12, v13, v14);
      v15 = sub_1D5E42CB0(a5);
      sub_1D5D07BA8(v12, v13, v14);

      v10 = v24;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D6999C9C((v16 > 1), v17 + 1, 1);
        v10 = v24;
      }

      v11 += 32;
      *(v10 + 16) = v17 + 1;
      v18 = v10 + 32 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v14;
      *(v18 + 56) = v15;
      --v9;
      a5 = v23;
    }

    while (v9);
    v19 = v10;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D5E42CB0(a5);

  sub_1D6AC9C64();
  result = swift_allocObject();
  result[2] = v22;
  result[3] = v19;
  result[4] = v20;
  return result;
}

uint64_t sub_1D6AC987C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v12 = *a1;
  v13 = v3;
  v14 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v9 = *a2;
  v10 = v5;
  v11 = v6;
  sub_1D5D03180(v12, v3, v4);
  sub_1D5D03180(v9, v5, v6);
  v7 = _s8NewsFeed18FormatCommandStateO2eeoiySbAC_ACtFZ_0(&v12, &v9);
  sub_1D5D07BA8(v9, v10, v11);
  sub_1D5D07BA8(v12, v13, v14);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue.CaseValue();
  return sub_1D7261FBC() & 1;
}

uint64_t static FormatCommandValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 32);
  v9[0] = *(*a1 + 16);
  v9[1] = v4;
  v10[0] = *(v2 + 48);
  *(v10 + 15) = *(v2 + 63);
  v5 = *(v3 + 32);
  v7[0] = *(v3 + 16);
  v7[1] = v5;
  v8[0] = *(v3 + 48);
  *(v8 + 15) = *(v3 + 63);
  if ((static FormatCommandBinding.== infix(_:_:)(v9, v7) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue.CaseValue();
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6AC9B08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AC9BAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AC9C28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6AC9C64()
{
  if (!qword_1EDF0D020)
  {
    sub_1D62B7E2C();
    v0 = type metadata accessor for FormatCommandActionValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0D020);
    }
  }
}

void sub_1D6AC9CBC()
{
  if (!qword_1EDF263C0[0])
  {
    v0 = type metadata accessor for FormatCommandActionValue();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF263C0);
    }
  }
}

uint64_t sub_1D6AC9D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  sub_1D5F7BAC0();
  v42 = v5;
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - v10;
  sub_1D6ACA9A4();
  v39 = v12;
  v37 = *(v12 - 8);
  v13 = v37;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  v44 = &unk_1F5119338;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1D5E4B3E4();
  sub_1D6ACAB18(&qword_1EC8913F0, sub_1D5E4B3E4);
  sub_1D6ACAA68();
  sub_1D6ACAAC4();

  v36 = v20;
  sub_1D72619DC();
  v44 = 0;
  v45 = 1;
  sub_1D7260EDC();
  v34 = v11;
  sub_1D72617DC();
  v22 = *(v13 + 16);
  v35 = v16;
  v23 = v20;
  v24 = v39;
  v22(v16, v23, v39);
  v26 = v40;
  v25 = v41;
  v27 = *(v40 + 16);
  v28 = v42;
  v27(v41, v11, v42);
  v29 = v43;
  v22(v43, v16, v24);
  sub_1D6ACA934();
  v27(&v29[*(v30 + 48)], v25, v28);
  v31 = *(v26 + 8);
  v31(v34, v28);
  v32 = *(v37 + 8);
  v32(v36, v24);
  v31(v25, v28);
  return (v32)(v35, v24);
}

uint64_t sub_1D6ACA0BC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v5 = v10;

  sub_1D6ACA180(&v10, a2, v11);
  v6 = v11[0];
  v7 = v11[1];
  type metadata accessor for DebugFormatPackageTree();
  sub_1D6ACAB18(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
  result = sub_1D7260F8C();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1D6ACA180@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49[0] = a3;
  v49[1] = a2;
  sub_1D5B592C0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v50 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v49 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v49 - v17);
  v19 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v49 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v49 - v29;
  v31 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  if (!v31)
  {
    sub_1D72600CC();

    v41 = *(v51 + 16);

    sub_1D5E4B804(v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v30, type metadata accessor for FormatCompilerOptions);

    v42 = v50;
    sub_1D5E4B804(&v30[*(v19 + 24)], v50, sub_1D5B592C0);
    sub_1D5E4B924(v30, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v42, v18);
    v36 = *v18;
    v37 = v18[1];
    sub_1D5E4B8D0(*v18, v37);
    result = sub_1D5E4B924(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v37 != 1)
    {

      v39 = v36;
      v40 = v37;
      goto LABEL_10;
    }

LABEL_8:
    v47 = v49[0];
    *v49[0] = 0;
    *(v47 + 8) = 0;
    return result;
  }

  if (v31 != 1)
  {
    sub_1D72600CC();

    v43 = *(v51 + 16);

    sub_1D5E4B804(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v22, type metadata accessor for FormatCompilerOptions);

    v44 = v50;
    sub_1D5E4B804(&v22[*(v19 + 24)], v50, sub_1D5B592C0);
    sub_1D5E4B924(v22, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v44, v10);
    v45 = *v10;
    v46 = v10[1];
    v36 = v10[4];
    v37 = v10[5];
    sub_1D5E4B8D0(*v10, v46);
    result = sub_1D5E4B924(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v46 != 1)
    {

      v39 = v45;
      v40 = v46;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1D72600CC();

  v32 = *(v51 + 16);

  sub_1D5E4B804(v32 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v26, type metadata accessor for FormatCompilerOptions);

  v33 = v50;
  sub_1D5E4B804(&v26[*(v19 + 24)], v50, sub_1D5B592C0);
  sub_1D5E4B924(v26, type metadata accessor for FormatCompilerOptions);
  sub_1D5E4B86C(v33, v14);
  v34 = *v14;
  v35 = v14[1];
  v36 = v14[2];
  v37 = v14[3];
  sub_1D5E4B8D0(*v14, v35);
  result = sub_1D5E4B924(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v35 == 1)
  {
    goto LABEL_8;
  }

  v39 = v34;
  v40 = v35;
LABEL_10:
  result = sub_1D5E4B984(v39, v40);
  v48 = v49[0];
  *v49[0] = v36;
  *(v48 + 8) = v37;
  return result;
}

double sub_1D6ACA6EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6D6F6F727377654ELL;
  *(a1 + 8) = 0xE800000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D6ACA720()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 3;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 3;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D6ACA8DC();
  sub_1D5F7BB40();
  sub_1D6ACAB18(&qword_1EC891400, sub_1D6ACA8DC);

  return sub_1D7260FFC();
}

void sub_1D6ACA8DC()
{
  if (!qword_1EC8913D8)
  {
    sub_1D6ACA934();
    v0 = sub_1D7261A9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8913D8);
    }
  }
}

void sub_1D6ACA934()
{
  if (!qword_1EC8913E0)
  {
    sub_1D6ACA9A4();
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8913E0);
    }
  }
}

void sub_1D6ACA9A4()
{
  if (!qword_1EC8913E8)
  {
    sub_1D5E4B3E4();
    sub_1D6ACAB18(&qword_1EC8913F0, sub_1D5E4B3E4);
    sub_1D6ACAA68();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8913E8);
    }
  }
}

unint64_t sub_1D6ACAA68()
{
  result = qword_1EC8913F8;
  if (!qword_1EC8913F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913F8);
  }

  return result;
}

unint64_t sub_1D6ACAAC4()
{
  result = qword_1EC891408;
  if (!qword_1EC891408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891408);
  }

  return result;
}

uint64_t sub_1D6ACAB18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6ACAB60()
{
  if (!qword_1EC891418)
  {
    sub_1D6ACA8DC();
    sub_1D5F7BB40();
    sub_1D6ACAB18(&qword_1EC891400, sub_1D6ACA8DC);
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891418);
    }
  }
}

void sub_1D6ACAC18(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v6)
    {
      sub_1D5FCCDD4(*(a1 + 16), a2);
      return;
    }

    sub_1D5FCCDD4([*(a1 + 16) eventLeagueTag], a2);
    goto LABEL_14;
  }

  if (v6 != 2)
  {
    v12 = v4 | v5 ^ 0xC0;
    v13 = [swift_unknownObjectRetain() eventCompetitorTags];
    v14 = v13;
    if (v12)
    {
      if (!v13)
      {
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }
    }

    else if (!v13)
    {
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }

    sub_1D5EC01D0();
    v15 = sub_1D726267C();

LABEL_25:
    _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v15);
    swift_unknownObjectRelease();
    sub_1D726353C();
    v25 = v18;
    v26 = v17;
    v20 = v19;
    v22 = v21;

    v23 = swift_allocObject();
    v24.f64[0] = v26;
    v24.f64[1] = v25;
    *(v23 + 16) = vmulq_f64(v24, vdupq_n_s64(0x406FE00000000000uLL));
    *(v23 + 32) = v20 * 255.0;
    *(v23 + 40) = v22;
    *(v23 + 48) = 0;
    *a2 = v23 | 0x6000000000000000;
    return;
  }

  v7 = [*(a1 + 16) eventCompetitorTags];
  if (v7)
  {
    v8 = v7;
    sub_1D5EC01D0();
    v9 = sub_1D726267C();

    if (!(v9 >> 62))
    {
      goto LABEL_7;
    }

LABEL_21:
    v10 = sub_1D7263BFC();
    if (v4 < v10)
    {
      goto LABEL_8;
    }

LABEL_22:

    type metadata accessor for FormatLayoutError();
    sub_1D6ACCD9C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v16 = v10;
    v16[1] = v4;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_21;
  }

LABEL_7:
  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= v10)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA6FB460](v4, v9);
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 8 * v4 + 32);
    swift_unknownObjectRetain();
LABEL_12:

    sub_1D5FCCDD4(v11, a2);
LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_1D6ACAF6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ACB050()
{
  sub_1D72621EC();
}

uint64_t sub_1D6ACB120()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ACB200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6ACD008();
  *a1 = result;
  return result;
}

void sub_1D6ACB230(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x74697465706D6F63;
  v7 = 0xD000000000000010;
  v8 = 0x80000001D73BBC40;
  if (v2 != 3)
  {
    v7 = 0xD000000000000011;
    v8 = 0x80000001D73BBC60;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x65756761656CLL;
    v3 = 0xE600000000000000;
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

uint64_t sub_1D6ACB3C4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  *&v106 = a3;
  v120 = a4;
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (v14 <= 1)
  {
    v101 = v4;
    if (v14)
    {
      v56 = MEMORY[0x1E69E6F90];
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      v104 = xmmword_1D7273AE0;
      *(v16 + 16) = xmmword_1D7273AE0;
      v58 = *(a2 + 16);
      v59 = [objc_msgSend(v58 eventLeagueTag)];
      swift_unknownObjectRelease();
      v60 = sub_1D726207C();
      *&v105 = v61;

      sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v56);
      inited = swift_initStackObject();
      *(inited + 16) = v104;
      v63 = *(v106 + 112);
      v113 = *(v106 + 96);
      v114 = v63;
      v115 = *(v106 + 128);
      v116 = *(v106 + 144);
      v64 = *(v106 + 48);
      v109 = *(v106 + 32);
      v110 = v64;
      v65 = *(v106 + 80);
      v111 = *(v106 + 64);
      v112 = v65;
      v66 = *(v106 + 16);
      v107 = *v106;
      v108 = v66;
      v67 = [v58 eventLeagueTag];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D5FCF5FC(v67, &v117);
      swift_unknownObjectRelease_n();
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(inited + 64) = &off_1F518B2C0;
      v68 = swift_allocObject();
      *(inited + 32) = v68;
      *(v68 + 48) = v119;
      v69 = v118;
      *(v68 + 16) = v117;
      *(v68 + 32) = v69;
      v70 = sub_1D5F62BFC(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 32);
      v71 = sub_1D7073500(v70);

      v35 = 0x65756761654CLL;
      v36 = (v16 + v57);
      v37 = 0xE600000000000000;
      v38 = v71;
      v39 = v60;
      v40 = v105;
    }

    else
    {
      v21 = MEMORY[0x1E69E6F90];
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      *&v105 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      v103 = xmmword_1D7273AE0;
      *(v16 + 16) = xmmword_1D7273AE0;
      v22 = *(a2 + 16);
      swift_getObjectType();
      v23 = [v22 displayName];
      v24 = sub_1D726207C();
      *&v104 = v25;

      sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v21);
      v26 = swift_initStackObject();
      *(v26 + 16) = v103;
      v27 = *(v106 + 112);
      v113 = *(v106 + 96);
      v114 = v27;
      v115 = *(v106 + 128);
      v116 = *(v106 + 144);
      v28 = *(v106 + 48);
      v109 = *(v106 + 32);
      v110 = v28;
      v29 = *(v106 + 80);
      v111 = *(v106 + 64);
      v112 = v29;
      v30 = *(v106 + 16);
      v107 = *v106;
      v108 = v30;
      sub_1D5FCF5FC(v22, &v117);
      *(v26 + 56) = &type metadata for FormatInspectionGroup;
      *(v26 + 64) = &off_1F518B2C0;
      v31 = swift_allocObject();
      *(v26 + 32) = v31;
      *(v31 + 48) = v119;
      v32 = v118;
      *(v31 + 16) = v117;
      *(v31 + 32) = v32;
      v33 = sub_1D5F62BFC(v26);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v26 + 32);
      v34 = sub_1D7073500(v33);

      v35 = 0x746E657645;
      v36 = (v16 + v105);
      v37 = 0xE500000000000000;
      v38 = v34;
      v39 = v24;
      v40 = v104;
    }

    result = sub_1D711AD20(v35, v37, v38, v39, v40, v36);
    goto LABEL_41;
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      v17 = v16 + v15;
      v18 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v18)
      {
        v19 = v18;
        sub_1D5EC01D0();
        v20 = sub_1D726267C();
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      v72 = v120;
      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v20);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v105 = v74;
      v106 = v73;
      v76 = v75;
      v78 = v77;

      v79 = swift_allocObject();
      *&v80.f64[0] = v106;
      *&v80.f64[1] = v105;
      *(v79 + 16) = vmulq_f64(v80, vdupq_n_s64(0x406FE00000000000uLL));
      *(v79 + 32) = v76 * 255.0;
      *(v79 + 40) = v78;
      *(v79 + 48) = 0;
      v81 = *(v8 + 24);
      *(v17 + v81) = v79 | 0x6000000000000000;
      v82 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v82 - 8) + 56))(v17 + v81, 0, 1, v82);
      v83 = xmmword_1D731D190;
    }

    else
    {
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v52 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      v17 = v16 + v52;
      v53 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v53)
      {
        v54 = v53;
        sub_1D5EC01D0();
        v55 = sub_1D726267C();
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      v72 = v120;
      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v55);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v105 = v85;
      v106 = v84;
      v87 = v86;
      v89 = v88;

      v90 = swift_allocObject();
      *&v91.f64[0] = v106;
      *&v91.f64[1] = v105;
      *(v90 + 16) = vmulq_f64(v91, vdupq_n_s64(0x406FE00000000000uLL));
      *(v90 + 32) = v87 * 255.0;
      *(v90 + 40) = v89;
      *(v90 + 48) = 0;
      v92 = *(v8 + 24);
      *(v17 + v92) = v90 | 0x6000000000000000;
      v93 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v93 - 8) + 56))(v17 + v92, 0, 1, v93);
      v83 = xmmword_1D731D180;
    }

    *v17 = v83;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v94 = v17 + *(v8 + 28);
    *v94 = 0;
    *(v94 + 8) = 0;
    *(v94 + 16) = -1;
    goto LABEL_42;
  }

  v41 = [*(a2 + 16) eventCompetitorTags];
  if (!v41)
  {
LABEL_40:
    sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
    v100 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v107 = 0u;
    v108 = 0u;
    result = sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v107, (v16 + v100));
LABEL_41:
    v72 = v120;
LABEL_42:
    *v72 = v16;
    return result;
  }

  v42 = v41;
  sub_1D5EC01D0();
  v43 = sub_1D726267C();

  v44 = v43;
  v45 = v43 & 0xFFFFFFFFFFFFFF8;
  v46 = v43 >> 62;
  if (v46)
  {
    goto LABEL_36;
  }

  v47 = *(v45 + 16);
  if (!v47)
  {
LABEL_39:

    goto LABEL_40;
  }

  while (1)
  {
    v48 = v44;
    *&v107 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997AF0(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      break;
    }

    v16 = v107;
    v50 = v48;
    v101 = v5;
    v102 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v46)
    {
      v51 = sub_1D7263BFC();
      v50 = v48;
    }

    else
    {
      v51 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    *&v104 = v50 & 0xC000000000000001;
    *&v105 = v51 & ~(v51 >> 63);
    *&v103 = v50;
    v46 = v47;
    while (v105 != v5)
    {
      if (v104)
      {
        v95 = MEMORY[0x1DA6FB460](v5);
      }

      else
      {
        if (v5 >= *(v102 + 16))
        {
          goto LABEL_35;
        }

        v95 = *(v50 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D6ACBE9C(v5, v95, v13);
      swift_unknownObjectRelease();
      *&v107 = v16;
      v97 = *(v16 + 16);
      v96 = *(v16 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1D6997AF0(v96 > 1, v97 + 1, 1);
        v16 = v107;
      }

      ++v5;
      *(v16 + 16) = v97 + 1;
      sub_1D5EC04A0(v13, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v97, type metadata accessor for FormatInspectionItem);
      v50 = v103;
      if (v47 == v5)
      {

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v98 = v44;
    if (!sub_1D7263BFC())
    {
      goto LABEL_39;
    }

    v99 = sub_1D7263BFC();
    v44 = v98;
    v47 = v99;
    if (!v99)
    {

      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6ACBE9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  strcpy(&v17, "Competitor [");
  BYTE13(v17) = 0;
  HIWORD(v17) = -5120;
  *&v18[0] = a1;
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v6 = v17;
  swift_getObjectType();
  v7 = [a2 displayName];
  v8 = sub_1D726207C();
  v10 = v9;

  sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5FCF5FC(a2, v18);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 48) = v19;
  v13 = v18[1];
  *(v12 + 16) = v18[0];
  *(v12 + 32) = v13;
  v14 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 32);
  v15 = sub_1D7073500(v14);

  return sub_1D711AD20(v6, *(&v6 + 1), v15, v8, v10, a3);
}

uint64_t sub_1D6ACC0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  sub_1D67D08C0(0, qword_1EDF103F0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v24 - v7);
  v9 = type metadata accessor for FormatJsonKeyValue();
  MEMORY[0x1EEE9AC00](v9, v10);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - v14;
  v16 = 0;
  v17 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v17;
  v30 = *(a2 + 32);
  v25 = v18;
  v19 = (v18 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v26 = a1;
  do
  {
    v28 = byte_1F50F37B8[v16 + 32];
    sub_1D6ACC38C(&v28, a1, v29, v8);
    if ((*v19)(v8, 1, v9) == 1)
    {
      sub_1D67D05C8(v8);
    }

    else
    {
      sub_1D5EC04A0(v8, v15, type metadata accessor for FormatJsonKeyValue);
      sub_1D5EC04A0(v15, v27, type metadata accessor for FormatJsonKeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D698F454(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1D698F454(v21 > 1, v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_1D5EC04A0(v27, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for FormatJsonKeyValue);
      a1 = v26;
    }

    ++v16;
  }

  while (v16 != 5);
  *v24 = v20;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

size_t sub_1D6ACC38C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *&v69 = a2;
  v8 = type metadata accessor for FormatJson();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = *a1;
  v18 = *(a3 + 16);
  if (v17 <= 1)
  {
    if (v17)
    {
      v42 = [*(a3 + 16) eventLeagueTag];
      v22 = type metadata accessor for FormatJsonKeyValue();
      sub_1D5FCEDAC(v42, (a4 + *(v22 + 20)));
      swift_unknownObjectRelease();
      v23 = 0x65756761656CLL;
      v24 = 0xE600000000000000;
    }

    else
    {
      v22 = type metadata accessor for FormatJsonKeyValue();
      sub_1D5FCEDAC(v18, (a4 + *(v22 + 20)));
      v23 = 0x746E657665;
      v24 = 0xE500000000000000;
    }

    *a4 = v23;
    a4[1] = v24;
    goto LABEL_33;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      v19 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v19)
      {
        v20 = v19;
        sub_1D5EC01D0();
        v21 = sub_1D726267C();
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v21);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v68 = v46;
      v69 = v45;
      v48 = v47;
      v50 = v49;

      v51 = swift_allocObject();
      *&v52.f64[0] = v69;
      *&v52.f64[1] = v68;
      *(v51 + 16) = vmulq_f64(v52, vdupq_n_s64(0x406FE00000000000uLL));
      *(v51 + 32) = v48 * 255.0;
      *(v51 + 40) = v50;
      *(v51 + 48) = 0;
      v53 = v51 | 0x6000000000000000;
      v22 = type metadata accessor for FormatJsonKeyValue();
      *(a4 + *(v22 + 20)) = v53;
      swift_storeEnumTagMultiPayload();
      v54 = 0x80000001D73BBC40;
      v55 = 0xD000000000000010;
    }

    else
    {
      v39 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v39)
      {
        v40 = v39;
        sub_1D5EC01D0();
        v41 = sub_1D726267C();
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v41);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v68 = v57;
      v69 = v56;
      v59 = v58;
      v61 = v60;

      v62 = swift_allocObject();
      *&v63.f64[0] = v69;
      *&v63.f64[1] = v68;
      *(v62 + 16) = vmulq_f64(v63, vdupq_n_s64(0x406FE00000000000uLL));
      *(v62 + 32) = v59 * 255.0;
      *(v62 + 40) = v61;
      *(v62 + 48) = 0;
      v64 = v62 | 0x6000000000000000;
      v22 = type metadata accessor for FormatJsonKeyValue();
      *(a4 + *(v22 + 20)) = v64;
      swift_storeEnumTagMultiPayload();
      v54 = 0x80000001D73BBC60;
      v55 = 0xD000000000000011;
    }

    *a4 = v55;
    a4[1] = v54;
    goto LABEL_33;
  }

  v66 = (v65 - v15);
  v25 = [v18 eventCompetitorTags];
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = v25;
    sub_1D5EC01D0();
    v28 = sub_1D726267C();

    v29 = v28;
    if (!(v28 >> 62))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_10:
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v67 = v8;
      if (v30)
      {
        goto LABEL_11;
      }

LABEL_26:

      v34 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v44 = v66;
      *v66 = v34;
      swift_storeEnumTagMultiPayload();
      *a4 = 0x74697465706D6F63;
      a4[1] = 0xEA0000000000726FLL;
      v22 = type metadata accessor for FormatJsonKeyValue();
      sub_1D5EC04A0(v44, a4 + *(v22 + 20), type metadata accessor for FormatJson);
LABEL_33:
      type metadata accessor for FormatJsonKeyValue();
      return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
    }
  }

  v43 = v29;
  v30 = sub_1D7263BFC();
  v29 = v43;
  v67 = v8;
  if (!v30)
  {
    goto LABEL_26;
  }

LABEL_11:
  v31 = v29;
  v65[0] = a4;
  v65[1] = v4;
  v70 = v26;
  result = sub_1D6997B90(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v70;
    v35 = v31;
    *&v68 = v31 & 0xC000000000000001;
    do
    {
      if (v68)
      {
        v36 = MEMORY[0x1DA6FB460](v33, v35);
      }

      else
      {
        v36 = *(v35 + 8 * v33 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D5FCEDAC(v36, v12);
      swift_unknownObjectRelease();
      v70 = v34;
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D6997B90(v37 > 1, v38 + 1, 1);
        v34 = v70;
      }

      ++v33;
      *(v34 + 16) = v38 + 1;
      sub_1D5EC04A0(v12, v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v38, type metadata accessor for FormatJson);
      v35 = v31;
    }

    while (v30 != v33);

    a4 = v65[0];
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

BOOL _s8NewsFeed24FormatSportsEventBindingV5ColorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v6)
    {
      if (v5 >= 0x40)
      {
        return 0;
      }

      return (v4 ^ v2) == 0;
    }

    if ((v5 & 0xC0) == 0x40)
    {
      return (v4 ^ v2) == 0;
    }

    return 0;
  }

  if (v6 == 2)
  {
    if ((v5 & 0xC0) != 0x80)
    {
      return 0;
    }

    return ((v5 ^ v3) & 0x3F) == 0 && v2 == v4;
  }

  else
  {
    if (!(v2 | v3 ^ 0xC0))
    {
      v9 = v5 >= 0xC0 && v4 == 0;
      return v9 && v5 == 192;
    }

    v10 = v5 >= 0xC0 && v4 == 1;
    return v10 && v5 == 192;
  }
}

unint64_t sub_1D6ACCA48(uint64_t a1)
{
  result = sub_1D6ACCA70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ACCA70()
{
  result = qword_1EC891420;
  if (!qword_1EC891420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891420);
  }

  return result;
}

unint64_t sub_1D6ACCAC4(void *a1)
{
  a1[1] = sub_1D667EB6C();
  a1[2] = sub_1D66FE1CC();
  result = sub_1D6ACCAFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6ACCAFC()
{
  result = qword_1EC891438;
  if (!qword_1EC891438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891438);
  }

  return result;
}

uint64_t _s5ColorOwet_3(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 5 && *(a1 + 9))
  {
    return (*a1 + 5);
  }

  v3 = ((*(a1 + 8) >> 3) & 4 | (*(a1 + 8) >> 6)) ^ 7;
  if (v3 >= 4)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5ColorOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 8) = 0;
    *result = a2 - 5;
    if (a3 >= 5)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 32 - (a2 << 6);
    }
  }

  return result;
}

uint64_t sub_1D6ACCBF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D6ACCC0C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0x1F | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

void sub_1D6ACCCA0()
{
  if (!qword_1EC891448)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891448);
    }
  }
}

unint64_t sub_1D6ACCCF4()
{
  result = qword_1EC891450;
  if (!qword_1EC891450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891450);
  }

  return result;
}

unint64_t sub_1D6ACCD48()
{
  result = qword_1EDF0CEA8;
  if (!qword_1EDF0CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEA8);
  }

  return result;
}

uint64_t sub_1D6ACCD9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6ACCDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v30 = *(a1 + 144);
  v5 = *(a1 + 112);
  v29[6] = *(a1 + 96);
  v29[7] = v5;
  v29[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v6;
  v7 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v7;
  v8 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v8;
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v28 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = byte_1F50F7450[v4 + 32];
    result = sub_1D6ACB3C4(&v24, v27, v29, v25);
    v12 = *&v25[0];
    v13 = *(*&v25[0] + 16);
    v14 = v10[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v10[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      if (*(v12 + 16))
      {
LABEL_13:
        v18 = (v10[3] >> 1) - v10[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v18 < v13)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v13);
          v21 = v19 + v13;
          if (v20)
          {
            goto LABEL_21;
          }

          v10[2] = v21;
        }

        goto LABEL_3;
      }
    }

    if (v13)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 5)
    {
      v22 = sub_1D5F62998(v10);

      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v22, v25);

      v23 = v25[1];
      *a3 = v25[0];
      *(a3 + 16) = v23;
      *(a3 + 32) = v26;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D6ACD008()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for FormatItemNodeData()
{
  result = qword_1EDF2DD20;
  if (!qword_1EDF2DD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ACD0C8()
{
  type metadata accessor for FeedItem(319);
  if (v0 <= 0x3F)
  {
    sub_1D725D80C();
    if (v1 <= 0x3F)
    {
      sub_1D5F2F868();
      if (v2 <= 0x3F)
      {
        sub_1D6ACD194();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D6ACD194()
{
  if (!qword_1EDF1AD80)
  {
    sub_1D5E2A6E4();
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AD80);
    }
  }
}

void *WeatherKitService.__allocating_init(weatherServiceProvider:stringBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = swift_allocObject();
  if (qword_1EDF18798 != -1)
  {
    swift_once();
  }

  sub_1D6ACD510();
  swift_allocObject();

  v8[4] = sub_1D725977C();
  sub_1D725A91C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D6ACFF6C(0, &qword_1EDF17AF8, MEMORY[0x1E6984BE8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v8[2] = sub_1D725B7AC();
  v8[3] = a3;
  return v8;
}

void *WeatherKitService.init(weatherServiceProvider:stringBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  if (qword_1EDF18798 != -1)
  {
    swift_once();
  }

  sub_1D6ACD510();
  swift_allocObject();

  v3[4] = sub_1D725977C();
  sub_1D725A91C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D6ACFF6C(0, &qword_1EDF17AF8, MEMORY[0x1E6984BE8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v3[2] = sub_1D725B7AC();
  v3[3] = a3;
  return v3;
}

void sub_1D6ACD510()
{
  if (!qword_1EDF181C0)
  {
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF181C0);
    }
  }
}

uint64_t sub_1D6ACD568@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D6ACD598@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t WeatherKitService.deinit()
{

  return v0;
}

uint64_t WeatherKitService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeatherKitService.weather(for:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D7261B5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21[-v11];
  v13 = *a1;
  v14 = a1[1];
  sub_1D6ACFF6C(0, &qword_1EDF17A88, sub_1D6ACD8FC, MEMORY[0x1E69D6B18]);
  sub_1D7261B4C();

  sub_1D725972C();

  sub_1D7261BAC();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v22 = v2;
  v23 = v13;
  v24 = v14;
  swift_allocObject();
  sub_1D725BBAC();
  v16 = sub_1D725B92C();
  sub_1D725BB9C();

  v15(v12, v4);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = sub_1D725B92C();
  type metadata accessor for FeedWeather(0);
  v19 = sub_1D725BA9C();

  return v19;
}

void sub_1D6ACD8FC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EDF189F0)
  {
    MEMORY[0x1EEE9AC00](0, a2);
    sub_1D7258E5C();
    sub_1D6ACDA10();
    sub_1D5FD2A8C();
    sub_1D6ACDB5C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF189F0);
    }
  }
}

void sub_1D6ACDA10()
{
  if (!qword_1EDF189A8)
  {
    sub_1D7258E0C();
    v0 = MEMORY[0x1E6984B10];
    sub_1D6ACDB14(&qword_1EDF189F8, MEMORY[0x1E6984B10]);
    sub_1D6ACDB14(&qword_1EDF18A08, v0);
    sub_1D6ACDB14(&qword_1EDF18A00, v0);
    v1 = sub_1D7258F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF189A8);
    }
  }
}

uint64_t sub_1D6ACDB14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6ACDB90(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_1D6ACD8FC(0, a2);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = a3;
  *&v20[1] = a4;
  sub_1D6AD0064(a1, v11, sub_1D6ACD8FC);
  v12 = v8[14];
  v13 = v8[18];
  v14 = v8[22];
  v15 = sub_1D6ACDD48(v20, v11, &v11[v12], &v11[v13], &v11[v14]);
  sub_1D6AD00CC(&v11[v14], sub_1D6ACDB5C);
  sub_1D5FD2A8C();
  (*(*(v16 - 8) + 8))(&v11[v13], v16);
  sub_1D6ACDA10();
  (*(*(v17 - 8) + 8))(&v11[v12], v17);
  v18 = sub_1D7258E5C();
  (*(*(v18 - 8) + 8))(v11, v18);
  return v15;
}

uint64_t sub_1D6ACDD48(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v227 = a5;
  v228 = a4;
  v234 = a3;
  sub_1D6ACFF6C(0, &qword_1EDF18A10, MEMORY[0x1E6984AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v187 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v209 = &v179 - v12;
  sub_1D6ACFF6C(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v186 = v13;
  v185 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v212 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v217 = &v179 - v18;
  v207 = sub_1D7258CFC();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v19);
  v205 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ACFE40(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v204 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1D7261CAC();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v24);
  v216 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1D7258F1C();
  v226 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v26);
  v202 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v179 - v30;
  v181 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v181, v32);
  v184 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v210 = &v179 - v36;
  sub_1D6ACD8FC(0, v37);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v38, v40);
  v211 = &v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v214 = &v179 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v215 = &v179 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v203 = &v179 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v220 = &v179 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v213 = &v179 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v194 = &v179 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v179 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v179 - v66;
  v68 = *a1;
  v69 = a1[1];
  v70 = sub_1D7258E5C();
  v71 = *(v70 - 8);
  v72 = *(v71 + 16);
  v200 = v71 + 16;
  v201 = v72;
  v73 = v70;
  (v72)(v67, a2);
  v74 = *(v39 + 48);
  sub_1D6ACDA10();
  v76 = *(v75 - 8);
  v231 = v75;
  v232 = v76;
  v77 = *(v76 + 16);
  v198 = v76 + 16;
  v199 = v77;
  v77(&v67[v74], v234, v75);
  v78 = *(v39 + 64);
  sub_1D5FD2A8C();
  v80 = *(v79 - 8);
  v233 = v79;
  v234 = v80;
  v81 = *(v80 + 16);
  v196 = v80 + 16;
  v197 = v81;
  v81(&v67[v78], v228, v79);
  v82 = *(v39 + 80);
  v195 = sub_1D6ACDB5C;
  sub_1D6AD0064(v227, &v67[v82], sub_1D6ACDB5C);
  v229 = v67;
  v225 = v63;
  v218 = sub_1D6ACD8FC;
  sub_1D6AD0064(v67, v63, sub_1D6ACD8FC);
  v192 = *(v39 + 48);
  v190 = *(v39 + 64);
  v189 = *(v39 + 80);
  v191 = v31;
  sub_1D7258E4C();
  v83 = v71 + 8;
  v84 = *(v71 + 8);
  v230 = v73;
  v84(v63, v73);
  v224 = v83;
  v85 = v194;
  sub_1D6AD0064(v67, v194, sub_1D6ACD8FC);
  v221 = v39;
  v188 = *(v39 + 48);
  v86 = *(v39 + 64);
  v87 = *(v39 + 80);
  v88 = v85;
  sub_1D7258E1C();
  v228 = v84;
  v84(v85, v73);
  v180 = sub_1D7258EEC();
  v179 = v89;
  v90 = *(v226 + 8);
  v226 += 8;
  v219 = v90;
  v90(v31, v222);
  v193 = sub_1D6ACDB5C;
  sub_1D6AD00CC(v85 + v87, sub_1D6ACDB5C);
  v91 = v233;
  v92 = v234 + 8;
  v93 = *(v234 + 8);
  v93(v85 + v86, v233);
  v227 = v93;
  v234 = v92;
  v94 = v231;
  v96 = v232 + 8;
  v95 = *(v232 + 8);
  v95(v88 + v188, v231);
  v223 = v95;
  v232 = v96;
  v97 = v225;
  v98 = v221;
  sub_1D6AD00CC(&v225[v189], sub_1D6ACDB5C);
  v93(v97 + v190, v91);
  v95(v97 + v192, v94);
  v99 = v229;
  v100 = v213;
  v101 = v218;
  sub_1D6AD0064(v229, v213, v218);
  v102 = v202;
  sub_1D7258E4C();
  v103 = v230;
  v228(v100, v230);
  sub_1D5F59310(&v236);
  v219(v102, v222);
  v235 = v236;
  v104 = v225;
  v105 = v101;
  sub_1D6AD0064(v99, v225, v101);
  v202 = v98[12];
  v192 = v98[16];
  v190 = v98[20];
  v106 = v191;
  sub_1D7258E4C();
  v107 = v228;
  v228(v104, v103);
  sub_1D6AD0064(v99, v88, v105);
  v108 = v98[12];
  v189 = v98[16];
  v188 = v98[20];
  sub_1D7258E1C();
  v107(v88, v103);
  sub_1D7258EDC();
  v219(v106, v222);
  v109 = v193;
  sub_1D6AD00CC(v88 + v188, v193);
  v110 = v233;
  v111 = v227;
  v227(v88 + v189, v233);
  v112 = v231;
  v113 = v223;
  v223(v88 + v108, v231);
  v114 = v225;
  sub_1D6AD00CC(&v225[v190], v109);
  v111(v114 + v192, v110);
  v115 = v112;
  v113(&v202[v114], v112);
  v116 = v220;
  sub_1D6AD0064(v229, v220, v218);
  v117 = v98[12];
  v118 = v98[16];
  v119 = v98[20];
  v120 = v203;
  v201(v203, v116, v230);
  v121 = v120 + v98[12];
  v226 = v117;
  v199(v121, v116 + v117, v115);
  v197(v120 + v98[16], v116 + v118, v233);
  sub_1D6AD0064(v116 + v119, v120 + v98[20], v195);
  v122 = v205;
  sub_1D7258CEC();
  v123 = v204;
  sub_1D7261CBC();
  (*(v206 + 8))(v122, v207);
  v124 = sub_1D7261C7C();
  v125 = *(v124 - 8);
  if ((*(v125 + 48))(v123, 1, v124) == 1)
  {
    sub_1D6AD00CC(v120, sub_1D6ACD8FC);
    sub_1D6AD00CC(v123, sub_1D6ACFE40);
    v218 = 0;
    v219 = 0;
  }

  else
  {
    v126 = sub_1D7261C6C();
    v218 = v127;
    v219 = v126;
    sub_1D6AD00CC(v120, sub_1D6ACD8FC);
    (*(v125 + 8))(v123, v124);
  }

  v128 = v220;
  sub_1D6AD00CC(v220 + v119, sub_1D6ACDB5C);
  v129 = v128 + v118;
  v130 = v233;
  v131 = v227;
  v227(v129, v233);
  v223(v128 + v226, v231);
  v132 = v230;
  v133 = v228;
  v228(v128, v230);
  v134 = v229;
  LODWORD(v220) = sub_1D7258E1C();
  v135 = v215;
  sub_1D6AD0064(v134, v215, sub_1D6ACD8FC);
  sub_1D7258E2C();
  v133(v135, v132);
  v136 = v214;
  sub_1D6AD0064(v134, v214, sub_1D6ACD8FC);
  v137 = *(v221 + 16);
  v138 = v209;
  sub_1D5FCFE8C(v209);
  v131(v136 + v137, v130);
  v139 = sub_1D7258DFC();
  v140 = *(v139 - 8);
  v141 = *(v140 + 48);
  result = v141(v138, 1, v139);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D7258DEC();
    v209 = *(v140 + 8);
    (v209)(v138, v139);
    v143 = v211;
    sub_1D6AD0064(v134, v211, sub_1D6ACD8FC);
    v144 = v221;
    v145 = *(v221 + 16);
    v146 = v187;
    sub_1D5FCFE8C(v187);
    v147 = v146;
    v227(v143 + v145, v233);
    result = v141(v146, 1, v139);
    if (result != 1)
    {
      v226 = v144[12];
      v208 = v144[16];
      v222 = v144[20];
      v148 = v181;
      v149 = v210;
      v150 = v210 + *(v181 + 36);
      v151 = type metadata accessor for FeedWeather.Temperature(0);
      sub_1D7258DDC();
      (v209)(v147, v139);
      v152 = v225;
      sub_1D6AD0064(v229, v225, sub_1D6ACD8FC);
      v209 = v144[12];
      v207 = v144[16];
      v153 = v144[20];
      sub_1D7258E3C();
      v228(v152, v230);
      *v149 = v68;
      *(v149 + 8) = v69;
      v154 = v179;
      *(v149 + 16) = v180;
      *(v149 + 24) = v154;
      *(v149 + 32) = v235;
      (*(v182 + 32))(v149 + v148[7], v216, v183);
      v155 = (v149 + v148[10]);
      v156 = v218;
      *v155 = v219;
      v155[1] = v156;
      *(v149 + v148[8]) = (v220 & 1) == 0;
      v157 = *(v185 + 32);
      v158 = v186;
      v157(v150, v217, v186);
      v157(v150 + *(v151 + 20), v212, v158);
      v221 = sub_1D6ACDB5C;
      sub_1D6AD00CC(v152 + v153, sub_1D6ACDB5C);
      v227(v152 + v207, v233);
      v159 = v231;
      v160 = v223;
      v223(v152 + v209, v231);
      v161 = v211;
      v162 = v222;
      sub_1D6AD00CC(v211 + v222, sub_1D6ACDB5C);
      v163 = v226;
      v160(v161 + v226, v159);
      v164 = v230;
      v165 = v228;
      v228(v161, v230);
      v166 = v214;
      v167 = v214 + v162;
      v168 = v221;
      sub_1D6AD00CC(v167, v221);
      v160(v166 + v163, v159);
      v165(v166, v164);
      v169 = v215;
      v170 = v222;
      sub_1D6AD00CC(v215 + v222, v168);
      v171 = v208;
      v172 = v233;
      v173 = v227;
      v227(v169 + v208, v233);
      v174 = v231;
      v175 = v223;
      v223(v169 + v226, v231);
      v176 = v213;
      sub_1D6AD00CC(v213 + v170, v221);
      v173(v176 + v171, v172);
      v175(v176 + v226, v174);
      v177 = v210;
      sub_1D6AD0064(v210, v184, type metadata accessor for FeedWeather);
      sub_1D6ACFF6C(0, &qword_1EDF17A68, type metadata accessor for FeedWeather, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v178 = sub_1D725BB1C();
      sub_1D6AD00CC(v177, type metadata accessor for FeedWeather);
      sub_1D6AD00CC(v229, sub_1D6ACD8FC);
      return v178;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6ACF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  sub_1D6ACFF6C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v22 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = sub_1D726294C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 56) = sub_1D6ACFE74;
  *(v20 + 64) = v18;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;

  sub_1D6BD1334(0, 0, v17, &unk_1D731D430, v20);
}

uint64_t sub_1D6ACF2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  sub_1D6ACD8FC(0, a2);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7258E5C();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = v11[14];
  sub_1D6ACDA10();
  (*(*(v17 - 8) + 16))(&v14[v16], a2, v17);
  v18 = v11[18];
  sub_1D5FD2A8C();
  (*(*(v19 - 8) + 16))(&v14[v18], a3, v19);
  sub_1D6AD0064(a4, &v14[v11[22]], sub_1D6ACDB5C);
  a5(v14);
  return sub_1D6AD00CC(v14, sub_1D6ACD8FC);
}

uint64_t sub_1D6ACF45C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a9;
  *(v10 + 72) = a10;
  *(v10 + 48) = a7;
  *(v10 + 56) = a8;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 24) = a6;
  v11 = MEMORY[0x1E6984BB8];
  sub_1D6ACFF6C(0, &qword_1EDF189D8, sub_1D6ACDB5C, MEMORY[0x1E6984BB8]);
  *(v10 + 80) = v12;
  *(v10 + 88) = *(v12 - 8);
  *(v10 + 96) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189D0, sub_1D5FD2A8C, v11);
  *(v10 + 104) = v13;
  *(v10 + 112) = *(v13 - 8);
  *(v10 + 120) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189C8, sub_1D6ACDA10, v11);
  *(v10 + 128) = v14;
  *(v10 + 136) = *(v14 - 8);
  *(v10 + 144) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189E0, MEMORY[0x1E6984B50], v11);
  *(v10 + 152) = v15;
  *(v10 + 160) = *(v15 - 8);
  *(v10 + 168) = swift_task_alloc();
  sub_1D6ACFFD0();
  *(v10 + 176) = v16;
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6ACF70C, 0, 0);
}

uint64_t sub_1D6ACF70C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 22);
  v4 = v0[4];
  v3 = v0[5];
  v5 = v2[12];
  v15 = v2[16];
  v17 = v2[20];
  sub_1D725B77C();
  v0[25] = v0[2];
  v6 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v4 longitude:v3];
  *(v0 + 26) = v6;
  *(v0 + 27) = sub_1D7258E5C();
  sub_1D7258E9C();
  sub_1D6ACDA10();
  *(v0 + 28) = v7;
  sub_1D7258E7C();
  sub_1D5FD2A8C();
  *(v0 + 29) = v8;
  sub_1D7258E6C();
  sub_1D6ACDB5C(0);
  sub_1D7258E8C();
  v9 = swift_task_alloc();
  *(v0 + 30) = v9;
  *v9 = v0;
  v9[1] = sub_1D6ACF8CC;
  v10 = *(v0 + 24);
  v11 = *(v0 + 21);
  v12 = *(v0 + 18);
  v13 = *(v0 + 15);

  return MEMORY[0x1EEDE7600](v10, v1 + v5, v1 + v15, v1 + v17, v6, v11, v12, v13);
}

uint64_t sub_1D6ACF8CC()
{
  v12 = *(*v1 + 208);
  v16 = *(*v1 + 168);
  v2 = *(*v1 + 160);
  v15 = *(*v1 + 152);
  v14 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v13 = *(*v1 + 128);
  v11 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  *(*v1 + 248) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  if (v0)
  {
    v9 = sub_1D6ACFD7C;
  }

  else
  {
    v9 = sub_1D6ACFBA0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D6ACFBA0()
{
  v1 = v0[28];
  v2 = v0[29];
  v12 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[6];
  sub_1D6AD0064(v4, v3, sub_1D6ACFFD0);
  v7 = v5[12];
  v8 = v5[16];
  v9 = v5[20];
  v6(v3, v3 + v7, v3 + v8, v3 + v9);
  sub_1D6AD00CC(v4, sub_1D6ACFFD0);
  sub_1D6AD00CC(v3 + v9, sub_1D6ACDB5C);
  (*(*(v2 - 8) + 8))(v3 + v8, v2);
  (*(*(v1 - 8) + 8))(v3 + v7, v1);
  (*(*(v12 - 8) + 8))(v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D6ACFD7C()
{
  v1 = *(v0 + 248);
  (*(v0 + 64))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6ACFE7C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v12 = *(v1 + 9);
  v11 = *(v1 + 10);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D5B64684;

  return sub_1D6ACF45C(v7, v8, a1, v4, v5, v6, v9, v10, v12, v11);
}

void sub_1D6ACFF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6ACFFD0()
{
  if (!qword_1EDF189E8)
  {
    sub_1D7258E5C();
    sub_1D6ACDA10();
    sub_1D5FD2A8C();
    sub_1D6ACDB5C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF189E8);
    }
  }
}

uint64_t sub_1D6AD0064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AD00CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t FormatSponsoredBannerNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatSponsoredBannerNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSponsoredBannerNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatSponsoredBannerNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatSponsoredBannerNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

unint64_t sub_1D6AD03BC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  sub_1D5EB1500(v2);
  *(v3 + 56) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatSponsoredBannerNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatSponsoredBannerNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

void FormatSponsoredBannerNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t FormatSponsoredBannerNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatSponsoredBannerNode.style.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatSponsoredBannerNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatSponsoredBannerNode.__allocating_init(identifier:size:resize:adjustments:visibility:isUserInteractionEnabled:accessibilityRole:selectors:style:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, char a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v17 = swift_allocObject();
  v18 = *a3;
  v19 = *a4;
  v20 = *a6;
  v21 = *a8;
  v22 = *(a8 + 8);
  v26 = *(a11 + 5);
  v27 = *(a11 + 4);
  *(v17 + 96) = 0;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  swift_beginAccess();
  *(v17 + 48) = a5;
  swift_beginAccess();
  *(v17 + 56) = v20;
  swift_beginAccess();
  *(v17 + 64) = a7;
  *(v17 + 72) = v21;
  *(v17 + 80) = v22;
  swift_beginAccess();
  *(v17 + 88) = a9;
  swift_beginAccess();
  *(v17 + 96) = a10;
  v23 = *a11;
  *(v17 + 120) = a11[1];
  *(v17 + 104) = v23;
  *(v17 + 136) = v27;
  *(v17 + 144) = v26;
  return v17;
}