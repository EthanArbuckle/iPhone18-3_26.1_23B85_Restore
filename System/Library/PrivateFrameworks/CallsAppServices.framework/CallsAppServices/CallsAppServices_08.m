uint64_t sub_1D33C54E4(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1D33C3880() == a5 && v15 == a6)
  {
  }

  else
  {
    v16 = sub_1D33DF1B4();

    if ((v16 & 1) == 0)
    {
LABEL_6:
      *a3 = 1;
      result = swift_beginAccess();
      *(a7 + 16) = 1;
      return result;
    }
  }

  if (sub_1D33DE9F4())
  {
    goto LABEL_6;
  }

  if (!*(a4 + 24) || ((v18 = [a1 phoneNumbers], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x"), v19 = sub_1D33DE8B4(), v18, v19 >> 62) ? (v20 = sub_1D33DEE14()) : (v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)), result = , v20))
  {
    result = sub_1D33C56D8(a2);
    if (result)
    {
      [objc_allocWithZone(MEMORY[0x1E69BDCF8]) initWithContact:a1 matchInfo:a2 preferredPhoneNumber:0];
      v21 = swift_beginAccess();
      MEMORY[0x1D38B6F20](v21);
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D33C56D8(void *a1)
{
  v2 = [a1 matchedProperties];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D33DE6F4();
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 24) <= 1u)
  {

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  if (*(v1 + 24) == 2)
  {
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (v7)
    {
LABEL_16:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_1D334CD04(*(v4 + 48) + 40 * (v13 | (v10 << 6)), &v50);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v49;
        if (v49)
        {
          v44 = v48;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D3359DD4(0, *(v11 + 16) + 1, 1, v11);
            v11 = result;
          }

          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v43 = v16 + 1;
            v19 = v11;
            v20 = v16;
            result = sub_1D3359DD4((v15 > 1), v16 + 1, 1, v19);
            v16 = v20;
            v17 = v43;
            v11 = result;
          }

          *(v11 + 16) = v17;
          v18 = v11 + 16 * v16;
          *(v18 + 32) = v44;
          *(v18 + 40) = v14;
        }
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        v36 = *MEMORY[0x1E695C330];
        *&v50 = sub_1D33DE7B4();
        *(&v50 + 1) = v37;
        MEMORY[0x1EEE9AC00](v50);
        v42 = &v50;
        LOBYTE(v4) = sub_1D33580EC(sub_1D33C7AE4, v41, v11);

        return v4 & 1;
      }

      v7 = *(v4 + 64 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      return v4 & 1;
    }

    v21 = 1 << *(v4 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v4 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (v23)
    {
LABEL_32:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_1D334CD04(*(v4 + 48) + 40 * (v28 | (v25 << 6)), &v50);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v49;
        if (v49)
        {
          v44 = v48;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D3359DD4(0, *(v26 + 16) + 1, 1, v26);
            v26 = result;
          }

          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v43 = v31 + 1;
            v34 = v26;
            v35 = v31;
            result = sub_1D3359DD4((v30 > 1), v31 + 1, 1, v34);
            v31 = v35;
            v32 = v43;
            v26 = result;
          }

          *(v26 + 16) = v32;
          v33 = v26 + 16 * v31;
          *(v33 + 32) = v44;
          *(v33 + 40) = v29;
        }
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        v38 = *MEMORY[0x1E695C330];
        *&v50 = sub_1D33DE7B4();
        *(&v50 + 1) = v39;
        MEMORY[0x1EEE9AC00](v50);
        v42 = &v50;
        v40 = sub_1D33580EC(sub_1D33C7DB8, v41, v26);

        LOBYTE(v4) = v40 ^ 1;
        return v4 & 1;
      }

      v23 = *(v4 + 64 + 8 * v27);
      ++v25;
      if (v23)
      {
        v25 = v27;
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1D33C5B80(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(v10, v9, a4);
}

uint64_t sub_1D33C5C14()
{
  v0 = sub_1D33C3A14();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v24 = *MEMORY[0x1E695C330];
    v20 = v1 & 0xC000000000000001;
    v21 = v1;
    while (1)
    {
      if (v3)
      {
        v6 = MEMORY[0x1D38B75D0](v2, v1);
      }

      else
      {
        if (v2 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v1 + 8 * v2 + 32);
      }

      v7 = v6;
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [v6 matchInfo];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 matchedProperties];

        if (v11)
        {
          sub_1D33DE6F4();

          v12 = objc_opt_self();
          v13 = sub_1D33DE6E4();

          v14 = [v12 matchedProperties:v13 contains:v24];

          if (v14)
          {
            v15 = [v7 contact];
            v29[0] = 0;
            v29[1] = 0xE000000000000000;
            queue = *(v22 + 56);
            v16 = swift_allocObject();
            *(v16 + 16) = v29;
            *(v16 + 24) = v22;
            v17 = swift_allocObject();
            *(v17 + 16) = sub_1D33C7D94;
            *(v17 + 24) = v16;
            aBlock[4] = sub_1D33C7D98;
            v28 = v17;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D33C39EC;
            aBlock[3] = &block_descriptor_92_0;
            v18 = _Block_copy(aBlock);
            v1 = v28;

            dispatch_sync(queue, v18);
            _Block_release(v18);
            LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

            if (v18)
            {
              goto LABEL_18;
            }

            v4 = sub_1D33DE784();

            v5 = [v12 matchedPhoneNumberFor:v15 searchText:v4 allowMatchingLastFour:*(v22 + 24) != 0];

            [v7 setPreferredPhoneNumber_];
            v3 = v20;
            v1 = v21;
          }
        }
      }

      ++v2;
      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_1D33C5FC0()
{
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v0 = sub_1D33DE464();
  __swift_project_value_buffer(v0, qword_1EC762148);

  oslog = sub_1D33DE444();
  v1 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_1D33C3880();
    v6 = sub_1D3328B48(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1D331A000, oslog, v1, "Search cancelled for %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1D38B81C0](v3, -1, -1);
    MEMORY[0x1D38B81C0](v2, -1, -1);
  }
}

uint64_t sub_1D33C6124()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t ContactSearchManager.results.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ContactSearchManager.results.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ContactSearchManager.searchText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ContactSearchManager.searchText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *sub_1D33C6344(int a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v4;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = v4;
  v1[9] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  type metadata accessor for ContactSearchDataSource();
  v5 = swift_allocObject();
  sub_1D33C3B80(a1, 0, j__swift_bridgeObjectRetain, 0);
  v2[7] = v5;
  *(v2 + 64) = a1;
  return v2;
}

uint64_t ContactSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = *(*(sub_1D33DDB64() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  sub_1D33DE974();
  v4[30] = sub_1D33DE964();
  v7 = sub_1D33DE914();
  v4[31] = v7;
  v4[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D33C64B0, v7, v6);
}

uint64_t sub_1D33C64B0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = *(v1 + 32) == *(v0 + 200) && v3 == *(v0 + 208);
    if (!v4 && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 216);
  v6 = *(*(v0 + 224) + 48);

  LOBYTE(v5) = sub_1D3374154(v7, v5);

  if (v5)
  {
    v8 = *(v0 + 240);

LABEL_68:
    v75 = *(v0 + 232);

    v76 = *(v0 + 8);

    return v76();
  }

LABEL_12:
  v9 = *(v0 + 224);
  v10 = *(v9 + 48);
  *(v9 + 48) = *(v0 + 216);

  if (!v2)
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 208);
LABEL_29:

    v25 = *(v0 + 224);
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    swift_beginAccess();
    v28 = *(v25 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    *(v25 + 16) = MEMORY[0x1E69E7CC0];

    v30 = *(v25 + 24);
    *(v25 + 24) = v29;

    v31 = *(v1 + 40);
    *(v1 + 32) = v27;
    *(v1 + 40) = v26;

    goto LABEL_68;
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  if (sub_1D33DE834() <= 0)
  {
    v13 = *(v0 + 216);
    if (v13 >> 62)
    {
      goto LABEL_80;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_81:
      v90 = *(v0 + 240);
      goto LABEL_29;
    }
  }

  while (1)
  {
    v14 = *(v0 + 224);
    if (*(v14 + 64))
    {
      if ([*(v14 + 72) phoneLargeFormatUIEnabled])
      {
        v15 = *(v0 + 208);
        if ((v15 & 0x2000000000000000) != 0)
        {
          v16 = HIBYTE(v15) & 0xF;
        }

        else
        {
          v16 = *(v0 + 200) & 0xFFFFFFFFFFFFLL;
        }

        v91 = *(v0 + 200);
        v93 = v12;
        v94 = 0;
        v96 = v16;

        sub_1D33DE854();
        if (v17)
        {
          do
          {
            if (sub_1D33DE744())
            {
            }

            else
            {
              v19 = sub_1D33DE754();

              if ((v19 & 1) == 0)
              {
                v21 = *(v0 + 200);
                v20 = *(v0 + 208);

                v22 = *(v1 + 40);
                *(v1 + 32) = v21;
                *(v1 + 40) = v20;
                goto LABEL_31;
              }
            }

            sub_1D33DE854();
          }

          while (v18);
        }
      }

      v33 = *(v0 + 200);
      v34 = sub_1D33DE784();
      v35 = [v34 unformattedNumberInLatin];

      if (v35)
      {
        v36 = sub_1D33DE7B4();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = *(v1 + 40);
      *(v1 + 32) = v36;
      *(v1 + 40) = v38;
    }

    else
    {
      v32 = *(v1 + 40);
      *(v1 + 32) = *(v0 + 200);
LABEL_31:
    }

    v40 = *(v0 + 216);

    if (v40 >> 62)
    {
      if (*(v0 + 216) < 0)
      {
        v89 = *(v0 + 216);
      }

      v41 = sub_1D33DEE14();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 264) = v41;
    if (v41 < 1)
    {
      goto LABEL_72;
    }

    if ((v40 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(*(v0 + 216) + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_80:
    if (sub_1D33DEE14() < 1)
    {
      goto LABEL_81;
    }
  }

  v42 = MEMORY[0x1D38B75D0](0, *(v0 + 216));
LABEL_43:
  v43 = v42;
  v44 = [v42 representedObject];

  if (v44)
  {
    sub_1D33DED44();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v95 = 0u;
  }

  *(v0 + 16) = v92;
  *(v0 + 32) = v95;
  if (!*(v0 + 40))
  {
    v60 = *(v0 + 240);

    sub_1D331E880(v0 + 16, &qword_1EC7616D0, &unk_1D33E2890);
LABEL_57:
    v62 = *(v0 + 224);
    swift_beginAccess();
    v63 = *(v62 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    *(v62 + 16) = MEMORY[0x1E69E7CC0];

    v65 = *(v62 + 24);
    *(v62 + 24) = v64;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v66 = sub_1D33DE464();
    __swift_project_value_buffer(v66, qword_1EC762160);
    v56 = sub_1D33DE444();
    v67 = sub_1D33DEAF4();
    if (os_log_type_enabled(v56, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1D331A000, v56, v67, "ContactsSearchController: Could not extract suggestion object from search token", v68, 2u);
      MEMORY[0x1D38B81C0](v68, -1, -1);
    }

    goto LABEL_67;
  }

  sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = *(v0 + 240);

    goto LABEL_57;
  }

  v45 = *(v0 + 192);
  v46 = [v45 currentToken];
  if (!v46 || (v47 = v46, v48 = [v46 tokenKind], v47, v48 != 16))
  {
    v69 = *(v0 + 240);
    v70 = *(v0 + 224);

    swift_beginAccess();
    v71 = *(v70 + 16);
    v72 = MEMORY[0x1E69E7CC0];
    *(v70 + 16) = MEMORY[0x1E69E7CC0];

    v73 = *(v70 + 24);
    *(v70 + 24) = v72;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v74 = sub_1D33DE464();
    __swift_project_value_buffer(v74, qword_1EC762160);
    v56 = sub_1D33DE444();
    v57 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_66;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "ContactsSearchController: Aborting contacts search because search token doesn't contain person suggestion";
    goto LABEL_65;
  }

  v49 = *(v0 + 200);
  if (sub_1D33DE834() >= 1)
  {
    v50 = *(v0 + 240);
    v51 = *(v0 + 224);

    swift_beginAccess();
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    *(v51 + 16) = MEMORY[0x1E69E7CC0];

    v54 = *(v51 + 24);
    *(v51 + 24) = v53;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v55 = sub_1D33DE464();
    __swift_project_value_buffer(v55, qword_1EC762160);
    v56 = sub_1D33DE444();
    v57 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_66;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "ContactsSearchController: Aborting contacts search because both searchtoken and text are present";
LABEL_65:
    _os_log_impl(&dword_1D331A000, v56, v57, v59, v58, 2u);
    MEMORY[0x1D38B81C0](v58, -1, -1);
LABEL_66:

LABEL_67:
    goto LABEL_68;
  }

  v78 = *(v0 + 232);
  sub_1D331DA18(0, &unk_1EC761D98, 0x1E696AAB0);
  sub_1D33DEAC4();
  v79 = sub_1D33DEBE4();
  v80 = [v79 string];

  v81 = sub_1D33DE7B4();
  v83 = v82;

  v84 = *(v1 + 40);
  *(v1 + 32) = v81;
  *(v1 + 40) = v83;

LABEL_72:
  v85 = *(*(v0 + 224) + 56);
  v86 = *(v1 + 32);
  v87 = *(v1 + 40);
  *(v0 + 272) = v87;

  v88 = swift_task_alloc();
  *(v0 + 280) = v88;
  *v88 = v0;
  v88[1] = sub_1D33C6CFC;

  return sub_1D33C4010(v86, v87, 0);
}

uint64_t sub_1D33C6CFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[31];
    v6 = v3[32];
    v7 = sub_1D33C71DC;
  }

  else
  {
    v8 = v3[34];

    v5 = v3[31];
    v6 = v3[32];
    v7 = sub_1D33C6E18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

char *sub_1D33C6E18()
{
  v1 = v0[33];
  v2 = v0[30];

  v43 = v0;
  v3 = v0[36];
  if (v1 >= 1)
  {
    v44 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v4; i = v43[36])
    {
      v6 = 0;
      v42 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v8 = i + 32;
      while (1)
      {
        if (v42)
        {
          v10 = MEMORY[0x1D38B75D0](v6, v43[36]);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_28;
          }

          v10 = *(v8 + 8 * v6);
        }

        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v13 = [v10 contact];
        v14 = [v13 displayName];

        v3 = v43[28];
        if (v14)
        {
          v15 = sub_1D33DE7B4();
          v17 = v16;

          v18 = *(v3 + 40);
          if (v17)
          {
            if (!v18)
            {

              goto LABEL_7;
            }

            if (v15 == *(v3 + 32) && v18 == v17)
            {
            }

            else
            {
              v20 = sub_1D33DF1B4();

              if ((v20 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            goto LABEL_6;
          }
        }

        else
        {
          v18 = *(v3 + 40);
        }

        if (v18)
        {
LABEL_23:

          goto LABEL_7;
        }

LABEL_6:
        sub_1D33DEF84();
        v9 = *(v44 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
LABEL_7:
        ++v6;
        if (v12 == v4)
        {
          v3 = v44;
          v21 = v43[36];
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v4 = sub_1D33DEE14();
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_31:
  }

  v22 = v43[28];
  swift_beginAccess();
  v23 = *(v22 + 16);
  *(v22 + 16) = v3;

  if (v3 >> 62)
  {
    v24 = sub_1D33DEE14();
  }

  else
  {
    v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v45 = MEMORY[0x1E69E7CC0];

    result = sub_1D334A9E0(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v25 = v45;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1D38B75D0](v27, v3);
      }

      else
      {
        v28 = *(v3 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = [v28 contact];
      v31 = [v30 identifier];

      v32 = sub_1D33DE7B4();
      v34 = v33;

      v36 = *(v45 + 16);
      v35 = *(v45 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D334A9E0((v35 > 1), v36 + 1, 1);
      }

      ++v27;
      *(v45 + 16) = v36 + 1;
      v37 = v45 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v24 != v27);
  }

  v38 = v43[28];
  v39 = *(v38 + 24);
  *(v38 + 24) = v25;

  v40 = v43[29];

  v41 = v43[1];

  return v41();
}

uint64_t sub_1D33C71DC()
{
  v1 = v0[34];
  v2 = v0[30];

  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EC762160);
  v5 = v3;
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAD4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D331A000, v6, v7, "ContactsSearchController: Error searching contacts: %@", v10, 0xCu);
    sub_1D331E880(v11, &qword_1EC761D90, &unk_1D33E4E90);
    MEMORY[0x1D38B81C0](v11, -1, -1);
    MEMORY[0x1D38B81C0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[29];

  v15 = v0[1];

  return v15();
}

Swift::Void __swiftcall ContactSearchManager.cancelPreviousSearch()()
{
  v1 = *(v0 + 56);
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762148);

  oslog = sub_1D33DE444();
  v3 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_1D33C3880();
    v8 = sub_1D3328B48(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D331A000, oslog, v3, "Search cancelled for %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1D38B81C0](v5, -1, -1);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }
}

uint64_t ContactSearchManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return v0;
}

uint64_t ContactSearchManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C75A8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_1D33C75EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D334CF9C;

  return ContactSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

uint64_t sub_1D33C76C4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t getEnumTagSinglePayload for ContactSearchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactSearchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D33C78D8()
{
  result = qword_1EC761DA8;
  if (!qword_1EC761DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DA8);
  }

  return result;
}

uint64_t sub_1D33C792C()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *v1 = *(*(v0 + 24) + 80);
}

uint64_t sub_1D33C7974()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

unint64_t sub_1D33C79CC()
{
  result = qword_1EC761DB0;
  if (!qword_1EC761DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DB0);
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D33C7A60()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 80);
  *(v1 + 80) = *(v0 + 24);
}

uint64_t sub_1D33C7AA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 72);
  v4 = v1[1];
  *v1 = *(v2 + 64);
  v1[1] = v3;
}

uint64_t sub_1D33C7B00(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D33DF1B4() & 1;
  }
}

uint64_t sub_1D33C7B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D33E4E70;
  v1 = *MEMORY[0x1E695C1F8];
  v2 = *MEMORY[0x1E695C2C8];
  *(v0 + 32) = *MEMORY[0x1E695C1F8];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C320];
  v4 = *MEMORY[0x1E695C360];
  *(v0 + 48) = *MEMORY[0x1E695C320];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C418];
  v6 = *MEMORY[0x1E695C3A8];
  *(v0 + 64) = *MEMORY[0x1E695C418];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C3D0];
  v8 = *MEMORY[0x1E695C2B0];
  *(v0 + 80) = *MEMORY[0x1E695C3D0];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

unint64_t sub_1D33C7C50()
{
  result = qword_1EDEBEEE0;
  if (!qword_1EDEBEEE0)
  {
    sub_1D33DEB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEEE0);
  }

  return result;
}

unint64_t sub_1D33C7CA8()
{
  result = qword_1EDEBEF20;
  if (!qword_1EDEBEF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC760F10, &qword_1D33E2E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF20);
  }

  return result;
}

