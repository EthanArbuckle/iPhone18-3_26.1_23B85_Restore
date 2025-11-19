_BYTE *InlineActionsViewModel.GroupAction.init(type:handler:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1A33ED2B8()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A33ED364@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A33ED418()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A33ED52C()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  swift_beginAccess();
}

uint64_t sub_1A33ED5E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A33ED6D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions;
  swift_beginAccess();

  sub_1A347F204(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A33ED828(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_1A33ED894()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();
}

uint64_t sub_1A33ED940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes);
}

uint64_t sub_1A33ED9F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes;
  if (!*(v1 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C9990();
  }

  if (!a1 || (sub_1A342B7E0(*(v1 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1A33EDB54()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);

  return v1;
}

uint64_t sub_1A33EDC10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
  a2[1] = v4;
}

uint64_t sub_1A33EDCC8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A34CDE30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C9990();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1A33EDE44()
{
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  return *(v0 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked);
}

uint64_t sub_1A33EDEEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked);
  return result;
}

uint64_t sub_1A33EDFC4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A33EE0DC()
{
  v0 = sub_1A34CD110();
  v2 = v1;
  if (v0 == sub_1A34CD110() && v2 == v3)
  {

    return 15;
  }

  v5 = sub_1A34CDE30();

  if (v5)
  {
    return 15;
  }

  v6 = sub_1A34CD110();
  v8 = v7;
  if (v6 == sub_1A34CD110() && v8 == v9)
  {

    return 16;
  }

  v11 = sub_1A34CDE30();

  if (v11)
  {
    return 16;
  }

  v12 = sub_1A34CD110();
  v14 = v13;
  if (v12 == sub_1A34CD110() && v14 == v15)
  {

    return 17;
  }

  v17 = sub_1A34CDE30();

  if (v17)
  {
    return 17;
  }

  v18 = sub_1A34CD110();
  v20 = v19;
  if (v18 == sub_1A34CD110() && v20 == v21)
  {

    return 18;
  }

  v22 = sub_1A34CDE30();

  if (v22)
  {
    return 18;
  }

  v23 = sub_1A34CD110();
  v25 = v24;
  if (v23 == sub_1A34CD110() && v25 == v26)
  {

    return 19;
  }

  else
  {
    v27 = sub_1A34CDE30();

    if (v27)
    {
      return 19;
    }

    else
    {
      return 0;
    }
  }
}

id InlineActionsViewModel.__allocating_init(actionsProvider:contact:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for InlineActionsViewModel());
  v5 = sub_1A33F1484(a1, a2, 0);
  swift_unknownObjectRelease();

  return v5;
}

id InlineActionsViewModel.__allocating_init(actionsProvider:contact:actionTypes:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1A33F1484(a1, a2, a3);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t type metadata accessor for InlineActionsViewModel()
{
  result = qword_1EB0C2188;
  if (!qword_1EB0C2188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InlineActionsViewModel.init(actionsProvider:contact:actionTypes:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1A33F1484(a1, a2, a3);
  swift_unknownObjectRelease();

  return v4;
}

char *InlineActionsViewModel.init(groupActions:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions] = sub_1A33EA810(v4);
  *&v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__groupActions] = 0;
  v5 = &v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked] = 0;
  sub_1A34C99D0();
  sub_1A31F08B0(&v1[v3]);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel_contact] = 0;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for InlineActionsViewModel();
  v6 = objc_msgSendSuper2(&v27, sel_init);
  v23 = a1;
  v7 = *(a1 + 16);
  v26 = v6;
  v8 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems;
  result = v6;
  v10 = result;
  v22 = v7;
  if (v7)
  {
    v11 = 0;
    v12 = (v23 + 48);
    v21 = result;
    while (v11 < *(v23 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = *(v12 - 16);
      if (v15 >= 4)
      {
        sub_1A321418C(*(v12 - 1));

        sub_1A32142B0(v14);
        return v10;
      }

      v25 = qword_1A34F25E8[v15];
      swift_getKeyPath();
      sub_1A321418C(v14);
      v24 = v13;
      sub_1A321418C(v14);
      sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
      sub_1A34C99A0();

      swift_getKeyPath();
      sub_1A34C99C0();

      swift_beginAccess();
      v16 = *&v26[v8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v26[v8] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1A32992FC(0, *(v16 + 2) + 1, 1, v16);
        *&v26[v8] = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_1A32992FC((v18 > 1), v19 + 1, 1, v16);
      }

      ++v11;
      *(v16 + 2) = v19 + 1;
      v20 = &v16[32 * v19];
      *(v20 + 4) = v25;
      *(v20 + 5) = MEMORY[0x1E69E7CC0];
      *(v20 + 6) = v14;
      *(v20 + 7) = v24;
      *&v26[v8] = v16;
      swift_endAccess();
      v10 = v21;
      swift_getKeyPath();
      sub_1A34C99B0();
      sub_1A32142B0(v14);

      v12 += 3;
      if (v22 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return v10;
  }

  return result;
}

id InlineActionsViewModel.__deallocating_deinit()
{
  if (qword_1EB0C12B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  __swift_project_value_buffer(v1, qword_1EB0ED050);
  v2 = v0;
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD660();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1A31E6000, v3, v4, "InlineActionsViewModel deinitialized %@", v5, 0xCu);
    sub_1A32D376C(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for InlineActionsViewModel();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id InlineActionsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall InlineActionsViewModel.actionsUpdated()()
{
  v1 = v0;
  v2 = type metadata accessor for ContactCardActionRow();
  v224 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v212 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v239 = v0;
  v240 = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel___observationRegistrar;
  v242[0] = v0;
  v6 = sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C9990();
  v219 = 0;

  swift_getKeyPath();
  v242[0] = v0;
  sub_1A34C99A0();

  v7 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionsProvider;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong shouldShowInlineActions];
    swift_unknownObjectRelease();
    if (v9)
    {
      v237 = v5;
      v10 = [objc_opt_self() allSupportedActionTypes];
      type metadata accessor for CNActionType(0);
      v11 = sub_1A34CD370();

      v232 = v11;
      v243 = v11;
      if (qword_1EB0C12B0 != -1)
      {
LABEL_113:
        swift_once();
      }

      v229 = v7;
      v12 = sub_1A34CA250();
      v13 = __swift_project_value_buffer(v12, qword_1EB0ED050);
      v14 = v1;
      v227 = v13;
      v15 = sub_1A34CA230();
      v16 = sub_1A34CD660();

      v17 = os_log_type_enabled(v15, v16);
      v235 = v6;
      v238 = v14;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v234 = v19;
        v236 = swift_slowAlloc();
        v241 = v236;
        *v18 = 138412802;
        *(v18 + 4) = v238;
        *v19 = v238;
        *(v18 + 12) = 2080;
        swift_getKeyPath();
        v242[0] = v238;
        v20 = v238;
        sub_1A34C99A0();

        v242[0] = swift_unknownObjectWeakLoadStrong();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC30);
        v21 = sub_1A34CD160();
        v23 = sub_1A31EE23C(v21, v22, &v241);

        *(v18 + 14) = v23;
        *(v18 + 22) = 2080;
        swift_getKeyPath();
        v242[0] = v20;
        sub_1A34C99A0();

        v24 = *&v20[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier + 8];
        v242[0] = *&v20[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier];
        v242[1] = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
        v25 = sub_1A34CD160();
        v27 = sub_1A31EE23C(v25, v26, &v241);

        *(v18 + 24) = v27;
        _os_log_impl(&dword_1A31E6000, v15, v16, "%@: Actions update initiated from the actions provider %s for contact identifier %s", v18, 0x20u);
        v28 = v234;
        sub_1A32D376C(v234);
        MEMORY[0x1A58F1010](v28, -1, -1);
        v29 = v236;
        swift_arrayDestroy();
        MEMORY[0x1A58F1010](v29, -1, -1);
        v30 = v18;
        v14 = v238;
        MEMORY[0x1A58F1010](v30, -1, -1);
      }

      swift_getKeyPath();
      v242[0] = v14;
      sub_1A34C99A0();

      v31 = *&v14[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes];
      v221 = v1;
      if (v31)
      {

        v33 = v219;
        v34 = sub_1A33EB15C(v32, &v243);
        v219 = v33;
      }

      else
      {
        v34 = v232;
      }

      v35 = 0;
      v232 = v34;
      v1 = *(v34 + 16);
      v234 = *MEMORY[0x1E695C150];
      v233 = *MEMORY[0x1E695C1B8];
      v231 = *MEMORY[0x1E695C170];
      v230 = *MEMORY[0x1E695C188];
      v236 = MEMORY[0x1E69E7CC0];
LABEL_10:
      v7 = v238;
      while (v1 != v35)
      {
        v6 = v35;
        if (v35 >= *(v232 + 16))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v37 = *(v232 + 8 * v35 + 32);
        v38 = sub_1A34CD110();
        v40 = v39;
        if (v38 == sub_1A34CD110() && v40 == v41)
        {

          v64 = 15;
          goto LABEL_41;
        }

        v43 = sub_1A34CDE30();
        v44 = v37;

        if (v43)
        {

          v64 = 15;
          goto LABEL_41;
        }

        v45 = sub_1A34CD110();
        v47 = v46;
        if (v45 == sub_1A34CD110() && v47 == v48)
        {

          v64 = 16;
          goto LABEL_41;
        }

        v49 = sub_1A34CDE30();

        if (v49)
        {

          v64 = 16;
          goto LABEL_41;
        }

        v50 = sub_1A34CD110();
        v52 = v51;
        if (v50 == sub_1A34CD110() && v52 == v53)
        {

          v64 = 17;
          goto LABEL_41;
        }

        v54 = sub_1A34CDE30();

        if (v54)
        {

          v64 = 17;
          goto LABEL_41;
        }

        v55 = sub_1A34CD110();
        v57 = v56;
        if (v55 == sub_1A34CD110() && v57 == v58)
        {

LABEL_40:
          v64 = 18;
          goto LABEL_41;
        }

        v59 = sub_1A34CDE30();

        if (v59)
        {

          goto LABEL_40;
        }

        v60 = sub_1A34CD110();
        v62 = v61;
        if (v60 == sub_1A34CD110() && v62 == v63)
        {

LABEL_31:
          v64 = 19;
LABEL_41:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v65 = v236;
          }

          else
          {
            v65 = sub_1A32991EC(0, *(v236 + 2) + 1, 1, v236);
          }

          v67 = *(v65 + 2);
          v66 = *(v65 + 3);
          if (v67 >= v66 >> 1)
          {
            v65 = sub_1A32991EC((v66 > 1), v67 + 1, 1, v65);
          }

          v35 = v6 + 1;
          *(v65 + 2) = v67 + 1;
          v236 = v65;
          *&v65[8 * v67 + 32] = v64;
          goto LABEL_10;
        }

        v36 = sub_1A34CDE30();

        v35 = v6 + 1;
        v7 = v238;
        if (v36)
        {
          goto LABEL_31;
        }
      }

      v68 = sub_1A33EA810(MEMORY[0x1E69E7CC0]);
      sub_1A33ED6D8(v68);
      v231 = *(v236 + 2);
      if (v231)
      {
        v70 = 0;
        v220 = (v7 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
        v234 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems;
        v226 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions;
        v71 = v236;
        v230 = v236 + 32;
        *&v69 = 138413570;
        v218 = v69;
        *&v69 = 138413058;
        v216 = v69;
        v1 = v221;
        v6 = v235;
        v225 = v4;
        do
        {
          if (v70 >= *(v71 + 2))
          {
            goto LABEL_111;
          }

          v233 = v70;
          v79 = *&v230[8 * v70];
          swift_getKeyPath();
          v242[0] = v7;
          sub_1A34C99A0();

          v80 = swift_unknownObjectWeakLoadStrong();
          if (!v80 || (v81 = [v80 menuItemsForAction_], swift_unknownObjectRelease(), !v81))
          {
            swift_getKeyPath();
            v242[0] = v7;
            sub_1A34C99A0();

            v242[0] = v7;
            swift_getKeyPath();
            sub_1A34C99C0();

            v89 = v234;
            swift_beginAccess();
            v90 = *(v7 + v89);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v7 + v89) = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v90 = sub_1A32992FC(0, *(v90 + 2) + 1, 1, v90);
              *(v7 + v234) = v90;
            }

            v93 = *(v90 + 2);
            v92 = *(v90 + 3);
            if (v93 >= v92 >> 1)
            {
              v90 = sub_1A32992FC((v92 > 1), v93 + 1, 1, v90);
            }

            *(v90 + 2) = v93 + 1;
            v94 = &v90[32 * v93];
            *(v94 + 4) = v79;
            *(v94 + 5) = MEMORY[0x1E69E7CC0];
            *(v94 + 6) = 0;
            *(v94 + 7) = 0;
            goto LABEL_78;
          }

          sub_1A31EC194(0, &qword_1EB0C90F8);
          v82 = sub_1A34CD370();

          if (v82 >> 62)
          {
            v7 = sub_1A34CD9B0();
            if (v7)
            {
LABEL_57:
              v242[0] = MEMORY[0x1E69E7CC0];
              sub_1A32EBBD4(0, v7 & ~(v7 >> 63), 0);
              if (v7 < 0)
              {
                goto LABEL_112;
              }

              v83 = 0;
              v84 = v242[0];
              v85 = v224;
              do
              {
                if ((v82 & 0xC000000000000001) != 0)
                {
                  v86 = MEMORY[0x1A58EF310](v83, v82);
                }

                else
                {
                  v86 = *(v82 + 8 * v83 + 32);
                }

                sub_1A3386720(v86, v79, v4);
                v242[0] = v84;
                v88 = *(v84 + 16);
                v87 = *(v84 + 24);
                if (v88 >= v87 >> 1)
                {
                  sub_1A32EBBD4(v87 > 1, v88 + 1, 1);
                  v85 = v224;
                  v84 = v242[0];
                }

                ++v83;
                *(v84 + 16) = v88 + 1;
                sub_1A33F1C9C(v4, v84 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88, type metadata accessor for ContactCardActionRow);
              }

              while (v7 != v83);

              v1 = v221;
              goto LABEL_73;
            }
          }

          else
          {
            v7 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
              goto LABEL_57;
            }
          }

          v84 = MEMORY[0x1E69E7CC0];
LABEL_73:
          swift_getKeyPath();
          v95 = v238;
          v242[0] = v238;
          sub_1A34C99A0();

          v242[0] = v95;
          swift_getKeyPath();
          sub_1A34C99C0();

          v96 = v234;
          swift_beginAccess();
          v90 = *&v95[v96];
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *&v95[v96] = v90;
          if ((v97 & 1) == 0)
          {
            v90 = sub_1A32992FC(0, *(v90 + 2) + 1, 1, v90);
            *&v95[v234] = v90;
          }

          v99 = *(v90 + 2);
          v98 = *(v90 + 3);
          if (v99 >= v98 >> 1)
          {
            v90 = sub_1A32992FC((v98 > 1), v99 + 1, 1, v90);
          }

          *(v90 + 2) = v99 + 1;
          v100 = &v90[32 * v99];
          *(v100 + 4) = v79;
          *(v100 + 5) = v84;
          *(v100 + 6) = 0;
          *(v100 + 7) = 0;
          v7 = v238;
LABEL_78:
          *(v7 + v234) = v90;
          swift_endAccess();
          v242[0] = v7;
          swift_getKeyPath();
          v6 = v235;
          sub_1A34C99B0();

          swift_getKeyPath();
          v242[0] = v7;
          sub_1A34C99A0();

          v101 = swift_unknownObjectWeakLoadStrong();
          if (v101)
          {
            v102 = [v101 defaultActionForActionType_];
            swift_unknownObjectRelease();
            if (v102)
            {
              v103 = v7;
              v104 = v102;
              v105 = sub_1A34CA230();
              v106 = v7;
              v107 = sub_1A34CD660();

              v108 = os_log_type_enabled(v105, v107);
              v228 = v103;
              if (v108)
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v222 = v110;
                v223 = swift_slowAlloc();
                v242[0] = v223;
                *v109 = v218;
                *(v109 + 4) = v103;
                *v110 = v106;
                *(v109 + 12) = 2080;
                v111 = v103;
                [v104 classForCoder];
                swift_getObjCClassMetadata();
                v112 = sub_1A34CE050();
                v114 = sub_1A31EE23C(v112, v113, v242);

                *(v109 + 14) = v114;
                *(v109 + 22) = 2080;
                v241 = v104;
                v115 = sub_1A34CD160();
                v117 = sub_1A31EE23C(v115, v116, v242);

                *(v109 + 24) = v117;
                *(v109 + 32) = 2080;
                v118 = [v104 type];
                v119 = sub_1A34CD110();
                v121 = v120;

                v122 = sub_1A31EE23C(v119, v121, v242);

                *(v109 + 34) = v122;
                *(v109 + 42) = 2080;
                v123 = [v104 label];
                v124 = sub_1A34CD110();
                v126 = v125;

                v127 = sub_1A31EE23C(v124, v126, v242);

                *(v109 + 44) = v127;
                *(v109 + 52) = 2080;
                v128 = [v104 bundleIdentifier];
                v129 = sub_1A34CD110();
                v131 = v130;

                v132 = sub_1A31EE23C(v129, v131, v242);

                *(v109 + 54) = v132;
                _os_log_impl(&dword_1A31E6000, v105, v107, "%@ Setting default action %s(%s) type=%s, label: %s bundleIdentifier: %s", v109, 0x3Eu);
                v133 = v222;
                sub_1A32D376C(v222);
                MEMORY[0x1A58F1010](v133, -1, -1);
                v134 = v223;
                swift_arrayDestroy();
                MEMORY[0x1A58F1010](v134, -1, -1);
                MEMORY[0x1A58F1010](v109, -1, -1);
              }

              v135 = [v104 contactProperty];
              v136 = [v135 contact];

              v137 = [v136 identifier];
              v138 = sub_1A34CD110();
              v140 = v139;

              v141 = HIBYTE(v140) & 0xF;
              if ((v140 & 0x2000000000000000) == 0)
              {
                v141 = v138 & 0xFFFFFFFFFFFFLL;
              }

              if (v141)
              {
                swift_getKeyPath();
                v142 = v228;
                v242[0] = v228;
                sub_1A34C99A0();

                v143 = v220[1];
                if (!v143 || (v144 = *v220, v138 == *v220) && v143 == v140 || (sub_1A34CDE30() & 1) != 0)
                {
                }

                else
                {
                  v222 = v142;
                  v223 = v104;

                  v145 = sub_1A34CA230();
                  v146 = sub_1A34CD650();

                  v215 = v146;
                  v217 = v145;
                  if (os_log_type_enabled(v145, v146))
                  {
                    v147 = swift_slowAlloc();
                    v148 = swift_slowAlloc();
                    v213 = v148;
                    v214 = swift_slowAlloc();
                    v242[0] = v214;
                    *v147 = v218;
                    v149 = v222;
                    *(v147 + 4) = v222;
                    *v148 = v238;
                    *(v147 + 12) = 2080;
                    v150 = v149;
                    v151 = sub_1A31EE23C(v138, v140, v242);

                    *(v147 + 14) = v151;
                    *(v147 + 22) = 2080;
                    v152 = sub_1A31EE23C(v144, v143, v242);

                    *(v147 + 24) = v152;
                    *(v147 + 32) = 2080;
                    v153 = quickActionTypeToString(v79);
                    v154 = sub_1A34CD110();
                    v156 = v155;

                    v157 = sub_1A31EE23C(v154, v156, v242);

                    *(v147 + 34) = v157;
                    *(v147 + 42) = 2080;
                    v158 = v223;
                    v159 = [v223 type];
                    v160 = sub_1A34CD110();
                    v162 = v161;

                    v163 = sub_1A31EE23C(v160, v162, v242);

                    *(v147 + 44) = v163;
                    *(v147 + 52) = 2080;
                    v142 = v228;
                    v164 = [v158 label];
                    v165 = sub_1A34CD110();
                    v167 = v166;

                    v168 = sub_1A31EE23C(v165, v167, v242);

                    *(v147 + 54) = v168;
                    v169 = v217;
                    _os_log_impl(&dword_1A31E6000, v217, v215, "%@: Default action contact identifier mismatch! Default action contact ID: '%s', Model contact ID: '%s' - actionType: %s, defaultAction.type: %s, defaultAction.label: %s", v147, 0x3Eu);
                    v170 = v213;
                    sub_1A32D376C(v213);
                    MEMORY[0x1A58F1010](v170, -1, -1);
                    v171 = v214;
                    swift_arrayDestroy();
                    MEMORY[0x1A58F1010](v171, -1, -1);
                    MEMORY[0x1A58F1010](v147, -1, -1);
                  }

                  else
                  {
                  }
                }
              }

              else
              {

                v142 = v228;
                v172 = v228;
                v173 = v104;
                v174 = sub_1A34CA230();
                v175 = sub_1A34CD650();

                if (os_log_type_enabled(v174, v175))
                {
                  v176 = swift_slowAlloc();
                  v177 = swift_slowAlloc();
                  v222 = v177;
                  v223 = swift_slowAlloc();
                  v242[0] = v223;
                  *v176 = v216;
                  *(v176 + 4) = v172;
                  *v177 = v238;
                  *(v176 + 12) = 2080;
                  v178 = v172;
                  v179 = quickActionTypeToString(v79);
                  LODWORD(v217) = v175;
                  v180 = v179;
                  v181 = sub_1A34CD110();
                  v183 = v182;

                  v184 = sub_1A31EE23C(v181, v183, v242);

                  *(v176 + 14) = v184;
                  *(v176 + 22) = 2080;
                  v185 = [v173 type];
                  v186 = sub_1A34CD110();
                  v188 = v187;

                  v189 = sub_1A31EE23C(v186, v188, v242);

                  *(v176 + 24) = v189;
                  *(v176 + 32) = 2080;
                  v190 = [v173 label];
                  v191 = sub_1A34CD110();
                  v193 = v192;

                  v194 = sub_1A31EE23C(v191, v193, v242);

                  *(v176 + 34) = v194;
                  _os_log_impl(&dword_1A31E6000, v174, v217, "%@: Default action contact identifier is empty - actionType: %s, defaultAction.type: %s, defaultAction.label: %s", v176, 0x2Au);
                  v195 = v222;
                  sub_1A32D376C(v222);
                  MEMORY[0x1A58F1010](v195, -1, -1);
                  v196 = v223;
                  swift_arrayDestroy();
                  MEMORY[0x1A58F1010](v196, -1, -1);
                  MEMORY[0x1A58F1010](v176, -1, -1);
                }
              }

              swift_getKeyPath();
              v242[0] = v142;
              v72 = v104;
              v73 = v235;
              sub_1A34C99A0();

              v242[0] = v142;
              swift_getKeyPath();
              sub_1A34C99C0();

              v74 = v1;
              v75 = v142;
              v76 = v238;
              v77 = v226;
              swift_beginAccess();
              v78 = swift_isUniquelyReferenced_nonNull_native();
              v241 = *&v76[v77];
              *&v76[v77] = 0x8000000000000000;
              sub_1A33F1004(v72, v79, v78);
              *&v76[v77] = v241;
              swift_endAccess();
              v242[0] = v75;
              v1 = v74;
              swift_getKeyPath();
              sub_1A34C99B0();
              v6 = v73;
              v7 = v76;

              v4 = v225;
            }
          }

          v70 = v233 + 1;
          v71 = v236;
        }

        while (v233 + 1 != v231);
      }

      swift_getKeyPath();
      v242[0] = v7;
      sub_1A34C99A0();

      v197 = swift_unknownObjectWeakLoadStrong();
      if (v197)
      {
        v198 = v197;
        if ([v197 supportsAction_])
        {
          v199 = v238;
          v200 = &v238[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked];
          v201 = 1;
          if ((v238[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked] & 1) == 0)
          {
LABEL_98:
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v212 - 2) = v199;
            *(&v212 - 8) = v201;
            v242[0] = v199;
            sub_1A34C9990();

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          v210 = [v198 supportsAction_];
          v201 = v210;
          v199 = v238;
          v200 = &v238[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked];
          if (v210 != v238[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked])
          {
            goto LABEL_98;
          }
        }

        swift_unknownObjectRelease();
        *v200 = v201;
      }

      else
      {
        v203 = v7;
        v204 = *(v7 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel_contact);
        if (v204)
        {
          v205 = objc_opt_self();
          v206 = v204;
          v207 = [objc_msgSend(v205 sharedAnalyzer)];
          swift_unknownObjectRelease();
          v208 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked;
          if (v207 != *(v203 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked))
          {
            v209 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v209);
            *(&v212 - 2) = v203;
            *(&v212 - 8) = v207;
            v242[0] = v203;
            sub_1A34C9990();

            return;
          }

          *(v203 + v208) = v207;
        }

        else
        {
          if (*(v7 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked))
          {
            v211 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v211);
            *(&v212 - 2) = v7;
            *(&v212 - 8) = 0;
            v242[0] = v7;
            sub_1A34C9990();

            return;
          }

          *(v7 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked) = 0;
        }
      }
    }
  }
}

