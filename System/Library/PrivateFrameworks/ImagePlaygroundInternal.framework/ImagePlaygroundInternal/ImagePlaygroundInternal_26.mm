uint64_t sub_1D2557584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble(0);
  v52 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = a1;
  v50 = &v48 - v11;
  v56 = v12;
  v13 = 0;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
LABEL_16:
    v28 = v49;
    v29 = v51;
    sub_1D2565084(*(v49 + 48) + *(v52 + 72) * v22, v51, type metadata accessor for Bubble);
    v30 = *(v28 + 56) + 32 * v22;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8);
    v32 = (v56 + *(v31 + 48));
    v33 = *v30;
    v54 = *(v30 + 16);
    v55 = v33;
    sub_1D25650EC(v29, v56, type metadata accessor for Bubble);
    v34 = v54;
    *v32 = v55;
    v32[1] = v34;
    v25 = v56;
    (*(*(v31 - 8) + 56))(v56, 0, 1, v31);
LABEL_17:
    v35 = v25;
    v36 = v50;
    sub_1D22EC9BC(v35, v50, &qword_1EC6DDDD0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = (v36 + *(v37 + 48));
      v41 = v36;
      v42 = v53;
      sub_1D25650EC(v41, v53, type metadata accessor for Bubble);
      v43 = *v40;
      v54 = v40[1];
      v55 = v43;
      v44 = sub_1D25D0908(v42);
      v46 = v45;
      result = sub_1D2565154(v42, type metadata accessor for Bubble);
      if (v46 & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(*(a2 + 56) + 32 * v44), v55), vceqq_f64(*(*(a2 + 56) + 32 * v44 + 16), v54)))))
      {
        continue;
      }
    }

    return v39;
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v25 = v56;
  while (1)
  {
    v26 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8);
      (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
      v19 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v27 = *(v15 + 8 * v26);
    ++v13;
    if (v27)
    {
      v19 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v13 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25579DC(uint64_t a1, uint64_t a2)
{
  v59 = sub_1D2871818();
  v54 = *(v59 - 8);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v55 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE08);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v49 - v10;
  v12 = 0;
  v50 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v49[0] = v14;
  v49[1] = v54 + 16;
  v56 = v11;
  v57 = (v54 + 32);
  v51 = (v54 + 8);
  while (v18)
  {
    v58 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_17:
    v26 = v50;
    v27 = v54;
    (*(v54 + 16))(v52, *(v50 + 48) + *(v54 + 72) * v20, v59);
    v28 = (*(v26 + 56) + 16 * v20);
    v30 = *v28;
    v29 = v28[1];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10);
    v32 = (v56 + *(v31 + 48));
    v23 = v56;
    (*(v27 + 32))();
    *v32 = v30;
    v32[1] = v29;
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
    sub_1D2870F68();
LABEL_18:
    v33 = v53;
    sub_1D22EC9BC(v23, v53, &qword_1EC6DDE08);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = (v33 + *(v34 + 48));
    v38 = v55;
    v39 = v59;
    (*v57)(v55, v33, v59);
    v40 = *v37;
    v41 = v37[1];
    v42 = sub_1D25D064C(v38);
    v44 = v43;
    (*v51)(v38, v39);
    if ((v44 & 1) == 0)
    {

      return 0;
    }

    v45 = (*(a2 + 56) + 16 * v42);
    if (*v45 == v40 && v45[1] == v41)
    {

      v18 = v58;
    }

    else
    {
      v47 = sub_1D2879618();

      v18 = v58;
      if ((v47 & 1) == 0)
      {
        return v36;
      }
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  v23 = v56;
  while (1)
  {
    v24 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v58 = 0;
      v12 = v22;
      goto LABEL_18;
    }

    v25 = *(v49[0] + 8 * v24);
    ++v12;
    if (v25)
    {
      v58 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v12 = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id sub_1D2557E9C()
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  swift_weakInit();
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache] = sub_1D25D67D4(v2);
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache] = sub_1D25D6A20(v2);
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles] = v2;
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople] = v2;
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople] = v2;
  type metadata accessor for PhotosFaceCropFetcher();
  v3 = swift_allocObject();
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v3[1] = vdupq_n_s64(0x4080000000000000uLL);
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher] = v3;
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask] = 0;
  v3[2].i64[0] = v6;
  *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations] = v2;
  v7 = &v0[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval_constants];
  *v7 = xmmword_1D2893540;
  *(v7 + 1) = xmmword_1D2893550;
  *(v7 + 4) = 300;
  sub_1D2871A18();
  sub_1D2870F78();
  swift_weakDestroy();
  swift_weakInit();

  v11.receiver = v0;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C6CA0();

    v9 = _SystemPhotoLibrary.photoLibrary.getter();

    if (v9)
    {
      [v9 registerChangeObserver_];
    }
  }

  return v8;
}

uint64_t sub_1D2558100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults;
  v4 = sub_1D2870F68();
  v5 = sub_1D2339200(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }
}

uint64_t sub_1D255822C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1D2870F68();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }
}

uint64_t sub_1D255834C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }
}

uint64_t sub_1D2558458(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v4 = sub_1D2878698();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1D25585B8()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return swift_weakLoadStrong();
}

uint64_t sub_1D2558634@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

void *sub_1D255873C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = type metadata accessor for CharacterAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v23[0] = v0;
  sub_1D2564338();
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = (v6 + 56);
  v14 = (v6 + 48);
  v20[1] = v10;
  sub_1D2870F68();
  v15 = MEMORY[0x1E69E7CC0];
  v21 = v6;
  do
  {
    sub_1D22D7044(v12, v23);
    sub_1D227268C(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    v16 = swift_dynamicCast();
    (*v13)(v4, v16 ^ 1u, 1, v5);
    if ((*v14)(v4, 1, v5) == 1)
    {
      sub_1D22BD238(v4, &unk_1EC6DDDA0);
    }

    else
    {
      sub_1D25650EC(v4, v8, type metadata accessor for CharacterAsset);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D27CCE9C(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1D27CCE9C(v17 > 1, v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      sub_1D25650EC(v8, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for CharacterAsset);
    }

    v12 += 40;
    --v11;
  }

  while (v11);

  return v15;
}

uint64_t sub_1D2558A70()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D2558AF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  return sub_1D2870F68();
}

uint64_t sub_1D2558B94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v33 = type metadata accessor for PhotosPersonAsset();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v34 = type metadata accessor for CharacterAsset();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v17 = sub_1D2612D44();
    goto LABEL_8;
  }

  v32 = v7;
  if (qword_1EC6D8D28 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EC6DF020);
    v16 = qword_1EC6DF028;
    v15 = qword_1EC6DF030;
    sub_1D2870F68();
    os_unfair_lock_unlock(&dword_1EC6DF020);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D287F500;
      *(v17 + 32) = v16;
      *(v17 + 40) = v15;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v7 = v32;
LABEL_8:
    v32 = *(v17 + 16);
    if (!v32)
    {
      break;
    }

    v29 = v9;
    v31 = a2;
    v18 = 0;
    v9 = (v13 + 48);
    a2 = v7 + 48;
    v19 = (v17 + 40);
    while (v18 < *(v17 + 16))
    {
      v13 = *(v19 - 1);
      v20 = *v19;
      sub_1D2870F68();
      sub_1D2559014(v13, v20, 0, v12);
      if ((*v9)(v12, 1, v34) != 1)
      {

        v23 = type metadata accessor for CharacterAsset;
        v24 = v30;
        sub_1D25650EC(v12, v30, type metadata accessor for CharacterAsset);
        v25 = &protocol witness table for CharacterAsset;
        v26 = v31;
        v27 = v34;
LABEL_20:
        v26[3] = v27;
        v26[4] = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        return sub_1D25650EC(v24, boxed_opaque_existential_1, v23);
      }

      sub_1D22BD238(v12, &unk_1EC6DDDA0);
      sub_1D2559398(v13, v20, v6);

      if ((*a2)(v6, 1, v33) != 1)
      {

        v23 = type metadata accessor for PhotosPersonAsset;
        v24 = v29;
        sub_1D25650EC(v6, v29, type metadata accessor for PhotosPersonAsset);
        v25 = &protocol witness table for PhotosPersonAsset;
        v26 = v31;
        v27 = v33;
        goto LABEL_20;
      }

      ++v18;
      sub_1D22BD238(v6, &unk_1EC6DDDC0);
      v19 += 2;
      if (v32 == v18)
      {

        v22 = v31;
        v31[4] = 0;
        *v22 = 0u;
        *(v22 + 1) = 0u;
        return result;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_1D2559014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CharacterAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D255873C();
  v13 = result;
  v26 = a4;
  if (a3)
  {
    swift_getKeyPath();
    v32 = v4;
    sub_1D2564338();
    sub_1D28719E8();

    result = swift_weakLoadStrong();
    if (result)
    {

      sub_1D23C7FA8();

      v13 = sub_1D26217A0();
    }
  }

  v27 = v13[2];
  if (v27)
  {
    v14 = 0;
    v28 = a1;
    while (v14 < v13[2])
    {
      sub_1D2565084(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v11, type metadata accessor for CharacterAsset);
      v32 = 0;
      v33 = 0xE000000000000000;
      if (v11[*(v8 + 24)] == 3)
      {
        v15 = 0x6669636570736E75;
        v16 = 0xEB00000000646569;
      }

      else
      {
        v15 = sub_1D2873768();
        v16 = v17;
      }

      type metadata accessor for CharacterRecipe();
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
      v20 = v19;
      v30 = v15;
      v31 = v16;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v18, v20);

      MEMORY[0x1D38A0C50](v30, v31);

      MEMORY[0x1D38A0C50](45, 0xE100000000000000);
      if (v11[*(v8 + 28)])
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v11[*(v8 + 28)])
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      MEMORY[0x1D38A0C50](v21, v22);

      if (v32 == v28 && v33 == v29)
      {

LABEL_22:

        v25 = v26;
        sub_1D25650EC(v11, v26, type metadata accessor for CharacterAsset);
        v24 = 0;
        return (*(v9 + 56))(v25, v24, 1, v8);
      }

      v23 = sub_1D2879618();

      if (v23)
      {
        goto LABEL_22;
      }

      ++v14;
      result = sub_1D2565154(v11, type metadata accessor for CharacterAsset);
      if (v27 == v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v24 = 1;
    v25 = v26;
    return (*(v9 + 56))(v25, v24, 1, v8);
  }

  return result;
}

void sub_1D2559398(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for PhotosPersonAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  swift_getKeyPath();
  v39 = v3;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
LABEL_20:
    v31 = 1;
LABEL_21:
    (*(v9 + 56))(a3, v31, 1, v8);
    return;
  }

  v15 = sub_1D23C7B7C();

  if (sub_1D22BF738())
  {
LABEL_19:

    goto LABEL_20;
  }

  v33[0] = v14;
  v33[1] = v15;
  v34 = v8;
  v35 = a3;
  v16 = sub_1D2554D28();
  v17 = v16;
  v18 = v16[2];
  if (!v18)
  {
LABEL_18:

    v8 = v34;
    a3 = v35;
    goto LABEL_19;
  }

  v19 = 0;
  v38 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v19 < v17[2])
  {
    sub_1D2565084(&v38[*(v9 + 72) * v19], v11, type metadata accessor for PhotosPersonAsset);
    v21 = *(v11 + 7);
    if (!v21)
    {
      v20 = sub_1D2871818();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
LABEL_6:
      sub_1D22BD238(v7, &qword_1EC6D8F70);
      goto LABEL_7;
    }

    v22 = v21;
    v23 = [v22 localIdentifier];
    if (!v23)
    {
      sub_1D28780A8();
      v23 = sub_1D2878068();
    }

    v24 = [objc_opt_self() uuidFromLocalIdentifier_];

    if (!v24)
    {
      goto LABEL_25;
    }

    sub_1D28780A8();

    sub_1D28717A8();

    v25 = sub_1D2871818();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      goto LABEL_6;
    }

    v27 = sub_1D28717B8();
    v29 = v28;
    (*(v26 + 8))(v7, v25);
    if (v27 == v37 && v29 == v36)
    {

      goto LABEL_23;
    }

    v30 = sub_1D2879618();

    if (v30)
    {

LABEL_23:
      v32 = v33[0];
      sub_1D25650EC(v11, v33[0], type metadata accessor for PhotosPersonAsset);
      a3 = v35;
      sub_1D25650EC(v32, v35, type metadata accessor for PhotosPersonAsset);
      v31 = 0;
      v8 = v34;
      goto LABEL_21;
    }

LABEL_7:
    ++v19;
    sub_1D2565154(v11, type metadata accessor for PhotosPersonAsset);
    if (v18 == v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1D255983C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  v5 = sub_1D2873CB8();
  *(v3 + 320) = v5;
  *(v3 + 328) = *(v5 - 8);
  *(v3 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v6 = type metadata accessor for PhotosPersonImage();
  *(v3 + 360) = v6;
  *(v3 + 368) = *(v6 - 8);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  sub_1D2878568();
  *(v3 + 392) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v3 + 400) = v10;
  *(v3 + 408) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D25599F0, v10, v9);
}

uint64_t sub_1D25599F0()
{
  v1 = v0[39];
  swift_getKeyPath();
  v0[52] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v0[32] = v1;
  v0[53] = sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v2 = _SystemPhotoLibrary.photoLibrary.getter(), v0[54] = v2, , v2))
  {
    v3 = type metadata accessor for FaceFetcher();
    v4 = v0[4];
    v5 = v0[5];
    v0[55] = v3;
    v0[56] = v4;
    v0[57] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D2559B8C, 0, 0);
  }

  else
  {
    v6 = v0[45];
    v7 = v0[46];
    v8 = v0[38];

    (*(v7 + 56))(v8, 1, 1, v6);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D2559B8C()
{
  v1 = *(v0 + 456);
  v7 = *(v0 + 440);
  v2 = *(v0 + 432);
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDB0);
  *v4 = v0;
  v4[1] = sub_1D2559CB4;

  return MEMORY[0x1EEE6DDE0](v0 + 264, 0, 0, 0xD00000000000001CLL, 0x80000001D28BAA00, sub_1D2564E20, v3, v5);
}

uint64_t sub_1D2559CB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2559DCC, 0, 0);
}

uint64_t sub_1D2559DEC()
{
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 488) = v2;
    *v2 = v0;
    v2[1] = sub_1D255A0A0;
    v3 = *(v0 + 304);

    return sub_1D2560AE0(v3, v1);
  }

  v5 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 272) = v5;
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  *(v0 + 496) = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16))
  {
    sub_1D2870F68();
    v8 = sub_1D25D0770((v0 + 16));
    if (v9)
    {
      v10 = v8;
      v11 = *(v0 + 432);
      v12 = *(v0 + 384);
      v13 = *(v0 + 360);
      v14 = *(v0 + 368);
      v15 = *(v0 + 304);

      sub_1D2565084(*(v7 + 56) + *(v14 + 72) * v10, v12, type metadata accessor for PhotosPersonImage);

      sub_1D25650EC(v12, v15, type metadata accessor for PhotosPersonImage);
      (*(v14 + 56))(v15, 0, 1, v13);

      v16 = *(v0 + 8);

      return v16();
    }
  }

  v17 = *(v0 + 432);
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_1D255A268;
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);

  return sub_1D268CC84(v20, v19, v17);
}

uint64_t sub_1D255A0A0()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A1C0, v3, v2);
}

uint64_t sub_1D255A1C0()
{
  v1 = v0[60];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D255A268(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 512) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A390, v4, v3);
}

uint64_t sub_1D255A390()
{
  v21 = v0;
  v1 = v0[64];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[65] = v2;
    *v2 = v0;
    v2[1] = sub_1D255A620;
    v3 = v0[44];

    return sub_1D2560AE0(v3, v1);
  }

  else
  {

    sub_1D28726B8();
    sub_1D22D63B0((v0 + 2), (v0 + 10));
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    sub_1D22D640C((v0 + 2));
    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[56];
      v7 = v0[57];
      v9 = v0[54];
      v10 = v0[41];
      v19 = v0[42];
      v11 = v0[40];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D23D7C84(v8, v7, &v20);
      _os_log_impl(&dword_1D226E000, v5, v6, "Filtering out person with no face suitable for generation, person id: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);

      (*(v10 + 8))(v19, v11);
    }

    else
    {
      v14 = v0[54];
      v16 = v0[41];
      v15 = v0[42];
      v17 = v0[40];

      (*(v16 + 8))(v15, v17);
    }

    (*(v0[46] + 56))(v0[38], 1, 1, v0[45]);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1D255A620()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A740, v3, v2);
}

uint64_t sub_1D255A740()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    v7 = *(v0 + 352);
    v8 = *(v0 + 304);

    sub_1D22BD238(v7, &qword_1EC6DDD60);
    (*(v6 + 56))(v8, 1, 1, v5);
  }

  else
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v11 = *(v0 + 360);
    v12 = *(v0 + 344);
    v13 = *(v0 + 312);
    v18 = *(v0 + 304);
    v19 = *(v0 + 512);
    v17 = *(v0 + 432);
    sub_1D25650EC(*(v0 + 352), v10, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v10, v12, type metadata accessor for PhotosPersonImage);
    v14 = *(v9 + 56);
    v14(v12, 0, 1, v11);
    swift_getKeyPath();
    *(v0 + 280) = v13;
    sub_1D22D63B0(v0 + 16, v0 + 144);
    sub_1D28719E8();

    *(v0 + 288) = v13;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D25CE480(v12, (v0 + 16));
    swift_endAccess();
    *(v0 + 296) = v13;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D25650EC(v10, v18, type metadata accessor for PhotosPersonImage);
    v14(v18, 0, 1, v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1D255AA0C(_OWORD *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v10 = a1[1];
  v15[0] = *a1;
  v15[1] = v10;
  v11 = a1[3];
  v15[2] = a1[2];
  v15[3] = v11;
  swift_getKeyPath();
  v14[1] = v3;
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v12 = _SystemPhotoLibrary.photoLibrary.getter(), v13 = , v12))
  {
    MEMORY[0x1EEE9AC00](v13);
    LOBYTE(v14[-4]) = a2 & 1;
    v14[-3] = v15;
    v14[-2] = v12;
    v14[-1] = v3;
    type metadata accessor for PhotosPersonAsset();
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
    sub_1D2878678();
  }

  else
  {
    type metadata accessor for PhotosPersonAsset();
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
    sub_1D2878678();
  }
}

