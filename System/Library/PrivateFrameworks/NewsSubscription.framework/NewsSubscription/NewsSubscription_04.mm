void sub_1D77A0CD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D77A2D34();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_1D78B5004();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5044();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v11 = a2[9];
  v12 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v11);
  (*(v12 + 88))(v8, v11, v12);
  v13 = a2[2];
  sub_1D77A2B7C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BCAB0;
  v15 = [a1 identifier];
  v16 = sub_1D78B5C74();
  v18 = v17;

  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = sub_1D78B5E94();

  [v13 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
}

uint64_t sub_1D77A0F6C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_1D78B5254();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B52A4();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v12 = *(a1 + 16);
  v13 = [a2 identifier];
  if (!v13)
  {
    sub_1D78B5C74();
    v13 = sub_1D78B5C44();
  }

  [v12 removeWebPurchaseForTagID:v13 userInitiated:1];

  v14 = [a2 identifier];
  v15 = sub_1D78B5C74();
  v17 = v16;

  swift_beginAccess();
  sub_1D782B134(v15, v17);
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08FE10);
  v18 = sub_1D78B6104();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  aBlock[4] = sub_1D77A2E00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_77_0;
  v20 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D77A2AC4();
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v11, v8, v20);
  _Block_release(v20);

  (*(v26 + 8))(v8, v6);
  v21 = (*(v24 + 8))(v11, v25);
  return v28(v21);
}

uint64_t sub_1D77A139C(uint64_t a1)
{
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  (*(v4 + 8))(v10, a1, v3, v4);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v5 = sub_1D78B6104();
  sub_1D774584C(v10, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  sub_1D7741E34(v9, v6 + 32);

  swift_unknownObjectRetain();
  sub_1D78B40B4();

  v7 = sub_1D78B6104();

  sub_1D78B40E4();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1D77A158C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v6 = *(a1 + 16);
  v7 = [a2 identifier];
  if (!v7)
  {
    sub_1D78B5C74();
    v7 = sub_1D78B5C44();
  }

  [v6 removeWebPurchaseForTagID:v7 userInitiated:1];

  v8 = [a2 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  swift_beginAccess();
  sub_1D782B134(v9, v11);
  swift_endAccess();

  v12 = swift_unknownObjectRelease();
  v13 = sub_1D779E438(v12);
  return a3(v13);
}

void sub_1D77A1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D77A1C4C();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D779DC38();
    sub_1D774584C(a4, v20);
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;
    sub_1D7741E34(v20, (v13 + 6));
    aBlock[4] = sub_1D77A2F0C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_92;
    v14 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v11 presentViewController:v12 animated:1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1D78B41F4();
    sub_1D773F004(0, &qword_1EE08FE10);
    v15 = sub_1D78B6104();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v4;
    *(v16 + 32) = 0;

    swift_unknownObjectRetain();
    sub_1D78B40B4();

    v17 = sub_1D78B6104();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;

    sub_1D78B40E4();
  }
}

void sub_1D77A1A08(void *a1, uint64_t a2, void *a3)
{
  sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D78B42D4();

  v6 = a1;
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (sub_1D774656C(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError), sub_1D78B3184(), a1, a1 != 1))
  {
    sub_1D7788B3C();
    sub_1D78B5054();
    swift_allocObject();
    v7 = sub_1D78B5004();
    v8 = a3[9];
    v9 = a3[10];
    __swift_project_boxed_opaque_existential_1(a3 + 6, v8);
    (*(v9 + 88))(v7, v8, v9);
  }
}

uint64_t sub_1D77A1C4C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_1D773F004(0, &unk_1EC9C9EC0);
  v3 = sub_1D779D4C0();
  v4 = sub_1D78B5F64();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1D78B6364();
    sub_1D78B5F94();
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v25 = v6;
  v12 = (v6 + 64) >> 6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = sub_1D78B63B4();
  if (v13)
  {
    v26 = v13;
    swift_dynamicCast();
    v3 = v27;
    v14 = v7;
    v15 = v8;
    if (v27)
    {
      while ([v3 activationState])
      {

        v7 = v14;
        v8 = v15;
        if (v4 < 0)
        {
          goto LABEL_8;
        }

LABEL_11:
        v16 = v7;
        v17 = v8;
        v14 = v7;
        if (!v8)
        {
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v14 >= v12)
            {
              goto LABEL_19;
            }

            v17 = *(v5 + 8 * v14);
            ++v16;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_15:
        v15 = (v17 - 1) & v17;
        v3 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v3)
        {
          goto LABEL_19;
        }
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        sub_1D779D528();

        return 0;
      }

      v20 = v19;
      v3 = v3;
      v21 = [v20 windows];
      sub_1D773F004(0, &unk_1EC9C9ED0);
      v2 = sub_1D78B5EB4();

      if (v2 >> 62)
      {
LABEL_30:
        result = sub_1D78B6534();
        if (result)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_24:
          if ((v2 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1DA703700](0, v2);
          }

          else
          {
            if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v22 = *(v2 + 32);
          }

          v23 = v22;
LABEL_32:

          v24 = [v23 rootViewController];

          sub_1D779D528();
          return v24;
        }
      }

      v23 = 0;
      goto LABEL_32;
    }
  }

LABEL_19:
  sub_1D779D528();
  return 0;
}

uint64_t sub_1D77A1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v6 = sub_1D78B6104();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = 1;
  type metadata accessor for SubscriptionExpiryManager();
  swift_unknownObjectRetain();

  sub_1D78B40B4();

  v8 = sub_1D78B6104();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 1;

  sub_1D78B40E4();
}

void sub_1D77A2158(char *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = *a1;
  if (a5)
  {
    v8 = sub_1D779DC38();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v11[4] = sub_1D77A2F98;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D775FB6C;
    v11[3] = &block_descriptor_110;
    v10 = _Block_copy(v11);
    swift_unknownObjectRetain();

    [v8 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }

  else
  {
    sub_1D77A2284(*a1, a3, a4);
  }
}

uint64_t sub_1D77A2284(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_1D7788D34();
    sub_1D78B5054();
    swift_allocObject();
    v4 = sub_1D78B5004();
  }

  else
  {
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    swift_unknownObjectRetain();
    v4 = sub_1D78B5004();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a2;
    swift_unknownObjectRetain();

    sub_1D78B5034();
  }

  v7 = a3[9];
  v8 = a3[10];
  __swift_project_boxed_opaque_existential_1(a3 + 6, v7);
  (*(v8 + 88))(v4, v7, v8);
}

uint64_t sub_1D77A23E4(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v3);
  v5 = [a2 identifier];
  v6 = sub_1D78B5C74();
  v8 = v7;

  (*(v4 + 104))(v6, v8, 0, v3, v4);
}

void sub_1D77A2490(void *a1, uint64_t a2, void *a3, char a4)
{
  sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  v15 = 0xE000000000000000;
  v20 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D78B42D4();

  aBlock = a1;
  v8 = a1;
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (aBlock = v20, sub_1D774656C(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError), sub_1D78B3184(), v20, v20 != 1))
  {
    if (a4)
    {
      v9 = sub_1D779DC38();
      v18 = sub_1D77A2F90;
      v19 = a3;
      aBlock = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1D775FB6C;
      v17 = &block_descriptor_104;
      v10 = _Block_copy(&aBlock);

      [v9 dismissViewControllerAnimated:1 completion:v10];
      _Block_release(v10);
    }

    else
    {
      v17 = &type metadata for WebAuthenticationErrorAlert;
      v18 = sub_1D7788B3C();
      sub_1D78B5054();
      swift_allocObject();
      v11 = sub_1D78B5004();
      v12 = a3[9];
      v13 = a3[10];
      __swift_project_boxed_opaque_existential_1(a3 + 6, v12);
      (*(v13 + 88))(v11, v12, v13);
    }
  }
}

uint64_t sub_1D77A2790(void *a1)
{
  sub_1D7788B3C();
  sub_1D78B5054();
  swift_allocObject();
  v2 = sub_1D78B5004();
  v3 = a1[9];
  v4 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v3);
  (*(v4 + 88))(v2, v3, v4);
}

void sub_1D77A2850(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA703640](a1, a2, v9);
      sub_1D773F004(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D773F004(0, a5);
    if (sub_1D78B6384() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D78B6394();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1D78B6234();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1D78B6244();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

void sub_1D77A2AC4()
{
  if (!qword_1EE090040)
  {
    sub_1D78B5254();
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090040);
    }
  }
}

unint64_t sub_1D77A2B1C()
{
  result = qword_1EC9C9F48;
  if (!qword_1EC9C9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F48);
  }

  return result;
}

void sub_1D77A2B7C()
{
  if (!qword_1EE08FA50)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA50);
    }
  }
}

uint64_t sub_1D77A2BCC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1D77A2C68()
{
  result = qword_1EC9C9F58;
  if (!qword_1EC9C9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F58);
  }

  return result;
}

unint64_t sub_1D77A2D34()
{
  result = qword_1EC9C9F60;
  if (!qword_1EC9C9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F60);
  }

  return result;
}

uint64_t objectdestroy_18Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t sub_1D77A2E28()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1D77A2F1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

unint64_t sub_1D77A301C()
{
  result = qword_1EC9C9F90;
  if (!qword_1EC9C9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F90);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t WebAccessOptInAlert.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebAccessOptInAlert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL WebAccessOptInAlert.showTextField.getter()
{
  result = 1;
  if (*(v0 + 40))
  {
    v1 = sub_1D78B5C44();
    v2 = [v1 ea_isLegalEmailAddress];

    if (v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebAccessOptInAlert.textFieldText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebAccessOptInAlert.textFieldPlaceHolderText.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAccessOptInAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WebAccessOptInAlert.acceptButton.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WebAccessOptInAlert.rejectButton.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D77A341C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D77A344C()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL sub_1D77A347C()
{
  result = 1;
  if (*(v0 + 40))
  {
    v1 = sub_1D78B5C44();
    v2 = [v1 ea_isLegalEmailAddress];

    if (v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D77A34D0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D77A3500()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77A35BC()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D77A35F0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D77A3624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77A366C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

char *sub_1D77A36D0()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingScrim] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_titleLabel] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_spinner] = v5;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setClipsToBounds_];
  [v6 addSubview_];
  v7 = OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView;
  [v6 addSubview_];
  [*&v6[v7] addSubview_];
  [*&v6[v7] addSubview_];

  return v6;
}

id PurchasingSpinnerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PurchasingSpinnerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PurchasingSpinnerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppLaunchUpsellManager.__allocating_init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v78 = a1;
  v69 = a4;
  v70 = a8;
  v66 = a7;
  v68 = a3;
  v79 = a2;
  v80 = a9;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = &v62 - v17;
  v18 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v18);
  v77 = a5;
  sub_1D774584C(a5, v92);
  v76 = a6;
  sub_1D774584C(a6, v91);
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v67 = sub_1D7746770;
  v75 = a10;
  sub_1D7746708(a10, v86, sub_1D7746770);
  v65 = sub_1D77467D8;
  v74 = a11;
  sub_1D7746708(a11, v85, sub_1D77467D8);
  v64 = sub_1D7746840;
  v73 = a12;
  sub_1D7746708(a12, v84, sub_1D7746840);
  v63 = sub_1D77468A8;
  v72 = a13;
  sub_1D7746708(a13, v83, sub_1D77468A8);
  v71 = a14;
  sub_1D7746708(a14, v82, sub_1D7746910);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  *(v19 + 160) = sub_1D78B3B74();
  v81 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388]);
  v20 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v20);
  v21 = v66;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  v22 = v68;
  *(v19 + 168) = sub_1D78B3894();
  *(v19 + 176) = 0;
  sub_1D77469DC();
  swift_allocObject();
  *(v19 + 184) = sub_1D78B3974();
  *(v19 + 472) = 0;
  v23 = v79;
  *(v19 + 16) = v78;
  *(v19 + 32) = v23;
  *(v19 + 40) = v22;
  *(v19 + 48) = v69;
  sub_1D774584C(v92, v19 + 56);
  sub_1D774584C(v91, v19 + 96);
  v24 = v70;
  *(v19 + 144) = v21;
  *(v19 + 152) = v24;
  *(v19 + 136) = v80;
  sub_1D7746708(v89, v19 + 192, sub_1D7746AE4);
  sub_1D7746708(v87, v19 + 232, sub_1D7746B4C);
  sub_1D7746708(v86, v19 + 272, v67);
  sub_1D7746708(v85, v19 + 312, v65);
  sub_1D7746708(v84, v19 + 352, v64);
  sub_1D7746708(v83, v19 + 392, v63);
  sub_1D7746708(v82, v19 + 432, sub_1D7746910);
  v25 = qword_1EE095510;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v25 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v26, type metadata accessor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v81 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D78B4304();
    __swift_project_value_buffer(v27, qword_1EE09C288);
    v28 = sub_1D78B42E4();
    v29 = sub_1D78B60A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D7739000, v28, v29, "From debug: resetting the stored app launch count.", v30, 2u);
      MEMORY[0x1DA7043F0](v30, -1, -1);
    }

    swift_beginAccess();
    v31 = *(v19 + 80);
    v32 = *(v19 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v19 + 56, v31);
    (*(v32 + 16))(0, v31, v32);
    swift_endAccess();
    LOBYTE(v81) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v33, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v81 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D78B4304();
    __swift_project_value_buffer(v34, qword_1EE09C288);
    v35 = sub_1D78B42E4();
    v36 = sub_1D78B60A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D7739000, v35, v36, "From debug: resetting the stored app launch upsell instance ID.", v37, 2u);
      MEMORY[0x1DA7043F0](v37, -1, -1);
    }

    swift_beginAccess();
    v38 = *(v19 + 80);
    v39 = *(v19 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v19 + 56, v38);
    (*(v39 + 40))(0, 0xE000000000000000, v38, v39);
    swift_endAccess();
    LOBYTE(v81) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v40, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v81 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D78B4304();
    __swift_project_value_buffer(v41, qword_1EE09C288);
    v42 = sub_1D78B42E4();
    v43 = sub_1D78B60A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D7739000, v42, v43, "From debug: resetting the stored last shown campaign ID.", v44, 2u);
      MEMORY[0x1DA7043F0](v44, -1, -1);
    }

    swift_beginAccess();
    v45 = *(v19 + 80);
    v46 = *(v19 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v19 + 56, v45);
    (*(v46 + 88))(0, 0xE000000000000000, v45, v46);
    v47 = *(v19 + 80);
    v48 = *(v19 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v19 + 56, v47);
    (*(v48 + 112))(0, 0xE000000000000000, v47, v48);
    swift_endAccess();
    LOBYTE(v81) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v49, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v81 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v50 = sub_1D78B4304();
    __swift_project_value_buffer(v50, qword_1EE09C288);
    v51 = sub_1D78B42E4();
    v52 = sub_1D78B60A4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D7739000, v51, v52, "From debug: resetting the upsell last seen date.", v53, 2u);
      MEMORY[0x1DA7043F0](v53, -1, -1);
    }

    v54 = sub_1D78B3394();
    v55 = v62;
    (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
    swift_beginAccess();
    v56 = *(v19 + 80);
    v57 = *(v19 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v19 + 56, v56);
    (*(v57 + 64))(v55, v56, v57);
    swift_endAccess();
    LOBYTE(v81) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v58, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v59 = [objc_opt_self() defaultCenter];
  v60 = qword_1EE08FDF8;

  if (v60 != -1)
  {
    swift_once();
  }

  [v59 addObserver:v19 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v71, sub_1D7746910);
  sub_1D77473C0(v72, sub_1D77468A8);
  sub_1D77473C0(v73, sub_1D7746840);
  sub_1D77473C0(v74, sub_1D77467D8);
  sub_1D77473C0(v75, sub_1D7746770);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  sub_1D77473C0(v82, sub_1D7746910);
  sub_1D77473C0(v83, sub_1D77468A8);
  sub_1D77473C0(v84, sub_1D7746840);
  sub_1D77473C0(v85, sub_1D77467D8);
  sub_1D77473C0(v86, sub_1D7746770);
  sub_1D77473C0(v87, sub_1D7746B4C);
  sub_1D77473C0(v89, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  return v19;
}

uint64_t AppLaunchUpsellManager.__allocating_init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:articlePrefetcher:appLaunchUpsellTracker:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v72 = a4;
  v73 = a8;
  v75 = a3;
  v76 = a7;
  v69 = a5;
  v70 = a6;
  v77 = a16;
  v78 = a15;
  v79 = a14;
  v80 = a13;
  v81 = a12;
  v82 = a11;
  v74 = a9;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v68 = &v67 - v20;
  v21 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v21);
  v71 = v16;
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  *(v22 + 160) = sub_1D78B3B74();
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388]);
  v23 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  v24 = v23;
  v25 = v69;
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v24);
  v26 = v70;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  *(v22 + 168) = sub_1D78B3894();
  *(v22 + 176) = 0;
  sub_1D77469DC();
  swift_allocObject();
  *(v22 + 184) = sub_1D78B3974();
  *(v22 + 472) = 0;
  *(v22 + 16) = a1;
  v27 = v75;
  *(v22 + 32) = a2;
  *(v22 + 40) = v27;
  *(v22 + 48) = v72;
  sub_1D774584C(v25, v22 + 56);
  sub_1D774584C(v26, v22 + 96);
  v28 = v73;
  v29 = v74;
  *(v22 + 144) = v76;
  *(v22 + 152) = v28;
  *(v22 + 136) = v29;
  sub_1D7746708(a10, v22 + 192, sub_1D7746AE4);
  sub_1D7746708(v82, v22 + 232, sub_1D7746B4C);
  sub_1D7746708(v81, v22 + 272, sub_1D7746770);
  sub_1D7746708(v80, v22 + 312, sub_1D77467D8);
  sub_1D7746708(v79, v22 + 352, sub_1D7746840);
  sub_1D7746708(v78, v22 + 392, sub_1D77468A8);
  sub_1D7746708(v77, v22 + 432, sub_1D7746910);
  v30 = qword_1EE095510;
  v72 = a1;
  swift_unknownObjectRetain();
  v73 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v30 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v31, type metadata accessor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D78B4304();
    __swift_project_value_buffer(v32, qword_1EE09C288);
    v33 = sub_1D78B42E4();
    v34 = sub_1D78B60A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D7739000, v33, v34, "From debug: resetting the stored app launch count.", v35, 2u);
      MEMORY[0x1DA7043F0](v35, -1, -1);
    }

    swift_beginAccess();
    v36 = *(v22 + 80);
    v37 = *(v22 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v22 + 56, v36);
    (*(v37 + 16))(0, v36, v37);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v38, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v39 = sub_1D78B4304();
    __swift_project_value_buffer(v39, qword_1EE09C288);
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D7739000, v40, v41, "From debug: resetting the stored app launch upsell instance ID.", v42, 2u);
      MEMORY[0x1DA7043F0](v42, -1, -1);
    }

    swift_beginAccess();
    v43 = *(v22 + 80);
    v44 = *(v22 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v22 + 56, v43);
    (*(v44 + 40))(0, 0xE000000000000000, v43, v44);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v45, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v46 = sub_1D78B4304();
    __swift_project_value_buffer(v46, qword_1EE09C288);
    v47 = sub_1D78B42E4();
    v48 = sub_1D78B60A4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D7739000, v47, v48, "From debug: resetting the stored last shown campaign ID.", v49, 2u);
      MEMORY[0x1DA7043F0](v49, -1, -1);
    }

    swift_beginAccess();
    v50 = *(v22 + 80);
    v51 = *(v22 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v22 + 56, v50);
    (*(v51 + 88))(0, 0xE000000000000000, v50, v51);
    v52 = *(v22 + 80);
    v53 = *(v22 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v22 + 56, v52);
    (*(v53 + 112))(0, 0xE000000000000000, v52, v53);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v54, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D78B4304();
    __swift_project_value_buffer(v55, qword_1EE09C288);
    v56 = sub_1D78B42E4();
    v57 = sub_1D78B60A4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D7739000, v56, v57, "From debug: resetting the upsell last seen date.", v58, 2u);
      MEMORY[0x1DA7043F0](v58, -1, -1);
    }

    v59 = sub_1D78B3394();
    v60 = v68;
    (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
    swift_beginAccess();
    v61 = *(v22 + 80);
    v62 = *(v22 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v22 + 56, v61);
    (*(v62 + 64))(v60, v61, v62);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v63, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v64 = [objc_opt_self() defaultCenter];
  v65 = qword_1EE08FDF8;

  if (v65 != -1)
  {
    swift_once();
  }

  [v64 addObserver:v22 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v77, sub_1D7746910);
  sub_1D77473C0(v78, sub_1D77468A8);
  sub_1D77473C0(v79, sub_1D7746840);
  sub_1D77473C0(v80, sub_1D77467D8);
  sub_1D77473C0(v81, sub_1D7746770);
  sub_1D77473C0(v82, sub_1D7746B4C);
  sub_1D77473C0(a10, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v22;
}

uint64_t *AppLaunchUpsellManager.init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:articlePrefetcher:appLaunchUpsellTracker:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v72 = a4;
  v73 = a8;
  v75 = a3;
  v76 = a7;
  v69 = a5;
  v70 = a6;
  v77 = a16;
  v78 = a15;
  v79 = a14;
  v80 = a13;
  v81 = a12;
  v82 = a11;
  v74 = a9;
  v71 = *v16;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v67 - v21;
  v22 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v22);
  v16[3] = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  v16[20] = sub_1D78B3B74();
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388]);
  v23 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  v24 = v23;
  v25 = v69;
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v24);
  v26 = v70;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  v16[21] = sub_1D78B3894();
  *(v16 + 176) = 0;
  sub_1D77469DC();
  swift_allocObject();
  v16[23] = sub_1D78B3974();
  v16[59] = 0;
  v16[2] = a1;
  v27 = v75;
  v16[4] = a2;
  v16[5] = v27;
  v16[6] = v72;
  sub_1D774584C(v25, (v16 + 7));
  sub_1D774584C(v26, (v16 + 12));
  v28 = v73;
  v29 = v74;
  v16[18] = v76;
  v16[19] = v28;
  v16[17] = v29;
  sub_1D7746708(a10, (v16 + 24), sub_1D7746AE4);
  sub_1D7746708(v82, (v16 + 29), sub_1D7746B4C);
  sub_1D7746708(v81, (v16 + 34), sub_1D7746770);
  sub_1D7746708(v80, (v16 + 39), sub_1D77467D8);
  sub_1D7746708(v79, (v16 + 44), sub_1D7746840);
  sub_1D7746708(v78, (v16 + 49), sub_1D77468A8);
  sub_1D7746708(v77, (v16 + 54), sub_1D7746910);
  v30 = qword_1EE095510;
  v72 = a1;
  swift_unknownObjectRetain();
  v73 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v30 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v31, type metadata accessor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D78B4304();
    __swift_project_value_buffer(v32, qword_1EE09C288);
    v33 = sub_1D78B42E4();
    v34 = sub_1D78B60A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D7739000, v33, v34, "From debug: resetting the stored app launch count.", v35, 2u);
      MEMORY[0x1DA7043F0](v35, -1, -1);
    }

    swift_beginAccess();
    v36 = v17[10];
    v37 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v36);
    (*(v37 + 16))(0, v36, v37);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v38, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v39 = sub_1D78B4304();
    __swift_project_value_buffer(v39, qword_1EE09C288);
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D7739000, v40, v41, "From debug: resetting the stored app launch upsell instance ID.", v42, 2u);
      MEMORY[0x1DA7043F0](v42, -1, -1);
    }

    swift_beginAccess();
    v43 = v17[10];
    v44 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v43);
    (*(v44 + 40))(0, 0xE000000000000000, v43, v44);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v45, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v46 = sub_1D78B4304();
    __swift_project_value_buffer(v46, qword_1EE09C288);
    v47 = sub_1D78B42E4();
    v48 = sub_1D78B60A4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D7739000, v47, v48, "From debug: resetting the stored last shown campaign ID.", v49, 2u);
      MEMORY[0x1DA7043F0](v49, -1, -1);
    }

    swift_beginAccess();
    v50 = v17[10];
    v51 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v50);
    (*(v51 + 88))(0, 0xE000000000000000, v50, v51);
    v52 = v17[10];
    v53 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v52);
    (*(v53 + 112))(0, 0xE000000000000000, v52, v53);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v54, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D78B4304();
    __swift_project_value_buffer(v55, qword_1EE09C288);
    v56 = sub_1D78B42E4();
    v57 = sub_1D78B60A4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D7739000, v56, v57, "From debug: resetting the upsell last seen date.", v58, 2u);
      MEMORY[0x1DA7043F0](v58, -1, -1);
    }

    v59 = sub_1D78B3394();
    v60 = v68;
    (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
    swift_beginAccess();
    v61 = v17[10];
    v62 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v61);
    (*(v62 + 64))(v60, v61, v62);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v63, type metadata accessor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v64 = [objc_opt_self() defaultCenter];
  v65 = qword_1EE08FDF8;

  if (v65 != -1)
  {
    swift_once();
  }

  [v64 addObserver:v17 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v77, sub_1D7746910);
  sub_1D77473C0(v78, sub_1D77468A8);
  sub_1D77473C0(v79, sub_1D7746840);
  sub_1D77473C0(v80, sub_1D77467D8);
  sub_1D77473C0(v81, sub_1D7746770);
  sub_1D77473C0(v82, sub_1D7746B4C);
  sub_1D77473C0(a10, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v17;
}

