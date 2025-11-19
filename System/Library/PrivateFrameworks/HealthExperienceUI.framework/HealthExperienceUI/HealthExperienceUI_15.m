uint64_t sub_1BA0A1410(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = a4;
  *(v4 + 48) = v6;
  *(v4 + 56) = *(a2 + 1);
  *(v4 + 32) = a3;
  v41 = *(a1 + 16);
  if (!v41)
  {

    sub_1B9F0F1B8(a3);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_26:
    result = v39;
    *(v39 + 24) = v8;
    return result;
  }

  v40 = a1 + 32;

  sub_1B9F0F1B8(a3);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v9 = (v40 + 40 * v7);
  v42 = v7 + 1;
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  result = (*(v11 + 8))(v10, v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v43 = result + 32;
  while (1)
  {
    v16 = 0uLL;
    v17 = v15;
    v18 = 0uLL;
    v19 = 0uLL;
    if (v14 != v15)
    {
      if (v14 >= *(v13 + 16))
      {
        goto LABEL_29;
      }

      v17 = v14 + 1;
      *&v48[0] = v14;
      sub_1B9F0A534(v43 + 40 * v14, v48 + 8);
      v16 = v48[0];
      v18 = v48[1];
      v19 = v48[2];
    }

    v49[0] = v16;
    v49[1] = v18;
    v49[2] = v19;
    if (!v19)
    {

      v7 = v42;
      if (v42 == v41)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

    v44 = v16;
    sub_1B9F1134C((v49 + 8), v48);
    v20 = v8[2];
    v21 = v44;
    if (v44 >= v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1BA27FAD4(0, v20 + 1, 1, v8);
      }

      v23 = v8[2];
      v22 = v8[3];
      if (v23 >= v22 >> 1)
      {
        v8 = sub_1BA27FAD4((v22 > 1), v23 + 1, 1, v8);
      }

      v8[2] = v23 + 1;
      v8[v23 + 4] = MEMORY[0x1E69E7CC0];
    }

    sub_1B9F0A534(v48, v45);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      break;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v21 >= v8[2])
    {
      goto LABEL_28;
    }

    v24 = &v8[v21];
    v27 = v24[4];
    v25 = v24 + 4;
    v26 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1BA27FAAC(0, v26[2] + 1, 1, v26);
      *v25 = v26;
    }

    v30 = v26[2];
    v29 = v26[3];
    if (v30 >= v29 >> 1)
    {
      *v25 = sub_1BA27FAAC((v29 > 1), v30 + 1, 1, v26);
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
    v31 = v46;
    v32 = v47;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v34 = MEMORY[0x1EEE9AC00](v33);
    v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36, v34);
    sub_1B9F1C4F4(v30, v36, v25, v31, v32);
    result = __swift_destroy_boxed_opaque_existential_1(v45);
    v14 = v17;
  }

  result = sub_1BA2F6810(v8);
  v8 = result;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1BA0A1808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA0A186C()
{
  result = qword_1EDC69430[0];
  if (!qword_1EDC69430[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC69430);
  }

  return result;
}

uint64_t sub_1BA0A18D0(uint64_t a1)
{
  sub_1BA0A17D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MeProfilePicturePublisher.init(imageDiameter:scale:fetchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v9 = *MEMORY[0x1E698BB38];
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = sub_1B9F3607C;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = &off_1F38048C0;
  *(a2 + 48) = a1;
  *(a2 + 56) = v9;

  return v9;
}

uint64_t sub_1BA0A1A98(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

id sub_1BA0A1AD0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*(v0 + *((*v1 & *v0) + 0xA0)) object:0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for MeProfilePicturePublisher.Inner();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA0A1BDC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_1BA4A3A68();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *&a1[*((*v2 & *a1) + 0xA0)];
}

void sub_1BA0A1D78(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BA0A1DE8(a1, a2);
  }
}

void sub_1BA0A1DE8(void *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v33 = *(v5 + 0x58);
  sub_1BA4A3A48();
  swift_getWitnessTable();
  v6 = sub_1BA4A8508();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-v8];
  v10 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v31 = v11;
    v32 = v2;
    v14 = a2;
    sub_1BA4A3DD8();
    v15 = a2;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = a2;
      v35 = v30;
      *v18 = 136315138;
      v19 = a2;
      sub_1B9FED358();
      v20 = sub_1BA4A6808();
      v28 = v17;
      v22 = sub_1B9F0B82C(v20, v21, &v35);
      v29 = v10;
      v23 = v7;
      v24 = v22;

      *(v18 + 4) = v24;
      v7 = v23;
      _os_log_impl(&dword_1B9F07000, v16, v28, "Fetch profile picture error: %s", v18, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);

      (*(v31 + 8))(v13, v29);
    }

    else
    {

      (*(v31 + 8))(v13, v10);
    }

    v35 = 0;
    type metadata accessor for MeProfilePicturePublisher.Inner();
    swift_getWitnessTable();
    sub_1BA4A39D8();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (a1)
    {
      v26 = [a1 hk:*(v2 + *(v5 + 112)) resizedInterfaceImageWithSize:*(v2 + *(v5 + 112))];
    }

    else
    {
      v26 = 0;
    }

    v35 = v26;
    type metadata accessor for MeProfilePicturePublisher.Inner();
    swift_getWitnessTable();
    sub_1BA4A39D8();
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1BA0A2234(void *a1)
{
  v2 = sub_1BA4A1018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  v6 = a1;
  sub_1BA0A2230();

  return (*(v3 + 8))(v5, v2);
}

void sub_1BA0A231C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)) object:0];
}

void (*sub_1BA0A23EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BA0A1A1C();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA0A245C()
{
  type metadata accessor for MeProfilePicturePublisher.Inner();

  return sub_1BA4A39D8();
}

uint64_t sub_1BA0A24BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MeProfilePicturePublisher.Inner();

  return MEMORY[0x1EEE0EB78](a1, v5, a3);
}

void sub_1BA0A2590(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1BA0A2650;
    v4[3] = &block_descriptor_11_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 profilePictureForAccountOwnerWithCompletion_];
  _Block_release(v3);
}

void sub_1BA0A2650(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BA0A26DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BA0A2724(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BA0A27C8()
{
  result = sub_1B9F18214();
  v1 = result;
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_45:

    *(v27 + 24) = v5;
  }

  v4 = 0;
  v31 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v28 = *(result + 16);
  v29 = result;
  while (v4 < *(v1 + 16))
  {
    v6 = v5;
    v7 = *(v31 + 48 * v4 + 16);
    v38 = v3;
    v8 = *(v7 + 16);
    v33 = v5;
    if (v8)
    {
      v9 = v7 + 32;

      swift_bridgeObjectRetain_n();

      v10 = v3;
      do
      {
        sub_1B9F0A534(v9, v37);
        sub_1B9F25598(v37, v35);
        sub_1B9F32244();
        sub_1BA4A27B8();
        if ((swift_dynamicCast() & 1) != 0 && v36)
        {
          MEMORY[0x1BFAF1510]();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
            v6 = v33;
          }

          sub_1BA4A6BB8();
          v10 = v38;
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    else
    {

      v10 = v3;
    }

    if (v10 >> 62)
    {
      v11 = sub_1BA4A7CC8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_1BA4A7CC8();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v11;
    v13 = __OFADD__(result, v11);
    v14 = result + v11;
    if (v13)
    {
      goto LABEL_47;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        v5 = v6;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_26:
      sub_1BA4A7CC8();
      goto LABEL_27;
    }

    if (v12)
    {
      goto LABEL_26;
    }

LABEL_27:
    result = sub_1BA4A7E38();
    v5 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_28:
    v16 = *(v15 + 16);
    v17 = (*(v15 + 24) >> 1) - v16;
    v34 = v15;
    if (v10 >> 62)
    {
      v19 = sub_1BA4A7CC8();
      if (!v19)
      {
LABEL_3:

        result = v33;
        if (v32 > 0)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }

      v20 = v19;
      result = sub_1BA4A7CC8();
      if (v17 < result)
      {
        goto LABEL_50;
      }

      if (v20 < 1)
      {
        goto LABEL_52;
      }

      v18 = result;
      v30 = v4;
      sub_1BA0A3668();
      sub_1B9F253A0(&qword_1EBBEB380, sub_1BA0A3668);
      for (i = 0; i != v20; ++i)
      {
        v22 = sub_1BA0CA898(v37, i, v10);
        v24 = *v23;
        (v22)(v37, 0);
        *(v34 + 8 * v16 + 32 + 8 * i) = v24;
      }

      v2 = v28;
      v1 = v29;
      v3 = MEMORY[0x1E69E7CC0];
      v4 = v30;
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_3;
      }

      if (v17 < v18)
      {
        goto LABEL_51;
      }

      sub_1BA4A27B8();
      swift_arrayInitWithCopy();
    }

    result = v33;
    if (v18 < v32)
    {
      goto LABEL_48;
    }

    if (v18 > 0)
    {
      v25 = *(v34 + 16);
      v13 = __OFADD__(v25, v18);
      v26 = v25 + v18;
      if (v13)
      {
        goto LABEL_49;
      }

      *(v34 + 16) = v26;
    }

LABEL_4:
    ++v4;

    if (v4 == v2)
    {
      goto LABEL_45;
    }
  }

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
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1BA0A2C48()
{

  return swift_deallocClassInstance();
}

uint64_t MappedDataSourceWithFeedItemsAndContext.__allocating_init(_:context:predicate:managedContext:allowEmptySections:mapBlock:)(uint64_t a1, uint64_t (*a2)(void, void), void *a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_allocObject();
  v16 = sub_1BA0A32F4(a1, a2, a3, a4, a5, a6, a7);
  (*(*(*(v8 + 584) - 8) + 8))(a2);
  return v16;
}

uint64_t MappedDataSourceWithFeedItemsAndContext.init(_:context:predicate:managedContext:allowEmptySections:mapBlock:)(uint64_t a1, uint64_t (*a2)(void, void), void *a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v10 = sub_1BA0A32F4(a1, a2, a3, a4, a5, a6, a7);
  (*(*(*(v9 + 584) - 8) + 8))(a2);
  return v10;
}

void sub_1BA0A2DC4(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a4;
  sub_1BA370300(a1, a2, a3, a4);
  v8 = (*(*(v4 + *(*v4 + 616)) + 16) + qword_1EDC84AD0);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_1BA4A8338() & 1) != 0)
  {
    sub_1BA0A27C8();
    type metadata accessor for MappedDataSourceWithFeedItemsAndContext();

    SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(v5 & 1);
  }
}

uint64_t sub_1BA0A2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA0A2DC4(v11, v13, v10, a5);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BA0A3078()
{
}

id *MappedDataSourceWithFeedItemsAndContext.deinit()
{
  v0 = MappedDataSourceWithContext.deinit();

  return v0;
}

uint64_t MappedDataSourceWithFeedItemsAndContext.__deallocating_deinit()
{
  MappedDataSourceWithFeedItemsAndContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0A31C4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  sub_1BA4A27B8();
  v4 = sub_1BA4A26C8();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5470;
  sub_1BA0A361C();
  swift_getKeyPath();
  *(v5 + 32) = sub_1BA4A71B8();
  v6 = sub_1BA4A6AE8();

  [v4 setSortDescriptors_];

  v7 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v4 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v9 = objc_allocWithZone(v8);
  v10 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);

  *(v2 + 16) = v10;
  return v2;
}

uint64_t sub_1BA0A32F4(uint64_t a1, uint64_t (*a2)(void, void), void *a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = *v7;
  *(v7 + *(v12 + 600)) = MEMORY[0x1E69E7CC0];
  v14 = (v7 + *(*v7 + 608));
  *v14 = a6;
  v14[1] = a7;
  type metadata accessor for FetchedResultsContext();
  swift_allocObject();

  v15 = sub_1BA0A31C4(a4);
  sub_1BA0A27C8();
  *(v7 + *(*v7 + 616)) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = *(v13 + 576);
  *(v16 + 32) = *(v12 + 592);
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = v15;
  v25[0] = sub_1BA0A36C0;
  v25[1] = v16;
  v26 = 0;
  swift_retain_n();

  v17 = swift_unknownObjectRetain();
  v18 = sub_1BA371638(v17, a2, a5, v25);
  swift_unknownObjectRelease();
  v19 = *(*(v18 + *(*v18 + 616)) + 16);
  v20 = qword_1EBBEA528;
  swift_beginAccess();
  v21 = *(v19 + v20);

  [v21 registerObserver_];

  swift_unknownObjectRelease();
  return v18;
}

unint64_t sub_1BA0A361C()
{
  result = qword_1EDC6E3E0;
  if (!qword_1EDC6E3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E3E0);
  }

  return result;
}

void sub_1BA0A3668()
{
  if (!qword_1EBBEA8F0)
  {
    sub_1BA4A27B8();
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA8F0);
    }
  }
}

uint64_t sub_1BA0A36C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(*(v2 + 56) + 24);

  v7 = v5(a1, a2, v6);

  return v7;
}

uint64_t sub_1BA0A3758(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0A4064();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA0A37C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA0A3820(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0A4064();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA0A388C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0A38F0;
}

void sub_1BA0A38F0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0A4064();
  }
}

id SelectableCellStyleFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SelectableCellStyleFooterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_contentView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = objc_opt_self();
  v13 = [v12 secondarySystemBackgroundColor];
  [v11 setBackgroundColor_];

  v14 = *MEMORY[0x1E69796E8];
  v15 = [v11 layer];
  [v15 setCornerCurve_];

  v16 = [v11 layer];
  [v16 setCornerRadius_];

  v17 = [v11 layer];
  [v17 setMaskedCorners_];

  [v11 setClipsToBounds_];
  *&v4[v10] = v11;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v12 linkColor];
  [v19 setTextColor_];

  *&v4[v18] = v19;
  v26.receiver = v4;
  v26.super_class = type metadata accessor for SelectableCellStyleFooterView();
  v21 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_contentView];
  v23 = v21;
  [v23 addSubview_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v23 action:sel_didSelect];
  [v22 addGestureRecognizer_];

  [v22 addSubview_];
  sub_1BA0A3C80();

  return v23;
}

void sub_1BA0A3C80()
{
  v28 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4BBC90;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_titleLabel];
  v3 = [v2 leadingAnchor];
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_contentView];
  v5 = [v4 &selRef__totalDistance + 1];
  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];

  *(v1 + 32) = v6;
  v7 = [v2 topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:12.0];

  *(v1 + 40) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:16.0];

  *(v1 + 48) = v12;
  v13 = [v4 bottomAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:12.0];

  *(v1 + 56) = v15;
  v16 = [v4 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 64) = v18;
  v19 = [v4 leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 72) = v21;
  v22 = [v0 trailingAnchor];
  v23 = [v4 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v1 + 80) = v24;
  v25 = [v0 bottomAnchor];
  v26 = [v4 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:20.0];

  *(v1 + 88) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v29 = sub_1BA4A6AE8();

  [v28 activateConstraints_];
}

void sub_1BA0A4064()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v6], v24);
  if (v24[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_titleLabel];
      v8 = sub_1BA4A6758();
      [v7 setText_];

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v24);
  }

  sub_1BA4A3D88();
  v9 = v1;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v2;
    v14 = v13;
    v24[0] = v13;
    *v12 = 136315394;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_1B9F68124(&v1[v6], v23);
    sub_1B9F7B6F8();
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Expected SelectableCellStyleFooterItem; got %s instead", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA0A4348()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v6 = v1;
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v22[0] = [v6 viewController];
    sub_1BA096EEC();
    v14 = sub_1BA4A6808();
    v16 = sub_1B9F0B82C(v14, v15, v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] User selected view; calling didSelect function with parent view controller %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  sub_1B9F68124(v6 + v17, v22);
  if (!v22[3])
  {
    return sub_1B9F7B644(v22);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v21[4];

    v20 = [v6 viewController];
    v19();
  }

  return result;
}

id SelectableCellStyleFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectableCellStyleFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0A46F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t sub_1BA0A4750(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1BA0A4064();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA0A47C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA0A38F0;
}

uint64_t SelectableCellStyleFooterItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SelectableCellStyleFooterItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t SelectableCellStyleFooterItem.uniqueIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  MEMORY[0x1BFAF1350](v1, v2);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_1BA0A4A54();
  v6 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v6);

  return 0xD00000000000001ELL;
}

uint64_t sub_1BA0A49B8(uint64_t a1)
{
  v2 = sub_1BA0A4E70();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

unint64_t sub_1BA0A4A54()
{
  result = qword_1EBBEB3A0;
  if (!qword_1EBBEB3A0)
  {
    sub_1BA096EEC();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EBBEB3A0);
  }

  return result;
}

unint64_t sub_1BA0A4AB8()
{
  result = qword_1EBBEB3A8;
  if (!qword_1EBBEB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB3A8);
  }

  return result;
}

uint64_t sub_1BA0A4BC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BA0A4C08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1BA0A4C64()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_contentView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [v3 layer];
  [v7 setCornerCurve_];

  v8 = [v3 layer];
  [v8 setCornerRadius_];

  v9 = [v3 layer];
  [v9 setMaskedCorners_];

  [v3 setClipsToBounds_];
  *(v0 + v2) = v3;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v4 linkColor];
  [v11 setTextColor_];

  *(v0 + v10) = v11;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA0A4E70()
{
  result = qword_1EBBEB3B0;
  if (!qword_1EBBEB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB3B0);
  }

  return result;
}

uint64_t sub_1BA0A4EC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA0A540C(a1, a2);
  if (v2 > 2)
  {
    if (v2 - 4 >= 2)
    {
      if (qword_1EBBE8310 != -1)
      {
        swift_once();
      }

      sub_1B9F47E68(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BA4B5480;
      if (qword_1EBBE82E8 != -1)
      {
        swift_once();
      }

      v13 = qword_1EBBEB3D0;
      v10 = sub_1BA4A16B8();
      v11 = [v13 stringFromDate_];
    }

    else
    {
      if (qword_1EBBE8318 != -1)
      {
        swift_once();
      }

      sub_1B9F47E68(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BA4B5480;
      if (qword_1EBBE82E0 != -1)
      {
        swift_once();
      }

      v9 = qword_1EBBEB3C8;
      v10 = sub_1BA4A16B8();
      v11 = [v9 stringFromDate_];
    }

    goto LABEL_28;
  }

  if (!v2)
  {
    if (qword_1EBBE82F8 != -1)
    {
      swift_once();
    }

    sub_1B9F47E68(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE82D0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBBEB3B8;
    v10 = sub_1BA4A16B8();
    v11 = [v12 stringFromDate_];
    goto LABEL_28;
  }

  if (v2 != 1)
  {
    if (qword_1EBBE8308 != -1)
    {
      swift_once();
    }

    sub_1B9F47E68(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE82D8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EBBEB3C0;
    v10 = sub_1BA4A16B8();
    v11 = [v14 stringFromDate_];
LABEL_28:
    v15 = v11;

    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;

    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1B9F1BE20();
    *(v8 + 32) = v16;
    *(v8 + 40) = v18;
    v7 = sub_1BA4A6768();
    goto LABEL_29;
  }

  if (qword_1EBBE8300 != -1)
  {
    swift_once();
  }

  sub_1B9F47E68(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA0A59A4();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B9F1BE20();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1BA4A6768();
LABEL_29:

  return v7;
}

uint64_t sub_1BA0A540C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A1898();
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47E68(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = sub_1BA4A1728();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v53 = v2;
  if (sub_1BA4A1858())
  {
    return 0;
  }

  v47 = a1;
  v23 = *MEMORY[0x1E6969A48];
  v24 = v54;
  v43 = *(v54 + 104);
  v44 = v54 + 104;
  v43(v7, v23, v5);
  v46 = a2;
  sub_1BA4A1848();
  v25 = *(v24 + 8);
  v54 = v24 + 8;
  v40 = v7;
  v45 = v5;
  v42 = v25;
  v25(v7, v5);
  v26 = v51;
  v41 = *(v51 + 48);
  if (v41(v14, 1, v15) == 1)
  {
    sub_1BA05DB44(v14);
    v27 = v52;
  }

  else
  {
    (*(v26 + 32))(v21, v14, v15);
    v28 = sub_1BA4A1858();
    (*(v26 + 8))(v21, v15);
    v27 = v52;
    if (v28)
    {
      return 1;
    }
  }

  v29 = v40;
  v30 = v45;
  v43(v40, *MEMORY[0x1E6969A10], v45);
  sub_1BA4A1848();
  v42(v29, v30);
  if (v41(v27, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  v31 = v26;
  v32 = *(v26 + 32);
  v33 = v50;
  v32(v50, v27, v15);
  if (sub_1BA4A16D8())
  {
    (*(v31 + 8))(v33, v15);
    return 2;
  }

  else
  {
    v34 = v31;
    v35 = v45;
    v43(v29, *MEMORY[0x1E6969A68], v45);
    v27 = v49;
    sub_1BA4A1848();
    v42(v29, v35);
    if (v41(v27, 1, v15) == 1)
    {
      (*(v34 + 8))(v50, v15);
LABEL_8:
      sub_1BA05DB44(v27);
      return 5;
    }

    v36 = v48;
    v32(v48, v27, v15);
    v37 = sub_1BA4A16D8();
    v38 = *(v34 + 8);
    v38(v36, v15);
    v38(v50, v15);
    if (v37)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA0A59A4()
{
  v0 = sub_1BA4A1898();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47E68(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A48], v0, v12);
  sub_1BA4A1718();
  sub_1BA4A1848();
  v15 = *(v8 + 8);
  v15(v10, v7);
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA05DB44(v6);
    return 0;
  }

  else
  {
    v17 = v15;
    (*(v8 + 32))(v14, v6, v7);
    if (qword_1EBBE82F0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBBEB3D8;
    v19 = sub_1BA4A16B8();
    v20 = [v18 stringFromDate_];

    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17(v14, v7);
    return v21;
  }
}

uint64_t sub_1BA0A5CE0(uint64_t a1)
{
  sub_1B9F47E68(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1B9FF168C(a1, v16);
  if (v17)
  {
    v12 = swift_dynamicCast();
    (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_1BA4A1718();
      v13 = sub_1BA0A4EC4(v11, v8);
      v14 = *(v6 + 8);
      v14(v8, v5);
      v14(v11, v5);
      return v13;
    }
  }

  else
  {
    sub_1B9F23224(v16);
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_1BA05DB44(v4);
  return 0;
}

id sub_1BA0A60E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LastSyncedDateFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LastSyncedDateFormatter()
{
  result = qword_1EBBEB438;
  if (!qword_1EBBEB438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0A61DC()
{
  result = sub_1BA4A18A8();
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

id sub_1BA0A6280()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1BA0A67F0(1162167621, 0xE400000000000000, 1162167621, 0xE400000000000000);
  v1 = sub_1BA4A6758();

  [v0 setDateFormat_];

  result = [v0 setFormattingContext_];
  qword_1EBBEB3C0 = v0;
  return result;
}

id sub_1BA0A6338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v7 setDateStyle_];
  [v7 setTimeStyle_];
  result = [v7 setFormattingContext_];
  *a4 = v7;
  return result;
}

id sub_1BA0A63C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1BA0A67F0(0x644D4D4D4DLL, 0xE500000000000000, 0x64204D4D4D4DLL, 0xE600000000000000);
  v1 = sub_1BA4A6758();

  [v0 setDateFormat_];

  result = [v0 setFormattingContext_];
  qword_1EBBEB3D0 = v0;
  return result;
}

id sub_1BA0A646C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setDoesRelativeDateFormatting_];
  result = [v0 setFormattingContext_];
  qword_1EBBEB3D8 = v0;
  return result;
}

uint64_t sub_1BA0A64F8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEB3E0 = result;
  *algn_1EBBEB3E8 = v1;
  return result;
}

uint64_t sub_1BA0A6590()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEB3F0 = result;
  *algn_1EBBEB3F8 = v1;
  return result;
}

uint64_t sub_1BA0A6628()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEB400 = result;
  *algn_1EBBEB408 = v1;
  return result;
}

uint64_t sub_1BA0A66C0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEB410 = result;
  *algn_1EBBEB418 = v1;
  return result;
}

uint64_t sub_1BA0A6758()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEB420 = result;
  *algn_1EBBEB428 = v1;
  return result;
}

uint64_t sub_1BA0A67F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = a3;
  v7 = sub_1BA4A3EA8();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A17C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = sub_1BA4A6758();
  sub_1BA4A17B8();
  v15 = sub_1BA4A17A8();
  (*(v10 + 8))(v12, v9);
  v16 = [v13 dateFormatFromTemplate:v14 options:0 locale:v15];

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v18 = v24;
    v17 = v25;
    sub_1BA4A3E28();

    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B9F0B82C(a1, a2, &v27);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_1B9F0B82C(v17, a4, &v27);
      _os_log_impl(&dword_1B9F07000, v19, v20, "Failed to create a localized date format for template '%{public}s', falling back to '%{public}s'", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v18 + 8))(v26, v7);
  }

  return v17;
}

uint64_t DataTypeDetailConfiguration.MeasureChartComponent.makeDataSource(context:)()
{
  sub_1B9F1B310(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v0 + 64) = sub_1BA058D50();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_1BA0A6CF8(0xD00000000000001BLL, 0x80000001BA4E7CB0, boxed_opaque_existential_1);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v3 = Array<A>.identifierToIndexDict()(v2);

  sub_1B9FF6758();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = v0;
  *(v4 + 56) = v3;
  strcpy((v4 + 64), "MeasureChart");
  *(v4 + 77) = 0;
  *(v4 + 78) = -5120;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v5 = sub_1B9F348D8(v4, 0x436572757361654DLL, 0xEC00000074726168);

  sub_1BA0A71F0();
  v6 = swift_allocObject();
  v8 = v5[5];
  v7 = v5[6];
  *(v6 + 16) = v5;
  *(v6 + 24) = v8;
  *(v6 + 32) = v7;
  *(v6 + 40) = 0;
  *(v6 + 48) = sub_1BA0A6FD8;
  *(v6 + 56) = 0;

  return v6;
}

uint64_t sub_1BA0A6CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A41C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43A8();

  sub_1BA4A43B8();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC100], v6);
  v14 = sub_1BA4A4238();
  sub_1BA4A4208();
  v14(&v22, 0);
  v15 = MEMORY[0x1E69DC110];
  *(a3 + 96) = v10;
  *(a3 + 104) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 72));
  (*(v11 + 16))(boxed_opaque_existential_1, v13, v10);
  v17 = type metadata accessor for ContentConfigurationItem();
  v18 = v17[10];
  v19 = sub_1BA4A4168();
  (*(*(v19 - 8) + 56))(a3 + v18, 1, 1, v19);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1B9F2F610(&v22);
  *(&v23 + 1) = &type metadata for BasicCellSelectionHandler;
  v24 = &off_1F381BCC8;
  *&v22 = nullsub_1;
  *(&v22 + 1) = 0;
  LOBYTE(v23) = 2;
  (*(v11 + 8))(v13, v10);
  sub_1B9F2F698(&v22, a3 + 16);
  *(a3 + v17[12]) = 0;
  *(a3 + v17[13]) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 112) = 0;
  *(a3 + 120) = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v20 = (a3 + v17[11]);
  *v20 = 0;
  v20[1] = 0;

  return sub_1B9F2F610(&v22);
}

id sub_1BA0A6FD8()
{
  v0 = objc_opt_self();
  v1 = [v0 estimatedDimension_];
  v2 = [v0 fractionalWidthDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:v1];

  v4 = [objc_opt_self() itemWithLayoutSize_];
  v5 = [v4 layoutSize];
  v6 = [objc_opt_self() horizontalGroupWithLayoutSize:v5 repeatingSubitem:v4 count:1];

  v7 = [objc_opt_self() sectionWithGroup_];
  sub_1BA4A75C8();
  [v7 setContentInsets_];
  sub_1BA4A65A8();
  [v7 setInterGroupSpacing_];
  [v7 setContentInsetsReference_];
  [v7 setSupplementaryContentInsetsReference_];
  [v7 setInterGroupSpacing_];
  [v7 setContentInsetsReference_];

  return v7;
}

void sub_1BA0A71F0()
{
  if (!qword_1EBBEAB10)
  {
    type metadata accessor for ArrayDataSource();
    v0 = type metadata accessor for DataSourceWithLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAB10);
    }
  }
}

