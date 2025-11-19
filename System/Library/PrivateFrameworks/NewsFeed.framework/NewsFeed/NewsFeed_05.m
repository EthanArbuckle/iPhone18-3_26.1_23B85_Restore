unint64_t sub_1D5BC5938()
{
  result = qword_1EDF15088;
  if (!qword_1EDF15088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15088);
  }

  return result;
}

unint64_t sub_1D5BC5990()
{
  result = qword_1EDF15080;
  if (!qword_1EDF15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15080);
  }

  return result;
}

unint64_t sub_1D5BC59E8()
{
  result = qword_1EDF15078;
  if (!qword_1EDF15078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15078);
  }

  return result;
}

uint64_t sub_1D5BC5A54()
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

uint64_t sub_1D5BC5B88(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 192) = MEMORY[0x1E69E7CD0];
  sub_1D5B63F14(a1, a6 + 48);
  sub_1D5B63F14(a2, a6 + 88);
  v14 = *(a5 + 16);
  *(a6 + 144) = *a5;
  *(a6 + 160) = v14;
  *(a6 + 176) = *(a5 + 32);
  *(a6 + 184) = a4;
  type metadata accessor for WeakFormatTracker();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = a8;
  swift_unknownObjectWeakAssign();
  *(a6 + 128) = v15;
  *(a6 + 136) = &protocol witness table for WeakFormatTracker;
  return a6;
}

uint64_t sub_1D5BC5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a2, a3, a5, a6, v7, ObjectType, a4);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t FeedPluginManager.__allocating_init(feed:feedKind:formatPluginFactory:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = v6;
  v15 = v7;
  v11 = v8;
  swift_allocObject();
  v9 = sub_1D5BC5DD8(&v12, &v11, 0, a3, a4);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1D5BC5DD8(uint64_t *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a1;
  v10 = a1[3];
  v19 = *(a1 + 32);
  v20 = *a2;
  *(v5 + qword_1EDF14DA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = qword_1EDF14D90;
  type metadata accessor for FeedPluginManager.FactoryWrapper();
  v18 = *(a1 + 1);
  *(v6 + v11) = sub_1D7261CFC();
  v12 = v6 + qword_1EDF14DA8;
  *v12 = v9;
  *(v12 + 8) = v18;
  *(v12 + 24) = v10;
  *(v12 + 32) = v19;
  *(v6 + qword_1EDF14D98) = v20;
  *(v6 + qword_1EDF14DB0) = a3;
  type metadata accessor for FormatFeedPluginFactory();
  v13 = a3;
  v14 = swift_unknownObjectRetain();
  v15 = sub_1D5BC605C(v14, a5, a3);
  swift_unknownObjectRelease();
  *(v6 + qword_1EDF14E38) = v15;
  v16 = sub_1D725CF7C();
  *(*(v16 + qword_1EDF14E38) + 24) = &protocol witness table for FeedPluginManager<A>;
  swift_unknownObjectWeakAssign();
  return v16;
}

void *sub_1D5BC60C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FormatFeedPluginFactory.FactoryWrapper();
  v8 = sub_1D7261CEC();
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = v8;
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 16);
  v11 = a3;

  swift_unknownObjectRetain_n();
  v10(v4, &off_1F5193D38, ObjectType, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t FeedNativeAdIntegrator.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

void sub_1D5BC624C()
{
  if (!qword_1EDF17B20)
  {
    sub_1D5BC5938();
    sub_1D5BB6634();
    v0 = sub_1D725B5EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B20);
    }
  }
}

uint64_t sub_1D5BC62D0()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5BC631C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void FeedLayoutSolver.Cursor.layoutWithCancellation<A>(group:decorationProvider:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, __int128 *a5@<X8>)
{
  *&v32 = a2;
  *&v31 = a1;
  v9 = *v5;
  v30 = sub_1D726289C();
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725A20C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = *(v9 + 80);
  sub_1D718EC28(v17);
  v28[0] = a5;
  v18 = v33;
  sub_1D718EFD4(v31, v32, v17, a3, a4, a5);
  if (!v18)
  {
    (*(v14 + 8))(v17, v13);
    return;
  }

  (*(v14 + 8))(v17, v13);
  *&v37 = v18;
  v19 = v18;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v20 = v30;
  if (swift_dynamicCast())
  {
    (*(v29 + 8))(v12, v20);
  }

  else
  {
    v40 = v18;
    v21 = v18;
    v22 = type metadata accessor for FeedLayoutSolver.Errors();
    if (swift_dynamicCast())
    {
      *&v36[9] = *&v39[9];
      v34 = v37;
      v35 = v38;
      *v36 = *v39;
      v23 = v39[24];
      if ((v39[24] & 0x80000000) == 0)
      {
        v24 = *&v36[16];
        v32 = v34;
        v33 = *v36;
        v31 = v35;

        v25 = v28[0];
        v26 = v31;
        v27 = v33;
        *v28[0] = v32;
        *(v25 + 16) = v26;
        *(v25 + 32) = v27;
        *(v25 + 48) = v24;
        *(v25 + 56) = v23;

        return;
      }

      (*(*(v22 - 8) + 8))(&v34, v22);
    }
  }

  swift_willThrow();
}

void sub_1D5BC66DC()
{
  if (!qword_1EDF195A0)
  {
    sub_1D5D64D20(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF195A0);
    }
  }
}

uint64_t BlueprintSection<>.feedGroupDebug.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725D61C();
  (*(a2 + 40))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D5BC684C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5BAB064(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t BlueprintSection<>.feedGroupKind.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725D61C();
  (*(a2 + 16))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D5BC69B0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t FeedGroupKind.identifier.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
    return 0x2D74616D726F66;
  }

  v4 = vorrq_s8(*(v0 + 3), *(v0 + 5));
  v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v0[2] | v0[1];
  if (v1 == 0x8000000000000000 && v5 == 0)
  {
    return 7364967;
  }

  result = 0x656E696C64616568;
  if ((v1 != 0x8000000000000008 || v5) && (v1 != 0x8000000000000010 || v5))
  {
    if (v1 != 0x8000000000000018 || v5)
    {
      if (v1 != 0x8000000000000020 || v5)
      {
        if (v1 != 0x8000000000000028 || v5)
        {
          if (v1 != 0x8000000000000030 || v5)
          {
            if (v1 != 0x8000000000000038 || v5)
            {
              if (v1 != 0x8000000000000040 || v5)
              {
                if (v1 == 0x8000000000000048 && v5 == 0)
                {
                  return 0x656D656761676E65;
                }

                else
                {
                  return 0x6E6967756C70;
                }
              }

              else
              {
                return 0x69726F6765746163;
              }
            }

            else
            {
              return 25697;
            }
          }

          else
          {
            return 0x736E6F69676572;
          }
        }

        else
        {
          return 0xD000000000000011;
        }
      }

      else
      {
        return 0x7247736575737369;
      }
    }

    else
    {
      return 0x7453736575737369;
    }
  }

  return result;
}

unint64_t sub_1D5BC6C20(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  else
  {
    if (result >> 62)
    {
      return result;
    }
  }
}

uint64_t sub_1D5BC6CB0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B4A02C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FeedDismissingManager.allDismissibleIdentifier.getter()
{
  v1 = type metadata accessor for FeedItemDismissalRecord();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = (&v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B68374(v0 + 16, v21);
  v6 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v9, 0);
    v10 = v20;
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D60663A8(v11, v5);
      v14 = *v5;
      v13 = v5[1];

      sub_1D606640C(v5);
      v20 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = sub_1D5B86020(v10);

  return v18;
}

