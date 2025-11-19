char *MapsSuggestionsContactActivity.init(fromResourceDepot:)(void *a1)
{
  v24 = a1;
  v23 = sub_1C529D8EC();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = &v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectWeakInit();
  v8 = sub_1C5143DC8(0, &qword_1EDC51AF0);
  v22[1] = "ContactActivityImprover";
  v22[2] = v8;
  sub_1C529D68C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C513A57C(&qword_1EDC51B00, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C51391EC(&qword_1EDC51B10, &unk_1EC1562F0);
  sub_1C529D9CC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v23);
  v9 = v24;
  *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__queue] = sub_1C529D92C();
  result = [v9 oneBiome];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__biome] = result;
  result = [v9 oneContacts];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__contacts] = result;
  result = [v9 oneFindMy];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy] = result;
  result = [v9 oneNetworkRequester];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__networkRequester] = result;
    *&v1[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__cacheForMapItems] = MEMORY[0x1E69E7CC8];
    v11 = type metadata accessor for MapsSuggestionsContactActivity();
    v26.receiver = v1;
    v26.super_class = v11;
    v12 = objc_msgSendSuper2(&v26, sel_init);
    v13 = [v12 description];
    v14 = sub_1C529D72C();
    v16 = v15;

    v17 = &v12[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName];
    swift_beginAccess();
    *v17 = v14;
    v17[1] = v16;

    v18 = *&v12[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__biome];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v18;

    aBlock[4] = sub_1C527043C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5139244;
    aBlock[3] = &block_descriptor_4;
    v21 = _Block_copy(aBlock);

    [v20 registerForUpdatesWithHandler_];
    _Block_release(v21);

    swift_unknownObjectRelease();
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C52703A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 contactActivityUpdated];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C5270478@<X0>(NSObject *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v127 = a3;
  v6 = sub_1C529D3AC();
  v125 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C529D39C();
  v9 = OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__cacheForMapItems;
  swift_beginAccess();
  v124 = v8;
  v139 = v8;

  v11 = sub_1C5279450(v10, sub_1C5279160);
  v123 = v3;
  v122 = v11 & 0xC000000000000001;
  v129 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1C529DA9C();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v126 = v6;
  v13 = *(&a1->isa + v9);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = sub_1C529DA9C();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  v130 = a1;
  v137 = v9;
  if (v12 != v14)
  {
    if (qword_1EDC51988 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_9;
  }

LABEL_57:

  v81 = *(&a1->isa + v9);
  if ((v81 & 0xC000000000000001) != 0)
  {
    v82 = sub_1C529DA8C();
    *&v132 = 0;
    v83 = 0;
    v84 = 0;
    v85 = v82 | 0x8000000000000000;
  }

  else
  {
    v86 = -1 << *(v81 + 32);
    v83 = ~v86;
    v87 = *(v81 + 64);
    *&v132 = v81 + 64;
    v88 = -v86;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v84 = v89 & v87;
    v85 = v81;
  }

  v90 = 0;
  j = v83;
  v136 = 120;
  v135 = &GEOConfigMapsSuggestionsDistanceThresholdForNewRevgeoRequest_Metadata;
  for (i = v85; ; v85 = i)
  {
    v91 = v84;
    v92 = v90;
    if ((v85 & 0x8000000000000000) == 0)
    {
      break;
    }

    v96 = sub_1C529DACC();
    if (!v96)
    {
      v104 = 0;
      v112 = v127;
      v113 = v126;
      goto LABEL_90;
    }

    v140 = v96;
    sub_1C5143DC8(0, &qword_1EC156260);
    swift_dynamicCast();
    v95 = v141;
    v134 = v90;
    v84 = v91;
    v133 = v91;
    if (!v141)
    {
LABEL_88:
      v104 = 0;
      v112 = v127;
      v113 = v126;
LABEL_90:
      sub_1C5265F90();
      *v112 = v104;
      return (*(v125 + 8))(v124, v113);
    }

LABEL_75:
    [a2 distanceFromLocation_];
    v98 = v97;
    v9 = v9 & 0xFFFFFFFF00000000 | v136;
    GEOConfigGetDouble();
    if (v99 >= v98)
    {
      v100 = *(&a1->isa + v137);
      if ((v100 & 0xC000000000000001) != 0)
      {

        v101 = a2;
        v102 = v95;
        v103 = sub_1C529DAAC();

        a2 = v101;
        a1 = v130;

        if (v103)
        {
          v140 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
          swift_dynamicCast();
          v104 = v141;
          if (v141)
          {
LABEL_83:
            if (qword_1EDC51988 != -1)
            {
              swift_once();
            }

            v107 = sub_1C529D64C();
            __swift_project_value_buffer(v107, qword_1EDC51F48);
            v108 = a2;
            v109 = sub_1C529D62C();
            v110 = sub_1C529D87C();

            v111 = os_log_type_enabled(v109, v110);
            v112 = v127;
            v113 = v126;
            if (v111)
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *v114 = 138412290;
              *(v114 + 4) = v108;
              *v115 = v108;
              v116 = v108;
              _os_log_impl(&dword_1C5126000, v109, v110, "Returning a cached mapItem for location:%@", v114, 0xCu);
              sub_1C5259230(v115, &qword_1EC156350);
              MEMORY[0x1C69445C0](v115, -1, -1);
              MEMORY[0x1C69445C0](v114, -1, -1);
              v117 = v95;
            }

            else
            {
              v117 = v109;
              v109 = v95;
            }

            goto LABEL_90;
          }
        }
      }

      else if (*(v100 + 16))
      {

        v105 = sub_1C525E430(v95);
        if (v106)
        {
          v104 = *(*(v100 + 56) + 8 * v105);
          swift_unknownObjectRetain();

          if (v104)
          {
            goto LABEL_83;
          }
        }

        else
        {
        }
      }
    }
  }

  v93 = v90;
  v94 = v91;
  if (v91)
  {
LABEL_71:
    v134 = v92;
    v84 = (v94 - 1) & v94;
    v95 = *(*(v85 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v94)))));
    v133 = v91;
    if (!v95)
    {
      goto LABEL_88;
    }

    goto LABEL_75;
  }

  while (1)
  {
    v90 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v90 >= ((v83 + 64) >> 6))
    {
      v104 = 0;
      v112 = v127;
      v113 = v126;
      goto LABEL_90;
    }

    v94 = *(v132 + 8 * v90);
    ++v93;
    if (v94)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_9:
  v15 = sub_1C529D64C();
  i = __swift_project_value_buffer(v15, qword_1EDC51F48);
  v16 = sub_1C529D62C();
  v17 = sub_1C529D87C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C5126000, v16, v17, "Filtered the cache of mapItems because some expired:\nBefore:\n", v18, 2u);
    MEMORY[0x1C69445C0](v18, -1, -1);
  }

  v119 = a2;

  v19 = *(&a1->isa + v9);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = 0;
    v21 = 0;
    a2 = 0;
    v22 = sub_1C529DA8C() | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v19 + 32);
    v21 = ~v23;
    v20 = (v19 + 64);
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    a2 = (v25 & *(v19 + 64));
    v22 = *(&a1->isa + v9);
  }

  v121 = v19;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v120 = v21;
  v27 = (v21 + 64) >> 6;
  *&v28 = 138412546;
  v132 = v28;
  v133 = v27;
  v134 = v22;
  v128 = v20;
  while (2)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      v35 = sub_1C529DABC();
      if (!v35)
      {
        goto LABEL_33;
      }

      v37 = v36;
      v140 = v35;
      sub_1C5143DC8(0, &qword_1EC156260);
      swift_dynamicCast();
      a1 = v141;
      v140 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
      swift_dynamicCast();
      v34 = v141;
      v31 = v26;
      v32 = a2;
      if (!a1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = v26;
      v30 = a2;
      v31 = v26;
      if (!a2)
      {
        while (1)
        {
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_94;
          }

          if (v31 >= v27)
          {
            break;
          }

          v30 = *&v20[8 * v31];
          ++v29;
          if (v30)
          {
            goto LABEL_25;
          }
        }

        a2 = 0;
LABEL_33:
        sub_1C5265F90();

        v50 = sub_1C529D62C();
        v51 = sub_1C529D87C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1C5126000, v50, v51, "After:\n", v52, 2u);
          MEMORY[0x1C69445C0](v52, -1, -1);
        }

        if (v122)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = sub_1C529DA8C() | 0x8000000000000000;
        }

        else
        {
          v57 = -1 << *(v129 + 32);
          v54 = ~v57;
          v53 = v129 + 64;
          v58 = -v57;
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v55 = v59 & *(v129 + 64);
          v56 = v129;
        }

        v60 = 0;
        v122 = v54;
        v61 = ((v54 + 64) >> 6);
        v133 = v53;
        v134 = v56;
        for (j = v61; ; v61 = j)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            v67 = sub_1C529DABC();
            if (!v67)
            {
              goto LABEL_56;
            }

            v69 = v68;
            v140 = v67;
            sub_1C5143DC8(0, &qword_1EC156260);
            swift_dynamicCast();
            a1 = v141;
            v140 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
            swift_dynamicCast();
            a2 = v141;
            v64 = v60;
            v65 = v55;
            if (!a1)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v62 = v60;
            v63 = v55;
            v64 = v60;
            if (!v55)
            {
              while (1)
              {
                v64 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  goto LABEL_95;
                }

                if (v64 >= v61)
                {
                  break;
                }

                v63 = *(v53 + 8 * v64);
                ++v62;
                if (v63)
                {
                  goto LABEL_49;
                }
              }

LABEL_56:
              sub_1C5265F90();
              a1 = v130;
              *&v130[v9] = v129;
              a2 = v119;
              goto LABEL_57;
            }

LABEL_49:
            v65 = (v63 - 1) & v63;
            v66 = (v64 << 9) | (8 * __clz(__rbit64(v63)));
            a2 = *(*(v56 + 56) + v66);
            a1 = *(*(v56 + 48) + v66);
            swift_unknownObjectRetain();
            if (!a1)
            {
              goto LABEL_56;
            }
          }

          v135 = v65;
          v70 = a1;
          swift_unknownObjectRetain();
          v71 = sub_1C529D62C();
          v72 = sub_1C529D87C();

          v136 = v71;
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v141 = v75;
            *v73 = v132;
            *(v73 + 4) = v70;
            *v74 = a1;
            *(v73 + 12) = 2080;
            v128 = v70;
            v76 = [a2 name];
            result = swift_unknownObjectRelease();
            if (!v76)
            {
              goto LABEL_98;
            }

            v77 = sub_1C529D72C();
            a1 = v78;

            v79 = sub_1C524E7F4(v77, a1, &v141);

            *(v73 + 14) = v79;
            v80 = v136;
            _os_log_impl(&dword_1C5126000, v136, v72, "Location: %@, MapItem: %s", v73, 0x16u);
            sub_1C5259230(v74, &qword_1EC156350);
            MEMORY[0x1C69445C0](v74, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x1C69445C0](v75, -1, -1);
            MEMORY[0x1C69445C0](v73, -1, -1);
            swift_unknownObjectRelease();

            v60 = v64;
            v55 = v135;
            v9 = v137;
          }

          else
          {

            swift_unknownObjectRelease_n();
            v60 = v64;
            v55 = v135;
          }

          v53 = v133;
          v56 = v134;
        }
      }

LABEL_25:
      v32 = (v30 - 1) & v30;
      v33 = (v31 << 9) | (8 * __clz(__rbit64(v30)));
      v34 = *(*(v22 + 56) + v33);
      a1 = *(*(v22 + 48) + v33);
      swift_unknownObjectRetain();
      if (!a1)
      {
        goto LABEL_33;
      }
    }

    v135 = v32;
    v38 = a1;
    swift_unknownObjectRetain();
    v39 = sub_1C529D62C();
    v40 = sub_1C529D87C();

    v136 = v39;
    if (!os_log_type_enabled(v39, v40))
    {

      swift_unknownObjectRelease_n();
      v26 = v31;
      a2 = v135;
LABEL_19:
      v27 = v133;
      v22 = v134;
      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v141 = v43;
  *v41 = v132;
  *(v41 + 4) = v38;
  *v42 = a1;
  *(v41 + 12) = 2080;
  j = v38;
  v44 = [v34 name];
  result = swift_unknownObjectRelease();
  if (v44)
  {
    v46 = sub_1C529D72C();
    a1 = v47;

    v48 = sub_1C524E7F4(v46, a1, &v141);

    *(v41 + 14) = v48;
    v49 = v136;
    _os_log_impl(&dword_1C5126000, v136, v40, "Location: %@, MapItem: %s", v41, 0x16u);
    sub_1C5259230(v42, &qword_1EC156350);
    MEMORY[0x1C69445C0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1C69445C0](v43, -1, -1);
    MEMORY[0x1C69445C0](v41, -1, -1);
    swift_unknownObjectRelease();

    v26 = v31;
    a2 = v135;
    v9 = v137;
    v20 = v128;
    goto LABEL_19;
  }

  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

BOOL sub_1C52712D4(void *a1)
{
  v2 = sub_1C529D3AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 timestamp];
  sub_1C529D37C();

  sub_1C529D2FC();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  GEOConfigGetDouble();
  return v8 <= v9;
}

void sub_1C52713F4(void (*a1)(uint64_t, void), uint64_t a2, double a3, double a4)
{
  BOOL = GEOConfigGetBOOL();
  v10 = CLLocationFromGEOLocationCoordinate2D(a3, a4);
  v11 = v10;
  if (BOOL)
  {
    MEMORY[0x1EEE9AC00](v10);
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156550);
    sub_1C529D90C();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156680);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C52A97D0;
      *(v14 + 32) = v13;
      swift_unknownObjectRetain();
      a1(v14, 0);

      swift_unknownObjectRelease();

      return;
    }

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v15 = sub_1C529D64C();
    __swift_project_value_buffer(v15, qword_1EDC51F48);
    v16 = v11;
    v17 = sub_1C529D62C();
    v18 = sub_1C529D87C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_1C5126000, v17, v18, "Did not find a cached mapItem. About to make a network request for:%@", v19, 0xCu);
      sub_1C5259230(v20, &qword_1EC156350);
      MEMORY[0x1C69445C0](v20, -1, -1);
      MEMORY[0x1C69445C0](v19, -1, -1);
    }

    v4 = v12;
  }

  v22 = *&v4[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__networkRequester];
  v23 = swift_allocObject();
  *(v23 + 16) = BOOL;
  *(v23 + 24) = v4;
  *(v23 + 32) = v11;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  aBlock[4] = sub_1C5279134;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5271A84;
  aBlock[3] = &block_descriptor_60;
  v24 = _Block_copy(aBlock);
  v25 = v11;
  v26 = v4;

  v27 = [v22 reverseGeocodeCoordinate:0 shiftIfNeeded:v24 completion:{a3, a4}];
  _Block_release(v24);
  if (!v27)
  {
    a1(0, 0);
  }
}

uint64_t sub_1C5271778(uint64_t a1, uint64_t a2, char a3, char *a4, void *a5, void (*a6)(uint64_t, uint64_t))
{
  if ((a3 & 1) == 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v17 = a2;
  queue = *&a4[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__queue];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v11 = swift_allocObject();
  v12 = sub_1C52796F4;
  *(v11 + 16) = sub_1C52796F4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C5279700;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5140848;
  aBlock[3] = &block_descriptor_70;
  v13 = _Block_copy(aBlock);

  v14 = a4;
  v15 = a5;

  dispatch_sync(queue, v13);
  _Block_release(v13);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if ((a5 & 1) == 0)
  {
    a2 = v17;
LABEL_5:
    a6(a1, a2);
    return sub_1C513EDF0(v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C527192C(uint64_t a1, void *a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_16;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (!(a3 >> 62))
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    swift_beginAccess();
    goto LABEL_17;
  }

  v12 = a3;
  result = sub_1C529DA9C();
  a3 = v12;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((a3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C69434E0](0, a3);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(a3 + 32);
    swift_unknownObjectRetain();
  }

  v8 = (a1 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__cacheForMapItems);
  swift_beginAccess();
  if (!v7)
  {
LABEL_17:
    sub_1C5277340(a2);
    swift_unknownObjectRelease();
    return swift_endAccess();
  }

  v9 = *v8;
  if ((*v8 & 0xC000000000000001) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v8;
    sub_1C52784E4(v7, a2, isUniquelyReferenced_nonNull_native);
    *v8 = v13;
    return swift_endAccess();
  }

  if (v9 < 0)
  {
    v10 = *v8;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1C529DA9C();
  if (!__OFADD__(result, 1))
  {
    *v8 = sub_1C527748C(v10, result + 1);
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C5271A84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
    v4 = sub_1C529D7DC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1C5271B24(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156548);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_1C52713F4(sub_1C52790A8, v11, a2, a3);
}

uint64_t sub_1C5271C84()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156548);
  return sub_1C529D83C();
}

uint64_t sub_1C5271CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1C529D66C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C529D69C();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__queue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a4;
  aBlock[4] = sub_1C5276FFC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_21;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  v19 = a4;
  sub_1C529D68C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1C513A57C(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
  sub_1C51391EC(&unk_1EDC51A40, &unk_1EC1566E0);
  sub_1C529D9CC();
  MEMORY[0x1C69433C0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1C5271FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1C529D85C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = v13;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;

  v15 = a5;
  sub_1C525F85C(0, 0, v11, &unk_1C52A9838, v14);
}

uint64_t sub_1C527213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[42] = a4;
  v9 = sub_1C529D3AC();
  v8[47] = v9;
  v8[48] = *(v9 - 8);
  v8[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5272204, 0, 0);
}

id sub_1C5272204()
{
  v79 = v0;
  v1 = *(v0 + 336);
  *(v0 + 320) = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_38:
    v53 = sub_1C529DA9C();
    *(v0 + 400) = v53;
    if (v53)
    {
      goto LABEL_3;
    }

LABEL_39:
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
LABEL_40:
    if (v6 >> 62)
    {
      if (sub_1C529DA9C())
      {
        goto LABEL_42;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      (*(v0 + 352))(v5, *(v0 + 368));

LABEL_50:

      v75 = *(v0 + 8);

      return v75();
    }

    result = GEOErrorDomain();
    if (!result)
    {
LABEL_54:
      __break(1u);
      return result;
    }

    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156528);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C52A91A0;
    *(inited + 32) = sub_1C529D72C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v56;
    *(inited + 48) = 0xD00000000000002ELL;
    *(inited + 56) = 0x80000001C52E8B10;
    sub_1C525F16C(inited);
    swift_setDeallocating();
    sub_1C5259230(inited + 32, &qword_1EC156530);
    v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v58 = sub_1C529D6FC();

    v59 = [v57 initWithDomain:v54 code:-8 userInfo:v58];

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v60 = sub_1C529D64C();
    __swift_project_value_buffer(v60, qword_1EDC51F48);
    v61 = v59;
    v62 = sub_1C529D62C();
    v63 = sub_1C529D88C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78 = v65;
      *v64 = 136315138;
      v66 = [v61 localizedDescription];
      v67 = sub_1C529D72C();
      v69 = v68;

      *(v0 + 288) = v67;
      *(v0 + 296) = v69;
      v70 = sub_1C529D79C();
      v72 = sub_1C524E7F4(v70, v71, &v78);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_1C5126000, v62, v63, "%s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1C69445C0](v65, -1, -1);
      MEMORY[0x1C69445C0](v64, -1, -1);
    }

    v73 = *(v0 + 352);
    v74 = v61;
    v73(MEMORY[0x1E69E7CC0], v61);

    goto LABEL_50;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 400) = v2;
  if (!v2)
  {
    goto LABEL_39;
  }

LABEL_3:
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v3 = 0;
  *(v0 + 656) = 121;
  v4 = (v0 + 424);
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 660) = 289;
  *(v0 + 408) = &GEOConfigMapsSuggestionsDistanceThresholdForWaldoSuggestion_Metadata;
  *(v0 + 416) = &GEOConfigMapsSuggestionsMinimumDistanceForWaldoSuggestion_Metadata;
  v76 = 136315138;
  v6 = v5;
  while (1)
  {
    *(v0 + 440) = v5;
    *(v0 + 448) = v6;
    *v4 = v77;
    v11 = *(v0 + 336);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C69434E0](v3);
    }

    else
    {
      if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v12 = *(v11 + 8 * v3 + 32);
    }

    v13 = v12;
    *(v0 + 456) = v12;
    *(v0 + 464) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = [v12 stringForKey_];
    if (!result)
    {
      __break(1u);
      goto LABEL_54;
    }

    v15 = result;
    v16 = sub_1C529D72C();
    v18 = v17;

    *(v0 + 472) = v16;
    *(v0 + 480) = v18;
    if (!isSharingStopped(v13))
    {
      break;
    }

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v19 = sub_1C529D64C();
    __swift_project_value_buffer(v19, qword_1EDC51F48);

    v20 = sub_1C529D62C();
    v21 = sub_1C529D87C();

    if (os_log_type_enabled(v20, v21))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v78 = v8;
      *v7 = v76;
      v9 = sub_1C524E7F4(v16, v18, &v78);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_1C5126000, v20, v21, "🚮🚮 Friendship ended with %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1C69445C0](v8, -1, -1);
      v10 = v7;
      v4 = (v0 + 424);
      MEMORY[0x1C69445C0](v10, -1, -1);
    }

    else
    {
    }