void sub_1BA0A7300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for ThresholdSpecifierViewControllerCell();
  v8 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {

    if (a4)
    {
      v9 = a4;

      v10 = sub_1BA4A6758();
      v11 = [v9 propertyForKey_];

      if (v11)
      {
        sub_1BA4A7BF8();
        swift_unknownObjectRelease();
        sub_1B9F23224(v14);
        v12 = [v8 detailTextLabel];
        if (v12)
        {
          v13 = v12;
          [v12 setNumberOfLines_];
        }

        [v8 setAccessoryView_];
      }

      else
      {

        memset(v14, 0, sizeof(v14));
        sub_1B9F23224(v14);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_1BA0A7560(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ThresholdSpecifierViewControllerCell();
  objc_msgSendSuper2(&v15, sel_refreshCellContentsWithSpecifier_, a1);
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = sub_1BA4A6758();
  v4 = [a1 propertyForKey_];

  if (v4)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v5 = sub_1BA4A6758();

  [v1 setTitle_];

  v6 = sub_1BA4A6758();
  v7 = [a1 propertyForKey_];

  if (v7)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = [v1 detailTextLabel];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1BA4A6758();

        [v9 setText_];
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_14:
    sub_1B9F23224(&v13);
  }
}

id sub_1BA0A7808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThresholdSpecifierViewControllerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *SnapshotDataSource.withSectionItemLimit(_:)(uint64_t a1)
{
  type metadata accessor for DataSourceWithSectionItemLimit();
  v2 = swift_unknownObjectRetain();
  v3 = sub_1BA2A249C(v2, a1);
  swift_unknownObjectRelease();
  return v3;
}

void *SnapshotDataSource.withAdaptiveSectionItemLimit(limits:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DataSourceWithAdaptiveSectionItemLimit();
  swift_unknownObjectRetain();

  v4 = sub_1BA05A1B0(v2, a1, 0x7FFFFFFFFFFFFFFFLL);
  swift_unknownObjectRelease();
  return v4;
}

HealthExperienceUI::SourcesType_optional __swiftcall SourcesType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SourcesType.rawValue.getter()
{
  v1 = 0x6C6174736E696E75;
  if (*v0 != 1)
  {
    v1 = 0x73656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_1BA0A79E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C6174736E696E75;
  v4 = 0xEF7370704164656CLL;
  if (v2 != 1)
  {
    v3 = 0x73656369766564;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1936748641;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6C6174736E696E75;
  v8 = 0xEF7370704164656CLL;
  if (*a2 != 1)
  {
    v7 = 0x73656369766564;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1936748641;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA0A7AFC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA0A7BA4()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA0A7C38()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA0A7CE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF7370704164656CLL;
  v5 = 0x6C6174736E696E75;
  if (v2 != 1)
  {
    v5 = 0x73656369766564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1936748641;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id SourcesViewController.init(sourceType:profileName:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_sourceType] = v13;
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName];
  *v14 = a2;
  v14[1] = a3;
  sub_1BA4A3D88();
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v15, v16))
  {
    v30 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136446466;
    v33 = ObjectType;
    swift_getMetatypeMetadata();
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = 0xEF7370704164656CLL;
    v23 = 0x6C6174736E696E75;
    if (v13 != 1)
    {
      v23 = 0x73656369766564;
      v22 = 0xE700000000000000;
    }

    if (v13)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1936748641;
    }

    if (v13)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    v26 = sub_1B9F0B82C(v24, v25, &v31);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s] initializing vc of type %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v27 = type metadata accessor for SourcesViewController();
  v32.receiver = v4;
  v32.super_class = v27;
  return objc_msgSendSuper2(&v32, sel_initWithCollectionViewLayout_, 0);
}

id SourcesViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA0A8140()
{
  v1 = type metadata accessor for SourcesViewController();
  v11[3] = v1;
  v11[4] = &protocol witness table for SourcesViewController;
  v11[0] = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  v3 = v0;
  sub_1B9F10C48(v11, v0 + v2);
  swift_endAccess();
  v10.receiver = v3;
  v10.super_class = v1;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_1BA0A87D4();
  v4 = sub_1BA4A6758();

  [v3 setTitle_];

  v5 = [v3 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemGroupedBackgroundColor];
    [v6 setBackgroundColor_];

    v8 = [v3 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA0A82E8()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_1B9FF5BD0();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  sub_1B9FF5C04();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v8, v9);

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  sub_1B9FF5C38();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  sub_1B9FF5C6C();

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = v14;
  sub_1B9FF5CA0();
}

void *sub_1BA0A8440()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = sub_1B9F23FB0();
    type metadata accessor for NonAnimatingDiffableCollectionViewAdaptor();
    v4 = swift_allocObject();
    v5 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI41NonAnimatingDiffableCollectionViewAdaptor_shouldAnimateDiffableCollectionViewAdaptorKey);
    *v5 = 0xD000000000000036;
    v5[1] = 0x80000001BA4E7DE0;

    return sub_1BA0A96E8(v2, v3, 1, sub_1BA344204, 0, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0A8500()
{
  swift_getObjectType();
  v1 = UIViewController.resolvedHealthStore.getter();
  if (v1)
  {
    v2 = v1;
    if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_sourceType) >= 2u)
    {
      v16[3] = &type metadata for HealthStoreDeviceProvider;
      v16[4] = &off_1F38030B0;
      v16[0] = v1;
      type metadata accessor for DeviceSourcesDataSource();
      v4 = swift_allocObject();
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for HealthStoreDeviceProvider);
      v6 = MEMORY[0x1EEE9AC00](v5);
      v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      sub_1BA06D4C4(v2, *v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      UIViewController.resolvedHealthExperienceStore.getter(v16);
      type metadata accessor for AppSourcesDataSource(0);
      swift_allocObject();
      v3 = v2;
      sub_1BA426424(v3, v16);
    }

    type metadata accessor for DownloadingDataDataSource();
    swift_allocObject();
    v10 = sub_1BA3BBE98();
    sub_1B9F1DEA0();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5480;
    sub_1BA0A9B2C();
    swift_allocObject();

    v13 = sub_1BA063C30(v12, v10);

    *(v11 + 32) = v13;
    *(v11 + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;

    return v11;
  }

  else
  {
    sub_1BA4A7DF8();

    swift_getMetatypeMetadata();
    v15 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v15);

    MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4E7E20);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA0A87D4()
{
  v1 = v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_sourceType];
  result = [v0 collectionView];
  v3 = result;
  if (!v1)
  {
    if (result)
    {
      v10 = MEMORY[0x1E69E6158];
      v11 = sub_1BA4A6AE8();
      v12 = HKUIJoinStringsForAutomationIdentifier();

      [v3 setAccessibilityIdentifier_];
      v13 = &v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName];
      v14 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName + 8];
      if (v14)
      {
        v15 = *v13;
        v16 = qword_1EDC5E100;

        if (v16 != -1)
        {
          swift_once();
        }

        sub_1BA4A1318();
        sub_1B9F10CD8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1BA4B5480;
        *(v17 + 56) = v10;
        *(v17 + 64) = sub_1B9F1BE20();
        *(v17 + 32) = v15;
        *(v17 + 40) = v14;
        v18 = sub_1BA4A6768();

        goto LABEL_16;
      }

      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_25;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 == 1)
  {
    if (result)
    {
      v4 = MEMORY[0x1E69E6158];
      v5 = sub_1BA4A6AE8();
      v6 = HKUIJoinStringsForAutomationIdentifier();

      [v3 setAccessibilityIdentifier_];
      v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName];
      v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName + 8];
      if (v8)
      {
        v9 = qword_1EDC5E100;

        if (v9 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_23;
      }

      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (result)
  {
    v4 = MEMORY[0x1E69E6158];
    v19 = sub_1BA4A6AE8();
    v20 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName];
    v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName + 8];
    if (v8)
    {
      v21 = qword_1EDC5E100;

      if (v21 == -1)
      {
LABEL_15:
        sub_1BA4A1318();
        sub_1B9F10CD8(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BA4B5480;
        *(v22 + 56) = v4;
        *(v22 + 64) = sub_1B9F1BE20();
        *(v22 + 32) = v7;
        *(v22 + 40) = v8;
        v18 = sub_1BA4A6768();

LABEL_16:

        return v18;
      }

LABEL_23:
      swift_once();
      goto LABEL_15;
    }

    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

LABEL_25:
    swift_once();
    return sub_1BA4A1318();
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BA0A8E48(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A18F8();
  v10 = [a1 cellForItemAtIndexPath_];

  if (v10)
  {
    v27 = ObjectType;
    v30 = v10;
    sub_1B9F0ADF8(0, &qword_1EDC6B550);
    sub_1B9F0D9AC(0, &qword_1EDC6CCF0);
    v11 = v10;
    if (swift_dynamicCast())
    {
      sub_1B9F25598(v28, v31);
      v12 = v32;
      v13 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v13 + 16))(v11, v2, v12, v13);
      v14 = v32;
      v15 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v15 + 24))(v28, v2, v14, v15);
      v16 = v28[0];
      if (LOBYTE(v28[0]) != 2)
      {
        v17 = sub_1BA4A18F8();
        [a1 deselectItemAtIndexPath:v17 animated:v16 & 1];
      }

      return __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1B9F2F610(v28);
    ObjectType = v27;
  }

  sub_1BA4A3DD8();
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v28[0] = v22;
    *v21 = 136446210;
    v31[0] = ObjectType;
    swift_getMetatypeMetadata();
    v23 = sub_1BA4A6808();
    v25 = sub_1B9F0B82C(v23, v24, v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s] cell is not a selectable cell", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

id SourcesViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id SourcesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SourcesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SourcesViewController.viewControllerWillEnterAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  sub_1B9F0ADF8(0, &qword_1EDC6B600);
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA4A77E8();
  v3 = sub_1BA4A7128();
  [v1 setLeftBarButtonItem_];
}

void sub_1BA0A9550()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall SourcesViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setLeftBarButtonItem_];
}

void *sub_1BA0A96E8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *a6;
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  sub_1BA4A70E8();
  v37[0] = 2;
  sub_1B9F1174C();
  sub_1BA4A1CC8();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded) = 0;
  type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  swift_storeEnumTagMultiPayload();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) = a1;
  v12 = (a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  *v12 = a2;
  v12[1] = &protocol witness table for CompoundSectionedDataSource;
  v12[2] = &protocol witness table for CompoundSectionedDataSource;
  v13 = a1;

  [v13 _setShouldPrefetchCellsWhenPerformingReloadData_];
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = &protocol witness table for CompoundSectionedDataSource;
  v14[6] = &protocol witness table for CompoundSectionedDataSource;
  v14[7] = v11;
  sub_1BA0A9C88(0, &qword_1EDC5F880, MEMORY[0x1E69DC228]);
  v16 = objc_allocWithZone(v15);
  v17 = v13;

  v35 = v17;
  v18 = sub_1BA4A46B8();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource) = v18;
  v20 = v12[1];
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 40);
  swift_unknownObjectRetain();
  v23 = v22(ObjectType, v20);
  swift_unknownObjectRelease();
  [v23 registerObserver_];

  v24 = *(a6 + v19);
  swift_unownedRetainStrong();
  v25 = v24;
  swift_unownedRetain();
  swift_unownedRetain();

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v11;
  sub_1BA4A46C8();

  swift_unownedRelease();
  sub_1B9F44938();
  LOBYTE(v25) = v27;

  if (v25)
  {
    v28 = *(a6 + v19);
    swift_allocObject();
    swift_weakInit();
    v29 = v28;

    v30 = sub_1BA4A4708();
    sub_1BA0A9C88(0, &qword_1EDC5F888, MEMORY[0x1E69DC210]);
    sub_1BA4A46F8();
    v30(v37, 0);

    v31 = *(a6 + v19);
    swift_allocObject();
    swift_weakInit();
    v32 = v31;

    v33 = sub_1BA4A4708();
    sub_1BA4A46E8();
    v33(v37, 0);
  }

  return a6;
}

void sub_1BA0A9B2C()
{
  if (!qword_1EBBEB458)
  {
    type metadata accessor for MutableArrayDataSourceWithLayout();
    type metadata accessor for DownloadingDataDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB458);
    }
  }
}

unint64_t sub_1BA0A9BB4()
{
  result = qword_1EBBEB460;
  if (!qword_1EBBEB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB460);
  }

  return result;
}

void sub_1BA0A9C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x1E69E6158];
    v8[1] = MEMORY[0x1E69E6158];
    v8[2] = MEMORY[0x1E69E6168];
    v8[3] = MEMORY[0x1E69E6168];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static ContentConfigurationItem.makeDateDisplayItem(title:date:placeholderText:cellSelectionHandler:uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v53 = a7;
  v45 = a6;
  v51 = a5;
  v44 = a4;
  v43 = a3;
  v46 = a1;
  v47 = a2;
  sub_1B9F662D4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v43 - v11;
  v12 = sub_1BA4A4168();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6969530];
  sub_1B9F662D4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_1BA4A1728();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BA4A4428();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();

  sub_1BA4A43B8();
  sub_1BA0AC5F8(v47, v18, &qword_1EDC6E440, v15);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BA0AC664(v18, &qword_1EDC6E440, MEMORY[0x1E6969530]);

    sub_1BA4A41A8();
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v25 = objc_allocWithZone(MEMORY[0x1E696AB78]);
    v26 = [v25 init];
    [v26 setDateStyle_];
    [v26 setTimeStyle_];
    v27 = sub_1BA4A16B8();
    v28 = [v26 stringFromDate_];

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    sub_1BA4A41A8();

    (*(v20 + 8))(v22, v19);
  }

  v29 = objc_opt_self();
  v30 = [v29 systemBlueColor];
  v31 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v31(&v58, 0);
  sub_1BA4A4158();
  v32 = [v29 secondarySystemGroupedBackgroundColor];
  sub_1BA4A4118();
  v33 = v48;
  v59 = v48;
  v60 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
  (*(v54 + 16))(boxed_opaque_existential_1, v24, v33);
  v36 = v49;
  v35 = v50;
  v37 = v52;
  (*(v49 + 16))(v52, v14, v50);
  (*(v36 + 56))(v37, 0, 1, v35);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v38 = v51;
  if (v51)
  {
    v39 = v45;

    sub_1B9F43A50(&v55, qword_1EDC67B40, &qword_1EDC6CCF0);
    *(&v56 + 1) = &type metadata for BasicCellSelectionHandler;
    v57 = &off_1F381BCC8;
    *&v55 = v38;
    *(&v55 + 1) = v39;
    LOBYTE(v56) = 2;
  }

  (*(v36 + 8))(v14, v35);
  (*(v54 + 8))(v24, v33);
  sub_1B9F374E8(&v55, a8 + 16, qword_1EDC67B40, &qword_1EDC6CCF0);
  v40 = type metadata accessor for ContentConfigurationItem();
  *(a8 + v40[12]) = 0;
  *(a8 + v40[13]) = 0;
  *a8 = v53;
  *(a8 + 8) = a9;
  sub_1B9F25598(&v58, a8 + 72);
  *(a8 + 112) = 0;
  *(a8 + 120) = MEMORY[0x1E69E7CC0];
  sub_1B9F2F728(v37, a8 + v40[10]);
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  v41 = (a8 + v40[11]);
  *v41 = 0;
  v41[1] = 0;

  return sub_1B9F43A50(&v55, qword_1EDC67B40, &qword_1EDC6CCF0);
}

uint64_t CalendarDatePickerItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CalendarDatePickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t CalendarDatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for CalendarDatePickerItem();
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return 0xD000000000000017;
}

uint64_t CalendarDatePickerItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for CalendarDatePickerItem() + 24));

  return v1;
}

uint64_t CalendarDatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CalendarDatePickerItem() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CalendarDatePickerItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for CalendarDatePickerItem() + 28));

  return v1;
}

uint64_t CalendarDatePickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CalendarDatePickerItem() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA0AA5F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = (a2 + *(type metadata accessor for CalendarDatePickerItem() + 32));
  v5 = *v4;
  sub_1B9F0F1B8(v2);
  result = sub_1B9F0E310(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t CalendarDatePickerItem.dataProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for CalendarDatePickerItem() + 32));
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t CalendarDatePickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CalendarDatePickerItem() + 32));
  result = sub_1B9F0E310(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA0AA738@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalendarDatePickerItem() + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA074E64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA0AA7CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for CalendarDatePickerItem() + 36));
  v8 = *v7;
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CalendarDatePickerItem.updateHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for CalendarDatePickerItem() + 36));
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t CalendarDatePickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CalendarDatePickerItem() + 36));
  result = sub_1B9F0E310(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CalendarDatePickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for CalendarDatePickerItem();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t CalendarDatePickerItem.init(dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CalendarDatePickerCollectionViewCell();
  sub_1BA0AC188();
  *a5 = sub_1BA4A6808();
  a5[1] = v10;
  v11 = type metadata accessor for CalendarDatePickerItem();
  result = sub_1BA4A1788();
  v13 = (a5 + v11[6]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (a5 + v11[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a5 + v11[8]);
  v16 = (a5 + v11[9]);
  *(a5 + v11[10]) = 1;
  *v15 = a1;
  v15[1] = a2;
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_1BA0AAAA4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1BA0AAADC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1BA0AAB20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_1B9F0F1B8(v2);
  return v2;
}

uint64_t sub_1BA0AAB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 32));
  result = sub_1B9F0E310(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_1BA0AABA4(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 32);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_1BA0AABE8;
}

uint64_t sub_1BA0AABEC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_1B9F0F1B8(v2);
  return v2;
}

uint64_t sub_1BA0AAC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 36));
  result = sub_1B9F0E310(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_1BA0AAC70(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 36);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_1BA0AC6C0;
}

uint64_t sub_1BA0AACB4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (*(result + 16) + *(result + 24));
  if (!*result)
  {
    v1 = 0;
  }

  *v2 = *result;
  v2[1] = v1;
  return result;
}

unint64_t sub_1BA0AACD4()
{
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return 0xD000000000000017;
}

uint64_t sub_1BA0AAD38(uint64_t a1)
{
  v2 = sub_1BA0AC320(&qword_1EBBEB478);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA0AADA0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F374E8(a1, v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0AB714();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA0AAE50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA0AAEC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0AB714();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA0AAF44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0AAFA8;
}

uint64_t sub_1BA0AAFA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA0AB714();
  }

  return result;
}

char *sub_1BA0AAFDC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_datePicker;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setPreferredDatePickerStyle_];
  [v11 setDatePickerMode_];
  *&v4[v10] = v11;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CalendarDatePickerCollectionViewCell();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA0AB198();
  [*&v12[OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_datePicker] addTarget:v12 action:sel_pickerDateChanged_ forControlEvents:0xFFFFFFFFLL];

  return v12;
}

id CalendarDatePickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA0AB198()
{
  v1 = v0;
  sub_1B9F662D4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = [v0 contentView];
  [v9 addSubview_];

  sub_1BA0AB358();
  MEMORY[0x1BFAF1F00]();
  v10 = sub_1BA4A4168();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10))
  {
    v11 = MEMORY[0x1E69DC0D8];
    sub_1BA0AC5F8(v8, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1BA0AC664(v8, &qword_1EDC6B770, v11);
  }

  else
  {
    v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v8);
  }
}

void sub_1BA0AB358()
{
  v1 = v0;
  v28 = objc_opt_self();
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5880;
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_datePicker];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 32) = v8;
  v9 = [v3 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [v11 topAnchor];
  v13 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v13;
  v14 = [v3 bottomAnchor];
  v15 = [v1 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 bottomAnchor];
  v18 = [v14 constraintEqualToAnchor_];

  *(v2 + 48) = v18;
  v19 = [v3 trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 trailingAnchor];
  v23 = [v19 constraintLessThanOrEqualToAnchor_];

  *(v2 + 56) = v23;
  v24 = [v3 centerXAnchor];
  v25 = [v1 contentView];
  v26 = [v25 centerXAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v2 + 64) = v27;
  sub_1B9F740B0();
  v29 = sub_1BA4A6AE8();

  [v28 activateConstraints_];
}

