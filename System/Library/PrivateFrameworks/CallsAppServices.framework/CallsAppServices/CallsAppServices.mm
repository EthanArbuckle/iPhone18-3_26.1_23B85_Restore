uint64_t type metadata accessor for FavoritesDataSource()
{
  result = qword_1EDEBFBD8;
  if (!qword_1EDEBFBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D331C76C()
{
  sub_1D331C830();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D331C830()
{
  if (!qword_1EDEBFD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC761030, &qword_1D33E2498);
    v0 = sub_1D33DDF84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBFD28);
    }
  }
}

uint64_t sub_1D331C8A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v11[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761030, &qword_1D33E2498);
  sub_1D33DDF34();
  (*(v4 + 32))(v1 + v8, v7, v3);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_fetchTask) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch) = 1;
  *(v1 + 16) = a1;
  v9 = a1;
  sub_1D331CA38();
  return v1;
}

uint64_t FavoritesDataSource.init(controller:)(void *a1)
{
  v2 = sub_1D331C8A4(a1);

  return v2;
}

uint64_t sub_1D331CA38()
{
  v0 = sub_1D33DE3F4();
  v114 = *(v0 - 8);
  v115 = v0;
  v1 = v114[8];
  MEMORY[0x1EEE9AC00](v0);
  v113 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v108 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v121 = *(v7 - 8);
  v8 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v108 - v9;
  v123 = sub_1D33DE3B4();
  v11 = *(v123 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x1EEE9AC00](v123);
  v117 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v108 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v108 - v18;
  if (qword_1EDEBF088 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v20 = sub_1D33DE3E4();
    v21 = __swift_project_value_buffer(v20, qword_1EDEC1458);
    sub_1D33DE3A4();
    v116 = v21;
    v22 = sub_1D33DE3D4();
    v23 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v22, v23, v25, "FavoritesDataSource loading", "", v24, 2u);
      MEMORY[0x1D38B81C0](v24, -1, -1);
    }

    v26 = v123;
    (*(v11 + 2))(v17, v19, v123);
    v27 = sub_1D33DE424();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1D33DE414();
    v31 = v11 + 8;
    v11 = *(v11 + 1);
    v11(v19, v26);
    v32 = v126;
    v33 = *(v126 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState);
    v118 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState;
    *(v126 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState) = v30;

    [*(v32 + 16) fetchIfNeeded];
    v34 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch;
    v17 = *(v32 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch);
    v35 = [*(v32 + 16) favoritesEntries];
    sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
    v36 = sub_1D33DE8B4();

    v122 = v7;
    v120 = v10;
    if (v17 != 1)
    {
      if (v36 >> 62)
      {
        goto LABEL_69;
      }

      v125 = (v36 & 0xFFFFFFFFFFFFFF8);
      v7 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v111 = v11;
      v112 = v31;
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_70:
      v119 = MEMORY[0x1E69E7CC0];
LABEL_71:

      v90 = sub_1D3329904(v119);

      v91 = v120;
      v92 = v121;
      v93 = v126;
      v94 = v122;
      (*(v121 + 16))(v120, v126 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v122);
      v127 = v90;
      sub_1D33DDF64();
      result = (*(v92 + 8))(v91, v94);
      v95 = v118;
      if (*(v93 + v118))
      {

        v96 = sub_1D33DE3D4();
        v97 = v117;
        sub_1D33DE404();
        v98 = sub_1D33DEBF4();
        v99 = sub_1D33DECC4();
        v100 = v111;
        if (v99)
        {

          v101 = v113;
          sub_1D33DE434();

          v103 = v114;
          v102 = v115;
          if ((v114[11])(v101, v115) == *MEMORY[0x1E69E93E8])
          {
            v104 = "[Error] Interval already ended";
          }

          else
          {
            (v103[1])(v101, v102);
            v104 = "";
          }

          v105 = swift_slowAlloc();
          *v105 = 0;
          v106 = sub_1D33DE394();
          _os_signpost_emit_with_name_impl(&dword_1D331A000, v96, v98, v106, "FavoritesDataSource loading", v104, v105, 2u);
          MEMORY[0x1D38B81C0](v105, -1, -1);
        }

        v100(v97, v123);
        v107 = *(v126 + v95);
        *(v126 + v95) = 0;
      }

      return result;
    }

    *&v124 = v34;
    v37 = v36 >> 62;
    if (v36 >> 62)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        v31 = v36;
      }

      else
      {
        v31 = v36 & 0xFFFFFFFFFFFFFF8;
      }

      v89 = sub_1D33DEE14();
      if (v89 >= 0xB)
      {
        v38 = 11;
      }

      else
      {
        v38 = v89;
      }

      if ((v89 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_69:
        v125 = (v36 & 0xFFFFFFFFFFFFFF8);
        v7 = sub_1D33DEE14();
        v111 = v11;
        v112 = v31;
        if (!v7)
        {
          goto LABEL_70;
        }

LABEL_18:
        v11 = 0;
        v10 = (v36 & 0xC000000000000001);
        v19 = *MEMORY[0x1E695C438];
        v110 = *MEMORY[0x1E695C420];
        v119 = MEMORY[0x1E69E7CC0];
        v124 = xmmword_1D33E2400;
        do
        {
          v42 = v11;
          while (1)
          {
            if (v10)
            {
              v43 = MEMORY[0x1D38B75D0](v42, v36);
            }

            else
            {
              if (v42 >= *(v125 + 2))
              {
                goto LABEL_58;
              }

              v43 = *(v36 + 8 * v42 + 32);
            }

            v17 = v43;
            v11 = (v42 + 1);
            if (__OFADD__(v42, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v44 = *(v126 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
            v45 = swift_allocObject();
            *(v45 + 16) = v124;
            v46 = objc_opt_self();
            v47 = v44;
            *(v45 + 32) = [v46 descriptorForRequiredKeys];
            *(v45 + 40) = v19;
            v48 = v19;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
            v6 = sub_1D33DE8A4();

            v49 = [v47 contactForFavoritesEntry:v17 keyDescriptors:v6];

            if (v49)
            {
              break;
            }

            ++v42;
            if (v11 == v7)
            {
              goto LABEL_71;
            }
          }

          v50 = v49;
          v109 = [v50 isKeyAvailable_];
          v51 = [objc_opt_self() stringFromContact:v50 style:1000];
          if (v51)
          {
            v52 = v51;
            v6 = sub_1D33DE7B4();
            v108 = v53;
          }

          else
          {
            v52 = [v50 givenName];

            v6 = sub_1D33DE7B4();
            v108 = v54;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_1D331E6F4(0, *(v119 + 2) + 1, 1, v119);
          }

          v56 = *(v119 + 2);
          v55 = *(v119 + 3);
          if (v56 >= v55 >> 1)
          {
            v119 = sub_1D331E6F4((v55 > 1), v56 + 1, 1, v119);
          }

          v57 = v119;
          *(v119 + 2) = v56 + 1;
          v58 = &v57[56 * v56];
          v59 = v108;
          *(v58 + 4) = v6;
          *(v58 + 5) = v59;
          *(v58 + 6) = v50;
          *(v58 + 7) = 0;
          *(v58 + 8) = 0;
          *(v58 + 9) = v17;
          v58[80] = v109;
        }

        while (v11 != v7);
        goto LABEL_71;
      }

      v17 = v89;
      result = sub_1D33DEE14();
      if (result < 0)
      {
        goto LABEL_82;
      }

      result = sub_1D33DEE14();
      if (result < v38)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 0xB)
      {
        v38 = 11;
      }

      else
      {
        v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 < v38)
      {
        goto LABEL_81;
      }
    }

    if ((v36 & 0xC000000000000001) != 0)
    {

      if (v17)
      {
        v40 = 0;
        do
        {
          v17 = v40 + 1;
          sub_1D33DEF34();
          v40 = v17;
        }

        while (v38 != v17);
      }

      v123 = v6;
      if (!v37)
      {
LABEL_15:
        v7 = 0;
        v41 = (v36 & 0xFFFFFFFFFFFFFF8);
        v6 = ((v36 & 0xFFFFFFFFFFFFFF8) + 32);
        goto LABEL_39;
      }
    }

    else
    {

      v123 = v6;
      if (!v37)
      {
        goto LABEL_15;
      }
    }

    v41 = sub_1D33DF0F4();
    v6 = v60;
    v7 = v61;
    v38 = v62 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    if (v7 == v38)
    {
      break;
    }

    v118 = v38 - 1;
    v125 = MEMORY[0x1E69E7CC0];
    v10 = &off_1E843B000;
    v117 = *MEMORY[0x1E695C420];
    v63 = v7;
    v119 = v41;
LABEL_42:
    v19 = v63;
    while (v63 >= v7 && v19 < v38)
    {
      v11 = *&v6[8 * v19];
      v64 = [v11 contactProperty];
      if (v64)
      {
        v17 = v64;
        v65 = [v64 contact];

        if (v65)
        {
          v66 = v65;
          v67 = [v66 isKeyAvailable_];
          v68 = [objc_opt_self() stringFromContact:v66 style:1000];
          if (v68)
          {
            v69 = v68;
            v70 = sub_1D33DE7B4();
            v115 = v71;
            v116 = v70;
          }

          else
          {
            v69 = [v66 givenName];

            v72 = sub_1D33DE7B4();
            v115 = v73;
            v116 = v72;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v125 = sub_1D331E6F4(0, *(v125 + 2) + 1, 1, v125);
          }

          v76 = *(v125 + 2);
          v75 = *(v125 + 3);
          v17 = v76 + 1;
          LODWORD(v113) = v67;
          if (v76 >= v75 >> 1)
          {
            v125 = sub_1D331E6F4((v75 > 1), v76 + 1, 1, v125);
          }

          v63 = v19 + 1;
          v77 = v125;
          *(v125 + 2) = v17;
          v78 = &v77[56 * v76];
          v79 = v115;
          *(v78 + 4) = v116;
          *(v78 + 5) = v79;
          *(v78 + 6) = v114;
          *(v78 + 7) = 0;
          *(v78 + 8) = 0;
          *(v78 + 9) = v11;
          v78[80] = v113;
          if (v118 != v19)
          {
            goto LABEL_42;
          }

          goto LABEL_56;
        }
      }

      ++v19;

      if (v38 == v19)
      {
        goto LABEL_56;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v125 = MEMORY[0x1E69E7CC0];
LABEL_56:
  swift_unknownObjectRelease_n();
  v80 = sub_1D3329904(v125);

  v81 = v120;
  v82 = v121;
  v83 = v126;
  v84 = v122;
  (*(v121 + 16))(v120, v126 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v122);
  v127 = v80;
  sub_1D33DDF64();
  (*(v82 + 8))(v81, v84);
  v85 = v123;
  sub_1D33DE994();
  v86 = sub_1D33DE9B4();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = swift_allocObject();
  swift_weakInit();
  v88 = swift_allocObject();
  v88[2] = 0;
  v88[3] = 0;
  v88[4] = v87;
  sub_1D3387F00(0, 0, v85, &unk_1D33E2540, v88);

  result = sub_1D331E880(v85, &unk_1EC7610E0, &qword_1D33E16C0);
  *(v83 + v124) = 0;
  return result;
}

uint64_t sub_1D331D744()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D331D77C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D331D7BC()
{
  v0 = sub_1D33DE464();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DE3E4();
  __swift_allocate_value_buffer(v5, qword_1EDEC1458);
  __swift_project_value_buffer(v5, qword_1EDEC1458);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDEC1480);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D33DE3C4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1D331D994()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EDEC1480);
  __swift_project_value_buffer(v0, qword_1EDEC1480);
  return sub_1D33DE454();
}

uint64_t sub_1D331DA18(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D331DA64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D331ED74(a1, v4, v5, v6);
}

id RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, char a5@<W5>, unsigned __int8 *a6@<X6>, char a7@<W7>, char **a8@<X8>)
{
  v105 = a4;
  v106 = a3;
  v107 = a8;
  v114 = a1;
  v12 = sub_1D33DEB84();
  v110 = *(v12 - 8);
  v111 = v12;
  v13 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D33DEB24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1D33DE6A4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = 0;
  v115 = *a6;
  if (a5)
  {
    v20 = sub_1D33DE2A4();
    v21 = sub_1D33DE294();
    *(&v138 + 1) = v20;
    v139 = &off_1F4EE4AF0;
    *&v137 = v21;
    v22 = type metadata accessor for VideoMessageInboxController();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v137, v20);
    v27 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = (&v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v19 = sub_1D3392828(*v29, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  }

  v113 = v19;
  if (a2)
  {
    v31 = objc_allocWithZone(type metadata accessor for ConversationDataSource());
    v112 = ConversationDataSource.init(conversationManager:)(v114);
  }

  else
  {
    v112 = 0;
  }

  v32 = 7;
  if (a7)
  {
    v32 = 15;
  }

  v109 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D33E31E0;
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v33 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v33 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v33 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v34 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1D331DA18(0, &unk_1EDEBEEA0, 0x1E69D8C40);
  v35 = sub_1D33DE8A4();

  v104 = [v34 initWithDataProviders_];

  v36 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  *&v137 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33DED64();
  (*(v110 + 104))(v108, *MEMORY[0x1E69E8090], v111);
  v111 = v36;
  v110 = sub_1D33DEBD4();
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDEBFC50;
  v38 = type metadata accessor for RequestsHandler();
  *(&v138 + 1) = v38;
  v139 = &off_1F4EE7D80;
  *&v137 = v37;
  v39 = objc_allocWithZone(type metadata accessor for RecentsUnreadCountManager());
  v40 = *(&v138 + 1);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v47 = v37;
  v48 = sub_1D33930E8(v46, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  v49 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:v115 options:v109];
  v50 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v51 = objc_opt_self();
  result = [v51 contactStore];
  if (result)
  {
    v53 = result;
    v54 = [v51 suggestedContactStore];
    v55 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
    v56 = v104;
    v57 = v49;
    v109 = v56;
    v58 = [v55 initWithCallHistoryController:v57 callProviderManager:v50 contactStore:v53 suggestedContactStore:v54 metadataCache:v56];

    v59 = sub_1D33DEB94();
    [v58 addDelegate:v48 queue:v59];

    v60 = objc_allocWithZone(type metadata accessor for RecentCallProvider());
    v61 = sub_1D331EF10(v58);

    *(&v138 + 1) = v38;
    v139 = &off_1F4EE7D80;
    *&v137 = v47;
    v62 = type metadata accessor for RecentsControllerBox();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    v65 = swift_allocObject();
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v137, v38);
    v111 = v48;
    v67 = *(*(v38 - 8) + 64);
    MEMORY[0x1EEE9AC00](v66);
    v69 = (&v104 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = *v69;
    v72 = v47;
    v73 = sub_1D3393364(v61, v71, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(&v137);
    v74 = v73;
    swift_weakAssign();
    v115 = 0;
    if (v105)
    {
      v75 = type metadata accessor for RecentsLinkController();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = v114;

      v115 = RecentsLinkController.init(conversationManager:)(v78);
    }

    v79 = v112;
    if (v112)
    {
      v80 = type metadata accessor for ConversationDataSource();
      v81 = sub_1D33927E0(&qword_1EDEBF558, type metadata accessor for ConversationDataSource);
      v82 = v79;
    }

    else
    {
      v82 = 0;
      v80 = 0;
      v81 = 0;
      v120 = 0;
      v121 = 0;
    }

    v83 = v113;
    v119 = v82;
    v122 = v80;
    v123 = v81;
    v84 = v115;
    if (v115)
    {
      v85 = type metadata accessor for RecentsLinkController();
      v86 = sub_1D33927E0(&unk_1EDEBF800, type metadata accessor for RecentsLinkController);
      v84 = v115;
    }

    else
    {
      v85 = 0;
      v86 = 0;
      v125 = 0;
      v126 = 0;
    }

    v124 = v84;
    v127 = v85;
    v128 = v86;
    if (v83)
    {
      v87 = type metadata accessor for VideoMessageInboxController();
      v88 = sub_1D33927E0(&qword_1EDEBF308, type metadata accessor for VideoMessageInboxController);
      v89 = v83;
    }

    else
    {
      v89 = 0;
      v87 = 0;
      v88 = 0;
      v130 = 0;
      v131 = 0;
    }

    v129 = v89;
    v132 = v87;
    v133 = v88;
    v135 = v62;
    v136 = sub_1D33927E0(&qword_1EDEBFAC8, type metadata accessor for RecentsControllerBox);
    v134 = v74;
    v108 = v74;

    v90 = v79;

    v91 = MEMORY[0x1E69E7CC0];
    for (i = 32; i != 192; i += 40)
    {
      sub_1D331E818(&v118[2] + i + 8, &v137, &unk_1EC761800, &qword_1D33E3230);
      v116[0] = v137;
      v116[1] = v138;
      v117 = v139;
      if (*(&v138 + 1))
      {
        sub_1D331E6AC(v116, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1D33226D4(0, *(v91 + 2) + 1, 1, v91);
        }

        v94 = *(v91 + 2);
        v93 = *(v91 + 3);
        if (v94 >= v93 >> 1)
        {
          v91 = sub_1D33226D4((v93 > 1), v94 + 1, 1, v91);
        }

        *(v91 + 2) = v94 + 1;
        sub_1D331E6AC(v118, &v91[40 * v94 + 32]);
      }

      else
      {
        sub_1D331E880(v116, &unk_1EC761800, &qword_1D33E3230);
      }
    }

    v95 = v108;

    v96 = v115;

    v97 = v109;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761800, &qword_1D33E3230);
    swift_arrayDestroy();
    result = swift_unknownObjectRelease();
    v98 = v107;
    v99 = v112;
    v100 = v113;
    *v107 = v95;
    v98[1] = v99;
    v101 = v114;
    v98[2] = v100;
    v98[3] = v101;
    v102 = v110;
    v103 = v111;
    v98[4] = v91;
    v98[5] = v103;
    v98[6] = v96;
    v98[7] = v102;
    v98[8] = v97;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D331E6AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D331E6C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761EE8, &qword_1D33E5588);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

char *sub_1D331E6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DD8, &qword_1D33E1B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D331E818(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D331E880(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D331E8E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D332B6E4;

  return v7(a1);
}

uint64_t sub_1D331E9D8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = [*(Strong + 16) favoritesEntries];
    sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
    v4 = sub_1D33DE8B4();

    if (v4 >> 62)
    {
LABEL_30:
      v5 = sub_1D33DEE14();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = MEMORY[0x1E69E7CC0];
        v34 = *MEMORY[0x1E695C420];
        v35 = v0;
        do
        {
          v36 = v7;
          v8 = v6;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1D38B75D0](v8, v4);
            }

            else
            {
              if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v9 = *(v4 + 8 * v8 + 32);
            }

            v10 = v9;
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v11 = [v9 contactProperty];
            if (v11)
            {
              v12 = v11;
              v13 = [v11 contact];

              if (v13)
              {
                break;
              }
            }

            ++v8;
            if (v6 == v5)
            {
              v0 = v35;
              v7 = v36;
              goto LABEL_32;
            }
          }

          v14 = v13;
          v15 = [v14 isKeyAvailable_];
          v16 = [objc_opt_self() stringFromContact:v14 style:1000];
          if (v16)
          {
            v17 = v16;
            v18 = sub_1D33DE7B4();
            v32 = v19;
            v33 = v18;

            v20 = v14;
          }

          else
          {
            v20 = [v14 givenName];

            v21 = sub_1D33DE7B4();
            v32 = v22;
            v33 = v21;
          }

          v23 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1D331E6F4(0, *(v36 + 16) + 1, 1, v36);
          }

          v25 = *(v23 + 2);
          v24 = *(v23 + 3);
          v26 = v23;
          if (v25 >= v24 >> 1)
          {
            v26 = sub_1D331E6F4((v24 > 1), v25 + 1, 1, v23);
          }

          *(v26 + 2) = v25 + 1;
          v7 = v26;
          v27 = &v26[56 * v25];
          *(v27 + 4) = v33;
          *(v27 + 5) = v32;
          *(v27 + 6) = v14;
          *(v27 + 7) = 0;
          *(v27 + 8) = 0;
          *(v27 + 9) = v10;
          v27[80] = v15;
          v0 = v35;
        }

        while (v6 != v5);
        goto LABEL_32;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v0[7] = sub_1D3329904(v7);

    sub_1D33DE974();
    v0[8] = sub_1D33DE964();
    v31 = sub_1D33DE914();

    return MEMORY[0x1EEE6DFA0](sub_1D3338B5C, v31, v30);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D331ED94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334D4B4;

  return sub_1D331E8E0(a1, v5);
}

uint64_t type metadata accessor for VideoMessageInboxController()
{
  result = qword_1EDEBF2F8;
  if (!qword_1EDEBF2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D331EE98()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState) = *(v0 + 24);
}

uint64_t sub_1D331EEDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_1D331EF10(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_presentScreenTimeShield];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItems] = 0;
  v4 = OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItemsUpdateTrigger;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_1D33DE4D4();
  *&v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController] = a1;
  v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_startedLoadingOlderCalls] = 0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RecentCallProvider();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController];
  v11 = v9;
  v12 = v10;
  v13 = [v12 serialQueue];
  [v12 addDelegate:v11 queue:v13];

  return v11;
}