uint64_t AppLaunchUpsellManager.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v0 + 192, sub_1D7746AE4);
  sub_1D77473C0(v0 + 232, sub_1D7746B4C);
  sub_1D77473C0(v0 + 272, sub_1D7746770);
  sub_1D77473C0(v0 + 312, sub_1D77467D8);
  sub_1D77473C0(v0 + 352, sub_1D7746840);
  sub_1D77473C0(v0 + 392, sub_1D77468A8);
  sub_1D77473C0(v0 + 432, sub_1D7746910);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppLaunchUpsellManager.__deallocating_deinit()
{
  AppLaunchUpsellManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall AppLaunchUpsellManager.upsellWasShown()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  (*(v3 + 32))(v2, v3);
  v5 = v4;
  swift_endAccess();
  if (!v5)
  {
    return 0;
  }

  v6 = v1[3];
  if (v6 && (v7 = [v6 appLaunchUpsellInstanceID]) != 0)
  {
    v8 = v7;
    v9 = sub_1D78B5C74();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  v12 = v1[10];
  v13 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
  v14 = (*(v13 + 32))(v12, v13);
  v16 = v15;
  swift_endAccess();
  if (v11)
  {
    if (v16)
    {
      if (v9 == v14 && v11 == v16)
      {
      }

      else
      {
        v18 = sub_1D78B6724();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

LABEL_15:

    return 0;
  }

  if (v16)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t AppLaunchUpsellManager.userIsEligibleForUpsellPresentation(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D78B4304();
    __swift_project_value_buffer(v6, qword_1EE09C288);
    v7 = sub_1D78B42E4();
    v8 = sub_1D78B6094();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D7739000, v7, v8, "Failed to retrieve a valid paid visibility value from the configuration. Upsell not eligible", v9, 2u);
      MEMORY[0x1DA7043F0](v9, -1, -1);
    }

    sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
    v10 = *(&v80 + 1);
    if (*(&v80 + 1))
    {
      v11 = v81;
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      LOBYTE(v82) = 9;
      (*(v11 + 8))(&v82, 0, 0, v10, v11);
LABEL_115:
      __swift_destroy_boxed_opaque_existential_1(&v79);
      return 0;
    }

    goto LABEL_112;
  }

  v5 = [v4 appLaunchUpsellPaidVisibility];
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v79 = v82;
  v80 = v83;
  v12 = MEMORY[0x1E69E7CA0];
  if (*(&v83 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v13 = v78;
      v14 = [v78 integerValue];
      if (v14 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_1D77AE570(&v79, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7747C80);
  }

  v13 = 0;
  v14 = 0;
LABEL_17:
  if (objc_getAssociatedObject(a1, ~v14))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v79 = v82;
  v80 = v83;
  if (*(&v83 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v15 = v78;
      v16 = [v15 integerValue];

      v17 = v16 - 91;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1D77AE570(&v79, &qword_1EE08F9C0, v12 + 8, MEMORY[0x1E69E6720], sub_1D7747C80);
  }

LABEL_24:

  v17 = -91;
LABEL_25:
  v18 = v17 ^ v14;
  v19 = (v18 & 1) == 0;
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      v19 = v18 & 1;
      goto LABEL_51;
    }

    goto LABEL_32;
  }

  if (v5 == 2)
  {
LABEL_51:
    if (v18)
    {
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  if (v5 != 3)
  {
LABEL_32:
    v19 = 0;
    if (v18)
    {
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  v19 = 1;
  if (v18)
  {
LABEL_52:
    v32 = *(v2 + 24);
    if (v32)
    {
      v33 = [v32 appLaunchUpsellBundleTrialVisibility];
      v34 = v33;
      if (v33 == 2)
      {
        v38 = *(v2 + 48);
        ObjectType = swift_getObjectType();
        v37 = (*(v38 + 48))(ObjectType, v38);
LABEL_59:
        v40 = v19 & v37;
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v41 = sub_1D78B4304();
        __swift_project_value_buffer(v41, qword_1EE09C288);

        v42 = sub_1D78B42E4();
        v43 = sub_1D78B60A4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v79 = v45;
          *v44 = 136316162;
          if (v40)
          {
            v46 = 1702195828;
          }

          else
          {
            v46 = 0x65736C6166;
          }

          if (v40)
          {
            v47 = 0xE400000000000000;
          }

          else
          {
            v47 = 0xE500000000000000;
          }

          v48 = sub_1D77AD82C(v46, v47, &v79);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;
          if (v5 == 3)
          {
            v52 = 0xE400000000000000;
            v51 = 1752461154;
          }

          else
          {
            v49 = 0xE700000000000000;
            v50 = 0x646961706E75;
            if (v5 == 1)
            {
              v49 = 0xE600000000000000;
            }

            else
            {
              v50 = 0x6E776F6E6B6E75;
            }

            if (v5 == 2)
            {
              v51 = 1684627824;
            }

            else
            {
              v51 = v50;
            }

            if (v5 == 2)
            {
              v52 = 0xE400000000000000;
            }

            else
            {
              v52 = v49;
            }
          }

          v58 = sub_1D77AD82C(v51, v52, &v79);

          *(v44 + 14) = v58;
          *(v44 + 22) = 2080;
          *(v44 + 24) = sub_1D77AD82C(0x65736C6166, 0xE500000000000000, &v79);
          *(v44 + 32) = 2080;
          v59 = 0xE700000000000000;
          v60 = 0x656C626967696C65;
          v61 = 0x626967696C656E69;
          if (v34 == 1)
          {
            v59 = 0xEA0000000000656CLL;
          }

          else
          {
            v61 = 0x6E776F6E6B6E75;
          }

          if (v34 == 2)
          {
            v59 = 0xE800000000000000;
          }

          else
          {
            v60 = v61;
          }

          if (v34 == 3)
          {
            v62 = 1752461154;
          }

          else
          {
            v62 = v60;
          }

          if (v34 == 3)
          {
            v63 = 0xE400000000000000;
          }

          else
          {
            v63 = v59;
          }

          v64 = sub_1D77AD82C(v62, v63, &v79);

          *(v44 + 34) = v64;
          *(v44 + 42) = 2080;
          v65 = *(v2 + 48);
          v66 = swift_getObjectType();
          v67 = (*(v65 + 48))(v66, v65);
          v68 = (v67 & 1) == 0;
          if (v67)
          {
            v69 = 1702195828;
          }

          else
          {
            v69 = 0x65736C6166;
          }

          if (v68)
          {
            v70 = 0xE500000000000000;
          }

          else
          {
            v70 = 0xE400000000000000;
          }

          v71 = sub_1D77AD82C(v69, v70, &v79);

          *(v44 + 44) = v71;
          _os_log_impl(&dword_1D7739000, v42, v43, "userIsEligibleForUpsellPresentation=%s [paidVisibility=%s, isSubscribed=%s], [trialVisibility=%s, isFreeTrialEligible=%s]", v44, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1DA7043F0](v45, -1, -1);
          MEMORY[0x1DA7043F0](v44, -1, -1);

          if (v40)
          {
            return 1;
          }
        }

        else
        {

          if (v40)
          {
            return 1;
          }
        }

        sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
        v54 = *(&v80 + 1);
        if (*(&v80 + 1))
        {
          v55 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
          LOBYTE(v82) = 10;
          v73 = *(v2 + 24);
          if (v73)
          {
            v57 = [v73 appLaunchUpsellArticleID];
            if (v57)
            {
LABEL_111:
              v74 = v57;
              v75 = sub_1D78B5C74();
              v77 = v76;

LABEL_114:
              (*(v55 + 8))(&v82, v75, v77, v54, v55);

              goto LABEL_115;
            }
          }

LABEL_113:
          v75 = 0;
          v77 = 0;
          goto LABEL_114;
        }

        goto LABEL_112;
      }

      if (v33 == 1)
      {
        v35 = *(v2 + 48);
        v36 = swift_getObjectType();
        v37 = (*(v35 + 48))(v36, v35) ^ 1;
        goto LABEL_59;
      }
    }

    else
    {
      v34 = 0;
    }

    v37 = 1;
    goto LABEL_59;
  }

LABEL_33:
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D78B4304();
  __swift_project_value_buffer(v20, qword_1EE09C288);
  v21 = sub_1D78B42E4();
  v22 = sub_1D78B60A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v79 = v24;
    *v23 = 136315650;
    if (v19)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v19)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_1D77AD82C(v25, v26, &v79);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (v5 == 3)
    {
      v31 = 0xE400000000000000;
      v30 = 1752461154;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
      if (v5 == 1)
      {
        v28 = 0x646961706E75;
        v29 = 0xE600000000000000;
      }

      if (v5 == 2)
      {
        v30 = 1684627824;
      }

      else
      {
        v30 = v28;
      }

      if (v5 == 2)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = v29;
      }
    }

    v53 = sub_1D77AD82C(v30, v31, &v79);

    *(v23 + 14) = v53;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1D77AD82C(1702195828, 0xE400000000000000, &v79);
    _os_log_impl(&dword_1D7739000, v21, v22, "userIsEligibleForUpsellPresentation=%s [paidVisibility=%s, isSubscribed=%s]. Ignoring trialStatusEligibility because the user is subscribed", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA7043F0](v24, -1, -1);
    MEMORY[0x1DA7043F0](v23, -1, -1);
  }

  if (v19)
  {
    return 1;
  }

  sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
  v54 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v55 = v81;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    LOBYTE(v82) = 10;
    v56 = *(v2 + 24);
    if (v56)
    {
      v57 = [v56 appLaunchUpsellArticleID];
      if (v57)
      {
        goto LABEL_111;
      }
    }

    goto LABEL_113;
  }

LABEL_112:
  sub_1D77473C0(&v79, sub_1D7746B4C);
  return 0;
}

uint64_t sub_1D77A7130()
{
  result = MEMORY[0x1DA700DF0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t AppLaunchUpsellManager.whenInitialAppLaunchUpsellProcessingCompletes.getter()
{
  result = MEMORY[0x1DA700DF0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77A7268()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v92 - v4;
  v6 = sub_1D78B3394();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3384();
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_1D78B5C74();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  (*(v7 + 16))(v5, v9, v6);
  v96 = v7;
  v97 = v6;
  (*(v7 + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v15);
  (*(v16 + 64))(v5, v15, v16);
  swift_endAccess();
  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D0, v17, type metadata accessor for AppLaunchUpsellManager);
  v95 = v9;
  sub_1D78B3724();
  swift_beginAccess();
  v18 = v2;
  v19 = *(v1 + 80);
  v20 = *(v1 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v19);
  v21 = *(v20 + 112);

  v21(v12, v14, v19, v20);
  swift_endAccess();
  if (qword_1EE08F2D0 != -1)
  {
    swift_once();
  }

  v99 = v12;
  v100 = v14;
  sub_1D78B3724();

  v22 = *(v1 + 24);
  if (v22)
  {
    v23 = v22;
    v24 = [v23 appLaunchUpsellArticleID];
    if (v24)
    {
      v92 = v18;
      v25 = v24;
      v26 = sub_1D78B5C74();
      v93 = v27;

      v28 = [v23 appLaunchUpsellCampaignID];
      v29 = v97;
      v94 = v26;
      if (v28)
      {
        v30 = v28;
        v31 = sub_1D78B5C74();
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          swift_beginAccess();
          v36 = *(v1 + 80);
          v35 = *(v1 + 88);
          __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v36);
          v37 = *(v35 + 88);

          v37(v31, v33, v36, v35);
          swift_endAccess();
          if (qword_1EC9C8548 != -1)
          {
            swift_once();
          }

          v99 = v31;
          v100 = v33;
          sub_1D78B3724();

          v29 = v97;
        }

        else
        {
        }

        v26 = v94;
      }

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v47 = sub_1D78B4304();
      v48 = __swift_project_value_buffer(v47, qword_1EE09C288);
      v49 = v23;
      v50 = sub_1D78B42E4();
      v51 = sub_1D78B60A4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = [v49 appLaunchUpsellRequiredAppLaunchCount];

        _os_log_impl(&dword_1D7739000, v50, v51, "App launch count has met or exceeded target value of %lld. Resetting app launch count to 0.", v52, 0xCu);
        MEMORY[0x1DA7043F0](v52, -1, -1);
      }

      else
      {

        v50 = v49;
      }

      swift_beginAccess();
      v53 = *(v1 + 80);
      v54 = *(v1 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v53);
      (*(v54 + 16))(0, v53, v54);
      swift_endAccess();
      v55 = v49;
      v56 = sub_1D78B42E4();
      v57 = sub_1D78B60A4();

      v58 = os_log_type_enabled(v56, v57);
      v97 = v55;
      if (v58)
      {
        v92 = v48;
        v59 = v29;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v99 = v61;
        *v60 = 136315138;
        v62 = [v55 appLaunchUpsellInstanceID];
        if (v62)
        {
          v63 = v62;
          v64 = sub_1D78B5C74();
          v66 = v65;
        }

        else
        {
          v64 = 0;
          v66 = 0xE000000000000000;
        }

        v29 = v59;
        v67 = sub_1D77AD82C(v64, v66, &v99);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_1D7739000, v56, v57, "Updating app stored last app launch instance ID to [%s].", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1DA7043F0](v61, -1, -1);
        MEMORY[0x1DA7043F0](v60, -1, -1);

        v26 = v94;
        v55 = v97;
      }

      else
      {
      }

      v68 = [v55 appLaunchUpsellInstanceID];
      v69 = v93;
      if (v68)
      {
        v70 = v68;
        v71 = sub_1D78B5C74();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      swift_beginAccess();
      v74 = *(v1 + 80);
      v75 = *(v1 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v74);
      (*(v75 + 40))(v71, v73, v74, v75);
      swift_endAccess();

      v76 = sub_1D78B42E4();
      v77 = sub_1D78B60A4();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v99 = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_1D77AD82C(v26, v69, &v99);
        _os_log_impl(&dword_1D7739000, v76, v77, "Presenting upsell using article ID [%s].", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x1DA7043F0](v79, -1, -1);
        MEMORY[0x1DA7043F0](v78, -1, -1);
      }

      sub_1D7746708(v1 + 232, &v99, sub_1D7746B4C);
      v80 = v101;
      if (v101)
      {
        v81 = v102;
        __swift_project_boxed_opaque_existential_1(&v99, v101);
        v98 = 0;
        v82 = *(v81 + 8);

        v82(&v98, v26, v69, v80, v81);

        __swift_destroy_boxed_opaque_existential_1(&v99);
      }

      else
      {
        sub_1D77473C0(&v99, sub_1D7746B4C);
      }

      v83 = v97;
      v84 = sub_1D78B42E4();
      v85 = sub_1D78B60A4();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1D7739000, v84, v85, "Routing to campaign landing page.", v86, 2u);
        MEMORY[0x1DA7043F0](v86, -1, -1);
      }

      sub_1D77A7EE0(v1, &v99);
      v87 = v99;
      v88 = *(v1 + 120);
      v89 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_1((v1 + 96), v88);
      v99 = v87;
      v91 = sub_1D7747CD0(&qword_1EE08ED68, v90, type metadata accessor for AppLaunchUpsellManager);
      (*(v89 + 32))(v26, v69, 0, 0, 0, 0, &v99, v1, v91, 0, v88, v89);

      (*(v96 + 8))(v95, v29);
      return sub_1D77AE2E8(v87);
    }
  }

  sub_1D7746708(v1 + 232, &v99, sub_1D7746B4C);
  v38 = v101;
  if (v101)
  {
    v39 = v102;
    __swift_project_boxed_opaque_existential_1(&v99, v101);
    v98 = 4;
    (*(v39 + 8))(&v98, 0, 0, v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v99);
  }

  else
  {
    sub_1D77473C0(&v99, sub_1D7746B4C);
  }

  v40 = v96;
  v41 = v97;
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v42 = sub_1D78B4304();
  __swift_project_value_buffer(v42, qword_1EE09C288);
  v43 = sub_1D78B42E4();
  v44 = sub_1D78B60A4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D7739000, v43, v44, "Paid bundle configuration or article ID were lost before presentation. The upsell will not be shown.", v45, 2u);
    MEMORY[0x1DA7043F0](v45, -1, -1);
  }

  sub_1D78B3854();
  if ((*(v1 + 176) & 1) == 0)
  {
    sub_1D78B3B64();
    *(v1 + 176) = 1;
  }

  sub_1D78B3864();

  sub_1D78B4224();

  return (*(v40 + 8))(v95, v41);
}