uint64_t sub_1BA0AB714()
{
  sub_1B9F662D4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F662D4(0, &qword_1EBBEB4A0, type metadata accessor for CalendarDatePickerItem);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-v9];
  v11 = type metadata accessor for CalendarDatePickerItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v15, v25, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v26)
  {
    sub_1B9F43A50(v25, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_7;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  v16 = swift_dynamicCast();
  (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    v21 = &qword_1EBBEB4A0;
    v22 = type metadata accessor for CalendarDatePickerItem;
    v23 = v10;
    return sub_1BA0AC664(v23, v21, v22);
  }

  sub_1BA0AC538(v10, v14);
  v17 = *&v14[*(v11 + 32)];
  if (v17)
  {
    v17(v14);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v18 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_datePicker);
      v19 = sub_1BA4A16B8();
      [v18 setDate:v19 animated:1];

      (*(v5 + 8))(v7, v4);
      return sub_1BA0AC59C(v14);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1BA0AC59C(v14);
  v21 = &qword_1EDC6E440;
  v22 = MEMORY[0x1E6969530];
  v23 = v3;
  return sub_1BA0AC664(v23, v21, v22);
}

uint64_t sub_1BA0ABB44(void *a1)
{
  v2 = v1;
  v30[0] = a1;
  v30[1] = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F662D4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  sub_1B9F662D4(0, &qword_1EBBEB4A0, type metadata accessor for CalendarDatePickerItem);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = type metadata accessor for CalendarDatePickerItem();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v17, v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v31[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    v18 = swift_dynamicCast();
    (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1BA0AC538(v12, v16);
      v19 = *&v16[*(v13 + 36)];
      if (v19)
      {
        v20 = [v30[0] date];
        sub_1BA4A16F8();

        v21 = sub_1BA4A1728();
        (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
        v19(v16, v9);
        sub_1BA0AC664(v9, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      }

      return sub_1BA0AC59C(v16);
    }
  }

  else
  {
    sub_1B9F43A50(v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_1BA0AC664(v12, &qword_1EBBEB4A0, type metadata accessor for CalendarDatePickerItem);
  sub_1BA4A3DD8();
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v25 = 136315138;
    v27 = sub_1BA4A85D8();
    v29 = sub_1B9F0B82C(v27, v28, v31);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] item is not a CalendarDatePickerItem", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id CalendarDatePickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarDatePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CalendarDatePickerItem()
{
  result = qword_1EBBEB488;
  if (!qword_1EBBEB488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA0AC188()
{
  result = qword_1EBBEB468;
  if (!qword_1EBBEB468)
  {
    type metadata accessor for CalendarDatePickerCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEB468);
  }

  return result;
}

void _s18HealthExperienceUI36CalendarDatePickerCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_datePicker;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setPreferredDatePickerStyle_];
  [v3 setDatePickerMode_];
  *(v0 + v2) = v3;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0AC2A8(uint64_t a1)
{
  result = sub_1BA0AC320(&qword_1EBBEB478);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA0AC320(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarDatePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA0AC38C()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    sub_1B9F23348(319, &qword_1EDC6E410, v0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F662D4(319, &qword_1EDC5DB48, sub_1B9F37BB8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA0AC538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDatePickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0AC59C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarDatePickerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0AC5F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F662D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA0AC664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F662D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MedicationsAffectHeartRateDataSource.__allocating_init(healthStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1BA0AE778(a1);

  return v2;
}

uint64_t MedicationsAffectHeartRateDataSource.init(healthStore:)(void *a1)
{
  v2 = sub_1BA0AE778(a1);

  return v2;
}

uint64_t MedicationsAffectHeartRateDataSource.__deallocating_deinit()
{
  OnboardingConfirmDetailsDataSource.deinit();

  return swift_deallocClassInstance();
}

id sub_1BA0AC7C4(char *a1)
{
  v95[3] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  sub_1BA4A3E28();
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();
  v18 = os_log_type_enabled(v16, v17);
  v90 = v3;
  v91 = a1;
  v87 = v7;
  if (v18)
  {
    v19 = v5;
    v20 = swift_slowAlloc();
    v21 = v4;
    v22 = swift_slowAlloc();
    v95[0] = v22;
    *v20 = 136315394;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v95);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1B9F0B82C(0xD00000000000001ELL, 0x80000001BA4E82A0, v95);
    _os_log_impl(&dword_1B9F07000, v16, v17, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    v4 = v21;
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v20;
    v5 = v19;
    a1 = v91;
    MEMORY[0x1BFAF43A0](v27, -1, -1);

    v28 = *(v5 + 8);
    (v28)(v15, v21);
  }

  else
  {

    v28 = *(v5 + 8);
    (v28)(v15, v4);
  }

  v29 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;
  v30 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model];
  v31 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v32 = *(v30 + v31);
  if (*(v32 + 16))
  {

    v33 = sub_1B9F24A34(0xD000000000000016, 0x80000001BA4E14F0);
    if (v34)
    {
      v35 = *(*(v32 + 56) + v33);

      goto LABEL_11;
    }
  }

  v36 = v28;
  sub_1BA4A3E28();
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v5;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v85 = v4;
    v86 = v39;
    v42 = v41;
    v94[0] = v41;
    *v40 = 136315394;
    v43 = sub_1BA4A85D8();
    v45 = sub_1B9F0B82C(v43, v44, v94);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4E14F0, v94);
    _os_log_impl(&dword_1B9F07000, v37, v38, "%s Could not access Medications That Affect Heart Rate field for %s", v40, 0x16u);
    swift_arrayDestroy();
    v46 = v42;
    v4 = v85;
    MEMORY[0x1BFAF43A0](v46, -1, -1);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
  }

  v28 = v36;
  (v36)(v12, v4);
  v35 = 0;
  a1 = v91;
LABEL_11:
  v47 = *&a1[v29];
  v48 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v49 = *(v47 + v48);
  v50 = v88;
  if (*(v49 + 16))
  {

    v51 = sub_1B9F24A34(0x636F6C4261746562, 0xEC0000007372656BLL);
    if (v52)
    {
      v53 = *(*(v49 + 56) + v51);

      if (v53)
      {
        v35 |= 2uLL;
      }

      goto LABEL_20;
    }
  }

  sub_1BA4A3E28();
  v54 = sub_1BA4A3E88();
  v55 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v91 = v28;
    v58 = v57;
    v93 = v57;
    *v56 = 136315394;
    v59 = sub_1BA4A85D8();
    v61 = sub_1B9F0B82C(v59, v60, &v93);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_1B9F0B82C(0x636F6C4261746562, 0xEC0000007372656BLL, &v93);
    _os_log_impl(&dword_1B9F07000, v54, v55, "%s Could not access Medications That Affect Heart Rate field for %s", v56, 0x16u);
    swift_arrayDestroy();
    v62 = v58;
    v28 = v91;
    MEMORY[0x1BFAF43A0](v62, -1, -1);
    MEMORY[0x1BFAF43A0](v56, -1, -1);
  }

  (v28)(v50, v4);
LABEL_20:
  v63 = *(v89 + 16);
  v93 = 0;
  v64 = [v63 _setCardioFitnessMedicationsUse_error_];
  v65 = v93;
  if (v64)
  {

    return v65;
  }

  else
  {
    v91 = v93;
    v67 = v93;
    v68 = sub_1BA4A1488();

    swift_willThrow();
    v69 = v87;
    sub_1BA4A3E28();
    v70 = v68;
    v71 = sub_1BA4A3E88();
    v72 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v93 = v74;
      *v73 = 136315394;
      v75 = sub_1BA4A85D8();
      v77 = v28;
      v78 = v4;
      v79 = sub_1B9F0B82C(v75, v76, &v93);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v92 = v68;
      v80 = v68;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v81 = sub_1BA4A6828();
      v83 = sub_1B9F0B82C(v81, v82, &v93);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_1B9F07000, v71, v72, "%s Could not save Medications That Affect Heart Rate selection: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v73, -1, -1);

      return (v77)(v87, v78);
    }

    else
    {

      return (v28)(v69, v4);
    }
  }
}

uint64_t MedicationsAffectHeartRateDataSourceDelegate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t MedicationsAffectHeartRateDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1968();
  v7 = v6;
  if (a1 == 0xD000000000000013 && 0x80000001BA4E1530 == a2)
  {
    if (!v6)
    {
LABEL_7:
      a3[3] = &type metadata for UITableView.HeightItem;
      result = sub_1B9FCD740();
      a3[4] = result;
      v9 = 0x403E000000000000;
LABEL_10:
      *a3 = v9;
      return result;
    }

    goto LABEL_9;
  }

  if ((sub_1BA4A8338() & 1) != 0 && !v7)
  {
    goto LABEL_7;
  }

  if (sub_1BA4A8338())
  {
LABEL_9:
    a3[3] = &type metadata for UITableView.HeightItem;
    result = sub_1B9FCD740();
    a3[4] = result;
    v9 = 0x4034000000000000;
    goto LABEL_10;
  }

  if (a1 == 0xD000000000000013 && 0x80000001BA4E1560 == a2 || (sub_1BA4A8338() & 1) != 0)
  {
    a3[3] = &type metadata for UITableView.HeightItem;
    result = sub_1B9FCD740();
    a3[4] = result;
    *a3 = 0;
  }

  else
  {
    a3[3] = &type metadata for UITableView.EmptyItem;
    result = sub_1B9FCD6EC();
    a3[4] = result;
  }

  return result;
}

uint64_t sub_1BA0AD238(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v121 = a1;
  v111 = *a4;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F3D4EC(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = &v97 - v9;
  v103 = sub_1BA4A6488();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AEF30();
  v106 = v11;
  v105 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AF03C();
  v110 = v13;
  v109 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BA4A1798();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D4EC(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v7);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v97 - v17;
  sub_1B9F3D4EC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, v7);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v128[3] = type metadata accessor for ConfirmDetailsValueFormatterImpl();
  v128[4] = &protocol witness table for ConfirmDetailsValueFormatterImpl;
  v128[0] = a2;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  v26 = sub_1BA4A1998();
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_32;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = sub_1B9FF611C(MEMORY[0x1E69E7CC0]))
  {
    *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_subscriptions) = i;
    *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_confirmDetailsSections) = v121;
    *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_detailsProvider) = a3;
    if (a3)
    {
      v28 = type metadata accessor for ConfirmDetailsProvider.Details();
      (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    }

    else
    {
      v29 = sub_1BA4A1148();
      v30 = *(*(v29 - 8) + 56);
      v30(v18, 1, 1, v29);
      v31 = type metadata accessor for ConfirmDetailsProvider.Details();
      v32 = v4;
      v33 = v31[5];
      v30(&v24[v33], 1, 1, v29);
      v34 = v31[6];
      v35 = v31[7];
      *v24 = 0;
      v24[8] = 1;

      v36 = &v24[v33];
      v4 = v32;
      sub_1BA018A30(v18, v36);
      *&v24[v34] = 0;
      *&v24[v35] = 0;
      v24[v31[8]] = 0;
      v24[v31[9]] = 0;
      (*(*(v31 - 1) + 56))(v24, 0, 1, v31);
    }

    sub_1B9F0A534(v128, v125);
    sub_1BA0AF108(v24, v21);
    if (a3)
    {
      swift_beginAccess();
      v37 = *(a3 + 88) ? 35 : *(a3 + 80);
    }

    else
    {
      v37 = 35;
    }

    type metadata accessor for ConfirmDetailsModel();
    v38 = swift_allocObject();
    v39 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    v40 = type metadata accessor for ConfirmDetailsProvider.Details();
    v41 = *(*(v40 - 8) + 56);
    v100 = v40;
    v41(v38 + v39, 1, 1);
    v42 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;

    v43 = MEMORY[0x1E69E7CC0];
    *(v38 + v42) = sub_1B9FDB8F0(MEMORY[0x1E69E7CC0]);
    *(v38 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v44 = [objc_opt_self() hk_gregorianCalendar];
    v45 = v43;
    sub_1BA4A1828();

    v46 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth;
    sub_1B9F3D4EC(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    (*(*(v47 - 8) + 56))(v38 + v46, 1, 1, v47);
    sub_1B9F0A534(v125, v38 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter);
    *(v38 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows) = v43;
    swift_beginAccess();
    sub_1BA0AF19C(v21, v38 + v39);
    swift_endAccess();
    *(v38 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues) = MEMORY[0x1E69E7CC8];
    *(v38 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge) = v37;
    sub_1BA119B74(v121);

    sub_1BA0AF250(v21, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    __swift_destroy_boxed_opaque_existential_1(v125);
    *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) = v38;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
    v49 = swift_beginAccess();
    v50 = *(v38 + v48);
    MEMORY[0x1EEE9AC00](v49);
    *(&v97 - 2) = v38;
    *(&v97 - 1) = v24;

    v18 = sub_1BA24A778(sub_1BA0AF230, (&v97 - 4), v50);

    v51 = *(v18 + 2);
    if (!v51)
    {
      break;
    }

    v97 = v4;
    v98 = v24;
    v99 = a3;
    v124 = v45;
    sub_1B9F277B0(0, v51, 0);
    a3 = 0;
    v119 = *(v18 + 2);
    v116 = v18 + 32;
    v52 = v124;
    v115 = 0x80000001BA4E8490;
    v24 = MEMORY[0x1E69A3310];
    v4 = &qword_1EDC6AD50;
    v53 = v45;
    v118 = v18;
    v117 = v51;
    while (a3 != v119)
    {
      if (a3 >= *(v18 + 2))
      {
        goto LABEL_31;
      }

      v121 = v52;
      v54 = *&v116[8 * a3];
      v55 = *(v54 + 16);
      if (v55)
      {
        v123 = v53;

        sub_1BA066B80(0, v55, 0);
        v56 = v123;
        v120 = v54;
        v57 = v54 + 32;
        do
        {
          sub_1B9F0A534(v57, v122);
          sub_1B9F0D950(0, &qword_1EDC6E1B0);
          sub_1B9F0D950(0, &qword_1EDC6AD50);
          swift_dynamicCast();
          v123 = v56;
          v59 = *(v56 + 16);
          v58 = *(v56 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1BA066B80((v58 > 1), v59 + 1, 1);
          }

          v60 = v126;
          v61 = v127;
          v62 = __swift_mutable_project_boxed_opaque_existential_1(v125, v126);
          v63 = MEMORY[0x1EEE9AC00](v62);
          v65 = &v97 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v66 + 16))(v65, v63);
          sub_1BA1F2854(v59, v65, &v123, v60, v61);
          __swift_destroy_boxed_opaque_existential_1(v125);
          v56 = v123;
          v57 += 40;
          --v55;
        }

        while (v55);
        v53 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v56 = v53;
      }

      v125[0] = 0;
      v125[1] = 0xE000000000000000;
      sub_1BA4A7DF8();

      v125[0] = 0xD000000000000018;
      v125[1] = v115;
      v122[0] = a3;
      v67 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v67);

      v68 = v125[0];
      v21 = v125[1];

      v70 = Array<A>.identifierToIndexDict()(v69);

      v52 = v121;
      v124 = v121;
      v72 = *(v121 + 16);
      v71 = *(v121 + 24);
      if (v72 >= v71 >> 1)
      {
        v121 = v68;
        sub_1B9F277B0((v71 > 1), v72 + 1, 1);
        v68 = v121;
        v52 = v124;
      }

      ++a3;
      *(v52 + 16) = v72 + 1;
      v73 = (v52 + 48 * v72);
      v73[4] = 0;
      v73[5] = 0;
      v73[6] = v56;
      v73[7] = v70;
      v73[8] = v68;
      v73[9] = v21;
      v18 = v118;
      if (a3 == v117)
      {
        v74 = v52;

        a3 = v99;
        v24 = v98;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v125[0] = 0;
  v125[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v125, "MutableArray<");
  HIWORD(v125[1]) = -4864;
  v75 = v112;
  sub_1BA4A1788();
  v76 = sub_1BA4A1748();
  v78 = v77;
  (*(v113 + 8))(v75, v114);
  MEMORY[0x1BFAF1350](v76, v78);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v79 = MutableArrayDataSource.init(arrangedSections:identifier:)(v74, v125[0], v125[1]);
  *(*(v79 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = &off_1F3811050;
  swift_unknownObjectWeakAssign();
  if (a3)
  {
    v80 = *(*a3 + 184);

    v82 = v80(v81);

    v125[0] = v82;
    sub_1BA0AF310(0, &qword_1EBBEB4D8, MEMORY[0x1E695BED0]);
    sub_1BA0AEFC8();
    v83 = v104;
    sub_1BA4A4FA8();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v84 = v102;
    v85 = v101;
    v86 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E69E7F90], v103);
    v87 = sub_1BA4A7338();
    (*(v84 + 8))(v85, v86);
    v125[0] = v87;
    v88 = sub_1BA4A72A8();
    v89 = v107;
    (*(*(v88 - 8) + 56))(v107, 1, 1, v88);
    sub_1BA0AF2C8(&qword_1EBBEB4F0, sub_1BA0AEF30);
    sub_1B9F3DC80();
    v90 = v108;
    v91 = v106;
    sub_1BA4A50A8();
    sub_1BA0AF250(v89, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
    (*(v105 + 8))(v83, v91);

    v92 = swift_allocObject();
    swift_weakInit();
    v93 = swift_allocObject();
    v94 = v111;
    *(v93 + 16) = v92;
    *(v93 + 24) = v94;
    sub_1BA0AF2C8(&qword_1EBBEB4F8, sub_1BA0AF03C);
    v95 = v110;
    sub_1BA4A5148();

    (*(v109 + 8))(v90, v95);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v128);
  sub_1BA0AF250(v24, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  return v79;
}

uint64_t sub_1BA0AE378(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a5;
  v21 = a3;
  v20 = a2;
  sub_1B9F3D4EC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v19 = &v18 - v9;
  v18 = sub_1BA4A72F8();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v25[3] = sub_1B9F0ADF8(0, &qword_1EDC6B620);
  v25[4] = &protocol witness table for HKHealthStore;
  v25[0] = a1;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  sub_1BA4A64A8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BA0AF2C8(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
  sub_1B9F3D4EC(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v18);
  *(a6 + 72) = sub_1BA4A7328();
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  v15 = type metadata accessor for ConfirmDetailsProvider.Details();
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  sub_1BA0AF310(0, &qword_1EBBEA488, MEMORY[0x1E695BF98]);
  swift_allocObject();
  *(a6 + 96) = sub_1BA4A4DF8();
  sub_1B9F0A534(v25, a6 + 16);
  swift_beginAccess();
  *(a6 + 80) = v20;
  *(a6 + 88) = v21 & 1;
  v16 = v23;
  *(a6 + 56) = v22;
  *(a6 + 64) = v16;

  sub_1BA019A84();
  __swift_destroy_boxed_opaque_existential_1(v25);
  return a6;
}

uint64_t sub_1BA0AE778(void *a1)
{
  sub_1B9F1C048(0, &qword_1EBBEB4B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5480;
  *(v1 + 32) = 0xD000000000000015;
  *(v1 + 40) = 0x80000001BA4E8350;
  *(v1 + 48) = 1;
  sub_1B9F1C048(0, &qword_1EBBEB4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A1318();
  v5 = v4;
  v6 = sub_1BA4A1318();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x80000001BA4E14F0;
  *(inited + 80) = v1;
  *(inited + 88) = 258;
  *(inited + 96) = 0;
  *(inited + 104) = 0;

  v8 = sub_1BA4A1318();
  v10 = v9;
  v11 = sub_1BA4A1318();
  *(inited + 112) = v8;
  *(inited + 120) = v10;
  *(inited + 128) = v11;
  *(inited + 136) = v12;
  strcpy((inited + 144), "betaBlockers");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 160) = v1;
  *(inited + 168) = 258;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = 0xD000000000000016;
  *(v13 + 40) = 0x80000001BA4E14F0;
  *(v13 + 48) = 1;
  strcpy((v13 + 56), "betaBlockers");
  *(v13 + 69) = 0;
  *(v13 + 70) = -5120;
  *(v13 + 72) = 1;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  *(v14 + 32) = sub_1BA4A1318();
  *(v14 + 40) = v15;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0xD000000000000015;
  *(v14 + 72) = 0x80000001BA4E8350;
  *(v14 + 80) = v13;
  *(v14 + 88) = 2;
  sub_1B9F1C048(0, &qword_1EBBEB4C8);
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  v75 = MEMORY[0x1E69E7CC0];
  sub_1BA066DE0(0, 2, 0);
  v17 = v75;
  v18 = *(inited + 48);
  v19 = *(inited + 64);
  v20 = *(inited + 96);
  v79 = *(inited + 80);
  v80 = v20;
  v77 = v18;
  v78 = v19;
  v76 = *(inited + 32);
  sub_1BA0AEED4(&v76, &v70);
  v22 = *(v17 + 16);
  v21 = *(v17 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_1BA066DE0((v21 > 1), v22 + 1, 1);
    v17 = v75;
  }

  v23 = v79;
  v24 = WORD4(v79) & 0x1FF | 0xC000000000000000;
  v25 = v17 + 80 * v22;
  v26 = v76;
  v27 = v77;
  v28 = v78;
  v29 = v80;
  *(v17 + 16) = v22 + 1;
  *(v25 + 32) = v26;
  *(v25 + 48) = v27;
  *(v25 + 64) = v28;
  *(v25 + 80) = v23;
  *(v25 + 88) = v24;
  *(v25 + 96) = v29;
  v30 = *(inited + 128);
  v70 = *(inited + 112);
  v71 = v30;
  v31 = *(inited + 160);
  v72 = *(inited + 144);
  v73 = v31;
  v74 = *(inited + 176);
  sub_1BA0AEED4(&v70, &v65);

  v33 = *(v17 + 16);
  v32 = *(v17 + 24);
  if (v33 >= v32 >> 1)
  {
    sub_1BA066DE0((v32 > 1), v33 + 1, 1);
    v17 = v75;
  }

  v34 = v73;
  v35 = WORD4(v73) & 0x1FF | 0xC000000000000000;
  v36 = v17 + 80 * v33;
  v37 = v70;
  v38 = v71;
  v39 = v72;
  v40 = v74;
  *(v17 + 16) = v33 + 1;
  *(v36 + 32) = v37;
  *(v36 + 48) = v38;
  *(v36 + 64) = v39;
  *(v36 + 80) = v34;
  *(v36 + 88) = v35;
  *(v36 + 96) = v40;
  *(v16 + 32) = v17;
  v64 = MEMORY[0x1E69E7CC0];
  sub_1BA066DE0(0, 1, 0);
  v41 = v64;
  v42 = *(v14 + 48);
  v43 = *(v14 + 64);
  v44 = *(v14 + 96);
  v68 = *(v14 + 80);
  v69 = v44;
  v66 = v42;
  v67 = v43;
  v65 = *(v14 + 32);
  sub_1BA0AEED4(&v65, v63);

  v46 = *(v41 + 16);
  v45 = *(v41 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1BA066DE0((v45 > 1), v46 + 1, 1);
    v41 = v64;
  }

  v47 = v68;
  v48 = WORD4(v68) & 0x1FF | 0xC000000000000000;
  v49 = v41 + 80 * v46;
  v50 = v65;
  v51 = v66;
  v52 = v67;
  v53 = v69;
  *(v41 + 16) = v46 + 1;
  *(v49 + 32) = v50;
  *(v49 + 48) = v51;
  *(v49 + 64) = v52;
  *(v49 + 80) = v47;
  *(v49 + 88) = v48;
  *(v49 + 96) = v53;
  *(v16 + 40) = v41;
  type metadata accessor for ConfirmDetailsProvider();
  v54 = swift_allocObject();
  v55 = a1;
  v56 = sub_1BA0AE378(v55, 0, 1, sub_1BA0198D0, 0, v54);
  type metadata accessor for ConfirmDetailsValueFormatterImpl();
  v57 = swift_allocObject();
  v57[4] = 0;
  v57[5] = 0;
  v57[2] = v55;
  v58 = [objc_opt_self() sharedInstanceForHealthStore_];
  v59 = [v58 createHKUnitPreferenceController];

  v57[3] = v59;
  return sub_1BA0AD238(v16, v57, v56, v62);
}

uint64_t type metadata accessor for MedicationsAffectHeartRateDataSource()
{
  result = qword_1EBBEB4A8;
  if (!qword_1EBBEB4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0AEF30()
{
  if (!qword_1EBBEB4D0)
  {
    sub_1BA0AF310(255, &qword_1EBBEB4D8, MEMORY[0x1E695BED0]);
    type metadata accessor for ConfirmDetailsProvider.Details();
    sub_1BA0AEFC8();
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB4D0);
    }
  }
}

unint64_t sub_1BA0AEFC8()
{
  result = qword_1EBBEB4E0;
  if (!qword_1EBBEB4E0)
  {
    sub_1BA0AF310(255, &qword_1EBBEB4D8, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB4E0);
  }

  return result;
}

void sub_1BA0AF03C()
{
  if (!qword_1EBBEB4E8)
  {
    sub_1BA0AEF30();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA0AF2C8(&qword_1EBBEB4F0, sub_1BA0AEF30);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB4E8);
    }
  }
}

uint64_t sub_1BA0AF108(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D4EC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0AF19C(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D4EC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0AF250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D4EC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0AF2C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA0AF310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3D4EC(255, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AppSourcesItem.__allocating_init(sourceDataModel:healthStore:sourceType:)(void *a1, void *a2, char *a3)
{
  swift_allocObject();
  v6 = sub_1BA0B115C(a1, a2, a3);

  return v6;
}

void sub_1BA0AF424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = objc_opt_self();

  v11 = [v10 sharedImageManager];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a5;
  *(v13 + 32) = a3;
  *(v13 + 40) = sub_1BA00CD30;
  *(v13 + 48) = v9;
  v16[4] = sub_1BA0B146C;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BA0AF6A0;
  v16[3] = &block_descriptor_34_0;
  v14 = _Block_copy(v16);
  v15 = a3;

  [v11 loadIconForSource:v15 productType:0 completionHandler:v14];
  _Block_release(v14);
}

void sub_1BA0AF5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, void (*a8)(id, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v13 = a1;
    if (!a1)
    {
      if (a6 >= 2u)
      {
        v13 = [objc_opt_self() defaultDeviceIconTableUIForSource_];
      }

      else
      {
        sub_1BA4A29D8();
        v13 = sub_1BA4A29C8();
      }
    }

    v14 = v13;
    v15 = v13;
    v16 = a1;
    a8(v14, 0);
  }
}

void sub_1BA0AF6A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a5;
  v9(a2, a3, a4, a5);
}

uint64_t sub_1BA0AF744()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1B9F0D028(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v22 - v2;
  v3 = sub_1BA4A3FB8();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A3F18();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D028(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v15);
  v16 = sub_1BA4A4168();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = MEMORY[0x1E69DC0D8];
    sub_1BA0B14A0(v14, v11, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v11);
    sub_1B9F43CA4(v14, &qword_1EDC6B770, v17);
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v14);
  }

  sub_1B9F0D028(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v19 = v23;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF28], v23);
  v20 = sub_1BA4A3F48();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v24 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
  return sub_1BA4A75F8();
}

uint64_t sub_1BA0AFBC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D028(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v59 - v8;
  sub_1B9F44EC0();
  v11 = v10;
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A4428();
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA0B14A0(&v1[v16], &v67, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v69)
  {
    sub_1B9FCD918();
    type metadata accessor for AppSourcesItem();
    if (swift_dynamicCast())
    {
      v61 = v11;
      v17 = v66[0];
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v67 = 0xD000000000000013;
      v68 = 0x80000001BA4E4AF0;
      swift_beginAccess();
      v18 = *(v17 + 56);
      v19 = *(v17 + 64);

      MEMORY[0x1BFAF1350](v18, v19);

      v20 = sub_1BA4A6758();

      [v1 setAccessibilityIdentifier_];

      v21 = [*(v17 + 48) source];
      v22 = objc_opt_self();
      v23 = [v22 sharedImageManager];
      v24 = [v23 iconForSource:v21 productType:0];

      if (v24)
      {
        *&v1[OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher] = 0;

        v25 = v21;

        v26 = v24;
        MEMORY[0x1BFAF2040]();
        sub_1BA4A43B8();
        v27 = v26;
        sub_1BA4A43D8();
        v28 = sub_1BA4A42D8();
        sub_1BA4A4268();
        v28(&v67, 0);
        sub_1BA4A4348();
        v69 = v13;
        v70 = MEMORY[0x1E69DC110];
        v29 = __swift_allocate_boxed_opaque_existential_1(&v67);
        v30 = v64;
        (v64[2])(v29, v15, v13);
        MEMORY[0x1BFAF1EF0](&v67);

        return v30[1](v15, v13);
      }

      else
      {
        v59 = *(v17 + 56);
        v60 = v21;
        if (*(v17 + 32) >= 2u)
        {

          v39 = [v22 defaultDeviceIconTableUIForSource_];
        }

        else
        {
          sub_1BA4A29D8();

          v39 = sub_1BA4A29C8();
        }

        v40 = v39;
        MEMORY[0x1BFAF2040]();
        sub_1BA4A43B8();
        v59 = v40;
        sub_1BA4A43D8();
        v41 = sub_1BA4A42D8();
        sub_1BA4A4268();
        v41(&v67, 0);
        sub_1BA4A4348();
        v69 = v13;
        v70 = MEMORY[0x1E69DC110];
        v42 = __swift_allocate_boxed_opaque_existential_1(&v67);
        v43 = v64;
        (v64[2])(v42, v15, v13);
        MEMORY[0x1BFAF1EF0](&v67);

        v43[1](v15, v13);
        v44 = [v22 sharedImageManager];
        v45 = *(v17 + 32);
        v46 = swift_allocObject();
        v47 = v60;
        *(v46 + 16) = v60;
        *(v46 + 24) = v44;
        *(v46 + 32) = v45;
        v48 = MEMORY[0x1E695C028];
        sub_1B9F3D9AC(0, &qword_1EBBEB510, MEMORY[0x1E695C028]);
        swift_allocObject();
        v64 = v47;
        v49 = v44;
        v67 = sub_1BA4A4EA8();
        sub_1B9F3E918(&qword_1EBBEB518, &qword_1EBBEB510, v48);
        v50 = sub_1BA4A4F98();

        v67 = v50;
        sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
        v51 = sub_1BA4A7308();
        v65 = v51;
        v52 = sub_1BA4A72A8();
        (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
        v53 = MEMORY[0x1E695BED0];
        sub_1B9F3D9AC(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
        sub_1B9F3E918(&qword_1EDC5F498, &qword_1EDC5F490, v53);
        sub_1B9F3DC80();
        v54 = v62;
        sub_1BA4A50A8();
        sub_1B9F43CA4(v9, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(v56 + 24) = v17;
        sub_1BA0B1424(&qword_1EDC5F540, 255, sub_1B9F44EC0);

        v57 = v61;
        v58 = sub_1BA4A5148();

        (*(v63 + 8))(v54, v57);
        *&v1[OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher] = v58;
      }
    }
  }

  else
  {
    sub_1B9F43CA4(&v67, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v66[0] = v35;
    *v34 = 136446210;
    v67 = ObjectType;
    swift_getMetatypeMetadata();
    v36 = sub_1BA4A6808();
    v38 = sub_1B9F0B82C(v36, v37, v66);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%{public}s] item is not an AppSourcesItem", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA0B0604(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v8 = *(a3 + 56);
    v7 = *(a3 + 64);
    v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);

    v9(v8, v7, v4);
  }

  return result;
}

void sub_1BA0B06D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1BA0B084C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSourcesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA0B08B8()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_13;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA0B09E4()
{
  type metadata accessor for AppSourcesCell();
  sub_1BA0B1520();
  result = sub_1BA4A6808();
  qword_1EBC094B0 = result;
  *algn_1EBC094B8 = v1;
  return result;
}

uint64_t sub_1BA0B0A28()
{
  if (qword_1EBBE8320 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBC094B0;

  return v0;
}

uint64_t AppSourcesItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppSourcesItem.init(sourceDataModel:healthStore:sourceType:)(void *a1, void *a2, char *a3)
{
  v5 = sub_1BA0B115C(a1, a2, a3);

  return v5;
}

uint64_t AppSourcesItem.deinit()
{

  return v0;
}

uint64_t AppSourcesItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0B0BE4()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1BA0B0C18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA0B0C7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA0B14A0(v2 + v9, aBlock, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v34)
  {
    sub_1B9F43CA4(aBlock, &qword_1EDC6E1A0, sub_1B9FCD918);
    goto LABEL_6;
  }

  sub_1B9FCD918();
  type metadata accessor for AppSourcesItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1BA4A3E48();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136446210;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v37);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s] item is not an AppSourcesItem", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return;
  }

  v10 = v37;
  v11 = [*(v37 + 48) source];
  v12 = [*(v10 + 40) viewControllerFactory];
  if (*(v10 + 32) <= 1u)
  {
    v14 = *(v10 + 40);
    v13 = *(v10 + 48);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v35 = sub_1BA0B13F8;
    v36 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    v34 = &block_descriptor_19;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v18 = v14;
    v19 = a1;

    [v12 createDetailViewControllerForSourceModel:v17 healthStore:v18 completion:v16];

    _Block_release(v16);

    return;
  }

  if ([v11 _isAppleWatch])
  {
    v27 = [v12 createWatchStoredDataViewControllerForSource:v11 withHealthStore:*(v10 + 40) usingInsetStyling:1];
LABEL_14:
    v30 = v27;
LABEL_16:
    [a1 showViewController:v30 sender:0];

    return;
  }

  v28 = [v11 _hasFirstPartyBundleID];
  v29 = *(v10 + 40);
  if (v28)
  {
    v27 = [v12 createLocalDeviceStoredDataViewControllerForSource:v11 withHealthStore:v29 usingInsetStyling:1];
    goto LABEL_14;
  }

  v31 = v29;
  v32 = [v31 displayTypeController];
  v30 = [objc_allocWithZone(MEMORY[0x1E69A44C0]) initWithHealthStore:v31 displayTypeController:v32 source:v11 useInsetStyling:1];

  if (v30)
  {
    goto LABEL_16;
  }

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0B115C(void *a1, void *a2, char *a3)
{
  v5 = *a3;
  *(v3 + 40) = a2;
  *(v3 + 48) = a1;
  *(v3 + 32) = v5;
  v6 = a2;
  v7 = a1;
  v8 = [v7 source];
  v9 = [v8 name];

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  *(v3 + 56) = v10;
  *(v3 + 64) = v12;
  v13 = [v7 source];
  v14 = [v13 bundleIdentifier];

  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = v16;

  *(v3 + 16) = v15;
  *(v3 + 24) = v17;
  return v3;
}

uint64_t sub_1BA0B1240(uint64_t a1, uint64_t a2)
{
  result = sub_1BA0B1424(&qword_1EBBEB500, a2, type metadata accessor for AppSourcesItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA0B1424(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA0B14A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D028(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA0B1520()
{
  result = qword_1EBBE9E38;
  if (!qword_1EBBE9E38)
  {
    type metadata accessor for AppSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E38);
  }

  return result;
}

uint64_t sub_1BA0B1578(void *a1, void *a2)
{
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A15D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 uniqueIdentifier];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A15C8();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA0B17A4(v6);
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v13 = sub_1BA4A1B88();
    (*(v8 + 8))(v11, v7);
    return v13;
  }

  return result;
}

uint64_t sub_1BA0B17A4(uint64_t a1)
{
  sub_1BA011090();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SummarySharingInviteToReceiveAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEB520;

  return v0;
}

uint64_t static SummarySharingInviteToReceiveAnalyticsEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEB520 = a1;
  off_1EBBEB528 = a2;
}

uint64_t sub_1BA0B1908(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEB520 = v2;
  off_1EBBEB528 = v1;
}

uint64_t SummarySharingInviteToReceiveAnalyticsEvent.__allocating_init(userDemographicsAnalytics:stepDetails:location:version:activeWatchProductType:)(uint64_t a1, __int16 *a2)
{
  v4 = swift_allocObject();
  SummarySharingInviteToReceiveAnalyticsEvent.init(userDemographicsAnalytics:stepDetails:location:version:activeWatchProductType:)(a1, a2);
  return v4;
}

void *SummarySharingInviteToReceiveAnalyticsEvent.init(userDemographicsAnalytics:stepDetails:location:version:activeWatchProductType:)(uint64_t a1, __int16 *a2)
{
  v3 = v2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *a2;
  v3[3] = 0;
  v7 = (v3 + 3);
  v3[4] = 0;
  v3[2] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (v5 == 1)
  {
    v9 = UserDemographicsAnalytics.ageValueForAnalytics()();
    v10 = *v7;
    *v7 = v9;

    if (v4)
    {
      v11 = 0;
      v12 = v6;
      goto LABEL_7;
    }

    sub_1BA4A70F8();
  }

  else
  {
    sub_1BA0B3098(&qword_1EBBEB530, v8, type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent);
    v13 = sub_1BA4A2CA8();
    v14 = *v7;
    *v7 = v13;

    sub_1BA4A2CB8();
  }

  v12 = v6;
  v11 = sub_1BA4A6758();

LABEL_7:
  v15 = v3[4];
  v3[4] = v11;

  sub_1BA0B2740();
  v3[5] = sub_1BA4A77C8();
  v3[6] = sub_1BA4A77C8();
  v16 = sub_1BA4A6758();

  v3[7] = v16;
  if (v12 == 3)
  {
    sub_1BA0B3098(&qword_1EBBEB530, v17, type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent);
    sub_1BA4A2CB8();
    v18 = sub_1BA4A6758();

    v3[8] = v18;
    sub_1BA4A2CB8();
    v19 = sub_1BA4A6758();
  }

  else
  {
    v20 = sub_1BA4A77C8();
    v21 = [v20 substringToIndex_];
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A6838();

    v22 = [v20 substringFromIndex_];
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    MEMORY[0x1BFAF1350](v23, v25);

    v26 = sub_1BA4A6758();

    v3[8] = v26;
    v27 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
    v28 = [v27 substringToIndex_];
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A6838();

    v29 = [v27 substringFromIndex_];
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v32 = v31;

    MEMORY[0x1BFAF1350](v30, v32);

    v19 = sub_1BA4A6758();
  }

  v3[9] = v19;
  return v3;
}

uint64_t static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(void *a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4)
{
  sub_1BA0B2A8C();
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v11 = *a4;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E695C028];
  sub_1BA0B2FEC(0, &qword_1EDC5F400, MEMORY[0x1E69E6158], MEMORY[0x1E695C028]);
  swift_allocObject();
  v27 = sub_1BA4A4EA8();
  sub_1BA0B2C10(&qword_1EDC5F408, &qword_1EDC5F400, v13);
  v14 = sub_1BA4A4F98();

  *(swift_allocObject() + 16) = a1;
  sub_1BA0B2FEC(0, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics, v13);
  swift_allocObject();

  v15 = a1;
  v16 = sub_1BA4A4EA8();
  v26 = v14;
  v27 = v16;
  v17 = MEMORY[0x1E695BED0];
  sub_1BA0B2FEC(0, &qword_1EBBE9CF0, v12, MEMORY[0x1E695BED0]);
  sub_1BA0B2B94();
  sub_1BA0B2C10(&qword_1EBBE9D10, &qword_1EBBE9CF0, v17);
  sub_1BA4A4FF8();

  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 18) = v23;
  *(v18 + 24) = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BA0B305C;
  *(v19 + 24) = v18;
  sub_1BA0B3098(&qword_1EBBEB550, 255, sub_1BA0B2A8C);
  v20 = v25;
  sub_1BA4A4F78();

  return (*(v8 + 8))(v10, v20);
}