uint64_t type metadata accessor for RecentsControllerBox()
{
  result = qword_1EDEBFAB0;
  if (!qword_1EDEBFAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D331F080()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760DF0, &qword_1D33E1CC0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1D331F0B0()
{
  sub_1D331F1C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D33DDF14();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D331F1C4()
{
  if (!qword_1EDEBEF60)
  {
    v0 = sub_1D33DE594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBEF60);
    }
  }
}

uint64_t sub_1D331F244(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D331F27C()
{
  sub_1D331F384();
  if (v0 <= 0x3F)
  {
    sub_1D331F3EC();
    if (v1 <= 0x3F)
    {
      sub_1D33A71C0(319, qword_1EDEBFDD0, type metadata accessor for CallInfo);
      if (v2 <= 0x3F)
      {
        sub_1D33A71C0(319, qword_1EDEBFE88, type metadata accessor for ReminderStatus);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D331F384()
{
  if (!qword_1EDEBFD58)
  {
    sub_1D331DA18(255, &qword_1EDEBFD50, 0x1E695CD58);
    v0 = sub_1D33DE904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBFD58);
    }
  }
}

void sub_1D331F3EC()
{
  if (!qword_1EDEBFD60)
  {
    v0 = sub_1D33DECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBFD60);
    }
  }
}

void sub_1D331F45C()
{
  sub_1D33DDD34();
  if (v0 <= 0x3F)
  {
    sub_1D331F3EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D331F514()
{
  result = qword_1EDEBEE80;
  if (!qword_1EDEBEE80)
  {
    sub_1D331F56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEE80);
  }

  return result;
}

unint64_t sub_1D331F56C()
{
  result = qword_1EDEBEE90;
  if (!qword_1EDEBEE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEE90);
  }

  return result;
}

uint64_t RecentsItem.init(from:recentsItem:contacts:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v97 = a2;
  v95 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v79 - v7;
  v94 = type metadata accessor for ReminderStatus();
  v91 = *(v94 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RecentsItem(0);
  v10 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v79 - v15;
  v17 = sub_1D33DDD34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - v22;
  v24 = type metadata accessor for CallInfo(0);
  v90 = *(v24 - 1);
  v25 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a1 uniqueId];
  v29 = sub_1D33DE7B4();
  v85 = v30;
  v86 = v29;

  v84 = [a1 callStatus];
  v31 = MEMORY[0x1E69935C8];
  v32 = a1;
  v33 = [a1 date];
  v88 = v18;
  v89 = v17;
  v87 = v23;
  if (v33)
  {
    v34 = v83;
    v35 = v33;
    sub_1D33DDCF4();

    v82 = v32;
    v36 = *(v18 + 32);
    v36(v16, v34, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v36(v23, v16, v17);
    v31 = MEMORY[0x1E69935C8];
    v32 = v82;
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    sub_1D33DDD04();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_1D331E880(v16, &qword_1EC760E10, &unk_1D33E1A90);
    }
  }

  v37 = *v31;
  v83 = [v32 numberOfOccurrences];
  v38 = [v97 localizedSenderIdentityTitle];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D33DE7B4();
    v81 = v41;
    v82 = v40;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v42 = v84 == v37;
  v43 = *MEMORY[0x1E69935C0];
  v44 = v32;
  v45 = ([v32 callStatus] & v43) == 0;
  [v44 duration];
  v47 = v46;
  v48 = v97;
  v49 = [v97 verified];
  v50 = [v44 isJunk];
  LOBYTE(v43) = [v48 isBlocked];
  v51 = v85;
  *v27 = v86;
  *(v27 + 1) = v51;
  v27[16] = v42;
  (*(v88 + 32))(&v27[v24[6]], v87, v89);
  v52 = v82;
  *&v27[v24[7]] = v83;
  v53 = &v27[v24[8]];
  v54 = v81;
  *v53 = v52;
  *(v53 + 1) = v54;
  v27[v24[9]] = v45;
  *&v27[v24[10]] = v47;
  v27[v24[11]] = v49;
  v27[v24[12]] = v50;
  v27[v24[13]] = v43;
  v89 = v44;
  v55 = [v48 localizedTitle];
  if (v55)
  {
    v56 = v55;
    v88 = sub_1D33DE7B4();
    v58 = v57;
  }

  else
  {
    v88 = 0;
    v58 = 0;
  }

  v59 = v96;
  v60 = [v97 localizedSubtitle];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1D33DE7B4();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = v59[8];
  sub_1D336D080(v27, &v12[v65], type metadata accessor for CallInfo);
  (*(v90 + 56))(&v12[v65], 0, 1, v24);
  v66 = &v12[v59[9]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v67 = &v12[v59[10]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v68 = v91;
  v69 = &v12[v59[11]];
  v70 = v94;
  v90 = *(v91 + 56);
  (v90)(v69, 1, 1, v94);
  v71 = v89;
  *v12 = v89;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 4;
  *(v12 + 7) = v58;
  *(v12 + 8) = v62;
  *(v12 + 9) = v64;
  v72 = v88;
  *(v12 + 5) = v92;
  *(v12 + 6) = v72;
  v73 = v95;
  sub_1D33290D8(v12, v95, type metadata accessor for RecentsItem);
  v74 = v93;
  RecentsItem.getReminderStatus()(v93);

  sub_1D3367D30(v27, type metadata accessor for CallInfo);
  if ((*(v68 + 48))(v74, 1, v70) == 1)
  {
    return sub_1D331E880(v74, &unk_1EC761320, &unk_1D33E28D0);
  }

  v76 = v74;
  v77 = v80;
  sub_1D33290D8(v76, v80, type metadata accessor for ReminderStatus);
  v78 = *(v96 + 44);
  sub_1D331E880(v73 + v78, &unk_1EC761320, &unk_1D33E28D0);
  sub_1D33290D8(v77, v73 + v78, type metadata accessor for ReminderStatus);
  return (v90)(v73 + v78, 0, 1, v70);
}

void sub_1D331FD68()
{
  sub_1D334B194();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D33DDF14();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D331FE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D331FEDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D331FF08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D33DDD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

size_t sub_1D331FFAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1D3320188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761460, &qword_1D33E2998);
    v3 = sub_1D33DF124();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D33B9340(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_1D3320290(uint64_t a1)
{
  result = sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D33202E8(uint64_t a1)
{
  result = sub_1D334EAE0();
  *(a1 + 8) = result;
  return result;
}

void *sub_1D3320310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *RecentsItemDataSource.init(configuration:messageQuery:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v90 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v79 - v10;
  v86 = sub_1D33DE2F4();
  v85 = *(v86 - 8);
  v11 = *(v85 + 64);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v79 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v79 - v14;
  v84 = sub_1D33DEB84();
  v83 = *(v84 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D33DEB24();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D33DE6A4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = a1[3];
  v96 = a1[2];
  v97 = v27;
  v98 = *(a1 + 8);
  v28 = a1[1];
  v94 = *a1;
  v95 = v28;
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded] = 0;
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState] = 0;
  v29 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading];
  *v29 = 0;
  v29[4] = 0;
  v30 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoad;
  LOBYTE(v93[0]) = 0;
  sub_1D33DE534();
  (*(v23 + 32))(&v3[v30], v26, v22);
  v31 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue];
  LOBYTE(v93[0]) = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_1D33DE504();
  *v31 = 0;
  *(v31 + 1) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems] = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v3[v37] = sub_1D33DE4D4();
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_messageInboxSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_videoMessageLoadSubscription] = 0;
  v41 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateQueue;
  v43 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE694();
  v93[0] = v36;
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
  v44 = v43;
  sub_1D33DED64();
  (*(v83 + 104))(v82, *MEMORY[0x1E69E8090], v84);
  *&v3[v42] = sub_1D33DEBD4();
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask] = 0;
  v45 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_previousDataSourceStates];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_featureFlags;
  v47 = &off_1E843B000;
  *&v3[v46] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__signState] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__reminderUpdateCancellable] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__datasourceCancellable] = 0;
  sub_1D33DDF04();
  v48 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
  v49 = v97;
  *(v48 + 2) = v96;
  *(v48 + 3) = v49;
  *(v48 + 8) = v98;
  v50 = v95;
  *v48 = v94;
  *(v48 + 1) = v50;
  sub_1D3322888(&v94, v93);
  if (qword_1EDEBF9C0 != -1)
  {
    swift_once();
  }

  v51 = &qword_1EDEBF000;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsReminderCache] = off_1EDEBF9C8;
  v52 = v90;
  v53 = v87;
  sub_1D331E818(v90, v87, &qword_1EC7618B8, &qword_1D33E3368);
  v54 = v85;
  v55 = v86;
  v56 = v53;
  if ((*(v85 + 48))(v53, 1, v86) == 1)
  {

    sub_1D331E880(v53, &qword_1EC7618B8, &qword_1D33E3368);
  }

  else
  {
    v57 = v80;
    (*(v54 + 32))(v80, v56, v55);
    v58 = v95;
    if (v95)
    {
      v59 = *(v54 + 16);
      v87 = v44;
      v60 = v79;
      v59(v79, v57, v55);
      v61 = v55;
      v62 = (v58 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);

      os_unfair_lock_lock(v62);
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
      v64 = *(v54 + 8);
      v64(v62 + v63, v61);
      v59(v62 + v63, v60, v61);
      v47 = &off_1E843B000;
      v52 = v90;
      os_unfair_lock_unlock(v62);
      sub_1D33220A8();
      v64(v60, v61);
      v64(v80, v61);
      v51 = &qword_1EDEBF000;
    }

    else
    {
      v65 = *(v54 + 8);

      v65(v57, v55);
    }
  }

  v92.receiver = v3;
  v92.super_class = ObjectType;
  v66 = objc_msgSendSuper2(&v92, v47[402]);
  v67 = *(&v95 + 1);
  v68 = v66;
  v69 = sub_1D33DEB94();
  [v67 addDelegate:v68 queue:v69];

  sub_1D3321A50(&v94);
  v70 = sub_1D33DE9B4();
  v71 = v89;
  (*(*(v70 - 8) + 56))(v89, 1, 1, v70);
  sub_1D33DE974();
  v72 = v68;
  v73 = sub_1D33DE964();
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  v74[2] = v73;
  v74[3] = v75;
  v74[4] = v72;
  sub_1D333DD88(0, 0, v71, &unk_1D33E3378, v74);

  v76 = *&v72[v51[277]];
  swift_beginAccess();
  v91 = *(v76 + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618F0, &qword_1D33E3380);
  sub_1D334CB54(&qword_1EDEBEF88, &qword_1EC7618F0, &qword_1D33E3380);
  v77 = sub_1D33DE644();

  sub_1D338C6FC(v77, &OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__reminderUpdateCancellable);

  sub_1D331E880(v52, &qword_1EC7618B8, &qword_1D33E3368);
  return v72;
}

void *sub_1D3320F94()
{
  type metadata accessor for RecentsReminderCache();
  v0 = swift_allocObject();
  result = sub_1D3320FF4();
  off_1EDEBF9C8 = v0;
  return result;
}

void *sub_1D3320FF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v42 - v4;
  v57 = sub_1D33DECB4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D33DEC24();
  v52 = *(v58 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D10, &qword_1D33E4A88);
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = v42 - v15;
  v59 = sub_1D3321700(MEMORY[0x1E69E7CC0]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618F0, &qword_1D33E3380);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D33DE504();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v21 = [v20 callRemindersEnabled];

  if (v21)
  {
    v1[2] = [objc_allocWithZone(MEMORY[0x1E69C6D28]) init];
    v51 = objc_opt_self();
    v22 = [v51 defaultCenter];
    v23 = [objc_opt_self() storeDidChangeNotificationName];
    sub_1D33DEC34();

    sub_1D33DECA4();
    v50 = objc_opt_self();
    v24 = [v50 mainRunLoop];
    v55 = v6;
    v25 = v24;
    v59 = v24;
    v48 = sub_1D33DEC94();
    v26 = *(v48 - 8);
    v47 = *(v26 + 56);
    v49 = v26 + 56;
    v47(v5, 1, 1, v48);
    v46 = sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
    v45 = sub_1D33B850C(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
    v44 = sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0);
    v27 = v56;
    v28 = v58;
    sub_1D33DE614();
    sub_1D331E880(v5, &unk_1EC7617E0, &unk_1D33E3210);

    v29 = *(v55 + 8);
    v55 += 8;
    v43 = v29;
    v29(v9, v57);
    v42[0] = v9;
    v52 = *(v52 + 8);
    (v52)(v12, v28);
    swift_allocObject();
    swift_weakInit();
    v42[1] = sub_1D33219EC();

    v30 = v54;
    v31 = sub_1D33DE644();

    v53 = *(v53 + 8);
    (v53)(v27, v30);
    v32 = v1[4];
    v1[4] = v31;

    v33 = [v51 defaultCenter];
    v34 = *MEMORY[0x1E69DDBC0];
    sub_1D33DEC34();

    v35 = v42[0];
    sub_1D33DECA4();
    v36 = [v50 mainRunLoop];
    v59 = v36;
    v47(v5, 1, 1, v48);
    v37 = v58;
    sub_1D33DE614();
    sub_1D331E880(v5, &unk_1EC7617E0, &unk_1D33E3210);

    v43(v35, v57);
    (v52)(v12, v37);
    swift_allocObject();
    swift_weakInit();

    v38 = v56;
    v39 = sub_1D33DE644();

    (v53)(v38, v30);
    v40 = v1[5];
    v1[5] = v39;
  }

  else
  {
    v1[2] = 0;
  }

  return v1;
}

uint64_t sub_1D33216C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D3321700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761458, &qword_1D33E2990);
    v8 = sub_1D33DF124();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v10, v6, &qword_1EC761450, &qword_1D33E1B10);
      result = sub_1D33B926C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D33DDDB4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ReminderStatus();
      result = sub_1D33290D8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ReminderStatus);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t type metadata accessor for ReminderStatus()
{
  result = qword_1EDEBFEC0;
  if (!qword_1EDEBFEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3321968()
{
  sub_1D3371B10();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D33219EC()
{
  result = qword_1EDEBEFE0;
  if (!qword_1EDEBEFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761D10, &qword_1D33E4A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEFE0);
  }

  return result;
}

void sub_1D3321A80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1D33DE9B4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1D33DE974();
    v7 = v5;
    v8 = sub_1D33DE964();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1D333DD88(0, 0, v3, &unk_1D33E3880, v9);
  }
}

uint64_t sub_1D3321BFC()
{
  result = sub_1D33DDF14();
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

char *sub_1D3321CEC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1D33DEE14();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1D331FEEC();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t RecentsItemDataSource.messageQuery.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D33DE2F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1D331E818(a1, v6, &qword_1EC7618B8, &qword_1D33E3368);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
    return sub_1D331E880(v6, &qword_1EC7618B8, &qword_1D33E3368);
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v16 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
    if (v16)
    {
      v21 = *(v8 + 16);
      v21(v12, v14, v7);
      v17 = (v16 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
      os_unfair_lock_lock((v16 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
      v19 = *(v8 + 8);
      v19(v17 + v18, v7);
      v21(v17 + v18, v12, v7);
      os_unfair_lock_unlock(v17);
      sub_1D33220A8();
      sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
      v19(v12, v7);
      return (v19)(v14, v7);
    }

    else
    {
      sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
      return (*(v8 + 8))(v14, v7);
    }
  }
}

void sub_1D33220A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  if (*(v5 + 40) == 1)
  {

    os_unfair_lock_unlock(v5);
  }

  else
  {
    *(v5 + 40) = 1;
    os_unfair_lock_unlock(v5);
    sub_1D33DE984();
    v6 = sub_1D33DE9B4();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v9 = sub_1D3341AEC(0, 0, v4, &unk_1D33E1B88, v8);
    sub_1D331E880(v4, &unk_1EC7610E0, &qword_1D33E16C0);
    sub_1D3322298(v9);
  }
}

uint64_t sub_1D332224C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3322298(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask;
  if (!*(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask))
  {
    if (!result)
    {
      *(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = 0;
      return result;
    }

    goto LABEL_9;
  }

  if (!result || (v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30), v5 = sub_1D33DE9C4(), result = , (v5 & 1) == 0))
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
    sub_1D33DDEC4();
  }

  v6 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    sub_1D33DE9D4();
  }

  return result;
}

uint64_t sub_1D3322480()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D33224B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D70, &qword_1D33E1820);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3322508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D3322298(v4);
}

uint64_t sub_1D3322534()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617A8, &qword_1D33E31B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3322580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask);
  *(a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = a2;
  if (!v2)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  sub_1D33DE9D4();
}

void RecentsItemDataSource.preFetchingPredicate.setter(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
    if (v2)
    {
      v3 = *(v2 + 16);
      type metadata accessor for RecentCallProvider();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
        [v5 setPreFetchingPredicate_];
      }
    }
  }
}

uint64_t type metadata accessor for RecentsItemDataSource()
{
  result = qword_1EDEBF830;
  if (!qword_1EDEBF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3322744()
{
  sub_1D331F1C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D33DDF14();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for ConversationDataSource()
{
  result = qword_1EDEBF548;
  if (!qword_1EDEBF548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ConversationDataSource.init(conversationManager:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_1D33DEB74();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F28, &qword_1D33E2298);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v38 - v15;
  v16 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F38, &unk_1D33E22A0);
  v17 = *(v39 + 48);
  v18 = *(v39 + 52);
  swift_allocObject();
  *&v1[v16] = sub_1D33DE4D4();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__signState] = 0;
  v19 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject;
  LOBYTE(v47) = 2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v1[v19] = sub_1D33DE504();
  sub_1D33DDF04();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationManager] = a1;
  v41 = a1;
  v23 = [v41 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20);
  v24 = sub_1D33DEA54();

  v25 = sub_1D3321CC0(v24);

  v26 = &v2[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state];
  *v26 = 0;
  *(v26 + 1) = v25;
  v27 = type metadata accessor for ConversationDataSource();
  v48.receiver = v2;
  v48.super_class = v27;
  v28 = objc_msgSendSuper2(&v48, sel_init);
  v47 = *&v28[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject];
  v29 = v28;

  sub_1D33DEB44();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v30 = sub_1D33DEB94();
  v46 = v30;
  v31 = sub_1D33DEB34();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  sub_1D334CB54(&qword_1EDEBEFA0, &qword_1EC760F38, &unk_1D33E22A0);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v32 = v40;
  sub_1D33DE614();
  sub_1D3322E88(v7);

  (*(v42 + 8))(v11, v43);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&unk_1EDEBF010, &qword_1EC760F28, &qword_1D33E2298);
  v33 = v44;
  v34 = sub_1D33DE644();

  (*(v45 + 8))(v32, v33);
  sub_1D3322EF0(v34);
  v35 = sub_1D33DEB94();
  v36 = v41;
  [v41 addDelegate:v29 queue:v35];

  return v29;
}

uint64_t sub_1D3322E50()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3322E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3322EF0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink;
  if (!*(v1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
    sub_1D33DDEC4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D33DE4A4();
  sub_1D3357A88(&unk_1EC760FF0, MEMORY[0x1E695BF10]);

  v5 = sub_1D33DE774();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1D33230A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F68, &qword_1D33E2378);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D33230F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D3322EF0(v4);
}