uint64_t sub_1D255AC68@<X0>(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for PhotosPersonImage();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v22 = *a1;
  v23 = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v24 = a1[2];
  v25 = v12;
  v21[0] = v14;
  v21[1] = v13;
  v15 = a1[3];
  v21[2] = a1[2];
  v21[3] = v15;
  sub_1D255AEC8(v21, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DDD60);
    v16 = type metadata accessor for PhotosPersonAsset();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_1D25650EC(v6, v10, type metadata accessor for PhotosPersonImage);
    v18 = type metadata accessor for PhotosPersonAsset();
    sub_1D25650EC(v10, a2 + v18[5], type metadata accessor for PhotosPersonImage);
    v19 = v23;
    *a2 = v22;
    a2[1] = v19;
    v20 = v25;
    a2[2] = v24;
    a2[3] = v20;
    *(a2 + v18[6]) = 1;
    *(a2 + v18[7]) = 0;
    (*(*(v18 - 1) + 56))(a2, 0, 1, v18);
    return sub_1D22D63B0(&v22, v21);
  }
}

uint64_t sub_1D255AEC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = type metadata accessor for PhotosPersonImage();
  v6 = *(v38 - 8);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v35 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = a1[1];
  v40 = *a1;
  v41 = v16;
  v17 = a1[3];
  v42 = a1[2];
  v43 = v17;
  swift_getKeyPath();
  v39 = v2;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong() || (sub_1D23C6CA0(), , v18 = _SystemPhotoLibrary.photoLibrary.getter(), , !v18))
  {
LABEL_10:
    swift_getKeyPath();
    v39 = v3;
    sub_1D28719E8();

    v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
    swift_beginAccess();
    v28 = *(v3 + v27);
    if (*(v28 + 16))
    {
      sub_1D2870F68();
      v29 = sub_1D25D0770(&v40);
      if (v30)
      {
        v31 = v37;
        sub_1D2565084(*(v28 + 56) + *(v6 + 72) * v29, v37, type metadata accessor for PhotosPersonImage);

        v32 = v36;
        sub_1D25650EC(v31, v36, type metadata accessor for PhotosPersonImage);
        v26 = v32;
        goto LABEL_13;
      }
    }

    v33 = 1;
    return (*(v6 + 56))(a2, v33, 1, v38);
  }

  v19 = sub_1D2691754(v41, *(&v41 + 1), v18);
  if (!v19)
  {
LABEL_9:

    goto LABEL_10;
  }

  v20 = v19;
  v35 = v13;
  swift_getKeyPath();
  v39 = v2;
  sub_1D28719E8();

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1D2870F68();
  v23 = sub_1D25D0720(v20);
  if ((v24 & 1) == 0)
  {

    goto LABEL_8;
  }

  v25 = v35;
  sub_1D2565084(*(v22 + 56) + *(v6 + 72) * v23, v35, type metadata accessor for PhotosPersonImage);

  sub_1D25650EC(v25, v15, type metadata accessor for PhotosPersonImage);
  v26 = v15;
LABEL_13:
  sub_1D25650EC(v26, a2, type metadata accessor for PhotosPersonImage);
  v33 = 0;
  return (*(v6 + 56))(a2, v33, 1, v38);
}

uint64_t sub_1D255B298(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  (*(v8 + 16))(&v18[-v10], a1, v7, v9);
  swift_getKeyPath();
  v22 = a2;
  sub_1D2564338();
  sub_1D28719E8();

  v22 = a2;
  swift_getKeyPath();
  sub_1D2871A08();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
  v13 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1D27CD384(0, v13[2] + 1, 1, v13);
    *(a2 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1D27CD384(v15 > 1, v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v11, v7);
  *(a2 + v12) = v13;
  v22 = a2;
  swift_getKeyPath();
  sub_1D28719F8();

  return sub_1D255B4E8(v19 & 1, v20, v21);
}

uint64_t sub_1D255B4E8(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  sub_1D2870F68();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();

  v17 = os_log_type_enabled(v15, v16);
  v35 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v36 = v20;
    *v19 = 67109378;
    *(v19 + 4) = a1 & 1;
    *(v19 + 8) = 2080;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      a2 = 0x6E776F6E6B6E55;
      v22 = 0xE700000000000000;
    }

    sub_1D2870F68();
    v23 = sub_1D23D7C84(a2, v22, &v36);

    *(v19 + 10) = v23;
    _os_log_impl(&dword_1D226E000, v15, v16, "loadAllPeopleInBackground, forceReload: %{BOOL}d, caller: %s", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v24 = v21;
    v10 = v34;
    MEMORY[0x1D38A3520](v24, -1, -1);
    v25 = v19;
    v4 = v33;
    MEMORY[0x1D38A3520](v25, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  swift_getKeyPath();
  v36 = v4;
  sub_1D2564338();
  sub_1D28719E8();

  if (*&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask])
  {
    if (v35)
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }
  }

  else
  {
    sub_1D2878588();
    v27 = sub_1D28785F8();
    (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
    sub_1D2878568();
    v28 = v4;
    v29 = sub_1D2878558();
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    v32 = sub_1D22AE01C(0, 0, v10, &unk_1D2893820, v30);
    return sub_1D2558458(v32);
  }

  return result;
}

uint64_t sub_1D255B87C()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D255B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v4[67] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = sub_1D2878568();
  v4[74] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[75] = v8;
  v4[76] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D255BAAC, v8, v7);
}

uint64_t sub_1D255BAAC()
{
  sub_1D28726B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Start load all people task.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = v0[72];
  v5 = v0[69];
  v6 = v0[68];

  v7 = *(v5 + 8);
  v7(v4, v6);
  sub_1D28726B8();
  v8 = sub_1D2873CA8();
  v9 = sub_1D28789F8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v8, v9, "loadAllPeopleInBackground, will reset allPeople and suggestablePeople", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  v11 = v0[71];
  v12 = v0[68];
  v13 = v0[63];

  v7(v11, v12);
  swift_getKeyPath();
  v14 = swift_task_alloc();
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v0[77] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v0[42] = v13;
  v0[78] = sub_1D2564338();
  sub_1D28719D8();

  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v0[57] = v13;
  sub_1D28719D8();
  v0[79] = 0;

  sub_1D28726B8();
  v17 = sub_1D2873CA8();
  v18 = sub_1D28789F8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D226E000, v17, v18, "loadAllPeopleInBackground, did reset allPeople and suggestablePeople", v19, 2u);
    MEMORY[0x1D38A3520](v19, -1, -1);
  }

  v20 = v0[70];
  v21 = v0[68];
  v22 = v0[63];

  v7(v20, v21);
  swift_getKeyPath();
  v0[54] = v22;
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C7044();

    v23 = sub_1D27ED8C8();

    if (v23)
    {
      v24 = v0[63];
      v67 = sub_1D2612D44();
      v0[80] = v67;
      swift_getKeyPath();
      v0[59] = v24;
      sub_1D28719E8();

      v25 = *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles);
      v0[81] = v25;
      swift_getKeyPath();
      v0[60] = v24;
      sub_1D2870F68();
      sub_1D28719E8();

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_1D23C6CA0();

        Strong = _SystemPhotoLibrary.photoLibrary.getter();
      }

      v65 = Strong;
      v0[82] = Strong;
      v27 = v0[63];
      swift_getKeyPath();
      v0[61] = v27;
      sub_1D28719E8();

      if (swift_weakLoadStrong())
      {
        v28 = sub_1D23C7FA8();
      }

      else
      {
        v28 = 0;
      }

      v0[83] = v28;
      v45 = v0[63];
      swift_getKeyPath();
      v0[62] = v45;
      sub_1D28719E8();

      if (swift_weakLoadStrong())
      {
        v46 = sub_1D23C7F70();
      }

      else
      {
        v46 = 0;
      }

      v0[84] = v46;
      v47 = swift_task_alloc();
      v0[85] = v47;
      *v47 = v0;
      v47[1] = sub_1D255C51C;

      return sub_1D286A380(300, 0, v67, v25, v65, v28, v46);
    }
  }

  v29 = v0[79];
  sub_1D28786F8();
  if (v29)
  {

    sub_1D2564808(0);

    v30 = MEMORY[0x1E69E7CC0];
    if (sub_1D28786D8())
    {
LABEL_15:
      v31 = v0[67];
      v32 = v0[63];
      sub_1D2878588();
      v33 = sub_1D28785F8();
      (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
      v34 = v32;
      v35 = sub_1D2878558();
      v36 = swift_allocObject();
      v37 = MEMORY[0x1E69E85E0];
      v36[2] = v35;
      v36[3] = v37;
      v36[4] = v34;
      v38 = sub_1D22AE01C(0, 0, v31, &unk_1D28938A8, v36);
      sub_1D2558458(v38);
LABEL_35:
      sub_1D255D6B4();

      v63 = v0[1];

      return v63();
    }

LABEL_29:
    v48 = v0[63];
    swift_getKeyPath();
    v0[53] = v48;
    sub_1D28719E8();

    v49 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
    v50 = *(v48 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations);
    v51 = *(v50 + 16);
    if (v51)
    {
      v64 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v66 = v48;
      v52 = v0[65];
      v55 = *(v52 + 16);
      v54 = v52 + 16;
      v53 = v55;
      v56 = v50 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
      v57 = *(v54 + 56);
      sub_1D2870F68();
      do
      {
        v58 = v0[66];
        v59 = v0[64];
        v53(v58, v56, v59);
        sub_1D2878518();
        (*(v54 - 8))(v58, v59);
        v56 += v57;
        --v51;
      }

      while (v51);

      v30 = MEMORY[0x1E69E7CC0];
      v49 = v64;
      v48 = v66;
    }

    v60 = v0[63];
    swift_getKeyPath();
    v0[51] = v60;
    sub_1D28719E8();

    v0[50] = v60;
    swift_getKeyPath();
    sub_1D2871A08();

    *(v48 + v49) = v30;

    v0[47] = v60;
    swift_getKeyPath();
    sub_1D28719F8();

    if (*(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
    {
      v61 = v0[63];
      swift_getKeyPath();
      v62 = swift_task_alloc();
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      v0[44] = v61;
      sub_1D28719D8();
    }

    goto LABEL_35;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1D2558100(MEMORY[0x1E69E7CC0]);
  v39 = sub_1D2564940(0, v30[2], 5, v30, 5);
  v0[88] = v39;

  v41 = *(v39 + 16);
  v0[89] = v41;
  v0[90] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  v0[91] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople;
  if (!v41)
  {

    if (sub_1D28786D8())
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v0[93] = 0;
  v0[92] = 0;
  v42 = v0[88];
  if (*(v42 + 16))
  {
    v43 = *(v42 + 32);
    v0[94] = v43;
    sub_1D2870F68();
    v44 = swift_task_alloc();
    v0[95] = v44;
    *v44 = v0;
    v44[1] = sub_1D255CBCC;

    return sub_1D255D7FC(v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D255C51C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 656);
  *(v4 + 688) = a1;
  *(v4 + 696) = a2;

  v6 = *(v3 + 608);
  v7 = *(v3 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D255C6E8, v7, v6);
}

uint64_t sub_1D255C6E8()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[79];
  sub_1D28786F8();
  if (v3)
  {

    sub_1D2564808(v2);

LABEL_3:
    v4 = sub_1D28786D8();
    v5 = v0[63];
    if (v4)
    {
      v6 = v0[67];
      sub_1D2878588();
      v7 = sub_1D28785F8();
      (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
      v8 = v5;
      v9 = sub_1D2878558();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      v12 = sub_1D22AE01C(0, 0, v6, &unk_1D28938A8, v10);
      sub_1D2558458(v12);
    }

    else
    {
      swift_getKeyPath();
      v0[53] = v5;
      sub_1D28719E8();

      v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v14 = *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations];
      v15 = *(v14 + 16);
      if (v15)
      {
        v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
        v36 = v5;
        v16 = v0[65];
        v19 = *(v16 + 16);
        v18 = v16 + 16;
        v17 = v19;
        v20 = v14 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v21 = *(v18 + 56);
        sub_1D2870F68();
        do
        {
          v22 = v0[66];
          v23 = v0[64];
          v17(v22, v20, v23);
          sub_1D2878518();
          (*(v18 - 8))(v22, v23);
          v20 += v21;
          --v15;
        }

        while (v15);

        v5 = v36;
        v13 = v35;
      }

      v24 = v0[63];
      swift_getKeyPath();
      v0[51] = v24;
      sub_1D28719E8();

      v0[50] = v24;
      swift_getKeyPath();
      sub_1D2871A08();

      *&v5[v13] = MEMORY[0x1E69E7CC0];

      v0[47] = v24;
      swift_getKeyPath();
      sub_1D28719F8();

      if (*(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
      {
        v25 = v0[63];
        swift_getKeyPath();
        v26 = swift_task_alloc();
        *(v26 + 16) = v25;
        *(v26 + 24) = 0;
        v0[44] = v25;
        sub_1D28719D8();
      }
    }

    sub_1D255D6B4();

    v27 = v0[1];

    return v27();
  }

  if (v2)
  {
    v29 = v1;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if (!v2)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1D2558100(v29);
  v30 = sub_1D2564940(0, v2[2], 5, v2, 5);
  v0[88] = v30;

  v31 = *(v30 + 16);
  v0[89] = v31;
  v0[90] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  v0[91] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople;
  if (!v31)
  {

    goto LABEL_3;
  }

  v0[93] = 0;
  v0[92] = 0;
  v32 = v0[88];
  if (*(v32 + 16))
  {
    v33 = *(v32 + 32);
    v0[94] = v33;
    sub_1D2870F68();
    v34 = swift_task_alloc();
    v0[95] = v34;
    *v34 = v0;
    v34[1] = sub_1D255CBCC;

    return sub_1D255D7FC(v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D255CBCC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 768) = a1;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D255CD18, v4, v3);
}

uint64_t sub_1D255CD18()
{
  v1 = *(v0 + 736);
  sub_1D28786F8();
  v2 = *(v0 + 768);
  if (v1)
  {

LABEL_28:
    v37 = sub_1D28786D8();
    v38 = *(v0 + 504);
    if (v37)
    {
      v39 = *(v0 + 536);
      sub_1D2878588();
      v40 = sub_1D28785F8();
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      v41 = v38;
      v42 = sub_1D2878558();
      v43 = swift_allocObject();
      v44 = MEMORY[0x1E69E85E0];
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v41;
      v45 = sub_1D22AE01C(0, 0, v39, &unk_1D28938A8, v43);
      sub_1D2558458(v45);
    }

    else
    {
      swift_getKeyPath();
      *(v0 + 424) = v38;
      sub_1D28719E8();

      v46 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v47 = *&v38[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations];
      v48 = *(v47 + 16);
      if (v48)
      {
        v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
        v67 = v38;
        v49 = *(v0 + 520);
        v52 = *(v49 + 16);
        v50 = v49 + 16;
        v51 = v52;
        v53 = v47 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
        v54 = *(v50 + 56);
        sub_1D2870F68();
        do
        {
          v55 = *(v0 + 528);
          v56 = *(v0 + 512);
          v51(v55, v53, v56);
          sub_1D2878518();
          (*(v50 - 8))(v55, v56);
          v53 += v54;
          --v48;
        }

        while (v48);

        v46 = v65;
        v38 = v67;
      }

      v57 = *(v0 + 504);
      swift_getKeyPath();
      *(v0 + 408) = v57;
      sub_1D28719E8();

      *(v0 + 400) = v57;
      swift_getKeyPath();
      sub_1D2871A08();

      *&v38[v46] = MEMORY[0x1E69E7CC0];

      *(v0 + 376) = v57;
      swift_getKeyPath();
      sub_1D28719F8();

      if (*(v57 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
      {
        v58 = *(v0 + 504);
        swift_getKeyPath();
        v59 = swift_task_alloc();
        *(v59 + 16) = v58;
        *(v59 + 24) = 0;
        *(v0 + 352) = v58;
        sub_1D28719D8();
      }
    }

    sub_1D255D6B4();

    v60 = *(v0 + 8);

    return v60();
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *(v0 + 344) = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v3, 0);
    v4 = *(v0 + 344);
    v5 = v2 + 32;
    do
    {
      sub_1D2564CE8(v5, v0 + 160);
      sub_1D227268C((v0 + 160), v0 + 208);
      *(v0 + 344) = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D23D85A8((v6 > 1), v7 + 1, 1);
      }

      v8 = *(v0 + 232);
      v9 = *(v0 + 240);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v8);
      v11 = *(v8 - 8);
      v12 = swift_task_alloc();
      (*(v11 + 16))(v12, v10, v8);
      sub_1D2564390(v7, v12, (v0 + 344), v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v0 + 208);

      v4 = *(v0 + 344);
      v5 += 48;
      --v3;
    }

    while (v3);
  }

  v13 = *(v0 + 504);
  swift_getKeyPath();
  *(v0 + 360) = v13;
  sub_1D28719E8();

  *(v0 + 368) = v13;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E728(v4);
  swift_endAccess();
  *(v0 + 384) = v13;
  swift_getKeyPath();
  sub_1D28719F8();

  v15 = *(v2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = 0;
    v18 = *(v0 + 768) + 32;
    while (v17 < *(v2 + 16))
    {
      sub_1D2564CE8(v18, v0 + 112);
      if (*(v0 + 152) == 1)
      {
        v19 = *(v0 + 128);
        *(v0 + 64) = *(v0 + 112);
        *(v0 + 80) = v19;
        *(v0 + 89) = *(v0 + 137);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 392) = v16;
        if ((result & 1) == 0)
        {
          result = sub_1D23D897C(0, *(v16 + 16) + 1, 1);
          v16 = *(v0 + 392);
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1D23D897C((v20 > 1), v21 + 1, 1);
          v16 = *(v0 + 392);
        }

        *(v16 + 16) = v21 + 1;
        v22 = (v16 + 48 * v21);
        v23 = *(v0 + 64);
        v24 = *(v0 + 80);
        *(v22 + 57) = *(v0 + 89);
        v22[2] = v23;
        v22[3] = v24;
      }

      else
      {
        result = sub_1D2564D20(v0 + 112);
      }

      ++v17;
      v18 += 48;
      if (v15 == v17)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_19:

  v25 = *(v16 + 16);
  if (v25)
  {
    *(v0 + 416) = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v25, 0);
    v26 = *(v0 + 416);
    v27 = v16 + 32;
    do
    {
      sub_1D2564CE8(v27, v0 + 16);
      sub_1D227268C((v0 + 16), v0 + 248);
      *(v0 + 416) = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D23D85A8((v28 > 1), v29 + 1, 1);
      }

      v30 = *(v0 + 272);
      v31 = *(v0 + 280);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v30);
      v33 = *(v30 - 8);
      v34 = swift_task_alloc();
      (*(v33 + 16))(v34, v32, v30);
      sub_1D2564390(v29, v34, (v0 + 416), v30, v31);
      __swift_destroy_boxed_opaque_existential_0(v0 + 248);

      v26 = *(v0 + 416);
      v27 += 48;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v0 + 712);
  v35 = *(v0 + 504);
  v36 = *(v0 + 744) + 1;
  swift_getKeyPath();
  *(v0 + 440) = v35;
  sub_1D28719E8();

  *(v0 + 448) = v35;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E728(v26);
  swift_endAccess();
  *(v0 + 464) = v35;
  swift_getKeyPath();
  sub_1D28719F8();

  if (v36 == v66)
  {

    goto LABEL_28;
  }

  v61 = *(v0 + 744) + 1;
  *(v0 + 744) = v61;
  *(v0 + 736) = 0;
  v62 = *(v0 + 704);
  if (v61 >= *(v62 + 16))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v63 = *(v62 + 8 * v61 + 32);
  *(v0 + 752) = v63;
  sub_1D2870F68();
  v64 = swift_task_alloc();
  *(v0 + 760) = v64;
  *v64 = v0;
  v64[1] = sub_1D255CBCC;

  return sub_1D255D7FC(v63);
}

uint64_t sub_1D255D6B4()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = sub_1D28786D8() & 1;
    _os_log_impl(&dword_1D226E000, v4, v5, "End all people task (cancelled: %{BOOL}d).", v6, 8u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D255D7FC(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v2[68] = type metadata accessor for PhotosPersonAsset();
  v2[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v2[70] = swift_task_alloc();
  v3 = type metadata accessor for PhotosPersonImage();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v2[74] = swift_task_alloc();
  v4 = type metadata accessor for CharacterAsset();
  v2[75] = v4;
  v2[76] = *(v4 - 8);
  v2[77] = swift_task_alloc();
  sub_1D2878568();
  v2[78] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[79] = v6;
  v2[80] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D255D9F4, v6, v5);
}

uint64_t sub_1D255D9F4()
{
  v1 = *(*(v0 + 528) + 16);
  *(v0 + 648) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 664) = v3;
      *(v0 + 656) = v2;
      v8 = *(v0 + 608);
      sub_1D2564D70(*(v0 + 528) + 48 * v2 + 32, v0 + 208);
      sub_1D22D7044(v0 + 208, v0 + 448);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABD8);
      v9 = swift_dynamicCast();
      v10 = *(v8 + 56);
      if (v9)
      {
        v11 = *(v0 + 616);
        v12 = *(v0 + 600);
        v13 = *(v0 + 592);
        v10(v13, 0, 1, v12);
        sub_1D25650EC(v13, v11, type metadata accessor for CharacterAsset);
        *(v0 + 376) = v12;
        *(v0 + 384) = &protocol witness table for CharacterAsset;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
        sub_1D2565084(v11, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
        *(v0 + 392) = *(v0 + 248);
        sub_1D2564CE8(v0 + 352, v0 + 400);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D27CD530(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1D27CD530((v15 > 1), v16 + 1, 1, v3);
        }

        v4 = *(v0 + 616);
        sub_1D2564D20(v0 + 352);
        sub_1D2565154(v4, type metadata accessor for CharacterAsset);
        sub_1D2564DCC(v0 + 208);
        *(v3 + 2) = v16 + 1;
        v5 = &v3[48 * v16];
        v6 = *(v0 + 425);
        v7 = *(v0 + 416);
        *(v5 + 2) = *(v0 + 400);
        *(v5 + 3) = v7;
        *(v5 + 57) = v6;
      }

      else
      {
        v17 = *(v0 + 592);
        v10(v17, 1, 1, *(v0 + 600));
        sub_1D22BD238(v17, &unk_1EC6DDDA0);
        sub_1D22D7044(v0 + 208, v0 + 488);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 16);
          v21 = *(v0 + 32);
          *(v0 + 80) = v20;
          *(v0 + 96) = v21;
          v22 = *(v0 + 48);
          v23 = *(v0 + 64);
          *(v0 + 112) = v22;
          *(v0 + 128) = v23;
          *(v0 + 144) = v20;
          *(v0 + 160) = v21;
          *(v0 + 176) = v22;
          *(v0 + 192) = v23;
          v24 = swift_task_alloc();
          *(v0 + 672) = v24;
          *v24 = v0;
          v24[1] = sub_1D255DDAC;
          v25 = *(v0 + 560);

          return sub_1D255983C(v25, (v0 + 144));
        }

        sub_1D2564DCC(v0 + 208);
      }

      v2 = *(v0 + 656) + 1;
      if (v2 == *(v0 + 648))
      {
        goto LABEL_13;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v18 = *(v0 + 8);

  return v18(v3);
}

uint64_t sub_1D255DDAC()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_1D255DECC, v3, v2);
}

uint64_t sub_1D255DECC()
{
  v1 = *(v0 + 560);
  if ((*(*(v0 + 576) + 48))(v1, 1, *(v0 + 568)) == 1)
  {
    sub_1D2564DCC(v0 + 208);
    sub_1D22D640C(v0 + 80);
    sub_1D22BD238(v1, &qword_1EC6DDD60);
    v2 = *(v0 + 664);
  }

  else
  {
    v3 = *(v0 + 584);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    sub_1D25650EC(v1, v3, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v3, v4 + v5[5], type metadata accessor for PhotosPersonImage);
    v6 = *(v0 + 128);
    v8 = *(v0 + 80);
    v7 = *(v0 + 96);
    v4[2] = *(v0 + 112);
    v4[3] = v6;
    *v4 = v8;
    v4[1] = v7;
    *(v4 + v5[6]) = 1;
    *(v4 + v5[7]) = 0;
    *(v0 + 280) = v5;
    *(v0 + 288) = &protocol witness table for PhotosPersonAsset;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_1D2565084(v4, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    *(v0 + 296) = *(v0 + 248);
    sub_1D2564CE8(v0 + 256, v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 664);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1D27CD530(0, *(v2 + 2) + 1, 1, *(v0 + 664));
    }

    v12 = *(v2 + 2);
    v11 = *(v2 + 3);
    if (v12 >= v11 >> 1)
    {
      v2 = sub_1D27CD530((v11 > 1), v12 + 1, 1, v2);
    }

    v13 = *(v0 + 584);
    v14 = *(v0 + 552);
    sub_1D2564D20(v0 + 256);
    sub_1D2565154(v14, type metadata accessor for PhotosPersonAsset);
    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2564DCC(v0 + 208);
    *(v2 + 2) = v12 + 1;
    v15 = &v2[48 * v12];
    v16 = *(v0 + 329);
    v17 = *(v0 + 320);
    *(v15 + 2) = *(v0 + 304);
    *(v15 + 3) = v17;
    *(v15 + 57) = v16;
  }

  v18 = *(v0 + 656) + 1;
  if (v18 == *(v0 + 648))
  {
LABEL_9:

    v19 = *(v0 + 8);

    return v19(v2);
  }

  while (1)
  {
    *(v0 + 664) = v2;
    *(v0 + 656) = v18;
    v21 = *(v0 + 608);
    sub_1D2564D70(*(v0 + 528) + 48 * v18 + 32, v0 + 208);
    sub_1D22D7044(v0 + 208, v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABD8);
    v22 = swift_dynamicCast();
    v23 = *(v21 + 56);
    if (v22)
    {
      v25 = *(v0 + 616);
      v26 = *(v0 + 600);
      v27 = *(v0 + 592);
      v23(v27, 0, 1, v26);
      sub_1D25650EC(v27, v25, type metadata accessor for CharacterAsset);
      *(v0 + 376) = v26;
      *(v0 + 384) = &protocol witness table for CharacterAsset;
      v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
      sub_1D2565084(v25, v28, type metadata accessor for CharacterAsset);
      *(v0 + 392) = *(v0 + 248);
      sub_1D2564CE8(v0 + 352, v0 + 400);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D27CD530(0, *(v2 + 2) + 1, 1, v2);
      }

      v30 = *(v2 + 2);
      v29 = *(v2 + 3);
      if (v30 >= v29 >> 1)
      {
        v2 = sub_1D27CD530((v29 > 1), v30 + 1, 1, v2);
      }

      v31 = *(v0 + 616);
      sub_1D2564D20(v0 + 352);
      sub_1D2565154(v31, type metadata accessor for CharacterAsset);
      sub_1D2564DCC(v0 + 208);
      *(v2 + 2) = v30 + 1;
      v32 = &v2[48 * v30];
      v34 = *(v0 + 400);
      v33 = *(v0 + 416);
      *(v32 + 57) = *(v0 + 425);
      *(v32 + 2) = v34;
      *(v32 + 3) = v33;
      goto LABEL_15;
    }

    v24 = *(v0 + 592);
    v23(v24, 1, 1, *(v0 + 600));
    sub_1D22BD238(v24, &unk_1EC6DDDA0);
    sub_1D22D7044(v0 + 208, v0 + 488);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1D2564DCC(v0 + 208);
LABEL_15:
    v18 = *(v0 + 656) + 1;
    if (v18 == *(v0 + 648))
    {
      goto LABEL_9;
    }
  }

  v35 = *(v0 + 16);
  v36 = *(v0 + 32);
  *(v0 + 80) = v35;
  *(v0 + 96) = v36;
  v37 = *(v0 + 48);
  v38 = *(v0 + 64);
  *(v0 + 112) = v37;
  *(v0 + 128) = v38;
  *(v0 + 144) = v35;
  *(v0 + 160) = v36;
  *(v0 + 176) = v37;
  *(v0 + 192) = v38;
  v39 = swift_task_alloc();
  *(v0 + 672) = v39;
  *v39 = v0;
  v39[1] = sub_1D255DDAC;
  v40 = *(v0 + 560);

  return sub_1D255983C(v40, (v0 + 144));
}

uint64_t sub_1D255E480()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D255E4F4()
{
  v1[20] = v0;
  v2 = sub_1D2873CB8();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_1D2878568();
  v1[24] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D255E5E8, v4, v3);
}