LABEL_5:
    v3 = *(v0 + 464);
    if (v3 == *(v0 + 400))
    {
      goto LABEL_40;
    }
  }

  v22 = [v13 arrayForKey_];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C529D7DC();

    v25 = sub_1C5276A34(v24);
    *(v0 + 488) = v25;

    if (v25)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v47 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
        *(v0 + 496) = v47;
        v48 = Strong;
        v47;

        v49 = swift_task_alloc();
        *(v0 + 504) = v49;
        *v49 = v0;
        v50 = sub_1C5272BD4;
        goto LABEL_33;
      }
    }
  }

  v27 = [*(v0 + 456) arrayForKey_];
  if (!v27 || (v28 = v27, v29 = sub_1C529D7DC(), v28, v25 = sub_1C5276A34(v29), *(v0 + 520) = v25, , !v25))
  {
LABEL_25:

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 456);
    v32 = sub_1C529D64C();
    __swift_project_value_buffer(v32, qword_1EDC51F48);
    v33 = v31;
    v34 = sub_1C529D62C();
    v35 = sub_1C529D88C();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 456);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v39;
      *v38 = v76;
      v40 = v37;
      v41 = [v40 description];
      v42 = sub_1C529D72C();
      v44 = v43;

      v45 = v42;
      v4 = (v0 + 424);
      v46 = sub_1C524E7F4(v45, v44, &v78);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_1C5126000, v34, v35, "❌❌ Friendship could not be verified:\n%s\nIgnoring entry.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1C69445C0](v39, -1, -1);
      MEMORY[0x1C69445C0](v38, -1, -1);
    }

    else
    {
    }

    v5 = *(v0 + 440);
    v6 = *(v0 + 448);
    v77 = *v4;
    goto LABEL_5;
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {

    goto LABEL_25;
  }

  v51 = *(v30 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
  *(v0 + 528) = v51;
  v52 = v30;
  v51;

  v49 = swift_task_alloc();
  *(v0 + 536) = v49;
  *v49 = v0;
  v50 = sub_1C5273B70;
LABEL_33:
  v49[1] = v50;

  return sub_1C524CFF0(v25);
}

uint64_t sub_1C5272BD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[30] = v2;
  v4[31] = a1;
  v4[32] = a2;
  v5 = v3[62];
  v4[64] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C5272D10, 0, 0);
}

id sub_1C5272D10()
{
  v116 = v0;
  v1 = *(v0 + 512);
  if (!v1)
  {
    goto LABEL_43;
  }

  v2 = *(v0 + 248);
  *(v0 + 552) = v1;
  *(v0 + 560) = v2;
  if (qword_1EDC51988 != -1)
  {
    swift_once();
  }

  v3 = sub_1C529D64C();
  *(v0 + 568) = __swift_project_value_buffer(v3, qword_1EDC51F48);

  v4 = sub_1C529D62C();
  v5 = sub_1C529D87C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v115 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C524E7F4(v2, v1, &v115);
    _os_log_impl(&dword_1C5126000, v4, v5, "✅✅ Verified friendship using ID:%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69445C0](v7, -1, -1);
    MEMORY[0x1C69445C0](v6, -1, -1);
  }

  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 456);
  v11 = sub_1C529D71C();
  v12 = &selRef_setOneLocationUpdater_;
  [v10 setString:v11 forKey:@"MapsSuggestionsContactLikelyAppleIDKey"];

  if (v9 == v2 && v1 == v8 || (sub_1C529DB5C() & 1) != 0)
  {
  }

  else
  {

    v13 = sub_1C529D62C();
    v14 = sub_1C529D87C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 480);
    if (v15)
    {
      v17 = *(v0 + 472);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v115 = v19;
      *v18 = 136315394;
      v20 = sub_1C524E7F4(v17, v16, &v115);

      *(v18 + 4) = v20;
      v12 = &selRef_setOneLocationUpdater_;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1C524E7F4(v2, v1, &v115);
      _os_log_impl(&dword_1C5126000, v13, v14, "🚨🚨 Updating ContactActivityPK from %s to %s)", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v19, -1, -1);
      MEMORY[0x1C69445C0](v18, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 456);
    v22 = sub_1C529D71C();
    [v21 v12[31]];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v24 = Strong, v25 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__contacts), v24, v26 = sub_1C529D71C(), v27 = [v25 contactNameForIdentifier_], v26, v25, v27))
  {
    v2 = sub_1C529D72C();
    v1 = v28;
  }

  else
  {

    v29 = sub_1C529D62C();
    v30 = sub_1C529D87C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v115 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1C524E7F4(v2, v1, &v115);
      _os_log_impl(&dword_1C5126000, v29, v30, "No name. Setting Likely Apple Account to:%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1C69445C0](v32, -1, -1);
      MEMORY[0x1C69445C0](v31, -1, -1);
    }
  }

  *(v0 + 584) = v1;
  *(v0 + 576) = v2;
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
    *(v0 + 592) = v34;
    v35 = v33;
    v34;

    v36 = swift_task_alloc();
    *(v0 + 600) = v36;
    *v36 = v0;
    v36[1] = sub_1C5274B08;
    v37 = *(v0 + 456);

    return sub_1C524DAE8(v37);
  }

  v39 = sub_1C529D62C();
  v40 = sub_1C529D88C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 456);
  if (!v41)
  {
    goto LABEL_51;
  }

  v43 = swift_slowAlloc();
  *v43 = 0;
  _os_log_impl(&dword_1C5126000, v39, v40, "No Location from FindMy. Ignoring entry.", v43, 2u);
LABEL_50:
  MEMORY[0x1C69445C0](v43, -1, -1);
  while (1)
  {
LABEL_51:

    v62 = *(v0 + 440);
    v63 = *(v0 + 448);
    v44 = *(v0 + 464);
    if (v44 == *(v0 + 400))
    {
LABEL_53:
      if (v63 >> 62)
      {
        if (sub_1C529DA9C())
        {
          goto LABEL_55;
        }
      }

      else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_55:
        (*(v0 + 352))(v62, *(v0 + 368));

LABEL_71:

        v112 = *(v0 + 8);

        return v112();
      }

      result = GEOErrorDomain();
      if (!result)
      {
LABEL_75:
        __break(1u);
        return result;
      }

      v91 = result;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156528);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C52A91A0;
      *(inited + 32) = sub_1C529D72C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v93;
      *(inited + 48) = 0xD00000000000002ELL;
      *(inited + 56) = 0x80000001C52E8B10;
      sub_1C525F16C(inited);
      swift_setDeallocating();
      sub_1C5259230(inited + 32, &qword_1EC156530);
      v94 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v95 = sub_1C529D6FC();

      v96 = [v94 initWithDomain:v91 code:-8 userInfo:v95];

      if (qword_1EDC51988 != -1)
      {
        swift_once();
      }

      v97 = sub_1C529D64C();
      __swift_project_value_buffer(v97, qword_1EDC51F48);
      v98 = v96;
      v99 = sub_1C529D62C();
      v100 = sub_1C529D88C();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v115 = v102;
        *v101 = 136315138;
        v103 = [v98 localizedDescription];
        v104 = sub_1C529D72C();
        v106 = v105;

        *(v0 + 288) = v104;
        *(v0 + 296) = v106;
        v107 = sub_1C529D79C();
        v109 = sub_1C524E7F4(v107, v108, &v115);

        *(v101 + 4) = v109;
        _os_log_impl(&dword_1C5126000, v99, v100, "%s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v102);
        MEMORY[0x1C69445C0](v102, -1, -1);
        MEMORY[0x1C69445C0](v101, -1, -1);
      }

      v110 = *(v0 + 352);
      v111 = v98;
      v110(MEMORY[0x1E69E7CC0], v98);

      goto LABEL_71;
    }

    v64 = (v0 + 424);
    v114 = *(v0 + 424);
    v66 = &selRef_setOneLocationUpdater_;
    while (1)
    {
      *(v0 + 440) = v62;
      *(v0 + 448) = v63;
      *v64 = v114;
      v45 = *(v0 + 336);
      if ((v45 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1C69434E0](v44);
      }

      else
      {
        if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_63;
        }

        v46 = *(v45 + 8 * v44 + 32);
      }

      v47 = v46;
      *(v0 + 456) = v46;
      *(v0 + 464) = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_58:
        v89 = *&v46[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy];
        *(v0 + 496) = v89;
        v90 = v46;
        v89;

        v87 = swift_task_alloc();
        *(v0 + 504) = v87;
        *v87 = v0;
        v88 = sub_1C5272BD4;
        goto LABEL_59;
      }

      result = [v46 v66[155]];
      if (!result)
      {
        __break(1u);
        goto LABEL_75;
      }

      v48 = result;
      v49 = sub_1C529D72C();
      v51 = v50;

      *(v0 + 472) = v49;
      *(v0 + 480) = v51;
      if (!isSharingStopped(v47))
      {
        break;
      }

      if (qword_1EDC51988 != -1)
      {
        swift_once();
      }

      v52 = sub_1C529D64C();
      __swift_project_value_buffer(v52, qword_1EDC51F48);

      v53 = sub_1C529D62C();
      v54 = sub_1C529D87C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v64;
        v57 = v63;
        v58 = v62;
        v59 = swift_slowAlloc();
        v115 = v59;
        *v55 = 136315138;
        v60 = sub_1C524E7F4(v49, v51, &v115);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_1C5126000, v53, v54, "🚮🚮 Friendship ended with %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        v61 = v59;
        v62 = v58;
        v63 = v57;
        v64 = v56;
        v0 = v113;
        MEMORY[0x1C69445C0](v61, -1, -1);
        v65 = v55;
        v66 = &selRef_setOneLocationUpdater_;
        MEMORY[0x1C69445C0](v65, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 464);
      if (v44 == *(v0 + 400))
      {
        goto LABEL_53;
      }
    }

    v67 = [v47 arrayForKey_];
    if (v67)
    {
      v68 = v67;
      v69 = sub_1C529D7DC();

      v44 = sub_1C5276A34(v69);
      *(v0 + 488) = v44;

      if (v44)
      {
        v46 = swift_unknownObjectWeakLoadStrong();
        if (!v46)
        {

          goto LABEL_43;
        }

        goto LABEL_58;
      }
    }

LABEL_43:
    v70 = [*(v0 + 456) arrayForKey_];
    if (!v70)
    {
      goto LABEL_47;
    }

    v71 = v70;
    v72 = sub_1C529D7DC();

    v44 = sub_1C5276A34(v72);
    *(v0 + 520) = v44;

    if (!v44)
    {
      goto LABEL_47;
    }

    v73 = swift_unknownObjectWeakLoadStrong();
    if (v73)
    {
      break;
    }

LABEL_47:

    if (qword_1EDC51988 != -1)
    {
LABEL_63:
      swift_once();
    }

    v74 = *(v0 + 456);
    v75 = sub_1C529D64C();
    __swift_project_value_buffer(v75, qword_1EDC51F48);
    v76 = v74;
    v39 = sub_1C529D62C();
    v77 = sub_1C529D88C();

    v78 = os_log_type_enabled(v39, v77);
    v42 = *(v0 + 456);
    if (v78)
    {
      v43 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v115 = v79;
      *v43 = 136315138;
      v42 = v42;
      v80 = [v42 description];
      v81 = sub_1C529D72C();
      v83 = v82;

      v84 = sub_1C524E7F4(v81, v83, &v115);

      *(v43 + 4) = v84;
      _os_log_impl(&dword_1C5126000, v39, v77, "❌❌ Friendship could not be verified:\n%s\nIgnoring entry.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1C69445C0](v79, -1, -1);
      goto LABEL_50;
    }
  }

  v85 = *(v73 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
  *(v0 + 528) = v85;
  v86 = v73;
  v85;

  v87 = swift_task_alloc();
  *(v0 + 536) = v87;
  *v87 = v0;
  v88 = sub_1C5273B70;
LABEL_59:
  v87[1] = v88;

  return sub_1C524CFF0(v44);
}

uint64_t sub_1C5273B70(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[33] = v2;
  v4[34] = a1;
  v4[35] = a2;
  v5 = v3[66];
  v4[68] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C5273CAC, 0, 0);
}

id sub_1C5273CAC()
{
  v116 = v0;
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = *(v0 + 272);
    *(v0 + 552) = v1;
    *(v0 + 560) = v2;
    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v3 = sub_1C529D64C();
    *(v0 + 568) = __swift_project_value_buffer(v3, qword_1EDC51F48);

    v4 = sub_1C529D62C();
    v5 = sub_1C529D87C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v115 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1C524E7F4(v2, v1, &v115);
      _os_log_impl(&dword_1C5126000, v4, v5, "✅✅ Verified friendship using ID:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1C69445C0](v7, -1, -1);
      MEMORY[0x1C69445C0](v6, -1, -1);
    }

    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = sub_1C529D71C();
    v12 = &selRef_setOneLocationUpdater_;
    [v10 setString:v11 forKey:@"MapsSuggestionsContactLikelyAppleIDKey"];

    if (v9 == v2 && v1 == v8 || (sub_1C529DB5C() & 1) != 0)
    {
    }

    else
    {

      v13 = sub_1C529D62C();
      v14 = sub_1C529D87C();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 480);
      if (v15)
      {
        v17 = *(v0 + 472);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v115 = v19;
        *v18 = 136315394;
        v20 = sub_1C524E7F4(v17, v16, &v115);

        *(v18 + 4) = v20;
        v12 = &selRef_setOneLocationUpdater_;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1C524E7F4(v2, v1, &v115);
        _os_log_impl(&dword_1C5126000, v13, v14, "🚨🚨 Updating ContactActivityPK from %s to %s)", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69445C0](v19, -1, -1);
        MEMORY[0x1C69445C0](v18, -1, -1);
      }

      else
      {
      }

      v21 = *(v0 + 456);
      v22 = sub_1C529D71C();
      [v21 v12[31]];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v24 = Strong, v25 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__contacts), v24, v26 = sub_1C529D71C(), v27 = [v25 contactNameForIdentifier_], v26, v25, v27))
    {
      v2 = sub_1C529D72C();
      v1 = v28;
    }

    else
    {

      v29 = sub_1C529D62C();
      v30 = sub_1C529D87C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v115 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_1C524E7F4(v2, v1, &v115);
        _os_log_impl(&dword_1C5126000, v29, v30, "No name. Setting Likely Apple Account to:%s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1C69445C0](v32, -1, -1);
        MEMORY[0x1C69445C0](v31, -1, -1);
      }
    }

    *(v0 + 584) = v1;
    *(v0 + 576) = v2;
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
      *(v0 + 592) = v34;
      v35 = v33;
      v34;

      v36 = swift_task_alloc();
      *(v0 + 600) = v36;
      *v36 = v0;
      v36[1] = sub_1C5274B08;
      v37 = *(v0 + 456);

      return sub_1C524DAE8(v37);
    }

    v39 = sub_1C529D62C();
    v40 = sub_1C529D88C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 456);
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C5126000, v39, v40, "No Location from FindMy. Ignoring entry.", v43, 2u);
LABEL_50:
      MEMORY[0x1C69445C0](v43, -1, -1);
    }
  }

  else
  {
LABEL_47:

    if (qword_1EDC51988 != -1)
    {
LABEL_63:
      swift_once();
    }

    v74 = *(v0 + 456);
    v75 = sub_1C529D64C();
    __swift_project_value_buffer(v75, qword_1EDC51F48);
    v76 = v74;
    v39 = sub_1C529D62C();
    v77 = sub_1C529D88C();

    v78 = os_log_type_enabled(v39, v77);
    v42 = *(v0 + 456);
    if (v78)
    {
      v43 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v115 = v79;
      *v43 = 136315138;
      v42 = v42;
      v80 = [v42 description];
      v81 = sub_1C529D72C();
      v83 = v82;

      v84 = sub_1C524E7F4(v81, v83, &v115);

      *(v43 + 4) = v84;
      _os_log_impl(&dword_1C5126000, v39, v77, "❌❌ Friendship could not be verified:\n%s\nIgnoring entry.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1C69445C0](v79, -1, -1);
      goto LABEL_50;
    }
  }

  v62 = *(v0 + 440);
  v63 = *(v0 + 448);
  v44 = *(v0 + 464);
  if (v44 == *(v0 + 400))
  {
LABEL_53:
    if (v63 >> 62)
    {
      if (sub_1C529DA9C())
      {
        goto LABEL_55;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_55:
      (*(v0 + 352))(v62, *(v0 + 368));

LABEL_71:

      v112 = *(v0 + 8);

      return v112();
    }

    result = GEOErrorDomain();
    if (!result)
    {
LABEL_75:
      __break(1u);
      return result;
    }

    v91 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156528);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C52A91A0;
    *(inited + 32) = sub_1C529D72C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v93;
    *(inited + 48) = 0xD00000000000002ELL;
    *(inited + 56) = 0x80000001C52E8B10;
    sub_1C525F16C(inited);
    swift_setDeallocating();
    sub_1C5259230(inited + 32, &qword_1EC156530);
    v94 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v95 = sub_1C529D6FC();

    v96 = [v94 initWithDomain:v91 code:-8 userInfo:v95];

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v97 = sub_1C529D64C();
    __swift_project_value_buffer(v97, qword_1EDC51F48);
    v98 = v96;
    v99 = sub_1C529D62C();
    v100 = sub_1C529D88C();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v115 = v102;
      *v101 = 136315138;
      v103 = [v98 localizedDescription];
      v104 = sub_1C529D72C();
      v106 = v105;

      *(v0 + 288) = v104;
      *(v0 + 296) = v106;
      v107 = sub_1C529D79C();
      v109 = sub_1C524E7F4(v107, v108, &v115);

      *(v101 + 4) = v109;
      _os_log_impl(&dword_1C5126000, v99, v100, "%s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x1C69445C0](v102, -1, -1);
      MEMORY[0x1C69445C0](v101, -1, -1);
    }

    v110 = *(v0 + 352);
    v111 = v98;
    v110(MEMORY[0x1E69E7CC0], v98);

    goto LABEL_71;
  }

  v64 = (v0 + 424);
  v114 = *(v0 + 424);
  v66 = &selRef_setOneLocationUpdater_;
  while (1)
  {
    *(v0 + 440) = v62;
    *(v0 + 448) = v63;
    *v64 = v114;
    v45 = *(v0 + 336);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1C69434E0](v44);
    }

    else
    {
      if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_63;
      }

      v46 = *(v45 + 8 * v44 + 32);
    }

    v47 = v46;
    *(v0 + 456) = v46;
    *(v0 + 464) = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    result = [v46 v66[155]];
    if (!result)
    {
      __break(1u);
      goto LABEL_75;
    }

    v48 = result;
    v49 = sub_1C529D72C();
    v51 = v50;

    *(v0 + 472) = v49;
    *(v0 + 480) = v51;
    if (!isSharingStopped(v47))
    {
      break;
    }

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v52 = sub_1C529D64C();
    __swift_project_value_buffer(v52, qword_1EDC51F48);

    v53 = sub_1C529D62C();
    v54 = sub_1C529D87C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v64;
      v57 = v63;
      v58 = v62;
      v59 = swift_slowAlloc();
      v115 = v59;
      *v55 = 136315138;
      v60 = sub_1C524E7F4(v49, v51, &v115);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1C5126000, v53, v54, "🚮🚮 Friendship ended with %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v61 = v59;
      v62 = v58;
      v63 = v57;
      v64 = v56;
      v0 = v113;
      MEMORY[0x1C69445C0](v61, -1, -1);
      v65 = v55;
      v66 = &selRef_setOneLocationUpdater_;
      MEMORY[0x1C69445C0](v65, -1, -1);
    }

    else
    {
    }

    v44 = *(v0 + 464);
    if (v44 == *(v0 + 400))
    {
      goto LABEL_53;
    }
  }

  v67 = [v47 arrayForKey_];
  if (!v67)
  {
    goto LABEL_43;
  }

  v68 = v67;
  v69 = sub_1C529D7DC();

  v44 = sub_1C5276A34(v69);
  *(v0 + 488) = v44;

  if (!v44)
  {
    goto LABEL_43;
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
LABEL_57:
    v85 = *&v46[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy];
    *(v0 + 496) = v85;
    v86 = v46;
    v85;

    v87 = swift_task_alloc();
    *(v0 + 504) = v87;
    *v87 = v0;
    v88 = sub_1C5272BD4;
    goto LABEL_59;
  }