uint64_t sub_1D3323124(uint64_t a1)
{
  result = sub_1D33927E0(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D332317C()
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  v0[48] = __swift_project_value_buffer(v1, qword_1EDEC1480);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Fetching Messages count from FTMS", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[39];
  v20 = v0[46];
  v21 = v0[40];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[43];
  v9 = v0[19];

  v10 = (v9 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  os_unfair_lock_lock((v9 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  v12 = *(v6 + 16);
  v12(v5, v10 + *(v11 + 28), v7);
  os_unfair_lock_unlock(v10);
  swift_getKeyPath();
  v0[49] = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController___observationRegistrar;
  v0[10] = v9;
  v0[50] = sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v13 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  sub_1D3325720(v9 + v13, (v0 + 2));
  v14 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12(v20, v5, v7);
  (*(v8 + 104))(v21, *MEMORY[0x1E699BFC0], v22);
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D331FE94(&qword_1EDEBF060, MEMORY[0x1E699BF10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D88, &qword_1D33E1988);
  sub_1D334CB54(&unk_1EDEBEF38, &qword_1EC760D88, &qword_1D33E1988);
  sub_1D33DED64();
  sub_1D33DE2C4();
  v15 = *v14;
  v16 = *(MEMORY[0x1E699BF70] + 4);
  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_1D3323B20;
  v18 = v0[43];

  return MEMORY[0x1EEE03BD0](v18);
}

uint64_t sub_1D3323538()
{
  v1[19] = v0;
  v2 = sub_1D33DE3F4();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = *(type metadata accessor for RecentsItem(0) - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v1[25] = v7;
  v8 = *(v7 - 8);
  v1[26] = v8;
  v9 = *(v8 + 64) + 15;
  v1[27] = swift_task_alloc();
  v10 = sub_1D33DE3B4();
  v1[28] = v10;
  v11 = *(v10 - 8);
  v1[29] = v11;
  v12 = *(v11 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v13 = sub_1D33DEFE4();
  v1[33] = v13;
  v14 = *(v13 - 8);
  v1[34] = v14;
  v15 = *(v14 + 64) + 15;
  v1[35] = swift_task_alloc();
  v16 = sub_1D33DE1D4();
  v1[36] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v18 = sub_1D33DE2B4();
  v1[38] = v18;
  v19 = *(v18 - 8);
  v1[39] = v19;
  v20 = *(v19 + 64) + 15;
  v1[40] = swift_task_alloc();
  v21 = sub_1D33DE2D4();
  v1[41] = v21;
  v22 = *(v21 - 8);
  v1[42] = v22;
  v23 = *(v22 + 64) + 15;
  v1[43] = swift_task_alloc();
  v24 = sub_1D33DE2F4();
  v1[44] = v24;
  v25 = *(v24 - 8);
  v1[45] = v25;
  v26 = *(v25 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D332317C, 0, 0);
}

uint64_t sub_1D33238EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D3323A70()
{
  v0 = sub_1D33DDB54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t RecentsItemDataSource.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v9 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D3322888(v8, v7);
}

uint64_t sub_1D3323B20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  (*(v3[42] + 8))(v3[43], v3[41]);
  if (v1)
  {
    v7 = sub_1D3323D90;
  }

  else
  {
    v7 = sub_1D3323C90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3323C90()
{
  v1 = v0[48];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[52];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D331A000, v2, v3, "There are %{public}ld message(s) in FTMS", v5, 0xCu);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v6 = v0[19];

  v7 = *(v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader);
  v0[54] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D3323EBC, v7, 0);
}

uint64_t sub_1D3323D90()
{
  (*(v0[45] + 8))(v0[47], v0[44]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v10 = v0[27];
  v13 = v0[24];
  v14 = v0[22];
  v15 = v0[53];

  v11 = v0[1];

  return v11();
}

uint64_t RecentsItemDataSource.recentsItemsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = v44 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761850, &qword_1D33E3318);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761858, &qword_1D33E3320);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761860, &qword_1D33E3328);
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v44 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761868, &qword_1D33E3330);
  v58 = *(v54 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v44 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761870, &qword_1D33E3338);
  v59 = *(v57 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v49 = v44 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761878, &qword_1D33E3340);
  v23 = *(v22 - 8);
  v55 = v22;
  v56 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v50 = v44 - v25;
  v44[0] = v0;
  v26 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  v60 = *(v26 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  sub_1D334CB54(&qword_1EDEBEF80, &qword_1EC761828, &qword_1D33E3260);
  v27 = sub_1D33DE5A4();
  os_unfair_lock_unlock(v26);
  v60 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761880, &qword_1D33E3348);
  sub_1D334CB54(&unk_1EDEBEFC8, &unk_1EC761880, &qword_1D33E3348);
  sub_1D33DE624();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761890, &qword_1D33E3350);
  v44[1] = MEMORY[0x1E695BD38];
  sub_1D334CB54(&qword_1EDEBF048, &qword_1EC761850, &qword_1D33E3318);
  v28 = v45;
  sub_1D33DE5D4();

  (*(v4 + 8))(v7, v28);
  v29 = sub_1D334CB54(&qword_1EDEBF030, &qword_1EC761858, &qword_1D33E3320);
  v30 = sub_1D334CB54(&unk_1EDEBEFB8, &unk_1EC761890, &qword_1D33E3350);
  v31 = v46;
  MEMORY[0x1D38B6CC0](v46, v29, v30);
  (*(v47 + 8))(v12, v31);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v32 = sub_1D33DEB94();
  v60 = v32;
  v33 = sub_1D33DEB34();
  v34 = v53;
  (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
  sub_1D334CB54(&qword_1EDEBF050, &qword_1EC761860, &qword_1D33E3328);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v35 = v48;
  v36 = v51;
  sub_1D33DE604();
  sub_1D331E880(v34, &qword_1EC760F20, &qword_1D33E2290);

  (*(v52 + 8))(v17, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7618A0, &qword_1D33E3358);
  sub_1D334CB54(&qword_1EDEBEFD8, &qword_1EC761868, &qword_1D33E3330);
  v37 = v49;
  v38 = v54;
  sub_1D33DE5D4();

  (*(v58 + 8))(v35, v38);
  sub_1D334CB54(&unk_1EDEBF020, &qword_1EC761870, &qword_1D33E3338);
  sub_1D3324CE0();
  v39 = v50;
  v40 = v57;
  sub_1D33DE624();
  (*(v59 + 8))(v37, v40);
  sub_1D334CB54(&qword_1EDEBF038, &qword_1EC761878, &qword_1D33E3340);
  v41 = v55;
  v42 = sub_1D33DE5A4();
  (*(v56 + 8))(v39, v41);
  return v42;
}

uint64_t sub_1D33247A0()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33247D8()
{
  if (sub_1D33DE9F4())
  {
    v1 = v0[1];

    return v1(0, 1);
  }

  else
  {
    v3 = v0[2];
    v4 = *v3;
    v0[3] = *v3;

    return MEMORY[0x1EEE6DFA0](sub_1D3324D94, v4, 0);
  }
}

uint64_t sub_1D3324880(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 136);
  if (v5 < 1)
  {
    if (*(v3 + 32) > 0)
    {
      return (*(v3 + 8))(0, 1);
    }
  }

  else
  {
    if (v5 > 0x14)
    {
      v6 = ceil(v5 / 20.0);
      if (v6 == INFINITY)
      {
        __break(1u);
      }

      else if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          if (*(v3 + 32) <= v6)
          {
            goto LABEL_11;
          }

          return (*(v3 + 8))(0, 1);
        }

LABEL_14:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](a1, v4, a3);
      }

      __break(1u);
      goto LABEL_14;
    }

    if (*(v3 + 32) > 1)
    {
      return (*(v3 + 8))(0, 1);
    }
  }

LABEL_11:
  a1 = sub_1D3324CAC;
  a3 = 0;
  return MEMORY[0x1EEE6DFA0](a1, v4, a3);
}

uint64_t sub_1D332494C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v22 = v0[11];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v23 = v0[7];
  v24 = v0[19];
  v9 = (v8 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  os_unfair_lock_lock((v8 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  (*(v1 + 16))(v2, v9 + *(v10 + 28), v4);
  os_unfair_lock_unlock(v9);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D80, &qword_1D33E1980) + 48);
  v12 = *MEMORY[0x1E699BF50];
  v13 = sub_1D33DE1E4();
  (*(*(v13 - 8) + 104))(v3, v12, v13);
  v14 = *MEMORY[0x1E699BF60];
  v15 = sub_1D33DE234();
  (*(*(v15 - 8) + 104))(v3 + v11, v14, v15);
  (*(v5 + 104))(v3, *MEMORY[0x1E699BFB8], v22);
  v0[5] = MEMORY[0x1E69E7CC0];
  sub_1D331FE94(&qword_1EDEBF060, MEMORY[0x1E699BF10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D88, &qword_1D33E1988);
  sub_1D334CB54(&unk_1EDEBEF38, &qword_1EC760D88, &qword_1D33E1988);
  sub_1D33DED64();
  sub_1D33DE2C4();
  swift_getKeyPath();
  v0[6] = v8;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v16 = (v8 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  v17 = *__swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v18 = *(MEMORY[0x1E699BF88] + 4);
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_1D33257C8;
  v20 = v0[19];

  return MEMORY[0x1EEE03BF8](v20);
}

uint64_t sub_1D3324CAC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 128);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 128) = v4;
    return (*(v0 + 8))(*(v0 + 32), 0);
  }

  return result;
}

unint64_t sub_1D3324CE0()
{
  result = qword_1EDEBEF48;
  if (!qword_1EDEBEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7618A0, &qword_1D33E3358);
    sub_1D33927E0(&qword_1EDEBFD10, type metadata accessor for RecentsItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF48);
  }

  return result;
}

uint64_t sub_1D3324D94()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = *(v1 + 128);
  return MEMORY[0x1EEE6DFA0](sub_1D3324880, v1, 0);
}

Swift::Void __swiftcall RecentsItemDataSource.resume()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1D33DE3B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = &v0[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading];
  os_unfair_lock_lock(v14);
  os_unfair_lock_opaque_low = LOBYTE(v14[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v14);
  if (os_unfair_lock_opaque_low != 1)
  {
    os_unfair_lock_lock(v14);
    LOBYTE(v14[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v14);
    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v16 = sub_1D33DE3E4();
    __swift_project_value_buffer(v16, qword_1EDEC1458);
    sub_1D33DE3A4();
    v17 = sub_1D33DE3D4();
    v18 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v17, v18, v20, "RecentsItemDataSource loading", "", v19, 2u);
      MEMORY[0x1D38B81C0](v19, -1, -1);
    }

    (*(v7 + 16))(v11, v13, v6);
    v21 = sub_1D33DE424();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1D33DE414();
    (*(v7 + 8))(v13, v6);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v45 - 2) = v1;
    *(&v45 - 1) = v24;
    *&v52[0] = v1;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();

    v26 = sub_1D33DE9B4();
    v27 = *(*(v26 - 8) + 56);
    v27(v5, 1, 1, v26);
    sub_1D33DE974();
    v28 = v1;
    v29 = sub_1D33DE964();
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    sub_1D333DD88(0, 0, v5, &unk_1D33E33B8, v30);

    sub_1D338CF6C();
    v50[0] = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v33 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32];
    v32 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
    v34 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    v51 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64];
    v50[2] = v33;
    v50[3] = v32;
    v50[1] = v34;
    v35 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
    v47 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32];
    v48 = v35;
    v49 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64];
    v36 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v46 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    v45 = v36;
    sub_1D3322888(v50, v52);
    sub_1D33260C0();
    v52[2] = v47;
    v52[3] = v48;
    v53 = v49;
    v52[0] = v45;
    v52[1] = v46;
    sub_1D3321A50(v52);
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EDEC1480);
    v38 = sub_1D33DE444();
    v39 = sub_1D33DEAF4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D331A000, v38, v39, "Updating: Creating fallback task", v40, 2u);
      MEMORY[0x1D38B81C0](v40, -1, -1);
    }

    v27(v5, 1, 1, v26);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v41;
    v43 = sub_1D3387F00(0, 0, v5, &unk_1D33E33C8, v42);
    sub_1D331E880(v5, &unk_1EC7610E0, &qword_1D33E16C0);
    v44 = *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask];
    *&v28[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask] = v43;
  }
}

uint64_t sub_1D332540C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3325488(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for RecentsItem(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1D3325A18;

  return sub_1D3325578(a1);
}

uint64_t sub_1D3325578(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D33DE1D4();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_1D33DE2B4();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_1D33DE2F4();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_1D33DE2D4();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D332494C, 0, 0);
}

uint64_t sub_1D3325720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D33257C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1D3342F7C;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_1D33258F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D33258F0()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v4 = v0[1];
  v5 = v0[22];

  return v4(v5);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D3325A18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v3 + 32);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D3325B68, 0, 0);
  }
}

uint64_t sub_1D3325B68()
{
  v1 = v0[6];
  v24 = MEMORY[0x1D38B7A70]();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v3 = 0;
    v4 = v0[3];
    v25 = v0[2];
    v26 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v5 = v0[6] + 32;
    v1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v28)
      {
        v6 = MEMORY[0x1D38B75D0](v3, v0[6]);
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(v5 + 8 * v3);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = v0[4];
      v10 = *(v25 + v26);
      v11 = v10;
      RecentsItem.init(message:callProviderManager:)(v7, v10, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D33226AC(0, *(v1 + 16) + 1, 1, v1);
      }

      v13 = *(v1 + 16);
      v12 = *(v1 + 24);
      if (v13 >= v12 >> 1)
      {
        v1 = sub_1D33226AC(v12 > 1, v13 + 1, 1, v1);
      }

      v14 = v0[4];
      *(v1 + 16) = v13 + 1;
      sub_1D33302BC(v14, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      ++v3;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    if (v0[6] < 0)
    {
      v15 = v0[6];
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v16 = v0[6];

  objc_autoreleasePoolPop(v24);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v17 = sub_1D33DE464();
  __swift_project_value_buffer(v17, qword_1EDEC1480);
  v18 = sub_1D33DE444();
  v19 = sub_1D33DEAD4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D331A000, v18, v19, "Updating: Media message call items updated", v20, 2u);
    MEMORY[0x1D38B81C0](v20, -1, -1);
  }

  v21 = v0[4];

  v22 = v0[1];

  return v22(v1);
}

uint64_t sub_1D3325E48()
{
  v1 = v0[54];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];

  (*(v4 + 8))(v2, v3);
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[27];
  v17 = v0[24];
  v18 = v0[22];
  v19 = v0[61];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D3325F7C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1D33260C0()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[6];
  if (v3 && *(v3 + 52) == 1)
  {
    v4 = v0[6];

    sub_1D3352F40();
    sub_1D33537C8();
    out_token = 0;
    v5 = *MEMORY[0x1E6999328];
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v6 = sub_1D33DEB94();
    v7 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_1D3353F2C;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D3351608;
    v10[3] = &block_descriptor_137;
    v8 = _Block_copy(v10);

    LODWORD(v5) = notify_register_dispatch(v5, &out_token, v6, v8);
    _Block_release(v8);

    if (!v5 && out_token)
    {
      *(v3 + 48) = out_token;
      *(v3 + 52) = 0;
    }
  }

  if (v2)
  {
    sub_1D335716C();
  }

  if (v1)
  {
    sub_1D33220A8();
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D3326268()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D332632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33263E0(a1, v4, v5, v6);
}

uint64_t sub_1D3326400()
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EDEC1480);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Updating: Starting fallback task", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1D332CD18;

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t RecentsItemDataSource.allRecentsItems.getter()
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
}

uint64_t sub_1D3326608(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D338AF18(v4);
}

uint64_t sub_1D3326634()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761908, &qword_1D33E36F8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3326664()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761910, &qword_1D33E3700);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3326694()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761918, &qword_1D33E3708);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D33266C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761920, &unk_1D33E3710);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t RecentsItem.init(message:callProviderManager:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v101 - v7;
  v8 = type metadata accessor for ReminderStatus();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D33DE324();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D98, &qword_1D33E1A88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = &v101 - v17;
  v18 = sub_1D33DDDB4();
  v117 = *(v18 - 8);
  v19 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecentsItem(0);
  v22 = (a3 + v21[9]);
  *v22 = 0;
  v22[1] = 0;
  v102 = v22;
  v23 = (a3 + v21[10]);
  *v23 = 0;
  v23[1] = 0;
  v103 = v23;
  v24 = v21[11];
  v121 = v9;
  v25 = *(v9 + 56);
  v111 = v24;
  v123 = v8;
  v113 = v9 + 56;
  v112 = v25;
  v25(a3 + v24, 1, 1, v8);
  v26 = sub_1D33DE154();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = [objc_opt_self() bundleForClass_];
    v36 = sub_1D33DDB74();
    v38 = v43;

    v39 = 0;
    goto LABEL_21;
  }

  sub_1D33DE154();
  v30 = objc_opt_self();
  v31 = sub_1D33DE784();

  v32 = &selRef_setOriginatingUIType_;
  v33 = [v30 normalizedHandleWithDestinationID_];

  v109 = v18;
  v108 = v21;
  if (v33)
  {
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v34 = [v33 value];
    if (!v34)
    {
      sub_1D33DE7B4();
      v34 = sub_1D33DE784();
    }

    v35 = [v34 destinationIdIsTemporary];

    if (!v35)
    {

      ParticipantContactDetails.init(handle:cache:)(v33, v125);
      v39 = v125[0];
      v36 = v125[1];
      v38 = v125[2];
      v115 = v125[3];
      v107 = v125[4];
      v106 = v125[5];
      v105 = v125[6];

      v104 = v36;
      v40 = v38;
      v32 = &selRef_setOriginatingUIType_;
      goto LABEL_14;
    }

    v32 = &selRef_setOriginatingUIType_;
  }

  v36 = sub_1D33DE154();
  v38 = v37;
  v39 = 0;
  v104 = 0;
  v40 = 0;
  v115 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
LABEL_14:
  sub_1D33DE154();
  v44 = sub_1D33DE784();

  v45 = [v30 v32[24]];

  if (!v45)
  {
    sub_1D33DE154();
    v46 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v47 = sub_1D33DE784();

    v45 = [v46 initWithType:1 value:v47];
  }

  v21 = v108;
  if (v40 && v39)
  {
    v48 = v39;
    sub_1D332900C(v39, v104, v40);
  }

  else
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
    sub_1D332900C(v39, v104, v40);

    v39 = v49;
  }

  v18 = v109;
LABEL_21:
  *(a3 + 48) = v36;
  *(a3 + 56) = v38;
  sub_1D33DE0F4();
  v50 = sub_1D33DE1F4();
  if (v50 != sub_1D33DE1F4())
  {
    if (sub_1D33DE1A4() == 0xD00000000000003BLL && 0x80000001D33E7290 == v51)
    {
    }

    else
    {
      sub_1D33DF1B4();
    }
  }

  type metadata accessor for BundleClass();
  v52 = swift_getObjCClassFromMetadata();
  v53 = [objc_opt_self() bundleForClass_];
  v54 = sub_1D33DDB74();
  v56 = v55;

  *(a3 + 64) = v54;
  *(a3 + 72) = v56;
  v57 = sub_1D33DE134();
  if (v57)
  {
    v58 = v57;
    if (v124)
    {
      v59 = [v124 telephonyProvider];
      v60 = [v59 senderIdentityForHandle_];

      if (v60)
      {
        v61 = [v60 localizedShortName];

        v60 = sub_1D33DE7B4();
        v63 = v62;

        goto LABEL_34;
      }
    }

    else
    {

      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
  }

  v63 = 0;
LABEL_34:
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  v126 = v39;
  v64 = MEMORY[0x1E69E7CC0];
  v125[0] = MEMORY[0x1E69E7CC0];
  v65 = a1;
  v66 = v39;
  v115 = v66;
  if (v39)
  {
    v67 = v66;
    MEMORY[0x1D38B6F20]();
    if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v100 = *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v64 = v125[0];
  }

  sub_1D331E880(&v126, &qword_1EC761A88, &unk_1D33E3F88);
  *(a3 + 40) = v64;
  v68 = a3 + v21[8];
  v69 = v116;
  sub_1D33DE0B4();
  v70 = sub_1D33DDD54();
  v72 = v71;
  (*(v117 + 8))(v69, v18);
  v73 = type metadata accessor for CallInfo(0);
  v74 = v68 + v73[6];
  sub_1D33DE0C4();
  sub_1D33DE194();
  v76 = v75;
  sub_1D33DE0D4();
  v77 = sub_1D33DE304();
  v78 = v77 == sub_1D33DE304();
  *v68 = v70;
  *(v68 + 8) = v72;
  *(v68 + 16) = 1;
  *(v68 + v73[7]) = 1;
  v79 = (v68 + v73[8]);
  *v79 = v60;
  v79[1] = v63;
  *(v68 + v73[9]) = 0;
  *(v68 + v73[10]) = v76;
  *(v68 + v73[11]) = 0;
  *(v68 + v73[12]) = v78;
  *(v68 + v73[13]) = 0;
  (*(*(v73 - 1) + 56))(v68, 0, 1, v73);
  v80 = v118;
  sub_1D33DE174();
  v82 = v119;
  v81 = v120;
  if ((*(v119 + 48))(v80, 1, v120))
  {
    sub_1D331E880(v80, &qword_1EC760D98, &qword_1D33E1A88);
  }

  else
  {
    v83 = v110;
    (*(v82 + 16))(v110, v80, v81);
    sub_1D331E880(v80, &qword_1EC760D98, &qword_1D33E1A88);
    v84 = sub_1D33DE314();
    v86 = v85;
    (*(v82 + 8))(v83, v81);
    v87 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v87 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v88 = v102;
      *v102 = v84;
      v88[1] = v86;
    }

    else
    {
    }
  }

  v89 = sub_1D33DE144();
  v91 = v90;

  v92 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v92 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v92)
  {
    v93 = v103;
    *v103 = v89;
    v93[1] = v91;
  }

  else
  {
  }

  v95 = v122;
  v94 = v123;
  RecentsItem.getReminderStatus()(v122);

  if ((*(v121 + 48))(v95, 1, v94) == 1)
  {
    return sub_1D331E880(v95, &unk_1EC761320, &unk_1D33E28D0);
  }

  v97 = v95;
  v98 = v114;
  sub_1D33A7100(v97, v114, type metadata accessor for ReminderStatus);
  v99 = v111;
  sub_1D331E880(a3 + v111, &unk_1EC761320, &unk_1D33E28D0);
  sub_1D33A7100(v98, a3 + v99, type metadata accessor for ReminderStatus);
  return v112(a3 + v99, 0, 1, v94);
}

uint64_t sub_1D3327424()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  if (!v0)
  {
    sub_1D33DE7B4();
    v0 = sub_1D33DE784();
  }

  v1 = [objc_opt_self() tu:v0 contactStoreConfigurationForBundleIdentifier:?];

  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  type metadata accessor for ParticipantContactDetailsCache();
  v3 = swift_allocObject();
  result = sub_1D3327504(v2);
  qword_1EDEC0110 = v3;
  return result;
}