unint64_t sub_1D33C7D20()
{
  result = qword_1EC761DB8;
  if (!qword_1EC761DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DB8);
  }

  return result;
}

void sub_1D33C7DD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E30, &unk_1D33E5458);
    v2 = sub_1D33DF124();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_1D33378A8(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1D33C7FB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
    v2 = sub_1D33DF124();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E08, &qword_1D33E5438);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1D334CCF4(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1D334CCF4(v34, v35);
    v19 = *(v2 + 40);
    result = sub_1D33DEE94();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1D334CCF4(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D33C8290(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D33DEE14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D33D6CA4(v3, 0);
  sub_1D33D2D28(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D33C8324(uint64_t a1)
{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v1 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_1D331FEEC();
      return v10;
    }

    while (1)
    {
      v16 = [v15 type];
      if (v16 > 3)
      {
        v17 = 1;
      }

      else
      {
        v17 = qword_1D33E5468[v16];
      }

      v18 = [v15 value];
      if (!v18)
      {
        sub_1D33DE7B4();
        v18 = sub_1D33DE784();
      }

      [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

      MEMORY[0x1D38B6F20]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v26;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v15 = v20;
        v13 = v5;
        v14 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33C8614(int a1)
{
  if (*MEMORY[0x1E69935D0] == a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (*MEMORY[0x1E69935B0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935B8] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935A0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935C8] == a1)
  {
    return 0x64657373696DLL;
  }

  if (*MEMORY[0x1E69935A8] == a1)
  {
    return 0x656C6C65636E6163;
  }

  return 0;
}

__n128 ReportSpamManager.SpamDataModel.init(invitedMembers:callType:callLength:hasLink:recipientHandleValue:senderHandle:messageId:spamTime:messageKey:callStatus:linkName:snapFirstName:snapLastName:snapRecordId:snapRecordInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 128) = a16;
  *(a9 + 144) = a17;
  *(a9 + 160) = a18;
  *(a9 + 176) = a19;
  *(a9 + 192) = a20;
  return result;
}

uint64_t sub_1D33C8784()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 3)
  {
    if (v5 >= 2 && v5 == 2)
    {
      v20 = v1;
      v21 = sub_1D33DE124();
      if (v21)
      {
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D33E1DE0;
        *(v9 + 32) = v22;
        sub_1D332B1DC(v1, v2, v4, v3, 2u);
        return v9;
      }

      sub_1D332B1DC(v1, v2, v4, v3, 2u);
      return MEMORY[0x1E69E7CC0];
    }

    v11 = v1;
    v12 = [v11 remoteMembers];

    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    v13 = sub_1D33DEA54();

    v14 = sub_1D339AAE8(v13);

    return sub_1D33C8290(v14);
  }

  else
  {
    if (v5 - 4 < 3)
    {
      v6 = v1;
      v7 = [v6 remoteParticipantHandles];

      if (v7)
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v8 = sub_1D33DEA54();

        v9 = sub_1D33C8324(v8);

        return v9;
      }

      return MEMORY[0x1E69E7CC0];
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v5 != 7)
    {
      return v9;
    }

    v16 = v2;

    v17 = [v16 invitedMemberHandles];
    if (v17)
    {
      v18 = v17;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      v19 = sub_1D33DEA54();
    }

    else if (v9 >> 62 && sub_1D33DEE14())
    {
      sub_1D33A6DF0(MEMORY[0x1E69E7CC0]);
      v19 = v24;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CD0];
    }

    v23 = sub_1D33A5AC0(v19);
    sub_1D332B1DC(v1, v2, v4, v3, 7u);

    return v23;
  }
}

void sub_1D33C8AC8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v1 = sub_1D33DE784();
  v2 = [v0 initWithService_];

  if (v2)
  {
    type metadata accessor for IDSSpamReportingService();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    type metadata accessor for ReportSpamManager();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[6] = [objc_opt_self() sharedInstance];
    v4[7] = [objc_opt_self() sharedController];
    v4[4] = v3;
    v4[5] = &off_1F4EE7C90;
    swift_beginAccess();
    v4[3] = 0;
    swift_unknownObjectWeakAssign();
    v4[8] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    qword_1EC761DC0 = v4;
  }

  else
  {
    __break(1u);
  }
}

unint64_t ReportSpamManager.IDSServiceType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000026;
  }

  else
  {
    result = 0xD00000000000002ALL;
  }

  *v0;
  return result;
}

void ReportSpamManager.__allocating_init(idsServiceType:contextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v6 = sub_1D33DE784();
  v7 = [v5 initWithService_];

  if (v7)
  {

    type metadata accessor for IDSSpamReportingService();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[6] = [objc_opt_self() sharedInstance];
    v9[7] = [objc_opt_self() sharedController];
    v9[4] = v8;
    v9[5] = &off_1F4EE7C90;
    swift_beginAccess();
    v9[3] = a4;
    swift_unknownObjectWeakAssign();
    v10 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    swift_unknownObjectRelease();
    v9[8] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ReportSpamManager.faceTime.getter()
{
  if (qword_1EC760960 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D33C8E28()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC761DC8);
  __swift_project_value_buffer(v0, qword_1EC761DC8);
  return sub_1D33DE454();
}

uint64_t static ReportSpamManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  v3 = __swift_project_value_buffer(v2, qword_1EC761DC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

CallsAppServices::ReportSpamManager::IDSServiceType_optional __swiftcall ReportSpamManager.IDSServiceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D33DF144();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D33C8FB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000026;
  }

  else
  {
    v4 = 0xD00000000000002ALL;
  }

  if (v3)
  {
    v5 = "nvited";
  }

  else
  {
    v5 = "e.alloy.facetime.messaging";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000026;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v8 = "e.alloy.facetime.messaging";
  }

  else
  {
    v8 = "nvited";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D33DF1B4();
  }

  return v10 & 1;
}

uint64_t sub_1D33C905C()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D33C90DC()
{
  *v0;
  sub_1D33DE824();
}

uint64_t sub_1D33C9148()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D33C91C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D33DF144();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D33C9224(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = 0xD00000000000002ALL;
  }

  if (*v1)
  {
    v3 = "e.alloy.facetime.messaging";
  }

  else
  {
    v3 = "nvited";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D33C9264()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v83 = *(v0 + 33);
  v84 = *(v0 + 32);
  v122 = *(v0 + 34);
  v123 = *(v0 + 38);
  v81 = *(v0 + 48);
  v82 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v79 = *(v0 + 80);
  v80 = *(v0 + 64);
  v7 = *(v0 + 88);
  v8 = *(v0 + 89);
  *(v121 + 3) = *(v0 + 92);
  v121[0] = v8;
  v77 = *(v0 + 104);
  v78 = *(v0 + 96);
  v75 = *(v0 + 120);
  v76 = *(v0 + 112);
  v9 = *(v0 + 136);
  v74 = *(v0 + 128);
  v10 = *(v0 + 160);
  v117 = *(v0 + 144);
  v118 = v10;
  v119 = *(v0 + 176);
  v120 = *(v0 + 192);
  v11 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  *(&v112 + 1) = 0xEF737265626D656DLL;
  v12 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *&v112 = v1;
  sub_1D334CCF4(&v112, &v114);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v11;
  sub_1D3398C48(&v114, &v86, isUniquelyReferenced_nonNull_native);
  sub_1D334CCA0(&v86);
  v116 = v11;
  if (v7)
  {

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_21:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
LABEL_22:

    return 0;
  }

  if (!v6)
  {

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_21;
  }

  if (!v5)
  {

LABEL_17:
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v40 = sub_1D33DE464();
    __swift_project_value_buffer(v40, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "senderHandle is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_21;
  }

  v72 = v9;
  v73 = v3;
  v19 = v5;

  v20 = TUCopyIDSFromIDForHandle();
  if (!v20)
  {

    goto LABEL_17;
  }

  v21 = v20;
  v68 = v19;
  v69 = v4;
  v70 = v2;
  v22 = sub_1D33DE784();
  v23 = TUHandleForIDSCanonicalAddress();

  v71 = TUHandleForIDSCanonicalAddress();
  v24 = *MEMORY[0x1E69A5488];
  *&v112 = sub_1D33DE7B4();
  *(&v112 + 1) = v25;
  sub_1D33DEEB4();
  v113 = v12;
  *&v112 = v78;
  *(&v112 + 1) = v77;
  sub_1D334CCF4(&v112, &v114);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v11;
  sub_1D3398C48(&v114, &v86, v26);
  sub_1D334CCA0(&v86);
  v27 = *MEMORY[0x1E69A5490];
  *&v112 = sub_1D33DE7B4();
  *(&v112 + 1) = v28;
  sub_1D33DEEB4();
  v113 = MEMORY[0x1E69E63B0];
  *&v112 = v79;
  sub_1D334CCF4(&v112, &v114);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v11;
  sub_1D3398C48(&v114, &v86, v29);
  sub_1D334CCA0(&v86);
  v116 = v11;
  v30 = *MEMORY[0x1E69A5478];
  *&v112 = sub_1D33DE7B4();
  *(&v112 + 1) = v31;
  sub_1D33DEEB4();
  v32 = v23;
  v33 = TUCopyIDSFromIDForHandle();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1D33DE7B4();
    v37 = v36;

    v113 = v12;
    *&v112 = v35;
    *(&v112 + 1) = v37;
    sub_1D334CCF4(&v112, &v114);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v11;
    sub_1D3398C48(&v114, &v86, v38);
    sub_1D334CCA0(&v86);
    v116 = v11;
  }

  else
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
    v11 = v116;
  }

  v42 = *MEMORY[0x1E69A5470];
  *&v112 = sub_1D33DE7B4();
  *(&v112 + 1) = v43;
  sub_1D33DEEB4();
  v113 = v12;
  *&v112 = v80;
  *(&v112 + 1) = v6;
  sub_1D334CCF4(&v112, &v114);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v11;
  sub_1D3398C48(&v114, &v86, v44);
  sub_1D334CCA0(&v86);
  v116 = v11;
  *&v112 = 0x7079742D6C6C6163;
  *(&v112 + 1) = 0xE900000000000065;
  sub_1D33DEEB4();
  if (v73)
  {
    v113 = v12;
    *&v112 = v70;
    *(&v112 + 1) = v73;
    sub_1D334CCF4(&v112, &v114);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(&v114, &v86, v45);
    sub_1D334CCA0(&v86);
    v116 = v11;
  }

  else
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
  }

  *&v112 = 0x6E656C2D6C6C6163;
  *(&v112 + 1) = 0xEB00000000687467;
  sub_1D33DEEB4();
  if (v84)
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
    v46 = v116;
  }

  else
  {
    v113 = MEMORY[0x1E69E63B0];
    *&v112 = v69;
    sub_1D334CCF4(&v112, &v114);
    v46 = v116;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v46;
    sub_1D3398C48(&v114, &v86, v47);
    sub_1D334CCA0(&v86);
    v116 = v46;
  }

  *&v112 = 0x6B6E696C2D736168;
  *(&v112 + 1) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v113 = MEMORY[0x1E69E6370];
  LOBYTE(v112) = v83 & 1;
  sub_1D334CCF4(&v112, &v114);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v46;
  sub_1D3398C48(&v114, &v86, v49);
  sub_1D334CCA0(&v86);
  v116 = v46;
  *&v112 = 0x6174732D6C6C6163;
  *(&v112 + 1) = 0xEB00000000737574;
  sub_1D33DEEB4();
  v50 = v75;
  if (v75)
  {
    v113 = v48;
    *&v112 = v76;
    *(&v112 + 1) = v75;
    sub_1D334CCF4(&v112, &v114);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v46;
    sub_1D3398C48(&v114, &v86, v51);
    sub_1D334CCA0(&v86);
    v116 = v46;
  }

  else
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
  }

  *&v112 = 0x6D616E2D6B6E696CLL;
  *(&v112 + 1) = 0xE900000000000065;
  v52 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v72)
  {
    v113 = v52;
    *&v112 = v74;
    *(&v112 + 1) = v72;
    sub_1D334CCF4(&v112, &v114);

    v53 = v116;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v53;
    sub_1D3398C48(&v114, &v86, v54);
    sub_1D334CCA0(&v86);
    v116 = v53;
  }

  else
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
  }

  v55 = *MEMORY[0x1E69A5480];
  *&v112 = sub_1D33DE7B4();
  *(&v112 + 1) = v56;
  v57 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v58 = TUCopyIDSFromIDForHandle();
  if (v58)
  {
    v59 = v58;
    v60 = sub_1D33DE7B4();
    v62 = v61;

    v113 = v57;
    *&v112 = v60;
    *(&v112 + 1) = v62;
    v50 = v75;
    sub_1D334CCF4(&v112, &v114);
    v63 = v116;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v63;
    sub_1D3398C48(&v114, &v86, v64);
    sub_1D334CCA0(&v86);
    v65 = v63;
  }

  else
  {
    sub_1D334BCE4(&v86, &v112);
    sub_1D331E880(&v112, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v86);
    v65 = v116;
  }

  v86 = 0xD00000000000001CLL;
  v87 = 0x80000001D33E7450;
  sub_1D33DEEB4();
  v86 = v1;
  v87 = v70;
  v88 = v73;
  v89 = v69;
  v90 = v84;
  v91 = v83;
  v92 = v122;
  v93 = v123;
  v94 = v82;
  v95 = v81;
  v96 = v5;
  v97 = v80;
  v98 = v6;
  v99 = v79;
  v100 = v7;
  *&v101[3] = *(v121 + 3);
  *v101 = v121[0];
  v102 = v78;
  v103 = v77;
  v104 = v76;
  v105 = v50;
  v106 = v74;
  v107 = v72;
  v111 = v120;
  v109 = v118;
  v110 = v119;
  v108 = v117;
  v66 = sub_1D33C9E50();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
  *&v114 = v66;
  sub_1D334CCF4(&v114, v85);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v85, &v112, v67);

  sub_1D334CCA0(&v112);
  return v65;
}