uint64_t type metadata accessor for FeedItemDismissalRecord()
{
  result = qword_1EDF366D0;
  if (!qword_1EDF366D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_1D5BC6F58()
{
  v1 = *(*v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  sub_1D5BC6FC4((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

void sub_1D5BC6FE0(unint64_t *a1@<X0>, size_t *a2@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    v14 = sub_1D5BD680C();
    if (v2)
    {
      if (qword_1EDF2B798 != -1)
      {
        swift_once();
      }

      sub_1D5B6D3A0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7273AE0;
      swift_getErrorValue();
      v16 = sub_1D726497C();
      v18 = v17;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D5B7E2C0();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_1D7262EDC();
      sub_1D725C30C();

      goto LABEL_11;
    }

    v19 = v14;
    *a1 = v14;
    if (!*(v14 + 16))
    {
LABEL_11:
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v20 = sub_1D6D88EB4();
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = *(v22 + 16);
      if (v23)
      {
        v9 = sub_1D5E24120(*(v22 + 16), 0);
        v24 = *(type metadata accessor for FeedItemDismissalRecord() - 8);
        sub_1D5E26140(v31, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23, v22);
        v26 = v25;
        sub_1D5B87E38();
        if (v26 != v23)
        {
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {

        v9 = MEMORY[0x1E69E7CC0];
      }

      if (qword_1EDF2B798 == -1)
      {
LABEL_22:
        sub_1D5B6D3A0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D7273AE0;
        v28 = *(v9 + 16);
        v29 = MEMORY[0x1E69E65A8];
        *(v27 + 56) = MEMORY[0x1E69E6530];
        *(v27 + 64) = v29;
        *(v27 + 32) = v28;
        sub_1D7262EDC();
        sub_1D725C30C();

        goto LABEL_13;
      }

LABEL_24:
      swift_once();
      goto LABEL_22;
    }

LABEL_19:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v5 = sub_1D6D88EB4();
  if ((v6 & 1) == 0 || (v7 = *(*(v4 + 56) + 8 * v5), (v8 = *(v7 + 16)) == 0))
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v30 = a2;
  v9 = sub_1D5E24120(v8, 0);
  v10 = *(type metadata accessor for FeedItemDismissalRecord() - 8);
  sub_1D5E26140(v31, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v7);
  v12 = v11;
  a2 = v31[2];

  sub_1D5B87E38();
  if (v12 != v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  a2 = v30;
LABEL_13:
  *a2 = v9;
}

uint64_t BlueprintSection<>.feedItems.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = a2;
  v12 = v4;
  v13 = a3;
  v14 = v5;
  v6 = type metadata accessor for FeedItem(0);
  WitnessTable = swift_getWitnessTable();
  return sub_1D5B874E4(sub_1D5BC74B4, v10, a1, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1D5BC74DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725CE8C();
  sub_1D725CE7C();
  (*(a6 + 8))(a3, a6);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static FeedHeadline.State.default.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FeedHeadline.State(0);
  v3 = v2[6];
  v4 = type metadata accessor for SharedItem();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *a1 = 258;
  a1[v2[7]] = 1;
  a1[v2[8]] = 0;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  return result;
}

uint64_t FeedHeadline.init(identifier:headline:metadata:premiumBadge:nativeAdInfo:state:audioTrack:additionalTraits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void **a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = *a8;
  v18 = *a10;
  v40 = *a5;
  v41 = *(a10 + 8);
  v19 = type metadata accessor for FeedHeadline(0);
  *(a9 + v19[12]) = xmmword_1D727C330;
  v43 = v17;
  if (!a2)
  {
    v20 = v18;
    v21 = v19;
    v22 = a6;
    v23 = [a3 identifier];
    a1 = sub_1D726207C();
    a2 = v24;

    a6 = v22;
    v19 = v21;
    v18 = v20;
    v17 = v43;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  v42 = a6;
  sub_1D5BC7A6C(a6, a9 + v19[11]);
  sub_1D5BC7B00(a7, a9 + v19[10], type metadata accessor for FeedHeadline.State);
  *(a9 + v19[14]) = v17;
  *(a9 + 56) = v40;
  swift_getObjectType();
  v25 = v17;
  v26 = [swift_unknownObjectRetain() title];
  v29 = 0;
  if (v26)
  {
    v27 = v26;
    v28 = [v26 ne_isNaturallyRTL];

    if (v28)
    {
      v29 = 1;
    }
  }

  *(a9 + 16) = v29;
  *(a9 + 24) = 0;
  sub_1D5BC7BD4(&v44);
  swift_unknownObjectRelease();
  v30 = type metadata accessor for FeedHeadline.State(0);
  v31 = v30;
  if (*(a7 + *(v30 + 32)) - 1 <= 1 && (v44 & 0x1000) == 0)
  {
    v44 |= 0x1000uLL;
  }

  v32 = *(v30 + 40);
  v33 = v44;
  v34 = 0x80000000;
  if (!*(a7 + v32))
  {
    v34 = 0x100000000;
  }

  if ((v44 & v34) != 0)
  {
    v34 = 0;
  }

  v35 = v44 | v34;
  if (v43)
  {

    v35 |= ~v33 & 0x200000;
  }

  if (v41)
  {
    v36 = 0;
  }

  else
  {
    v36 = v18;
  }

  *(a9 + 32) = v35 | v36;
  if (*(a7 + *(v31 + 28)))
  {
    if (*(a7 + *(v31 + 36)) == 1)
    {
      sub_1D5BC82E0(a7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v42, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v38 = 1;
    }

    else if (*(a7 + v32) == 1)
    {
      v39 = [a3 sourceChannel];
      sub_1D5BC82E0(a7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v42, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v38 = 2;
      if (v39)
      {
        v38 = v39;
      }
    }

    else
    {
      sub_1D5BC82E0(a7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v42, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v38 = 2;
    }
  }

  else
  {
    sub_1D5BC82E0(a7, type metadata accessor for FeedHeadline.State);
    result = sub_1D5BC80E4(v42, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    v38 = 0;
  }

  *(a9 + v19[13]) = v38;
  return result;
}

uint64_t sub_1D5BC7A6C(uint64_t a1, uint64_t a2)
{
  sub_1D5B49834(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5BC7B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC7B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC7BD4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5B7B7F8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4).n128_u64[0];
  v7 = &v18 - v6;
  if ([v1 hasVideo])
  {
    v8 = 136;
  }

  else
  {
    v8 = 128;
  }

  if ([v1 hasThumbnail])
  {
    FCThumbnailAspectRatioForHeadline();
    if (v9 <= 0.9)
    {
      v10 = 260;
    }

    else if (v9 > 1.1)
    {
      v10 = 516;
    }

    else
    {
      v10 = 1028;
    }

    v8 |= v10;
  }

  FCHeadlineProviding.articleThumbnailModel.getter(&v18);
  v11 = v19;
  if (v23 == 1)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v11 <= 0.9)
    {
      v8 |= 0xC000uLL;
    }

    else
    {
      v12 = 81920;
      if (v11 <= 1.1)
      {
        v12 = 147456;
      }

      v8 |= v12;
    }
  }

  else
  {
    sub_1D5BC8080(v18, *&v19, v20, v21, v22, 0);
  }

  v13 = [v1 routeURL];
  if (v13)
  {
    v14 = v13;
    sub_1D72584EC();

    v15 = sub_1D72585BC();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    result = sub_1D5B87CE0(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v8 |= 0x40000000uLL;
  }

  else
  {
    v17 = sub_1D72585BC();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    result = sub_1D5B87CE0(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  *a1 = v8;
  return result;
}

double FCHeadlineProviding.articleThumbnailModel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D5B7B7F8(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4).n128_u64[0];
  v7 = &v17 - v6;
  v8 = [v1 respondsToSelector_];
  swift_unknownObjectRetain();
  if (v8)
  {
    v9 = [v1 layeredThumbnailJSON];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D726207C();
      v13 = v12;

      sub_1D72579DC();
      v14 = sub_1D7257A4C();
      (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
      LOBYTE(v10) = sub_1D725AB8C();

      sub_1D5B87CE0(v7, &qword_1EDF3C480, MEMORY[0x1E69680B8]);
      if (v10 & 1) == 0 && ([v1 respondsToSelector_])
      {
        [v1 layeredThumbnailAspectRatio];
        *a1 = v1;
        *(a1 + 8) = v15;
        *(a1 + 16) = v11;
        *(a1 + 24) = v13;
        *(a1 + 32) = v1;
        *(a1 + 40) = 1;
        swift_unknownObjectRetain();
        return result;
      }
    }
  }

  *a1 = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1D5BC8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = swift_unknownObjectRelease();
  if (a6)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D5BC80E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B49834(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BC8154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BC81B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BC8214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B54FBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BC8270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7218990(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BC82E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedItem.dismissingIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v1, v17, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v17, v9, type metadata accessor for FeedHeadline);
      v38 = *(v9 + 5);
      if (([v38 respondsToSelector_] & 1) != 0 && (v39 = objc_msgSend(v38, sel_dismissingIdentifier)) != 0)
      {
        v40 = v39;
        v41 = sub_1D726207C();
      }

      else
      {
        v41 = 0;
      }

      sub_1D5BDDBE8(v9, type metadata accessor for FeedHeadline);
      return v41;
    case 4:
      sub_1D5BDDB20(v17, v5, type metadata accessor for FeedWebEmbed);
      v20 = *&v5[*(v2 + 60)];

      v21 = type metadata accessor for FeedWebEmbed;
      v22 = v5;
      goto LABEL_7;
    case 7:
      v23 = *(v17 + 7);
      v53 = *(v17 + 6);
      v54 = v23;
      v55 = *(v17 + 8);
      LOBYTE(v56) = v17[144];
      v24 = *(v17 + 3);
      v49 = *(v17 + 2);
      v50 = v24;
      v25 = *(v17 + 5);
      v51 = *(v17 + 4);
      v52 = v25;
      v26 = *(v17 + 1);
      v47 = *v17;
      v27 = [v26 dismissingIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726207C();
      }

      else
      {
        v29 = 0;
      }

      sub_1D5EE5B54(&v47);
      return v29;
    case 8:
      sub_1D5BDDB20(v17, v13, type metadata accessor for FeedCustomItem);
      v20 = *&v13[*(v10 + 24)];

      v21 = type metadata accessor for FeedCustomItem;
      v22 = v13;
LABEL_7:
      sub_1D5BDDBE8(v22, v21);
      return v20;
    case 14:
      v30 = *(v17 + 11);
      v57 = *(v17 + 10);
      v58 = v30;
      v59 = *(v17 + 12);
      v31 = *(v17 + 7);
      v53 = *(v17 + 6);
      v54 = v31;
      v32 = *(v17 + 9);
      v55 = *(v17 + 8);
      v56 = v32;
      v33 = *(v17 + 3);
      v49 = *(v17 + 2);
      v50 = v33;
      v34 = *(v17 + 5);
      v51 = *(v17 + 4);
      v52 = v34;
      v35 = *v17;
      v48 = *(v17 + 1);
      v36 = [*(&v50 + 1) dismissingIdentifier];
      if (v36)
      {
        v37 = v36;
        v29 = sub_1D726207C();
      }

      else
      {
        v29 = 0;
      }

      sub_1D5F2DF58(&v47);
      return v29;
    case 15:
      v42 = *(v17 + 3);
      v43 = *(v17 + 4);
      v44 = [*(v17 + 7) dismissingIdentifier];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1D726207C();

        sub_1D5BF6680(v42, v43);
        swift_unknownObjectRelease();

        return v46;
      }

      else
      {
        sub_1D5BF6680(v42, v43);
        swift_unknownObjectRelease();

        return 0;
      }

    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v17, type metadata accessor for FeedItem);
      return 0;
  }
}

uint64_t sub_1D5BC885C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC88C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC892C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC8994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC89FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC8A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BC8ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a3 + 16))(a2, a3, v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v23[1] = a1;
    v15 = 0;
    v16 = 0;
    v17 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = 1;
    do
    {
      if (v16 >= *(v13 + 16))
      {
        goto LABEL_25;
      }

      v19 = v15;
      v20 = *(v7 + 72);
      sub_1D5BC8CF4(v17 + v20 * v16++, v11);
      FeedItem.layoutDirection.getter(&v24);
      result = sub_1D5BDDCA8(v11);
      v15 = v24;
      v21 = v25;
      if (((v25 | v18) & 1) == 0)
      {
        if (v19 != v24)
        {
LABEL_22:

          return 0;
        }

        if (v16 == v14)
        {
LABEL_23:

          return v19;
        }

        v22 = v17 + v20 * v16;
        while (v16 < *(v13 + 16))
        {
          sub_1D5BC8CF4(v22, v11);
          ++v16;
          FeedItem.layoutDirection.getter(&v24);
          result = sub_1D5BDDCA8(v11);
          if (v25)
          {
            v18 = 0;
            v21 = 1;
            goto LABEL_16;
          }

          if (v19 != v24)
          {
            goto LABEL_22;
          }

          v22 += v20;
          if (v14 == v16)
          {
            goto LABEL_23;
          }
        }

LABEL_25:
        __break(1u);
        return result;
      }

      if (v25)
      {
LABEL_16:
        v15 = v19;
      }

      v18 &= v21;
    }

    while (v16 != v14);

    v19 = v15;
    if (v18)
    {
      return sub_1D7259EAC();
    }
  }

  else
  {

    return sub_1D7259EAC();
  }

  return v19;
}

uint64_t sub_1D5BC8CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedItem.layoutDirection.getter@<X0>(void *a1@<X8>)
{
  v87 = a1;
  v1 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v85 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v86, v27, type metadata accessor for FeedItem);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v68 = *(v27 + 3);
      v69 = v27[32];
      v70 = *(v27 + 9);
      v71 = *(v27 + 10);

      result = sub_1D5BF6680(v70, v71);
      v72 = v87;
      *v87 = v68;
      *(v72 + 8) = v69;
      return result;
    case 2:
      sub_1D5BDDB20(v27, v23, type metadata accessor for FeedBannerAd);
      v43 = &v23[*(v20 + 28)];
      v38 = *v43;
      v39 = v43[8];
      v40 = type metadata accessor for FeedBannerAd;
      v41 = v23;
      goto LABEL_22;
    case 3:
      sub_1D5BDDB20(v27, v19, type metadata accessor for FeedHeadline);
      v38 = *(v19 + 2);
      v39 = v19[24];
      v40 = type metadata accessor for FeedHeadline;
      v41 = v19;
      goto LABEL_22;
    case 4:
      sub_1D5BDDB20(v27, v15, type metadata accessor for FeedWebEmbed);
      v38 = *(v15 + 1);
      v39 = v15[16];
      v40 = type metadata accessor for FeedWebEmbed;
      v41 = v15;
      goto LABEL_22;
    case 5:
      goto LABEL_17;
    case 6:
      if (!v27[281])
      {
LABEL_17:
        v60 = *(v27 + 7);
        v101 = *(v27 + 6);
        v102[0] = v60;
        *(v102 + 9) = *(v27 + 121);
        v61 = *(v27 + 3);
        v97 = *(v27 + 2);
        v98 = v61;
        v62 = *(v27 + 5);
        v99 = *(v27 + 4);
        v100 = v62;
        v63 = *(v27 + 1);
        v95 = *v27;
        v96 = v63;
        result = sub_1D5ECF320(&v95);
        v58 = v97;
        v59 = BYTE8(v97);
        goto LABEL_25;
      }

      if (v27[281] == 1)
      {
        v50 = *(v27 + 7);
        v93 = *(v27 + 6);
        v94[0] = v50;
        *(v94 + 9) = *(v27 + 121);
        v51 = *(v27 + 3);
        v89 = *(v27 + 2);
        v90 = v51;
        v52 = *(v27 + 5);
        v91 = *(v27 + 4);
        v92 = v52;
        v53 = *(v27 + 1);
        v88[0] = *v27;
        v88[1] = v53;
        v54 = *(v27 + 16);
        v101 = *(v27 + 15);
        v102[0] = v54;
        *(v102 + 9) = *(v27 + 265);
        v55 = *(v27 + 12);
        v97 = *(v27 + 11);
        v98 = v55;
        v56 = *(v27 + 14);
        v99 = *(v27 + 13);
        v100 = v56;
        v57 = *(v27 + 10);
        v95 = *(v27 + 9);
        v96 = v57;
        sub_1D5D206DC(&v95, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5B5A614);
        result = sub_1D5ECF320(v88);
        v58 = v89;
        v59 = BYTE8(v89);
LABEL_25:
        v82 = v87;
        *v87 = v58;
        *(v82 + 8) = v59;
        return result;
      }

LABEL_18:
      v64 = *(v27 + 7);
      v101 = *(v27 + 6);
      v102[0] = v64;
      v102[1] = *(v27 + 8);
      LOBYTE(v103) = v27[144];
      v65 = *(v27 + 3);
      v97 = *(v27 + 2);
      v98 = v65;
      v66 = *(v27 + 5);
      v99 = *(v27 + 4);
      v100 = v66;
      v67 = *(v27 + 1);
      v95 = *v27;
      v96 = v67;
      v38 = v97;
      v39 = BYTE8(v97);
      result = sub_1D5EE5B54(&v95);
LABEL_23:
      v74 = v87;
      *v87 = v38;
      *(v74 + 8) = v39;
      return result;
    case 7:
      goto LABEL_18;
    case 8:
      result = sub_1D5BDDBE8(v27, type metadata accessor for FeedItem);
      goto LABEL_10;
    case 9:
      result = sub_1D5BDDBE8(v27, type metadata accessor for FeedItem);
      v83 = v87;
      *v87 = 0;
      *(v83 + 8) = 0;
      return result;
    case 10:
      sub_1D5BDDB20(v27, v11, type metadata accessor for FeedEngagementBanner);
      v37 = &v11[*(v8 + 28)];
      v38 = *v37;
      v39 = v37[8];
      v40 = type metadata accessor for FeedEngagementBanner;
      v41 = v11;
      goto LABEL_22;
    case 11:

      goto LABEL_10;
    case 12:
      v73 = v85;
      sub_1D5BDDB20(v27, v85, type metadata accessor for FeedRecipe);
      v38 = *(v73 + 16);
      v39 = *(v73 + 24);
      v40 = type metadata accessor for FeedRecipe;
      v41 = v73;
      goto LABEL_22;
    case 13:
      v34 = *(v27 + 3);
      v35 = v27[32];
      swift_unknownObjectRelease();

      v36 = v87;
      *v87 = v34;
      *(v36 + 8) = v35;
      return result;
    case 14:
      v44 = *(v27 + 11);
      v104 = *(v27 + 10);
      v105 = v44;
      v106 = *(v27 + 12);
      v45 = *(v27 + 7);
      v101 = *(v27 + 6);
      v102[0] = v45;
      v46 = *(v27 + 9);
      v102[1] = *(v27 + 8);
      v103 = v46;
      v47 = *(v27 + 3);
      v97 = *(v27 + 2);
      v98 = v47;
      v48 = *(v27 + 5);
      v99 = *(v27 + 4);
      v100 = v48;
      v49 = *(v27 + 1);
      v95 = *v27;
      v96 = v49;
      v38 = *(&v95 + 1);
      v39 = v49;
      result = sub_1D5F2DF58(&v95);
      goto LABEL_23;
    case 15:
      v29 = *(v27 + 1);
      v30 = v27[16];
      sub_1D5BF6680(*(v27 + 3), *(v27 + 4));
      swift_unknownObjectRelease();

      goto LABEL_4;
    case 16:
      sub_1D5BDDB20(v27, v7, type metadata accessor for FeedPuzzleStatistic);
      v38 = *(v7 + 1);
      v39 = v7[16];
      v40 = type metadata accessor for FeedPuzzleStatistic;
      v41 = v7;
LABEL_22:
      result = sub_1D5BDDBE8(v41, v40);
      goto LABEL_23;
    case 17:
      v75 = *(v27 + 13);
      v106 = *(v27 + 12);
      v107 = v75;
      v108 = *(v27 + 14);
      v109 = *(v27 + 30);
      v76 = *(v27 + 9);
      v102[1] = *(v27 + 8);
      v103 = v76;
      v77 = *(v27 + 11);
      v104 = *(v27 + 10);
      v105 = v77;
      v78 = *(v27 + 5);
      v99 = *(v27 + 4);
      v100 = v78;
      v79 = *(v27 + 7);
      v101 = *(v27 + 6);
      v102[0] = v79;
      v80 = *(v27 + 1);
      v95 = *v27;
      v96 = v80;
      v81 = *(v27 + 3);
      v97 = *(v27 + 2);
      v98 = v81;
      result = sub_1D5F2DFAC(&v95);
      v58 = *(&v107 + 1);
      v59 = v108;
      goto LABEL_25;
    case 18:
LABEL_10:
      v42 = v87;
      *v87 = 0;
      *(v42 + 8) = 1;
      return result;
    default:
      v29 = *(v27 + 3);
      v30 = v27[32];
      v31 = *(v27 + 5);
      v32 = *(v27 + 6);

      result = sub_1D5BF6680(v31, v32);
LABEL_4:
      v33 = v87;
      *v87 = v29;
      *(v33 + 8) = v30;
      return result;
  }
}

unint64_t sub_1D5BC9514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EC882DE8, type metadata accessor for CGSize, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t FeedItem.identifier.getter()
{
  v1 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v0, v31, type metadata accessor for FeedItem);
  v32 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = *v31;
      v35 = *(v31 + 9);
      v36 = *(v31 + 10);

      sub_1D5BF6680(v35, v36);
      return v32;
    case 2u:
      sub_1D5BDDB20(v31, v27, type metadata accessor for FeedBannerAd);
      v32 = *v27;

      sub_1D5BDDBE8(v27, type metadata accessor for FeedBannerAd);
      return v32;
    case 3u:
      sub_1D5BDDB20(v31, v23, type metadata accessor for FeedHeadline);
      v32 = *v23;

      sub_1D5BDDBE8(v23, type metadata accessor for FeedHeadline);
      return v32;
    case 4u:
      sub_1D5BDDB20(v31, v19, type metadata accessor for FeedWebEmbed);
      v32 = *(v19 + 5);

      sub_1D5BDDBE8(v19, type metadata accessor for FeedWebEmbed);
      return v32;
    case 5u:
      goto LABEL_21;
    case 6u:
      if (v31[281])
      {
        if (v31[281] != 1)
        {
LABEL_20:
          v65 = *(v31 + 7);
          v84 = *(v31 + 6);
          v85[0] = v65;
          v85[1] = *(v31 + 8);
          LOBYTE(v86) = v31[144];
          v66 = *(v31 + 3);
          v80 = *(v31 + 2);
          v81 = v66;
          v67 = *(v31 + 5);
          v82 = *(v31 + 4);
          v83 = v67;
          v68 = *(v31 + 1);
          v78 = *v31;
          v79 = v68;
          v32 = v78;

          sub_1D5EE5B54(&v78);
          return v32;
        }

        v56 = *(v31 + 7);
        v76[6] = *(v31 + 6);
        v77[0] = v56;
        *(v77 + 9) = *(v31 + 121);
        v57 = *(v31 + 3);
        v76[2] = *(v31 + 2);
        v76[3] = v57;
        v58 = *(v31 + 5);
        v76[4] = *(v31 + 4);
        v76[5] = v58;
        v59 = *(v31 + 1);
        v76[0] = *v31;
        v76[1] = v59;
        v60 = *(v31 + 16);
        v84 = *(v31 + 15);
        v85[0] = v60;
        *(v85 + 9) = *(v31 + 265);
        v61 = *(v31 + 12);
        v80 = *(v31 + 11);
        v81 = v61;
        v62 = *(v31 + 14);
        v82 = *(v31 + 13);
        v83 = v62;
        v63 = *(v31 + 10);
        v78 = *(v31 + 9);
        v79 = v63;
        sub_1D5D206DC(&v78, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5B5A614);
        v32 = *(&v76[0] + 1);

        v64 = v76;
      }

      else
      {
LABEL_21:
        v69 = *(v31 + 1);
        v78 = *v31;
        v79 = v69;
        v70 = *(v31 + 7);
        v84 = *(v31 + 6);
        v85[0] = v70;
        *(v85 + 9) = *(v31 + 121);
        v71 = *(v31 + 3);
        v80 = *(v31 + 2);
        v81 = v71;
        v72 = *(v31 + 5);
        v82 = *(v31 + 4);
        v83 = v72;
        v32 = *(&v78 + 1);

        v64 = &v78;
      }

      sub_1D5ECF320(v64);
      return v32;
    case 7u:
      goto LABEL_20;
    case 8u:
      sub_1D5BDDB20(v31, v15, type metadata accessor for FeedCustomItem);
      v32 = *v15;

      sub_1D5BDDBE8(v15, type metadata accessor for FeedCustomItem);
      return v32;
    case 9u:
      v52 = *(v31 + 7);
      v84 = *(v31 + 6);
      v85[0] = v52;
      v85[1] = *(v31 + 8);
      *&v86 = *(v31 + 18);
      v53 = *(v31 + 3);
      v80 = *(v31 + 2);
      v81 = v53;
      v54 = *(v31 + 5);
      v82 = *(v31 + 4);
      v83 = v54;
      v55 = *(v31 + 1);
      v78 = *v31;
      v79 = v55;
      v32 = v78;

      sub_1D5F76DEC(&v78);
      return v32;
    case 0xAu:
      sub_1D5BDDB20(v31, v11, type metadata accessor for FeedEngagementBanner);
      v32 = *v11;

      sub_1D5BDDBE8(v11, type metadata accessor for FeedEngagementBanner);
      return v32;
    case 0xBu:
      v32 = _s5TeaUI11PluginModelC8NewsFeedE15debugIdentifierSSvg_0();

      return v32;
    case 0xCu:
      sub_1D5BDDB20(v31, v7, type metadata accessor for FeedRecipe);
      v32 = *v7;

      sub_1D5BDDBE8(v7, type metadata accessor for FeedRecipe);
      return v32;
    case 0xDu:
      v32 = *v31;
      swift_unknownObjectRelease();
      return v32;
    case 0xEu:
      v37 = *(v31 + 11);
      v87 = *(v31 + 10);
      v88 = v37;
      v89 = *(v31 + 12);
      v38 = *(v31 + 7);
      v84 = *(v31 + 6);
      v85[0] = v38;
      v39 = *(v31 + 9);
      v85[1] = *(v31 + 8);
      v86 = v39;
      v40 = *(v31 + 3);
      v80 = *(v31 + 2);
      v81 = v40;
      v41 = *(v31 + 5);
      v82 = *(v31 + 4);
      v83 = v41;
      v42 = *(v31 + 1);
      v78 = *v31;
      v79 = v42;
      v32 = *(&v80 + 1);

      sub_1D5F2DF58(&v78);
      return v32;
    case 0xFu:
      v33 = *(v31 + 3);
      v34 = *(v31 + 4);
      v32 = *(v31 + 5);

      sub_1D5BF6680(v33, v34);
      swift_unknownObjectRelease();

      return v32;
    case 0x10u:
      v43 = v31;
      v44 = v75;
      sub_1D5BDDB20(v43, v75, type metadata accessor for FeedPuzzleStatistic);
      v32 = *(v44 + 40);

      sub_1D5BDDBE8(v44, type metadata accessor for FeedPuzzleStatistic);
      return v32;
    case 0x11u:
      v45 = *(v31 + 13);
      v89 = *(v31 + 12);
      v90 = v45;
      v91 = *(v31 + 14);
      v92 = *(v31 + 30);
      v46 = *(v31 + 9);
      v85[1] = *(v31 + 8);
      v86 = v46;
      v47 = *(v31 + 11);
      v87 = *(v31 + 10);
      v88 = v47;
      v48 = *(v31 + 5);
      v82 = *(v31 + 4);
      v83 = v48;
      v49 = *(v31 + 7);
      v84 = *(v31 + 6);
      v85[0] = v49;
      v50 = *(v31 + 1);
      v78 = *v31;
      v79 = v50;
      v51 = *(v31 + 3);
      v80 = *(v31 + 2);
      v81 = v51;
      v32 = v78;

      sub_1D5F2DFAC(&v78);
      return v32;
    case 0x12u:
      return v32;
    default:
      v32 = *v31;
      sub_1D5BF6680(*(v31 + 5), *(v31 + 6));
      return v32;
  }
}

uint64_t BlueprintSection<>.feedGroupContextIdentifier.getter()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  v0 = MEMORY[0x1E69E6158];
  sub_1D726242C();

  sub_1D5B58150(0, &qword_1EDF43BA0, v0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v1 = sub_1D7261F3C();

  return v1;
}

__n128 sub_1D5BC9FEC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D5BCA000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 16))(*(a1 + a2 - 40));
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1D5BCA088()
{
  if (!qword_1EDF1A5D8)
  {
    type metadata accessor for FeedLayoutCacheKey();
    sub_1D5D51EB4(&qword_1EDF387A0, 255, type metadata accessor for FeedLayoutCacheKey);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A5D8);
    }
  }
}

uint64_t sub_1D5BCA148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5BCA19C(uint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  v4 = *(v2 + 3);
  v24 = *(v2 + 2);
  v25 = v4;
  v26 = *(v2 + 4);
  v5 = *(v2 + 1);
  v22 = *v2;
  v23 = v5;
  sub_1D5BCA370(v21);
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[13];
  v9 = v2[14];
  v10 = v2[15];
  v11 = v2[16];
  v12 = v2[17];
  v13 = v2[18];
  MEMORY[0x1DA6FC0B0](*(v2 + 10));
  sub_1D5BE7138(v6, v7);
  sub_1D5BE7138(v8, v9);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  if (v12 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  if (v13 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  MEMORY[0x1DA6FC0E0](*&v17);
  v18 = (v2 + *(a2 + 24));
  sub_1D5BE7138(*v18, v18[1]);
  sub_1D72621EC();
  v19 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5BC1248(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  sub_1D5BE71D0(v21, *(v18 + *(v19 + 36)));
  return sub_1D7264A5C();
}

uint64_t sub_1D5BCA370(uint64_t a1)
{
  v2 = v1;
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  v4 = *(v2 + 48);
  v5 = *(v4 + 16);
  MEMORY[0x1DA6FC0B0](v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_1D72621EC();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1D72621EC();
  v7 = *(v2 + 72);

  return sub_1D5BE251C(a1, v7);
}

uint64_t _s8NewsFeed0B14LayoutCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = *(a1 + 72);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v24 = *(a2 + 48);
  v25 = *(a1 + 48);
  v22 = *(a2 + 56);
  v23 = *(a1 + 56);
  v20 = *(a2 + 64);
  v21 = *(a1 + 64);
  v18 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((v4 != v8 || v6 != v9) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v11 || v7 != v10) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BF1C0C(v25, v24) & 1) == 0 || (v23 != v22 || v21 != v20) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BFC390(v19, v18) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 128);
  v28[2] = *(a1 + 112);
  v28[3] = v12;
  v29 = *(a1 + 144);
  v13 = *(a1 + 96);
  v28[0] = *(a1 + 80);
  v28[1] = v13;
  v14 = *(a2 + 128);
  v26[2] = *(a2 + 112);
  v26[3] = v14;
  v27 = *(a2 + 144);
  v15 = *(a2 + 96);
  v26[0] = *(a2 + 80);
  v26[1] = v15;
  if (!_s8NewsFeed0B19LayoutCacheFixedKeyV2eeoiySbAC_ACtFZ_0(v28, v26))
  {
    return 0;
  }

  v16 = *(type metadata accessor for FeedLayoutCacheKey() + 24);

  return sub_1D5C1968C(a1 + v16, a2 + v16);
}

uint64_t sub_1D5BCA604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t BlueprintSection<>.layoutOrder.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725D61C();
  (*(a2 + 8))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D5BCA74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA8CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCA9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCAA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCAAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCAB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCAB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5BCABCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A3A0, sub_1D5B81B04, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D5BCACF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A3B0, sub_1D5B5AD98, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D5BCAE1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF03FC8, &type metadata for FormatContentSlotItemAuxiliary.Resolved, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D5BCAF5C()
{
  result = qword_1EDF34E50;
  if (!qword_1EDF34E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E50);
  }

  return result;
}

uint64_t sub_1D5BCAFB0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D5BCB000(uint64_t a1, int a2)
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

uint64_t sub_1D5BCB048()
{
  v1 = *v0;

  return v1;
}

uint64_t BlueprintSection<>.feedGroupItems.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725D61C();
  v7 = (*(a2 + 32))(v3, a2);
  (*(v4 + 8))(v6, v3);
  return v7;
}

void *sub_1D5BCB16C(uint64_t a1)
{
  v571 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v571, v2);
  v577 = v562 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v570 = type metadata accessor for FeedSponsorshipBannerAd();
  MEMORY[0x1EEE9AC00](v570, v4);
  v576 = v562 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v569, v6);
  v575 = v562 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v568, v8);
  v574 = v562 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v567, v10);
  v573 = v562 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v566, v12);
  v572 = v562 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedGroupItem();
  v582 = *(v14 - 8);
  v583 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v562 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v581 = v562 - v20;
  v21 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 56);
  v25 = (v22 + 63) >> 6;
  v584 = a1;

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC8];
  v578 = v17;
  v579 = v25;
  v580 = v21;
LABEL_4:
  if (v24)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
LABEL_9:
      v29 = v581;
      sub_1D5D50814(*(v584 + 48) + *(v582 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v581, type metadata accessor for FeedGroupItem);
      sub_1D5D65494(v29, v17, type metadata accessor for FeedGroupItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v585 = ((v24 - 1) & v24);
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v240 = *(v17 + 7);
          v595 = *(v17 + 6);
          v596[0] = v240;
          *(v596 + 9) = *(v17 + 121);
          v241 = *(v17 + 3);
          v591 = *(v17 + 2);
          v592 = v241;
          v242 = *(v17 + 5);
          v593 = *(v17 + 4);
          v594 = v242;
          v243 = *(v17 + 1);
          v589 = *v17;
          v590 = v243;
          v614 = &type metadata for FeedIssue;
          v244 = swift_allocObject();
          *&v612 = v244;
          v245 = *(v17 + 7);
          v244[7] = *(v17 + 6);
          v244[8] = v245;
          *(v244 + 137) = *(v17 + 121);
          v246 = *(v17 + 3);
          v244[3] = *(v17 + 2);
          v244[4] = v246;
          v247 = *(v17 + 5);
          v244[5] = *(v17 + 4);
          v244[6] = v247;
          v248 = *(v17 + 1);
          v244[1] = *v17;
          v244[2] = v248;
          __swift_project_boxed_opaque_existential_1(&v612, &type metadata for FeedIssue);
          swift_getDynamicType();
          sub_1D5ECF2C4(&v589, &v586);
          v249 = sub_1D7264C5C();
          v251 = v250;
          __swift_destroy_boxed_opaque_existential_1(&v612);
          v614 = &type metadata for FeedIssue;
          v615 = &protocol witness table for FeedIssue;
          v252 = swift_allocObject();
          *&v612 = v252;
          v253 = v596[0];
          v252[7] = v595;
          v252[8] = v253;
          *(v252 + 137) = *(v596 + 9);
          v254 = v592;
          v252[3] = v591;
          v252[4] = v254;
          v255 = v594;
          v252[5] = v593;
          v252[6] = v255;
          v256 = v590;
          v252[1] = v589;
          v252[2] = v256;
          sub_1D5B63F14(&v612, &v608);
          sub_1D5ECF2C4(&v589, &v586);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v607 = v27;
          v258 = __swift_mutable_project_boxed_opaque_existential_1(&v608, v610);
          v565 = v562;
          v259 = MEMORY[0x1EEE9AC00](v258, v258);
          v261 = (v562 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v262 + 16))(v261, v259);
          v587 = &type metadata for FeedIssue;
          v588 = &protocol witness table for FeedIssue;
          v263 = swift_allocObject();
          *&v586 = v263;
          v264 = v261[7];
          v263[7] = v261[6];
          v263[8] = v264;
          *(v263 + 137) = *(v261 + 121);
          v265 = v261[3];
          v263[3] = v261[2];
          v263[4] = v265;
          v266 = v261[5];
          v263[5] = v261[4];
          v263[6] = v266;
          v267 = v261[1];
          v263[1] = *v261;
          v263[2] = v267;
          v269 = sub_1D5B69D90(v249, v251);
          v270 = v27[2];
          v271 = (v268 & 1) == 0;
          v272 = v270 + v271;
          if (__OFADD__(v270, v271))
          {
            goto LABEL_188;
          }

          v273 = v268;
          if (v27[3] >= v272)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v268 & 1) == 0)
              {
                goto LABEL_154;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v273 & 1) == 0)
              {
                goto LABEL_154;
              }
            }

LABEL_106:

            v27 = v607;
            v408 = v607[7] + 40 * v269;
            __swift_destroy_boxed_opaque_existential_1(v408);
            sub_1D5B63F14(&v586, v408);
            sub_1D5ECF320(&v589);
            goto LABEL_172;
          }

          sub_1D5D6597C(v272, isUniquelyReferenced_nonNull_native);
          v274 = sub_1D5B69D90(v249, v251);
          if ((v273 & 1) != (v275 & 1))
          {
            goto LABEL_208;
          }

          v269 = v274;
          if (v273)
          {
            goto LABEL_106;
          }