unint64_t sub_1A33F0714(uint64_t a1, unsigned __int8 a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1A33DB254(a2, a4, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_1A33DC55C(v18, a3 & 1);
      result = sub_1A33DB254(a2, a4, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1A34CDE90();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1A33DDD5C();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v24 = v23[6] + 24 * result;
    *v24 = a2;
    *(v24 + 8) = a4;
    *(v24 + 16) = a5;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

unint64_t sub_1A33F0888(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A33DB370(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1A33DDED0();
    result = v17;
    goto LABEL_8;
  }

  sub_1A33DC840(v14, a2 & 1);
  result = sub_1A33DB370(a3);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1A34CDE90();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A33F09D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A33DB1D8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A33DCAB8(v14, a3 & 1);
      v9 = sub_1A33DB1D8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A34CDE90();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A33DE02C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v28 = v19[6] + 40 * v9;
    v29 = *a2;
    v30 = *(a2 + 16);
    *(v28 + 32) = *(a2 + 32);
    *v28 = v29;
    *(v28 + 16) = v30;
    v31 = v19[7] + 40 * v9;
    v32 = *(a1 + 16);
    *v31 = *a1;
    *(v31 + 16) = v32;
    *(v31 + 32) = *(a1 + 32);
    v33 = v19[2];
    v13 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v13)
    {
      v19[2] = v34;
      return sub_1A32ACBB0(a2, v35);
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * v9;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 24);
  v25 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v25;
  v26 = *(v20 + 32);
  *(v20 + 32) = *(a1 + 32);

  return sub_1A32891B0(v21, v22, v23, v24, v26);
}

uint64_t sub_1A33F0B7C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for ProminentColorCache.CacheKey();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A33DB400(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A33DE358();
      goto LABEL_7;
    }

    sub_1A33DCE08(v18, a4 & 1);
    v26 = sub_1A33DB400(a3);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A31F6A5C(a3, v12, type metadata accessor for ProminentColorCache.CacheKey);
      return sub_1A33F114C(v15, v12, a1, a2 & 1, v21);
    }

LABEL_15:
    result = sub_1A34CDE90();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  v24 = *(v22 + 8);
  *v22 = a1;
  *(v22 + 8) = a2 & 1;

  return sub_1A336F738(v23, v24);
}

_OWORD *sub_1A33F0D38(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A33DB3BC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A33DE730();
      goto LABEL_7;
    }

    sub_1A33DD478(v13, a3 & 1);
    v19 = sub_1A33DB3BC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A33CAF7C(a2, v21);
      return sub_1A33F1210(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A34CDE90();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1A31FA144(a1, v17);
}

uint64_t sub_1A33F0E84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_1A33DB69C(a2, a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      sub_1A33DE8D4();
      goto LABEL_7;
    }

    sub_1A33DD730(v17, a5 & 1);
    v24 = sub_1A33DB69C(a2, a3, a4);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A34CDE90();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if (v18)
  {
LABEL_8:
    v21 = v20[7];
    v22 = v21 + *(*(type metadata accessor for ContactLikeness(0) - 8) + 72) * v14;

    return sub_1A33F1BEC(a1, v22);
  }

LABEL_13:
  sub_1A33F128C(v14, a2, a3, a4, a1, v20);
}

unint64_t sub_1A33F1004(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A33E1F70(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1A33DEB44();
    result = v17;
    goto LABEL_8;
  }

  sub_1A33DDAC4(v14, a3 & 1);
  result = sub_1A33E1F70(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CNUIContactCardActionType(0);
  sub_1A34CDE90();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A33F114C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ProminentColorCache.CacheKey();
  result = sub_1A33F1C9C(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ProminentColorCache.CacheKey);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_1A33F1210(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A31FA144(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1A33F128C(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  v10 = a6[7];
  v11 = type metadata accessor for ContactLikeness(0);
  result = sub_1A33F1C9C(a5, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ContactLikeness);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

void sub_1A33F1340()
{
  v0 = [objc_opt_self() allSupportedActionTypesForBlockedContact];
  type metadata accessor for CNActionType(0);
  v1 = sub_1A34CD370();

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v2;
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    v2 = v5 + 1;
    v6 = *(v1 + 8 * v5 + 32);
    v7 = sub_1A33EE0DC();
    v9 = v8;

    v5 = v2;
    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1A32991EC(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_1A32991EC((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
}

id sub_1A33F1484(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions] = sub_1A33EA810(v7);
  v8 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes;
  *&v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes] = 0;
  *&v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__groupActions] = 0;
  v9 = &v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked] = 0;
  sub_1A34C99D0();
  swift_unknownObjectRetain();
  sub_1A31F08B0(&v3[v6]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  *&v3[v8] = a3;
  *&v3[OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel_contact] = a2;
  v10 = [a2 identifier];
  v11 = sub_1A34CD110();
  v13 = v12;

  *v9 = v11;
  v9[1] = v13;
  v32.receiver = v3;
  v32.super_class = type metadata accessor for InlineActionsViewModel();
  v14 = objc_msgSendSuper2(&v32, sel_init);
  v15 = qword_1EB0C12B0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1A34CA250();
  __swift_project_value_buffer(v17, qword_1EB0ED050);
  v18 = v16;
  v19 = sub_1A34CA230();
  v20 = sub_1A34CD660();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    swift_getKeyPath();
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    v24 = v18;
    sub_1A34C99A0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
    v25 = sub_1A34CD160();
    v27 = v26;

    v28 = sub_1A31EE23C(v25, v27, &v31);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_1A31E6000, v19, v20, "InlineActionsViewModel initialized from %@ for actionsProvider for contact identifier %s", v21, 0x16u);
    sub_1A32D376C(v22);
    MEMORY[0x1A58F1010](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1A58F1010](v23, -1, -1);
    MEMORY[0x1A58F1010](v21, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addObserver_];
    swift_unknownObjectRelease();
  }

  return v18;
}

uint64_t sub_1A33F18F0()
{
  result = sub_1A34C99E0();
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

uint64_t sub_1A33F19FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A33F1A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A33F1B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33F1B5C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1A33F1BA8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionTypes) = *(v0 + 24);
}

uint64_t sub_1A33F1BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactLikeness(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33F1C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id CNUIPRLikenessIntentLookup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNUIPRLikenessIntentLookup.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNUIPRLikenessIntentLookup();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNUIPRLikenessIntentLookup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNUIPRLikenessIntentLookup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A33F1E1C(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController] = 0;
  v5 = OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact;
  *&v2[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact] = 0;
  v6 = &v2[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady];
  v6[16] = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode];
  *(v7 + 8) = *(a1 + 64);
  v8 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v8;
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *&v2[v5] = a2;
  sub_1A33F51E4(a1, v14);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PosterEditingViewController();
  v10 = a2;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1A33F2474();

  sub_1A33F5598(a1);
  return v11;
}

id sub_1A33F1F84()
{
  v0 = sub_1A34CCE90();
  v16 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A34CCED0();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v6 = sub_1A34CD750();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A33F521C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_36;
  v8 = _Block_copy(aBlock);

  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A33F515C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A3284D0C(&qword_1ED854640, &unk_1EB0C6100);
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v5, v2, v8);
  _Block_release(v8);

  v9 = v0;
  v10 = v14[1];
  (*(v16 + 8))(v2, v9);
  (*(v3 + 8))(v5, v15);
  v11 = OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController;
  result = *(v10 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController);
  if (result)
  {
    [result setDelegate_];
    result = *(v10 + v11);
    if (result)
    {
      result = [result view];
      if (result)
      {
        v13 = result;
        [result removeFromSuperview];

        result = *(v10 + v11);
        if (result)
        {
          return [result removeFromParentViewController];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1A33F22F0()
{
  v1 = *&v0[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = [objc_allocWithZone(CNUIPRUISIncomingCallPosterContext) initWithContact:v2 showName:1 frame:{v6, v8, v10, v12}];
  }

  else
  {
    v14 = [objc_opt_self() emptyContext];
  }

  v13 = *&v0[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController];
  [v13 setContext_];
}

void sub_1A33F2474()
{
  v1 = v0;
  sub_1A33F1F84();
  v2 = *&v0[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact];
  if (!v2)
  {
    v14 = [objc_opt_self() emptyContext];
LABEL_5:
    v15 = &v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode];
    v16 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 8];
    if (v16 < 0)
    {
      v26 = *(v15 + 7);
      v25 = *(v15 + 8);

      v27 = v25;
      v28 = sub_1A3444DEC(v26, v27);
      v29 = objc_allocWithZone(CNUIPRUISPosterEditingViewController);
      v30 = v14;
      v31 = v14;
      v32 = sub_1A34CD0E0();
      v24 = [v29 initWithExtensionIdentifier:v32 configuration:v28 context:v31];

      v14 = v30;
    }

    else
    {
      v17 = *(v15 + 4);
      v18 = *v15;
      v19 = *(v15 + 2);
      v20 = v15[24];
      v76 = v18;
      v77 = v16;
      v78 = v19 & 1;
      v79 = HIDWORD(v19);
      v80 = v20 & 1;
      v81 = v17;
      sub_1A34C9010();
      sub_1A34C9010();
      v21 = v17;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADC8);
      MEMORY[0x1A58EE120](&v74, v22);
      v23 = v75;
      v24 = [objc_allocWithZone(CNUIPRUISPosterEditingViewController) initWithExistingConfiguration:v75 context:v14];
    }

    v33 = v24;
    [v33 setDelegate_];
    v34 = v33;
    [v34 setShowsContentWhenReady_];
    v35 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController];
    *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_viewController] = v34;

    [v1 addChildViewController_];
    v36 = [v1 view];
    if (v36)
    {
      v37 = v36;
      v38 = [v34 view];
      if (v38)
      {
        v39 = v38;
        [v37 addSubview_];

        v40 = [v34 view];
        if (v40)
        {
          v41 = v40;
          [v40 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1A34E5180;
          v43 = [v34 view];
          if (v43)
          {
            v44 = v43;
            v45 = [v43 leadingAnchor];

            v46 = [v1 view];
            if (v46)
            {
              v47 = v46;
              v48 = [v46 leadingAnchor];

              v49 = [v45 constraintEqualToAnchor_];
              *(v42 + 32) = v49;
              v50 = [v34 view];
              if (v50)
              {
                v51 = v50;
                v52 = [v50 trailingAnchor];

                v53 = [v1 view];
                if (v53)
                {
                  v54 = v53;
                  v55 = [v53 trailingAnchor];

                  v56 = [v52 constraintEqualToAnchor_];
                  *(v42 + 40) = v56;
                  v57 = [v34 view];
                  if (v57)
                  {
                    v58 = v57;
                    v59 = [v57 topAnchor];

                    v60 = [v1 view];
                    if (v60)
                    {
                      v61 = v60;
                      v62 = v14;
                      v63 = [v60 topAnchor];

                      v64 = [v59 constraintEqualToAnchor_];
                      *(v42 + 48) = v64;
                      v65 = [v34 view];
                      if (v65)
                      {
                        v66 = v65;
                        v67 = [v65 bottomAnchor];

                        v68 = [v1 &selRef_wrappedDefinition];
                        if (v68)
                        {
                          v69 = v68;
                          v70 = objc_opt_self();
                          v71 = [v69 bottomAnchor];

                          v72 = [v67 &selRef_familyName + 5];
                          *(v42 + 56) = v72;
                          sub_1A31EC194(0, &qword_1EB0C0198);
                          v73 = sub_1A34CD350();

                          [v70 activateConstraints_];

                          [v34 didMoveToParentViewController_];
                          return;
                        }

                        goto LABEL_30;
                      }

LABEL_29:
                      __break(1u);
LABEL_30:
                      __break(1u);
                      goto LABEL_31;
                    }

LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }

LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v3 = v2;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(CNUIPRUISIncomingCallPosterContext) initWithContact:v3 showName:1 frame:{v7, v9, v11, v13}];
    goto LABEL_5;
  }

LABEL_31:
  __break(1u);
}

id sub_1A33F2B38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A33F2C9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady + 8);
    v2 = Strong;
    sub_1A33F51A4(*(Strong + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady), v1);

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
      sub_1A34CC910();
    }
  }
}

uint64_t sub_1A33F2DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 72))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A33F2E34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A33F2EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A33F2F40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A33F2FC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v23 = *(v1 + 32);
  v24 = v4;
  v5 = *(v1 + 16);
  v22[0] = *v1;
  v6 = v22[0];
  v22[1] = v5;
  v7 = a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode;
  v8 = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 48);
  v26[2] = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 32);
  v26[3] = v8;
  v9 = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 16);
  v26[0] = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode);
  v26[1] = v9;
  v10 = *(v1 + 48);
  *(v7 + 32) = v23;
  *(v7 + 48) = v10;
  v25 = *(v1 + 64);
  v27 = *(v7 + 64);
  *(v7 + 64) = *(v1 + 64);
  *v7 = v6;
  *(v7 + 16) = v3;
  sub_1A33F51E4(v22, &v19);
  sub_1A33F5598(v26);
  v21 = *(v1 + 72);
  v11 = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact);
  *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_contact) = v21;
  sub_1A328D790(&v21, &v19, &qword_1EB0CAE58);

  v19 = *(v1 + 80);
  v20 = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v12 = a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady;
  v13 = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady);
  v14 = *(a1 + OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady + 8);
  *v12 = v16;
  *(v12 + 8) = v17;
  *(v12 + 16) = v18;
  return sub_1A3366240(v13, v14);
}

