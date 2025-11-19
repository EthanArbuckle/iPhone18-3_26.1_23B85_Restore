uint64_t sub_1D70AB0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70AB128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatUploadHiddenEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D70AB18C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::AlertShortcutsLimitReached __swiftcall AlertShortcutsLimitReached.init(shortcutLimit:)(NewsFeed::AlertShortcutsLimitReached shortcutLimit)
{
  *v1 = shortcutLimit.shortcutLimit.value;
  *(v1 + 8) = shortcutLimit.shortcutLimit.is_nil;
  return shortcutLimit;
}

uint64_t AlertShortcutsLimitReached.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t AlertShortcutsLimitReached.message.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_1D725811C();
  }

  else
  {
    type metadata accessor for Localized();
    v4 = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7273AE0;
    v7 = sub_1D72644BC();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D5B7E2C0();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v3 = sub_1D72620BC();
  }

  return v3;
}

uint64_t AlertShortcutsLimitReached.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D70AB570()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D70AB65C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

void sub_1D70AB76C(void *a1)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [objc_opt_self() nss:v11 NewsURLForIssueID:?];

  if (v12)
  {
    sub_1D72584EC();

    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_1D5EB8540(v5, v10);
  sub_1D72585BC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_1D5B6F568(v10, sub_1D5B4D3E0);
  }

  else
  {
    sub_1D72583DC();
    (*(v14 + 8))(v10, v13);
    v15 = [objc_opt_self() generalPasteboard];
    v16 = sub_1D726203C();

    [v15 setString_];
  }
}

uint64_t sub_1D70AB9F8(void *a1)
{
  sub_1D5B4D3E0();
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4).n128_u64[0];
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 identifier];
  if (!v8)
  {
    sub_1D726207C();
    v8 = sub_1D726203C();
  }

  v9 = [objc_opt_self() nss:v8 NewsURLForIssueID:?];

  if (!v9)
  {
    v16 = sub_1D72585BC();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_1D5B6F568(v7, sub_1D5B4D3E0);
    return 0;
  }

  sub_1D72584EC();

  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_1D5B6F568(v7, sub_1D5B4D3E0);
  v11 = *(v1 + 16);
  v12 = [a1 sourceChannel];
  v13 = [v11 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v14 = [v12 asSection];
    if (!v14 || (v15 = [v14 parentID], swift_unknownObjectRelease(), !v15))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    v15 = [v12 identifier];
  }

  v18 = sub_1D726207C();
  v20 = v19;

  v21 = [v13 purchasedTagIDs];
  v22 = sub_1D7262B0C();

  LOBYTE(v21) = sub_1D5BE240C(v18, v20, v22);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v21)
  {
    swift_unknownObjectRelease();
    return 1;
  }

LABEL_12:
  v23 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v23, v23 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B6F568(&v36, sub_1D5BE1404);
    goto LABEL_20;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = 0;
    v26 = 0;
    goto LABEL_21;
  }

  v24 = v33;
  v25 = [v33 integerValue];
  if (v25 == -1)
  {

    goto LABEL_32;
  }

  v26 = v25;
LABEL_21:
  if (objc_getAssociatedObject(v23, ~v26))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B6F568(&v36, sub_1D5BE1404);
LABEL_29:

    if (v26)
    {
      goto LABEL_32;
    }

LABEL_30:
    swift_unknownObjectRelease();
    return [a1 isPaid] ^ 1;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v27 = v33;
  v28 = [v27 integerValue];

  if (((v28 ^ v26) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  v29 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v30 = [v12 identifier];
  if (!v30)
  {
    sub_1D726207C();
    v30 = sub_1D726203C();
  }

  v31 = [v29 containsTagID_];

  swift_unknownObjectRelease();
  if (v31)
  {
    return 1;
  }

  return [a1 isPaid] ^ 1;
}

uint64_t sub_1D70ABFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B85738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1D673D8C0(a3, &v24[-1] - v11);
  v13 = sub_1D726294C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D5BA72C8(v12);
  }

  else
  {
    sub_1D726293C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D726285C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D726211C();
      sub_1D70AE87C(v20 + 32, v24);

      v21 = v24[0];
      sub_1D5BA72C8(a3);

      return v21;
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

  sub_1D5BA72C8(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t FeedGroupEmitterCursor.allGroups.getter()
{
  type metadata accessor for FeedCursorGroup();

  return sub_1D726274C();
}

uint64_t sub_1D70AC314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t *a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = swift_allocObject();
  sub_1D70AC9E8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  return v25;
}

uint64_t FeedGroupEmitterCursor.pool.getter()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = sub_1D726393C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1D725BC0C();
  (*(v3 + 16))(v6, &v0[*(v1 + 240)], v2);
  return sub_1D725BB0C();
}

void FeedGroupEmitterCursor.cachePolicy.getter(uint64_t a1@<X8>)
{
  v2 = (v1 + *(*v1 + 184));
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t FeedGroupEmitterCursor.currentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 200);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupEmitterCursor.feedPool.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, &v1[*(v3 + 240)], v5, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(a1, v10, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v10, v5);
  sub_1D6A2E3D4();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 8;
  return swift_willThrow();
}

uint64_t sub_1D70AC9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t *a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v37 = *a13;
  v36 = *(a13 + 8);
  v38 = *a14;
  (*(*(*(*v20 + 80) - 8) + 32))(v20 + *(*v20 + 96), a1, *(*v20 + 80));
  *(v20 + *(*v20 + 104)) = a2;
  *(v20 + *(*v20 + 112)) = a3;
  *(v20 + *(*v20 + 120)) = a4;
  *(v20 + *(*v20 + 136)) = a5;
  *(v20 + *(*v20 + 152)) = a6;
  *(v20 + *(*v20 + 128)) = a7;
  *(v20 + *(*v20 + 144)) = a8;
  *(v20 + *(*v20 + 160)) = a9;
  v26 = *(*v20 + 240);
  swift_getAssociatedTypeWitness();
  v27 = sub_1D726393C();
  (*(*(v27 - 8) + 32))(v20 + v26, a10, v27);
  v28 = (v20 + *(*v20 + 168));
  v29 = a11[1];
  *v28 = *a11;
  v28[1] = v29;
  sub_1D5C25D20(a12, v20 + *(*v20 + 176));
  v30 = v20 + *(*v20 + 184);
  *v30 = v37;
  *(v30 + 8) = v36;
  *(v20 + *(*v20 + 192)) = v38;
  *(v20 + *(*v20 + 224)) = a15;
  v31 = *(*v20 + 200);
  v32 = sub_1D725891C();
  (*(*(v32 - 8) + 32))(v20 + v31, a16, v32);
  *(v20 + *(*v20 + 208)) = a17;
  *(v20 + *(*v20 + 216)) = a18;
  *(v20 + *(*v20 + 248)) = a19;
  *(v20 + *(*v20 + 232)) = a20;
  return v20;
}

uint64_t FeedGroupEmitterCursor.allDatabaseGroups.getter()
{
  type metadata accessor for FeedDatabaseGroup();

  return sub_1D726274C();
}

uint64_t sub_1D70ACE70()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D70ACF18;

  return sub_1D5FE5B68();
}

uint64_t sub_1D70ACF18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t FeedGroupEmitterCursor.unboxCursor<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  sub_1D5BD82C0(v2 + *(*v2 + 168), &v16, sub_1D5BE1404);
  if (v17)
  {
    sub_1D5B7C390(&v16, v18);
    sub_1D5B76B10(v18, &v16);
    v10 = swift_dynamicCast();
    v11 = *(*(a1 - 8) + 56);
    if (v10)
    {
      v12 = *(a1 - 8);
      v11(v9, 0, 1, a1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return (*(v12 + 32))(a2, v9, a1);
    }

    else
    {
      v11(v9, 1, 1, a1);
      (*(v6 + 8))(v9, v5);
      sub_1D6A2E3D4();
      swift_allocError();
      *v15 = xmmword_1D7297410;
      *(v15 + 16) = 8;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  else
  {
    sub_1D5B88E90(&v16, sub_1D5BE1404);
    sub_1D6A2E3D4();
    swift_allocError();
    *v14 = xmmword_1D728CF30;
    *(v14 + 16) = 8;
    return swift_willThrow();
  }
}

uint64_t FeedGroupEmitterCursor.unboxCursor<A>(_:createInitialCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[14] = a1;
  v8 = sub_1D726393C();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = *(a5 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D70AD3AC, 0, 0);
}

uint64_t sub_1D70AD3AC()
{
  sub_1D5BD82C0(*(v0 + 144) + *(**(v0 + 144) + 168), v0 + 48, sub_1D5BE1404);
  if (*(v0 + 72))
  {
    v1 = *(v0 + 176);
    sub_1D5B7C390((v0 + 48), (v0 + 16));
    sub_1D5B76B10(v0 + 16, v0 + 80);
    v2 = swift_dynamicCast();
    v3 = *(v1 + 56);
    if (v2)
    {
      v5 = *(v0 + 176);
      v4 = *(v0 + 184);
      v6 = *(v0 + 168);
      v7 = *(v0 + 136);
      v8 = *(v0 + 112);
      v3(v6, 0, 1, v7);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v9 = *(v5 + 32);
      v9(v4, v6, v7);
      v9(v8, v4, v7);
    }

    else
    {
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      v3(v15, 1, 1, *(v0 + 136));
      (*(v16 + 8))(v15, v17);
      sub_1D6A2E3D4();
      swift_allocError();
      *v18 = xmmword_1D7297410;
      *(v18 + 16) = 8;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v11 = *(v0 + 120);
    sub_1D5B88E90(v0 + 48, sub_1D5BE1404);
    v19 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_1D70AD6B8;
    v13 = *(v0 + 112);

    return v19(v13);
  }
}

uint64_t sub_1D70AD6B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t FeedGroupEmitterCursor.unwrappedPool.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, AssociatedTypeWitness);
  v2 = &v4 - v1;
  sub_1D725BC0C();
  FeedGroupEmitterCursor.feedPool.getter(v2);
  return sub_1D725BB0C();
}

uint64_t sub_1D70AD8D4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 80);
  v6 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v32 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v42, v7, v22);
  v41 = sub_1D726275C();
  v40 = sub_1D726275C();
  type metadata accessor for FeedCursorGroup();
  v39 = sub_1D726275C();
  v37 = sub_1D726275C();
  v36 = sub_1D726275C();
  type metadata accessor for FeedDatabaseGroup();
  v35 = sub_1D726275C();
  v34 = sub_1D726275C();
  v33 = sub_1D726275C();
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  memset(v48, 0, 32);
  v26 = v38;
  sub_1D5BD82C0(v43, v38, type metadata accessor for FeedContext);
  v46 = 0;
  v47 = 1;
  v45 = 0;
  type metadata accessor for FeedCursorTracker();
  (*(v6 + 48))(v7, v6);
  v27 = FeedCursorTracker.__allocating_init(context:)(v11);
  type metadata accessor for FeedGroupEmitTaskGap();
  v28 = sub_1D5FE6528();
  v29 = v44;
  sub_1D6F76D68();
  v30 = swift_allocObject();
  sub_1D70AC9E8(v24, v41, v40, v39, v37, v36, v35, v34, v33, v19, v48, v26, &v46, &v45, v27, v29, 0, 0, v28, MEMORY[0x1E69E7CC0]);
  return v30;
}

uint64_t FeedGroupEmitterCursor.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));

  sub_1D5B88E90(v0 + *(*v0 + 168), sub_1D5BE1404);
  sub_1D5B88E90(v0 + *(*v0 + 176), type metadata accessor for FeedContext);
  v1 = *(*v0 + 200);
  v2 = sub_1D725891C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 240);
  swift_getAssociatedTypeWitness();
  v4 = sub_1D726393C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t FeedGroupEmitterCursor.__deallocating_deinit()
{
  FeedGroupEmitterCursor.deinit();

  return swift_deallocClassInstance();
}

uint64_t *LazyFeedGroupEmitterCursor.init(promise:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D70AE938(a1, a2);

  return v2;
}

uint64_t sub_1D70AE198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725BC0C();
  (*(v6 + 16))(v8, a1, a2);
  result = sub_1D725BB0C();
  *a3 = result;
  return result;
}

uint64_t ModernLazyFeedGroupEmitterCursor.value.getter(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D70AE2C0, 0, 0);
}

uint64_t sub_1D70AE2C0()
{
  v1 = v0[5];
  sub_1D725B77C();
  v2 = v0[2];
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = *(v1 + 80);
  v5 = sub_1D5BA6EF4();
  *v3 = v0;
  v3[1] = sub_1D5D0CE5C;
  v6 = v0[3];
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v6, v2, v4, v5, v7);
}

uint64_t sub_1D70AE3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_allocObject();
  v6 = a3(a1, a2);

  return v6;
}

uint64_t *ModernLazyFeedGroupEmitterCursor.init(task:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D70AEC24(a1, a2);

  return v2;
}

uint64_t sub_1D70AE460(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_allocObject();
  v5 = a2(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1D70AE500(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2();
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1D70AE57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B85738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1D726294C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v6 + 16))(v8, a1, a2);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v6 + 32))(&v15[v14], v8, a2);
  result = sub_1D70ABFA4(0, 0, v12, &unk_1D738C020, v15);
  *a3 = result;
  return result;
}

uint64_t sub_1D70AE774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D70AE798, 0, 0);
}

uint64_t sub_1D70AE798()
{
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t ModernLazyFeedGroupEmitterCursor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D70AE87C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D70AE938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = *(v6 + 80);
  sub_1D725BC0C();
  sub_1D725B7BC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  sub_1D5BA6F58();
  v3[2] = sub_1D725B79C();
  return v3;
}

uint64_t *sub_1D70AEA58(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1D725BC0C();
  sub_1D725B7BC();
  (*(v7 + 16))(v11, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  (*(v7 + 32))(v13 + v12, v11, v6);
  sub_1D5BA6F58();
  v1[2] = sub_1D725B79C();
  return v1;
}

uint64_t *sub_1D70AEC24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = *(v6 + 80);
  sub_1D5BA6EF4();
  sub_1D726297C();
  sub_1D725B7BC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  sub_1D5BA6F58();
  v3[2] = sub_1D725B79C();
  return v3;
}

uint64_t *sub_1D70AED58(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1D5BA6EF4();
  sub_1D726297C();
  sub_1D725B7BC();
  (*(v7 + 16))(v11, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  (*(v7 + 32))(v13 + v12, v11, v6);
  sub_1D5BA6F58();
  v1[2] = sub_1D725B79C();
  return v1;
}

uint64_t sub_1D70AEF38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedContext();
    if (v2 <= 0x3F)
    {
      result = sub_1D725891C();
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        result = sub_1D726393C();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D70AF270(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D70AE774(a1, v7, v5, v1 + v6, v4);
}

uint64_t sub_1D70AF360@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

uint64_t sub_1D70AF3CC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

uint64_t sub_1D70AF418@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D70AF920();
  v5 = v4;
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70AFA34(0, &qword_1EC89A088, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70AF988();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v18;
    if (sub_1D726434C())
    {
      sub_1D70AF9DC();
      sub_1D726431C();
      v15 = sub_1D725A74C();
      (*(v17 + 8))(v8, v5);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    (*(v19 + 8))(v13, v10);
    *v14 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D70AF690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D70AF718(uint64_t a1)
{
  v2 = sub_1D70AF988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70AF754(uint64_t a1)
{
  v2 = sub_1D70AF988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70AF7A8(void *a1)
{
  sub_1D70AFA34(0, &qword_1EC89A0A0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70AF988();
  sub_1D7264B5C();
  if (*(v9 + 16))
  {
    v11[1] = v9;
    sub_1D70AFA98();
    sub_1D5F7B710();
    sub_1D70AFB0C();
    sub_1D72647EC();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1D70AF920()
{
  if (!qword_1EC89A080)
  {
    sub_1D6DD1604();
    sub_1D6DD172C();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A080);
    }
  }
}

unint64_t sub_1D70AF988()
{
  result = qword_1EC89A090;
  if (!qword_1EC89A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A090);
  }

  return result;
}

unint64_t sub_1D70AF9DC()
{
  result = qword_1EC89A098;
  if (!qword_1EC89A098)
  {
    sub_1D70AF920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A098);
  }

  return result;
}

void sub_1D70AFA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70AF988();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70AFA98()
{
  result = qword_1EC89A0A8;
  if (!qword_1EC89A0A8)
  {
    sub_1D70AFA34(255, &qword_1EC89A0A0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0A8);
  }

  return result;
}

unint64_t sub_1D70AFB0C()
{
  result = qword_1EC89A0B0;
  if (!qword_1EC89A0B0)
  {
    sub_1D5F7B710();
    sub_1D6DD172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0B0);
  }

  return result;
}

unint64_t sub_1D70AFB98()
{
  result = qword_1EC89A0B8;
  if (!qword_1EC89A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0B8);
  }

  return result;
}

unint64_t sub_1D70AFBF0()
{
  result = qword_1EC89A0C0;
  if (!qword_1EC89A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0C0);
  }

  return result;
}

unint64_t sub_1D70AFC48()
{
  result = qword_1EC89A0C8;
  if (!qword_1EC89A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0C8);
  }

  return result;
}

uint64_t FormatWebEmbed.properties.getter()
{
  type metadata accessor for FormatWebEmbed();
}

uint64_t FormatWebEmbed.selectors.getter()
{
  type metadata accessor for FormatWebEmbed();
}

uint64_t FormatWebEmbed.init(url:identifier:actionUrl:article:webArchiveResourceID:dataResourceID:traits:selectors:properties:dismissingIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = *a11;
  v31 = *(a11 + 8);
  v19 = type metadata accessor for FormatWebEmbed();
  v20 = v19[5];
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9 + v20, a1, v21);
  if (!a3)
  {
    a2 = sub_1D72583DC();
    a3 = v23;
  }

  *a9 = a2;
  a9[1] = a3;
  sub_1D5EB84C0(a4, a9 + v19[6]);
  *(a9 + v19[7]) = a5;
  v24 = (a9 + v19[8]);
  *v24 = a6;
  v24[1] = a7;
  v25 = (a9 + v19[9]);
  *v25 = a8;
  v25[1] = a10;
  v26 = v32;
  if (v31)
  {
    v26 = 0;
  }

  *(a9 + v19[10]) = v26;
  v27 = MEMORY[0x1E69E7CD0];
  if (a12)
  {
    v27 = a12;
  }

  *(a9 + v19[11]) = v27;
  if (a13)
  {
    v28 = a13;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = (a9 + v19[13]);
  sub_1D5E3E404(a4);
  result = (*(v22 + 8))(a1, v21);
  *(a9 + v19[12]) = v28;
  *v29 = a14;
  v29[1] = a15;
  return result;
}

uint64_t FormatWebEmbed.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatWebEmbed.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatWebEmbed() + 20);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatWebEmbed.actionUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatWebEmbed() + 24);

  return sub_1D5EB84C0(v3, a1);
}

uint64_t FormatWebEmbed.article.getter()
{
  type metadata accessor for FormatWebEmbed();
}

uint64_t FormatWebEmbed.webArchiveResourceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatWebEmbed() + 32));

  return v1;
}

uint64_t FormatWebEmbed.dataResourceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatWebEmbed() + 36));

  return v1;
}

uint64_t FormatWebEmbed.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FormatWebEmbed();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_1D70B00A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatWebEmbed() + 44);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatWebEmbed.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatWebEmbed() + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D70B017C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatWebEmbed() + 48);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatWebEmbed.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatWebEmbed() + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatWebEmbed.dismissingIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatWebEmbed() + 52));

  return v1;
}

uint64_t FormatWebEmbed.dismissingIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FormatWebEmbed() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FormatWebEmbed.Traits.TraitName.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70B03B0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70B042C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70B0484@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