uint64_t sub_1D255E5E8()
{
  v17 = v0;

  sub_1D28726B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D23D7C84(0x29287465736572, 0xE700000000000000, &v16);
    _os_log_impl(&dword_1D226E000, v1, v2, "PeopleRetrieval: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v9 = v0[20];
  swift_getKeyPath();
  v0[11] = v9;
  sub_1D2564338();
  sub_1D28719E8();

  v0[12] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  *(v9 + v10) = MEMORY[0x1E69E7CC0];

  v0[13] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[14] = v9;
  sub_1D28719E8();

  v0[15] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  swift_beginAccess();
  v12 = MEMORY[0x1E69E7CC8];
  *(v9 + v11) = MEMORY[0x1E69E7CC8];

  v0[16] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[17] = v9;
  sub_1D28719E8();

  v0[18] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  *(v9 + v13) = v12;

  v0[19] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  v14 = v0[1];

  return v14();
}

void sub_1D255E9B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C6CA0();

    v5 = _SystemPhotoLibrary.photoLibrary.getter();

    if (v5)
    {
      v6 = type metadata accessor for PhotosPersonAsset();
      sub_1D2613084(*(a1 + *(v6 + 20)), *(a1 + *(v6 + 20) + 8), v3, v4);
    }
  }
}

uint64_t sub_1D255EA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  *&v34 = v2;
  v12 = sub_1D2564338();
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  result = swift_beginAccess();
  v15 = *(v2 + v13);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return result;
  }

  v28 = a1;
  v29 = v13;
  v30 = v12;
  v31 = v11;
  v32 = v3;
  v17 = v15 + 32;
  result = sub_1D2870F68();
  v18 = 0;
  while (1)
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1D22D7044(v17, &v34);
    sub_1D22D7044(&v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    v19 = type metadata accessor for PhotosPersonAsset();
    v20 = swift_dynamicCast();
    v21 = *(*(v19 - 8) + 56);
    if (!v20)
    {
      v21(v8, 1, 1, v19);
      sub_1D22BD238(v8, &unk_1EC6DDDC0);
      result = __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_4;
    }

    v21(v8, 0, 1, v19);
    v23 = *(v8 + 2);
    v22 = *(v8 + 3);
    sub_1D2870F68();
    sub_1D2565154(v8, type metadata accessor for PhotosPersonAsset);
    if (v23 == v9 && v22 == v10)
    {
      break;
    }

    v24 = sub_1D2879618();

    result = __swift_destroy_boxed_opaque_existential_0(&v34);
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_4:
    ++v18;
    v17 += 40;
    if (v16 == v18)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v34);
LABEL_13:

  swift_getKeyPath();
  v25 = v32;
  *&v34 = v32;
  sub_1D28719E8();

  *&v34 = v25;
  swift_getKeyPath();
  sub_1D2871A08();

  v26 = v29;
  swift_beginAccess();
  sub_1D23BBDBC(v18, &v34);
  __swift_destroy_boxed_opaque_existential_0(&v34);
  swift_endAccess();
  v33[0] = v25;
  swift_getKeyPath();
  sub_1D28719F8();

  v35 = v19;
  v36 = &protocol witness table for PhotosPersonAsset;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_1D2565084(v28, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v33[0] = v25;
  sub_1D28719E8();

  v33[0] = v25;
  swift_getKeyPath();
  sub_1D2871A08();

  result = swift_beginAccess();
  if (*(*(v25 + v26) + 16) >= v18)
  {
    sub_1D227268C(&v34, v33);
    sub_1D278BF14(v18, v18, v33);
    swift_endAccess();
    v33[0] = v25;
    swift_getKeyPath();
    sub_1D28719F8();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D255EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_1D2873CB8();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for PhotosPersonImage();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = type metadata accessor for PhotosPersonAsset();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  sub_1D2878568();
  v4[52] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v4[53] = v9;
  v4[54] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D255F120, v9, v8);
}

uint64_t sub_1D255F120()
{
  v54 = v0;
  v1 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 272) = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  sub_1D23C6CA0();

  v2 = _SystemPhotoLibrary.photoLibrary.getter();
  *(v0 + 440) = v2;

  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = sub_1D28667F0(*(v0 + 288), *(v0 + 296), v2);
  *(v0 + 448) = v3;
  if (!v3)
  {

LABEL_18:

    sub_1D28726B8();
    sub_1D2870F68();
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();

    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 320);
    v34 = *(v0 + 328);
    v36 = *(v0 + 312);
    if (v33)
    {
      v38 = *(v0 + 288);
      v37 = *(v0 + 296);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1D23D7C84(v38, v37, &v53);
      _os_log_impl(&dword_1D226E000, v31, v32, "Failed to find a pair of PHPerson and PHFace from an imported asset with identifier: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1D38A3520](v40, -1, -1);
      MEMORY[0x1D38A3520](v39, -1, -1);
    }

    (*(v35 + 8))(v34, v36);
    (*(*(v0 + 384) + 56))(*(v0 + 280), 1, 1, *(v0 + 376));
    goto LABEL_21;
  }

  v5 = v3;
  *(v0 + 456) = v4;
  v51 = v4;
  v6 = [v4 localIdentifier];
  v7 = sub_1D28780A8();
  v9 = v8;

  v52 = v5;
  v10 = [v5 localIdentifier];
  v11 = sub_1D28780A8();
  v13 = v12;

  sub_1D2613084(v7, v9, v11, v13);

  result = sub_1D2554D28();
  v15 = result;
  v16 = *(result + 16);
  if (!v16)
  {
LABEL_16:
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 280);

    (*(v28 + 56))(v30, 1, 1, v29);
LABEL_21:

    v41 = *(v0 + 8);

    return v41();
  }

  v17 = 0;
  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  v20 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  while (1)
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D2565084(v20 + *(v18 + 72) * v17, *(v0 + 392), type metadata accessor for PhotosPersonAsset);
    if (!*(v19 + 56))
    {
      MEMORY[0x1D38A1860]();
LABEL_7:

      goto LABEL_8;
    }

    v22 = MEMORY[0x1D38A1860](v21);
    v24 = v23;
    v25 = MEMORY[0x1D38A1860]();
    if (!v24)
    {
      goto LABEL_7;
    }

    if (v22 == v25 && v24 == v26)
    {
      break;
    }

    v27 = sub_1D2879618();

    if (v27)
    {
      goto LABEL_25;
    }

LABEL_8:
    ++v17;
    result = sub_1D2565154(*(v0 + 392), type metadata accessor for PhotosPersonAsset);
    if (v16 == v17)
    {
      goto LABEL_16;
    }
  }

LABEL_25:

  v42 = *(v0 + 400);
  v43 = *(v0 + 408);
  sub_1D25650EC(*(v0 + 392), v42, type metadata accessor for PhotosPersonAsset);
  sub_1D25650EC(v42, v43, type metadata accessor for PhotosPersonAsset);
  v45 = v43[2];
  v44 = v43[3];
  v46 = v43[1];
  *(v0 + 16) = *v43;
  *(v0 + 32) = v46;
  *(v0 + 48) = v45;
  *(v0 + 64) = v44;
  v47 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v47;
  v48 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v48;
  sub_1D22D63B0(v0 + 16, v0 + 144);
  v49 = swift_task_alloc();
  *(v0 + 464) = v49;
  *v49 = v0;
  v49[1] = sub_1D255F684;
  v50 = *(v0 + 336);

  return sub_1D255983C(v50, (v0 + 80));
}