uint64_t sub_1D77A7EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7746708(a1 + 432, &v12, sub_1D7746910);
  if (!v13)
  {
    result = sub_1D77473C0(&v12, sub_1D7746910);
LABEL_7:
    *a2 = 1;
    return result;
  }

  sub_1D7741E34(&v12, v14);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  if ((sub_1D78B59C4() & 1) == 0)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    goto LABEL_7;
  }

  v7 = *(a1 + 152);
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(ObjectType, v7);
  v9 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1D77473C0(v6, type metadata accessor for AppLaunchMethod);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D77473C0(v6, type metadata accessor for AppLaunchMethod.IndirectMethod);
    if (!EnumCaseMultiPayload)
    {
      *a2 = *(a1 + 472);
      swift_unknownObjectRetain();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  *a2 = 1;
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t FCAppLaunchUpsellPaidVisibility.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x646961706E75;
  }

  if (a1 == 2)
  {
    v1 = 1684627824;
  }

  if (a1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v1;
  }
}

uint64_t FCAppLaunchUpsellBundleTrialVisibility.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x626967696C656E69;
  }

  if (a1 == 2)
  {
    v1 = 0x656C626967696C65;
  }

  if (a1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D77A81A4(uint64_t a1)
{
  v3 = sub_1D78B3BD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7746708(v1 + 312, &v24, sub_1D77467D8);
  if (v25)
  {
    sub_1D7741E34(&v24, v26);
    sub_1D7746708(v1 + 352, &v22, sub_1D7746840);
    if (v23)
    {
      sub_1D7741E34(&v22, &v24);
      (*(v8 + 16))(v10, a1, v7);
      sub_1D78B3D64();
      swift_allocObject();
      sub_1D78B3D44();
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      sub_1D78B5B34();
      sub_1D78B3D54();

      __swift_project_boxed_opaque_existential_1(&v24, v25);
      v19 = sub_1D78B5B24();

      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return v19;
    }

    sub_1D77473C0(&v22, sub_1D7746840);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C288);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D7739000, v16, v17, "Unable to parse article ID from URL because no URL handler match ID provider is available.", v18, 2u);
      MEMORY[0x1DA7043F0](v18, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1D77473C0(&v24, sub_1D77467D8);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D78B4304();
    __swift_project_value_buffer(v11, qword_1EE09C288);
    v12 = sub_1D78B42E4();
    v13 = sub_1D78B60A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D7739000, v12, v13, "Unable to parse article ID from URL because no URL pattern provider is available.", v14, 2u);
      MEMORY[0x1DA7043F0](v14, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D77A85F4(uint64_t a1)
{
  sub_1D7746708(v1 + 392, &v18, sub_1D77468A8);
  if (v19)
  {
    sub_1D7741E34(&v18, v20);
    v3 = sub_1D77A81A4(a1);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v3);
      sub_1D773D21C(0, &unk_1EE08E580);
      sub_1D78B41F4();

      v5 = sub_1D78B4014();
      sub_1D78B40A4();

      v6 = sub_1D78B4014();
      v7 = sub_1D78B4134();

      __swift_destroy_boxed_opaque_existential_1(v20);
      return v7;
    }

    else
    {
      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D78B4304();
      __swift_project_value_buffer(v13, qword_1EE09C288);
      v14 = sub_1D78B42E4();
      v15 = sub_1D78B60A4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D7739000, v14, v15, "Failed to retrieve article ID from URL. Assuming article is not paywalled.", v16, 2u);
        MEMORY[0x1DA7043F0](v16, -1, -1);
      }

      LOBYTE(v18) = 0;
      sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v17 = sub_1D78B4104();
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v17;
    }
  }

  else
  {
    sub_1D77473C0(&v18, sub_1D77468A8);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D78B4304();
    __swift_project_value_buffer(v9, qword_1EE09C288);
    v10 = sub_1D78B42E4();
    v11 = sub_1D78B60A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D7739000, v10, v11, "Failed to retrieve article ID from URL because no headline service is available.", v12, 2u);
      MEMORY[0x1DA7043F0](v12, -1, -1);
    }

    v20[0] = 0;
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D77A89C8(void **a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 472) = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if ([v2 isPaid] & 1) == 0 && (objc_msgSend(v2, sel_respondsToSelector_, sel_isBundlePaid))
  {
    [v2 isBundlePaid];
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8AA4()
{
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D78B4304();
  __swift_project_value_buffer(v0, qword_1EE09C288);
  v1 = sub_1D78B42E4();
  v2 = sub_1D78B6094();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D7739000, v1, v2, "Failed to retrieve article headline. Assuming article is not paywalled.", v3, 2u);
    MEMORY[0x1DA7043F0](v3, -1, -1);
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8BD4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B4304();
  __swift_project_value_buffer(v2, qword_1EE09C288);
  v3 = sub_1D78B42E4();
  v4 = sub_1D78B60A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1D7739000, v3, v4, "Successfully fetched widget launch article. isPaidArticle?: %{BOOL}d", v5, 8u);
    MEMORY[0x1DA7043F0](v5, -1, -1);
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  sub_1D774584C(a5 + 56, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v9 + 128);

  v11(sub_1D77AE4D4, v10, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1D77A8E00(void **a1, uint64_t (*a2)(uint64_t *))
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D78B4304();
    __swift_project_value_buffer(v4, qword_1EE09C288);
    v5 = v3;
    v6 = sub_1D78B42E4();
    v7 = sub_1D78B6094();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1D78B67B4();
      v12 = v11;

      v13 = sub_1D77AD82C(v10, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D7739000, v6, v7, "Data store refresh failed with error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA7043F0](v9, -1, -1);
      MEMORY[0x1DA7043F0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D78B4304();
    __swift_project_value_buffer(v14, qword_1EE09C288);
    v15 = sub_1D78B42E4();
    v16 = sub_1D78B60A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D7739000, v15, v16, "Data store refreshed successfully", v17, 2u);
      MEMORY[0x1DA7043F0](v17, -1, -1);
    }
  }

  v19 = v3;
  return a2(&v19);
}

void sub_1D77A906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7752FB0;
  *(v10 + 24) = v8;
  v12[4] = sub_1D77AE4CC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7781488;
  v12[3] = &block_descriptor_48;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D77A9184(void *a1, uint64_t (*a2)(NSObject *))
{
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D78B4304();
  __swift_project_value_buffer(v4, qword_1EE09C288);
  v5 = a1;
  v6 = sub_1D78B42E4();
  v7 = sub_1D78B60A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 subscriptionState];

    _os_log_impl(&dword_1D7739000, v6, v7, "Finished refreshing bundle subscription status with state=%lu.", v8, 0xCu);
    MEMORY[0x1DA7043F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  return a2(v5);
}

uint64_t sub_1D77A92B8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  if (sub_1D77A944C(v4))
  {
    swift_allocObject();
    v5 = swift_weakInit();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v6 = sub_1D78B4174();
  }

  else
  {
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v6 = sub_1D78B4104();
  }

  return v6;
}

uint64_t sub_1D77A944C(uint64_t a1)
{
  v2 = v1;
  if ((sub_1D77AB9E4() & 1) == 0)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C288);
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D7739000, v22, v23, "Upsell cannot be presented because the user has already seen another upsell with the same campaign. Checking if upsell would have been presented...", v24, 2u);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
    v25 = v78;
    if (v78)
    {
      v26 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      LOBYTE(v76[0]) = 7;
      v27 = *(v2 + 24);
      if (v27 && (v28 = [v27 appLaunchUpsellArticleID]) != 0)
      {
        v29 = v28;
        v30 = sub_1D78B5C74();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      (*(v26 + 8))(v76, v30, v32, v25, v26);

      __swift_destroy_boxed_opaque_existential_1(v77);
      v36 = *(v2 + 24);
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1D77473C0(v77, sub_1D7746B4C);
      v36 = *(v2 + 24);
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    v37 = [v36 appLaunchUpsellInstanceID];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D78B5C74();
      v41 = v40;

      if (sub_1D77AA6A0())
      {

        v42 = sub_1D78B42E4();
        v43 = sub_1D78B60A4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v77[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_1D77AD82C(v39, v41, v77);
          _os_log_impl(&dword_1D7739000, v42, v43, "Updating app stored last app launch instance ID to [%s] and resetting app launch count.", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x1DA7043F0](v45, -1, -1);
          MEMORY[0x1DA7043F0](v44, -1, -1);
        }

        swift_beginAccess();
        v46 = *(v2 + 80);
        v47 = *(v2 + 88);
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v46);
        (*(v47 + 16))(0, v46, v47);
        v48 = *(v2 + 80);
        v49 = *(v2 + 88);
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v48);
        (*(v49 + 40))(v39, v41, v48, v49);
        swift_endAccess();
        goto LABEL_41;
      }
    }

LABEL_38:
    v50 = sub_1D78B42E4();
    v51 = sub_1D78B60A4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D7739000, v50, v51, "Skipping updating app stored last app launch instance ID and resetting app launch count.", v52, 2u);
      MEMORY[0x1DA7043F0](v52, -1, -1);
    }

LABEL_41:
    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_43;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D78B4304();
  __swift_project_value_buffer(v4, qword_1EE09C288);
  v5 = sub_1D78B42E4();
  v6 = sub_1D78B60A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D7739000, v5, v6, "Current campaign settings do not prevent upsell presentation. Continuing with eligibility checks...", v7, 2u);
    MEMORY[0x1DA7043F0](v7, -1, -1);
  }

  v8 = *(v2 + 24);
  if (v8 && [v8 appLaunchUpsellLastSeenDateSyncEnabled])
  {
    sub_1D77AC124();
  }

  if ((AppLaunchUpsellManager.userIsEligibleForUpsellPresentation(with:)(a1) & 1) == 0)
  {
    v33 = sub_1D78B42E4();
    v34 = sub_1D78B60A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D7739000, v33, v34, "User is not eligible for upsell presentation. The upsell will not be presented.", v35, 2u);
      MEMORY[0x1DA7043F0](v35, -1, -1);
    }

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_27;
  }

  v9 = *(v2 + 24);
  if (!v9)
  {
    v53 = sub_1D78B42E4();
    v54 = sub_1D78B60A4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D7739000, v53, v54, "No paid bundle configuration available. The upsell will not be presented.", v55, 2u);
      MEMORY[0x1DA7043F0](v55, -1, -1);
    }

    sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
    v56 = v78;
    if (v78)
    {
      v57 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      LOBYTE(v76[0]) = 3;
      (*(v57 + 8))(v76, 0, 0, v56, v57);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      sub_1D77473C0(v77, sub_1D7746B4C);
    }

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_43;
  }

  v10 = v9;
  if ((sub_1D77AA6A0() & 1) == 0)
  {

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

LABEL_27:
    sub_1D78B3864();

LABEL_44:
    sub_1D78B4224();

    return 0;
  }

  swift_beginAccess();
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v11);
  result = (*(v12 + 24))(v77, v11, v12);
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v14;
    (result)(v77, 0);
    swift_endAccess();

    v15 = sub_1D78B42E4();
    v16 = sub_1D78B60A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      swift_beginAccess();
      v18 = *(v2 + 80);
      v19 = *(v2 + 88);
      __swift_project_boxed_opaque_existential_1((v2 + 56), v18);
      v20 = (*(v19 + 8))(v18, v19);
      swift_endAccess();
      *(v17 + 4) = v20;

      _os_log_impl(&dword_1D7739000, v15, v16, "App launch count was incremented to %lld.", v17, 0xCu);
      MEMORY[0x1DA7043F0](v17, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v58 = *(v2 + 80);
    v59 = *(v2 + 88);
    __swift_project_boxed_opaque_existential_1((v2 + 56), v58);
    v60 = (*(v59 + 8))(v58, v59);
    swift_endAccess();
    if (v60 < [v10 appLaunchUpsellRequiredAppLaunchCount])
    {
      sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
      v61 = v78;
      if (v78)
      {
        v62 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        LOBYTE(v76[0]) = 12;
        v63 = [v10 appLaunchUpsellArticleID];
        if (v63)
        {
          v64 = v63;
          v65 = sub_1D78B5C74();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        (*(v62 + 8))(v76, v65, v67, v61, v62);

        __swift_destroy_boxed_opaque_existential_1(v77);
      }

      else
      {

        sub_1D77473C0(v77, sub_1D7746B4C);
      }

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

LABEL_43:
      sub_1D78B3864();

      goto LABEL_44;
    }

    if (sub_1D77AB1C4())
    {

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

      sub_1D78B3864();

      goto LABEL_44;
    }

    if (![*(v2 + 136) isCloudKitReachable])
    {
      sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
      v71 = v78;
      if (v78)
      {
        v72 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        LOBYTE(v76[0]) = 13;
        (*(v72 + 8))(v76, 0, 0, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v77);
      }

      else
      {
        sub_1D77473C0(v77, sub_1D7746B4C);
      }

      v73 = sub_1D78B42E4();
      v74 = sub_1D78B60A4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1D7739000, v73, v74, "Device is currently offline. App launch upsell will not be presented.", v75, 2u);
        MEMORY[0x1DA7043F0](v75, -1, -1);
      }

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

      goto LABEL_43;
    }

    v68 = sub_1D78B42E4();
    v69 = sub_1D78B60A4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1D7739000, v68, v69, "All upsell eligibility checks have passed. Upsell will be presented unless otherwise prevented by the presentation operation manager.", v70, 2u);
      MEMORY[0x1DA7043F0](v70, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1D77AA120(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D7746708(Strong + 192, &v21, sub_1D7746AE4);

    if (*(&v22 + 1))
    {
      sub_1D7741E34(&v21, v24);
      v13 = v25;
      v14 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v14 + 8))(a6, a7, v13, v14);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1D77AE39C;
      *(v15 + 24) = v11;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1D77AE3A4;
      *(v16 + 24) = v15;

      v17 = sub_1D78B4014();
      sub_1D78B4094();

      v18 = swift_allocObject();
      v18[2] = a6;
      v18[3] = a7;
      v18[4] = sub_1D77AE39C;
      v18[5] = v11;

      v19 = sub_1D78B4014();
      sub_1D78B40E4();

      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  sub_1D77473C0(&v21, sub_1D7746AE4);
  LOBYTE(v24[0]) = 1;
  return a1(v24);
}