char *sub_1A33F30F0()
{
  v1 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v1;
  v2 = *(v0 + 72);
  v20 = *(v0 + 64);
  v3 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = objc_allocWithZone(type metadata accessor for PosterEditingViewController());
  sub_1A33F51E4(v19, v17);
  v8 = v2;
  v9 = sub_1A33F1E1C(v19, v2);
  v17[0] = v4;
  v17[1] = v5;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v10 = &v9[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady];
  v11 = *&v9[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady];
  v12 = *&v9[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_isReady + 8];
  *v10 = v14;
  *(v10 + 1) = v15;
  v10[16] = v16;
  sub_1A3366240(v11, v12);
  return v9;
}

uint64_t sub_1A33F31C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33F5544();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A33F322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33F5544();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33F3290()
{
  sub_1A33F5544();
  sub_1A34CB940();
  __break(1u);
}

uint64_t sub_1A33F32B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACD8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACE8);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v50 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACF0);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACF8);
  MEMORY[0x1A58EE120](v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    v84[2] = v80;
    v84[3] = v81;
    v85 = v82;
    v84[0] = v78;
    v84[1] = v79;
    sub_1A335DA24(v84, &v72);
    sub_1A34CD450();
    v14 = sub_1A34CD440();
    v15 = swift_allocObject();
    v58 = v7;
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    v17 = v73;
    v18 = v75;
    *(v15 + 64) = v74;
    *(v15 + 80) = v18;
    *(v15 + 96) = v76;
    *(v15 + 32) = v72;
    *(v15 + 48) = v17;
    sub_1A335DA24(v84, &v64);
    sub_1A33F4328(v1, &v72);
    v19 = sub_1A34CD440();
    v20 = swift_allocObject();
    v21 = v67;
    *(v20 + 64) = v66;
    *(v20 + 80) = v21;
    v22 = v65;
    *(v20 + 32) = v64;
    *(v20 + 48) = v22;
    v23 = v74;
    *(v20 + 120) = v73;
    *(v20 + 136) = v23;
    v24 = v76;
    *(v20 + 152) = v75;
    *(v20 + 16) = v19;
    *(v20 + 24) = v16;
    *(v20 + 96) = v68;
    *(v20 + 168) = v24;
    *(v20 + 104) = v72;
    sub_1A34CC940();
    v50 = v72;
    v51 = v2;
    v25 = v73;
    v26 = BYTE8(v73);
    v56 = a1;
    v57 = v4;
    v27 = v74;
    v28 = v2;
    v29 = *(&v72 + 1) & 0xFFFFFFFFFFFFFF8;
    v30 = *(v28 + 56);
    v54 = *(v28 + 64);
    v53 = *(v28 + 72);
    v55 = v9;
    v31 = DWORD1(v73);
    v70 = v54;
    v71 = v53;
    v32 = v30;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC760();
    v33 = v64;
    v34 = v25 | (v31 << 32);
    LOBYTE(v31) = v65;
    v35 = sub_1A34CBA90();
    *&v72 = v50;
    *(&v72 + 1) = v29;
    *&v73 = v34;
    *(&v73 + 1) = v26;
    *&v74 = v27;
    *(&v76 + 1) = v30;
    *v77 = v33;
    v68 = v76;
    *v69 = v33;
    v64 = v72;
    v65 = v73;
    v77[16] = v31;
    v77[17] = 1;
    v77[18] = v35;
    *&v69[15] = *&v77[15];
    v66 = v74;
    v67 = v75;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD40);
    v37 = sub_1A33F4428(&qword_1EB0CAD48, &qword_1EB0CAD40, &unk_1A34F2828, sub_1A33F41F4);
    v38 = v59;
    sub_1A34CC420();
    sub_1A3288FDC(&v72, &qword_1EB0CAD40);
    *&v64 = v36;
    *(&v64 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v61;
    v40 = v62;
    sub_1A34CC1F0();
    (*(v60 + 8))(v38, v39);
    v41 = sub_1A34CCC80();
    v43 = v42;
    v44 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD28) + 36);
    sub_1A33F3BCC(v51, v84, v44);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD68) + 36));
    *v45 = v41;
    v45[1] = v43;
    v46 = sub_1A34CCCF0();
    LOBYTE(v64) = v54;
    *(&v64 + 1) = v53;
    sub_1A34CC740();
    v47 = v70;
    v48 = v40 + *(v63 + 36);
    *v48 = v46;
    *(v48 + 8) = v47;
    sub_1A320C270(v40, v55);
    swift_storeEnumTagMultiPayload();
    sub_1A33F3F58();
    sub_1A33F4248();
    sub_1A34CB3E0();
    sub_1A320C2E0(v40);
    return sub_1A335D9D0(v84);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    sub_1A3288FDC(&v78, &qword_1EB0C84B0);
    MEMORY[0x1A58EE120](&v72, v13);
    sub_1A33F3ED4();
    sub_1A34CC1F0();
    sub_1A33F3F28(&v72);
    sub_1A328D790(v6, v9, &qword_1EB0CACD8);
    swift_storeEnumTagMultiPayload();
    sub_1A33F3F58();
    sub_1A33F4248();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v6, &qword_1EB0CACD8);
  }
}

uint64_t sub_1A33F398C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[8];
  v7 = *(a1 + 2);
  sub_1A335DA24(a4, &v27);
  v8 = v28;
  v9 = v30;
  v10 = v31;
  v28 = v4;
  v11 = v29;
  v29 = v5;
  v30 = v6;
  v31 = v7;
  v12 = v8 | (v11 << 32);
  v13 = v7;
  if (sub_1A3443820(v12, v9, v10, v4 | (v5 << 32), v6, v13))
  {
    v14 = v27;
    v15 = qword_1EB0C2300;
    v16 = v13;
    v17 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v33 = xmmword_1EB0ED408;
    v34 = *&qword_1EB0ED418;
    v35 = xmmword_1EB0ED428;
    v18 = type metadata accessor for LazyPosterSnapshot(0);
    v19 = swift_allocObject();
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    sub_1A34C99D0();
    v20 = swift_allocObject();
    v21 = v34;
    *(v20 + 40) = v33;
    *(v20 + 16) = v4;
    *(v20 + 20) = v5;
    *(v20 + 24) = v6;
    *(v20 + 32) = v16;
    *(v20 + 56) = v21;
    *(v20 + 72) = v35;
    *(v20 + 88) = v14;
    *(v19 + 16) = &unk_1A34E95B0;
    *(v19 + 24) = v20;
    v25 = v18;
    v26 = &off_1F161E320;

    *&v24 = v19;
    __swift_destroy_boxed_opaque_existential_0(v32);
    sub_1A31EE568(&v24, v32);
  }

  else
  {
  }

  v25 = &type metadata for PosterConfigurationSource;
  v26 = &off_1F16220A8;
  *&v24 = swift_allocObject();
  sub_1A335DA24(&v27, v24 + 16);
  sub_1A31EE4BC(&v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACF8);
  sub_1A34CC910();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  return sub_1A335D9D0(&v27);
}

uint64_t sub_1A33F3BCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A34CC610();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = *(a1 + 72);
  LOBYTE(v27) = *(a1 + 64);
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  if (v33)
  {
    v15 = 1;
  }

  else
  {
    v26 = a3;
    v16 = a2[7];
    v17 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    v15 = 1;
    if (v18)
    {
      v21 = v18;
      sub_1A34CC5C0();
      (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
      v22 = sub_1A34CC680();

      (*(v7 + 8))(v9, v6);
      v23 = sub_1A34CBA90();
      v24 = 30.0;
      if (v20)
      {
        v24 = 0.0;
      }

      v27 = v22;
      v28 = 0;
      v29 = 257;
      v30 = v23;
      v31 = v24;
      v32 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD88);
      sub_1A33F4370();
      sub_1A34CC1F0();

      a3 = v26;
      sub_1A33F44AC(v13, v26);
      v15 = 0;
    }

    else
    {
      a3 = v26;
    }
  }

  return (*(v11 + 56))(a3, v15, 1, v10);
}

unint64_t sub_1A33F3ED4()
{
  result = qword_1EB0CAD10;
  if (!qword_1EB0CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD10);
  }

  return result;
}

unint64_t sub_1A33F3F58()
{
  result = qword_1EB0CAD18;
  if (!qword_1EB0CAD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CACF0);
    sub_1A33F4010();
    sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD18);
  }

  return result;
}

unint64_t sub_1A33F4010()
{
  result = qword_1EB0CAD20;
  if (!qword_1EB0CAD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD28);
    sub_1A33F40C8();
    sub_1A3284D0C(&qword_1EB0CAD60, &qword_1EB0CAD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD20);
  }

  return result;
}

unint64_t sub_1A33F40C8()
{
  result = qword_1EB0CAD30;
  if (!qword_1EB0CAD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD40);
    sub_1A33F4428(&qword_1EB0CAD48, &qword_1EB0CAD40, &unk_1A34F2828, sub_1A33F41F4);
    swift_getOpaqueTypeConformance2();
    sub_1A33F515C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD30);
  }

  return result;
}

unint64_t sub_1A33F41F4()
{
  result = qword_1EB0CAD50;
  if (!qword_1EB0CAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD50);
  }

  return result;
}

unint64_t sub_1A33F4248()
{
  result = qword_1EB0CAD70;
  if (!qword_1EB0CAD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CACD8);
    sub_1A33F3ED4();
    sub_1A33F515C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD70);
  }

  return result;
}

id sub_1A33F4304@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 44);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return v4;
}

unint64_t sub_1A33F4370()
{
  result = qword_1EB0CAD90;
  if (!qword_1EB0CAD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD88);
    sub_1A33F4428(&qword_1EB0CAD98, &unk_1EB0CADA0, &unk_1A34F2868, sub_1A31F08D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD90);
  }

  return result;
}

uint64_t sub_1A33F4428(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A33F44AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33F451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADF8);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  sub_1A31EE4BC(a1, v54);
  v55 = sub_1A34CBA90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE10);
  sub_1A33F4428(&qword_1EB0CAE18, &qword_1EB0CAE10, &unk_1A34F2AB0, sub_1A32B4E7C);
  sub_1A34CC1F0();
  sub_1A3288FDC(v54, &qword_1EB0CAE10);
  v54[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000019, 0x80000001A3511200);
  v54[1] = v13;
  sub_1A328A95C();
  v14 = sub_1A34CBE30();
  v16 = v15;
  v18 = v17;
  sub_1A34CBBB0();
  v19 = sub_1A34CBE10();
  v45 = v20;
  v46 = v19;
  v22 = v21;
  v24 = v23;

  sub_1A328A9B0(v14, v16, v18 & 1);

  v25 = sub_1A34CBA90();
  LOBYTE(v16) = v22 & 1;
  LOBYTE(v54[0]) = v22 & 1;
  v53 = 1;
  v26 = &v4[*(v48 + 36)];
  sub_1A34CCB60();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE20);
  v28 = &v26[*(v27 + 52)];
  v29 = *(sub_1A34CAD60() + 20);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_1A34CB200();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v28 = _Q0;
  *&v26[*(v27 + 56)] = 256;
  v37 = v45;
  *v4 = v46;
  *(v4 + 1) = v37;
  v4[16] = v16;
  *(v4 + 3) = v24;
  v4[32] = v25;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  v4[72] = 1;
  sub_1A33F548C();
  v38 = v50;
  sub_1A34CC1F0();
  sub_1A3288FDC(v4, &qword_1EB0CADF8);
  v39 = v47;
  v40 = v49;
  sub_1A328D790(v47, v49, &qword_1EB0CAE08);
  v41 = v51;
  sub_1A328D790(v38, v51, &qword_1EB0CAE00);
  v42 = v52;
  sub_1A328D790(v40, v52, &qword_1EB0CAE08);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE48);
  sub_1A328D790(v41, v42 + *(v43 + 48), &qword_1EB0CAE00);
  sub_1A3288FDC(v38, &qword_1EB0CAE00);
  sub_1A3288FDC(v39, &qword_1EB0CAE08);
  sub_1A3288FDC(v41, &qword_1EB0CAE00);
  return sub_1A3288FDC(v40, &qword_1EB0CAE08);
}

uint64_t sub_1A33F49E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADE0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - v2);
  *v3 = sub_1A34CCC80();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADE8);
  sub_1A33F451C(v0, v3 + *(v5 + 44));
  sub_1A3284D0C(&qword_1EB0CADF0, &qword_1EB0CADE0);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0CADE0);
}

void sub_1A33F4B08(void *a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 16];
    v33 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode];
    v34 = v2;
    v3 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 48];
    v35 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 32];
    v36 = v3;
    v37 = *&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 64];
    v4 = *(&v33 + 1);
    v5 = v34;
    v6 = *(&v34 + 1) | ((*(&v34 + 5) | (BYTE7(v34) << 16)) << 32);
    v7 = BYTE8(v34);
    v8 = v35;
    if ((*(&v33 + 1) & 0x8000000000000000) != 0)
    {
      v12 = v37;
      v18 = *(&v34 + 9);
      v19 = *(&v34 + 13);
      v13 = *(&v33 + 1) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = HIBYTE(v34);
      v15 = v33;
      v21 = a1;
      sub_1A33F51E4(&v33, &v24);

      v24 = v15;
      v25 = v13;
      v26 = v5;
      v27[6] = BYTE6(v6);
      *&v27[4] = WORD2(v6);
      *v27 = v6;
      v28 = v7;
      v31 = v14;
      v30 = v19;
      v29 = v18;
      v32 = v8;
      v16 = v8;
      v17 = v21;
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A3444A44(v17, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADC0);
      sub_1A34CC910();
    }

    else
    {
      v9 = BYTE8(v34) & 1;
      v20 = v33;
      v11 = a1;
      sub_1A33F51E4(&v33, &v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADC8);
      MEMORY[0x1A58EE120](&v22);
      objc_storeStrong(&v23, a1);
      v24 = v20;
      v25 = v4;
      v26 = v5 & 1;
      *&v27[3] = v6 >> 24;
      v28 = v9;
      v32 = v8;
      sub_1A34CC910();
      [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else if ((*&v1[OBJC_IVAR____TtC14ContactsUICore27PosterEditingViewController_mode + 8] & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CADC0);
    sub_1A34CC910();
  }

  else
  {

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1A33F4E3C()
{
  v0 = sub_1A34CCE90();
  v11 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A34CCED0();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v6 = sub_1A34CD750();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A33F5134;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_19;
  v8 = _Block_copy(aBlock);

  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A33F515C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A3284D0C(&qword_1ED854640, &unk_1EB0C6100);
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v5, v2, v8);
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_1A33F515C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33F51A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A34C9010();

    return sub_1A34C9010();
  }

  return result;
}

void sub_1A33F523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A33F532C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33F5374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A33F53E0()
{
  result = qword_1EB0CADD0;
  if (!qword_1EB0CADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CADD8);
    sub_1A33F3F58();
    sub_1A33F4248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CADD0);
  }

  return result;
}

unint64_t sub_1A33F548C()
{
  result = qword_1EB0CAE28;
  if (!qword_1EB0CAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CADF8);
    sub_1A33B77B8();
    sub_1A3284D0C(&qword_1EB0CAE40, &qword_1EB0CAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAE28);
  }

  return result;
}

unint64_t sub_1A33F5544()
{
  result = qword_1EB0CAE50;
  if (!qword_1EB0CAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAE50);
  }

  return result;
}

unint64_t sub_1A33F55C8()
{
  result = qword_1EB0CAE60;
  if (!qword_1EB0CAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAE68);
    sub_1A3284D0C(&qword_1EB0CADF0, &qword_1EB0CADE0);
    sub_1A33F515C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAE60);
  }

  return result;
}

unsigned __int8 *sub_1A33F56B8(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec];
  if (v3 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 != 2)
  {
    if (((v3 ^ v2) & 1) == 0)
    {
      return result;
    }

    if ((v2 & 1) != (v3 & 1))
    {
      if (v3)
      {
        v4 = sub_1A33F8310();
      }

      else
      {
        v4 = sub_1A33F5768();
      }

      v5 = v4;
      [v4 removeFromSuperlayer];
    }
  }

  return [v1 setNeedsDisplay];
}

id sub_1A33F5788()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v0 setAllowsEdgeAntialiasing_];
  [v0 setAllowsGroupOpacity_];
  [v0 setAnchorPoint_];
  [v0 setBounds_];
  v1 = sub_1A34CD0E0();
  [v0 setName_];

  [v0 setPosition_];
  v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v2 &selRef:1 sliderValueChanged:?];
  [v2 setAllowsGroupOpacity_];
  [v2 setAnchorPoint_];
  [v2 setBounds_];
  v3 = sub_1A34CD0E0();
  [v2 setName_];

  [v2 setPosition_];
  CATransform3DMakeScale(&v15, 0.2, 0.2, 1.0);
  [v2 setTransform_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v4 &selRef:1 sliderValueChanged:?];
  [v4 setAllowsGroupOpacity_];
  [v4 setBounds_];
  v5 = sub_1A34CD0E0();
  [v4 setName_];

  [v4 setPosition_];
  GenericRGB = CGColorCreateGenericRGB(0.9961, 0.9961, 0.9961, 1.0);
  [v4 setFillColor_];

  v7 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  [v4 setStrokeColor_];

  Mutable = CGPathCreateMutable();
  v15.m11 = 1.0;
  v15.m12 = 0.0;
  v15.m13 = 0.0;
  v15.m14 = 1.0;
  v15.m21 = 0.0;
  v15.m22 = 0.0;
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(Mutable);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(Mutable);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(Mutable);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(Mutable);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(Mutable);
  [v4 setPath_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v9 setAllowsEdgeAntialiasing_];
  [v9 setAllowsGroupOpacity_];
  [v9 setBounds_];
  v10 = sub_1A34CD0E0();
  [v9 setName_];

  [v9 setPosition_];
  v11 = CGColorCreateGenericRGB(0.9961, 0.9961, 0.9961, 1.0);
  [v9 setFillColor_];

  v12 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  [v9 setStrokeColor_];

  v13 = CGPathCreateMutable();
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  sub_1A34CD6D0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  sub_1A34CD6E0();
  CGPathCloseSubpath(v13);
  [v9 setPath_];
  [v2 addSublayer_];
  [v2 addSublayer_];
  [v0 addSublayer_];

  return v0;
}