LABEL_154:
          v27 = v607;
          v501 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v502 = MEMORY[0x1EEE9AC00](v501, v501);
          v504 = (v562 - ((v503 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v505 + 16))(v504, v502);
          v605 = &type metadata for FeedIssue;
          v606 = &protocol witness table for FeedIssue;
          v506 = swift_allocObject();
          *&v604 = v506;
          v507 = v504[3];
          v506[3] = v504[2];
          v506[4] = v507;
          v508 = v504[1];
          v506[1] = *v504;
          v506[2] = v508;
          *(v506 + 137) = *(v504 + 121);
          v509 = v504[7];
          v506[7] = v504[6];
          v506[8] = v509;
          v510 = v504[5];
          v506[5] = v504[4];
          v506[6] = v510;
          v27[(v269 >> 6) + 8] |= 1 << v269;
          v511 = (v27[6] + 16 * v269);
          *v511 = v249;
          v511[1] = v251;
          sub_1D5B63F14(&v604, v27[7] + 40 * v269);
          sub_1D5ECF320(&v589);
          v512 = v27[2];
          v422 = __OFADD__(v512, 1);
          v513 = v512 + 1;
          if (v422)
          {
            goto LABEL_201;
          }

LABEL_171:
          v27[2] = v513;
          __swift_destroy_boxed_opaque_existential_1(&v586);
          v17 = v578;
LABEL_172:
          v25 = v579;
          v21 = v580;
          v24 = v585;
          v440 = &v608;
LABEL_173:
          __swift_destroy_boxed_opaque_existential_1(v440);
          goto LABEL_4;
        case 2:
          v178 = *v17;
          v179 = *(v17 + 1);
          *(&v590 + 1) = &type metadata for FeedOptionList;
          *&v589 = v178;
          *(&v589 + 1) = v179;
          __swift_project_boxed_opaque_existential_1(&v589, &type metadata for FeedOptionList);
          swift_getDynamicType();

          v180 = sub_1D7264C5C();
          v182 = v181;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = &type metadata for FeedOptionList;
          *&v591 = &protocol witness table for FeedOptionList;
          *&v589 = v178;
          *(&v589 + 1) = v179;
          sub_1D5B63F14(&v589, &v586);
          v183 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v184 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v185 = MEMORY[0x1EEE9AC00](v184, v184);
          v187 = (v562 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v188 + 16))(v187, v185);
          v614 = &type metadata for FeedOptionList;
          v615 = &protocol witness table for FeedOptionList;
          v612 = *v187;
          v190 = sub_1D5B69D90(v180, v182);
          v191 = v27[2];
          v192 = (v189 & 1) == 0;
          v193 = v191 + v192;
          if (__OFADD__(v191, v192))
          {
            goto LABEL_182;
          }

          v194 = v189;
          if (v27[3] >= v193)
          {
            if (v183)
            {
              if ((v189 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v194 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

LABEL_94:

            v27 = v604;
            v404 = *(v604 + 56) + 40 * v190;
            __swift_destroy_boxed_opaque_existential_1(v404);
            sub_1D5B63F14(&v612, v404);
            goto LABEL_168;
          }

          sub_1D5D6597C(v193, v183);
          v195 = sub_1D5B69D90(v180, v182);
          if ((v194 & 1) == (v196 & 1))
          {
            v190 = v195;
            if ((v194 & 1) == 0)
            {
LABEL_139:
              v27 = v604;
              v465 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v466 = MEMORY[0x1EEE9AC00](v465, v465);
              v468 = (v562 - ((v467 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v469 + 16))(v468, v466);
              v610 = &type metadata for FeedOptionList;
              v611 = &protocol witness table for FeedOptionList;
              v608 = *v468;
              v27[(v190 >> 6) + 8] |= 1 << v190;
              v470 = (v27[6] + 16 * v190);
              *v470 = v180;
              v470[1] = v182;
              sub_1D5B63F14(&v608, v27[7] + 40 * v190);
              v471 = v27[2];
              v422 = __OFADD__(v471, 1);
              v472 = v471 + 1;
              if (!v422)
              {
                v27[2] = v472;
                __swift_destroy_boxed_opaque_existential_1(&v612);
                v17 = v578;
                goto LABEL_168;
              }

              goto LABEL_206;
            }

            goto LABEL_94;
          }

          goto LABEL_208;
        case 3:
          v197 = v572;
          sub_1D5D65494(v17, v572, type metadata accessor for FeedWeather);
          v198 = v566;
          *(&v590 + 1) = v566;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v197, boxed_opaque_existential_1, type metadata accessor for FeedWeather);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v200 = sub_1D7264C5C();
          v202 = v201;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v198;
          *&v591 = &protocol witness table for FeedWeather;
          v203 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v197, v203, type metadata accessor for FeedWeather);
          sub_1D5B63F14(&v589, &v586);
          v204 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v205 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v206 = MEMORY[0x1EEE9AC00](v205, v205);
          v208 = v562 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v209 + 16))(v208, v206);
          v614 = v198;
          v615 = &protocol witness table for FeedWeather;
          v210 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v208, v210, type metadata accessor for FeedWeather);
          v212 = sub_1D5B69D90(v200, v202);
          v213 = v27[2];
          v214 = (v211 & 1) == 0;
          v215 = v213 + v214;
          if (__OFADD__(v213, v214))
          {
            goto LABEL_190;
          }

          v216 = v211;
          if (v27[3] >= v215)
          {
            v17 = v578;
            if (v204)
            {
              if ((v211 & 1) == 0)
              {
                goto LABEL_142;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v216 & 1) == 0)
              {
                goto LABEL_142;
              }
            }

LABEL_97:

            v27 = v604;
            v405 = *(v604 + 56) + 40 * v212;
            __swift_destroy_boxed_opaque_existential_1(v405);
            sub_1D5B63F14(&v612, v405);
            sub_1D5D5113C(v572, type metadata accessor for FeedWeather);
            goto LABEL_144;
          }

          sub_1D5D6597C(v215, v204);
          v217 = sub_1D5B69D90(v200, v202);
          v17 = v578;
          if ((v216 & 1) == (v218 & 1))
          {
            v212 = v217;
            if ((v216 & 1) == 0)
            {
LABEL_142:
              v27 = v604;
              v473 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v474 = MEMORY[0x1EEE9AC00](v473, v473);
              v476 = v562 - ((v475 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v477 + 16))(v476, v474);
              v610 = v566;
              v611 = &protocol witness table for FeedWeather;
              v478 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v476, v478, type metadata accessor for FeedWeather);
              v27[(v212 >> 6) + 8] |= 1 << v212;
              v479 = (v27[6] + 16 * v212);
              *v479 = v200;
              v479[1] = v202;
              sub_1D5B63F14(&v608, v27[7] + 40 * v212);
              sub_1D5D5113C(v572, type metadata accessor for FeedWeather);
              v480 = v27[2];
              v422 = __OFADD__(v480, 1);
              v423 = v480 + 1;
              if (!v422)
              {
LABEL_143:
                v27[2] = v423;
                __swift_destroy_boxed_opaque_existential_1(&v612);
                goto LABEL_144;
              }

              goto LABEL_199;
            }

            goto LABEL_97;
          }

          goto LABEL_208;
        case 4:
          v78 = *(v17 + 13);
          v600 = *(v17 + 12);
          v601 = v78;
          v602 = *(v17 + 14);
          v603 = *(v17 + 30);
          v79 = *(v17 + 9);
          v596[1] = *(v17 + 8);
          v597 = v79;
          v80 = *(v17 + 11);
          v598 = *(v17 + 10);
          v599 = v80;
          v81 = *(v17 + 5);
          v593 = *(v17 + 4);
          v594 = v81;
          v82 = *(v17 + 7);
          v595 = *(v17 + 6);
          v596[0] = v82;
          v83 = *(v17 + 1);
          v589 = *v17;
          v590 = v83;
          v84 = *(v17 + 3);
          v591 = *(v17 + 2);
          v592 = v84;
          v614 = &type metadata for FeedPaywall;
          v85 = swift_allocObject();
          *&v612 = v85;
          v86 = *(v17 + 13);
          *(v85 + 208) = *(v17 + 12);
          *(v85 + 224) = v86;
          *(v85 + 240) = *(v17 + 14);
          *(v85 + 256) = *(v17 + 30);
          v87 = *(v17 + 9);
          *(v85 + 144) = *(v17 + 8);
          *(v85 + 160) = v87;
          v88 = *(v17 + 11);
          *(v85 + 176) = *(v17 + 10);
          *(v85 + 192) = v88;
          v89 = *(v17 + 5);
          *(v85 + 80) = *(v17 + 4);
          *(v85 + 96) = v89;
          v90 = *(v17 + 7);
          *(v85 + 112) = *(v17 + 6);
          *(v85 + 128) = v90;
          v91 = *(v17 + 1);
          *(v85 + 16) = *v17;
          *(v85 + 32) = v91;
          v92 = *(v17 + 3);
          *(v85 + 48) = *(v17 + 2);
          *(v85 + 64) = v92;
          __swift_project_boxed_opaque_existential_1(&v612, &type metadata for FeedPaywall);
          swift_getDynamicType();
          sub_1D62DAD08(&v589, &v586);
          v93 = sub_1D7264C5C();
          v95 = v94;
          __swift_destroy_boxed_opaque_existential_1(&v612);
          v614 = &type metadata for FeedPaywall;
          v615 = &protocol witness table for FeedPaywall;
          v96 = swift_allocObject();
          *&v612 = v96;
          v97 = v601;
          *(v96 + 208) = v600;
          *(v96 + 224) = v97;
          *(v96 + 240) = v602;
          *(v96 + 256) = v603;
          v98 = v597;
          *(v96 + 144) = v596[1];
          *(v96 + 160) = v98;
          v99 = v599;
          *(v96 + 176) = v598;
          *(v96 + 192) = v99;
          v100 = v594;
          *(v96 + 80) = v593;
          *(v96 + 96) = v100;
          v101 = v596[0];
          *(v96 + 112) = v595;
          *(v96 + 128) = v101;
          v102 = v590;
          *(v96 + 16) = v589;
          *(v96 + 32) = v102;
          v103 = v592;
          *(v96 + 48) = v591;
          *(v96 + 64) = v103;
          sub_1D5B63F14(&v612, &v608);
          sub_1D62DAD08(&v589, &v586);
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v607 = v27;
          v105 = __swift_mutable_project_boxed_opaque_existential_1(&v608, v610);
          v565 = v562;
          v106 = MEMORY[0x1EEE9AC00](v105, v105);
          v108 = v562 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v109 + 16))(v108, v106);
          v587 = &type metadata for FeedPaywall;
          v588 = &protocol witness table for FeedPaywall;
          v110 = swift_allocObject();
          *&v586 = v110;
          v111 = *(v108 + 13);
          *(v110 + 208) = *(v108 + 12);
          *(v110 + 224) = v111;
          *(v110 + 240) = *(v108 + 14);
          *(v110 + 256) = *(v108 + 30);
          v112 = *(v108 + 9);
          *(v110 + 144) = *(v108 + 8);
          *(v110 + 160) = v112;
          v113 = *(v108 + 11);
          *(v110 + 176) = *(v108 + 10);
          *(v110 + 192) = v113;
          v114 = *(v108 + 5);
          *(v110 + 80) = *(v108 + 4);
          *(v110 + 96) = v114;
          v115 = *(v108 + 7);
          *(v110 + 112) = *(v108 + 6);
          *(v110 + 128) = v115;
          v116 = *(v108 + 1);
          *(v110 + 16) = *v108;
          *(v110 + 32) = v116;
          v117 = *(v108 + 3);
          *(v110 + 48) = *(v108 + 2);
          *(v110 + 64) = v117;
          v119 = sub_1D5B69D90(v93, v95);
          v120 = v27[2];
          v121 = (v118 & 1) == 0;
          v122 = v120 + v121;
          if (__OFADD__(v120, v121))
          {
            goto LABEL_184;
          }

          v123 = v118;
          if (v27[3] >= v122)
          {
            if (v104)
            {
              if ((v118 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v123 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            goto LABEL_85;
          }

          sub_1D5D6597C(v122, v104);
          v124 = sub_1D5B69D90(v93, v95);
          if ((v123 & 1) == (v125 & 1))
          {
            v119 = v124;
            if ((v123 & 1) == 0)
            {
LABEL_127:
              v27 = v607;
              v424 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
              v425 = MEMORY[0x1EEE9AC00](v424, v424);
              v427 = v562 - ((v426 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v428 + 16))(v427, v425);
              v605 = &type metadata for FeedPaywall;
              v606 = &protocol witness table for FeedPaywall;
              v429 = swift_allocObject();
              *&v604 = v429;
              v430 = *(v427 + 13);
              *(v429 + 208) = *(v427 + 12);
              *(v429 + 224) = v430;
              *(v429 + 240) = *(v427 + 14);
              *(v429 + 256) = *(v427 + 30);
              v431 = *(v427 + 9);
              *(v429 + 144) = *(v427 + 8);
              *(v429 + 160) = v431;
              v432 = *(v427 + 11);
              *(v429 + 176) = *(v427 + 10);
              *(v429 + 192) = v432;
              v433 = *(v427 + 5);
              *(v429 + 80) = *(v427 + 4);
              *(v429 + 96) = v433;
              v434 = *(v427 + 7);
              *(v429 + 112) = *(v427 + 6);
              *(v429 + 128) = v434;
              v435 = *(v427 + 1);
              *(v429 + 16) = *v427;
              *(v429 + 32) = v435;
              v436 = *(v427 + 3);
              *(v429 + 48) = *(v427 + 2);
              *(v429 + 64) = v436;
              v27[(v119 >> 6) + 8] |= 1 << v119;
              v437 = (v27[6] + 16 * v119);
              *v437 = v93;
              v437[1] = v95;
              sub_1D5B63F14(&v604, v27[7] + 40 * v119);
              sub_1D5F2DFAC(&v589);
              v438 = v27[2];
              v422 = __OFADD__(v438, 1);
              v439 = v438 + 1;
              if (!v422)
              {
                v27[2] = v439;
                __swift_destroy_boxed_opaque_existential_1(&v586);
                v17 = v578;
                goto LABEL_129;
              }

LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
              goto LABEL_202;
            }

LABEL_85:

            v27 = v607;
            v401 = v607[7] + 40 * v119;
            __swift_destroy_boxed_opaque_existential_1(v401);
            sub_1D5B63F14(&v586, v401);
            sub_1D5F2DFAC(&v589);
LABEL_129:
            v25 = v579;
            v21 = v580;
            v24 = v585;
            v440 = &v608;
            goto LABEL_173;
          }

          goto LABEL_208;
        case 5:
          v276 = v573;
          sub_1D5D65494(v17, v573, type metadata accessor for FeedHeadline);
          v277 = v567;
          *(&v590 + 1) = v567;
          v278 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v276, v278, type metadata accessor for FeedHeadline);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v279 = sub_1D7264C5C();
          v281 = v280;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v277;
          *&v591 = &protocol witness table for FeedHeadline;
          v282 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v276, v282, type metadata accessor for FeedHeadline);
          sub_1D5B63F14(&v589, &v586);
          v283 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v284 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v285 = MEMORY[0x1EEE9AC00](v284, v284);
          v287 = v562 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v288 + 16))(v287, v285);
          v614 = v277;
          v615 = &protocol witness table for FeedHeadline;
          v289 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v287, v289, type metadata accessor for FeedHeadline);
          v291 = sub_1D5B69D90(v279, v281);
          v292 = v27[2];
          v293 = (v290 & 1) == 0;
          v294 = v292 + v293;
          if (__OFADD__(v292, v293))
          {
            goto LABEL_183;
          }

          v295 = v290;
          if (v27[3] >= v294)
          {
            v17 = v578;
            if (v283)
            {
              if ((v290 & 1) == 0)
              {
                goto LABEL_158;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v295 & 1) == 0)
              {
                goto LABEL_158;
              }
            }

            goto LABEL_109;
          }

          sub_1D5D6597C(v294, v283);
          v296 = sub_1D5B69D90(v279, v281);
          v17 = v578;
          if ((v295 & 1) == (v297 & 1))
          {
            v291 = v296;
            if ((v295 & 1) == 0)
            {
LABEL_158:
              v27 = v604;
              v514 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v515 = MEMORY[0x1EEE9AC00](v514, v514);
              v517 = v562 - ((v516 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v518 + 16))(v517, v515);
              v610 = v567;
              v611 = &protocol witness table for FeedHeadline;
              v519 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v517, v519, type metadata accessor for FeedHeadline);
              v27[(v291 >> 6) + 8] |= 1 << v291;
              v520 = (v27[6] + 16 * v291);
              *v520 = v279;
              v520[1] = v281;
              sub_1D5B63F14(&v608, v27[7] + 40 * v291);
              sub_1D5D5113C(v573, type metadata accessor for FeedHeadline);
              v521 = v27[2];
              v422 = __OFADD__(v521, 1);
              v449 = v521 + 1;
              if (!v422)
              {
                goto LABEL_167;
              }

              goto LABEL_196;
            }