uint64_t sub_1D77AA3E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  sub_1D7746708(a2 + 232, v17, sub_1D7746B4C);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16 = 16;
    (*(v9 + 8))(&v16, 0, 0, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D77473C0(v17, sub_1D7746B4C);
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D78B4304();
  __swift_project_value_buffer(v10, qword_1EE09C288);

  v11 = sub_1D78B42E4();
  v12 = sub_1D78B6094();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1D77AD82C(a3, a4, v17);
    _os_log_impl(&dword_1D7739000, v11, v12, "Article Prefetch Failed for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1DA7043F0](v14, -1, -1);
    MEMORY[0x1DA7043F0](v13, -1, -1);
  }

  return a5(0);
}

uint64_t sub_1D77AA5E0(uint64_t a1, uint64_t a2)
{
  sub_1D7746708(a2 + 232, v6, sub_1D7746B4C);
  v2 = v7;
  if (!v7)
  {
    return sub_1D77473C0(v6, sub_1D7746B4C);
  }

  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5 = 2;
  (*(v3 + 8))(&v5, 0, 0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D77AA6A0()
{
  v1 = v0;
  v2 = v0[3];
  if (!v2 || (v3 = [v2 appLaunchUpsellInstanceID]) == 0)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C288);
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D7739000, v22, v23, "Failed to retrieve instance ID from config. Upsell will not be presented.", v24, 2u);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
    v25 = v70;
    if (!v70)
    {
      goto LABEL_66;
    }

    v26 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v68 = 11;
    v27 = v1[3];
    if (!v27)
    {
      goto LABEL_64;
    }

    goto LABEL_30;
  }

  v4 = v3;
  v5 = sub_1D78B5C74();
  v7 = v6;

  swift_beginAccess();
  v8 = v1[10];
  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
  v10 = (*(v9 + 32))(v8, v9);
  if (!v11)
  {
    swift_endAccess();

    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D78B4304();
    __swift_project_value_buffer(v28, qword_1EE09C288);
    v29 = sub_1D78B42E4();
    v30 = sub_1D78B60A4();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_26;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "No previous instance ID was stored. Upsell may be presented.";
LABEL_24:
    _os_log_impl(&dword_1D7739000, v29, v30, v32, v31, 2u);
    v33 = v31;
LABEL_25:
    MEMORY[0x1DA7043F0](v33, -1, -1);
LABEL_26:

    return 1;
  }

  v12 = v10;
  v13 = v11;
  swift_endAccess();
  v14 = v5 == v12 && v13 == v7;
  if (v14 || (sub_1D78B6724() & 1) != 0)
  {

    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C288);

    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v69[0] = v19;
      *v18 = 136315138;
      v20 = sub_1D77AD82C(v5, v7, v69);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1D7739000, v16, v17, "Last known instance ID and config instance ID have a matching value of %s. Upsell will not be presented.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA7043F0](v19, -1, -1);
      MEMORY[0x1DA7043F0](v18, -1, -1);
    }

    else
    {
    }

    sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
    v25 = v70;
    if (v70)
    {
      v26 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v68 = 5;
      v27 = v1[3];
      if (v27)
      {
        goto LABEL_30;
      }

LABEL_64:
      v37 = 0;
      v39 = 0;
      goto LABEL_65;
    }

LABEL_66:
    sub_1D77473C0(v69, sub_1D7746B4C);
    return 0;
  }

  sub_1D77ADD80(v5, v7);
  if ((v41 & 1) == 0)
  {
    if (v40 < 0)
    {

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v50 = sub_1D78B4304();
      __swift_project_value_buffer(v50, qword_1EE09C288);

      v29 = sub_1D78B42E4();
      v51 = sub_1D78B60A4();

      if (os_log_type_enabled(v29, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v69[0] = v53;
        *v52 = 136315138;
        v54 = sub_1D77AD82C(v5, v7, v69);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_1D7739000, v29, v51, "Config version is set to a negative value (%s). Upsell will be presented.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1DA7043F0](v53, -1, -1);
        v33 = v52;
        goto LABEL_25;
      }
    }

    else
    {
      v46 = v40;
      sub_1D77ADD80(v12, v13);
      if (v48)
      {

        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v49 = sub_1D78B4304();
        __swift_project_value_buffer(v49, qword_1EE09C288);
        v29 = sub_1D78B42E4();
        v30 = sub_1D78B60A4();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_26;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "Failed to retrieve instance ID from config. Upsell may be presented since instance ID strings differ.";
        goto LABEL_24;
      }

      if (v47 >= v46)
      {
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v61 = sub_1D78B4304();
        __swift_project_value_buffer(v61, qword_1EE09C288);

        v62 = sub_1D78B42E4();
        v63 = sub_1D78B60A4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v69[0] = v65;
          *v64 = 136315394;
          v66 = sub_1D77AD82C(v5, v7, v69);

          *(v64 + 4) = v66;
          *(v64 + 12) = 2080;
          v67 = sub_1D77AD82C(v12, v13, v69);

          *(v64 + 14) = v67;
          _os_log_impl(&dword_1D7739000, v62, v63, "Config version (%s) is less than or equal to stored version (%s). Upsell will not be presented.", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7043F0](v65, -1, -1);
          MEMORY[0x1DA7043F0](v64, -1, -1);
        }

        else
        {
        }

        sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
        v25 = v70;
        if (!v70)
        {
          goto LABEL_66;
        }

        v26 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v68 = 5;
        v27 = v1[3];
        if (!v27)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v55 = sub_1D78B4304();
      __swift_project_value_buffer(v55, qword_1EE09C288);

      v29 = sub_1D78B42E4();
      v56 = sub_1D78B60A4();

      if (os_log_type_enabled(v29, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69[0] = v58;
        *v57 = 136315394;
        v59 = sub_1D77AD82C(v5, v7, v69);

        *(v57 + 4) = v59;
        *(v57 + 12) = 2080;
        v60 = sub_1D77AD82C(v12, v13, v69);

        *(v57 + 14) = v60;
        _os_log_impl(&dword_1D7739000, v29, v56, "Config version (%s) is greater than stored version (%s). Upsell will be presented.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7043F0](v58, -1, -1);
        v33 = v57;
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v42 = sub_1D78B4304();
  __swift_project_value_buffer(v42, qword_1EE09C288);
  v43 = sub_1D78B42E4();
  v44 = sub_1D78B60A4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D7739000, v43, v44, "Failed to retrieve instance ID from config. Upsell won't be presented.", v45, 2u);
    MEMORY[0x1DA7043F0](v45, -1, -1);
  }

  sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
  v25 = v70;
  if (!v70)
  {
    goto LABEL_66;
  }

  v26 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v68 = 6;
  v27 = v1[3];
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_30:
  v35 = [v27 appLaunchUpsellArticleID];
  if (!v35)
  {
    goto LABEL_64;
  }

  v36 = v35;
  v37 = sub_1D78B5C74();
  v39 = v38;

LABEL_65:
  (*(v26 + 8))(&v68, v37, v39, v25, v26);

  __swift_destroy_boxed_opaque_existential_1(v69);
  return 0;
}

uint64_t sub_1D77AB1C4()
{
  v1 = v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - v3;
  v5 = sub_1D78B3394();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v1[3];
  if (!v11)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D78B4304();
    __swift_project_value_buffer(v22, qword_1EE09C288);
    v23 = sub_1D78B42E4();
    v24 = sub_1D78B60A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D7739000, v23, v24, "No paid bundle configuration available. The upsell will not be presented.", v25, 2u);
      MEMORY[0x1DA7043F0](v25, -1, -1);
    }

    sub_1D7746708((v1 + 29), v58, sub_1D7746B4C);
    v26 = v59;
    if (v59)
    {
      v27 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v57 = 3;
      (*(v27 + 8))(&v57, 0, 0, v26, v27);
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(v58);
      return 1;
    }

LABEL_31:
    sub_1D77473C0(v58, sub_1D7746B4C);
    return 1;
  }

  v56 = &v53 - v10;
  swift_beginAccess();
  v13 = v1[10];
  v12 = v1[11];
  v55 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v13);
  v14 = *(v12 + 56);
  v15 = v11;
  v16 = v5;
  v14(v13, v12);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v28 = v56;
    (*(v6 + 32))(v56, v4, v5);
    swift_endAccess();
    sub_1D78B3384();
    sub_1D78B3304();
    v30 = v29;
    v31 = *(v6 + 8);
    v31(v9, v16);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D78B4304();
    __swift_project_value_buffer(v32, qword_1EE09C288);
    sub_1D776BA64();
    sub_1D776BA64();
    v33 = sub_1D78B42E4();
    v34 = sub_1D78B60A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 68157952;
      *(v35 + 4) = 2;
      *(v35 + 8) = 2048;
      *(v35 + 10) = v30;
      _os_log_impl(&dword_1D7739000, v33, v34, "Time interval elapsed since last displayed upsell: %.*f.", v35, 0x12u);
      MEMORY[0x1DA7043F0](v35, -1, -1);
    }

    v36 = [v15 appLaunchUpsellQuiescenceInterval];
    sub_1D776BA64();
    sub_1D776BA64();
    v37 = sub_1D78B42E4();
    v38 = sub_1D78B60A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 68157952;
      *(v39 + 4) = 2;
      *(v39 + 8) = 2048;
      *(v39 + 10) = v36;
      _os_log_impl(&dword_1D7739000, v37, v38, "Minimum time interval between presentations: %.*f.", v39, 0x12u);
      MEMORY[0x1DA7043F0](v39, -1, -1);
    }

    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    v42 = os_log_type_enabled(v40, v41);
    if (v30 >= v36)
    {
      if (v42)
      {
        v51 = v31;
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1D7739000, v40, v41, "The upsell can be presented.", v52, 2u);
        MEMORY[0x1DA7043F0](v52, -1, -1);

        v51(v28, v16);
      }

      else
      {

        v31(v28, v16);
      }

      return 0;
    }

    v54 = v31;
    if (v42)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D7739000, v40, v41, "The upsell presentation will be postponed.", v43, 2u);
      MEMORY[0x1DA7043F0](v43, -1, -1);
    }

    sub_1D7746708((v55 + 29), v58, sub_1D7746B4C);
    v44 = v59;
    if (v59)
    {
      v45 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v57 = 8;
      v46 = [v15 appLaunchUpsellArticleID];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1D78B5C74();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      (*(v45 + 8))(&v57, v48, v50, v44, v45);

      v54(v28, v16);
      goto LABEL_34;
    }

    v54(v28, v16);

    goto LABEL_31;
  }

  sub_1D77AE570(v4, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
  swift_endAccess();
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D78B4304();
  __swift_project_value_buffer(v17, qword_1EE09C288);
  v18 = sub_1D78B42E4();
  v19 = sub_1D78B60A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D7739000, v18, v19, "Couldn't find upsell last seen date. The upsell can be presented.", v20, 2u);
    MEMORY[0x1DA7043F0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_1D77AB9E4()
{
  sub_1D77AE3F8();
  v2 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v63 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  v14 = v0[3];
  if (!v14 || ![v14 appLaunchUpsellLastShownCampaignIDSyncEnabled])
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D78B4304();
    __swift_project_value_buffer(v40, qword_1EE09C288);
    v41 = sub_1D78B42E4();
    v42 = sub_1D78B60A4();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_22;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "Campaign sync is not enabled in the configuration.  Skipping the campaign check.";
    goto LABEL_21;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D78B4304();
  __swift_project_value_buffer(v15, qword_1EE09C288);
  v16 = sub_1D78B42E4();
  v17 = sub_1D78B60A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D7739000, v16, v17, "Campaign sync is enabled in the configuration.  Proceeding with campaign checks...", v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
  }

  v19 = v0[3];
  if (!v19 || (v20 = [v19 appLaunchUpsellCampaignID]) == 0)
  {
LABEL_19:
    v41 = sub_1D78B42E4();
    v42 = sub_1D78B60A4();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_22:

LABEL_23:
      v45 = 1;
      return v45 & 1;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "No valid campaign ID found in config.  Bypassing further campaign checks.";
LABEL_21:
    _os_log_impl(&dword_1D7739000, v41, v42, v44, v43, 2u);
    MEMORY[0x1DA7043F0](v43, -1, -1);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = sub_1D78B5C74();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_19;
  }

  v67 = v22;
  v26 = &v13[*(v2 + 48)];
  v27 = &v13[*(v2 + 64)];
  v28 = sub_1D77AC6A4(v13, v0);
  v65 = v29;
  v66 = v28;
  *v26 = v28;
  v26[1] = v29;
  *v27 = v30;
  *(v27 + 1) = v31;
  sub_1D7746708(v13, v11, sub_1D77AE3F8);

  v32 = sub_1D78B42E4();
  v33 = sub_1D78B60A4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68 = v64;
    *v34 = 136315394;
    *(v34 + 4) = sub_1D77AD82C(v67, v24, &v68);
    *(v34 + 12) = 2080;
    sub_1D77AE468(v11, v8);
    v35 = &v8[*(v2 + 48)];
    v36 = v35[1];
    v63 = *v35;

    v37 = sub_1D78B3394();
    (*(*(v37 - 8) + 8))(v8, v37);
    v38 = sub_1D77AD82C(v63, v36, &v68);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_1D7739000, v32, v33, "Current Upsell Campaign ID: %s  |  Last Shown Campaign ID: %s", v34, 0x16u);
    v39 = v64;
    swift_arrayDestroy();
    MEMORY[0x1DA7043F0](v39, -1, -1);
    MEMORY[0x1DA7043F0](v34, -1, -1);
  }

  else
  {

    sub_1D77473C0(v11, sub_1D77AE3F8);
  }

  sub_1D7746708(v13, v5, sub_1D77AE3F8);

  v47 = &v5[*(v2 + 64)];
  v49 = *v47;
  v48 = *(v47 + 1);
  v50 = [objc_opt_self() mainBundle];
  v51 = [v50 bundleIdentifier];

  if (v51)
  {
    v52 = sub_1D78B5C74();
    v54 = v53;

    if (v49 == v52 && v48 == v54)
    {
      v55 = 1;
    }

    else
    {
      v55 = sub_1D78B6724();
    }

    v57 = v67;

    v58 = sub_1D78B3394();
    (*(*(v58 - 8) + 8))(v5, v58);
    if (v55)
    {

      v59 = sub_1D78B42E4();
      v60 = sub_1D78B60A4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1D7739000, v59, v60, "Most recent campaign was presented by this app.  Bypassing further campaign checks in favor of our instance ID check.", v61, 2u);
        MEMORY[0x1DA7043F0](v61, -1, -1);
      }

      sub_1D77473C0(v13, sub_1D77AE3F8);
      goto LABEL_23;
    }
  }

  else
  {

    v56 = sub_1D78B3394();
    (*(*(v56 - 8) + 8))(v5, v56);
    v57 = v67;
  }

  if (v57 == v66 && v24 == v65)
  {

    v45 = 0;
  }

  else
  {
    v62 = sub_1D78B6724();

    v45 = v62 ^ 1;
  }

  sub_1D77473C0(v13, sub_1D77AE3F8);
  return v45 & 1;
}

uint64_t sub_1D77AC124()
{
  v1 = v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v7 = sub_1D78B3394();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  swift_beginAccess();
  v14 = v0[10];
  v15 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
  (*(v15 + 56))(v14, v15);
  swift_endAccess();
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    sub_1D78B32E4();
    if (v16(v6, 1, v7) != 1)
    {
      sub_1D77AE570(v6, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v17, type metadata accessor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D78B4304();
  __swift_project_value_buffer(v18, qword_1EE09C288);
  v19 = sub_1D78B42E4();
  v20 = sub_1D78B60A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D7739000, v19, v20, "Synchronizing upsell last seen date...", v21, 2u);
    MEMORY[0x1DA7043F0](v21, -1, -1);
  }

  v22 = sub_1D78B3334();
  v23 = sub_1D78B42E4();
  v24 = sub_1D78B60A4();
  v25 = os_log_type_enabled(v23, v24);
  if (v22)
  {
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D7739000, v23, v24, "Upsell was seen more recently in another app.  Updating Data Store last seen date.", v26, 2u);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    v27 = v33;
    (*(v8 + 16))(v33, v11, v7);
    (*(v8 + 56))(v27, 0, 1, v7);
    swift_beginAccess();
    v28 = v1[10];
    v29 = v1[11];
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v28);
    (*(v29 + 64))(v27, v28, v29);
    swift_endAccess();
  }

  else
  {
    if (v25)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D7739000, v23, v24, "Data Store last seen date is the most recent.  No updates required.", v30, 2u);
      MEMORY[0x1DA7043F0](v30, -1, -1);
    }
  }

  v31 = *(v8 + 8);
  v31(v11, v7);
  return (v31)(v13, v7);
}