LABEL_43:
  v70 = [*(v0 + 456) arrayForKey_];
  if (!v70)
  {
    goto LABEL_47;
  }

  v71 = v70;
  v72 = sub_1C529D7DC();

  v44 = sub_1C5276A34(v72);
  *(v0 + 520) = v44;

  if (!v44)
  {
    goto LABEL_47;
  }

  v73 = swift_unknownObjectWeakLoadStrong();
  if (!v73)
  {

    goto LABEL_47;
  }

  v89 = *(v73 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
  *(v0 + 528) = v89;
  v90 = v73;
  v89;

  v87 = swift_task_alloc();
  *(v0 + 536) = v87;
  *v87 = v0;
  v88 = sub_1C5273B70;
LABEL_59:
  v87[1] = v88;

  return sub_1C524CFF0(v44);
}

uint64_t sub_1C5274B08(uint64_t a1)
{
  v2 = *(*v1 + 592);
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5274C24, 0, 0);
}

uint64_t sub_1C5274C24()
{
  v140 = v0;
  v1 = *(v0 + 608);
  if (v1)
  {
    v2 = MapsSuggestionsCurrentBestLocation();
    v3 = *(v0 + 432);
    if (v2)
    {
      v4 = v2;
      v5 = *(v0 + 656);
      [v1 distanceFromLocation_];
      v7 = v6;
      v3 = v3 & 0xFFFFFFFF00000000 | v5;
      GEOConfigGetDouble();
      if (v8 < v7)
      {
        v9 = v3;

        v10 = v4;
        v11 = sub_1C529D62C();
        v12 = sub_1C529D87C();

        v13 = os_log_type_enabled(v11, v12);
        v14 = *(v0 + 456);
        if (v13)
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          *(v15 + 4) = v10;
          *v16 = v4;
          v17 = v10;
          _os_log_impl(&dword_1C5126000, v11, v12, "currentLocation:%@ is too far for showing this Waldo Suggestion. Dropping the entry.", v15, 0xCu);
          sub_1C5259230(v16, &qword_1EC156350);
          MEMORY[0x1C69445C0](v16, -1, -1);
          MEMORY[0x1C69445C0](v15, -1, -1);
        }

        else
        {
        }

        v23 = *(v0 + 424);
        v3 = v9;
        goto LABEL_29;
      }

      v24 = *(v0 + 660) | (*(v0 + 428) << 32);
      GEOConfigGetDouble();
      if (v7 < v25)
      {
        v137 = v24;

        v26 = v4;
        v27 = sub_1C529D62C();
        v28 = sub_1C529D87C();

        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 456);
        if (!v29)
        {

          v23 = v137;
          goto LABEL_29;
        }

        v31 = swift_slowAlloc();
        v32 = v3;
        v33 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v26;
        *v33 = v4;
        v34 = v26;
        _os_log_impl(&dword_1C5126000, v27, v28, "currentLocation:%@ is too close for showing this Waldo Suggestion. Dropping the entry.", v31, 0xCu);
        sub_1C5259230(v33, &qword_1EC156350);
        v35 = v33;
        v3 = v32;
        MEMORY[0x1C69445C0](v35, -1, -1);
        MEMORY[0x1C69445C0](v31, -1, -1);

LABEL_23:
        v23 = v137;
        goto LABEL_29;
      }
    }

    else
    {
      v24 = *(v0 + 424);
    }

    *(v0 + 624) = v3;
    *(v0 + 616) = v24;
    v36 = GEOLocationCoordinate2DFromCLLocationCoordinate2D([v1 coordinate]);
    v38 = v37;
    if (!GEOCoordinateIsValid(v36, v37))
    {
      v137 = v24;

      v27 = sub_1C529D62C();
      v51 = sub_1C529D88C();
      v52 = os_log_type_enabled(v27, v51);
      v30 = *(v0 + 456);
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v139 = v54;
        *v53 = 136315138;
        *(v0 + 304) = v36;
        *(v0 + 312) = v38;
        type metadata accessor for GEOLocationCoordinate2D(0);
        v55 = sub_1C529D74C();
        v57 = sub_1C524E7F4(v55, v56, &v139);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_1C5126000, v27, v51, "Location is not valid:/n%s. Ignoring entry.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x1C69445C0](v54, -1, -1);
        MEMORY[0x1C69445C0](v53, -1, -1);
      }

      goto LABEL_23;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 632) = Strong;
    if (Strong)
    {
      v40 = Strong;
      v41 = swift_task_alloc();
      *(v0 + 640) = v41;
      *(v41 + 2) = v40;
      v41[3] = v36;
      v41[4] = v38;
      v42 = swift_task_alloc();
      *(v0 + 648) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156538);
      *v42 = v0;
      v42[1] = sub_1C5275B70;
      v44 = sub_1C5279048;
      v45 = (v0 + 328);
      v46 = 0x80000001C52E8B40;
      v47 = 0;
      v48 = 0;
      v49 = 0xD00000000000001FLL;
      v50 = v41;

      return MEMORY[0x1EEE6DDE0](v45, v47, v48, v49, v46, v44, v50, v43);
    }

    v58 = sub_1C529D62C();
    v59 = sub_1C529D88C();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 608);
    v62 = *(v0 + 456);
    if (v60)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1C5126000, v58, v59, "No mapItem from coordinates. Ignoring entry.", v63, 2u);
      MEMORY[0x1C69445C0](v63, -1, -1);
    }

    else
    {
    }

    v3 = *(v0 + 624);
    v23 = *(v0 + 616);
  }

  else
  {

    v18 = sub_1C529D62C();
    v19 = sub_1C529D88C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 456);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C5126000, v18, v19, "No Location from FindMy. Ignoring entry.", v22, 2u);
      MEMORY[0x1C69445C0](v22, -1, -1);
    }

    v23 = *(v0 + 424);
    v3 = *(v0 + 432);
  }

LABEL_29:
  v64 = *(v0 + 448);
  v138 = *(v0 + 440);
  v65 = *(v0 + 464);
  if (v65 == *(v0 + 400))
  {
    goto LABEL_30;
  }

  v66 = &selRef_setOneLocationUpdater_;
  v135 = v0;
  while (2)
  {
    v136 = v64;
    while (1)
    {
      *(v0 + 440) = v138;
      *(v0 + 448) = v64;
      *(v0 + 424) = v23;
      *(v0 + 432) = v3;
      v75 = *(v0 + 336);
      if ((v75 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1C69434E0](v65);
      }

      else
      {
        if (v65 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_69;
        }

        v76 = *(v75 + 8 * v65 + 32);
      }

      v77 = v76;
      *(v0 + 456) = v76;
      *(v0 + 464) = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      v45 = [v76 v66[155]];
      if (!v45)
      {
        __break(1u);
        goto LABEL_80;
      }

      v78 = v45;
      v79 = sub_1C529D72C();
      v81 = v80;

      *(v0 + 472) = v79;
      *(v0 + 480) = v81;
      if (!isSharingStopped(v77))
      {
        break;
      }

      if (qword_1EDC51988 != -1)
      {
        swift_once();
      }

      v82 = sub_1C529D64C();
      __swift_project_value_buffer(v82, qword_1EDC51F48);

      v83 = sub_1C529D62C();
      v84 = sub_1C529D87C();

      if (os_log_type_enabled(v83, v84))
      {
        v67 = v23;
        v68 = swift_slowAlloc();
        v69 = v66;
        v70 = v3;
        v71 = swift_slowAlloc();
        v139 = v71;
        *v68 = 136315138;
        v72 = sub_1C524E7F4(v79, v81, &v139);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_1C5126000, v83, v84, "🚮🚮 Friendship ended with %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v73 = v71;
        v3 = v70;
        v66 = v69;
        MEMORY[0x1C69445C0](v73, -1, -1);
        v74 = v68;
        v23 = v67;
        v0 = v135;
        MEMORY[0x1C69445C0](v74, -1, -1);
      }

      else
      {
      }

      v64 = v136;
      v65 = *(v0 + 464);
      if (v65 == *(v0 + 400))
      {
        goto LABEL_30;
      }
    }

    v85 = [v77 arrayForKey_];
    if (v85)
    {
      v86 = v85;
      v87 = sub_1C529D7DC();

      v65 = sub_1C5276A34(v87);
      *(v0 + 488) = v65;

      if (v65)
      {
        v76 = swift_unknownObjectWeakLoadStrong();
        if (!v76)
        {

          goto LABEL_52;
        }

LABEL_63:
        v106 = *&v76[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy];
        *(v0 + 496) = v106;
        v107 = v76;
        v106;

        v108 = swift_task_alloc();
        *(v0 + 504) = v108;
        *v108 = v0;
        v109 = sub_1C5272BD4;
LABEL_65:
        v108[1] = v109;

        return sub_1C524CFF0(v65);
      }
    }

LABEL_52:
    v88 = [*(v0 + 456) arrayForKey_];
    if (v88)
    {
      v89 = v88;
      v90 = sub_1C529D7DC();

      v65 = sub_1C5276A34(v90);
      *(v0 + 520) = v65;

      if (v65)
      {

        v91 = swift_unknownObjectWeakLoadStrong();
        if (v91)
        {
          v110 = *(v91 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
          *(v0 + 528) = v110;
          v111 = v91;
          v110;

          v108 = swift_task_alloc();
          *(v0 + 536) = v108;
          *v108 = v0;
          v109 = sub_1C5273B70;
          goto LABEL_65;
        }
      }
    }

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v92 = *(v0 + 456);
    v93 = sub_1C529D64C();
    __swift_project_value_buffer(v93, qword_1EDC51F48);
    v94 = v92;
    v95 = sub_1C529D62C();
    v96 = sub_1C529D88C();

    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 456);
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v139 = v100;
      *v99 = 136315138;
      v98 = v98;
      v101 = [v98 description];
      v102 = sub_1C529D72C();
      v104 = v103;

      v105 = sub_1C524E7F4(v102, v104, &v139);

      *(v99 + 4) = v105;
      _os_log_impl(&dword_1C5126000, v95, v96, "❌❌ Friendship could not be verified:\n%s\nIgnoring entry.", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x1C69445C0](v100, -1, -1);
      MEMORY[0x1C69445C0](v99, -1, -1);
    }

    v64 = *(v0 + 448);
    v138 = *(v0 + 440);
    v23 = *(v0 + 424);
    v3 = *(v0 + 432);
    v65 = *(v0 + 464);
    if (v65 != *(v0 + 400))
    {
      continue;
    }

    break;
  }

LABEL_30:
  if (v64 >> 62)
  {
LABEL_69:
    if (sub_1C529DA9C())
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

  if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    v45 = GEOErrorDomain();
    if (v45)
    {
      v113 = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156528);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C52A91A0;
      *(inited + 32) = sub_1C529D72C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v115;
      *(inited + 48) = 0xD00000000000002ELL;
      *(inited + 56) = 0x80000001C52E8B10;
      sub_1C525F16C(inited);
      swift_setDeallocating();
      sub_1C5259230(inited + 32, &qword_1EC156530);
      v116 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v117 = sub_1C529D6FC();

      v118 = [v116 initWithDomain:v113 code:-8 userInfo:v117];

      if (qword_1EDC51988 != -1)
      {
        swift_once();
      }

      v119 = sub_1C529D64C();
      __swift_project_value_buffer(v119, qword_1EDC51F48);
      v120 = v118;
      v121 = sub_1C529D62C();
      v122 = sub_1C529D88C();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v139 = v124;
        *v123 = 136315138;
        v125 = [v120 localizedDescription];
        v126 = sub_1C529D72C();
        v128 = v127;

        *(v0 + 288) = v126;
        *(v0 + 296) = v128;
        v129 = sub_1C529D79C();
        v131 = sub_1C524E7F4(v129, v130, &v139);

        *(v123 + 4) = v131;
        _os_log_impl(&dword_1C5126000, v121, v122, "%s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x1C69445C0](v124, -1, -1);
        MEMORY[0x1C69445C0](v123, -1, -1);
      }

      v132 = *(v0 + 352);
      v133 = v120;
      v132(MEMORY[0x1E69E7CC0], v120);

      goto LABEL_76;
    }

LABEL_80:
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v45, v47, v48, v49, v46, v44, v50, v43);
  }

LABEL_32:
  (*(v0 + 352))(v138, *(v0 + 368));

LABEL_76:

  v134 = *(v0 + 8);

  return v134();
}

uint64_t sub_1C5275B70()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5275C88, 0, 0);
}

id sub_1C5275C88()
{
  v112 = v1;

  v2 = *(v1 + 328);
  if (!v2)
  {
    goto LABEL_21;
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (!sub_1C529DA9C())
  {
LABEL_20:

LABEL_21:

    v32 = sub_1C529D62C();
    v33 = sub_1C529D88C();
    v34 = os_log_type_enabled(v32, v33);
    v29 = *(v1 + 608);
    v35 = *(v1 + 456);
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C5126000, v32, v33, "No mapItem from coordinates. Ignoring entry.", v36, 2u);
      MEMORY[0x1C69445C0](v36, -1, -1);

      goto LABEL_25;
    }

LABEL_24:
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1C69434E0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_78:
      swift_once();
LABEL_70:
      v91 = sub_1C529D64C();
      __swift_project_value_buffer(v91, qword_1EDC51F48);
      v92 = v0;
      v93 = sub_1C529D62C();
      v94 = sub_1C529D88C();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v111 = v96;
        *v95 = 136315138;
        v97 = [v92 localizedDescription];
        v98 = sub_1C529D72C();
        v100 = v99;

        *(v1 + 288) = v98;
        *(v1 + 296) = v100;
        v101 = sub_1C529D79C();
        v103 = sub_1C524E7F4(v101, v102, &v111);

        *(v95 + 4) = v103;
        _os_log_impl(&dword_1C5126000, v93, v94, "%s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x1C69445C0](v96, -1, -1);
        MEMORY[0x1C69445C0](v95, -1, -1);
      }

      v104 = *(v1 + 352);
      v105 = v92;
      v104(MEMORY[0x1E69E7CC0], v92);

      goto LABEL_73;
    }

    v3 = *(v2 + 32);
    swift_unknownObjectRetain();
  }

  v4 = *(v1 + 608);
  v5 = *(v1 + 456);
  v6 = *(v1 + 384);
  v7 = *(v1 + 392);
  v8 = *(v1 + 376);

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v5 setNumber:v9 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];

  v10 = [objc_opt_self() mapItemStorageForGEOMapItem_];
  [v5 setGeoMapItem_];

  v11 = sub_1C529D71C();

  [v5 setString:v11 forKey:@"MapsSuggestionsContactDisplayNameKey"];

  [v5 setLocationCoordinateKeysFromLocation_];
  v12 = [v4 timestamp];
  sub_1C529D37C();

  v13 = sub_1C529D31C();
  (*(v6 + 8))(v7, v8);
  [v5 setDate:v13 forKey:@"MapsSuggestionsContactLocationTimestampKey"];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__contacts);

    v17 = sub_1C529D71C();

    v18 = [v16 dataForContactWithIdentifier_];

    if (v18)
    {
      v19 = *(v1 + 456);
      v20 = sub_1C529D2BC();
      v22 = v21;

      v23 = sub_1C529D2AC();
      [v19 setData:v23 forKey:@"MapsSuggestionsContactAsDataKey"];

      sub_1C5279054(v20, v22);
    }
  }

  else
  {
  }

  if (([*(v1 + 456) containsKey_] & 1) == 0)
  {
    v26 = sub_1C529D62C();
    v27 = sub_1C529D88C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 608);
    v30 = *(v1 + 456);
    if (v28)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C5126000, v26, v27, "Could not set CNContact as a data blob. Ignoring entry.", v31, 2u);
      MEMORY[0x1C69445C0](v31, -1, -1);

      swift_unknownObjectRelease();
LABEL_25:
      v25 = *(v1 + 448);
      v110 = *(v1 + 440);
      goto LABEL_26;
    }

    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  MEMORY[0x1C6943260]();
  if (*((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C529D7FC();
  }

  v24 = *(v1 + 608);
  sub_1C529D81C();

  swift_unknownObjectRelease();
  v25 = *(v1 + 320);
  v110 = v25;
LABEL_26:
  v37 = *(v1 + 464);
  if (v37 == *(v1 + 400))
  {
    goto LABEL_27;
  }

  v38 = (v1 + 624);
  v39 = (v1 + 616);
  v107 = (v1 + 424);
  v108 = (v1 + 432);
  v40 = &selRef_setOneLocationUpdater_;
  while (2)
  {
    v109 = *v38;
    v41 = *v39;
    while (1)
    {
      *(v1 + 440) = v110;
      *(v1 + 448) = v25;
      *(v1 + 424) = v41;
      *(v1 + 432) = v109;
      v46 = *(v1 + 336);
      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1C69434E0](v37);
      }

      else
      {
        if (v37 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_67;
        }

        v47 = *(v46 + 8 * v37 + 32);
      }

      v48 = v47;
      *(v1 + 456) = v47;
      *(v1 + 464) = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      result = [v47 v40[155]];
      if (!result)
      {
        __break(1u);
        goto LABEL_80;
      }

      v50 = result;
      v51 = sub_1C529D72C();
      v53 = v52;

      *(v1 + 472) = v51;
      *(v1 + 480) = v53;
      if (!isSharingStopped(v48))
      {
        break;
      }

      if (qword_1EDC51988 != -1)
      {
        swift_once();
      }

      v54 = sub_1C529D64C();
      __swift_project_value_buffer(v54, qword_1EDC51F48);

      v55 = sub_1C529D62C();
      v56 = sub_1C529D87C();

      if (os_log_type_enabled(v55, v56))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v111 = v43;
        *v42 = 136315138;
        v44 = sub_1C524E7F4(v51, v53, &v111);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_1C5126000, v55, v56, "🚮🚮 Friendship ended with %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v45 = v43;
        v40 = &selRef_setOneLocationUpdater_;
        MEMORY[0x1C69445C0](v45, -1, -1);
        MEMORY[0x1C69445C0](v42, -1, -1);
      }

      else
      {
      }

      v37 = *(v1 + 464);
      if (v37 == *(v1 + 400))
      {
        goto LABEL_27;
      }
    }

    v57 = [v48 arrayForKey_];
    if (v57)
    {
      v58 = v57;
      v59 = sub_1C529D7DC();

      v37 = sub_1C5276A34(v59);
      *(v1 + 488) = v37;

      if (v37)
      {
        v47 = swift_unknownObjectWeakLoadStrong();
        if (!v47)
        {

          goto LABEL_49;
        }

LABEL_61:
        v80 = *&v47[OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy];
        *(v1 + 496) = v80;
        v81 = v47;
        v80;

        v82 = swift_task_alloc();
        *(v1 + 504) = v82;
        *v82 = v1;
        v83 = sub_1C5272BD4;
LABEL_63:
        v82[1] = v83;

        return sub_1C524CFF0(v37);
      }
    }