unint64_t sub_1D33C9E50()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[24];

  v8 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  v24 = v8;
  *&v21 = 0x616E2D7473726966;
  *(&v21 + 1) = 0xEA0000000000656DLL;
  v9 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v1)
  {
    v22 = v9;
    *&v21 = v2;
    *(&v21 + 1) = v1;
    sub_1D334CCF4(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, isUniquelyReferenced_nonNull_native);
    sub_1D334CCA0(v23);
    v24 = v8;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x6D616E2D7473616CLL;
  *(&v21 + 1) = 0xE900000000000065;
  v11 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v3)
  {
    v22 = v11;
    *&v21 = v4;
    *(&v21 + 1) = v3;
    sub_1D334CCF4(&v21, v20);

    v12 = v24;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v13);
    sub_1D334CCA0(v23);
    v24 = v12;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x644964726F636572;
  *(&v21 + 1) = 0xE800000000000000;
  v14 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v5)
  {
    v22 = v14;
    *&v21 = v6;
    *(&v21 + 1) = v5;
    sub_1D334CCF4(&v21, v20);

    v15 = v24;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v16);
    sub_1D334CCA0(v23);
    v24 = v15;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0xD000000000000017;
  *(&v21 + 1) = 0x80000001D33E7470;
  sub_1D33DEEB4();
  if (v7)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B78, &qword_1D33E4538);
    *&v21 = v7;
    sub_1D334CCF4(&v21, v20);

    v17 = v24;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v18);
    sub_1D334CCA0(v23);
    return v17;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
    return v24;
  }
}

uint64_t ReportSpamManager.contextProvider.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t ReportSpamManager.contextProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ReportSpamManager.contextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D33CA300;
}

void sub_1D33CA300(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D33CA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a3, a4, v5, ObjectType, a2);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t ReportSpamManager.reportVideoMessagingSpam(call:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48[-v11];
  v13 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(a1 + *(v13 + 32), v12);
  v14 = type metadata accessor for CallInfo(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_1D331E880(v12, &unk_1EC761DE0, &unk_1D33E50F0);
    if (qword_1EC760968 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_3;
  }

  (*(v5 + 16))(v8, &v12[*(v14 + 24)], v4);
  sub_1D336A0E8(v12);
  sub_1D33DDCD4();
  (*(v5 + 8))(v8, v4);
  v19 = sub_1D33CAA04();
  v54 = sub_1D335DDB8(v19);
  v56 = v20;
  if (v20)
  {

    v21 = sub_1D33C8784();
    v22 = v21;
    v51 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      v53 = sub_1D33DEE14();
    }

    else
    {
      v53 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v22 & 0xC000000000000001;

    v55 = v2;

    v23 = 0;
    v50 = v22;
    while (1)
    {
      v24 = v53 != v23;
      if (v53 == v23)
      {
        break;
      }

      if (v52)
      {
        v25 = MEMORY[0x1D38B75D0](v23, v22);
      }

      else
      {
        if (v23 >= *(v51 + 16))
        {
          goto LABEL_28;
        }

        v25 = *(v22 + 8 * v23 + 32);
      }

      v26 = v25;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        swift_once();
LABEL_3:
        v15 = sub_1D33DE464();
        __swift_project_value_buffer(v15, qword_1EC761DC8);
        v16 = sub_1D33DE444();
        v17 = sub_1D33DEAF4();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1D331A000, v16, v17, "Could not report video message spam for call due to nil call date", v18, 2u);
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      v49 = v24;
      v27 = sub_1D33DEA24();
      v29 = v28;
      v30 = [v26 value];
      v31 = sub_1D33DE7B4();
      v33 = v32;

      v35 = *(v55 + 32);
      v34 = *(v55 + 40);
      ObjectType = swift_getObjectType();
      v57[0] = v27;
      v57[1] = v29;
      v57[2] = v31;
      v57[3] = v33;
      v57[4] = v54;
      v57[5] = v56;

      swift_unknownObjectRetain();
      v37 = sub_1D33CAF5C();
      v38 = sub_1D33C7FB4(v37);

      v39 = (*(v34 + 8))(v38, ObjectType, v34);
      v22 = v50;
      LOBYTE(v34) = v39;

      swift_unknownObjectRelease();

      ++v23;
      if (v34)
      {

        v24 = v49;
LABEL_23:

        swift_bridgeObjectRelease_n();
        return v24;
      }
    }

    goto LABEL_23;
  }

  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v40 = sub_1D33DE464();
  __swift_project_value_buffer(v40, qword_1EC761DC8);

  v16 = sub_1D33DE444();
  v41 = sub_1D33DEAF4();

  if (os_log_type_enabled(v16, v41))
  {
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57[0] = v42;
    *v18 = 136315138;
    v43 = sub_1D33DEA64();
    v45 = v44;

    v46 = sub_1D3328B48(v43, v45, v57);

    *(v18 + 4) = v46;
    _os_log_impl(&dword_1D331A000, v16, v41, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1D38B81C0](v42, -1, -1);
LABEL_21:
    MEMORY[0x1D38B81C0](v18, -1, -1);
  }

  else
  {
  }

LABEL_25:

  return 0;
}

char *sub_1D33CAA04()
{
  v1 = v0;
  [*(v0 + 56) blockUntilConnected];
  v2 = *(v0 + 48);
  if (!v2 || (v3 = objc_opt_self(), v4 = v2, v5 = [v3 facetimeService], v6 = objc_msgSend(v4, sel_accountsForService_, v5), v4, v5, !v6))
  {
    if (qword_1EC760988 == -1)
    {
LABEL_17:
      v14 = sub_1D33DE464();
      __swift_project_value_buffer(v14, qword_1EC762118);

      v15 = sub_1D33DE444();
      v16 = sub_1D33DEAF4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43 = v18;
        *v17 = 136315138;
        v19 = *(v1 + 48);
        if (v19)
        {
          v20 = objc_opt_self();
          v21 = v19;
          v22 = [v20 facetimeService];
          v23 = [v21 accountsForService_];

          if (v23)
          {
            sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
            sub_1D33DE8B4();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E20, qword_1D33E4540);
          sub_1D33DECE4();

          v38 = sub_1D33DE804();
          v37 = v39;
        }

        else
        {
          v37 = 0xE300000000000000;
          v38 = 7104878;
        }

        v40 = sub_1D3328B48(v38, v37, &v43);

        *(v17 + 4) = v40;
        _os_log_impl(&dword_1D331A000, v15, v16, "Could not find any facetime service IMAccount in IMAccountController %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1D38B81C0](v18, -1, -1);
        MEMORY[0x1D38B81C0](v17, -1, -1);
      }

      return MEMORY[0x1E69E7CD0];
    }

LABEL_46:
    swift_once();
    goto LABEL_17;
  }

  sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
  v7 = sub_1D33DE8B4();

  v42 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v8 = sub_1D33DEE14();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D38B75D0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 registrationStatus] == 5)
      {
        sub_1D33DEF84();
        v1 = *(v42 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      else
      {
      }

      ++v10;
      if (v13 == v8)
      {
        v24 = v42;
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_49:

    v41 = sub_1D3367844(v9);

    return v41;
  }

  v25 = sub_1D33DEE14();
  if (!v25)
  {
    goto LABEL_49;
  }

LABEL_26:
  result = sub_1D334A9E0(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D38B75D0](v27, v24);
      }

      else
      {
        if (v27 >= *(v24 + 16))
        {
          goto LABEL_45;
        }

        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      result = [v29 strippedLogin];
      if (!result)
      {
        goto LABEL_51;
      }

      v31 = result;
      sub_1D33DE7B4();

      v1 = sub_1D33DE7F4();
      v33 = v32;

      v35 = *(v9 + 16);
      v34 = *(v9 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D334A9E0((v34 > 1), v35 + 1, 1);
      }

      *(v9 + 16) = v35 + 1;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v1;
      *(v36 + 40) = v33;
      ++v27;
      if (v28 == v25)
      {
        goto LABEL_49;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_1D33CAF5C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E10, &qword_1D33E5440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E50E0;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001D33E7AE0;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001D33E59C0;
  strcpy((inited + 96), "callerHandle");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = v4;
  *(inited + 120) = v3;
  *(inited + 128) = 0x6E65697069636572;
  *(inited + 136) = 0xEF656C646E614874;
  *(inited + 144) = v6;
  *(inited + 152) = v5;

  v8 = sub_1D336C284(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E18, &unk_1D33E5448);
  swift_arrayDestroy();
  return v8;
}

void ReportSpamManager.reportFaceTimeCallSpam<A>(call:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1D33CAA04();
  v8 = sub_1D335DDB8(v7);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      (*(a3 + 80))(v51, v11, v10, Strong, v4[3], a2, a3);

      v53[10] = v51[10];
      v53[11] = v51[11];
      v54 = v52;
      v53[6] = v51[6];
      v53[7] = v51[7];
      v53[8] = v51[8];
      v53[9] = v51[9];
      v53[2] = v51[2];
      v53[3] = v51[3];
      v53[4] = v51[4];
      v53[5] = v51[5];
      v53[0] = v51[0];
      v53[1] = v51[1];
      v13 = sub_1D33C9264();
      if (v13)
      {
        v14 = v13;

        sub_1D33CBCE8(v53);
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v15 = sub_1D33DE464();
        __swift_project_value_buffer(v15, qword_1EC761DC8);

        v16 = sub_1D33DE444();
        v17 = sub_1D33DEAF4();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v50 = v19;
          *v18 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
          v20 = sub_1D33DE804();
          v22 = sub_1D3328B48(v20, v21, &v50);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_1D331A000, v16, v17, "ReportSpamManager: report spam, model.dictionary: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
          MEMORY[0x1D38B81C0](v19, -1, -1);
          MEMORY[0x1D38B81C0](v18, -1, -1);
        }

        v23 = v4[4];
        v24 = v4[5];
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 8);
        swift_unknownObjectRetain();
        LOBYTE(v24) = v26(v14, ObjectType, v24);
        swift_unknownObjectRelease();

        v27 = sub_1D33DE444();
        v28 = sub_1D33DEAF4();
        v29 = os_log_type_enabled(v27, v28);
        if (v24)
        {
          if (v29)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = "ReportSpamManager: report spam was sent successfully";
LABEL_28:
            _os_log_impl(&dword_1D331A000, v27, v28, v31, v30, 2u);
            MEMORY[0x1D38B81C0](v30, -1, -1);
          }
        }

        else if (v29)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          v31 = "ReportSpamManager: report spam was rejected for some reason";
          goto LABEL_28;
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      sub_1D33CBCE8(v53);
    }

    else
    {
    }

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v40 = sub_1D33DE464();
    __swift_project_value_buffer(v40, qword_1EC761DC8);

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v53[0] = v44;
      *v43 = 136315138;
      v45 = sub_1D33DEA64();
      v47 = v46;

      v48 = sub_1D3328B48(v45, v47, v53);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1D331A000, v41, v42, "Could not generates spamReportDict for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1D38B81C0](v44, -1, -1);
      MEMORY[0x1D38B81C0](v43, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v32 = sub_1D33DE464();
    __swift_project_value_buffer(v32, qword_1EC761DC8);

    oslog = sub_1D33DE444();
    v33 = sub_1D33DEAF4();

    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v53[0] = v35;
      *v34 = 136315138;
      v36 = sub_1D33DEA64();
      v38 = v37;

      v39 = sub_1D3328B48(v36, v38, v53);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1D331A000, oslog, v33, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1D38B81C0](v35, -1, -1);
      MEMORY[0x1D38B81C0](v34, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ReportSpamManager.deinit()
{
  sub_1D3323A28(v0 + 16);
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReportSpamManager.__deallocating_deinit()
{
  sub_1D3323A28(v0 + 16);
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D33CB7C8()
{
  sub_1D33DF284();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33CB83C()
{
  sub_1D33DF284();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33CB890@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D33DF144();

  *a2 = v5 != 0;
  return result;
}

id sub_1D33CB904()
{
  v1 = *(v0 + 16);
  v2 = sub_1D33DE6E4();
  v3 = [v1 reportSpamMessage_];

  return v3;
}

unint64_t _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1;
  v4 = sub_1D33678DC(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
LABEL_15:
    swift_once();
  }

  sub_1D33A6A18(v4);
  v7 = v6;

  v8 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 16);
LABEL_3:
  v10 = 56 * v8 + 32;
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v8;
    v11 = *(v7 + v10);
    v10 += 56;
    if (v11)
    {
      v12 = v11;
      MEMORY[0x1D38B6F20]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v15;
      goto LABEL_3;
    }
  }

  if (v4 >> 62)
  {
    if (sub_1D33DEE14())
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

  return v4;
}

void *sub_1D33CBB88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[6] = [objc_opt_self() sharedInstance];
  a4[7] = [objc_opt_self() sharedController];
  a4[4] = a1;
  a4[5] = a6;
  swift_beginAccess();
  a4[3] = a3;
  swift_unknownObjectWeakAssign();
  a4[8] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  return a4;
}

void *sub_1D33CBC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_1D33CBB88(a1, a2, a3, v11, a5, a6);
}