uint64_t sub_1D77AC6A4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v44 = a1;
  v45 = v3;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1D78B3394();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  swift_beginAccess();
  v14 = a2[10];
  v15 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v14);
  (*(v15 + 56))(v14, v15);
  swift_endAccess();
  v16 = *(v8 + 48);
  v17 = v16(v6, 1, v7);
  v46 = v13;
  v47 = v7;
  if (v17 == 1)
  {
    sub_1D78B32E4();
    if (v16(v6, 1, v7) != 1)
    {
      sub_1D77AE570(v6, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  v43 = v8;
  swift_beginAccess();
  v18 = a2[10];
  v19 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v18);
  v20 = (*(v19 + 80))(v18, v19);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v41 = v22;
  v42 = v23;
  v24 = a2[10];
  v25 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v24);
  v26 = (*(v25 + 104))(v24, v25);
  v28 = v27;
  swift_endAccess();
  if (v28)
  {
    v30 = v26;
  }

  else
  {
    v30 = 0;
  }

  v39 = v30;
  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v29, type metadata accessor for AppLaunchUpsellManager);
  sub_1D78B3574();
  v31 = v46;
  v32 = sub_1D78B3334();
  v33 = v43;
  v34 = v11;
  v35 = v47;
  v40 = *(v43 + 8);
  v40(v34, v47);
  if (v32)
  {
    (*(v33 + 32))(v44, v31, v35);
    return v41;
  }

  else
  {

    sub_1D78B3574();
    if (qword_1EC9C8548 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v36 = v48;
    v37 = v47;
    if (qword_1EE08F2D0 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v40(v46, v37);
  }

  return v36;
}

void (*AppLaunchUpsellManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D77AD8F8;
}

void sub_1D77ACC34(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v11 = sub_1D78B4B64();
    sub_1D7747CD0(&qword_1EC9C9CD0, 255, MEMORY[0x1E69D8050]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69D8048], v11);
    a1(v12, 1);

    return;
  }

  v5 = Strong;
  sub_1D7746708(Strong + 272, &v15, sub_1D7746770);
  if (!v16)
  {
    sub_1D77473C0(&v15, sub_1D7746770);
LABEL_12:
    v14 = swift_allocObject();
    v14[2] = v5;
    v14[3] = a1;
    v14[4] = a2;

    sub_1D78B4224();

    return;
  }

  sub_1D7741E34(&v15, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  if ((sub_1D78B54E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_12;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D78B4304();
  __swift_project_value_buffer(v6, qword_1EE09C288);
  v7 = sub_1D78B42E4();
  v8 = sub_1D78B60A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D7739000, v7, v8, "App Launch Upsell presentation is cancelled; device is offline.", v9, 2u);
    MEMORY[0x1DA7043F0](v9, -1, -1);
  }

  sub_1D77AE290();
  v10 = swift_allocError();
  a1(v10, 1);

  __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1D77ACF2C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v43 = a2;
  v5 = sub_1D78B5254();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D78B52A4();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D78B52C4();
  v35 = *(v42 - 8);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v10;
  v11 = sub_1D78B3E24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v15 = MEMORY[0x1E69D6810];
  sub_1D77441E4(0, &qword_1EE08E4D8, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78BF690;
  sub_1D78B3DF4();
  sub_1D78B3E14();
  sub_1D78B3E04();
  aBlock[0] = v16;
  sub_1D7747CD0(&qword_1EE08F240, 255, MEMORY[0x1E69D6810]);
  sub_1D77441E4(0, &unk_1EE08E608, v15, MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE08E600, &unk_1EE08E608, v15);
  sub_1D78B6324();
  v17 = swift_allocObject();
  *(v17 + 16) = v43;
  *(v17 + 24) = a3;

  sub_1D78B3964();

  (*(v12 + 8))(v14, v11);
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D78B4304();
  __swift_project_value_buffer(v18, qword_1EE09C288);
  v19 = sub_1D78B42E4();
  v20 = sub_1D78B60A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D7739000, v19, v20, "Showing AppLaunchUpsell...", v21, 2u);
    MEMORY[0x1DA7043F0](v21, -1, -1);
  }

  v22 = v44;
  v23 = *(v44 + 24);
  if (!v23 || [v23 appLaunchUpsellPresentationDelay] < 1)
  {
    return sub_1D77A7268();
  }

  sub_1D773F004(0, &qword_1EE08FE10);
  v24 = sub_1D78B6104();
  v25 = v33;
  sub_1D78B52B4();
  v26 = v34;
  sub_1D78B52E4();
  v43 = *(v35 + 8);
  v43(v25, v42);
  aBlock[4] = sub_1D77AE2E4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_4;
  v27 = _Block_copy(aBlock);

  v28 = v36;
  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE090300, 255, MEMORY[0x1E69E7F60]);
  v29 = MEMORY[0x1E69E7F60];
  sub_1D77441E4(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE090030, &qword_1EE090040, v29);
  v30 = v38;
  v31 = v41;
  sub_1D78B6324();
  MEMORY[0x1DA703380](v26, v28, v30, v27);
  _Block_release(v27);

  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v28, v39);
  return (v43)(v26, v42);
}

void (*sub_1D77AD640())(void (*)(void *, uint64_t), uint64_t)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D77AE6C4;
}

uint64_t sub_1D77AD74C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v2 = 0x646961706E75;
  }

  if (v1 == 2)
  {
    v2 = 1684627824;
  }

  if (v1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D77AD7B4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v2 = 0x626967696C656E69;
  }

  if (v1 == 2)
  {
    v2 = 0x656C626967696C65;
  }

  if (v1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D77AD82C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D77AD900(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D777BE08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D77AD900(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D77ADA0C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D78B64A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D77ADA0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D77ADA58(a1, a2);
  sub_1D77ADB88(&unk_1F5265098);
  return v3;
}

uint64_t sub_1D77ADA58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D7831C5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D78B64A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D78B5D84();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D7831C5C(v10, 0);
        result = sub_1D78B6444();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D77ADB88(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D77ADC74(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D77ADC74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7747C80(0, &qword_1EE08FA18, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1D77ADD80(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B5C44();
  v5 = sub_1D78B5C44();
  v6 = [v4 fc:v5 numberFollowingString:?];

  if (v6)
  {
    [v6 integerValue];

    return;
  }

  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      sub_1D7831CC4(a1, a2, 10);

      return;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v24 = 0;
            v25 = v35 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v31 = 0;
          v32 = v35;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          v16 = 0;
          v17 = v35 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1D78B64A4();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v20 = 0;
            if (v10)
            {
              v21 = v10 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_63;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_63;
                }

                v20 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_63;
                }

                ++v21;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v28 = 0;
          if (v10)
          {
            while (1)
            {
              v29 = *v10 - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              v30 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_63;
              }

              v28 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
        goto LABEL_64;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
LABEL_64:
          v36 = v7;
          return;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }
}

uint64_t sub_1D77AE0F8()
{
  sub_1D78B3854();
  if ((*(v0 + 176) & 1) == 0)
  {
    sub_1D78B3B64();
    *(v0 + 176) = 1;
  }

  sub_1D78B3864();

  sub_1D78B4224();
}

unint64_t sub_1D77AE290()
{
  result = qword_1EC9C9FC0;
  if (!qword_1EC9C9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9FC0);
  }

  return result;
}

uint64_t sub_1D77AE2E8(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D77AE308()
{
  if (!qword_1EE095200)
  {
    sub_1D773F004(255, &qword_1EE08FDC8);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE095200);
    }
  }
}

void sub_1D77AE3F8()
{
  if (!qword_1EE095678)
  {
    sub_1D78B3394();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE095678);
    }
  }
}

uint64_t sub_1D77AE468(uint64_t a1, uint64_t a2)
{
  sub_1D77AE3F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77AE4DC(uint64_t a1, uint64_t a2)
{
  sub_1D77441E4(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77AE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D77AE654()
{
  result = qword_1EC9C9FE0;
  if (!qword_1EC9C9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9FE0);
  }

  return result;
}

id sub_1D77AE6CC()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory + 24);
    v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory), v4);
    v11 = 1;
    v6 = v0;
    v7 = (*(v5 + 8))(&v11, v4, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t WebOptinFlowManager.showWebAccessOptInPostPurchase(tag:transaction:purchaseContext:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a3, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    sub_1D777044C(v10, v12 + v11);
    v13 = v3;
    v14 = swift_unknownObjectRetain();
    sub_1D77B0E24(v14, a2, a3, 0, sub_1D77B2C30, v12);
  }

  else
  {

    return sub_1D77B2944(a3, v3, a1);
  }
}

void WebOptinFlowManager.showWebAccessOptIn(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PurchaseContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider), *(v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24));
  v7 = sub_1D78B4874();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 rootViewController];

    if (v9)
    {
      v10 = sub_1D78B60B4();

      v11 = sub_1D77AE6CC();
      [v10 presentViewController:v11 animated:1 completion:0];
    }
  }

  v12 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tagController);
  v13 = sub_1D78B5C44();
  sub_1D773F004(0, &qword_1EE08FE10);
  v14 = sub_1D78B6104();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7770378(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1D777044C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1D77B2C48;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7752E68;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  [v12 fetchTagForTagID:v13 qualityOfService:25 callbackQueue:v14 completionHandler:v18];
  _Block_release(v18);
}

void sub_1D77AEB88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1D77AE6CC();
    sub_1D7770378(a4, &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = a1;
    v14[4] = a2;
    sub_1D777044C(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    aBlock[4] = sub_1D77B4754;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_51;
    v15 = _Block_copy(aBlock);
    v16 = v11;
    swift_unknownObjectRetain();
    v17 = a2;

    [v12 dismissViewControllerAnimated:1 completion:v15];
    _Block_release(v15);
  }
}

void sub_1D77AED68(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v56 - v16;
  if (a2)
  {
    if (qword_1EE08FB98 != -1)
    {
LABEL_37:
      swift_once();
    }

    sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    v68 = a2;
    v19 = a2;
    sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v20 = sub_1D78B5CC4();
    v22 = v21;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1D78B42C4();

    return;
  }

  if (!a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();

    sub_1D78B42C4();
    return;
  }

  v63 = v15;
  v23 = swift_unknownObjectRetain();
  sub_1D77B0A50(v23, a3);
  v24 = [a1 publisherPaidOfferableConfigurations];
  if (!v24)
  {

    swift_unknownObjectRelease();
    return;
  }

  a2 = v24;
  v61 = v8;
  v62 = v14;
  sub_1D773F004(0, &qword_1EE08FC48);
  v25 = sub_1D78B5EB4();

  if (v25 >> 62)
  {
    v26 = sub_1D78B6534();
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_39:
    swift_unknownObjectRelease();

    return;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_39;
  }

LABEL_8:
  v56 = v9;
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  v59 = v11;
  v64 = a3;
  v65 = a1;
  v60 = v17;
  v27 = 0;
  v66 = v25 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1DA703700](v27, v25);
    }

    else
    {
      if (v27 >= *(v66 + 16))
      {
        goto LABEL_36;
      }

      v28 = *(v25 + 8 * v27 + 32);
    }

    v67 = v28;
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if ([a1 publisherPaidWebAccessOptIn])
    {
      if ([v67 allowsPublisherWebsite])
      {
        v30 = [v67 purchaseID];
        if (v30)
        {
          break;
        }
      }
    }

LABEL_10:

    ++v27;
    if (v29 == v26)
    {
      goto LABEL_39;
    }
  }

  v31 = v30;
  v32 = sub_1D78B5C74();
  v34 = v33;

  if (v32 != *v64 || v34 != v64[1])
  {
    a2 = sub_1D78B6724();

    a1 = v65;
    if (a2)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

LABEL_30:

  v35 = [objc_opt_self() mainBundle];
  v36 = [v35 appStoreReceiptURL];

  v37 = v59;
  v38 = v62;
  if (v36)
  {
    sub_1D78B3254();

    v39 = v60;
    (*(v37 + 32))(v60, v38, v63);
    v40 = sub_1D78B32A4();
    v41 = v65;
    v43 = v40;
    v66 = v44;
    sub_1D78B32C4();
    v45 = v37;
    v46 = objc_allocWithZone(MEMORY[0x1E69B5220]);
    v47 = sub_1D78B5C44();
    v48 = sub_1D78B5C44();

    v49 = [v46 initWithProductID:v47 receipt:v48 appleIDAccountDetails:0];

    v50 = v64;
    v51 = v57;
    sub_1D7770378(v64, v57);
    v52 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v53 = swift_allocObject();
    v54 = v58;
    v53[2] = v58;
    v53[3] = v41;
    sub_1D777044C(v51, v53 + v52);
    swift_unknownObjectRetain();
    v55 = v54;
    sub_1D77B0E24(v41, v49, v50, 0, sub_1D77B49D0, v53);

    sub_1D775DD6C(v43, v66);
    swift_unknownObjectRelease();
    (*(v45 + 8))(v39, v63);
  }

  else
  {
    swift_unknownObjectRelease();
    v42 = v67;
  }
}

Swift::Void __swiftcall WebOptinFlowManager.showWebAccessOptIn(for:purchaseTraits:forceOptInAlert:)(Swift::String a1, Swift::OpaquePointer purchaseTraits, Swift::Bool forceOptInAlert)
{
  v4 = v3;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_getObjectType();
  if ([*&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_networkReachability] isNetworkReachable])
  {
    v9 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController];
    v10 = sub_1D78B5C44();
    LODWORD(v9) = [v9 isTagIDPurchased_];

    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider], *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24]);
      v11 = sub_1D78B4874();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 rootViewController];

        if (v13)
        {
          v14 = sub_1D78B60B4();

          v15 = sub_1D77AE6CC();
          [v14 presentViewController:v15 animated:1 completion:0];
        }
      }

      MEMORY[0x1EEE9AC00](v11);
      sub_1D78B41F4();
      sub_1D773F004(0, &qword_1EE08FE10);
      v16 = sub_1D78B6104();
      v17 = swift_allocObject();
      *(v17 + 16) = countAndFlagsBits;
      *(v17 + 24) = object;
      *(v17 + 32) = purchaseTraits;
      *(v17 + 40) = v4;
      *(v17 + 48) = forceOptInAlert;

      v18 = v4;
      sub_1D78B40B4();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      v19 = sub_1D78B4014();
      sub_1D78B40D4();
    }

    else
    {
      v23 = &v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
      v24 = *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
      v25 = *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v27[0] = countAndFlagsBits;
      v27[1] = object;
      v28 = 0;
      v29 = 0;
      v27[2] = purchaseTraits._rawValue;
      v26 = *(v25 + 96);

      v26(v27, v24, v25);
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v20 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
    v21 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v20);
    v28 = &type metadata for NetworkNotReachableAlert;
    v29 = sub_1D77B2CCC();
    sub_1D78B5054();
    swift_allocObject();
    v22 = sub_1D78B5004();
    (*(v21 + 88))(v22, v20, v21);
  }
}

uint64_t sub_1D77AFA14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v68 = a7;
  v69 = a6;
  v62 = a4;
  v63 = a5;
  v61 = a3;
  v67 = a2;
  v8 = MEMORY[0x1E69E6720];
  sub_1D774C018(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v54 - v10;
  sub_1D774C018(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, v8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v54 = &v54 - v12;
  v14 = sub_1D78B33C4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PurchaseContext();
  v19 = (v18 - 8);
  v66 = *(v18 - 8);
  v65 = *(v66 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  v58 = a1[1];
  v59 = v24;
  v25 = [a1[2] purchaseID];
  v26 = sub_1D78B5C74();
  v56 = v27;
  v57 = v26;

  sub_1D78B33B4();
  v55 = sub_1D78B33A4();
  v29 = v28;
  (*(v15 + 8))(v17, v14);
  v30 = type metadata accessor for PostPurchaseDestination();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v31 = sub_1D78B3294();
  v32 = *(*(v31 - 8) + 56);
  v33 = v60;
  v32(v60, 1, 1, v31);
  v34 = v19[18];
  v32(&v23[v34], 1, 1, v31);
  v35 = v56;
  *v23 = v57;
  *(v23 + 1) = v35;
  v36 = v54;
  v37 = v55;
  *(v23 + 2) = 0;
  *(v23 + 3) = v37;
  v38 = v61;
  *(v23 + 4) = v29;
  *(v23 + 5) = v38;
  v39 = v62;
  v40 = v63;
  *(v23 + 6) = v62;
  *(v23 + 28) = 2816;
  *(v23 + 8) = v40;
  v23[58] = 0;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0u;
  v23[120] = 2;
  sub_1D774BED0(v36, &v23[v19[15]]);
  v23[v19[16]] = 0;
  v23[v19[17]] = 0;
  v41 = v39;

  sub_1D77B44C4(v33, &v23[v34]);
  v42 = objc_allocWithZone(MEMORY[0x1E69B5220]);
  v43 = sub_1D78B5C44();
  v44 = sub_1D78B5C44();
  v45 = [v42 initWithProductID:v43 receipt:v44 appleIDAccountDetails:0];

  v70 = v67;
  v71 = v38;
  v72 = v41;
  sub_1D774C018(0, &qword_1EC9CA9A0, sub_1D779DA54, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  sub_1D773F004(0, &qword_1EE08FE10);
  v46 = sub_1D78B6104();
  v47 = v64;
  sub_1D7770378(v23, v64);
  v48 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v49 = v48 + v65;
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  sub_1D777044C(v47, v50 + v48);
  *(v50 + v49) = v68;
  type metadata accessor for WebOptinFlowManager();
  v51 = v45;
  sub_1D78B40B4();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v52 = sub_1D78B4014();
  sub_1D78B40D4();

  sub_1D77B4D4C(v23, type metadata accessor for PurchaseContext);
}

void sub_1D77B0030(uint64_t *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = *a1;
  v14 = sub_1D77AE6CC();
  sub_1D7770378(a4, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v13;
  v16[4] = a3;
  sub_1D777044C(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + v15 + v12) = a5;
  aBlock[4] = sub_1D77B466C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  swift_unknownObjectRetain();
  v19 = a3;

  [v14 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1D77B01FC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a4, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    sub_1D777044C(v13, v15 + v14);
    a1;
    v16 = swift_unknownObjectRetain();
    sub_1D77B0E24(v16, a3, a4, a5 & 1, sub_1D77B5520, v15);
  }

  else
  {

    return sub_1D77B2944(a4, a1, a2);
  }
}

void sub_1D77B0388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  aBlock[0] = a1;
  v10 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  v11 = sub_1D78B5CC4();
  v13 = v12;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1D78B42C4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_1D77AE6CC();

    aBlock[4] = a5;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = a6;
    v17 = _Block_copy(aBlock);

    [v16 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_1D77B05A8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32);
    v2 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router), *(result + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24));
    sub_1D77B4470();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    (*(v1 + 88))();
  }

  return result;
}

id WebOptinFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WebOptinFlowManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D77B0884(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if ([a1 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a3, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    sub_1D777044C(v10, v13 + v12);
    v14 = v11;
    v15 = swift_unknownObjectRetain();
    sub_1D77B0E24(v15, a2, a3, 0, sub_1D77B5520, v13);
  }

  else
  {

    return sub_1D77B2944(a3, v11, a1);
  }
}

void sub_1D77B0A50(void *a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_appConfigurationManager) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v6 = [v5 preSubscribedNotificationsChannelIDs];

  if (v6)
  {
    v7 = sub_1D78B5EB4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = [a1 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  v20[0] = v9;
  v20[1] = v11;
  MEMORY[0x1EEE9AC00](v12);
  v19[2] = v20;
  LOBYTE(v8) = sub_1D781DA18(sub_1D7782F40, v19, v7);

  v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_subscriptionController);
  v20[0] = 0;
  [v13 addSubscriptionToTag:a1 notificationsEnabled:v8 & 1 error:v20];
  v14 = v20[0];
  v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker + 24);
  v16 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker), v15);
  v17 = *(v16 + 16);
  v18 = v14;
  v17(a1, a2, v15, v16);
}

void sub_1D77B0C58(char a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
    v5 = [a3 identifier];
    if (!v5)
    {
      sub_1D78B5C74();
      v9 = sub_1D78B5C44();

      v5 = v9;
    }

    v10 = v5;
    [v4 addToWebAccessOptedInListWithTagID_];
  }

  else
  {
    sub_1D77B0D70(a3, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = 2;
    v11 = 2;
    (*(v8 + 24))(&v12, &v11, a4, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1D77B0D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
  sub_1D7823CE8(a1, v10);
  v6 = v10[96];
  sub_1D77B4A70(v10);
  v7 = (v3 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker);
  if ((v6 & 1) == 0)
  {
    return sub_1D774584C(v7, a2);
  }

  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  return (*(v8 + 32))();
}

void sub_1D77B0E24(void *a1, void *a2, uint64_t a3, char a4, void (*a5)(void), void *a6)
{
  v239 = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for PurchaseContext();
  v241 = *(v12 - 8);
  v13 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D78B5254();
  v237 = *(v15 - 1);
  v238 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v235 = &v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1D78B52A4();
  v234 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v233 = &v218 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SiwaCredentialUploadData();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = a6;
  if (a4)
  {
    v22 = *(a3 + 8);
    v238 = *a3;
    v23 = v6;
    sub_1D77B3334(a2, v6, a1, &aBlock);
    v243 = &type metadata for WebAccessOptInAlert;
    v244 = sub_1D77B4C24();
    v24 = swift_allocObject();
    v242 = v24;
    v25 = v257;
    v24[3] = v256;
    v24[4] = v25;
    v24[5] = v258;
    v26 = v255;
    v24[1] = aBlock;
    v24[2] = v26;
    sub_1D78B5054();
    swift_allocObject();
    sub_1D77B4C78(&aBlock, &v248);
    v27 = sub_1D78B5004();
    sub_1D7770378(a3, &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v241 + 80) + 136) & ~*(v241 + 80);
    v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v257;
    *(v30 + 48) = v256;
    *(v30 + 64) = v31;
    *(v30 + 80) = v258;
    v32 = v255;
    *(v30 + 16) = aBlock;
    *(v30 + 32) = v32;
    *(v30 + 96) = v23;
    *(v30 + 104) = a1;
    v33 = v238;
    *(v30 + 112) = a2;
    *(v30 + 120) = v33;
    *(v30 + 128) = v22;
    sub_1D777044C(v14, v30 + v28);
    v34 = (v30 + v29);
    v36 = v239;
    v35 = v240;
    *v34 = v239;
    v34[1] = v35;

    v37 = v23;
    swift_unknownObjectRetain();
    v38 = a2;

    sub_1D78B5024();

    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v35;

    sub_1D78B5044();

    v40 = &v37[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
LABEL_3:
    v41 = *(v40 + 3);
    v42 = *(v40 + 4);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v42 + 88))(v27, v41, v42);
LABEL_4:

    return;
  }

  v43 = v6;
  v229 = v13;
  v230 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = a1;
  v228 = v19;
  v44 = [a2 appleIDAccountDetails];
  v45 = a2;
  if (v44)
  {
    v46 = v44;
    v47 = [v44 credential];
    v48 = a3;
    v49 = v241;
    if (!v47)
    {
      v238 = v46;
      v86 = [v46 accountSignupError];
      if (v86)
      {
        v87 = v86;
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D78B6094();
        sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1D78BCAB0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        *&v248 = v87;
        sub_1D773C9B8(0, &qword_1EE08F9F0);
        sub_1D78B6504();
        v90 = *(&aBlock + 1);
        v89 = aBlock;
        *(v88 + 56) = MEMORY[0x1E69E6158];
        *(v88 + 64) = sub_1D775ABD4();
        *(v88 + 32) = v89;
        *(v88 + 40) = v90;
        sub_1D78B42C4();

        v49 = v241;
      }

      v91 = v48[1];
      v241 = *v48;
      v92 = v45;
      v93 = v45;
      v94 = v231;
      sub_1D77B3334(v92, v43, v231, &aBlock);
      v243 = &type metadata for WebAccessOptInAlert;
      v244 = sub_1D77B4C24();
      v95 = swift_allocObject();
      v242 = v95;
      v96 = v257;
      v95[3] = v256;
      v95[4] = v96;
      v95[5] = v258;
      v97 = v255;
      v95[1] = aBlock;
      v95[2] = v97;
      sub_1D78B5054();
      swift_allocObject();
      sub_1D77B4C78(&aBlock, &v248);
      v98 = sub_1D78B5004();
      v99 = v48;
      v100 = v230;
      sub_1D7770378(v99, v230);
      v101 = (*(v49 + 80) + 136) & ~*(v49 + 80);
      v102 = (v229 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
      v103 = swift_allocObject();
      v104 = v257;
      *(v103 + 48) = v256;
      *(v103 + 64) = v104;
      *(v103 + 80) = v258;
      v105 = v255;
      *(v103 + 16) = aBlock;
      *(v103 + 32) = v105;
      *(v103 + 96) = v43;
      *(v103 + 104) = v94;
      v106 = v241;
      *(v103 + 112) = v93;
      *(v103 + 120) = v106;
      *(v103 + 128) = v91;
      sub_1D777044C(v100, v103 + v101);
      v107 = (v103 + v102);
      v109 = v239;
      v108 = v240;
      *v107 = v239;
      v107[1] = v108;

      v110 = v43;
      swift_unknownObjectRetain();
      v111 = v93;

      sub_1D78B5024();

      v112 = swift_allocObject();
      *(v112 + 16) = v109;
      *(v112 + 24) = v108;

      sub_1D78B5044();

      v113 = *&v110[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
      v114 = *&v110[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
      __swift_project_boxed_opaque_existential_1(&v110[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v113);
      (*(v114 + 88))(v98, v113, v114);

      goto LABEL_4;
    }

    v50 = v47;
    v51 = [v47 authorizationCode];
    v241 = sub_1D78B5C74();
    ObjectType = v52;

    v53 = [v50 identityToken];
    v54 = sub_1D78B5C74();
    v56 = v55;

    v57 = [v50 userIdentifier];
    v229 = sub_1D78B5C74();
    v227 = v58;

    v59 = [v50 familyName];
    if (v59)
    {
      v60 = v59;
      v61 = sub_1D78B5C74();
      v225 = v62;
      v226 = v61;
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

    v115 = [v50 givenName];
    if (v115)
    {
      v116 = v115;
      v117 = sub_1D78B5C74();
      v223 = v118;
      v224 = v117;
    }

    else
    {
      v223 = 0;
      v224 = 0;
    }

    v230 = v43;
    v119 = [v231 identifier];
    v120 = sub_1D78B5C74();
    v221 = v121;
    v222 = v120;

    v122 = *v48;
    v123 = v48[1];
    v220 = v122;

    v124 = [v45 receipt];
    v219 = sub_1D78B5C74();
    v126 = v125;

    v231 = v50;
    v127 = [v50 email];
    if (v127)
    {
      v128 = v127;
      v129 = sub_1D78B5C74();
      v131 = v130;
    }

    else
    {
      v129 = 0;
      v131 = 0;
    }

    sub_1D78B32E4();
    v132 = ObjectType;
    *v21 = v241;
    v21[1] = v132;
    v21[2] = v54;
    v21[3] = v56;
    v134 = v226;
    v133 = v227;
    v21[4] = v229;
    v21[5] = v133;
    v136 = v224;
    v135 = v225;
    v21[6] = v134;
    v21[7] = v135;
    v138 = v222;
    v137 = v223;
    v21[8] = v136;
    v21[9] = v137;
    v139 = v220;
    v140 = v221;
    v21[10] = v138;
    v21[11] = v140;
    v21[12] = v139;
    v21[13] = v123;
    v21[14] = v219;
    v21[15] = v126;
    v21[16] = v129;
    v21[17] = v131;
    v21[18] = 0;
    __swift_project_boxed_opaque_existential_1(&v230[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_siwaCredentialUploader], *&v230[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_siwaCredentialUploader + 24]);
    v141 = off_1F5273730[0];
    type metadata accessor for SIWACredentialUploader();
    v141(v21);
    sub_1D773F004(0, &qword_1EE08FE10);
    v142 = sub_1D78B6104();
    v143 = swift_allocObject();
    v144 = v240;
    *(v143 + 16) = v239;
    *(v143 + 24) = v144;
    *&v256 = sub_1D77AE3A4;
    *(&v256 + 1) = v143;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v255 = sub_1D775FB6C;
    *(&v255 + 1) = &block_descriptor_95;
    v145 = _Block_copy(&aBlock);

    v146 = v233;
    sub_1D78B5274();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1D77B4D04(&qword_1EE090300, 255, MEMORY[0x1E69E7F60]);
    sub_1D774C018(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D775F4A4();
    v147 = v235;
    v148 = v238;
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v146, v147, v145);
    _Block_release(v145);

    (*(v237 + 8))(v147, v148);
    (*(v234 + 8))(v146, v236);
    sub_1D77B4D4C(v21, type metadata accessor for SiwaCredentialUploadData);
  }

  else
  {
    v238 = a2;
    v63 = a3;
    v64 = *(a3 + 72);
    v65 = *(a3 + 80);
    v66 = *(a3 + 120);
    if (*(a3 + 120))
    {
      v67 = v6;
      v68 = *(a3 + 88);
      v69 = *(a3 + 96);
      v70 = v63[13];
      v71 = v63[14];
      if (v66 == 1)
      {
        v237 = v65;
        v72 = v64;
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        sub_1D78B60A4();
        v73 = sub_1D78B42C4();
        MEMORY[0x1EEE9AC00](v73);
        *(&v218 - 10) = v6;
        *(&v218 - 9) = v63;
        v75 = v237;
        v74 = v238;
        *(&v218 - 8) = v72;
        *(&v218 - 7) = v75;
        *(&v218 - 6) = v68;
        *(&v218 - 5) = v69;
        *(&v218 - 4) = v70;
        *(&v218 - 3) = v71;
        v217 = v74;
        sub_1D78B41F4();
        sub_1D773F004(0, &qword_1EE08FE10);
        v76 = sub_1D78B6104();
        v77 = v63;
        v78 = v230;
        sub_1D7770378(v77, v230);
        v79 = (*(v241 + 80) + 32) & ~*(v241 + 80);
        v80 = (v229 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
        v81 = swift_allocObject();
        v82 = v231;
        *(v81 + 16) = v43;
        *(v81 + 24) = v82;
        sub_1D777044C(v78, v81 + v79);
        v83 = (v81 + v80);
        v84 = v240;
        *v83 = v239;
        v83[1] = v84;

        v85 = v43;
        swift_unknownObjectRetain();
        sub_1D78B40B4();

        goto LABEL_4;
      }

      if (v68 | v65 | v64 | v69 | v70 | v71)
      {
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        sub_1D78B6094();

        sub_1D78B42C4();
      }

      else
      {
        v173 = v238;
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        sub_1D78B60A4();
        sub_1D78B42C4();
        v174 = (v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
        v175 = v231;
        sub_1D7823CE8(v231, &aBlock);
        v176 = v230;
        if ((v259 & 1) == 0)
        {
          sub_1D77B4A70(&aBlock);
          v194 = *v63;
          v236 = v63[1];
          v237 = v194;
          v195 = v173;
          sub_1D77B3334(v173, v6, v175, &v248);
          v246 = &type metadata for WebAccessOptInAlert;
          v247 = sub_1D77B4C24();
          v196 = swift_allocObject();
          v245 = v196;
          v197 = v249;
          v198 = v251;
          v199 = v252;
          v196[3] = v250;
          v196[4] = v198;
          v196[5] = v199;
          v196[1] = v248;
          v196[2] = v197;
          sub_1D78B5054();
          swift_allocObject();
          sub_1D77B4C78(&v248, &v242);
          v27 = sub_1D78B5004();
          sub_1D7770378(v63, v176);
          v200 = (*(v241 + 80) + 136) & ~*(v241 + 80);
          v201 = (v229 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
          v202 = swift_allocObject();
          v203 = v176;
          v204 = v202;
          v205 = v249;
          v206 = v251;
          v207 = v252;
          *(v202 + 48) = v250;
          *(v202 + 64) = v206;
          *(v202 + 80) = v207;
          *(v202 + 16) = v248;
          *(v202 + 32) = v205;
          *(v202 + 96) = v67;
          *(v202 + 104) = v175;
          v209 = v236;
          v208 = v237;
          *(v202 + 112) = v195;
          *(v202 + 120) = v208;
          *(v202 + 128) = v209;
          sub_1D777044C(v203, v202 + v200);
          v210 = (v204 + v201);
          v212 = v239;
          v211 = v240;
          *v210 = v239;
          v210[1] = v211;

          v213 = v67;
          swift_unknownObjectRetain();
          v214 = v195;

          sub_1D78B5024();

          v215 = swift_allocObject();
          *(v215 + 16) = v212;
          *(v215 + 24) = v211;

          sub_1D78B5044();

          v40 = &v213[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
          goto LABEL_3;
        }

        sub_1D77B4A70(&aBlock);
        __swift_project_boxed_opaque_existential_1(v174, v174[3]);
        sub_1D7823CE8(v175, &v248);
        if (v253)
        {
          v236 = *(&v248 + 1);
          v237 = v248;

          sub_1D77B4A70(&v248);
          v177 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D7770378(v63, v176);
          v178 = v176;
          v179 = (*(v241 + 80) + 56) & ~*(v241 + 80);
          v180 = swift_allocObject();
          v181 = v239;
          v182 = v240;
          *(v180 + 2) = v177;
          *(v180 + 3) = v181;
          *(v180 + 4) = v182;
          *(v180 + 5) = v175;
          *(v180 + 6) = v173;
          sub_1D777044C(v178, v180 + v179);
          v183 = (v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
          v184 = *(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
          *v183 = sub_1D77B4BB8;
          v183[1] = v180;

          swift_unknownObjectRetain();
          v185 = v173;

          sub_1D7744A7C(v184);

          [*(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postActionHandlerManager) addPostActionHandler:v6 forActionType:*MEMORY[0x1E69CE0E0]];
          v186 = *(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24);
          v187 = *(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32);
          __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router), v186);
          v188 = [v175 identifier];
          v189 = sub_1D78B5C74();
          v191 = v190;

          v193 = sub_1D77B4D04(&qword_1EC9CA0A0, v192, type metadata accessor for WebOptinFlowManager);
          (*(v187 + 16))(v237, v236, v189, v191, 0, 0, v6, v193, v186, v187);
        }

        else
        {
          sub_1D77B4A70(&v248);
          v216 = v239;
          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          sub_1D78B6094();
          sub_1D78B42C4();
          v216(0);
        }
      }
    }

    else
    {
      v236 = *(a3 + 72);
      v237 = v65;
      v149 = v6;
      if (qword_1EC9C8448 != -1)
      {
        swift_once();
      }

      sub_1D78B60A4();
      sub_1D78B42C4();
      v150 = swift_allocObject();
      v151 = v240;
      *(v150 + 16) = v239;
      *(v150 + 24) = v151;
      v239 = v150;
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider), *(v6 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24));

      v152 = sub_1D78B4874();
      v153 = v238;
      if (v152)
      {
        v154 = v152;
        v155 = [v152 rootViewController];

        if (v155)
        {
          v156 = sub_1D78B60B4();

          v157 = sub_1D77AE6CC();
          [v156 presentViewController:v157 animated:1 completion:0];
        }
      }

      v158 = [v153 receipt];
      v159 = sub_1D78B5C74();
      v161 = v160;

      v162 = HIBYTE(v161) & 0xF;
      if ((v161 & 0x2000000000000000) == 0)
      {
        v162 = v159 & 0xFFFFFFFFFFFFLL;
      }

      if (!v162)
      {
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D78B6094();
        sub_1D78B42C4();
      }

      v240 = *(v149 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
      v163 = [v231 identifier];
      if (!v163)
      {
        sub_1D78B5C74();
        v163 = sub_1D78B5C44();
      }

      v235 = sub_1D78B5C44();
      v164 = sub_1D78B5C44();
      v165 = [v153 receipt];
      if (!v165)
      {
        sub_1D78B5C74();
        v165 = sub_1D78B5C44();
      }

      v166 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v167 = v230;
      sub_1D7770378(v63, v230);
      v168 = (*(v241 + 80) + 48) & ~*(v241 + 80);
      v169 = swift_allocObject();
      v169[2] = v166;
      v169[3] = sub_1D77B54F8;
      v170 = v231;
      v169[4] = v239;
      v169[5] = v170;
      sub_1D777044C(v167, v169 + v168);
      *&v256 = sub_1D77B4BB4;
      *(&v256 + 1) = v169;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v255 = sub_1D77B4288;
      *(&v255 + 1) = &block_descriptor_67;
      v171 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v172 = v235;
      [v240 submitWebAccessWithTagID:v163 purchaseID:v235 emailAddress:v164 purchaseReceipt:v165 serialCompletion:0 completion:v171];
      _Block_release(v171);
    }
  }
}

void sub_1D77B25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tagController);

  v12 = sub_1D78B5C44();
  sub_1D773F004(0, &qword_1EE08FE10);
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_1D775C1FC;
  v14[5] = v10;
  v16[4] = sub_1D77B46F4;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D7752E68;
  v16[3] = &block_descriptor_45;
  v15 = _Block_copy(v16);

  [v11 fetchTagForTagID:v12 qualityOfService:25 callbackQueue:v13 completionHandler:v15];
  _Block_release(v15);
}

void sub_1D77B2748(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a5(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCAB0;
    v10 = a2;
    sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v11 = sub_1D78B5CC4();
    v13 = v12;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D775ABD4();
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    sub_1D78B42C4();

    sub_1D77B4700();
    v14 = swift_allocError();
    *v15 = 2;
    a3();
  }
}

uint64_t sub_1D77B2944(uint64_t a1, uint64_t a2, void *a3)
{
  if (PurchaseConversionLocation.rawValue.getter() == 0x747241664F706F74 && v6 == 0xEC000000656C6369)
  {
    goto LABEL_8;
  }

  v8 = sub_1D78B6724();

  if (v8)
  {
LABEL_9:
    v10 = (a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router);
    v11 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24);
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v13 = [a3 identifier];
    v14 = sub_1D78B5C74();
    v16 = v15;

    (*(v12 + 104))(v14, v16, 0, v11, v12);
  }

  if (PurchaseConversionLocation.rawValue.getter() == 0xD000000000000013 && 0x80000001D78CE310 == v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  v18 = sub_1D78B6724();

  if (v18)
  {
    goto LABEL_9;
  }

  v19 = *(a1 + 64);
  result = sub_1D7773164(v19);
  if (v20)
  {

    sub_1D7773234(v19);
    if (v21)
    {
      goto LABEL_9;
    }

    result = sub_1D7773234(v19);
    if (v22)
    {
      __break(1u);
      return result;
    }

    if (result == 1)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1D77B2B1C(char a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a1)
  {
    v7 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
    v8 = [a3 identifier];
    if (!v8)
    {
      sub_1D78B5C74();
      v8 = sub_1D78B5C44();
    }

    [v7 addToWebAccessOptedInListWithTagID_];
  }

  else
  {
    sub_1D77B0D70(a3, v14);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = 2;
    v12 = 2;
    (*(v10 + 24))(&v13, &v12, a4, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return sub_1D77B2944(a4, a2, a3);
}

void sub_1D77B2C48(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1D77AEB88(a1, a2, v6, v7);
}

unint64_t sub_1D77B2CCC()
{
  result = qword_1EC9CA018;
  if (!qword_1EC9CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA018);
  }

  return result;
}

uint64_t sub_1D77B2D20()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_receiptRefresher), *(*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_receiptRefresher + 24));
  v1 = off_1F526C538[0];
  type metadata accessor for ReceiptRefresher();
  return v1();
}

uint64_t sub_1D77B2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_hideMyEmailService), *(a1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_hideMyEmailService + 24));
  v10 = *(a2 + 40);
  v15 = *(a2 + 48);
  v11 = [a9 receipt];
  sub_1D78B5C74();

  v12 = off_1F52703F8[0];
  type metadata accessor for HideMyEmailService();
  v13 = v12(v10, v15);

  return v13;
}

uint64_t sub_1D77B2F3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  sub_1D77B0D70(a4, v15);
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v14 = v11;
  v13 = 1;
  (*(v10 + 24))(&v14, &v13, a5, v9, v10);
  a6(v8);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1D77B3008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void *a4, void *a5, uint64_t *a6)
{
  v11 = type metadata accessor for PurchaseContext();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v15 = Strong;
  v16 = a6[1];
  v35 = *a6;
  v34 = v16;
  sub_1D77B3334(a5, Strong, a4, &v40);
  v38 = &type metadata for WebAccessOptInAlert;
  v39 = sub_1D77B4C24();
  v17 = swift_allocObject();
  v37 = v17;
  v18 = v43;
  v17[3] = v42;
  v17[4] = v18;
  v17[5] = v44;
  v19 = v41;
  v17[1] = v40;
  v17[2] = v19;
  sub_1D78B5054();
  swift_allocObject();
  sub_1D77B4C78(&v40, v36);
  v33 = sub_1D78B5004();
  sub_1D7770378(a6, &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v12 + 80) + 136) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = v43;
  *(v21 + 48) = v42;
  *(v21 + 64) = v22;
  *(v21 + 80) = v44;
  v23 = v41;
  *(v21 + 16) = v40;
  *(v21 + 32) = v23;
  *(v21 + 96) = v15;
  *(v21 + 104) = a4;
  v24 = v35;
  *(v21 + 112) = a5;
  *(v21 + 120) = v24;
  *(v21 + 128) = v34;
  sub_1D777044C(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v25 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a2;
  v25[1] = a3;
  v26 = v15;
  swift_unknownObjectRetain();
  v27 = a5;

  v28 = v33;
  sub_1D78B5024();

  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;

  sub_1D78B5044();

  v30 = *&v26[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
  v31 = *&v26[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
  __swift_project_boxed_opaque_existential_1(&v26[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v30);
  (*(v31 + 88))(v28, v30, v31);
}

void sub_1D77B3334(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 appleIDAccountDetails];
  v8 = &v20 + 8;
  if (v7)
  {

    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
    sub_1D7824708(a3, v18);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
    sub_1D7823CE8(a3, v18);
  }

  v26 = v19;
  v24 = v18[4];
  v25 = v18[5];
  v20 = v18[0];
  v21 = v18[1];
  v22 = v18[2];
  v23 = v18[3];
  if (v19)
  {
    sub_1D77B4C78(&v21, v17);
    sub_1D77B4A70(v18);
    v9 = *(&v25 + 1);
    v10 = v25;
    v11 = *(&v24 + 1);
    v12 = v24;
    v14 = v22;
    v13 = v23;
    v8 = &v21 + 8;
    v15 = v21;
  }

  else
  {
    v9 = *(&v24 + 1);
    v10 = v24;
    v11 = *(&v23 + 1);
    v12 = v23;
    v14 = v21;
    v13 = v22;
    v15 = v20;
  }

  v16 = *v8;
  *a4 = v15;
  *(a4 + 8) = v16;
  *(a4 + 16) = v14;
  *(a4 + 32) = v13;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  *(a4 + 64) = v10;
  *(a4 + 72) = v9;
}

void sub_1D77B3478(void *a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a6;
  v59 = a7;
  v61 = a4;
  v15 = type metadata accessor for PurchaseContext();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77B3A7C(a2, a1);
  if (!v18)
  {
    goto LABEL_18;
  }

  v57 = a8;
  v19 = sub_1D78B5C44();
  v20 = [v19 ea_isLegalEmailAddress];

  if (!v20)
  {

    a8 = v57;
LABEL_18:
    v63 = &type metadata for InvalidEmailAddressAlert;
    v64 = sub_1D77B4DAC();
    sub_1D78B5054();
    swift_allocObject();
    v41 = sub_1D78B5004();
    sub_1D7770378(a8, &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = (*(v60 + 80) + 56) & ~*(v60 + 80);
    v43 = (v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v61;
    v44[2] = a3;
    v44[3] = v45;
    v46 = v58;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = v59;
    sub_1D777044C(v17, v44 + v42);
    v47 = (v44 + v43);
    *v47 = a9;
    v47[1] = a10;

    swift_unknownObjectRetain();
    v48 = a3;
    v49 = a5;

    sub_1D78B5024();

    v50 = swift_allocObject();
    *(v50 + 16) = a9;
    *(v50 + 24) = a10;

    sub_1D78B5044();

    v51 = &v48[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
    v52 = *&v48[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
    v53 = *(v51 + 4);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v53 + 88))(v41, v52, v53);

    return;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a9;
  *(v21 + 24) = a10;
  v55 = v21;
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider], *&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24]);

  v22 = sub_1D78B4874();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 rootViewController];

    if (v24)
    {
      v25 = sub_1D78B60B4();

      v26 = sub_1D77AE6CC();
      [v25 presentViewController:v26 animated:1 completion:0];
    }
  }

  v27 = [a5 receipt];
  v28 = sub_1D78B5C74();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
  }

  v56 = *&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController];
  v32 = [v61 identifier];
  if (!v32)
  {
    sub_1D78B5C74();
    v32 = sub_1D78B5C44();
  }

  v33 = sub_1D78B5C44();
  v34 = sub_1D78B5C44();

  v35 = [a5 receipt];
  if (!v35)
  {
    sub_1D78B5C74();
    v35 = sub_1D78B5C44();
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7770378(v57, &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = sub_1D77B54F8;
  v39 = v61;
  v38[4] = v55;
  v38[5] = v39;
  sub_1D777044C(v17, v38 + v37);
  v64 = sub_1D77B5528;
  v65 = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D77B4288;
  v63 = &block_descriptor_121;
  v40 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v56 submitWebAccessWithTagID:v32 purchaseID:v33 emailAddress:v34 purchaseReceipt:v35 serialCompletion:0 completion:v40];
  _Block_release(v40);
}