void sub_1D70B04D8(uint64_t a1@<X8>)
{
  strcpy(a1, "liveUpdating");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t FormatWebEmbed.Traits.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264ADC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_1D72644FC();
    v6 = MEMORY[0x1E69E7CC0];
    if ((v5 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
        sub_1D70B1D70();
        sub_1D72644EC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D6994104(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          v6 = sub_1D6994104((v12 > 1), v13 + 1, 1, v6);
        }

        *(v6 + 2) = v13 + 1;
        *&v6[8 * v13 + 32] = 1;
        __swift_project_boxed_opaque_existential_1(v15, v16);
      }

      while ((sub_1D72644FC() & 1) == 0);
    }

    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = 0;
      v9 = (v6 + 32);
      do
      {
        v11 = *v9++;
        v10 = v11;
        if ((v11 & ~v8) == 0)
        {
          v10 = 0;
        }

        v8 |= v10;
        --v7;
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWebEmbed.Traits.encode(to:)(void *a1)
{
  v3 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B2C();
  if (v3)
  {
    do
    {
      v5 = v3 & -v3;
      if (v5 == 1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
        sub_1D70B1DC4();
        sub_1D726450C();
        if (v2)
        {
          break;
        }
      }

      v4 = v5 == v3;
      v3 ^= v5;
    }

    while (!v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t FormatWebEmbed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v62 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v62, v3);
  v61 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54F14(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v46 - v7;
  v9 = sub_1D72585BC();
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70B1F24(0, &qword_1EDF03AB0, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v46 - v17;
  v19 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D70B1E18();
  v20 = v64;
  sub_1D7264B0C();
  if (!v20)
  {
    v59 = v8;
    v64 = v15;
    LOBYTE(v69) = 0;
    sub_1D5B6AD18(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    sub_1D726431C();
    LOBYTE(v69) = 1;
    v57 = sub_1D726422C();
    v58 = v21;
    LOBYTE(v69) = 2;
    sub_1D726427C();
    type metadata accessor for FormatArticle();
    LOBYTE(v69) = 3;
    sub_1D5B6AD18(&qword_1EDF417D0, type metadata accessor for FormatArticle);
    sub_1D726427C();
    v22 = v71;
    LOBYTE(v69) = 4;
    v23 = sub_1D726422C();
    v56 = v22;
    if (!v24)
    {
      LOBYTE(v69) = 10;
      v23 = sub_1D726422C();
    }

    v54 = v23;
    v55 = v24;
    LOBYTE(v69) = 5;
    v26 = sub_1D726422C();
    v28 = v27;
    v53 = v26;
    LOBYTE(v68) = 6;
    sub_1D70B1E6C();
    sub_1D726427C();
    v29 = v28;
    v52 = v69;
    v30 = v70;
    sub_1D5B81B04();
    LOBYTE(v67) = 7;
    sub_1D5CB5D1C(&qword_1EDF3C7D0);
    sub_1D726427C();
    v51 = v68;
    sub_1D5B5CFF8(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    v66 = 8;
    sub_1D60AC514(&qword_1EDF3C910, sub_1D5B59CD8);
    sub_1D726427C();
    v50 = v9;
    v31 = v67;
    v66 = 9;
    v49 = v14;
    v48 = v18;
    v47 = sub_1D726422C();
    v46 = v32;
    (*(v63 + 16))(v61 + *(v62 + 20), v12, v50);
    if (!v58)
    {
      v57 = sub_1D72583DC();
      v58 = v33;
    }

    v35 = v61;
    v34 = v62;
    v36 = v58;
    *v61 = v57;
    *(v35 + 8) = v36;
    v37 = v59;
    sub_1D5EB84C0(v59, v35 + v34[6]);
    *(v35 + v34[7]) = v56;
    v38 = (v35 + v34[8]);
    v39 = v55;
    *v38 = v54;
    v38[1] = v39;
    v40 = (v35 + v34[9]);
    *v40 = v53;
    v40[1] = v29;
    v41 = v52;
    if (v30)
    {
      v41 = 0;
    }

    *(v35 + v34[10]) = v41;
    v42 = MEMORY[0x1E69E7CD0];
    if (v51)
    {
      v42 = v51;
    }

    *(v35 + v34[11]) = v42;
    if (v31)
    {
      v43 = v31;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v44 = (v35 + v34[13]);
    sub_1D5E3E404(v37);
    (*(v63 + 8))(v12, v50);
    (*(v64 + 8))(v48, v49);
    *(v35 + v34[12]) = v43;
    v45 = v46;
    *v44 = v47;
    v44[1] = v45;
    sub_1D70B1EC0(v35, v60);
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t FormatWebEmbed.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70B1F24(0, &qword_1EDF027C8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70B1E18();
  sub_1D7264B5C();
  v11 = type metadata accessor for FormatWebEmbed();
  LOBYTE(v13) = 0;
  sub_1D72585BC();
  sub_1D5B6AD18(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D72643FC();
    LOBYTE(v13) = 2;
    sub_1D5B54F14(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D70B1F88();
    sub_1D726443C();
    *&v13 = *(v3 + v11[7]);
    v14 = 3;
    sub_1D5B54F14(0, qword_1EDF45798, type metadata accessor for FormatArticle);
    sub_1D70B204C();
    sub_1D726443C();
    v13 = *(v3 + v11[8]);
    v14 = 4;
    sub_1D5B5CFF8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D6A341A0();
    sub_1D726443C();
    v13 = *(v3 + v11[9]);
    v14 = 5;
    sub_1D726443C();
    *&v13 = *(v3 + v11[10]);
    v14 = 6;
    sub_1D70B2110();
    sub_1D726443C();
    if (*(*(v3 + v11[11]) + 16))
    {
      *&v13 = *(v3 + v11[11]);
      v14 = 7;
      sub_1D5B81B04();
      sub_1D5CB5D1C(&qword_1EDF047E0);
      sub_1D726443C();
    }

    if (*(*(v3 + v11[12]) + 16))
    {
      *&v13 = *(v3 + v11[12]);
      v14 = 8;
      sub_1D5B5CFF8(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
      sub_1D60AC514(&qword_1EDF05030, sub_1D5B59D2C);
      sub_1D726443C();
    }

    if (*(v3 + v11[13] + 8))
    {
      LOBYTE(v13) = 9;
      sub_1D72643FC();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D70B167C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 7107189;
    v6 = 0x72556E6F69746361;
    v7 = 0x656C6369747261;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69747265706F7270;
    if (a1 != 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x6F73655261746164;
    v3 = 0x737469617274;
    if (a1 != 6)
    {
      v3 = 0x726F7463656C6573;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D70B1804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70B25FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70B182C(uint64_t a1)
{
  v2 = sub_1D70B1E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70B1868(uint64_t a1)
{
  v2 = sub_1D70B1E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s8NewsFeed14FormatWebEmbedV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54F14(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v45 - v11;
  sub_1D5BB60D4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for FormatWebEmbed();
  if ((sub_1D72584CC() & 1) == 0)
  {
    return 0;
  }

  v46 = v18;
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1D5EB84C0(a1 + v19, v17);
  sub_1D5EB84C0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1D5EB84C0(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v20], v4);
      sub_1D5B6AD18(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
      v23 = sub_1D7261FBC();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_1D5E3E404(v17);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_1D5F126C8(v17);
    return 0;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D5E3E404(v17);
LABEL_14:
  v25 = v46;
  v26 = v46[7];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    type metadata accessor for FormatArticle();

    v29 = static FormatArticle.== infix(_:_:)(v27, v28);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v30 = v25[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = v25[9];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if (*(a1 + v25[10]) == *(a2 + v25[10]) && (sub_1D5BFC390(*(a1 + v25[11]), *(a2 + v25[11])) & 1) != 0 && (sub_1D6339F3C(*(a1 + v25[12]), *(a2 + v25[12])) & 1) != 0)
  {
    v40 = v25[13];
    v41 = (a1 + v40);
    v42 = *(a1 + v40 + 8);
    v43 = (a2 + v40);
    v44 = v43[1];
    if (v42)
    {
      if (v44 && (*v41 == *v43 && v42 == v44 || (sub_1D72646CC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v44)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D70B1D70()
{
  result = qword_1EDF11AF8;
  if (!qword_1EDF11AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AF8);
  }

  return result;
}

unint64_t sub_1D70B1DC4()
{
  result = qword_1EDF11B08;
  if (!qword_1EDF11B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B08);
  }

  return result;
}

unint64_t sub_1D70B1E18()
{
  result = qword_1EDF11B20;
  if (!qword_1EDF11B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B20);
  }

  return result;
}

unint64_t sub_1D70B1E6C()
{
  result = qword_1EDF11AE0;
  if (!qword_1EDF11AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AE0);
  }

  return result;
}

uint64_t sub_1D70B1EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatWebEmbed();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D70B1F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70B1E18();
    v7 = a3(a1, &type metadata for FormatWebEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70B1F88()
{
  result = qword_1EDF18AB0;
  if (!qword_1EDF18AB0)
  {
    sub_1D5B54F14(255, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5B6AD18(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18AB0);
  }

  return result;
}

unint64_t sub_1D70B204C()
{
  result = qword_1EDF11E90;
  if (!qword_1EDF11E90)
  {
    sub_1D5B54F14(255, qword_1EDF45798, type metadata accessor for FormatArticle);
    sub_1D5B6AD18(&qword_1EDF11EA0, type metadata accessor for FormatArticle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E90);
  }

  return result;
}

unint64_t sub_1D70B2110()
{
  result = qword_1EDF11AF0;
  if (!qword_1EDF11AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AF0);
  }

  return result;
}

unint64_t sub_1D70B2168()
{
  result = qword_1EC89A0D0;
  if (!qword_1EC89A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0D0);
  }

  return result;
}

unint64_t sub_1D70B2200()
{
  result = qword_1EC89A0D8;
  if (!qword_1EC89A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0D8);
  }

  return result;
}

unint64_t sub_1D70B2258()
{
  result = qword_1EC89A0E0;
  if (!qword_1EC89A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0E0);
  }

  return result;
}

uint64_t sub_1D70B22EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70B2340()
{
  result = qword_1EDF11AE8;
  if (!qword_1EDF11AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AE8);
  }

  return result;
}

unint64_t sub_1D70B239C()
{
  result = qword_1EDF11AD8;
  if (!qword_1EDF11AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AD8);
  }

  return result;
}

uint64_t sub_1D70B23F0(void *a1)
{
  a1[1] = sub_1D5B6AD18(&unk_1EDF11A78, type metadata accessor for FormatWebEmbed);
  a1[2] = sub_1D5B6AD18(&qword_1EDF11A88, type metadata accessor for FormatWebEmbed);
  result = sub_1D5B6AD18(&qword_1EC89A0E8, type metadata accessor for FormatWebEmbed);
  a1[3] = result;
  return result;
}

unint64_t sub_1D70B24F8()
{
  result = qword_1EC89A0F0;
  if (!qword_1EC89A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0F0);
  }

  return result;
}

unint64_t sub_1D70B2550()
{
  result = qword_1EDF11B10;
  if (!qword_1EDF11B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B10);
  }

  return result;
}

unint64_t sub_1D70B25A8()
{
  result = qword_1EDF11B18;
  if (!qword_1EDF11B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B18);
  }

  return result;
}

uint64_t sub_1D70B25FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73FCBC0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F73655261746164 && a2 == 0xEE00444965637275 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C1570 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73FCBE0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1D70B2998()
{
  result = qword_1EDF11B00;
  if (!qword_1EDF11B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B00);
  }

  return result;
}

uint64_t static Commands.URL.openURL.getter()
{
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D70B2A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D70B2AA0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1D70B2B00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736D657469;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x80000001D73BB710;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x736D657469;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x80000001D73BB710;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D70B2BA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70B2C2C()
{
  sub_1D72621EC();
}

uint64_t sub_1D70B2C9C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70B2D1C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D70B2D7C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BB710;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x736D657469;
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1D70B2DD0()
{
  result = qword_1EC89A0F8;
  if (!qword_1EC89A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A0F8);
  }

  return result;
}

uint64_t sub_1D70B2E2C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70B2EA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70B2EF4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FormatSportsEventBinding.DateTime.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D70B3098()
{
  result = qword_1EC89A100;
  if (!qword_1EC89A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A100);
  }

  return result;
}

unint64_t sub_1D70B30EC(uint64_t a1)
{
  result = sub_1D70B3114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70B3114()
{
  result = qword_1EC89A108;
  if (!qword_1EC89A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A108);
  }

  return result;
}

unint64_t sub_1D70B3168(void *a1)
{
  a1[1] = sub_1D6685DAC();
  a1[2] = sub_1D66FF1B0();
  result = sub_1D70B3098();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70B31F4()
{
  result = qword_1EC89A110;
  if (!qword_1EC89A110)
  {
    sub_1D70B324C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A110);
  }

  return result;
}

void sub_1D70B324C()
{
  if (!qword_1EC89A118)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A118);
    }
  }
}

unint64_t sub_1D70B32A0()
{
  result = qword_1EC89A120;
  if (!qword_1EC89A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A120);
  }

  return result;
}

unint64_t sub_1D70B32F4()
{
  result = qword_1EC89A128[0];
  if (!qword_1EC89A128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC89A128);
  }

  return result;
}

size_t sub_1D70B3348@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v45 = a2;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v44 - v9;
  v11 = type metadata accessor for FormatInspectionItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v44 - v18;
  v46 = 0x80000001D73FCC20;
  v20 = *(a1 + 16);
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v44[1] = *(v12 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = [v20 sportsEventStartTime];
  if (v23)
  {
    v24 = v23;
    sub_1D72588BC();

    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
  }

  else
  {
    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  }

  sub_1D5DF42F8(v6, v10);
  sub_1D725891C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v10);
LABEL_12:
    v47 = 0u;
    v48 = 0u;
    v34 = *(v11 + 24);
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    (*(*(v35 - 8) + 56))(&v15[v34], 1, 1, v35);
    *v15 = 0xD000000000000010;
    *(v15 + 1) = v46;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    v36 = &v15[*(v11 + 28)];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = -1;
    goto LABEL_13;
  }

  v27 = sub_1D72587AC();
  v29 = v28;
  (*(v26 + 8))(v10, v25);
  if (!v29)
  {
    goto LABEL_12;
  }

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    goto LABEL_12;
  }

  *&v47 = v27;
  *(&v47 + 1) = v29;
  *&v48 = 0;
  *(&v48 + 1) = MEMORY[0x1E69E6158];
  v31 = *(v11 + 24);
  sub_1D5EA7510(&v47, &v15[v31]);
  v32 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v32 - 8) + 56))(&v15[v31], 0, 1, v32);
  *v15 = 0xD000000000000010;
  *(v15 + 1) = v46;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v33 = &v15[*(v11 + 28)];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = -1;
  sub_1D5EA756C(&v47);
LABEL_13:
  sub_1D613ADAC(v15, v19);
  sub_1D613ADAC(v19, v22 + v21);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = *(MEMORY[0x1E69E7CC0] + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v40 = *(v37 + 24) >> 1, v40 <= v38))
  {
    result = sub_1D698BAE0(result, v38 + 1, 1, MEMORY[0x1E69E7CC0]);
    v37 = result;
    v40 = *(result + 24) >> 1;
  }

  if (v40 <= *(v37 + 16))
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();

    ++*(v37 + 16);
    v41 = sub_1D5F62998(v37);

    sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v41, &v47);

    v42 = v48;
    v43 = v45;
    *v45 = v47;
    v43[1] = v42;
    *(v43 + 4) = v49;
  }

  return result;
}

void sub_1D70B38C8()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5C034F0(v0 + 128, v7);
  if (v8 <= 2u)
  {
    sub_1D5B63F14(v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v2 + 88))(v7, v1, v2);
    if ((v7[0] & 0xFE) != 2)
    {
      v3 = [objc_opt_self() configurationWithPointSize_];
      v4 = sub_1D726203C();
      v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = [objc_opt_self() textAttachmentWithImage_];

      MEMORY[0x1DA6F9CE0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    return;
  }

  if (v8 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D5BC3420(v7);
  }
}

uint64_t sub_1D70B3AC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16DebugJournalItemOyxG(uint64_t a1)
{
  if ((*(a1 + 257) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 257) & 7;
  }
}

uint64_t sub_1D70B3B20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 258))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 257);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70B3B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 256) = 0;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
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
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 258) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 258) = 0;
    }

    if (a2)
    {
      *(result + 257) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D70B3BC4(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 256) = 0;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 257) = a2;
  return result;
}

void *sub_1D70B3C30(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 56);
  v5 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v5);
  sub_1D5EA74B8();
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7279970;
  v10 = (v9 + v8);
  if (v4 == 255)
  {
    v15 = 0;
    v16 = 0;
  }

  else if (v4 > 1)
  {
    v16 = 0xE400000000000000;
    v15 = 1701736302;
  }

  else
  {
    v11 = [v3 identifier];
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = v12;
    v16 = v14;
  }

  sub_1D711F844(0x696669746E656449, 0xEA00000000007265, v15, v16, v10);
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 0, 1, v17);
  if (v4 == 255)
  {
    v2 = 0;
    v19 = 3;
  }

  else
  {
    if (v4 >= 2)
    {
      v2 = 0x3FE8000000000000;
    }

    v19 = v4;
  }

  sub_1D712E4E0(1684957515, 0xE400000000000000, v19, v10 + v7);
  v18((v10 + v7), 0, 1, v17);
  sub_1D711A80C(0x5220746365707341, 0xEC0000006F697461, v2, v4 == 255, (v10 + 2 * v7));
  v18((v10 + 2 * v7), 0, 1, v17);
  sub_1D6795150(0xD000000000000010, 0x80000001D73FCC40, 0, 0, v9, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(inited + 32) = v20;
  *(v20 + 48) = v26;
  v21 = v25[1];
  *(v20 + 16) = v25[0];
  *(v20 + 32) = v21;
  v22 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v22;
}