uint64_t sub_1D3327504(void *a1)
{
  v2 = v1;
  v4 = sub_1D33DEC24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v2 + 32) = 0;
  *(v2 + 40) = v9;
  *(v2 + 16) = a1;
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 defaultCenter];
  v13 = *MEMORY[0x1E695C3D8];
  sub_1D33DEC34();

  swift_allocObject();
  swift_weakInit();
  sub_1D33276F4();
  v14 = sub_1D33DE644();

  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + 24);
  *(v2 + 24) = v14;

  return v2;
}

uint64_t sub_1D33276BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D33276F4()
{
  result = qword_1EDEC0050;
  if (!qword_1EDEC0050)
  {
    sub_1D33DEC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC0050);
  }

  return result;
}

uint64_t ParticipantContactDetails.init(handle:cache:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D332786C(a1, 0, 0, v16);
  v4 = v16[0];
  v5 = v16[2];
  v14 = v16[3];
  v15 = v16[1];
  v6 = v16[4];
  v13 = v16[0];

  v8 = MEMORY[0x1D38B7A70](v7);
  sub_1D3328D7C(v4, v16);
  objc_autoreleasePoolPop(v8);
  sub_1D3328AF4();
  v9 = sub_1D33DED14();
  v11 = v10;

  *a2 = v4;
  a2[1] = v15;
  a2[2] = v5;
  a2[3] = v14;
  a2[4] = v6;
  a2[5] = v9;
  a2[6] = v11;
  return result;
}

void sub_1D332786C(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v188 = a3;
  v183 = a2;
  v8 = sub_1D33DDBC4();
  v181 = *(v8 - 8);
  v182 = v8;
  v9 = v181[8];
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D33DDAA4();
  v178 = *(v11 - 8);
  v179 = v11;
  v12 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v177 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 value];
  v15 = sub_1D33DE7B4();
  v17 = v16;

  v191 = v15;
  v192 = v17;
  v18 = sub_1D3328AF4();
  sub_1D33DED04();
  v19 = sub_1D33DE784();

  os_unfair_lock_lock((v5 + 32));
  v20 = *(v5 + 40);
  os_unfair_lock_unlock((v5 + 32));
  v21 = [v20 objectForKey_];

  v186 = a4;
  v187 = v19;
  v184 = v5;
  v185 = v18;
  if (v21)
  {
    v176 = a1;
    v22 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
    v23 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 8];
    v24 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 16];
    v175 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 24];
    v26 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 32];
    v25 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 40];
    v27 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 48];
    v28 = v22;

    v29 = v26;

    v30 = v23;
    v31 = sub_1D33DE784();
    LODWORD(v26) = [v31 destinationIdIsTemporary];

    if (!v26 || !v188)
    {

      v35 = v175;
      v34 = v29;
      v51 = v24;
      a4 = v186;
LABEL_83:
      *a4 = v22;
      a4[1] = v30;
      a4[2] = v51;
      a4[3] = v35;
      a4[4] = v34;
      a4[5] = v25;
      a4[6] = v27;
      return;
    }

    a4 = v186;
    v5 = v184;
    a1 = v176;
  }

  v32 = [a1 value];
  if (!v32)
  {
    sub_1D33DE7B4();
    v32 = sub_1D33DE784();
  }

  v33 = [v32 destinationIdIsPseudonym];

  if (v33)
  {
    if (v188)
    {
      v34 = v188;
      v35 = v183;
      v30 = v183;
      v179 = v188;
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v53 = objc_opt_self();
      v54 = [v53 bundleForClass_];
      v30 = sub_1D33DDB74();
      v179 = v55;

      v56 = [v53 bundleForClass_];
      v35 = sub_1D33DDB74();
      v34 = v57;
    }

    v58 = swift_bridgeObjectRetain_n();
    v59 = MEMORY[0x1D38B7A70](v58);
    v60 = v180;
    sub_1D33DDBB4();
    sub_1D33DDB84();
    sub_1D33DDB94();
    if (qword_1EDEC0130 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDEC1498;
    v62 = sub_1D33DDBA4();
    v63 = v60;
    v64 = [v61 stringFromPersonNameComponents_];

    v65 = sub_1D33DE7B4();
    v67 = v66;

    (v181[1])(v63, v182);
    objc_autoreleasePoolPop(v59);
    v191 = v65;
    v192 = v67;
    v25 = sub_1D33DED14();
    v27 = v68;

    v22 = 0;
    v51 = v179;
    goto LABEL_83;
  }

  v36 = *(v5 + 16);
  v37 = [a1 value];
  if (!v37)
  {
    sub_1D33DE7B4();
    v37 = sub_1D33DE784();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D33E1DE0;
  *(v38 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v39 = sub_1D33DE8A4();

  v40 = [v36 contactForDestinationId:v37 keysToFetch:v39];

  if (v40)
  {
    v182 = v40;
    v181 = v40;
    v41 = [v181 displayName];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1D33DE7B4();
      v45 = v44;

      v191 = v43;
      v192 = v45;
      v46 = v177;
      sub_1D33DDA94();
      v188 = sub_1D33DED24();
      v48 = v47;
      v49 = v178;
      v50 = v179;
      (*(v178 + 8))(v46, v179);
    }

    else
    {
      v188 = 0;
      v48 = 0xE000000000000000;
      v49 = v178;
      v50 = v179;
      v46 = v177;
    }

    v83 = v181;
    v84 = [v181 givenName];

    v85 = sub_1D33DE7B4();
    v87 = v86;

    v191 = v85;
    v192 = v87;
    sub_1D33DDA94();
    v88 = sub_1D33DED24();
    v90 = v89;
    (*(v49 + 8))(v46, v50);

    v179 = v48;
    v180 = v90;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v91 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v91 = v188 & 0xFFFFFFFFFFFFLL;
    }

    if ((v90 & 0x2000000000000000) != 0)
    {
      v92 = HIBYTE(v90) & 0xF;
    }

    else
    {
      v92 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if ([a1 type] == 2)
    {
      v93 = [a1 value];
      v94 = v182;
      if (!v93)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v95 = v93;
      v96 = PNCopyBestGuessCountryCodeForNumber();

      if (v96)
      {
        v176 = a1;
        v97 = [a1 value];
        if (v97)
        {
          v98 = v97;
          v99 = CFPhoneNumberCreate();

          if (v99)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v101 = String;
              v183 = sub_1D33DE7B4();
              v103 = v102;

              v94 = v182;
              goto LABEL_64;
            }
          }

          v183 = 0;
          v103 = 0;
LABEL_64:
          a1 = v176;
          if (v91)
          {
            goto LABEL_65;
          }

LABEL_54:

          if (v92)
          {

            v51 = v180;

            v127 = v88;
            v30 = v88;
          }

          else
          {

            if (v103)
            {
              if (qword_1EDEBFD70 != -1)
              {
                swift_once();
              }

              v128 = sub_1D33DE464();
              __swift_project_value_buffer(v128, qword_1EDEC1480);
              v129 = v181;
              v130 = sub_1D33DE444();
              v131 = sub_1D33DEAF4();

              if (os_log_type_enabled(v130, v131))
              {
                v132 = swift_slowAlloc();
                v133 = swift_slowAlloc();
                v191 = v133;
                *v132 = 136315138;
                v189 = v129;
                sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
                v134 = v129;
                v135 = sub_1D33DE804();
                v137 = sub_1D3328B48(v135, v136, &v191);

                *(v132 + 4) = v137;
                _os_log_impl(&dword_1D331A000, v130, v131, "Could not find display name or given name for contact %s, displaying phone number instead", v132, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v133);
                MEMORY[0x1D38B81C0](v133, -1, -1);
                MEMORY[0x1D38B81C0](v132, -1, -1);
              }

              v115 = v103;
              v81 = v182;
              v30 = v183;
              v127 = v183;
              v51 = v103;
              v22 = v182;
              v126 = v184;
              goto LABEL_82;
            }

            v176 = a1;
            if (qword_1EDEBFD70 != -1)
            {
              swift_once();
            }

            v138 = sub_1D33DE464();
            __swift_project_value_buffer(v138, qword_1EDEC1480);
            v139 = v181;
            v140 = sub_1D33DE444();
            v141 = sub_1D33DEAF4();

            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v191 = v143;
              *v142 = 136315138;
              v189 = v139;
              sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
              v144 = v139;
              v145 = sub_1D33DE804();
              v147 = sub_1D3328B48(v145, v146, &v191);

              *(v142 + 4) = v147;
              v94 = v182;
              _os_log_impl(&dword_1D331A000, v140, v141, "Could not find display name or given name for contact %s, displaying raw handle instead", v142, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v143);
              MEMORY[0x1D38B81C0](v143, -1, -1);
              MEMORY[0x1D38B81C0](v142, -1, -1);
            }

            v148 = [v176 value];
            v30 = sub_1D33DE7B4();
            v51 = v149;

            v127 = v30;
          }

          goto LABEL_68;
        }

        goto LABEL_87;
      }

      v183 = 0;
      v103 = 0;
      if (!v91)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v183 = 0;
      v103 = 0;
      v94 = v182;
      if (!v91)
      {
        goto LABEL_54;
      }
    }

LABEL_65:

    if (v92)
    {
      v127 = v88;
      v22 = v94;
      v81 = v94;
      v126 = v184;
      v51 = v179;
      v115 = v180;
      v30 = v188;
LABEL_82:
      v188 = v81;
      v163 = MEMORY[0x1D38B7A70]();
      sub_1D3328D7C(v22, &v191);
      objc_autoreleasePoolPop(v163);
      v25 = sub_1D33DED14();
      v27 = v164;

      os_unfair_lock_lock((v126 + 32));
      v165 = *(v126 + 40);
      os_unfair_lock_unlock((v126 + 32));
      v166 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
      v167 = objc_allocWithZone(v166);
      v168 = &v167[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
      *v168 = v22;
      *(v168 + 1) = v30;
      *(v168 + 2) = v51;
      *(v168 + 3) = v127;
      v169 = v115;
      *(v168 + 4) = v115;
      *(v168 + 5) = v25;
      *(v168 + 6) = v27;
      v190.receiver = v167;
      v190.super_class = v166;
      v170 = v22;

      v171 = objc_msgSendSuper2(&v190, sel_init);
      v172 = v187;
      [v165 setObject:v171 forKey:v187];

      v173 = v188;
      v35 = v127;
      v34 = v169;
      a4 = v186;
      goto LABEL_83;
    }

    v51 = v179;

    v127 = v188;
    v30 = v188;
LABEL_68:
    v115 = v51;
    v22 = v94;
    v81 = v94;
    v126 = v184;
    goto LABEL_82;
  }

  v69 = v188;
  if (v188)
  {
    v70 = qword_1EDEBFD70;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = sub_1D33DE464();
    __swift_project_value_buffer(v71, qword_1EDEC1480);
    v72 = a1;
    v73 = sub_1D33DE444();
    v74 = sub_1D33DEAF4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v191 = v76;
      *v75 = 136315138;
      v189 = v72;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      v182 = 0;
      v77 = v72;
      v78 = sub_1D33DE804();
      v80 = sub_1D3328B48(v78, v79, &v191);

      *(v75 + 4) = v80;
      v81 = v182;
      _os_log_impl(&dword_1D331A000, v73, v74, "Could not find contact for handle %s, displaying nickname instead", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      v82 = v76;
      v69 = v188;
      MEMORY[0x1D38B81C0](v82, -1, -1);
      MEMORY[0x1D38B81C0](v75, -1, -1);
    }

    else
    {
      v81 = 0;
    }

    v22 = 0;
    v115 = v69;
    v30 = v183;
    v126 = v184;
    v127 = v183;
    v51 = v69;
    goto LABEL_82;
  }

  v104 = [a1 type];
  v105 = &off_1E843B000;
  v182 = 0;
  if (v104 != 2)
  {
    goto LABEL_76;
  }

  v106 = [a1 value];
  if (!v106)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v107 = v106;
  v108 = PNCopyBestGuessCountryCodeForNumber();

  if (!v108)
  {
LABEL_76:
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v150 = sub_1D33DE464();
    __swift_project_value_buffer(v150, qword_1EDEC1480);
    v151 = a1;
    v152 = sub_1D33DE444();
    v153 = sub_1D33DEAF4();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v191 = v155;
      *v154 = 136315138;
      v189 = v151;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      v156 = v151;
      v157 = sub_1D33DE804();
      v159 = sub_1D3328B48(v157, v158, &v191);

      *(v154 + 4) = v159;
      v126 = v5;
      _os_log_impl(&dword_1D331A000, v152, v153, "Could not find contact for handle %s, displaying raw handle instead", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v155);
      MEMORY[0x1D38B81C0](v155, -1, -1);
      v160 = v154;
      v105 = &off_1E843B000;
      MEMORY[0x1D38B81C0](v160, -1, -1);
    }

    else
    {
      v126 = v5;
    }

    v161 = [v151 v105[445]];
    v30 = sub_1D33DE7B4();
    v51 = v162;

    v22 = 0;
    v127 = v30;
    v115 = v51;
    v81 = v182;
    goto LABEL_82;
  }

  v109 = [a1 value];
  if (v109)
  {
    v110 = v109;
    v111 = CFPhoneNumberCreate();

    if (v111)
    {
      v112 = CFPhoneNumberCreateString();
      if (v112)
      {
        v113 = v112;
        v30 = sub_1D33DE7B4();
        v115 = v114;

        if (qword_1EDEBFD70 != -1)
        {
          swift_once();
        }

        v116 = sub_1D33DE464();
        __swift_project_value_buffer(v116, qword_1EDEC1480);
        v117 = a1;
        v118 = sub_1D33DE444();
        v119 = sub_1D33DEAF4();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v191 = v121;
          *v120 = 136315138;
          v189 = v117;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v122 = v117;
          v123 = sub_1D33DE804();
          v125 = sub_1D3328B48(v123, v124, &v191);

          *(v120 + 4) = v125;
          v81 = v182;
          _os_log_impl(&dword_1D331A000, v118, v119, "Could not find contact for handle %s, displaying formatted phone number instead", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v121);
          MEMORY[0x1D38B81C0](v121, -1, -1);
          MEMORY[0x1D38B81C0](v120, -1, -1);
        }

        else
        {
          v81 = 0;
        }

        v51 = v115;

        v22 = 0;
        v127 = v30;
        v126 = v184;
        goto LABEL_82;
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
}

unint64_t sub_1D3328AF4()
{
  result = qword_1EDEC0058[0];
  if (!qword_1EDEC0058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC0058);
  }

  return result;
}

uint64_t sub_1D3328B48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D3328C14(v11, 0, 0, 1, a1, a2);
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
    sub_1D3328D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D3328C14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D334A600(a5, a6);
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
    result = sub_1D33DEF64();
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

uint64_t sub_1D3328D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D3328D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D33DDBC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D33DDBB4();
  if (a1)
  {
    v9 = [a1 givenName];
    sub_1D33DE7B4();

    sub_1D33DDB84();
    v10 = [a1 familyName];
    sub_1D33DE7B4();
  }

  else
  {
    sub_1D33DDB84();
  }

  sub_1D33DDB94();
  if (qword_1EDEC0130 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEC1498;
  v12 = sub_1D33DDBA4();
  v13 = [v11 stringFromPersonNameComponents_];

  v14 = sub_1D33DE7B4();
  v16 = v15;

  result = (*(v5 + 8))(v8, v4);
  *a2 = v14;
  a2[1] = v16;
  return result;
}

id sub_1D3328F74()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  result = [v0 setStyle_];
  qword_1EDEC1498 = v0;
  return result;
}

void sub_1D332900C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1D3329070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D33290D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D3329140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FavoritesDataSource.$favorites.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  (*(v2 + 16))(&v8 - v4, v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v1);
  v6 = sub_1D33DDF74();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t FavoritesDataSource.favorites.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v1);
  sub_1D33DDF54();
  (*(v2 + 8))(v5, v1);
  return v7[1];
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

unint64_t sub_1D33293BC()
{
  result = qword_1EDEBFC58;
  if (!qword_1EDEBFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC58);
  }

  return result;
}

uint64_t sub_1D3329468(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1D33294AC()
{
  sub_1D3329690(MEMORY[0x1E69E7CC0]);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A60, &unk_1D33E3D90);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D33DF2D4();
  qword_1EDEBF068 = result;
  return result;
}

uint64_t sub_1D3329514()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {
      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_1D3325720(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 40))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      swift_getKeyPath();
      v10[0] = v1;
      sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
      sub_1D33DDED4();

      return *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D3329690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
    v3 = sub_1D33DF124();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D33B95E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1D3329770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a1 + 16) && (v6 = sub_1D33B95E4(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a1 + 56) + v6);
  }

  else
  {
    v10[3] = a2;
    v10[4] = a3();
    v8 = sub_1D33DDF24();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return v8 & 1;
}

unint64_t sub_1D33297F0()
{
  result = qword_1EDEBF538;
  if (!qword_1EDEBF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBF538);
  }

  return result;
}