id sub_1D77B3A7C(uint64_t a1, id a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);

    v4 = sub_1D78B5C44();
    v5 = [v4 ea_isLegalEmailAddress];

    if (v5)
    {
      return v3;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v3 = [a2 textFields];
  if (!v3)
  {
    return v3;
  }

  sub_1D773F004(0, &qword_1EC9CA0C0);
  v6 = sub_1D78B5EB4();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:

    return 0;
  }

  result = sub_1D78B6534();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA703700](0, v6);
LABEL_11:
    v9 = v8;

    v10 = [v9 text];

    if (v10)
    {
      v3 = sub_1D78B5C74();

      return v3;
    }

    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77B3BF8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a8;
  v35 = a7;
  v37 = a6;
  v36 = a5;
  v12 = type metadata accessor for PurchaseContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1D77B3334(a4, a2, a3, &v43);
  v41 = &type metadata for WebAccessOptInAlert;
  v42 = sub_1D77B4C24();
  v15 = swift_allocObject();
  v40 = v15;
  v16 = v44;
  v17 = v46;
  v18 = v47;
  v15[3] = v45;
  v15[4] = v17;
  v15[5] = v18;
  v15[1] = v43;
  v15[2] = v16;
  sub_1D78B5054();
  swift_allocObject();
  sub_1D77B4C78(&v43, v39);
  v19 = sub_1D78B5004();
  sub_1D7770378(v35, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v13 + 80) + 136) & ~*(v13 + 80);
  v21 = swift_allocObject();
  v22 = v44;
  v23 = v46;
  v24 = v47;
  *(v21 + 48) = v45;
  *(v21 + 64) = v23;
  *(v21 + 80) = v24;
  *(v21 + 16) = v43;
  *(v21 + 32) = v22;
  *(v21 + 96) = a2;
  *(v21 + 104) = a3;
  v25 = v36;
  *(v21 + 112) = a4;
  *(v21 + 120) = v25;
  *(v21 + 128) = v37;
  sub_1D777044C(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v26 = (v21 + ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v38;
  *v26 = v38;
  v26[1] = a9;
  v28 = a2;
  swift_unknownObjectRetain();
  v29 = a4;

  sub_1D78B5024();

  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = a9;

  sub_1D78B5044();

  v31 = &v28[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
  v32 = *&v28[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
  v33 = *(v31 + 4);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v33 + 88))(v19, v32, v33);
}

uint64_t sub_1D77B3EE4(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4();
  }

  v14 = Strong;
  sub_1D77B0D70(a6, v32);
  if (a2)
  {
    v15 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v27 = 0xE000000000000000;
    v25 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D775ABD4();
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_1D78B42C4();

    v17 = v33;
    v18 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    LOBYTE(aBlock) = 2;
    LOBYTE(v25) = 0;
    (*(v18 + 24))(&aBlock, &v25, a7, v17, v18);
  }

  else if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v20 = v33;
    v21 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    LOBYTE(aBlock) = 1;
    LOBYTE(v25) = 0;
    (*(v21 + 24))(&aBlock, &v25, a7, v20, v21);
  }

  v22 = sub_1D77AE6CC();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v30 = sub_1D7782BC8;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D775FB6C;
  v29 = &block_descriptor_145;
  v24 = _Block_copy(&aBlock);

  [v22 dismissViewControllerAnimated:1 completion:v24];

  _Block_release(v24);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

void sub_1D77B4288(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void WebOptinFlowManager.handledAction(_:state:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  if (v1)
  {

    v1(v2);

    sub_1D7744A7C(v1);
  }
}

uint64_t WebOptinFlowManager.hostViewControllerDidCompleteUserInitiatedDismissal(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  *v1 = 0;
  v1[1] = 0;
  return sub_1D7744A7C(v2);
}

uint64_t sub_1D77B4404()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  *v1 = 0;
  v1[1] = 0;
  return sub_1D7744A7C(v2);
}

unint64_t sub_1D77B4470()
{
  result = qword_1EC9CA080;
  if (!qword_1EC9CA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA080);
  }

  return result;
}

uint64_t sub_1D77B44C4(uint64_t a1, uint64_t a2)
{
  sub_1D774C018(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D77B4564(uint64_t *a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  sub_1D77B0030(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1D77B466C()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));
  v6 = v0[4];

  return sub_1D77B01FC(v2, v3, v6, v4, v5);
}

unint64_t sub_1D77B4700()
{
  result = qword_1EC9CA090;
  if (!qword_1EC9CA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA090);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77B49E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PurchaseContext() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1D77B4AFC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_1D77B2F3C(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D77B4BB8()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = (v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return sub_1D77B3008(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1D77B4C24()
{
  result = qword_1EC9CA0A8;
  if (!qword_1EC9CA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0A8);
  }

  return result;
}

uint64_t sub_1D77B4D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D77B4D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D77B4DAC()
{
  result = qword_1EC9CA0B8;
  if (!qword_1EC9CA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0B8);
  }

  return result;
}

uint64_t sub_1D77B4E00(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseContext() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D77B3BF8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *v5, v5[1]);
}

uint64_t objectdestroy_63Tm()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77B50C8(char a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D77B3EE4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_76Tm()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_1D77B53B4(void *a1)
{
  v3 = *(type metadata accessor for PurchaseContext() - 8);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D77B3478(a1, v1 + 16, *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), v1 + v4, *v5, v5[1]);
}

unint64_t sub_1D77B5478()
{
  result = qword_1EC9CA0C8;
  if (!qword_1EC9CA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0C8);
  }

  return result;
}

void sub_1D77B552C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DefaultSubscriptionFeatureAvailability;
  *(a1 + 32) = &off_1F5274018;
  *a1 = 0;
  *(a1 + 4) = 0;
}

void sub_1D77B554C(void *a1@<X8>)
{
  a1[3] = &type metadata for DefaultPaidBundleViaOfferFeatureAvailability;
  a1[4] = &off_1F5272708;
  *a1 = 0;
}

id sub_1D77B5568()
{
  v0 = objc_allocWithZone(NPFamilySharingSetupPresenter);

  return [v0 init];
}

uint64_t sub_1D77B55A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C70);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for ConfigurableOffersDebugGroupProvider();
    v5 = swift_allocObject();
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F526A990;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77B5674@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0);
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE091458);
    result = sub_1D78B39F4();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SIWAPurchaseConfigProvider();
      v19[3] = v11;
      v19[4] = &off_1F526E9D8;
      v19[0] = v10;
      v12 = type metadata accessor for HideMyEmailSignupConfigProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_1F526E9D8;
      v13[2] = v5;
      v13[3] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_1F5267FE8;
      *a2 = v13;
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

void *sub_1D77B58F4()
{
  type metadata accessor for InAppMessageCoordinator();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(type metadata accessor for InAppMessageContextProvider()) init];
  v0[4] = 0xD00000000000001ALL;
  v0[5] = 0x80000001D78D21D0;
  return v0;
}

uint64_t sub_1D77B59EC(void *a1, char a2)
{
  v4 = [a1 sourceChannel];
  if (v4)
  {
    v5 = [v4 identifier];
    swift_unknownObjectRelease();
    v6 = sub_1D78B5C74();
    v8 = v7;

    if ([a1 isExplicitContent])
    {

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      v10 = [a1 identifier];
      v11 = sub_1D78B5C74();
      v13 = v12;

      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D775ABD4();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      sub_1D78B60A4();
      sub_1D78B42C4();
      v14 = 0;
    }

    else
    {
      v14 = sub_1D77B5CD8(v6, v8, a2 & 1);

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D78BCB50;
      v16 = [a1 identifier];
      v17 = sub_1D78B5C74();
      v19 = v18;

      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D775ABD4();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      v20 = MEMORY[0x1E69E63A8];
      *(v15 + 96) = MEMORY[0x1E69E6370];
      *(v15 + 104) = v20;
      *(v15 + 72) = v14 & 1;
      sub_1D78B60A4();
      sub_1D78B42C4();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D77B5CD8(uint64_t a1, uint64_t a2, int a3)
{
  v25[0] = *v3;
  sub_1D775B688(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = type metadata accessor for PaywallShownEntry();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v3 + 32) appConfiguration];
  if ((sub_1D77B6260(a3) & 1) == 0)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    swift_unknownObjectRelease();
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_1D782A528(a1, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D77B6A60(v9);
    sub_1D77B6810(a1, a2, a3 & 1);
    swift_unknownObjectRelease();
    return 1;
  }

  sub_1D77B6AEC(v9, v13);
  v16 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v17 = sub_1D78B3324();
  [v16 timeIntervalSinceDate_];
  v19 = v18;

  if (qword_1EE08F320 != -1)
  {
    swift_once();
  }

  sub_1D77B6BAC(qword_1EE08E998, v20, type metadata accessor for AlacarteArticleSoftPaywallMeter);
  sub_1D78B3574();
  v21 = v25[1];
  if (!NFInternalBuild() || v21 == -1)
  {
    v21 = [v14 subscriptionsPlacardPublisherFrequencyInSeconds];
  }

  if (v19 >= 2.0 && v19 <= v21)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D78BCB50;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D775ABD4();
    v23 = MEMORY[0x1E69E63B0];
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;
    v24 = MEMORY[0x1E69E6438];
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 72) = v21;

    sub_1D78B60A4();
    sub_1D78B42C4();
    swift_unknownObjectRelease();

    sub_1D77B6B50(v13);
    return 0;
  }

  sub_1D77B6810(a1, a2, a3 & 1);
  swift_unknownObjectRelease();
  sub_1D77B6B50(v13);
  return 1;
}