LABEL_109:

            v27 = v604;
            v409 = *(v604 + 56) + 40 * v291;
            __swift_destroy_boxed_opaque_existential_1(v409);
            sub_1D5B63F14(&v612, v409);
            sub_1D5D5113C(v573, type metadata accessor for FeedHeadline);
            goto LABEL_168;
          }

          goto LABEL_208;
        case 6:
          v320 = v574;
          sub_1D5D65494(v17, v574, type metadata accessor for FeedWebEmbed);
          v321 = v568;
          *(&v590 + 1) = v568;
          v322 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v320, v322, type metadata accessor for FeedWebEmbed);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v323 = sub_1D7264C5C();
          v325 = v324;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v321;
          *&v591 = &protocol witness table for FeedWebEmbed;
          v326 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v320, v326, type metadata accessor for FeedWebEmbed);
          sub_1D5B63F14(&v589, &v586);
          v327 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v328 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v329 = MEMORY[0x1EEE9AC00](v328, v328);
          v331 = v562 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v332 + 16))(v331, v329);
          v614 = v321;
          v615 = &protocol witness table for FeedWebEmbed;
          v333 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v331, v333, type metadata accessor for FeedWebEmbed);
          v335 = sub_1D5B69D90(v323, v325);
          v336 = v27[2];
          v337 = (v334 & 1) == 0;
          v338 = v336 + v337;
          if (__OFADD__(v336, v337))
          {
            goto LABEL_186;
          }

          v339 = v334;
          if (v27[3] >= v338)
          {
            v17 = v578;
            if (v327)
            {
              if ((v334 & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v339 & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            goto LABEL_115;
          }

          sub_1D5D6597C(v338, v327);
          v340 = sub_1D5B69D90(v323, v325);
          v17 = v578;
          if ((v339 & 1) == (v341 & 1))
          {
            v335 = v340;
            if ((v339 & 1) == 0)
            {
LABEL_166:
              v27 = v604;
              v530 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v531 = MEMORY[0x1EEE9AC00](v530, v530);
              v533 = v562 - ((v532 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v534 + 16))(v533, v531);
              v610 = v568;
              v611 = &protocol witness table for FeedWebEmbed;
              v535 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v533, v535, type metadata accessor for FeedWebEmbed);
              v27[(v335 >> 6) + 8] |= 1 << v335;
              v536 = (v27[6] + 16 * v335);
              *v536 = v323;
              v536[1] = v325;
              sub_1D5B63F14(&v608, v27[7] + 40 * v335);
              sub_1D5D5113C(v574, type metadata accessor for FeedWebEmbed);
              v537 = v27[2];
              v422 = __OFADD__(v537, 1);
              v449 = v537 + 1;
              if (!v422)
              {
                goto LABEL_167;
              }

LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

LABEL_115:

            v27 = v604;
            v411 = *(v604 + 56) + 40 * v335;
            __swift_destroy_boxed_opaque_existential_1(v411);
            sub_1D5B63F14(&v612, v411);
            sub_1D5D5113C(v574, type metadata accessor for FeedWebEmbed);
            goto LABEL_168;
          }

          goto LABEL_208;
        case 7:
          v219 = *v17;
          *(&v590 + 1) = &type metadata for FeedDescriptor;
          *&v589 = v219;
          __swift_project_boxed_opaque_existential_1(&v589, &type metadata for FeedDescriptor);
          swift_getDynamicType();
          v220 = v219;
          v565 = sub_1D7264C5C();
          v222 = v221;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = &type metadata for FeedDescriptor;
          *&v591 = &protocol witness table for FeedDescriptor;
          *&v589 = v220;
          sub_1D5B63F14(&v589, &v586);
          v223 = v220;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v225 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v564 = v562;
          v226 = MEMORY[0x1EEE9AC00](v225, v225);
          v228 = (v562 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v229 + 16))(v228, v226);
          v230 = *v228;
          v614 = &type metadata for FeedDescriptor;
          v615 = &protocol witness table for FeedDescriptor;
          v231 = v565;
          *&v612 = v230;
          v233 = sub_1D5B69D90(v565, v222);
          v234 = v27[2];
          v235 = (v232 & 1) == 0;
          v236 = v234 + v235;
          if (__OFADD__(v234, v235))
          {
            goto LABEL_181;
          }

          v237 = v232;
          if (v27[3] >= v236)
          {
            if (v224)
            {
              if (v232)
              {
                goto LABEL_100;
              }
            }

            else
            {
              sub_1D6D80304();
              if (v237)
              {
                goto LABEL_100;
              }
            }

LABEL_146:
            v27 = v604;
            v481 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
            v482 = MEMORY[0x1EEE9AC00](v481, v481);
            v484 = (v562 - ((v483 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v485 + 16))(v484, v482);
            v486 = *v484;
            v611 = &protocol witness table for FeedDescriptor;
            v610 = &type metadata for FeedDescriptor;
            *&v608 = v486;
            v27[(v233 >> 6) + 8] |= 1 << v233;
            v487 = (v27[6] + 16 * v233);
            *v487 = v231;
            v487[1] = v222;
            sub_1D5B63F14(&v608, v27[7] + 40 * v233);

            v488 = v27[2];
            v422 = __OFADD__(v488, 1);
            v489 = v488 + 1;
            if (v422)
            {
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
              goto LABEL_207;
            }

            v27[2] = v489;
            __swift_destroy_boxed_opaque_existential_1(&v612);
            v17 = v578;
LABEL_148:
            v25 = v579;
            v21 = v580;
            v24 = v585;
            goto LABEL_152;
          }

          sub_1D5D6597C(v236, v224);
          v238 = sub_1D5B69D90(v231, v222);
          if ((v237 & 1) == (v239 & 1))
          {
            v233 = v238;
            if ((v237 & 1) == 0)
            {
              goto LABEL_146;
            }

LABEL_100:

            v27 = v604;
            v406 = *(v604 + 56) + 40 * v233;
            __swift_destroy_boxed_opaque_existential_1(v406);
            sub_1D5B63F14(&v612, v406);

            goto LABEL_148;
          }

          goto LABEL_208;
        case 8:
          v371 = *v17;
          v370 = *(v17 + 1);
          v372 = v17;
          v373 = *(v17 + 2);
          v374 = *(v17 + 3);
          v375 = v372[32];
          *(&v590 + 1) = &type metadata for FeedSportsEvent;
          v376 = swift_allocObject();
          *&v589 = v376;
          *(v376 + 16) = v371;
          *(v376 + 24) = v370;
          *(v376 + 32) = v373;
          *(v376 + 40) = v374;
          *(v376 + 48) = v375;
          __swift_project_boxed_opaque_existential_1(&v589, &type metadata for FeedSportsEvent);
          swift_getDynamicType();

          swift_unknownObjectRetain();
          v377 = sub_1D7264C5C();
          v564 = v378;
          v565 = v377;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = &type metadata for FeedSportsEvent;
          *&v591 = &protocol witness table for FeedSportsEvent;
          v379 = swift_allocObject();
          *&v589 = v379;
          *(v379 + 16) = v371;
          *(v379 + 24) = v370;
          *(v379 + 32) = v373;
          *(v379 + 40) = v374;
          *(v379 + 48) = v375;
          sub_1D5B63F14(&v589, &v586);

          swift_unknownObjectRetain();
          v380 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v381 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v563 = v562;
          v382 = MEMORY[0x1EEE9AC00](v381, v381);
          v384 = v562 - ((v383 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v385 + 16))(v384, v382);
          v386 = *v384;
          v387 = *(v384 + 3);
          v388 = v384[32];
          v614 = &type metadata for FeedSportsEvent;
          v615 = &protocol witness table for FeedSportsEvent;
          v389 = swift_allocObject();
          *&v612 = v389;
          *(v389 + 16) = v386;
          *(v389 + 24) = *(v384 + 8);
          *(v389 + 40) = v387;
          *(v389 + 48) = v388;
          v390 = v564;
          v391 = v565;
          v393 = sub_1D5B69D90(v565, v564);
          v394 = v27[2];
          v395 = (v392 & 1) == 0;
          v396 = v394 + v395;
          if (__OFADD__(v394, v395))
          {
            goto LABEL_180;
          }

          v397 = v392;
          if (v27[3] >= v396)
          {
            if (v380)
            {
              if (v392)
              {
                goto LABEL_121;
              }
            }

            else
            {
              sub_1D6D80304();
              if (v397)
              {
                goto LABEL_121;
              }
            }
          }

          else
          {
            sub_1D5D6597C(v396, v380);
            v398 = sub_1D5B69D90(v391, v390);
            if ((v397 & 1) != (v399 & 1))
            {
              goto LABEL_208;
            }

            v393 = v398;
            if (v397)
            {
LABEL_121:

              v27 = v604;
              v413 = *(v604 + 56) + 40 * v393;
              __swift_destroy_boxed_opaque_existential_1(v413);
              sub_1D5B63F14(&v612, v413);
              swift_unknownObjectRelease();

              goto LABEL_177;
            }
          }

          v27 = v604;
          v548 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
          v562[1] = v562;
          v549 = MEMORY[0x1EEE9AC00](v548, v548);
          v551 = v562 - ((v550 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v552 + 16))(v551, v549);
          v553 = *v551;
          v554 = *(v551 + 3);
          v555 = v551[32];
          v610 = &type metadata for FeedSportsEvent;
          v611 = &protocol witness table for FeedSportsEvent;
          v556 = swift_allocObject();
          *&v608 = v556;
          *(v556 + 16) = v553;
          *(v556 + 24) = *(v551 + 8);
          *(v556 + 40) = v554;
          *(v556 + 48) = v555;
          v27[(v393 >> 6) + 8] |= 1 << v393;
          v557 = (v27[6] + 16 * v393);
          v558 = v564;
          *v557 = v565;
          v557[1] = v558;
          sub_1D5B63F14(&v608, v27[7] + 40 * v393);
          swift_unknownObjectRelease();

          v559 = v27[2];
          v422 = __OFADD__(v559, 1);
          v560 = v559 + 1;
          if (v422)
          {
            goto LABEL_195;
          }

          v27[2] = v560;
          __swift_destroy_boxed_opaque_existential_1(&v612);
LABEL_177:
          v17 = v578;
          v25 = v579;
          v21 = v580;
          v24 = v585;
          __swift_destroy_boxed_opaque_existential_1(&v586);
          goto LABEL_4;
        case 9:
          v148 = *(v17 + 11);
          v598 = *(v17 + 10);
          v599 = v148;
          v600 = *(v17 + 12);
          v149 = *(v17 + 7);
          v595 = *(v17 + 6);
          v596[0] = v149;
          v150 = *(v17 + 9);
          v596[1] = *(v17 + 8);
          v597 = v150;
          v151 = *(v17 + 3);
          v591 = *(v17 + 2);
          v592 = v151;
          v152 = *(v17 + 5);
          v593 = *(v17 + 4);
          v594 = v152;
          v153 = *(v17 + 1);
          v589 = *v17;
          v590 = v153;
          v587 = &type metadata for FeedPuzzle;
          *&v586 = swift_allocObject();
          sub_1D5F2DEAC(&v589, v586 + 16);
          __swift_project_boxed_opaque_existential_1(&v586, v587);
          swift_getDynamicType();
          v154 = sub_1D7264C5C();
          v156 = v155;
          __swift_destroy_boxed_opaque_existential_1(&v586);
          v587 = &type metadata for FeedPuzzle;
          v588 = &protocol witness table for FeedPuzzle;
          *&v586 = swift_allocObject();
          sub_1D5F2DEAC(&v589, v586 + 16);
          sub_1D5B63F14(&v586, &v612);
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v607 = v27;
          v158 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
          v565 = v562;
          v159 = MEMORY[0x1EEE9AC00](v158, v158);
          v161 = (v562 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v162 + 16))(v161, v159);
          v610 = &type metadata for FeedPuzzle;
          v611 = &protocol witness table for FeedPuzzle;
          v163 = swift_allocObject();
          *&v608 = v163;
          v164 = v161[11];
          v163[11] = v161[10];
          v163[12] = v164;
          v163[13] = v161[12];
          v165 = v161[7];
          v163[7] = v161[6];
          v163[8] = v165;
          v166 = v161[9];
          v163[9] = v161[8];
          v163[10] = v166;
          v167 = v161[3];
          v163[3] = v161[2];
          v163[4] = v167;
          v168 = v161[5];
          v163[5] = v161[4];
          v163[6] = v168;
          v169 = v161[1];
          v163[1] = *v161;
          v163[2] = v169;
          v171 = sub_1D5B69D90(v154, v156);
          v172 = v27[2];
          v173 = (v170 & 1) == 0;
          v174 = v172 + v173;
          if (__OFADD__(v172, v173))
          {
            goto LABEL_191;
          }

          v175 = v170;
          if (v27[3] >= v174)
          {
            if (v157)
            {
              if (v170)
              {
                goto LABEL_91;
              }
            }

            else
            {
              sub_1D6D80304();
              if (v175)
              {
                goto LABEL_91;
              }
            }

LABEL_135:
            v27 = v607;
            v450 = __swift_mutable_project_boxed_opaque_existential_1(&v608, v610);
            v451 = MEMORY[0x1EEE9AC00](v450, v450);
            v453 = (v562 - ((v452 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v454 + 16))(v453, v451);
            v605 = &type metadata for FeedPuzzle;
            v606 = &protocol witness table for FeedPuzzle;
            v455 = swift_allocObject();
            *&v604 = v455;
            v456 = v453[11];
            v455[11] = v453[10];
            v455[12] = v456;
            v455[13] = v453[12];
            v457 = v453[7];
            v455[7] = v453[6];
            v455[8] = v457;
            v458 = v453[9];
            v455[9] = v453[8];
            v455[10] = v458;
            v459 = v453[3];
            v455[3] = v453[2];
            v455[4] = v459;
            v460 = v453[5];
            v455[5] = v453[4];
            v455[6] = v460;
            v461 = v453[1];
            v455[1] = *v453;
            v455[2] = v461;
            v27[(v171 >> 6) + 8] |= 1 << v171;
            v462 = (v27[6] + 16 * v171);
            *v462 = v154;
            v462[1] = v156;
            sub_1D5B63F14(&v604, v27[7] + 40 * v171);
            sub_1D5F2DF58(&v589);
            v463 = v27[2];
            v422 = __OFADD__(v463, 1);
            v464 = v463 + 1;
            if (v422)
            {
LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v27[2] = v464;
            __swift_destroy_boxed_opaque_existential_1(&v608);
            v17 = v578;
LABEL_137:
            v25 = v579;
            v21 = v580;
            v24 = v585;
            v440 = &v612;
            goto LABEL_173;
          }

          sub_1D5D6597C(v174, v157);
          v176 = sub_1D5B69D90(v154, v156);
          if ((v175 & 1) == (v177 & 1))
          {
            v171 = v176;
            if ((v175 & 1) == 0)
            {
              goto LABEL_135;
            }

LABEL_91:

            v27 = v607;
            v403 = v607[7] + 40 * v171;
            __swift_destroy_boxed_opaque_existential_1(v403);
            sub_1D5B63F14(&v608, v403);
            sub_1D5F2DF58(&v589);
            goto LABEL_137;
          }

          goto LABEL_208;
        case 10:
          v342 = *(v17 + 1);
          v589 = *v17;
          v590 = v342;
          v343 = *(v17 + 3);
          v591 = *(v17 + 2);
          v592 = v343;
          v614 = &type metadata for FeedPuzzleType;
          v344 = swift_allocObject();
          *&v612 = v344;
          v345 = *(v17 + 1);
          v344[1] = *v17;
          v344[2] = v345;
          v346 = *(v17 + 3);
          v344[3] = *(v17 + 2);
          v344[4] = v346;
          __swift_project_boxed_opaque_existential_1(&v612, &type metadata for FeedPuzzleType);
          swift_getDynamicType();
          sub_1D63071F4(&v589, &v586);
          v347 = sub_1D7264C5C();
          v349 = v348;
          __swift_destroy_boxed_opaque_existential_1(&v612);
          v614 = &type metadata for FeedPuzzleType;
          v615 = &protocol witness table for FeedPuzzleType;
          v350 = swift_allocObject();
          *&v612 = v350;
          v351 = v590;
          v350[1] = v589;
          v350[2] = v351;
          v352 = v592;
          v350[3] = v591;
          v350[4] = v352;
          sub_1D5B63F14(&v612, &v608);
          sub_1D63071F4(&v589, &v586);
          v353 = swift_isUniquelyReferenced_nonNull_native();
          v607 = v27;
          v354 = __swift_mutable_project_boxed_opaque_existential_1(&v608, v610);
          v565 = v562;
          v355 = MEMORY[0x1EEE9AC00](v354, v354);
          v357 = (v562 - ((v356 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v358 + 16))(v357, v355);
          v587 = &type metadata for FeedPuzzleType;
          v588 = &protocol witness table for FeedPuzzleType;
          v359 = swift_allocObject();
          *&v586 = v359;
          v360 = v357[1];
          v359[1] = *v357;
          v359[2] = v360;
          v361 = v357[3];
          v359[3] = v357[2];
          v359[4] = v361;
          v363 = sub_1D5B69D90(v347, v349);
          v364 = v27[2];
          v365 = (v362 & 1) == 0;
          v366 = v364 + v365;
          if (__OFADD__(v364, v365))
          {
            goto LABEL_187;
          }

          v367 = v362;
          if (v27[3] >= v366)
          {
            if (v353)
            {
              if ((v362 & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v367 & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            goto LABEL_118;
          }

          sub_1D5D6597C(v366, v353);
          v368 = sub_1D5B69D90(v347, v349);
          if ((v367 & 1) == (v369 & 1))
          {
            v363 = v368;
            if ((v367 & 1) == 0)
            {
LABEL_170:
              v27 = v607;
              v538 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
              v539 = MEMORY[0x1EEE9AC00](v538, v538);
              v541 = (v562 - ((v540 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v542 + 16))(v541, v539);
              v605 = &type metadata for FeedPuzzleType;
              v606 = &protocol witness table for FeedPuzzleType;
              v543 = swift_allocObject();
              *&v604 = v543;
              v544 = v541[3];
              v543[3] = v541[2];
              v543[4] = v544;
              v545 = v541[1];
              v543[1] = *v541;
              v543[2] = v545;
              v27[(v363 >> 6) + 8] |= 1 << v363;
              v546 = (v27[6] + 16 * v363);
              *v546 = v347;
              v546[1] = v349;
              sub_1D5B63F14(&v604, v27[7] + 40 * v363);
              sub_1D5F2DE58(&v589);
              v547 = v27[2];
              v422 = __OFADD__(v547, 1);
              v513 = v547 + 1;
              if (!v422)
              {
                goto LABEL_171;
              }

              goto LABEL_204;
            }

LABEL_118:

            v27 = v607;
            v412 = v607[7] + 40 * v363;
            __swift_destroy_boxed_opaque_existential_1(v412);
            sub_1D5B63F14(&v586, v412);
            sub_1D5F2DE58(&v589);
            goto LABEL_172;
          }

          goto LABEL_208;
        case 11:
          v56 = v575;
          sub_1D5D65494(v17, v575, type metadata accessor for FeedPuzzleStatistic);
          v57 = v569;
          *(&v590 + 1) = v569;
          v58 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v56, v58, type metadata accessor for FeedPuzzleStatistic);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v59 = sub_1D7264C5C();
          v61 = v60;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v57;
          *&v591 = &protocol witness table for FeedPuzzleStatistic;
          v62 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v56, v62, type metadata accessor for FeedPuzzleStatistic);
          sub_1D5B63F14(&v589, &v586);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v64 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v65 = MEMORY[0x1EEE9AC00](v64, v64);
          v67 = v562 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v68 + 16))(v67, v65);
          v614 = v57;
          v615 = &protocol witness table for FeedPuzzleStatistic;
          v69 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v67, v69, type metadata accessor for FeedPuzzleStatistic);
          v71 = sub_1D5B69D90(v59, v61);
          v72 = v27[2];
          v73 = (v70 & 1) == 0;
          v74 = v72 + v73;
          if (__OFADD__(v72, v73))
          {
            goto LABEL_189;
          }

          v75 = v70;
          if (v27[3] >= v74)
          {
            v17 = v578;
            if (v63)
            {
              if ((v70 & 1) == 0)
              {
                goto LABEL_123;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v75 & 1) == 0)
              {
                goto LABEL_123;
              }
            }

            goto LABEL_82;
          }

          sub_1D5D6597C(v74, v63);
          v76 = sub_1D5B69D90(v59, v61);
          v17 = v578;
          if ((v75 & 1) == (v77 & 1))
          {
            v71 = v76;
            if ((v75 & 1) == 0)
            {
LABEL_123:
              v27 = v604;
              v414 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v415 = MEMORY[0x1EEE9AC00](v414, v414);
              v417 = v562 - ((v416 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v418 + 16))(v417, v415);
              v610 = v569;
              v611 = &protocol witness table for FeedPuzzleStatistic;
              v419 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v417, v419, type metadata accessor for FeedPuzzleStatistic);
              v27[(v71 >> 6) + 8] |= 1 << v71;
              v420 = (v27[6] + 16 * v71);
              *v420 = v59;
              v420[1] = v61;
              sub_1D5B63F14(&v608, v27[7] + 40 * v71);
              sub_1D5D5113C(v575, type metadata accessor for FeedPuzzleStatistic);
              v421 = v27[2];
              v422 = __OFADD__(v421, 1);
              v423 = v421 + 1;
              if (!v422)
              {
                goto LABEL_143;
              }

              goto LABEL_200;
            }

LABEL_82:

            v27 = v604;
            v400 = *(v604 + 56) + 40 * v71;
            __swift_destroy_boxed_opaque_existential_1(v400);
            sub_1D5B63F14(&v612, v400);
            sub_1D5D5113C(v575, type metadata accessor for FeedPuzzleStatistic);
LABEL_144:
            v25 = v579;
            v21 = v580;
            v24 = v585;
            goto LABEL_152;
          }

          goto LABEL_208;
        case 12:
          v126 = v576;
          sub_1D5D65494(v17, v576, type metadata accessor for FeedSponsorshipBannerAd);
          v127 = v570;
          *(&v590 + 1) = v570;
          v128 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v126, v128, type metadata accessor for FeedSponsorshipBannerAd);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v129 = sub_1D7264C5C();
          v131 = v130;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v127;
          *&v591 = &protocol witness table for FeedSponsorshipBannerAd;
          v132 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v126, v132, type metadata accessor for FeedSponsorshipBannerAd);
          sub_1D5B63F14(&v589, &v586);
          v133 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v134 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v135 = MEMORY[0x1EEE9AC00](v134, v134);
          v137 = v562 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v138 + 16))(v137, v135);
          v614 = v127;
          v615 = &protocol witness table for FeedSponsorshipBannerAd;
          v139 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v137, v139, type metadata accessor for FeedSponsorshipBannerAd);
          v141 = sub_1D5B69D90(v129, v131);
          v142 = v27[2];
          v143 = (v140 & 1) == 0;
          v144 = v142 + v143;
          if (__OFADD__(v142, v143))
          {
            goto LABEL_193;
          }

          v145 = v140;
          if (v27[3] >= v144)
          {
            v17 = v578;
            if (v133)
            {
              if ((v140 & 1) == 0)
              {
                goto LABEL_131;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v145 & 1) == 0)
              {
                goto LABEL_131;
              }
            }

            goto LABEL_88;
          }

          sub_1D5D6597C(v144, v133);
          v146 = sub_1D5B69D90(v129, v131);
          v17 = v578;
          if ((v145 & 1) == (v147 & 1))
          {
            v141 = v146;
            if ((v145 & 1) == 0)
            {
LABEL_131:
              v27 = v604;
              v441 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v442 = MEMORY[0x1EEE9AC00](v441, v441);
              v444 = v562 - ((v443 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v445 + 16))(v444, v442);
              v610 = v570;
              v611 = &protocol witness table for FeedSponsorshipBannerAd;
              v446 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v444, v446, type metadata accessor for FeedSponsorshipBannerAd);
              v27[(v141 >> 6) + 8] |= 1 << v141;
              v447 = (v27[6] + 16 * v141);
              *v447 = v129;
              v447[1] = v131;
              sub_1D5B63F14(&v608, v27[7] + 40 * v141);
              sub_1D5D5113C(v576, type metadata accessor for FeedSponsorshipBannerAd);
              v448 = v27[2];
              v422 = __OFADD__(v448, 1);
              v449 = v448 + 1;
              if (v422)
              {
LABEL_202:
                __break(1u);
                goto LABEL_203;
              }

LABEL_167:
              v27[2] = v449;
              __swift_destroy_boxed_opaque_existential_1(&v612);
              goto LABEL_168;
            }

LABEL_88:

            v27 = v604;
            v402 = *(v604 + 56) + 40 * v141;
            __swift_destroy_boxed_opaque_existential_1(v402);
            sub_1D5B63F14(&v612, v402);
            sub_1D5D5113C(v576, type metadata accessor for FeedSponsorshipBannerAd);