uint64_t LayeredMediaViewModelRenderer.render(viewModel:options:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v46 = *a2;
  v47 = v2;
  v48 = *(a2 + 32);
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 32);
    while (v6 < *(v3 + 16))
    {
      v43[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v43[3] = v7[3];
      v43[4] = v10;
      v43[1] = v8;
      v43[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[7];
      *(v44 + 9) = *(v7 + 121);
      v43[6] = v12;
      v44[0] = v13;
      v43[5] = v11;
      v14 = v7[6];
      v15 = v7[7];
      v16 = v7[4];
      v40 = v7[5];
      v41 = v14;
      v42[0] = v15;
      *(v42 + 9) = *(v7 + 121);
      v17 = v7[3];
      v37 = v7[2];
      v38 = v17;
      v39 = v16;
      v18 = v7[1];
      v35 = *v7;
      v36 = v18;
      sub_1D6F68D00(v43, &v26);
      sub_1D70B4238(&v35, &v46, &v34);
      v32 = v41;
      v33[0] = v42[0];
      *(v33 + 9) = *(v42 + 9);
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      v26 = v35;
      v27 = v36;
      v19 = sub_1D6F68D5C(&v26);
      if (v34)
      {
        MEMORY[0x1DA6F9CE0](v19);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v45;
      }

      ++v6;
      v7 += 9;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    v32 = v41;
    v33[0] = v42[0];
    *(v33 + 9) = *(v42 + 9);
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v26 = v35;
    v27 = v36;
    sub_1D6F68D5C(&v26);

    __break(1u);
  }

  else
  {
LABEL_9:
    type metadata accessor for LayeredMediaRenderedViewModel();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = v47;
    *(v20 + 24) = v46;
    *(v20 + 40) = v21;
    *(v20 + 56) = v48;
    sub_1D5B73960();
    *&v43[0] = v4;

    v22 = sub_1D725B92C();
    sub_1D6E16948();
    sub_1D70B49C8();
    v23 = sub_1D725BA3C();

    *(v20 + 64) = v23;
    return v20;
  }

  return result;
}

void sub_1D70B4238(__int128 *a1@<X0>, __int128 *a2@<X2>, uint64_t *a3@<X8>)
{
  v143 = a3;
  v5 = a1[5];
  v6 = a1[7];
  v139 = a1[6];
  v140[0] = v6;
  *(v140 + 9) = *(a1 + 121);
  v7 = a1[1];
  v8 = a1[3];
  v135 = a1[2];
  v136 = v8;
  v10 = a1[3];
  v9 = a1[4];
  v11 = v9;
  v138 = a1[5];
  v137 = v9;
  v12 = *a1;
  v13 = *a1;
  v134 = a1[1];
  v133 = v12;
  v14 = a1[7];
  v141[6] = v139;
  v142[0] = v14;
  *(v142 + 9) = *(a1 + 121);
  v141[2] = v135;
  v141[3] = v10;
  v141[4] = v11;
  v141[5] = v5;
  v141[0] = v13;
  v141[1] = v7;
  if (sub_1D692954C(v141) == 1)
  {
    v15 = sub_1D5DA9098(v141);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[4];
    v112 = v15[3];
    v113 = v18;
    v19 = v15[5];
    v20 = v15[7];
    v115 = v15[6];
    v116[0] = v20;
    *(v116 + 9) = *(v15 + 121);
    v114 = v19;
    v110 = v16;
    v111 = v17;
    sub_1D70B4A90(&v110);
    sub_1D5ED9780((v15 + 1), v108);
  }

  else
  {
    v21 = sub_1D5DA9098(v141);
    v22 = *(v21 + 16);
    v23 = *(v21 + 32);
    v24 = *(v21 + 64);
    v112 = *(v21 + 48);
    v113 = v24;
    v25 = *(v21 + 80);
    v26 = *(v21 + 112);
    v115 = *(v21 + 96);
    v116[0] = v26;
    LOBYTE(v116[1]) = *(v21 + 128);
    v114 = v25;
    v110 = v22;
    v111 = v23;
    sub_1D70B4AA4(&v110);
    sub_1D5ED9850(v21 + 16, v108);
  }

  v130 = v114;
  v131 = v115;
  v132[0] = v116[0];
  *(v132 + 9) = *(v116 + 9);
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v129 = v113;
  v27 = a2[1];
  v110 = *a2;
  v111 = v27;
  *&v112 = *(a2 + 4);
  v28 = LayeredMediaLayerRenderer.shouldShow(_:for:)(&v126, &v110);
  v117[4] = v130;
  v117[5] = v131;
  v118[0] = v132[0];
  *(v118 + 9) = *(v132 + 9);
  v117[0] = v126;
  v117[1] = v127;
  v117[2] = v128;
  v117[3] = v129;
  sub_1D5ED97DC(v117);
  if (v28)
  {
    v29 = a1[7];
    v116[0] = a1[6];
    v116[1] = v29;
    *(&v116[1] + 9) = *(a1 + 121);
    v30 = a1[3];
    v112 = a1[2];
    v113 = v30;
    v31 = a1[5];
    v114 = a1[4];
    v115 = v31;
    v32 = a1[1];
    v110 = *a1;
    v111 = v32;
    v33 = sub_1D692954C(&v110);
    v34 = sub_1D5DA9098(&v110);
    if (v33 == 1)
    {
      v35 = &qword_1EDF17320;
      v36 = &qword_1EDF17318;
      v37 = &qword_1EDF045A8;
    }

    else
    {
      v35 = &qword_1EC88E4A0;
      v36 = &qword_1EDF17328;
      v37 = &qword_1EDF04638;
    }

    sub_1D69295B8(v35, v36, v37);
    v47 = *v34;
    [v47 setHidden_];

    v48 = a1[7];
    v108[6] = a1[6];
    v109[0] = v48;
    *(v109 + 9) = *(a1 + 121);
    v49 = a1[3];
    v108[2] = a1[2];
    v108[3] = v49;
    v50 = a1[5];
    v108[4] = a1[4];
    v108[5] = v50;
    v51 = a1[1];
    v108[0] = *a1;
    v108[1] = v51;
    v52 = sub_1D692954C(v108);
    v53 = sub_1D5DA9098(v108);
    if (v52 == 1)
    {
      v54 = &qword_1EDF17320;
      v55 = &qword_1EDF17318;
      v56 = &qword_1EDF045A8;
    }

    else
    {
      v54 = &qword_1EC88E4A0;
      v55 = &qword_1EDF17328;
      v56 = &qword_1EDF04638;
    }

    sub_1D69295B8(v54, v55, v56);
    v58 = *v53;
    v59 = *(a2 + 2);
    v60 = *(a2 + 3);
    [v58 setFrame_];

    v61 = a1[7];
    v106[6] = a1[6];
    v107[0] = v61;
    *(v107 + 9) = *(a1 + 121);
    v62 = a1[3];
    v106[2] = a1[2];
    v106[3] = v62;
    v63 = a1[5];
    v106[4] = a1[4];
    v106[5] = v63;
    v64 = a1[1];
    v106[0] = *a1;
    v106[1] = v64;
    if (sub_1D692954C(v106) == 1)
    {
      v65 = sub_1D5DA9098(v106);
      v66 = v65[1];
      v67 = v65[2];
      v68 = v65[4];
      v121 = v65[3];
      v122 = v68;
      v69 = v65[5];
      v70 = v65[7];
      v124 = v65[6];
      v125[0] = v70;
      *(v125 + 9) = *(v65 + 121);
      v123 = v69;
      v119 = v66;
      v120 = v67;
      sub_1D70B4A90(&v119);
      v71 = a1[7];
      v102 = a1[6];
      v103[0] = v71;
      *(v103 + 9) = *(a1 + 121);
      v72 = a1[3];
      v98 = a1[2];
      v99 = v72;
      v73 = a1[5];
      v100 = a1[4];
      v101 = v73;
      v74 = a1[1];
      v96 = *a1;
      v97 = v74;
      v75 = *sub_1D5DA9098(&v96);
      sub_1D69295B8(&qword_1EDF17320, &qword_1EDF17318, &qword_1EDF045A8);
      sub_1D5ED9780((v65 + 1), v104);
    }

    else
    {
      v76 = sub_1D5DA9098(v106);
      v77 = *(v76 + 16);
      v78 = *(v76 + 32);
      v79 = *(v76 + 64);
      v121 = *(v76 + 48);
      v122 = v79;
      v80 = *(v76 + 80);
      v81 = *(v76 + 112);
      v124 = *(v76 + 96);
      v125[0] = v81;
      LOBYTE(v125[1]) = *(v76 + 128);
      v123 = v80;
      v119 = v77;
      v120 = v78;
      sub_1D70B4AA4(&v119);
      v82 = a1[7];
      v102 = a1[6];
      v103[0] = v82;
      *(v103 + 9) = *(a1 + 121);
      v83 = a1[3];
      v98 = a1[2];
      v99 = v83;
      v84 = a1[5];
      v100 = a1[4];
      v101 = v84;
      v85 = a1[1];
      v96 = *a1;
      v97 = v85;
      v75 = *sub_1D5DA9098(&v96);
      sub_1D69295B8(&qword_1EC88E4A0, &qword_1EDF17328, &qword_1EDF04638);
      sub_1D5ED9850(v76 + 16, v104);
    }

    v104[4] = v123;
    v104[5] = v124;
    v105[0] = v125[0];
    *(v105 + 9) = *(v125 + 9);
    v104[0] = v119;
    v104[1] = v120;
    v104[2] = v121;
    v104[3] = v122;
    v86 = v75;
    [v86 setFrame_];

    v102 = v139;
    v103[0] = v140[0];
    *(v103 + 9) = *(v140 + 9);
    v98 = v135;
    v99 = v136;
    v100 = v137;
    v101 = v138;
    v96 = v133;
    v97 = v134;
    LODWORD(v86) = sub_1D692954C(&v96);
    v87 = sub_1D5DA9098(&v96) + 16;
    v89 = *(v87 + 64);
    if (v86 == 1)
    {
      v90 = *(v87 + 96);
      v124 = *(v87 + 80);
      v125[0] = v90;
      *(v125 + 9) = *(v87 + 105);
      v123 = v89;
    }

    else
    {
      v93 = *(v87 + 80);
      v94 = *(v87 + 96);
      LOBYTE(v125[1]) = *(v87 + 112);
      v123 = v89;
      v124 = v93;
      v125[0] = v94;
    }

    v91 = *(v87 + 16);
    v119 = *v87;
    v120 = v91;
    v92 = *(v87 + 48);
    v121 = *(v87 + 32);
    v122 = v92;
    MEMORY[0x1EEE9AC00](v87, v88);
    sub_1D5B73960();
    swift_allocObject();
    v95 = sub_1D725BBAC();
    sub_1D5ED97DC(v104);
    *v143 = v95;
  }

  else
  {
    v38 = a1[7];
    v116[0] = a1[6];
    v116[1] = v38;
    *(&v116[1] + 9) = *(a1 + 121);
    v39 = a1[3];
    v112 = a1[2];
    v113 = v39;
    v40 = a1[5];
    v114 = a1[4];
    v115 = v40;
    v41 = a1[1];
    v110 = *a1;
    v111 = v41;
    v42 = sub_1D692954C(&v110);
    v43 = sub_1D5DA9098(&v110);
    if (v42 == 1)
    {
      v44 = &qword_1EDF17320;
      v45 = &qword_1EDF17318;
      v46 = &qword_1EDF045A8;
    }

    else
    {
      v44 = &qword_1EC88E4A0;
      v45 = &qword_1EDF17328;
      v46 = &qword_1EDF04638;
    }

    sub_1D69295B8(v44, v45, v46);
    v57 = *v43;
    [v57 setHidden_];

    *v143 = 0;
  }
}

unint64_t sub_1D70B49C8()
{
  result = qword_1EDF05358;
  if (!qword_1EDF05358)
  {
    sub_1D6E16948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05358);
  }

  return result;
}

uint64_t LayeredMediaViewModelRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D70B4AB8()
{
  result = 0x614D6D6574737973;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
    case 7:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

NewsFeed::FormatBlurEffectStyle_optional __swiftcall FormatBlurEffectStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D70B4CC0(uint64_t a1)
{
  v1 = FormatBlurEffectStyle.description.getter(a1);
  v3 = v2;
  if (v1 == FormatBlurEffectStyle.description.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D72646CC();
  }

  return v6 & 1;
}

unint64_t sub_1D70B4D60()
{
  result = qword_1EDF0E410;
  if (!qword_1EDF0E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E410);
  }

  return result;
}