uint64_t sub_1BA0B21CC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 25);
  v33 = *a1;
  v34 = v12;
  v35 = v13;
  LOBYTE(v36) = v14;
  BYTE1(v36) = v15;
  LOWORD(v38) = a4;
  v39 = a5;
  type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
  v16 = swift_allocObject();

  SummarySharingInviteToReceiveAnalyticsEvent.init(userDemographicsAnalytics:stepDetails:location:version:activeWatchProductType:)(&v33, &v38);
  sub_1BA4A3E58();

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v8;
    v33 = v20;
    v21 = v20;
    *v19 = 136315394;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, &v33);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v38 = v16;

    v25 = sub_1BA4A6808();
    v27 = sub_1B9F0B82C(v25, v26, &v33);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Submitting invite to receive analytics: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    (*(v9 + 8))(v11, v32);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v38 = v16;
  v28 = sub_1BA4A29B8();
  v29 = sub_1BA4A29A8();
  v36 = v28;
  v37 = MEMORY[0x1E69A3198];
  v33 = v29;
  sub_1BA0B3098(&qword_1EBBEB578, v30, type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent);
  sub_1BA4A2B58();
  __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t SummarySharingInviteToReceiveAnalyticsEvent.__deallocating_deinit()
{
  SummarySharingInviteToReceiveAnalyticsEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0B2574()
{
  swift_beginAccess();
  v0 = qword_1EBBEB520;

  return v0;
}

uint64_t static SummarySharingInviteToReceiveAnalyticsEvent.makeAnalyticsString(from:)(void *a1)
{
  v2 = [a1 substringToIndex_];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A6838();

  v3 = [a1 substringFromIndex_];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  v7 = sub_1BA4A6758();

  return v7;
}

unint64_t sub_1BA0B2740()
{
  result = qword_1EDC5E0C0;
  if (!qword_1EDC5E0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E0C0);
  }

  return result;
}

HealthExperienceUI::SummarySharingInviteToReceiveAnalyticsEvent::Step_optional __swiftcall SummarySharingInviteToReceiveAnalyticsEvent.Step.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1BA0B2740();
  v4 = rawValue;
  v5 = sub_1BA4A77C8();
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8();
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = sub_1BA4A77C8();
      v13 = sub_1BA4A7798();

      if (v13)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  *v3 = v8;
  return result;
}

void sub_1BA0B28A8()
{
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();
}

uint64_t sub_1BA0B2960@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA0B2740();
  result = sub_1BA4A77C8();
  *a1 = result;
  return result;
}

void sub_1BA0B2A8C()
{
  if (!qword_1EBBEB538)
  {
    sub_1BA0B2FEC(255, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics, MEMORY[0x1E695C028]);
    v0 = MEMORY[0x1E695BED0];
    sub_1BA0B2FEC(255, &qword_1EBBE9CF0, MEMORY[0x1E69E6158], MEMORY[0x1E695BED0]);
    sub_1BA0B2B94();
    sub_1BA0B2C10(&qword_1EBBE9D10, &qword_1EBBE9CF0, v0);
    v1 = sub_1BA4A4B88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB538);
    }
  }
}

unint64_t sub_1BA0B2B94()
{
  result = qword_1EBBEB548;
  if (!qword_1EBBEB548)
  {
    sub_1BA0B2FEC(255, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB548);
  }

  return result;
}