LABEL_168:
            v25 = v579;
            v21 = v580;
            v24 = v585;
            v440 = &v586;
            goto LABEL_173;
          }

          goto LABEL_208;
        case 13:
          v298 = v577;
          sub_1D5D65494(v17, v577, type metadata accessor for FeedRecipe);
          v299 = v571;
          *(&v590 + 1) = v571;
          v300 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v298, v300, type metadata accessor for FeedRecipe);
          __swift_project_boxed_opaque_existential_1(&v589, *(&v590 + 1));
          swift_getDynamicType();
          v301 = sub_1D7264C5C();
          v303 = v302;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = v299;
          *&v591 = &protocol witness table for FeedRecipe;
          v304 = __swift_allocate_boxed_opaque_existential_1(&v589);
          sub_1D5D50814(v298, v304, type metadata accessor for FeedRecipe);
          sub_1D5B63F14(&v589, &v586);
          v305 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v306 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v565 = v562;
          v307 = MEMORY[0x1EEE9AC00](v306, v306);
          v309 = v562 - ((v308 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v310 + 16))(v309, v307);
          v614 = v299;
          v615 = &protocol witness table for FeedRecipe;
          v311 = __swift_allocate_boxed_opaque_existential_1(&v612);
          sub_1D5D65494(v309, v311, type metadata accessor for FeedRecipe);
          v313 = sub_1D5B69D90(v301, v303);
          v314 = v27[2];
          v315 = (v312 & 1) == 0;
          v316 = v314 + v315;
          if (__OFADD__(v314, v315))
          {
            goto LABEL_192;
          }

          v317 = v312;
          if (v27[3] >= v316)
          {
            v17 = v578;
            if (v305)
            {
              if ((v312 & 1) == 0)
              {
                goto LABEL_162;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v317 & 1) == 0)
              {
                goto LABEL_162;
              }
            }

            goto LABEL_112;
          }

          sub_1D5D6597C(v316, v305);
          v318 = sub_1D5B69D90(v301, v303);
          v17 = v578;
          if ((v317 & 1) == (v319 & 1))
          {
            v313 = v318;
            if ((v317 & 1) == 0)
            {
LABEL_162:
              v27 = v604;
              v522 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v523 = MEMORY[0x1EEE9AC00](v522, v522);
              v525 = v562 - ((v524 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v526 + 16))(v525, v523);
              v610 = v571;
              v611 = &protocol witness table for FeedRecipe;
              v527 = __swift_allocate_boxed_opaque_existential_1(&v608);
              sub_1D5D65494(v525, v527, type metadata accessor for FeedRecipe);
              v27[(v313 >> 6) + 8] |= 1 << v313;
              v528 = (v27[6] + 16 * v313);
              *v528 = v301;
              v528[1] = v303;
              sub_1D5B63F14(&v608, v27[7] + 40 * v313);
              sub_1D5D5113C(v577, type metadata accessor for FeedRecipe);
              v529 = v27[2];
              v422 = __OFADD__(v529, 1);
              v449 = v529 + 1;
              if (v422)
              {
                goto LABEL_205;
              }

              goto LABEL_167;
            }

LABEL_112:

            v27 = v604;
            v410 = *(v604 + 56) + 40 * v313;
            __swift_destroy_boxed_opaque_existential_1(v410);
            sub_1D5B63F14(&v612, v410);
            sub_1D5D5113C(v577, type metadata accessor for FeedRecipe);
            goto LABEL_168;
          }

          goto LABEL_208;
        default:
          v31 = *v17;
          v32 = *(v17 + 1);
          v33 = v17[16];
          *(&v590 + 1) = &type metadata for FeedGroupTag;
          *&v589 = v31;
          *(&v589 + 1) = v32;
          LOBYTE(v590) = v33;
          __swift_project_boxed_opaque_existential_1(&v589, &type metadata for FeedGroupTag);
          swift_getDynamicType();
          v34 = v32;
          swift_unknownObjectRetain();
          v35 = sub_1D7264C5C();
          v565 = v36;
          __swift_destroy_boxed_opaque_existential_1(&v589);
          *(&v590 + 1) = &type metadata for FeedGroupTag;
          *&v591 = &protocol witness table for FeedGroupTag;
          *&v589 = v31;
          *(&v589 + 1) = v32;
          LOBYTE(v590) = v33;
          sub_1D5B63F14(&v589, &v586);
          swift_unknownObjectRetain();
          v564 = v34;
          v37 = swift_isUniquelyReferenced_nonNull_native();
          *&v604 = v27;
          v38 = __swift_mutable_project_boxed_opaque_existential_1(&v586, v587);
          v39 = MEMORY[0x1EEE9AC00](v38, v38);
          v41 = v562 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v42 + 16))(v41, v39);
          v43 = *v41;
          v44 = *(v41 + 1);
          v45 = v41[16];
          v614 = &type metadata for FeedGroupTag;
          v615 = &protocol witness table for FeedGroupTag;
          *&v612 = v43;
          *(&v612 + 1) = v44;
          v613 = v45;
          v563 = v35;
          v46 = v35;
          v47 = v565;
          v49 = sub_1D5B69D90(v46, v565);
          v50 = v27[2];
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
          {
            goto LABEL_185;
          }

          v53 = v48;
          if (v27[3] >= v52)
          {
            v24 = v585;
            if (v37)
            {
              if ((v48 & 1) == 0)
              {
                goto LABEL_150;
              }
            }

            else
            {
              sub_1D6D80304();
              if ((v53 & 1) == 0)
              {
                goto LABEL_150;
              }
            }
          }

          else
          {
            sub_1D5D6597C(v52, v37);
            v54 = sub_1D5B69D90(v563, v47);
            v24 = v585;
            if ((v53 & 1) != (v55 & 1))
            {
LABEL_208:
              sub_1D726493C();
              __break(1u);
              JUMPOUT(0x1D5BCEB44);
            }

            v49 = v54;
            if ((v53 & 1) == 0)
            {
LABEL_150:
              v585 = v562;
              v27 = v604;
              v490 = __swift_mutable_project_boxed_opaque_existential_1(&v612, v614);
              v491 = MEMORY[0x1EEE9AC00](v490, v490);
              v493 = v562 - ((v492 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v494 + 16))(v493, v491);
              v495 = *v493;
              v496 = *(v493 + 1);
              v497 = v493[16];
              v610 = &type metadata for FeedGroupTag;
              v611 = &protocol witness table for FeedGroupTag;
              *&v608 = v495;
              *(&v608 + 1) = v496;
              v609 = v497;
              v27[(v49 >> 6) + 8] |= 1 << v49;
              v498 = (v27[6] + 16 * v49);
              *v498 = v563;
              v498[1] = v47;
              sub_1D5B63F14(&v608, v27[7] + 40 * v49);

              swift_unknownObjectRelease();
              v499 = v27[2];
              v422 = __OFADD__(v499, 1);
              v500 = v499 + 1;
              if (!v422)
              {
                v27[2] = v500;
                __swift_destroy_boxed_opaque_existential_1(&v612);
                v17 = v578;
                v25 = v579;
                v21 = v580;
                goto LABEL_152;
              }

              goto LABEL_197;
            }
          }

          v27 = v604;
          v407 = *(v604 + 56) + 40 * v49;
          __swift_destroy_boxed_opaque_existential_1(v407);
          sub_1D5B63F14(&v612, v407);

          swift_unknownObjectRelease();
          v17 = v578;
          v25 = v579;
          v21 = v580;
LABEL_152:
          v440 = &v586;
          goto LABEL_173;
      }
    }
  }

  return v27;
}

uint64_t sub_1D5BCEB7C()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5BCEBCC()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  }

  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  }

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5BCEC5C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5BCEC9C()
{

  if (*(v0 + 152) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 256) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5BCED4C()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

double FeedGroupRepresentable.feedGroupBindingOptions.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

uint64_t sub_1D5BCEE08(uint64_t a1)
{
  v70 = a1;
  v1 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BD86D4(v70, v31, type metadata accessor for FeedItem);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v39 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v39;
      v71[4] = *(v31 + 4);
      *&v71[5] = *(v31 + 10);
      v40 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v40;
      sub_1D62F4468(v71, 0, 0);
      return sub_1D6307040(v71);
    case 2:
      sub_1D5BE2F1C(v31, v27, type metadata accessor for FeedBannerAd);
      sub_1D5BD5E0C(v27, 0, 0);
      v37 = type metadata accessor for FeedBannerAd;
      v38 = v27;
      goto LABEL_16;
    case 3:
      sub_1D5BE2F1C(v31, v19, type metadata accessor for FeedHeadline);
      sub_1D5C16FA8(v19, 0, 0);
      v37 = type metadata accessor for FeedHeadline;
      v38 = v19;
      goto LABEL_16;
    case 4:
      sub_1D5BE2F1C(v31, v23, type metadata accessor for FeedWebEmbed);
      sub_1D62F477C(v23, 0, 0);
      v37 = type metadata accessor for FeedWebEmbed;
      v38 = v23;
      goto LABEL_16;
    case 5:
      v49 = *(v31 + 7);
      v71[6] = *(v31 + 6);
      v71[7] = v49;
      *(&v71[7] + 9) = *(v31 + 121);
      v50 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v50;
      v51 = *(v31 + 5);
      v71[4] = *(v31 + 4);
      v71[5] = v51;
      v52 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v52;
      sub_1D62F4AF4(v71, 0, 0);
      return sub_1D5ECF320(v71);
    case 6:
      memcpy(v71, v31, 0x11AuLL);
      sub_1D62F4E00(v71, 0, 0);
      return sub_1D5F76EF0(v71);
    case 7:
      v64 = *(v31 + 7);
      v71[6] = *(v31 + 6);
      v71[7] = v64;
      v71[8] = *(v31 + 8);
      LOBYTE(v71[9]) = v31[144];
      v65 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v65;
      v66 = *(v31 + 5);
      v71[4] = *(v31 + 4);
      v71[5] = v66;
      v67 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v67;
      sub_1D62F50EC(v71, 0, 0);
      return sub_1D5EE5B54(v71);
    case 8:
      sub_1D5BE2F1C(v31, v15, type metadata accessor for FeedCustomItem);
      sub_1D62F53AC(v15, *&v15[*(v12 + 20) + 16], *&v15[*(v12 + 20) + 24]);
      v37 = type metadata accessor for FeedCustomItem;
      v38 = v15;
      goto LABEL_16;
    case 9:
      v60 = *(v31 + 7);
      v71[6] = *(v31 + 6);
      v71[7] = v60;
      v71[8] = *(v31 + 8);
      *&v71[9] = *(v31 + 18);
      v61 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v61;
      v62 = *(v31 + 5);
      v71[4] = *(v31 + 4);
      v71[5] = v62;
      v63 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v63;
      sub_1D62F572C(v71, 0, 0);
      return sub_1D5F76DEC(v71);
    case 10:
      sub_1D5BE2F1C(v31, v11, type metadata accessor for FeedEngagementBanner);
      sub_1D62F5A0C(v11, 0, 0);
      v37 = type metadata accessor for FeedEngagementBanner;
      v38 = v11;
      goto LABEL_16;
    case 11:
      sub_1D62F41C0(*v31, 0, 0);

    case 12:
      v47 = v31;
      v48 = v69;
      sub_1D5BE2F1C(v47, v69, type metadata accessor for FeedRecipe);
      sub_1D62F6CF8(v48, 0, 0);
      v37 = type metadata accessor for FeedRecipe;
      v38 = v48;
      goto LABEL_16;
    case 13:
      v36 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v36;
      LOBYTE(v71[2]) = v31[32];
      sub_1D62F5D78(v71, 0, 0);
      return sub_1D62058A0(v71);
    case 14:
      v41 = *(v31 + 11);
      v71[10] = *(v31 + 10);
      v71[11] = v41;
      v71[12] = *(v31 + 12);
      v42 = *(v31 + 7);
      v71[6] = *(v31 + 6);
      v71[7] = v42;
      v43 = *(v31 + 9);
      v71[8] = *(v31 + 8);
      v71[9] = v43;
      v44 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v44;
      v45 = *(v31 + 5);
      v71[4] = *(v31 + 4);
      v71[5] = v45;
      v46 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v46;
      sub_1D62F606C(v71, 0, 0);
      return sub_1D5F2DF58(v71);
    case 15:
      v34 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v34;
      v35 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v35;
      sub_1D62F6340(v71, 0, 0);
      return sub_1D5F2DE58(v71);
    case 16:
      sub_1D5BE2F1C(v31, v7, type metadata accessor for FeedPuzzleStatistic);
      sub_1D62F6634(v7, 0, 0);
      v37 = type metadata accessor for FeedPuzzleStatistic;
      v38 = v7;
LABEL_16:
      result = sub_1D5BCF630(v38, v37);
      break;
    case 17:
      v53 = *(v31 + 13);
      v71[12] = *(v31 + 12);
      v71[13] = v53;
      v71[14] = *(v31 + 14);
      *&v71[15] = *(v31 + 30);
      v54 = *(v31 + 9);
      v71[8] = *(v31 + 8);
      v71[9] = v54;
      v55 = *(v31 + 11);
      v71[10] = *(v31 + 10);
      v71[11] = v55;
      v56 = *(v31 + 5);
      v71[4] = *(v31 + 4);
      v71[5] = v56;
      v57 = *(v31 + 7);
      v71[6] = *(v31 + 6);
      v71[7] = v57;
      v58 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v58;
      v59 = *(v31 + 3);
      v71[2] = *(v31 + 2);
      v71[3] = v59;
      sub_1D62F69A0(v71, 0, 0);
      result = sub_1D5F2DFAC(v71);
      break;
    case 18:
      return result;
    default:
      v33 = *(v31 + 1);
      v71[0] = *v31;
      v71[1] = v33;
      v71[2] = *(v31 + 2);
      *&v71[3] = *(v31 + 6);
      sub_1D5BF6694(v71, 0, 0);
      result = sub_1D5BF1CF0(v71);
      break;
  }

  return result;
}

uint64_t sub_1D5BCF630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BCF690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D5BCF83C(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1D5BCF8F8(v20, a6 & 1);
      v15 = sub_1D5BCF83C(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1D5BF06CC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_1D5BCF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (a4)
  {
    sub_1D72621EC();
  }

  v8 = sub_1D7264A5C();

  return sub_1D5BCFC10(a1, a2, a3, a4, v8);
}

uint64_t sub_1D5BCF8F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D5BCFD1C(0, &unk_1EDF1A520, sub_1D5B7F110, sub_1D5B7F178);
  v34 = a2;
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 32 * v20);
      v22 = v21[1];
      v36 = *v21;
      v23 = v21[3];
      v35 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      sub_1D7264A2C();
      if (v23)
      {
        sub_1D72621EC();
      }

      result = sub_1D7264A5C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v36;
      v16[1] = v22;
      v16[2] = v35;
      v16[3] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

unint64_t sub_1D5BCFC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1D72646CC() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_1D72646CC() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

void sub_1D5BCFD1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D726413C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

char *sub_1D5BCFD9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF196E0, &type metadata for GroupLayoutBindingContext.OrderedItemBinding, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D5BCFEDC(uint64_t a1)
{
  v55 = a1;
  result = type metadata accessor for GroupLayoutBindingContext();
  v4 = *(result + 60);
  v52 = v1;
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  v53 = v5;
  v51 = result;
  v50 = v4;
  if (v6)
  {
    *&v56 = MEMORY[0x1E69E7CC0];
    v7 = v5;
    sub_1D5BFC364(0, v6, 0);
    v8 = v56;
    v9 = v7 + 32;
    do
    {
      sub_1D5BD03B0(v9, v62);
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v10 = sub_1D725AA4C();
      v12 = v11;
      result = sub_1D5BD03E8(v62);
      *&v56 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        result = sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v8 = v56;
      }

      *(v8 + 16) = v15;
      v16 = v8 + 16 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v12;
      v9 += 72;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      v54 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }
  }

  v17 = 0;
  v18 = v8 + 40;
  v48 = v15 - 1;
  v54 = MEMORY[0x1E69E7CC0];
  v49 = v8 + 40;
  do
  {
    v19 = (v18 + 16 * v17);
    v20 = v17;
    while (1)
    {
      if (v20 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v21 = *(v19 - 1);
      v22 = *v19;
      v17 = v20 + 1;
      *&v62[0] = v21;
      *(&v62[0] + 1) = v22;
      MEMORY[0x1EEE9AC00](result, v3);
      v47 = v62;

      if ((sub_1D5BD0418(sub_1D5BD0538, v46, v55) & 1) == 0)
      {
        break;
      }

      v19 += 2;
      ++v20;
      if (v15 == v17)
      {
        goto LABEL_21;
      }
    }

    v23 = v54;
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v23;
    *&v56 = v23;
    if ((result & 1) == 0)
    {
      result = sub_1D5BFC364(0, *(v23 + 16) + 1, 1);
      v24 = v56;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1D5BFC364((v25 > 1), v26 + 1, 1);
      v24 = v56;
    }

    *(v24 + 16) = v26 + 1;
    v54 = v24;
    v27 = v24 + 16 * v26;
    *(v27 + 32) = v21;
    *(v27 + 40) = v22;
    v18 = v49;
  }

  while (v48 != v20);
LABEL_21:

  result = v53;
  v28 = *(v53 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v53 + 32;
    v31 = MEMORY[0x1E69E7CC0];
    while (v29 < *(result + 16))
    {
      sub_1D5BD03B0(v30, v62);
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      *&v56 = sub_1D725AA4C();
      *(&v56 + 1) = v32;
      MEMORY[0x1EEE9AC00](v56, v32);
      v47 = &v56;
      v33 = sub_1D5BD0418(sub_1D5BD04C4, v46, v54);

      if (v33)
      {
        v58 = v63;
        v59 = v64;
        v60 = v65;
        v56 = v62[0];
        v57 = v62[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5BD06F0(0, *(v31 + 16) + 1, 1);
          v31 = v61;
        }

        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1D5BD06F0((v35 > 1), v36 + 1, 1);
          v31 = v61;
        }

        *(v31 + 16) = v36 + 1;
        v37 = v31 + 72 * v36;
        *(v37 + 32) = v56;
        v38 = v57;
        v39 = v58;
        v40 = v59;
        *(v37 + 96) = v60;
        *(v37 + 64) = v39;
        *(v37 + 80) = v40;
        *(v37 + 48) = v38;
      }

      else
      {
        sub_1D5BD03E8(v62);
      }

      ++v29;
      v30 += 72;
      result = v53;
      if (v28 == v29)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_33:

    v41 = v52;
    *(v52 + v50) = v31;
    v42 = *(v51 + 56);
    v43 = *(v41 + v42);
    v44 = v54;

    v45 = sub_1D5BD0710(v43, v44, sub_1D5BD0920);

    *(v41 + v42) = v45;
  }

  return result;
}

uint64_t sub_1D5BD0418(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D5BD04E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

uint64_t sub_1D5BD0558(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

char *sub_1D5BD05B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF196E0, &type metadata for GroupLayoutBindingContext.OrderedItemBinding, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D5BD06F0(char *a1, int64_t a2, char a3)
{
  result = sub_1D5BD05B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D5BD0710(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t))
{
  sub_1D5B7F09C(0, &unk_1EDF1A520, MEMORY[0x1E69E6EC8]);
  result = sub_1D72640FC();
  v6 = 0;
  v26 = a1;
  v24 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  v28 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v30 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v6 << 6);
      v15 = (*(v26 + 48) + 32 * v14);
      v16 = *v15;
      v17 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      v32 = *(*(v26 + 56) + 8 * v14);

      a3(&v31, &v32, a2);

      if (v3)
      {
        break;
      }

      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v28;
      v20 = (v28[6] + 32 * v14);
      *v20 = v16;
      v20[1] = v17;
      v20[2] = v19;
      v20[3] = v18;
      *(v28[7] + 8 * v14) = v31;
      v21 = v28[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_17;
      }

      v28[2] = v23;
      v9 = v30;
      if (!v30)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return result;
      }

      v13 = *(v24 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v30 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BD0920@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a3;
  v3 = *result;
  v24 = *(*result + 16);
  if (v24)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v23 = v3;
    while (v5 < *(v3 + 16))
    {
      sub_1D5B68374(v6, &v28);
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      v25[0] = sub_1D725AA4C();
      v25[1] = v8;
      MEMORY[0x1EEE9AC00](v25[0], v8);
      v20[2] = v25;
      v9 = sub_1D5BD0418(sub_1D5BD04C4, v20, a2);

      if (v9)
      {
        sub_1D5B63F14(&v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5BD0BA0(0, *(v7 + 16) + 1, 1);
          v7 = v30;
        }

        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D5BD0BA0((v11 > 1), v12 + 1, 1);
        }

        v13 = v26;
        v14 = v27;
        v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v16 = MEMORY[0x1EEE9AC00](v15, v15);
        v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18, v16);
        sub_1D5BD0BE4(v12, v18, &v30, v13, v14);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v7 = v30;
        v3 = v23;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      ++v5;
      v6 += 40;
      if (v24 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *v22 = v7;
  }

  return result;
}

void *sub_1D5BD0BA0(void *a1, int64_t a2, char a3)
{
  result = sub_1D5B85CC4(a1, a2, a3, *v3, sub_1D5BDEE4C, &qword_1EDF41FC0);
  *v3 = result;
  return result;
}

uint64_t sub_1D5BD0BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D5B63F14(&v12, v10 + 40 * a1 + 32);
}