uint64_t sub_1D70B4DB4()
{
  v0 = sub_1D7264A0C();
  FormatBlurEffectStyle.description.getter(v0);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70B4E1C(uint64_t a1)
{
  FormatBlurEffectStyle.description.getter(a1);
  sub_1D72621EC();
}

uint64_t sub_1D70B4E80()
{
  v0 = sub_1D7264A0C();
  FormatBlurEffectStyle.description.getter(v0);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70B4EF0@<X0>(uint64_t *a1@<X8>)
{
  result = FormatBlurEffectStyle.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D70B4F18(uint64_t a1)
{
  *(a1 + 8) = sub_1D70B4F48();
  result = sub_1D70B4F9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70B4F48()
{
  result = qword_1EC89A1B0;
  if (!qword_1EC89A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A1B0);
  }

  return result;
}

unint64_t sub_1D70B4F9C()
{
  result = qword_1EDF0E408;
  if (!qword_1EDF0E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E408);
  }

  return result;
}

unint64_t sub_1D70B4FF0(uint64_t a1)
{
  result = sub_1D66D31AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70B5018(void *a1)
{
  a1[1] = sub_1D667C414();
  a1[2] = sub_1D667C660();
  result = sub_1D70B4D60();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70B50F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v28 = v31;
    v4 = a1 + 64;
    result = sub_1D7263B7C();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v25 = v2;
    v26 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v6;
      v10 = (*(a1 + 48) + 16 * v5);
      v11 = (*(a1 + 56) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v29 = *v10;
      v30 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](2112800, 0xE300000000000000);
      MEMORY[0x1DA6F9910](v13, v12);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v14;
      v7 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1D5C25E1C(v5, v26, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1D5C25E1C(v5, v26, 0);
      }

LABEL_4:
      v6 = v27 + 1;
      v5 = v8;
      if (v27 + 1 == v25)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D70B5398()
{
  v1 = type metadata accessor for WebEmbedDataVisualization();
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70BB9D4(0, &qword_1EC89A1C0, sub_1D70B9EA8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  v12 = v0[5];
  v13 = v0[6];
  v42 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = (*(v13 + 56))(v12, v13);
  v44 = MEMORY[0x1E69E7CC0];
  type metadata accessor for DiagnosticDataDirectoryNameGenerator();
  result = swift_initStackObject();
  v16 = 0;
  v40 = v14;
  v41 = result;
  *(result + 16) = 0;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v14 + 64;
  v20 = v18 & *(v14 + 64);
  v21 = (v17 + 63) >> 6;
  v38 = v11;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_12:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v40;
      sub_1D70BBA38(*(v40 + 48) + *(v39 + 72) * v26, v4, type metadata accessor for WebEmbedDataVisualization);
      v28 = *(*(v27 + 56) + 8 * v26);
      sub_1D70B9EA8();
      v30 = v29;
      v31 = *(v29 + 48);
      v32 = v43;
      sub_1D70BBB88(v4, v43, type metadata accessor for WebEmbedDataVisualization);
      *(v32 + v31) = v28;
      (*(*(v30 - 8) + 56))(v32, 0, 1, v30);

      v24 = v22;
      v33 = v32;
      v11 = v38;
LABEL_13:
      sub_1D70BBAA0(v33, v11, &qword_1EC89A1C0, sub_1D70B9EA8);
      sub_1D70B9EA8();
      if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
      {
        break;
      }

      v34 = *&v11[*(v30 + 48)];
      sub_1D70BBB88(v11, v4, type metadata accessor for WebEmbedDataVisualization);

      v35 = sub_1D70B57CC(v4, v34);

      sub_1D6986120(v35);

      result = sub_1D70BBBF0(v4, type metadata accessor for WebEmbedDataVisualization);
      v16 = v24;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    return v44;
  }

  else
  {
LABEL_5:
    if (v21 <= v16 + 1)
    {
      v23 = v16 + 1;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        sub_1D70B9EA8();
        v30 = v36;
        v37 = v43;
        (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
        v33 = v37;
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v19 + 8 * v22);
      ++v16;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D70B57CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v187 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v186 = &v169 - v9;
  v195 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  MEMORY[0x1EEE9AC00](v195, v10);
  v190 = (&v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v185 = (&v169 - v14);
  v194 = sub_1D725ACFC();
  v179 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v15);
  v17 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v188 = &v169 - v20;
  v193 = type metadata accessor for WebEmbedDatastoreProperty();
  v176 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v21);
  v197 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v199 = (&v169 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v192 = (&v169 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v169 - v31);
  v33 = sub_1D725B47C();
  v209 = *(v33 - 8);
  v210 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v198 = (&v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36, v37);
  v196 = &v169 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v191 = (&v169 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = (&v169 - v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  v178 = (&v169 - v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v204 = &v169 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v169 - v54;
  v182 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v182, v56);
  v181 = (&v169 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58, v59);
  v180 = &v169 - v60;
  *&v63 = MEMORY[0x1EEE9AC00](v61, v62).n128_u64[0];
  v65 = &v169 - v64;
  v183 = a2;
  v189 = v17;
  v175 = v45;
  if (a2)
  {
    v66 = [*(a2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
    v203 = sub_1D726207C();
    v68 = v67;
  }

  else
  {
    v68 = 0xE400000000000000;
    v203 = 1819047278;
  }

  v69 = sub_1D70B6CE4(a1);
  v71 = v70;
  sub_1D70B9F1C();
  v73 = v72;
  v74 = swift_allocBox();
  v75 = a1;
  v76 = v74;
  v78 = v77;
  v201 = v73;
  v79 = (v77 + *(v73 + 48));
  v184 = v75;
  sub_1D70BBA38(v75, v65, type metadata accessor for WebEmbedDataVisualization);
  sub_1D70B6F30(v65, v78);
  v211 = 0;
  v212 = 0xE000000000000000;
  sub_1D7263D4C();

  v207 = v69;
  v208 = v71;
  v211 = v69;
  v212 = v71;
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73FCD30);
  v80 = v212;
  *v79 = v211;
  v79[1] = v80;
  *v55 = v76;
  v81 = *(v209 + 104);
  v200 = *MEMORY[0x1E69D67F0];
  v205 = v81;
  v206 = v209 + 104;
  (v81)(v55);
  v82 = sub_1D6990368(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v84 = v82[2];
  v83 = v82[3];
  v85 = v84 + 1;
  if (v84 >= v83 >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v87 = v203;
    v86 = v204;
    v82[2] = v85;
    v88 = *(v209 + 32);
    v203 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v204 = v88;
    v202 = *(v209 + 72);
    v89 = v82 + v203 + v202 * v84;
    v90 = v210;
    v209 += 32;
    (v88)(v89, v55, v210);
    v91 = swift_allocObject();
    v91[2] = v87;
    v91[3] = v68;
    v211 = 0;
    v212 = 0xE000000000000000;
    sub_1D7263D4C();
    v92 = v208;

    v211 = v207;
    v212 = v92;
    MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73FCD50);
    v93 = v212;
    v91[4] = v211;
    v91[5] = v93;
    *v86 = v91;
    (v205)(v86, *MEMORY[0x1E69D67D8], v90);
    v95 = v82[2];
    v94 = v82[3];
    v96 = v199;
    v68 = v184;
    if (v95 >= v94 >> 1)
    {
      v82 = sub_1D6990368(v94 > 1, v95 + 1, 1, v82);
    }

    v84 = v188;
    v55 = v180;
    v82[2] = v95 + 1;
    (v204)(v82 + v203 + v95 * v202, v86, v210);
    sub_1D70BBA38(v68, v55, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D70BBBF0(v55, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v217 = *v55;
      SportsDataVisualization.config.getter(&v211);

      v97 = v212;
      if (v212)
      {
        v98 = v211;
        v99 = v213;
        v100 = v214;
        v102 = v215;
        v101 = v216;
        v103 = v201;
        v170 = swift_allocBox();
        v169 = (v104 + *(v103 + 48));
        v105 = v104;
        v180 = v98;
        v211 = v98;
        v212 = v97;
        v213 = v99;
        v214 = v100;
        v215 = v102;
        v216 = v101;
        v171 = v99;
        v55 = v97;
        swift_unknownObjectRetain();
        v174 = v100;

        v173 = v102;

        v172 = v101;

        sub_1D70B76E4(&v211, v105);
        v211 = 0;
        v212 = 0xE000000000000000;
        sub_1D7263D4C();
        v106 = v208;

        v211 = v207;
        v212 = v106;
        MEMORY[0x1DA6F9910](0xD000000000000021, 0x80000001D73FCDB0);
        v107 = v212;
        v108 = v169;
        *v169 = v211;
        v108[1] = v107;
        *v178 = v170;
        v205();
        v110 = v82[2];
        v109 = v82[3];
        if (v110 >= v109 >> 1)
        {
          v82 = sub_1D6990368(v109 > 1, v110 + 1, 1, v82);
        }

        v84 = v188;
        v68 = v184;
        sub_1D5F8BBC8(v180, v97);
        v82[2] = v110 + 1;
        (v204)(v82 + v203 + v110 * v202, v178, v210);
      }
    }

    v111 = v181;
    sub_1D70BBA38(v68, v181, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D70BBBF0(v111, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v211 = *v111;
      v55 = SportsDataVisualization.event.getter();

      if (v55)
      {
        v112 = v201;
        v113 = swift_allocBox();
        v115 = (v114 + *(v112 + 48));
        v116 = swift_unknownObjectRetain();
        sub_1D70B7F00(v116);
        v211 = v207;
        v212 = v208;

        MEMORY[0x1DA6F9910](0x2D7374726F70732FLL, 0xED0000746E657665);
        v117 = v212;
        *v115 = v211;
        v115[1] = v117;
        v118 = v175;
        *v175 = v113;
        v119 = v118;
        (v205)(v118, v200, v210);
        v121 = v82[2];
        v120 = v82[3];
        if (v121 >= v120 >> 1)
        {
          v82 = sub_1D6990368(v120 > 1, v121 + 1, 1, v82);
        }

        swift_unknownObjectRelease();
        v82[2] = v121 + 1;
        (v204)(v82 + v203 + v121 * v202, v119, v210);
      }
    }

    v122 = v183;
    if (!v183)
    {
      break;
    }

    v123 = *(v183 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents);
    if (v123)
    {
      v124 = *(v123 + 16);
      if (v124)
      {
        v125 = v123 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
        v184 = "/data-visualization-failure-";
        v68 = *(v176 + 72);
        v126 = (v179 + 32);

        v182 = v123;

        do
        {
          sub_1D70BBA38(v125, v32, type metadata accessor for WebEmbedDatastoreProperty);
          v127 = v192;
          sub_1D70BBA38(v32, v192, type metadata accessor for WebEmbedDatastoreProperty);
          v128 = v185;
          sub_1D70BBA38(v127 + *(v193 + 20), v185, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D70B879C(*v128, v84);
          }

          else
          {
            v129 = v186;
            sub_1D70BBB88(v128, v186, type metadata accessor for WebEmbedDataSourceJson);
            v130 = v187;
            sub_1D70BBA38(v129, v187, type metadata accessor for WebEmbedDataSourceJson);
            sub_1D70BA578(v130, v84);
            sub_1D70BBBF0(v129, type metadata accessor for WebEmbedDataSourceJson);
          }

          sub_1D70BBBF0(v192, type metadata accessor for WebEmbedDatastoreProperty);
          v131 = v201;
          v132 = swift_allocBox();
          v55 = v133 + *(v131 + 48);
          (*v126)(v133, v84, v194);
          v211 = 0;
          v212 = 0xE000000000000000;
          sub_1D7263D4C();
          v134 = v208;

          v211 = v207;
          v212 = v134;
          MEMORY[0x1DA6F9910](0xD000000000000014, v184 | 0x8000000000000000);
          MEMORY[0x1DA6F9910](*v32, v32[1]);
          v135 = v212;
          *v55 = v211;
          *(v55 + 8) = v135;
          *v191 = v132;
          v205();
          v137 = v82[2];
          v136 = v82[3];
          if (v137 >= v136 >> 1)
          {
            v82 = sub_1D6990368(v136 > 1, v137 + 1, 1, v82);
          }

          sub_1D70BBBF0(v32, type metadata accessor for WebEmbedDatastoreProperty);
          v82[2] = v137 + 1;
          (v204)(v82 + v203 + v137 * v202, v191, v210);
          v125 += v68;
          --v124;
          v84 = v188;
        }

        while (v124);

        v122 = v183;
        v96 = v199;
        goto LABEL_33;
      }

      v122 = v183;
    }

LABEL_33:
    v32 = *(v122 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents);
    if (v32)
    {
      v85 = v32[2];
      v192 = (v179 + 32);

      v138 = 0;
      while (v85 != v138)
      {
        v83 = v32[2];
        if (v138 >= v83)
        {
          goto LABEL_61;
        }

        v55 = v32[v138++ + 4];
        v68 = *(v55 + 16);
        if (v68)
        {
          v185 = v85;
          v139 = v176;
          v140 = v55 + ((*(v176 + 80) + 32) & ~*(v176 + 80));

          v191 = *(v139 + 72);
          v188 = (v138 - 1);
          do
          {
            sub_1D70BBA38(v140, v96, type metadata accessor for WebEmbedDatastoreProperty);
            v141 = v197;
            sub_1D70BBA38(v96, v197, type metadata accessor for WebEmbedDatastoreProperty);
            v142 = v190;
            sub_1D70BBA38(v141 + *(v193 + 20), v190, type metadata accessor for WebEmbedDataSourceCacheEntry);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v143 = v189;
              sub_1D70B879C(*v142, v189);
            }

            else
            {
              v144 = v186;
              sub_1D70BBB88(v142, v186, type metadata accessor for WebEmbedDataSourceJson);
              v145 = v187;
              sub_1D70BBA38(v144, v187, type metadata accessor for WebEmbedDataSourceJson);
              v146 = v189;
              sub_1D70BA578(v145, v189);
              v147 = v144;
              v143 = v146;
              sub_1D70BBBF0(v147, type metadata accessor for WebEmbedDataSourceJson);
            }

            sub_1D70BBBF0(v197, type metadata accessor for WebEmbedDatastoreProperty);
            v148 = v201;
            v149 = swift_allocBox();
            v151 = (v150 + *(v148 + 48));
            (*v192)(v150, v143, v194);
            v211 = 0;
            v212 = 0xE000000000000000;
            sub_1D7263D4C();
            v152 = v208;

            v211 = v207;
            v212 = v152;
            MEMORY[0x1DA6F9910](0x68632D617461642FLL, 0xEC0000002D646C69);
            v217 = v188;
            v153 = sub_1D72644BC();
            MEMORY[0x1DA6F9910](v153);

            MEMORY[0x1DA6F9910](0x696C61757369762DLL, 0xEF2D6E6F6974617ALL);
            MEMORY[0x1DA6F9910](*v199, v199[1]);
            v154 = v212;
            *v151 = v211;
            v151[1] = v154;
            *v196 = v149;
            v205();
            v84 = v82[2];
            v155 = v82[3];
            if (v84 >= v155 >> 1)
            {
              v82 = sub_1D6990368(v155 > 1, v84 + 1, 1, v82);
            }

            v96 = v199;
            sub_1D70BBBF0(v199, type metadata accessor for WebEmbedDatastoreProperty);
            v82[2] = v84 + 1;
            (v204)(v82 + v203 + v84 * v202, v196, v210);
            v140 += v191;
            --v68;
          }

          while (v68);

          v85 = v185;
        }
      }

      v122 = v183;
    }

    v84 = v177[5];
    v156 = v177[6];
    __swift_project_boxed_opaque_existential_1(v177 + 2, v84);
    v85 = (*(v156 + 64))(v122, v84, v156);
    v55 = *(v85 + 16);

    if (v55 >> 62)
    {
      v157 = sub_1D7263BFC();
      if (!v157)
      {
LABEL_64:

        break;
      }
    }

    else
    {
      v157 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v157)
      {
        goto LABEL_64;
      }
    }

    v32 = 0;
    v199 = (v55 & 0xC000000000000001);
    v197 = v55 & 0xFFFFFFFFFFFFFF8;
    v196 = "/data-visualization-datastore";
    while (v199)
    {
      MEMORY[0x1DA6FB460](v32, v55);
      v158 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_59;
      }

LABEL_53:
      v159 = v201;
      v160 = swift_allocBox();
      v162 = v161;
      v68 = v161 + *(v159 + 48);

      sub_1D70B879C(v163, v162);
      v211 = 0;
      v212 = 0xE000000000000000;
      sub_1D7263D4C();
      v164 = v208;

      v211 = v207;
      v212 = v164;
      MEMORY[0x1DA6F9910](0xD00000000000001CLL, v196 | 0x8000000000000000);
      v217 = v32;
      v165 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v165);

      v166 = v212;
      *v68 = v211;
      *(v68 + 8) = v166;
      *v198 = v160;
      v205();
      v84 = v82[2];
      v167 = v82[3];
      v85 = v84 + 1;
      if (v84 >= v167 >> 1)
      {
        v82 = sub_1D6990368(v167 > 1, v84 + 1, 1, v82);
      }

      v82[2] = v85;
      (v204)(v82 + v203 + v84 * v202, v198, v210);
      v32 = (v32 + 1);
      if (v158 == v157)
      {
        goto LABEL_64;
      }
    }

    v83 = *(v197 + 16);
    if (v32 >= v83)
    {
      goto LABEL_60;
    }

    v158 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      goto LABEL_53;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v82 = sub_1D6990368(v83 > 1, v85, 1, v82);
  }

  return v82;
}

uint64_t sub_1D70B6CE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70BBA38(a1, v7, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22[0] = 0x2D636972656E6567;
    v22[1] = 0xE800000000000000;
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = *(v2 + 16);
    v10 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = MEMORY[0x1E69E6530];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v11 = sub_1D72620BC();
    MEMORY[0x1DA6F9910](v11);

    v12 = v22[0];
    result = sub_1D70BBBF0(v7, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    v22[0] = *v7;
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    v15 = *(v2 + 16);
    v16 = MEMORY[0x1E69E65A8];
    *(v14 + 56) = MEMORY[0x1E69E6530];
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = sub_1D72620BC();
    v12 = sub_1D70B9440(v17, v18);
  }

  v19 = *(v2 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v21;
    return v12;
  }

  return result;
}

uint64_t sub_1D70B6F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v58, v3);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D725B3CC();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = (&v50 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v50 - v16);
  sub_1D70BB9D4(0, &qword_1EC88EB58, MEMORY[0x1E69D6798], MEMORY[0x1E69E6F90]);
  v18 = *(v5 + 72);
  v51 = v5;
  v19 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v57 = 2 * v18;
  v55 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7270C10;
  sub_1D725B40C();
  v22 = a1;
  v23 = WebEmbedDataVisualization.identifier.getter();
  v24 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E61C8];
  v65 = MEMORY[0x1E69E6158];
  v66 = MEMORY[0x1E69E61C8];
  v63 = v23;
  v64 = v26;
  v54 = v18;
  sub_1D725B3FC();
  v67 = v21;
  sub_1D70BBA38(v22, v17, type metadata accessor for WebEmbedDataVisualization);
  v61 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D70BBBF0(v17, type metadata accessor for WebEmbedDataVisualization);
    v27 = v22;
  }

  else
  {
    v62 = *v17;
    v28 = SportsDataVisualization.umcCanonicalId.getter();
    v65 = v24;
    v66 = v25;
    v63 = v28;
    v64 = v29;
    v30 = v50;
    sub_1D725B3FC();
    v32 = *(v21 + 16);
    v31 = *(v21 + 24);
    if (v32 >= v31 >> 1)
    {
      v21 = sub_1D6990334(v31 > 1, v32 + 1, 1, v21);
    }

    v27 = v22;

    *(v21 + 16) = v32 + 1;
    (*(v51 + 32))(v21 + v19 + v32 * v54, v30, v52);
    v67 = v21;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D7284F00;
  v34 = WebEmbedDataVisualization.kind.getter();
  v65 = MEMORY[0x1E69E6158];
  v66 = MEMORY[0x1E69E61C8];
  v63 = v34;
  v64 = v35;
  sub_1D725B3FC();
  v36 = sub_1D72585BC();
  v65 = v36;
  v37 = sub_1D5D12B20(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v66 = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
  v39 = v53;
  sub_1D70BBA38(v27, v53, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v39;
    v41 = v59;
    sub_1D70BBB88(v40, v59, type metadata accessor for GenericDataVisualization);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v41 + *(v58 + 20), v36);
    sub_1D70BBBF0(v41, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v62 = *v39;
    SportsDataVisualization.embedUrl.getter(boxed_opaque_existential_1);
  }

  sub_1D725B3FC();
  v65 = v36;
  v66 = v37;
  v42 = __swift_allocate_boxed_opaque_existential_1(&v63);
  v43 = v56;
  sub_1D70BBA38(v27, v56, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v43;
    v45 = v59;
    sub_1D70BBB88(v44, v59, type metadata accessor for GenericDataVisualization);
    (*(*(v36 - 8) + 16))(v42, v45 + *(v58 + 20), v36);
    sub_1D70BBBF0(v45, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v62 = *v43;
    SportsDataVisualization.configuredEmbedUrl.getter(v42);
  }

  sub_1D725B3FC();
  v46 = sub_1D6D2968C();
  v47 = MEMORY[0x1E6968FB0];
  sub_1D70BB9D4(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  v65 = v48;
  v66 = sub_1D70BBC50(&qword_1EC89A1E8, &qword_1EDF05400, v47);
  v63 = v46;
  sub_1D725B3FC();
  sub_1D6D29394();
  sub_1D725B3DC();
  sub_1D6D29D78();
  sub_1D725B3DC();
  sub_1D69860D8(v33);
  sub_1D725AD0C();
  return sub_1D70BBBF0(v27, type metadata accessor for WebEmbedDataVisualization);
}

uint64_t sub_1D70B76E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for FormatOption();
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D725B3CC();
  v7 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v8);
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v72 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v71 = &v69 - v19;
  v20 = *a1;
  v21 = a1[1];
  v23 = a1[2];
  v22 = a1[3];
  v24 = a1[5];
  v76 = a1[4];
  v77 = v22;
  v75 = v24;
  sub_1D70BB9D4(0, &qword_1EC88EB58, MEMORY[0x1E69D6798], MEMORY[0x1E69E6F90]);
  v25 = *(v7 + 72);
  v83 = v7;
  v26 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7284F00;
  v81 = v26;
  sub_1D725B40C();
  v28 = MEMORY[0x1E69E6158];
  *(&v87 + 1) = MEMORY[0x1E69E6158];
  v88 = MEMORY[0x1E69E61C8];
  *&v86 = v20;
  *(&v86 + 1) = v21;
  v73 = v21;

  sub_1D725B3FC();
  v80 = v25;
  v78 = v23;
  if (v23)
  {
    v29 = [v23 identifier];
    v30 = sub_1D726207C();
    v32 = v31;

    v23 = v78;
    v33 = v28;
    *(&v87 + 1) = v28;
    v34 = MEMORY[0x1E69E61C8];
    v88 = MEMORY[0x1E69E61C8];
    *&v86 = v30;
    *(&v86 + 1) = v32;
    sub_1D725B3FC();
    v35 = [v23 UMCCanonicalID];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1D726207C();
      v39 = v38;

      *(&v87 + 1) = v33;
      v88 = v34;
      *&v86 = v37;
      *(&v86 + 1) = v39;
      v23 = v78;
      sub_1D725B3FC();
LABEL_6:
      v40 = [v23 name];
      v41 = sub_1D726207C();
      v43 = v42;

      *(&v87 + 1) = v33;
      v88 = v34;
      *&v86 = v41;
      *(&v86 + 1) = v43;
      goto LABEL_8;
    }
  }

  else
  {
    v33 = v28;
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_1D725B3FC();
    v34 = MEMORY[0x1E69E61C8];
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  sub_1D725B3FC();
  if (v23)
  {
    goto LABEL_6;
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
LABEL_8:
  sub_1D725B3FC();

  sub_1D725B3EC();
  v44 = v71;
  sub_1D725B40C();
  v46 = *(v27 + 16);
  v45 = *(v27 + 24);
  v47 = v75;
  if (v46 >= v45 >> 1)
  {
    v27 = sub_1D6990334(v45 > 1, v46 + 1, 1, v27);
  }

  *(v27 + 16) = v46 + 1;
  v48 = v27 + v81 + v46 * v80;
  v49 = v80;
  v50 = *(v83 + 32);
  v83 += 32;
  v51 = v50;
  v50(v48, v44, v82);
  v52 = *(v47 + 16);
  if (v52)
  {

    v53 = (v47 + 56);
    do
    {
      v54 = *(v53 - 1);
      v55 = *v53;
      *(&v87 + 1) = MEMORY[0x1E69E6158];
      v88 = MEMORY[0x1E69E61C8];
      *&v86 = v54;
      *(&v86 + 1) = v55;

      sub_1D725B3FC();
      v57 = *(v27 + 16);
      v56 = *(v27 + 24);
      if (v57 >= v56 >> 1)
      {
        v27 = sub_1D6990334(v56 > 1, v57 + 1, 1, v27);
      }

      *(v27 + 16) = v57 + 1;
      v51(v27 + v81 + v57 * v49, v13, v82);
      v53 += 4;
      --v52;
    }

    while (v52);
  }

  v58 = v72;
  sub_1D725B40C();
  v60 = *(v27 + 16);
  v59 = *(v27 + 24);
  if (v60 >= v59 >> 1)
  {
    v27 = sub_1D6990334(v59 > 1, v60 + 1, 1, v27);
  }

  *(v27 + 16) = v60 + 1;
  v51(v27 + v81 + v60 * v49, v58, v82);

  swift_unknownObjectRelease();
  v61 = *(v76 + 16);
  if (v61)
  {
    v62 = v76 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v63 = *(v70 + 72);
    do
    {
      sub_1D70BBA38(v62, v6, type metadata accessor for FormatOption);
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      v84 = *(v6 + 2);

      sub_1D6BE73AC(&v86);
      sub_1D70BBBF0(v6, type metadata accessor for FormatOption);
      sub_1D7263F9C();
      __swift_destroy_boxed_opaque_existential_1(&v86);
      *(&v87 + 1) = MEMORY[0x1E69E6158];
      v88 = MEMORY[0x1E69E61C8];
      v86 = v85;
      sub_1D725B3FC();
      v65 = *(v27 + 16);
      v64 = *(v27 + 24);
      if (v65 >= v64 >> 1)
      {
        v27 = sub_1D6990334(v64 > 1, v65 + 1, 1, v27);
      }

      v67 = v80;
      v66 = v81;
      *(v27 + 16) = v65 + 1;
      v51(v27 + v66 + v65 * v67, v79, v82);
      v62 += v63;
      --v61;
    }

    while (v61);
  }

  return sub_1D725AD0C();
}

uint64_t sub_1D70B7F00(void *a1)
{
  sub_1D70BB9D4(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v73[-v8];
  sub_1D70BB9D4(0, &qword_1EC88EB58, MEMORY[0x1E69D6798], MEMORY[0x1E69E6F90]);
  sub_1D725B3CC();
  *(swift_allocObject() + 16) = xmmword_1D73032E0;
  sub_1D725B40C();
  v10 = [a1 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  *(&v75 + 1) = MEMORY[0x1E69E6158];
  v76 = MEMORY[0x1E69E61C8];
  *&v74 = v11;
  *(&v74 + 1) = v13;
  sub_1D725B3FC();
  v14 = [a1 UMCCanonicalID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D726207C();
    v18 = v17;

    v19 = MEMORY[0x1E69E61C8];
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    *&v75 = 0;
  }

  *&v74 = v16;
  *(&v74 + 1) = v18;
  *(&v75 + 1) = v20;
  v76 = v19;
  sub_1D725B3FC();
  v21 = [a1 isDeprecated];
  *(&v75 + 1) = MEMORY[0x1E69E6370];
  v76 = MEMORY[0x1E69E6398];
  LOBYTE(v74) = v21;
  sub_1D725B3FC();
  v22 = [a1 sportsEventStartTime];
  if (v22)
  {
    v23 = v22;
    sub_1D72588BC();

    v24 = sub_1D725891C();
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  }

  else
  {
    v24 = sub_1D725891C();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  }

  sub_1D70BBAA0(v5, v9, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D725891C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    sub_1D5B87BB8(v9, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v24;
    v76 = sub_1D5D12B20(&qword_1EDF3C3B0, MEMORY[0x1E6969530]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    (*(v25 + 32))(boxed_opaque_existential_1, v9, v24);
  }

  sub_1D725B3FC();
  v27 = [a1 superfeedConfigResourceID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1D726207C();
    v31 = v30;

    v32 = MEMORY[0x1E69E61C8];
    v33 = MEMORY[0x1E69E6158];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
    *&v75 = 0;
  }

  *&v74 = v29;
  *(&v74 + 1) = v31;
  *(&v75 + 1) = v33;
  v76 = v32;
  sub_1D725B3FC();
  v34 = [a1 highlightsArticleListID];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1D726207C();
    v38 = v37;

    v39 = MEMORY[0x1E69E61C8];
    v40 = MEMORY[0x1E69E6158];
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v40 = 0;
    v39 = 0;
    *&v75 = 0;
  }

  *&v74 = v36;
  *(&v74 + 1) = v38;
  *(&v75 + 1) = v40;
  v76 = v39;
  sub_1D725B3FC();
  v41 = [a1 eventArticleListID];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D726207C();
    v45 = v44;

    v46 = MEMORY[0x1E69E61C8];
    v47 = MEMORY[0x1E69E6158];
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v46 = 0;
    *&v75 = 0;
  }

  *&v74 = v43;
  *(&v74 + 1) = v45;
  *(&v75 + 1) = v47;
  v76 = v46;
  sub_1D725B3FC();
  v48 = [a1 sportsPrimaryName];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1D726207C();
    v52 = v51;

    v53 = MEMORY[0x1E69E61C8];
    v54 = MEMORY[0x1E69E6158];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v54 = 0;
    v53 = 0;
    *&v75 = 0;
  }

  *&v74 = v50;
  *(&v74 + 1) = v52;
  *(&v75 + 1) = v54;
  v76 = v53;
  sub_1D725B3FC();
  v55 = [a1 sportsSecondaryName];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1D726207C();
    v59 = v58;

    v60 = MEMORY[0x1E69E61C8];
    v61 = MEMORY[0x1E69E6158];
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v60 = 0;
    *&v75 = 0;
  }

  *&v74 = v57;
  *(&v74 + 1) = v59;
  *(&v75 + 1) = v61;
  v76 = v60;
  sub_1D725B3FC();
  v62 = [a1 sportsSecondaryShortName];
  if (v62)
  {
    v63 = v62;
    v64 = sub_1D726207C();
    v66 = v65;

    v67 = MEMORY[0x1E69E61C8];
    v68 = MEMORY[0x1E69E6158];
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v68 = 0;
    v67 = 0;
    *&v75 = 0;
  }

  *&v74 = v64;
  *(&v74 + 1) = v66;
  *(&v75 + 1) = v68;
  v76 = v67;
  sub_1D725B3FC();
  v69 = [a1 rosterResourceIDs];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1D7261D3C();
  }

  else
  {
    v71 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
  }

  sub_1D70B50F4(v71);

  sub_1D725B3DC();
  sub_1D725AD0C();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D70B879C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v90 = sub_1D725B72C();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v3);
  v89 = (&v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v87 = (&v80 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v86 = (&v80 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v85 = (&v80 - v13);
  sub_1D70BB9D4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v92 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v80 - v23;
  sub_1D70BB9D4(0, &qword_1EC88EB58, MEMORY[0x1E69D6798], MEMORY[0x1E69E6F90]);
  sub_1D725B3CC();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D727C500;
  v88 = v25;
  sub_1D725B40C();
  v26 = sub_1D72587AC();
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E61C8];
  *(&v98 + 1) = MEMORY[0x1E69E6158];
  v99 = MEMORY[0x1E69E61C8];
  *&v97 = v26;
  *(&v97 + 1) = v29;
  sub_1D725B3FC();
  v30 = sub_1D72587AC();
  *(&v98 + 1) = v27;
  v99 = v28;
  *&v97 = v30;
  *(&v97 + 1) = v31;
  sub_1D725B3FC();
  swift_getErrorValue();
  v32 = sub_1D726497C();
  *(&v98 + 1) = v27;
  v99 = v28;
  *&v97 = v32;
  *(&v97 + 1) = v33;
  sub_1D725B3FC();
  sub_1D725B40C();
  sub_1D72577BC();
  v34 = sub_1D72585BC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v82 = v35 + 48;
  v81 = v36;
  if (v36(v24, 1, v34) == 1)
  {
    sub_1D5B87BB8(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  else
  {
    *(&v98 + 1) = v34;
    v99 = sub_1D5D12B20(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
    (*(v35 + 32))(boxed_opaque_existential_1, v24, v34);
  }

  v83 = v17;
  sub_1D725B3FC();
  v38 = sub_1D725777C();
  if (v38)
  {
    *&v97 = sub_1D70B50F4(v38);

    sub_1D5F81CCC(&v97);
    v39 = a1;
  }

  else
  {
    v39 = a1;
  }

  sub_1D725B3DC();
  sub_1D725775C();
  *(&v98 + 1) = MEMORY[0x1E69E63B0];
  v99 = MEMORY[0x1E69E6418];
  *&v97 = v40;
  sub_1D725B3FC();
  sub_1D725B40C();
  v41 = v39;
  *&v97 = *(v39 + 16);
  v42 = v97;
  v43 = sub_1D5B49474(0, &qword_1EDF3C5D0);
  v44 = v85;
  v84 = v43;
  v45 = v90;
  v46 = swift_dynamicCast();
  v47 = MEMORY[0x1E69D6948];
  v49 = v92;
  v48 = v93;
  if (!v46)
  {
    goto LABEL_12;
  }

  if ((*(v93 + 88))(v44, v45) != *v47)
  {
    (*(v48 + 8))(v44, v45);
LABEL_12:

    (*(v35 + 56))(v49, 1, 1, v34);
    v54 = v41;
LABEL_13:
    sub_1D5B87BB8(v49, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v55 = MEMORY[0x1E69E6158];
    *(&v98 + 1) = MEMORY[0x1E69E6158];
    v99 = MEMORY[0x1E69E61C8];
    *&v97 = 0x6E776F6E6B6E75;
    *(&v97 + 1) = 0xE700000000000000;
    goto LABEL_14;
  }

  (*(v48 + 96))(v44, v45);
  v50 = *v44;

  v51 = [v50 URL];
  if (v51)
  {
    v52 = v83;
    sub_1D72584EC();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v52 = v83;
  }

  v54 = v41;
  (*(v35 + 56))(v52, v53, 1, v34);
  v49 = v92;
  sub_1D70BBAA0(v52, v92, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v78 = v81(v49, 1, v34);
  v47 = MEMORY[0x1E69D6948];
  if (v78 == 1)
  {
    goto LABEL_13;
  }

  v95 = v34;
  v96 = sub_1D5D12B20(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v79 = __swift_allocate_boxed_opaque_existential_1(&v94);
  (*(v35 + 32))(v79, v49, v34);
  sub_1D5B63F14(&v94, &v97);
  v55 = MEMORY[0x1E69E6158];
LABEL_14:
  sub_1D725B3FC();
  *&v97 = *(v54 + 16);
  v56 = v97;
  v57 = v86;
  v58 = swift_dynamicCast();
  v59 = v93;
  if (!v58)
  {
LABEL_20:

    goto LABEL_21;
  }

  if ((*(v93 + 88))(v57, v45) != *v47)
  {
    (*(v59 + 8))(v57, v45);
    goto LABEL_20;
  }

  (*(v59 + 96))(v57, v45);
  v60 = *v57;

  v61 = [v60 MIMEType];
  if (v61)
  {
    v62 = sub_1D726207C();
    v64 = v63;

    *(&v98 + 1) = v55;
    v99 = MEMORY[0x1E69E61C8];
    if (v64)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(&v98 + 1) = v55;
  v99 = MEMORY[0x1E69E61C8];
LABEL_22:
  v64 = 0xE700000000000000;
  v62 = 0x6E776F6E6B6E75;
LABEL_23:
  v65 = MEMORY[0x1E69D6948];
  *&v97 = v62;
  *(&v97 + 1) = v64;
  sub_1D725B3FC();
  *&v97 = *(v54 + 16);
  v66 = v97;
  v67 = v87;
  if (swift_dynamicCast())
  {
    v68 = v93;
    if ((*(v93 + 88))(v67, v45) == *v65)
    {
      (*(v68 + 96))(v67, v45);
      v69 = *v67;

      v70 = [v69 statusCode];
      v95 = MEMORY[0x1E69E6530];
      v96 = MEMORY[0x1E69E6590];
      *&v94 = v70;
      sub_1D5B63F14(&v94, &v97);
      goto LABEL_28;
    }

    (*(v68 + 8))(v67, v45);
  }

  *(&v98 + 1) = v55;
  v99 = MEMORY[0x1E69E61C8];
  *&v97 = 0x6E776F6E6B6E75;
  *(&v97 + 1) = 0xE700000000000000;
LABEL_28:
  sub_1D725B3FC();
  *&v97 = *(v54 + 16);
  v71 = v97;
  v72 = v89;
  if (!swift_dynamicCast())
  {
LABEL_32:

    v76 = 0;
    goto LABEL_33;
  }

  v73 = v93;
  if ((*(v93 + 88))(v72, v45) != *v65)
  {
    (*(v73 + 8))(v72, v45);
    goto LABEL_32;
  }

  (*(v73 + 96))(v72, v45);
  v74 = *v72;

  v75 = [v74 allHeaderFields];
  v76 = sub_1D7261D3C();

LABEL_33:
  sub_1D70BB650(v76);

  sub_1D725B3DC();
  sub_1D725AD0C();
}

uint64_t sub_1D70B9440(uint64_t a1, uint64_t a2)
{
  sub_1D70BB9D4(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  v89 = *v2;
  v19 = SportsDataVisualization.event.getter();
  if (!v19)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_7:
    sub_1D5B87BB8(v12, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_12;
  }

  v20 = [v19 sportsEventStartTime];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1D72588BC();

    (*(v14 + 56))(v8, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v8, 1, 1, v13);
  }

  sub_1D70BBAA0(v8, v12, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  (*(v14 + 32))(v17, v12, v13);
  result = sub_1D725889C();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v24 < 9.22337204e18)
  {
    v89 = v24;
    v21 = sub_1D72644BC();
    v22 = v25;
    (*(v14 + 8))(v17, v13);
LABEL_12:
    v26 = v18 >> 61;
    if ((v18 >> 61) <= 2)
    {
      if (v26)
      {
        if (v26 == 1)
        {

          v35 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v89 = 0x676E69646E617473;
          v90 = 0xE90000000000002DLL;
          if (*(v35 + 56))
          {

            v36 = [swift_unknownObjectRetain() identifier];
            v37 = sub_1D726207C();
            v39 = v38;
            swift_unknownObjectRelease();
          }

          else
          {
            v37 = 0x2D676E697373696DLL;

            v39 = 0xEE0065756761656CLL;
          }

          MEMORY[0x1DA6F9910](v37, v39);
        }

        else
        {

          v89 = 0x2D74656B63617262;
          v90 = 0xE800000000000000;
          sub_1D5E4CF90();

          sub_1D725BE8C();
          v54 = *(v88 + 56);
          swift_unknownObjectRetain();

          if (v54)
          {
            v55 = [swift_unknownObjectRetain() identifier];
            v56 = sub_1D726207C();
            v58 = v57;

            swift_unknownObjectRelease_n();
          }

          else
          {
            v56 = 0x2D676E697373696DLL;
            v58 = 0xEE0065756761656CLL;
          }

          MEMORY[0x1DA6F9910](v56, v58);
        }

        MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        MEMORY[0x1DA6F9910](a1, a2);
        goto LABEL_45;
      }

      v89 = v18;

      v49 = sub_1D70B9F88(v48);
      v51 = v50;
      v89 = v21;
      v90 = v22;
      v52 = 0x2D65726F63732DLL;
      v53 = 0xE700000000000000;
    }

    else if (v26 > 4)
    {
      if (v26 == 5)
      {
        v40 = *(*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
        swift_unknownObjectRetain_n();

        v41 = [v40 identifier];
        v42 = sub_1D726207C();
        v44 = v43;

        v89 = v42;
        v90 = v44;
        MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        v88 = v18;
        v45 = [v40 eventCompetitorTags];
        if (v45)
        {
          v46 = v45;
          sub_1D5EC01D0();
          v47 = sub_1D726267C();
        }

        else
        {
          v47 = 0;
        }

        v78 = sub_1D70BA204(v47);
        v80 = v79;

        MEMORY[0x1DA6F9910](v78, v80);
        swift_unknownObjectRelease_n();

        v49 = v89;
        v51 = v90;
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_1D7263D4C();

        v89 = v21;
        v90 = v22;
        v52 = 0x727972756A6E692DLL;
        v53 = 0xEE002D74726F7065;
      }

      else
      {
        v67 = *(*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
        swift_unknownObjectRetain_n();

        v68 = [v67 identifier];
        v69 = sub_1D726207C();
        v71 = v70;

        v89 = v69;
        v90 = v71;
        MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        v88 = v18;
        v72 = [v67 eventCompetitorTags];
        if (v72)
        {
          v73 = v72;
          sub_1D5EC01D0();
          v74 = sub_1D726267C();
        }

        else
        {
          v74 = 0;
        }

        v84 = sub_1D70BA204(v74);
        v86 = v85;

        MEMORY[0x1DA6F9910](v84, v86);
        swift_unknownObjectRelease_n();

        v49 = v89;
        v51 = v90;
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_1D7263D4C();

        v89 = v21;
        v90 = v22;
        v52 = 0x79616C7079656B2DLL;
        v53 = 0xEB000000002D7265;
      }
    }

    else if (v26 == 3)
    {
      v27 = *(*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
      swift_unknownObjectRetain_n();

      v28 = [v27 identifier];
      v29 = sub_1D726207C();
      v31 = v30;

      v89 = v29;
      v90 = v31;
      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      v88 = v18;
      v32 = [v27 eventCompetitorTags];
      if (v32)
      {
        v33 = v32;
        sub_1D5EC01D0();
        v34 = sub_1D726267C();
      }

      else
      {
        v34 = 0;
      }

      v75 = sub_1D70BA204(v34);
      v77 = v76;

      MEMORY[0x1DA6F9910](v75, v77);
      swift_unknownObjectRelease_n();

      v49 = v89;
      v51 = v90;
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1D7263D4C();

      v89 = v21;
      v90 = v22;
      v52 = 0x726F6373786F622DLL;
      v53 = 0xEA00000000002D65;
    }

    else
    {
      v59 = *(*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
      swift_unknownObjectRetain_n();

      v60 = [v59 identifier];
      v61 = sub_1D726207C();
      v63 = v62;

      v89 = v61;
      v90 = v63;
      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      v88 = v18;
      v64 = [v59 eventCompetitorTags];
      if (v64)
      {
        v65 = v64;
        sub_1D5EC01D0();
        v66 = sub_1D726267C();
      }

      else
      {
        v66 = 0;
      }

      v81 = sub_1D70BA204(v66);
      v83 = v82;

      MEMORY[0x1DA6F9910](v81, v83);
      swift_unknownObjectRelease_n();

      v49 = v89;
      v51 = v90;
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1D7263D4C();

      v89 = v21;
      v90 = v22;
      v52 = 0x6F6373656E696C2DLL;
      v53 = 0xEB000000002D6572;
    }

    MEMORY[0x1DA6F9910](v52, v53);
    MEMORY[0x1DA6F9910](v49, v51);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
LABEL_45:

    return v89;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_1D70B9EA8()
{
  if (!qword_1EC89A1C8)
  {
    type metadata accessor for WebEmbedDataVisualization();
    type metadata accessor for WebEmbedDatastore();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89A1C8);
    }
  }
}

void sub_1D70B9F1C()
{
  if (!qword_1EC89A1D0)
  {
    sub_1D725ACFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89A1D0);
    }
  }
}

uint64_t sub_1D70B9F88(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [swift_unknownObjectRetain() identifier];
    v3 = sub_1D726207C();
    v5 = v4;

    MEMORY[0x1DA6F9910](v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_1D70BA090(*(a1 + 32));
    MEMORY[0x1DA6F9910](v6);
  }

  v7 = sub_1D70BA204(*(a1 + 32));
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);

  return 0;
}

uint64_t sub_1D70BA090(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      v4 = __OFSUB__(v2, 1);
      while ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          return 0;
        }

LABEL_10:
        v7 = [v5 identifier];
        v8 = sub_1D726207C();
        v10 = v9;

        MEMORY[0x1DA6F9910](v8, v10);

        if (v4)
        {
          goto LABEL_18;
        }

        if (v3 < v2 - 1)
        {
          MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        }

        swift_unknownObjectRelease();
        ++v3;
        if (v6 == v2)
        {
          return 0;
        }
      }

      if (v3 < *(v12 + 16))
      {
        break;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v2 = sub_1D7263BFC();
      if (!v2)
      {
        return 0;
      }
    }

    v5 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1D70BA204(unint64_t a1)
{
  v40 = sub_1D7257A4C();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v3);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v31 - v8;
  if (!a1)
  {
    return 0xD000000000000013;
  }

  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v11 = 0;
      v36 = (v2 + 1);
      v37 = a1 & 0xC000000000000001;
      v32 = v10 - 1;
      v33 = v9;
      v12 = __OFSUB__(v10, 1);
      v35 = v12;
      v34 = v10;
      v13 = v38;
      while (v37)
      {
        v14 = MEMORY[0x1DA6FB460](v11, a1, v7);
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_17:
          __break(1u);
          return 0xD000000000000013;
        }

LABEL_12:
        v41 = v15;
        v42 = v14;
        v9 = a1;
        v16 = [v14 name];
        v17 = sub_1D726207C();
        v19 = v18;

        sub_1D725796C();
        v43 = v17;
        v44 = v19;
        sub_1D5BF4D9C();
        v20 = sub_1D7263A4C();
        v22 = v21;

        v43 = v20;
        v44 = v22;
        v23 = v39;
        sub_1D72579DC();
        a1 = sub_1D72639EC();
        v24 = *v36;
        v25 = v23;
        v26 = v40;
        (*v36)(v25, v40);

        v43 = a1;
        sub_1D5BBE0A8();
        sub_1D5D12B20(&qword_1EDF3C840, sub_1D5BBE0A8);
        v27 = sub_1D7261F3C();
        v29 = v28;
        v24(v13, v26);

        v2 = v45;
        MEMORY[0x1DA6F9910](v27, v29);

        if (v35)
        {
          goto LABEL_21;
        }

        a1 = v9;
        v9 = v33;
        if (v11 < v32)
        {
          MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        }

        swift_unknownObjectRelease();
        ++v11;
        if (v41 == v34)
        {
          return v45[0];
        }
      }

      if (v11 < *(v9 + 16))
      {
        break;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v10 = sub_1D7263BFC();
      if (!v10)
      {
        return 0;
      }
    }

    v14 = swift_unknownObjectRetain();
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1D70BA578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v139 = *MEMORY[0x1E69E9840];
  v127 = sub_1D725B3CC();
  v3 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v4);
  v114 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v114 - v11;
  v124 = sub_1D72620DC();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v12);
  v122 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70BB9D4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v119 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v114 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = &v114 - v22;
  v23 = sub_1D725891C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70BB9D4(0, &qword_1EC88EB58, MEMORY[0x1E69D6798], MEMORY[0x1E69E6F90]);
  v28 = *(v3 + 72);
  v126 = v3;
  v29 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D738D060;
  v129 = v30;
  v125 = v29;
  sub_1D725B40C();
  v31 = sub_1D72587AC();
  *(&v137 + 1) = MEMORY[0x1E69E6158];
  v138 = MEMORY[0x1E69E61C8];
  *&v136 = v31;
  *(&v136 + 1) = v32;
  sub_1D725B3FC();
  sub_1D725890C();
  v33 = sub_1D72587AC();
  v35 = v34;
  v130 = *(v24 + 8);
  v130(v27, v23);
  *(&v137 + 1) = MEMORY[0x1E69E6158];
  v138 = MEMORY[0x1E69E61C8];
  *&v136 = v33;
  *(&v136 + 1) = v35;
  sub_1D725B3FC();
  v36 = type metadata accessor for WebEmbedDataSourceJson();
  v37 = *(v36 + 28);
  *(&v137 + 1) = v23;
  v138 = sub_1D5D12B20(&qword_1EDF3C3B0, MEMORY[0x1E6969530]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
  (*(v24 + 16))(boxed_opaque_existential_1, a1 + v37, v23);
  sub_1D725B3FC();
  sub_1D725890C();
  LOBYTE(v33) = sub_1D725882C();
  v130(v27, v23);
  *(&v137 + 1) = MEMORY[0x1E69E6370];
  v138 = MEMORY[0x1E69E6398];
  LOBYTE(v136) = v33 & 1;
  sub_1D725B3FC();
  v39 = *(a1 + *(v36 + 20));
  *(&v137 + 1) = MEMORY[0x1E69E63B0];
  v138 = MEMORY[0x1E69E6418];
  *&v136 = v39;
  sub_1D725B3FC();
  v130 = v28;
  sub_1D725B40C();
  v121 = v36;
  v40 = v117;
  sub_1D72577BC();
  v41 = sub_1D72585BC();
  v42 = *(v41 - 8);
  v118 = *(v42 + 48);
  if (v118(v40, 1, v41) == 1)
  {
    sub_1D5B87BB8(v40, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
  }

  else
  {
    *(&v137 + 1) = v41;
    v138 = sub_1D5D12B20(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
    v43 = __swift_allocate_boxed_opaque_existential_1(&v136);
    (*(v42 + 32))(v43, v40, v41);
  }

  sub_1D725B3FC();
  v44 = sub_1D725777C();
  if (v44)
  {
    *&v136 = sub_1D70B50F4(v44);

    sub_1D5F81CCC(&v136);
    v117 = 0;
    v45 = a1;
  }

  else
  {
    v45 = a1;
    v117 = 0;
  }

  sub_1D725B3DC();
  sub_1D725775C();
  *(&v137 + 1) = MEMORY[0x1E69E63B0];
  v138 = MEMORY[0x1E69E6418];
  *&v136 = v46;
  v47 = v45;
  sub_1D725B3FC();
  sub_1D725B40C();
  v48 = v121;
  v49 = *(v45 + *(v121 + 40));
  v50 = [v49 URL];
  if (v50)
  {
    v51 = v119;
    v52 = v50;
    sub_1D72584EC();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v51 = v119;
  }

  (*(v42 + 56))(v51, v53, 1, v41);
  v54 = v120;
  sub_1D70BBAA0(v51, v120, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v118(v54, 1, v41) == 1)
  {
    sub_1D5B87BB8(v54, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
  }

  else
  {
    *(&v137 + 1) = v41;
    v138 = sub_1D5D12B20(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
    v55 = __swift_allocate_boxed_opaque_existential_1(&v136);
    (*(v42 + 32))(v55, v54, v41);
  }

  sub_1D725B3FC();
  v56 = [v49 MIMEType];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1D726207C();
    v60 = v59;

    v61 = MEMORY[0x1E69E61C8];
    v62 = MEMORY[0x1E69E6158];
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v62 = 0;
    v61 = 0;
    *&v137 = 0;
  }

  *&v136 = v58;
  *(&v136 + 1) = v60;
  *(&v137 + 1) = v62;
  v138 = v61;
  sub_1D725B3FC();
  v63 = [v49 statusCode];
  *(&v137 + 1) = MEMORY[0x1E69E6530];
  v138 = MEMORY[0x1E69E6590];
  *&v136 = v63;
  sub_1D725B3FC();
  v64 = [v49 allHeaderFields];
  v65 = sub_1D7261D3C();

  sub_1D70BB650(v65);

  v66 = MEMORY[0x1E69E6158];
  v67 = MEMORY[0x1E69E61C8];
  sub_1D725B3DC();
  v68 = (v47 + *(v48 + 24));
  v70 = *v68;
  v69 = v68[1];
  v71 = v122;
  sub_1D72620CC();
  v72 = sub_1D726208C();
  v74 = v73;
  (*(v123 + 8))(v71, v124);
  if (v74 >> 60 == 15)
  {
    *(&v137 + 1) = v66;
    v138 = v67;
    *&v136 = v70;
    *(&v136 + 1) = v69;

    v75 = v116;
    sub_1D725B3FC();
    v76 = v129;
    v78 = *(v129 + 2);
    v77 = *(v129 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_1D6990334(v77 > 1, v78 + 1, 1, v129);
    }

    v79 = v127;
    v80 = v126;
    v81 = v125;
    *(v76 + 2) = v78 + 1;
    (*(v80 + 32))(&v76[v81 + v78 * v130], v75, v79);
    goto LABEL_38;
  }

  v82 = v67;
  v83 = objc_opt_self();
  v84 = sub_1D725865C();
  *&v136 = 0;
  v85 = [v83 JSONObjectWithData:v84 options:0 error:&v136];

  v86 = v136;
  if (v85)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v135, v135[3]);
    v87 = sub_1D72646AC();
    *&v136 = 0;
    v88 = [v83 dataWithJSONObject:v87 options:3 error:&v136];
    swift_unknownObjectRelease();
    v89 = v136;
    if (v88)
    {
      v90 = sub_1D725867C();
      v92 = v91;

      sub_1D5E3E824(v90, v92);
      v93 = v117;
      v94 = sub_1D60DA9EC(v90, v92);
      if (!v95)
      {
        v133 = v90;
        v134 = v92;
        sub_1D5E3E824(v90, v92);
        sub_1D5B49474(0, &qword_1EC883708);
        if (swift_dynamicCast())
        {
          v124 = v93;
          sub_1D5B63F14(v131, &v136);
          __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
          if (sub_1D726415C())
          {
            sub_1D5B952F8(v90, v92);
            v123 = v138;
            __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
            sub_1D726414C();
            v97 = *(&v131[0] + 1);
            v96 = *&v131[0];
            __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_35:
            *(&v137 + 1) = v66;
            v138 = v82;
            *&v136 = v96;
            *(&v136 + 1) = v97;
            sub_1D725B3FC();
            v109 = *(v129 + 2);
            v108 = *(v129 + 3);
            if (v109 >= v108 >> 1)
            {
              v129 = sub_1D6990334(v108 > 1, v109 + 1, 1, v129);
            }

            v110 = v127;
            v111 = v126;
            sub_1D5B952E4(v72, v74);
            sub_1D5B952F8(v90, v92);
            v112 = v129;
            *(v129 + 2) = v109 + 1;
            (*(v111 + 32))(&v112[v125 + v109 * v130], v115, v110);
            __swift_destroy_boxed_opaque_existential_1(v135);
            goto LABEL_38;
          }

          __swift_destroy_boxed_opaque_existential_1(&v136);
        }

        else
        {
          v132 = 0;
          memset(v131, 0, sizeof(v131));
          sub_1D6CA1500(v131);
        }

        v94 = sub_1D60DA7C8(v90, v92);
      }

      v96 = v94;
      v97 = v95;
      sub_1D5B952F8(v90, v92);
      goto LABEL_35;
    }

    v100 = v89;
    v99 = sub_1D725829C();

    swift_willThrow();
    sub_1D5B952E4(v72, v74);
    __swift_destroy_boxed_opaque_existential_1(v135);
  }

  else
  {
    v98 = v86;
    v99 = sub_1D725829C();

    swift_willThrow();
    sub_1D5B952E4(v72, v74);
  }

  *(&v137 + 1) = v66;
  v138 = v82;
  *&v136 = v70;
  *(&v136 + 1) = v69;

  v101 = v114;
  sub_1D725B3FC();
  v102 = v129;
  v104 = *(v129 + 2);
  v103 = *(v129 + 3);
  if (v104 >= v103 >> 1)
  {
    v102 = sub_1D6990334(v103 > 1, v104 + 1, 1, v129);
  }

  v105 = v127;
  v106 = v126;
  v107 = v125;

  *(v102 + 2) = v104 + 1;
  (*(v106 + 32))(&v102[v107 + v104 * v130], v101, v105);
LABEL_38:
  sub_1D725AD0C();
  return sub_1D70BBBF0(v47, type metadata accessor for WebEmbedDataSourceJson);
}

uint64_t sub_1D70BB650(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v27 = v38;
    v4 = a1 + 64;
    v5 = sub_1D7263B7C();
    v6 = 0;
    v7 = *(a1 + 36);
    v25 = v2;
    v26 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v2 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      sub_1D5F42518(*(a1 + 48) + 40 * v5, v35);
      sub_1D5B76B10(*(a1 + 56) + 32 * v5, v37);
      v32[0] = v35[0];
      v32[1] = v35[1];
      v33 = v36;
      sub_1D5B7C390(v37, &v34);
      sub_1D5F42518(v32, &v30);
      if (swift_dynamicCast())
      {
        v10 = v28;
        v30 = 0;
        v31 = 0xE000000000000000;
        v11 = v29;
      }

      else
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        v10 = sub_1D7263C6C();
      }

      MEMORY[0x1DA6F9910](v10, v11);

      MEMORY[0x1DA6F9910](2112800, 0xE300000000000000);
      sub_1D7263F9C();
      v12 = v30;
      v13 = v31;
      sub_1D70BBBF0(v32, sub_1D70BBB20);
      v14 = v27;
      v38 = v27;
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v14 = v38;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_30;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v2);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      v27 = v14;
      v7 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_32;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v25;
      }

      else
      {
        v20 = v2 << 6;
        v21 = v2 + 1;
        v9 = v25;
        v22 = (a1 + 72 + 8 * v2);
        while (v21 < (v8 + 63) >> 6)
        {
          v23 = *v22++;
          v2 = v23;
          v20 += 64;
          ++v21;
          if (v23)
          {
            sub_1D5C25E1C(v5, v26, 0);
            v8 = __clz(__rbit64(v2)) + v20;
            goto LABEL_5;
          }
        }

        sub_1D5C25E1C(v5, v26, 0);
      }

LABEL_5:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        v3 = v27;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_26:
    *&v35[0] = v3;

    sub_1D5F81CCC(v35);

    return *&v35[0];
  }

  return result;
}

void sub_1D70BB9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D70BBA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70BBAA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D70BB9D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D70BBB20()
{
  if (!qword_1EDF04340)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04340);
    }
  }
}

uint64_t sub_1D70BBB88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70BBBF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D70BBC50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D70BB9D4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70BBCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v27 = &v26 - v10;
  sub_1D5D3A7E0();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for FormatMetadata() + 28);
  v17 = *(v12 + 56);
  v29 = a2;
  sub_1D5D3A874(a2 + v16, v15);
  sub_1D5D3A874(a1 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  LODWORD(v12) = v18(v15, 1, v4);
  v19 = v18(&v15[v17], 1, v4);
  if (v12 == 1)
  {
    if (v19 == 1)
    {
      sub_1D725BCBC();
      sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v20 = sub_1D7261F5C();
    }

    else
    {
      sub_1D5BFC674(&v15[v17], sub_1D5B5C268);
      v20 = 0;
    }
  }

  else if (v19 == 1)
  {
    (*(v5 + 8))(v15, v4);
    v20 = 1;
  }

  else
  {
    v21 = *(v5 + 32);
    v22 = v27;
    v21(v27, v15, v4);
    v23 = v28;
    v21(v28, &v15[v17], v4);
    sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v20 = sub_1D7261F5C();
    v24 = *(v5 + 8);
    v24(v23, v4);
    v24(v22, v4);
  }

  return v20 & 1;
}

uint64_t sub_1D70BBFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == a1 && a6 == a2 || (sub_1D72646CC() & 1) != 0)
  {
    if (a7 == a3)
    {
      return a8 < a4;
    }

    else
    {
      return a7 < a3;
    }
  }

  else
  {

    return sub_1D72646CC();
  }
}

uint64_t sub_1D70BC0A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x64656C6261736964;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0x6867696C68676968;
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x64657463656C6573;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x64657375636F66;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6867696C68676968;
  v8 = 0xEB00000000646574;
  if (a1 != 2)
  {
    v7 = 0x64657463656C6573;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = 0x64657375636F66;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

BOOL sub_1D70BC1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v27 = &v26 - v10;
  sub_1D5D3A7E0();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for FormatMetadata() + 28);
  v17 = *(v12 + 56);
  v29 = a1;
  sub_1D5D3A874(a1 + v16, v15);
  sub_1D5D3A874(a2 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  LODWORD(v12) = v18(v15, 1, v4);
  v19 = v18(&v15[v17], 1, v4);
  if (v12 == 1)
  {
    if (v19 == 1)
    {
      sub_1D725BCBC();
      sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v20 = sub_1D7261F5C();
    }

    else
    {
      sub_1D5BFC674(&v15[v17], sub_1D5B5C268);
      v20 = 0;
    }
  }

  else if (v19 == 1)
  {
    (*(v5 + 8))(v15, v4);
    v20 = 1;
  }

  else
  {
    v21 = *(v5 + 32);
    v22 = v27;
    v21(v27, v15, v4);
    v23 = v28;
    v21(v28, &v15[v17], v4);
    sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v20 = sub_1D7261F5C();
    v24 = *(v5 + 8);
    v24(v23, v4);
    v24(v22, v4);
  }

  return (v20 & 1) == 0;
}

BOOL sub_1D70BC524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (sub_1D72646CC() & 1) != 0)
  {
    if (a3 == a7)
    {
      v12 = a4 < a8;
    }

    else
    {
      v12 = a3 < a7;
    }
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return (v12 & 1) == 0;
}