uint64_t sub_1D77B61A0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77B6260(int a1)
{
  v2 = v1;
  LODWORD(v36) = a1;
  v3 = sub_1D78B3394();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v33 - v8;
  v10 = [*(v1 + 32) appConfiguration];
  v11 = *(v1 + 16);
  sub_1D77B6BAC(qword_1EE08E998, v12, type metadata accessor for AlacarteArticleSoftPaywallMeter);
  v33[2] = v11;
  sub_1D78B3574();
  v35 = v38;
  v33[1] = *(v2 + 24);
  sub_1D78B3574();
  sub_1D78B32E4();
  sub_1D77B6BAC(&qword_1EE08F468, 255, MEMORY[0x1E6969530]);
  LOBYTE(v11) = sub_1D78B5C34();
  v13 = *(v4 + 8);
  v13(v7, v3);
  if (v11)
  {
    v13(v9, v3);
LABEL_19:
    swift_unknownObjectRelease();
    return 1;
  }

  v34 = v13;
  v37 = v10;
  v14 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v15 = sub_1D78B3324();
  [v14 timeIntervalSinceDate_];
  v17 = v16;

  if (qword_1EE08F330 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v18 = v38;
  if (!NFInternalBuild() || v18 == -1)
  {
    v18 = [v37 subscriptionsPlacardGlobalMaximumPerDay];
  }

  if (qword_1EE08F348 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v19 = v38;
  if (!NFInternalBuild() || v19 == -1)
  {
    [objc_opt_self() fc_timeIntervalOneDay];
  }

  else
  {
    v20 = v19;
  }

  v21 = v34;
  if (v20 < v17)
  {
    if ((v36 & 1) == 0)
    {
      sub_1D78B32E4();
      sub_1D77B6BAC(&qword_1EE08E990, v22, type metadata accessor for AlacarteArticleSoftPaywallMeter);
      sub_1D78B3724();
      v21(v7, v3);
      v38 = 0;
      sub_1D78B3724();
      swift_unknownObjectRelease();
      v21(v9, v3);
      return 1;
    }

    goto LABEL_18;
  }

  v23 = v35;
  if (v35 < v18)
  {
LABEL_18:
    v34(v9, v3);
    goto LABEL_19;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v36 = qword_1EE09C268;
  sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D78BCB50;
  v38 = v23;
  v26 = sub_1D78B66E4();
  v28 = v27;
  v29 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v30 = sub_1D775ABD4();
  *(v25 + 64) = v30;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v38 = v18;
  v31 = sub_1D78B66E4();
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  *(v25 + 72) = v31;
  *(v25 + 80) = v32;
  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_unknownObjectRelease();

  v34(v9, v3);
  return 0;
}

uint64_t sub_1D77B6810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PaywallShownEntry();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B3394();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    sub_1D78B3384();
    v18 = sub_1D77B6BAC(&qword_1EE08E990, v16, type metadata accessor for AlacarteArticleSoftPaywallMeter);
    sub_1D78B3724();
    (*(v12 + 8))(v15, v11);
    sub_1D78B3384();
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    sub_1D782A6B0(a1, a2, v10);
    sub_1D77B6BAC(qword_1EE08E998, v17, type metadata accessor for AlacarteArticleSoftPaywallMeter);
    result = sub_1D78B3574();
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      ++v19;
      sub_1D78B3724();
      return sub_1D77B6B50(v10);
    }
  }

  return result;
}

uint64_t sub_1D77B6A60(uint64_t a1)
{
  sub_1D775B688(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B6AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallShownEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77B6B50(uint64_t a1)
{
  v2 = type metadata accessor for PaywallShownEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B6BAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16NewsSubscription0B4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D77B6CA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77B6CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D77B6D30(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription23ConfigurableOfferConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription18InAppPurchaseErrorO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D77B6DC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 168))
  {
    return (*a1 + 2147483635);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 12;
  if (v4 >= 0xE)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77B6E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 12;
    }
  }

  return result;
}

double sub_1D77B6E84(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D77B6EF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  sub_1D77B9AA8(v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77B6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v5 + 96))
  {
    sub_1D7781E64(&v71);
    sub_1D7781E98();
    swift_allocError();
    v18 = v72;
    v17 = v73;
    *v19 = v71;
    *(v19 + 16) = v18;
    *(v19 + 32) = v17;
    v20 = v77;
    v22 = v74;
    v21 = v75;
    *(v19 + 80) = v76;
    *(v19 + 96) = v20;
    *(v19 + 48) = v22;
    *(v19 + 64) = v21;
    v24 = v79;
    v23 = v80;
    v25 = v78;
    *(v19 + 160) = v81;
    *(v19 + 128) = v24;
    *(v19 + 144) = v23;
    *(v19 + 112) = v25;
    sub_1D77B899C(0, &qword_1EC9CA0F0, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v66 = a4;
  v69 = *a1;
  v27 = *(a1 + 8);
  sub_1D77B899C(0, &qword_1EC9CA0E8, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6568]);
  swift_allocObject();
  v28 = sub_1D78B3B74();
  *(v5 + 96) = v28;
  v70 = v28;

  v68 = a2;
  sub_1D7770378(a2, v16);
  v67 = v11;
  v29 = *(v11 + 56);
  v29(v16, 0, 1, v10);
  v30 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v16, v5 + v30);
  v31 = swift_endAccess();
  if (v27 > 2)
  {
    if (v27 != 3)
    {
      sub_1D78B41F4();
      v57 = v68;
      sub_1D7770378(v68, &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v58 = (*(v67 + 80) + 24) & ~*(v67 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = v5;
      sub_1D777044C(&v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v59 + v58);

      v60 = sub_1D78B4014();
      sub_1D773F004(0, &qword_1EE08FF20);
      sub_1D78B4084();

      sub_1D773F004(0, &qword_1EE08FE10);
      v61 = sub_1D78B6104();
      v62 = swift_allocObject();
      swift_weakInit();
      sub_1D7770378(v57, &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      sub_1D777044C(v13, v63 + v58);
      sub_1D78B4094();

      v37 = sub_1D78B6104();

      goto LABEL_11;
    }
  }

  else if (v27 >= 2)
  {
    MEMORY[0x1EEE9AC00](v31);
    v32 = v68;
    *&v64[-32] = v5;
    *&v64[-24] = v32;
    *&v64[-16] = v69;
    sub_1D773F004(0, &qword_1EE08FF20);
    sub_1D78B41F4();
    sub_1D773F004(0, &qword_1EE08FE10);
    v33 = sub_1D78B6104();
    v34 = swift_allocObject();
    swift_weakInit();
    sub_1D7770378(v32, &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v35 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    sub_1D777044C(v13, v36 + v35);
    sub_1D78B4094();

    v37 = sub_1D78B6104();

LABEL_11:
    sub_1D78B40D4();

    goto LABEL_12;
  }

  v38 = v69;
  if (!v69)
  {
    *(v5 + 96) = 0;

    v29(v16, 1, 1, v10);
    swift_beginAccess();
    sub_1D7781D38(v16, v5 + v30);
    swift_endAccess();
    sub_1D77B8968(&v71);
    sub_1D7781E98();
    swift_allocError();
    v48 = v72;
    v47 = v73;
    *v49 = v71;
    *(v49 + 16) = v48;
    *(v49 + 32) = v47;
    v50 = v77;
    v52 = v74;
    v51 = v75;
    *(v49 + 80) = v76;
    *(v49 + 96) = v50;
    *(v49 + 48) = v52;
    *(v49 + 64) = v51;
    v54 = v79;
    v53 = v80;
    v55 = v78;
    *(v49 + 160) = v81;
    *(v49 + 128) = v54;
    *(v49 + 144) = v53;
    *(v49 + 112) = v55;
    sub_1D77B899C(0, &qword_1EC9CA0F0, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v56 = sub_1D78B40F4();
LABEL_14:

    return v56;
  }

  MEMORY[0x1EEE9AC00](v31);
  *&v64[-48] = v5;
  *&v64[-40] = v38;
  v39 = v68;
  *&v64[-32] = v68;
  *&v64[-24] = a3;
  *&v64[-16] = v66;
  v65 = v40;
  sub_1D7782048(v38, v40);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v41 = sub_1D78B6104();
  sub_1D7770378(v39, &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v42 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v43 = swift_allocObject();
  sub_1D777044C(v13, v43 + v42);
  *(v43 + ((v12 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1D77B8A88;
  *(v44 + 24) = v43;

  sub_1D78B4094();

  v45 = sub_1D78B6104();

  sub_1D78B40D4();

  sub_1D7781F70(v38, v65);
LABEL_12:
  result = MEMORY[0x1DA700DF0](v46);
  if (result)
  {
    v56 = result;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77B78E4()
{
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77B7944(_BYTE *a1)
{
  if (*a1)
  {
    sub_1D7782764(v11);
    sub_1D7781E98();
    swift_allocError();
    v1 = v11[2];
    v2 = v11[1];
    *v3 = v11[0];
    *(v3 + 16) = v2;
    *(v3 + 32) = v1;
    v4 = v11[6];
    v5 = v11[4];
    v6 = v11[3];
    *(v3 + 80) = v11[5];
    *(v3 + 96) = v4;
    *(v3 + 48) = v6;
    *(v3 + 64) = v5;
    v7 = v11[9];
    v8 = v11[8];
    v9 = v11[7];
    *(v3 + 160) = v12;
    *(v3 + 128) = v8;
    *(v3 + 144) = v7;
    *(v3 + 112) = v9;
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D77B899C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4174();
  }
}

void sub_1D77B7A8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v7 + 72))(v5, a3, ObjectType, v7);
    if (!v3)
    {
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v9 = sub_1D78B31B4();
    v10 = [v9 code];

    if (*MEMORY[0x1E69B5058] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D7781E64(v22);
LABEL_10:
        sub_1D7781E98();
        v11 = swift_allocError();
        v12 = v22[2];
        v13 = v22[1];
        *v14 = v22[0];
        *(v14 + 16) = v13;
        *(v14 + 32) = v12;
        v15 = v22[6];
        v16 = v22[4];
        v17 = v22[3];
        *(v14 + 80) = v22[5];
        *(v14 + 96) = v15;
        *(v14 + 48) = v17;
        *(v14 + 64) = v16;
        v18 = v22[9];
        v19 = v22[8];
        v20 = v22[7];
        *(v14 + 160) = v23;
        *(v14 + 128) = v19;
        *(v14 + 144) = v18;
        *(v14 + 112) = v20;
        sub_1D77B7CC8();

        v21 = v11;
LABEL_13:

        return;
      }
    }

    else if (*MEMORY[0x1E69B50C8] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B8EAC(v22);
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B7CC8();
        v21 = v3;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1D77B7CC8()
{
  v1 = v0;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 96))
  {

    sub_1D78B3B44();
  }

  *(v0 + 96) = 0;

  v5 = type metadata accessor for PurchaseContext();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v4, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_1D77B7DE8()
{
  sub_1D77B899C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77B7E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v7 + 64))(v5, a3, ObjectType, v7);
    if (!v3)
    {
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v9 = sub_1D78B31B4();
    v10 = [v9 code];

    if (*MEMORY[0x1E69B5058] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D7781E64(v22);
LABEL_10:
        sub_1D7781E98();
        v11 = swift_allocError();
        v12 = v22[2];
        v13 = v22[1];
        *v14 = v22[0];
        *(v14 + 16) = v13;
        *(v14 + 32) = v12;
        v15 = v22[6];
        v16 = v22[4];
        v17 = v22[3];
        *(v14 + 80) = v22[5];
        *(v14 + 96) = v15;
        *(v14 + 48) = v17;
        *(v14 + 64) = v16;
        v18 = v22[9];
        v19 = v22[8];
        v20 = v22[7];
        *(v14 + 160) = v23;
        *(v14 + 128) = v19;
        *(v14 + 144) = v18;
        *(v14 + 112) = v20;
        sub_1D77B7CC8();

        v21 = v11;
LABEL_13:

        return;
      }
    }

    else if (*MEMORY[0x1E69B50C8] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B8EAC(v22);
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B7CC8();
        v21 = v3;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1D77B80B8(uint64_t a1, uint64_t a2)
{
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 96))
  {

    sub_1D78B3B44();
  }

  *(a2 + 96) = 0;

  v6 = type metadata accessor for PurchaseContext();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v5, a2 + v7);
  return swift_endAccess();
}

void sub_1D77B81D8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5220]);
  v1 = sub_1D78B5C44();
  v2 = sub_1D78B5C44();
  v3 = [v0 initWithProductID:v1 receipt:v2 appleIDAccountDetails:0];

  sub_1D77B8280(v3);
}

uint64_t sub_1D77B8280(uint64_t a1)
{
  v2 = v1;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 96))
  {
    v10[1] = a1;

    sub_1D78B3B64();
  }

  *(v2 + 96) = 0;

  v7 = type metadata accessor for PurchaseContext();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v6, v2 + v8);
  return swift_endAccess();
}

void sub_1D77B83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D77AE39C;
  *(v10 + 24) = v8;
  v12[4] = sub_1D77B991C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7781488;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:0 completion:v11];
  _Block_release(v11);
}

void sub_1D77B84E0(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v2 = sub_1D78B31B4();
  v3 = [v2 code];

  if (*MEMORY[0x1E69B4F88] == v3)
  {
    sub_1D7782764(&v25);
    sub_1D7781E98();
    v4 = swift_allocError();
    v6 = v26;
    v5 = v27;
    *v7 = v25;
    *(v7 + 16) = v6;
    *(v7 + 32) = v5;
    v8 = v31;
    v10 = v28;
    v9 = v29;
    *(v7 + 80) = v30;
    *(v7 + 96) = v8;
    *(v7 + 48) = v10;
    *(v7 + 64) = v9;
    v12 = v33;
    v11 = v34;
    v13 = v32;
    *(v7 + 160) = v35;
    *(v7 + 128) = v12;
    *(v7 + 144) = v11;
    *(v7 + 112) = v13;
    sub_1D77B7CC8();

    return;
  }

  *&v25 = a1;
  v14 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  type metadata accessor for SKError(0);
  if (swift_dynamicCast())
  {
    *&v25 = v36;
    sub_1D77B9A1C();
    sub_1D78B3184();
    if (v36 == 2)
    {
      sub_1D77B9A74(&v25);
      sub_1D7781E98();
      v15 = swift_allocError();
      v17 = v26;
      v16 = v27;
      *v18 = v25;
      *(v18 + 16) = v17;
      *(v18 + 32) = v16;
      v19 = v31;
      v21 = v28;
      v20 = v29;
      *(v18 + 80) = v30;
      *(v18 + 96) = v19;
      *(v18 + 48) = v21;
      *(v18 + 64) = v20;
      v23 = v33;
      v22 = v34;
      v24 = v32;
      *(v18 + 160) = v35;
      *(v18 + 128) = v23;
      *(v18 + 144) = v22;
      *(v18 + 112) = v24;
      sub_1D77B7CC8();

      return;
    }
  }

  sub_1D77B7CC8();
}

uint64_t sub_1D77B872C(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();

  return sub_1D77B8280(a1);
}

uint64_t sub_1D77B87D4()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  v2 = type metadata accessor for PurchaseContext();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    return 0;
  }

  v3 = *(v1 + 40);

  return v3;
}

uint64_t sub_1D77B8878()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  v2 = type metadata accessor for PurchaseContext();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    return 0;
  }

  v3 = *(v1 + 24);

  return v3;
}

double sub_1D77B8968(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void sub_1D77B899C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773F004(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D77B8A04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v6 + 80))(v2, v3, v4, v5, ObjectType, v6);
}

void sub_1D77B8A88()
{
  type metadata accessor for PurchaseContext();

  sub_1D77B81D8();
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1D77B8EAC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void sub_1D77B8EE0(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 48);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 8);

  v14 = v13(ObjectType, v11);
  if (v14)
  {
    v28 = v14;
    v15 = [v14 purchaseID];
    v16 = sub_1D78B5C74();
    v18 = v17;

    if (v16 == *a6 && v18 == a6[1])
    {

      goto LABEL_9;
    }

    v20 = sub_1D78B6724();

    if (v20)
    {

LABEL_9:
      v29 = v28;
      a1(&v29);
      goto LABEL_12;
    }
  }

  v21 = *(a5 + 24);
  v22 = swift_getObjectType();
  sub_1D775F820(*a6, a6[1], v22, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D775C1FC;
  *(v23 + 24) = v10;
  v24 = sub_1D78B4014();
  sub_1D78B4094();

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  v28 = sub_1D78B4014();
  sub_1D78B40D4();

LABEL_12:
}

void *sub_1D77B919C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v5 = sub_1D7832AFC(*(a3 + 40), *(a3 + 48));
  if (v5)
  {
    v6 = v5;
    if ([v5 isEnabled])
    {
      v7 = [objc_opt_self() sharedInstance];
      v8 = [v7 primaryAuthKitAccount];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 securityLevelForAccount_];

        if (v10 == 4)
        {
          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          sub_1D78B60A4();
          sub_1D78B42C4();
          v11 = [v6 clientIdentifier];
          if (!v11)
          {
            sub_1D78B5C74();
            v11 = sub_1D78B5C44();
          }

          v12 = [v6 teamIdentifier];
          if (!v12)
          {
            sub_1D78B5C74();
            v12 = sub_1D78B5C44();
          }

          v13 = [objc_allocWithZone(MEMORY[0x1E697BA78]) initWithClientIdentifier:v11 teamIdentifier:v12];

          v14 = sub_1D78B5C44();
          [v13 setServiceIdentifier_];

          v15 = [a1 payment];
          [v15 setAppleIDAuthorizationClientInfo_];

          v16 = a1;
          return a1;
        }
      }

      else
      {
      }

      if (qword_1EE08FB98 == -1)
      {
LABEL_19:
        sub_1D78B60A4();
        sub_1D78B42C4();
        v18 = a1;

        return a1;
      }
    }

    else if (qword_1EE08FB98 == -1)
    {
      goto LABEL_19;
    }

    swift_once();
    goto LABEL_19;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v17 = a1;
  return a1;
}