uint64_t sub_1D332986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D33298BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D3329904(uint64_t a1)
{
  v74 = sub_1D33DDDB4();
  v2 = *(v74 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D3329EE4(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  if (v6)
  {
    v71 = a1;
    v72 = (v2 + 8);
    v7 = (a1 + 72);
    v77 = v6;
    while (1)
    {
      v9 = *(v7 - 4);
      v8 = *(v7 - 3);
      v10 = *v7;
      v76 = *(v7 - 1);

      v11 = v10;
      v78 = v9;

      v75 = v8;
      v12 = [v11 contactProperty];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 contact];

        v15 = [v14 identifier];
        v16 = sub_1D33DE7B4();
        v18 = v17;

        v19 = MEMORY[0x1D38B6F00](v16, v18);
      }

      else
      {
        v20 = v73;
        sub_1D33DDDA4();
        v19 = sub_1D33DDD94();
        (*v72)(v20, v74);
      }

      v21 = [v11 actionType];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v5;
      v24 = sub_1D3329FDC(v19, v21);
      v25 = v5[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v5[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v23 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1D3399760();
          v5 = v79;
          if ((v28 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_1D332A094(v27, isUniquelyReferenced_nonNull_native);
        v5 = v79;
        v29 = sub_1D3329FDC(v19, v21);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }

        v24 = v29;
        if ((v28 & 1) == 0)
        {
LABEL_13:
          v5[(v24 >> 6) + 8] |= 1 << v24;
          v31 = (v5[6] + 16 * v24);
          *v31 = v19;
          v31[1] = v21;
          *(v5[7] + 8 * v24) = 0;
          v32 = v5[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_38;
          }

          v5[2] = v34;
          v35 = v21;
        }
      }

      v36 = v5[7];
      v37 = *(v36 + 8 * v24);
      v33 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      *(v36 + 8 * v24) = v38;

      v7 += 7;
      if (!--v6)
      {
        v79 = MEMORY[0x1E69E7CC0];
        v39 = v77;
        sub_1D332A694(0, v77, 0);
        v40 = v79;
        v41 = (v71 + 80);
        do
        {
          v42 = *(v41 - 5);
          v76 = *(v41 - 6);
          v77 = v39;
          v44 = *(v41 - 4);
          v43 = *(v41 - 3);
          v46 = *(v41 - 2);
          v45 = *(v41 - 1);
          LODWORD(v75) = *v41;

          v47 = v45;

          v78 = v44;
          v48 = [v47 contactProperty];
          if (v48)
          {
            v49 = v48;
            v50 = [v48 contact];

            v51 = [v50 identifier];
            v52 = sub_1D33DE7B4();
            v54 = v53;

            v55 = MEMORY[0x1D38B6F00](v52, v54);
          }

          else
          {
            v56 = v73;
            sub_1D33DDDA4();
            v55 = sub_1D33DDD94();
            (*v72)(v56, v74);
          }

          v57 = [v47 actionType];
          if (v5[2] && (v58 = sub_1D3329FDC(v55, v57), (v59 & 1) != 0))
          {
            v60 = *(v5[7] + 8 * v58);

            if (v60 > 1)
            {

              v61 = v78;

              v62 = v47;
              v63 = [v62 localizedBundleName];
              if (v63)
              {
                v64 = v63;
                v43 = sub_1D33DE7B4();
                v71 = v65;

                swift_bridgeObjectRelease_n();

                v46 = v71;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                v43 = 0;
                v46 = 0;
              }
            }
          }

          else
          {
          }

          v79 = v40;
          v67 = v40[2];
          v66 = v40[3];
          if (v67 >= v66 >> 1)
          {
            sub_1D332A694((v66 > 1), v67 + 1, 1);
            v40 = v79;
          }

          v40[2] = v67 + 1;
          v68 = &v40[7 * v67];
          v68[4] = v76;
          v68[5] = v42;
          v68[6] = v78;
          v68[7] = v43;
          v68[8] = v46;
          v68[9] = v47;
          *(v68 + 80) = v75;
          v41 += 56;
          v39 = v77 - 1;
        }

        while (v77 != 1);

        return v40;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D3329EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v6;
      result = sub_1D3329FDC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D3329FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D33DF284();
  MEMORY[0x1D38B7920](a1);
  sub_1D33DF2A4();
  if (a2)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  v6 = sub_1D33DF2C4();

  return sub_1D332A3DC(a1, a2, v6);
}

uint64_t sub_1D332A094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
  v35 = a2;
  result = sub_1D33DF114();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v36 = v21;
      v23 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v35 & 1) == 0)
      {
        v24 = *(&v21 + 1);
      }

      v25 = *(v8 + 40);
      sub_1D33DF284();
      MEMORY[0x1D38B7920](v36);
      sub_1D33DF2A4();
      if (v23)
      {
        sub_1D33DE7B4();
        sub_1D33DE824();
      }

      result = sub_1D33DF2C4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v36;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_37;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

unint64_t sub_1D332A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1)
      {
        if (v9[1])
        {
          if (a2)
          {
            v10 = sub_1D33DE7B4();
            v12 = v11;
            if (v10 == sub_1D33DE7B4() && v12 == v13)
            {

              return v5;
            }

            v15 = sub_1D33DF1B4();

            if (v15)
            {
              return v5;
            }
          }
        }

        else if (!a2)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D332A51C()
{
  result = qword_1EDEBFC18;
  if (!qword_1EDEBFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC18);
  }

  return result;
}

char *sub_1D332A570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DD8, &qword_1D33E1B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D332A694(char *a1, int64_t a2, char a3)
{
  result = sub_1D332A570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D332A6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1D332A828(v14, v11);
        sub_1D332A828(v15, v8);
        v17 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1D332B2E8(v8);
        sub_1D332B2E8(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D332A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16CallsAppServices11RecentsItemV11BackingTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 32) & 0xF;
  }
}

uint64_t sub_1D332A8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D33DDD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t RecentsItem.dataSourceId.getter()
{
  v1 = sub_1D33DDDB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v59[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 32);
  if (v10 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v10 != 2)
      {
        v59[0] = 0;
        v59[1] = 0xE000000000000000;
        v28 = v7;
        v29 = v6;
        sub_1D33DEF24();

        strcpy(v59, "conversation_");
        HIWORD(v59[1]) = -4864;
        v44 = [v28 UUID];
        sub_1D33DDD84();

        v45 = sub_1D33DDD54();
        v47 = v46;
        v48 = *(v2 + 8);
        v48(v5, v1);
        MEMORY[0x1D38B6ED0](v45, v47);

        MEMORY[0x1D38B6ED0](0x6567617373656D2BLL, 0xE90000000000005FLL);
        sub_1D33DE0B4();
        v34 = sub_1D33DDD54();
        v36 = v49;
        v48(v5, v1);
        goto LABEL_17;
      }

      strcpy(v59, "message_");
      BYTE1(v59[1]) = 0;
      WORD1(v59[1]) = 0;
      HIDWORD(v59[1]) = -402653184;
      sub_1D332B0D0(v7, v6, v9, v8, 2u);
      sub_1D33DE0B4();
      v21 = sub_1D33DDD54();
      v23 = v22;
      (*(v2 + 8))(v5, v1);
      MEMORY[0x1D38B6ED0](v21, v23);

      v16 = v7;
      v17 = v6;
      v18 = v9;
      v19 = v8;
      v20 = 2;
    }

    else
    {
      if (*(v0 + 32))
      {
        v59[0] = 0;
        v59[1] = 0xE000000000000000;
        v37 = v7;

        v38 = v9;

        sub_1D33DEF24();

        strcpy(v61, "conversation_");
        HIWORD(v61[1]) = -4864;
        v39 = [v37 UUID];
        sub_1D33DDD84();

        v40 = sub_1D33DDD54();
        v42 = v41;
        (*(v2 + 8))(v5, v1);
        MEMORY[0x1D38B6ED0](v40, v42);

        MEMORY[0x1D38B6ED0](0x5F6B6E696C2BLL, 0xE600000000000000);
        v59[0] = v6;
        v59[1] = v38;
        v60 = v8;
        v43 = ConversationLink.uniqueId.getter();
        MEMORY[0x1D38B6ED0](v43);

        goto LABEL_21;
      }

      strcpy(v59, "conversation_");
      HIWORD(v59[1]) = -4864;
      sub_1D332B0D0(v7, v6, v9, v8, 0);
      v12 = [v7 UUID];
      sub_1D33DDD84();

      v13 = sub_1D33DDD54();
      v15 = v14;
      (*(v2 + 8))(v5, v1);
      MEMORY[0x1D38B6ED0](v13, v15);

      v16 = v7;
      v17 = v6;
      v18 = v9;
      v19 = v8;
      v20 = 0;
    }

LABEL_13:
    sub_1D332B1DC(v16, v17, v18, v19, v20);
    return v59[0];
  }

  if (*(v0 + 32) <= 5u)
  {
    if (v10 == 4)
    {
      strcpy(v59, "recents_");
      BYTE1(v59[1]) = 0;
      WORD1(v59[1]) = 0;
      HIDWORD(v59[1]) = -402653184;
      sub_1D332B0D0(v7, v6, v9, v8, 4u);
      v24 = [v7 uniqueId];
      v25 = sub_1D33DE7B4();
      v27 = v26;

      MEMORY[0x1D38B6ED0](v25, v27);

      v16 = v7;
      v17 = v6;
      v18 = v9;
      v19 = v8;
      v20 = 4;
      goto LABEL_13;
    }

    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    v51 = v7;

    v52 = v9;

    sub_1D33DEF24();

    strcpy(v61, "recents_");
    BYTE1(v61[1]) = 0;
    WORD1(v61[1]) = 0;
    HIDWORD(v61[1]) = -402653184;
    v53 = [v51 uniqueId];
    v54 = sub_1D33DE7B4();
    v56 = v55;

    MEMORY[0x1D38B6ED0](v54, v56);

    MEMORY[0x1D38B6ED0](0x5F6B6E696C2BLL, 0xE600000000000000);
    v59[0] = v6;
    v59[1] = v52;
    v60 = v8;
    v57 = ConversationLink.uniqueId.getter();
    MEMORY[0x1D38B6ED0](v57);

LABEL_21:

    return v61[0];
  }

  if (v10 == 6)
  {
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    v28 = v7;
    v29 = v6;
    sub_1D33DEF24();

    strcpy(v59, "recents_");
    BYTE1(v59[1]) = 0;
    WORD1(v59[1]) = 0;
    HIDWORD(v59[1]) = -402653184;
    v30 = [v28 uniqueId];
    v31 = sub_1D33DE7B4();
    v33 = v32;

    MEMORY[0x1D38B6ED0](v31, v33);

    MEMORY[0x1D38B6ED0](0x6567617373656D2BLL, 0xE90000000000005FLL);
    sub_1D33DE0B4();
    v34 = sub_1D33DDD54();
    v36 = v35;
    (*(v2 + 8))(v5, v1);
LABEL_17:
    MEMORY[0x1D38B6ED0](v34, v36);

    return v59[0];
  }

  if (v10 != 7)
  {
    return 0;
  }

  v61[0] = 0x5F6B6E696CLL;
  v61[1] = 0xE500000000000000;
  v59[0] = v7;
  v59[1] = v6;
  v60 = v9;
  sub_1D332B0D0(v7, v6, v9, v8, 7u);
  v11 = ConversationLink.uniqueId.getter();
  MEMORY[0x1D38B6ED0](v11);

  sub_1D332B1DC(v7, v6, v9, v8, 7u);
  return v61[0];
}

id sub_1D332B0D0(id result, void *a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
LABEL_8:
        v6 = result;

        v7 = a3;
LABEL_15:
      }

      goto LABEL_19;
    }

    if (a5 == 2)
    {
      goto LABEL_19;
    }

    v10 = a2;
    if (a5 != 3)
    {
      return result;
    }

LABEL_18:
    v9 = result;
    result = v10;
    goto LABEL_19;
  }

  if (a5 > 5u)
  {
    v10 = a2;
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        return result;
      }

      v8 = v10;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a5 != 4)
  {
    if (a5 != 5)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_19:

  return result;
}

void sub_1D332B1DC(void *a1, void *a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
LABEL_8:

LABEL_15:

        return;
      }

      goto LABEL_19;
    }

    if (a5 == 2)
    {
      goto LABEL_19;
    }

    v6 = a2;
    if (a5 != 3)
    {
      return;
    }

LABEL_18:

    a1 = v6;
    goto LABEL_19;
  }

  if (a5 > 5u)
  {
    v6 = a2;
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a5 != 4)
  {
    if (a5 != 5)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_19:
}

uint64_t sub_1D332B2E8(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D332B344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D332B3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332B460(a1, v4, v5, v6);
}

uint64_t sub_1D332B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332B4F8, v6, v5);
}

uint64_t sub_1D332B4F8()
{
  v2 = v0[3];
  v1 = v0[4];

  if (sub_1D3329514())
  {
    v3 = v0[3];
    v4 = v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading;
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading));
    *(v4 + 4) = 2;
    os_unfair_lock_unlock(v4);
    if (*(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != 2)
    {
      v5 = v0[3];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 2;
      v0[2] = v5;
      sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
      sub_1D33DDEC4();
    }
  }

  v7 = v0[1];

  return v7();
}

unsigned __int8 *sub_1D332B664(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D338A2CC(&v4);
}

uint64_t sub_1D332B6E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D332B7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332B890(a1, v4, v5, v6);
}

uint64_t sub_1D332B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D33DE974();
  *(v4 + 24) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332B928, v6, v5);
}

uint64_t sub_1D332B928()
{
  v1 = v0[3];

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EDEC1480);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "Updating: Reminder cache changed", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v6 = v0[2];

  sub_1D338C8A4(1);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D332BA80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332BB34(a1, v4, v5, v6);
}

uint64_t sub_1D332BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332BBCC, v6, v5);
}

uint64_t sub_1D332BBCC()
{
  v2 = v0[3];
  v1 = v0[4];

  if (*(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != 1)
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[2] = v3;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D332BD24(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D3367CE8(&unk_1EDEBFD18, type metadata accessor for RecentsItem);
  result = MEMORY[0x1D38B7100](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D332A828(v13, v7);
      sub_1D332CF6C(v9, v7);
      sub_1D3367D30(v9, type metadata accessor for RecentsItem);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D332BEE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_1D33DEC24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {
    v15 = [objc_opt_self() defaultCenter];
    v16 = *MEMORY[0x1E69D89F8];
    sub_1D33DEC34();

    v17 = sub_1D33DE9B4();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v10, v13, v6);
    sub_1D33DE974();

    v19 = sub_1D33DE964();
    v20 = *(v7 + 80);
    v27 = v5;
    v28 = v1;
    v21 = (v20 + 32) & ~v20;
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 16) = v19;
    *(v23 + 24) = v24;
    (*(v7 + 32))(v23 + v21, v10, v6);
    *(v23 + v22) = v18;

    v25 = sub_1D333DD88(0, 0, v27, &unk_1D33E2550, v23);
    (*(v7 + 8))(v13, v6);
    v26 = *(v28 + v14);
    *(v28 + v14) = v25;
  }

  return result;
}

uint64_t sub_1D332C1C4()
{
  v1 = sub_1D33DEC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D332C29C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D332C2E4(uint64_t a1, uint64_t a2)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v29[-v7];
  v36 = sub_1D33DE3F4();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D33DE3B4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState))
  {
    v31 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState;
    v32 = v16;
    v33 = v15;
    v34 = a2;
    v35 = v2;
    v19 = qword_1EDEBF088;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1D33DE3E4();
    __swift_project_value_buffer(v20, qword_1EDEC1458);
    v21 = sub_1D33DE3D4();
    sub_1D33DE404();
    v30 = sub_1D33DEBF4();
    if (sub_1D33DECC4())
    {

      sub_1D33DE434();

      v22 = v36;
      if ((*(v9 + 88))(v12, v36) == *MEMORY[0x1E69E93E8])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v12, v22);
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v21, v30, v25, "FavoritesDataSource loading", v23, v24, 2u);
      MEMORY[0x1D38B81C0](v24, -1, -1);
    }

    (*(v32 + 8))(v18, v33);
    v26 = *(a1 + v31);
    *(a1 + v31) = 0;

    a2 = v34;
  }

  v27 = v37;
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v37);
  v38 = a2;

  sub_1D33DDF64();
  (*(v5 + 8))(v8, v27);
  return sub_1D332BEE8();
}

uint64_t sub_1D332C6AC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D332C70C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 384);

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 528);
  if (v5)
  {
    v68 = v4;
    log = v3;
    v7 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *(v0 + 136) = v66;
    *v7 = 134349314;
    *(v7 + 4) = *(v6 + 16);

    buf = v7;
    *(v7 + 12) = 2082;
    v8 = *(v6 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v10 = *(v0 + 528);
      v11 = *(v0 + 184);
      *(v0 + 144) = MEMORY[0x1E69E7CC0];
      sub_1D334B384(0, v8, 0);
      v9 = *(v0 + 144);
      v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v13 = *(v11 + 72);
      do
      {
        v14 = *(v0 + 192);
        sub_1D332A828(v12, v14);
        v15 = *(v14 + 8);
        v16 = *(v14 + 32);
        v17 = 1;
        if (((1 << v16) & 0x1BB) == 0)
        {
          v18 = *(v0 + 216);
          if (v16 == 2)
          {
            v19 = *(v0 + 192);
            v20 = *v19;
            v21 = *(v19 + 16);
            v22 = *(v19 + 24);
            v23 = *v19;
            sub_1D33DE0B4();
            sub_1D332B1DC(v20, v15, v21, v22, 2u);
          }

          else
          {
            v24 = v15;
            sub_1D33DE0B4();
          }

          v17 = 0;
        }

        v25 = *(v0 + 216);
        v26 = *(v0 + 192);
        v27 = sub_1D33DDDB4();
        (*(*(v27 - 8) + 56))(v25, v17, 1, v27);
        sub_1D332B2E8(v26);
        *(v0 + 144) = v9;
        v29 = *(v9 + 16);
        v28 = *(v9 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D334B384(v28 > 1, v29 + 1, 1);
          v9 = *(v0 + 144);
        }

        v31 = *(v0 + 208);
        v30 = *(v0 + 216);
        *(v9 + 16) = v29 + 1;
        sub_1D332FEC4(v30, v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
        v12 += v13;
        --v8;
      }

      while (v8);
    }

    v33 = MEMORY[0x1D38B6F50](v9, *(v0 + 200));
    v35 = v34;

    v36 = sub_1D3328B48(v33, v35, (v0 + 136));

    *(buf + 14) = v36;
    _os_log_impl(&dword_1D331A000, log, v68, "VideoMessageInboxController Finished loading items(%{public}ld) with ids: %{public}s", buf, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1D38B81C0](v66, -1, -1);
    MEMORY[0x1D38B81C0](buf, -1, -1);
  }

  else
  {
    v32 = *(v0 + 528);
  }

  v37 = *(v0 + 536);
  v38 = *(v0 + 528);
  v39 = *(v0 + 448);
  v41 = *(v0 + 392);
  v40 = *(v0 + 400);
  v42 = *(v0 + 152);
  swift_getKeyPath();
  v43 = swift_task_alloc();
  *(v43 + 16) = v42;
  *(v43 + 24) = v38;
  *(v0 + 112) = v42;
  sub_1D33DDEC4();

  swift_getKeyPath();
  *(v0 + 120) = v42;
  sub_1D33DDED4();

  if (*(v42 + v39))
  {
    loga = v37;
    v44 = *(v0 + 496);
    v45 = *(v0 + 240);

    v46 = sub_1D33DE3D4();
    sub_1D33DE404();
    v47 = sub_1D33DEBF4();
    if (sub_1D33DECC4())
    {
      v48 = *(v0 + 544);
      v50 = *(v0 + 168);
      v49 = *(v0 + 176);
      v51 = *(v0 + 160);

      sub_1D33DE434();

      if ((*(v50 + 88))(v49, v51) == v48)
      {
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        v52 = "";
      }

      v53 = *(v0 + 240);
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v46, v47, v55, "VideoMessageInboxController loading", v52, v54, 2u);
      MEMORY[0x1D38B81C0](v54, -1, -1);
    }

    v57 = *(v0 + 504);
    v56 = *(v0 + 512);
    v59 = *(v0 + 392);
    v58 = *(v0 + 400);
    v60 = *(v0 + 240);
    v61 = *(v0 + 224);
    v62 = *(v0 + 152);

    v57(v60, v61);
    swift_getKeyPath();
    v63 = swift_task_alloc();
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v0 + 128) = v62;
    v37 = loga;
    sub_1D33DDEC4();
  }

  *(v0 + 456) = v37;
  v64 = swift_task_alloc();
  *(v0 + 464) = v64;
  *v64 = v0;
  v64[1] = sub_1D3341E64;

  return sub_1D3323EE4();
}

uint64_t sub_1D332CD18()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v3 = sub_1D332D15C;
  }

  else
  {
    v3 = sub_1D338D574;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D332CE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D33DF284();
  RecentsItem.hash(into:)();
  v12 = sub_1D33DF2C4();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D332A828(*(v10 + 48) + v16 * v14, v9);
      v17 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D3367D30(v9, type metadata accessor for RecentsItem);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D3367D30(a2, type metadata accessor for RecentsItem);
    sub_1D332A828(*(v10 + 48) + v16 * v14, v22);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D332A828(a2, v9);
    v23 = *v3;
    sub_1D332FCA8(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_1D33302BC(a2, v20);
    return 1;
  }
}

uint64_t sub_1D332D15C()
{
  v43 = v0;
  if ((sub_1D33DE9F4() & 1) == 0)
  {
    v1 = v0[19];
    v2 = v0[20];

    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[19];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v41 = v7;
      *v6 = 136315138;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
        v10 = Strong;

        v11 = *(v9 + 16);
        if (v11)
        {
          v38 = v7;
          v39 = v4;
          v40 = v3;
          v42 = MEMORY[0x1E69E7CC0];
          sub_1D334A9E0(0, v11, 0);
          v12 = v42;
          v13 = v9 + 32;
          do
          {
            sub_1D3325720(v13, (v0 + 2));
            v0[13] = 0;
            v0[14] = 0xE000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761090, &unk_1D33E2500);
            sub_1D33DF004();
            MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
            v14 = v0[5];
            v15 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
            v16 = (*(v15 + 40))(v14, v15);
            v17 = (v16 & 1) == 0;
            if (v16)
            {
              v18 = 1702195828;
            }

            else
            {
              v18 = 0x65736C6166;
            }

            if (v17)
            {
              v19 = 0xE500000000000000;
            }

            else
            {
              v19 = 0xE400000000000000;
            }

            MEMORY[0x1D38B6ED0](v18, v19);

            v21 = v0[13];
            v20 = v0[14];
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
            v42 = v12;
            v23 = *(v12 + 16);
            v22 = *(v12 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_1D334A9E0((v22 > 1), v23 + 1, 1);
              v12 = v42;
            }

            *(v12 + 16) = v23 + 1;
            v24 = v12 + 16 * v23;
            *(v24 + 32) = v21;
            *(v24 + 40) = v20;
            v13 += 40;
            --v11;
          }

          while (v11);

          v3 = v40;
          v4 = v39;
          v7 = v38;
        }

        else
        {

          v12 = MEMORY[0x1E69E7CC0];
        }

        v0[18] = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
        sub_1D334CB54(&qword_1EDEBEF28, &qword_1EC7616B0, &qword_1D33E3DD0);
        v27 = sub_1D33DE764();
        v29 = v28;

        v0[15] = v27;
        v0[16] = v29;
        v26 = sub_1D33DE804();
        v25 = v30;
      }

      else
      {
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      v31 = sub_1D3328B48(v26, v25, &v41);

      *(v6 + 4) = v31;
      _os_log_impl(&dword_1D331A000, v3, v4, "datasources didn't load within tolerance: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1D38B81C0](v7, -1, -1);
      MEMORY[0x1D38B81C0](v6, -1, -1);
    }

    v32 = v0[19];
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      if (*(v33 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) == 1)
      {
        *(v33 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = 1;
        sub_1D3389A94(1);
      }

      else
      {
        swift_getKeyPath();
        v35 = swift_task_alloc();
        *(v35 + 16) = v34;
        *(v35 + 24) = 1;
        v0[17] = v34;
        sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
        sub_1D33DDEC4();
      }
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D332D624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v338 = a4;
  v316 = a3;
  v331 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v320 = &v307 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v325 = &v307 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v328 = &v307 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v327 = &v307 - v14;
  v341 = sub_1D33DDD34();
  v329 = *(v341 - 8);
  v15 = *(v329 + 8);
  v16 = MEMORY[0x1EEE9AC00](v341);
  v313 = &v307 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v324 = &v307 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v312 = &v307 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v315 = &v307 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v307 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v307 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v307 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v309 = &v307 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v307 = &v307 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v336 = &v307 - v38;
  v39 = sub_1D33DDDB4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v339 = &v307 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v345 = &v307 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v307 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v310 = &v307 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v311 = &v307 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v334 = &v307 - v53;
  v54 = MEMORY[0x1E69E7CC0];
  v363 = MEMORY[0x1E69E7CC0];
  v348 = sub_1D3330924(MEMORY[0x1E69E7CC0]);
  v55 = *(a1 + 16);
  v346 = v39;
  v319 = v40;
  if (v55)
  {
    v330 = v30;
    v333 = v27;
    v56 = a1 + 32;
    v342 = (v40 + 56);
    v343 = (v40 + 32);
    v347 = (v40 + 48);
    v344 = (v40 + 16);
    v340 = (v40 + 8);
    v335 = xmmword_1D33E2410;
    v337 = v48;
    while (1)
    {
      sub_1D3325720(v56, &v361);
      v60 = __swift_project_boxed_opaque_existential_1(&v361, v362);
      if (v338)
      {
        sub_1D33A35D8(v33);
        goto LABEL_22;
      }

      v61 = *v60;
      v62 = *(v60 + 32);
      if (v62 > 8)
      {
        break;
      }

      if (((1 << v62) & 0x70) != 0)
      {
        v63 = v61;
        v64 = [v63 participantGroupUUID];

        if (v64)
        {
          v65 = v333;
          sub_1D33DDD84();

          v66 = 0;
        }

        else
        {
          v66 = 1;
          v65 = v333;
        }

        (*v342)(v65, v66, 1, v39);
        sub_1D332FEC4(v65, v33);
      }

      else
      {
        if (((1 << v62) & 0x10C) != 0)
        {
          (*v342)(v33, 1, 1, v39);
LABEL_23:
          sub_1D331E880(v33, &qword_1EC7612B0, qword_1D33E2830);
          sub_1D3325720(&v361, &v359);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1D3333FEC(0, v54[2] + 1, 1, v54);
          }

          v79 = v54[2];
          v78 = v54[3];
          if (v79 >= v78 >> 1)
          {
            v54 = sub_1D3333FEC((v78 > 1), v79 + 1, 1, v54);
          }

          v80 = v360;
          v81 = __swift_mutable_project_boxed_opaque_existential_1(&v359, v360);
          v82 = *(*(v80 - 8) + 64);
          MEMORY[0x1EEE9AC00](v81);
          v84 = &v307 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v85 + 16))(v84);
          v357 = type metadata accessor for RecentsItem(0);
          v358 = &off_1F4EE6FD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v356);
          sub_1D33302BC(v84, boxed_opaque_existential_1);
          v54[2] = v79 + 1;
          sub_1D331E6AC(&v356, &v54[5 * v79 + 4]);
          __swift_destroy_boxed_opaque_existential_1Tm(&v359);
          v363 = v54;
          v39 = v346;
          goto LABEL_5;
        }

        if (v62 != 7)
        {
          break;
        }

        v67 = v60[1];
        v68 = v60[2];
        v332 = v60[3];

        v69 = v67;

        v70 = [v69 groupUUID];
        if (v70)
        {
          v71 = v330;
          v72 = v70;
          sub_1D33DDD84();

          v73 = 0;
        }

        else
        {
          v73 = 1;
          v71 = v330;
        }

        v48 = v337;
        v77 = v346;
        (*v342)(v71, v73, 1, v346);
        sub_1D332FEC4(v71, v33);
        v39 = v77;
        sub_1D332B1DC(v61, v67, v68, v332, 7u);
      }