uint64_t sub_1D255F684()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D255F7A4, v3, v2);
}

uint64_t sub_1D255F7A4()
{
  v28 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v6 = *(v0 + 440);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v9 = *(v0 + 336);
    v10 = *(v0 + 280);
    sub_1D2565154(*(v0 + 408), type metadata accessor for PhotosPersonAsset);

    sub_1D22D640C(v0 + 16);
    sub_1D22BD238(v9, &qword_1EC6DDD60);
    (*(v8 + 56))(v10, 1, 1, v7);
  }

  else
  {
    v24 = *(v0 + 448);
    v25 = *(v0 + 456);
    v23 = *(v0 + 440);
    v26 = *(v0 + 408);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = *(v0 + 280);
    sub_1D25650EC(*(v0 + 336), v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v13, v14, type metadata accessor for PhotosPersonImage);
    v16 = *(v0 + 64);
    v18 = *(v0 + 16);
    v17 = *(v0 + 32);
    v15[2] = *(v0 + 48);
    v15[3] = v16;
    *v15 = v18;
    v15[1] = v17;
    sub_1D25650EC(v14, v15 + v11[5], type metadata accessor for PhotosPersonImage);
    *(v15 + v11[6]) = 1;
    *(v15 + v11[7]) = 1;
    v19 = *(v0 + 32);
    v27[0] = *(v0 + 16);
    v27[1] = v19;
    v20 = *(v0 + 64);
    v27[2] = *(v0 + 48);
    v27[3] = v20;
    sub_1D22D63B0(v0 + 16, v0 + 208);
    sub_1D255EA98(v15, v27);

    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565154(v26, type metadata accessor for PhotosPersonAsset);
    sub_1D22D640C(v0 + 16);
    (*(v12 + 56))(v15, 0, 1, v11);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D255FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for PhotosPersonImage();
  *(v5 + 320) = v7;
  *(v5 + 328) = *(v7 - 8);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v8 = type metadata accessor for PhotosPersonAsset();
  *(v5 + 352) = v8;
  *(v5 + 360) = *(v8 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = *(a4 + 16);
  *(v5 + 408) = *(a4 + 56);
  sub_1D2878568();
  *(v5 + 416) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v5 + 424) = v10;
  *(v5 + 432) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D255FC14, v10, v9);
}

uint64_t sub_1D255FC14()
{
  v1 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 272) = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    goto LABEL_26;
  }

  sub_1D23C6CA0();

  v2 = _SystemPhotoLibrary.photoLibrary.getter();
  *(v0 + 440) = v2;

  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = sub_1D2691E94(*(v0 + 288), *(v0 + 296), v2);
  *(v0 + 448) = v3;
  if (!v3)
  {

LABEL_26:
    v38 = *(v0 + 352);
    v39 = *(v0 + 360);
    v40 = *(v0 + 280);

    (*(v39 + 56))(v40, 1, 1, v38);
    goto LABEL_27;
  }

  v42 = v3;
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = [v3 localIdentifier];
  v7 = sub_1D28780A8();
  v9 = v8;

  sub_1D2613084(v7, v9, v4, v5);

  result = sub_1D2554D28();
  v11 = result;
  v12 = *(result + 16);
  if (!v12)
  {
LABEL_24:
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v37 = *(v0 + 280);

    (*(v35 + 56))(v37, 1, 1, v36);
LABEL_27:

    v41 = *(v0 + 8);

    return v41();
  }

  v13 = 0;
  v14 = *(v0 + 408);
  v15 = *(v0 + 360);
  v43 = *(v0 + 368);
  v16 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = sub_1D2565084(v16 + *(v15 + 72) * v13, *(v0 + 368), type metadata accessor for PhotosPersonAsset);
    if (!*(v43 + 56))
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      MEMORY[0x1D38A1860](v17);
LABEL_20:
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_7:

      goto LABEL_8;
    }

    v18 = MEMORY[0x1D38A1860](v17);
    v20 = v19;
    if (!v14)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    v21 = v18;
    v22 = MEMORY[0x1D38A1860]();
    if (!v20)
    {
      goto LABEL_20;
    }

    if (!v23)
    {
      goto LABEL_7;
    }

    if (v21 == v22 && v20 == v23)
    {
      break;
    }

    v24 = sub_1D2879618();

    if (v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    ++v13;
    result = sub_1D2565154(*(v0 + 368), type metadata accessor for PhotosPersonAsset);
    if (v12 == v13)
    {
      goto LABEL_24;
    }
  }

LABEL_21:
  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  v27 = *(v0 + 368);

  sub_1D25650EC(v27, v25, type metadata accessor for PhotosPersonAsset);
  sub_1D25650EC(v25, v26, type metadata accessor for PhotosPersonAsset);
  v29 = v26[2];
  v28 = v26[3];
  v30 = v26[1];
  *(v0 + 16) = *v26;
  *(v0 + 32) = v30;
  *(v0 + 48) = v29;
  *(v0 + 64) = v28;
  v31 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v31;
  v32 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v32;
  sub_1D22D63B0(v0 + 16, v0 + 144);
  v33 = swift_task_alloc();
  *(v0 + 456) = v33;
  *v33 = v0;
  v33[1] = sub_1D2560064;
  v34 = *(v0 + 312);

  return sub_1D255983C(v34, (v0 + 80));
}

uint64_t sub_1D2560064()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D2560184, v3, v2);
}

uint64_t sub_1D2560184()
{
  v26 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 440);
    v4 = *(v0 + 448);
    v6 = *(v0 + 352);
    v7 = *(v0 + 360);
    v8 = *(v0 + 312);
    v9 = *(v0 + 280);
    sub_1D2565154(*(v0 + 384), type metadata accessor for PhotosPersonAsset);

    sub_1D22D640C(v0 + 16);
    sub_1D22BD238(v8, &qword_1EC6DDD60);
    (*(v7 + 56))(v9, 1, 1, v6);
  }

  else
  {
    v10 = *(v0 + 440);
    v23 = *(v0 + 448);
    v24 = *(v0 + 384);
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 280);
    sub_1D25650EC(*(v0 + 312), v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v13, v14, type metadata accessor for PhotosPersonImage);
    v16 = *(v0 + 64);
    v18 = *(v0 + 16);
    v17 = *(v0 + 32);
    v15[2] = *(v0 + 48);
    v15[3] = v16;
    *v15 = v18;
    v15[1] = v17;
    sub_1D25650EC(v14, v15 + v11[5], type metadata accessor for PhotosPersonImage);
    *(v15 + v11[6]) = 1;
    *(v15 + v11[7]) = 0;
    v19 = *(v0 + 32);
    v25[0] = *(v0 + 16);
    v25[1] = v19;
    v20 = *(v0 + 64);
    v25[2] = *(v0 + 48);
    v25[3] = v20;
    sub_1D22D63B0(v0 + 16, v0 + 208);
    sub_1D255EA98(v15, v25);

    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565154(v24, type metadata accessor for PhotosPersonAsset);
    sub_1D22D640C(v0 + 16);
    (*(v12 + 56))(v15, 0, 1, v11);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2560400(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1D2878568();
  v3[6] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D256049C, v5, v4);
}

uint64_t sub_1D256049C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v2 = _SystemPhotoLibrary.photoLibrary.getter(), v0[9] = v2, , v2))
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1D2560618;

    return (sub_1D2867170)(v2);
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1D2560618(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D2560740, v4, v3);
}

uint64_t sub_1D2560740()
{
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    v4 = v0[3];
    v3 = v0[4];
    v5 = [v2 localIdentifier];
    v6 = sub_1D28780A8();
    v8 = v7;

    v9 = v6;
    v10 = v0[9];
    if (v9 == v4 && v8 == v3)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_1D2879618();
    }
  }

  else
  {
    v12 = 0;
    v10 = v0[9];
  }

  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_1D2560848()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D25608C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher);
  return sub_1D2870F78();
}

uint64_t sub_1D2560948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask);
  return sub_1D2870F78();
}

uint64_t sub_1D25609CC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return sub_1D2870F68();
}

uint64_t sub_1D2560A54()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719D8();
}

uint64_t sub_1D2560AE0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for PhotosPersonImage();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_1D2878568();
  v3[22] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[23] = v6;
  v3[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2560C34, v6, v5);
}

uint64_t sub_1D2560C34()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[8] = v1;
  v0[25] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v0[26] = sub_1D2564338();
  sub_1D28719E8();

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  v0[27] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[13];
    sub_1D2870F68();
    v5 = sub_1D25D0720(v4);
    if (v6)
    {
      v7 = v5;
      v8 = v0[21];
      v9 = v0[20];
      v10 = v0[18];
      v11 = v0[12];

      sub_1D2565084(*(v3 + 56) + *(v10 + 72) * v7, v9, type metadata accessor for PhotosPersonImage);

      sub_1D25650EC(v9, v8, type metadata accessor for PhotosPersonImage);
      sub_1D25650EC(v8, v11, type metadata accessor for PhotosPersonImage);
      (*(v10 + 56))(v0[12], 0, 1, v0[17]);

      v12 = v0[1];

      return v12();
    }
  }

  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_1D2560E80;
  v15 = v0[16];
  v16 = v0[13];

  return sub_1D256288C(v15, v16);
}

uint64_t sub_1D2560E80()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D2560FA0, v3, v2);
}

uint64_t sub_1D2560FA0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_1D22BD238(v0[16], &qword_1EC6DDD60);
    v5 = *(v4 + 56);
    v6 = 1;
  }

  else
  {
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v17 = v0[12];
    sub_1D25650EC(v0[16], v8, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v8, v11, type metadata accessor for PhotosPersonImage);
    v16 = *(v7 + 56);
    v16(v11, 0, 1, v9);
    swift_getKeyPath();
    v0[9] = v10;
    v15 = v12;
    sub_1D28719E8();

    v0[10] = v10;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D25CE2C8(v11, v15);
    swift_endAccess();
    v0[11] = v10;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D25650EC(v8, v17, type metadata accessor for PhotosPersonImage);
    v5 = v16;
    v6 = 0;
  }

  v5(v0[12], v6, 1, v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D256126C(uint64_t a1, int a2, _OWORD *a3, void *a4, void *a5)
{
  v27 = a2;
  v26 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1D28785F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  sub_1D2878568();
  sub_1D22D63B0(a3, v28);
  v17 = a4;
  v18 = a5;
  v19 = sub_1D2878558();
  v20 = (*(v10 + 80) + 120) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = a3[1];
  *(v21 + 40) = *a3;
  *(v21 + 56) = v22;
  v23 = a3[3];
  *(v21 + 72) = a3[2];
  v24 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v19;
  *(v21 + 24) = v24;
  *(v21 + 32) = v27;
  *(v21 + 88) = v23;
  *(v21 + 104) = v17;
  *(v21 + 112) = v18;
  (*(v10 + 32))(v21 + v20, v12, v9);
  sub_1D22AE01C(0, 0, v15, &unk_1D2893798, v21);
  return sub_1D2878628();
}

uint64_t sub_1D25614E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD88);
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for PhotosPersonAsset();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for PhotosPersonImage();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = sub_1D2878568();
  v8[28] = sub_1D2878558();
  v13 = type metadata accessor for FaceFetcher();
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);
  v8[29] = v13;
  v8[30] = v14;
  v8[31] = v15;
  if (a4)
  {
    v16 = sub_1D25616E4;
  }

  else
  {
    v16 = sub_1D2561CA4;
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t sub_1D25616E4()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = 24;
  *(v3 + 56) = 0;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD90);
  *v4 = v0;
  v4[1] = sub_1D256180C;

  return MEMORY[0x1EEE6DDE0](v0 + 88, 0, 0, 0xD00000000000001BLL, 0x80000001D28BA9E0, sub_1D25651E4, v3, v5);
}

uint64_t sub_1D256180C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2561924, 0, 0);
}

uint64_t sub_1D2561924()
{
  *(v0 + 272) = *(v0 + 88);
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25619A4, v2, v1);
}

uint64_t sub_1D25619A4()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v4 = 32;
    v5 = v2;
    do
    {
      v6 = *(v1 + v4);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v4 += 16;
      --v5;
    }

    while (v5);
    v7 = v20;
    sub_1D23D89F4(0, v2, 0);
    v8 = v3;
    v9 = *(v3 + 16);
    v10 = 40;
    do
    {
      v11 = *(v1 + v10);
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1D23D89F4((v12 > 1), v9 + 1, 1);
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[38] = v8;
  v0[39] = v7;
  if (v7 >> 62)
  {
    result = sub_1D2879368();
    v0[40] = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
    sub_1D2878648();

    v19 = v0[1];

    return v19();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[40] = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  v0[41] = 0;
  v14 = v0[39];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38A1C30](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
  v0[42] = v15;
  v0[43] = 1;
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1D2562264;
  v18 = v0[26];

  return sub_1D2560AE0(v18, v16);
}

uint64_t sub_1D2561CA4()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD90);
  *v4 = v0;
  v4[1] = sub_1D2561DCC;

  return MEMORY[0x1EEE6DDE0](v0 + 80, 0, 0, 0xD00000000000001BLL, 0x80000001D28BA9E0, sub_1D2564628, v3, v5);
}

uint64_t sub_1D2561DCC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2561EE4, 0, 0);
}

uint64_t sub_1D2561EE4()
{
  *(v0 + 296) = *(v0 + 80);
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2561F64, v2, v1);
}

uint64_t sub_1D2561F64()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v4 = 32;
    v5 = v2;
    do
    {
      v6 = *(v1 + v4);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v4 += 16;
      --v5;
    }

    while (v5);
    v7 = v20;
    sub_1D23D89F4(0, v2, 0);
    v8 = v3;
    v9 = *(v3 + 16);
    v10 = 40;
    do
    {
      v11 = *(v1 + v10);
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1D23D89F4((v12 > 1), v9 + 1, 1);
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[38] = v8;
  v0[39] = v7;
  if (v7 >> 62)
  {
    result = sub_1D2879368();
    v0[40] = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
    sub_1D2878648();

    v19 = v0[1];

    return v19();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[40] = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  v0[41] = 0;
  v14 = v0[39];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38A1C30](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
  v0[42] = v15;
  v0[43] = 1;
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1D2562264;
  v18 = v0[26];

  return sub_1D2560AE0(v18, v16);
}

uint64_t sub_1D2562264()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25623A0, v1, v0);
}

id sub_1D25623A0()
{
  v2 = v0 + 25;
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  sub_1D256462C(v0[26], v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[42];
    sub_1D22BD238(v0[26], &qword_1EC6DDD60);
  }

  else
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[19];
    sub_1D25650EC(v0[25], v8, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v8, v9 + *(v10 + 20), type metadata accessor for PhotosPersonImage);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_17:
      result = MEMORY[0x1D38A1C30](v6);
      goto LABEL_12;
    }

    v30 = v0[42];
    v31 = v0[24];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v29 = v0[16];
    v16 = v0[12];
    v17 = *(v0[38] + v0[41] + 32);
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[3];
    v11[2] = v16[2];
    v11[3] = v20;
    *v11 = v18;
    v11[1] = v19;
    *(v11 + *(v13 + 24)) = v17;
    *(v11 + *(v13 + 28)) = 0;
    sub_1D2565084(v11, v12, type metadata accessor for PhotosPersonAsset);
    sub_1D22D63B0(v16, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
    sub_1D2878638();

    (*(v15 + 8))(v14, v29);
    sub_1D2565154(v11, type metadata accessor for PhotosPersonAsset);
    sub_1D2565154(v31, type metadata accessor for PhotosPersonImage);
    v2 = v0 + 26;
  }

  v21 = v0[43];
  v22 = v0[40];
  result = sub_1D22BD238(*v2, &qword_1EC6DDD60);
  if (v21 == v22)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
    sub_1D2878648();

    v24 = v0[1];

    return v24();
  }

  v6 = v0[43];
  v0[41] = v6;
  v25 = v0[39];
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  result = *(v25 + 8 * v6 + 32);
LABEL_12:
  v26 = result;
  v0[42] = result;
  v0[43] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v27 = swift_task_alloc();
  v0[44] = v27;
  *v27 = v0;
  v27[1] = sub_1D2562264;
  v28 = v0[26];

  return sub_1D2560AE0(v28, v26);
}

uint64_t sub_1D2562750()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD80);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  (*(v1 + 104))(&v7 - v3, *MEMORY[0x1E69E8618], v0, v2);
  type metadata accessor for PhotosPersonAsset();
  v5 = sub_1D2878618();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_1D28786B8();
  }

  return result;
}

uint64_t sub_1D256288C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1D2878568();
  v3[7] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D256292C, v5, v4);
}

uint64_t sub_1D256292C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  v0[10] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher);
  sub_1D2870F78();
  v0[11] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v0[12] = v3;
  v0[13] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2562A1C, v3, v2);
}

uint64_t sub_1D2562A1C()
{
  v1 = v0[4];
  v2 = *(v0[10] + 32);
  sub_1D2878CC8();
  v5 = [objc_allocWithZone(MEMORY[0x1E69C3780]) initWithFace:v1 targetSize:v3 displayScale:{v4, v2}];
  v0[14] = v5;
  [v5 setCornerStyle_];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1D2562B28;
  v7 = v0[3];

  return sub_1D268764C(v7, v5);
}

uint64_t sub_1D2562B28()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D2562D24;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D2562C4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2562C4C()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D2562CC4, v1, v2);
}

uint64_t sub_1D2562CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2562D24()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D2562D9C, v1, v2);
}