unint64_t sub_1D33CBD1C()
{
  result = qword_1EC761DF0;
  if (!qword_1EC761DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DF0);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D33CBE50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D33CBE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D33CBF2C(uint64_t a1, int a2)
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

uint64_t sub_1D33CBF74(uint64_t result, int a2, int a3)
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

unint64_t sub_1D33CBFE4()
{
  result = qword_1EC761E00;
  if (!qword_1EC761E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761E00);
  }

  return result;
}

uint64_t RequestsHandler.isItemUnknownParticipant(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  v19 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1D33DEE14();
    if (v3)
    {
LABEL_3:
      v18 = v1;
      v4 = 0;
      v1 = &selRef_setOriginatingUIType_;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D38B75D0](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v5 hasBeenPersisted])
        {
          sub_1D33DEF84();
          v8 = *(v19 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != v3);
      v1 = v18;
      v9 = v19;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v9 & 0x4000000000000000) == 0)
    {
      v10 = *(v9 + 16);

      if (v10)
      {
        return 0;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  v17 = sub_1D33DEE14();

  if (v17)
  {
    return 0;
  }

LABEL_21:
  if (*(v1 + 32) == 4)
  {
    v12 = v1[2];
    v11 = v1[3];
    v13 = *v1;
    v14 = v1[1];
    v15 = sub_1D33CF2B0(*v1);
    sub_1D332B1DC(v13, v14, v12, v11, 4u);
    return v15 & 1;
  }

  return 0;
}

uint64_t RequestsHandler.isRequestItem(_:handleCacheMiss:)(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  v4 = *(a1 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_1D33DEE14();
    if (v5)
    {
LABEL_3:
      v16 = v3;
      v17 = v2;
      v6 = 0;
      v2 = &selRef_setOriginatingUIType_;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D38B75D0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v7 hasBeenPersisted])
        {
          sub_1D33DEF84();
          v9 = *(v18 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v6;
      }

      while (v3 != v5);
      v10 = v18;
      LOBYTE(v2) = v17;
      v3 = v16;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v10 & 0x4000000000000000) == 0)
    {
      v11 = *(v10 + 16);

      if (!v11)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

LABEL_22:
  v13 = sub_1D33DEE14();

  if (v13)
  {
    return 0;
  }

LABEL_23:
  if ((*(v3 + 32) | 2) != 6)
  {
    return 0;
  }

  v14 = *v3;
  v15 = sub_1D33D0BE0(v14, v2 & 1);

  return v15 & 1;
}

uint64_t sub_1D33CC3C0(uint64_t a1)
{
  v55 = sub_1D33DE344();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v39 - v7;
  v52 = sub_1D33DE374();
  v56 = *(v52 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D33DEE14();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v66 = MEMORY[0x1E69E7CC0];
  sub_1D334B408(0, v11 & ~(v11 >> 63), 0);
  v12 = v66;
  if (v57)
  {
    result = sub_1D33DEDB4();
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    result = sub_1D33DED74();
    v14 = *(a1 + 36);
  }

  v63 = result;
  v64 = v14;
  v65 = v57 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v39 = v1;
    v16 = 0;
    v49 = (v3 + 104);
    v48 = (v3 + 16);
    v47 = (v3 + 8);
    v46 = v56 + 32;
    v44 = *MEMORY[0x1E696ED80];
    v41 = a1 + 56;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = *MEMORY[0x1E696EDA0];
    if (a1 < 0)
    {
      v17 = a1;
    }

    v43 = v17;
    v42 = *MEMORY[0x1E696ED90];
    v40 = a1 + 64;
    v50 = v11;
    v51 = a1;
    while (v16 < v11)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_41;
      }

      v60 = v63;
      v61 = v12;
      v59 = v64;
      v58 = v65;
      sub_1D33D356C(v63, v64, v65, a1, &qword_1EDEBEE90, 0x1E6993578);
      v21 = v20;
      v22 = [v20 type];
      v23 = v45;
      if (v22 >= 2)
      {
        v23 = v44;
        if (v22 != 2)
        {
          v23 = v42;
          if (v22 != 3)
          {
            v23 = v44;
          }
        }
      }

      v24 = v53;
      v25 = v55;
      (*v49)(v53, v23, v55);
      (*v48)(v54, v24, v25);
      v26 = [v21 value];
      sub_1D33DE7B4();

      sub_1D33DE354();
      (*v47)(v24, v25);

      v12 = v61;
      v66 = v61;
      v28 = *(v61 + 16);
      v27 = *(v61 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D334B408(v27 > 1, v28 + 1, 1);
        v12 = v66;
      }

      *(v12 + 16) = v28 + 1;
      (*(v56 + 32))(v12 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v28, v10, v52);
      if (v57)
      {
        v11 = v50;
        a1 = v51;
        result = v60;
        if (!v58)
        {
          goto LABEL_46;
        }

        if (sub_1D33DEDD4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761FB0, &qword_1D33E5620);
        v18 = sub_1D33DEA84();
        sub_1D33DEE84();
        result = v18(v62, 0);
        if (v16 == v11)
        {
LABEL_38:
          sub_1D335665C(v63, v64, v65);
          return v12;
        }
      }

      else
      {
        v11 = v50;
        a1 = v51;
        result = v60;
        if (v58)
        {
          goto LABEL_47;
        }

        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v29 = 1 << *(v51 + 32);
        if (v60 >= v29)
        {
          goto LABEL_42;
        }

        v30 = v60 >> 6;
        v31 = *(v41 + 8 * (v60 >> 6));
        if (((v31 >> v60) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (*(v51 + 36) != v59)
        {
          goto LABEL_44;
        }

        v32 = v31 & (-2 << (v60 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v60 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v30 << 6;
          v34 = v30 + 1;
          v35 = (v40 + 8 * v30);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_1D335665C(v60, v59, 0);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_37;
            }
          }

          result = sub_1D335665C(v60, v59, 0);
        }

LABEL_37:
        v38 = *(a1 + 36);
        v63 = v29;
        v64 = v38;
        v65 = 0;
        if (v16 == v11)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D33CC9C8(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1D3359DD4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1D33CCABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1D33DEE14();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D33D2C88(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D33D2EC8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D33CCBC4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D33DEE14();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1D33DEE14();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D33D2C88(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D33CCCBC(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D33DEE14();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_1D33DEE14();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1D33D2C88(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_1D33D4080(&v36, (v3 + 8 * v14 + 32), v15, v8, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_1D331FEEC();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_1D33DEE54())
    {
      goto LABEL_11;
    }

    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1D33DE8D4();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id sub_1D33CD05C()
{
  result = [objc_allocWithZone(type metadata accessor for RequestsHandler()) init];
  qword_1EDEBFC50 = result;
  return result;
}

id static RequestsHandler.shared.getter()
{
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBFC50;

  return v1;
}

uint64_t sub_1D33CD0E8(uint64_t a1, char **a2)
{
  v41 = a2;
  v3 = sub_1D33DE374();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v9;
  v10 = *a1;
  v11 = *a1 + 64;
  v12 = 1 << *(*a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(*a1 + 64);
  v15 = (v12 + 63) >> 6;
  v43 = v4 + 32;
  v44 = v4 + 16;
  v42 = (v4 + 8);

  for (i = 0; v14; *(v33 + 5) = v34)
  {
LABEL_10:
    while (1)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v45;
      (*(v4 + 16))(v45, v10[6] + *(v4 + 72) * (v19 | (i << 6)), v3);
      (*(v4 + 32))(v8, v20, v3);
      if (v10[2])
      {
        v21 = sub_1D33B9198(v8);
        if ((v22 & 1) != 0 && *(v10[7] + v21) == 1)
        {
          break;
        }
      }

      result = (*v42)(v8, v3);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v37 = v3;
    v23 = sub_1D33DE364();
    v38 = v24;
    v39 = v23;
    v25 = v41;
    v26 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1D3359DD4(0, *(v26 + 2) + 1, 1, v26);
      *v41 = v28;
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    v40 = v30 + 1;
    v3 = v37;
    if (v30 >= v29 >> 1)
    {
      v35 = sub_1D3359DD4((v29 > 1), v40, 1, v28);
      *v41 = v35;
    }

    result = (*v42)(v8, v3);
    v31 = *v41;
    v32 = v39;
    *(v31 + 2) = v40;
    v33 = &v31[16 * v30];
    v34 = v38;
    *(v33 + 4) = v32;
  }

LABEL_6:
  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v11 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_1D33CD3DC()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController);
  }

  else
  {
    v4 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:1 options:7];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D33CD480(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1D33D66D0(a2 & 1);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1D33CD4E0()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D33CD524()
{
  result = sub_1D33DE784();
  qword_1EC762110 = result;
  return result;
}

uint64_t sub_1D33CD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CD5F8, 0, 0);
}

uint64_t sub_1D33CD5F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8AF8]) init];
  v0[5] = v3;
  v4 = sub_1D33DE9B4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1D33DE974();
  v5 = v3;
  v6 = v2;
  v7 = sub_1D33DE964();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  v10 = sub_1D333E39C(0, 0, v1, &unk_1D33E55E0, v8);
  v0[6] = v10;
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  v0[7] = v12;
  v13 = sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
  *v12 = v0;
  v12[1] = sub_1D33CD7A0;
  v14 = v0[2];

  return MEMORY[0x1EEE6DA40](v14, v10, v13);
}

uint64_t sub_1D33CD7A0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D33CD8B8, 0, 0);
}

uint64_t sub_1D33CD8B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D33CD920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D33DE974();
  v5[5] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D33CD9BC, v7, v6);
}

uint64_t sub_1D33CD9BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  [v3 setDelegate_];
  v5 = *(v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider);
  *(v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider) = v3;
  v6 = v3;

  *v4 = v6;
  v9 = v0[1];
  v7 = v6;

  return v9();
}

uint64_t sub_1D33CDB9C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v58 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v56 - v6;
  v7 = sub_1D33DE374();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - v12;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = &v56 - v12;
  if (v14)
  {
    do
    {
      v15 = 0;
      v16 = 0;
      v62 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = a1 & 0xC000000000000001;
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v63)
        {
          v18 = MEMORY[0x1D38B75D0](v15, a1);
        }

        else
        {
          if (v15 >= *(v62 + 16))
          {
            goto LABEL_29;
          }

          v18 = *(a1 + 8 * v15 + 32);
        }

        v13 = v18;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if ([v18 isIncoming] && (v20 = objc_msgSend(v13, sel_remoteParticipantHandles)) != 0)
        {
          v21 = v20;
          v61 = v16;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v22 = sub_1D33DEA54();

          v16 = v61;
          v23 = sub_1D33CC3C0(v22);
        }

        else
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        v13 = *(v23 + 16);
        v24 = *(v17 + 2);
        v25 = &v13[v24];
        if (__OFADD__(v24, v13))
        {
          goto LABEL_30;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v25 <= *(v17 + 3) >> 1)
        {
          if (*(v23 + 16))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v24 <= v25)
          {
            v27 = &v13[v24];
          }

          else
          {
            v27 = v24;
          }

          v17 = sub_1D3359B40(isUniquelyReferenced_nonNull_native, v27, 1, v17);
          if (*(v23 + 16))
          {
LABEL_23:
            if ((*(v17 + 3) >> 1) - *(v17 + 2) < v13)
            {
              goto LABEL_32;
            }

            v28 = (*(v66 + 80) + 32) & ~*(v66 + 80);
            v29 = *(v66 + 72);
            swift_arrayInitWithCopy();

            if (v13)
            {
              v30 = *(v17 + 2);
              v31 = __OFADD__(v30, v13);
              v32 = &v13[v30];
              if (v31)
              {
                goto LABEL_33;
              }

              *(v17 + 2) = v32;
            }

            goto LABEL_5;
          }
        }

        if (v13)
        {
          goto LABEL_31;
        }