LABEL_49:
    v60 = [*(v1 + 456) arrayForKey_];
    if (v60)
    {
      v61 = v60;
      v62 = sub_1C529D7DC();

      v37 = sub_1C5276A34(v62);
      *(v1 + 520) = v37;

      if (v37)
      {

        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v84 = *(v63 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity__findMy);
          *(v1 + 528) = v84;
          v85 = v63;
          v84;

          v82 = swift_task_alloc();
          *(v1 + 536) = v82;
          *v82 = v1;
          v83 = sub_1C5273B70;
          goto LABEL_63;
        }
      }
    }

    if (qword_1EDC51988 != -1)
    {
      swift_once();
    }

    v64 = *(v1 + 456);
    v65 = sub_1C529D64C();
    __swift_project_value_buffer(v65, qword_1EDC51F48);
    v66 = v64;
    v67 = sub_1C529D62C();
    v68 = sub_1C529D88C();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v1 + 456);
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v111 = v72;
      *v71 = 136315138;
      v73 = v70;
      v74 = [v73 description];
      v75 = sub_1C529D72C();
      v77 = v76;

      v78 = v75;
      v40 = &selRef_setOneLocationUpdater_;
      v79 = sub_1C524E7F4(v78, v77, &v111);

      *(v71 + 4) = v79;
      _os_log_impl(&dword_1C5126000, v67, v68, "❌❌ Friendship could not be verified:\n%s\nIgnoring entry.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1C69445C0](v72, -1, -1);
      MEMORY[0x1C69445C0](v71, -1, -1);
    }

    else
    {
    }

    v25 = *(v1 + 448);
    v110 = *(v1 + 440);
    v37 = *(v1 + 464);
    v39 = v107;
    v38 = v108;
    if (v37 != *(v1 + 400))
    {
      continue;
    }

    break;
  }

LABEL_27:
  if (v25 >> 62)
  {
LABEL_67:
    if (sub_1C529DA9C())
    {
      goto LABEL_29;
    }

LABEL_68:
    result = GEOErrorDomain();
    if (!result)
    {
LABEL_80:
      __break(1u);
      return result;
    }

    v86 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156528);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C52A91A0;
    *(inited + 32) = sub_1C529D72C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v88;
    *(inited + 48) = 0xD00000000000002ELL;
    *(inited + 56) = 0x80000001C52E8B10;
    sub_1C525F16C(inited);
    swift_setDeallocating();
    sub_1C5259230(inited + 32, &qword_1EC156530);
    v89 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v90 = sub_1C529D6FC();

    v0 = [v89 initWithDomain:v86 code:-8 userInfo:v90];

    if (qword_1EDC51988 == -1)
    {
      goto LABEL_70;
    }

    goto LABEL_78;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_68;
  }

LABEL_29:
  (*(v1 + 352))(v110, *(v1 + 368));

LABEL_73:

  v106 = *(v1 + 8);

  return v106();
}

uint64_t sub_1C5276A34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C5265B44(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1C524D65C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C5265B44((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1C5276B48(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C529DA9C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C529DA9C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C52772A0(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C5278DE0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1C5276C38(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1C5143DC8(0, &qword_1EDC51A38);
    v5 = sub_1C529D7CC();
  }

  if (a2)
  {
    v6 = sub_1C529D29C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id MapsSuggestionsContactActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsContactActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsContactActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C527700C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C524F4A4;

  return sub_1C527213C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C52770E8()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51F48);
  __swift_project_value_buffer(v0, qword_1EDC51F48);
  return sub_1C529D63C();
}

void *sub_1C527716C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C52772A0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C529DA9C();
LABEL_9:
  result = sub_1C529DA4C();
  *v1 = result;
  return result;
}

uint64_t sub_1C5277340(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1C525E430(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1C5278058(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1C5278944();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1C529DAAC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1C529DA9C();
  v8 = sub_1C527748C(v4, v7);

  v9 = sub_1C525E430(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1C5278058(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1C527748C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156570);
    v2 = sub_1C529DB0C();
    v19 = v2;
    sub_1C529DA8C();
    v3 = sub_1C529DABC();
    if (v3)
    {
      v4 = v3;
      sub_1C5143DC8(0, &qword_1EC156260);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1C5277C38(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1C529D97C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1C529DABC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1C52776D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156278);
  v35 = a2;
  result = sub_1C529DAFC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1C529DBDC();
      sub_1C529D76C();
      result = sub_1C529DBFC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5277978(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156580);
  v37 = a2;
  result = sub_1C529DAFC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C529DBDC();
      sub_1C529D76C();
      result = sub_1C529DBFC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5277C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156570);
  result = sub_1C529DAFC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_1C529D97C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5277EA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C529D9EC() + 1) & ~v5;
    do
    {
      sub_1C529DBDC();

      sub_1C529D76C();
      v9 = sub_1C529DBFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1C5278058(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C529D9EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1C529D97C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1C52781E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C525E3B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C52776D4(v16, a4 & 1);
      v11 = sub_1C525E3B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1C529DB7C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1C5278660();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1C527835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C525E3B8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C5277978(v18, a5 & 1);
      v13 = sub_1C525E3B8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C529DB7C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C52787CC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

id sub_1C52784E4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C525E430(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1C5277C38(v13, a3 & 1);
      v8 = sub_1C525E430(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1C5143DC8(0, &qword_1EC156260);
        result = sub_1C529DB7C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1C5278944();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_1C5278660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156278);
  v2 = *v0;
  v3 = sub_1C529DAEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C52787CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156580);
  v2 = *v0;
  v3 = sub_1C529DAEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5278944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156570);
  v2 = *v0;
  v3 = sub_1C529DAEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C5278AA8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1C5279168(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C5278B38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156570);
  result = sub_1C529DB1C();
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
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = v17;
    swift_unknownObjectRetain();
    result = sub_1C529D97C();
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

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1C5278D54(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C69445E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C69445E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5278DE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C529DA9C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C529DA9C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C51391EC(&qword_1EC1565A0, &qword_1EC156598);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156598);
            v9 = sub_1C5278F94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C5143DC8(0, &qword_1EDC51A38);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1C5278F94(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69434E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C5279014;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5279054(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C52790A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156548);

  return sub_1C5271C84();
}

uint64_t sub_1C5279168(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);
    swift_unknownObjectRetain();
    v16 = a4(v15, v14);

    result = swift_unknownObjectRelease();
    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_1C5278B38(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1C5278B38(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C52792D0(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1C5279168(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1C5278AA8(v10, v6, v4, a2);
  result = MEMORY[0x1C69445C0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1C5279450(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v22 = MEMORY[0x1E69E7CC8];
    sub_1C529DA8C();
    v4 = sub_1C529DABC();
    if (v4)
    {
      v5 = v4;
      sub_1C5143DC8(0, &qword_1EC156260);
      v6 = v5;
      do
      {
        v20 = v6;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156560);
        swift_dynamicCast();
        if (!v21)
        {
          break;
        }

        v7 = v21;
        swift_unknownObjectRetain();
        v8 = a2(v7, v20);

        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = *(v3 + 16);
          if (*(v3 + 24) <= v9)
          {
            sub_1C5277C38(v9 + 1, 1);
          }

          v3 = v22;
          result = sub_1C529D97C();
          v11 = v22 + 64;
          v12 = -1 << *(v22 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v22 + 64 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *(v11 + 8 * v14);
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v22 + 48) + 8 * v15) = v7;
          *(*(v22 + 56) + 8 * v15) = v20;
          ++*(v22 + 16);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v6 = sub_1C529DABC();
      }

      while (v6);
    }

    sub_1C5265F90();
  }

  else
  {
    v3 = sub_1C52792D0(a1, a2);
  }

  return v3;
}

uint64_t sub_1C52798F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector_orderPickups;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C5279948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector_orderPickups;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1C5279AEC()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v2 = *v1;
  sub_1C513B684(*v1);
  return v2;
}

uint64_t sub_1C5279C08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1C513EDF0(v6);
}

uint64_t sub_1C5279C68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C527A560;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C513B684(v4);
}

uint64_t sub_1C5279D08(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C527A528;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1C513B684(v3);
  return sub_1C513EDF0(v8);
}

uint64_t sub_1C5279E30(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;

  sub_1C513EDF0(v7);
  swift_beginAccess();

  a1(v8);

  return swift_unknownObjectRetain();
}

uint64_t sub_1C527A02C()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    sub_1C513B684(v3);

    v3(v4);
    sub_1C513EDF0(v3);
  }

  return result;
}

id MapsSuggestionsFakeFinanceKitConnector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsFakeFinanceKitConnector.init()()
{
  *&v0[OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector_orderPickups] = MEMORY[0x1E69E7CC0];
  v1 = &v0[OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle];
  v2 = type metadata accessor for MapsSuggestionsFakeFinanceKitConnector();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MapsSuggestionsFakeFinanceKitConnector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsFakeFinanceKitConnector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C527A528(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id MapsSuggestionsRouteGeniusStartedCondition.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C529D71C();

  v3 = [v1 initWithName_];

  return v3;
}

char *MapsSuggestionsRouteGeniusStartedCondition.init(name:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v27 = sub_1C529D8EC();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v2[OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__notificationTokenStarted] = 0;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__notificationTokenStopped] = 0;
  v26 = OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__queue;
  sub_1C525006C();
  sub_1C529D68C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v27);
  *&v2[v26] = sub_1C529D92C();
  v2[OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__started] = 0;
  v8 = sub_1C529D71C();

  v9 = type metadata accessor for MapsSuggestionsRouteGeniusStartedCondition();
  v36.receiver = v2;
  v36.super_class = v9;
  v10 = objc_msgSendSuper2(&v36, sel_initWithName_, v8);

  sub_1C529D72C();
  v11 = OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__queue;
  v12 = *&v10[OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__queue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1C527AAEC;
  v35 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1C5250208;
  v33 = &block_descriptor_6;
  v14 = _Block_copy(&aBlock);
  v15 = v10;
  v16 = v12;

  v17 = sub_1C529D75C();

  v18 = OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__notificationTokenStarted;
  swift_beginAccess();
  notify_register_dispatch((v17 + 32), &v15[v18], v16, v14);
  swift_endAccess();

  _Block_release(v14);

  sub_1C529D72C();
  v19 = *&v10[v11];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v19;

  v34 = sub_1C527AC34;
  v35 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1C5250208;
  v33 = &block_descriptor_7_0;
  v22 = _Block_copy(&aBlock);

  v23 = sub_1C529D75C();

  v24 = OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__notificationTokenStopped;
  swift_beginAccess();
  notify_register_dispatch((v23 + 32), &v15[v24], v21, v22);
  swift_endAccess();

  _Block_release(v22);

  return v15;
}

void sub_1C527AB14(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v6 = sub_1C529D64C();
  __swift_project_value_buffer(v6, qword_1EDC51F30);
  v7 = sub_1C529D62C();
  v8 = sub_1C529D87C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5126000, v7, v8, a3, v9, 2u);
    MEMORY[0x1C69445C0](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15MapsSuggestions42MapsSuggestionsRouteGeniusStartedCondition__started] = a4;
  }
}

id MapsSuggestionsRouteGeniusStartedCondition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsRouteGeniusStartedCondition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MapsSuggestionsThreadSafe.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C527B1DC();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

void MapsSuggestionsThreadSafe.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1C527B258(v3 + v5, a1);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t MapsSuggestionsThreadSafe.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1C527B2B0();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*MapsSuggestionsThreadSafe.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  MapsSuggestionsThreadSafe.wrappedValue.getter(v11);
  return sub_1C527B034;
}

void sub_1C527B034(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_1C527B2B0();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1C527B2B0();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void MapsSuggestionsThreadSafe.mutate<A>(_:)()
{
  v1 = *v0;
  v2 = (*(**v0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((*v0 + v2));
  sub_1C527B34C();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1C527B1DC()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1C529DA6C();
  return sub_1C529DA5C();
}

void sub_1C527B2B0()
{
  v1 = *v0;
  v2 = **v0;
  v3 = *(v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_1C527B3D4(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_1C527B374()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C527B3D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_1C527B484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1C527B5D8()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C527B6AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C527B70C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void sub_1C527B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C529D29C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *MapsSuggestionsDOoMEngine.init(resourceDepot:conditions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Integer = a2;
  v95 = a1;
  v4 = sub_1C529D3AC();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1C529D3CC();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1C529D3EC();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C529D8EC();
  v8 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__queue;
  v82 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__queue;
  v74 = sub_1C525006C();
  v73 = v13;
  sub_1C529D68C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v80 = sub_1C513A5C4(&qword_1EDC51B00, MEMORY[0x1E69E8030]);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  v81 = sub_1C5250110();
  v78 = v10;
  sub_1C529D9CC();
  v75 = *MEMORY[0x1E69E8090];
  v16 = *(v8 + 104);
  v76 = v8 + 104;
  v77 = v16;
  v16(v91);
  *&v3[v15] = sub_1C529D92C();
  v17 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__collationDelay;
  GEOConfigGetDouble();
  *&v3[v17] = v18;
  v19 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isInWindowCondition;
  v20 = objc_allocWithZone(type metadata accessor for MapsSuggestionsIsInWindowCondition());
  v21 = sub_1C529D71C();
  v22 = [v20 initWithName_];

  *&v3[v19] = v22;
  v23 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__rtManager;
  *&v3[v23] = [objc_opt_self() defaultManager];
  v24 = &v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination] = 0;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker] = 0;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult] = 0;
  (*(v93 + 56))(&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__lastPLCUpdateProcessedAt], 1, 1, v94);
  v25 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime;
  GEOConfigGetDouble();
  *&v3[v25] = v26;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo] = 0;
  v27 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition;
  LOBYTE(v25) = GEOConfigGetBOOL();
  LOBYTE(v21) = GEOConfigGetBOOL();
  LOBYTE(v19) = GEOConfigGetBOOL();
  v28 = objc_allocWithZone(type metadata accessor for MapsSuggestionsIsDrivingCondition());
  *&v3[v27] = MapsSuggestionsIsDrivingCondition.init(name:bluetooth:carPlay:coreMotion:)(1299140420, 0xE400000000000000, v25, v21, v19);
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__resourceDepot] = v95;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__conditions] = Integer;
  swift_unknownObjectRetain();
  Integer = GEOConfigGetInteger();
  v72 = GEOConfigGetInteger();
  v29 = GEOConfigGetInteger();
  GEOConfigGetDouble();
  v31 = v30;
  v32 = type metadata accessor for DOoMSessionManager();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__queue;
  sub_1C529D68C();
  v35 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C529D9CC();
  v77(v91, v75, v92);
  *&v33[v34] = sub_1C529D92C();
  v36 = &v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  v36[8] = 1;
  *v36 = 0;
  *&v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_etaBudget] = Integer;
  *&v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_enRouteBudget] = v72;
  *&v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_beforeDrivingBudget] = v29;
  *&v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__minimumWaitTime] = v31;
  *&v33[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions] = sub_1C525E890(v35);
  v98.receiver = v33;
  v98.super_class = v32;
  v37 = objc_msgSendSuper2(&v98, sel_init);
  v38 = v84;
  sub_1C529D3BC();
  v39 = v86;
  v40 = v85;
  v41 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x1E6969A48], v87);
  v42 = MapsSuggestionsNow();
  v43 = v89;
  sub_1C529D37C();

  v44 = sub_1C529D3DC();
  (*(v93 + 8))(v43, v94);
  (*(v39 + 8))(v40, v41);
  (*(v88 + 8))(v38, v90);
  v45 = &v37[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  *v45 = v44;
  v45[8] = 0;

  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager] = v37;
  v46 = *&v3[v82];
  v47 = objc_allocWithZone(MapsSuggestionsObservers);
  v48 = v46;
  v49 = sub_1C529D71C();
  v50 = [v47 initWithCallbackQueue:v48 name:v49];

  *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers] = v50;
  v51 = type metadata accessor for MapsSuggestionsDOoMEngine();
  v97.receiver = v3;
  v97.super_class = v51;
  v52 = objc_msgSendSuper2(&v97, sel_init);
  GEOConfigGetDouble();
  v54 = v53;
  v55 = *&v52[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__collationDelay];
  v56 = *&v52[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__queue];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v54;
  v59 = objc_allocWithZone(MapsSuggestionsCanKicker);
  v60 = v56;

  v61 = sub_1C529D71C();
  aBlock[4] = sub_1C52856A8;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_7;
  v62 = _Block_copy(aBlock);
  v63 = [v59 initWithName:v61 time:v60 queue:v62 block:v55];

  _Block_release(v62);

  v64 = *&v52[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker];
  *&v52[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker] = v63;

  sub_1C527DC04();
  sub_1C527D0BC();
  v65 = [v52 description];

  v66 = sub_1C529D72C();
  v68 = v67;
  swift_unknownObjectRelease();

  v69 = &v52[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName];
  swift_beginAccess();
  *v69 = v66;
  v69[1] = v68;

  return v52;
}

void sub_1C527CB78(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-v3];
  v5 = sub_1C529D3AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__lastPLCUpdateProcessedAt;
    swift_beginAccess();
    sub_1C525F29C(v13 + v14, v4, &unk_1EC156760);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1C5259230(v4, &unk_1EC156760);
LABEL_13:
      sub_1C527DFF4();

      return;
    }

    (*(v6 + 32))(v11, v4, v5);
    v15 = MapsSuggestionsNow();
    sub_1C529D37C();

    sub_1C529D2FC();
    v17 = v16;
    v18 = *(v6 + 8);
    v18(v9, v5);
    if (v17 >= a1)
    {
      v18(v11, v5);
      goto LABEL_13;
    }

    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v19 = sub_1C529D64C();
    __swift_project_value_buffer(v19, qword_1EDC51F30);
    v20 = sub_1C529D62C();
    v21 = sub_1C529D87C();
    if (!os_log_type_enabled(v20, v21))
    {
      v26 = v20;
      v20 = v13;
      goto LABEL_15;
    }

    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = a1 / 60.0;
    if (COERCE__INT64(fabs(a1 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        *(v22 + 4) = v23;
        v24 = v21;
        v25 = v22;
        _os_log_impl(&dword_1C5126000, v20, v24, "⚠️  Skipping PLC Update because we processed one less than %ld mins ago", v22, 0xCu);
        MEMORY[0x1C69445C0](v25, -1, -1);
        v26 = v13;
LABEL_15:

        v18(v11, v5);
        return;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1C527CFFC(void *a1, uint64_t a2, void *a3, char *a4, const char **a5)
{
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1C5285484(a3, v10, v9, a4, a5);
  swift_unknownObjectRelease();
}

id sub_1C527D0BC()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MapsSuggestionsRouteGeniusStartedCondition());
  v3 = sub_1C529D71C();
  v4 = [v2 initWithName_];

  v5 = v4;
  v6 = [MapsSuggestionsBlockCondition alloc];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v5 uniqueName];
  v9 = [v8 capitalizedString];
  v10 = [v7 initWithFormat:@"negated%@", v9];
  aBlock = MEMORY[0x1E69E9820];
  v49 = 3221225472;
  v50 = __outOfNamespace_negate_block_invoke;
  v51 = &unk_1E81F82A0;
  v52 = v5;
  v11 = v5;
  v12 = [(MapsSuggestionsBlockCondition *)v6 initWithName:v10 block:&aBlock];
  v13 = v52;

  v12;
  v14 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__conditions;
  swift_beginAccess();
  v15 = swift_unknownObjectRetain();
  MEMORY[0x1C6943260](v15);
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C529D7FC();
  }

  sub_1C529D81C();
  swift_endAccess();
  v16 = objc_allocWithZone(MapsSuggestionsBlockCondition);
  v17 = sub_1C529D71C();
  v52 = sub_1C527D8A0;
  v53 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C528864C;
  v51 = &block_descriptor_85_0;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 initWithName:v17 block:v18];

  _Block_release(v18);

  swift_beginAccess();
  v20 = v19;
  MEMORY[0x1C6943260]();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C529D7FC();
  }

  v47 = v20;
  sub_1C529D81C();
  swift_endAccess();
  v21 = objc_allocWithZone(MapsSuggestionsTransportTypePreferenceCondition);
  v22 = sub_1C529D71C();
  v23 = [v21 initWithName:v22 requiresTransportType:0];

  swift_beginAccess();
  v24 = v23;
  MEMORY[0x1C6943260]();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C529D7FC();
  }

  sub_1C529D81C();
  swift_endAccess();
  result = [objc_allocWithZone(MapsSuggestionsNavigationStartedTrigger) init];
  if (result)
  {
    v26 = result;
    v27 = [MapsSuggestionsBlockCondition alloc];
    v28 = objc_alloc(MEMORY[0x1E696AEC0]);
    v29 = [v26 uniqueName];
    v30 = [v29 capitalizedString];
    v31 = [v28 initWithFormat:@"negated%@", v30];
    aBlock = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __outOfNamespace_negate_block_invoke;
    v51 = &unk_1E81F82A0;
    v52 = v26;
    v32 = v26;
    v33 = [(MapsSuggestionsBlockCondition *)v27 initWithName:v31 block:&aBlock];
    v34 = v52;

    v35 = v33;
    v36 = swift_beginAccess();
    MEMORY[0x1C6943260](v36);
    if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    swift_endAccess();
    v37 = objc_allocWithZone(MapsSuggestionsBlockCondition);
    v38 = sub_1C529D71C();
    v52 = sub_1C527D8D0;
    v53 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1C528864C;
    v51 = &block_descriptor_88_0;
    v39 = _Block_copy(&aBlock);
    v40 = [v37 initWithName:v38 block:v39];

    _Block_release(v39);

    swift_beginAccess();
    v41 = v40;
    MEMORY[0x1C6943260]();
    if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    swift_endAccess();
    v42 = objc_allocWithZone(MapsSuggestionsBlockCondition);
    v43 = sub_1C529D71C();
    v52 = sub_1C527D8E8;
    v53 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1C528864C;
    v51 = &block_descriptor_91_0;
    v44 = _Block_copy(&aBlock);
    v45 = [v42 initWithName:v43 block:v44];

    _Block_release(v44);

    swift_beginAccess();
    v46 = v45;
    MEMORY[0x1C6943260]();
    if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C527D958()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__conditions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_1C529DA9C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C69434E0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      if (([v5 isTrue] & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v4;
      if (v6 == v3)
      {
        goto LABEL_14;
      }
    }

    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v8 = sub_1C529D64C();
    __swift_project_value_buffer(v8, qword_1EDC51F30);
    swift_unknownObjectRetain();
    v9 = sub_1C529D62C();
    v10 = sub_1C529D87C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = [v5 description];
      v14 = sub_1C529D72C();
      v16 = v15;

      v17 = sub_1C524E7F4(v14, v16, &v18);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1C5126000, v9, v10, "%s failed. Stopping everything 🙅🏻‍♂️.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C69445C0](v12, -1, -1);
      MEMORY[0x1C69445C0](v11, -1, -1);
    }

    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
LABEL_14:

    return 1;
  }
}