uint64_t sub_1D70BC5DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656C6261736964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6867696C68676968;
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x64657463656C6573;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64657375636F66;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6867696C68676968;
  v8 = 0xEB00000000646574;
  if (a2 != 2)
  {
    v7 = 0x64657463656C6573;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x64657375636F66;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1D70BC744(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x64656C6261736964;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0x6867696C68676968;
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x64657463656C6573;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x64657375636F66;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6867696C68676968;
  v8 = 0xEB00000000646574;
  if (a1 != 2)
  {
    v7 = 0x64657463656C6573;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = 0x64657375636F66;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

BOOL sub_1D70BC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == a1 && a6 == a2 || (sub_1D72646CC() & 1) != 0)
  {
    if (a7 == a3)
    {
      v12 = a8 < a4;
    }

    else
    {
      v12 = a7 < a3;
    }
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return (v12 & 1) == 0;
}

BOOL sub_1D70BC968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v27 = &v26 - v10;
  sub_1D5D3A7E0();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for FormatMetadata() + 28);
  v17 = *(v12 + 56);
  v29 = a2;
  sub_1D5D3A874(a2 + v16, v15);
  sub_1D5D3A874(a1 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  LODWORD(v12) = v18(v15, 1, v4);
  v19 = v18(&v15[v17], 1, v4);
  if (v12 == 1)
  {
    if (v19 == 1)
    {
      sub_1D725BCBC();
      sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v20 = sub_1D7261F5C();
    }

    else
    {
      sub_1D5BFC674(&v15[v17], sub_1D5B5C268);
      v20 = 0;
    }
  }

  else if (v19 == 1)
  {
    (*(v5 + 8))(v15, v4);
    v20 = 1;
  }

  else
  {
    v21 = *(v5 + 32);
    v22 = v27;
    v21(v27, v15, v4);
    v23 = v28;
    v21(v28, &v15[v17], v4);
    sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v20 = sub_1D7261F5C();
    v24 = *(v5 + 8);
    v24(v23, v4);
    v24(v22, v4);
  }

  return (v20 & 1) == 0;
}

uint64_t FormatMetadata.isCompatible(appVersion:formatVersion:)()
{
  type metadata accessor for FormatMetadata();
  v0 = sub_1D674D894(sub_1D70BD594);
  v1 = (v0 == 2) | v0;
  sub_1D70BE520(&qword_1EDF415C8, type metadata accessor for FormatMetadata);
  return sub_1D725A94C() & v1 & 1;
}

uint64_t FormatMetadata.init(identifier:minNewsVersion:maxNewsVersion:formatVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = a5;
  v47 = a6;
  v43[1] = a3;
  v43[2] = a4;
  v48 = a1;
  v49 = a2;
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v50 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v45 = v43 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v43 - v20;
  v22 = sub_1D725BD1C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v43 - v29;
  sub_1D725BD3C();
  v31 = *(v23 + 48);
  v32 = v31(v21, 1, v22);
  v44 = v30;
  if (v32 == 1)
  {
    sub_1D725BCDC();
    if (v31(v21, 1, v22) != 1)
    {
      sub_1D5BFC674(v21, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v23 + 32))(v30, v21, v22);
  }

  v43[0] = a11;
  v33 = a9;
  v34 = v45;
  sub_1D725BD3C();
  if (v31(v34, 1, v22) == 1)
  {
    sub_1D725BCCC();
    if (v31(v34, 1, v22) != 1)
    {
      sub_1D5BFC674(v34, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v34, v22);
  }

  v35 = v50;
  sub_1D725BD3C();
  if (a8)
  {
    v36 = a8;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  if (!a9)
  {
    v33 = MEMORY[0x1E69E7CD0];
  }

  if (a10)
  {
    v37 = a10;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  v47 = v37;
  if (v43[0])
  {
    v38 = v43[0];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CD0];
  }

  v39 = v49;
  *a7 = v48;
  *(a7 + 1) = v39;
  v40 = type metadata accessor for FormatMetadata();
  v41 = *(v23 + 32);
  v41(&a7[v40[5]], v44, v22);
  v41(&a7[v40[6]], v26, v22);
  result = sub_1D5C7F144(v35, &a7[v40[7]]);
  *&a7[v40[8]] = v36;
  *&a7[v40[9]] = v33;
  *&a7[v40[10]] = v47;
  *&a7[v40[11]] = v38;
  return result;
}

uint64_t FormatMetadata.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D70BD130@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatMetadata() + 20);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D70BD1B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatMetadata() + 24);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatMetadata.formatVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatMetadata() + 28);

  return sub_1D5D3A874(v3, a1);
}