LABEL_5:
        ++v15;
        v13 = v65;
        if (v19 == v14)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_1D33DEE14();
      v14 = result;
      v65 = v13;
    }

    while (result);
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v63 = *(v17 + 2);
  if (v63)
  {
    v33 = 0;
    v34 = v59 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
    v62 = v66 + 16;
    v60 = (v66 + 8);
    v35 = (v66 + 32);
    v36 = MEMORY[0x1E69E7CC0];
    v61 = (v66 + 32);
    while (v33 < *(v17 + 2))
    {
      v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v38 = *(v66 + 72);
      (*(v66 + 16))(v13, &v17[v37 + v38 * v33], v67);
      os_unfair_lock_lock(v34);
      if (*(*(v34 + 8) + 16) && (sub_1D33B9198(v13), (v39 & 1) != 0))
      {
        os_unfair_lock_unlock(v34);
        result = (*v60)(v13, v67);
      }

      else
      {
        os_unfair_lock_unlock(v34);
        v40 = *v35;
        (*v35)(v64, v13, v67);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v36;
        if ((v41 & 1) == 0)
        {
          sub_1D334B408(0, *(v36 + 16) + 1, 1);
          v36 = v68;
        }

        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D334B408(v42 > 1, v43 + 1, 1);
          v36 = v68;
        }

        *(v36 + 16) = v43 + 1;
        v44 = v36 + v37 + v43 * v38;
        v35 = v61;
        result = v40(v44, v64, v67);
        v13 = v65;
      }

      if (v63 == ++v33)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_49:

  v45 = sub_1D33676A8(v36);

  v46 = *(v45 + 16);
  if (!v46)
  {

    v47 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v47 = sub_1D332FF34(*(v45 + 16), 0, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
  v48 = sub_1D33D3DBC(&v68, (v47 + ((*(v66 + 80) + 32) & ~*(v66 + 80))), v46, v45, MEMORY[0x1E696EDC8]);
  result = sub_1D331FEEC();
  if (v48 == v46)
  {
    if (*(v47 + 16))
    {
LABEL_52:
      v49 = sub_1D33DE9B4();
      v50 = v56;
      (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D33DE974();

      v52 = v58;

      v53 = sub_1D33DE964();
      v54 = swift_allocObject();
      v55 = MEMORY[0x1E69E85E0];
      v54[2] = v53;
      v54[3] = v55;
      v54[4] = v51;
      v54[5] = v47;
      v54[6] = v57;
      v54[7] = v52;

      sub_1D333DD88(0, 0, v50, &unk_1D33E54A0, v54);
    }

LABEL_54:
    v57(result);
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1D33CE284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F98, &qword_1D33E55F0);
  v7[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  sub_1D33DE974();
  v7[15] = sub_1D33DE964();
  v14 = sub_1D33DE914();
  v7[16] = v14;
  v7[17] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D33CE404, v14, v13);
}

uint64_t sub_1D33CE404()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = sub_1D33DE464();
    v0[19] = __swift_project_value_buffer(v5, qword_1EDEC1480);

    v6 = sub_1D33DE444();
    v7 = sub_1D33DEAF4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[7];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = *(v9 + 16);

      _os_log_impl(&dword_1D331A000, v6, v7, "Querying trust scores for handle count %{public}ld", v10, 0xCu);
      MEMORY[0x1D38B81C0](v10, -1, -1);
    }

    else
    {
      v18 = v0[7];
    }

    v20 = v0[13];
    v19 = v0[14];
    v21 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling), *(v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling + 24));
    v22 = sub_1D33DDFE4();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = sub_1D33DE044();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    v24 = *v21;
    v25 = *(MEMORY[0x1E69958B0] + 4);
    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_1D33CE6D4;
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[7];

    return MEMORY[0x1EEDF61E8](v29, v27, v28);
  }

  else
  {
    v11 = v0[15];

    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = v0[10];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1D33CE6D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 104);
  v8 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  sub_1D331E880(v7, &qword_1EC761FA0, &qword_1D33E55F8);
  sub_1D331E880(v6, &qword_1EC761FA8, &qword_1D33E5600);
  v9 = *(v3 + 136);
  v10 = *(v3 + 128);
  if (v1)
  {
    v11 = sub_1D33CED40;
  }

  else
  {
    v11 = sub_1D33CE878;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

unint64_t sub_1D33CE878()
{
  v1 = v0[19];
  v2 = v0[15];

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "Finished querying trust scores", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v6 = v0[21];
  v7 = v0[18];
  v59 = v0[11];

  v8 = v6 + 64;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v6 + 64);
  lock = (v7 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown);
  v12 = (63 - v10) >> 6;
  v60 = v6;

  v14 = 0;
  v57 = v12;
  v58 = v6 + 64;
  v63 = v0;
  while (v11)
  {
LABEL_16:
    v19 = v0[12];
    v20 = __clz(__rbit64(v11)) | (v14 << 6);
    v21 = *(v60 + 48);
    v22 = sub_1D33DE374();
    v23 = *(v22 - 8);
    v61 = *(v23 + 72);
    v62 = *(v23 + 16);
    v62(v19, v21 + v61 * v20, v22);
    *(v19 + *(v59 + 48)) = *(*(v60 + 56) + 8 * v20);
    os_unfair_lock_lock(lock);
    v24 = sub_1D33DDFF4();
    v25 = sub_1D33DDFF4();
    v26 = *&lock[2]._os_unfair_lock_opaque;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *&lock[2]._os_unfair_lock_opaque;
    *&lock[2]._os_unfair_lock_opaque = 0x8000000000000000;
    result = sub_1D33B9198(v19);
    v30 = v28[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v34 = v29;
    if (v28[3] < v33)
    {
      v35 = v63[12];
      sub_1D3396A2C(v33, isUniquelyReferenced_nonNull_native);
      result = sub_1D33B9198(v35);
      if ((v34 & 1) != (v36 & 1))
      {

        return sub_1D33DF1E4();
      }

LABEL_21:
      v37 = v24 == v25;
      if (v34)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v43 = result;
    sub_1D33994C4();
    result = v43;
    v37 = v24 == v25;
    if (v34)
    {
LABEL_6:
      v15 = v37;
      *(v28[7] + result) = v15;
      v0 = v63;
      goto LABEL_10;
    }

LABEL_22:
    v38 = v37;
    v0 = v63;
    v39 = v63[12];
    v28[(result >> 6) + 8] |= 1 << result;
    v40 = result;
    result = (v62)(v28[6] + result * v61, v39, v22);
    *(v28[7] + v40) = v38;
    v41 = v28[2];
    v32 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v32)
    {
      goto LABEL_37;
    }

    v28[2] = v42;
LABEL_10:
    v11 &= v11 - 1;
    v16 = v0[12];
    v17 = *&lock[2]._os_unfair_lock_opaque;
    *&lock[2]._os_unfair_lock_opaque = v28;

    os_unfair_lock_unlock(lock);
    result = sub_1D331E880(v16, &qword_1EC761F98, &qword_1D33E55F0);
    v12 = v57;
    v8 = v58;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v18 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v18);
    ++v14;
    if (v11)
    {
      v14 = v18;
      goto LABEL_16;
    }
  }

  v44 = v0[21];

  v45 = v0[18];
  v46 = v0[9];
  v47 = v0[10];
  v48 = v0[8];
  v49 = sub_1D33DE9B4();
  (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v48;
  v50[5] = v46;
  v50[6] = v45;

  v51 = v45;
  sub_1D3387F00(0, 0, v47, &unk_1D33E5610, v50);

  sub_1D331E880(v47, &unk_1EC7610E0, &qword_1D33E16C0);
  v53 = v0[13];
  v52 = v0[14];
  v54 = v0[12];
  v55 = v0[10];

  v56 = v0[1];

  return v56();
}

uint64_t sub_1D33CED40()
{
  v29 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[15];

  v4 = v1;
  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAD4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v5, v6, "Failed to batch fetch trust scores with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
    v14 = v0[22];
  }

  v15 = v0[18];
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  v19 = sub_1D33DE9B4();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;

  v21 = v15;
  sub_1D3387F00(0, 0, v17, &unk_1D33E5610, v20);

  sub_1D331E880(v17, &unk_1EC7610E0, &qword_1D33E16C0);
  v23 = v0[13];
  v22 = v0[14];
  v24 = v0[12];
  v25 = v0[10];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D33CEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D33DDAE4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CF090, 0, 0);
}

uint64_t sub_1D33CF090()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate) = 1;
  if (v3 != 1)
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1EC760978 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = qword_1EC762110;
    sub_1D33DDAC4();
    v9 = sub_1D33DDAB4();
    (*(v6 + 8))(v5, v7);
    [v4 postNotification_];
  }

  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

id sub_1D33CF1E8()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v4 setIncludeLocalContacts_];
    [v4 setIncludeAcceptedIntroductions_];
    v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D33CF2B0(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v3 = sub_1D33DEA54();

  v4 = sub_1D335DC7C(v3);

  if (!v4)
  {
    return 1;
  }

  v5 = sub_1D33CF1E8();
  v6 = [v4 value];
  if (!v6)
  {
    sub_1D33DE7B4();
    v6 = sub_1D33DE784();
  }

  v7 = [v5 contactForDestinationId_];

  if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D33CF3E0(char a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v12 = sub_1D33DE464();
  __swift_project_value_buffer(v12, qword_1EDEC1480);
  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAF4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_1D331A000, v13, v14, "queryRequests unreadOnly: %{BOOL}d...", v15, 8u);
    MEMORY[0x1D38B81C0](v15, -1, -1);
  }

  v16 = v4[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride];
  if (v16 != 2)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v19 = sub_1D33DE9B4();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v4;
    *(v20 + 40) = a1 & 1;
    *(v20 + 48) = a2;
    *(v20 + 56) = a3;
    v21 = v4;

    sub_1D3387F00(0, 0, v11, &unk_1D33E54B0, v20);

    return sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  if (([*&v4[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags] junkFilteringEnabled] & 1) != 0 && objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a1)
  {
    v17 = *&v4[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount];
    v22[1] = 0;
    sub_1D33DE4E4();
  }

  return a2(0, 0);
}

uint64_t sub_1D33CF67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 232) = a5;
  *(v7 + 56) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F98, &qword_1D33E55F0);
  *(v7 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v12 = sub_1D33DE344();
  *(v7 + 112) = v12;
  v13 = *(v12 - 8);
  *(v7 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v15 = sub_1D33DE374();
  *(v7 + 144) = v15;
  v16 = *(v15 - 8);
  *(v7 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CF870, 0, 0);
}

uint64_t sub_1D33CF870()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount;
  *(v0 + 184) = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount;
  if (*(v1 + v2))
  {
    if (qword_1EDEBFD70 == -1)
    {
LABEL_3:
      v3 = sub_1D33DE464();
      __swift_project_value_buffer(v3, qword_1EDEC1480);
      v4 = sub_1D33DE444();
      v5 = sub_1D33DEAF4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D331A000, v4, v5, "Ignoring fetchRequestCount, already have query in progress", v6, 2u);
        MEMORY[0x1D38B81C0](v6, -1, -1);
      }

      v7 = *(v0 + 232);

      if (v7 == 1)
      {
        v8 = *(v0 + 64);
        v9 = *(v0 + 72);
        v10 = *(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
        sub_1D33DE4F4();
        v8(*(v0 + 48), 0);
      }

LABEL_28:
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v36 = *(v0 + 160);
      v38 = *(v0 + 128);
      v37 = *(v0 + 136);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 88);

      v42 = *(v0 + 8);

      return v42();
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v11 = *(v0 + 232);
  *(v1 + v2) = 1;
  v12 = sub_1D33CD3DC();
  v108 = v0;
  v13 = *(v0 + 56);
  if (v11 == 1)
  {
    v14 = sub_1D33CD460();
  }

  else
  {
    v14 = sub_1D33CD470();
  }

  v15 = v14;
  v16 = [v12 callsWithPredicate:v14 limit:objc_msgSend(*(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController) offset:sel_callHistoryControllerCallHistoryFetchLimit) batchSize:{0, 0x7FFFFFFFFFFFFFFFLL}];

  if (!v16)
  {
    if (*(v0 + 232))
    {
      v32 = *(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
      *(v0 + 16) = 0;
      sub_1D33DE4E4();
    }

    v33 = *(v0 + 72);
    (*(v0 + 64))(0, 0);
    *(v1 + v2) = 0;
    goto LABEL_28;
  }

  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v17 = sub_1D33DE8B4();

  v112 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    v18 = sub_1D33DEE14();
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_35:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_35;
  }

LABEL_13:
  v19 = 0;
  v0 = v17 & 0xC000000000000001;
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  v21 = &off_1E843B000;
  v22 = &off_1E843B000;
  do
  {
    if (v0)
    {
      v23 = MEMORY[0x1D38B75D0](v19, v17);
    }

    else
    {
      if (v19 >= *(v20 + 16))
      {
        goto LABEL_32;
      }

      v23 = *(v17 + 8 * v19 + 32);
    }

    v24 = v23;
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (![v23 v21[462]] || (objc_msgSend(v24, v22[497]) & 1) != 0)
    {
    }

    else
    {
      sub_1D33DEF84();
      v26 = v0;
      v27 = v18;
      v28 = v17;
      v29 = v21;
      v30 = *(v112 + 16);
      sub_1D33DEFB4();
      v21 = v29;
      v17 = v28;
      v18 = v27;
      v0 = v26;
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v22 = &off_1E843B000;
    }

    ++v19;
  }

  while (v25 != v18);
  v31 = v112;
LABEL_36:

  if (v31 < 0 || (v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  v44 = *(v31 + 16);
  if (v44)
  {
LABEL_39:
    v45 = 0;
    v46 = v108[15];
    v111 = v31 & 0xC000000000000001;
    v110 = v31 + 32;
    v96 = *MEMORY[0x1E696ED80];
    v101 = (v46 + 104);
    v100 = *MEMORY[0x1E696EDA0];
    v98 = (v46 + 8);
    v99 = (v46 + 16);
    v109 = MEMORY[0x1E69E7CC0];
    v102 = v108[19];
    v103 = v31;
    v106 = (v102 + 32);
    v107 = v44;
    v97 = *MEMORY[0x1E696ED90];
    while (1)
    {
      if (v111)
      {
        v47 = MEMORY[0x1D38B75D0](v45, v31);
      }

      else
      {
        if (v45 >= *(v31 + 16))
        {
          goto LABEL_67;
        }

        v47 = *(v110 + 8 * v45);
      }

      v48 = v47;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v44 = sub_1D33DEE14();
        if (!v44)
        {
          break;
        }

        goto LABEL_39;
      }

      v50 = [v47 remoteParticipantHandles];
      if (v50)
      {
        v51 = v50;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v52 = sub_1D33DEA54();

        v53 = v52 & 0xC000000000000001;
        if ((v52 & 0xC000000000000001) != 0)
        {
          v54 = sub_1D33DEDB4();
          v56 = v55;
          v57 = sub_1D33DEE74();
          v59 = v58;
          v60 = MEMORY[0x1D38B7470](v54, v56, v57, v58);
          sub_1D335665C(v57, v59, 1);
          if ((v60 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v61 = 0;
          v62 = (v52 + 56);
          v54 = 1 << *(v52 + 32);
          v63 = (v54 + 63) >> 6;
          while (1)
          {
            v65 = *v62++;
            v64 = v65;
            if (v65)
            {
              break;
            }

            v61 -= 64;
            if (!--v63)
            {
              v56 = *(v52 + 36);
              goto LABEL_55;
            }
          }

          v66 = __clz(__rbit64(v64));
          v56 = *(v52 + 36);
          if (v66 - v54 != v61)
          {
            v54 = v66 - v61;
LABEL_57:
            sub_1D33D356C(v54, v56, v53 != 0, v52, &qword_1EDEBEE90, 0x1E6993578);
            v68 = v67;
            sub_1D335665C(v54, v56, v53 != 0);

            v69 = [v68 type];
            v70 = v100;
            if (v69 >= 2)
            {
              v70 = v97;
              if (v69 != 3)
              {
                v70 = v96;
              }
            }

            v71 = v108[21];
            v72 = v108[17];
            v104 = v108[18];
            v105 = v108[22];
            v73 = v108[16];
            v74 = v108[14];
            (*v101)(v72, v70, v74);
            (*v99)(v73, v72, v74);
            v75 = [v68 value];
            sub_1D33DE7B4();

            sub_1D33DE354();
            (*v98)(v72, v74);
            v76 = *v106;
            (*v106)(v105, v71, v104);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = sub_1D3359B40(0, *(v109 + 2) + 1, 1, v109);
            }

            v44 = v107;
            v78 = *(v109 + 2);
            v77 = *(v109 + 3);
            if (v78 >= v77 >> 1)
            {
              v109 = sub_1D3359B40(v77 > 1, v78 + 1, 1, v109);
            }

            v79 = v108[22];
            v80 = v108[18];
            *(v109 + 2) = v78 + 1;
            v76(&v109[((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v78], v79, v80);
            v31 = v103;
            goto LABEL_41;
          }
        }

LABEL_55:
        sub_1D335665C(v54, v56, v53 != 0);

        v44 = v107;
      }

      else
      {
      }

LABEL_41:
      if (v45 == v44)
      {
        goto LABEL_70;
      }
    }
  }

  v109 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v108[24] = v109;

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v81 = sub_1D33DE464();
  v108[25] = __swift_project_value_buffer(v81, qword_1EDEC1480);
  v82 = sub_1D33DE444();
  v83 = sub_1D33DEAF4();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1D331A000, v82, v83, "RequestsHandler about to query into CTS", v84, 2u);
    MEMORY[0x1D38B81C0](v84, -1, -1);
  }

  v85 = v108[12];
  v86 = v108[13];
  v87 = v108[7];

  v88 = __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling), *(v87 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling + 24));
  v89 = sub_1D33DDFE4();
  (*(*(v89 - 8) + 56))(v86, 1, 1, v89);
  v90 = sub_1D33DE044();
  (*(*(v90 - 8) + 56))(v85, 1, 1, v90);
  v91 = *v88;
  v92 = *(MEMORY[0x1E69958B0] + 4);
  v93 = swift_task_alloc();
  v108[26] = v93;
  *v93 = v108;
  v93[1] = sub_1D33D0294;
  v95 = v108[12];
  v94 = v108[13];

  return MEMORY[0x1EEDF61E8](v109, v94, v95);
}