uint64_t sub_1BA0B2C10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA0B2FEC(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

HealthExperienceUI::SummarySharingInviteToReceiveAnalyticsEvent::Action_optional __swiftcall SummarySharingInviteToReceiveAnalyticsEvent.Action.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1BA0B2740();
  v4 = rawValue;
  v5 = sub_1BA4A77C8();
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8();
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1BA4A77C8();
      v14 = sub_1BA4A7798();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1BA4A77C8();
        v17 = sub_1BA4A7798();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = sub_1BA4A77C8();
          v20 = sub_1BA4A7798();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = sub_1BA4A77C8();
            v22 = sub_1BA4A7798();

            if (v22)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1BA0B2E30()
{
  sub_1BA0B2740();
  v0 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  v1 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

uint64_t sub_1BA0B2EB0()
{
  sub_1BA4A8488();
  v0 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA0B2F08()
{
  v0 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  sub_1BA4A77A8();
}

uint64_t sub_1BA0B2F68()
{
  sub_1BA4A8488();
  v0 = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA0B2FC4@<X0>(uint64_t *a1@<X8>)
{
  result = SummarySharingInviteToReceiveAnalyticsEvent.Action.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1BA0B2FEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA0B3098(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1BA0B3174()
{
  result = qword_1EBBEB568;
  if (!qword_1EBBEB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB568);
  }

  return result;
}

unint64_t sub_1BA0B31CC()
{
  result = qword_1EBBEB570;
  if (!qword_1EBBEB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingInviteToReceiveAnalyticsEvent.StepDetails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for SummarySharingInviteToReceiveAnalyticsEvent.StepDetails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for SummarySharingInviteToReceiveAnalyticsEvent.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarySharingInviteToReceiveAnalyticsEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BA0B3580()
{
  sub_1B9F0A534(&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingShared], v26);
  v1 = objc_allocWithZone(type metadata accessor for ProfileAvatarWithNameBelow());
  v2 = v27;
  v3 = v28;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v7, v5);
  v9 = sub_1BA2A34D8(v7, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView] = v9;
  v12 = v9;

  [v0 addSubview_];
  v13 = *&v0[v10];
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1B9F109F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B7510;
  v15 = *&v0[v10];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = [v15 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v14 + 32) = v18;
  v19 = *&v0[v10];
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = [v19 bottomAnchor];
    v22 = [v0 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v14 + 40) = v23;
    sub_1B9F740B0();
    v24 = sub_1BA4A6AE8();

    [v20 activateConstraints_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA0B3824()
{
  v1 = sub_1BA4A2FF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfile;
  v6 = objc_allocWithZone(type metadata accessor for ProfileAvatarWithNameBelow());
  (*(v2 + 16))(v4, &v0[v5], v1);
  v7 = sub_1BA0B4070(v4, v6);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfileView;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfileView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfileView] = v7;
  v10 = v7;

  [v0 addSubview_];
  v11 = *&v0[v8];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = *&v0[v8];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = [v13 topAnchor];
  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v17;
  v18 = *&v0[v8];
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = [v18 bottomAnchor];
    v21 = [v0 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v12 + 40) = v22;
    sub_1B9F740B0();
    v23 = sub_1BA4A6AE8();

    [v19 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1BA0B3AB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:2];
  v3 = sub_1BA4A6758();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  [v1 setImage_];
  v5 = [objc_opt_self() blackColor];
  [v1 setTintColor_];

  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5890;
  v7 = [v1 centerXAnchor];

  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v1 centerYAnchor];

  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = [v13 trailingAnchor];
  v15 = [v1 leadingAnchor];

  v16 = [v14 constraintEqualToAnchor:v15 constant:-20.0];
  *(v6 + 48) = v16;
  v17 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfileView];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v18 = objc_opt_self();
  v19 = [v17 leadingAnchor];
  v20 = [v1 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:20.0];
  *(v6 + 56) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v18 activateConstraints_];
}

id sub_1BA0B3EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingFlowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileSharingFlowView()
{
  result = qword_1EBBEB588;
  if (!qword_1EBBEB588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0B3FC8()
{
  result = sub_1BA4A2FF8();
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

id sub_1BA0B4070(uint64_t a1, char *a2)
{
  sub_1BA0B4364();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2FF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = v10;
  v32[4] = MEMORY[0x1E69A3390];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v28 = *(v8 + 32);
  v28(boxed_opaque_existential_1, a1, v7);
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView] = 0;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel] = 0;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel] = 0;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar] = 0;
  v13 = &a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccount];
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_1BA4A2AB8();
  v15 = &a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_localizedFullName];
  *v15 = v14;
  v15[1] = v16;
  v17 = sub_1BA4A2AC8();
  v18 = *&a2[v12];
  *&a2[v12] = v17;

  sub_1B9F0A534(v32, v31);
  sub_1BA0B43BC();
  v19 = swift_dynamicCast();
  v20 = *(v8 + 56);
  if (v19)
  {
    v20(v6, 0, 1, v7);
    v21 = v29;
    v28(v29, v6, v7);
    v22 = sub_1BA4A2FD8();
    v24 = v23;
    (*(v8 + 8))(v21, v7);
    *v13 = v22;
    v13[1] = v24;
  }

  else
  {
    v20(v6, 1, 1, v7);
    sub_1BA0B4420(v6);
  }

  v25 = type metadata accessor for ProfileAvatarWithNameBelow();
  v30.receiver = a2;
  v30.super_class = v25;
  v26 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA2A28B4();
  sub_1BA2A2B90();
  sub_1BA2A2F24();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v26;
}

void sub_1BA0B4364()
{
  if (!qword_1EBBEB598)
  {
    sub_1BA4A2FF8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB598);
    }
  }
}

unint64_t sub_1BA0B43BC()
{
  result = qword_1EDC6E1F0;
  if (!qword_1EDC6E1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6E1F0);
  }

  return result;
}

uint64_t sub_1BA0B4420(uint64_t a1)
{
  sub_1BA0B4364();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0B4488@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore;
  swift_beginAccess();
  sub_1BA0B5A00(v1 + v3, &v5);
  if (v6)
  {
    return sub_1B9F25598(&v5, a1);
  }

  sub_1BA0B5978(&v5);
  UIViewController.resolvedHealthExperienceStore.getter(a1);
  sub_1B9F0A534(a1, &v5);
  swift_beginAccess();
  sub_1B9F4A184(&v5, v1 + v3, &qword_1EDC6AE08, &qword_1EDC6E248);
  return swift_endAccess();
}

void *sub_1BA0B4554()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources);
  }

  else
  {
    sub_1BA0B4488(v4);
    type metadata accessor for HealthChecklistDataSourceProvider();
    swift_allocObject();
    v2 = sub_1BA3EE298(v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t HealthChecklistViewController.analyticsSource.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource);
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1BA0B4600(v2, v3);
}

uint64_t sub_1BA0B4600(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

id HealthChecklistViewController.__allocating_init(sender:isDoneButtonVisible:)(_OWORD *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource] = *a1;
  v5[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, 0);
}

id HealthChecklistViewController.init(sender:isDoneButtonVisible:)(_OWORD *a1, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource] = *a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for HealthChecklistViewController();
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, 0);
}

id HealthChecklistViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HealthChecklistViewController.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA0B4888()
{
  v1 = sub_1BA0B4554();
  v8[3] = type metadata accessor for HealthChecklistDataSourceProvider();
  v8[4] = &off_1F381D628;
  v8[0] = v1;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F4A184(v8, v0 + v2, &qword_1EDC6BAD0, qword_1EDC6BAE0);
  swift_endAccess();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for HealthChecklistViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_1BA0B5198();
  v3 = [v0 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0B4AEC(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HealthChecklistViewController();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  sub_1BA0B4BCC();
  sub_1BA0B57EC();
  result = UIViewController.resolvedHealthStore.getter();
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() safetyDefaultsDomainWithHealthStore_];
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    sub_1BA4A27E8();
    swift_allocObject();
    sub_1BA4A27C8();
    sub_1BA4A27D8();
  }

  return result;
}

void sub_1BA0B4BCC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA0B4554();
  v4 = v3[9];
  v5 = v3[10];
  swift_unknownObjectRetain();

  v6 = sub_1BA0B557C(v4, v5);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources;
  v8 = *(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources) + 96);
  v9 = swift_unknownObjectRetain();
  v10 = sub_1BA0B557C(v9, v8);
  swift_unknownObjectRelease();
  v11 = *(*(v0 + v7) + 112);
  v12 = swift_unknownObjectRetain();
  v47 = sub_1BA0B557C(v12, v11);
  swift_unknownObjectRelease();
  v13 = *(*(v0 + v7) + 128);
  v14 = swift_unknownObjectRetain();
  v46 = sub_1BA0B557C(v14, v13);
  swift_unknownObjectRelease();
  v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource);
  v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource + 8);
  sub_1BA0B5A7C();
  v17 = sub_1BA4A7768();
  v18 = sub_1BA4A7768();
  v19 = sub_1BA4A7768();
  v20 = sub_1BA4A7768();
  v21 = sub_1BA4A7768();
  v52 = v15;
  v53 = v16;
  HealthChecklistOpenedAnalyticsSource.rawValue.getter();
  v22 = sub_1BA4A6758();

  v23 = sub_1BA4A6DC8();

  v24 = sub_1BA4A6DC8();
  if (__OFADD__(v6, v10))
  {
    __break(1u);
  }

  else
  {
    v44 = v23;
    v45 = v22;
    v25 = sub_1BA4A6DC8();

    v26 = sub_1BA4A6DC8();
    v27 = sub_1BA4A6DC8();

    sub_1BA4A3E58();
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51[0] = v31;
      *v30 = 136446466;
      v52 = ObjectType;
      swift_getMetatypeMetadata();
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, v51);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      swift_beginAccess();
      v36 = qword_1EBBF2D08;
      v35 = off_1EBBF2D10;

      v37 = sub_1B9F0B82C(v36, v35, v51);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%{public}s]: Submitting Health Checklist analytics: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v48 + 8))(v50, v49);
    v39 = v44;
    v38 = v45;
    v52 = v45;
    v53 = v25;
    v54 = v26;
    v55 = v44;
    v56 = v24;
    v57 = v27;
    v40 = sub_1BA4A29B8();
    v41 = sub_1BA4A29A8();
    v51[3] = v40;
    v51[4] = MEMORY[0x1E69A3198];
    v51[0] = v41;
    sub_1BA0B5AC8();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }
}

uint64_t static HealthChecklistViewController.markHealthChecklistAsViewed(with:)(uint64_t a1)
{
  v1 = [objc_opt_self() safetyDefaultsDomainWithHealthStore_];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A27E8();
  swift_allocObject();
  sub_1BA4A27C8();
  sub_1BA4A27D8();
}

void sub_1BA0B50E0()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F70(v4, v5);

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_1B9FF5724();
}

void sub_1BA0B5198()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setPreservesSuperviewLayoutMargins_];

  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode_];

  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible) == 1)
  {
    v7 = [v0 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissProfile_];
    [v7 setRightBarButtonItem_];
  }
}

id HealthChecklistViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA0B5494()
{
  sub_1BA0B5978(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore);

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource + 8);

  return sub_1BA0B59EC(v1, v2);
}

id HealthChecklistViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthChecklistViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0B557C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (SnapshotDataSource.isEmpty.getter(ObjectType, a2))
  {
    return 0;
  }

  result = SnapshotDataSource.contentsAsArray()(ObjectType, a2);
  v6 = result;
  v7 = *(result + 16);
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v14 = v10[2];
    if (!v14)
    {
      v16 = MEMORY[0x1E69E7CC0];
LABEL_32:

      v4 = v16[2];

      return v4;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 >= v10[2])
      {
        goto LABEL_35;
      }

      v17 = v10[v15 + 4];
      v18 = *(v17 + 16);
      v19 = v16[2];
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_36;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v20 <= v16[3] >> 1)
      {
        if (!*(v17 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v21 = v19 + v18;
        }

        else
        {
          v21 = v19;
        }

        result = sub_1B9F281E8(result, v21, 1, v16);
        v16 = result;
        if (!*(v17 + 16))
        {
LABEL_15:

          if (v18)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }
      }

      if ((v16[3] >> 1) - v16[2] < v18)
      {
        goto LABEL_38;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50);
      swift_arrayInitWithCopy();

      if (v18)
      {
        v22 = v16[2];
        v23 = __OFADD__(v22, v18);
        v24 = v22 + v18;
        if (v23)
        {
          goto LABEL_39;
        }

        v16[2] = v24;
      }

LABEL_16:
      if (v14 == ++v15)
      {
        goto LABEL_32;
      }
    }
  }

  v8 = 0;
  v9 = (result + 48);
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 < *(v6 + 16))
  {
    v11 = *v9;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27FCB4(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      result = sub_1BA27FCB4((v12 > 1), v13 + 1, 1, v10);
      v10 = result;
    }

    ++v8;
    v10[2] = v13 + 1;
    v10[v13 + 4] = v11;
    v9 += 6;
    if (v7 == v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_1BA0B57EC()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = [v1 source];
  v3 = objc_allocWithZone(MEMORY[0x1E698EBC0]);
  v4 = sub_1BA4A6758();
  v5 = [v3 initWithContentIdentifier:v4 context:0 osBuild:0 userInfo:0];

  [v2 sendEvent_];
}

uint64_t sub_1BA0B5978(uint64_t a1)
{
  sub_1B9F0CDE8(0, &qword_1EDC6AE08, &qword_1EDC6E248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0B59EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_1BA0B5A00(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6AE08, &qword_1EDC6E248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA0B5A7C()
{
  result = qword_1EDC6E360;
  if (!qword_1EDC6E360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E360);
  }

  return result;
}

unint64_t sub_1BA0B5AC8()
{
  result = qword_1EBBEB5C0;
  if (!qword_1EBBEB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB5C0);
  }

  return result;
}

uint64_t sub_1BA0B5B5C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0B7098();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA0B5BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA0B5C3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0B7098();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

void (*sub_1BA0B5CC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0B5D24;
}

void sub_1BA0B5D24(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0B7098();
  }
}

void sub_1BA0B5D58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA0B5DB8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA0B5E0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA0B5ED0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0B5F58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView);
  }

  else
  {
    type metadata accessor for SummaryHeaderProfileNameView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA0B6004(char *a1)
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = sub_1BA0B5ED0();
  v4 = [v3 leadingAnchor];

  v5 = [a1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView;
  v9 = [*&a1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView] topAnchor];
  v10 = [a1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  v13 = [a1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&a1[v8] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 48) = v16;
  v17 = [a1 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [*&a1[v8] trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v2 + 56) = v20;
  return v2;
}

uint64_t sub_1BA0B6280(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1BA0B62E8(char *a1)
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5880;
  v3 = sub_1BA0B5ED0();
  v4 = [v3 leadingAnchor];

  v5 = [a1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintGreaterThanOrEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView;
  v9 = [*&a1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView] topAnchor];
  v10 = [a1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  v13 = [*&a1[v8] bottomAnchor];
  v14 = [a1 contentView];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v2 + 48) = v16;
  v17 = [a1 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [*&a1[v8] trailingAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 56) = v20;
  v21 = [*&a1[v8] centerXAnchor];
  v22 = [a1 contentView];
  v23 = [v22 centerXAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v2 + 64) = v24;
  return v2;
}

id SummaryHeaderProfileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummaryHeaderProfileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___defaultConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___axConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView] = sub_1BA112B14();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SummaryHeaderProfileCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA0B6888();

  return v10;
}

id SummaryHeaderProfileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummaryHeaderProfileCell.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___defaultConstraints] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___axConstraints] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView] = sub_1BA112B14();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SummaryHeaderProfileCell();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1BA0B6888();
  }

  return v5;
}

uint64_t sub_1BA0B6888()
{
  v1 = [v0 contentView];
  v2 = sub_1BA0B5ED0();
  [v1 addSubview_];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___containerView];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  [v4 addSubview_];
  v6 = *&v0[v3];
  v7 = sub_1BA0B5F58();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell____lazy_storage___profileNameView] centerYAnchor];
  v10 = [*&v0[v5] centerYAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  LODWORD(v12) = 1132068864;
  [v11 setPriority_];
  v46 = objc_opt_self();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4BC650;
  v14 = [*&v0[v5] topAnchor];
  v15 = [*&v0[v3] topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];

  *(v13 + 32) = v16;
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [*&v0[v3] &selRef__totalDistance + 1];
  v19 = [v17 constraintEqualToAnchor_];

  *(v13 + 40) = v19;
  v20 = [*&v0[v5] widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v13 + 48) = v21;
  v22 = [*&v0[v5] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v13 + 56) = v23;
  v24 = [*&v0[v3] bottomAnchor];
  v25 = [*&v0[v5] bottomAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

  *(v13 + 64) = v26;
  *(v13 + 72) = v11;
  v27 = *&v0[v8];
  v28 = v11;
  v29 = [v27 topAnchor];
  v30 = [*&v0[v3] topAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor_];

  *(v13 + 80) = v31;
  v32 = [*&v0[v8] leadingAnchor];
  v33 = [*&v0[v5] trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:15.0];

  *(v13 + 88) = v34;
  v35 = [*&v0[v3] trailingAnchor];
  v36 = [*&v0[v8] trailingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v13 + 96) = v37;
  v38 = [*&v0[v3] bottomAnchor];
  v39 = [*&v0[v8] bottomAnchor];
  v40 = [v38 constraintGreaterThanOrEqualToAnchor_];

  *(v13 + 104) = v40;
  sub_1B9F740B0();
  v41 = sub_1BA4A6AE8();

  [v46 activateConstraints_];

  sub_1BA0B6EDC();
  sub_1B9F7A684();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BA4B5480;
  v43 = sub_1BA4A4858();
  v44 = MEMORY[0x1E69DC2B0];
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();
}

void sub_1BA0B6E5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    if ((sub_1BA4A73F8() & 1) == 0)
    {
      sub_1BA0B6EDC();
    }
  }
}