uint64_t GroupLayoutInventory.layouts(column:kind:)(uint64_t a1, uint64_t *a2)
{
  v110 = a1;
  v3 = sub_1D725A3AC();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v109 - v17;
  v24 = MEMORY[0x1EEE9AC00](v19, v20);
  v25 = &v109 - v22;
  v27 = *a2;
  v26 = a2[1];
  v29 = a2[2];
  v28 = a2[3];
  v30 = a2[4];
  v31 = *a2 >> 62;
  if (!v31)
  {
    v47 = a2[3];
    v48 = (v27 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];

    v52 = sub_1D725A39C();
    v114 = v49;
    v115 = v50;
    v116 = v51;
    v53 = FormatGroupCollection.subscript.getter(v52);

    if (v53)
    {
      if (*(v53 + 16))
      {
        type metadata accessor for FormatLogger();
        inited = swift_initStaticObject();
        type metadata accessor for FormatOptionConverter();
        v55 = swift_allocObject();

        v57 = sub_1D5D65DDC(v56, inited, v55);
        MEMORY[0x1EEE9AC00](v57, v58);
        *(&v109 - 8) = v27;
        *(&v109 - 7) = v26;
        *(&v109 - 6) = v29;
        *(&v109 - 5) = v47;
        v59 = v109;
        *(&v109 - 4) = v30;
        *(&v109 - 3) = v59;
        v107 = v60;
        v61 = sub_1D5D67CF0(sub_1D5ECDFB4, (&v109 - 10), v53);

        return v61;
      }
    }

    sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D7270C10;
    goto LABEL_36;
  }

  v32 = a2[5];
  v33 = a2[6];
  if (v31 == 1)
  {
    v27 &= 0x3FFFFFFFFFFFFFFFuLL;
    v117[0] = v27;
    v117[1] = v26;
    v117[2] = v29;
    v117[3] = v28;
    v117[4] = v30;
    v117[5] = v32;
    v117[6] = v33;
    v34 = (v27 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];

    v38 = sub_1D725A39C();
    v111 = v35;
    v112 = v36;
    v113 = v37;
    v39 = FormatGroupCollection.subscript.getter(v38);

    if (v39)
    {
      if (*(v39 + 16))
      {
        type metadata accessor for FormatLogger();
        v40 = swift_initStaticObject();
        type metadata accessor for FormatOptionConverter();
        v41 = swift_allocObject();
        v42 = sub_1D5D65DDC(v27, v40, v41);
        MEMORY[0x1EEE9AC00](v42, v43);
        *(&v109 - 4) = v117;
        *(&v109 - 3) = v109;
        v107 = v44;
        v45 = sub_1D5D67CF0(sub_1D5D68158, (&v109 - 6), v39);

        return v45;
      }
    }

    sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D7270C10;
LABEL_36:
    v80 = sub_1D725A39C();
    v81 = MEMORY[0x1E69E65A8];
    *(v79 + 56) = MEMORY[0x1E69E6530];
    *(v79 + 64) = v81;
    *(v79 + 32) = v80;
    v83 = *(v27 + 16);
    v82 = *(v27 + 24);
    *(v79 + 96) = MEMORY[0x1E69E6158];
    *(v79 + 104) = sub_1D5B7E2C0();
    *(v79 + 72) = v83;
    *(v79 + 80) = v82;

    MEMORY[0x1DA6F2360]("Expected to get at least one group for %d columns, but got none. %{public}@!", 76, 2, v79);

    return MEMORY[0x1E69E7CC0];
  }

  v62 = v29 | v26 | v28 | v30 | v32 | v33;
  if (v27 == 0x8000000000000000 && !v62)
  {
    sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D7270C10;
    *(v63 + 56) = &_s3GapVN;
    *(v63 + 64) = sub_1D5BF1D44();
    *(v63 + 32) = 2;
    *(v63 + 40) = 0;
    *(v63 + 48) = 6;
    *(v63 + 96) = &_s10GapOfflineVN;
    v64 = sub_1D5BF6A10();
    result = v63;
    *(v63 + 104) = v64;
    *(v63 + 72) = 1;
    *(v63 + 80) = 0;
    *(v63 + 88) = 6;
    return result;
  }

  v65 = v27 == 0x8000000000000010 || v27 == 0x8000000000000008;
  if (!v65 || v62)
  {
    if (v27 != 0x8000000000000018 || v62)
    {
      if (v27 != 0x8000000000000020 || v62)
      {
        if (v27 != 0x8000000000000028 || v62)
        {
          if (v27 == 0x8000000000000030 && !v62)
          {
            v99 = MEMORY[0x1E69E7CC0];
            MEMORY[0x1DA6F2360]("The .regions FeedGroupKind should never be handed off to FeedLayoutSolver, but split into regions with real FeedGroupKinds instead.", 131, 2, MEMORY[0x1E69E7CC0], v24);
            return v99;
          }

          if (v27 != 0x8000000000000038 || v62)
          {
            if (v27 != 0x8000000000000040 || v62)
            {
              if (v27 != 0x8000000000000048 || v62)
              {
                sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_1D7273AE0;
                *(v103 + 56) = &type metadata for PluginGroupLayoutFactory;
                v104 = sub_1D5ECDDE0();
                result = v103;
                *(v103 + 64) = v104;
                return result;
              }

              sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
              v87 = swift_allocObject();
              *(v87 + 16) = xmmword_1D7273AE0;
              *(v87 + 56) = &_s10EngagementVN;
              v88 = sub_1D5ECDC90();
            }

            else
            {
              v100 = v21;
              v101 = v23;
              (*(v23 + 16))(v6, v110, v21, v24);
              v102 = (*(v101 + 88))(v6, v100);
              if (v102 == *MEMORY[0x1E69D7380])
              {
                sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
                v87 = swift_allocObject();
                *(v87 + 16) = xmmword_1D7273AE0;
                *(v87 + 56) = &type metadata for M6_V1;
                v88 = sub_1D5ECDD8C();
              }

              else if (v102 == *MEMORY[0x1E69D7388])
              {
                sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
                v87 = swift_allocObject();
                *(v87 + 16) = xmmword_1D7273AE0;
                *(v87 + 56) = &type metadata for M12_V1;
                v88 = sub_1D5ECDD38();
              }

              else
              {
                if (v102 != *MEMORY[0x1E69D7390])
                {
                  (*(v101 + 8))(v6, v100);
                  return MEMORY[0x1E69E7CC0];
                }

                sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
                v87 = swift_allocObject();
                *(v87 + 16) = xmmword_1D7273AE0;
                *(v87 + 56) = &type metadata for M18_V1;
                v88 = sub_1D5ECDCE4();
              }
            }
          }

          else
          {
            sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1D7273AE0;
            *(v87 + 56) = &_s2AdVN;
            v88 = sub_1D5BD6184();
          }
        }

        else
        {
          v92 = v21;
          v93 = v23;
          (*(v23 + 16))(v10, v110, v21, v24);
          v94 = (*(v93 + 88))(v10, v92);
          if (v94 == *MEMORY[0x1E69D7380])
          {
            sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1D7273AE0;
            *(v87 + 56) = &type metadata for J6_V1;
            v88 = sub_1D5ECE094();
          }

          else if (v94 == *MEMORY[0x1E69D7388])
          {
            sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1D7273AE0;
            *(v87 + 56) = &type metadata for J12_V1;
            v88 = sub_1D5ECE040();
          }

          else
          {
            if (v94 != *MEMORY[0x1E69D7390])
            {
              v108 = 0;
              i = 136;
              goto LABEL_82;
            }

            sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1D7273AE0;
            *(v87 + 56) = &type metadata for J18_V1;
            v88 = sub_1D5ECDFEC();
          }
        }
      }

      else
      {
        v84 = v21;
        v85 = v23;
        (*(v23 + 16))(v14, v110, v21, v24);
        v86 = (*(v85 + 88))(v14, v84);
        if (v86 == *MEMORY[0x1E69D7380])
        {
          sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_1D7273AE0;
          *(v87 + 56) = &type metadata for H6_V1;
          v88 = sub_1D5ECE190();
        }

        else if (v86 == *MEMORY[0x1E69D7388])
        {
          sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_1D7273AE0;
          *(v87 + 56) = &type metadata for H12_V1;
          v88 = sub_1D5ECE13C();
        }

        else
        {
          if (v86 != *MEMORY[0x1E69D7390])
          {
            goto LABEL_83;
          }

          sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_1D7273AE0;
          *(v87 + 56) = &type metadata for H18_V1;
          v88 = sub_1D5ECE0E8();
        }
      }

      v105 = v88;
      result = v87;
      *(v87 + 64) = v105;
      *(v87 + 32) = 2;
      *(v87 + 40) = 0;
      *(v87 + 48) = 6;
      return result;
    }

    v72 = v21;
    v73 = v23;
    (*(v23 + 16))(v18, v110, v21, v24);
    v74 = (*(v73 + 88))(v18, v72);
    if (v74 == *MEMORY[0x1E69D7380] || v74 == *MEMORY[0x1E69D7388] || v74 == *MEMORY[0x1E69D7390])
    {
      sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1D7270C10;
      *(v77 + 56) = &type metadata for G_V1;
      *(v77 + 64) = sub_1D5ECE1E4();
      *(v77 + 32) = 2;
      *(v77 + 40) = 1;
      *(v77 + 48) = 6;
      *(v77 + 96) = &type metadata for G_V2;
      v78 = sub_1D5ECE238();
      result = v77;
      *(v77 + 104) = v78;
      *(v77 + 72) = 2;
      *(v77 + 80) = 2;
      *(v77 + 88) = 6;
      return result;
    }

    v108 = 0;
    for (i = 107; ; i = 120)
    {
LABEL_82:
      v107 = i;
      sub_1D726402C();
      __break(1u);
LABEL_83:
      v108 = 0;
    }
  }

  v66 = v21;
  v67 = v23;
  (*(v23 + 16))(&v109 - v22, v110, v21, v24);
  v68 = (*(v67 + 88))(v25, v66);
  if (v68 != *MEMORY[0x1E69D7380])
  {
    if (v68 == *MEMORY[0x1E69D7388])
    {
      sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1D727C510;
      *(v89 + 56) = &type metadata for A12_V25;
      *(v89 + 64) = sub_1D5ECE67C();
      *(v89 + 32) = 2;
      *(v89 + 40) = 0;
      *(v89 + 48) = 6;
      *(v89 + 96) = &type metadata for A12_V24;
      *(v89 + 104) = sub_1D5ECE6D0();
      *(v89 + 72) = 3;
      *(v89 + 80) = 0;
      *(v89 + 88) = 6;
      *(v89 + 136) = &type metadata for A12_V23;
      *(v89 + 144) = sub_1D5ECE724();
      *(v89 + 112) = 2;
      *(v89 + 120) = 0;
      *(v89 + 128) = 6;
      *(v89 + 176) = &type metadata for A12_V7;
      *(v89 + 184) = sub_1D5ECE778();
      *(v89 + 152) = 2;
      *(v89 + 160) = 1;
      *(v89 + 168) = 6;
      *(v89 + 216) = &type metadata for A12_V1;
      *(v89 + 224) = sub_1D5ECE7CC();
      *(v89 + 192) = 2;
      *(v89 + 200) = 0;
      *(v89 + 208) = 6;
      *(v89 + 256) = &type metadata for A12_V2;
      *(v89 + 264) = sub_1D5ECE820();
      *(v89 + 232) = 2;
      *(v89 + 240) = 1;
      *(v89 + 248) = 6;
      *(v89 + 296) = &type metadata for A12_V19;
      v90 = sub_1D5ECE874();
      *(v89 + 304) = v90;
      *(v89 + 272) = 2;
      *(v89 + 280) = 1;
      *(v89 + 288) = 6;
      *(v89 + 336) = &type metadata for A12_V8;
      *(v89 + 344) = sub_1D5ECE8C8();
      *(v89 + 312) = 2;
      *(v89 + 320) = 1;
      *(v89 + 328) = 6;
      *(v89 + 376) = &type metadata for A12_V3;
      *(v89 + 384) = sub_1D5ECE91C();
      *(v89 + 352) = 2;
      *(v89 + 360) = 1;
      *(v89 + 368) = 6;
      *(v89 + 416) = &type metadata for A12_V4;
      *(v89 + 424) = sub_1D5ECE970();
      *(v89 + 392) = 2;
      *(v89 + 400) = 1;
      *(v89 + 408) = 6;
      *(v89 + 456) = &type metadata for A12_V5;
      *(v89 + 464) = sub_1D5ECE9C4();
      *(v89 + 432) = 2;
      *(v89 + 440) = 1;
      *(v89 + 448) = 6;
      *(v89 + 496) = &type metadata for A12_V6;
      *(v89 + 504) = sub_1D5ECEA18();
      *(v89 + 472) = 2;
      *(v89 + 480) = 0;
      *(v89 + 488) = 6;
      *(v89 + 536) = &type metadata for A12_V9;
      *(v89 + 544) = sub_1D5ECEA6C();
      *(v89 + 512) = 2;
      *(v89 + 520) = 0;
      *(v89 + 528) = 6;
      *(v89 + 576) = &type metadata for A12_V10;
      *(v89 + 584) = sub_1D5ECEAC0();
      *(v89 + 552) = 0;
      *(v89 + 560) = 0;
      *(v89 + 568) = 6;
      *(v89 + 616) = &type metadata for A12_V11;
      *(v89 + 624) = sub_1D5ECEB14();
      *(v89 + 592) = 1;
      *(v89 + 600) = 1;
      *(v89 + 608) = 6;
      *(v89 + 656) = &type metadata for A12_V12;
      *(v89 + 664) = sub_1D5ECEB68();
      *(v89 + 632) = 0;
      *(v89 + 640) = 1;
      *(v89 + 648) = 6;
      *(v89 + 696) = &type metadata for A12_V13;
      *(v89 + 704) = sub_1D5ECEBBC();
      *(v89 + 672) = 0;
      *(v89 + 680) = 1;
      *(v89 + 688) = 6;
      *(v89 + 736) = &type metadata for A12_V17;
      *(v89 + 744) = sub_1D5ECEC10();
      *(v89 + 712) = 2;
      *(v89 + 720) = 2;
      *(v89 + 728) = 6;
      *(v89 + 776) = &type metadata for A12_V14;
      *(v89 + 784) = sub_1D5ECEC64();
      *(v89 + 752) = 0;
      *(v89 + 760) = 1;
      *(v89 + 768) = 6;
      *(v89 + 816) = &type metadata for A12_V15;
      *(v89 + 824) = sub_1D5ECECB8();
      *(v89 + 792) = 0;
      *(v89 + 800) = 0;
      *(v89 + 808) = 6;
      *(v89 + 856) = &type metadata for A12_V16;
      *(v89 + 864) = sub_1D5ECED0C();
      *(v89 + 832) = 2;
      *(v89 + 840) = 2;
      *(v89 + 848) = 6;
      *(v89 + 896) = &type metadata for A12_V19;
      *(v89 + 904) = v90;
      *(v89 + 872) = 2;
      *(v89 + 880) = 1;
      *(v89 + 888) = 6;
      *(v89 + 936) = &type metadata for A12_V20;
      v91 = sub_1D5ECED60();
      result = v89;
      *(v89 + 944) = v91;
      *(v89 + 912) = 0;
      *(v89 + 920) = 1;
      *(v89 + 928) = 6;
      return result;
    }

    if (v68 == *MEMORY[0x1E69D7390])
    {
      sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1D727C500;
      *(v96 + 56) = &type metadata for A18_V17;
      *(v96 + 64) = sub_1D5ECE28C();
      *(v96 + 32) = 2;
      *(v96 + 40) = 1;
      *(v96 + 48) = 6;
      *(v96 + 96) = &type metadata for A18_V15;
      *(v96 + 104) = sub_1D5ECE2E0();
      *(v96 + 72) = 2;
      *(v96 + 80) = 1;
      *(v96 + 88) = 6;
      *(v96 + 136) = &type metadata for A18_V2;
      v97 = sub_1D5ECE334();
      *(v96 + 144) = v97;
      *(v96 + 112) = 2;
      *(v96 + 120) = 0;
      *(v96 + 128) = 6;
      *(v96 + 176) = &type metadata for A18_V3;
      *(v96 + 184) = sub_1D5ECE388();
      *(v96 + 152) = 2;
      *(v96 + 160) = 1;
      *(v96 + 168) = 6;
      *(v96 + 216) = &type metadata for A18_V1;
      *(v96 + 224) = sub_1D5ECE3DC();
      *(v96 + 192) = 2;
      *(v96 + 200) = 1;
      *(v96 + 208) = 6;
      *(v96 + 256) = &type metadata for A18_V4;
      *(v96 + 264) = sub_1D5ECE430();
      *(v96 + 232) = 2;
      *(v96 + 240) = 1;
      *(v96 + 248) = 6;
      *(v96 + 296) = &type metadata for A18_V6;
      *(v96 + 304) = sub_1D5ECE484();
      *(v96 + 272) = 2;
      *(v96 + 280) = 1;
      *(v96 + 288) = 6;
      *(v96 + 336) = &type metadata for A18_V2;
      *(v96 + 344) = v97;
      *(v96 + 312) = 2;
      *(v96 + 320) = 0;
      *(v96 + 328) = 6;
      *(v96 + 376) = &type metadata for A18_V8;
      *(v96 + 384) = sub_1D5ECE4D8();
      *(v96 + 352) = 2;
      *(v96 + 360) = 1;
      *(v96 + 368) = 6;
      *(v96 + 416) = &type metadata for A18_V10;
      *(v96 + 424) = sub_1D5ECE52C();
      *(v96 + 392) = 2;
      *(v96 + 400) = 1;
      *(v96 + 408) = 6;
      *(v96 + 456) = &type metadata for A18_V11;
      *(v96 + 464) = sub_1D5ECE580();
      *(v96 + 432) = 2;
      *(v96 + 440) = 1;
      *(v96 + 448) = 6;
      *(v96 + 496) = &type metadata for A18_V12;
      *(v96 + 504) = sub_1D5ECE5D4();
      *(v96 + 472) = 2;
      *(v96 + 480) = 2;
      *(v96 + 488) = 6;
      *(v96 + 536) = &type metadata for A18_V16;
      v98 = sub_1D5ECE628();
      result = v96;
      *(v96 + 544) = v98;
      *(v96 + 512) = 1;
      *(v96 + 520) = 1;
      *(v96 + 528) = 6;
      return result;
    }

    v108 = 0;
    i = 83;
    goto LABEL_82;
  }

  sub_1D5B677A8(0, &qword_1EDF19760, &qword_1EDF3FA20);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D7274590;
  if (v27 == 0x8000000000000010)
  {
    *(v69 + 56) = &type metadata for A6_V1;
    v70 = v69;
    *(v69 + 64) = sub_1D5C0F454();
    *(v70 + 32) = 2;
    *(v70 + 40) = 1;
    *(v70 + 48) = 6;
    *(v70 + 96) = &type metadata for A6_V3;
    v71 = sub_1D5C0F4FC();
  }

  else
  {
    *(v69 + 56) = &type metadata for A6_V3;
    v70 = v69;
    *(v69 + 64) = sub_1D5C0F4FC();
    *(v70 + 32) = 2;
    *(v70 + 40) = 1;
    *(v70 + 48) = 6;
    *(v70 + 96) = &type metadata for A6_V1;
    v71 = sub_1D5C0F454();
  }

  *(v70 + 104) = v71;
  *(v70 + 72) = 2;
  *(v70 + 80) = 1;
  *(v70 + 88) = 6;
  *(v70 + 136) = &type metadata for A6_V4;
  *(v70 + 144) = sub_1D5C0F628();
  *(v70 + 112) = 2;
  *(v70 + 120) = 1;
  *(v70 + 128) = 6;
  *(v70 + 176) = &type metadata for A6_V2;
  v95 = sub_1D5C0F754();
  result = v70;
  *(v70 + 184) = v95;
  *(v70 + 152) = 2;
  *(v70 + 160) = 2;
  *(v70 + 168) = 6;
  return result;
}