void sub_1C527DC04()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler);
  v3 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler);
  *v2 = sub_1C5285EF4;
  v2[1] = v1;

  sub_1C513EDF0(v3);

  v4 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__rtManager);
  v5 = [objc_opt_self() contextOptionsForPLCs];
  if (*v2)
  {
    v6 = v5;
    v7 = v2[1];
    v9[4] = *v2;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C5285F68;
    v9[3] = &block_descriptor_95;
    v8 = _Block_copy(v9);

    [v4 startMonitoringPredictedContextWithOptions:v6 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C527DD68(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      if (sub_1C527D958())
      {
        if (qword_1EDC51978 != -1)
        {
          swift_once();
        }

        v5 = sub_1C529D64C();
        __swift_project_value_buffer(v5, qword_1EDC51F30);
        v6 = v3;
        v7 = sub_1C529D62C();
        v8 = sub_1C529D87C();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 134217984;
          *(v9 + 4) = *(v6 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__collationDelay);
          _os_log_impl(&dword_1C5126000, v7, v8, "🚨 Received a callback from Routine. Waiting for ~%f seconds to collate more callbacks", v9, 0xCu);
          MEMORY[0x1C69445C0](v9, -1, -1);
        }

        v10 = *(&v6->isa + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult);
        *(&v6->isa + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult) = a1;
        v4 = v4;

        v3 = *(&v6->isa + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker);
        [v3 kickCanBySameTime];
      }

      else
      {
        if (qword_1EDC51978 != -1)
        {
          swift_once();
        }

        v11 = sub_1C529D64C();
        __swift_project_value_buffer(v11, qword_1EDC51F30);
        v6 = sub_1C529D62C();
        v12 = sub_1C529D87C();
        if (os_log_type_enabled(v6, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1C5126000, v6, v12, "⚠️ Ignoring callback from Routine because not all conditions are met", v13, 2u);
          MEMORY[0x1C69445C0](v13, -1, -1);
        }
      }

      v3 = v4;
    }
  }
}

void sub_1C527DFF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult);
  if (v1)
  {
    v14 = v1;
    v2 = MapsSuggestionsCurrentBestLocation();
    if (v2)
    {
      v13 = v2;
      v3 = [*(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__resourceDepot) oneNetworkRequester];
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        GEOConfigGetDouble();
        v7 = v6;
        v8 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__queue);
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = v4;
        aBlock[4] = sub_1C5285C14;
        aBlock[5] = v10;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C5281E10;
        aBlock[3] = &block_descriptor_56;
        v11 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v5 loisFromPredictedContextResult:v14 usingNetworkRequester:v4 currentLocation:v13 predictionDuration:0 considerGymPredictions:0 considerSchoolPredictions:0 considerUnknownTypePredictions:v7 callbackQueue:v8 completionHandler:v11];
        _Block_release(v11);

        swift_unknownObjectRelease();
        return;
      }

      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }
}

uint64_t sub_1C527E1F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = MapsSuggestionsNow();
    v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v20;
    sub_1C529D37C();

    v22 = sub_1C529D3AC();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
    v23 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__lastPLCUpdateProcessedAt;
    swift_beginAccess();
    sub_1C525F304(v17, v19 + v23);
    swift_endAccess();
    v24 = sub_1C529D85C();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    sub_1C525F29C(a1, v17, &unk_1EC156760);
    sub_1C525F29C(a2, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EC156760);
    v25 = *(v13 + 80);
    v26 = (v25 + 32) & ~v25;
    v27 = (v14 + v25 + v26) & ~v25;
    v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = v11;
    v29 = v37;
    v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_1C5285B74(v17, v31 + v26);
    sub_1C5285B74(v35, v31 + v27);
    *(v31 + v28) = a3;
    *(v31 + v30) = v19;
    *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v32 = a3;
    v33 = v19;
    swift_unknownObjectRetain();
    sub_1C525F85C(0, 0, v36, &unk_1C52A9A68, v31);
  }

  return result;
}

uint64_t sub_1C527E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v9 = sub_1C529D42C();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v10 = sub_1C529D43C();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v11 = sub_1C529D46C();
  v8[36] = v11;
  v8[37] = *(v11 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760) - 8);
  v8[41] = v12;
  v8[42] = *(v12 + 64);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v13 = sub_1C529D3AC();
  v8[48] = v13;
  v8[49] = *(v13 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C527E7FC, 0, 0);
}

uint64_t sub_1C527E7FC()
{
  v158 = v0;
  v1 = 0x3E6C696E3CLL;
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 192);
  v5 = *(v3 + 48);
  *(v0 + 440) = v5;
  *(v0 + 448) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v4, 1, v2) == 1)
  {
    v6 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = *(v0 + 376);
    sub_1C525F29C(v4, v8, &unk_1EC156760);
    if (v5(v8, 1, v2) == 1)
    {
      v10 = *(v0 + 376);
      v9 = *(v0 + 384);
      sub_1C529D2EC();
      if (v5(v10, 1, v9) != 1)
      {
        sub_1C5259230(*(v0 + 376), &unk_1EC156760);
      }
    }

    else
    {
      (*(*(v0 + 392) + 32))(*(v0 + 432), *(v0 + 376), *(v0 + 384));
    }

    v11 = *(v0 + 432);
    v12 = *(v0 + 384);
    v13 = *(v0 + 392);
    v14 = sub_1C529D31C();
    (*(v13 + 8))(v11, v12);
    v15 = NSStringFromMapsSuggestionsEventTime(v14);

    v7 = sub_1C529D72C();
    v6 = v16;

    v2 = *(v0 + 384);
  }

  *(v0 + 456) = v6;
  v17 = *(v0 + 200);
  if (v5(v17, 1, v2) == 1)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v19 = *(v0 + 368);
    sub_1C525F29C(v17, v19, &unk_1EC156760);
    if (v5(v19, 1, v2) == 1)
    {
      v20 = *(v0 + 384);
      v21 = *(v0 + 368);
      sub_1C529D2EC();
      if (v5(v21, 1, v20) != 1)
      {
        sub_1C5259230(*(v0 + 368), &unk_1EC156760);
      }
    }

    else
    {
      (*(*(v0 + 392) + 32))(*(v0 + 424), *(v0 + 368), *(v0 + 384));
    }

    v22 = *(v0 + 424);
    v23 = *(v0 + 384);
    v24 = *(v0 + 392);
    v25 = sub_1C529D31C();
    (*(v24 + 8))(v22, v23);
    v26 = NSStringFromMapsSuggestionsEventTime(v25);

    v1 = sub_1C529D72C();
    v18 = v27;
  }

  *(v0 + 464) = v18;
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 208);
  v29 = sub_1C529D64C();
  *(v0 + 472) = __swift_project_value_buffer(v29, qword_1EDC51F30);
  v30 = v28;

  v31 = sub_1C529D62C();
  v32 = sub_1C529D87C();

  if (os_log_type_enabled(v31, v32))
  {
    v154 = *(v0 + 208);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v157 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_1C524E7F4(v7, v6, &v157);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1C524E7F4(v1, v18, &v157);
    *(v33 + 22) = 2080;
    *(v0 + 184) = v154;
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156698);
    v36 = sub_1C529D74C();
    v38 = sub_1C524E7F4(v36, v37, &v157);

    *(v33 + 24) = v38;
    _os_log_impl(&dword_1C5126000, v31, v32, "Received from Routine: entryTime:%s, exitTime:%s, nextDestination:%s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v34, -1, -1);
    MEMORY[0x1C69445C0](v33, -1, -1);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 216);
  v41 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination;
  *(v0 + 480) = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination;
  v42 = *(v40 + v41);
  *(v40 + v41) = v39;

  v43 = *(v40 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isInWindowCondition);
  *(v0 + 488) = v43;
  if (v39)
  {
    v45 = *(v0 + 216);
    v44 = *(v0 + 224);
    v46 = v30;
    GEOConfigGetDouble();
    v48 = v47;
    v49 = swift_allocObject();
    *(v0 + 496) = v49;
    *(v49 + 16) = v45;
    *(v49 + 24) = v44;
    v50 = v45;
    swift_unknownObjectRetain();
    v51 = swift_task_alloc();
    *(v0 + 504) = v51;
    *v51 = v0;
    v51[1] = sub_1C527F8A4;
    v52 = MEMORY[0x1E69E63B0];
    v53.n128_u64[0] = v48;

    return MEMORY[0x1EEE0B8D8](v0 + 176, &unk_1C52A9A80, v49, v52, v53);
  }

  v54 = v43 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *v54 = 0x3FF0000000000000;
  *(v54 + 8) = 0;
  v55 = *(v0 + 488);
  v56 = *(v0 + 360);
  v57 = *(v0 + 216);
  sub_1C525F29C(*(v0 + 192), v56, &unk_1EC156760);
  v58 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C525F304(v56, v55 + v58);
  swift_endAccess();
  v59 = *(v57 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition);
  v155 = [v59 isTrue];
  v60 = v55 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *(v0 + 520) = *v60;
  *(v0 + 600) = *(v60 + 8);
  v61 = [v59 isTrue];
  *(v0 + 601) = v61;
  if (v61)
  {
    v62 = 2;
  }

  else
  {
    v62 = 1;
  }

  v156 = v62;
  v63 = sub_1C5282990(v56, &v156);
  *(v0 + 602) = v63 & 1;
  sub_1C5259230(v56, &unk_1EC156760);
  if (v63)
  {
    sub_1C529D45C();
  }

  else
  {
    sub_1C529D44C();
  }

  v64 = sub_1C529D62C();
  v65 = sub_1C529D87C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v155;
    _os_log_impl(&dword_1C5126000, v64, v65, "Is the user likely driving? %{BOOL}d", v66, 8u);
    MEMORY[0x1C69445C0](v66, -1, -1);
  }

  v67 = *(v0 + 488);

  if ([v67 isTrue])
  {
    v68 = *(*(v0 + 216) + *(v0 + 480));
    *(v0 + 528) = v68;
    if (v68)
    {
      v69 = v68;
      v70 = MapsSuggestionsCurrentBestLocation();
      v71 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

      v72 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v71 isCurrentLocation:1];
      *(v0 + 536) = v72;

      if (v72)
      {
        v74 = [v69 location];
        v75 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

        v76 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v75 isCurrentLocation:0];
        if (v76)
        {
          v77 = [v69 mapItem];
          if (!v77)
          {
LABEL_38:
            *(v0 + 544) = v76;

            if (![v69 type])
            {
              v80 = [objc_opt_self() homeStyleAttributes];
              [v76 setStyleAttributes_];
            }

            v152 = v72;
            if ([v69 type] == 1)
            {
              v81 = [objc_opt_self() workStyleAttributes];
              [v76 setStyleAttributes_];
            }

            v150 = (*(v0 + 296) + 16);
            v151 = v76;
            v149 = *v150;
            (*v150)(*(v0 + 312), *(v0 + 320), *(v0 + 288));
            v82 = sub_1C529D62C();
            v83 = sub_1C529D87C();
            v84 = os_log_type_enabled(v82, v83);
            v85 = *(v0 + 312);
            v153 = v69;
            if (v84)
            {
              v87 = *(v0 + 296);
              v86 = *(v0 + 304);
              v88 = *(v0 + 288);
              v89 = swift_slowAlloc();
              *v89 = 67109120;
              sub_1C529D44C();
              sub_1C513A5C4(&unk_1EC156688, MEMORY[0x1E69B36F8]);
              sub_1C529D7AC();
              sub_1C529D7AC();
              v90 = *(v87 + 8);
              v90(v86, v88);
              v91 = *(v0 + 160) == *(v0 + 168);
              v90(v85, v88);
              *(v89 + 4) = v91;
              _os_log_impl(&dword_1C5126000, v82, v83, "About to call routing for DOoM routes. Cached Routes Only? %{BOOL}d", v89, 8u);
              v92 = v89;
              v69 = v153;
              MEMORY[0x1C69445C0](v92, -1, -1);
            }

            else
            {
              (*(*(v0 + 296) + 8))(v85, *(v0 + 288));
            }

            v108 = [v69 predictedStartDate];
            v109 = *(v0 + 384);
            v110 = *(v0 + 392);
            v111 = *(v0 + 352);
            if (v108)
            {
              v113 = *(v0 + 400);
              v112 = *(v0 + 408);
              v114 = v108;
              sub_1C529D37C();

              v115 = *(v110 + 32);
              v115(v111, v113, v109);
              v146 = *(v110 + 56);
              (v146)(v111, 0, 1, v109);
              v115(v112, v111, v109);
            }

            else
            {
              v116 = *(v0 + 440);
              v146 = *(v110 + 56);
              (v146)(*(v0 + 352), 1, 1, *(v0 + 384));
              sub_1C529D39C();
              if (v116(v111, 1, v109) != 1)
              {
                sub_1C5259230(*(v0 + 352), &unk_1EC156760);
              }
            }

            v117 = *(v0 + 408);
            v118 = *(v0 + 384);
            v119 = *(v0 + 392);
            v121 = *(v0 + 272);
            v120 = *(v0 + 280);
            v122 = *(v0 + 256);
            v123 = *(v0 + 264);
            sub_1C529D35C();
            v124 = *(v119 + 8);
            *(v0 + 552) = v124;
            *(v0 + 560) = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v124(v117, v118);
            sub_1C5282024(v120);
            (*(v123 + 16))(v121, v120, v122);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156680);
            v125 = swift_allocObject();
            *(v125 + 16) = xmmword_1C52A99A0;
            *(v125 + 32) = v152;
            *(v125 + 40) = v151;
            v126 = v151;
            v127 = v152;
            v128 = [v153 predictedStartDate];
            if (v128)
            {
              v129 = v128;
              sub_1C529D37C();
            }

            v130 = *(v0 + 416);
            v132 = *(v0 + 384);
            v131 = *(v0 + 392);
            v133 = *(v0 + 360);
            v148 = *(v0 + 320);
            v134 = *(v0 + 304);
            v135 = *(v0 + 288);
            v147 = *(v0 + 216);
            v146();
            (*(v131 + 16))(v133, v130, v132);
            (v146)(v133, 0, 1, v132);
            v149(v134, v148, v135);
            v136 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            *(v0 + 568) = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            v137 = *(v147 + v136);
            v138 = objc_allocWithZone(sub_1C529D48C());
            v139 = v137;
            v140 = sub_1C529D47C();
            *(v0 + 576) = v140;
            sub_1C529D41C();
            v141 = swift_task_alloc();
            *(v0 + 584) = v141;
            *v141 = v0;
            v141[1] = sub_1C5280524;
            v73 = v140;

            return MEMORY[0x1EEE1F7C0](v73);
          }

          v78 = v77;
          v73 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithMapItem_];
          if (v73)
          {
            v79 = v73;

            v76 = v79;
            goto LABEL_38;
          }