uint64_t sub_1D33D0294(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[26];
  v12 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[24];
    v8 = v3 + 12;
    v6 = v3[12];
    v7 = v8[1];

    sub_1D331E880(v6, &qword_1EC761FA0, &qword_1D33E55F8);
    sub_1D331E880(v7, &qword_1EC761FA8, &qword_1D33E5600);
    v9 = sub_1D33D09C4;
  }

  else
  {
    v10 = v3[13];
    sub_1D331E880(v3[12], &qword_1EC761FA0, &qword_1D33E55F8);
    sub_1D331E880(v10, &qword_1EC761FA8, &qword_1D33E5600);
    v9 = sub_1D33D0414;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

unint64_t sub_1D33D0414()
{
  v1 = *(v0 + 200);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "CTS query finished", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 152);
  v82 = *(v0 + 80);
  v7 = *(v0 + 56);

  v8 = v5 + 64;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = v7 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
  v13 = (63 - v10) >> 6;
  v83 = v6;

  v15 = 0;
  v84 = 0;
  v80 = v5 + 64;
  v81 = v5;
  v78 = v12;
  v79 = v13;
  while (v11)
  {
LABEL_12:
    v18 = *(v0 + 88);
    v19 = __clz(__rbit64(v11)) | (v15 << 6);
    v20 = *(v83 + 72);
    v21 = *(v83 + 16);
    v21(v18, *(v5 + 48) + v20 * v19, *(v0 + 144));
    *(v18 + *(v82 + 48)) = *(*(v5 + 56) + 8 * v19);
    os_unfair_lock_lock(v12);
    v22 = *(v12 + 8);
    v85 = v20;
    v86 = v21;
    if (*(v22 + 16) && (v23 = sub_1D33B9198(*(v0 + 88)), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + v23);
    }

    else
    {
      v25 = 2;
    }

    v26 = *(v0 + 88);
    v27 = sub_1D33DDFF4();
    v28 = sub_1D33DDFF4();
    v29 = *(v12 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v12 + 8);
    *(v12 + 8) = 0x8000000000000000;
    result = sub_1D33B9198(v26);
    v33 = v31[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_52;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v81;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v40 = v25;
        v41 = result;
        sub_1D33994C4();
        result = v41;
        v25 = v40;
        v12 = v78;
        v5 = v81;
        if (v37)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v38 = *(v0 + 88);
      sub_1D3396A2C(v36, isUniquelyReferenced_nonNull_native);
      result = sub_1D33B9198(v38);
      if ((v37 & 1) != (v39 & 1))
      {
        v77 = *(v0 + 144);

        return sub_1D33DF1E4();
      }

      v12 = v78;
      v5 = v81;
      if (v37)
      {
LABEL_23:
        *(v31[7] + result) = v27 == v28;
        goto LABEL_27;
      }
    }

    v42 = *(v0 + 144);
    v43 = *(v0 + 88);
    v31[(result >> 6) + 8] |= 1 << result;
    v44 = result;
    result = v86(v31[6] + result * v85, v43, v42);
    *(v31[7] + v44) = v27 == v28;
    v45 = v31[2];
    v35 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v35)
    {
      goto LABEL_53;
    }

    v31[2] = v46;
    v12 = v78;
LABEL_27:
    v47 = *(v12 + 8);
    *(v12 + 8) = v31;

    if (v25 != 2)
    {
      v84 |= (v27 == v28) ^ v25;
    }

    v13 = v79;
    v8 = v80;
    v11 &= v11 - 1;
    v16 = *(v0 + 88);
    os_unfair_lock_unlock(v12);
    result = sub_1D331E880(v16, &qword_1EC761F98, &qword_1D33E55F0);
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    if (v17 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v17);
    ++v15;
    if (v11)
    {
      v15 = v17;
      goto LABEL_12;
    }
  }

  v48 = *(v0 + 216);
  v49 = *(v0 + 192);

  v50 = *(v49 + 16);
  v51 = *(v0 + 216);
  if (!v50)
  {

    v52 = 0;
    goto LABEL_43;
  }

  v52 = 0;
  v53 = *(v0 + 152);
  v54 = *(v0 + 192) + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v55 = *(v83 + 72);
  v56 = *(v83 + 16);
  v57 = (v53 + 8);
  v56(*(v0 + 160), v54, *(v0 + 144));
  while (2)
  {
    if (!*(v51 + 16))
    {
      v58 = *v57;
LABEL_32:
      v58(*(v0 + 160), *(v0 + 144));
LABEL_33:
      v54 += v55;
      if (!--v50)
      {
        goto LABEL_41;
      }

      v56(*(v0 + 160), v54, *(v0 + 144));
      continue;
    }

    break;
  }

  v59 = *(v0 + 216);
  v60 = sub_1D33B9198(*(v0 + 160));
  v58 = *v57;
  if ((v61 & 1) == 0)
  {
    goto LABEL_32;
  }

  v62 = *(*(v5 + 56) + 8 * v60);
  v58(*(v0 + 160), *(v0 + 144));
  v63 = sub_1D33DDFF4();
  if (v63 != sub_1D33DDFF4())
  {
    goto LABEL_33;
  }

  v35 = __OFADD__(v52++, 1);
  if (!v35)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  v64 = *(v0 + 216);
  v65 = *(v0 + 192);

LABEL_43:

  if (*(v0 + 232))
  {
    v66 = *(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
    *(v0 + 40) = v52;
    sub_1D33DE4E4();
  }

  v67 = *(v0 + 72);
  (*(v0 + 64))(v52, v84 & 1);
  *(*(v0 + 56) + *(v0 + 184)) = 0;
  v69 = *(v0 + 168);
  v68 = *(v0 + 176);
  v70 = *(v0 + 160);
  v72 = *(v0 + 128);
  v71 = *(v0 + 136);
  v74 = *(v0 + 96);
  v73 = *(v0 + 104);
  v75 = *(v0 + 88);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1D33D09C4()
{
  v27 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v0 + 32) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v10 = sub_1D33DE804();
    v12 = sub_1D3328B48(v10, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to batch fetch trust scores with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  if (*(v0 + 232) == 1)
  {
    v13 = *(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
    *(v0 + 24) = 0;
    sub_1D33DE4E4();
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 72);
  (*(v0 + 64))(0, 0);

  *(*(v0 + 56) + *(v0 + 184)) = 0;
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D33D0BE0(void *a1, int a2)
{
  LODWORD(v70) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC762008, &qword_1D33E5648);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - v9;
  v11 = sub_1D33DE374();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  if (![a1 isIncoming])
  {
    goto LABEL_22;
  }

  v68 = v10;
  v69 = v22;
  v25 = [a1 remoteParticipantHandles];
  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = v25;
  v65 = v12;
  v66 = v11;
  v67 = v24;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v27 = sub_1D33DEA54();

  v28 = (v27 & 0xC000000000000001) != 0 ? sub_1D33DEE14() : *(v27 + 16);

  if (v28 != 1)
  {
    goto LABEL_22;
  }

  v29 = [a1 remoteParticipantHandles];
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;
  v31 = sub_1D33DEA54();

  v32 = sub_1D335DC7C(v31);

  if (!v32)
  {
    goto LABEL_22;
  }

  type metadata accessor for RequestsHandler();
  v33 = v67;
  sub_1D33D128C(v32);
  v34 = v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown));
  v35 = *(v34 + 8);
  if (!*(v35 + 16) || (v36 = sub_1D33B9198(v33), (v37 & 1) == 0))
  {
    os_unfair_lock_unlock(v34);
    v39 = v65;
    if (v70)
    {
      v38 = sub_1D33D454C();
      os_unfair_lock_lock(v34);
      v40 = *(v34 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *(v34 + 8);
      *(v34 + 8) = 0x8000000000000000;
      sub_1D33986E8(v38 & 1, v33, isUniquelyReferenced_nonNull_native);
      v42 = *(v34 + 8);
      *(v34 + 8) = v71;

      os_unfair_lock_unlock(v34);

      (*(v39 + 8))(v33, v66);
      return v38 & 1;
    }

    v70 = v32;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v43 = sub_1D33DE464();
    __swift_project_value_buffer(v43, qword_1EDEC1480);
    v44 = *(v39 + 16);
    v45 = v66;
    v44(v69, v33, v66);
    v46 = sub_1D33DE444();
    v47 = sub_1D33DEAD4();
    if (os_log_type_enabled(v46, v47))
    {
      v64 = v47;
      v48 = v39;
      v49 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71 = v63;
      *v49 = 136315138;
      v50 = v68;
      v44(v68, v69, v45);
      (*(v48 + 56))(v50, 0, 1, v45);
      sub_1D33D6C34(v50, v8);
      if ((*(v48 + 48))(v8, 1, v45) == 1)
      {
        sub_1D331E880(v8, &qword_1EC762008, &qword_1D33E5648);
        sub_1D331E880(v50, &qword_1EC762008, &qword_1D33E5648);
        v51 = v45;
        v52 = *(v48 + 8);
        v52(v69, v51);
        v53 = 0xE300000000000000;
        v54 = 7104878;
      }

      else
      {
        (*(v48 + 32))(v19, v8, v45);
        v44(v16, v19, v45);
        v56 = sub_1D33DE804();
        v53 = v57;
        v58 = v50;
        v51 = v45;
        v52 = *(v48 + 8);
        v52(v19, v51);
        sub_1D331E880(v58, &qword_1EC762008, &qword_1D33E5648);
        v52(v69, v51);
        v54 = v56;
      }

      v59 = sub_1D3328B48(v54, v53, &v71);

      *(v49 + 4) = v59;
      _os_log_impl(&dword_1D331A000, v46, v64, "Handle %s is missing from cache", v49, 0xCu);
      v60 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1D38B81C0](v60, -1, -1);
      MEMORY[0x1D38B81C0](v49, -1, -1);

      v52(v67, v51);
    }

    else
    {

      v55 = *(v39 + 8);
      v55(v69, v45);
      v55(v33, v45);
    }

LABEL_22:
    v38 = 0;
    return v38 & 1;
  }

  v38 = *(*(v35 + 56) + v36);
  os_unfair_lock_unlock(v34);
  (*(v65 + 8))(v33, v66);

  return v38 & 1;
}

uint64_t sub_1D33D128C(void *a1)
{
  v2 = sub_1D33DE344();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = [a1 type];
  if (v10 > 3)
  {
    v11 = MEMORY[0x1E696ED80];
  }

  else
  {
    v11 = qword_1E843B988[v10];
  }

  (*(v3 + 104))(v9, *v11, v2);
  (*(v3 + 16))(v7, v9, v2);
  v12 = [a1 value];
  sub_1D33DE7B4();

  sub_1D33DE354();
  return (*(v3 + 8))(v9, v2);
}