uint64_t FormatMetadata.allowedSegmentSetIds.getter()
{
  type metadata accessor for FormatMetadata();
}

uint64_t FormatMetadata.blockedSegmentSetIds.getter()
{
  type metadata accessor for FormatMetadata();
}

uint64_t FormatMetadata.allowedPlatforms.getter()
{
  type metadata accessor for FormatMetadata();
}

uint64_t FormatMetadata.blockedPlatforms.getter()
{
  type metadata accessor for FormatMetadata();
}

uint64_t FormatMetadata.init(identifier:minNewsVersion:maxNewsVersion:formatVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v14 = type metadata accessor for FormatMetadata();
  v15 = v14[5];
  v16 = sub_1D725BD1C();
  v17 = *(*(v16 - 8) + 32);
  v17(&a9[v15], a3, v16);
  v17(&a9[v14[6]], a4, v16);
  result = sub_1D5C7F144(a5, &a9[v14[7]]);
  *&a9[v14[8]] = a6;
  *&a9[v14[9]] = a7;
  *&a9[v14[10]] = a8;
  *&a9[v14[11]] = a10;
  return result;
}

uint64_t FormatMetadata.init(formatVersion:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FormatMetadata();
  sub_1D725BCDC();
  sub_1D725BCCC();
  v5 = v4[7];
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&a2[v5], a1, v6);
  (*(v7 + 56))(&a2[v5], 0, 1, v6);
  result = (*(v7 + 8))(a1, v6);
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = MEMORY[0x1E69E7CD0];
  *&a2[v4[8]] = MEMORY[0x1E69E7CD0];
  *&a2[v4[9]] = v9;
  *&a2[v4[10]] = v9;
  *&a2[v4[11]] = v9;
  return result;
}