id sub_1A33F8330(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1A33F8390()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v0 setBounds_];
  [v0 setPosition_];
  [v0 setAllowsEdgeAntialiasing_];
  [v0 setAllowsGroupOpacity_];
  v1 = *MEMORY[0x1E69796E0];
  [v0 setCornerCurve_];
  CGAffineTransformMakeScale(&v18, 3.0, 3.0);
  [v0 setAffineTransform_];
  Mutable = CGPathCreateMutable();
  *&v18.a = 0x3FF0000000000000uLL;
  v18.c = 0.0;
  v18.d = 1.0;
  *&v18.tx = 0uLL;
  sub_1A34CD6D0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  CGPathCloseSubpath(Mutable);
  v3 = [objc_allocWithZone(MEMORY[0x1E69794A0]) &selRef_isObject_kindOfClass_andEqualToObject_withBlocks_];
  [v3 setPath_];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  [v3 setFillColor_];
  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  [v3 setStrokeColor_];
  v9 = v3;
  [v9 setBounds_];
  [v9 setPosition_];
  [v9 setAllowsEdgeAntialiasing_];
  [v9 setAllowsGroupOpacity_];
  [v9 setCornerCurve_];

  v10 = CGPathCreateMutable();
  sub_1A34CD6D0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  sub_1A34CD6F0();
  CGPathCloseSubpath(v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v11 setPath_];
  v12 = [v4 whiteColor];
  v13 = [v12 CGColor];

  [v11 setFillColor_];
  v14 = [v4 clearColor];
  v15 = [v14 CGColor];

  [v11 setStrokeColor_];
  v16 = v11;
  [v16 setBounds_];
  [v16 setPosition_];
  [v16 setAllowsEdgeAntialiasing_];
  [v16 setAllowsGroupOpacity_];
  [v16 setCornerCurve_];

  [v0 addSublayer_];
  [v0 addSublayer_];

  return v0;
}

_BYTE *sub_1A33F89FC(char *a1)
{
  v2 = *a1;
  v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec] = 2;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___businessLayer] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___personLayer] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SilhouetteLayer();
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v3[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec] = v2;
  v4 = [objc_opt_self() standardPreferences];
  v5 = sub_1A34CD0E0();
  v6 = [v4 userHasOptedInToPreference_];

  if (v6)
  {
    v7 = [objc_opt_self() orangeColor];
    v8 = [v7 CGColor];

    [v3 setBackgroundColor_];
  }

  [v3 setOpaque_];
  [v3 setNeedsDisplay];
  return v3;
}

uint64_t sub_1A33F8B60(void *a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec;
  v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec] = 2;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___businessLayer] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___personLayer] = 0;
  sub_1A31EE354(a1, v16);
  v4 = type metadata accessor for SilhouetteLayer();
  if (swift_dynamicCast())
  {
    v5 = v15;
    v1[v3] = *(v15 + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = sub_1A34CDE10();
    v14.receiver = v1;
    v14.super_class = v4;
    v7 = objc_msgSendSuper2(&v14, sel_initWithLayer_, v6);
    swift_unknownObjectRelease();
    v8 = [objc_opt_self() standardPreferences];
    v9 = sub_1A34CD0E0();
    v10 = [v8 userHasOptedInToPreference_];

    if (v10)
    {
      v11 = [objc_opt_self() orangeColor];
      v12 = [v11 CGColor];

      [v7 setBackgroundColor_];
    }

    [v7 setOpaque_];
    [v7 setNeedsDisplay];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v7;
  }

  else
  {
    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

void sub_1A33F8EE0()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SilhouetteLayer();
  objc_msgSendSuper2(&v15, sel_display);
  v1 = v0[OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec];
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardPreferences];
    v3 = sub_1A34CD0E0();
    v4 = [v2 userHasOptedInToPreference_];

    if (!v4)
    {
      return;
    }

    v5 = [objc_opt_self() redColor];
    v6 = [v5 CGColor];

    [v0 setBackgroundColor_];
  }

  else
  {
    if (v1)
    {
      v7 = 853.3333;
    }

    else
    {
      v7 = 3485.0;
    }

    v8 = [objc_opt_self() standardPreferences];
    v9 = sub_1A34CD0E0();
    v10 = [v8 userHasOptedInToPreference_];

    if (v10)
    {
      [v0 setBackgroundColor_];
    }

    if (v1)
    {
      v11 = sub_1A33F5768();
    }

    else
    {
      v11 = sub_1A33F8310();
    }

    v6 = v11;
    v12 = [v11 superlayer];
    if (v12)
    {
    }

    else
    {
      [v0 addSublayer_];
    }

    [v0 bounds];
    Width = CGRectGetWidth(v16);
    CGAffineTransformMakeScale(&v14, Width / v7, Width / v7);
    [v6 setAffineTransform_];
    [v6 setAnchorPoint_];
    [v0 bounds];
    [v6 setFrame_];
    [v6 setGeometryFlipped_];
  }
}

id sub_1A33F91D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SilhouetteLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t QuickActionType.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

Swift::String __swiftcall ContactCardActionProvider.localizedTitle(for:)(ContactsUICore::QuickActionType a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (v1 != 1)
      {
        goto LABEL_13;
      }

      v2 = 0xD000000000000011;
      v4 = "ACTION_VIDEO_CALL";
    }

    else
    {
      v2 = 0xD000000000000011;
      v4 = "ACTION_AUDIO_CALL";
    }

    v3 = ((v4 - 32) | 0x8000000000000000);
    goto LABEL_14;
  }

  v2 = 0x4D5F4E4F49544341;
  if (v1 == 2)
  {
    v3 = 0xEE00454741535345;
    goto LABEL_14;
  }

  if (v1 == 3)
  {
    v3 = 0xEB000000004C4941;
    goto LABEL_14;
  }

  if (v1 != 4)
  {
LABEL_13:
    v2 = 0;
    v3 = 0xE000000000000000;
    goto LABEL_14;
  }

  v3 = 0xEB000000004F464ELL;
  v2 = 0x495F4E4F49544341;
LABEL_14:
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall ContactCardActionProvider.symbolImageName(for:)(ContactsUICore::QuickActionType a1)
{
  v1 = 0xEA00000000006C6CLL;
  v2 = *a1;
  v3 = 0x69662E656E6F6870;
  v4 = 0x80000001A3510350;
  v5 = 0xD000000000000012;
  if (v2 != 5)
  {
    v5 = 0x697261666173;
    v4 = 0xE600000000000000;
  }

  v6 = 0xED00006C6C69662ELL;
  v7 = 0x65706F6C65766E65;
  if (v2 != 3)
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  if (*a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x69662E6F65646976;
  v9 = 0xEC0000006C6C6966;
  if (v2 == 1)
  {
    v9 = 0xEA00000000006C6CLL;
  }

  else
  {
    v8 = 0x2E6567617373656DLL;
  }

  if (*a1)
  {
    v3 = v8;
    v1 = v9;
  }

  if (*a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v1;
  }

  else
  {
    v11 = v4;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

unint64_t sub_1A33F94C8()
{
  result = qword_1EB0CAE88;
  if (!qword_1EB0CAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAE88);
  }

  return result;
}

void sub_1A33F953C(void *a1, void *a2)
{
  v4 = sub_1A34C9650();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v43 - v13;
  v15 = [a1 stringValue];
  if (!v15)
  {
    sub_1A34CD110();
    v15 = sub_1A34CD0E0();
  }

  v46 = [objc_allocWithZone(CNHandle) initWithStringValue:v15 type:2];

  v16 = objc_opt_self();
  v17 = [v16 _cnui_telephonyURLWithHandle_contact_preferDefaultApp_];
  if (v17)
  {
    v18 = v17;
    sub_1A34C9620();

    v19 = *(v5 + 32);
    v19(v14, v10, v4);
    v20 = [a2 selectedChannel];
    if (!v20)
    {
      v20 = [a2 preferredChannel];
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    v44 = v16;
    v45 = v14;
    v21 = v20;
    v22 = sub_1A34CD110();
    v24 = v23;

    if ((sub_1A33F9960() & 1) == 0)
    {
LABEL_11:
      v38 = sub_1A34CD0E0();

      v39 = [v44 _cnui_telephonyURLWithHandle_contact_channelIdentifier_preferDefaultApp_];

      v14 = v45;
      if (v39)
      {
        sub_1A34C9620();

        (*(v5 + 8))(v14, v4);
        v19(v14, v7, v4);
      }

LABEL_13:
      v40 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
      v41 = sub_1A34C9600();
      [v40 openSensitiveURLInBackground:v41 withOptions:0 completionHandler:0];

      (*(v5 + 8))(v14, v4);
      return;
    }

    v25 = sub_1A34CD1F0();
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v26 >= v25 >> 14)
    {
      v27 = sub_1A34CD2A0();
      v29 = v28;
      v30 = a2;
      v31 = v4;
      v32 = v5;
      v34 = v33;
      v43 = v7;
      v36 = v35;

      v37 = v34;
      v5 = v32;
      v4 = v31;
      a2 = v30;
      MEMORY[0x1A58EE9C0](v27, v29, v37, v36);
      v7 = v43;

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v42 = v46;
  }
}

uint64_t sub_1A33F9960()
{

  v0 = sub_1A34CD220();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1A34CD220();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1A34CDE30();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1A34CD220();
      v3 = v5;
    }

    while (v5);
  }

  sub_1A34CD220();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_1A33F9ABC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42[-v5];
  v7 = sub_1A34C9650();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1A34C9120();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = [a1 value];
  v16 = [objc_opt_self() singleLineStringFromPostalAddress:v48 addCountryName:0];
  if (v16)
  {
    v45 = v10;
    v46 = v8;
    v47 = v7;
    v17 = v16;
    v18 = sub_1A34CD110();
    v20 = v19;

    v49 = v18;
    v50 = v20;
    sub_1A34C9100();
    sub_1A328A95C();
    v21 = MEMORY[0x1E69E6158];
    v22 = sub_1A34CD8F0();
    v24 = v23;
    (*(v12 + 8))(v15, v11);

    if (v24)
    {
      v44 = "ilhouetteLayer.swift";
      v43 = [a2 iOSLegacyIdentifier];
      v25 = [a2 identifier];
      v26 = sub_1A34CD110();
      v28 = v27;

      v29 = [a1 identifier];
      v30 = sub_1A34CD110();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE90);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1A34E5190;
      *(v33 + 56) = v21;
      v34 = sub_1A329A290();
      *(v33 + 64) = v34;
      *(v33 + 32) = v22;
      *(v33 + 40) = v24;
      v35 = MEMORY[0x1E69E7358];
      *(v33 + 96) = MEMORY[0x1E69E72F0];
      *(v33 + 104) = v35;
      *(v33 + 72) = v43;
      *(v33 + 136) = v21;
      *(v33 + 144) = v34;
      *(v33 + 112) = 0;
      *(v33 + 120) = 0xE000000000000000;
      *(v33 + 176) = v21;
      *(v33 + 184) = v34;
      *(v33 + 152) = v26;
      *(v33 + 160) = v28;
      *(v33 + 216) = v21;
      *(v33 + 224) = v34;
      *(v33 + 192) = v30;
      *(v33 + 200) = v32;
      sub_1A34CD130();

      sub_1A34C9640();

      v37 = v46;
      v36 = v47;
      if ((*(v46 + 48))(v6, 1, v47) == 1)
      {

        sub_1A3288FDC(v6, &qword_1EB0C71D8);
      }

      else
      {
        v39 = v45;
        (*(v37 + 32))(v45, v6, v36);
        v40 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
        v41 = sub_1A34C9600();
        [v40 openSensitiveURLInBackground:v41 withOptions:0 completionHandler:0];

        (*(v37 + 8))(v39, v36);
      }
    }

    else
    {
    }
  }

  else
  {
    v38 = v48;
  }
}

uint64_t sub_1A33F9F50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1A34C9650();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v26 - v13;
  v15 = [a1 username];
  sub_1A34CD110();

  LOBYTE(v15) = sub_1A3408398();

  v16 = &selRef_urlString;
  if (v15)
  {
    v16 = &selRef_username;
  }

  v17 = [a1 *v16];
  sub_1A34CD110();

  sub_1A34C9640();

  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C71D8);
    v19 = [a1 urlString];
    sub_1A34CD110();

    sub_1A34C9640();

    if (v18(v4, 1, v8) == 1)
    {
      return sub_1A3288FDC(v4, &qword_1EB0C71D8);
    }

    else
    {
      v23 = v27;
      (*(v9 + 32))(v27, v4, v8);
      v24 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
      v25 = sub_1A34C9600();
      [v24 openSensitiveURLInBackground:v25 withOptions:0 completionHandler:0];

      return (*(v9 + 8))(v23, v8);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v21 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
    v22 = sub_1A34C9600();
    [v21 openSensitiveURLInBackground:v22 withOptions:0 completionHandler:0];

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_1A33FA2F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v59 - v3;
  v4 = sub_1A34C9650();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9120();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 service];
  v12 = sub_1A34CD110();
  v14 = v13;

  v15 = [a1 username];
  v16 = sub_1A34CD110();
  v18 = v17;

  v65 = v16;
  v66 = v18;
  sub_1A34C9100();
  sub_1A328A95C();
  v19 = sub_1A34CD8F0();
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v19;
  v65 = v12;
  v66 = v14;
  v63 = sub_1A34CD110();
  v64 = v23;
  v24 = MEMORY[0x1E69E6158];
  v25 = sub_1A34CD900();

  if (!v25)
  {

    goto LABEL_8;
  }

  v65 = v12;
  v66 = v14;
  v63 = sub_1A34CD110();
  v64 = v26;
  v27 = sub_1A34CD900();

  if (v27)
  {
  }

  v33 = sub_1A34CD1D0();
  if (sub_1A34CD1D0() >= v33)
  {
LABEL_6:
  }

  v34 = sub_1A34CD1D0();
  result = sub_1A34CD1D0();
  if (__OFSUB__(v34, result))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v35 = sub_1A34CD1F0();
  v36 = sub_1A33FA918(v35, v16, v18);
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = MEMORY[0x1A58EE9C0](v36, v38, v40, v42);
  v45 = v44;

  if (v43 == 0xD000000000000011 && 0x80000001A3511370 == v45)
  {
  }

  else
  {
    v49 = sub_1A34CDE30();

    if ((v49 & 1) == 0)
    {
    }
  }

  v50 = sub_1A34CD1D0();
  result = sub_1A34CD1D0();
  if (__OFSUB__(v50, result))
  {
    goto LABEL_21;
  }

  sub_1A34CD1F0();
  v51 = sub_1A34CD2A0();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v22 = MEMORY[0x1A58EE9C0](v51, v53, v55, v57);
  v21 = v58;

  v24 = MEMORY[0x1E69E6158];
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A34DAA10;
  *(v29 + 56) = v24;
  *(v29 + 64) = sub_1A329A290();
  *(v29 + 32) = v22;
  *(v29 + 40) = v21;
  sub_1A34CD130();

  v30 = v60;
  sub_1A34C9640();

  v32 = v61;
  v31 = v62;
  if ((*(v61 + 48))(v30, 1, v62) == 1)
  {
    return sub_1A3288FDC(v30, &qword_1EB0C71D8);
  }

  v46 = v59;
  (*(v32 + 32))(v59, v30, v31);
  v47 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
  v48 = sub_1A34C9600();
  [v47 openSensitiveURLInBackground:v48 withOptions:0 completionHandler:0];

  return (*(v32 + 8))(v46, v31);
}

unint64_t sub_1A33FA918(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1A34CD2A0();
  }

  __break(1u);
  return result;
}