uint64_t sub_1D2562D9C()
{
  v1 = *(v0 + 24);

  v2 = type metadata accessor for PhotosPersonImage();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for _PeopleRetrieval()
{
  result = qword_1ED8A31F8;
  if (!qword_1ED8A31F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2562FD0()
{
  result = sub_1D2871A28();
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

void sub_1D25630B8(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v2 = a1[3];
  v3[2] = a1[2];
  v3[3] = v2;
  sub_1D255AA0C(v3, 0);
}

void sub_1D25630FC(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v2 = a1[3];
  v3[2] = a1[2];
  v3[3] = v2;
  sub_1D255AA0C(v3, 1);
}

BOOL sub_1D2563140(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_1D26134C8(v4);
}

uint64_t sub_1D25631C0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 96) = a1;
  *(v4 + 32) = *v3;
  *(v4 + 40) = sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2563268, v6, v5);
}

uint64_t sub_1D2563268()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = sub_1D2878558();
  *(v0 + 72) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1D256338C;
  v8 = MEMORY[0x1E69E85E0];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v7, v5, v8, 0xD000000000000022, 0x80000001D28BAA50, sub_1D2564EB0, v6, v9);
}

uint64_t sub_1D256338C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D25634EC, v3, v2);
}

uint64_t sub_1D25634EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D256354C()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719D8();

  return sub_1D255B4E8(1, 0xD000000000000026, 0x80000001D28BAA20);
}

BOOL sub_1D2563614()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return *(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles) + 16) != 0;
}

uint64_t sub_1D2563698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D255E4F4();
}

BOOL sub_1D25637A8()
{
  v0 = sub_1D2554D28()[2];

  return v0 != 0;
}

uint64_t sub_1D25637F0()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D25638A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D2554484(a1);
}

uint64_t sub_1D256393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2553994(a1, a2, a3);
}

uint64_t sub_1D2563A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BC8FC;

  return sub_1D255EF14(a1, a2, a3);
}

uint64_t sub_1D2563AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BDFF8;

  return sub_1D255FA4C(a1, a2, a3, a4);
}

uint64_t sub_1D2563B8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2553898;

  return sub_1D2560400(a1, a2);
}

id sub_1D2563C34@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  result = sub_1D2557E9C();
  *a1 = result;
  return result;
}

uint64_t sub_1D2563C78(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "photoLibraryDidChange", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1D2878568();
  v15 = v2;
  v16 = a1;
  v17 = sub_1D2878558();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v16;
  sub_1D22AE01C(0, 0, v6, &unk_1D2893968, v18);
}

uint64_t sub_1D2563EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1D2873CB8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  sub_1D2878568();
  v5[9] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2563FC4, v8, v7);
}

uint64_t sub_1D2563FC4()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults);
  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38A1C30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_1D2564F80();
      v8 = sub_1D2878DD8();
      if (v8)
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    v9 = v8;

    sub_1D28726B8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D28789F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "photoLibraryDidChange: will call loadAllPeopleInBackground(forceReload: true)", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    v13 = v0[8];
    v14 = v0[5];
    v15 = v0[6];

    v16 = *(v15 + 8);
    v16(v13, v14);
    sub_1D255B4E8(1, 0xD000000000000019, 0x80000001D28BAA80);
    sub_1D28726B8();
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[7];
    v21 = v0[5];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, "photoLibraryDidChange: did call loadAllPeopleInBackground(forceReload: true)", v22, 2u);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    v16(v20, v21);
  }

  else
  {
LABEL_13:
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_1D2564338()
{
  result = qword_1ED8A3208;
  if (!qword_1ED8A3208)
  {
    type metadata accessor for _PeopleRetrieval();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A3208);
  }

  return result;
}

uint64_t sub_1D2564390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D227268C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D2564504(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D25614E8(a1, v6, v7, v8, v1 + 40, v9, v10, v1 + v5);
}

uint64_t sub_1D256462C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25646B0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D25646F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D255B8F8(a1, v4, v5, v6);
}

uint64_t sub_1D2564808(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2564848()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D256488C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D255B8F8(a1, v4, v5, v6);
}

uint64_t sub_1D2564940(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
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

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D89B4(0, v9, 0);
  v35 = v7;
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
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {
        result = sub_1D2870F68();
        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABE8);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 48);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1D23D89B4((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a4[2];
      if (v27 < v26)
      {
        v26 = a4[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {
        result = sub_1D2870F68();
        v29 = a4;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABE8);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 48);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1D23D89B4((v30 > 1), v31 + 1, 1);
        v15 = a5;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1D2564E6C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_1D2870F68();
}

uint64_t sub_1D2564EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2563EC4(a1, v4, v5, v7, v6);
}

unint64_t sub_1D2564F80()
{
  result = qword_1ED89CC40;
  if (!qword_1ED89CC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC40);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2564FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2565028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2565084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25650EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2565154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2565218@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return sub_1D2870F78();
}

uint64_t sub_1D25652C4()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2565390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D22BD1D0(a3, v22 - v9, &qword_1EC6D8E60);
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1D2870F78();
  if (v13 == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D28784F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2878138() + 32;
      sub_1D2870F78();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D25655FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces);
  return result;
}

uint64_t sub_1D25656D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D25657A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1D2565874(uint64_t result)
{
  if (*(v1 + 98) == (result & 1))
  {
    *(v1 + 98) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2565984(uint64_t result)
{
  if (*(v1 + 99) == (result & 1))
  {
    *(v1 + 99) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2565A94@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + 74);
  return result;
}

Swift::Void __swiftcall PlaygroundHomeViewModel.setUndoManager(_:)(NSUndoManager_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);
  if (v4)
  {
    [v4 removeAllActions];
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 16) = isa;
  v5 = isa;
}

uint64_t PlaygroundHomeViewModel.photoGridViewModel.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D2565C20(v0);
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2565C20(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 104);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v15 = *(a1 + 74);
  v4 = *(a1 + 100);
  type metadata accessor for PhotoGridViewModel();
  v5 = swift_allocObject();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = 1;
  *(v5 + 97) = 1;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v7 = sub_1D2871818();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v9 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels) = v10;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v5 + 16) = v2;
  *(v5 + 88) = v3;
  *(v5 + 96) = v4;
  *(v5 + 24) = v15;
  *(v5 + 72) = &protocol witness table for PlaygroundHomeViewModel;
  swift_unknownObjectWeakAssign();
  v11 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC6D8B50;
  v13 = sub_1D2870F78();
  sub_1D2581C34(v13, v12);

  *(v5 + 56) = &off_1F4DCAB08;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t (*PlaygroundHomeViewModel.photoGridViewModel.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = PlaygroundHomeViewModel.photoGridViewModel.getter();
  return sub_1D2565F08;
}

uint64_t sub_1D2565F18()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1D2565F78(v0);
    *(v0 + 32) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2565F78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 104);
  type metadata accessor for DetailViewModel();
  swift_allocObject();
  sub_1D2870F78();
  sub_1D2870F78();
  v3 = sub_1D2719F20(v1, v2);

  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();

  return v3;
}

uint64_t PlaygroundHomeViewModel.composingViewDidAppear.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear);
}

uint64_t sub_1D2566150()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D25661F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 64);
  return sub_1D2870F78();
}

uint64_t sub_1D25662A0(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v3 = sub_1D2878698();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 64) = a1;
}

uint64_t sub_1D256643C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 72);
}

uint64_t sub_1D25664DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1D2566584(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2566694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 74);
  return result;
}

unsigned __int8 *sub_1D2566774(unsigned __int8 *result)
{
  if (*(v1 + 74) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D256687C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v1 + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 112))
  {
    return 0;
  }

  sub_1D2568E18(1u);
  return 1;
}

void (*sub_1D25669B0(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D2566A44;
}

void sub_1D2566A44(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D256687C();
  }

  free(v3);
}

uint64_t PlaygroundHomeViewModel.delegate.getter()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2566B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2566C50()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719D8();
}

uint64_t type metadata accessor for PlaygroundHomeViewModel()
{
  result = qword_1EC6D8A68;
  if (!qword_1EC6D8A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaygroundHomeViewModel.delegate.setter()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2566E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a3;
  swift_unknownObjectWeakAssign();
  return sub_1D256687C();
}

void (*PlaygroundHomeViewModel.delegate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23ImagePlaygroundInternal23PlaygroundHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v4[7] = sub_1D25669B0(v4);
  return sub_1D2567010;
}

void sub_1D2567010(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D28719F8();

  free(v1);
}

uint64_t sub_1D25670A4()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  v2 = *(v1 + 16);
  if (v2 != 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (*(v1 + 17) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , *(v1 + 16) == 2))
    {
      v3 = sub_1D2565F18();
      swift_getKeyPath();
      sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
      sub_1D28719E8();

      v4 = *(v3 + 49);

      LOBYTE(v2) = v4 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1D2567268()
{
  v1 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 48);
  swift_getKeyPath();
  v9 = v4;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v4 + 16) != 1)
  {
    return 1;
  }

  v5 = *(v0 + 16);
  swift_getKeyPath();
  v9 = v5;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D256F368(v5 + v6, v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    return 1;
  }

  sub_1D256F3D0(v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  return 0;
}

uint64_t sub_1D2567450()
{
  sub_1D23C7998();

  v8[3] = &type metadata for FeedbackFeatures;
  v8[4] = sub_1D233EEC8();
  v1 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = *(v0 + 48);
  swift_getKeyPath();
  v8[0] = v3;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  result = 0;
  if (*(v3 + 16) == 2 && (v1 & 1) != 0 && has_internal_diagnostics)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v5 = sub_1D2878A58();
    v6 = sub_1D2878068();
    v7 = [v5 BOOLForKey_];

    return v7 ^ 1;
  }

  return result;
}

uint64_t sub_1D25675F4()
{
  v1 = v0;
  v2 = sub_1D23C7044();
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
  sub_1D28719E8();

  v3 = *(v2 + 17);

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (!*(v4 + 16))
  {
    v5 = 1;
    return v5 & 1;
  }

  if (*(v4 + 16) == 1)
  {
    v5 = sub_1D2300444();
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D256774C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 98);
}

uint64_t sub_1D25677EC()
{
  v1 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v0;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 98))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 16);
    swift_getKeyPath();
    v13 = v8;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
    swift_beginAccess();
    sub_1D256F368(v8 + v9, v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    swift_storeEnumTagMultiPayload();
    v10 = sub_1D233C3CC(v6, v3);
    sub_1D256F3D0(v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    sub_1D256F3D0(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    v7 = v10 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D25679FC()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 112);
}

uint64_t sub_1D2567A9C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 96);
}

uint64_t sub_1D2567B3C(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2567C54()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 97);
}

uint64_t sub_1D2567CF4(uint64_t result)
{
  if (*(v1 + 97) == (result & 1))
  {
    *(v1 + 97) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2567E14()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 99);
}

uint64_t sub_1D2567EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_1D2567F8C(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t PlaygroundHomeViewModel.__allocating_init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7)
{
  v33 = a7;
  v34 = a2;
  v12 = swift_allocObject();
  v32 = *a4;
  LODWORD(a4) = *a3;
  type metadata accessor for NavigationManager();
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1D2871A18();
  *(v12 + 48) = v13;
  type metadata accessor for HomeAnimationCoordinator();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v16 = sub_1D2871818();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v17 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  *(v12 + 56) = v14;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 96) = 0;
  *(v12 + 112) = 1;
  *(v12 + 120) = 0;
  sub_1D2871A18();
  *(v12 + 40) = a1;
  *(v12 + 104) = a6;
  v19 = _s7ManagerCMa();
  swift_allocObject();
  swift_retain_n();
  sub_1D2870F78();
  v35[3] = v19;
  v35[4] = &off_1F4DC2000;
  v35[0] = sub_1D239E2B0(a1, 1);
  type metadata accessor for ComposingViewModel(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  sub_1D2870F78();
  v27 = sub_1D256D120(a1, v26, a6, a4, a5, 0, 0, 0, v20);

  __swift_destroy_boxed_opaque_existential_0(v35);
  *(v12 + 16) = v27;
  swift_getKeyPath();
  v35[0] = v27;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v27 + 40);

  *(v12 + 73) = v20;
  v28 = *(v12 + 16);
  swift_getKeyPath();
  v35[0] = v28;
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v28 + 40);

  *(v12 + 74) = v20;
  v29 = v33;
  *(v12 + 100) = v32;
  *(v12 + 113) = v29;
  if ((a4 - 1) <= 2)
  {
    sub_1D2342864(1u);
  }

  *(*(v12 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = &off_1F4DCAAC0;
  swift_unknownObjectWeakAssign();
  return v12;
}

uint64_t PlaygroundHomeViewModel.init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7)
{
  v8 = v7;
  v34 = a2;
  v32 = *a4;
  v33 = a7;
  v12 = *a3;
  type metadata accessor for NavigationManager();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1D2871A18();
  *(v8 + 48) = v13;
  type metadata accessor for HomeAnimationCoordinator();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v16 = sub_1D2871818();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v17 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  *(v8 + 56) = v14;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 96) = 0;
  *(v8 + 112) = 1;
  *(v8 + 120) = 0;
  sub_1D2871A18();
  *(v8 + 40) = a1;
  *(v8 + 104) = a6;
  v19 = _s7ManagerCMa();
  swift_allocObject();
  swift_retain_n();
  sub_1D2870F78();
  v35[3] = v19;
  v35[4] = &off_1F4DC2000;
  v35[0] = sub_1D239E2B0(a1, 1);
  type metadata accessor for ComposingViewModel(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  sub_1D2870F78();
  v27 = sub_1D256D120(a1, v26, a6, v12, a5, 0, 0, 0, v20);

  __swift_destroy_boxed_opaque_existential_0(v35);
  *(v8 + 16) = v27;
  swift_getKeyPath();
  v35[0] = v27;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v27 + 40);

  *(v8 + 73) = v20;
  v28 = *(v8 + 16);
  swift_getKeyPath();
  v35[0] = v28;
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v28 + 40);

  *(v8 + 74) = v20;
  v29 = v33;
  *(v8 + 100) = v32;
  *(v8 + 113) = v29;
  if ((v12 - 1) <= 2)
  {
    sub_1D2342864(1u);
  }

  *(*(v8 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = &off_1F4DCAAC0;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t PlaygroundHomeViewModel.deinit()
{
  v1 = v0;
  if (*(v0 + 120))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D2878B88();
    swift_unknownObjectRelease();
  }

  sub_1D22729C0(v0 + 80);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal23PlaygroundHomeViewModel___observationRegistrar;
  v3 = sub_1D2871A28();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t PlaygroundHomeViewModel.__deallocating_deinit()
{
  PlaygroundHomeViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PlaygroundHomeViewModel.enterComposing()()
{
  v1 = v0;
  v2 = sub_1D2873C28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1D2873C48();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 48);
  swift_getKeyPath();
  v25 = v12;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v12 + 16) != 1)
  {
    sub_1D28720E8();
    sub_1D2873C38();
    sub_1D2873BF8();
    v13 = sub_1D2873C38();
    v14 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v15 = swift_slowAlloc();
      v23 = v0;
      v16 = v9;
      v17 = v15;
      *v15 = 0;
      v18 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v18, "EnterComposingView", "", v17, 2u);
      v19 = v17;
      v9 = v16;
      v1 = v23;
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v3 + 16))(v5, v8, v2);
    sub_1D2873C88();
    swift_allocObject();
    v20 = sub_1D2873C78();
    (*(v3 + 8))(v8, v2);
    v21 = *(v1 + 16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v23 - 2) = v21;
    *(&v23 - 1) = v20;
    v25 = v21;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D2870F78();
    sub_1D28719D8();

    sub_1D2568E18(1u);

    (*(v24 + 8))(v11, v9);
  }
}

uint64_t sub_1D2568E18(unsigned __int8 a1)
{
  result = sub_1D256A92C(a1);
  if (result)
  {
    if (*(v1 + 96))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
      sub_1D28719D8();

      if ((*(v1 + 97) & 1) == 0)
      {
LABEL_4:
        *(v1 + 97) = 0;
        goto LABEL_7;
      }
    }

    else
    {
      *(v1 + 96) = 0;
      if ((*(v1 + 97) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();

LABEL_7:
    v6 = PlaygroundHomeViewModel.photoGridViewModel.getter();
    if (((a1 == 0) ^ *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled)))
    {
      v7 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v7);
      sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
      sub_1D28719D8();

      if (a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = a1 == 0;

      if (a1)
      {
LABEL_9:
        if (a1 == 2)
        {
          v11 = sub_1D2565F18();
          v12 = *(v1 + 48);
          swift_getKeyPath();
          sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
          sub_1D28719E8();

          if ((*(v11 + 48) ^ (*(v12 + 16) == 0)))
          {
            v13 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v13);
            sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
            sub_1D28719D8();
          }

          else
          {
            *(v11 + 48) = *(v12 + 16) == 0;
          }
        }

        else if (a1 == 1)
        {
          swift_getKeyPath();
          sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
          sub_1D28719E8();

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v8 = *(v1 + 88);
            ObjectType = swift_getObjectType();
            (*(v8 + 24))(v1, ObjectType, v8);
            swift_unknownObjectRelease();
          }
        }

        v14 = *(v1 + 24);
        if ((*(v14 + 97) & 1) == 0)
        {
          *(v14 + 97) = 0;
LABEL_24:
          sub_1D2342864(a1);
          result = *(*(v1 + 104) + 16);
          if (result)
          {
            return [result removeAllActions];
          }

          return result;
        }

LABEL_22:
        v15 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v15);
        sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
        sub_1D2870F78();
        sub_1D28719D8();

        goto LABEL_24;
      }
    }

    v10 = *(v1 + 24);
    if (*(v10 + 97) == 1)
    {
      *(v10 + 97) = 1;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D2569550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  PlaygroundHomeViewModel.enterComposing()();
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_1D22AE01C(0, 0, v4, &unk_1D2893E10, v8);
}