void sub_1D5BD20D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5BD2138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v102 = a7;
  v99 = a6;
  v104 = a1;
  v105 = a2;
  v92 = sub_1D7259CFC();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v14);
  v93 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BFCA6C(0, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v90 - v18;
  v101 = sub_1D7259D1C();
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v20);
  v94 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v95 = v90 - v24;
  v96 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v96, v25);
  v100 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v103 = v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a4;
  v31 = a4[1];
  v32 = (v9 + *(*v9 + 104));
  v33 = v32[3];
  v34 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v109[0] = v30;
  v109[1] = v31;
  result = (*(v34 + 16))(a3, v109, v9 + *(*v9 + 128), v33, v34);
  if (v36)
  {
    v37 = result;
    v38 = v36;
    v98 = a8;
    v39 = *(a5 + 16);
    if (v39)
    {
      v40 = a5 + 32;
      v41 = *(a5 + 16);
      while (1)
      {
        sub_1D5B68374(v40, &v106);
        __swift_project_boxed_opaque_existential_1(&v106, v107);
        if (sub_1D725AA4C() == v37 && v38 == v42)
        {
          break;
        }

        v44 = sub_1D72646CC();

        if (v44)
        {
          goto LABEL_20;
        }

        __swift_destroy_boxed_opaque_existential_1(&v106);
        v40 += 40;
        if (!--v41)
        {
          goto LABEL_10;
        }
      }

LABEL_20:

      sub_1D5B63F14(&v106, v108);
      sub_1D5B63F14(v108, v109);
      v62 = *(v9 + *(*v9 + 168));
      sub_1D5BAB064(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v90[0] = v63;
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1D7270C10;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1D5B7E2C0();
      *(v64 + 64) = v66;
      v67 = v105;
      *(v64 + 32) = v104;
      *(v64 + 40) = v67;
      __swift_project_boxed_opaque_existential_1(v109, v110);

      v68 = sub_1D725AA4C();
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 72) = v68;
      *(v64 + 80) = v69;
      sub_1D7262EDC();
      v90[1] = v62;
      sub_1D725C30C();

      v70 = v99;
      sub_1D5BE6528(v99, v103, type metadata accessor for GroupLayoutBindingContext);
      v71 = v102;
      v72 = v100;
      sub_1D5BE6528(v102, v100, type metadata accessor for GroupLayoutContext);
      v73 = v110;
      v74 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      (*(v74 + 48))(v70, v71, v73, v74);
      v75 = v98;
      v76 = v97;
      v77 = v101;
      if ((*(v97 + 48))(v19, 1, v101) == 1)
      {
        sub_1D5BF00B8(v19, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
        v78 = v103;
      }

      else
      {
        v79 = v95;
        (*(v76 + 32))(v95, v19, v77);
        v80 = v94;
        sub_1D7259BFC();
        sub_1D5D64C80(&unk_1EDF3C090, MEMORY[0x1E69D7138]);
        v81 = sub_1D7261FBC();
        v82 = v101;
        v83 = v81;
        v84 = *(v76 + 8);
        v84(v80, v101);
        v78 = v103;
        if (v83)
        {
          v84(v79, v82);
        }

        else
        {
          v85 = v93;
          sub_1D7259D0C();
          v84(v79, v101);
          (*(v91 + 40))(v72 + *(v96 + 20), v85, v92);
        }
      }

      v86 = v110;
      v87 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      (*(v87 + 56))(v108, v78, v72, v86, v87);
      sub_1D5BAB064(0, &qword_1EDF196D0, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType, MEMORY[0x1E69E6F90]);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1D7273AE0;
      sub_1D5B68374(v108, v88 + 32);
      sub_1D5BE67B4(v78, type metadata accessor for GroupLayoutBindingContext);
      sub_1D5B63F14(v108, (v75 + 2));
      v89 = MEMORY[0x1E69E7CC0];
      *v75 = v88;
      v75[1] = v89;
      sub_1D5BE67B4(v72, type metadata accessor for GroupLayoutContext);
      return __swift_destroy_boxed_opaque_existential_1(v109);
    }

    else
    {
LABEL_10:
      v45 = *(v9 + *(*v9 + 168));
      sub_1D5BAB064(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D7279970;
      v47 = MEMORY[0x1E69E6158];
      *(v46 + 56) = MEMORY[0x1E69E6158];
      v48 = sub_1D5B7E2C0();
      v49 = v105;
      *(v46 + 32) = v104;
      *(v46 + 40) = v49;
      *(v46 + 96) = v47;
      *(v46 + 104) = v48;
      *(v46 + 64) = v48;
      *(v46 + 72) = v37;
      *(v46 + 80) = v38;
      if (v39)
      {
        v104 = v45;
        *&v108[0] = MEMORY[0x1E69E7CC0];

        sub_1D5BFC364(0, v39, 0);
        v50 = *&v108[0];
        v51 = a5 + 32;
        do
        {
          sub_1D5B68374(v51, v109);
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v52 = sub_1D725AA4C();
          v54 = v53;
          __swift_destroy_boxed_opaque_existential_1(v109);
          *&v108[0] = v50;
          v56 = *(v50 + 16);
          v55 = *(v50 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1D5BFC364((v55 > 1), v56 + 1, 1);
            v50 = *&v108[0];
          }

          *(v50 + 16) = v56 + 1;
          v57 = v50 + 16 * v56;
          *(v57 + 32) = v52;
          *(v57 + 40) = v54;
          v51 += 40;
          --v39;
        }

        while (v39);
        v47 = MEMORY[0x1E69E6158];
      }

      else
      {

        v50 = MEMORY[0x1E69E7CC0];
      }

      v58 = MEMORY[0x1DA6F9D20](v50, v47);
      v60 = v59;

      *(v46 + 136) = v47;
      *(v46 + 144) = v48;
      *(v46 + 112) = v58;
      *(v46 + 120) = v60;
      sub_1D7262EDC();
      sub_1D725C30C();

      v61 = v98;
      v98[6] = 0;
      *(v61 + 1) = 0u;
      *(v61 + 2) = 0u;
      *v61 = 0u;
    }
  }

  else
  {
    *(a8 + 48) = 0;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0u;
    *a8 = 0u;
  }

  return result;
}

uint64_t FeedLayoutCache.bindLookup(cacheKey:position:solverOptions:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v76 = type metadata accessor for FeedLayoutCacheKey();
  MEMORY[0x1EEE9AC00](v76, v6);
  v77 = (v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_1D725E29C();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v8);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54D70(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v82 = v72 - v13;
  v79 = sub_1D72585BC();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v14);
  v75 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54D70(0, &qword_1EDF35720, type metadata accessor for FeedLayoutCacheFastPathResult);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v73 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v83 = v72 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v72 - v24;
  v26 = type metadata accessor for FeedLayoutCacheFastPathResult();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v74 = v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v72 - v32;
  v35 = *a2;
  v34 = a2[1];
  v36 = type metadata accessor for FeedLayoutSolverOptions(0);
  v37 = a3;
  v38 = (a3 + *(v36 + 40));
  v39 = v38[1];
  if (v39 >= 2)
  {
    v76 = v37;
    v52 = *(a1 + 96);
    v53 = *(a1 + 128);
    v94 = *(a1 + 112);
    v95 = v53;
    v54 = *(a1 + 96);
    v92 = *(a1 + 80);
    v93 = v54;
    v55 = *(a1 + 128);
    v89 = v94;
    v90 = v55;
    v77 = *v38;
    v96 = *(a1 + 144);
    v56 = *(v84 + 24);
    v81 = v35;
    v85 = v35;
    v86 = v34;
    v80 = v34;
    v91 = *(a1 + 144);
    v88 = v52;
    v87 = v92;
    v72[1] = v56;
    sub_1D725B86C();
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_1D5B6F454(v25, &qword_1EDF35720, type metadata accessor for FeedLayoutCacheFastPathResult);
    }

    else
    {
      sub_1D6EC13D4(v25, v33, type metadata accessor for FeedLayoutCacheFastPathResult);
      if (_s8NewsFeed0B14LayoutCacheKeyV2eeoiySbAC_ACtFZ_0(v33, a1))
      {
        v57 = *&v33[*(v26 + 20)];

        v58 = v33;
        goto LABEL_10;
      }

      sub_1D5BEA830(v33, type metadata accessor for FeedLayoutCacheFastPathResult);
    }

    v85 = v81;
    v86 = v80;
    v59 = v82;
    sub_1D5D685BC(v77, v39, a1, &v85, v82);
    v60 = v83;
    v61 = v78;
    v62 = v79;
    if ((*(v78 + 48))(v59, 1, v79) == 1)
    {
      sub_1D5B6F454(v59, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v27 + 56))(v60, 1, 1, v26);
      sub_1D5B6F454(v60, &qword_1EDF35720, type metadata accessor for FeedLayoutCacheFastPathResult);
      return sub_1D6EBFBE4(a1, v76);
    }

    (*(v61 + 32))(v75, v59, v62);
    v63 = sub_1D72585DC();
    v82 = v64;
    v65 = v63;
    sub_1D725A6CC();
    swift_allocObject();
    sub_1D725A6BC();
    sub_1D5BBC604(&qword_1EDF13440, type metadata accessor for FeedLayoutCacheFastPathResult);
    v66 = v82;
    sub_1D725A69C();
    (*(v78 + 8))(v75, v79);

    sub_1D5B952F8(v65, v66);
    v67 = *(v27 + 56);
    v67(v60, 0, 1, v26);
    v68 = v74;
    sub_1D6EC13D4(v60, v74, type metadata accessor for FeedLayoutCacheFastPathResult);
    v69 = v73;
    sub_1D5BE8E40(v68, v73, type metadata accessor for FeedLayoutCacheFastPathResult);
    v67(v69, 0, 1, v26);
    v85 = v81;
    v86 = v80;
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v88 = v93;
    v87 = v92;
    sub_1D725B87C();
    v70 = _s8NewsFeed0B14LayoutCacheKeyV2eeoiySbAC_ACtFZ_0(v68, a1);
    if ((v70 & 1) == 0)
    {
      v71 = sub_1D6EBFBE4(a1, v76);
      sub_1D5BEA830(v68, type metadata accessor for FeedLayoutCacheFastPathResult);
      return v71;
    }

    v57 = *(v68 + *(v26 + 20));

    v58 = v68;
LABEL_10:
    sub_1D5BEA830(v58, type metadata accessor for FeedLayoutCacheFastPathResult);
    return v57;
  }

  if (!*(v37 + *(v36 + 44)))
  {
    return 0;
  }

  v40 = sub_1D725EBFC();
  v41 = v80;
  v42 = v81;
  (*(v80 + 104))(v10, *MEMORY[0x1E69D7DD8], v81);
  v43 = sub_1D5BD36C8(v10, v40);

  (*(v41 + 8))(v10, v42);
  if ((v43 & 1) == 0)
  {

    return 0;
  }

  v44 = v77;
  sub_1D5BE8E40(a1, v77, type metadata accessor for FeedLayoutCacheKey);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v44[10];
  v48 = v44 + *(v76 + 24);
  v50 = *(v48 + 2);
  v49 = *(v48 + 3);

  sub_1D5BEA830(v44, type metadata accessor for FeedLayoutCacheKey);
  v85 = v46;
  v86 = v45;
  *&v87 = v47;
  *(&v87 + 1) = v50;
  *&v88 = v49;
  sub_1D725B86C();

  if (*(&v92 + 1))
  {
    return v92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5BD36C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725E29C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D5BD38B8(&qword_1EDF3B528), v8 = sub_1D7261E7C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_1D5BD38B8(&qword_1EDF3B520);
      v16 = sub_1D7261FBC();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D5BD38B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D725E29C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed30GroupLayoutContentSizeCategoryO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_1D5BD3920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BD3984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BD39E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BD3A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BD3AD8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5BAB064(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t HeadlineViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5BEDBA8(0, &qword_1EDF19C28, sub_1D5BD4124, &type metadata for HeadlineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v41 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BD4124();
  sub_1D7264B0C();
  if (!v2)
  {
    v40 = a2;
    type metadata accessor for CGRect(0);
    v42 = 0;
    sub_1D5BEA9FC(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v38 = v44;
    v39 = v43;
    v42 = 1;
    sub_1D726431C();
    v36 = v44;
    v37 = v43;
    v42 = 2;
    sub_1D726431C();
    v34 = v44;
    v35 = v43;
    v42 = 3;
    sub_1D726431C();
    v32 = v44;
    v33 = v43;
    v42 = 4;
    sub_1D726431C();
    v30 = v44;
    v31 = v43;
    v42 = 5;
    sub_1D726431C();
    v28 = v44;
    v29 = v43;
    v42 = 6;
    sub_1D726431C();
    v26 = v44;
    v27 = v43;
    v42 = 7;
    sub_1D726431C();
    v24 = v44;
    v25 = v43;
    type metadata accessor for UIRectCorner(0);
    v42 = 8;
    sub_1D5BEA9FC(&qword_1EDF1AC00, type metadata accessor for UIRectCorner);
    sub_1D726431C();
    v23 = v43;
    v42 = 9;
    sub_1D5B57870();
    sub_1D726431C();
    v11 = v43;
    v42 = 10;
    sub_1D726431C();
    (*(v6 + 8))(v9, v41);
    v12 = v40;
    v13 = v38;
    *v40 = v39;
    v12[1] = v13;
    v14 = v36;
    v12[2] = v37;
    v12[3] = v14;
    v15 = v34;
    v12[4] = v35;
    v12[5] = v15;
    v16 = v32;
    v12[6] = v33;
    v12[7] = v16;
    v17 = v30;
    v12[8] = v31;
    v12[9] = v17;
    v18 = v28;
    v12[10] = v29;
    v12[11] = v18;
    v19 = v26;
    v12[12] = v27;
    v12[13] = v19;
    v20 = v24;
    v12[14] = v25;
    v12[15] = v20;
    *(v12 + 32) = v23;
    *(v12 + 33) = v11;
    v21 = v44;
    v12[17] = v43;
    v12[18] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5BD4124()
{
  result = qword_1EDF2D618[0];
  if (!qword_1EDF2D618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2D618);
  }

  return result;
}

unint64_t sub_1D5BD417C()
{
  result = qword_1EDF2D608;
  if (!qword_1EDF2D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D608);
  }

  return result;
}

unint64_t sub_1D5BD41D4()
{
  result = qword_1EDF2D610;
  if (!qword_1EDF2D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D610);
  }

  return result;
}

uint64_t sub_1D5BD4230(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D617266;
    v7 = 0xD000000000000013;
    v8 = 0xD000000000000013;
    if (a1 != 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x62614C656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 0xD00000000000001CLL;
    if (a1 != 9)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x656956616964656DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D5BD43B8(uint64_t a1, int a2)
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

uint64_t sub_1D5BD43E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5BE8F38(0, &qword_1EDF03800, sub_1D5BD46E4, &type metadata for A6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BD46E4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5BD3A4C(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5BD484C(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

double sub_1D5BD469C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5BD43E8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1D5BD46E4()
{
  result = qword_1EDF05F88;
  if (!qword_1EDF05F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F88);
  }

  return result;
}

unint64_t sub_1D5BD4740()
{
  result = qword_1EDF05F80;
  if (!qword_1EDF05F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F80);
  }

  return result;
}

uint64_t sub_1D5BD4794()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D5BD47D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EDF1B268);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD484C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BEE168(255, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD48DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 304))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5BD48FC()
{
  result = qword_1EDF1B248;
  if (!qword_1EDF1B248)
  {
    sub_1D5BD3920(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B248);
  }

  return result;
}

uint64_t sub_1D5BD4984(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5EF985C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD49DC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BEE168(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD4A40(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5EF985C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD4AA4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBA34C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BD4AFC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D70D9198(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D5BD4B68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedHeadline(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5BD4C20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FeedHeadline(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t FeedLayoutCache.store(cacheKey:cacheItem:position:solverOptions:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v67 = a4;
  sub_1D5B54D70(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v64 = &v55 - v11;
  v12 = sub_1D72585BC();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54D70(0, &qword_1EDF35720, type metadata accessor for FeedLayoutCacheFastPathResult);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v61 = &v55 - v17;
  v66 = type metadata accessor for FeedLayoutCacheFastPathResult();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v18);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedLayoutCacheKey();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a2[3];
  v80 = a2[2];
  *v81 = v25;
  *&v81[9] = *(a2 + 57);
  v26 = a2[1];
  v78 = *a2;
  v79 = v26;
  v27 = *a3;
  v58 = a3[1];
  v59 = v27;
  sub_1D5BE8E40(a1, v24, type metadata accessor for FeedLayoutCacheKey);
  v70 = v80;
  v71[0] = *v81;
  *(v71 + 9) = *&v81[9];
  v68 = v78;
  v69 = v79;
  sub_1D5BDF6E0(&v78, &v73);
  sub_1D725B87C();
  v62 = a1;
  sub_1D5BE8E40(a1, v24, type metadata accessor for FeedLayoutCacheKey);
  v28 = v24[2];
  v29 = v24[3];
  v30 = v24[10];
  v31 = v24 + *(v21 + 32);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);

  sub_1D5BEA830(v24, type metadata accessor for FeedLayoutCacheKey);
  v34 = v78;
  v63 = v5;
  v73 = v78;
  *&v68 = v28;
  *(&v68 + 1) = v29;
  *&v69 = v30;
  *(&v69 + 1) = v33;
  *&v70 = v32;
  swift_bridgeObjectRetain_n();
  sub_1D725B87C();
  v35 = (v67 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 40));
  v36 = v35[1];
  if (v36 < 2)
  {
  }

  v37 = *v35;
  if (v81[24])
  {
    v38 = v65;
    v39 = v66;
    v40 = sub_1D72646CC();

    if (v40)
    {
      goto LABEL_6;
    }
  }

  v38 = v65;
  v39 = v66;
LABEL_6:
  v41 = v62;
  v42 = *(v62 + 128);
  v75 = *(v62 + 112);
  v76 = v42;
  v77 = *(v62 + 144);
  v43 = *(v62 + 96);
  v73 = *(v62 + 80);
  v74 = v43;
  sub_1D5BE8E40(v62, v38, type metadata accessor for FeedLayoutCacheKey);
  *(v38 + *(v39 + 20)) = v34;
  v67 = v37;
  v44 = v61;
  sub_1D5BE8E40(v38, v61, type metadata accessor for FeedLayoutCacheFastPathResult);
  (*(v60 + 56))(v44, 0, 1, v39);
  v46 = v58;
  v45 = v59;
  *&v68 = v59;
  *(&v68 + 1) = v58;
  v71[0] = v75;
  v71[1] = v76;
  v72 = v77;
  v69 = v73;
  v70 = v74;
  sub_1D725B87C();
  *&v68 = v45;
  *(&v68 + 1) = v46;
  v47 = v64;
  sub_1D5D685BC(v67, v36, v41, &v68, v64);
  v50 = v56;
  v49 = v57;
  if ((*(v56 + 48))(v47, 1, v57) == 1)
  {
    sub_1D5BEA830(v38, type metadata accessor for FeedLayoutCacheFastPathResult);
    return sub_1D5B6F454(v47, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v51 = v55;
    (*(v50 + 32))(v55, v47, v49);
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D5BBC604(&qword_1EDF13448, type metadata accessor for FeedLayoutCacheFastPathResult);
    v52 = sub_1D72578BC();
    v54 = v53;

    sub_1D725869C();
    sub_1D5B952F8(v52, v54);
    (*(v50 + 8))(v51, v49);
    return sub_1D5BEA830(v38, type metadata accessor for FeedLayoutCacheFastPathResult);
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D5BD53E8()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t GroupLayoutKey.__deallocating_deinit()
{

  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);

  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, &unk_1EDF27C10, sub_1D5C10AB0);
  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5BD55AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D60847D0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BD561C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BAABFC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BD568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725A0AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5BD574C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D7259F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D7259CFC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for FeedLayoutSolverOptions(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed27BoundGroupLayoutFactoryType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5BD58C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BD590C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t))
{
  v9 = v5;
  v10 = a2(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v29 - v14;
  v16 = *v5;
  a3(0, v13);
  result = sub_1D7263CBC();
  v18 = result;
  if (*(v16 + 16))
  {
    v30 = v9;
    v19 = 0;
    v20 = (v16 + 56);
    v21 = 1 << *(v16 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v16 + 56);
    for (i = (v21 + 63) >> 6; v23; result = a5(v15, v18))
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_11:
      sub_1D5BE7424(*(v16 + 48) + *(v11 + 72) * (v25 | (v19 << 6)), v15, a4);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return result;
      }

      if (v19 >= i)
      {
        break;
      }

      v27 = v20[v19];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_11;
      }
    }

    v28 = 1 << *(v16 + 32);
    if (v28 >= 64)
    {
      bzero((v16 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v28;
    }

    v9 = v30;
    *(v16 + 16) = 0;
  }

  *v9 = v18;
  return result;
}

uint64_t sub_1D5BD5B18(uint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 40;
    do
    {

      sub_1D72621EC();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v25, v5);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  MEMORY[0x1DA6FC0B0](*(a1 + 80));
  sub_1D5BE7138(v8, v9);
  sub_1D5BE7138(v10, v11);
  if (v12 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  if (v13 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  MEMORY[0x1DA6FC0E0](*&v17);
  if (v14 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  MEMORY[0x1DA6FC0E0](*&v18);
  if (v15 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v15;
  }

  MEMORY[0x1DA6FC0E0](*&v19);
  v20 = type metadata accessor for FeedLayoutCacheKey();
  v21 = (a1 + *(v20 + 24));
  sub_1D5BE7138(*v21, v21[1]);
  sub_1D72621EC();
  v22 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5D51EB4(&qword_1EDF3BFB0, 255, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  sub_1D5BE71D0(v25, *(v21 + *(v22 + 36)));
  sub_1D7264A5C();
  v23 = sub_1D7263B9C();
  *(a2 + 56 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
  result = sub_1D5BE7424(a1, *(a2 + 48) + *(*(v20 - 8) + 72) * v23, type metadata accessor for FeedLayoutCacheKey);
  ++*(a2 + 16);
  return result;
}

__n128 sub_1D5BD5E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext();
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x6E6E614264656546, 0xEC00000064417265, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedBannerAd);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF34B08, type metadata accessor for FeedBannerAd);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedBannerAd);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedBannerAd);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x6E6E614264656546, 0xEC00000064417265, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedBannerAd);
  strcpy(&v41, "FeedBannerAd");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

unint64_t sub_1D5BD6184()
{
  result = qword_1EDF33C98;
  if (!qword_1EDF33C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33C98);
  }

  return result;
}

unint64_t sub_1D5BD61D8()
{
  result = qword_1EDF33CA8[0];
  if (!qword_1EDF33CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF33CA8);
  }

  return result;
}

uint64_t sub_1D5BD623C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5BD6280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

char *FeedCursorFactory.__allocating_init(emitterFactory:feedPoolManager:bundleSubscriptionManager:offlineProvider:loggingChannel:feedContextFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v19[3] = type metadata accessor for NoopBundleSessionManager();
  v19[4] = &protocol witness table for NoopBundleSessionManager;
  v19[0] = swift_allocObject();
  sub_1D5B68374(a4, v18);
  swift_allocObject();
  v16 = sub_1D5B82A64(a1, a2, a3, v19, v18, a5, a6, a7);

  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(*(*(v8 + 88) - 8) + 8))(a2);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v16;
}

uint64_t *sub_1D5BD6410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v10);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(v7 + 80);
  *(v13 + 2) = v14;
  v15 = *(v7 + 88);
  *(v13 + 3) = v15;
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  (*(v8 + 32))(&v13[v12], v11, a2);
  v3[2] = sub_1D6FB62F4;
  v3[3] = v13;
  v3[4] = sub_1D5BD65FC(a1, v14, v15, a2, a3);
  v3[5] = v16;
  return v3;
}

uint64_t *AnyFeedServiceConfigFetcher.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D5BD6410(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*sub_1D5BD65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a4);
  return sub_1D6FB635C;
}

uint64_t sub_1D5BD6738()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D726207C();
  }

  sub_1D5B5F6D0();
  result = sub_1D726390C();
  qword_1EDFFCAC8 = result;
  return result;
}

unint64_t sub_1D5BD680C()
{
  v0 = sub_1D72585BC();
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v43 - v5;
  v7 = sub_1D725C34C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - v14;
  v16 = sub_1D725C37C();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2B798 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDFFCAC8;
  sub_1D725C35C();
  sub_1D725C36C();
  sub_1D725C32C();
  v47 = v19;
  v21 = sub_1D725C36C();
  v22 = sub_1D726315C();
  if (sub_1D72638EC())
  {
    v23 = swift_slowAlloc();
    v43 = v6;
    v24 = v7;
    v25 = v23;
    *v23 = 0;
    v26 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v21, v22, v26, "News.NewsFeed.FileBasedDismissalStorage.loadFromDisk", "", v25, 2u);
    v27 = v25;
    v7 = v24;
    v6 = v43;
    MEMORY[0x1DA6FD500](v27, -1, -1);
  }

  (*(v8 + 16))(v11, v15, v7);
  sub_1D725C3BC();
  swift_allocObject();
  sub_1D725C3AC();
  (*(v8 + 8))(v15, v7);
  v28 = [objc_opt_self() defaultManager];
  sub_1D5BD6D9C();
  sub_1D725851C();
  v29 = v46;
  v30 = *(v45 + 8);
  v30(v6, v46);
  v31 = sub_1D726203C();

  v32 = [v28 fileExistsAtPath_];

  if (v32)
  {
    v33 = v44;
    sub_1D5BD6D9C();
    v34 = v50;
    v35 = sub_1D72585DC();
    v50 = v34;
    if (v34)
    {
      v30(v33, v29);
LABEL_12:
      v37 = v47;
      sub_1D5D65128(v47, "News.NewsFeed.FileBasedDismissalStorage.loadFromDisk", 52, 2);

      (*(v48 + 8))(v37, v49);
      return v37;
    }

    v39 = v35;
    v40 = v36;
    v30(v33, v29);
    sub_1D725781C();
    swift_allocObject();
    sub_1D725780C();
    sub_1D6A1CEF8();
    sub_1D6A1D0D0(&qword_1EC890198, sub_1D6A1CFCC, sub_1D6A1D020);
    v41 = v50;
    sub_1D72577FC();
    v50 = v41;
    if (v41)
    {
      sub_1D5B952F8(v39, v40);

      goto LABEL_12;
    }

    sub_1D5B952F8(v39, v40);

    v37 = v51;
  }

  else
  {
    v37 = sub_1D5D65058(MEMORY[0x1E69E7CC0]);
  }

  v38 = v47;
  sub_1D5D65128(v47, "News.NewsFeed.FileBasedDismissalStorage.loadFromDisk", 52, 2);

  (*(v48 + 8))(v38, v49);
  return v37;
}

uint64_t sub_1D5BD6D9C()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:9 inDomains:1];

  v11 = sub_1D726267C();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v1 + 16))(v4, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v8, v4, v0);
      sub_1D725849C();
      return (*(v1 + 8))(v8, v0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BD6F68(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7030(a1, v4);
}

uint64_t sub_1D5BD7030(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D5B6BC50;

  return v6(a1);
}

uint64_t sub_1D5BD7128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5BD71F0(a1, v4, v5, v6);
}

uint64_t sub_1D5BD71F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a1;
  v4[9] = *a4;
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_1D6179F44;

  return sub_1D5BD72AC();
}

uint64_t sub_1D5BD72CC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D5FE65CC;

  return MEMORY[0x1EEE44B88]();
}

uint64_t sub_1D5BD7364()
{
  v1 = v0[6].i64[1];
  v2 = v0[7].i64[0];
  v3 = v0[4].i64[1];
  v4 = v0[5].i64[0];
  v5 = v0[4].i64[0];
  v6 = v0[1].i64[1];
  v7 = *(*v6 + 128);
  v8 = *(v4 + 16);
  v0[9].i64[1] = v8;
  v0[10].i64[0] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6 + v7, v3);
  v9 = *(v2 + 48);
  v0[10].i64[1] = v9;
  v0[11].i64[0] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v1, 1, v5) == 1)
  {
    (*(v0[5].i64[0] + 8))(v0[6].i64[1], v0[4].i64[1]);

    v10 = swift_task_alloc();
    v0[14].i64[0] = v10;
    v11 = type metadata accessor for FeedGroupEmitterOutput();
    *v10 = v0;
    v10[1] = sub_1D5EAB47C;
    v12 = v0[1].i64[0];
    v13 = v0[1].i64[1];
    v14 = &unk_1D727ACB0;
  }

  else
  {
    v15 = v0[8].i64[1];
    v16 = v0[9].i64[0];
    v17 = v0[7].i64[0];
    v18 = v0[6].i64[1];
    v19 = v0[4].i64[0];
    v20 = *(v17 + 32);
    v21 = v0[1].i64[1];
    v0[11].i64[1] = v20;
    v0[12].i64[0] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26 = v0[2];
    v20(v16, v18, v19);
    (*(v17 + 16))(v15, v16, v19);
    v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v23 = swift_allocObject();
    v0[12].i64[1] = v23;
    v23[1] = vextq_s8(v26, v26, 8uLL);
    v23[2].i64[0] = v21;
    v20(v23->i64 + v22, v15, v19);

    v24 = swift_task_alloc();
    v0[13].i64[0] = v24;
    *v24 = v0;
    v24[1] = sub_1D5EAAFF8;
    v12 = v0[6].i64[0];
    v11 = v0[4].i64[1];
    v14 = &unk_1D727ACC0;
    v13 = v23;
  }

  return MEMORY[0x1EEE44AD8](v12, v14, v13, v11);
}