void (*sub_1A33FA964(uint64_t a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v105 = &v99 - v3;
  v107 = sub_1A34C9650();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v99 - v6;
  v126 = sub_1A34C98C0();
  v140 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A34C98B0();
  v139 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34C9890();
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34C9940();
  v136 = v11;
  v129 = *(v11 - 8);
  v12 = v129;
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v99 - v17;
  v18 = sub_1A34C9720();
  v19 = *(v18 - 8);
  v131 = v18;
  v132 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v99 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE98);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v99 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - v31;
  v130 = sub_1A34C9330();
  v135 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v133 = (&v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v99 - v36;
  v119 = *(v12 + 7);
  v119(v32, 1, 1, v11, v35);
  v38 = sub_1A34C9970();
  v39 = *(*(v38 - 8) + 56);
  v39(v27, 1, 1, v38);
  sub_1A34C92F0();
  sub_1A34C92B0();
  sub_1A34C92C0();
  sub_1A34C9200();
  sub_1A34C9210();
  v118 = a1;
  sub_1A34C9240();
  sub_1A34C9250();
  v122 = v37;
  sub_1A34C9280();
  sub_1A34C9900();
  sub_1A34C9710();
  (v119)(v32, 1, 1, v136);
  v39(v27, 1, 1, v38);
  v40 = v126;
  sub_1A34C92F0();
  v41 = *MEMORY[0x1E69698C0];
  v42 = v137;
  v43 = *(v137 + 104);
  v44 = v123;
  v115 = v137 + 104;
  v114 = v43;
  v43(v123, v41, v138);
  v45 = *MEMORY[0x1E69699A0];
  v46 = v139;
  v47 = *(v139 + 104);
  v48 = v125;
  v49 = v127;
  v119 = (v139 + 104);
  v116 = v47;
  v47(v125, v45, v127);
  v50 = v140;
  v51 = *(v140 + 104);
  v52 = v128;
  v110 = *MEMORY[0x1E69699C8];
  v111 = v140 + 104;
  v109 = v51;
  v51(v128);
  v53 = v120;
  v54 = v44;
  v55 = v52;
  v56 = v134;
  sub_1A34C9910();
  v57 = *(v50 + 8);
  v58 = v40;
  v59 = v131;
  v140 = v50 + 8;
  v113 = v57;
  v57(v55, v58);
  v60 = *(v46 + 8);
  v61 = v49;
  v62 = v135;
  v139 = v46 + 8;
  v108 = v60;
  v60(v48, v61);
  v63 = v42;
  v64 = v130;
  v65 = *(v63 + 8);
  v137 = v63 + 8;
  v112 = v65;
  v65(v54, v138);
  v68 = *(v62 + 8);
  v66 = v62 + 8;
  v67 = v68;
  v69 = v136;
  (v68)(v133, v64);
  v70 = v132;
  v71 = *(v132 + 1);
  v72 = v141;
  v141 = v132 + 8;
  v71(v72, v59);
  v134 = *(v129 + 1);
  (v134)(v56, v69);
  v73 = *(v70 + 6);
  if (v73(v53, 1, v59) == 1)
  {
    (v67)(v122, v64);
LABEL_7:
    v85 = &qword_1EB0C63B0;
    v86 = v53;
    goto LABEL_8;
  }

  v100 = v73;
  v133 = v71;
  v135 = v66;
  v74 = v132 + 32;
  v120 = *(v132 + 4);
  (v120)(v124, v53, v59);
  v75 = v121;
  sub_1A34C9300();
  if ((*(v129 + 6))(v75, 1, v69) == 1)
  {
    v76 = v131;
    v133(v124, v131);
    (v67)(v122, v130);
    sub_1A3288FDC(v121, &qword_1EB0CAEA0);
    v53 = v117;
    (*(v132 + 7))(v117, 1, 1, v76);
    goto LABEL_7;
  }

  v129 = v74;
  v132 = v67;
  v77 = v123;
  v78 = v138;
  v114(v123, *MEMORY[0x1E69698B0], v138);
  v79 = v128;
  v80 = v126;
  v109(v128, v110, v126);
  v81 = v125;
  v82 = v127;
  v116(v125, *MEMORY[0x1E6969998], v127);
  v53 = v117;
  v83 = v121;
  sub_1A34C9910();
  v108(v81, v82);
  v113(v79, v80);
  v112(v77, v78);
  (v134)(v83, v136);
  v84 = v131;
  if (v100(v53, 1, v131) == 1)
  {
    v133(v124, v84);
    (v132)(v122, v130);
    goto LABEL_7;
  }

  v88 = v104;
  (v120)(v104, v53, v84);
  v89 = v105;
  sub_1A33FB7D0();
  v90 = v88;
  v91 = v133;
  v133(v90, v84);
  v91(v124, v84);
  (v132)(v122, v130);
  v92 = v106;
  v93 = v107;
  if ((*(v106 + 48))(v89, 1, v107) != 1)
  {
    v94 = *(v92 + 32);
    v95 = v101;
    v94(v101, v89, v93);
    v96 = v103;
    v94(v103, v95, v93);
    v97 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v98 = swift_allocObject();
    v94((v98 + v97), v96, v93);
    return sub_1A33FBDF4;
  }

  v85 = &qword_1EB0C71D8;
  v86 = v89;
LABEL_8:
  sub_1A3288FDC(v86, v85);
  return 0;
}

uint64_t sub_1A33FB7D0()
{
  result = sub_1A34C96C0();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    v2 = sub_1A34CDDF0();
    MEMORY[0x1A58EEA30](v2);

    sub_1A34C9640();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1A33FB8B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
  v1 = sub_1A34C9600();
  [v0 openSensitiveURLInBackground:v1 withOptions:0 completionHandler:0];
}

uint64_t sub_1A33FB930(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A34C9650();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34C9120();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  sub_1A34C9100();
  sub_1A328A95C();
  v15 = sub_1A34CD8F0();
  v17 = v16;
  result = (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v21 = 0x3A6F746C69616DLL;
    v22 = 0xE700000000000000;
    MEMORY[0x1A58EEA30](v15, v17);

    sub_1A34C9640();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1A3288FDC(v6, &qword_1EB0C71D8);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v19 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
      v20 = sub_1A34C9600();
      [v19 openSensitiveURLInBackground:v20 withOptions:0 completionHandler:0];

      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_1A33FBC10(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1A34C9650();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactCardValueFormatter();
  sub_1A3407BE8(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A3288FDC(v6, &qword_1EB0C71D8);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E6996748]) init];
  v13 = sub_1A34C9600();
  [v12 openSensitiveURLInBackground:v13 withOptions:0 completionHandler:0];

  return (*(v8 + 8))(v10, v7);
}

void sub_1A33FBDF4()
{
  sub_1A34C9650();

  sub_1A33FB8B0();
}

uint64_t sub_1A33FBE54()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED008);
  __swift_project_value_buffer(v0, qword_1EB0ED008);
  return sub_1A34CA240();
}

void *sub_1A33FBED8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1A34C9A20();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34C9A30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = 0;
  sub_1A34C9B40();
  (*(v8 + 104))(v10, *MEMORY[0x1E699C8A0], v7);
  sub_1A34C9A40();
  v15 = sub_1A34C9B00();
  (*(v12 + 8))(v14, v11);
  v2[2] = v15;
  v2[3] = a1;
  v16 = sub_1A34CD4A0();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  sub_1A34C9010();
  v2[4] = sub_1A33A10D4(0, 0, v6, &unk_1A34F3808, v17);

  return v2;
}

uint64_t sub_1A33FC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A33FC18C, 0, 0);
}

uint64_t sub_1A33FC18C()
{
  v1 = *(v0[16] + 24);
  v2 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v3 = sub_1A34CD370();

  if (v3 >> 62)
  {
    v4 = sub_1A34CD9B0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v76 = v1;
  if (v4)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v6 = sub_1A34CDB70();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v14 = objc_opt_self();
    v15 = 0;
    v16 = *MEMORY[0x1E695C330];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1A58EF310](v15, v3);
      }

      else
      {
        v18 = *(v3 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v16;
      v21 = [v19 identifier];
      if (!v21)
      {
        sub_1A34CD110();
        v21 = sub_1A34CD0E0();
      }

      ++v15;
      v17 = [v14 contactPropertyWithContact:v76 propertyKey:v20 identifier:v21];

      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
    }

    while (v4 != v15);

    v1 = v76;
    v22 = v77;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v0[12] = v22;
  v23 = [v1 emailAddresses];
  v24 = sub_1A34CD370();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_16;
    }

LABEL_27:

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v25 = sub_1A34CD9B0();
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_16:
  v78 = v5;
  v6 = sub_1A34CDB70();
  if (v25 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v26 = objc_opt_self();
  v27 = 0;
  v28 = *MEMORY[0x1E695C208];
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1A58EF310](v27, v24);
    }

    else
    {
      v30 = *(v24 + 8 * v27 + 32);
    }

    v31 = v30;
    v32 = v28;
    v33 = [v31 identifier];
    if (!v33)
    {
      sub_1A34CD110();
      v33 = sub_1A34CD0E0();
    }

    ++v27;
    v29 = [v26 contactPropertyWithContact:v76 propertyKey:v32 identifier:v33];

    sub_1A34CDB50();
    sub_1A34CDB80();
    sub_1A34CDB90();
    sub_1A34CDB60();
  }

  while (v25 != v27);

  v34 = v78;
LABEL_28:
  sub_1A33B96FC(v34);
  v35 = sub_1A31EC194(0, &qword_1EB0C01C0);
  v36 = sub_1A34CD350();
  v37 = [objc_opt_self() bestPropertyComparator];
  v38 = swift_allocObject();
  v0[17] = v38;
  *(v38 + 16) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1A34014F0;
  *(v39 + 24) = v38;
  v0[6] = sub_1A34014F8;
  v0[7] = v39;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A33FCF0C;
  v0[5] = &block_descriptor_20;
  v40 = _Block_copy(v0 + 2);
  sub_1A34C9010();

  v41 = [v36 sortedArrayUsingComparator_];

  _Block_release(v40);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_40;
  }

  v42 = sub_1A34CD370();

  if (*(v42 + 16))
  {
    sub_1A31EE354(v42 + 32, (v0 + 8));

    if (swift_dynamicCast())
    {
      v43 = v0[13];
      v0[18] = v43;
      v44 = [objc_opt_self() sharedInstance];
      v45 = [objc_allocWithZone(CNUIIDSIDQueryControllerWrapper) initWithController_];
      v0[19] = v45;

      if (v45)
      {
        v75 = v43;
        v46 = [objc_allocWithZone(CNUIIDSAvailabilityProvider) initWithQueryControllerWrapper_];
        v47 = [objc_allocWithZone(CNUIIDSContactPropertyResolver) initWithIDSAvailabilityProvider_];
        v0[20] = v47;

        if (v47)
        {
          v48 = objc_opt_self();
          v49 = [v48 currentEnvironment];
          v50 = [v49 schedulerProvider];

          v51 = [v47 resolveBestFaceTimeIDSPropertyForContact:v76 schedulerProvider:v50];
          v0[21] = v51;
          v6 = swift_unknownObjectRelease();
          if (v51)
          {
            v52 = [v48 currentEnvironment];
            v53 = [v52 schedulerProvider];

            v54 = [v47 resolveBestFaceTimeIDSPropertyForContact:v76 schedulerProvider:v53];
            v0[22] = v54;
            v6 = swift_unknownObjectRelease();
            if (v54)
            {
              v55 = v0;
              v56 = v0[16];

              v57 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
              v58 = swift_allocObject();
              *(v58 + 16) = xmmword_1A34E7C90;
              *(v58 + 32) = v51;
              *(v58 + 40) = v54;
              v59 = v51;
              v60 = v54;
              *(v58 + 48) = [v57 observableWithResult_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEC8);
              v61 = sub_1A34CD350();

              v62 = [v57 concatenate_];

              v63 = [v62 take_];
              v55[23] = v63;

              v64 = swift_task_alloc();
              v55[24] = v64;
              *(v64 + 16) = v56;
              *(v64 + 24) = v63;
              v65 = swift_task_alloc();
              v55[25] = v65;
              *v65 = v55;
              v65[1] = sub_1A33FCC04;
              v11 = sub_1A3401528;
              v6 = (v55 + 14);
              v10 = 0x80000001A3511420;
              v7 = 0;
              v8 = 0;
              v9 = 0xD000000000000013;
              v12 = v64;
              v13 = v35;

              return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
            }

LABEL_52:
            __break(1u);
            return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
  }

  if (qword_1EB0C1290 != -1)
  {
    goto LABEL_46;
  }

LABEL_40:
  v66 = sub_1A34CA250();
  __swift_project_value_buffer(v66, qword_1EB0ED008);
  sub_1A34C9010();
  v67 = sub_1A34CA230();
  v68 = sub_1A34CD640();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412290;
    *(v69 + 4) = v76;
    *v70 = v76;
    v71 = v76;
    _os_log_impl(&dword_1A31E6000, v67, v68, "Failed to find any handles to check for IDS availability on %@", v69, 0xCu);
    sub_1A3288FDC(v70, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v70, -1, -1);
    MEMORY[0x1A58F1010](v69, -1, -1);
  }

  sub_1A340117C();
  swift_allocError();
  *v72 = 1;
  swift_willThrow();

  v73 = v0[1];

  return v73();
}

uint64_t sub_1A33FCC04()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1A33FCDD0;
  }

  else
  {

    v2 = sub_1A33FCD20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33FCD20()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);

  *v6 = *(v0 + 112);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A33FCDD0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A33FCE7C(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1A34CDE10();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1A34CDE10();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A33FCF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1A33FCF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v21 = a2;
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v22 = objc_opt_self();
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v9 = *(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + ((v9 + 16) & ~v9), v7, v4);
  v28 = sub_1A3401530;
  v29 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A346ED60;
  v27 = &block_descriptor_39;
  v20 = _Block_copy(&aBlock);

  v8(v7, v19, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  v11(v12 + ((v9 + 24) & ~v9), v7, v4);
  v28 = sub_1A34015AC;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A345B2FC;
  v27 = &block_descriptor_45_0;
  v13 = _Block_copy(&aBlock);
  sub_1A34C9010();

  v14 = v20;
  v15 = [v22 observerWithResultBlock:v20 completionBlock:0 failureBlock:v13];
  _Block_release(v13);
  _Block_release(v14);
  v16 = [v23 subscribe_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A33FD288(uint64_t a1)
{
  sub_1A31EE354(a1, v5);
  sub_1A31EC194(0, &qword_1EB0C01C0);
  if (swift_dynamicCast())
  {
    v5[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
    return sub_1A34CD400();
  }

  else
  {
    sub_1A340117C();
    v2 = swift_allocError();
    *v3 = 0;
    v5[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
    return sub_1A34CD3F0();
  }
}

uint64_t sub_1A33FD364(void *a1, uint64_t a2)
{
  if (qword_1EB0C1290 != -1)
  {
    swift_once();
  }

  v4 = sub_1A34CA250();
  __swift_project_value_buffer(v4, qword_1EB0ED008);
  sub_1A34C9010();
  v5 = a1;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(a2 + 24);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2112;
    v11 = a1;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    v9[1] = v13;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Failed to find best property for contact: %@, error: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v9, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
  return sub_1A34CD3F0();
}

uint64_t sub_1A33FD52C()
{
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1A33FD5BC, 0, 0);
}

uint64_t sub_1A33FD5BC()
{
  sub_1A34C9B40();
  if ((sub_1A34C9B30() & 1) == 0)
  {
LABEL_8:
    v7 = v0[1];

    return v7(2);
  }

  v1 = [objc_opt_self() currentEnvironment];
  v2 = [v1 entitlementVerifier];

  v3 = *MEMORY[0x1E69964F8];
  v0[2] = 0;
  v4 = [v2 currentProcessHasBooleanEntitlement:v3 error:v0 + 2];
  swift_unknownObjectRelease();
  if (v0[2])
  {
    swift_willThrow();
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1A33FD7B0;
  v6 = v0[3];

  return MEMORY[0x1EEE6DD58](v0 + 6, &type metadata for FindMyLocateSession.SharingStatus, &type metadata for FindMyLocateSession.SharingStatus, 0, 0, &unk_1A34F37D8, v6, &type metadata for FindMyLocateSession.SharingStatus);
}

uint64_t sub_1A33FD7B0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1A33FD97C;
  }

  else
  {
    v2 = sub_1A33FD8F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33FD8F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1A33FD97C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A33FDA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = sub_1A34C9AE0();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33FDB20, 0, 0);
}

uint64_t sub_1A33FDB20()
{
  v1 = sub_1A33FE224();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v3 + 16);
    v3 += 16;
    v31 = v4;
    v32 = **(v0 + 80);
    v5 = *(v3 + 64);
    v6 = v1 + ((v5 + 32) & ~v5);
    v30 = (v5 + 40) & ~v5;
    v29 = (v3 + 16);
    v28 = (v3 - 8);
    v27 = *(v3 + 56);
    do
    {
      v35 = v2;
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 104);
      v14 = *(v0 + 112);
      v15 = *(v0 + 88);
      v33 = *(v0 + 96);
      v34 = v6;
      v31(v11);
      v16 = sub_1A34CD4A0();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v13, 1, 1, v16);
      (v31)(v12, v11, v14);
      v18 = swift_allocObject();
      v18[2] = 0;
      v19 = v18 + 2;
      v18[3] = 0;
      v18[4] = v15;
      (*v29)(v18 + v30, v12, v14);
      sub_1A34013CC(v13, v33);
      LODWORD(v13) = (*(v17 + 48))(v33, 1, v16);
      sub_1A34C9010();
      v20 = *(v0 + 96);
      if (v13 == 1)
      {
        sub_1A3288FDC(*(v0 + 96), &qword_1EB0C6110);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1A34CD490();
        (*(v17 + 8))(v20, v16);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_1A34CD3E0();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      sub_1A34C9010();
      if (v22 | v21)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 144);
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v32;
      swift_task_create();

      sub_1A3288FDC(v10, &qword_1EB0C6110);
      (*v28)(v8, v9);
      v6 = v34 + v27;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEC0);
  *v24 = v0;
  v24[1] = sub_1A33FDF08;

  return MEMORY[0x1EEE6DAC8](v0 + 168, 0, 0, v25);
}

uint64_t sub_1A33FDF08()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A33FE19C;
  }

  else
  {
    v2 = sub_1A33FE01C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33FE01C()
{
  if (!*(v0 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    sub_1A34CD500();
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 168) == 3)
  {
    v1 = 1;
LABEL_5:
    **(v0 + 72) = v1;

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEC0);
  *v4 = v0;
  v4[1] = sub_1A33FDF08;

  return MEMORY[0x1EEE6DAC8](v0 + 168, 0, 0, v5);
}

uint64_t sub_1A33FE19C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A33FE224()
{
  v1 = v0;
  v42 = sub_1A34C9AE0();
  v2 = *(v42 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v42).n128_u64[0];
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v7 = sub_1A34CD370();

  if (v7 >> 62)
  {
LABEL_43:
    v8 = sub_1A34CD9B0();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v5;
  if (v8)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1A34CDB70();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v41 = v1;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A58EF310](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 value];

      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
    }

    while (v8 != v10);

    v14 = v43;
    v1 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v40 = sub_1A331D6A8(v14);

  v15 = [v1 phoneNumbers];
  v16 = sub_1A34CD370();

  v5 = (v16 & 0xFFFFFFFFFFFFFF8);
  if (v16 >> 62)
  {
    v7 = sub_1A34CD9B0();
  }

  else
  {
    v7 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v17 = 0;
    v1 = (v16 & 0xC000000000000001);
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v17;
      while (1)
      {
        if (v1)
        {
          v19 = MEMORY[0x1A58EF310](v18, v16);
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v19 = *(v16 + 8 * v18 + 32);
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        v20 = v19;
        v21 = [v20 value];
        v22 = [v21 unformattedInternationalStringValue];
        if (v22)
        {
          break;
        }

        ++v18;
        if (v17 == v7)
        {
          goto LABEL_33;
        }
      }

      v23 = v22;
      v24 = sub_1A34CD110();
      v38 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1A32984C4(0, *(v41 + 2) + 1, 1, v41);
      }

      v27 = *(v41 + 2);
      v26 = *(v41 + 3);
      if (v27 >= v26 >> 1)
      {
        v41 = sub_1A32984C4((v26 > 1), v27 + 1, 1, v41);
      }

      v28 = v41;
      *(v41 + 2) = v27 + 1;
      v29 = &v28[16 * v27];
      v30 = v38;
      *(v29 + 4) = v24;
      *(v29 + 5) = v30;
    }

    while (v17 != v7);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:

  v43 = v40;
  sub_1A33B8D44(v41);
  v31 = v43;
  v32 = *(v43 + 16);
  if (v32)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB74(0, v32, 0);
    v33 = v43;
    v41 = v31;
    v34 = v31 + 40;
    v35 = v39;
    do
    {

      sub_1A34C9AD0();
      v43 = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1A32EBB74(v36 > 1, v37 + 1, 1);
        v33 = v43;
      }

      *(v33 + 16) = v37 + 1;
      (*(v2 + 32))(v33 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v35, v42);
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v33;
}

uint64_t sub_1A33FE718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1A33FE7B8;

  return sub_1A33FE928(a5);
}

uint64_t sub_1A33FE7B8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A33FE904, 0, 0);
  }
}

uint64_t sub_1A33FE928(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A34C9A70();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33FE9E8, 0, 0);
}

uint64_t sub_1A33FE9E8()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1A33FEA90;
  v2 = v0[6];
  v3 = v0[2];

  return MEMORY[0x1EEE04560](v2, v3, 0);
}