uint64_t sub_1D70BD560@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D725B9FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D70BD594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D725B9FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D70BD5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70BE268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70BD5F4(uint64_t a1)
{
  v2 = sub_1D5C50508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70BD630(uint64_t a1)
{
  v2 = sub_1D5C50508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  v31 = sub_1D725BD1C();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B59B80(0, &qword_1EDF027D8, sub_1D5C50508, &type metadata for FormatMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C50508();
  sub_1D7264B5C();
  LOBYTE(v35) = 0;
  v13 = v32;
  sub_1D726437C();
  if (v13)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v32 = 0;
  v29 = v9;
  v30 = type metadata accessor for FormatMetadata();
  sub_1D725BCDC();
  sub_1D70BE520(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
  v15 = v31;
  v16 = sub_1D7261FBC();
  v17 = *(v33 + 8);
  v33 += 8;
  v17(v6, v15);
  if (v16)
  {
    v18 = v31;
    v19 = v2;
    v20 = v8;
    v21 = v12;
  }

  else
  {
    LOBYTE(v35) = 2;
    sub_1D70BE520(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    v20 = v8;
    v22 = v32;
    v21 = v12;
    sub_1D726443C();
    v32 = v22;
    if (v22)
    {
      return (*(v29 + 8))(v12, v20);
    }

    v18 = v31;
    v19 = v2;
  }

  sub_1D725BCCC();
  v23 = v19;
  v24 = sub_1D7261FBC();
  v17(v6, v18);
  if (v24)
  {
    v25 = v29;
    v26 = v32;
  }

  else
  {
    LOBYTE(v35) = 3;
    sub_1D70BE520(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    v27 = v32;
    sub_1D726443C();
    v26 = v27;
    if (v27)
    {
      return (*(v29 + 8))(v21, v20);
    }

    v25 = v29;
  }

  v28 = v30;
  LOBYTE(v35) = 1;
  sub_1D70BE520(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D72643BC();
  if (!v26)
  {
    if (*(*(v23 + v28[8]) + 16))
    {
      v35 = *(v23 + v28[8]);
      v34 = 4;
      sub_1D5B59B28();
      sub_1D5C7F090(&qword_1EDF047B0);
      sub_1D726443C();
    }

    if (*(*(v23 + v28[9]) + 16))
    {
      v35 = *(v23 + v28[9]);
      v34 = 5;
      sub_1D5B59B28();
      sub_1D5C7F090(&qword_1EDF047B0);
      sub_1D726443C();
    }

    if (*(*(v23 + v28[10]) + 16))
    {
      v35 = *(v23 + v28[10]);
      v34 = 6;
      sub_1D5B59B80(0, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform, MEMORY[0x1E69E64E8]);
      sub_1D5C50624(&qword_1EDF04840, sub_1D6118344);
      sub_1D726443C();
    }

    if (*(*(v23 + v28[11]) + 16))
    {
      v35 = *(v23 + v28[11]);
      v34 = 7;
      sub_1D5B59B80(0, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform, MEMORY[0x1E69E64E8]);
      sub_1D5C50624(&qword_1EDF04840, sub_1D6118344);
      sub_1D726443C();
    }
  }

  return (*(v25 + 8))(v21, v20);
}

uint64_t sub_1D70BDD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D70BDDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _s8NewsFeed14FormatMetadataV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v27 = &v26 - v10;
  sub_1D5D3A7E0();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for FormatMetadata() + 28);
  v17 = *(v12 + 56);
  v29 = a1;
  sub_1D5D3A874(a1 + v16, v15);
  sub_1D5D3A874(a2 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  LODWORD(v12) = v18(v15, 1, v4);
  v19 = v18(&v15[v17], 1, v4);
  if (v12 == 1)
  {
    if (v19 == 1)
    {
      sub_1D725BCBC();
      sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v20 = sub_1D7261F5C();
    }

    else
    {
      sub_1D5BFC674(&v15[v17], sub_1D5B5C268);
      v20 = 0;
    }
  }

  else if (v19 == 1)
  {
    (*(v5 + 8))(v15, v4);
    v20 = 1;
  }

  else
  {
    v21 = *(v5 + 32);
    v22 = v27;
    v21(v27, v15, v4);
    v23 = v28;
    v21(v28, &v15[v17], v4);
    sub_1D70BE520(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v20 = sub_1D7261F5C();
    v24 = *(v5 + 8);
    v24(v23, v4);
    v24(v22, v4);
  }

  return v20 & 1;
}

unint64_t sub_1D70BE214()
{
  result = qword_1EC89A1F8;
  if (!qword_1EC89A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A1F8);
  }

  return result;
}

uint64_t sub_1D70BE268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73B8180 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73B81A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81E0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D70BE520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D70BE5B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*(a2 + 16))
  {
    v7 = sub_1D5B69D90(*a1, v6);
    if (v8)
    {
      v9 = (*(a2 + 56) + 40 * v7);
      v10 = v9[1];
      v12 = v9[2];
      v11 = v9[3];
      v13 = v9[4];
      *a3 = *v9;
      a3[1] = v10;
      a3[2] = v12;
      a3[3] = v11;
      a3[4] = v13;
    }
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  v16 = v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *v16 = v5;
    v16[1] = v6;
    v16[2] = v18;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v18 = sub_1D5B9A6D8(v17, 0);
  v20 = sub_1D5E2A8BC(&v19, v18 + 4, v17, a2);

  result = sub_1D5B87E38();
  if (v20 == v17)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed23FormatStateMachineInputO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v21[0] = *a1;
      v21[1] = v2;
      v22 = v5 & 1;
      v19[0] = v8;
      v19[1] = v7;
      v20 = v10 & 1;
      sub_1D618ECBC(v8, v7, v10, v9, 1);
      sub_1D618ECBC(v3, v2, v5, v4, 1);
      sub_1D618ECBC(v3, v2, v5, v4, 1);
      sub_1D618ECBC(v8, v7, v10, v9, 1);
      v12 = _s8NewsFeed29FormatStateMachineInlineInputV2eeoiySbAC_ACtFZ_0(v21, v19);
      sub_1D5E32940(v3, v2, v5, v4, 1);
      sub_1D5E32940(v8, v7, v10, v9, 1);
      sub_1D5E32940(v8, v7, v10, v9, 1);
      v13 = v3;
      v14 = v2;
      v15 = v5;
      v16 = v4;
      v17 = 1;
LABEL_7:
      sub_1D5E32940(v13, v14, v15, v16, v17);
      return v12 & 1;
    }
  }

  else if ((*(a2 + 32) & 1) == 0)
  {
    sub_1D618ECBC(*a2, *(a2 + 8), v10, v9, 0);
    sub_1D618ECBC(v3, v2, v5, v4, 0);
    sub_1D618ECBC(v3, v2, v5, v4, 0);
    sub_1D618ECBC(v8, v7, v10, v9, 0);
    v12 = sub_1D6F7F524(v3, v2, v5, v4, v8, v7, v10, v9);
    sub_1D5E32940(v3, v2, v5, v4, 0);
    sub_1D5E32940(v8, v7, v10, v9, 0);
    sub_1D5E32940(v8, v7, v10, v9, 0);
    v13 = v3;
    v14 = v2;
    v15 = v5;
    v16 = v4;
    v17 = 0;
    goto LABEL_7;
  }

  sub_1D618ECBC(*a1, v2, v5, v4, v6);
  sub_1D618ECBC(v8, v7, v10, v9, v11);
  sub_1D5E32940(v3, v2, v5, v4, v6);
  sub_1D5E32940(v8, v7, v10, v9, v11);
  v12 = 0;
  return v12 & 1;
}

unint64_t sub_1D70BEA1C(uint64_t a1)
{
  result = sub_1D70BEA44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70BEA44()
{
  result = qword_1EC89A200;
  if (!qword_1EC89A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A200);
  }

  return result;
}

unint64_t sub_1D70BEA98(void *a1)
{
  a1[1] = sub_1D6C17F4C();
  a1[2] = sub_1D6C181E0();
  result = sub_1D70BEAD0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70BEAD0()
{
  result = qword_1EC89A208;
  if (!qword_1EC89A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A208);
  }

  return result;
}

unint64_t sub_1D70BEB3C(uint64_t a1)
{
  result = sub_1D70BEB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70BEB64()
{
  result = qword_1EC89A210;
  if (!qword_1EC89A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A210);
  }

  return result;
}

unint64_t sub_1D70BEBB8(void *a1)
{
  a1[1] = sub_1D665E33C();
  a1[2] = sub_1D665E4B8();
  result = sub_1D70BEBF0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70BEBF0()
{
  result = qword_1EC89A218;
  if (!qword_1EC89A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A218);
  }

  return result;
}

unint64_t sub_1D70BEC84(uint64_t a1)
{
  sub_1D5E4CF90();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v7 + 16))(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1D70C3A44(&unk_1EDF17890, sub_1D5E4CF90);
  sub_1D726238C();
  v34 = v41;
  if (v41 >> 62)
  {
    goto LABEL_51;
  }

  v8 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = v42;
  if (v42 != v8)
  {
    v37 = v34 & 0xFFFFFFFFFFFFFF8;
    v38 = v34 & 0xC000000000000001;
    v10 = MEMORY[0x1E69E7CC0];
    v35 = v8;
    v36 = v34 + 32;
    while (1)
    {
      if (v38)
      {
        v12 = MEMORY[0x1DA6FB460](v9, v34);
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v9 >= *(v37 + 16))
        {
          goto LABEL_46;
        }

        v12 = *(v36 + 8 * v9);

        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_45;
        }
      }

      v42 = v13;
      v14 = *(v12 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources);

      v15 = v14 >> 62;
      v16 = v14 >> 62 ? sub_1D7263BFC() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v10 >> 62;
      if (v10 >> 62)
      {
        v32 = sub_1D7263BFC();
        v19 = v32 + v16;
        if (__OFADD__(v32, v16))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v8 = sub_1D7263BFC();
          goto LABEL_3;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_43;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_23:
      v10 = sub_1D7263DDC();
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v15)
      {
        v23 = sub_1D7263BFC();
        if (v23)
        {
LABEL_28:
          if (((v22 >> 1) - v21) < v16)
          {
            goto LABEL_48;
          }

          v43 = v16;
          v39 = v10;
          v24 = v20 + 8 * v21 + 32;
          if (v15)
          {
            if (v23 < 1)
            {
              goto LABEL_50;
            }

            sub_1D5B4DA90();
            sub_1D70C3A44(&qword_1EC89A280, sub_1D5B4DA90);
            for (i = 0; i != v23; ++i)
            {
              v26 = sub_1D6D876E0(v40, i, v14);
              v28 = *v27;

              (v26)(v40, 0);
              *(v24 + 8 * i) = v28;
            }
          }

          else
          {
            type metadata accessor for WebEmbedDataVisualizationURLDataSource();
            swift_arrayInitWithCopy();
          }

          v8 = v35;
          v10 = v39;
          if (v43 >= 1)
          {
            v29 = *(v20 + 16);
            v30 = __OFADD__(v29, v43);
            v31 = v29 + v43;
            if (v30)
            {
              goto LABEL_49;
            }

            *(v20 + 16) = v31;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      if (v16 > 0)
      {
        goto LABEL_47;
      }

LABEL_8:
      v9 = v42;
      if (v42 == v8)
      {
        goto LABEL_5;
      }
    }

    if (!v17)
    {
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1D7263BFC();
    goto LABEL_23;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_5:

  return v10;
}

uint64_t SportsBracketGroupDataVisualization.leagueTag.getter()
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v0 = *(v2 + 56);
  swift_unknownObjectRetain();

  return v0;
}

uint64_t SportsBracketGroupDataVisualization.championshipTag.getter()
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v0 = *(v2 + 64);
  swift_unknownObjectRetain();

  return v0;
}

uint64_t SportsBracketGroupDataVisualization.umcCanonicalId.getter()
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v0 = *(v5 + 64);
  swift_unknownObjectRetain();

  if (v0 && (v1 = [v0 asSports], swift_unknownObjectRelease(), v1) && (v2 = objc_msgSend(v1, sel_UMCCanonicalID), swift_unknownObjectRelease(), v2))
  {
    v3 = sub_1D726207C();
  }

  else
  {
    sub_1D725BE8C();
    v3 = *(v5 + 40);
  }

  return v3;
}

uint64_t SportsBracketGroupDataVisualization.configure(with:data:pool:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5E4CF90();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18[-v14];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  type metadata accessor for SportsBracketDataVisualization();
  sub_1D725BE7C();
  (*(v8 + 16))(v11, v15, v7);
  v16 = swift_allocObject();
  SportsBracketGroupDataVisualization.init(visualizations:)(v11);
  (*(v8 + 8))(v15, v7);
  return v16;
}

uint64_t SportsBracketGroupDataVisualization.__allocating_init(visualizations:)(char *a1)
{
  v2 = swift_allocObject();
  SportsBracketGroupDataVisualization.init(visualizations:)(a1);
  return v2;
}

uint64_t SportsBracketGroupDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v2 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v3 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v4 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  v5 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
  v6 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
  v7 = *(v9 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
  sub_1D5F8B638(v2, v3);

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return result;
}

uint64_t SportsBracketGroupDataVisualization.routeTag.getter()
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v0 = *(v4 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v1 = *(v4 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v2 = *(v4 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  sub_1D5F8B638(v0, v1);

  if (!v1 || (swift_unknownObjectRetain(), sub_1D5F8BBC8(v0, v1), !v2))
  {
    sub_1D725BE8C();
    v2 = *(v4 + 64);
    swift_unknownObjectRetain();

    if (!v2)
    {
      sub_1D725BE8C();
      v2 = *(v4 + 56);
      swift_unknownObjectRetain();
    }
  }

  return v2;
}

uint64_t SportsBracketGroupDataVisualization.leagueTags.getter()
{
  sub_1D5E4CF90();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v19 = MEMORY[0x1E69E7CC0];
  (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations, v2, v4);
  sub_1D70C3A44(&unk_1EDF17890, sub_1D5E4CF90);
  sub_1D726238C();
  v7 = v17;
  if (v17 >> 62)
  {
LABEL_20:
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v18;
    if (v18 == v8)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6FB460](v18, v7);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v18 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v7 + 32 + 8 * v18);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }
    }

    v18 = v12;
    v13 = *(v11 + 56);
    swift_unknownObjectRetain();

    if (v13)
    {
      MEMORY[0x1DA6F9CE0](v14);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v9 = v19;
    }
  }

  return v9;
}

uint64_t sub_1D70BF8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v4 = *a1;
  v5 = sub_1D72585BC();
  (*(*(v5 - 8) + 16))(a2, v7 + v4, v5);
}

uint64_t SportsBracketGroupDataVisualization.visualizations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  sub_1D5E4CF90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsBracketGroupDataVisualization.init(visualizations:)(char *a1)
{
  v2 = v1;
  v73[3] = *v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v86 = v4;
  v87 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v88 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E4CF90();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v78 = (v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v85 = v73 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v73 - v18;
  sub_1D70C3418();
  v21 = v20;
  v84 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  v28 = (v10 + 16);
  v27 = *(v10 + 16);
  v74 = a1;
  (v27)(v2 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations, a1, v9, v23);
  v82 = v26;
  v83 = v2;
  (v27)(v19, v2 + v26, v9);
  sub_1D725BE7C();
  v31 = *(v10 + 8);
  v29 = v10 + 8;
  v30 = v31;
  (v31)(v19, v9);
  sub_1D70C3524();
  v32 = sub_1D7261F3C();
  v34 = v33;
  (*(v84 + 8))(v25, v21);
  v35 = v83;
  v36 = (v83 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_identifier);
  *v36 = v32;
  v36[1] = v34;
  v37 = v85;
  (v27)(v85, v35 + v82, v9);
  v38 = sub_1D70BEC84(v37);
  v81 = v9;
  (v31)(v37, v9);
  v73[1] = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
  *(v83 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources) = v38;
  if (v38 >> 62)
  {
    goto LABEL_42;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v75 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v79 = v29;
  v80 = v30;
  v73[2] = v36;
  v76 = v27;
  v77 = v28;
  if (v39)
  {
    v91 = MEMORY[0x1E69E7CC0];

    sub_1D69971B4(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);

      (*(v29 + 8))(v83 + v82, v39);
LABEL_45:
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v41 = 0;
    v40 = v91;
    v42 = v86;
    v43 = (v87 + 16);
    v30 = (v87 + 32);
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1DA6FB460](v41, v38);
        (*v43)(v88, v44 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v42);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v43)(v88, *(v38 + 8 * v41 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v42);
      }

      v91 = v40;
      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        sub_1D69971B4(v45 > 1, v46 + 1, 1);
        v42 = v86;
        v40 = v91;
      }

      ++v41;
      v40[2] = v46 + 1;
      (*(v87 + 32))(v40 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v46, v88, v42);
    }

    while (v39 != v41);

    v29 = v79;
  }

  v47 = v82;
  v91 = v40;
  sub_1D6C95024();
  v49 = v48;
  v50 = sub_1D70C3A44(&qword_1EDF053F0, sub_1D6C95024);
  v51 = sub_1D70C3A44(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  v88 = v49;
  v84 = v51;
  v85 = v50;
  v52 = v75;
  v53 = sub_1D72623CC();
  v54 = v83;
  v55 = v81;
  if (v52)
  {

    v80(&v54[v47], v55);

    goto LABEL_45;
  }

  v56 = v53;

  v75 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls;
  *&v54[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls] = v56;
  v36 = v78;
  v76(v78, &v54[v47], v55);
  v57 = sub_1D70C0498(v36);
  v80(v36, v55);
  v58 = *(v57 + 2);
  if (v58)
  {
    v27 = 0;
    v38 = (v57 + 32);
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v27 >= *(v57 + 2))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v39 = sub_1D7263BFC();
        goto LABEL_3;
      }

      v59 = *(v38 + 8 * v27);
      if (v59 >> 61 == 2)
      {
        v60 = *(*((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
      }

      else
      {
        v91 = *(v38 + 8 * v27);

        v61 = sub_1D6F86D04();
        v90 = v59;
        v62 = sub_1D6F87060();
        v89 = v61;
        sub_1D6985118(v62);
        v91 = v89;
        v60 = sub_1D72623CC();
      }

      v36 = *(v60 + 16);
      v29 = v28[2];
      v30 = v36 + v29;
      if (__OFADD__(v29, v36))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= v28[3] >> 1)
      {
        if (*(v60 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v64 = v36 + v29;
        }

        else
        {
          v64 = v29;
        }

        v28 = sub_1D5D57E44(isUniquelyReferenced_nonNull_native, v64, 1, v28);
        if (*(v60 + 16))
        {
LABEL_31:
          if ((v28[3] >> 1) - v28[2] < v36)
          {
            goto LABEL_40;
          }

          swift_arrayInitWithCopy();

          if (v36)
          {
            v65 = v28[2];
            v66 = __OFADD__(v65, v36);
            v67 = v36 + v65;
            if (v66)
            {
              goto LABEL_41;
            }

            v28[2] = v67;
          }

          goto LABEL_17;
        }
      }

      if (v36)
      {
        goto LABEL_39;
      }

LABEL_17:
      if (v58 == ++v27)
      {
        goto LABEL_36;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v91 = v28;
  v68 = sub_1D72623CC();

  v69 = v83;
  *(v83 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls) = v68;
  v91 = *(v69 + v75);

  sub_1D6985118(v70);
  v71 = sub_1D72623CC();
  v80(v74, v81);

  *(v69 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls) = v71;
  return v69;
}

char *sub_1D70C0498(uint64_t a1)
{
  sub_1D5E4CF90();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v7 + 16))(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1D70C3A44(&unk_1EDF17890, sub_1D5E4CF90);
  sub_1D726238C();
  v31 = v38;
  if (v38 >> 62)
  {
    goto LABEL_49;
  }

  v8 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = v39;
  v10 = MEMORY[0x1E69E7CC0];
  if (v39 != v8)
  {
    v34 = v31 & 0xFFFFFFFFFFFFFF8;
    v35 = v31 & 0xC000000000000001;
    v32 = v8;
    v33 = v31 + 32;
    do
    {
      if (v35)
      {
        v12 = MEMORY[0x1DA6FB460](v9, v31);
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v8 = sub_1D7263BFC();
          goto LABEL_3;
        }

        if (v9 >= *(v34 + 16))
        {
          goto LABEL_43;
        }

        v12 = *(v33 + 8 * v9);

        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_42;
        }
      }

      v39 = v13;
      v14 = *(v12 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events);
      if (v14 >> 62)
      {
        v15 = sub_1D7263BFC();
        if (!v15)
        {
LABEL_27:

          v17 = MEMORY[0x1E69E7CC0];
          goto LABEL_28;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
      sub_1D6997184(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        goto LABEL_46;
      }

      v36 = v10;
      v16 = 0;
      v17 = v37;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1DA6FB460](v16, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        v37 = v17;
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6997184((v20 > 1), v21 + 1, 1);
          v17 = v37;
        }

        ++v16;
        *(v17 + 16) = v21 + 1;
        *(v17 + 8 * v21 + 32) = v19;
      }

      while (v15 != v16);

      v8 = v32;
      v10 = v36;
LABEL_28:
      v22 = *(v17 + 16);
      v23 = *(v10 + 2);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v24 <= *(v10 + 3) >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v23 <= v24)
        {
          v26 = v23 + v22;
        }

        else
        {
          v26 = v23;
        }

        v10 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v26, 1, v10);
        if (*(v17 + 16))
        {
LABEL_37:
          if ((*(v10 + 3) >> 1) - *(v10 + 2) < v22)
          {
            goto LABEL_47;
          }

          swift_arrayInitWithCopy();

          if (v22)
          {
            v27 = *(v10 + 2);
            v28 = __OFADD__(v27, v22);
            v29 = v27 + v22;
            if (v28)
            {
              goto LABEL_48;
            }

            *(v10 + 2) = v29;
          }

          goto LABEL_7;
        }
      }

      if (v22)
      {
        goto LABEL_45;
      }

LABEL_7:
      v9 = v39;
    }

    while (v39 != v8);
  }

  return v10;
}

uint64_t SportsBracketGroupDataVisualization.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_identifier);

  return v1;
}

uint64_t SportsBracketGroupDataVisualization.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v2 = *(v4 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata);
  sub_1D67A737C(v2);

  *a1 = v2;
  return result;
}