LABEL_62:
          __break(1u);
          return MEMORY[0x1EEE1F7C0](v73);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  v93 = *(v0 + 602);
  v94 = *(v0 + 360);
  v95 = *(v0 + 336);
  v96 = *(v0 + 328);
  v97 = *(v0 + 296);
  v144 = *(v0 + 288);
  v145 = *(v0 + 320);
  v99 = *(v0 + 208);
  v98 = *(v0 + 216);
  if (*(v0 + 600))
  {
    v100 = 1.0;
  }

  else
  {
    v100 = *(v0 + 520);
  }

  v143 = *&v98[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers];
  sub_1C525F29C(*(v0 + 200), v94, &unk_1EC156760);
  v101 = (*(v96 + 80) + 41) & ~*(v96 + 80);
  v102 = (v95 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  *(v103 + 16) = v98;
  *(v103 + 24) = v99;
  *(v103 + 32) = v100;
  *(v103 + 40) = v93;
  sub_1C5285B74(v94, v103 + v101);
  *(v103 + v102) = 0;
  *(v0 + 48) = sub_1C5285D8C;
  *(v0 + 56) = v103;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1C52582DC;
  *(v0 + 40) = &block_descriptor_66;
  v104 = _Block_copy((v0 + 16));
  v105 = v99;
  v106 = v98;

  [v143 callBlock_];
  _Block_release(v104);
  (*(v97 + 8))(v145, v144);

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_1C527F8A4()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1C5280D94;
  }

  else
  {
    v2 = sub_1C527F9D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C527F9D4()
{
  v106 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 488) + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = *(v0 + 488);
  v4 = *(v0 + 360);
  v5 = *(v0 + 216);
  sub_1C525F29C(*(v0 + 192), v4, &unk_1EC156760);
  v6 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C525F304(v4, v3 + v6);
  swift_endAccess();
  v7 = *(v5 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition);
  v104 = [v7 isTrue];
  v8 = v3 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *(v0 + 520) = *v8;
  *(v0 + 600) = *(v8 + 8);
  v9 = [v7 isTrue];
  *(v0 + 601) = v9;
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v105 = v10;
  v11 = sub_1C5282990(v4, &v105);
  *(v0 + 602) = v11 & 1;
  sub_1C5259230(v4, &unk_1EC156760);
  if (v11)
  {
    sub_1C529D45C();
  }

  else
  {
    sub_1C529D44C();
  }

  v12 = sub_1C529D62C();
  v13 = sub_1C529D87C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v104;
    _os_log_impl(&dword_1C5126000, v12, v13, "Is the user likely driving? %{BOOL}d", v14, 8u);
    MEMORY[0x1C69445C0](v14, -1, -1);
  }

  v15 = *(v0 + 488);

  if ([v15 isTrue])
  {
    v16 = *(*(v0 + 216) + *(v0 + 480));
    *(v0 + 528) = v16;
    if (v16)
    {
      v17 = v16;
      v18 = MapsSuggestionsCurrentBestLocation();
      v19 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

      v20 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v19 isCurrentLocation:1];
      *(v0 + 536) = v20;

      if (v20)
      {
        v22 = [v17 location];
        v23 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

        v24 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v23 isCurrentLocation:0];
        if (v24)
        {
          v25 = [v17 mapItem];
          if (!v25)
          {
LABEL_16:
            *(v0 + 544) = v24;

            if (![v17 type])
            {
              v28 = [objc_opt_self() homeStyleAttributes];
              [v24 setStyleAttributes_];
            }

            v102 = v20;
            if ([v17 type] == 1)
            {
              v29 = [objc_opt_self() workStyleAttributes];
              [v24 setStyleAttributes_];
            }

            v30 = *(*(v0 + 296) + 16);
            v30(*(v0 + 312), *(v0 + 320), *(v0 + 288));
            v31 = sub_1C529D62C();
            v32 = sub_1C529D87C();
            v33 = os_log_type_enabled(v31, v32);
            v34 = *(v0 + 312);
            v103 = v17;
            v101 = v24;
            v100 = v30;
            if (v33)
            {
              v36 = *(v0 + 296);
              v35 = *(v0 + 304);
              v37 = *(v0 + 288);
              v38 = swift_slowAlloc();
              *v38 = 67109120;
              sub_1C529D44C();
              sub_1C513A5C4(&unk_1EC156688, MEMORY[0x1E69B36F8]);
              sub_1C529D7AC();
              sub_1C529D7AC();
              v39 = *(v36 + 8);
              v39(v35, v37);
              v40 = *(v0 + 160) == *(v0 + 168);
              v39(v34, v37);
              *(v38 + 4) = v40;
              _os_log_impl(&dword_1C5126000, v31, v32, "About to call routing for DOoM routes. Cached Routes Only? %{BOOL}d", v38, 8u);
              v41 = v38;
              v17 = v103;
              MEMORY[0x1C69445C0](v41, -1, -1);
            }

            else
            {
              (*(*(v0 + 296) + 8))(v34, *(v0 + 288));
            }

            v58 = [v17 predictedStartDate];
            if (v58)
            {
              v59 = *(v0 + 400);
              v60 = *(v0 + 408);
              v61 = *(v0 + 384);
              v62 = *(v0 + 392);
              v63 = *(v0 + 352);
              v64 = v58;
              sub_1C529D37C();

              v65 = *(v62 + 32);
              v65(v63, v59, v61);
              v99 = *(v62 + 56);
              (v99)(v63, 0, 1, v61);
              v65(v60, v63, v61);
            }

            else
            {
              v66 = *(v0 + 440);
              v67 = *(v0 + 384);
              v68 = *(v0 + 352);
              v99 = *(*(v0 + 392) + 56);
              (v99)(v68, 1, 1, v67);
              sub_1C529D39C();
              if (v66(v68, 1, v67) != 1)
              {
                sub_1C5259230(*(v0 + 352), &unk_1EC156760);
              }
            }

            v69 = *(v0 + 408);
            v70 = *(v0 + 384);
            v71 = *(v0 + 392);
            v73 = *(v0 + 272);
            v72 = *(v0 + 280);
            v74 = *(v0 + 256);
            v75 = *(v0 + 264);
            sub_1C529D35C();
            v76 = *(v71 + 8);
            *(v0 + 552) = v76;
            *(v0 + 560) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v76(v69, v70);
            sub_1C5282024(v72);
            (*(v75 + 16))(v73, v72, v74);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156680);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_1C52A99A0;
            *(v77 + 32) = v102;
            *(v77 + 40) = v101;
            v78 = v101;
            v79 = v102;
            v80 = [v103 predictedStartDate];
            if (v80)
            {
              v81 = v80;
              sub_1C529D37C();
            }

            v82 = *(v0 + 416);
            v84 = *(v0 + 384);
            v83 = *(v0 + 392);
            v85 = *(v0 + 360);
            v98 = *(v0 + 320);
            v86 = *(v0 + 304);
            v87 = *(v0 + 288);
            v97 = *(v0 + 216);
            v99();
            (*(v83 + 16))(v85, v82, v84);
            (v99)(v85, 0, 1, v84);
            v100(v86, v98, v87);
            v88 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            *(v0 + 568) = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            v89 = *(v97 + v88);
            v90 = objc_allocWithZone(sub_1C529D48C());
            v91 = v89;
            v92 = sub_1C529D47C();
            *(v0 + 576) = v92;
            sub_1C529D41C();
            v93 = swift_task_alloc();
            *(v0 + 584) = v93;
            *v93 = v0;
            v93[1] = sub_1C5280524;
            v21 = v92;

            return MEMORY[0x1EEE1F7C0](v21);
          }

          v26 = v25;
          v21 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithMapItem_];
          if (v21)
          {
            v27 = v21;

            v24 = v27;
            goto LABEL_16;
          }

LABEL_40:
          __break(1u);
          return MEMORY[0x1EEE1F7C0](v21);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  v42 = *(v0 + 602);
  v43 = *(v0 + 360);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 296);
  v95 = *(v0 + 288);
  v96 = *(v0 + 320);
  v48 = *(v0 + 208);
  v47 = *(v0 + 216);
  if (*(v0 + 600))
  {
    v49 = 1.0;
  }

  else
  {
    v49 = *(v0 + 520);
  }

  v94 = *&v47[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers];
  sub_1C525F29C(*(v0 + 200), v43, &unk_1EC156760);
  v50 = (*(v45 + 80) + 41) & ~*(v45 + 80);
  v51 = (v44 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  *(v52 + 24) = v48;
  *(v52 + 32) = v49;
  *(v52 + 40) = v42;
  sub_1C5285B74(v43, v52 + v50);
  *(v52 + v51) = 0;
  *(v0 + 48) = sub_1C5285D8C;
  *(v0 + 56) = v52;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1C52582DC;
  *(v0 + 40) = &block_descriptor_66;
  v53 = _Block_copy((v0 + 16));
  v54 = v48;
  v55 = v47;

  [v94 callBlock_];
  _Block_release(v53);
  (*(v46 + 8))(v96, v95);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1C5280524(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  *(*v1 + 592) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C5280684, 0, 0);
}

uint64_t sub_1C5280684()
{
  v84 = v0;
  v1 = *(v0 + 592);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C529D62C();
    v4 = sub_1C529D87C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v83 = v6;
      *v5 = 136315138;
      v7 = v2;
      v8 = [v7 description];
      v9 = sub_1C529D72C();
      v11 = v10;

      v12 = sub_1C524E7F4(v9, v11, &v83);

      *(v5 + 4) = v12;
      _os_log_impl(&dword_1C5126000, v3, v4, "Received a commute route set: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1C69445C0](v6, -1, -1);
      MEMORY[0x1C69445C0](v5, -1, -1);
    }

    v82 = v2;
    if (*(v0 + 602) == 1)
    {
      v13 = *(v0 + 528);
      v14 = *(*(v0 + 216) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
      v15 = [v13 identifierString];
      v16 = sub_1C529D72C();
      v18 = v17;

      v19 = [v13 preferredName];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1C529D72C();
        v23 = v22;
      }

      else
      {
        v23 = 0xED00002D2D20454DLL;
        v21 = 0x414E204F4E202D2DLL;
      }

      if (*(v0 + 601))
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      v34 = sub_1C525D058(v16, v18, v21, v23);

      LOBYTE(v83) = v33;
      v35 = sub_1C525B788(&v83);

      v36 = sub_1C529D62C();
      v37 = sub_1C529D87C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 601);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v83 = v40;
        *v39 = 136315394;
        if (v35)
        {
          v41 = 0;
        }

        else
        {
          v41 = 1414483488;
        }

        if (v35)
        {
          v42 = 0xE000000000000000;
        }

        else
        {
          v42 = 0xE400000000000000;
        }

        v43 = sub_1C524E7F4(v41, v42, &v83);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        if (v38)
        {
          v44 = 0x526E45204D6F4F44;
        }

        else
        {
          v44 = 0xD000000000000013;
        }

        if (v38)
        {
          v45 = 0xEC0000006574756FLL;
        }

        else
        {
          v45 = 0x80000001C52E7B00;
        }

        v46 = sub_1C524E7F4(v44, v45, &v83);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_1C5126000, v36, v37, "Did%s spend budget on type: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69445C0](v40, -1, -1);
        MEMORY[0x1C69445C0](v39, -1, -1);
      }
    }

    v47 = *(v0 + 576);
    v48 = *(v0 + 568);
    v81 = *(v0 + 552);
    v49 = *(v0 + 544);
    v50 = *(v0 + 536);
    v51 = *(v0 + 528);
    v79 = *(v0 + 384);
    v80 = *(v0 + 416);
    v77 = *(v0 + 280);
    v53 = *(v0 + 256);
    v52 = *(v0 + 264);
    v54 = *(v0 + 216);
    v78 = sub_1C529D8AC();

    (*(v52 + 8))(v77, v53);
    v81(v80, v79);
    v55 = *(v54 + v48);
    *(v54 + v48) = v78;

    v74 = *(v0 + 592);
  }

  else
  {
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v26 = *(v0 + 536);
    v27 = *(v0 + 528);
    v28 = *(v0 + 416);
    v29 = *(v0 + 384);
    v30 = *(v0 + 280);
    v31 = *(v0 + 256);
    v32 = *(v0 + 264);

    (*(v32 + 8))(v30, v31);
    v24(v28, v29);
    v74 = 0;
  }

  v56 = *(v0 + 602);
  v57 = *(v0 + 360);
  v58 = *(v0 + 336);
  v59 = *(v0 + 328);
  v60 = *(v0 + 296);
  v75 = *(v0 + 288);
  v76 = *(v0 + 320);
  v61 = *(v0 + 208);
  v62 = *(v0 + 216);
  if (*(v0 + 600))
  {
    v63 = 1.0;
  }

  else
  {
    v63 = *(v0 + 520);
  }

  v73 = *&v62[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers];
  sub_1C525F29C(*(v0 + 200), v57, &unk_1EC156760);
  v64 = (*(v59 + 80) + 41) & ~*(v59 + 80);
  v65 = (v58 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = v56;
  sub_1C5285B74(v57, v66 + v64);
  *(v66 + v65) = v74;
  *(v0 + 48) = sub_1C5285D8C;
  *(v0 + 56) = v66;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1C52582DC;
  *(v0 + 40) = &block_descriptor_66;
  v67 = _Block_copy((v0 + 16));
  v68 = v74;
  v69 = v61;
  v70 = v62;

  [v73 callBlock_];
  _Block_release(v67);

  (*(v60 + 8))(v76, v75);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_1C5280D94()
{
  v115 = v0;
  v1 = *(v0 + 512);
  v2 = *(*(v0 + 216) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime);
  v3 = *(v0 + 488) + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *v3 = v2;
  *(v3 + 8) = 0;
  v4 = v1;
  v5 = sub_1C529D62C();
  v6 = sub_1C529D88C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 512);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C5126000, v5, v6, "Error getting travel time:%@", v9, 0xCu);
    sub_1C5259230(v10, &qword_1EC156350);
    MEMORY[0x1C69445C0](v10, -1, -1);
    MEMORY[0x1C69445C0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 488);
  v14 = *(v0 + 360);
  v15 = *(v0 + 216);
  sub_1C525F29C(*(v0 + 192), v14, &unk_1EC156760);
  v16 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C525F304(v14, v13 + v16);
  swift_endAccess();
  v17 = *(v15 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition);
  v18 = [v17 isTrue];
  v19 = v13 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  *(v0 + 520) = *v19;
  *(v0 + 600) = *(v19 + 8);
  v20 = [v17 isTrue];
  *(v0 + 601) = v20;
  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v114 = v21;
  v22 = sub_1C5282990(v14, &v114);
  *(v0 + 602) = v22 & 1;
  sub_1C5259230(v14, &unk_1EC156760);
  if (v22)
  {
    sub_1C529D45C();
  }

  else
  {
    sub_1C529D44C();
  }

  v23 = sub_1C529D62C();
  v24 = sub_1C529D87C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v18;
    _os_log_impl(&dword_1C5126000, v23, v24, "Is the user likely driving? %{BOOL}d", v25, 8u);
    MEMORY[0x1C69445C0](v25, -1, -1);
  }

  v26 = *(v0 + 488);

  if ([v26 isTrue])
  {
    v27 = *(*(v0 + 216) + *(v0 + 480));
    *(v0 + 528) = v27;
    if (v27)
    {
      v28 = v27;
      v29 = MapsSuggestionsCurrentBestLocation();
      v30 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

      v31 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v30 isCurrentLocation:1];
      *(v0 + 536) = v31;

      if (v31)
      {
        v33 = [v28 location];
        v34 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];

        v35 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v34 isCurrentLocation:0];
        if (v35)
        {
          v36 = [v28 mapItem];
          if (!v36)
          {
LABEL_19:
            *(v0 + 544) = v35;

            if (![v28 type])
            {
              v39 = [objc_opt_self() homeStyleAttributes];
              [v35 setStyleAttributes_];
            }

            v112 = v31;
            v113 = v28;
            if ([v28 type] == 1)
            {
              v40 = [objc_opt_self() workStyleAttributes];
              [v35 setStyleAttributes_];
            }

            v41 = *(*(v0 + 296) + 16);
            v41(*(v0 + 312), *(v0 + 320), *(v0 + 288));
            v42 = sub_1C529D62C();
            v43 = sub_1C529D87C();
            v44 = os_log_type_enabled(v42, v43);
            v45 = *(v0 + 312);
            v111 = v35;
            v110 = v41;
            if (v44)
            {
              v47 = *(v0 + 296);
              v46 = *(v0 + 304);
              v48 = *(v0 + 288);
              v49 = swift_slowAlloc();
              *v49 = 67109120;
              sub_1C529D44C();
              sub_1C513A5C4(&unk_1EC156688, MEMORY[0x1E69B36F8]);
              sub_1C529D7AC();
              sub_1C529D7AC();
              v50 = *(v47 + 8);
              v50(v46, v48);
              v51 = *(v0 + 160) == *(v0 + 168);
              v50(v45, v48);
              *(v49 + 4) = v51;
              _os_log_impl(&dword_1C5126000, v42, v43, "About to call routing for DOoM routes. Cached Routes Only? %{BOOL}d", v49, 8u);
              MEMORY[0x1C69445C0](v49, -1, -1);
            }

            else
            {
              (*(*(v0 + 296) + 8))(v45, *(v0 + 288));
            }

            v68 = [v113 predictedStartDate];
            if (v68)
            {
              v69 = *(v0 + 400);
              v70 = *(v0 + 408);
              v71 = *(v0 + 384);
              v72 = *(v0 + 392);
              v73 = *(v0 + 352);
              v74 = v68;
              sub_1C529D37C();

              v75 = *(v72 + 32);
              v75(v73, v69, v71);
              v109 = *(v72 + 56);
              (v109)(v73, 0, 1, v71);
              v75(v70, v73, v71);
            }

            else
            {
              v76 = *(v0 + 440);
              v77 = *(v0 + 384);
              v78 = *(v0 + 352);
              v109 = *(*(v0 + 392) + 56);
              (v109)(v78, 1, 1, v77);
              sub_1C529D39C();
              if (v76(v78, 1, v77) != 1)
              {
                sub_1C5259230(*(v0 + 352), &unk_1EC156760);
              }
            }

            v79 = *(v0 + 408);
            v80 = *(v0 + 384);
            v81 = *(v0 + 392);
            v83 = *(v0 + 272);
            v82 = *(v0 + 280);
            v84 = *(v0 + 256);
            v85 = *(v0 + 264);
            sub_1C529D35C();
            v86 = *(v81 + 8);
            *(v0 + 552) = v86;
            *(v0 + 560) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v86(v79, v80);
            sub_1C5282024(v82);
            (*(v85 + 16))(v83, v82, v84);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156680);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1C52A99A0;
            *(v87 + 32) = v112;
            *(v87 + 40) = v111;
            v88 = v111;
            v89 = v112;
            v90 = [v113 predictedStartDate];
            if (v90)
            {
              v91 = v90;
              sub_1C529D37C();
            }

            v92 = *(v0 + 416);
            v94 = *(v0 + 384);
            v93 = *(v0 + 392);
            v95 = *(v0 + 360);
            v108 = *(v0 + 320);
            v96 = *(v0 + 304);
            v97 = *(v0 + 288);
            v107 = *(v0 + 216);
            v109();
            (*(v93 + 16))(v95, v92, v94);
            (v109)(v95, 0, 1, v94);
            v110(v96, v108, v97);
            v98 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            *(v0 + 568) = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo;
            v99 = *(v107 + v98);
            v100 = objc_allocWithZone(sub_1C529D48C());
            v101 = v99;
            v102 = sub_1C529D47C();
            *(v0 + 576) = v102;
            sub_1C529D41C();
            v103 = swift_task_alloc();
            *(v0 + 584) = v103;
            *v103 = v0;
            v103[1] = sub_1C5280524;
            v32 = v102;

            return MEMORY[0x1EEE1F7C0](v32);
          }

          v37 = v36;
          v32 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithMapItem_];
          if (v32)
          {
            v38 = v32;

            v35 = v38;
            goto LABEL_19;
          }

LABEL_43:
          __break(1u);
          return MEMORY[0x1EEE1F7C0](v32);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  v52 = *(v0 + 602);
  v53 = *(v0 + 360);
  v54 = *(v0 + 336);
  v55 = *(v0 + 328);
  v56 = *(v0 + 296);
  v105 = *(v0 + 288);
  v106 = *(v0 + 320);
  v58 = *(v0 + 208);
  v57 = *(v0 + 216);
  if (*(v0 + 600))
  {
    v59 = 1.0;
  }

  else
  {
    v59 = *(v0 + 520);
  }

  v104 = *&v57[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers];
  sub_1C525F29C(*(v0 + 200), v53, &unk_1EC156760);
  v60 = (*(v55 + 80) + 41) & ~*(v55 + 80);
  v61 = (v54 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  *(v62 + 24) = v58;
  *(v62 + 32) = v59;
  *(v62 + 40) = v52;
  sub_1C5285B74(v53, v62 + v60);
  *(v62 + v61) = 0;
  *(v0 + 48) = sub_1C5285D8C;
  *(v0 + 56) = v62;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1C52582DC;
  *(v0 + 40) = &block_descriptor_66;
  v63 = _Block_copy((v0 + 16));
  v64 = v58;
  v65 = v57;

  [v104 callBlock_];
  _Block_release(v63);
  (*(v56 + 8))(v106, v105);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1C52819E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1C5281A84;

  return sub_1C528379C(a3);
}

uint64_t sub_1C5281A84(double a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5281B84, 0, 0);
}

void sub_1C5281BA8(void *a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  sub_1C52867C4(&v24 - v16);
  v18 = sub_1C529D24C();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_1C529D1EC();
    (*(v19 + 8))(v17, v18);
  }

  sub_1C525F29C(a6, v14, &unk_1EC156760);
  v21 = sub_1C529D3AC();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v14, 1, v21) != 1)
  {
    v23 = sub_1C529D31C();
    (*(v22 + 8))(v14, v21);
  }

  [a1 commuteWindowChangedWithWindow:v20 nextDestination:a4 travelTime:a5 & 1 haveBudgetForCommuteRequest:v23 exitTime:v25 routeSet:a2];
}

uint64_t sub_1C5281E10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  if (a2)
  {
    sub_1C529D37C();
    v17 = sub_1C529D3AC();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = sub_1C529D3AC();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  if (a3)
  {
    sub_1C529D37C();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1C529D3AC();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);

  v21 = a4;
  v22 = a5;
  v16(v15, v13, a4, a5);

  sub_1C5259230(v13, &unk_1EC156760);
  return sub_1C5259230(v15, &unk_1EC156760);
}