void sub_1D33D1434(void *a1)
{
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 remoteParticipantHandles];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v10 = sub_1D33DEA54();

    v11 = sub_1D335DC7C(v10);

    if (v11)
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v12 = sub_1D33DE464();
      v13 = __swift_project_value_buffer(v12, qword_1EDEC1480);
      v14 = v11;
      v93 = v13;
      v15 = sub_1D33DE444();
      v16 = sub_1D33DEAF4();

      v17 = os_log_type_enabled(v15, v16);
      v91 = a1;
      v92 = v9;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315138;
        v100 = v14;
        v20 = v14;
        v21 = sub_1D33DE804();
        v23 = sub_1D3328B48(v21, v22, &aBlock);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1D331A000, v15, v16, "[RequestsHandler] acceptRecentCall %s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1D38B81C0](v19, -1, -1);
        MEMORY[0x1D38B81C0](v18, -1, -1);
      }

      if (_TUIsInternalInstall())
      {
        v24 = objc_allocWithZone(MEMORY[0x1E695E000]);
        v25 = sub_1D33DE784();
        v26 = [v24 initWithSuiteName_];

        if (v26)
        {
          v27 = [v14 value];
          if (!v27)
          {
            sub_1D33DE7B4();
            v27 = sub_1D33DE784();
          }

          v28 = sub_1D33DE784();
          [v26 setValue:v27 forKey:v28];
        }
      }

      v29 = [v14 type];
      if (v29 == 2)
      {
        v30 = [v14 value];
        v31 = MEMORY[0x1E6998F60];
        if (v30)
        {
LABEL_15:
          v32 = v30;
          goto LABEL_18;
        }
      }

      else
      {
        if (v29 != 3)
        {
LABEL_25:
          v67 = v14;
          v68 = sub_1D33DE444();
          v69 = sub_1D33DEAD4();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            aBlock = v71;
            *v70 = 136315394;
            *(v70 + 4) = sub_1D3328B48(7104878, 0xE300000000000000, &aBlock);
            *(v70 + 12) = 2080;
            v100 = v67;
            v72 = v67;
            v73 = sub_1D33DE804();
            v75 = sub_1D3328B48(v73, v74, &aBlock);

            *(v70 + 14) = v75;
            _os_log_impl(&dword_1D331A000, v68, v69, "[RequestsHandler] Could not create event for name: %s handle %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38B81C0](v71, -1, -1);
            MEMORY[0x1D38B81C0](v70, -1, -1);
          }

          else
          {
          }

          return;
        }

        v30 = [v14 value];
        v31 = MEMORY[0x1E6998F48];
        if (v30)
        {
          goto LABEL_15;
        }
      }

      sub_1D33DE7B4();
      v32 = sub_1D33DE784();

LABEL_18:
      v33 = objc_opt_self();
      v34 = *v31;
      sub_1D33DDD04();
      v35 = sub_1D33DDC94();
      (*(v3 + 8))(v6, v2);
      sub_1D336C04C(MEMORY[0x1E69E7CC0]);
      v36 = sub_1D33DE6E4();

      v37 = [v33 recentEventForAddress:v32 displayName:0 kind:v34 date:v35 weight:0 metadata:v36 options:1];

      if (v37)
      {
        v38 = v37;
        v39 = sub_1D33DE444();
        v40 = sub_1D33DEAF4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock = v42;
          *v41 = 136315138;
          v100 = v38;
          sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
          v43 = v38;
          v44 = sub_1D33DE804();
          v46 = sub_1D3328B48(v44, v45, &aBlock);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_1D331A000, v39, v40, "[RequestsHandler] Generated event: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          MEMORY[0x1D38B81C0](v42, -1, -1);
          MEMORY[0x1D38B81C0](v41, -1, -1);
        }

        v47 = [objc_opt_self() defaultInstance];
        if (v47)
        {
          v48 = v47;
          v49 = v91;
          v90 = sub_1D33D5B88(v91);
          v51 = v50;
          v52 = sub_1D33D6278(v49);
          v54 = v53;

          v55 = v14;

          v56 = sub_1D33DE444();
          v57 = sub_1D33DEAF4();

          v58 = os_log_type_enabled(v56, v57);
          v91 = v55;
          if (v58)
          {
            v93 = v52;
            v59 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v100 = v89;
            *v59 = 136315906;
            v60 = 0xE300000000000000;
            *(v59 + 4) = sub_1D3328B48(7104878, 0xE300000000000000, &v100);
            *(v59 + 12) = 2080;
            aBlock = v55;
            v61 = v55;
            v62 = sub_1D33DE804();
            v64 = sub_1D3328B48(v62, v63, &v100);

            *(v59 + 14) = v64;
            *(v59 + 22) = 2080;
            if (v51)
            {
              aBlock = v90;
              v95 = v51;

              v65 = sub_1D33DE804();
              v60 = v66;
            }

            else
            {
              v65 = 7104878;
            }

            v76 = sub_1D3328B48(v65, v60, &v100);

            *(v59 + 24) = v76;
            *(v59 + 32) = 2080;
            if (v54)
            {
              aBlock = v93;
              v95 = v54;

              v77 = sub_1D33DE804();
              v79 = v78;
            }

            else
            {
              v79 = 0xE300000000000000;
              v77 = 7104878;
            }

            v80 = sub_1D3328B48(v77, v79, &v100);

            *(v59 + 34) = v80;
            _os_log_impl(&dword_1D331A000, v56, v57, "[RequestsHandler] Calling into CoreRecents to accept name: %s handle %s from localHandle: %s source: %s", v59, 0x2Au);
            v81 = v89;
            swift_arrayDestroy();
            MEMORY[0x1D38B81C0](v81, -1, -1);
            MEMORY[0x1D38B81C0](v59, -1, -1);

            v55 = v91;
          }

          else
          {
          }

          if ([v48 respondsToSelector_])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1D33E1DE0;
            *(v82 + 32) = v38;
            sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
            v83 = v38;
            v84 = v48;
            v85 = sub_1D33DE8A4();
            if (v51)
            {
              v86 = sub_1D33DE784();
              if (v54)
              {
LABEL_38:
                v87 = sub_1D33DE784();
LABEL_43:
                v98 = sub_1D33D1F10;
                v99 = 0;
                aBlock = MEMORY[0x1E69E9820];
                v95 = 1107296256;
                v96 = sub_1D3352A4C;
                v97 = &block_descriptor_5;
                v88 = _Block_copy(&aBlock);

                [v84 recordAcceptedContactEvents:v85 sendingAddress:v86 source:v87 completion:v88];
                _Block_release(v88);

                return;
              }
            }

            else
            {
              v86 = 0;
              if (v54)
              {
                goto LABEL_38;
              }
            }

            v87 = 0;
            goto LABEL_43;
          }
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }
  }
}

void sub_1D33D1F10(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D33DE464();
    __swift_project_value_buffer(v3, qword_1EDEC1480);
    v4 = a1;
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAD4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v10 = sub_1D33DE804();
      v12 = sub_1D3328B48(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D331A000, v5, v6, "[RequestsHandler] Failed to accept request, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D38B81C0](v8, -1, -1);
      MEMORY[0x1D38B81C0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v13 = sub_1D33DE464();
    __swift_project_value_buffer(v13, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v14 = sub_1D33DEAF4();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v14, "[RequestsHandler] Finished accepting request", v15, 2u);
      MEMORY[0x1D38B81C0](v15, -1, -1);
    }

    v16 = oslog;
  }
}

id RequestsHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestsHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RequestsHandler.warmRequestCacheIfNeeded(items:_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for RecentsItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
  if (v12 == 2)
  {
    if (([*(v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags) junkFilteringEnabled] & 1) == 0 || !objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
    {
      return a2();
    }
  }

  else if ((v12 & 1) == 0)
  {
    return a2();
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return a2();
  }

  v26[0] = a2;
  v26[1] = v3;
  v27 = a3;
  v14 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v16 = *(v8 + 72);
  do
  {
    sub_1D332CF04(v15, v11, type metadata accessor for RecentsItem);
    v17 = *v11;
    v18 = v11[32];
    if (v18 == 4)
    {
      v19 = v17;
      v20 = sub_1D332B2E8(v11);
    }

    else
    {
      v21 = *(v11 + 1);
      v22 = *(v11 + 2);
      v23 = *(v11 + 3);
      sub_1D332B0D0(*v11, v21, v22, v23, v11[32]);
      sub_1D332B2E8(v11);
      if (v18 != 6)
      {
        sub_1D332B1DC(v17, v21, v22, v23, v18);
        goto LABEL_9;
      }
    }

    MEMORY[0x1D38B6F20](v20);
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v14 = v28;
LABEL_9:
    v15 += v16;
    --v13;
  }

  while (v13);
  sub_1D33CDB9C(v14, v26[0], v27);
}

Swift::Void __swiftcall RequestsHandler.configurationChanged()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1D33DE9B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D333DD88(0, 0, v4, &unk_1D33E54C8, v6);
}

uint64_t sub_1D33D272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33D27C8, 0, 0);
}

uint64_t sub_1D33D27C8()
{
  v1 = v0[6];
  v2 = *&v1[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider];
  if (v2)
  {
    v3 = v0[7];
    v4 = v2;
    v5 = [v4 isSilenceJunkCallingEnabled];

    v6 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
    swift_beginAccess();
    v1[v6] = v5;

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[7];
    v10 = sub_1D33DE9B4();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;
    v12 = v1;
    v13 = sub_1D33881C0(0, 0, v9, &unk_1D33E55D0, v11);
    v0[8] = v13;
    sub_1D331E880(v9, &unk_1EC7610E0, &qword_1D33E16C0);
    v14 = *(MEMORY[0x1E69E86C0] + 4);
    v15 = swift_task_alloc();
    v0[9] = v15;
    v16 = sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
    *v15 = v0;
    v15[1] = sub_1D33D29C8;

    return MEMORY[0x1EEE6DA40](v0 + 5, v13, v16);
  }
}

uint64_t sub_1D33D29C8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D33D2AE0, 0, 0);
}

uint64_t sub_1D33D2AE0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = [v3 isSilenceJunkCallingEnabled];

  v5 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  swift_beginAccess();
  *(v2 + v5) = v4;

  v6 = v0[1];

  return v6();
}

void *sub_1D33D2C00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D33D2C88(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D33DEE14();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D33DEF54();
  *v1 = result;
  return result;
}

uint64_t sub_1D33D2D28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
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
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&unk_1EC761FF8, &qword_1EC761FF0, &qword_1D33E5640);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FF0, &qword_1D33E5640);
            v9 = sub_1D3367464(v13, i, a3);
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
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
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

uint64_t sub_1D33D2EC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
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
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761FC8, &qword_1EC761FC0, &qword_1D33E5628);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FC0, &qword_1D33E5628);
            v9 = sub_1D33674E4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
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

uint64_t sub_1D33D3064(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
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
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761F78, &qword_1EC761F70, &qword_1D33E2DD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F70, &qword_1D33E2DD0);
            v9 = sub_1D3367464(v13, i, a3);
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
        sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
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

uint64_t sub_1D33D3204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
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
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761F58, &qword_1EC761F50, &qword_1D33E55A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F50, &qword_1D33E55A0);
            v9 = sub_1D336756C(v13, i, a3);
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
        sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
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

uint64_t sub_1D33D33A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
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
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&unk_1EC761FE0, &qword_1EC761FD8, &qword_1D33E5630);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FD8, &qword_1D33E5630);
            v9 = sub_1D3367464(v13, i, a3);
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
        sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
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

void sub_1D33D356C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38B74C0](a1, a2, v11);
      sub_1D331DA18(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D331DA18(0, a5, a6);
    if (sub_1D33DEDF4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D33DEE04();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1D33DEC64();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1D33DEC74();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_1D33D37C0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for Participant();
    return sub_1D332CF04(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for Participant);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D33D388C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
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
      v26 = a4[7];
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

uint64_t sub_1D33D3B00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1D33DDDB4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D33D3DBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D33D4080(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1D33DEDC4();
  sub_1D331DA18(0, a5, a6);
  sub_1D33565AC(a7, a5, a6);
  result = sub_1D33DEA94();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1D33DEE54())
      {
        goto LABEL_30;
      }

      sub_1D331DA18(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

id sub_1D33D42B0(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v28[3] = sub_1D33DE034();
  v28[4] = &off_1F4EE7D68;
  v28[0] = a1;
  v10 = &a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown];
  *v10 = 0;
  *(v10 + 1) = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_acceptedContactsDidChange;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&a3[v11] = sub_1D33DE4D4();
  v15 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount;
  v27 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&a3[v15] = sub_1D33DE504();
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryPredicateForUnreadRequests] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryPredicateForAllRequests] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore] = 0;
  v19 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags;
  *&a3[v19] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D3325720(v28, &a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling]);
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride] = a2;
  v20 = type metadata accessor for RequestsHandler();
  v26.receiver = a3;
  v26.super_class = v20;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = sub_1D33DE9B4();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v24 = v21;
  sub_1D333DD88(0, 0, v9, &unk_1D33E55A8, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v24;
}

BOOL sub_1D33D454C()
{
  v0 = sub_1D33DE374();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  sub_1D33DE034();
  v10 = sub_1D33DE024();
  sub_1D33DDFD4();
  v11 = sub_1D33DDFE4();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = sub_1D33DE044();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1D33DE014();

  sub_1D331E880(v5, &qword_1EC761FA0, &qword_1D33E55F8);
  sub_1D331E880(v9, &qword_1EC761FA8, &qword_1D33E5600);
  v13 = sub_1D33DDFF4();
  return v13 == sub_1D33DDFF4();
}