void PlaygroundHomeViewModel.openFile(at:)(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundImage();
  v28 = *(v2 - 1);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = sub_1D2871648();
  sub_1D2871658();
  v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v10 = sub_1D2878068();

  v11 = [v9 initWithContentsOfFile_];

  if (v11)
  {
    v26 = v8;
    v27 = a1;
    v12 = &v7[v2[9]];
    *v12 = 0u;
    v12[1] = 0u;
    *&v7[v2[10]] = xmmword_1D28809A0;
    v13 = v2[11];
    v14 = sub_1D2873AA8();
    (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
    *v7 = v11;
    v7[8] = 2;
    [v11 imageOrientation];
    *(v7 + 6) = sub_1D2878C88();
    *(v7 + 2) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[v2[12]] = 0;
    sub_1D2871808();
    v15 = v29;
    sub_1D2568E18(1u);
    v16 = *(v15 + 2);
    v17 = sub_1D28717B8();
    v19 = v18;
    sub_1D256F368(v7, v4, type metadata accessor for PlaygroundImage);
    sub_1D2878568();
    sub_1D2870F78();
    v20 = sub_1D2878558();
    v21 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v15;
    sub_1D23EEBD4(v4, v22 + v21);
    swift_getKeyPath();
    v30 = v16;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
    {
      KeyPath = swift_getKeyPath();
      v29 = v25;
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v25[-48] = v16;
      *&v25[-40] = v17;
      *&v25[-32] = v19;
      *&v25[-24] = &unk_1D2893AD0;
      *&v25[-16] = v22;
      v30 = v16;
      sub_1D2870F78();
      sub_1D2870F68();
      sub_1D2870F78();
      sub_1D28719D8();

      sub_1D28786B8();
    }

    else
    {
      sub_1D230EA90(v17, v19, &unk_1D2893AD0, v22);
    }

    sub_1D256F3D0(v7, type metadata accessor for PlaygroundImage);
    if (v26)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
LABEL_8:
    sub_1D2871628();
  }
}

uint64_t sub_1D2569B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_1D2878568();
  v4[5] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2569BE4, v6, v5);
}

uint64_t sub_1D2569BE4()
{
  v0[8] = *(v0[2] + 16);
  v0[9] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D2569C7C, v2, v1);
}

uint64_t sub_1D2569C7C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_1D2878558();
  v0[12] = v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1D2569D8C;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0xD000000000000014, 0x80000001D28B0BB0, sub_1D23D4DF4, v4, v7);
}

uint64_t sub_1D2569D8C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D2569EEC, v3, v2);
}

uint64_t sub_1D2569EEC()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D231C8D8, v1, v2);
}

uint64_t sub_1D2569F50()
{
  v1 = sub_1D2877B48();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877B68();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878AF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2877B38();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = sub_1D2877BA8();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - v20;
  result = sub_1D256687C();
  if ((result & 1) == 0)
  {
    if (*(v0 + 120))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D2877B88();
      sub_1D2877BC8();
      v24 = *(v47 + 8);
      v25 = v18;
      v26 = v48;
      v24(v25, v48);
      sub_1D27A194C(v15);
      sub_1D27A18D4(v12);
      MEMORY[0x1D38A16E0](v21, v15, v12, ObjectType);
      swift_unknownObjectRelease();
      v27 = v50;
      v28 = *(v49 + 8);
      v28(v12, v50);
      v28(v15, v27);
      return (v24)(v21, v26);
    }

    else
    {
      v40[1] = sub_1D22BCFD0(0, &unk_1ED89CD20);
      sub_1D22BCFD0(0, &qword_1ED89CD50);
      v40[0] = sub_1D2878AB8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D256F600(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
      v41 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
      sub_1D256F450();
      sub_1D2879088();
      v29 = v40[0];
      v30 = sub_1D2878B08();

      (*(v7 + 8))(v9, v6);
      v31 = swift_getObjectType();
      v32 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D256F4B4;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23DFBA8;
      aBlock[3] = &block_descriptor_24;
      v33 = _Block_copy(aBlock);
      sub_1D2870F78();
      sub_1D27A17E4();
      v34 = v42;
      sub_1D27A17E8();
      sub_1D2878B78();
      _Block_release(v33);
      (*(v45 + 8))(v34, v46);
      (*(v43 + 8))(v5, v44);

      sub_1D2877B88();
      sub_1D2877BC8();
      v35 = v48;
      v36 = *(v47 + 8);
      v36(v18, v48);
      sub_1D27A194C(v15);
      sub_1D27A18D4(v12);
      MEMORY[0x1D38A16E0](v21, v15, v12, v31);
      v37 = *(v49 + 8);
      v38 = v12;
      v39 = v50;
      v37(v38, v50);
      v37(v15, v39);
      v36(v21, v35);
      sub_1D2878B98();
      *(v41 + 120) = v30;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D256A5C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D2870F78();

    sub_1D232DED4();
  }

  return result;
}

uint64_t sub_1D256A634()
{
  v1 = sub_1D2877B38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = sub_1D2877BA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 120))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D2877B78();
    sub_1D27A194C(v7);
    sub_1D27A18D4(v4);
    MEMORY[0x1D38A16E0](v11, v7, v4, ObjectType);
    swift_unknownObjectRelease();
    v13 = *(v2 + 8);
    v13(v4, v1);
    v13(v7, v1);
    (*(v9 + 8))(v11, v8);
  }

  v14 = *(v0 + 16);
  sub_1D23C8400();
  ImageKeyFaceLoader.cancelPrewarm()();

  if (*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v14;
    LOBYTE(v17[-1]) = 0;
    v17[1] = v14;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) = 0;
  }

  return result;
}

uint64_t sub_1D256A92C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 != 1)
  {
    return 1;
  }

  v8 = *(v2 + 48);
  swift_getKeyPath();
  v18 = v8;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v8 + 16) == 1)
  {
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "We can not route from composing to composing", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  swift_getKeyPath();
  v18 = v2;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v2 + 88);
    ObjectType = swift_getObjectType();
    LOBYTE(v12) = (*(v12 + 16))(v2, 1, ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_getKeyPath();
    v17 = v2;
    sub_1D28719E8();

    if ((*(v2 + 74) & 0xFE) != 2)
    {
LABEL_8:
      swift_getKeyPath();
      v17 = v2;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v2 + 88);
        v15 = swift_getObjectType();
        (*(v14 + 24))(v2, v15, v14);
        swift_unknownObjectRelease();
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D256AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1D2878568();
  v5[5] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D256AD24, v7, v6);
}

uint64_t sub_1D256AD24()
{

  sub_1D2568E18(2u);
  v1 = sub_1D2565F18();
  v2 = sub_1D2870F78();
  sub_1D2711A34(v2);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = sub_1D2870F78();
    v3(v4);

    sub_1D22A576C(v3);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D256AE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871FC8();
  LOBYTE(a2) = MEMORY[0x1D389AA00](a2, v9);
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    if (*(v3 + 74) == 5)
    {
      goto LABEL_7;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = v3;
    *(&v16 - 8) = 5;
    v17 = v3;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  }

  else
  {
    v11 = *(v3 + 73);
    if (*(v3 + 74) == v11)
    {
      goto LABEL_7;
    }

    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = v3;
    *(&v16 - 8) = v11;
    v17 = v3;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  }

  sub_1D28719D8();

LABEL_7:
  swift_getKeyPath();
  v17 = v3;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v13 = *(v3 + 74);
  if (*(a1 + 40) == v13)
  {
    return sub_1D22FC8E0();
  }

  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  *(&v16 - 2) = a1;
  *(&v16 - 8) = v13;
  v17 = a1;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D256B210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = a1;
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (*(a1 + 48) == 1)
  {
    swift_getKeyPath();
    v12 = v1;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719E8();

    if (*(v1 + 112) == 1)
    {
      swift_getKeyPath();
      v12 = a1;
      sub_1D28719E8();

      v6 = *(a1 + 16);
      if (v6)
      {
        sub_1D2870F78();
        PlaygroundHomeViewModel.photoGridViewModel.getter();
        v7 = *(*v6 + 160);
        v8 = sub_1D2871818();
        v9 = *(v8 - 8);
        (*(v9 + 16))(v5, v6 + v7, v8);
        (*(v9 + 56))(v5, 0, 1, v8);
        sub_1D257540C(v5);
      }
    }
  }

  return sub_1D2568E18(0);
}

uint64_t sub_1D256B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1D2878568();
  v5[5] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D256F83C, v7, v6);
}

Swift::Void __swiftcall PlaygroundHomeViewModel.photoLibrary(didUpdate:)(Swift::OpaquePointer didUpdate)
{
  v3 = didUpdate._rawValue >> 62;
  if (didUpdate._rawValue >> 62)
  {
    v4 = sub_1D2879368();
  }

  else
  {
    v4 = *((didUpdate._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (((*(v1 + 112) ^ (v4 != 0)) & 1) == 0)
  {
    *(v1 + 112) = v4 != 0;
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v6 = *((didUpdate._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = sub_1D2879368();
LABEL_8:
  sub_1D256B69C(v6);
}

uint64_t sub_1D256B69C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  swift_getKeyPath();
  v14 = v1;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if ((*(v1 + 72) & 1) == 0)
  {
    swift_getKeyPath();
    v14 = v1;
    sub_1D28719E8();

    if (*(v1 + 64))
    {
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      sub_1D28786B8();
    }

    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1D2878568();
    sub_1D2870F78();
    v9 = sub_1D2878558();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = a1;
    v10[5] = v8;

    v12 = sub_1D23C8994(0, 0, v5, &unk_1D2894030, v10);
    return sub_1D25662A0(v12);
  }

  return result;
}

uint64_t sub_1D256B904()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = *(v0 + 48);
  swift_getKeyPath();
  *&v23 = v7;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v7 + 16) == 1)
  {
    sub_1D2870F78();
    v8 = &off_1F4DC0628;
LABEL_5:
    swift_getObjectType();
    v9 = v8[1];
    swift_unknownObjectRetain();
    v10 = v9();
    swift_unknownObjectRelease_n();
    return v10;
  }

  swift_getKeyPath();
  *&v23 = v7;
  sub_1D28719E8();

  if (*(v7 + 16) == 2)
  {
    sub_1D2565F18();
    v8 = &off_1F4DD11D8;
    goto LABEL_5;
  }

  v11 = *(v0 + 40);
  v12 = sub_1D2871818();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_1D2872438();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  type metadata accessor for FeedbackInput();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v10 = swift_allocObject();
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v15 = *MEMORY[0x1E699C2C8];
  v16 = sub_1D2871CD8();
  (*(*(v16 - 8) + 104))(v10 + v14, v15, v16);
  v17 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  sub_1D22EC9BC(v6, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
  sub_1D22EC9BC(v3, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D256F040(&v23, v17);
  swift_endAccess();
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 2;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = 0;
  v18 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = -4;
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  if (*(&v24 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D22BD238(v21, &qword_1EC6DA1F0);
  }

  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  return v10;
}

uint64_t sub_1D256BD7C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
  sub_1D28719E8();

  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = *(v0 + 16);
      swift_getKeyPath();
      sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719E8();

      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
      {
        if (qword_1EC6D8C48 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_1EC6D8C40 == -1)
      {
        goto LABEL_11;
      }

LABEL_14:
      swift_once();
      goto LABEL_11;
    }

    if (qword_1EC6D8C50 != -1)
    {
      goto LABEL_14;
    }
  }

  else if (qword_1EC6D8C38 != -1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v5 = sub_1D2870F68();
  type metadata accessor for TapToRadarManager.LogReason();
  v3 = swift_allocObject();
  *(v3 + 48) = 0xD000000000000010;
  *(v3 + 56) = 0x80000001D28AFBF0;
  *(v3 + 64) = 5459817;
  *(v3 + 72) = 0xE300000000000000;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 16) = 0x2E2E2E726568744FLL;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = xmmword_1D2888230;
  MEMORY[0x1D38A0E30]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return v5;
}

uint64_t sub_1D256C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D256C104, v7, v6);
}

uint64_t sub_1D256C104()
{
  v0[7] = sub_1D23C8560();
  v1 = sub_1D256B904();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1D256C1D4;
  v3 = v0[3];

  return sub_1D242ECF0(v3, v1);
}

uint64_t sub_1D256C1D4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D256C334, v3, v2);
}

uint64_t sub_1D256C334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D256C394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1D23C7998();
  v11 = sub_1D256B904();
  v12 = sub_1D2871CA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_1D22BD1D0(v9, v6, &unk_1EC6DDE50);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v11;
  v16[5] = v10;
  sub_1D22EC9BC(v6, v16 + v15, &unk_1EC6DDE50);
  sub_1D22AE01C(0, 0, v2, &unk_1D2881A78, v16);

  return sub_1D22BD238(v9, &unk_1EC6DDE50);
}

id sub_1D256C634()
{
  v0 = sub_1D23C7998()[4];

  return v0;
}

uint64_t sub_1D256C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1D2879328();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1D2878568();
  v5[11] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D256C768, v8, v7);
}

uint64_t sub_1D256C768()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D256C834;

  return sub_1D233BA38(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D256C834()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_1D256CB40;
  }

  else
  {
    v5 = sub_1D256C9BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D256C9BC()
{
  v1 = v0[6];

  sub_1D279C340(v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 72) == 1)
    {
      *(Strong + 72) = 1;
    }

    else
    {
      v3 = Strong;
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      v0[5] = v3;
      sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
      sub_1D28719D8();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D256CB40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D256CBB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 97);
  return result;
}

uint64_t sub_1D256CC80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
  return result;
}

uint64_t sub_1D256CD58@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D256CE44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2341198;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();
  sub_1D22A576C(v4);
}

uint64_t sub_1D256CFA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D256D050()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D256D120(uint64_t a1, void (*a2)(unint64_t, uint64_t, uint64_t), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v119 = a8;
  v122 = a7;
  v121 = a6;
  v117 = a5;
  v137 = a4;
  v120 = a3;
  v115 = a2;
  v118 = a1;
  v9 = sub_1D2872178();
  v129 = *(v9 - 8);
  v130 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D28728C8();
  v132 = *(v11 - 8);
  v133 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v131 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = &v112 - v14;
  v125 = sub_1D2873CB8();
  v124 = *(v125 - 8);
  v15 = MEMORY[0x1EEE9AC00](v125);
  v134 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v112 - v17;
  v18 = sub_1D2872008();
  v139 = *(v18 - 8);
  v140 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v116 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v112 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA598);
  v22 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v24 = &v112 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v112 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v135 = *(v26 - 8);
  v136 = v26;
  v126 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v112 - v27;
  v29 = sub_1D2871818();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2871DD8();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = _s7ManagerCMa();
  v144 = &off_1F4DC2000;
  v142[0] = v115;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  sub_1D2871DC8();
  (*(v34 + 32))(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio, v36, v33);
  v37 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v38 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  *(v38 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v39 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = -1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentHasSignificantEdits) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) = 3;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  v41 = MEMORY[0x1E69E7CC0];
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground) = sub_1D25D83DC(MEMORY[0x1E69E7CC0]);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers) = sub_1D25D85C4(v41);
  sub_1D2871808();
  (*(v30 + 32))(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger, v32, v29);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedAfterLeavingPlayground) = sub_1D25D83DC(v41);
  v42 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
  *v42 = &unk_1D2881FA8;
  v42[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask) = 0;
  v43 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  *v43 = 0u;
  v43[1] = 0u;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowPromptAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__spotlightAvailabiilyCheckTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles) = sub_1D2871E78();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___errorViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___contextualMenuViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___feedbackSectionViewModel) = 0;
  v44 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext);
  *v44 = 0;
  v44[1] = sub_1D25D87D0(v41);
  v45 = _s16AnalyticsContextVMa(0);
  sub_1D2871808();
  _s16AnalyticsContextV12SessionStateVMa(0);
  sub_1D2871808();
  v46 = *(v45 + 28);
  *(v44 + v46) = sub_1D25D88B0(v41);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet) = 0;
  v47 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
  *v47 = CGRectMake;
  v47[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 0;
  v48 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  *v48 = 0;
  v48[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___viewActions) = 0;
  v49 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  v49[1] = 0;
  v49[2] = 0;
  *v49 = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) = 1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory) = 0;
  v50 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore;
  type metadata accessor for GeneratedPreviewsStore();
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  sub_1D2871A18();
  *(a9 + v50) = v51;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_generativeModelsAvailabilityNotifications) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) = 0;
  v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  v53 = type metadata accessor for PlaygroundImage();
  (*(*(v53 - 8) + 56))(a9 + v52, 1, 1, v53);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarming) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) = 0;
  v54 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__prewarmedDependencies;
  v55 = sub_1D28732B8();
  (*(*(v55 - 8) + 56))(a9 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForConfirmationContinuation;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v58 = *(*(v57 - 8) + 56);
  v58(a9 + v56, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pauseRecipeLoadingForConfirmationContinuation, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForStyleSuggestionContinuation, 1, 1, v57);
  v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue;
  type metadata accessor for AsyncClosureQueue();
  v60 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A8);
  v61 = v127;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8650], v127);
  v62 = v112;
  sub_1D2878608();
  (*(v22 + 8))(v24, v61);
  v63 = *(v135 + 32);
  v127 = v28;
  v115 = v63;
  v63(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream, v28, v136);
  (*(v113 + 32))(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation, v62, v114);
  *(a9 + v59) = v60;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 0;
  v64 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  *v64 = 0;
  v64[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
  sub_1D2871A18();
  v65 = v137;
  *(a9 + 40) = v137;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_forceDarkMode) = v117;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker) = v119;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher) = v118;
  sub_1D22D7044(v142, a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager) = v120;
  swift_unknownObjectRetain();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D22729C0(v38);
  *(v38 + 8) = v122;
  swift_unknownObjectWeakInit();
  v66 = swift_unknownObjectRelease();
  if (v65 - 1 < 4)
  {
    v67 = v138;
    sub_1D24DE0C4();
LABEL_5:
    v68 = v125;
    v69 = v123;
    goto LABEL_6;
  }

  v67 = v138;
  if (v65 - 5 < 2)
  {
    sub_1D2871FC8();
    goto LABEL_5;
  }

  v68 = v125;
  v69 = v123;
  if (v65)
  {
    MEMORY[0x1D389AA70](v66);
  }

  else
  {
    sub_1D2871FD8();
  }