BOOL sub_1C5282024(uint64_t a1)
{
  v40 = a1;
  v2 = sub_1C529D43C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = swift_allocBox();
  v11 = v10;
  LODWORD(v10) = *MEMORY[0x1E69B36D8];
  v41 = v3;
  v14 = *(v3 + 104);
  v12 = v3 + 104;
  v13 = v14;
  v15 = v11;
  v39 = v10;
  v14();
  v16 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers);
  aBlock[4] = sub_1C5285C0C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C52582DC;
  aBlock[3] = &block_descriptor_49;
  v17 = _Block_copy(aBlock);
  v43 = v9;

  [v16 synchronouslyCallBlock_];
  _Block_release(v17);
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v42 = v13;
  v18 = sub_1C529D64C();
  __swift_project_value_buffer(v18, qword_1EDC51F30);

  v19 = sub_1C529D62C();
  v20 = sub_1C529D87C();
  v21 = os_log_type_enabled(v19, v20);
  v38 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v37 = v20;
    v23 = v22;
    *v22 = 67109376;
    v34 = v15;
    swift_beginAccess();
    v24 = v41;
    v35 = *(v41 + 16);
    v35(v8, v15, v2);
    (v42)(v6, *MEMORY[0x1E69B36E0], v2);
    sub_1C513A5C4(&unk_1EC156670, MEMORY[0x1E69B36E8]);
    v36 = v19;
    sub_1C529D7AC();
    sub_1C529D7AC();
    v25 = *(v24 + 8);
    v25(v6, v2);
    v25(v8, v2);
    v23[1] = aBlock[0] == v45;
    *(v23 + 4) = 1024;
    v15 = v34;
    v35(v8, v34, v2);
    v26 = v39;
    (v42)(v6, v39, v2);
    sub_1C529D7AC();
    sub_1C529D7AC();
    v27 = v41;
    v25(v6, v2);
    v25(v8, v2);
    *(v23 + 10) = aBlock[0] == v45;

    v28 = v36;
    _os_log_impl(&dword_1C5126000, v36, v37, "Purpose: Widget? %{BOOL}d, Require Familiar Routes? %{BOOL}d", v23, 0xEu);
    v29 = v23;
    v30 = v42;
    MEMORY[0x1C69445C0](v29, -1, -1);
  }

  else
  {

    v26 = v39;
    v27 = v41;
    v30 = v42;
  }

  swift_beginAccess();
  v31 = *(v27 + 16);
  v31(v40, v15, v2);
  v31(v8, v15, v2);
  (v30)(v6, v26, v2);
  sub_1C513A5C4(&unk_1EC156670, MEMORY[0x1E69B36E8]);
  sub_1C529D7AC();
  sub_1C529D7AC();
  v32 = *(v27 + 8);
  v32(v6, v2);
  v32(v8, v2);

  return v45 == v44;
}

id sub_1C5282598(void *a1)
{
  v2 = sub_1C529D43C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v7 = sub_1C529D64C();
  __swift_project_value_buffer(v7, qword_1EDC51F30);
  swift_unknownObjectRetain();
  v8 = sub_1C529D62C();
  v9 = sub_1C529D87C();
  if (os_log_type_enabled(v8, v9))
  {
    v19 = v6;
    v20 = v2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    v12 = [a1 uniqueName];
    result = swift_unknownObjectRelease();
    if (!v12)
    {
      __break(1u);
      return result;
    }

    v14 = sub_1C529D72C();
    v16 = v15;

    v17 = sub_1C524E7F4(v14, v16, v21);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1C5126000, v8, v9, "Checking observer:%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C69445C0](v11, -1, -1);
    MEMORY[0x1C69445C0](v10, -1, -1);

    v6 = v19;
    v2 = v20;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [a1 isWidget];
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B36E0], v2);
    swift_beginAccess();
    return (*(v3 + 40))(v6, v5, v2);
  }

  return result;
}

uint64_t sub_1C528283C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
  v4 = [a1 identifierString];
  v5 = sub_1C529D72C();
  v7 = v6;

  v8 = [a1 preferredName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C529D72C();
    v12 = v11;
  }

  else
  {
    v12 = 0xED00002D2D20454DLL;
    v10 = 0x414E204F4E202D2DLL;
  }

  v13 = sub_1C525D058(v5, v7, v10, v12);

  return v13;
}

uint64_t sub_1C5282990(char *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = v68 - v7;
  v8 = sub_1C529D3AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v68 - v12;
  v14 = type metadata accessor for ErrorWithDate(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156640);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v68 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination);
  if (v23)
  {
    v71 = v16;
    LODWORD(v76) = *a2;
    v24 = qword_1EDC51978;
    v77 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v74 = v8;
    v75 = v9;
    v25 = sub_1C529D64C();
    v68[1] = __swift_project_value_buffer(v25, qword_1EDC51F30);
    v26 = sub_1C529D62C();
    v27 = sub_1C529D87C();
    v28 = os_log_type_enabled(v26, v27);
    v69 = v13;
    if (v28)
    {
      v70 = a1;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v78 = v30;
      *v29 = 136315138;
      v31 = 0x80000001C52E7B00;
      v32 = 0xD000000000000013;
      if (v76 != 1)
      {
        v32 = 0x526E45204D6F4F44;
        v31 = 0xEC0000006574756FLL;
      }

      if (v76)
      {
        v33 = v32;
      }

      else
      {
        v33 = 4281413;
      }

      if (v76)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      v35 = sub_1C524E7F4(v33, v34, &v78);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1C5126000, v26, v27, "Checking budget for %s request", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1C69445C0](v30, -1, -1);
      MEMORY[0x1C69445C0](v29, -1, -1);

      a1 = v70;
    }

    else
    {
    }

    v36 = *(v3 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
    v37 = v77;
    v38 = [v77 identifierString];
    v39 = sub_1C529D72C();
    v41 = v40;

    v42 = [v37 preferredName];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1C529D72C();
      v46 = v45;
    }

    else
    {
      v46 = 0xED00002D2D20454DLL;
      v44 = 0x414E204F4E202D2DLL;
    }

    v47 = sub_1C525D058(v39, v41, v44, v46);

    LOBYTE(v78) = v76;
    sub_1C525B088(&v78, v22);

    sub_1C525F29C(v22, v20, &unk_1EC156640);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C5259230(v22, &unk_1EC156640);

      (*(v75 + 56))(a1, 1, 1, v74);
      sub_1C5259230(v20, &unk_1EC156640);
      return 1;
    }

    v48 = v71;
    sub_1C52856B4(v20, v71);
    v49 = v73;
    sub_1C525F29C(v48, v73, &unk_1EC156760);
    v8 = v74;
    v9 = v75;
    if ((*(v75 + 48))(v49, 1, v74) != 1)
    {
      v70 = a1;
      v51 = *(v9 + 32);
      v52 = v69;
      v51(v69, v49, v8);
      v53 = v72;
      (*(v9 + 16))(v72, v52, v8);
      v54 = sub_1C529D62C();
      v55 = sub_1C529D87C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v76 = v51;
        v57 = v53;
        v58 = v56;
        v59 = swift_slowAlloc();
        v78 = v59;
        *v58 = 136315138;
        v60 = sub_1C529D31C();
        v61 = NSStringFromMapsSuggestionsEventTime(v60);

        v62 = sub_1C529D72C();
        v64 = v63;

        v8 = v74;
        v65 = v57;
        v51 = v76;
        (*(v75 + 8))(v65, v74);
        v66 = sub_1C524E7F4(v62, v64, &v78);
        v9 = v75;

        *(v58 + 4) = v66;
        _os_log_impl(&dword_1C5126000, v54, v55, "Don't have budget. Can only request again at %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1C69445C0](v59, -1, -1);
        MEMORY[0x1C69445C0](v58, -1, -1);
      }

      else
      {

        (*(v9 + 8))(v53, v8);
      }

      sub_1C5285718(v71);
      sub_1C5259230(v22, &unk_1EC156640);
      v67 = v70;
      v51(v70, v69, v8);
      (*(v9 + 56))(v67, 0, 1, v8);
      return 0;
    }

    sub_1C5285718(v48);
    sub_1C5259230(v22, &unk_1EC156640);
    sub_1C5259230(v49, &unk_1EC156760);
  }

  (*(v9 + 56))(a1, 1, 1, v8);
  return 0;
}

uint64_t sub_1C5283144(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156668);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_1C52832E4(a3, sub_1C5285AE8, v10);
}

uint64_t sub_1C5283294(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156668);
  return sub_1C529D83C();
}

void sub_1C52832E4(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = sub_1C529D3AC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MapsSuggestionsCurrentBestLocation();
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination;
    v20 = *(v3 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination);
    if (v20)
    {
      v32 = a2;
      v33 = v18;
      v21 = [v20 location];
      if (v21)
      {
        v22 = v21;
        v23 = *(v3 + v19);
        if (!v23)
        {

          (*(v14 + 56))(v12, 1, 1, v13);
LABEL_17:
          sub_1C5259230(v12, &unk_1EC156760);
          return;
        }

        v24 = [v23 predictedStartDate];
        if (v24)
        {
          v25 = v24;
          sub_1C529D37C();

          (*(v14 + 56))(v10, 0, 1, v13);
        }

        else
        {
          (*(v14 + 56))(v10, 1, 1, v13);
        }

        sub_1C5285B74(v10, v12);
        if ((*(v14 + 48))(v12, 1, v13) == 1)
        {

          goto LABEL_17;
        }

        (*(v14 + 32))(v16, v12, v13);
        v27 = sub_1C529D31C();
        v28 = swift_allocObject();
        v29 = v32;
        *(v28 + 16) = v32;
        *(v28 + 24) = a3;
        aBlock[4] = sub_1C5285BE4;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C5285F68;
        aBlock[3] = &block_descriptor_46;
        v30 = _Block_copy(aBlock);

        v31 = [a1 drivingETAFromLocation:v33 toLocation:v22 arrivalDate:v27 automobileOptions:0 completion:v30];
        _Block_release(v30);

        if (v31)
        {
          (*(v14 + 8))(v16, v13);
        }

        else
        {
          v29(0, 0);

          (*(v14 + 8))(v16, v13);
        }
      }

      else
      {
        v26 = v33;
      }
    }

    else
    {
    }
  }
}

void sub_1C5283710(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C528379C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5283838, 0, 0);
}

uint64_t sub_1C5283838()
{
  v66 = v0;
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination;
  v3 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 identifierString];
  v5 = sub_1C529D72C();
  v7 = v6;

  v8 = *(v1 + v2);
  *(v0 + 48) = v8;
  if (!v8)
  {

LABEL_6:
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v20 = sub_1C529D64C();
    __swift_project_value_buffer(v20, qword_1EDC51F30);
    v21 = sub_1C529D62C();
    v22 = sub_1C529D88C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C5126000, v21, v22, "This should never happen. _doomDestination is nil. Or its identifier is.", v23, 2u);
      MEMORY[0x1C69445C0](v23, -1, -1);
    }

    v24 = 1.0;
    goto LABEL_11;
  }

  v9 = *(*(v0 + 32) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
  v10 = v8;
  v11 = [v10 identifierString];
  v12 = sub_1C529D72C();
  v14 = v13;

  v15 = [v10 preferredName];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C529D72C();
    v19 = v18;
  }

  else
  {
    v19 = 0xED00002D2D20454DLL;
    v17 = 0x414E204F4E202D2DLL;
  }

  v28 = sub_1C525D058(v12, v14, v17, v19);
  *(v0 + 56) = v28;

  if (*&v28[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier] == v5 && *&v28[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier + 8] == v7)
  {
  }

  else
  {
    v30 = sub_1C529DB5C();

    if ((v30 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v31 = sub_1C525AE74();
  if ((v32 & 1) == 0)
  {
    v38 = v31;
    v24 = *&v31;
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v39 = sub_1C529D64C();
    __swift_project_value_buffer(v39, qword_1EDC51F30);
    v40 = sub_1C529D62C();
    v41 = sub_1C529D87C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C52A91B0;
      v45 = MEMORY[0x1E69E63B0];
      v46 = MEMORY[0x1E69E6438];
      *(v44 + 56) = MEMORY[0x1E69E63B0];
      *(v44 + 64) = v46;
      *(v44 + 32) = v24 / 60.0;
      *(v44 + 96) = v45;
      *(v44 + 104) = v46;
      *(v44 + 72) = v24 / 3600.0;
      *(v44 + 136) = v45;
      *(v44 + 144) = v46;
      *(v44 + 112) = v38;
      v47 = sub_1C529D73C();
      v49 = sub_1C524E7F4(v47, v48, &v65);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_1C5126000, v40, v41, "Using cached travel time:%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1C69445C0](v43, -1, -1);
      MEMORY[0x1C69445C0](v42, -1, -1);
    }

    goto LABEL_11;
  }

LABEL_23:
  v33 = *(v0 + 40);
  LOBYTE(v65) = 0;
  v34 = sub_1C5282990(v33, &v65);
  sub_1C5259230(v33, &unk_1EC156760);
  if (v34)
  {
    v35 = swift_task_alloc();
    *(v0 + 64) = v35;
    v35[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v36 = swift_task_alloc();
    *(v0 + 72) = v36;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156660);
    *v36 = v0;
    v36[1] = sub_1C5283F88;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001C52E92C0, sub_1C5285AE0, v35, v37);
  }

  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 32);
  v51 = sub_1C529D64C();
  __swift_project_value_buffer(v51, qword_1EDC51F30);
  v52 = v50;
  v53 = sub_1C529D62C();
  v54 = sub_1C529D87C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 32);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65 = v57;
    *v56 = 136315138;
    v58 = *(v55 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1C52A91B0;
    v60 = MEMORY[0x1E69E63B0];
    v61 = MEMORY[0x1E69E6438];
    *(v59 + 56) = MEMORY[0x1E69E63B0];
    *(v59 + 64) = v61;
    *(v59 + 32) = v58 / 60.0;
    *(v59 + 96) = v60;
    *(v59 + 104) = v61;
    *(v59 + 72) = v58 / 3600.0;
    *(v59 + 136) = v60;
    *(v59 + 144) = v61;
    *(v59 + 112) = v58;
    v62 = sub_1C529D73C();
    v64 = sub_1C524E7F4(v62, v63, &v65);

    *(v56 + 4) = v64;
    _os_log_impl(&dword_1C5126000, v53, v54, "Returning. Don't have budget for ETA requests. Returning default travel time of %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1C69445C0](v57, -1, -1);
    MEMORY[0x1C69445C0](v56, -1, -1);
  }

  v24 = *(*(v0 + 32) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime);
LABEL_11:

  v25 = *(v0 + 8);
  v26.n128_f64[0] = v24;

  return v25(v26);
}

uint64_t sub_1C5283F88()
{

  return MEMORY[0x1EEE6DFA0](sub_1C52840A0, 0, 0);
}

uint64_t sub_1C52840A0()
{
  v48 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    [*(v0 + 16) seconds];
    v3 = v2;

    LOBYTE(v47) = 0;
    v4 = sub_1C525B788(&v47);
    sub_1C525AB88(v3);
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v5 = sub_1C529D64C();
    __swift_project_value_buffer(v5, qword_1EDC51F30);
    v6 = sub_1C529D62C();
    v7 = sub_1C529D87C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v47 = v9;
      *v8 = 136315394;
      if (v4)
      {
        v10 = 0;
      }

      else
      {
        v10 = 1414483488;
      }

      if (v4)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = sub_1C524E7F4(v10, v11, &v47);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1C524E7F4(4281413, 0xE300000000000000, &v47);
      _os_log_impl(&dword_1C5126000, v6, v7, "Did%s spend budget on type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v9, -1, -1);
      MEMORY[0x1C69445C0](v8, -1, -1);
    }

    v13 = sub_1C529D62C();
    v14 = sub_1C529D87C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C52A91B0;
      v21 = MEMORY[0x1E69E63B0];
      v22 = MEMORY[0x1E69E6438];
      *(v20 + 56) = MEMORY[0x1E69E63B0];
      *(v20 + 64) = v22;
      *(v20 + 32) = v3 / 60.0;
      *(v20 + 96) = v21;
      *(v20 + 104) = v22;
      *(v20 + 72) = v3 / 3600.0;
      *(v20 + 136) = v21;
      *(v20 + 144) = v22;
      *(v20 + 112) = v3;
      v23 = sub_1C529D73C();
      v25 = sub_1C524E7F4(v23, v24, &v47);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_1C5126000, v13, v14, "Got travel time by making an arrive-by routing request: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1C69445C0](v19, -1, -1);
      MEMORY[0x1C69445C0](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 32);
    v27 = sub_1C529D64C();
    __swift_project_value_buffer(v27, qword_1EDC51F30);
    v28 = v26;
    v29 = sub_1C529D62C();
    v30 = sub_1C529D87C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    if (v31)
    {
      v34 = *(v0 + 32);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      v37 = *(v34 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1C52A91B0;
      v39 = MEMORY[0x1E69E63B0];
      v40 = MEMORY[0x1E69E6438];
      *(v38 + 56) = MEMORY[0x1E69E63B0];
      *(v38 + 64) = v40;
      *(v38 + 32) = v37 / 60.0;
      *(v38 + 96) = v39;
      *(v38 + 104) = v40;
      *(v38 + 72) = v37 / 3600.0;
      *(v38 + 136) = v39;
      *(v38 + 144) = v40;
      *(v38 + 112) = v37;
      v41 = sub_1C529D73C();
      v43 = sub_1C524E7F4(v41, v42, &v47);

      *(v35 + 4) = v43;
      _os_log_impl(&dword_1C5126000, v29, v30, "Arrive-by request failed. Returning default travel time: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1C69445C0](v36, -1, -1);
      MEMORY[0x1C69445C0](v35, -1, -1);
    }

    v3 = *(*(v0 + 32) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__defaultTravelTime);
  }

  v44 = *(v0 + 8);
  v45.n128_f64[0] = v3;

  return v44(v45);
}

void sub_1C52845E0()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition) isTrue];
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination);
  if (v4)
  {
    v5 = qword_1EDC51978;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1C529D64C();
    __swift_project_value_buffer(v7, qword_1EDC51F30);
    v8 = sub_1C529D62C();
    v9 = sub_1C529D87C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136315138;
      if (v2)
      {
        v12 = 0x526E45204D6F4F44;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (v2)
      {
        v13 = 0xEC0000006574756FLL;
      }

      else
      {
        v13 = 0x80000001C52E7B00;
      }

      v14 = sub_1C524E7F4(v12, v13, &v44);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C5126000, v8, v9, "Trying to spending budget from the Widget for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1C69445C0](v11, -1, -1);
      MEMORY[0x1C69445C0](v10, -1, -1);
    }

    v15 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
    v16 = [v6 identifierString];
    v17 = sub_1C529D72C();
    v19 = v18;

    v20 = [v6 preferredName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1C529D72C();
      v24 = v23;
    }

    else
    {
      v24 = 0xED00002D2D20454DLL;
      v22 = 0x414E204F4E202D2DLL;
    }

    v32 = sub_1C525D058(v17, v19, v22, v24);

    LOBYTE(v44) = v3;
    v33 = sub_1C525B788(&v44);

    oslog = sub_1C529D62C();
    v34 = sub_1C529D87C();
    if (os_log_type_enabled(oslog, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315394;
      if (v33)
      {
        v37 = 0;
      }

      else
      {
        v37 = 1414483488;
      }

      if (v33)
      {
        v38 = 0xE000000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      v39 = sub_1C524E7F4(v37, v38, &v44);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      if (v2)
      {
        v40 = 0x526E45204D6F4F44;
      }

      else
      {
        v40 = 0xD000000000000013;
      }

      if (v2)
      {
        v41 = 0xEC0000006574756FLL;
      }

      else
      {
        v41 = 0x80000001C52E7B00;
      }

      v42 = sub_1C524E7F4(v40, v41, &v44);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_1C5126000, oslog, v34, "Did%s spend budget on type: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v36, -1, -1);
      MEMORY[0x1C69445C0](v35, -1, -1);

      goto LABEL_42;
    }
  }

  else
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v25 = sub_1C529D64C();
    __swift_project_value_buffer(v25, qword_1EDC51F30);
    oslog = sub_1C529D62C();
    v26 = sub_1C529D88C();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      if (v2)
      {
        v29 = 0x526E45204D6F4F44;
      }

      else
      {
        v29 = 0xD000000000000013;
      }

      if (v2)
      {
        v30 = 0xEC0000006574756FLL;
      }

      else
      {
        v30 = 0x80000001C52E7B00;
      }

      v31 = sub_1C524E7F4(v29, v30, &v44);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1C5126000, oslog, v26, "Trying to spend budget from the Widget for %s but we don't have a destination", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1C69445C0](v28, -1, -1);
      MEMORY[0x1C69445C0](v27, -1, -1);
      goto LABEL_42;
    }
  }