LABEL_22:
      if ((*v347)(v33, 1, v39) == 1)
      {
        goto LABEL_23;
      }

      (*v343)(v48, v33, v39);
      if (*(v348 + 16) && (v87 = sub_1D33B926C(v48), (v88 & 1) != 0))
      {
        v89 = *(*(v348 + 56) + 8 * v87);
        sub_1D3325720(&v361, &v359);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D3333FEC(0, v89[2] + 1, 1, v89);
        }

        v91 = v89[2];
        v90 = v89[3];
        if (v91 >= v90 >> 1)
        {
          v89 = sub_1D3333FEC((v90 > 1), v91 + 1, 1, v89);
        }

        v92 = v360;
        v93 = __swift_mutable_project_boxed_opaque_existential_1(&v359, v360);
        v94 = *(*(v92 - 8) + 64);
        MEMORY[0x1EEE9AC00](v93);
        v96 = &v307 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v97 + 16))(v96);
        v357 = type metadata accessor for RecentsItem(0);
        v358 = &off_1F4EE6FD8;
        v98 = __swift_allocate_boxed_opaque_existential_1(&v356);
        sub_1D33302BC(v96, v98);
        v89[2] = v91 + 1;
        sub_1D331E6AC(&v356, &v89[5 * v91 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v359);
        v99 = *v344;
        v100 = v339;
        v48 = v337;
        (*v344)(v339, v337, v346);
        v101 = v348;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v359 = v101;
        v103 = sub_1D33B926C(v100);
        v105 = *(v101 + 16);
        v106 = (v104 & 1) == 0;
        v107 = __OFADD__(v105, v106);
        v108 = v105 + v106;
        if (v107)
        {
          goto LABEL_194;
        }

        v109 = v104;
        if (*(v101 + 24) >= v108)
        {
          v111 = v319;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v140 = v103;
            sub_1D3399D60();
            v111 = v319;
            v103 = v140;
          }

          v39 = v346;
        }

        else
        {
          sub_1D33976B0(v108, isUniquelyReferenced_nonNull_native);
          v103 = sub_1D33B926C(v339);
          if ((v109 & 1) != (v110 & 1))
          {
            goto LABEL_200;
          }

          v39 = v346;
          v111 = v319;
        }

        v132 = v359;
        v348 = v359;
        if (v109)
        {
          v133 = *(v359 + 56);
          v134 = *(v133 + 8 * v103);
          *(v133 + 8 * v103) = v89;
        }

        else
        {
          *(v359 + 8 * (v103 >> 6) + 64) |= 1 << v103;
          v135 = v103;
          v99(*(v132 + 48) + *(v111 + 72) * v103, v339, v39);
          v136 = v348;
          *(*(v348 + 56) + 8 * v135) = v89;
          v137 = *(v136 + 16);
          v107 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v107)
          {
            goto LABEL_198;
          }

          *(v136 + 16) = v138;
        }

        v59 = *v340;
        (*v340)(v339, v39);
      }

      else
      {
        v112 = *v344;
        v113 = v345;
        (*v344)(v345, v48, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
        v114 = swift_allocObject();
        *(v114 + 16) = v335;
        sub_1D3325720(&v361, v114 + 32);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v359 = v348;
        v116 = sub_1D33B926C(v113);
        v118 = *(v348 + 16);
        v119 = (v117 & 1) == 0;
        v107 = __OFADD__(v118, v119);
        v120 = v118 + v119;
        if (v107)
        {
          goto LABEL_190;
        }

        v121 = v117;
        if (*(v348 + 24) >= v120)
        {
          v123 = v319;
          if ((v115 & 1) == 0)
          {
            v139 = v116;
            sub_1D3399D60();
            v123 = v319;
            v116 = v139;
          }

          v39 = v346;
        }

        else
        {
          sub_1D33976B0(v120, v115);
          v116 = sub_1D33B926C(v345);
          if ((v121 & 1) != (v122 & 1))
          {
            goto LABEL_200;
          }

          v39 = v346;
          v123 = v319;
        }

        v124 = v359;
        v348 = v359;
        if ((v121 & 1) == 0)
        {
          *(v359 + 8 * (v116 >> 6) + 64) |= 1 << v116;
          v125 = v116;
          v126 = v345;
          v127 = v123;
          v112(*(v124 + 48) + *(v123 + 72) * v116, v345, v39);
          *(*(v348 + 56) + 8 * v125) = v114;
          v128 = *(v127 + 8);
          v129 = v126;
          v48 = v337;
          v128(v129, v39);
          v128(v48, v39);
          v130 = *(v348 + 16);
          v107 = __OFADD__(v130, 1);
          v131 = v130 + 1;
          if (v107)
          {
            goto LABEL_193;
          }

          *(v348 + 16) = v131;
          goto LABEL_5;
        }

        v57 = *(v359 + 56);
        v58 = *(v57 + 8 * v116);
        *(v57 + 8 * v116) = v114;

        v59 = *v340;
        (*v340)(v345, v39);
      }

      v59(v48, v39);
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1Tm(&v361);
      v56 += 40;
      if (!--v55)
      {
        goto LABEL_56;
      }
    }

    v74 = v61;
    v75 = [v74 groupUUID];

    v76 = v310;
    sub_1D33DDD84();

    (*v343)(v33, v76, v39);
    (*v342)(v33, 0, 1, v39);
    goto LABEL_22;
  }

LABEL_56:
  v332 = *(v331 + 16);
  if (!v332)
  {
    goto LABEL_163;
  }

  v141 = 0;
  v331 += 32;
  v317 = (v319 + 56);
  v318 = (v319 + 32);
  v326 = (v319 + 48);
  v322 = (v329 + 16);
  v340 = v329 + 56;
  v333 = (v329 + 32);
  v321 = (v329 + 8);
  *&v335 = v329 + 48;
  v308 = (v319 + 16);
  v314 = (v319 + 8);
  v142 = v327;
  v143 = v336;
  v144 = v54;
  do
  {
    sub_1D3325720(v331 + 40 * v141, &v361);
    v145 = __swift_project_boxed_opaque_existential_1(&v361, v362);
    v337 = v141;
    if (v338)
    {
      sub_1D33A35D8(v143);
    }

    else
    {
      v146 = *v145;
      v147 = *(v145 + 32);
      if (v147 > 8)
      {
        goto LABEL_71;
      }

      if (((1 << v147) & 0x70) != 0)
      {
        v148 = v146;
        v149 = [v148 participantGroupUUID];

        if (v149)
        {
          v150 = v309;
          sub_1D33DDD84();

          v151 = v150;
          v152 = 0;
        }

        else
        {
          v152 = 1;
          v151 = v309;
        }

        (*v317)(v151, v152, 1, v39);
        sub_1D332FEC4(v151, v143);
        goto LABEL_74;
      }

      if (((1 << v147) & 0x10C) != 0)
      {
        (*v317)(v143, 1, 1, v39);
LABEL_75:
        sub_1D331E880(v143, &qword_1EC7612B0, qword_1D33E2830);
        sub_1D3325720(&v361, &v359);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1D3333FEC(0, v144[2] + 1, 1, v144);
        }

        v165 = v144[2];
        v164 = v144[3];
        v166 = v165 + 1;
        if (v165 >= v164 >> 1)
        {
          v144 = sub_1D3333FEC((v164 > 1), v165 + 1, 1, v144);
        }

LABEL_149:
        v259 = v360;
        v260 = __swift_mutable_project_boxed_opaque_existential_1(&v359, v360);
        v261 = *(*(v259 - 8) + 64);
        MEMORY[0x1EEE9AC00](v260);
        v263 = &v307 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v264 + 16))(v263);
        v357 = type metadata accessor for RecentsItem(0);
        v358 = &off_1F4EE6FD8;
        v265 = __swift_allocate_boxed_opaque_existential_1(&v356);
        sub_1D33302BC(v263, v265);
        v144[2] = v166;
        sub_1D331E6AC(&v356, &v144[5 * v165 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v359);
        v363 = v144;
        goto LABEL_150;
      }

      if (v147 == 7)
      {
        v153 = v144;
        v154 = v145[1];
        v155 = v145[2];
        v347 = v145[3];

        v156 = v154;

        v157 = [v156 groupUUID];
        if (v157)
        {
          v158 = v307;
          v159 = v157;
          sub_1D33DDD84();

          v160 = 0;
        }

        else
        {
          v160 = 1;
          v158 = v307;
        }

        v144 = v153;
        (*v317)(v158, v160, 1, v39);
        sub_1D332FEC4(v158, v143);
        sub_1D332B1DC(v146, v154, v155, v347, 7u);
      }

      else
      {
LABEL_71:
        v161 = v146;
        v162 = [v161 groupUUID];

        v163 = v310;
        sub_1D33DDD84();

        (*v318)(v143, v163, v39);
        (*v317)(v143, 0, 1, v39);
      }
    }

LABEL_74:
    if ((*v326)(v143, 1, v39) == 1)
    {
      goto LABEL_75;
    }

    (*v318)(v334, v143, v39);
    if (!*(v348 + 16) || (v167 = sub_1D33B926C(v334), (v168 & 1) == 0) || (v169 = *(*(v348 + 56) + 8 * v167), (v344 = *(v169 + 16)) == 0))
    {
      sub_1D3325720(&v361, &v359);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_1D3333FEC(0, v144[2] + 1, 1, v144);
      }

      v165 = v144[2];
      v258 = v144[3];
      v166 = v165 + 1;
      if (v165 >= v258 >> 1)
      {
        v144 = sub_1D3333FEC((v258 > 1), v165 + 1, 1, v144);
      }

      (*v314)(v334, v39);
      goto LABEL_149;
    }

    v343 = (v169 + 32);

    v171 = 0;
    v347 = MEMORY[0x1E69E7CC0];
    v342 = v170;
    do
    {
      if (v171 >= *(v170 + 16))
      {
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      sub_1D3325720(&v343[5 * v171], &v359);
      sub_1D33AE988(&v359, &v361, &v352);
      if (!v354)
      {
        sub_1D331E880(&v352, &qword_1EC761B88, &unk_1D33E4580);
        sub_1D3325720(&v359, &v356);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1D3333FEC(0, v144[2] + 1, 1, v144);
        }

        v207 = v144[2];
        v206 = v144[3];
        if (v207 >= v206 >> 1)
        {
          v208 = sub_1D3333FEC((v206 > 1), v207 + 1, 1, v144);
        }

        else
        {
          v208 = v144;
        }

        v209 = v357;
        v210 = __swift_mutable_project_boxed_opaque_existential_1(&v356, v357);
        v211 = *(*(v209 - 8) + 64);
        MEMORY[0x1EEE9AC00](v210);
        v213 = &v307 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v214 + 16))(v213);
        v215 = type metadata accessor for RecentsItem(0);
        v354 = v215;
        v355 = &off_1F4EE6FD8;
        v216 = __swift_allocate_boxed_opaque_existential_1(&v352);
        sub_1D33302BC(v213, v216);
        v208[2] = v207 + 1;
        sub_1D331E6AC(&v352, &v208[5 * v207 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v356);
        sub_1D3325720(&v361, &v356);
        v218 = v208[2];
        v217 = v208[3];
        if (v218 >= v217 >> 1)
        {
          v208 = sub_1D3333FEC((v217 > 1), v218 + 1, 1, v208);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v359);
        v219 = v357;
        v220 = __swift_mutable_project_boxed_opaque_existential_1(&v356, v357);
        v221 = *(*(v219 - 8) + 64);
        MEMORY[0x1EEE9AC00](v220);
        v223 = &v307 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v224 + 16))(v223);
        v354 = v215;
        v355 = &off_1F4EE6FD8;
        v225 = __swift_allocate_boxed_opaque_existential_1(&v352);
        sub_1D33302BC(v223, v225);
        v144 = v208;
        v208[2] = v218 + 1;
        sub_1D331E6AC(&v352, &v208[5 * v218 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v356);
        v363 = v208;
LABEL_108:
        v39 = v346;
        goto LABEL_87;
      }

      sub_1D331E6AC(&v352, &v356);
      sub_1D3325720(&v356, &v352);
      v174 = v347;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_1D3333FEC(0, v174[2] + 1, 1, v174);
      }

      v176 = v174[2];
      v175 = v174[3];
      v345 = v144;
      if (v176 >= v175 >> 1)
      {
        v174 = sub_1D3333FEC((v175 > 1), v176 + 1, 1, v174);
      }

      v177 = v354;
      v178 = __swift_mutable_project_boxed_opaque_existential_1(&v352, v354);
      v179 = *(*(v177 - 8) + 64);
      MEMORY[0x1EEE9AC00](v178);
      v181 = &v307 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v182 + 16))(v181);
      v183 = type metadata accessor for RecentsItem(0);
      v350 = v183;
      v351 = &off_1F4EE6FD8;
      v184 = __swift_allocate_boxed_opaque_existential_1(&v349);
      sub_1D33302BC(v181, v184);
      v174[2] = (v176 + 1);
      v347 = v174;
      sub_1D331E6AC(&v349, &v174[5 * v176 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      v185 = __swift_project_boxed_opaque_existential_1(&v361, v362);
      v186 = v185;
      v244 = *(v185 + 32) == 7;
      v339 = v183;
      if (!v244)
      {
        v226 = v185 + *(v183 + 32);
        v227 = v325;
        sub_1D3367A94(v226, v325);
        v228 = type metadata accessor for CallInfo(0);
        v229 = (*(*(v228 - 8) + 48))(v227, 1, v228);
        if (v229 == 1)
        {
          sub_1D331E880(v227, &unk_1EC761DE0, &unk_1D33E50F0);
          v172 = *v340;
          v173 = v341;
          v143 = v336;
          goto LABEL_84;
        }

        v230 = v341;
        (*v322)(v142, v227 + *(v228 + 24), v341);
        sub_1D33379F4(v227, type metadata accessor for CallInfo);
        v143 = v336;
        (*v340)(v142, 0, 1, v230);
        goto LABEL_122;
      }

      v188 = v185[1];
      v190 = v185[2];
      v189 = v185[3];
      *&v352 = *v185;
      v187 = v352;
      *(&v352 + 1) = v188;
      v353 = v190;

      v191 = v188;

      v192 = ConversationLink.prevailingSuggestion.getter();
      v193 = v324;
      if (!v192)
      {
        sub_1D332B1DC(v187, v188, v190, v189, 7u);
        v172 = *v340;
        v204 = v328;
        (*v340)(v328, 1, 1, v341);
LABEL_115:
        v231 = v320;
        v142 = v327;
LABEL_116:
        sub_1D331E880(v204, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D3367A94(v186 + *(v339 + 32), v231);
        v232 = type metadata accessor for CallInfo(0);
        if ((*(*(v232 - 8) + 48))(v231, 1, v232) == 1)
        {
          sub_1D331E880(v231, &unk_1EC761DE0, &unk_1D33E50F0);
          v173 = v341;
          v143 = v336;
          v39 = v346;
LABEL_84:
          v172(v142, 1, 1, v173);
LABEL_85:
          sub_1D331E880(v142, &qword_1EC760E10, &unk_1D33E1A90);
LABEL_86:
          __swift_destroy_boxed_opaque_existential_1Tm(&v356);
          __swift_destroy_boxed_opaque_existential_1Tm(&v359);
          v144 = v345;
          goto LABEL_87;
        }

        v230 = v341;
        (*v322)(v142, v231 + *(v232 + 24), v341);
        sub_1D33379F4(v231, type metadata accessor for CallInfo);
        goto LABEL_121;
      }

      v194 = v192;
      v329 = v190;
      v330 = v189;
      v195 = [v192 documentDate];
      v196 = v333;
      v323 = v333 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      if (!v195)
      {
        v205 = 1;
        v204 = v328;
        v201 = v341;
        goto LABEL_114;
      }

      v197 = v313;
      v198 = v195;
      sub_1D33DDCF4();

      v199 = *v196;
      v200 = v197;
      v201 = v341;
      (*v196)(v193, v200, v341);
      if (([v194 flags] & 0x40) != 0)
      {
        v204 = v328;
        v199(v328, v193, v201);
        v205 = 0;
        goto LABEL_114;
      }

      v202 = v199;
      v203 = [v194 flags];
      v204 = v328;
      if ((v203 & 0x20) == 0)
      {
        v201 = v341;
        (*v321)(v193, v341);
        v205 = 1;
        v196 = v333;
LABEL_114:
        v172 = *v340;
        (*v340)(v204, v205, 1, v201);
        sub_1D332B1DC(v187, v188, v329, v330, 7u);

        if ((*v335)(v204, 1, v201) == 1)
        {
          goto LABEL_115;
        }

        v202 = *v196;
        v142 = v327;
        goto LABEL_120;
      }

      [v194 documentTimeInterval];
      sub_1D33DDC84();
      v204 = v328;
      v256 = v341;
      (*v321)(v193, v341);
      v172 = *v340;
      (*v340)(v204, 0, 1, v256);
      sub_1D332B1DC(v187, v188, v329, v330, 7u);

      v257 = (*v335)(v204, 1, v256);
      v231 = v320;
      v142 = v327;
      if (v257 == 1)
      {
        goto LABEL_116;
      }

LABEL_120:
      v233 = v312;
      v230 = v341;
      v202(v312, v204, v341);
      v202(v142, v233, v230);
LABEL_121:
      v143 = v336;
      v39 = v346;
      v172(v142, 0, 1, v230);
LABEL_122:
      if ((*v335)(v142, 1, v230) == 1)
      {
        goto LABEL_85;
      }

      v234 = v315;
      (*v333)(v315, v142, v230);
      v235 = sub_1D33DDCA4();
      (*v321)(v234, v230);
      if ((v235 & 1) == 0)
      {
        goto LABEL_86;
      }

      v144 = v345;
      v236 = (v345 + 32);
      v237 = -*(v345 + 2);
      v238 = -1;
      while (v237 + v238 != -1)
      {
        if (++v238 >= v144[2])
        {
          goto LABEL_188;
        }

        v239 = v144;
        sub_1D3325720(v236, &v352);
        __swift_project_boxed_opaque_existential_1(&v352, v354);
        v240 = RecentsItem.dataSourceId.getter();
        v242 = v241;
        __swift_project_boxed_opaque_existential_1(&v361, v362);
        v244 = v240 == RecentsItem.dataSourceId.getter() && v242 == v243;
        if (v244)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v352);
          v144 = v239;
LABEL_141:
          __swift_destroy_boxed_opaque_existential_1Tm(&v356);
          __swift_destroy_boxed_opaque_existential_1Tm(&v359);
          goto LABEL_108;
        }

        v236 += 40;
        v245 = sub_1D33DF1B4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v352);
        v144 = v239;
        if (v245)
        {
          goto LABEL_141;
        }
      }

      sub_1D3325720(&v361, &v352);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_1D3333FEC(0, v144[2] + 1, 1, v144);
      }

      v247 = v144[2];
      v246 = v144[3];
      v39 = v346;
      if (v247 >= v246 >> 1)
      {
        v248 = sub_1D3333FEC((v246 > 1), v247 + 1, 1, v144);
      }

      else
      {
        v248 = v144;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v356);
      __swift_destroy_boxed_opaque_existential_1Tm(&v359);
      v249 = v354;
      v250 = __swift_mutable_project_boxed_opaque_existential_1(&v352, v354);
      v251 = *(*(v249 - 8) + 64);
      MEMORY[0x1EEE9AC00](v250);
      v253 = &v307 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v254 + 16))(v253);
      v350 = v339;
      v351 = &off_1F4EE6FD8;
      v255 = __swift_allocate_boxed_opaque_existential_1(&v349);
      sub_1D33302BC(v253, v255);
      v144 = v248;
      v248[2] = v247 + 1;
      sub_1D331E6AC(&v349, &v248[5 * v247 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      v363 = v248;
LABEL_87:
      v170 = v342;
      ++v171;
    }

    while (v171 != v344);

    v266 = *v308;
    v267 = v311;
    (*v308)(v311, v334, v39);

    v268 = v348;
    v269 = swift_isUniquelyReferenced_nonNull_native();
    v359 = v268;
    v270 = sub_1D33B926C(v267);
    v272 = *(v268 + 16);
    v273 = (v271 & 1) == 0;
    v107 = __OFADD__(v272, v273);
    v274 = v272 + v273;
    if (v107)
    {
      goto LABEL_197;
    }

    v275 = v271;
    if (*(v268 + 24) >= v274)
    {
      v277 = v319;
      if ((v269 & 1) == 0)
      {
        v286 = v270;
        sub_1D3399D60();
        v277 = v319;
        v270 = v286;
      }
    }

    else
    {
      sub_1D33976B0(v274, v269);
      v270 = sub_1D33B926C(v311);
      if ((v275 & 1) != (v276 & 1))
      {
        goto LABEL_201;
      }

      v277 = v319;
    }

    v278 = v359;
    v348 = v359;
    if (v275)
    {
      v279 = *(v359 + 56);
      v280 = *(v279 + 8 * v270);
      *(v279 + 8 * v270) = v347;
    }

    else
    {
      *(v359 + 8 * (v270 >> 6) + 64) |= 1 << v270;
      v281 = v270;
      v266(*(v278 + 48) + *(v277 + 72) * v270, v311, v39);
      v282 = v348;
      *(*(v348 + 56) + 8 * v281) = v347;
      v283 = *(v282 + 16);
      v107 = __OFADD__(v283, 1);
      v284 = v283 + 1;
      if (v107)
      {
        goto LABEL_199;
      }

      *(v282 + 16) = v284;
    }

    v285 = *v314;
    (*v314)(v311, v39);
    v285(v334, v39);

LABEL_150:
    v141 = v337 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v361);
  }

  while (v141 != v332);