LABEL_6:
  v70 = v140;
  v71 = *(v139 + 16);
  v71(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle, v67, v140);
  v72 = v116;
  v71(v116, v67, v70);
  type metadata accessor for CreationContext();
  swift_allocObject();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context) = CreationContext.init(defaultStyle:)(v72);
  type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  swift_storeEnumTagMultiPayload();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable) = 1;
  sub_1D28741E8();
  swift_allocObject();
  *(a9 + 32) = sub_1D28741D8();
  swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28741A8();

  sub_1D22BCFD0(0, &qword_1ED89CD50);
  sub_1D2870F78();
  v73 = sub_1D2878AB8();
  sub_1D28741B8();

  sub_1D28726A8();
  v74 = sub_1D2873CA8();
  v75 = sub_1D28789F8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1D226E000, v74, v75, "Creating Spotlight models availability check", v76, 2u);
    MEMORY[0x1D38A3520](v76, -1, -1);
  }

  v77 = *(v124 + 8);
  v77(v69, v68);
  v78 = sub_1D28785F8();
  v79 = *(*(v78 - 8) + 56);
  v80 = v141;
  v79(v141, 1, 1, v78);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = 0;
  v82[4] = v81;
  v83 = sub_1D2565390(0, 0, v80, &unk_1D2894090, v82);
  sub_1D22BD238(v80, &qword_1EC6D8E60);
  sub_1D22FA4FC(v83);
  sub_1D28726A8();
  v84 = sub_1D2873CA8();
  v85 = sub_1D28789F8();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v125 = v77;
    v87 = v86;
    *v86 = 0;
    _os_log_impl(&dword_1D226E000, v84, v85, "Fetching current GMS availability", v86, 2u);
    v77 = v125;
    MEMORY[0x1D38A3520](v87, -1, -1);
  }

  v77(v134, v68);
  if (sub_1D27D8E2C() & 1) != 0 || (sub_1D27D8EFC() & 1) != 0 || (sub_1D27D8FCC())
  {
    v88 = MEMORY[0x1E696E438];
  }

  else
  {
    v88 = MEMORY[0x1E696E430];
  }

  v90 = v128;
  v89 = v129;
  v91 = v130;
  (*(v129 + 104))(v128, *v88, v130);
  sub_1D2872188();
  v92 = v131;
  sub_1D2872138();
  (*(v89 + 8))(v90, v91);
  sub_1D22FA6A0(v92);
  v93 = swift_allocObject();
  swift_weakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v137;
  sub_1D2870F78();
  v95 = sub_1D28728B8();

  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_generativeModelsAvailabilityNotifications) = v95;

  v96 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v97 = swift_allocObject();
  swift_weakInit();

  v98 = *v96;
  v99 = *(*v96 + 32);
  *(v98 + 32) = &unk_1D2894098;
  *(v98 + 40) = v97;
  sub_1D2870F78();
  sub_1D22A576C(v99);

  v100 = sub_1D22FC2DC();
  v101 = sub_1D2870F78();
  sub_1D23501F8(v101, v100);

  v102 = *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue);
  v103 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v104 = v141;
  v79(v141, 1, 1, v78);
  v105 = v135 + 16;
  v106 = v102 + v103;
  v107 = v127;
  v108 = v136;
  (*(v135 + 16))(v127, v106, v136);
  v109 = (*(v105 + 64) + 32) & ~*(v105 + 64);
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  *(v110 + 24) = 0;
  v115(v110 + v109, v107, v108);
  sub_1D22AE01C(0, 0, v104, &unk_1D28838A0, v110);

  (*(v132 + 8))(v92, v133);
  (*(v139 + 8))(v138, v140);
  __swift_destroy_boxed_opaque_existential_0(v142);
  return a9;
}

uint64_t sub_1D256E54C()
{
  v2 = *(type metadata accessor for PlaygroundImage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2569B48(v4, v5, v6, v0 + v3);
}

uint64_t sub_1D256E68C()
{
  result = sub_1D2871A28();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D256E7A0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 112) == 1)
  {
    v5 = *(v0 + 48);
    swift_getKeyPath();
    v11 = v5;
    sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager);
    sub_1D28719E8();

    sub_1D2568E18(*(v5 + 17));
  }

  else
  {
    swift_getKeyPath();
    v11 = v0;
    sub_1D28719E8();

    if (*(v0 + 74) - 1 >= 3)
    {
      sub_1D2872658();
      v6 = sub_1D2873CA8();
      v7 = sub_1D2878A38();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1D226E000, v6, v7, "EXITING APP after dismissing the enrollment sheet", v8, 2u);
        MEMORY[0x1D38A3520](v8, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      v9 = [objc_opt_self() sharedApplication];
      [v9 suspend];
    }
  }
}

uint64_t sub_1D256EA68(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  PlaygroundHomeViewModel.photoGridViewModel.getter();
  v10 = *(*a1 + 160);
  v11 = sub_1D2871818();
  v12 = *(v11 - 8);
  v26 = *(v12 + 16);
  v27 = v10;
  v26(v9, a1 + v10, v11);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  sub_1D2575A7C(v9);

  swift_getKeyPath();
  v28 = v1;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v1 + 74) == 4)
  {
    v25 = v6;
    v15 = *(v1 + 56);
    if (*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) == 1)
    {
      *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v23 = v13;
      v24 = &v22;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v22 - 2) = v15;
      *(&v22 - 8) = 1;
      v28 = v15;
      sub_1D256F600(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
      sub_1D28719D8();
      v13 = v23;
    }

    v26(v9, a1 + v27, v11);
    v13(v9, 0, 1, v11);
    sub_1D25E2EEC(v9);
    v17 = sub_1D28785F8();
    v18 = v25;
    (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v19 = sub_1D2878558();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v2;
    v20[5] = a1;
    sub_1D22AE01C(0, 0, v18, &unk_1D2893DB8, v20);
  }

  return result;
}

uint64_t sub_1D256EE80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256AC8C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D256EF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D230C02C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D256F040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D256F0D0(void *a1, char a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  if (a2)
  {
    sub_1D28726D8();
    v11 = a1;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();
    sub_1D256F35C(a1);
    if (!os_log_type_enabled(v12, v13))
    {
      v10 = v7;
      goto LABEL_8;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D226E000, v12, v13, "Evaluation error: %@", v14, 0xCu);
    v10 = v7;
    goto LABEL_6;
  }

  sub_1D28726D8();
  v18 = a1;
  v12 = sub_1D2873CA8();
  v19 = sub_1D2878A08();
  sub_1D256F35C(a1);
  if (os_log_type_enabled(v12, v19))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v18;
    *v15 = a1;
    v20 = v18;
    _os_log_impl(&dword_1D226E000, v12, v19, "Evaluation response: %@", v14, 0xCu);
LABEL_6:
    sub_1D22BD238(v15, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

LABEL_8:

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1D256F368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D256F3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D256F450()
{
  result = qword_1ED89CE70;
  if (!qword_1ED89CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E10E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CE70);
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D256F4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256C674(a1, v4, v5, v7, v6);
}

uint64_t sub_1D256F594()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D256F600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D256F690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232A08C(a1, v4, v5, v6);
}

uint64_t sub_1D256F750(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BDFF8;

  return sub_1D22FBD08(a1, v1);
}

uint64_t sub_1D256F8D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D256F9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  return sub_1D2572C70(v3 + v4, a2);
}

uint64_t sub_1D256FA68(uint64_t a1)
{
  v2 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2572C70(a1, v4);
  return sub_1D2306E7C(v4);
}

uint64_t sub_1D256FAF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable);
  return result;
}

uint64_t UnavailableOrComposingView.init(composingViewModel:animationNamespace:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  sub_1D28772F8();
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;
  type metadata accessor for ComposingViewModel(0);
  result = sub_1D28772F8();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_1D256FC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2572C70(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0)
  {
    v8 = sub_1D2872858();
    v9 = &off_1F4DCCD18;
LABEL_5:
    a2[3] = v8;
    a2[4] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v6, v8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_1D28727F8();
    v9 = &off_1F4DCCD40;
    goto LABEL_5;
  }

  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D256FDF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a5;
  v105 = a4;
  LODWORD(v131) = a3;
  v116 = a2;
  v137 = a6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEE0);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v99 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDED8);
  MEMORY[0x1EEE9AC00](v121);
  v112 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v128 = &v99 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF20);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v99 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDED0);
  MEMORY[0x1EEE9AC00](v136);
  v120 = &v99 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEC0);
  v123 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v122 = &v99 - v16;
  v130 = sub_1D2871318();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v138 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v99 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF28);
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v99 - v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF30);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v99 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEB8);
  MEMORY[0x1EEE9AC00](v133);
  v127 = &v99 - v22;
  v100 = sub_1D2872178();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D2873AD8();
  v104 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v103 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D2873AF8();
  v102 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v99 - v29;
  v30 = sub_1D2875628();
  v108 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v6;
  v37 = v6[1];
  v38 = v6[3];
  v109 = v6[2];
  v150 = *(v6 + 32);
  v39 = *(v6 + 49);
  v148 = *(v6 + 33);
  v149 = v39;
  swift_storeEnumTagMultiPayload();
  v110 = a1;
  v40 = sub_1D233C3CC(a1, v35);
  sub_1D257460C(v35, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (v40)
  {
    if (v150 == 1)
    {
      v41 = v38;
      if (v38 == 5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1D2574AC8(v38, 0);
      sub_1D2878A28();
      v42 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v38, 0);
      (*(v108 + 8))(v32, v30);
      v41 = v143;
      if (v143 == 5)
      {
        goto LABEL_7;
      }
    }

    if (v41 != 6)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = v105;
      *(v55 + 24) = v106;
      sub_1D2870F78();
      v56 = v101;
      sub_1D2873AE8();
      v57 = v99;
      v58 = v100;
      (*(v99 + 104))(v24, *MEMORY[0x1E696E430], v100);
      sub_1D2872168();
      (*(v57 + 8))(v24, v58);
      v59 = v102;
      (*(v102 + 16))(v27, v56, v107);
      v60 = v103;
      sub_1D2873AC8();
      v61 = v104;
      v62 = v125;
      (*(v104 + 16))(v126, v60, v125);
      swift_storeEnumTagMultiPayload();
      sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818]);
      sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
      v63 = v127;
      sub_1D2875AF8();
      sub_1D22BD1D0(v63, v134, &qword_1EC6DDEB8);
      swift_storeEnumTagMultiPayload();
      sub_1D2574224();
      sub_1D257430C();
      sub_1D2875AF8();
      sub_1D22BD238(v63, &qword_1EC6DDEB8);
      (*(v61 + 8))(v60, v62);
      return (*(v59 + 8))(v56, v107);
    }
  }

LABEL_7:
  if (v131)
  {
    *&v143 = v36;
    *(&v143 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    v43 = v140;
    swift_getKeyPath();
    *&v143 = v43;
    sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    sub_1D25EA40C();
    *&v143 = v36;
    *(&v143 + 1) = v37;
    sub_1D2877308();
    v44 = v140;
    swift_getKeyPath();
    *&v143 = v44;
    sub_1D28719E8();

    v45 = *(v44 + 16);

    v46 = v117;
    v47 = sub_1D25EA79C(v45);
    MEMORY[0x1EEE9AC00](v47);
    MEMORY[0x1EEE9AC00](v48);
    v49 = v122;
    sub_1D2875D48();

    v50 = v123;
    v51 = v135;
    (*(v123 + 16))(v126, v49, v135);
    swift_storeEnumTagMultiPayload();
    sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818]);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
    v52 = v127;
    sub_1D2875AF8();
    sub_1D22BD1D0(v52, v134, &qword_1EC6DDEB8);
    swift_storeEnumTagMultiPayload();
    sub_1D2574224();
    sub_1D257430C();
    sub_1D2875AF8();
    sub_1D22BD238(v52, &qword_1EC6DDEB8);
    (*(v50 + 8))(v49, v51);
    return (*(v129 + 8))(v46, v130);
  }

  if ((v116 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v150 == 1)
  {
    v54 = v38;
    if (v38 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1D2574AC8(v38, 0);
    sub_1D2878A28();
    v64 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v38, 0);
    (*(v108 + 8))(v32, v30);
    v54 = v143;
    if (v143 == 5)
    {
LABEL_16:
      *&v143 = v36;
      *(&v143 + 1) = v37;
      *&v144 = v109;
      *(&v144 + 1) = v38;
      v145[0] = v150;
      *&v145[1] = v148;
      *&v145[17] = v149;
      sub_1D256FC7C(v110, &v140);
      v65 = v141;
      v66 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      *&v143 = v36;
      *(&v143 + 1) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
      sub_1D2877308();
      v67 = v139;
      swift_getKeyPath();
      *&v143 = v67;
      sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719E8();

      v68 = *(v67 + 16);

      v131 = (*(v66 + 8))(v68, v65, v66);
      v127 = v69;
      v70 = v141;
      v71 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      *&v143 = v36;
      *(&v143 + 1) = v37;
      sub_1D2877308();
      v72 = v139;
      swift_getKeyPath();
      *&v143 = v72;
      sub_1D28719E8();

      v73 = *(v72 + 16);

      (*(v71 + 16))(v73, v70, v71);
      v74 = v141;
      v75 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      *&v143 = v36;
      *(&v143 + 1) = v37;
      sub_1D2877308();
      v76 = v139;
      swift_getKeyPath();
      *&v143 = v76;
      sub_1D28719E8();

      v77 = *(v76 + 16);

      (*(v75 + 24))(v77, v74, v75);
      v78 = v141;
      v79 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      *&v143 = v36;
      *(&v143 + 1) = v37;
      sub_1D2877308();
      v80 = v139;
      swift_getKeyPath();
      *&v143 = v80;
      sub_1D28719E8();

      v81 = *(v80 + 16);

      v82 = (*(v79 + 32))(v81, v78, v79);
      MEMORY[0x1EEE9AC00](v82);
      MEMORY[0x1EEE9AC00](v83);
      MEMORY[0x1EEE9AC00](v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF40);
      sub_1D22BB9D8(&qword_1EC6DDF48, &qword_1EC6DDF38);
      sub_1D257493C();
      v85 = v111;
      sub_1D2875D48();

      sub_1D2877848();
      sub_1D2875208();
      v86 = v112;
      (*(v113 + 32))(v112, v85, v114);
      v87 = (v86 + *(v121 + 36));
      v88 = v146;
      v87[4] = *&v145[32];
      v87[5] = v88;
      v87[6] = v147;
      v89 = v144;
      *v87 = v143;
      v87[1] = v89;
      v90 = *&v145[16];
      v87[2] = *v145;
      v87[3] = v90;
      v91 = v115;
      sub_1D228C124(v86, v115);
      sub_1D22BD1D0(v91, v119, &qword_1EC6DDED8);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
      sub_1D25743C4();
      v92 = v120;
      sub_1D2875AF8();
      sub_1D22BD1D0(v92, v134, &qword_1EC6DDED0);
      swift_storeEnumTagMultiPayload();
      sub_1D2574224();
      sub_1D257430C();
      sub_1D2875AF8();
      sub_1D22BD238(v92, &qword_1EC6DDED0);
      sub_1D22BD238(v91, &qword_1EC6DDED8);
      sub_1D22BD238(v128, &qword_1EC6DA1B8);
      (*(v129 + 8))(v138, v130);
      return __swift_destroy_boxed_opaque_existential_0(&v140);
    }
  }

  if (v54 == 6)
  {
    goto LABEL_16;
  }

  sub_1D2875798();
  v93 = sub_1D2875798();
  MEMORY[0x1EEE9AC00](v93);
  MEMORY[0x1EEE9AC00](v94);
  v95 = v122;
  sub_1D2875D48();

  v96 = v123;
  v97 = v135;
  (*(v123 + 16))(v119, v95, v135);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
  sub_1D25743C4();
  v98 = v120;
  sub_1D2875AF8();
  sub_1D22BD1D0(v98, v134, &qword_1EC6DDED0);
  swift_storeEnumTagMultiPayload();
  sub_1D2574224();
  sub_1D257430C();
  sub_1D2875AF8();
  sub_1D22BD238(v98, &qword_1EC6DDED0);
  return (*(v96 + 8))(v95, v97);
}