LABEL_42:
}

void sub_1C5284BAC()
{
  if (sub_1C527D958())
  {
    v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__rtManager);
    v2 = [objc_opt_self() contextOptionsForPLCs];
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C5285774;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5285F68;
    aBlock[3] = &block_descriptor_7_1;
    v4 = _Block_copy(aBlock);

    [v1 fetchPredictedContextWithOptions:v2 completionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v5 = sub_1C529D64C();
    __swift_project_value_buffer(v5, qword_1EDC51F30);
    oslog = sub_1C529D62C();
    v6 = sub_1C529D87C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5126000, oslog, v6, "⚠️ Ignoring a call to check for current predictions because not all conditions are met", v7, 2u);
      MEMORY[0x1C69445C0](v7, -1, -1);
    }
  }
}

void sub_1C5284D9C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = qword_1EDC51978;
      v5 = a1;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_1C529D64C();
      __swift_project_value_buffer(v6, qword_1EDC51F30);
      v7 = sub_1C529D62C();
      v8 = sub_1C529D87C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1C5126000, v7, v8, "🚨 Received a checkForCurrentPredictions() call. Running immediately.", v9, 2u);
        MEMORY[0x1C69445C0](v9, -1, -1);
      }

      v10 = *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult];
      *&v3[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult] = a1;
      v11 = v5;

      sub_1C527DFF4();
      goto LABEL_13;
    }
  }

  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v12 = sub_1C529D64C();
  __swift_project_value_buffer(v12, qword_1EDC51F30);
  v13 = a1;

  v11 = sub_1C529D62C();
  v14 = sub_1C529D87C();

  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    *(v15 + 4) = v17;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v13;
    *v16 = v17;
    v16[1] = a1;
    v18 = v13;
    _os_log_impl(&dword_1C5126000, v11, v14, "Either self is down or there is no result: %@, %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156350);
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v16, -1, -1);
    MEMORY[0x1C69445C0](v15, -1, -1);
  }

LABEL_13:
}

id MapsSuggestionsDOoMEngine.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__rtManager];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5285168;
  aBlock[3] = &block_descriptor_10;
  v2 = _Block_copy(aBlock);
  v3 = v1;
  [v3 stopMonitoringPredictedContextWithHandler_];
  _Block_release(v2);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MapsSuggestionsDOoMEngine();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1C5285168(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id MapsSuggestionsDOoMEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C5285484(void *a1, uint64_t a2, uint64_t a3, char *a4, const char **a5)
{
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v9 = sub_1C529D64C();
  __swift_project_value_buffer(v9, qword_1EDC51F30);
  swift_unknownObjectRetain();
  v10 = sub_1C529D62C();
  v11 = sub_1C529D87C();
  if (os_log_type_enabled(v10, v11))
  {
    format = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = [a1 uniqueName];
    result = swift_unknownObjectRelease();
    if (!v14)
    {
      __break(1u);
      return result;
    }

    v16 = sub_1C529D72C();
    v18 = v17;

    v19 = sub_1C524E7F4(v16, v18, &v23);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1C5126000, v10, v11, format, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69445C0](v13, -1, -1);
    MEMORY[0x1C69445C0](v12, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v20 = *(a2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers);
  v21 = *a5;

  return [v20 v21];
}

uint64_t type metadata accessor for MapsSuggestionsDOoMEngine()
{
  result = qword_1EC156650;
  if (!qword_1EC156650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C52856B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorWithDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5285718(uint64_t a1)
{
  v2 = type metadata accessor for ErrorWithDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5285784()
{
  sub_1C525EB90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C5285AE8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156668);

  return sub_1C5283294(a1);
}

uint64_t sub_1C5285B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5285C1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1C524F4A4;

  return sub_1C527E530(a1, v12, v13, v1 + v7, v1 + v9, v14, v15, v16);
}

void sub_1C5285D8C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760) - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C5281BA8(a1, v7, v5, v6, v8, v1 + v4, v9);
}

uint64_t sub_1C5285E40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C524F4A4;

  return sub_1C52819E4(a1, v5, v4);
}

id MapsSuggestionsIsInWindowCondition.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C529D71C();

  v3 = [v1 initWithName_];

  return v3;
}

uint64_t sub_1C5286118@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  return sub_1C52591C0(v1 + v3, a1);
}

uint64_t sub_1C52862B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C525F304(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C5286310(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C52591C0(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C525F304(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1C5286430()
{
  v1 = v0 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C528647C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C528653C()
{
  v0 = sub_1C529D3AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1C529D24C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isCommuteWindowDefaultOverridden())
  {
    v11 = 1;
  }

  else
  {
    sub_1C52867C4(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1C5259230(v6, &qword_1EC1566A0);
      v11 = 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v12 = MapsSuggestionsNow();
      sub_1C529D37C();

      v11 = sub_1C529D23C();
      (*(v1 + 8))(v3, v0);
      (*(v8 + 8))(v10, v7);
    }
  }

  return v11 & 1;
}

uint64_t sub_1C52867C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  v6 = sub_1C529D3AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C52591C0(v1 + v14, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C5259230(v5, &unk_1EC156760);
    v15 = 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    swift_beginAccess();
    v16 = *(v7 + 16);
    v16(v10, v13, v6);
    sub_1C529D2DC();
    v16(v10, v13, v6);
    sub_1C529D21C();
    (*(v7 + 8))(v13, v6);
    v15 = 0;
  }

  v17 = sub_1C529D24C();
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

id MapsSuggestionsIsInWindowCondition.init(name:)()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_before;
  GEOConfigGetDouble();
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_defaultTravelTime;
  GEOConfigGetDouble();
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  v6 = sub_1C529D3AC();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = &v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime];
  *v7 = 0;
  v7[8] = 1;
  v8 = sub_1C529D71C();

  v11.receiver = v0;
  v11.super_class = type metadata accessor for MapsSuggestionsIsInWindowCondition();
  v9 = objc_msgSendSuper2(&v11, sel_initWithName_, v8);

  return v9;
}

uint64_t type metadata accessor for MapsSuggestionsIsInWindowCondition()
{
  result = qword_1EDC519E0;
  if (!qword_1EDC519E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MapsSuggestionsIsInWindowCondition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsIsInWindowCondition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5286EDC()
{
  sub_1C525EB90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C5287180()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C52871E0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsFinanceSource__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C5269D28;
}

id sub_1C5287278(uint64_t a1, void *a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v4 = sub_1C529D8EC();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  swift_unknownObjectWeakInit();
  v9 = &v2[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsFinanceSource__updateCompleteHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v20 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsFinanceSource_queue;
  v10 = sub_1C5143DC8(0, &qword_1EDC51AF0);
  v19[0] = "_updateCompleteHandler";
  v19[1] = v10;
  sub_1C529D68C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C513906C(&qword_1EDC51B00, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5139198(&qword_1EDC51B10, &unk_1EC1562F0);
  sub_1C529D9CC();
  (*(v21 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  v11 = v23;
  *&v2[v20] = sub_1C529D92C();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = v24;
  *&v3[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsFinanceSource__financeKit] = v24;
  v13 = type metadata accessor for MapsSuggestionsFinanceSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = v12;
  v16 = [ObjCClassFromMetadata description];
  if (!v16)
  {
    sub_1C529D72C();
    v16 = sub_1C529D71C();
  }

  v25.receiver = v3;
  v25.super_class = v13;
  v17 = objc_msgSendSuper2(&v25, sel_initWithDelegate_name_, v11, v16);

  swift_unknownObjectRelease();
  return v17;
}

id MapsSuggestionsFinanceSource.init(from:name:)(void *a1)
{
  result = [a1 oneSourceDelegate];
  if (result)
  {
    v3 = result;
    result = [a1 oneFinanceKit];
    if (result)
    {
      v4 = result;

      v5 = objc_allocWithZone(type metadata accessor for MapsSuggestionsFinanceSource());
      v6 = sub_1C5287278(v3, v4);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C5287780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsFinanceSource__financeKit);
    sub_1C5289308();
  }
}

id MapsSuggestionsFinanceSource.__allocating_init(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initFromResourceDepot_];
  swift_unknownObjectRelease();
  return v2;
}

id MapsSuggestionsFinanceSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C52879CC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_1C529D71C();

  v9 = [v7 *a4];
  swift_unknownObjectRelease();

  return v9;
}

id MapsSuggestionsFinanceSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsFinanceSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5287B58()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51F60);
  __swift_project_value_buffer(v0, qword_1EDC51F60);
  return sub_1C529D63C();
}

char *MapsSuggestionsIsDrivingCondition.init(name:bluetooth:carPlay:coreMotion:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  v9 = a1;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionContextProvider] = 0;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext] = 0;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionCondition] = 0;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__compositeCondition] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    aBlock = a1;
    v53 = a2;

    MEMORY[0x1C6943220](0xD000000000000013, 0x80000001C52E96B0);
    v11 = objc_allocWithZone(type metadata accessor for MapsSuggestionsBluetoothCondition());
    v12 = sub_1C529D71C();

    [v11 &selRef:v12 initWithLOI:?];

    MEMORY[0x1C6943260]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    v10 = v60;
    v9 = a1;
  }

  if (a4)
  {
    aBlock = v9;
    v53 = a2;

    MEMORY[0x1C6943220](0xD000000000000011, 0x80000001C52E9690);
    v13 = objc_allocWithZone(MapsSuggestionsCarplayDisconnectedCondition);
    v14 = sub_1C529D71C();

    v15 = [v13 initWithName_];

    v16 = v15;
    v17 = [MapsSuggestionsBlockCondition alloc];
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [v16 uniqueName];
    v20 = [v19 capitalizedString];
    v21 = [v18 initWithFormat:@"negated%@", v20];
    aBlock = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = __outOfNamespace_negate_block_invoke_0;
    v55 = &unk_1E81F82A0;
    v56 = v16;
    v22 = v16;
    v23 = [(MapsSuggestionsBlockCondition *)v17 initWithName:v21 block:&aBlock];
    v24 = v56;

    v25 = v23;
    MEMORY[0x1C6943260]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C529D7FC();
    }

    sub_1C529D81C();
    v10 = v60;
  }

  v26 = sub_1C529D71C();
  IsDrivingCondition = type metadata accessor for MapsSuggestionsIsDrivingCondition();
  v59.receiver = v6;
  v59.super_class = IsDrivingCondition;
  v28 = objc_msgSendSuper2(&v59, sel_initWithName_, v26);

  if (a5)
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69B3728]) init];
    v30 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionContextProvider;
    v31 = *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionContextProvider];
    *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionContextProvider] = v29;

    v32 = [objc_allocWithZone(MEMORY[0x1E69A2258]) init];
    v33 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext;
    v34 = *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext];
    *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext] = v32;

    v35 = *&v28[v33];
    if (v35)
    {
      [v35 startMotionUpdatesWithProvider_];
    }

    aBlock = v9;
    v53 = a2;

    MEMORY[0x1C6943220](0xD000000000000014, 0x80000001C52E9670);

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = objc_allocWithZone(MapsSuggestionsBlockCondition);

    v38 = sub_1C529D71C();

    v56 = sub_1C5288644;
    v57 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1C528864C;
    v55 = &block_descriptor_9;
    v39 = _Block_copy(&aBlock);
    v40 = [v37 initWithName:v38 block:v39];

    _Block_release(v39);

    v41 = *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionCondition];
    *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__motionCondition] = v40;
    v42 = v40;

    if (v42)
    {
      v43 = v42;
      MEMORY[0x1C6943260]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C529D7FC();
      }

      sub_1C529D81C();

      v10 = v60;
    }
  }

  else
  {
  }

  v44 = type metadata accessor for MapsSuggestionsCompositeOrCondition();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions] = v10;
  v46 = sub_1C529D71C();
  v58.receiver = v45;
  v58.super_class = v44;
  v47 = objc_msgSendSuper2(&v58, sel_initWithName_, v46);

  v48 = *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__compositeCondition];
  *&v28[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__compositeCondition] = v47;

  return v28;
}

uint64_t sub_1C5288354()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext);
    v2 = result;
    v3 = v1;

    if (v1)
    {
      v4 = [v3 isDriving];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id MapsSuggestionsIsDrivingCondition.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext;
  v2 = *&v0[OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__geoMotionContext];
  if (v2 && ([v2 stopMotionUpdates], (v3 = *&v0[v1]) != 0))
  {
    [v3 setDelegate_];
    v4 = *&v0[v1];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v1] = 0;

  v6.receiver = v0;
  v6.super_class = type metadata accessor for MapsSuggestionsIsDrivingCondition();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id MapsSuggestionsIsDrivingCondition.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C529D71C();

  v3 = [v1 initWithName_];

  return v3;
}

uint64_t sub_1C528864C(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id MapsSuggestionsFinanceKit.__allocating_init(fromResourceDepot:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  result = [a1 oneFinanceKitConnector];
  if (result)
  {
    v5 = result;
    result = [a1 oneNetworkRequester];
    if (result)
    {
      v6 = [v3 initWithConnector:v5 requester:result];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MapsSuggestionsFinanceKit.init(fromResourceDepot:)(void *a1)
{
  result = [a1 oneFinanceKitConnector];
  if (result)
  {
    v4 = result;
    result = [a1 oneNetworkRequester];
    if (result)
    {
      v5 = [v1 initWithConnector:v4 requester:result];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MapsSuggestionsFinanceKit.init(connector:requester:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_1C529D8EC();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v16 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = &v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName];
  v15 = type metadata accessor for MapsSuggestionsFinanceKit();
  v8 = [swift_getObjCClassFromMetadata() description];
  v9 = sub_1C529D72C();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__observer] = 0;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C513A534(&qword_1EDC51B00, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5139198(&qword_1EDC51B10, &unk_1EC1562F0);
  sub_1C529D9CC();
  (*(v17 + 104))(v16, *MEMORY[0x1E69E8090], v18);
  *&v2[v14] = sub_1C529D92C();
  v12 = v20;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__connector] = v19;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__requester] = v12;
  *&v2[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__timeWindow] = 0;
  v21.receiver = v2;
  v21.super_class = v15;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_1C5288D38()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C5288DFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C5288E5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void sub_1C5288F40(void *a1, uint64_t a2, NSObject *a3, id a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1EDC519A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1C529D64C();
    __swift_project_value_buffer(v6, qword_1EDC51F90);
    v7 = sub_1C529D62C();
    v8 = sub_1C529D88C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C5126000, v7, v8, "Failed to get MapItem!", v9, 2u);
      MEMORY[0x1C69445C0](v9, -1, -1);
    }

LABEL_8:
    dispatch_group_leave(a3);
    return;
  }

  [a4 setGeoMapItem_];
  v13 = [a4 geoMapItem];
  if (!v13 || (v14 = v13, v15 = [v13 name], v14, !v15))
  {
    v15 = 0;
  }

  [a4 setUndecoratedSubtitle_];

  v16 = MapsSuggestionsCurrentBestLocation();
  if (v16)
  {
    if (a1)
    {
      [a1 coordinate];
      v18 = v17;
      [a1 coordinate];
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
      v18 = 0.0;
    }

    v22 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v18 longitude:v20];
    [v16 distanceFromLocation_];
    v21 = v23;
  }

  else
  {
    v21 = 0.0;
  }

  GEOConfigGetDouble();
  if (v16)
  {
    [a4 setBoolean:v21 < v24 forKey:@"MapsSuggestionsAlreadyThereKey"];
    GEOConfigGetDouble();
    if (v21 < v25)
    {
      swift_beginAccess();
      v26 = a4;
      MEMORY[0x1C6943260]();
      if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C529D7FC();
      }

      sub_1C529D81C();
      swift_endAccess();
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C5289308()
{
  v1 = sub_1C529D66C();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C529D69C();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5289938;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_7_2;
  v8 = _Block_copy(aBlock);

  sub_1C529D68C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
  sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
  sub_1C529D9CC();
  MEMORY[0x1C69433C0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1C52895E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDC519A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C529D64C();
    __swift_project_value_buffer(v2, qword_1EDC51F90);
    v3 = sub_1C529D62C();
    v4 = sub_1C529D87C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5126000, v3, v4, "Tearing down FinanceKit observer", v5, 2u);
      MEMORY[0x1C69445C0](v5, -1, -1);
    }

    *&v1[OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__observer] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

id MapsSuggestionsFinanceKit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsFinanceKit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsFinanceKit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C52898BC()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51F90);
  __swift_project_value_buffer(v0, qword_1EDC51F90);
  return sub_1C529D63C();
}

uint64_t sub_1C5289940(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C529D66C();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C529D69C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit__queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a5;
  *(v16 + 40) = a3;
  aBlock[4] = sub_1C51410F0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_67;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1C529D68C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
  sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
  sub_1C529D9CC();
  MEMORY[0x1C69433C0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

id MapsSuggestionsOrderPickup.__allocating_init(pickupId:orderId:orderType:pickupAddress:pickupLocation:pickupStartDate:pickupEndDate:merchantDisplayName:pickupLocationDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = objc_allocWithZone(v14);
  v22 = &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderIdentifier];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderTypeIdentifier];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupIdentifier];
  *v24 = a1;
  *(v24 + 1) = a2;
  sub_1C52591C0(a9, &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupStartDate]);
  sub_1C52591C0(a10, &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupEndDate]);
  *&v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupAddress] = a7;
  *&v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocation] = a8;
  v25 = &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_merchantDisplayName];
  *v25 = a11;
  *(v25 + 1) = a12;
  v26 = &v21[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocationDisplayName];
  *v26 = a13;
  *(v26 + 1) = a14;
  v31.receiver = v21;
  v31.super_class = v14;
  v27 = objc_msgSendSuper2(&v31, sel_init);
  sub_1C525E818(a10);
  sub_1C525E818(a9);
  return v27;
}

id MapsSuggestionsOrderPickup.init(pickupId:orderId:orderType:pickupAddress:pickupLocation:pickupStartDate:pickupEndDate:merchantDisplayName:pickupLocationDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderIdentifier];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderTypeIdentifier];
  *v18 = a5;
  *(v18 + 1) = a6;
  v19 = &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupIdentifier];
  *v19 = a1;
  *(v19 + 1) = a2;
  sub_1C52591C0(a9, &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupStartDate]);
  sub_1C52591C0(a10, &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupEndDate]);
  *&v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupAddress] = a7;
  *&v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocation] = a8;
  v20 = &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_merchantDisplayName];
  *v20 = a11;
  *(v20 + 1) = a12;
  v21 = &v14[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocationDisplayName];
  *v21 = a13;
  *(v21 + 1) = a14;
  v24.receiver = v14;
  v24.super_class = type metadata accessor for MapsSuggestionsOrderPickup();
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_1C525E818(a10);
  sub_1C525E818(a9);
  return v22;
}

id MapsSuggestionsOrderPickup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsOrderPickup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsOrderPickup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C528A2AC()
{
  sub_1C525EB90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id MapsSuggestionsCompositeOrCondition.__allocating_init(conditions:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions] = a1;
  v4 = sub_1C529D71C();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithName_, v4);

  return v5;
}

BOOL sub_1C528A50C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions);
  if (v1 >> 62)
  {
LABEL_15:
    v2 = sub_1C529DA9C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C69434E0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v6 = [v5 isTrue];
    swift_unknownObjectRelease();
    v3 = v4 + 1;
  }

  while (!v6);

  return v2 != v4;
}

id MapsSuggestionsCompositeOrCondition.init(conditions:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions] = a1;
  v2 = sub_1C529D71C();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSuggestionsCompositeOrCondition();
  v3 = objc_msgSendSuper2(&v5, sel_initWithName_, v2);

  return v3;
}

id MapsSuggestionsCompositeOrCondition.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C529D71C();

  v3 = [v1 initWithName_];

  return v3;
}

id MapsSuggestionsCompositeOrCondition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsCompositeOrCondition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}