uint64_t sub_1D5BD7610()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(type metadata accessor for FeedGroupEmitterCachedOutput() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  v4 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_17;
    }

    type metadata accessor for FeedGroupEmitterEmbeddedOutput();
    v7 = swift_getEnumCaseMultiPayload();
    switch(v7)
    {
      case 2:

        break;
      case 1:
        (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
        break;
      case 0:
        (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
        sub_1D5BE1404();
        v8 = v4 + *(swift_getTupleTypeMetadata2() + 48);
        if (*(v8 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v8);
        }

        break;
    }

    sub_1D5B49474(255, qword_1EDF37D80);
    v6 = v4 + *(swift_getTupleTypeMetadata2() + 48);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
    sub_1D5BE1404();
    v6 = v4 + *(swift_getTupleTypeMetadata2() + 48);
    if (*(v6 + 24))
    {
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1D5BD7944(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D5B64680;

  return sub_1D5BD79E0(a1, v1);
}

uint64_t sub_1D5BD79E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5BD7A00, 0, 0);
}

uint64_t sub_1D5BD7A00()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D5EACBC8;
  v3 = v0[2];

  return sub_1D5BD7AA4(v3, v1);
}

uint64_t sub_1D5BD7AA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5BD7AC8, 0, 0);
}

uint64_t sub_1D5BD7AC8()
{
  v5 = (*(v0[4] + 192) + **(v0[4] + 192));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D5C4316C;
  v2 = v0[2];
  v3 = v0[3];

  return v5(v2, v3);
}

uint64_t sub_1D5BD7BBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D5BD7CAC(a1, a2, v2 + v8, v6, v7);
}

uint64_t sub_1D5BD7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5BD7CD4, 0, 0);
}

uint64_t sub_1D5BD7CD4()
{
  v0[7] = (*(v0[6] + 24))(v0[3], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D6B6A154;
  v2 = v0[2];

  return MEMORY[0x1EEE44EF0](v2);
}

uint64_t FeedGroupEmitterCursor.unboxCursor<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  sub_1D5BD82C0(v2 + *(v4 + 168), &v30, sub_1D5BE1404);
  if (v31)
  {
    sub_1D5B7C390(&v30, v32);
    sub_1D5B76B10(v32, &v30);
    v20 = swift_dynamicCast();
    v21 = *(v11 + 56);
    if (v20)
    {
      v21(v10, 0, 1, a2);
      (*(v11 + 32))(v19, v10, a2);
      sub_1D725BC0C();
      (*(v11 + 16))(v15, v19, a2);
      v22 = sub_1D725BB0C();
      (*(v11 + 8))(v19, a2);
      __swift_destroy_boxed_opaque_existential_1(v32);
      return v22;
    }

    else
    {
      v21(v10, 1, 1, a2);
      (*(v7 + 8))(v10, v6);
      sub_1D5B76B10(v32, &v30);
      sub_1D5B85738(0, &qword_1EDF3B8E8, sub_1D5BE1404, MEMORY[0x1E69D6B18]);
      if (swift_dynamicCast())
      {
        v25 = swift_allocObject();
        v25[2] = *(v5 + 80);
        v25[3] = a2;
        v25[4] = *(v5 + 88);
        v26 = sub_1D725B92C();
        v27 = sub_1D725BA7C();
      }

      else
      {
        sub_1D725BC0C();
        sub_1D6A2E3D4();
        swift_allocError();
        *v28 = xmmword_1D7297410;
        *(v28 + 16) = 8;
        v27 = sub_1D725BAEC();
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
      return v27;
    }
  }

  else
  {
    sub_1D5B88E90(&v30, sub_1D5BE1404);
    sub_1D725BC0C();
    sub_1D6A2E3D4();
    swift_allocError();
    *v24 = xmmword_1D728CF30;
    *(v24 + 16) = 8;
    return sub_1D725BAEC();
  }
}

uint64_t sub_1D5BD81F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BD8258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BD82C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BD8328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BD83B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23[-v17];
  sub_1D5BD82C0(a1, v23, sub_1D5BE1404);
  sub_1D5BE1404();
  v19 = swift_dynamicCast();
  v20 = *(v10 + 56);
  if (v19)
  {
    v20(v9, 0, 1, a3);
    (*(v10 + 32))(v18, v9, a3);
    sub_1D725BC0C();
    (*(v10 + 16))(v14, v18, a3);
    v5 = sub_1D725BB0C();
    (*(v10 + 8))(v18, a3);
  }

  else
  {
    v20(v9, 1, 1, a3);
    (*(v6 + 8))(v9, v5);
    sub_1D6A2E3D4();
    swift_allocError();
    *v21 = xmmword_1D7297410;
    *(v21 + 16) = 8;
    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1D5BD865C()
{
  result = qword_1EDF1B680;
  if (!qword_1EDF1B680)
  {
    sub_1D5B58D88();
    sub_1D5BDA5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B680);
  }

  return result;
}

uint64_t sub_1D5BD86D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FeedCursorStore.createToken(cursorContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D725A76C();
  swift_beginAccess();
  v5 = v1[7];
  v6 = *(v4 + 88);
  v7 = sub_1D5BFB900(a1);
  v9 = v8;

  v10 = sub_1D5BE240C(v7, v9, v5);

  v11 = 0;
  if (v10)
  {
    v12 = sub_1D5BFB900(a1);
    v14 = v13;
    type metadata accessor for FeedCursorToken();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = sub_1D5BFB900(a1);
    v18 = v17;
    swift_beginAccess();
    v84 = v16;
    v85 = v18;
    type metadata accessor for FeedCursorStore.WeakToken();
    sub_1D72627FC();

    sub_1D7261E3C();

    v19 = v81;
    swift_endAccess();
    if (!v81)
    {
      v19 = sub_1D726275C();
    }

    v86[4] = v19;
    v76 = v15;
    v86[1] = sub_1D6125EFC();
    sub_1D72627BC();
    sub_1D5BFB900(a1);
    v20 = v19;
    swift_beginAccess();
    v21 = sub_1D7261E1C();

    v75 = v20;

    v72 = v21;
    sub_1D7261E4C();
    swift_endAccess();
    sub_1D5BFB900(a1);
    swift_beginAccess();
    v80 = type metadata accessor for FeedCursorContainer();
    v22 = sub_1D7261E1C();

    v79 = v22;
    sub_1D7261E4C();
    swift_endAccess();
    v23 = sub_1D5BFB900(a1);
    v25 = v24;
    v26 = type metadata accessor for FeedCursorStore.WeakCursorContainer();
    swift_allocObject();

    v81 = sub_1D6125CCC();
    v84 = v23;
    v85 = v25;
    swift_beginAccess();
    v74 = v26;
    sub_1D7261E1C();
    sub_1D7261E4C();
    swift_endAccess();
    v27 = FeedCursorContainer.walkCursorChain(_:)(sub_1D6125F64, v2, a1);
    v86[0] = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v27, v28);
    v77 = v6;
    v78 = v29;
    v70 = v29;
    v71 = v6;

    v30 = sub_1D7261E0C();
    v73 = 0;

    swift_beginAccess();
    v2[5] = v30;

    v32 = 0;
    v33 = 1 << *(v30 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v30 + 64);
    v36 = (v33 + 63) >> 6;
    if (v35)
    {
      goto LABEL_10;
    }

LABEL_11:
    while (1)
    {
      v37 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v37 >= v36)
      {

        v84 = v2[4];
        v46 = MEMORY[0x1E69E6158];
        sub_1D7261DCC();

        swift_getWitnessTable();
        sub_1D7262BBC();
        v47 = v86[0];
        v48 = sub_1D7262B2C();
        if (sub_1D7262B7C())
        {

LABEL_31:
          MEMORY[0x1EEE9AC00](v49, v50);
          v68 = v78;
          v69 = v77;
          v70 = sub_1D6125F94;
          v71 = 0;

          v2[3] = sub_1D7261DFC();

          v11 = v76;
          goto LABEL_32;
        }

        sub_1D5C384A0();
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1D7270C10;
        v52 = sub_1D7262B1C();
        v54 = v53;
        *(v51 + 56) = v46;
        v55 = sub_1D5B7E2C0();
        *(v51 + 64) = v55;
        *(v51 + 32) = v52;
        *(v51 + 40) = v54;
        v80 = v47;
        v56 = sub_1D7262B1C();
        *(v51 + 96) = v46;
        *(v51 + 104) = v55;
        *(v51 + 72) = v56;
        *(v51 + 80) = v57;
        sub_1D7262EDC();
        sub_1D725C30C();

        v58 = 0;
        v59 = 1 << *(v48 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & *(v48 + 56);
        for (i = (v59 + 63) >> 6; v61; result = )
        {
          v63 = v58;
LABEL_28:
          v64 = (*(v48 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v61)))));
          v65 = v64[1];
          v61 &= v61 - 1;
          v81 = *v64;
          v66 = v81;
          v82 = v65;
          swift_beginAccess();

          sub_1D7261D5C();
          swift_endAccess();
          sub_1D5BD9F54(v83);
          v81 = v66;
          v82 = v65;
          swift_beginAccess();
          sub_1D7261D5C();
          swift_endAccess();
        }

        while (1)
        {
          v63 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if (v63 >= i)
          {

            goto LABEL_31;
          }

          v61 = *(v48 + 56 + 8 * v63);
          ++v58;
          if (v61)
          {
            v58 = v63;
            goto LABEL_28;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v35 = *(v30 + 64 + 8 * v37);
      ++v32;
      if (v35)
      {
        while (1)
        {
          v38 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v39 = v38 | (v37 << 6);
          v40 = (*(v30 + 48) + 16 * v39);
          v41 = *v40;
          v42 = v40[1];
          v84 = *(*(v30 + 56) + 8 * v39);

          swift_getWitnessTable();
          if (sub_1D7262CCC())
          {
            goto LABEL_9;
          }

          swift_beginAccess();
          v81 = v41;
          v82 = v42;

          sub_1D7261E3C();

          v43 = v83;
          if ((~v83 & 0xF000000000000007) == 0)
          {
            break;
          }

          swift_endAccess();

          MEMORY[0x1EEE9AC00](v44, v45);
          v68 = v78;
          v69 = v77;
          v70 = v86;
          FeedCursorContainer.walkCursorChain(_:)(sub_1D6125F88, &v67, v43);
          result = sub_1D5BD9F54(v43);
          v32 = v37;
          if (!v35)
          {
            goto LABEL_11;
          }

LABEL_10:
          v37 = v32;
        }

        swift_endAccess();
LABEL_9:

        v32 = v37;
        if (!v35)
        {
          continue;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_32:
  sub_1D725A77C();
  return v11;
}

uint64_t sub_1D5BD90E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5BD9144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FeedCursor.rootCursor.getter()
{
  v1 = v0;
  type metadata accessor for FeedNextCursor();
  sub_1D7261CEC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_allocObject();

  sub_1D5BD9700(v4);
  v5 = sub_1D5BD976C();

  v33 = v5;
  sub_1D7261E1C();

  sub_1D7261E4C();
  v6 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v3;
  swift_allocObject();

  sub_1D5BD9700(v10);

  v11 = sub_1D5BD9E58();

  if (v11)
  {
    do
    {

      v33 = sub_1D5BD976C();
      sub_1D7261E4C();
      v13 = *((*(v11 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((*(v11 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);

      if (v15 >= v14 >> 1)
      {
        v6 = sub_1D5B858EC((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[16 * v15];
      *(v16 + 4) = v13;
      *(v16 + 5) = v12;
      v17 = sub_1D5BD9E58();

      v11 = v17;
    }

    while (v17);
  }

  swift_allocObject();

  sub_1D5BD9700(v18);

  Strong = swift_weakLoadStrong();

  while (Strong)
  {
    v1 = Strong;
    swift_allocObject();

    sub_1D5BD9700(v20);

    v33 = sub_1D5BD976C();
    sub_1D7261E4C();
    v22 = *(Strong + 16);
    v21 = *(Strong + 24);
    v23 = *(v6 + 2);
    v24 = *(v6 + 3);

    if (v23 >= v24 >> 1)
    {
      v6 = sub_1D5B858EC(1, v23 + 1, 1, v6);
    }

    swift_arrayDestroy();
    v25 = *(v6 + 2);
    memmove(v6 + 48, v6 + 32, 16 * v25);
    *(v6 + 2) = v25 + 1;
    *(v6 + 4) = v22;
    *(v6 + 5) = v21;

    Strong = swift_weakLoadStrong();
  }

  v26 = *(v6 + 2);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = v6 + 40;
    do
    {

      sub_1D7261E3C();

      if (v33)
      {

        swift_weakAssign();
        sub_1D5BD9EBC();

        if (v28)
        {

          sub_1D6F793CC(v30);
        }

        v31 = *(v33 + 16);
        if (v31 < 0)
        {
          v31 = 0;
        }

        else
        {
        }

        if (!v27)
        {
          v27 = *(v33 + 16);
          if (v27 < 0)
          {
            v27 = 0;
          }

          else
          {
          }
        }

        v28 = v31;
      }

      v29 += 16;
      --v26;
    }

    while (v26);

    if (v27)
    {

      v1 = v27;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t FeedCursorContainer.rootCursorContainer.getter(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    return FeedCursor.rootCursor.getter();
  }

  return v1;
}

uint64_t sub_1D5BD9700(uint64_t a1)
{
  v2 = v1;
  swift_weakInit();
  *(v2 + 16) = a1;

  sub_1D5BE1A00();

  swift_weakAssign();

  return v2;
}

uint64_t sub_1D5BD976C()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {

    v3 = sub_1D6F77350();
    v2 = swift_allocObject();
    sub_1D6F772F8(v3);
  }

  else
  {

    v1 = sub_1D5BD9834();
    v2 = swift_allocObject();
    sub_1D5BD9700(v1);
  }

  return v2;
}

char *sub_1D5BD9834()
{
  v1 = *v0;
  v2 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v61 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D726393C();
  v51 = v5;
  v53 = *(v5 - 8);
  v6 = v53;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - v8;
  v48 = &v40 - v8;
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v55 = &v40 - v18;
  v19 = v0[3];
  v57 = v0[2];
  v60 = v19;
  v56 = *(v1 + 256);
  v59 = *(v0 + *(v1 + 264));
  v66[0] = *(v0 + 32);
  v20 = *(v11 + 16);
  v20(&v40 - v18, v0 + qword_1EDFFCF50, v10, v17);
  (v20)(v14, v0 + qword_1EDFFCF58, v10);
  v42 = *(v0 + qword_1EDFFCF48);
  v58 = *(v0 + qword_1EDFFCF08);
  v21 = *(v0 + qword_1EDFFCF10);
  v46 = *(v0 + qword_1EDFFCF20);
  v22 = *(v0 + qword_1EDFFCF40);
  v47 = *(v0 + qword_1EDFFCF38);
  v52 = *(v0 + qword_1EDFFCEF8);
  v50 = *(v0 + qword_1EDFFCF60);
  v49 = *(v0 + qword_1EDFFCF18);
  v43 = *(v0 + qword_1EDFFCF30);
  v45 = *(v0 + qword_1EDFFCF28);
  v23 = *(*v0 + 224);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v23, v5);
  sub_1D5BE6814(v0 + *(*v0 + 232), v61);
  v24 = *v0;
  v25 = (v0 + *(*v0 + 240));
  v27 = *v25;
  v26 = v25[1];
  v41 = v25[2];
  *&v64 = v27;
  *(&v64 + 1) = v26;
  v65 = v41;
  v28 = v0 + v24[31];
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v62 = v29;
  v63 = v28;
  v40 = *(v0 + v24[35]);
  v30 = *(v0 + v24[36]);
  v44 = swift_allocObject();

  v31 = v46;

  v32 = v47;

  v33 = v43;

  v34 = v45;

  v35 = v40;

  v39 = v30;
  v36 = v48;
  v37 = sub_1D5BE1A84(v57, v60, v0 + v56, v59, v66, v55, v54, v42, v58, v21, v31, v22, v32, v52, v50, v49, v33, v34, v48, v61, &v64, &v62, v35, v39, 0, 0);
  (*(v53 + 8))(v36, v51);

  return v37;
}

uint64_t FeedNextCursor.__deallocating_deinit()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5BD9E58()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  swift_beginAccess();
}

uint64_t sub_1D5BD9EBC()
{
  v1 = *(v0 + 16);
  swift_weakLoadStrong();

  if (v1 < 0)
  {
    swift_weakAssign();
    sub_1D6F77ED4();
  }

  else
  {
    sub_1D5BE232C();
  }
}

uint64_t sub_1D5BD9F54(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t FeedCursorContainer.nextCursorContainer.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0xF000000000000007;
  }

  v1 = *(*a1 + 272);
  swift_beginAccess();
  if (!*(a1 + v1))
  {
    return 0xF000000000000007;
  }

  result = FeedNextCursor.syncCursor.getter();
  if (!result)
  {
    return 0xF000000000000007;
  }

  return result;
}

uint64_t *FeedCursor.deinit()
{
  v1 = *v0;

  v2 = qword_1EDFFCF50;
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + qword_1EDFFCF58, v3);

  v5 = *(*v0 + 224);
  v6 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_1D726393C();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  sub_1D5BE23B0(v0 + *(*v0 + 232));

  (*(*(v6 - 8) + 8))(v0 + *(*v0 + 256), v6);

  swift_weakDestroy();
  return v0;
}

uint64_t FeedCursor.__deallocating_deinit()
{
  FeedCursor.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedCursorStoreManager.createToken<A>(cursorContainer:)(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v3 = a1;

  sub_1D725A76C();
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v10 = v3;

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v5 = sub_1D7263BFC();
          if (!v5)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        type metadata accessor for FeedCursorStore();
        if (swift_dynamicCastClass())
        {
          v2 = FeedCursorStore.createToken(cursorContainer:)(v10);

          swift_unknownObjectRelease();
          if (v2)
          {
            goto LABEL_20;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v6;
      if (v7 == v5)
      {
        v2 = 0;
LABEL_20:
        v3 = v10;

        goto LABEL_25;
      }
    }
  }

  v2 = 0;
LABEL_25:
  sub_1D725A77C();
  sub_1D5BD9F54(v3);
  return v2;
}

void *FeedItemRendererResult.cell.getter()
{
  v0 = sub_1D5BE5B1C();
  v1 = v0;
  return v0;
}

unint64_t sub_1D5BDA5B0()
{
  result = qword_1EDF1B9E0;
  if (!qword_1EDF1B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B9E0);
  }

  return result;
}

void sub_1D5BDA604()
{
  if (!qword_1EDF1AF10)
  {
    sub_1D5B58244(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AF10);
    }
  }
}

unint64_t sub_1D5BDA678()
{
  result = qword_1EDF1AF08;
  if (!qword_1EDF1AF08)
  {
    sub_1D5BDA604();
    sub_1D5BDA728(&qword_1EDF1AF30, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF08);
  }

  return result;
}

uint64_t sub_1D5BDA728(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49F88(255, a2, a3);
    sub_1D5BDA5B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BDA78C()
{
  if (!qword_1EDF19760)
  {
    sub_1D5B483C4(255, &qword_1EDF3FA20);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19760);
    }
  }
}

uint64_t sub_1D5BDA89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDA904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDA96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDA9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDAA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDAAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDAB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDAB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDABDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5BDAC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BDACA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v46 = type metadata accessor for GroupLayoutBindingContext();
  v8 = *(v46 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v55 = *(v2 + v8);
  v44 = v4;
  v45 = v6;
  sub_1D5BCF690(a2, v4, v5, v6, v7, isUniquelyReferenced_nonNull_native);
  v47 = v7;

  v48 = v5;

  *(v2 + v8) = v55;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v10, 0);
    v11 = v49;
    v12 = a2 + 32;
    do
    {
      sub_1D5B68374(v12, &v55);
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v13 = sub_1D725AA4C();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v17 = *(v49 + 16);
      v16 = *(v49 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      *(v49 + 16) = v17 + 1;
      v18 = v49 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  v19 = sub_1D5B86020(v11);

  v42 = *(v46 + 60);
  v43 = v2;
  v21 = *(v2 + v42);
  v22 = *(v21 + 16);
  v23 = v44;
  if (v22)
  {
    v24 = 0;
    v25 = v19 + 56;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D5BD03B0(v21 + 32 + 72 * v24, &v55);
      v27 = v56;
      v28 = v55 == v23 && *(&v55 + 1) == v48;
      if (!v28 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(&v27 + 1))
      {
        if (!v47 || v27 != __PAIR128__(v47, v45) && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (v47)
      {
        goto LABEL_33;
      }

      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      v29 = sub_1D725AA4C();
      v31 = v30;
      if (*(v19 + 16))
      {
        v32 = v29;
        sub_1D7264A0C();
        sub_1D72621EC();
        v33 = sub_1D7264A5C();
        v34 = -1 << *(v19 + 32);
        v35 = v33 & ~v34;
        if ((*(v25 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          break;
        }
      }

LABEL_8:

      result = sub_1D5BD03E8(&v55);
      v23 = v44;
LABEL_9:
      if (++v24 == v22)
      {
        goto LABEL_39;
      }
    }

    v36 = ~v34;
    while (1)
    {
      v37 = (*(v19 + 48) + 16 * v35);
      v38 = *v37 == v32 && v37[1] == v31;
      if (v38 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v35 = (v35 + 1) & v36;
      if (((*(v25 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v23 = v44;
LABEL_33:
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v50 = v55;
    v51 = v56;
    result = swift_isUniquelyReferenced_nonNull_native();
    v60 = v26;
    if ((result & 1) == 0)
    {
      result = sub_1D5BD06F0(0, *(v26 + 16) + 1, 1);
      v26 = v60;
    }

    v40 = *(v26 + 16);
    v39 = *(v26 + 24);
    if (v40 >= v39 >> 1)
    {
      result = sub_1D5BD06F0((v39 > 1), v40 + 1, 1);
      v26 = v60;
    }

    *(v26 + 16) = v40 + 1;
    v41 = v26 + 72 * v40;
    *(v41 + 32) = v50;
    *(v41 + 96) = v54;
    *(v41 + 64) = v52;
    *(v41 + 80) = v53;
    *(v41 + 48) = v51;
    goto LABEL_9;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_39:

  *(v43 + v42) = v26;
  return result;
}