uint64_t sub_1D2571748@<X0>(uint64_t a1@<X8>)
{
  sub_1D22BD06C();
  sub_1D2870F68();
  v2 = sub_1D2876698();
  v4 = v3;
  v6 = v5;
  sub_1D2876438();
  v7 = sub_1D2876568();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1D22ED6E0(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1D2571824@<X0>(uint64_t a1@<X8>)
{
  sub_1D2870F68();
  sub_1D2870F68();
  v2 = sub_1D2876668();
  v4 = v3;
  v6 = v5;
  sub_1D2876438();
  v7 = sub_1D2876568();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1D22ED6E0(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1D2571924@<X0>(uint64_t a1@<X8>)
{
  sub_1D2870F68();
  sub_1D2870F68();
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D25719BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1D28771B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D2870F68();
    sub_1D2877198();
    (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
    v39 = sub_1D2877228();

    (*(v9 + 8))(v11, v8);
    sub_1D2877848();
    sub_1D28748C8();
    LOBYTE(v46) = 1;
    v36 = v55;
    v35 = v56;
    v38 = v57;
    v34 = v58;
    v37 = v59;
    v33 = v60;
    a1 = 1;
  }

  else
  {
    v39 = 0;
    v36 = 0;
    v35 = 0;
    v38 = 0;
    v34 = 0;
    v37 = 0;
    v33 = 0;
  }

  v32 = a1;
  v46 = a2;
  v47 = a3;
  sub_1D22BD06C();
  sub_1D2870F68();
  v12 = sub_1D2876698();
  v14 = v13;
  v16 = v15;
  sub_1D2876438();
  v17 = sub_1D2876568();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1D22ED6E0(v12, v14, v16 & 1);

  v41 = v39;
  *&v42 = a1;
  v24 = v36;
  v25 = v35;
  *(&v42 + 1) = v36;
  *&v43 = v35;
  v26 = v34;
  *(&v43 + 1) = v38;
  *&v44 = v34;
  v27 = v33;
  *(&v44 + 1) = v37;
  v45 = v33;
  v40 = v21 & 1;
  v28 = v44;
  *(a4 + 32) = v43;
  *(a4 + 48) = v28;
  v29 = v42;
  *a4 = v41;
  *(a4 + 16) = v29;
  *(a4 + 64) = v27;
  *(a4 + 72) = v17;
  *(a4 + 80) = v19;
  *(a4 + 88) = v21 & 1;
  *(a4 + 96) = v23;
  sub_1D22BD1D0(&v41, &v46, &qword_1EC6DDF60);
  sub_1D22BBFAC(v17, v19, v21 & 1);
  sub_1D2870F68();
  sub_1D22ED6E0(v17, v19, v21 & 1);

  v46 = v39;
  v47 = 0;
  v48 = v32;
  v49 = v24;
  v50 = v25;
  v51 = v38;
  v52 = v26;
  v53 = v37;
  v54 = v27;
  return sub_1D22BD238(&v46, &qword_1EC6DDF60);
}

uint64_t sub_1D2571D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2871318();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1D2876678();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1D2571E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1D28756D8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF58);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_1D28716B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  sub_1D22BD1D0(a1, v12, &qword_1EC6DA1B8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DA1B8);
    v20 = 1;
    v22 = v41;
    v21 = v42;
    v23 = v40;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v26 = swift_allocObject();
    v24((v26 + v25), v16, v13);
    sub_1D2877368();
    v27 = v7;
    if (qword_1EC6D7E58 != -1)
    {
      swift_once();
    }

    if (qword_1EC6D7E70 != -1)
    {
      swift_once();
    }

    v28 = v37;
    sub_1D28756C8();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D2574A80(&qword_1EC6D7920, MEMORY[0x1E697C4D0]);
    v29 = v34;
    v30 = v36;
    v31 = v39;
    sub_1D28767A8();
    (*(v38 + 8))(v28, v31);
    (*(v35 + 8))(v27, v30);
    (*(v14 + 8))(v19, v13);
    v23 = v40;
    v22 = v41;
    v21 = v42;
    (*(v40 + 32))(v42, v29, v41);
    v20 = 0;
  }

  return (*(v23 + 56))(v21, v20, 1, v22);
}

void sub_1D25723B8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1D28715B8();
    sub_1D25D7270(MEMORY[0x1E69E7CC0]);
    v3 = sub_1D2877E78();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D257248C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1D2874DB8();
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED8B0058;
  v5 = sub_1D2876668();
  v7 = v6;
  v9 = v8;
  sub_1D2876408();
  v10 = sub_1D2876568();
  v12 = v11;
  v14 = v13;
  sub_1D22ED6E0(v5, v7, v9 & 1);

  sub_1D2874DA8();
  v15 = sub_1D2876648();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1D22ED6E0(v10, v12, v14 & 1);

  result = (*(v24 + 8))(v3, v1);
  v23 = v25;
  *v25 = v15;
  v23[1] = v17;
  *(v23 + 16) = v19 & 1;
  v23[3] = v21;
  return result;
}

BOOL sub_1D25726D8()
{
  v1 = sub_1D2875628();
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[3];
  v13 = *(v0 + 32);
  v14 = v0[6];
  LOBYTE(v22) = *(v0 + 40);
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  if (v24)
  {
    return 0;
  }

  v22 = v10;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v15 = v24;
  swift_getKeyPath();
  v22 = v15;
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D2572C70(v15 + v16, v9);

  swift_storeEnumTagMultiPayload();
  LOBYTE(v16) = sub_1D233C3CC(v9, v6);
  sub_1D257460C(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  sub_1D257460C(v9, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v13)
  {
    v17 = v12;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v12, 0);
    (*(v21 + 8))(v3, v1);
    v17 = v24;
  }

  return (v17 - 7) < 0xFFFFFFFE;
}

uint64_t UnavailableOrComposingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v7;
  v20 = *(v1 + 64);
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  v18 = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v9 = v17;
  swift_getKeyPath();
  *&v18 = v9;
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D2572C70(v9 + v10, v6);

  v17 = *v2;
  sub_1D2877308();
  sub_1D23C6CA0();
  v11 = _SystemPhotoLibrary.photoLibrary.getter();

  if (v11)
  {
  }

  v12 = v11 == 0;
  v17 = *v2;
  sub_1D2877308();
  v13 = v16[1];
  swift_getKeyPath();
  *&v17 = v13;
  sub_1D28719E8();

  v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable);

  sub_1D2572CD4(v12, v19, v6, (v14 & 1) == 0, a1);
  return sub_1D257460C(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
}

uint64_t sub_1D2572C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2572CD4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v116) = a4;
  v120 = a3;
  LODWORD(v117) = a1;
  v119 = a5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF00);
  MEMORY[0x1EEE9AC00](v108);
  v7 = &v92 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEF0);
  MEMORY[0x1EEE9AC00](v118);
  v9 = &v92 - v8;
  v98 = sub_1D2876088();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ComposingView();
  MEMORY[0x1EEE9AC00](v106);
  v95 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEF8);
  v101 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v113 = &v92 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF08);
  v103 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v102 = &v92 - v13;
  v104 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  v99 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF10);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF18);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEA0);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEB0);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v92 - v24;
  v25 = sub_1D2875628();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v117)
  {
    v117 = v17;
    v114 = v21;
    v128 = *(a2 + 32);
    v29 = *(a2 + 24);
    v127 = v29;
    if (v128 == 1)
    {
      v30 = v29;
    }

    else
    {
      sub_1D22BD1D0(&v127, &v122, &qword_1EC6DC9B8);
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      v93 = v7;
      v32 = v31;
      sub_1D2873BE8();

      v7 = v93;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v127, &qword_1EC6DC9B8);
      (*(v26 + 8))(v28, v25);
      v30 = LOBYTE(v121[0]);
    }

    v21 = v114;
    if (v30 == 5)
    {
      v17 = v117;
    }

    else
    {
      v17 = v117;
      if (v30 != 6)
      {
        v74 = *(a2 + 48);
        v124 = *(a2 + 32);
        v125 = v74;
        v126 = *(a2 + 64);
        v75 = *(a2 + 16);
        v122 = *a2;
        v123 = v75;
        v76 = swift_allocObject();
        v77 = *(a2 + 48);
        *(v76 + 48) = *(a2 + 32);
        *(v76 + 64) = v77;
        *(v76 + 80) = *(a2 + 64);
        v78 = *(a2 + 16);
        *(v76 + 16) = *a2;
        *(v76 + 32) = v78;
        sub_1D25745D4(a2, v121);
        v79 = v115;
        sub_1D256FDF0(v120, 1, 0, sub_1D2574B78, v76, v115);

        sub_1D22BD1D0(v79, v111, &qword_1EC6DDEB0);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        sub_1D2574198();
        v80 = v112;
        sub_1D2875AF8();
        sub_1D22BD1D0(v80, v19, &qword_1EC6DDEA0);
        swift_storeEnumTagMultiPayload();
        sub_1D2574114();
        sub_1D257447C();
        sub_1D2875AF8();
        v81 = v80;
        v82 = &qword_1EC6DDEA0;
        goto LABEL_15;
      }
    }
  }

  if (v116)
  {
    v33 = *(a2 + 48);
    v124 = *(a2 + 32);
    v125 = v33;
    v126 = *(a2 + 64);
    v34 = *(a2 + 16);
    v122 = *a2;
    v123 = v34;
    v35 = swift_allocObject();
    v36 = *(a2 + 48);
    *(v35 + 48) = *(a2 + 32);
    *(v35 + 64) = v36;
    *(v35 + 80) = *(a2 + 64);
    v37 = *(a2 + 16);
    *(v35 + 16) = *a2;
    *(v35 + 32) = v37;
    sub_1D25745D4(a2, v121);
    v79 = v115;
    sub_1D256FDF0(v120, 0, 1, sub_1D2574858, v35, v115);

    sub_1D22BD1D0(v79, v111, &qword_1EC6DDEB0);
    goto LABEL_14;
  }

  v112 = v23;
  v116 = v19;
  v38 = v105;
  swift_storeEnumTagMultiPayload();
  v39 = sub_1D233C3CC(v120, v38);
  sub_1D257460C(v38, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (v39 & 1) != 0 || (v122 = *a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0), sub_1D2877308(), v40 = v121[0], swift_getKeyPath(), *&v122 = v40, sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , v41 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus, swift_beginAccess(), sub_1D2572C70(v40 + v41, v38), v42 = v94, swift_storeEnumTagMultiPayload(), LOBYTE(v41) = sub_1D233C3CC(v38, v42), , sub_1D257460C(v42, type metadata accessor for ComposingViewModel.AvailabilityStatus), sub_1D257460C(v38, type metadata accessor for ComposingViewModel.AvailabilityStatus), (v41))
  {
    v43 = *(a2 + 16);
    v122 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    v44 = v95;
    sub_1D26D9A2C(v43, v121[0], v95);
    v45 = v96;
    sub_1D2876078();
    v115 = sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView);
    v46 = v106;
    sub_1D2876BE8();
    (*(v97 + 8))(v45, v98);
    sub_1D257460C(v44, type metadata accessor for ComposingView);
    sub_1D2878568();
    sub_1D25745D4(a2, &v122);
    v47 = sub_1D2878558();
    v117 = v17;
    v93 = v7;
    v48 = v47;
    v49 = swift_allocObject();
    v50 = v38;
    v51 = MEMORY[0x1E69E85E0];
    *(v49 + 16) = v48;
    *(v49 + 24) = v51;
    v52 = *(a2 + 48);
    *(v49 + 64) = *(a2 + 32);
    *(v49 + 80) = v52;
    *(v49 + 96) = *(a2 + 64);
    v53 = *(a2 + 16);
    *(v49 + 32) = *a2;
    *(v49 + 48) = v53;
    sub_1D25745D4(a2, &v122);
    v54 = sub_1D2878558();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v51;
    v56 = *(a2 + 48);
    *(v55 + 64) = *(a2 + 32);
    *(v55 + 80) = v56;
    *(v55 + 96) = *(a2 + 64);
    v57 = *(a2 + 16);
    *(v55 + 32) = *a2;
    *(v55 + 48) = v57;
    sub_1D2877528();
    v58 = swift_allocObject();
    v59 = *(a2 + 48);
    *(v58 + 48) = *(a2 + 32);
    *(v58 + 64) = v59;
    *(v58 + 80) = *(a2 + 64);
    v60 = *(a2 + 16);
    *(v58 + 16) = *a2;
    *(v58 + 32) = v60;
    sub_1D2572C70(v120, v50);
    v61 = *(v99 + 80);
    v120 = v9;
    v114 = v21;
    v62 = (v61 + 81) & ~v61;
    v63 = swift_allocObject();
    v64 = *(a2 + 48);
    *(v63 + 48) = *(a2 + 32);
    *(v63 + 64) = v64;
    *(v63 + 80) = *(a2 + 64);
    v65 = *(a2 + 16);
    *(v63 + 16) = *a2;
    *(v63 + 32) = v65;
    sub_1D2574780(v50, v63 + v62);
    sub_1D25745D4(a2, &v122);
    sub_1D25745D4(a2, &v122);
    *&v122 = v46;
    *(&v122 + 1) = v115;
    *&v91 = swift_getOpaqueTypeConformance2();
    *(&v91 + 1) = sub_1D2574198();
    v66 = v112;
    v67 = v102;
    v68 = v107;
    v69 = v113;
    sub_1D2876E48();

    (*(v101 + 8))(v69, v68);
    v70 = v103;
    v71 = v109;
    (*(v103 + 16))(v93, v67, v109);
    swift_storeEnumTagMultiPayload();
    *&v122 = v68;
    *(&v122 + 1) = v66;
    v123 = v91;
    swift_getOpaqueTypeConformance2();
    v72 = v120;
    sub_1D2875AF8();
    sub_1D22BD1D0(v72, v116, &qword_1EC6DDEF0);
    swift_storeEnumTagMultiPayload();
    sub_1D2574114();
    sub_1D257447C();
    sub_1D2875AF8();
    sub_1D22BD238(v72, &qword_1EC6DDEF0);
    return (*(v70 + 8))(v67, v71);
  }

  v83 = *(a2 + 48);
  v124 = *(a2 + 32);
  v125 = v83;
  v126 = *(a2 + 64);
  v84 = *(a2 + 16);
  v122 = *a2;
  v123 = v84;
  v85 = swift_allocObject();
  v86 = *(a2 + 48);
  *(v85 + 48) = *(a2 + 32);
  *(v85 + 64) = v86;
  *(v85 + 80) = *(a2 + 64);
  v87 = *(a2 + 16);
  *(v85 + 16) = *a2;
  *(v85 + 32) = v87;
  sub_1D25745D4(a2, v121);
  v79 = v115;
  sub_1D256FDF0(v120, 0, 0, sub_1D2574B78, v85, v115);

  sub_1D22BD1D0(v79, v7, &qword_1EC6DDEB0);
  swift_storeEnumTagMultiPayload();
  v88 = sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView);
  *&v122 = v106;
  *(&v122 + 1) = v88;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = sub_1D2574198();
  *&v122 = v107;
  *(&v122 + 1) = v112;
  *&v123 = OpaqueTypeConformance2;
  *(&v123 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  sub_1D2875AF8();
  sub_1D22BD1D0(v9, v116, &qword_1EC6DDEF0);
  swift_storeEnumTagMultiPayload();
  sub_1D2574114();
  sub_1D257447C();
  sub_1D2875AF8();
  v81 = v9;
  v82 = &qword_1EC6DDEF0;
LABEL_15:
  sub_1D22BD238(v81, v82);
  return sub_1D22BD238(v79, &qword_1EC6DDEB0);
}

uint64_t sub_1D2573ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v6;
  v17 = *(a1 + 64);
  v7 = *(a1 + 16);
  v13 = *a1;
  v14 = v7;
  v8 = swift_allocObject();
  v9 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  sub_1D25745D4(a1, v12);
  sub_1D256FDF0(a2, 0, 0, sub_1D25748D0, v8, a3);
}

uint64_t sub_1D2573F90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D2309CF4(0);
}

unint64_t sub_1D2574004()
{
  result = qword_1EC6DDE78;
  if (!qword_1EC6DDE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDE80);
    sub_1D2574088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE78);
  }

  return result;
}

unint64_t sub_1D2574088()
{
  result = qword_1EC6DDE88;
  if (!qword_1EC6DDE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDE90);
    sub_1D2574114();
    sub_1D257447C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE88);
  }

  return result;
}

unint64_t sub_1D2574114()
{
  result = qword_1EC6DDE98;
  if (!qword_1EC6DDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEA0);
    sub_1D2574198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDE98);
  }

  return result;
}

unint64_t sub_1D2574198()
{
  result = qword_1EC6DDEA8;
  if (!qword_1EC6DDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB0);
    sub_1D2574224();
    sub_1D257430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEA8);
  }

  return result;
}

unint64_t sub_1D2574224()
{
  result = qword_1ED89D630;
  if (!qword_1ED89D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB8);
    sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818]);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D630);
  }

  return result;
}

unint64_t sub_1D257430C()
{
  result = qword_1EC6DDEC8;
  if (!qword_1EC6DDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDED0);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0);
    sub_1D25743C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEC8);
  }

  return result;
}

unint64_t sub_1D25743C4()
{
  result = qword_1ED89DD60;
  if (!qword_1ED89DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDED8);
    sub_1D22BB9D8(&qword_1ED89D3F0, &qword_1EC6DDEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD60);
  }

  return result;
}

unint64_t sub_1D257447C()
{
  result = qword_1EC6DDEE8;
  if (!qword_1EC6DDEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDEB0);
    type metadata accessor for ComposingView();
    sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView);
    swift_getOpaqueTypeConformance2();
    sub_1D2574198();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDEE8);
  }

  return result;
}

uint64_t sub_1D257460C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D257466C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D25726D8();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  sub_1D22EE66C(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D2574780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25747E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ComposingViewModel.AvailabilityStatus(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 81) & ~*(v3 + 80));

  return sub_1D2573ECC(v1 + 16, v4, a1);
}

uint64_t objectdestroyTm_18()
{

  sub_1D22EE66C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1D257493C()
{
  result = qword_1EC6DDF50;
  if (!qword_1EC6DDF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
    sub_1D28756D8();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D2574A80(&qword_1EC6D7920, MEMORY[0x1E697C4D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF50);
  }

  return result;
}

uint64_t sub_1D2574A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2574AC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1D2870F78();
  }

  return result;
}

void sub_1D2574B18()
{
  sub_1D28716B8();

  sub_1D25723B8();
}

__n128 sub_1D2574BAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2877848();
  v4 = v3;
  sub_1D2574D30(&v21);
  v31 = v25;
  v32[0] = *v26;
  *(v32 + 9) = *&v26[9];
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v33[0] = v21;
  v33[1] = v22;
  v33[2] = v23;
  v33[3] = v24;
  v33[4] = v25;
  v34[0] = *v26;
  *(v34 + 9) = *&v26[9];
  sub_1D2574E7C(&v27, &v14);
  sub_1D2574EEC(v33);
  v18 = v31;
  v19[0] = v32[0];
  *(v19 + 9) = *(v32 + 9);
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  sub_1D2877848();
  sub_1D2875208();
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = *v26;
  *&v20[103] = *&v26[16];
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v5;
  v6 = v16;
  v7 = v17;
  *(a1 + 105) = *(v19 + 9);
  v8 = v19[0];
  *(a1 + 80) = v18;
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = *v20;
  v10 = *&v20[64];
  *(a1 + 169) = *&v20[48];
  v11 = *&v20[16];
  *(a1 + 153) = *&v20[32];
  *(a1 + 137) = v11;
  *(a1 + 121) = v9;
  result = *&v20[80];
  v13 = *&v20[96];
  *(a1 + 232) = *&v20[111];
  *(a1 + 217) = v13;
  *(a1 + 201) = result;
  *(a1 + 185) = v10;
  return result;
}

double sub_1D2574D30@<D0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  v3 = sub_1D2876668();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_1D2876468();
  v12 = swift_getKeyPath();
  v13 = sub_1D2876338();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1D2574E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2574EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}