LABEL_163:
  v287 = v348 + 64;
  v288 = 1 << *(v348 + 32);
  v289 = -1;
  if (v288 < 64)
  {
    v289 = ~(-1 << v288);
  }

  v290 = v289 & *(v348 + 64);
  v291 = (v288 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v292 = 0;
  v293 = MEMORY[0x1E69E7CC0];
  while (v290)
  {
    v294 = v348;
LABEL_174:
    v296 = (v292 << 9) | (8 * __clz(__rbit64(v290)));
    v297 = *(*(v294 + 56) + v296);
    v298 = *(v297 + 16);
    v299 = v293[2];
    v300 = v299 + v298;
    if (__OFADD__(v299, v298))
    {
      goto LABEL_191;
    }

    v301 = *(*(v294 + 56) + v296);

    v302 = swift_isUniquelyReferenced_nonNull_native();
    if (!v302 || v300 > v293[3] >> 1)
    {
      if (v299 <= v300)
      {
        v303 = v299 + v298;
      }

      else
      {
        v303 = v299;
      }

      v293 = sub_1D3333FEC(v302, v303, 1, v293);
    }

    v290 &= v290 - 1;
    if (*(v297 + 16))
    {
      if ((v293[3] >> 1) - v293[2] < v298)
      {
        goto LABEL_195;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      swift_arrayInitWithCopy();

      if (v298)
      {
        v304 = v293[2];
        v107 = __OFADD__(v304, v298);
        v305 = v304 + v298;
        if (v107)
        {
          goto LABEL_196;
        }

        v293[2] = v305;
      }
    }

    else
    {

      if (v298)
      {
        goto LABEL_192;
      }
    }
  }

  v294 = v348;
  while (1)
  {
    v295 = v292 + 1;
    if (__OFADD__(v292, 1))
    {
      break;
    }

    if (v295 >= v291)
    {

      sub_1D3330384(v293);

      return v363;
    }

    v290 = *(v287 + 8 * v295);
    ++v292;
    if (v290)
    {
      v292 = v295;
      goto LABEL_174;
    }
  }

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
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  sub_1D33DF1E4();
  __break(1u);
LABEL_201:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D332FCA8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D3364398(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D3365A78();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D3366158(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D33DF284();
  RecentsItem.hash(into:)();
  v18 = sub_1D33DF2C4();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D332A828(*(v16 + 48) + v21 * a2, v13);
      v22 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D3367D30(v13, type metadata accessor for RecentsItem);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D33302BC(a1, *(v23 + 48) + *(v9 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D332FEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1D332FF34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D3330080(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_1D332CF04(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for RecentsItem);
      sub_1D33302BC(v12, v15);
      sub_1D33302BC(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D33302BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_1D3330384(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1D3333FEC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D333048C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D3330F5C(0, v1, 0);
    v2 = v27;
    v4 = type metadata accessor for RecentsItem(0);
    v5 = 0;
    v6 = *(v4 - 8);
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = v6;
    do
    {
      v25 = v4;
      v26 = &off_1F4EE6FD8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      sub_1D332A828(v19 + *(v20 + 72) * v5, boxed_opaque_existential_1);
      v27 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D3330F5C((v8 > 1), v9 + 1, 1);
        v2 = v27;
      }

      ++v5;
      v10 = v25;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v12 = *(*(v10 - 8) + 64);
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      v22 = v4;
      v23 = &off_1F4EE6FD8;
      v16 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_1D33302BC(v14, v16);
      *(v2 + 16) = v9 + 1;
      sub_1D331E6AC(&v21, v2 + 40 * v9 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    while (v1 != v5);
  }

  return v2;
}

uint64_t sub_1D3330690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v22 - v12;
  v13 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D3330B0C(0, v13, 0);
  v14 = v25;
  if (v13)
  {
    v15 = a1 + 32;
    v16 = (v7 + 56);
    while (1)
    {
      sub_1D3325720(v15, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v16)(v5, 0, 1, v6);
      v18 = v23;
      sub_1D33302BC(v5, v23);
      sub_1D33302BC(v18, v11);
      v25 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D3330B0C(v19 > 1, v20 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v20 + 1;
      sub_1D33302BC(v11, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20);
      v15 += 40;
      --v13;
      v6 = v17;
      if (!v13)
      {
        return v14;
      }
    }

    (*v16)(v5, 1, 1, v6);
    sub_1D331E880(v5, &unk_1EC760EE0, &qword_1D33E4CE0);
    return 0;
  }

  return v14;
}

unint64_t sub_1D3330924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761420, &qword_1D33E2978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
    v8 = sub_1D33DF124();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v10, v6, &qword_1EC761420, &qword_1D33E2978);
      result = sub_1D33B926C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D33DDDB4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

size_t sub_1D3330B0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &unk_1EC761F80, &qword_1D33E55C0, type metadata accessor for RecentsItem);
  *v3 = result;
  return result;
}

uint64_t sub_1D3330B50(uint64_t a1)
{
  v4 = *(sub_1D33DEC24() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334CF9C;

  return sub_1D3330DB8(a1, v6, v7, v1 + v5, v8);
}

void *sub_1D3330C70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D3330DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761158, &qword_1D33E2558) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761160, &qword_1D33E2560);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761168, &qword_1D33E2568);
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = sub_1D33DE974();
  v5[16] = sub_1D33DE964();
  v14 = sub_1D33DE914();
  v5[17] = v14;
  v5[18] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D3333E0C, v14, v13);
}

void *sub_1D3330F5C(void *a1, int64_t a2, char a3)
{
  result = sub_1D3330C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D3330F7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v425 = a4;
  v382 = a3;
  v407 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v384 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v385 = &v375 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v386 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v391 = &v375 - v14;
  v406 = sub_1D33DDD34();
  v403 = *(v406 - 8);
  v15 = *(v403 + 8);
  v16 = MEMORY[0x1EEE9AC00](v406);
  v378 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v377 = &v375 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v376 = &v375 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v381 = &v375 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v375 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v375 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v430 = &v375 - v31;
  v32 = type metadata accessor for RecentsItem(0);
  v404 = *(v32 - 1);
  v33 = *(v404 + 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v422 = &v375 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v412 = &v375 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v375 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v419 = &v375 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v423 = &v375 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = (&v375 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x1EEE9AC00](v46);
  v408 = (&v375 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v375 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v388 = &v375 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v379 = &v375 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v429 = &v375 - v58;
  v431 = sub_1D33DDDB4();
  v59 = *(v431 - 8);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x1EEE9AC00](v431);
  v414 = (&v375 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = MEMORY[0x1EEE9AC00](v61);
  v426 = &v375 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v428 = &v375 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v392 = &v375 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v393 = &v375 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v418 = &v375 - v71;
  v72 = MEMORY[0x1E69E7CC0];
  v449 = MEMORY[0x1E69E7CC0];
  v433 = sub_1D3330924(MEMORY[0x1E69E7CC0]);
  v73 = *(a1 + 16);
  v413 = v27;
  v421 = v30;
  v420 = v40;
  v405 = v59;
  if (v73)
  {
    v409 = v48;
    v74 = a1 + 32;
    v416 = (v59 + 56);
    v417 = (v59 + 32);
    v427 = (v59 + 48);
    v424 = (v59 + 16);
    v415 = (v59 + 8);
    v411 = xmmword_1D33E2410;
    v75 = v73;
    while (1)
    {
      v432 = v74;
      sub_1D3325720(v74, &v446);
      v82 = __swift_project_boxed_opaque_existential_1(&v446, v447);
      if (v425)
      {
        sub_1D33A35D8(v53);
        v83 = v431;
        goto LABEL_22;
      }

      v84 = *v82;
      v85 = *(v82 + 32);
      v83 = v431;
      if (v85 > 8)
      {
        break;
      }

      if (((1 << v85) & 0x70) != 0)
      {
        v86 = v84;
        v87 = [v86 participantGroupUUID];

        if (v87)
        {
          v88 = v409;
          sub_1D33DDD84();

          v89 = 0;
        }

        else
        {
          v89 = 1;
          v88 = v409;
        }

        (*v416)(v88, v89, 1, v83);
        sub_1D332FEC4(v88, v53);
      }

      else
      {
        if (((1 << v85) & 0x10C) != 0)
        {
          (*v416)(v53, 1, 1, v431);
LABEL_23:
          sub_1D331E880(v53, &qword_1EC7612B0, qword_1D33E2830);
          sub_1D3325720(&v446, &v444);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1D3333FEC(0, v72[2] + 1, 1, v72);
          }

          v105 = v72[2];
          v104 = v72[3];
          if (v105 >= v104 >> 1)
          {
            v72 = sub_1D3333FEC((v104 > 1), v105 + 1, 1, v72);
          }

          v106 = v445;
          v107 = __swift_mutable_project_boxed_opaque_existential_1(&v444, v445);
          v108 = *(*(v106 - 8) + 64);
          MEMORY[0x1EEE9AC00](v107);
          v110 = &v375 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v111 + 16))(v110);
          v442 = v32;
          v443 = &off_1F4EE6FD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v440);
          sub_1D33302BC(v110, boxed_opaque_existential_1);
          v72[2] = v105 + 1;
          sub_1D331E6AC(&v440, &v72[5 * v105 + 4]);
          __swift_destroy_boxed_opaque_existential_1Tm(&v444);
          v449 = v72;
          goto LABEL_5;
        }

        if (v85 != 7)
        {
          break;
        }

        v91 = v82[1];
        v90 = v82[2];
        v92 = v82[3];
        v93 = *v82;

        v94 = v91;

        v95 = [v94 groupUUID];
        if (v95)
        {
          v96 = v408;
          v97 = v95;
          sub_1D33DDD84();

          v98 = 0;
        }

        else
        {
          v98 = 1;
          v96 = v408;
        }

        v102 = v431;
        (*v416)(v96, v98, 1, v431);
        sub_1D332FEC4(v96, v53);
        v103 = v91;
        v83 = v102;
        sub_1D332B1DC(v84, v103, v90, v92, 7u);
      }

LABEL_22:
      if ((*v427)(v53, 1, v83) == 1)
      {
        goto LABEL_23;
      }

      (*v417)(v428, v53, v83);
      if (*(v433 + 16) && (v113 = sub_1D33B926C(v428), (v114 & 1) != 0))
      {
        v115 = *(*(v433 + 56) + 8 * v113);
        sub_1D3325720(&v446, &v444);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1D3333FEC(0, v115[2] + 1, 1, v115);
        }

        v117 = v115[2];
        v116 = v115[3];
        if (v117 >= v116 >> 1)
        {
          v115 = sub_1D3333FEC((v116 > 1), v117 + 1, 1, v115);
        }

        v118 = v445;
        v119 = __swift_mutable_project_boxed_opaque_existential_1(&v444, v445);
        v120 = *(*(v118 - 8) + 64);
        MEMORY[0x1EEE9AC00](v119);
        v122 = &v375 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v123 + 16))(v122);
        v442 = v32;
        v443 = &off_1F4EE6FD8;
        v124 = __swift_allocate_boxed_opaque_existential_1(&v440);
        sub_1D33302BC(v122, v124);
        v115[2] = v117 + 1;
        sub_1D331E6AC(&v440, &v115[5 * v117 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v444);
        v125 = *v424;
        v126 = v414;
        (*v424)(v414, v428, v431);
        v127 = v433;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v444 = v127;
        v129 = sub_1D33B926C(v126);
        v131 = *(v127 + 16);
        v132 = (v130 & 1) == 0;
        v133 = __OFADD__(v131, v132);
        v134 = v131 + v132;
        if (v133)
        {
          goto LABEL_207;
        }

        v135 = v130;
        if (*(v127 + 24) >= v134)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v166 = v129;
            sub_1D3399D60();
            v129 = v166;
          }
        }

        else
        {
          sub_1D33976B0(v134, isUniquelyReferenced_nonNull_native);
          v129 = sub_1D33B926C(v414);
          if ((v135 & 1) != (v136 & 1))
          {
            goto LABEL_213;
          }
        }

        v158 = v444;
        v433 = v444;
        if (v135)
        {
          v159 = *(v444 + 56);
          v160 = *(v159 + 8 * v129);
          *(v159 + 8 * v129) = v115;
        }

        else
        {
          *(v444 + 8 * (v129 >> 6) + 64) |= 1 << v129;
          v161 = v129;
          v125(*(v158 + 48) + *(v405 + 72) * v129, v414, v431);
          v162 = v433;
          *(*(v433 + 56) + 8 * v161) = v115;
          v163 = *(v162 + 16);
          v133 = __OFADD__(v163, 1);
          v164 = v163 + 1;
          if (v133)
          {
            goto LABEL_211;
          }

          *(v162 + 16) = v164;
        }

        v78 = *v415;
        v79 = &v441;
      }

      else
      {
        v137 = *v424;
        v138 = v426;
        (*v424)(v426, v428, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
        v139 = swift_allocObject();
        *(v139 + 16) = v411;
        sub_1D3325720(&v446, v139 + 32);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v444 = v433;
        v141 = sub_1D33B926C(v138);
        v143 = *(v433 + 16);
        v144 = (v142 & 1) == 0;
        v133 = __OFADD__(v143, v144);
        v145 = v143 + v144;
        if (v133)
        {
          goto LABEL_203;
        }

        v146 = v142;
        if (*(v433 + 24) >= v145)
        {
          if ((v140 & 1) == 0)
          {
            v165 = v141;
            sub_1D3399D60();
            v141 = v165;
          }
        }

        else
        {
          sub_1D33976B0(v145, v140);
          v141 = sub_1D33B926C(v426);
          if ((v146 & 1) != (v147 & 1))
          {
            goto LABEL_213;
          }
        }

        v148 = v444;
        v433 = v444;
        if ((v146 & 1) == 0)
        {
          v149 = v32;
          v150 = v53;
          *(v444 + 8 * (v141 >> 6) + 64) |= 1 << v141;
          v151 = v405;
          v152 = v141;
          v153 = v426;
          v154 = v431;
          v137(*(v148 + 48) + *(v405 + 72) * v141, v426, v431);
          *(*(v433 + 56) + 8 * v152) = v139;
          v155 = *(v151 + 8);
          v155(v153, v154);
          v155(v428, v154);
          v156 = *(v433 + 16);
          v133 = __OFADD__(v156, 1);
          v157 = v156 + 1;
          if (v133)
          {
            goto LABEL_206;
          }

          *(v433 + 16) = v157;
          v53 = v150;
          v32 = v149;
          goto LABEL_5;
        }

        v76 = *(v444 + 56);
        v77 = *(v76 + 8 * v141);
        *(v76 + 8 * v141) = v139;

        v78 = *v415;
        v79 = &v448;
      }

      v80 = v431;
      v78(*(v79 - 32), v431);
      v78(v428, v80);
LABEL_5:
      v30 = v421;
      v40 = v420;
      v81 = v429;
      __swift_destroy_boxed_opaque_existential_1Tm(&v446);
      v74 = (v432 + 5);
      if (!--v75)
      {
        goto LABEL_55;
      }
    }

    v99 = v84;
    v100 = [v99 groupUUID];

    v101 = v392;
    sub_1D33DDD84();

    (*v417)(v53, v101, v83);
    (*v416)(v53, 0, 1, v83);
    goto LABEL_22;
  }

  v81 = v429;
LABEL_55:
  v416 = *(v407 + 16);
  if (!v416)
  {
    goto LABEL_176;
  }

  v167 = 0;
  v415 = (v407 + 32);
  v408 = (v405 + 56);
  v409 = (v405 + 32);
  v414 = (v405 + 48);
  v168 = (v404 + 56);
  *&v411 = v404 + 48;
  v383 = (v403 + 16);
  v404 = v403 + 56;
  v390 = (v403 + 32);
  v380 = (v403 + 8);
  v389 = (v403 + 48);
  v387 = (v405 + 16);
  v407 = v405 + 8;
  v169 = v388;
  v432 = v168;
  v410 = v32;
  do
  {
    sub_1D3325720(&v415[5 * v167], &v446);
    v170 = __swift_project_boxed_opaque_existential_1(&v446, v447);
    v424 = v167;
    if (v425)
    {
      sub_1D33A35D8(v81);
      v81 = v429;
      v171 = v431;
    }

    else
    {
      v172 = *v170;
      v173 = *(v170 + 32);
      if (v173 > 8)
      {
        goto LABEL_70;
      }

      if (((1 << v173) & 0x70) != 0)
      {
        v174 = v172;
        v175 = [v174 participantGroupUUID];

        if (v175)
        {
          sub_1D33DDD84();

          v176 = 0;
        }

        else
        {
          v176 = 1;
        }

        v81 = v429;
        v171 = v431;
        (*v408)(v169, v176, 1, v431);
        sub_1D332FEC4(v169, v81);
        goto LABEL_73;
      }

      if (((1 << v173) & 0x10C) != 0)
      {
        (*v408)(v81, 1, 1, v431);
LABEL_74:
        sub_1D331E880(v81, &qword_1EC7612B0, qword_1D33E2830);
        sub_1D3325720(&v446, &v444);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1D3333FEC(0, v72[2] + 1, 1, v72);
        }

        v195 = v72[2];
        v194 = v72[3];
        v196 = v195 + 1;
        if (v195 >= v194 >> 1)
        {
          v72 = sub_1D3333FEC((v194 > 1), v195 + 1, 1, v72);
        }

LABEL_162:
        v326 = v445;
        v327 = __swift_mutable_project_boxed_opaque_existential_1(&v444, v445);
        v328 = *(*(v326 - 8) + 64);
        MEMORY[0x1EEE9AC00](v327);
        v330 = &v375 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v331 + 16))(v330);
        v442 = v32;
        v443 = &off_1F4EE6FD8;
        v332 = __swift_allocate_boxed_opaque_existential_1(&v440);
        sub_1D33302BC(v330, v332);
        v72[2] = v196;
        sub_1D331E6AC(&v440, &v72[5 * v195 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v444);
        v449 = v72;
        v81 = v429;
        v333 = v424;
        v168 = v432;
        goto LABEL_163;
      }

      if (v173 == 7)
      {
        v177 = v40;
        v178 = v170[1];
        v179 = v170[2];
        v180 = v170[3];
        v181 = *v170;

        v182 = v178;

        v183 = [v182 groupUUID];
        if (v183)
        {
          v184 = v379;
          v185 = v183;
          sub_1D33DDD84();

          v186 = v184;
          v187 = 0;
        }

        else
        {
          v187 = 1;
          v186 = v379;
        }

        v171 = v431;
        (*v408)(v186, v187, 1, v431);
        v191 = v186;
        v192 = v429;
        sub_1D332FEC4(v191, v429);
        v193 = v178;
        v81 = v192;
        sub_1D332B1DC(v172, v193, v179, v180, 7u);
        v168 = v432;
        v40 = v177;
        v30 = v421;
      }

      else
      {
LABEL_70:
        v188 = v172;
        v189 = [v188 groupUUID];

        v190 = v392;
        sub_1D33DDD84();

        v81 = v429;
        v171 = v431;
        (*v409)(v429, v190, v431);
        (*v408)(v81, 0, 1, v171);
      }
    }