uint64_t sub_1A33FEA90()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A33FEC70;
  }

  else
  {
    v2 = sub_1A33FEBA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33FEBA4()
{
  v1 = sub_1A34C9A50();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  if (v1)
  {
    v5 = sub_1A34C9A60();
    (*(v3 + 8))(v2, v4);
    v6 = (v5 & 1) == 0;
  }

  else
  {
    (*(v3 + 8))(v0[6], v0[4]);
    v6 = 2;
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1A33FEC70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A33FECD4(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 256) = a1;
  v3 = sub_1A34C9AC0();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v4 = sub_1A34C9A80();
  *(v2 + 120) = v4;
  *(v2 + 128) = *(v4 - 8);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA8);
  *(v2 + 144) = swift_task_alloc();
  v5 = sub_1A34C9AE0();
  *(v2 + 152) = v5;
  *(v2 + 160) = *(v5 - 8);
  *(v2 + 168) = swift_task_alloc();
  v6 = sub_1A34C9AA0();
  *(v2 + 176) = v6;
  *(v2 + 184) = *(v6 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33FEEFC, 0, 0);
}

uint64_t sub_1A33FEEFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5[10] + 32);
  v5[26] = v6;
  if (v6)
  {
    sub_1A34C9010();
    v7 = swift_task_alloc();
    v5[27] = v7;
    v8 = sub_1A31EC194(0, &qword_1EB0C01C0);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    *v7 = v5;
    v7[1] = sub_1A33FF000;
    a5 = MEMORY[0x1E69E7288];
    a1 = v5 + 8;
    a2 = v6;
    a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA10](a1, a2, a3, a4, a5);
}

uint64_t sub_1A33FF000()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1A33FFEAC;
  }

  else
  {
    v2 = sub_1A33FF134;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33FF134()
{
  v39 = v0;
  v1 = *(v0 + 64);
  v2 = sub_1A340028C();
  v4 = v3;

  if (v4)
  {
    *(v0 + 48) = v2;
    *(v0 + 56) = v4;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB74(0, 1, 0);
    v5 = v38;

    sub_1A34C9AD0();
    v7 = *(v38 + 16);
    v6 = *(v38 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1A32EBB74(v6 > 1, v7 + 1, 1);
      v5 = v38;
    }

    *(v0 + 232) = v5;
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 256);
    *(v5 + 16) = v7 + 1;
    (*(v9 + 32))(v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7, v8, v10);
    sub_1A3363584(v0 + 48);
    (*(v9 + 56))(v11, 1, 1, v10);
    (*(v12 + 104))(*(v0 + 136), **(&unk_1E76EAD40 + v13), *(v0 + 120));
    v14 = swift_task_alloc();
    *(v0 + 240) = v14;
    *v14 = v0;
    v14[1] = sub_1A33FF678;
    v15 = *(v0 + 200);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);

    return MEMORY[0x1EEE04570](v15, v5, v16, v17, 0);
  }

  else
  {
    if (qword_1EB0C1290 != -1)
    {
      swift_once();
    }

    v18 = sub_1A34CA250();
    __swift_project_value_buffer(v18, qword_1EB0ED008);
    sub_1A34C9010();
    v19 = sub_1A34CA230();
    v20 = sub_1A34CD640();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 80);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      *(v0 + 72) = v21;
      type metadata accessor for FindMyLocateSession();
      sub_1A34C9010();
      v24 = sub_1A34CD170();
      v26 = sub_1A31EE23C(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1A31E6000, v19, v20, "Failed to get bestHandle: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1A58F1010](v23, -1, -1);
      MEMORY[0x1A58F1010](v22, -1, -1);
    }

    sub_1A340117C();
    v27 = swift_allocError();
    *v28 = 2;
    swift_willThrow();
    if (qword_1EB0C1290 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, qword_1EB0ED008);
    v29 = v27;
    v30 = sub_1A34CA230();
    v31 = sub_1A34CD640();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1A31E6000, v30, v31, "FindMyLocateSession: sendFriendshipOffer failed %@", v32, 0xCu);
      sub_1A3288FDC(v33, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v33, -1, -1);
      MEMORY[0x1A58F1010](v32, -1, -1);
    }

    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1A33FF678()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[15];

  (*(v5 + 8))(v4, v6);
  sub_1A3288FDC(v3, &qword_1EB0CAEA8);
  if (v0)
  {
    v7 = sub_1A340009C;
  }

  else
  {
    v7 = sub_1A33FF834;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A33FF834()
{
  v56 = v0;
  v2 = v0[12];
  v3 = sub_1A34C9A90();
  v46 = v3 + 64;
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;
  v48 = *MEMORY[0x1E699C8D8];
  v49 = v2;
  v47 = *MEMORY[0x1E699C8D0];
  v52 = v3;

  v8 = 0;
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v9 >= v7)
          {
            (*(v0[23] + 8))(v0[25], v0[22]);

            v33 = v0[1];
            goto LABEL_16;
          }

          v6 = *(v46 + 8 * v9);
          ++v8;
          if (v6)
          {
            v8 = v9;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_10:
      v10 = v0[13];
      v11 = v0[11];
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      (*(v49 + 16))(v0[14], *(v52 + 56) + *(v49 + 72) * (v12 | (v8 << 6)), v11);
      v50 = *(v49 + 104);
      v50(v10, v48, v11);
      v13 = sub_1A34C9AB0();
      v1 = *(v49 + 8);
      v1(v10, v11);
      v14 = v0[14];
      if ((v13 & 1) == 0)
      {
        break;
      }

      v1(v0[14], v0[11]);
    }

    v15 = v0[13];
    v16 = v0[11];
    v50(v15, v47, v16);
    v17 = sub_1A34C9AB0();
    v1(v15, v16);
    v1(v14, v16);
  }

  while ((v17 & 1) != 0);

  v1 = &unk_1EB0C1000;
  if (qword_1EB0C1290 == -1)
  {
    goto LABEL_13;
  }

LABEL_26:
  swift_once();
LABEL_13:
  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];
  v54 = sub_1A34CA250();
  __swift_project_value_buffer(v54, qword_1EB0ED008);
  (*(v20 + 16))(v19, v18, v21);
  v22 = sub_1A34CA230();
  v23 = sub_1A34CD640();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[23];
  v25 = v0[24];
  v27 = v0[22];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v28 = 136315138;
    sub_1A34C9A90();
    sub_1A34011D0();
    v51 = sub_1A34CCFA0();
    v30 = v29;

    v31 = *(v26 + 8);
    v31(v25, v27);
    v32 = sub_1A31EE23C(v51, v30, &v55);
    v1 = &unk_1EB0C1000;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1A31E6000, v22, v23, "FindMyLocateSession: sendFriendshipOffer failed %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1A58F1010](v53, -1, -1);
    MEMORY[0x1A58F1010](v28, -1, -1);
  }

  else
  {

    v31 = *(v26 + 8);
    v31(v25, v27);
  }

  v35 = v0[25];
  v36 = v0[22];
  sub_1A340117C();
  v37 = swift_allocError();
  *v38 = 3;
  swift_willThrow();
  v31(v35, v36);
  if (*(v1 + 82) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v54, qword_1EB0ED008);
  v39 = v37;
  v40 = sub_1A34CA230();
  v41 = sub_1A34CD640();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = v37;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v45;
    *v43 = v45;
    _os_log_impl(&dword_1A31E6000, v40, v41, "FindMyLocateSession: sendFriendshipOffer failed %@", v42, 0xCu);
    sub_1A3288FDC(v43, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v43, -1, -1);
    MEMORY[0x1A58F1010](v42, -1, -1);
  }

  swift_willThrow();

  v33 = v0[1];
LABEL_16:

  return v33();
}

uint64_t sub_1A33FFEAC()
{
  v1 = *(v0 + 224);
  if (qword_1EB0C1290 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ED008);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A31E6000, v4, v5, "FindMyLocateSession: sendFriendshipOffer failed %@", v6, 0xCu);
    sub_1A3288FDC(v7, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A340009C()
{
  v1 = *(v0 + 248);
  if (qword_1EB0C1290 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ED008);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A31E6000, v4, v5, "FindMyLocateSession: sendFriendshipOffer failed %@", v6, 0xCu);
    sub_1A3288FDC(v7, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

id sub_1A340028C()
{
  v1 = [v0 key];
  v2 = sub_1A34CD110();
  v4 = v3;

  if (v2 == sub_1A34CD110() && v4 == v5)
  {

LABEL_13:
    if ([v0 value])
    {
      sub_1A34CD920();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    if (*(&v20 + 1))
    {
      sub_1A31EC194(0, &qword_1EB0CAEB8);
      if (swift_dynamicCast())
      {
        v15 = [v18 unformattedInternationalStringValue];

        if (v15)
        {
          v16 = sub_1A34CD110();

          return v16;
        }
      }

      return 0;
    }

    goto LABEL_29;
  }

  v7 = sub_1A34CDE30();

  if (v7)
  {
    goto LABEL_13;
  }

  v8 = [v0 key];
  v9 = sub_1A34CD110();
  v11 = v10;

  if (v9 == sub_1A34CD110() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1A34CDE30();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 value])
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
LABEL_29:
    sub_1A3288FDC(&v21, &qword_1EB0C7690);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A340054C()
{
  v1[2] = v0;
  v2 = sub_1A34C9AC0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA8);
  v1[7] = swift_task_alloc();
  v3 = sub_1A34C9AA0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A34006B8, 0, 0);
}

uint64_t sub_1A34006B8()
{
  v1 = v0[7];
  v2 = sub_1A33FE224();
  v0[12] = v2;
  v3 = sub_1A34C9AE0();
  v0[13] = v3;
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1A34007C4;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x1EEE04548](v5, v2, v6, 0);
}

uint64_t sub_1A34007C4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  sub_1A3288FDC(*(v2 + 56), &qword_1EB0CAEA8);

  if (v0)
  {
    v3 = sub_1A3400EF0;
  }

  else
  {
    v3 = sub_1A3400924;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A3400924()
{
  v55 = v0;
  v1 = *(v0 + 32);
  v2 = sub_1A34C9A90();
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v48 = *MEMORY[0x1E699C8D8];
  v51 = v2;

  v8 = 0;
  do
  {
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          (*(v53[9] + 8))(v53[11], v53[8]);

          v32 = v53[1];
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v9 = v8;
LABEL_10:
    v11 = v53[5];
    v10 = v53[6];
    v12 = v53[3];
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v1[2](v10, *(v51 + 56) + v1[9] * (v13 | (v9 << 6)), v12);
    v1[13](v11, v48, v12);
    v14 = sub_1A34C9AB0();
    v15 = v1[1];
    (v15)(v11, v12);
    (v15)(v10, v12);
  }

  while ((v14 & 1) != 0);

  v1 = &unk_1EB0C1000;
  if (qword_1EB0C1290 == -1)
  {
    goto LABEL_12;
  }

LABEL_25:
  swift_once();
LABEL_12:
  v16 = v53;
  v18 = v53[10];
  v17 = v53[11];
  v20 = v53[8];
  v19 = v53[9];
  v21 = sub_1A34CA250();
  __swift_project_value_buffer(v21, qword_1EB0ED008);
  (*(v19 + 16))(v18, v17, v20);
  v22 = sub_1A34CA230();
  v23 = sub_1A34CD640();
  if (os_log_type_enabled(v22, v23))
  {
    v25 = v53[9];
    v24 = v53[10];
    v49 = v53[8];
    v52 = v21;
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v26 = 136315138;
    sub_1A34C9A90();
    sub_1A34011D0();
    v27 = sub_1A34CCFA0();
    v29 = v28;

    v30 = *(v25 + 8);
    v30(v24, v49);
    v1 = &unk_1EB0C1000;
    v31 = sub_1A31EE23C(v27, v29, &v54);
    v21 = v52;
    v16 = v53;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1A31E6000, v22, v23, "FindMyLocateSession: stopSharing, results don't all satisfy success %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1A58F1010](v50, -1, -1);
    MEMORY[0x1A58F1010](v26, -1, -1);
  }

  else
  {
    v35 = v53[9];
    v34 = v53[10];
    v36 = v53[8];

    v30 = *(v35 + 8);
    v30(v34, v36);
  }

  v37 = v16[11];
  v38 = v16[8];
  sub_1A340117C();
  v39 = swift_allocError();
  *v40 = 3;
  swift_willThrow();
  v30(v37, v38);
  if (v1[82] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EB0ED008);
  v41 = v39;
  v42 = sub_1A34CA230();
  v43 = sub_1A34CD640();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = v39;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v47;
    *v45 = v47;
    _os_log_impl(&dword_1A31E6000, v42, v43, "FindMyLocateSession: stopSharing failed %@", v44, 0xCu);
    sub_1A3288FDC(v45, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v45, -1, -1);
    MEMORY[0x1A58F1010](v44, -1, -1);
  }

  swift_willThrow();

  v32 = v16[1];
LABEL_15:

  return v32();
}

uint64_t sub_1A3400EF0()
{
  v1 = *(v0 + 120);
  if (qword_1EB0C1290 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ED008);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A31E6000, v4, v5, "FindMyLocateSession: stopSharing failed %@", v6, 0xCu);
    sub_1A3288FDC(v7, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t FindMyLocateSession.deinit()
{

  return v0;
}

uint64_t FindMyLocateSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A340117C()
{
  result = qword_1EB0C23F0;
  if (!qword_1EB0C23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C23F0);
  }

  return result;
}

unint64_t sub_1A34011D0()
{
  result = qword_1EB0CAEB0;
  if (!qword_1EB0CAEB0)
  {
    sub_1A34C9AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAEB0);
  }

  return result;
}

uint64_t sub_1A3401228(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3292C58;

  return sub_1A33FDA04(a1, a2, v2);
}

uint64_t sub_1A34012D4(uint64_t a1)
{
  v4 = *(sub_1A34C9AE0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3292C58;

  return sub_1A33FE718(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1A34013CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A340143C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A33FC16C(a1, v4, v5, v6);
}

uint64_t sub_1A3401530(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);

  return sub_1A33FD288(a1);
}

uint64_t sub_1A34015AC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
  v3 = *(v1 + 16);

  return sub_1A33FD364(a1, v3);
}

id sub_1A340162C()
{
  v5[1] = *MEMORY[0x1E69E9840];
  sub_1A34C9B40();
  if (sub_1A34C9B30())
  {
    v0 = [objc_opt_self() currentEnvironment];
    v1 = [v0 entitlementVerifier];

    v2 = *MEMORY[0x1E69964F8];
    v5[0] = 0;
    v3 = [v1 currentProcessHasBooleanEntitlement:v2 error:v5];
    swift_unknownObjectRelease();
    if (!v5[0])
    {
      return v3;
    }

    swift_willThrow();
  }

  return 0;
}

unint64_t sub_1A3401744()
{
  result = qword_1EB0CAED8;
  if (!qword_1EB0CAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAED8);
  }

  return result;
}

unint64_t sub_1A340179C()
{
  result = qword_1EB0CAEE0;
  if (!qword_1EB0CAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAEE0);
  }

  return result;
}

uint64_t sub_1A3401800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34F3940;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = swift_getKeyPath();
  *(v0 + 120) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 128) = result;
  qword_1EB0ED9E8 = v0;
  return result;
}

uint64_t sub_1A3401924()
{
  if (qword_1EB0C2A18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A3401990@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1A340199C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 32;
  v3 = &qword_1EB0CA408;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1A34CD9B0();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1A34CD9B0();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1A34CD9B0();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1A34CDB00();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1A340221C();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v18 = sub_1A3299914(v29, i, v5);
        v19 = v3;
        v21 = *v20;
        sub_1A34C9010();
        (v18)(v29, 0);
        *(v16 + 8 * i) = v21;
        v3 = v19;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v7 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v7);
      v24 = v22 + v7;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1A34CD9B0();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_1A3401C6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 termsOfAddress];
  sub_1A3394490();
  v4 = sub_1A34CD370();

  *a2 = v4;
}

uint64_t sub_1A3401CD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DFB00;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 64) = result;
  qword_1EB0EDE68 = v0;
  return result;
}

id sub_1A3401D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DC310;
  v1 = *MEMORY[0x1E695C240];
  v5 = *MEMORY[0x1E695C230];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  qword_1EB0EDE70 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_1A3401DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAEE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DE790;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A34E7C90;
  *(v1 + 32) = swift_getKeyPath();
  *(v1 + 40) = swift_getKeyPath();
  *(v1 + 48) = swift_getKeyPath();
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A34DAA30;
  *(v2 + 32) = swift_getKeyPath();
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA30;
  *(v3 + 32) = swift_getKeyPath();
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DC310;
  *(v4 + 32) = swift_getKeyPath();
  *(v4 + 40) = swift_getKeyPath();
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DAA30;
  *(v5 + 32) = swift_getKeyPath();
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A34DAA30;
  result = swift_getKeyPath();
  *(v6 + 32) = result;
  *(v0 + 72) = v6;
  qword_1EB0ED400 = v0;
  return result;
}

id sub_1A3401FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34F3C90;
  v1 = *MEMORY[0x1E695C348];
  v2 = *MEMORY[0x1E695C350];
  *(v0 + 32) = *MEMORY[0x1E695C348];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C340];
  v4 = *MEMORY[0x1E695C310];
  *(v0 + 48) = *MEMORY[0x1E695C340];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C390];
  v6 = *MEMORY[0x1E695C2C8];
  *(v0 + 64) = *MEMORY[0x1E695C390];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C1F8];
  v8 = *MEMORY[0x1E695C328];
  *(v0 + 80) = *MEMORY[0x1E695C1F8];
  *(v0 + 88) = v8;
  v18 = *MEMORY[0x1E695C1C0];
  *(v0 + 96) = *MEMORY[0x1E695C1C0];
  qword_1EB0ED3F8 = v0;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  return v18;
}

uint64_t sub_1A3402160()
{
  if (qword_1EB0C4A30 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDE68;
  v1 = qword_1EB0C21C0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_1A340199C(qword_1EB0ED400);
  sub_1A33B95A4(v2);
  return v0;
}

unint64_t sub_1A340221C()
{
  result = qword_1EB0CA410;
  if (!qword_1EB0CA410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA410);
  }

  return result;
}

uint64_t sub_1A3402280()
{
  v1 = type metadata accessor for MonogramRecipe_Path.Command(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CGPathCreateMutable();
  v6 = *v0;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      sub_1A340366C(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v4, type metadata accessor for MonogramRecipe_Path.Command);
      sub_1A3403160(v4, Mutable);
      ++v8;
      sub_1A34036D4(v4, type metadata accessor for MonogramRecipe_Path.Command);
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = sub_1A34036D4(v4, type metadata accessor for MonogramRecipe_Path.Command);
    __break(1u);
  }

  else
  {
LABEL_5:
    v9 = Mutable;
    v10 = MEMORY[0x1A58EFD10]();

    if (v10)
    {

      return v10;
    }

    return v9;
  }

  return result;
}