uint64_t sub_1D33D49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D33CE284(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D33D4AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334CF9C;

  return sub_1D33CF67C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D33D4B84(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v60 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v56 - v9;
  v10 = sub_1D33DE374();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v59 = v17;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v58 = a3;

    v56 = a4;

    v67 = v16;
    v68 = v10;
    if (i)
    {
      v19 = 0;
      v64 = a1 & 0xFFFFFFFFFFFFFF8;
      v65 = (a1 & 0xC000000000000001);
      a4 = MEMORY[0x1E69E7CC0];
      v62 = i;
      v63 = a1;
      while (1)
      {
        if (v65)
        {
          v21 = MEMORY[0x1D38B75D0](v19, a1);
        }

        else
        {
          if (v19 >= *(v64 + 16))
          {
            goto LABEL_52;
          }

          v21 = *(a1 + 8 * v19 + 32);
        }

        v22 = v21;
        v16 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_51;
        }

        if ([v21 isIncoming] && (v23 = objc_msgSend(v22, sel_remoteParticipantHandles)) != 0)
        {
          v24 = v23;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v25 = sub_1D33DEA54();

          a1 = sub_1D33CC3C0(v25);
        }

        else
        {
          a1 = MEMORY[0x1E69E7CC0];
        }

        v26 = *(a1 + 16);
        a3 = a4[2];
        v10 = a3 + v26;
        if (__OFADD__(a3, v26))
        {
          goto LABEL_53;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v10 > a4[3] >> 1)
        {
          if (a3 <= v10)
          {
            v28 = a3 + v26;
          }

          else
          {
            v28 = a3;
          }

          a4 = sub_1D3359B40(isUniquelyReferenced_nonNull_native, v28, 1, a4);
        }

        v10 = v68;
        if (*(a1 + 16))
        {
          if ((a4[3] >> 1) - a4[2] < v26)
          {
            goto LABEL_55;
          }

          v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
          v30 = *(v11 + 72);
          swift_arrayInitWithCopy();

          a1 = v63;
          if (v26)
          {
            v31 = a4[2];
            v32 = __OFADD__(v31, v26);
            v33 = v31 + v26;
            if (v32)
            {
              goto LABEL_56;
            }

            a4[2] = v33;
          }
        }

        else
        {

          a1 = v63;
          if (v26)
          {
            goto LABEL_54;
          }
        }

        ++v19;
        v20 = v16 == v62;
        v16 = v67;
        if (v20)
        {
          goto LABEL_29;
        }
      }
    }

    a4 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v64 = a4[2];
    if (!v64)
    {
      break;
    }

    a1 = 0;
    v34 = v60 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
    v62 = (v11 + 8);
    v63 = v11 + 16;
    v65 = (v11 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v61 = v11;
    while (a1 < a4[2])
    {
      v36 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v37 = *(v11 + 72);
      (*(v11 + 16))(v16, a4 + v36 + v37 * a1, v10);
      os_unfair_lock_lock(v34);
      a3 = *(v34 + 8);
      if (a3[2] && (sub_1D33B9198(v16), (v38 & 1) != 0))
      {
        os_unfair_lock_unlock(v34);
        (*v62)(v16, v10);
      }

      else
      {
        os_unfair_lock_unlock(v34);
        v39 = *v65;
        (*v65)(v66, v16, v10);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v35;
        if ((v40 & 1) == 0)
        {
          a3 = &v69;
          sub_1D334B408(0, *(v35 + 16) + 1, 1);
          v35 = v69;
        }

        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          a3 = &v69;
          sub_1D334B408(v41 > 1, v42 + 1, 1);
          v35 = v69;
        }

        *(v35 + 16) = v42 + 1;
        v43 = v35 + v36 + v42 * v37;
        v10 = v68;
        v39(v43, v66, v68);
        v11 = v61;
        v16 = v67;
      }

      if (v64 == ++a1)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v44 = sub_1D33676A8(v35);

  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = sub_1D332FF34(*(v44 + 16), 0, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
    v47 = sub_1D33D3DBC(&v69, (v46 + ((*(v11 + 80) + 32) & ~*(v11 + 80))), v45, v44, MEMORY[0x1E696EDC8]);
    sub_1D331FEEC();
    if (v47 != v45)
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
LABEL_45:

    v46 = MEMORY[0x1E69E7CC0];
  }

  if (*(v46 + 16))
  {
    v48 = sub_1D33DE9B4();
    v49 = v57;
    (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D33DE974();

    v51 = v59;

    v52 = sub_1D33DE964();
    v53 = swift_allocObject();
    v54 = MEMORY[0x1E69E85E0];
    v53[2] = v52;
    v53[3] = v54;
    v53[4] = v50;
    v53[5] = v46;
    v53[6] = sub_1D33D6B88;
    v53[7] = v51;

    sub_1D333DD88(0, 0, v49, &unk_1D33E5638, v53);
  }

  else
  {
    sub_1D334E024();
  }
}

uint64_t sub_1D33D52A0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
  v35 = v11;
  if (v14 != 2)
  {

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v15 = a3;
  v16 = *(v11 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags);

  v17 = v16;
  a3 = v15;
  if ([v17 junkFilteringEnabled] & 1) != 0 && (objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
  {
LABEL_6:
    v18 = *(a1 + 16);
    if (!v18)
    {
      goto LABEL_17;
    }

    v33 = a3;
    v34 = a4;
    v19 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    v20 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v21 = *(v9 + 72);
    while (1)
    {
      sub_1D332CF04(v20, v13, type metadata accessor for RecentsItem);
      v22 = *v13;
      v23 = v13[32];
      if (v23 == 4)
      {
        break;
      }

      v26 = *(v13 + 1);
      v27 = *(v13 + 2);
      v28 = *(v13 + 3);
      sub_1D332B0D0(*v13, v26, v27, v28, v13[32]);
      sub_1D332B2E8(v13);
      if (v23 == 6)
      {

        goto LABEL_14;
      }

      sub_1D332B1DC(v22, v26, v27, v28, v23);
LABEL_9:
      v20 += v21;
      if (!--v18)
      {
        v31 = v33;

        v32 = v34;

        sub_1D33D4B84(v19, v35, v31, v32);

        return swift_bridgeObjectRelease_n();
      }
    }

    v24 = v22;
    v25 = sub_1D332B2E8(v13);
LABEL_14:
    MEMORY[0x1D38B6F20](v25);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v19 = v36;
    goto LABEL_9;
  }

LABEL_17:
  sub_1D334E024();
}

uint64_t sub_1D33D559C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_1D33D55F0()
{
  v0 = [objc_opt_self() sharedController];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [v0 blockUntilConnected];
    v3 = [objc_opt_self() facetimeService];
    v4 = [v2 accountsForService_];

    if (v4)
    {
      sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
      v5 = sub_1D33DE8B4();

      if (qword_1EDEBFD70 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v6 = sub_1D33DE464();
        __swift_project_value_buffer(v6, qword_1EDEC1480);

        v7 = sub_1D33DE444();
        v8 = sub_1D33DEAF4();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v39 = v5;
          v40 = v10;
          *v9 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F90, &qword_1D33E55E8);
          v11 = sub_1D33DE804();
          v13 = sub_1D3328B48(v11, v12, &v40);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_1D331A000, v7, v8, "[RequestsHandler] Found FaceTime accounts: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          MEMORY[0x1D38B81C0](v10, -1, -1);
          MEMORY[0x1D38B81C0](v9, -1, -1);
        }

        v40 = MEMORY[0x1E69E7CC0];
        if (v5 >> 62)
        {
          v14 = sub_1D33DEE14();
        }

        else
        {
          v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = MEMORY[0x1E69E7CC0];
        v37 = v2;
        v38 = v0;
        if (v14)
        {
          v16 = 0;
          v0 = (v5 & 0xC000000000000001);
          v2 = (v5 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v0)
            {
              v17 = MEMORY[0x1D38B75D0](v16, v5);
            }

            else
            {
              if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v17 = *(v5 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if ([v17 registrationStatus] == 5)
            {
              sub_1D33DEF84();
              v20 = *(v40 + 16);
              sub_1D33DEFB4();
              sub_1D33DEFC4();
              sub_1D33DEF94();
            }

            else
            {
            }

            ++v16;
            if (v19 == v14)
            {
              v21 = v40;
              v2 = v37;
              v0 = v38;
              v15 = MEMORY[0x1E69E7CC0];
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
LABEL_25:

          if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
          {
            v5 = sub_1D33DEE14();
            if (!v5)
            {
LABEL_47:

LABEL_48:
              v26 = sub_1D3367844(v15);

              return v26;
            }
          }

          else
          {
            v5 = *(v21 + 16);
            if (!v5)
            {
              goto LABEL_47;
            }
          }

          v40 = v15;
          sub_1D334A9E0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
            __break(1u);
            goto LABEL_51;
          }

          v27 = 0;
          v15 = v40;
          v0 = (v21 & 0xC000000000000001);
          while (1)
          {
            v2 = (v27 + 1);
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v0)
            {
              v28 = MEMORY[0x1D38B75D0](v27, v21);
            }

            else
            {
              if (v27 >= *(v21 + 16))
              {
                goto LABEL_43;
              }

              v28 = *(v21 + 8 * v27 + 32);
            }

            v29 = v28;
            result = [v28 strippedLogin];
            if (!result)
            {
              __break(1u);
              goto LABEL_53;
            }

            v30 = result;
            sub_1D33DE7B4();

            v31 = sub_1D33DE7F4();
            v33 = v32;

            v40 = v15;
            v35 = *(v15 + 16);
            v34 = *(v15 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1D334A9E0((v34 > 1), v35 + 1, 1);
              v15 = v40;
            }

            *(v15 + 16) = v35 + 1;
            v36 = v15 + 16 * v35;
            *(v36 + 32) = v31;
            *(v36 + 40) = v33;
            ++v27;
            if (v2 == v5)
            {

              v2 = v37;
              v0 = v38;
              goto LABEL_48;
            }
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        swift_once();
      }
    }

    if (qword_1EDEBFD70 != -1)
    {
LABEL_51:
      swift_once();
    }

    v22 = sub_1D33DE464();
    __swift_project_value_buffer(v22, qword_1EDEC1480);
    v23 = sub_1D33DE444();
    v24 = sub_1D33DEAF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D331A000, v23, v24, "[RequestsHandler] Could not find any facetime service IMAccount in IMAccountController", v25, 2u);
      MEMORY[0x1D38B81C0](v25, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }

  else
  {
LABEL_53:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D33D5B88(void *a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v8 = [a1 localParticipantUUID];
  if (v8)
  {
    v9 = v8;
    sub_1D33DDD84();

    v10 = [v7 telephonyProvider];
    v11 = sub_1D33DDD64();
    v12 = [v10 senderIdentityForAccountUUID_];

    if (v12)
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v13 = sub_1D33DE464();
      __swift_project_value_buffer(v13, qword_1EDEC1480);
      v14 = v12;
      v15 = sub_1D33DE444();
      v16 = sub_1D33DEAF4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v66[0] = v62;
        *v17 = 136315138;
        *&v64 = v14;
        sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
        v18 = v14;
        v19 = sub_1D33DE804();
        v21 = v3;
        v22 = v2;
        v23 = v7;
        v24 = sub_1D3328B48(v19, v20, v66);

        *(v17 + 4) = v24;
        v7 = v23;
        v2 = v22;
        v3 = v21;
        _os_log_impl(&dword_1D331A000, v15, v16, "[RequestsHandler] Found senderIdentity: %s for recent call", v17, 0xCu);
        v25 = v62;
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1D38B81C0](v25, -1, -1);
        MEMORY[0x1D38B81C0](v17, -1, -1);
      }

      v26 = [v14 handle];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 value];

        v29 = sub_1D33DE7B4();
        (*(v3 + 8))(v6, v2);
        return v29;
      }

      (*(v3 + 8))(v6, v2);

      return 0;
    }

    (*(v3 + 8))(v6, v2);
  }

  v31 = [a1 serviceProvider];
  if (!v31)
  {
    v41 = *MEMORY[0x1E69935E0];
    sub_1D33DE7B4();
    goto LABEL_19;
  }

  v32 = v31;
  v33 = sub_1D33DE7B4();
  v35 = v34;

  v36 = *MEMORY[0x1E69935E0];
  v37 = sub_1D33DE7B4();
  if (!v35)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v33 != v37 || v35 != v38)
  {
    v40 = sub_1D33DF1B4();

    if (v40)
    {
      goto LABEL_32;
    }

LABEL_20:
    v42 = [v7 telephonyProvider];
    v43 = [v42 prioritizedSenderIdentities];

    v44 = [v43 firstObject];
    if (v44)
    {
      sub_1D33DED44();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v66[0] = v64;
    v66[1] = v65;
    if (*(&v65 + 1))
    {
      sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
      if (swift_dynamicCast())
      {
        v45 = v63;
        v46 = [v63 handle];

        if (v46)
        {
          v47 = [v46 value];

          v48 = sub_1D33DE7B4();
          return v48;
        }
      }
    }

    else
    {

      sub_1D331E880(v66, &qword_1EC7616D0, &unk_1D33E2890);
    }

    return 0;
  }

LABEL_32:
  v49 = sub_1D33D55F0();
  v50 = sub_1D335DDB8(v49);
  v52 = v51;

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v53 = sub_1D33DE464();
  __swift_project_value_buffer(v53, qword_1EDEC1480);

  v54 = sub_1D33DE444();
  v55 = sub_1D33DEAF4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v64 = v57;
    *v56 = 136315138;
    if (v52)
    {
      *&v66[0] = v50;
      *(&v66[0] + 1) = v52;

      v58 = sub_1D33DE804();
      v60 = v59;
    }

    else
    {
      v60 = 0xE300000000000000;
      v58 = 7104878;
    }

    v61 = sub_1D3328B48(v58, v60, &v64);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1D331A000, v54, v55, "[RequestsHandler] Found local FaceTime handle: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1D38B81C0](v57, -1, -1);
    MEMORY[0x1D38B81C0](v56, -1, -1);
  }

  return v50;
}

uint64_t sub_1D33D6278(void *a1)
{
  v1 = [a1 serviceProvider];
  if (!v1)
  {
    v11 = *MEMORY[0x1E69935E0];
    sub_1D33DE7B4();
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1D33DE7B4();
  v5 = v4;

  v6 = *MEMORY[0x1E69935E0];
  v7 = sub_1D33DE7B4();
  if (!v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v3 != v7 || v5 != v8)
  {
    v10 = sub_1D33DF1B4();

    if (v10)
    {
      goto LABEL_13;
    }

LABEL_11:
    v12 = MEMORY[0x1E69D8DB8];
    goto LABEL_14;
  }

LABEL_13:
  v12 = MEMORY[0x1E69D8D98];
LABEL_14:
  v13 = *v12;

  return sub_1D33DE7B4();
}

uint64_t sub_1D33D6398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33D272C(a1, v4, v5, v6);
}

uint64_t sub_1D33D644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D334AFB4;

  return v15(a1, a2, a3, a4, a5);
}

id sub_1D33D66D0(char a1)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v1 = [objc_opt_self() predicateForCallsWithStatusRead_];
    MEMORY[0x1D38B6F20]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
  }

  sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
  v2 = sub_1D33DEAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761718, &unk_1D33E2F50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D33E2410;
  *(v3 + 56) = MEMORY[0x1E69E6530];
  *(v3 + 32) = 2;
  v4 = sub_1D33DE784();
  v5 = sub_1D33DE8A4();

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E2400;
  *(inited + 32) = v2;
  *(inited + 40) = v6;
  v8 = v2;
  v9 = v6;
  sub_1D33CCBC4(inited, sub_1D33D3204);
  v10 = sub_1D33DE8A4();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}