LABEL_73:
    if ((*v414)(v81, 1, v171) == 1)
    {
      goto LABEL_74;
    }

    (*v409)(v418, v81, v171);
    if (!*(v433 + 16) || (v197 = sub_1D33B926C(v418), (v198 & 1) == 0) || (v199 = *(*(v433 + 56) + 8 * v197), (v428 = *(v199 + 16)) == 0))
    {
      sub_1D3325720(&v446, &v444);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1D3333FEC(0, v72[2] + 1, 1, v72);
      }

      v195 = v72[2];
      v325 = v72[3];
      v196 = v195 + 1;
      if (v195 >= v325 >> 1)
      {
        v72 = sub_1D3333FEC((v325 > 1), v195 + 1, 1, v72);
      }

      (*v407)(v418, v431);
      goto LABEL_162;
    }

    v427 = (v199 + 32);

    v201 = 0;
    v417 = MEMORY[0x1E69E7CC0];
    v202 = v430;
    v426 = v200;
    do
    {
      if (v201 >= *(v200 + 16))
      {
        __break(1u);
        goto LABEL_201;
      }

      sub_1D3325720(&v427[5 * v201], &v444);
      sub_1D3325720(&v444, &v434);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      v203 = swift_dynamicCast();
      v204 = *v168;
      if (!v203)
      {
        v204(v202, 1, 1, v32);
        v223 = v202;
LABEL_91:
        sub_1D331E880(v223, &unk_1EC760EE0, &qword_1D33E4CE0);
        goto LABEL_92;
      }

      v204(v202, 0, 1, v32);
      v205 = v202;
      v206 = v423;
      sub_1D33302BC(v205, v423);
      sub_1D3325720(&v446, &v434);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v204(v30, 1, 1, v32);
        sub_1D33379F4(v206, type metadata accessor for RecentsItem);
        v223 = v30;
        goto LABEL_91;
      }

      v204(v30, 0, 1, v32);
      v207 = v419;
      sub_1D33302BC(v30, v419);
      sub_1D332A828(v206, v40);
      v208 = v207;
      v209 = v32;
      v210 = v412;
      sub_1D332A828(v208, v412);
      v211 = v209[11];
      v212 = type metadata accessor for ReminderStatus();
      (*(*(v212 - 8) + 56))(&v422[v211], 1, 1, v212);
      if (v40[32] == 4 && *(v210 + 32) == 2)
      {
        v213 = *v40;
        v397 = *(v40 + 1);
        v214 = *(v40 + 3);
        v396 = *(v40 + 2);
        v395 = v214;
        v215 = v210;
        v216 = *v210;
        v401 = *(v210 + 8);
        v400 = *(v210 + 16);
        v399 = *(v210 + 24);
        v217 = v422;
        v394 = v213;
        *v422 = v213;
        *(v217 + 1) = v216;
        v398 = v216;
        *(v217 + 2) = 0;
        *(v217 + 3) = 0;
        v217[32] = 6;
        v218 = *(v40 + 7);
        *(v217 + 6) = *(v40 + 6);
        *(v217 + 7) = v218;
        v403 = v218;
        v219 = *(v40 + 9);
        v220 = v40;
        if (v219)
        {
          v221 = *(v40 + 8);
          v222 = v219;
        }

        else
        {
          v221 = *(v210 + 64);
          v246 = *(v210 + 72);
        }

        v32 = v410;
        v247 = v422;
        v248 = &v422[v410[9]];
        v402 = &v422[v410[10]];
        *(v422 + 8) = v221;
        *(v247 + 72) = v222;
        *(v247 + 40) = *(v220 + 40);
        sub_1D3367A94(v220 + v32[8], v247 + v32[8]);
        sub_1D332B0D0(v394, v397, v396, v395, 4u);
        sub_1D332B0D0(v398, v401, v400, v399, 2u);

        sub_1D33379F4(v220, type metadata accessor for RecentsItem);
        v249 = (v215 + v32[9]);
        v250 = v249[1];
        *v248 = *v249;
        *(v248 + 1) = v250;
        v251 = (v215 + v32[10]);
        v253 = *v251;
        v252 = v251[1];

        sub_1D33379F4(v215, type metadata accessor for RecentsItem);
        v254 = v402;
        *v402 = v253;
        *(v254 + 1) = v252;
        v245 = v413;
        sub_1D332A828(v247, v413);
        v204(v245, 0, 1, v32);
        sub_1D33379F4(v247, type metadata accessor for RecentsItem);
        v243 = v421;
        v244 = v420;
      }

      else
      {
        v243 = v30;
        sub_1D33379F4(v210, type metadata accessor for RecentsItem);
        v244 = v40;
        sub_1D33379F4(v40, type metadata accessor for RecentsItem);
        sub_1D331E880(&v422[v211], &unk_1EC761320, &unk_1D33E28D0);
        v245 = v413;
        v32 = v410;
        v204(v413, 1, 1, v410);
      }

      v255 = (*v411)(v245, 1, v32);
      v256 = v423;
      if (v255 == 1)
      {
        sub_1D33379F4(v419, type metadata accessor for RecentsItem);
        sub_1D33379F4(v256, type metadata accessor for RecentsItem);
        sub_1D331E880(v245, &unk_1EC760EE0, &qword_1D33E4CE0);
        v40 = v244;
        v30 = v243;
LABEL_92:
        v439 = 0;
        v437 = 0u;
        v438 = 0u;
LABEL_93:
        sub_1D331E880(&v437, &qword_1EC761B88, &unk_1D33E4580);
        sub_1D3325720(&v444, &v440);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1D3333FEC(0, v72[2] + 1, 1, v72);
        }

        v225 = v72[2];
        v224 = v72[3];
        if (v225 >= v224 >> 1)
        {
          v72 = sub_1D3333FEC((v224 > 1), v225 + 1, 1, v72);
        }

        v226 = v442;
        v227 = __swift_mutable_project_boxed_opaque_existential_1(&v440, v442);
        v228 = *(*(v226 - 8) + 64);
        MEMORY[0x1EEE9AC00](v227);
        v230 = &v375 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v231 + 16))(v230);
        *(&v438 + 1) = v32;
        v439 = &off_1F4EE6FD8;
        v232 = __swift_allocate_boxed_opaque_existential_1(&v437);
        sub_1D33302BC(v230, v232);
        v72[2] = v225 + 1;
        sub_1D331E6AC(&v437, &v72[5 * v225 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v440);
        sub_1D3325720(&v446, &v440);
        v234 = v72[2];
        v233 = v72[3];
        if (v234 >= v233 >> 1)
        {
          v72 = sub_1D3333FEC((v233 > 1), v234 + 1, 1, v72);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v444);
        v235 = v442;
        v236 = __swift_mutable_project_boxed_opaque_existential_1(&v440, v442);
        v237 = *(*(v235 - 8) + 64);
        MEMORY[0x1EEE9AC00](v236);
        v239 = &v375 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v240 + 16))(v239);
        *(&v438 + 1) = v32;
        v439 = &off_1F4EE6FD8;
        v241 = __swift_allocate_boxed_opaque_existential_1(&v437);
        sub_1D33302BC(v239, v241);
        v72[2] = v234 + 1;
        sub_1D331E6AC(&v437, &v72[5 * v234 + 4]);
        v242 = &v440;
LABEL_100:
        __swift_destroy_boxed_opaque_existential_1Tm(v242);
        v449 = v72;
        v202 = v430;
        v168 = v432;
        goto LABEL_101;
      }

      *(&v438 + 1) = v32;
      v439 = &off_1F4EE6FD8;
      v257 = __swift_allocate_boxed_opaque_existential_1(&v437);
      sub_1D33302BC(v245, v257);
      sub_1D33379F4(v419, type metadata accessor for RecentsItem);
      sub_1D33379F4(v256, type metadata accessor for RecentsItem);
      v40 = v244;
      v30 = v243;
      if (!*(&v438 + 1))
      {
        goto LABEL_93;
      }

      sub_1D331E6AC(&v437, &v440);
      sub_1D3325720(&v440, &v437);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v258 = v417;
      }

      else
      {
        v258 = sub_1D3333FEC(0, v417[2] + 1, 1, v417);
      }

      v417 = v258;
      v260 = v258[2];
      v259 = v258[3];
      if (v260 >= v259 >> 1)
      {
        v417 = sub_1D3333FEC((v259 > 1), v260 + 1, 1, v417);
      }

      v261 = *(&v438 + 1);
      v262 = __swift_mutable_project_boxed_opaque_existential_1(&v437, *(&v438 + 1));
      v263 = *(*(v261 - 8) + 64);
      MEMORY[0x1EEE9AC00](v262);
      v265 = &v375 - ((v264 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v266 + 16))(v265);
      v435 = v32;
      v436 = &off_1F4EE6FD8;
      v267 = __swift_allocate_boxed_opaque_existential_1(&v434);
      sub_1D33302BC(v265, v267);
      v268 = v417;
      v417[2] = v260 + 1;
      sub_1D331E6AC(&v434, &v268[5 * v260 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v437);
      v269 = __swift_project_boxed_opaque_existential_1(&v446, v447);
      v270 = v269;
      if (*(v269 + 32) == 7)
      {
        v272 = v269[1];
        v274 = v269[2];
        v273 = v269[3];
        *&v437 = *v269;
        v271 = v437;
        *(&v437 + 1) = v272;
        *&v438 = v274;

        v275 = v272;

        v276 = ConversationLink.prevailingSuggestion.getter();
        if (v276)
        {
          v401 = v272;
          v402 = v274;
          v403 = v273;
          v277 = v276;
          v278 = [v276 documentDate];
          v279 = v390;
          v399 = v390 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          if (v278)
          {
            v280 = v378;
            v281 = v278;
            sub_1D33DDCF4();

            v282 = *v279;
            v283 = v377;
            v284 = v280;
            v285 = v406;
            (*v279)(v377, v284, v406);
            if (([v277 flags] & 0x40) == 0)
            {
              v400 = v282;
              if (([v277 flags] & 0x20) == 0)
              {
                v400 = v277;
                (*v380)(v283, v285);
                v286 = 1;
                v287 = v285;
                v288 = v386;
                goto LABEL_125;
              }

              [v277 documentTimeInterval];
              v323 = v285;
              v288 = v386;
              sub_1D33DDC84();
              (*v380)(v283, v323);
              v291 = *v404;
              (*v404)(v288, 0, 1, v323);
              sub_1D332B1DC(v271, v401, v402, v403, 7u);

              v324 = (*v389)(v288, 1, v323);
              v296 = v384;
              v30 = v421;
              v40 = v420;
              v299 = v400;
              if (v324 != 1)
              {
LABEL_132:
                v403 = v291;
                v300 = v376;
                v294 = v406;
                v301 = v299;
                v299(v376, v288, v406);
                v293 = v391;
                v301(v391, v300, v294);
                v291 = v403;
LABEL_133:
                v168 = v432;
                v291(v293, 0, 1, v294);
                goto LABEL_134;
              }

LABEL_127:
              sub_1D331E880(v288, &qword_1EC760E10, &unk_1D33E1A90);
              sub_1D3367A94(v270 + v32[8], v296);
              v297 = type metadata accessor for CallInfo(0);
              if ((*(*(v297 - 8) + 48))(v296, 1, v297) == 1)
              {
                sub_1D331E880(v296, &unk_1EC761DE0, &unk_1D33E50F0);
                v168 = v432;
                goto LABEL_129;
              }

              v298 = v296 + *(v297 + 24);
              v293 = v391;
              v294 = v406;
              (*v383)(v391, v298, v406);
              sub_1D33379F4(v296, type metadata accessor for CallInfo);
              goto LABEL_133;
            }

            v400 = v277;
            v287 = v285;
            v288 = v386;
            (v282)(v386, v283, v287);
            v286 = 0;
          }

          else
          {
            v400 = v277;
            v286 = 1;
            v288 = v386;
            v287 = v406;
          }

LABEL_125:
          v295 = v402;
          v291 = *v404;
          (*v404)(v288, v286, 1, v287);
          sub_1D332B1DC(v271, v401, v295, v403, 7u);

          if ((*v389)(v288, 1, v287) != 1)
          {
            v299 = *v390;
            v30 = v421;
            v40 = v420;
            goto LABEL_132;
          }
        }

        else
        {
          sub_1D332B1DC(v271, v272, v274, v273, 7u);
          v291 = *v404;
          v288 = v386;
          (*v404)(v386, 1, 1, v406);
        }

        v296 = v384;
        v30 = v421;
        v40 = v420;
        goto LABEL_127;
      }

      v289 = v385;
      sub_1D3367A94(v269 + v32[8], v385);
      v290 = type metadata accessor for CallInfo(0);
      if ((*(*(v290 - 8) + 48))(v289, 1, v290) == 1)
      {
        sub_1D331E880(v289, &unk_1EC761DE0, &unk_1D33E50F0);
        v291 = *v404;
        v168 = v432;
LABEL_129:
        v293 = v391;
        v291(v391, 1, 1, v406);
LABEL_135:
        sub_1D331E880(v293, &qword_1EC760E10, &unk_1D33E1A90);
        goto LABEL_136;
      }

      v292 = v289 + *(v290 + 24);
      v293 = v391;
      v294 = v406;
      (*v383)(v391, v292, v406);
      sub_1D33379F4(v289, type metadata accessor for CallInfo);
      v168 = v432;
      (*v404)(v293, 0, 1, v294);
LABEL_134:
      if ((*v389)(v293, 1, v294) == 1)
      {
        goto LABEL_135;
      }

      v302 = v381;
      v303 = v406;
      (*v390)(v381, v293, v406);
      v304 = sub_1D33DDCA4();
      (*v380)(v302, v303);
      if (v304)
      {
        v305 = (v72 + 4);
        v306 = -v72[2];
        v307 = -1;
        while (v306 + v307 != -1)
        {
          if (++v307 >= v72[2])
          {
            goto LABEL_202;
          }

          sub_1D3325720(v305, &v437);
          __swift_project_boxed_opaque_existential_1(&v437, *(&v438 + 1));
          v308 = RecentsItem.dataSourceId.getter();
          v310 = v309;
          __swift_project_boxed_opaque_existential_1(&v446, v447);
          if (v308 == RecentsItem.dataSourceId.getter() && v310 == v311)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v437);
            v202 = v430;
LABEL_155:
            __swift_destroy_boxed_opaque_existential_1Tm(&v440);
            __swift_destroy_boxed_opaque_existential_1Tm(&v444);
            v30 = v421;
            v168 = v432;
            v40 = v420;
            goto LABEL_101;
          }

          v305 += 40;
          v313 = sub_1D33DF1B4();

          __swift_destroy_boxed_opaque_existential_1Tm(&v437);
          v202 = v430;
          if (v313)
          {
            goto LABEL_155;
          }
        }

        sub_1D3325720(&v446, &v437);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1D3333FEC(0, v72[2] + 1, 1, v72);
        }

        v30 = v421;
        v40 = v420;
        v315 = v72[2];
        v314 = v72[3];
        if (v315 >= v314 >> 1)
        {
          v72 = sub_1D3333FEC((v314 > 1), v315 + 1, 1, v72);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v440);
        __swift_destroy_boxed_opaque_existential_1Tm(&v444);
        v316 = *(&v438 + 1);
        v317 = __swift_mutable_project_boxed_opaque_existential_1(&v437, *(&v438 + 1));
        v318 = *(*(v316 - 8) + 64);
        MEMORY[0x1EEE9AC00](v317);
        v320 = &v375 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v321 + 16))(v320);
        v435 = v32;
        v436 = &off_1F4EE6FD8;
        v322 = __swift_allocate_boxed_opaque_existential_1(&v434);
        sub_1D33302BC(v320, v322);
        v72[2] = v315 + 1;
        sub_1D331E6AC(&v434, &v72[5 * v315 + 4]);
        v242 = &v437;
        goto LABEL_100;
      }

LABEL_136:
      __swift_destroy_boxed_opaque_existential_1Tm(&v440);
      __swift_destroy_boxed_opaque_existential_1Tm(&v444);
      v202 = v430;
LABEL_101:
      v200 = v426;
      ++v201;
    }

    while (v201 != v428);

    v334 = *v387;
    v335 = v393;
    (*v387)(v393, v418, v431);

    v336 = v433;
    v337 = swift_isUniquelyReferenced_nonNull_native();
    v444 = v336;
    v338 = sub_1D33B926C(v335);
    v340 = *(v336 + 16);
    v341 = (v339 & 1) == 0;
    v133 = __OFADD__(v340, v341);
    v342 = v340 + v341;
    if (v133)
    {
      goto LABEL_210;
    }

    v343 = v339;
    if (*(v336 + 24) >= v342)
    {
      v81 = v429;
      if ((v337 & 1) == 0)
      {
        v354 = v338;
        sub_1D3399D60();
        v81 = v429;
        v338 = v354;
      }
    }

    else
    {
      sub_1D33976B0(v342, v337);
      v338 = sub_1D33B926C(v393);
      if ((v343 & 1) != (v344 & 1))
      {
        goto LABEL_213;
      }

      v81 = v429;
    }

    v345 = v444;
    v433 = v444;
    if (v343)
    {
      v346 = *(v444 + 56);
      v347 = *(v346 + 8 * v338);
      *(v346 + 8 * v338) = v417;
    }

    else
    {
      *(v444 + 8 * (v338 >> 6) + 64) |= 1 << v338;
      v348 = v338;
      v334(*(v345 + 48) + *(v405 + 72) * v338, v393, v431);
      v349 = v433;
      *(*(v433 + 56) + 8 * v348) = v417;
      v350 = *(v349 + 16);
      v133 = __OFADD__(v350, 1);
      v351 = v350 + 1;
      if (v133)
      {
        goto LABEL_212;
      }

      *(v349 + 16) = v351;
    }

    v352 = *v407;
    v353 = v431;
    (*v407)(v393, v431);
    v352(v418, v353);

    v333 = v424;
    v169 = v388;
LABEL_163:
    v167 = v333 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v446);
  }

  while (v167 != v416);
LABEL_176:
  v355 = v433 + 64;
  v356 = 1 << *(v433 + 32);
  v357 = -1;
  if (v356 < 64)
  {
    v357 = ~(-1 << v356);
  }

  v358 = v357 & *(v433 + 64);
  v359 = (v356 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v360 = 0;
  v361 = MEMORY[0x1E69E7CC0];
  while (v358)
  {
    v362 = v433;
LABEL_187:
    v364 = (v360 << 9) | (8 * __clz(__rbit64(v358)));
    v365 = *(*(v362 + 56) + v364);
    v366 = *(v365 + 16);
    v367 = v361[2];
    v368 = v367 + v366;
    if (__OFADD__(v367, v366))
    {
      goto LABEL_204;
    }

    v369 = *(*(v362 + 56) + v364);

    v370 = swift_isUniquelyReferenced_nonNull_native();
    if (!v370 || v368 > v361[3] >> 1)
    {
      if (v367 <= v368)
      {
        v371 = v367 + v366;
      }

      else
      {
        v371 = v367;
      }

      v361 = sub_1D3333FEC(v370, v371, 1, v361);
    }

    v358 &= v358 - 1;
    if (*(v365 + 16))
    {
      if ((v361[3] >> 1) - v361[2] < v366)
      {
        goto LABEL_208;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      swift_arrayInitWithCopy();

      if (v366)
      {
        v372 = v361[2];
        v133 = __OFADD__(v372, v366);
        v373 = v372 + v366;
        if (v133)
        {
          goto LABEL_209;
        }

        v361[2] = v373;
      }
    }

    else
    {

      if (v366)
      {
        goto LABEL_205;
      }
    }
  }

  v362 = v433;
  while (1)
  {
    v363 = v360 + 1;
    if (__OFADD__(v360, 1))
    {
      break;
    }

    if (v363 >= v359)
    {

      sub_1D3330384(v361);

      return v449;
    }

    v358 = *(v355 + 8 * v363);
    ++v360;
    if (v358)
    {
      v360 = v363;
      goto LABEL_187;
    }
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}