uint64_t sub_1A3402464(uint64_t a1, const CGPath *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A3402778;
  *(v5 + 24) = v4;
  v8[4] = sub_1A3402780;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3402438;
  v8[3] = &block_descriptor_21;
  v6 = _Block_copy(v8);
  sub_1A34C9010();

  CGPathApplyWithBlock(a2, v6);
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A34025B8(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for MonogramRecipe_Path.Command(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  sub_1A34035BC(&qword_1EB0C6468, type metadata accessor for MonogramRecipe_Path.Command);
  sub_1A34CA100();
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A3299530(0, v8[2] + 1, 1, v8);
    *a2 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A3299530(v10 > 1, v11 + 1, 1, v8);
    *a2 = v8;
  }

  v8[2] = v11 + 1;
  return sub_1A3403604(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for MonogramRecipe_Path.Command);
}

void sub_1A34027B0(void *a1, uint64_t a2)
{
  v80 = a1;
  v4 = type metadata accessor for MonogramRecipe_Point(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v78 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v78 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v78 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v78 - v18;
  v20 = *a2;
  if (*a2 <= 1)
  {
    if (v20)
    {
      v69 = v80;
      if (v20 != 1)
      {
        goto LABEL_26;
      }

      v70 = v17;
      *v80 = 1;
      *(v69 + 8) = 1;
      v71 = *(a2 + 8);
      v72 = *v71;
      v73 = v71[1];
      v81 = MEMORY[0x1E69E7CC0];
      v74 = sub_1A32EBE34(0, 1, 0);
      v75 = v81;
      MEMORY[0x1EEE9AC00](v74);
      v78[-2] = v72;
      v78[-1] = v73;
      sub_1A34035BC(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
      sub_1A34CA100();
      v81 = v75;
      v77 = *(v75 + 16);
      v76 = *(v75 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1A32EBE34(v76 > 1, v77 + 1, 1);
        v75 = v81;
      }

      *(v75 + 16) = v77 + 1;
      sub_1A3403604(v15, v75 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v77, type metadata accessor for MonogramRecipe_Point);

      v69[2] = v75;
    }

    else
    {
      v44 = v17;
      v45 = v80;
      *v80 = 0;
      *(v45 + 8) = 1;
      v46 = *(a2 + 8);
      v47 = *v46;
      v48 = v46[1];
      v81 = MEMORY[0x1E69E7CC0];
      v49 = sub_1A32EBE34(0, 1, 0);
      v50 = v81;
      MEMORY[0x1EEE9AC00](v49);
      v78[-2] = v47;
      v78[-1] = v48;
      sub_1A34035BC(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
      sub_1A34CA100();
      v81 = v50;
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1A32EBE34(v51 > 1, v52 + 1, 1);
        v50 = v81;
      }

      *(v50 + 16) = v52 + 1;
      sub_1A3403604(v19, v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v52, type metadata accessor for MonogramRecipe_Point);

      v45[2] = v50;
    }
  }

  else
  {
    if (v20 != 2)
    {
      if (v20 == 3)
      {
        v21 = v17;
        v22 = v80;
        *v80 = 2;
        *(v22 + 8) = 1;
        v23 = *(a2 + 8);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = v23[4];
        v29 = v23[5];
        v81 = MEMORY[0x1E69E7CC0];
        sub_1A32EBE34(0, 3, 0);
        v30 = v81;
        v31 = sub_1A34035BC(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
        MEMORY[0x1EEE9AC00](v31);
        v78[-2] = v24;
        v78[-1] = v25;
        v79 = v32;
        sub_1A34CA100();
        v81 = v30;
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1A32EBE34(v33 > 1, v34 + 1, 1);
          v30 = v81;
        }

        *(v30 + 16) = v34 + 1;
        v35 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v36 = *(v21 + 72);
        v37 = sub_1A3403604(v6, v30 + v35 + v36 * v34, type metadata accessor for MonogramRecipe_Point);
        MEMORY[0x1EEE9AC00](v37);
        v78[-2] = v26;
        v78[-1] = v27;
        sub_1A34CA100();
        v81 = v30;
        v39 = *(v30 + 16);
        v38 = *(v30 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1A32EBE34(v38 > 1, v39 + 1, 1);
          v30 = v81;
        }

        *(v30 + 16) = v39 + 1;
        v40 = sub_1A3403604(v6, v30 + v35 + v36 * v39, type metadata accessor for MonogramRecipe_Point);
        MEMORY[0x1EEE9AC00](v40);
        v78[-2] = v28;
        v78[-1] = v29;
        sub_1A34CA100();
        v81 = v30;
        v42 = *(v30 + 16);
        v41 = *(v30 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1A32EBE34(v41 > 1, v42 + 1, 1);
          v30 = v81;
        }

        *(v30 + 16) = v42 + 1;
        sub_1A3403604(v6, v30 + v35 + v36 * v42, type metadata accessor for MonogramRecipe_Point);
        v43 = v80;

        v43[2] = v30;
        return;
      }

      v68 = v80;
      if (v20 == 4)
      {
        *v80 = 3;
        *(v68 + 8) = 1;
        return;
      }

LABEL_26:
      type metadata accessor for CGPathElementType(0);
      LODWORD(v81) = v20;
      sub_1A34CDE60();
      __break(1u);
      return;
    }

    v79 = v17;
    v53 = v80;
    *v80 = 2;
    *(v53 + 8) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DCA90;
    v55 = *(a2 + 8);
    *(inited + 32) = *v55;
    v56 = *(v55 + 16);
    v57 = *(v55 + 24);
    *(inited + 48) = v56;
    *(inited + 56) = v57;
    v81 = MEMORY[0x1E69E7CC0];
    v58 = sub_1A32EBE34(0, 2, 0);
    v59 = v81;
    *&v78[-2] = MEMORY[0x1EEE9AC00](v58);
    v78[1] = sub_1A34035BC(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
    sub_1A34CA100();
    v78[0] = v2;
    v81 = v59;
    v61 = *(v59 + 16);
    v60 = *(v59 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_1A32EBE34(v60 > 1, v61 + 1, 1);
      v59 = v81;
    }

    *(v59 + 16) = v61 + 1;
    v62 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v63 = *(v79 + 72);
    sub_1A3403604(v12, v59 + v62 + v63 * v61, type metadata accessor for MonogramRecipe_Point);

    MEMORY[0x1EEE9AC00](v64);
    v78[-2] = v56;
    v78[-1] = v57;
    sub_1A34CA100();
    v81 = v59;
    v66 = *(v59 + 16);
    v65 = *(v59 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_1A32EBE34(v65 > 1, v66 + 1, 1);
      v59 = v81;
    }

    *(v59 + 16) = v66 + 1;
    sub_1A3403604(v9, v59 + v62 + v66 * v63, type metadata accessor for MonogramRecipe_Point);
    v67 = v80;

    v67[2] = v59;
  }
}

void sub_1A3403160(uint64_t a1, CGPath *a2)
{
  v4 = type metadata accessor for MonogramRecipe_Point(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  if (*(a1 + 8) != 1)
  {
    return;
  }

  v20 = *a1;
  if (*a1 > 1)
  {
    if (v20 != 2)
    {
      CGPathCloseSubpath(a2);
      return;
    }

    v23 = *(a1 + 16);
    v24 = *(v23 + 16);
    if (v24 == 3)
    {
      v27 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v28 = *(v17 + 72);
      sub_1A340366C(v27 + 2 * v28, v12, type metadata accessor for MonogramRecipe_Point);
      sub_1A34036D4(v12, type metadata accessor for MonogramRecipe_Point);
      if (*(v23 + 16))
      {
        sub_1A340366C(v27, v9, type metadata accessor for MonogramRecipe_Point);
        sub_1A34036D4(v9, type metadata accessor for MonogramRecipe_Point);
        if (*(v23 + 16) >= 2uLL)
        {
          sub_1A340366C(v27 + v28, v6, type metadata accessor for MonogramRecipe_Point);
          sub_1A34036D4(v6, type metadata accessor for MonogramRecipe_Point);
          v29 = 0x3FF0000000000000;
          v30 = 0;
          v31 = 0;
          v32 = 0x3FF0000000000000;
          v33 = 0;
          v34 = 0;
          sub_1A34CD6F0();
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v24 != 2)
      {
        return;
      }

      v25 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      sub_1A340366C(v25 + *(v17 + 72), v12, type metadata accessor for MonogramRecipe_Point);
      sub_1A34036D4(v12, type metadata accessor for MonogramRecipe_Point);
      if (*(v23 + 16))
      {
        sub_1A340366C(v25, v9, type metadata accessor for MonogramRecipe_Point);
        sub_1A34036D4(v9, type metadata accessor for MonogramRecipe_Point);
        v29 = 0x3FF0000000000000;
        v30 = 0;
        v31 = 0;
        v32 = 0x3FF0000000000000;
        v33 = 0;
        v34 = 0;
        sub_1A34CD6C0();
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v20)
  {
    v26 = *(a1 + 16);
    if (*(v26 + 16))
    {
      sub_1A340366C(v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, type metadata accessor for MonogramRecipe_Point);
      v29 = 0x3FF0000000000000;
      v30 = 0;
      v31 = 0;
      v32 = 0x3FF0000000000000;
      v33 = 0;
      v34 = 0;
      sub_1A34CD6E0();
      v22 = v15;
      goto LABEL_13;
    }
  }

  else
  {
    v21 = *(a1 + 16);
    if (*(v21 + 16))
    {
      sub_1A340366C(v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), &v29 - v18, type metadata accessor for MonogramRecipe_Point);
      v29 = 0x3FF0000000000000;
      v30 = 0;
      v31 = 0;
      v32 = 0x3FF0000000000000;
      v33 = 0;
      v34 = 0;
      sub_1A34CD6D0();
      v22 = v19;
LABEL_13:
      sub_1A34036D4(v22, type metadata accessor for MonogramRecipe_Point);
    }
  }
}

float32x2_t sub_1A34035AC(float32x2_t *a1)
{
  result = vcvt_f32_f64(v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1A34035BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3403604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A340366C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A34036D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A340374C(uint64_t a1)
{
  sub_1A34C9490();
  swift_allocObject();
  sub_1A34C9480();
  sub_1A34C9460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAFB8);
  sub_1A3407808();
  sub_1A34C9470();
  if (v1)
  {
  }

  return a1;
}

uint64_t sub_1A3403844(uint64_t a1)
{
  v2 = sub_1A34C9140();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1A34C9130();
  sub_1A34C9010();
  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3403938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1A34C9010();
  v4 = v3(a2);

  return v4;
}

id sub_1A34039B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Box();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_DWORD *sub_1A3403A70(_DWORD *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v3 = sub_1A34CD350();
  *&v34[0] = 0;
  v4 = [v1 contactsMatchingPropertiesOfContact:a1 unifyResults:1 keysToFetch:v3 ignoreAvailableKeys:1 error:v34];

  if (!v4)
  {
    v14 = *&v34[0];
    sub_1A34C9580();

    swift_willThrow();
    return v3;
  }

  v5 = *&v34[0];
  if ([v4 count] >= 2)
  {
    if (qword_1ED854BA0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A34CA250();
    __swift_project_value_buffer(v6, qword_1ED857E38);
    v3 = a1;
    v7 = v4;
    v8 = sub_1A34CA230();
    v9 = sub_1A34CD640();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v3;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v3;
      v11[1] = v4;
      v12 = v3;
      v13 = v7;
      _os_log_impl(&dword_1A31E6000, v8, v9, "Multiple contacts found for contact: %@. This could result in the user seeing the wrong avatar! %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v11, -1, -1);
      MEMORY[0x1A58F1010](v10, -1, -1);
    }
  }

  if ([v4 firstObject])
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    sub_1A31EC194(0, &qword_1ED854E70);
    if (swift_dynamicCast())
    {
      v3 = v31;
      if (v31 == a1)
      {
        if (qword_1ED854BA0 != -1)
        {
          swift_once();
        }

        v23 = sub_1A34CA250();
        __swift_project_value_buffer(v23, qword_1ED857E38);
        v24 = v4;
        v25 = sub_1A34CA230();
        v26 = sub_1A34CD640();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v4;
          v29 = v24;
          _os_log_impl(&dword_1A31E6000, v25, v26, "Failed to re-fetch contacts. Returned back exact same reference. Results: %@", v27, 0xCu);
          sub_1A3288FDC(v28, &unk_1EB0C6C40);
          MEMORY[0x1A58F1010](v28, -1, -1);
          MEMORY[0x1A58F1010](v27, -1, -1);
        }

        sub_1A3406E84();
        swift_allocError();
        *v30 = 0;
        swift_willThrow();
      }

      else
      {
      }

      return v3;
    }
  }

  else
  {
    sub_1A3288FDC(v34, &qword_1EB0C7690);
  }

  if (qword_1ED854BA0 != -1)
  {
    swift_once();
  }

  v15 = sub_1A34CA250();
  __swift_project_value_buffer(v15, qword_1ED857E38);
  v16 = v4;
  v17 = sub_1A34CA230();
  v18 = sub_1A34CD640();

  if (os_log_type_enabled(v17, v18))
  {
    v3 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 1) = v16;
    *v19 = v4;
    v20 = v16;
    _os_log_impl(&dword_1A31E6000, v17, v18, "Failed to re-fetch contacts. Results: %@", v3, 0xCu);
    sub_1A3288FDC(v19, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v19, -1, -1);
    MEMORY[0x1A58F1010](v3, -1, -1);
  }

  sub_1A3406E84();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return v3;
}

uint64_t sub_1A3404024()
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

uint64_t sub_1A34040D0()
{
  if (!*v0)
  {
    return 0x657669746167654ELL;
  }

  v1 = [*(*v0 + 16) description];
  v2 = sub_1A34CD110();

  return v2;
}

uint64_t sub_1A3404154(void *a1)
{
  v3 = [a1 hasBeenPersisted];
  if (v3)
  {
    v4 = *(v1 + 64);
    MEMORY[0x1EEE9AC00](v3);
    os_unfair_lock_lock((v4 + 24));
    sub_1A34077AC((v4 + 16), &v8);
  }

  else
  {
    v4 = *(v1 + 72);
    MEMORY[0x1EEE9AC00](v3);
    os_unfair_lock_lock((v4 + 24));
    sub_1A3407790((v4 + 16), &v8);
  }

  os_unfair_lock_unlock((v4 + 24));
  if (v8)
  {
    if (v8 == 1)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    type metadata accessor for CNContactAvatarContact();
    swift_allocObject();
    v6 = sub_1A32F27E4(a1, 1);
    v7 = a1;
    return v6;
  }
}

void sub_1A3404274(id a1@<X1>, void **a2@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript_];

    if (v7)
    {
      v8 = *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x58));
      sub_1A34C9010();
    }

    else
    {
      v8 = 1;
    }

    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3404338(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [objc_opt_self() fingerprintForContact_];
  if (!v5)
  {
    sub_1A34CD110();
    v5 = sub_1A34CD0E0();
  }

  v6 = [*a1 objectForKeyedSubscript_];

  if (v6)
  {
    v7 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x58));
    sub_1A34C9010();
  }

  else
  {
    v7 = 1;
  }

  *a3 = v7;
}

void sub_1A3404424(void *a1)
{
  v2 = sub_1A34C9780();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34CA250();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED854BA0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_1ED857E38);
  v44 = *(v7 + 16);
  v45 = v7 + 16;
  v43 = v10;
  v44(v9);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v42 = v6;
  v11 = [a1 id];
  sub_1A34C9760();

  sub_1A34C9740();
  (*(v3 + 8))(v5, v2);
  sub_1A34C9ED0();

  sub_1A34C9EA0();
  v12 = v46;
  if (!sub_1A3404154(a1))
  {
    v13 = v12;
    v41 = v9;
    v14 = v12[5];
    v15 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v14);
    v16 = v12[7];
    v17 = *(v15 + 8);
    v40 = a1;
    v18 = v47;
    v19 = v17(a1, v16, v14, v15);
    if (v18)
    {
      v49 = v18;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v21 = swift_dynamicCast();
      v22 = v44;
      if (v21 && (v48 & 1) == 0)
      {

        v22(v41, v43, v42);
        swift_allocObject();
        v36 = sub_1A34C9E90();
        MEMORY[0x1EEE9AC00](v36);
        v37 = v40;
        *(&v39 - 2) = v13;
        *(&v39 - 1) = v37;
        sub_1A34C9EC0();

        sub_1A3406E84();
        swift_allocError();
        *v38 = 0;
        swift_willThrow();
      }

      else
      {

        swift_willThrow();
      }
    }

    else
    {
      v23 = v19;
      if ([v23 hasBeenPersisted])
      {
        v24 = v12[12];
        sub_1A34C9010();
        os_unfair_lock_lock(v24 + 6);
        sub_1A3406ED8(&v24[4]);
        v25 = v43;
        v47 = 0;
        os_unfair_lock_unlock(v24 + 6);

        type metadata accessor for CNContactAvatarContact();
        swift_allocObject();
        v26 = sub_1A32F27E4(v23, 1);
        (v44)(v41, v25, v42);
        swift_allocObject();
        v27 = v23;
        v28 = sub_1A34C9E90();
        MEMORY[0x1EEE9AC00](v28);
        *(&v39 - 4) = v12;
        *(&v39 - 3) = v26;
        *(&v39 - 2) = v40;
        sub_1A34C9EC0();
      }

      else
      {
        v29 = v23;
        v30 = sub_1A34CA230();
        v31 = sub_1A34CD660();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v33 = v29;
          v34 = v29;
          _os_log_impl(&dword_1A31E6000, v30, v31, "Store returned back a non-persisted contact, ignoring. %@", v32, 0xCu);
          sub_1A3288FDC(v33, &unk_1EB0C6C40);
          MEMORY[0x1A58F1010](v33, -1, -1);
          MEMORY[0x1A58F1010](v32, -1, -1);
        }

        sub_1A3406E84();
        swift_allocError();
        *v35 = 1;
        swift_willThrow();
      }
    }
  }

  sub_1A34C9E80();
}