uint64_t sub_1D70C0930@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v86 = a4;
  v87 = a5;
  sub_1D70C3AA8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v73 - v10;
  v12 = sub_1D72585BC();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v75 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725895C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v88 = *(*a1 + 56);
  v85 = v20;
  v81 = *(v20 + 64);
  swift_beginAccess();
  v21 = a3[6];
  swift_beginAccess();
  v22 = a3[7];
  v89[2] = v86;
  v86 = v21;

  v23 = v84;
  v24 = sub_1D7195F4C(sub_1D70C3A8C, v89, v22);
  v84 = v23;

  swift_beginAccess();
  v26 = a3[4];
  v25 = a3[5];

  v82 = sub_1D6C2B5D8(v26, v25);

  sub_1D725894C();
  v80 = sub_1D725893C();
  v83 = v27;
  (*(v16 + 8))(v19, v15);
  swift_getObjectType();
  v79 = [a2 asSports];
  LOBYTE(v90[0]) = 3;
  v78 = sub_1D69229B4(a2, v24, v90);
  v28 = v76;

  v90[0] = MEMORY[0x1E69E7CC0];
  v91 = 3;
  sub_1D6924500(&v91, v11);
  v29 = v77;
  if ((*(v28 + 48))(v11, 1, v77) == 1)
  {
    sub_1D5E3E404(v11);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v81;
  }

  else
  {
    v32 = v28;
    v33 = *(v28 + 32);
    v34 = v75;
    v35 = v29;
    v33(v75, v11, v29);
    v36 = v34;
    v37 = sub_1D72583DC();
    v73 = v38;
    v74 = v37;
    v30 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v40 = *(v30 + 2);
    v39 = *(v30 + 3);
    if (v40 >= v39 >> 1)
    {
      v30 = sub_1D698CCE4((v39 > 1), v40 + 1, 1, v30);
    }

    v41 = v81;
    (*(v32 + 8))(v36, v35);
    *(v30 + 2) = v40 + 1;
    v42 = &v30[32 * v40];
    *(v42 + 4) = 0x5574656B63617262;
    *(v42 + 5) = 0xEA00000000006C72;
    v43 = v73;
    *(v42 + 6) = v74;
    *(v42 + 7) = v43;
    v90[0] = v30;
    v31 = v41;
  }

  v44 = [a2 asSports];
  if (v44)
  {
    v45 = [v44 UMCCanonicalID];
    if (!v45)
    {
      swift_unknownObjectRelease();
      if (!v88)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v46 = v45;
    v47 = sub_1D726207C();
    v49 = v48;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1D698CCE4(0, *(v30 + 2) + 1, 1, v30);
    }

    v51 = *(v30 + 2);
    v50 = *(v30 + 3);
    if (v51 >= v50 >> 1)
    {
      v30 = sub_1D698CCE4((v50 > 1), v51 + 1, 1, v30);
    }

    swift_unknownObjectRelease();
    *(v30 + 2) = v51 + 1;
    v52 = &v30[32 * v51];
    *(v52 + 4) = 0x7463656A627573;
    *(v52 + 5) = 0xE700000000000000;
    *(v52 + 6) = v47;
    *(v52 + 7) = v49;
    v90[0] = v30;
  }

  if (!v88)
  {
    goto LABEL_23;
  }

LABEL_14:
  v53 = [swift_unknownObjectRetain() UMCCanonicalID];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1D726207C();
    v57 = v56;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1D698CCE4(0, *(v30 + 2) + 1, 1, v30);
    }

    v59 = *(v30 + 2);
    v58 = *(v30 + 3);
    if (v59 >= v58 >> 1)
    {
      v30 = sub_1D698CCE4((v58 > 1), v59 + 1, 1, v30);
    }

    swift_unknownObjectRelease();
    *(v30 + 2) = v59 + 1;
    v60 = &v30[32 * v59];
    *(v60 + 4) = 0x65756761656CLL;
    *(v60 + 5) = 0xE600000000000000;
    *(v60 + 6) = v55;
    *(v60 + 7) = v57;
    v90[0] = v30;
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_23:
  if (v31)
  {
    v61 = [swift_unknownObjectRetain() UMCCanonicalID];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1D726207C();
      v65 = v64;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D698CCE4(0, *(v30 + 2) + 1, 1, v30);
      }

      v67 = *(v30 + 2);
      v66 = *(v30 + 3);
      if (v67 >= v66 >> 1)
      {
        v30 = sub_1D698CCE4((v66 > 1), v67 + 1, 1, v30);
      }

      swift_unknownObjectRelease();
      *(v30 + 2) = v67 + 1;
      v68 = &v30[32 * v67];
      strcpy(v68 + 32, "championship");
      v68[45] = 0;
      *(v68 + 23) = -5120;
      *(v68 + 6) = v63;
      *(v68 + 7) = v65;
      v90[0] = v30;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1D5B58150(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 0x756F724764656566;
  *(inited + 40) = 0xE900000000000070;
  *(inited + 48) = 0x64657461727563;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001D73CAA10;
  *(inited + 80) = 0x746C7561666564;
  *(inited + 88) = 0xE700000000000000;
  sub_1D6987B44(inited);
  sub_1D6987B44(v82);
  v70 = v90[0];
  v90[0] = v80;
  v90[1] = v83;
  v90[2] = v79;
  v90[3] = v86;
  v90[4] = v78;
  v90[5] = v70;
  v71 = SportsBracketDataVisualization.with(config:)(v90);

  swift_unknownObjectRelease();

  *v87 = v71;
  return result;
}

uint64_t sub_1D70C1120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D70C3AA8(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption() - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

uint64_t SportsBracketGroupDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsBracketGroupDataVisualization.init(from:)(a1);
  return v2;
}

uint64_t SportsBracketGroupDataVisualization.init(from:)(void *a1)
{
  v3 = *v1;
  v4 = sub_1D72585BC();
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v111 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C3418();
  v107 = v7;
  v104 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v103 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E4CF90();
  v106 = v10;
  v109 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v101 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v102 = v92 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v92 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v108 = v92 - v22;
  sub_1D70C3688(0, &unk_1EC89A220, MEMORY[0x1E69E6F48]);
  v24 = v23;
  v105 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v92 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C35B8();
  v28 = v110;
  sub_1D7264B0C();
  if (v28)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  v99 = v3;
  v100 = a1;
  v29 = v1;
  v30 = v109;
  sub_1D70C3734(&unk_1EC89A230, sub_1D5E4CF90, sub_1D70C360C);
  v31 = v108;
  v32 = v106;
  sub_1D726431C();
  v93 = v27;
  v94 = v24;
  v34 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  v35 = v29;
  (*(v30 + 32))(&v29[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations], v31, v32);
  v36 = v30 + 16;
  v97 = *(v30 + 16);
  v98 = v34;
  v97(v19, &v29[v34], v32);
  v37 = v103;
  sub_1D725BE7C();
  v40 = *(v30 + 8);
  v39 = v30 + 8;
  v38 = v40;
  (v40)(v19, v32);
  sub_1D70C3524();
  v41 = v107;
  v42 = sub_1D7261F3C();
  v43 = v37;
  v45 = v44;
  v104[1](v43, v41);
  v46 = &v35[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_identifier];
  *v46 = v42;
  v46[1] = v45;
  v92[1] = v46;
  v47 = v102;
  v97(v102, &v35[v98], v32);
  v48 = sub_1D70BEC84(v47);
  v103 = 0;
  v104 = v38;
  v109 = v39;
  (v38)(v47, v32);
  v102 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
  *&v35[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources] = v48;
  v49 = v113;
  if (v48 >> 62)
  {
    goto LABEL_45;
  }

  v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v51 = v111;
  v52 = MEMORY[0x1E69E7CC0];
  v95 = v36;
  v96 = v35;
  if (v50)
  {
    v116 = MEMORY[0x1E69E7CC0];

    sub_1D69971B4(0, v50 & ~(v50 >> 63), 0);
    v110 = v50;
    if (v50 < 0)
    {
      __break(1u);

      (*(v39 + 8))(&v35[v98], v52);
LABEL_48:
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v53 = 0;
    v52 = v116;
    v54 = v48;
    v48 &= 0xC000000000000001;
    v55 = v112;
    v56 = (v112 + 16);
    do
    {
      if (v48)
      {
        v57 = MEMORY[0x1DA6FB460](v53, v54);
        (*v56)(v51, v57 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v49);
        v55 = v112;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v56)(v51, *(v54 + 8 * v53 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v49);
      }

      v116 = v52;
      v59 = v52[2];
      v58 = v52[3];
      if (v59 >= v58 >> 1)
      {
        sub_1D69971B4(v58 > 1, v59 + 1, 1);
        v55 = v112;
        v52 = v116;
      }

      ++v53;
      v52[2] = v59 + 1;
      v60 = v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v59;
      v51 = v111;
      v49 = v113;
      (*(v55 + 32))(v60, v111, v113);
    }

    while (v110 != v53);
  }

  v116 = v52;
  sub_1D6C95024();
  v62 = v61;
  v63 = sub_1D70C3A44(&qword_1EDF053F0, sub_1D6C95024);
  v64 = sub_1D70C3A44(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  v107 = v62;
  v108 = v64;
  v110 = v63;
  v65 = v103;
  v66 = sub_1D72623CC();
  v67 = v104;
  v36 = v101;
  if (v65)
  {

    v67(&v96[v98], v106);

    goto LABEL_48;
  }

  v68 = v66;
  v39 = 0;

  v103 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls;
  v70 = v96;
  v69 = v97;
  *&v96[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls] = v68;
  v71 = v106;
  v69(v36, &v70[v98], v106);
  v72 = sub_1D70C0498(v36);
  v67(v36, v71);
  v35 = *(v72 + 2);
  if (v35)
  {
    v49 = 0;
    v111 = v72 + 32;
    v73 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v49 >= *(v72 + 2))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v50 = sub_1D7263BFC();
        goto LABEL_6;
      }

      v74 = *&v111[8 * v49];
      if (v74 >> 61 == 2)
      {
        v75 = *(*((v74 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
      }

      else
      {
        v116 = *&v111[8 * v49];

        v76 = sub_1D6F86D04();
        v115 = v74;
        v77 = sub_1D6F87060();
        v114 = v76;
        sub_1D6985118(v77);
        v116 = v114;
        v75 = sub_1D72623CC();
      }

      v78 = *(v75 + 16);
      v36 = v73[2];
      v48 = v36 + v78;
      if (__OFADD__(v36, v78))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v48 <= v73[3] >> 1)
      {
        if (*(v75 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v36 <= v48)
        {
          v80 = v36 + v78;
        }

        else
        {
          v80 = v36;
        }

        v73 = sub_1D5D57E44(isUniquelyReferenced_nonNull_native, v80, 1, v73);
        if (*(v75 + 16))
        {
LABEL_34:
          if ((v73[3] >> 1) - v73[2] < v78)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v78)
          {
            v81 = v73[2];
            v82 = __OFADD__(v81, v78);
            v83 = v81 + v78;
            if (v82)
            {
              goto LABEL_44;
            }

            v73[2] = v83;
          }

          goto LABEL_20;
        }
      }

      if (v78)
      {
        goto LABEL_42;
      }

LABEL_20:
      if (v35 == ++v49)
      {
        goto LABEL_39;
      }
    }
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v116 = v73;
  v84 = sub_1D72623CC();

  v85 = v96;
  v112 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls;
  *&v96[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls] = v84;
  v116 = *&v103[v85];

  sub_1D6985118(v86);
  v87 = sub_1D72623CC();
  v88 = v100;
  v89 = v94;
  v90 = v105;
  v91 = v87;

  (*(v90 + 8))(v93, v89);
  *&v85[OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls] = v91;
  __swift_destroy_boxed_opaque_existential_1(v88);
  return v85;
}

uint64_t SportsBracketGroupDataVisualization.encode(to:)(void *a1)
{
  sub_1D70C3688(0, &qword_1EC89A248, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C35B8();
  sub_1D7264B5C();
  sub_1D5E4CF90();
  sub_1D70C3734(&qword_1EC89A250, sub_1D5E4CF90, sub_1D70C36EC);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D70C21CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70C2250()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70C22AC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70C234C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70C23A4(uint64_t a1)
{
  v2 = sub_1D70C35B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70C23E0(uint64_t a1)
{
  v2 = sub_1D70C35B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsBracketGroupDataVisualization.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  sub_1D5E4CF90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SportsBracketGroupDataVisualization.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  sub_1D5E4CF90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D70C25C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsBracketGroupDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D70C2618(void *a1)
{
  sub_1D70C3688(0, &qword_1EC89A248, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C35B8();
  sub_1D7264B5C();
  sub_1D5E4CF90();
  sub_1D70C3734(&qword_1EC89A250, sub_1D5E4CF90, sub_1D70C36EC);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D70C27C4@<X0>(char **a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v111 = a3;
  v108 = a2;
  v138 = sub_1D72585BC();
  v145 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v4);
  v116 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C3AA8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v136 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v135 = &v106 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v106 - v15;
  v17 = *a1;
  *&v153 = 0x2074656B63617242;
  *(&v153 + 1) = 0xE800000000000000;
  MEMORY[0x1DA6F9910](*(v17 + 2), *(v17 + 3), v14);
  v109 = *(&v153 + 1);
  v110 = v153;
  sub_1D70C3AA8(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v19 = v18;
  sub_1D5EA74B8();
  v137 = v20;
  v21 = *(v20 - 8);
  v140 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v133 = *(v21 + 80);
  v134 = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7279960;
  v107 = v23;
  v132 = v22;
  v24 = (v23 + v22);
  v26 = *(v17 + 5);
  v165 = *(v17 + 6);
  v25 = v165;
  v27 = type metadata accessor for FormatInspectionItem(0);
  v28 = &v24[*(v27 + 24)];
  *v28 = v26;
  *(v28 + 1) = v25;
  v29 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = *(v29 - 8);
  v130 = *(v30 + 56);
  v131 = v29;
  v129 = v30 + 56;
  v130(v28, 0, 1, v29);
  *v24 = 0xD000000000000010;
  *(v24 + 1) = 0x80000001D73C4840;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v31 = &v24[*(v27 + 28)];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  v32 = *(v27 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v33(v24, 0, 1, v27);
  v35 = v145;
  v36 = v138;
  v127 = *(v145 + 16);
  v128 = v145 + 16;
  v127(v16, &v17[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl], v138);
  v125 = *(v35 + 56);
  v126 = v35 + 56;
  v125(v16, 0, 1, v36);

  v37 = v140;
  sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v16, &v24[v140]);
  v112 = v24;
  v139 = v27;
  v165 = v33;
  v146 = v34;
  v33(&v24[v37], 0, 1, v27);
  v106 = v17;
  v38 = *&v17[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources];
  if (v38 >> 62)
  {
    goto LABEL_19;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
    while (1)
    {
      v147 = MEMORY[0x1E69E7CC0];
      result = sub_1D6997EC0(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        break;
      }

      v41 = 0;
      v42 = v147;
      v124 = v38 & 0xC000000000000001;
      v43 = 2 * v140;
      v119 = (v145 + 48);
      v115 = (v145 + 32);
      v113 = v38 & 0xFFFFFFFFFFFFFF8;
      v114 = (v145 + 8);
      v118 = xmmword_1D7279970;
      v117 = xmmword_1D7287CC0;
      v122 = v38;
      v123 = 3 * v140;
      v120 = v39;
      v121 = 2 * v140;
      while (!__OFADD__(v41, 1))
      {
        v144 = v42;
        v145 = v41;
        v143 = v41 + 1;
        if (v124)
        {
          v44 = MEMORY[0x1DA6FB460]();
        }

        else
        {
          if (v41 >= *(v113 + 16))
          {
            goto LABEL_18;
          }

          v44 = *(v38 + 8 * v41 + 32);
        }

        v45 = v132;
        v46 = swift_allocObject();
        *(v46 + 16) = v118;
        v141 = v46;
        v47 = (v46 + v45);
        v49 = v44[2];
        v48 = v44[3];
        sub_1D5F8E840(v49, v48);
        sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v49, v48, v47);
        v50 = v139;
        v51 = v165;
        v165(v47, 0, 1, v139);
        v52 = v44[4];
        v53 = v44[5];

        v54 = v140;
        sub_1D711F844(7955787, 0xE300000000000000, v52, v53, &v47[v140]);
        v51(&v47[v54], 0, 1, v50);
        v55 = &v47[v43];
        v142 = v44;
        v56 = v135;
        v57 = v138;
        v58 = v127;
        v127(v135, v44 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v138);
        v125(v56, 0, 1, v57);
        v59 = v136;
        sub_1D5EB84C0(v56, v136);
        if ((*v119)(v59, 1, v57) == 1)
        {
          sub_1D5E3E404(v56);
          v130(&v55[*(v50 + 24)], 1, 1, v131);
          *v55 = v117;
          *(v55 + 2) = 0;
          *(v55 + 3) = 0;
          v60 = &v55[*(v50 + 28)];
          *v60 = 0;
          *(v60 + 1) = 0;
          v60[16] = -1;
        }

        else
        {
          v61 = v56;
          v62 = v116;
          v58(v116, v59, v57);
          sub_1D5E3E404(v61);
          v63 = v59;
          v64 = *(v50 + 24);
          (*v115)(&v55[v64], v62, v57);
          v65 = v131;
          swift_storeEnumTagMultiPayload();
          v130(&v55[v64], 0, 1, v65);
          *v55 = v117;
          *(v55 + 2) = 0;
          *(v55 + 3) = 0;
          v66 = &v55[*(v50 + 28)];
          *v66 = 0;
          *(v66 + 1) = 0;
          v66[16] = -1;
          (*v114)(v63, v57);
        }

        v165(v55, 0, 1, v50);
        sub_1D6795150(0, 0xE000000000000000, 0, 0, v141, v163);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(&v154 + 1) = &type metadata for FormatInspectionGroup;
        *&v155 = &off_1F518B2C0;
        v67 = swift_allocObject();
        *&v153 = v67;

        *(v67 + 48) = v164;
        v68 = v163[1];
        *(v67 + 16) = v163[0];
        *(v67 + 32) = v68;
        v147 = v144;
        v70 = *(v144 + 16);
        v69 = *(v144 + 24);
        v38 = v122;
        if (v70 >= v69 >> 1)
        {
          sub_1D6997EC0((v69 > 1), v70 + 1, 1);
        }

        v71 = *(&v154 + 1);
        v72 = v155;
        v73 = __swift_mutable_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
        v74 = MEMORY[0x1EEE9AC00](v73, v73);
        v76 = &v106 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v77 + 16))(v76, v74);
        sub_1D5BD0BE4(v70, v76, &v147, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(&v153);
        v42 = v147;
        v41 = v145 + 1;
        v43 = v121;
        v78 = v123;
        if (v143 == v120)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v39 = sub_1D7263BFC();
      if (!v39)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    v43 = 2 * v140;
    v78 = 3 * v140;
    v42 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v79 = sub_1D5F62BFC(v42);

    v80 = sub_1D7073500(v79);

    v81 = v112;
    sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v80, 0, 0, &v112[v43]);
    v82 = &v81[v43];
    v83 = v139;
    v84 = v165;
    v165(v82, 0, 1, v139);
    v85 = v106;
    v86 = *(v106 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events);

    sub_1D7131400(0x7365726F6353, 0xE600000000000000, v86, &v81[v78]);
    v84(&v81[v78], 0, 1, v83);
    v87 = (v85 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
    v88 = *(v85 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
    if (v88)
    {
      v89 = *v87;
    }

    else
    {
      v89 = 0;
    }

    v90 = &v112[4 * v140];
    sub_1D70C3AA8(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v92 = v108[7];
    v159 = v108[6];
    v160 = v92;
    v161 = v108[8];
    v162 = *(v108 + 18);
    v93 = v108[3];
    v155 = v108[2];
    v156 = v93;
    v94 = v108[5];
    v157 = v108[4];
    v158 = v94;
    v95 = v108[1];
    v153 = *v108;
    v154 = v95;
    v96 = v87[1];
    v97 = v87[2];
    v98 = v87[3];
    v99 = v87[4];
    v100 = v87[5];
    v147 = *v87;
    v148 = v96;
    v149 = v97;
    v150 = v98;
    v151 = v99;
    v152 = v100;
    sub_1D5F8B638(v147, v96);
    v101 = sub_1D6924F88(&v153, &v147);
    sub_1D5F8BBC8(v147, v148);
    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v101;
    v102 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    v103 = sub_1D7073500(v102);

    sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v103, v89, v88, v90);
    v165(v90, 0, 1, v139);
    sub_1D6795150(v110, v109, 0, 0, v107, &v153);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    v104 = v154;
    v105 = v111;
    *v111 = v153;
    v105[1] = v104;
    *(v105 + 4) = v155;
  }

  return result;
}

void sub_1D70C3418()
{
  if (!qword_1EDF3B898)
  {
    sub_1D5B58150(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D70C34BC(&qword_1EDF1AF28);
    v0 = sub_1D725BEAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B898);
    }
  }
}

uint64_t sub_1D70C34BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58150(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}