void sub_1BA0B6EDC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v11 = [v2 preferredContentSizeCategory];

  v3 = sub_1BA4A7548();
  v4 = sub_1BA4A7528();

  v5 = [v1 traitCollection];
  v6 = sub_1BA4A7368();

  v7 = objc_opt_self();
  if ((v4 & 1) != 0 || (v6 - 1) <= 1)
  {
    sub_1BA0B5FE4();
    sub_1B9F740B0();
    v9 = sub_1BA4A6AE8();

    [v7 deactivateConstraints_];

    sub_1BA0B6260();
  }

  else
  {
    sub_1BA0B6260();
    sub_1B9F740B0();
    v8 = sub_1BA4A6AE8();

    [v7 deactivateConstraints_];

    sub_1BA0B5FE4();
  }

  v10 = sub_1BA4A6AE8();

  [v7 activateConstraints_];
}

void sub_1BA0B7098()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v2], v21);
  if (!v22)
  {
    sub_1B9F43A50(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_8;
  }

  if (!*(&v24 + 1))
  {
LABEL_8:
    sub_1B9F43A50(&v23, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    v20 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    swift_beginAccess();
    [*&v1[v20] setImage_];
    return;
  }

  sub_1B9F1134C(&v23, v26);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
  v6 = v4;
  v5();

  sub_1BA25D608();
  v7 = sub_1BA0B5F58();
  sub_1BA45F81C(v26);

  sub_1BA0B6EDC();
  v8 = sub_1BA4A6AE8();
  v9 = HKUIJoinStringsForAutomationIdentifier();

  if (v9)
  {
    v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v12 = v11;

    v13 = sub_1BA4A6758();
    [v1 setAccessibilityIdentifier_];

    v14 = sub_1BA0B5F58();

    sub_1BA125C90(v10, v12);

    v15 = *&v1[v3];
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B9FD0;
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;
    *(v16 + 48) = 0x726174617641;
    *(v16 + 56) = 0xE600000000000000;
    *(v16 + 64) = 0x6567616D49;
    *(v16 + 72) = 0xE500000000000000;
    v17 = v15;
    v18 = sub_1BA4A6AE8();

    v19 = HKUIJoinStringsForAutomationIdentifier();

    [v17 setAccessibilityIdentifier_];

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0B73E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {

    v6 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];

    v7 = sub_1BA0B5F58();

    sub_1BA125C90(a1, a2);

    v8 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    swift_beginAccess();
    v9 = *&v3[v8];
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B9FD0;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = 0x726174617641;
    *(v10 + 56) = 0xE600000000000000;
    *(v10 + 64) = 0x6567616D49;
    *(v10 + 72) = 0xE500000000000000;
    v11 = v9;
    v12 = sub_1BA4A6AE8();

    v13 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v14 = sub_1BA0B5F58();
    sub_1BA125C90(a1, 0);

    v15 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    swift_beginAccess();
    [*&v3[v15] setAccessibilityIdentifier_];
  }
}

id SummaryHeaderProfileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryHeaderProfileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0B78B8()
{
  v0 = sub_1BA4A7378();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7388();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7398();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69A3988])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    v9 = (*(v1 + 88))(v3, v0);
    if (v9 == *MEMORY[0x1E69A3978])
    {
      (*(v1 + 96))(v3, v0);
      return *v3;
    }

    if (v9 == *MEMORY[0x1E69A3980])
    {
      return 0;
    }

    if (v9 == *MEMORY[0x1E69A3970])
    {
      return 1;
    }

    if (v9 == *MEMORY[0x1E69A3968])
    {
      return 2;
    }

    (*(v1 + 8))(v3, v0);
  }

  else if (v8 != *MEMORY[0x1E69A3990])
  {
    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t sub_1BA0B7B68(uint64_t a1, id a2)
{
  v3 = [a2 allCountryCodes];
  v4 = sub_1BA4A6B08();

  v7 = v4;

  sub_1BA0B7F58(&v7);

  if (a1)
  {
    v5 = sub_1BA0B8990(0, *(v7 + 2), a1, v7, a1);

    return v5;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

id sub_1BA0B7C38(void *a1)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result isAppleWatch];

    if (v4)
    {
      v5 = 5;
    }

    else
    {
      v5 = 9;
    }

    v6 = sub_1BA0B7B68(v5, a1);
    v7 = *(v6 + 16);
    if (v7)
    {
      v19 = MEMORY[0x1E69E7CC0];
      v8 = v6;
      sub_1B9F1C360(0, v7, 0);
      v9 = v19;
      sub_1B9F1D7DC(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
      v10 = 32;
      sub_1B9F1D768();
      v11 = v8;
      do
      {
        v12 = v11;

        v13 = sub_1BA4A66D8();
        v15 = v14;

        v17 = *(v19 + 16);
        v16 = *(v19 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1B9F1C360((v16 > 1), v17 + 1, 1);
        }

        *(v19 + 16) = v17 + 1;
        v18 = v19 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v10 += 8;
        --v7;
        v11 = v12;
      }

      while (v7);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0B7DE8(void *a1)
{
  strcpy(v8, "Provenance: ");
  [a1 provenance];
  v2 = NSStringFromHKCountrySetProvenance();
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v6 = sub_1BA0B7EB4(a1);
  MEMORY[0x1BFAF1350](v6);

  return v8[0];
}

unint64_t sub_1BA0B7EB4(void *a1)
{
  sub_1BA4A7DF8();

  [a1 contentVersion];
  v2 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v2);

  return 0xD000000000000011;
}

uint64_t sub_1BA0B7F58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442EF8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BA0B7FC4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA0B7FC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA0B818C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BA0B80BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA0B80BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1BA4A8338(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0B818C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1BA442D80(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1BA0B8768((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1BA4A8338();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1BA4A8338();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1BA27F470((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1BA0B8768((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BA442D80(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1BA442CF4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1BA4A8338(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1BA0B8768(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1BA4A8338() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1BA4A8338() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1BA0B8990(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066FB0(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v18 >= v14)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_1B9F1D7DC(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1BA066FB0((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v27 >= v28)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            sub_1B9F1D7DC(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1BA066FB0((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

id ChromeHostViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ChromeHostViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ChromeHostViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ChromeHostViewTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id ChromeHostViewTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ChromeHostViewTableCell(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id ChromeHostViewTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ChromeHostViewTableCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChromeHostViewTableCell(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BA0B90A0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1BA0B912C(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    type metadata accessor for ChromeHostView();
    v5 = swift_dynamicCastClassUnconditional();
    v6 = v4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA0B91A0(double a1, double a2, float a3, float a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    if (!v11 || (swift_getObjectType(), !swift_conformsToProtocol2()))
    {
      v21.receiver = v4;
      v21.super_class = type metadata accessor for ChromeHostViewTableCell(0);
      *&v18 = a3;
      *&v19 = a4;
      objc_msgSendSuper2(&v21, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v18, v19);
      return;
    }

    type metadata accessor for ChromeHostView();
    v12 = swift_dynamicCastClassUnconditional();
    v13 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
    swift_beginAccess();
    v14 = *(v12 + v13);
    if (v14)
    {
      v15 = v11;
      *&v16 = a3;
      *&v17 = a4;
      [v14 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v16, v17}];
      if (*&v4[v9])
      {
LABEL_6:
        [v11 sizeThatFits_];

        return;
      }
    }

    else
    {
      v20 = v11;
      if (*&v4[v9])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1BA0B93FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t EnhancedFeatureDataTypeDescriptionProvider.titleText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id EnhancedFeatureDataTypeDescriptionProvider.attribution.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t EnhancedFeatureDataTypeDescriptionProvider.__allocating_init(displayType:mode:featureStatusProvider:)(void *a1, int a2, void *a3)
{
  v6 = swift_allocObject();
  EnhancedFeatureDataTypeDescriptionProvider.init(displayType:mode:featureStatusProvider:)(a1, a2, a3);
  return v6;
}

uint64_t EnhancedFeatureDataTypeDescriptionProvider.init(displayType:mode:featureStatusProvider:)(void *a1, int a2, void *a3)
{
  v4 = v3;
  LODWORD(v39) = a2;
  sub_1B9F3D550(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  sub_1BA0B9C58();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D550(0, &qword_1EBBF1520, MEMORY[0x1E69A3890]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v16 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + 120) = v16;
  v40 = v3 + 120;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1BA4A3988();
  v17 = sub_1BA4A3938();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 0, 1, v17);
  v19 = sub_1BA4A3928();
  (*(v18 + 8))(v15, v17);
  v20 = [a1 localization];
  v21 = [v20 titleEmbeddedDisplayName];

  v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v24 = v23;

  *(v4 + 16) = v22;
  *(v4 + 24) = v24;
  v25 = [a1 localization];
  v26 = v25;
  if (v19)
  {
    v27 = [v25 summaryForEnhancedFeature];
  }

  else
  {
    v27 = [v25 summary];
  }

  v28 = v27;

  if (v28)
  {
    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  *(v4 + 32) = v29;
  *(v4 + 40) = v31;
  v32 = a1;
  DataTypeDescriptionAttribution.init(displayType:mode:)(v32, v39, &v43);
  v33 = v44;
  *(v4 + 48) = v43;
  *(v4 + 56) = v33;
  sub_1BA4A4E28();
  swift_allocObject();
  *(v4 + 64) = sub_1BA4A4E18();
  *(v4 + 72) = v32;
  sub_1B9F0A534(a3, v4 + 80);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v39 = v32;
  v43 = sub_1BA4A3998();
  sub_1B9F38BF4();
  v34 = sub_1BA4A7308();
  v45 = v34;
  v35 = sub_1BA4A72A8();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_1BA0B9D44();
  sub_1BA0B9E68(&qword_1EDC5F500, sub_1BA0B9D44);
  sub_1BA0B9E68(&qword_1EDC6B5B0, sub_1B9F38BF4);
  sub_1BA4A50A8();
  sub_1BA0B9DAC(v9, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

  swift_allocObject();
  swift_weakInit();
  sub_1BA0B9E68(&qword_1EBBEB670, sub_1BA0B9C58);
  v36 = v42;
  sub_1BA4A5148();

  (*(v41 + 8))(v12, v36);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

void sub_1BA0B9C58()
{
  if (!qword_1EBBF1600)
  {
    sub_1BA0B9D44();
    sub_1B9F38BF4();
    sub_1BA0B9E68(&qword_1EDC5F500, sub_1BA0B9D44);
    sub_1BA0B9E68(&qword_1EDC6B5B0, sub_1B9F38BF4);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1600);
    }
  }
}

void sub_1BA0B9D44()
{
  if (!qword_1EDC5F4F0)
  {
    sub_1BA4A3938();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F4F0);
    }
  }
}

uint64_t sub_1BA0B9DAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F3D550(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0B9E08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA0B9EB0();
  }

  return result;
}

uint64_t sub_1BA0B9E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA0B9EB0()
{
  v1 = v0;
  sub_1B9F3D550(0, &qword_1EBBF1520, MEMORY[0x1E69A3890]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  sub_1BA4A3988();
  v5 = sub_1BA4A3938();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 0, 1, v5);
  v7 = sub_1BA4A3928();
  (*(v6 + 8))(v4, v5);
  if (v7)
  {
    v8 = [*(v1 + 72) localization];
    v9 = [v8 summaryForEnhancedFeature];
  }

  else
  {
    v8 = [*(v1 + 72) localization];
    v9 = [v8 summary];
  }

  v10 = v9;

  if (v10)
  {
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v13;

  return sub_1BA4A4E08();
}

uint64_t EnhancedFeatureDataTypeDescriptionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return v0;
}

uint64_t EnhancedFeatureDataTypeDescriptionProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0BA1F0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

id sub_1BA0BA240@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

id sub_1BA0BA314(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  sub_1BA0BA828(0, &qword_1EBBEB678, sub_1BA0BA7A8);
  inited = swift_initStackObject();
  v10 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1BA4B5480;
  v11 = *v10;
  *(inited + 32) = v11;
  *(inited + 40) = a3;
  v12 = v11;
  v13 = a3;
  v14 = sub_1B9FDB9E8(inited);
  swift_setDeallocating();
  sub_1BA0BA87C(inited + 32, sub_1BA0BA7A8);
  if (a4)
  {
    v32 = a4;
    v15 = [v32 imageWithRenderingMode_];
    v16 = [objc_opt_self() textAttachmentWithImage_];

    sub_1B9F0ADF8(0, &qword_1EDC6B520);
    v17 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    sub_1BA0BA828(0, &qword_1EDC5DBB0, sub_1B9FE9628);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1BA4B5480;
    *(v18 + 32) = v12;
    *(v18 + 64) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
    *(v18 + 40) = v13;
    v19 = v12;
    v20 = v13;
    sub_1B9FDB1C4(v18);
    swift_setDeallocating();
    sub_1BA0BA87C(v18 + 32, sub_1B9FE9628);
    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v21 = sub_1BA4A6618();

    [v17 addAttributes:v21 range:{0, objc_msgSend(v17, sel_length)}];

    if (a5)
    {

      MEMORY[0x1BFAF1350](32, 0xE100000000000000);
      sub_1B9FECAA4(v14);

      v22 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v23 = sub_1BA4A6758();

      v24 = sub_1BA4A6618();

      v25 = [v22 initWithString:v23 attributes:v24];

      [v25 appendAttributedString_];
      v26 = v17;
      v17 = v25;
    }

    else
    {
      MEMORY[0x1BFAF1350](a1, a2);
      sub_1B9FECAA4(v14);

      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v29 = sub_1BA4A6758();

      v30 = sub_1BA4A6618();

      v26 = [v28 initWithString:v29 attributes:v30];

      [v17 appendAttributedString_];
    }
  }

  else
  {
    sub_1B9FECAA4(v14);

    v27 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v16 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v26 = sub_1BA4A6618();

    v17 = [v27 initWithString:v16 attributes:v26];
  }

  return v17;
}

void sub_1BA0BA7A8()
{
  if (!qword_1EBBF1000)
  {
    type metadata accessor for Key(255);
    sub_1B9F0ADF8(255, &qword_1EDC6E380);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1000);
    }
  }
}

void sub_1BA0BA828(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA0BA87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0BA8DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA0BA948()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA0BA9A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA0BAAA8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA0BAB04(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA0BABA0(uint64_t a1, uint64_t *a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0BD294();
  return sub_1BA0BD670(v6);
}

uint64_t sub_1BA0BAC10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA0BAC68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0BD294();
  return sub_1BA0BD670(a1);
}

uint64_t sub_1BA0BACD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1BA0BAD54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0BADB8;
}

uint64_t sub_1BA0BADB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA0BD294();
  }

  return result;
}

uint64_t sub_1BA0BADEC()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v0 + v1, &v10);
  if (v11)
  {
    sub_1B9F1134C(&v10, v12);
    v2 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v3 + 8))(v2, v3);
    if (v4 >> 60 != 15)
    {
      sub_1BA4A3078();
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BA0BD670(&v10);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  v6 = sub_1BA4A85D8();
  v8 = v7;

  *&v10 = v6;
  *(&v10 + 1) = v8;
  MEMORY[0x1BFAF1350](0xD000000000000021, 0x80000001BA4E91B0);
  sub_1BA04B338(v0 + v1, v12);
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140);
  v9 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v9);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

id sub_1BA0BAFB8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel);
  }

  else
  {
    v41 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [objc_opt_self() labelColor];
    [v9 setTextColor_];

    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    v14 = [v13 fontDescriptorWithSymbolicTraits_];

    if (v14)
    {
      v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v2;
        v22 = sub_1B9F0B82C(v20, v21, &v44);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v44);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v42) = 2;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v44);

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v37;
        *v37 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);

        (*(v39 + 8))(v5, v41);
      }

      else
      {

        (*(v2 + 8))(v5, v41);
      }

      v0 = v40;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    [v9 setAdjustsFontForContentSizeCategory_];
    [v9 setNumberOfLines_];
    [v9 setLineBreakMode_];
    LODWORD(v33) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v33];
    v34 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v35 = v7;
  return v8;
}