void sub_1A3404AE0(uint64_t a1)
{
  v3 = *(a1 + 64);
  os_unfair_lock_lock((v3 + 24));
  sub_1A3407758((v3 + 16));
  if (v1)
  {
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
    os_unfair_lock_unlock((a1 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    v4 = *(a1 + 72);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1A3407774((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1A3404BB8(void **a1, id a2)
{
  v2 = *a1;
  v3 = [a2 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF00);
    v6 = objc_allocWithZone(v5);
    *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x58)] = 0;
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    [v2 setObject:v7 forKeyedSubscript:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3404C94(void **a1, uint64_t a2)
{
  v3 = [objc_opt_self() fingerprintForContact_];
  if (!v3)
  {
    sub_1A34CD110();
    v3 = sub_1A34CD0E0();
  }

  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF00);
  v6 = objc_allocWithZone(v5);
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x58)] = 0;
  v8.receiver = v6;
  v8.super_class = v5;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  [v4 setObject:v7 forKeyedSubscript:v3];
}

void sub_1A3404D94(uint64_t a1)
{
  v3 = *(a1 + 64);
  os_unfair_lock_lock((v3 + 24));
  sub_1A3406F14((v3 + 16));
  if (v1)
  {
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
    os_unfair_lock_unlock((a1 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    v4 = *(a1 + 72);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1A3406F30((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1A3404E68(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = v5;

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF00);
    v8 = objc_allocWithZone(v7);
    *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x58)] = a2;
    v10.receiver = v8;
    v10.super_class = v7;
    sub_1A34C9010();
    v9 = objc_msgSendSuper2(&v10, sel_init);
    [v3 setObject:v9 forKeyedSubscript:{v6, v10.receiver, v10.super_class}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3404F64(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() fingerprintForContact_];
  if (!v5)
  {
    sub_1A34CD110();
    v5 = sub_1A34CD0E0();
  }

  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF00);
  v8 = objc_allocWithZone(v7);
  *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x58)] = a3;
  v10.receiver = v8;
  v10.super_class = v7;
  sub_1A34C9010();
  v9 = objc_msgSendSuper2(&v10, sel_init);
  [v6 setObject:v9 forKeyedSubscript:{v5, v10.receiver, v10.super_class}];
}

uint64_t sub_1A340507C(uint64_t a1)
{
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  v6[10] = v1;
  v6[11] = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 64);
    sub_1A34C9010();
    os_unfair_lock_lock(v4 + 6);
    sub_1A34077D0(v6);
    os_unfair_lock_unlock(v4 + 6);

    v5 = v6[0];

    return v5;
  }

  return result;
}

void sub_1A3405294(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  os_unfair_lock_lock((v4 + 24));
  sub_1A34077EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    *a2 = v5;
  }
}

uint64_t sub_1A3405308@<X0>(id *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DE7A0;
  *(inited + 32) = 0xD000000000000018;
  v64 = inited;
  *(inited + 40) = 0x80000001A3511640;
  v5 = [*a2 allKeys];
  sub_1A31EC194(0, &qword_1ED854490);
  v6 = sub_1A34CD370();

  if (v6 >> 62)
  {
    v7 = sub_1A34CD9B0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v67 = MEMORY[0x1E69E7CC0];
    result = sub_1A34CDB70();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1A58EF310](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      ++v9;
      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
    }

    while (v7 != v9);

    v11 = v67;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1A331D6A8(v11);

  v64[6] = v12;
  v64[7] = 0xD000000000000016;
  v64[8] = 0x80000001A3511660;
  v13 = *a2;
  v14 = &selRef_addFailureBlock_;
  v15 = [v13 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF00);
  v16 = sub_1A34CD370();

  if (v16 >> 62)
  {
    v17 = sub_1A34CD9B0();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v68 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBB94(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = 0;
  v20 = v68;
  v65 = v16 & 0xC000000000000001;
  do
  {
    if (v65)
    {
      v21 = MEMORY[0x1A58EF310](v19, v16);
    }

    else
    {
      v21 = *(v16 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = v17;
    v24 = v16;
    v25 = *(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x58));
    if (v25)
    {
      v26 = *(v25 + 16);
      sub_1A34C9010();
      v27 = [v26 description];
      v28 = sub_1A34CD110();
      v30 = v29;
    }

    else
    {

      v28 = 0x657669746167654ELL;
      v30 = 0xED00007972746E45;
    }

    v32 = *(v68 + 16);
    v31 = *(v68 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1A32EBB94((v31 > 1), v32 + 1, 1);
    }

    ++v19;
    *(v68 + 16) = v32 + 1;
    v33 = v68 + 16 * v32;
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v17 = v23;
    v16 = v24;
  }

  while (v23 != v19);

  v18 = MEMORY[0x1E69E7CC0];
  v14 = &selRef_addFailureBlock_;
LABEL_28:
  v64[9] = v20;
  v64[10] = 0xD00000000000001BLL;
  v64[11] = 0x80000001A3511680;
  v34 = *a1;
  v35 = [*a1 allKeys];
  v36 = sub_1A34CD370();

  v37 = sub_1A331D6A8(v36);

  v64[12] = v37;
  v64[13] = 0xD000000000000019;
  v64[14] = 0x80000001A35116A0;
  v38 = [v34 v14[25]];
  v39 = sub_1A34CD370();

  if (v39 >> 62)
  {
    v40 = sub_1A34CD9B0();
    if (v40)
    {
LABEL_30:
      result = sub_1A32EBB94(0, v40 & ~(v40 >> 63), 0);
      if ((v40 & 0x8000000000000000) == 0)
      {
        v41 = 0;
        v42 = v18;
        v66 = v39 & 0xC000000000000001;
        do
        {
          if (v66)
          {
            v43 = MEMORY[0x1A58EF310](v41, v39);
          }

          else
          {
            v43 = *(v39 + 8 * v41 + 32);
          }

          v44 = v43;
          v45 = v39;
          v46 = *(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0x58));
          if (v46)
          {
            v47 = *(v46 + 16);
            sub_1A34C9010();
            v48 = [v47 description];
            v49 = sub_1A34CD110();
            v51 = v50;
          }

          else
          {

            v49 = 0x657669746167654ELL;
            v51 = 0xED00007972746E45;
          }

          v53 = *(v42 + 16);
          v52 = *(v42 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1A32EBB94((v52 > 1), v53 + 1, 1);
          }

          ++v41;
          *(v42 + 16) = v53 + 1;
          v54 = v42 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
          v39 = v45;
        }

        while (v40 != v41);

        goto LABEL_46;
      }

LABEL_51:
      __break(1u);
      return result;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_30;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v64[15] = v42;
  sub_1A33EA940(v64);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAFB0);
  swift_arrayDestroy();
  result = sub_1A340374C(0xD000000000000017);
  if (!v62)
  {
    v58 = v56;
    v59 = v57;
    v60 = sub_1A3331CA0(result, v55, v56, v57);

    result = sub_1A31EC234(v58, v59);
    *a3 = v60;
  }

  return result;
}

uint64_t sub_1A3405A08()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    os_state_remove_handler();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3405A70(uint64_t result, uint64_t a2)
{
  if (!*result)
  {
    v11 = v2;
    v12 = v3;
    v4 = result;
    sub_1A31EE4BC(a2 + 16, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAF08);
    sub_1A31EC194(0, &qword_1ED854A50);
    result = swift_dynamicCast();
    if (result)
    {
      v6 = *(a2 + 56);
      v7 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for ContactStoreChangeHistoryObserver();
      swift_allocObject();

      v8 = sub_1A31EE910(v9, v6, sub_1A3406F4C, v7);

      *v4 = v8;
    }
  }

  return result;
}

uint64_t sub_1A3405B9C(uint64_t a1)
{
  v2 = sub_1A34CD690();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    v7 = sub_1A3407494(v5);
    v9 = v8;
    v11 = v10;
    sub_1A3405CC4(v7, v8, v10);
    sub_1A3407738(v7, v9, v11);
  }

  return result;
}

uint64_t sub_1A3405CC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A34CA250();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED854BA0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1ED857E38);
  (*(v9 + 16))(v11, v12, v8);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v13 = sub_1A34C9EA0();
  v14 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v13);
  *&v18[-32] = a1;
  *&v18[-24] = a2;
  v18[-16] = a3;
  os_unfair_lock_lock((v14 + 24));
  sub_1A3406E48((v14 + 16), &v19);
  os_unfair_lock_unlock((v14 + 24));
  if (v19 == 1)
  {
    v15 = *(v4 + 72);
    os_unfair_lock_lock((v15 + 24));
    [*(v15 + 16) removeAllObjects];
    os_unfair_lock_unlock((v15 + 24));
    type metadata accessor for AvatarContactStoreCache();
    sub_1A3407414(&qword_1ED854DF0, v16, type metadata accessor for AvatarContactStoreCache);
    sub_1A34CA2C0();
    sub_1A34CA2F0();
  }

  sub_1A34C9E80();
}

void sub_1A3405F14(unint64_t a1@<X1>, id *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = a1 | a3;
      if (!(a1 | a3))
      {
LABEL_9:
        *a5 = v9;
        return;
      }

      [*a2 removeAllObjects];
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }

    v6 = *a2;
    v7 = sub_1A34CD0E0();
LABEL_5:
    v8 = v7;
    [v6 setObject:0 forKeyedSubscript:v7];

    goto LABEL_8;
  }

  v6 = *a2;
  v7 = [a1 identifier];
  if (v7)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1A3405FD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvatarContactStoreCache();
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

uint64_t sub_1A3406010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1A34CA250();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A34060D4, 0, 0);
}

uint64_t sub_1A34060D4()
{
  if (qword_1ED854BA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v7 = *(v0 + 24);
  v4 = __swift_project_value_buffer(v3, qword_1ED857E38);
  (*(v2 + 16))(v1, v4, v3);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  *(swift_task_alloc() + 16) = v7;
  sub_1A34C9EC0();

  v5 = *(v0 + 8);

  return v5();
}

void sub_1A340623C(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_1A34C9010();
  os_unfair_lock_lock(v2 + 8);
  sub_1A3407478(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1A34062C4(uint64_t a1, void *a2)
{
  sub_1A31EEE60(*a1, *(a1 + 8));
  v4 = [a2 currentHistoryToken];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A34C9690();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
}

uint64_t sub_1A340634C()
{
  v0 = sub_1A34CCE90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CCED0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 56);
    aBlock[4] = sub_1A3407410;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A32A5AB4;
    aBlock[3] = &block_descriptor_30;
    v12 = result;
    v9 = _Block_copy(aBlock);
    sub_1A34C9010();
    sub_1A34CCEB0();
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A3407414(&qword_1ED854650, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
    v11 = v4;
    sub_1A32A6864(&qword_1ED854640, &unk_1EB0C6100);
    sub_1A34CD960();
    MEMORY[0x1A58EEF80](0, v7, v3, v9);
    _Block_release(v9);
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v11);
  }

  return result;
}

uint64_t sub_1A3406628()
{
  v1 = v0;
  v47 = sub_1A34CD690();
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v42 - v6;
  v7 = sub_1A34CD6A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = *(v0 + 24);
  sub_1A34C9010();
  os_unfair_lock_lock((v16 + 32));
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  sub_1A32F74C0(v17, v18);
  os_unfair_lock_unlock((v16 + 32));

  if (v18 >> 60 == 15)
  {
    if (qword_1ED854BA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1A34CA250();
    __swift_project_value_buffer(v19, qword_1ED857E38);
    v20 = sub_1A34CA230();
    v21 = sub_1A34CD640();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A31E6000, v20, v21, "Received storeChange notification before receiving changeHistoryToken.", v22, 2u);
      MEMORY[0x1A58F1010](v22, -1, -1);
    }

    v23 = *(v1 + 32);
    *v4 = [objc_allocWithZone(MEMORY[0x1E695CD30]) init];
    v24 = v47;
    (*(v2 + 104))(v4, *MEMORY[0x1E695C0F8], v47);
    v23(v4);
    return (*(v2 + 8))(v4, v24);
  }

  else
  {
    v45 = v8;
    v25 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
    v26 = sub_1A34C9680();
    [v25 setStartingToken_];

    [v25 setShouldUnifyResults_];
    v27 = *(v1 + 16);
    v46 = v25;
    sub_1A34CD670();
    v43 = v17;
    v44 = v18;

    v29 = v7;
    v30 = *(v1 + 24);
    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = v15;
    sub_1A34C9010();
    os_unfair_lock_lock(v30 + 8);
    sub_1A3406E00(&v30[4]);
    os_unfair_lock_unlock(v30 + 8);

    v32 = *(v45 + 16);
    v42 = v15;
    v32(v10, v15, v7);
    v33 = MEMORY[0x1E695C100];
    sub_1A3407414(&unk_1ED8545F8, 255, MEMORY[0x1E695C100]);
    sub_1A34CD2B0();
    sub_1A3407414(&qword_1ED8545F0, 255, v33);
    v34 = v50;
    v48 = v29;
    sub_1A34CD8A0();
    v35 = v34;
    v36 = *(v2 + 48);
    v37 = v47;
    if (v36(v34, 1, v47) != 1)
    {
      v38 = *(v2 + 32);
      v39 = (v2 + 8);
      do
      {
        v38(v4, v35, v37);
        (*(v1 + 32))(v4);
        (*v39)(v4, v37);
        sub_1A34CD8A0();
        v35 = v50;
      }

      while (v36(v50, 1, v37) != 1);
    }

    v40 = *(v45 + 8);
    v41 = v48;
    v40(v49, v48);
    sub_1A31EEE60(v43, v44);

    return (v40)(v42, v41);
  }
}

uint64_t sub_1A3406D98()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A3406E00(uint64_t a1)
{
  sub_1A31EEE60(*a1, *(a1 + 8));
  result = sub_1A34CD680();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_1A3406E84()
{
  result = qword_1ED8544D8[0];
  if (!qword_1ED8544D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8544D8);
  }

  return result;
}

uint64_t sub_1A3406F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[3] = sub_1A31EC194(0, &qword_1ED854A50);
  v27[4] = &off_1F1626D28;
  v27[0] = a2;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  sub_1A31EE4BC(v27, a3 + 16);
  *(a3 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAF20);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(a3 + 96) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A34DAA30;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 boundingStrategyWithCapacity_];
  v9 = [v8 nonatomicCacheScheduler];
  v10 = objc_allocWithZone(MEMORY[0x1E6996660]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAF90);
  v11 = sub_1A34CD350();

  v12 = [v10 initWithBoundingStrategies:v11 resourceScheduler:v9];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBB80);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(a3 + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A34DAA30;
  *(v14 + 32) = [v8 boundingStrategyWithCapacity_];
  v15 = [v8 nonatomicCacheScheduler];
  v16 = objc_allocWithZone(MEMORY[0x1E6996660]);
  v17 = sub_1A34CD350();

  v18 = [v16 initWithBoundingStrategies:v17 resourceScheduler:v15];

  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *(a3 + 72) = v19;
  v20 = [objc_opt_self() currentEnvironment];
  LODWORD(v18) = [v20 isInternalBuild];

  if (v18)
  {
    sub_1A31EC194(0, &qword_1ED854B50);
    v21 = sub_1A34CD750();
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A34077C8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3403938;
    aBlock[3] = &block_descriptor_34;
    v23 = _Block_copy(aBlock);

    v24 = os_state_add_handler();
    _Block_release(v23);

    __swift_destroy_boxed_opaque_existential_0(v27);
    *(a3 + 80) = v24;
    *(a3 + 88) = 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return a3;
}

uint64_t sub_1A3407340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292050;

  return sub_1A3406010(a1, v4, v5, v7, v6);
}

uint64_t sub_1A3407414(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3407494(void **a1)
{
  v2 = sub_1A34CD690();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E695C0E0])
  {
    v8 = *(v3 + 8);
    v8(a1, v2);
    v8(v6, v2);
    return 0;
  }

  else if (v7 == *MEMORY[0x1E695C0F0])
  {
    (*(v3 + 96))(v6, v2);
    v10 = *v6;
    v11 = [v10 contact];

    (*(v3 + 8))(a1, v2);
    return v11;
  }

  else if (v7 == *MEMORY[0x1E695C0F8])
  {
    v12 = *(v3 + 8);
    v12(a1, v2);
    v12(v6, v2);
    return 1;
  }

  else if (v7 == *MEMORY[0x1E695C0E8])
  {
    (*(v3 + 96))(v6, v2);
    v13 = *v6;
    v14 = [v13 contactIdentifier];
    v15 = sub_1A34CD110();

    (*(v3 + 8))(a1, v2);
    return v15;
  }

  else
  {
    result = sub_1A34CDE20();
    __break(1u);
  }

  return result;
}

void sub_1A3407738(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_1A3407808()
{
  result = qword_1ED8544A0;
  if (!qword_1ED8544A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAFB8);
    sub_1A3407894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8544A0);
  }

  return result;
}

unint64_t sub_1A3407894()
{
  result = qword_1ED854498;
  if (!qword_1ED854498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854498);
  }

  return result;
}

unint64_t sub_1A3407924()
{
  result = qword_1EB0CAFC0;
  if (!qword_1EB0CAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAFC0);
  }

  return result;
}

double sub_1A3407988(uint64_t a1)
{
  v2 = sub_1A34CD970();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1A3409D18(&v4, v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_1A3407A08(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1A34CD280();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3407A50@<X0>(uint64_t a1@<X8>)
{
  sub_1A34CA9B0();
  sub_1A340BD84(&qword_1ED8542D8, MEMORY[0x1E697E3C0]);
  sub_1A34CD5B0();
  sub_1A34CD5E0();
  if (v9[4] == v9[0])
  {
    v2 = sub_1A34CA8A0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1A34CD600();
    v6 = v5;
    v7 = sub_1A34CA8A0();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1A3407BE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1A34C9650();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v19;
  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23 = *(v7 + 56);
  if (v22)
  {
    v38 = v9;
    v40 = a3;
    v24 = 1;
    v42 = v23;
    v43 = v7 + 56;
    (v23)(&v38 - v19, 1, 1, v6, v20);
    v25 = objc_opt_self();
    v26 = sub_1A34CD0E0();
    v39 = v25;
    v27 = [v25 _web_URLWithUserTypedString_];

    if (v27)
    {
      sub_1A34C9620();

      v24 = 0;
    }

    sub_1A3288FDC(v21, &qword_1EB0C71D8);
    v42(v17, v24, 1, v6);
    sub_1A329D98C(v17, v21, &qword_1EB0C71D8);
    sub_1A328D790(v21, v14, &qword_1EB0C71D8);
    if ((*(v7 + 48))(v14, 1, v6) == 1)
    {
      sub_1A3288FDC(v21, &qword_1EB0C71D8);
      sub_1A3288FDC(v14, &qword_1EB0C71D8);
      v28 = v40;
      v29 = 1;
    }

    else
    {
      v31 = *(v7 + 32);
      v32 = v41;
      v31(v41, v14, v6);
      sub_1A34C9630();
      if (v33)
      {
      }

      else
      {
        v44 = 0x2F2F3A70747468;
        v45 = 0xE700000000000000;
        MEMORY[0x1A58EEA30](a1, a2);
        v34 = sub_1A34CD0E0();

        v35 = [v39 _web_URLWithUserTypedString_];

        if (v35)
        {
          v36 = v38;
          sub_1A34C9620();

          (*(v7 + 8))(v32, v6);
          v32 = v36;
        }
      }

      sub_1A3288FDC(v21, &qword_1EB0C71D8);
      v37 = v40;
      v31(v40, v32, v6);
      v28 = v37;
      v29 = 0;
    }

    return (v42)(v28, v29, 1, v6);
  }

  else
  {

    return (v23)(a3, 1, 1, v6, v20);
  }
}