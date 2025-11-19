uint64_t sub_244194024(void *a1, void *a2)
{
  v4 = *(*(sub_2441D8B8C() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_244194424(a1, a2);
  return 1;
}

void sub_244194424(void *a1, void *a2)
{
  v4 = [a1 atx_intentType];
  v5 = sub_2441D8C6C();
  v7 = v6;

  v8 = [a2 atx_intentType];
  v9 = sub_2441D8C6C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_2441D91CC();

    if ((v13 & 1) == 0)
    {
      sub_2441994A8();
      swift_allocError();
      v15 = v14;
      v16 = [a1 atx_intentType];
      v17 = sub_2441D8C6C();
      v19 = v18;

      v20 = [a2 atx_intentType];
      v21 = sub_2441D8C6C();
      v23 = v22;

      *v15 = v17;
      *(v15 + 8) = v19;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 56) = 0;
LABEL_17:
      swift_willThrow();
      return;
    }
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24 || (v25 = v24, objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0))
  {
    v34 = [a1 atx_nonNilParametersByName];
    if (v34)
    {
      v35 = v34;
      v36 = [a2 atx_nonNilParametersByName];
      if (v36)
      {
        v37 = v36;
        if ([v35 atx:v36 isFuzzyMatch:?])
        {

          return;
        }

        sub_2441994A8();
        swift_allocError();
        *v38 = v35;
        *(v38 + 8) = v37;
        *(v38 + 56) = 5;
        goto LABEL_17;
      }

      goto LABEL_73;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v27 = v26;
  v93 = a1;
  v28 = a2;
  v29 = [v25 launchId];
  if (v29)
  {
    v30 = v29;
    v31 = sub_2441D8C6C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v39 = v28;
  v92 = v27;
  v40 = [v27 launchId];
  if (!v40)
  {
    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v41 = v40;
  v42 = sub_2441D8C6C();
  v44 = v43;

  if (!v33)
  {
    if (!v44)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!v44)
  {
LABEL_28:

    goto LABEL_29;
  }

  if (v31 == v42 && v33 == v44)
  {

    v90 = v39;

    goto LABEL_38;
  }

  v55 = sub_2441D91CC();

  if ((v55 & 1) == 0)
  {
LABEL_29:
    sub_2441994A8();
    swift_allocError();
    v46 = v45;
    v47 = [v25 launchId];

    if (v47)
    {
      v48 = sub_2441D8C6C();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = [v92 launchId];

    if (v51)
    {
      v52 = sub_2441D8C6C();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    *v46 = v48;
    *(v46 + 8) = v50;
    *(v46 + 16) = v52;
    *(v46 + 24) = v54;
    *(v46 + 56) = 1;
    swift_willThrow();

    return;
  }

LABEL_37:

  v90 = v39;
LABEL_38:
  v56 = [v25 atx_comparableParameters];
  v57 = sub_2441D8C0C();

  v58 = [v92 atx_comparableParameters];
  v59 = sub_2441D8C0C();

  if (*(v57 + 16) != *(v59 + 16))
  {
    sub_2441994A8();
    swift_allocError();
    v76 = v75;
    v77 = sub_2441D8BFC();

    v78 = sub_2441D8BFC();

    *v76 = v77;
    *(v76 + 8) = v78;
    *(v76 + 56) = 2;
    swift_willThrow();

    return;
  }

  v60 = 0;
  v61 = v57 + 64;
  v62 = 1 << *(v57 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v57 + 64);
  v65 = (v62 + 63) >> 6;
  v91 = v57;
  if (!v64)
  {
LABEL_43:
    if (v65 <= v60 + 1)
    {
      v67 = v60 + 1;
    }

    else
    {
      v67 = v65;
    }

    v68 = v67 - 1;
    while (1)
    {
      v66 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v66 >= v65)
      {
        v64 = 0;
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        goto LABEL_51;
      }

      v64 = *(v61 + 8 * v66);
      ++v60;
      if (v64)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
    v66 = v60;
LABEL_50:
    v69 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v70 = v69 | (v66 << 6);
    sub_244194D44(*(v57 + 48) + 40 * v70, v95);
    sub_244194F5C(*(v57 + 56) + 32 * v70, v94);
    v97 = v95[0];
    v98 = v95[1];
    *&v99 = v96;
    sub_244194FB8(v94, (&v99 + 8));
    v68 = v66;
LABEL_51:
    v104[0] = v99;
    v104[1] = v100;
    v105 = v101;
    v102 = v97;
    v103 = v98;
    if (!*(&v98 + 1))
    {

      return;
    }

    v97 = v102;
    v98 = v103;
    *&v99 = *&v104[0];
    sub_244194FB8((v104 + 8), v95);
    sub_244194F5C(v95, v94);
    sub_244194FC8(0, &qword_280F94CF0, 0x277D82BB8);
    if (!swift_dynamicCast())
    {

      sub_2441994A8();
      swift_allocError();
      v87 = v86;
      sub_244194F5C(v95, v86);
      *(v87 + 56) = 3;
      swift_willThrow();

      goto LABEL_70;
    }

    v71 = v106;
    if (!*(v59 + 16))
    {
      break;
    }

    v72 = sub_244194F18(&v97);
    if ((v73 & 1) == 0)
    {
      break;
    }

    sub_244194F5C(*(v59 + 56) + 32 * v72, v94);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v74 = v106;
    if (![v71 isEqual_])
    {

      sub_2441994A8();
      swift_allocError();
      v89 = v88;
      sub_244194D44(&v97, v88);
      *(v89 + 40) = v71;
      *(v89 + 48) = v74;
      *(v89 + 56) = 4;
      swift_willThrow();

      goto LABEL_70;
    }

    __swift_destroy_boxed_opaque_existential_0(v95);
    sub_244194E68(&v97);
    v60 = v68;
    v57 = v91;
    if (!v64)
    {
      goto LABEL_43;
    }
  }

  sub_2441994A8();
  swift_allocError();
  v80 = v79;
  v81 = [v92 serializedParameters];
  v82 = sub_2441D8C0C();

  if (*(v82 + 16))
  {
    v83 = sub_244194F18(&v97);
    v84 = v93;
    if (v85)
    {
      sub_244194F5C(*(v82 + 56) + 32 * v83, v80);
    }

    else
    {
      *v80 = 0u;
      *(v80 + 16) = 0u;
    }
  }

  else
  {
    *v80 = 0u;
    *(v80 + 16) = 0u;
    v84 = v93;
  }

  *(v80 + 56) = 3;
  swift_willThrow();

LABEL_70:

  __swift_destroy_boxed_opaque_existential_0(v95);
  sub_244194E68(&v97);
}

unint64_t sub_244194DA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_244194D44(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D5A780](v9, a1);
      sub_244194E68(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_244194F18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2441D8F7C();

  return sub_244194DA0(a1, v5);
}

uint64_t sub_244194F5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_244194FB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_244194FC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t static Logger.ambient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F94E80 != -1)
  {
    swift_once();
  }

  v2 = sub_2441D8B8C();
  v3 = __swift_project_value_buffer(v2, qword_280F94E88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id ContextualSuggestion.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ContextualSuggestion();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextualWidgetSuggestion.init(identifier:extensionBundleIdentifier:containerBundleIdentifier:kind:intent:scoreSpecification:blendingClientModelSpecification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  *v12 = a3;
  v12[1] = a4;
  v13 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);
  *v13 = a5;
  v13[1] = a6;
  v14 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  *v14 = a7;
  v14[1] = a8;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent) = a9;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification) = a10;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification) = a11;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

void sub_24419531C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_244195384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    os_unfair_lock_lock((v5 + 24));
    sub_24419546C((v5 + 16), v9);
    os_unfair_lock_unlock((v5 + 24));
    v6 = v9[0];
    if (v9[0])
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v4 + 120);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v4, v6, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24419546C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = *a1;
  swift_beginAccess();
  LODWORD(a1) = *(v12 + 40);
  v13 = sub_2441957AC();
  v14 = *(v5 + 16);
  if (a1 == 1)
  {
    v14(v11, v13, v4);
    v15 = sub_2441D8B7C();
    v16 = sub_2441D8E1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = a2;
      v36[0] = v18;
      v19 = v18;
      *v17 = 136315138;
      v20 = sub_2441D92EC();
      v22 = sub_244195848(v20, v21, v36);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_244192000, v15, v16, "%s: notification suspension timer fired. Notification was pending, so notifying delegate", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v23 = v19;
      a2 = v35;
      MEMORY[0x245D5B3C0](v23, -1, -1);
      MEMORY[0x245D5B3C0](v17, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    *(v12 + 40) = 0;
    swift_beginAccess();
    *a2 = *(v12 + 16);
  }

  else
  {
    v14(v9, v13, v4);
    v25 = sub_2441D8B7C();
    v26 = sub_2441D8E1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a2;
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v27 = 136315138;
      v30 = sub_2441D92EC();
      v32 = sub_244195848(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_244192000, v25, v26, "%s: notification suspension timer fired. No notification pending, not notifying delegate", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      a2 = v28;
      MEMORY[0x245D5B3C0](v33, -1, -1);
      MEMORY[0x245D5B3C0](v27, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2441957AC()
{
  if (qword_27EDD7FA0 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_27EDD7FA8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_244195848(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_244195914(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_244194F5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_244195914(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2441A9108(a5, a6);
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
    result = sub_2441D901C();
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

uint64_t ATXWidgetStackSuggestion.description.getter()
{
  v1 = v0;
  sub_2441D8FEC();
  MEMORY[0x245D5A4A0](0xD00000000000002DLL, 0x80000002441DFAC0);
  v2 = [v0 stackIdentifier];
  v3 = sub_2441D8C6C();
  v5 = v4;

  MEMORY[0x245D5A4A0](v3, v5);

  MEMORY[0x245D5A4A0](0x646957706F74202CLL, 0xED0000203A746567);
  [v1 topWidget];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6028, qword_2441DC698);
  v6 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v6);

  MEMORY[0x245D5A4A0](0xD000000000000014, 0x80000002441DFAF0);
  v7 = [v1 suggestedWidgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  sub_2441D8DCC();

  v8 = sub_2441D8DDC();
  v10 = v9;

  MEMORY[0x245D5A4A0](v8, v10);

  MEMORY[0x245D5A4A0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_244195E64()
{
  result = qword_27EDD5DA0;
  if (!qword_27EDD5DA0)
  {
    sub_244194FC8(255, &qword_27EDD5AF8, off_278E089D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DA0);
  }

  return result;
}

uint64_t _s26ContextualSuggestionClient0a6WidgetB0C25containerBundleIdentifierSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8);

  return v1;
}

Swift::Void __swiftcall ContextualSuggestionContext.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation);
  v4 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions);
  type metadata accessor for ContextualSuggestion();
  v6 = sub_2441D8CFC();
  v7 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

Swift::Void __swiftcall ContextRepresentation.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);
  v4 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier + 8);
  v5 = sub_2441D8C4C();
  v6 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName);
  v8 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName + 8);
  v9 = sub_2441D8C4C();
  v10 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

void sub_2441963F4(void *a1)
{
  sub_24419660C(a1);
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8);
  v5 = sub_2441D8C4C();
  v6 = sub_2441D8C4C();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);
    v8 = sub_2441D8C4C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2441D8C4C();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  v11 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8);
  v12 = sub_2441D8C4C();
  v13 = sub_2441D8C4C();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  v15 = sub_2441D8C4C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  v17 = sub_2441D8C4C();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  v19 = sub_2441D8C4C();
  [a1 encodeObject:v18 forKey:v19];
}

void sub_24419660C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier);
  v4 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier + 8);
  v5 = sub_2441D8C4C();
  v6 = sub_2441D8C4C();
  [a1 encodeObject:v5 forKey:v6];
}

id ContextualSuggestionSnapshot.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B40, &qword_2441DAF38);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2441DAF20;
  *(v8 + 32) = sub_244196970();
  *(v8 + 40) = type metadata accessor for ContextualSuggestionContext();
  sub_2441D8ECC();

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD62E0, &qword_2441DD3A8);
    if (swift_dynamicCast())
    {
      v9 = v19;
      v10 = objc_allocWithZone(ObjectType);
      *&v10[OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts] = v9;
      v18.receiver = v10;
      v18.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v18, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v11;
    }
  }

  else
  {
    sub_2441AA43C(v20);
  }

  v13 = sub_2441994FC();
  (*(v4 + 16))(v7, v13, v3);
  v14 = sub_2441D8B7C();
  v15 = sub_2441D8E0C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_244192000, v14, v15, "coder missing contexts", v16, 2u);
    MEMORY[0x245D5B3C0](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_244196970()
{
  result = qword_280F94B00;
  if (!qword_280F94B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F94B00);
  }

  return result;
}

id ContextualSuggestionContext.init(coder:)(NSObject *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  type metadata accessor for ContextRepresentation();
  v11 = sub_2441D8EBC();
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B40, &qword_2441DAF38);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2441DAF20;
    *(v13 + 32) = type metadata accessor for ContextualSuggestion();
    *(v13 + 40) = sub_244196970();
    sub_2441D8ECC();

    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B10, &qword_2441DAEF8);
      if (swift_dynamicCast())
      {
        v14 = v28;
        v15 = objc_allocWithZone(ObjectType);
        *&v15[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = v12;
        *&v15[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = v14;
        v27.receiver = v15;
        v27.super_class = ObjectType;
        v16 = v12;
        v17 = [&v27 init];

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v17;
      }
    }

    else
    {
      sub_2441AA43C(v29);
    }

    v23 = sub_2441994FC();
    (*(v4 + 16))(v8, v23, v3);
    v20 = sub_2441D8B7C();
    v24 = sub_2441D8E0C();
    if (os_log_type_enabled(v20, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_244192000, v20, v24, "coder missing suggestions", v25, 2u);
      MEMORY[0x245D5B3C0](v25, -1, -1);
    }

    else
    {

      v20 = a1;
      a1 = v12;
    }
  }

  else
  {
    v19 = sub_2441994FC();
    (*(v4 + 16))(v10, v19, v3);
    v20 = sub_2441D8B7C();
    v21 = sub_2441D8E0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_244192000, v20, v21, "coder missing representation", v22, 2u);
      MEMORY[0x245D5B3C0](v22, -1, -1);
    }

    v8 = v10;
  }

  (*(v4 + 8))(v8, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextRepresentation.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  sub_244197164();
  v11 = sub_2441D8EBC();
  if (!v11)
  {
    v29 = sub_2441994FC();
    (*(v4 + 16))(v10, v29, v3);
    v26 = sub_2441D8B7C();
    v30 = sub_2441D8E0C();
    if (!os_log_type_enabled(v26, v30))
    {
      v8 = v10;
      goto LABEL_11;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_244192000, v26, v30, "coder missing identifier", v28, 2u);
    v8 = v10;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_2441D8C6C();
  v15 = v14;

  v16 = sub_2441D8EBC();
  if (v16)
  {
    v32 = 0;
    v33 = 0;
    v17 = v16;
    sub_2441D8C5C();

    v18 = v33;
    if (v33)
    {
      v19 = v32;
      v20 = objc_allocWithZone(ObjectType);
      v21 = &v20[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier];
      *v21 = v13;
      v21[1] = v15;
      v22 = &v20[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName];
      *v22 = v19;
      *(v22 + 1) = v18;
      v31.receiver = v20;
      v31.super_class = ObjectType;
      v23 = objc_msgSendSuper2(&v31, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v23;
    }
  }

  v25 = sub_2441994FC();
  (*(v4 + 16))(v8, v25, v3);
  v26 = sub_2441D8B7C();
  v27 = sub_2441D8E0C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_244192000, v26, v27, "coder missing localizedDisplayName", v28, 2u);
LABEL_9:
    MEMORY[0x245D5B3C0](v28, -1, -1);
  }

LABEL_11:

  (*(v4 + 8))(v8, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_244197164()
{
  result = qword_27EDD6390;
  if (!qword_27EDD6390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDD6390);
  }

  return result;
}

uint64_t ContextualWidgetSuggestion.init(coder:)(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  v13 = sub_2441D8EBC();
  if (!v13)
  {
    v28 = sub_2441994FC();
    (*(v3 + 16))(v12, v28, v2);
    v25 = sub_2441D8B7C();
    v29 = sub_2441D8E0C();
    if (!os_log_type_enabled(v25, v29))
    {
      v7 = v12;
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_244192000, v25, v29, "coder missing identifier", v27, 2u);
    v7 = v12;
    goto LABEL_20;
  }

  v14 = v13;
  v45 = sub_2441D8C6C();
  v16 = v15;

  v17 = sub_2441D8EBC();
  if (!v17 || (v46 = 0, v47 = 0, v18 = v17, sub_2441D8C5C(), v18, (v19 = v47) == 0))
  {

    v24 = sub_2441994FC();
    (*(v3 + 16))(v10, v24, v2);
    v25 = sub_2441D8B7C();
    v26 = sub_2441D8E0C();
    if (!os_log_type_enabled(v25, v26))
    {
      v7 = v10;
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_244192000, v25, v26, "coder missing extensionBundleIdentifier", v27, 2u);
    v7 = v10;
LABEL_20:
    MEMORY[0x245D5B3C0](v27, -1, -1);
    goto LABEL_21;
  }

  v20 = v46;
  v21 = sub_2441D8EBC();
  if (v21)
  {
    v46 = 0;
    v47 = 0;
    v22 = v21;
    sub_2441D8C5C();

    v23 = v46;
    if (!v47)
    {
      v23 = 0;
    }

    v43 = v23;
    v44 = v47;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v30 = sub_2441D8EBC();
  if (v30)
  {
    v46 = 0;
    v47 = 0;
    v31 = v30;
    sub_2441D8C5C();

    v32 = v47;
    if (v47)
    {
      v42 = v46;
      sub_244194FC8(0, &qword_27EDD60B8, 0x277CD3D30);
      v33 = sub_2441D8EBC();
      sub_244194FC8(0, &qword_27EDD6278, 0x277D42078);
      v34 = v20;
      v35 = sub_2441D8EBC();
      sub_244194FC8(0, &qword_27EDD6280, 0x277D42090);
      v36 = sub_2441D8EBC();
      ObjectType = swift_getObjectType();
      v38 = (*(ObjectType + 176))(v45, v16, v34, v19, v43, v44, v42, v32, v33, v36, v35);

      swift_deallocPartialClassInstance();
      return v38;
    }
  }

  v40 = sub_2441994FC();
  (*(v3 + 16))(v7, v40, v2);
  v25 = sub_2441D8B7C();
  v41 = sub_2441D8E0C();
  if (os_log_type_enabled(v25, v41))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_244192000, v25, v41, "coder missing kind", v27, 2u);
    goto LABEL_20;
  }

LABEL_21:

  (*(v3 + 8))(v7, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextualWidgetSuggestion.__allocating_init(identifier:extensionBundleIdentifier:containerBundleIdentifier:kind:intent:scoreSpecification:blendingClientModelSpecification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = objc_allocWithZone(v11);
  v19 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
  *v21 = a7;
  *(v21 + 1) = a8;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent] = a9;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification] = a10;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification] = a11;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

uint64_t sub_2441979A8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2441979F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_244197A58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_244198A50;

  return sub_244197B10(a1, v5);
}

uint64_t sub_244197B10(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198B48;

  return v7(a1);
}

uint64_t sub_244197C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_244198A50;

  return sub_244197DA0(a1, v4, v5, v7);
}

uint64_t sub_244197CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_244198A54;

  return sub_244197DA0(a1, v4, v5, v7);
}

uint64_t sub_244197DA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_244198A54;

  return v8();
}

uint64_t sub_244197E88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_244198A50;

  return sub_244197F48(v2, v3, v5);
}

uint64_t sub_244197F48(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_244198A50;

  return v7();
}

uint64_t sub_244198030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A54;

  return sub_2441980E4(v2, v3, v4);
}

uint64_t sub_2441980E4(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for ContextualSuggestionSnapshot();
  v4 = sub_2441D8C0C();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2441986DC;

  return sub_2441981F0(v4);
}

uint64_t sub_2441981F0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2441D8BAC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_2441D8BEC();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24419830C, 0, 0);
}

uint64_t sub_24419830C()
{
  v1 = v0[16];
  v2 = v0[13];
  v13 = v0[15];
  v14 = v0[14];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v11 = *(v4 + 16);
  v12 = v0[12];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v0[6] = sub_2441988CC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2441988C4;
  v0[5] = &block_descriptor_15;
  v7 = _Block_copy(v0 + 2);

  sub_2441D8BDC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v1, v2, v7);
  _Block_release(v7);
  (*(v12 + 8))(v2, v3);
  (*(v13 + 8))(v1, v14);
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_244198540()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t sub_2441985F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_244198640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_244198688(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2441986DC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_2441D88AC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_244198880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2441988CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 152);

  v5 = v3(v4);
  return (*(*v2 + 288))(v5);
}

uint64_t sub_244198958(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_244198A54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_244198B48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_244198C40()
{
  v1 = (*(*v0 + 144))();
  if (!v1)
  {
    return;
  }

  if (!*(v1 + 16))
  {

    return;
  }

  v2 = 0;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v27 = v7;
  v28 = v1;
  while (v6)
  {
LABEL_13:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v2 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v1 + 56) + 8 * v10);
    v15 = *(*v29 + 168);

    v16 = v14;
    v17 = v15();
    if (*(v17 + 16))
    {
      v18 = sub_244198F90(v13, v12);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);

        v22 = [v21 allObjects];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E20, &qword_2441DBC28);
        v23 = sub_2441D8D0C();

        if (v23 >> 62)
        {
          v24 = sub_2441D8F5C();
          if (v24)
          {
LABEL_17:
            if (v24 < 1)
            {
LABEL_34:
              __break(1u);
              return;
            }

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x245D5A7F0](i, v23);
              }

              else
              {
                v26 = *(v23 + 8 * i + 32);
                swift_unknownObjectRetain();
              }

              [v26 serviceDidUpdateWithSnapshot_];
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_7;
    }

LABEL_7:

    v7 = v27;
    v1 = v28;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_13;
    }
  }
}

uint64_t sub_244198F20()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_244198F58()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

unint64_t sub_244198F90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2441D924C();
  sub_2441D8C9C();
  v6 = sub_2441D926C();

  return sub_244199008(a1, a2, v6);
}

unint64_t sub_244199008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2441D91CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_244199110(uint64_t a1)
{
  v3 = v1[5];
  os_unfair_lock_lock((v3 + 24));
  sub_2441991D8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  result = (*(*v1 + 112))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, a1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2441991D8(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_24419921C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  return result;
}

id _s26ContextualSuggestionClient013CarPlayWidgetB8ProviderC8provider_9didUpdateyAA0abG0C_AA0aB8SnapshotCtF_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441957AC();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2441D8B7C();
  v10 = sub_2441D8E1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v9, v10, "%s: suggestion provider updated snapshot, requesting coalesced refresh", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  result = v1[13];
  if (result)
  {
    return [result runAfterDelaySeconds:0 coalescingBehavior:1.0];
  }

  __break(1u);
  return result;
}

unint64_t sub_2441994A8()
{
  result = qword_280F94B18;
  if (!qword_280F94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F94B18);
  }

  return result;
}

uint64_t sub_2441994FC()
{
  if (qword_280F94EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_280F94EA8);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_244199598()
{
  sub_244199ABC(v0, &v44);
  if (v49 > 2u)
  {
    if (v49 == 3)
    {
      v41 = v44;
      v42 = v45;
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      sub_2441D8FEC();

      v39 = 0xD000000000000018;
      v40 = 0x80000002441DF590;
      sub_2441BD0D4(&v41, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
      v21 = sub_2441D8C7C();
      MEMORY[0x245D5A4A0](v21);

      v18 = v39;
      sub_2441AA43C(&v41);
    }

    else
    {
      if (v49 != 4)
      {
        v23 = *(&v44 + 1);
        v24 = v44;
        *&v41 = 0;
        *(&v41 + 1) = 0xE000000000000000;
        sub_2441D8FEC();
        MEMORY[0x245D5A4A0](0xD00000000000002ELL, 0x80000002441DF560);
        v30 = [v24 description];
        v31 = sub_2441D8C6C();
        v33 = v32;

        MEMORY[0x245D5A4A0](v31, v33);

        MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
        v29 = [v23 description];
        goto LABEL_26;
      }

      v8 = v47;
      v7 = v48;
      v41 = v44;
      v42 = v45;
      v43 = v46;
      sub_2441D8FEC();

      v9 = sub_2441D8F6C();
      MEMORY[0x245D5A4A0](v9);

      MEMORY[0x245D5A4A0](0x617571656E752027, 0xEB00000000203A6CLL);
      v10 = [v8 description];
      v11 = sub_2441D8C6C();
      v13 = v12;

      MEMORY[0x245D5A4A0](v11, v13);

      MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
      v14 = [v7 description];
      v15 = sub_2441D8C6C();
      v17 = v16;

      MEMORY[0x245D5A4A0](v15, v17);

      v18 = 0x6574656D61726170;
      sub_244194E68(&v41);
    }

    return v18;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      v1 = v44;
      v2 = v45;
      sub_2441D8FEC();

      *&v41 = 0xD000000000000019;
      *(&v41 + 1) = 0x80000002441DF5E0;
      if (*(&v1 + 1))
      {
        v3 = v1;
      }

      else
      {
        v3 = 7104878;
      }

      if (*(&v1 + 1))
      {
        v4 = *(&v1 + 1);
      }

      else
      {
        v4 = 0xE300000000000000;
      }

      MEMORY[0x245D5A4A0](v3, v4);

      MEMORY[0x245D5A4A0](0x272073762027, 0xE600000000000000);
      if (*(&v2 + 1))
      {
        v5 = v2;
      }

      else
      {
        v5 = 7104878;
      }

      if (*(&v2 + 1))
      {
        v6 = *(&v2 + 1);
      }

      else
      {
        v6 = 0xE300000000000000;
      }

      MEMORY[0x245D5A4A0](v5, v6);
      goto LABEL_21;
    }

    v23 = *(&v44 + 1);
    v24 = v44;
    sub_2441D8FEC();

    *&v41 = 0xD000000000000020;
    *(&v41 + 1) = 0x80000002441DF5B0;
    v25 = [v24 description];
    v26 = sub_2441D8C6C();
    v28 = v27;

    MEMORY[0x245D5A4A0](v26, v28);

    MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
    v29 = [v23 description];
LABEL_26:
    v34 = v29;
    v35 = sub_2441D8C6C();
    v37 = v36;

    MEMORY[0x245D5A4A0](v35, v37);

    return v41;
  }

  v19 = v44;
  v20 = v45;
  sub_2441D8FEC();

  *&v41 = 0xD000000000000019;
  *(&v41 + 1) = 0x80000002441DF5E0;
  MEMORY[0x245D5A4A0](v19, *(&v19 + 1));

  MEMORY[0x245D5A4A0](0x272073762027, 0xE600000000000000);
  MEMORY[0x245D5A4A0](v20, *(&v20 + 1));
LABEL_21:

  MEMORY[0x245D5A4A0](39, 0xE100000000000000);
  return v41;
}

void sub_244199AF4()
{
  v1 = v0;
  sub_2441B540C(&v279);
  if (v280)
  {
    sub_2441B8138(&v279, &v281);
    v2 = v0 + *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
    v3 = sub_2441D8B7C();
    v4 = sub_2441D8E1C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_244192000, v3, v4, "Loaded debug rotation", v5, 2u);
      MEMORY[0x245D5B3C0](v5, -1, -1);
    }

    sub_2441B5A64(&v281);
    __swift_destroy_boxed_opaque_existential_0(&v281);
    return;
  }

  sub_2441979F8(&v279, &qword_27EDD5DB8, &qword_2441DBA38);
  v6 = *(v0 + 8);
  v281 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_24:
    v274 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v7 = sub_2441D8F5C();
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_7:
  v8 = 0;
  v274 = MEMORY[0x277D84F90];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D5A7F0](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      type metadata accessor for ContextualWidgetSuggestion();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x245D5A4E0]();
    if (*((v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2441D8D2C();
    }

    sub_2441D8D4C();
    v274 = v281;
  }

  while (v8 != v7);
LABEL_25:
  v263 = type metadata accessor for WidgetStackSuggestionGenerator();
  v13 = *(v263 + 40);

  v14 = sub_2441D8B7C();
  v15 = sub_2441D8E1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v281 = v17;
    *v16 = 136315138;
    v18 = type metadata accessor for ContextualWidgetSuggestion();
    v19 = MEMORY[0x245D5A510](v274, v18);
    v21 = sub_244195848(v19, v20, &v281);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_244192000, v14, v15, "Suggestions: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245D5B3C0](v17, -1, -1);
    MEMORY[0x245D5B3C0](v16, -1, -1);
  }

  v22 = *v1;
  v254 = *v1 >> 62;
  if (v254)
  {
    goto LABEL_272;
  }

  v276 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v275 = v1;
  v278 = v22;
  if (v276)
  {
    if (v276 < 1)
    {
      goto LABEL_276;
    }

    for (i = 0; i != v276; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245D5A7F0](i, v22);
      }

      else
      {
        v24 = *(v22 + 8 * i + 32);
      }

      sub_2441B2ED4(v274);
    }
  }

  if (v274 >> 62)
  {
    v25 = sub_2441D8F5C();
    if (!v25)
    {
      goto LABEL_241;
    }
  }

  else
  {
    v25 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
LABEL_241:

      if (v254)
      {
        v227 = sub_2441D8F5C();
      }

      else
      {
        v227 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v228 = MEMORY[0x277D84F90];
      if (!v227)
      {
        return;
      }

      v281 = MEMORY[0x277D84F90];
      sub_2441D904C();
      if (v227 < 0)
      {
        goto LABEL_277;
      }

      v229 = 0;
      v230 = v22 & 0xC000000000000001;
      while (1)
      {
        if (v230)
        {
          v231 = MEMORY[0x245D5A7F0](v229, v22);
          v232 = *(v231 + 32);
          if (!v232)
          {
LABEL_252:
            v235 = [*(v231 + 16) identifier];
            if (!v235)
            {
              sub_2441D8C6C();
              v235 = sub_2441D8C4C();
            }

            if (v228 >> 62 && sub_2441D8F5C())
            {
              sub_2441B7AA4(v228);
            }

            v236 = objc_allocWithZone(ATXWidgetStackSuggestion);
            sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
            sub_244195E64();
            v237 = sub_2441D8DAC();

            [v236 initWithStackIdentifier:v235 topWidget:0 suggestedWidgets:v237];

            v22 = v278;
            goto LABEL_249;
          }
        }

        else
        {
          v231 = *(v22 + 8 * v229 + 32);

          v232 = *(v231 + 32);
          if (!v232)
          {
            goto LABEL_252;
          }
        }

        v233 = v232;

LABEL_249:
        ++v229;
        sub_2441D902C();
        v234 = *(v281 + 16);
        sub_2441D905C();
        sub_2441D906C();
        sub_2441D903C();
        if (v227 == v229)
        {
          return;
        }
      }
    }
  }

  v244 = v25;
  v26 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v254)
  {
    v27 = sub_2441D8F5C();
  }

  else
  {
    v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v262 = 0;
  v28 = v274 & 0xC000000000000001;
  v277 = v22 & 0xC000000000000001;
  v271 = v22 & 0xFFFFFFFFFFFFFF8;
  v272 = v27;
  while (1)
  {
    if (v28)
    {
      v29 = MEMORY[0x245D5A7F0]();
      v30 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
        goto LABEL_270;
      }
    }

    else
    {
      if (v262 >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_278;
      }

      v29 = *(v274 + 32 + 8 * v262);
      v30 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
        goto LABEL_270;
      }
    }

    v1 = v29;
    v262 = v30;
    if (!v27)
    {
LABEL_240:

      goto LABEL_241;
    }

    v31 = 0;
    while (1)
    {
      if (v277)
      {
        v32 = MEMORY[0x245D5A7F0](v31, v22);
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_259;
        }
      }

      else
      {
        if (v31 >= *(v26 + 16))
        {
          goto LABEL_260;
        }

        v32 = *(v22 + 8 * v31 + 32);

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          v276 = sub_2441D8F5C();
          goto LABEL_29;
        }
      }

      v34 = *(v32 + 32);
      v35 = v34;

      if (!v34)
      {
        break;
      }

      ++v31;
      if (v33 == v27)
      {
        goto LABEL_240;
      }
    }

    v36 = v1;
    sub_2441B5F78(v1);
    v273 = v1;
    v1 = v275;
    v37 = *v275;
    v250 = *v275 >> 62;
    if (v250)
    {
      v38 = sub_2441D8F5C();
      v265 = v37;
      if (!v38)
      {
        goto LABEL_108;
      }

LABEL_62:
      v39 = 0;
      v40 = v37 & 0xC000000000000001;
      v256 = v37 + 32;
      v258 = (v37 & 0xFFFFFFFFFFFFFF8);
      v255 = v38;
      v252 = v37 & 0xC000000000000001;
      while (1)
      {
        while (1)
        {
          if (v40)
          {
            v1 = MEMORY[0x245D5A7F0](v39, v37);
            v41 = __OFADD__(v39++, 1);
            if (v41)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (v39 >= v258[2])
            {
              goto LABEL_269;
            }

            v1 = *(v256 + 8 * v39);

            v41 = __OFADD__(v39++, 1);
            if (v41)
            {
              goto LABEL_265;
            }
          }

          if (!*(v1 + 32))
          {
            v42 = [*(v1 + 16) topWidgetIdentifier];
            if (v42)
            {
              break;
            }
          }

          if (v39 == v38)
          {
            goto LABEL_108;
          }
        }

        v260 = v39;
        v43 = v42;
        v44 = sub_2441D8C6C();
        v46 = v45;

        v47 = [*(v1 + 16) widgets];
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        v1 = sub_2441D8D0C();

        if (v1 >> 62)
        {
          v48 = sub_2441D8F5C();
          if (!v48)
          {
LABEL_106:

            v22 = v278;
            v27 = v272;
            v36 = v273;
            goto LABEL_107;
          }
        }

        else
        {
          v48 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v48)
          {
            goto LABEL_106;
          }
        }

        v22 = 4;
        while (1)
        {
          v49 = v22 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x245D5A7F0](v22 - 4, v1);
            v51 = v22 - 3;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_261;
            }
          }

          else
          {
            if (v49 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_262;
            }

            v50 = *(v1 + 8 * v22);
            v51 = v22 - 3;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_261;
            }
          }

          v52 = v50;
          v53 = [v50 identifier];
          v54 = sub_2441D8C6C();
          v56 = v55;

          if (v54 == v44 && v56 == v46)
          {
            break;
          }

          v58 = sub_2441D91CC();

          v26 = v271;
          if (v58)
          {
            goto LABEL_89;
          }

          ++v22;
          if (v51 == v48)
          {
            goto LABEL_106;
          }
        }

        v26 = v271;
LABEL_89:

        v59 = *&v273[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
        v60 = *&v273[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8];
        v61 = [v52 chsWidget];
        v62 = [v61 extensionIdentity];

        v63 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
        v64 = sub_2441D89BC();
        v66 = v65;
        swift_endAccess();

        v1 = v275;
        v22 = v278;
        if (v59 == v64 && v60 == v66)
        {

          v36 = v273;
        }

        else
        {
          v67 = sub_2441D91CC();

          v36 = v273;
          if ((v67 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v68 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
        v69 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8];
        v70 = [v52 chsWidget];
        v71 = [v70 kind];

        v72 = sub_2441D8C6C();
        v74 = v73;

        if (v68 == v72 && v69 == v74)
        {

          v36 = v273;
        }

        else
        {
          v75 = sub_2441D91CC();

          v36 = v273;
          if ((v75 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v76 = [v52 chsWidget];
        v77 = [v76 intentReference];

        if (v77)
        {
          v78 = [v77 intent];

          if (v78)
          {
            v79 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent];
            if (v79)
            {
              v80 = [objc_opt_self() intent:v78 isEqualToIntent:v79];

              if ((v80 & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            else
            {
            }
          }
        }

        sub_2441B36AC(v36);
LABEL_104:

        v27 = v272;
LABEL_107:
        v37 = v265;
        v38 = v255;
        v39 = v260;
        v40 = v252;
        if (v260 == v255)
        {
          goto LABEL_108;
        }
      }
    }

    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v265 = *v275;
    if (v38)
    {
      goto LABEL_62;
    }

LABEL_108:
    if (v250)
    {
      v81 = sub_2441D8F5C();
      if (v81)
      {
LABEL_112:
        v1 = 4;
        while (1)
        {
          v82 = v1 - 4;
          if ((v37 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x245D5A7F0](v1 - 4, v37);
            v41 = __OFADD__(v82, 1);
            v83 = v1 - 3;
            if (v41)
            {
              goto LABEL_266;
            }
          }

          else
          {
            if (v82 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_271;
            }

            v22 = *(v37 + 8 * v1);

            v41 = __OFADD__(v82, 1);
            v83 = v1 - 3;
            if (v41)
            {
              goto LABEL_266;
            }
          }

          if (!*(v22 + 32))
          {
            break;
          }

          ++v1;
          v22 = v278;
          if (v83 == v81)
          {
            goto LABEL_122;
          }
        }

        sub_2441B36AC(v36);
        v193 = *(v263 + 40);

        v194 = v36;
        v1 = v275;
        v195 = sub_2441D8B7C();
        v196 = sub_2441D8E1C();

        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v281 = v269;
          *v197 = 136315394;
          v199 = [*(v22 + 16) identifier];
          v200 = sub_2441D8C6C();
          v202 = v201;

          v203 = v200;
          v1 = v275;
          v204 = sub_244195848(v203, v202, &v281);

          *(v197 + 4) = v204;
          v26 = v271;
          *(v197 + 12) = 2112;
          *(v197 + 14) = v194;
          *v198 = v36;
          v205 = v194;
          _os_log_impl(&dword_244192000, v195, v196, "Stack <%s> successfully smart rotated to %@", v197, 0x16u);
          sub_2441979F8(v198, &unk_27EDD5F60, &qword_2441DBCB0);
          v206 = v198;
          v27 = v272;
          MEMORY[0x245D5B3C0](v206, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v269);
          MEMORY[0x245D5B3C0](v269, -1, -1);
          MEMORY[0x245D5B3C0](v197, -1, -1);
        }

        v22 = v278;
LABEL_231:

        goto LABEL_236;
      }
    }

    else
    {
      v81 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v81)
      {
        goto LABEL_112;
      }
    }

LABEL_122:
    sub_2441B53B8();
    v84 = swift_allocError();
    *v85 = 3;
    *(v85 + 8) = 1;
    swift_willThrow();
    v1 = v275;
    if (!v84)
    {
      goto LABEL_231;
    }

    *&v279 = v84;
    v86 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    if (swift_dynamicCast())
    {

      v87 = v36;
      v88 = v281;
      v89 = v282;
      v90 = v87;
      v91 = sub_2441D8B7C();
      v92 = sub_2441D8E1C();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138412546;
        *(v93 + 4) = v90;
        *v94 = v90;
        *(v93 + 12) = 2112;
        sub_2441B53B8();
        swift_allocError();
        *v95 = v88;
        *(v95 + 8) = v89;
        v96 = v90;
        v27 = v272;
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v93 + 14) = v97;
        v94[1] = v97;
        _os_log_impl(&dword_244192000, v91, v92, "Can't smart rotate to suggestion: %@: %@", v93, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
        swift_arrayDestroy();
        MEMORY[0x245D5B3C0](v94, -1, -1);
        MEMORY[0x245D5B3C0](v93, -1, -1);
      }

      v26 = v271;
      v36 = v273;
    }

    else
    {

      v98 = v36;
      v99 = sub_2441D8B7C();
      v100 = sub_2441D8E0C();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = v36;
        v102 = v84;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = 138412290;
        *(v103 + 4) = v98;
        *v104 = v98;
        v105 = v98;
        _os_log_impl(&dword_244192000, v99, v100, "Can't smart rotate to suggestion: %@: unknown failure", v103, 0xCu);
        sub_2441979F8(v104, &unk_27EDD5F60, &qword_2441DBCB0);
        MEMORY[0x245D5B3C0](v104, -1, -1);
        MEMORY[0x245D5B3C0](v103, -1, -1);
        v106 = v102;
        v36 = v101;
        v1 = v275;
        v22 = v278;
      }

      else
      {
        v106 = v84;
      }
    }

    v107 = *v1;
    if (!(*v1 >> 62))
    {
      v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v108)
      {
        goto LABEL_226;
      }

      goto LABEL_133;
    }

    if (v107 < 0)
    {
      v207 = *v1;
    }

    v108 = sub_2441D8F5C();
    if (!v108)
    {
LABEL_226:
      sub_24419C618();
      v192 = swift_allocError();
      *v208 = 4;
      *(v208 + 8) = 1;
      swift_willThrow();
      if (v192)
      {
        goto LABEL_227;
      }

      goto LABEL_231;
    }

LABEL_133:
    v109 = 0;
    v110 = v107 & 0xC000000000000001;
    v247 = v107 + 32;
    v248 = v107 & 0xFFFFFFFFFFFFFF8;
    v249 = v107;
    v246 = v108;
    v253 = v107 & 0xC000000000000001;
LABEL_136:
    if (v110)
    {
      v111 = MEMORY[0x245D5A7F0](v109, v107);
      v41 = __OFADD__(v109++, 1);
      if (v41)
      {
        goto LABEL_264;
      }
    }

    else
    {
      if (v109 >= *(v248 + 16))
      {
        goto LABEL_268;
      }

      v112 = *(v247 + 8 * v109);

      v41 = __OFADD__(v109++, 1);
      if (v41)
      {
        goto LABEL_264;
      }
    }

    if (*(v111 + 32))
    {

      goto LABEL_135;
    }

    v264 = v111;
    v113 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification];
    v261 = v109;
    if (!v113)
    {
      sub_2441B53B8();
      v124 = swift_allocError();
      *v125 = 0;
      *(v125 + 8) = 1;
LABEL_156:
      swift_willThrow();
      goto LABEL_208;
    }

    v114 = [v113 clientModelId];
    if (!v114)
    {
      sub_2441D8C6C();
      v114 = sub_2441D8C4C();
    }

    v115 = [objc_opt_self() clientModelTypeFromClientModelId_];

    v116 = __ROR8__(v115 - 2, 1);
    v117 = (1 << v116) & 0x32B;
    if (v116 > 9 || v117 == 0)
    {
      sub_24419C618();
      v173 = swift_allocError();
      *v174 = v115;
      v124 = v173;
      *(v174 + 8) = 0;
      goto LABEL_156;
    }

    v119 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification];
    if (v119)
    {
      v120 = v119;
      if ([v120 suggestedConfidenceCategory] <= 2)
      {
        sub_24419C618();
        v122 = swift_allocError();
        v123 = 3;
LABEL_153:
        *v121 = v123;
        *(v121 + 8) = 1;
        swift_willThrow();
LABEL_154:

        v124 = v122;
        goto LABEL_208;
      }
    }

    v126 = *v1;
    if (*v1 >> 62)
    {
      if (v126 < 0)
      {
        v191 = *v1;
      }

      v127 = sub_2441D8F5C();
      if (!v127)
      {
LABEL_200:
        v168 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
        v169 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8];
        v170 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier];
        v171 = *&v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8];
        v172 = sub_2441D8C4C();
        if (v171)
        {
          v171 = sub_2441D8C4C();
        }

        v120 = [objc_allocWithZone(ATXWidgetLocationAuthorizationTracker) initWithExtensionBundleIdentifier:v172 containerBundleIdentifier:v171];

        if (![v120 widgetWantsLocation] || (objc_msgSend(v120, sel_isContainerAuthorizedForWidgetUpdates) & 1) != 0)
        {

          v124 = 0;
          goto LABEL_208;
        }

        sub_24419C618();
        v122 = swift_allocError();
        v123 = 5;
        goto LABEL_153;
      }
    }

    else
    {
      v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v127)
      {
        goto LABEL_200;
      }
    }

    v128 = 0;
    v243 = &v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
    v266 = &v36[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
    v257 = OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent;
    v129 = v126 & 0xC000000000000001;
    v238 = v126 + 32;
    v239 = v126 & 0xFFFFFFFFFFFFFF8;
    v241 = v127;
    v242 = v126;
    v240 = v126 & 0xC000000000000001;
LABEL_161:
    if (v129)
    {
      v130 = v128;
      v131 = MEMORY[0x245D5A7F0](v128, v126);
      v41 = __OFADD__(v130, 1);
      v132 = v130 + 1;
      if (v41)
      {
        break;
      }

      goto LABEL_167;
    }

    if (v128 >= *(v239 + 16))
    {
      goto LABEL_279;
    }

    v133 = *(v238 + 8 * v128);
    v134 = v128;

    v41 = __OFADD__(v134, 1);
    v132 = v134 + 1;
    if (v41)
    {
      break;
    }

LABEL_167:
    v245 = v132;
    v251 = v131;
    v135 = [*(v131 + 16) widgets];
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    v136 = sub_2441D8D0C();

    if (!(v136 >> 62))
    {
      v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v137)
      {
        goto LABEL_169;
      }

LABEL_193:

      v107 = v249;
      v164 = *(v251 + 32);
      v22 = v278;
      v26 = v271;
      if (v164)
      {
        v120 = v164;
        v165 = [v120 suggestedWidgets];
        sub_244195E64();
        v166 = sub_2441D8DCC();

        if ((v166 & 0xC000000000000001) != 0)
        {
          v167 = sub_2441D8F5C();
        }

        else
        {
          v167 = *(v166 + 16);
        }

        if (v167)
        {
          sub_24419C618();
          v122 = swift_allocError();
          *v190 = 1;
          *(v190 + 8) = 1;
          swift_willThrow();

          goto LABEL_154;
        }
      }

      v126 = v242;
      v128 = v245;
      v129 = v240;
      if (v245 == v241)
      {
        goto LABEL_200;
      }

      goto LABEL_161;
    }

    v137 = sub_2441D8F5C();
    if (!v137)
    {
      goto LABEL_193;
    }

LABEL_169:
    v267 = *(v243 + 1);
    v268 = *v243;
    v22 = 4;
    while (1)
    {
      v138 = v22 - 4;
      if ((v136 & 0xC000000000000001) != 0)
      {
        v139 = MEMORY[0x245D5A7F0](v22 - 4, v136);
      }

      else
      {
        if (v138 >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_267;
        }

        v139 = *(v136 + 8 * v22);
      }

      v140 = v139;
      v141 = v22 - 3;
      if (__OFADD__(v138, 1))
      {
        goto LABEL_263;
      }

      v142 = v137;
      v143 = [v139 chsWidget];
      v144 = [v143 extensionIdentity];

      v145 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
      v146 = sub_2441D89BC();
      v148 = v147;
      swift_endAccess();

      if (v268 == v146 && v267 == v148)
      {
      }

      else
      {
        v150 = sub_2441D91CC();

        v36 = v273;
        if ((v150 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      v151 = *v266;
      v152 = *(v266 + 1);
      v153 = [v140 chsWidget];
      v154 = [v153 kind];

      v155 = sub_2441D8C6C();
      v157 = v156;

      if (v151 != v155)
      {
        goto LABEL_186;
      }

      if (v152 == v157)
      {

        v1 = v275;
        v36 = v273;
      }

      else
      {
LABEL_186:
        v158 = sub_2441D91CC();

        v1 = v275;
        v36 = v273;
        if ((v158 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      v159 = [v140 chsWidget];
      v160 = [v159 intentReference];

      if (!v160)
      {
        goto LABEL_207;
      }

      v161 = [v160 intent];

      if (!v161)
      {
        goto LABEL_207;
      }

      v162 = *&v36[v257];
      if (!v162)
      {
        break;
      }

      v163 = [objc_opt_self() intent:v161 isEqualToIntent:v162];

      if (v163)
      {
        goto LABEL_207;
      }

LABEL_170:

      ++v22;
      v137 = v142;
      v27 = v272;
      if (v141 == v142)
      {
        goto LABEL_193;
      }
    }

LABEL_207:

    sub_24419C618();
    v124 = swift_allocError();
    *v175 = 0;
    *(v175 + 8) = 1;
    swift_willThrow();

    v22 = v278;
    v26 = v271;
    v27 = v272;
    v107 = v249;
LABEL_208:
    if (!v124)
    {
      sub_2441B3C1C(v36, *(v1 + 32));
      v176 = *(v263 + 40);

      v177 = v36;
      v178 = sub_2441D8B7C();
      v179 = sub_2441D8E1C();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v281 = v270;
        *v180 = 136315394;
        v182 = [*(v264 + 16) identifier];
        v183 = sub_2441D8C6C();
        v185 = v184;

        v186 = v183;
        v26 = v271;
        v187 = sub_244195848(v186, v185, &v281);
        v1 = v275;

        *(v180 + 4) = v187;
        v36 = v273;
        *(v180 + 12) = 2112;
        *(v180 + 14) = v177;
        *v181 = v273;
        v188 = v177;
        _os_log_impl(&dword_244192000, v178, v179, "Stack <%s> successfully suggested new widget with: %@", v180, 0x16u);
        sub_2441979F8(v181, &unk_27EDD5F60, &qword_2441DBCB0);
        v189 = v181;
        v27 = v272;
        MEMORY[0x245D5B3C0](v189, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v270);
        MEMORY[0x245D5B3C0](v270, -1, -1);
        MEMORY[0x245D5B3C0](v180, -1, -1);

        v107 = v249;

        v108 = v246;
        v109 = v261;
        v110 = v253;
      }

      else
      {

        v108 = v246;
        v109 = v261;
        v110 = v253;
        v27 = v272;
        v26 = v271;
      }

LABEL_135:
      if (v109 == v108)
      {
        goto LABEL_226;
      }

      goto LABEL_136;
    }

    v192 = v124;
LABEL_227:
    *&v279 = v192;
    v209 = v192;
    if (swift_dynamicCast())
    {

      v210 = v36;
      v211 = v281;
      v212 = v282;
      v213 = v210;
      v214 = sub_2441D8B7C();
      v215 = sub_2441D8E1C();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *v216 = 138412546;
        *(v216 + 4) = v213;
        *v217 = v213;
        *(v216 + 12) = 2112;
        sub_24419C618();
        swift_allocError();
        *v218 = v211;
        *(v218 + 8) = v212;
        v219 = v213;
        v27 = v272;
        v220 = _swift_stdlib_bridgeErrorToNSError();
        *(v216 + 14) = v220;
        v217[1] = v220;
        _os_log_impl(&dword_244192000, v214, v215, "Can't suggest new widget with suggestion: %@: %@", v216, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
        swift_arrayDestroy();
        MEMORY[0x245D5B3C0](v217, -1, -1);
        MEMORY[0x245D5B3C0](v216, -1, -1);
        v213 = v214;
        v214 = v219;
      }

      v26 = v271;
    }

    else
    {
      v259 = v192;

      v221 = v36;
      v222 = sub_2441D8B7C();
      v223 = sub_2441D8E0C();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        *v224 = 138412290;
        *(v224 + 4) = v221;
        *v225 = v221;
        v226 = v221;
        _os_log_impl(&dword_244192000, v222, v223, "Can't suggest new widget with suggestion: %@: unknown failure", v224, 0xCu);
        sub_2441979F8(v225, &unk_27EDD5F60, &qword_2441DBCB0);
        MEMORY[0x245D5B3C0](v225, -1, -1);
        MEMORY[0x245D5B3C0](v224, -1, -1);
      }

      else
      {
      }
    }

LABEL_236:
    v28 = v274 & 0xC000000000000001;
    if (v262 == v244)
    {
      goto LABEL_241;
    }
  }

  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
}

unint64_t sub_24419C618()
{
  result = qword_27EDD5D50;
  if (!qword_27EDD5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D50);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24419C684(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24419C708()
{
  v1 = v0;
  sub_2441D8FEC();
  MEMORY[0x245D5A4A0](0xD000000000000039, 0x80000002441E05B0);
  MEMORY[0x245D5A4A0](*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier), *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8));
  MEMORY[0x245D5A4A0](0xD00000000000001DLL, 0x80000002441E05F0);
  v10 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);
  v11 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6288, &qword_2441DD210);
  v2 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v2);

  MEMORY[0x245D5A4A0](0x203A646E696B202CLL, 0xE800000000000000);
  MEMORY[0x245D5A4A0](*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind), *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8));
  MEMORY[0x245D5A4A0](0x746E65746E69202CLL, 0xEA0000000000203ALL);
  v3 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6290, &qword_2441DD218);
  v4 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v4);

  MEMORY[0x245D5A4A0](0xD000000000000016, 0x80000002441E0610);
  v5 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6298, &qword_2441DD220);
  v6 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v6);

  MEMORY[0x245D5A4A0](0xD000000000000023, 0x80000002441E0630);
  v7 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD62A0, &qword_2441DD228);
  v8 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v8);

  MEMORY[0x245D5A4A0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_24419C974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 120);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, v2, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24419CA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2441D89EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24419CACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2441D89EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_24419CB88()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CBC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CBFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CC34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CC8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CCC4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419CD0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CD6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CDB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CDF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419CE3C()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24419CE9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CEE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2441D8B8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_24419CF8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2441D8B8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24419D050()
{
  MEMORY[0x245D5B450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D0A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D0D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D114()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D160()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D1A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419D1E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D220()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D258()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D2A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D2EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24419D344()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24419D394()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D3CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D418()
{
  MEMORY[0x245D5B450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D450()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D48C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419D4D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D510()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D554()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void hashIt(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          hashIt(*(*(&v12 + 1) + 8 * v9++), v4);
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = [v3 hash];
    [v4 appendBytes:&v11 length:8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2441A0C6C()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for CarPlayWidgetEvent()
{
  result = qword_27EDD6D50;
  if (!qword_27EDD6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2441A0D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A0D54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent() + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A0E04;
}

uint64_t sub_2441A0E38()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A0E70()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A0EC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A0F0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

uint64_t sub_2441A0FEC()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A1024()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A1078(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A10C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent() + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

uint64_t sub_2441A11A0()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A11D8()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A122C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A1274(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent() + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

void sub_2441A1324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t sub_2441A13DC()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A1414()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_2441A1448(int a1)
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_2441A1480(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent() + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_2441A14E8;
}

uint64_t sub_2441A14E8(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t sub_2441A1534()
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

double sub_2441A1564()
{
  v1 = v0 + *(type metadata accessor for CarPlayWidgetEvent() + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2441A159C(double a1)
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_2441A15D4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent() + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_2441A1640;
}

uint64_t sub_2441A1640(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_2441A1688()
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_2441A16B8()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent() + 44));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_2441A16F8(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for CarPlayWidgetEvent();
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*sub_2441A1740(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent() + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_2441A17B8;
}

uint64_t sub_2441A17B8(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2441A180C()
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 256;
  return result;
}

uint64_t sub_2441A1840@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2441D89EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2441A18A8(uint64_t a1)
{
  v3 = sub_2441D89EC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void sub_2441A198C(uint64_t a1@<X8>)
{
  sub_2441A2D14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2441A19D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2441A2D14();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_2441A1A1C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A1A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2441A3498();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2441A1AD4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

int *sub_2441A1B64@<X0>(uint64_t a1@<X8>)
{
  sub_2441D89DC();
  result = type metadata accessor for CarPlayWidgetEvent();
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t sub_2441A1C5C()
{
  v0 = sub_2441D8B6C();
  __swift_allocate_value_buffer(v0, qword_27EDDB0E0);
  __swift_project_value_buffer(v0, qword_27EDDB0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AA8, ":y");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AB0, &qword_2441DACA8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2441DA970;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "car_play_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_2441D8B4C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "widget_identifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "extension_identifier";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "widget_kind";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "widget_family";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestamp";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v19 = *MEMORY[0x277D21870];
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "outcome";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v9();
  return sub_2441D8B5C();
}

uint64_t sub_2441A1FB4()
{
  result = sub_2441D8A6C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for CarPlayWidgetEvent() + 20);
LABEL_5:
            v0 = v3;
            sub_2441D8AAC();
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for CarPlayWidgetEvent() + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for CarPlayWidgetEvent() + 28);
            goto LABEL_5;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v9 = *(type metadata accessor for CarPlayWidgetEvent() + 40);
          sub_2441D8A9C();
        }

        else if (result == 7)
        {
          v7 = *(type metadata accessor for CarPlayWidgetEvent() + 44);
          sub_2441A3498();
          sub_2441D8A7C();
        }
      }

      else
      {
        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CarPlayWidgetEvent() + 32);
          goto LABEL_5;
        }

        v5 = *(type metadata accessor for CarPlayWidgetEvent() + 36);
        sub_2441D8A8C();
      }

      result = sub_2441D8A6C();
    }
  }

  return result;
}

uint64_t sub_2441A2164()
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_2441D8B3C();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_2441D8B3C();
  }

  v8 = (v0 + v3[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_2441D8B3C();
  }

  v10 = (v0 + v3[8]);
  if (v10[1])
  {
    v11 = *v10;
    sub_2441D8B3C();
  }

  sub_2441A22BC(v0);
  sub_2441A2334(v0);
  sub_2441A23AC(v0);
  return sub_2441D89CC();
}

uint64_t sub_2441A22BC(uint64_t a1)
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2441D8B1C();
  }

  return result;
}

uint64_t sub_2441A2334(uint64_t a1)
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2441D8B2C();
  }

  return result;
}

uint64_t sub_2441A23AC(uint64_t a1)
{
  result = type metadata accessor for CarPlayWidgetEvent();
  v3 = (a1 + *(result + 44));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_2441A3498();
    return sub_2441D8B0C();
  }

  return result;
}

uint64_t sub_2441A2454()
{
  sub_2441D924C();
  type metadata accessor for CarPlayWidgetEvent();
  sub_2441A3598(&qword_27EDD5A30, type metadata accessor for CarPlayWidgetEvent);
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A24DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2441D89DC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 8) = 256;
  return result;
}

uint64_t sub_2441A2598(uint64_t a1, uint64_t a2)
{
  v4 = sub_2441A3598(&qword_27EDD5A98, type metadata accessor for CarPlayWidgetEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2441A263C(uint64_t a1)
{
  v2 = sub_2441A3598(&qword_27EDD5A68, type metadata accessor for CarPlayWidgetEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2441A26A8()
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A2700()
{
  sub_2441A3598(&qword_27EDD5A68, type metadata accessor for CarPlayWidgetEvent);

  return sub_2441D8AFC();
}

uint64_t sub_2441A277C()
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A27D4()
{
  v0 = sub_2441D8B6C();
  __swift_allocate_value_buffer(v0, qword_27EDDB0F8);
  __swift_project_value_buffer(v0, qword_27EDDB0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AA8, ":y");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AB0, &qword_2441DACA8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2441DA980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2441D8B4C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ADDED_MANUALLY";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REMOVED_MANUALLY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ADDED_BY_SYSTEM";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REMOVED_BY_SYSTEM";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ROTATED_TO_MANUALLY";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ROTATED_TO_BY_SYSTEM";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "USER_TAPPED_ON_WIDGET";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  return sub_2441D8B5C();
}

uint64_t sub_2441A2B44(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2441D8B6C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2441A2BBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2441D8B6C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2441A2C78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2441D8B6C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2441A2D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayWidgetEvent();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2441D91CC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2441D91CC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2441D91CC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_2441D91CC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_37:
    v37 = v4[9];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 4);
    v40 = (a2 + v37);
    v41 = *(a2 + v37 + 4);
    if (v39)
    {
      if (!v41)
      {
        return 0;
      }
    }

    else
    {
      if (*v38 != *v40)
      {
        LOBYTE(v41) = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    v42 = v4[10];
    v43 = (a1 + v42);
    v44 = *(a1 + v42 + 8);
    v45 = (a2 + v42);
    v46 = *(a2 + v42 + 8);
    if (v44)
    {
      if (!v46)
      {
        return 0;
      }
    }

    else
    {
      if (*v43 != *v45)
      {
        LOBYTE(v46) = 1;
      }

      if (v46)
      {
        return 0;
      }
    }

    v47 = v4[11];
    v48 = a1 + v47;
    v49 = *(a1 + v47 + 9);
    v50 = a2 + v47;
    v51 = *(v50 + 9);
    if (v49)
    {
      if ((*(v50 + 9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v50 + 9))
      {
        return 0;
      }

      v52 = *v50;
      v53 = *(v50 + 8);
      if (!sub_2441A1B58(*v48, *(v48 + 8) & 1, v52))
      {
        return 0;
      }
    }

    sub_2441D89EC();
    sub_2441A3598(&qword_27EDD5AB8, MEMORY[0x277D216C8]);
    return sub_2441D8C3C() & 1;
  }

  if (!v33)
  {
    goto LABEL_37;
  }

  return 0;
}

unint64_t sub_2441A2FC0()
{
  result = qword_27EDD5A38;
  if (!qword_27EDD5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A38);
  }

  return result;
}

unint64_t sub_2441A3018()
{
  result = qword_27EDD5A40;
  if (!qword_27EDD5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A40);
  }

  return result;
}

unint64_t sub_2441A3070()
{
  result = qword_27EDD5A48;
  if (!qword_27EDD5A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDD5A50, qword_2441DA9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A48);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2441A3120()
{
  result = qword_27EDD5A58;
  if (!qword_27EDD5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A58);
  }

  return result;
}

void sub_2441A32BC()
{
  sub_2441D89EC();
  if (v0 <= 0x3F)
  {
    sub_2441A33CC(319, &qword_27EDD5A78);
    if (v1 <= 0x3F)
    {
      sub_2441A33CC(319, &qword_27EDD5A80);
      if (v2 <= 0x3F)
      {
        sub_2441A33CC(319, &qword_27EDD5A88);
        if (v3 <= 0x3F)
        {
          sub_2441A33CC(319, &qword_27EDD5A90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2441A33CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2441D8F1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayWidgetEvent.CarPlayWidgetOutcomeType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarPlayWidgetEvent.CarPlayWidgetOutcomeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2441A3468(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2441A3498()
{
  result = qword_27EDD5AA0;
  if (!qword_27EDD5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5AA0);
  }

  return result;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2441A3598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CarPlayIdentity.carPlayIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ContextualSuggestionClient::CarPlayIdentity_optional __swiftcall CarPlayIdentity.init(carPlayIdentifier:)(Swift::String carPlayIdentifier)
{
  object = carPlayIdentifier._object;
  countAndFlagsBits = carPlayIdentifier._countAndFlagsBits;
  v4 = v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    v14 = sub_2441957AC();
    (*(v6 + 16))(v12, v14, v5);
    v15 = sub_2441D8B7C();
    v16 = sub_2441D8E0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_244192000, v15, v16, "Trying to initialize CarPlayIdentity with an empty carPlayIdentifier string", v17, 2u);
      MEMORY[0x245D5B3C0](v17, -1, -1);
    }

    v8 = (*(v6 + 8))(v12, v5);
    *v4 = 0;
    v4[1] = 0;
  }

  result.value.carPlayIdentifier._object = v9;
  result.value.carPlayIdentifier._countAndFlagsBits = v8;
  result.is_nil = v10;
  return result;
}

void sub_2441A37A0()
{
  v0 = *MEMORY[0x277CEBD00];
  sub_2441D8C6C();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2441D8C4C();

  v3 = [v1 initWithSuiteName_];

  qword_27EDDB110 = v3;
}

uint64_t *sub_2441A3828()
{
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB110;
}

uint64_t sub_2441A3878()
{
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  v0 = qword_27EDDB110;
  v1 = qword_27EDDB110;
  return v0;
}

uint64_t sub_2441A38DC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2441A3914(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2441A39AC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2441A39E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_2441A3A80()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v1 = sub_2441D8C4C();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_2441A3B30(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2441A3BC0()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2441A3C00()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_2441A3C58()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441A3CEC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441A3D6C()
{
  type metadata accessor for ContextualSuggestionProvider();
  v0 = sub_2441CAF08();
  v1 = *v0;
  v2 = v0[1];

  return ContextualSuggestionProvider.__allocating_init(endpoint:)(v1, v2);
}

id sub_2441A3DB8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFA380]);

  return [v0 init];
}

uint64_t CarPlayWidgetSuggestionProvider.stackSuggestions.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2441A9078((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t CarPlayWidgetSuggestionProvider.shouldDisableSuppressionTimerForTooling.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 84) = a1;
  return result;
}

uint64_t CarPlayWidgetSuggestionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  CarPlayWidgetSuggestionProvider.init()();
  return v0;
}

unint64_t CarPlayWidgetSuggestionProvider.init()()
{
  v1 = v0;
  v38 = *v0;
  v2 = sub_2441D8E2C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441D8BEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2441D8E3C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2441D895C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextualSuggestionProvider();
  v17 = sub_2441CAF08();
  v18 = *v17;
  v19 = v17[1];

  v0[5] = ContextualSuggestionProvider.__allocating_init(endpoint:)(v18, v19);
  v0[6] = [objc_allocWithZone(MEMORY[0x277CFA380]) init];
  CarPlayWidgetEngagementStream.init()((v0 + 7));
  *(v0 + 84) = 0;
  v0[13] = 0;
  v0[15] = 0;
  swift_unknownObjectWeakInit();
  v20._countAndFlagsBits = 0x746C7561666564;
  v20._object = 0xE700000000000000;
  CarPlayIdentity.init(carPlayIdentifier:)(v20);
  v21 = v45;
  v41 = v2;
  if (v45)
  {
    v22 = v44;
LABEL_5:
    v36 = v22;
    v1[11] = v22;
    v1[12] = v21;
    type metadata accessor for CarPlayWidgetSuggestionProvider.GuardedData();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    v29 = objc_allocWithZone(MEMORY[0x277CF0BD8]);

    v30 = sub_2441D8C4C();
    v31 = [v29 initWithIdentifier_];

    *(v28 + 32) = v31;
    *(v28 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AC0, &unk_2441DACF0);
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 16) = v28;
    v1[2] = v32;
    v35[1] = sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_2441D8FEC();

    v44 = 0x6C7070612E6D6F63;
    v45 = 0xEA00000000002E65;
    v33 = sub_2441D92EC();
    MEMORY[0x245D5A4A0](v33);

    MEMORY[0x245D5A4A0](0x74756F6C6C61632ELL, 0xE800000000000000);
    (*(v8 + 104))(v11, *MEMORY[0x277D85268], v37);
    sub_2441D8BDC();
    v44 = MEMORY[0x277D84F90];
    sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
    sub_244198640(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
    sub_2441D8F3C();
    v1[3] = sub_2441D8E6C();
    *(v1 + 20) = 0;
    type metadata accessor for CarPlayWidgetConfigurationManager();
    v34 = v36;
    v44 = v36;
    v45 = v21;

    v1[4] = CarPlayWidgetConfigurationManager.__allocating_init(carPlayIdentity:)(&v44);
    v44 = v34;
    v45 = v21;
    sub_2441A44DC(&v44);

    return v1;
  }

  sub_2441D894C();
  v23 = sub_2441D893C();
  v25 = v24;
  (*(v13 + 8))(v16, v12);
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  result = CarPlayIdentity.init(carPlayIdentifier:)(v26);
  v21 = v43;
  if (v43)
  {
    v22 = v42;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2441A44DC(uint64_t *a1)
{
  v2 = v1;
  v69 = *v1;
  v4 = sub_2441D8BBC();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = sub_2441957AC();
  v17 = v8[2];
  v65 = v16;
  v66 = v8 + 2;
  v64 = v17;
  (v17)(v13);

  v18 = sub_2441D8B7C();
  v19 = sub_2441D8E1C();

  v20 = os_log_type_enabled(v18, v19);
  v68 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v60 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v59 = v15;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315394;
    v25 = sub_2441D92EC();
    v27 = sub_244195848(v25, v26, aBlock);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_244195848(v59, v14, aBlock);
    _os_log_impl(&dword_244192000, v18, v19, "%s initialized with carPlayIdentifier %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v24, -1, -1);
    v28 = v22;
    v7 = v60;
    MEMORY[0x245D5B3C0](v28, -1, -1);
  }

  v29 = v8[1];
  v29(v13, v7);
  v30 = sub_2441A4FDC();
  v31 = *(v2 + 104);
  *(v2 + 104) = v30;

  if ([objc_opt_self() isInternalBuild])
  {
    v32 = sub_2441C28B4();
    v33 = *v32;
    v34 = v32[1];
    sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
    v36 = v61;
    v35 = v62;
    v37 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x277D851B8], v63);

    v38 = sub_2441D8E7C();
    (*(v35 + 8))(v36, v37);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v41 = v69;
    *(v40 + 16) = v39;
    *(v40 + 24) = v41;
    aBlock[4] = sub_2441A984C;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2441A5EE0;
    aBlock[3] = &block_descriptor_22;
    v42 = _Block_copy(aBlock);

    v43 = sub_2441D8C8C();

    swift_beginAccess();
    notify_register_dispatch((v43 + 32), (v2 + 80), v38, v42);
    swift_endAccess();

    _Block_release(v42);
  }

  v44 = *(**(v2 + 40) + 120);
  v45 = swift_unknownObjectRetain();
  v44(v45, &protocol witness table for CarPlayWidgetSuggestionProvider);
  v46 = v67;
  v64(v67, v65, v7);
  v47 = sub_2441D8B7C();
  v48 = sub_2441D8E1C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v7;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v49 = 136315394;
    v52 = sub_2441D92EC();
    v54 = sub_244195848(v52, v53, aBlock);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_244195848(0xD000000000000011, 0x80000002441DEC60, aBlock);
    _os_log_impl(&dword_244192000, v47, v48, "%s.%s: resetting delegate notification suspension timer", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v51, -1, -1);
    MEMORY[0x245D5B3C0](v49, -1, -1);

    v55 = v46;
    v56 = v50;
  }

  else
  {

    v55 = v46;
    v56 = v7;
  }

  v29(v55, v56);
  v57 = *(v2 + 16);
  os_unfair_lock_lock((v57 + 24));
  sub_2441A77D4((v57 + 16), v2, v69);
  os_unfair_lock_unlock((v57 + 24));
}

uint64_t CarPlayWidgetSuggestionProvider.__allocating_init(identity:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CarPlayWidgetSuggestionProvider.init(identity:)(a1);
  return v2;
}

uint64_t *CarPlayWidgetSuggestionProvider.init(identity:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v2;
  v32 = sub_2441D8E2C();
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2441D8BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441D8E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v29 = *a1;
  v16 = v29;
  type metadata accessor for ContextualSuggestionProvider();
  v17 = sub_2441CAF08();
  v18 = *v17;
  v19 = v17[1];

  v2[5] = ContextualSuggestionProvider.__allocating_init(endpoint:)(v18, v19);
  v2[6] = [objc_allocWithZone(MEMORY[0x277CFA380]) init];
  CarPlayWidgetEngagementStream.init()((v2 + 7));
  *(v2 + 84) = 0;
  v2[13] = 0;
  v2[15] = 0;
  swift_unknownObjectWeakInit();
  v2[11] = v16;
  v2[12] = v15;
  type metadata accessor for CarPlayWidgetSuggestionProvider.GuardedData();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = objc_allocWithZone(MEMORY[0x277CF0BD8]);

  v22 = sub_2441D8C4C();
  v23 = [v21 initWithIdentifier_];

  *(v20 + 32) = v23;
  *(v20 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AC0, &unk_2441DACF0);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v20;
  v2[2] = v24;
  v28[1] = sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2441D8FEC();

  v33 = 0x6C7070612E6D6F63;
  v34 = 0xEA00000000002E65;
  v25 = sub_2441D92EC();
  MEMORY[0x245D5A4A0](v25);

  MEMORY[0x245D5A4A0](0x74756F6C6C61632ELL, 0xE800000000000000);
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v10);
  sub_2441D8BDC();
  v33 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198640(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  v2[3] = sub_2441D8E6C();
  *(v2 + 20) = 0;
  type metadata accessor for CarPlayWidgetConfigurationManager();
  v26 = v29;
  v33 = v29;
  v34 = v15;

  v2[4] = CarPlayWidgetConfigurationManager.__allocating_init(carPlayIdentity:)(&v33);
  v33 = v26;
  v34 = v15;
  sub_2441A44DC(&v33);

  return v2;
}

id sub_2441A4FDC()
{
  v1 = *v0;
  v2 = sub_2441D8BBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  (*(v3 + 104))(v6, *MEMORY[0x277D851C8], v2);
  v7 = sub_2441D8E7C();
  (*(v3 + 8))(v6, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v10 = objc_allocWithZone(MEMORY[0x277D42628]);
  aBlock[4] = sub_2441A9C80;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_51;
  v11 = _Block_copy(aBlock);

  v12 = [v10 initWithQueue:v7 operation:v11];

  _Block_release(v11);

  return v12;
}

uint64_t sub_2441A5218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A52D8, 0, 0);
}

uint64_t sub_2441A52D8()
{
  v24 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_2441D92EC();
    v16 = sub_244195848(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_244192000, v5, v6, "%s: received CarPlay debug rotation notification", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D5B3C0](v13, -1, -1);
    MEMORY[0x245D5B3C0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_2441A550C;

    return sub_2441A5640();
  }

  else
  {
    v21 = v0[9];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2441A550C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2441A5640()
{
  v1[2] = v0;
  v2 = sub_2441D8B8C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for WidgetStackSuggestionGenerator() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A5738, 0, 0);
}

uint64_t sub_2441A5738()
{
  v1 = *(v0[2] + 32);
  v0[8] = v1;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0x5879000000000000;
  v0[9] = *(*v1 + 160);
  v0[10] = v2;
  return MEMORY[0x2822009F8](sub_2441A5778, v1, 0);
}

uint64_t sub_2441A5778()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  *(v0 + 88) = (*(v0 + 72))();
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_2441A5810, 0, 0);
}

void sub_2441A5810()
{
  v1 = v0[11];
  if (!v1)
  {
    goto LABEL_13;
  }

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (v1 < 0)
  {
    v21 = v0[11];
  }

  if (!sub_2441D8F5C())
  {
LABEL_12:

LABEL_13:
    v23 = v0[4];
    v22 = v0[5];
    v24 = v0[3];
    v25 = sub_2441957AC();
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_2441D8B7C();
    v27 = sub_2441D8E1C();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[4];
    v29 = v0[5];
    v31 = v0[3];
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_244192000, v26, v27, "Not producing CarPlay stack suggestions, no stacks in configuration", v32, 2u);
      MEMORY[0x245D5B3C0](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    goto LABEL_16;
  }

LABEL_4:
  v2 = (*(**(v0[2] + 40) + 144))();
  v3 = v0[12];
  v37 = v2;
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts);

    v6 = sub_2441A660C(v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];
  v12 = *(v11 + 48);
  v13 = sub_2441957AC();
  (*(v10 + 16))(v8, v13, v9);
  sub_2441B4620(2, v1, v6, v12, v8, v7);
  v14 = sub_2441B4894();
  v16 = v15;
  v17 = *(v11 + 16);
  v18 = swift_task_alloc();
  *(v18 + 16) = v14;
  *(v18 + 24) = v16;
  os_unfair_lock_lock((v17 + 24));
  sub_2441A9B64((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
  if (!v3)
  {
    v19 = v0[7];
    v20 = v0[2];

    sub_2441A6968();

    sub_2441A9BF8(v19);
LABEL_16:
    v34 = v0[6];
    v33 = v0[7];
    v35 = v0[5];

    v36 = v0[1];

    v36();
  }
}

uint64_t sub_2441A5AE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_244192000, v5, v6, "Not producing CarPlay stack suggestions, no stacks in configuration", v11, 2u);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2441A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2441A991C(a3, v27 - v11);
  v13 = sub_2441D8D9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2441A998C(v12);
  }

  else
  {
    sub_2441D8D8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2441D8D7C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2441D8C8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2441A998C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2441A998C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2441A5EE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2441A5F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_2441D8D9C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a2;
  sub_2441A5C20(0, 0, v9, a4, v12);
}

uint64_t sub_2441A6084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A6144, 0, 0);
}

uint64_t sub_2441A6144()
{
  v24 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_2441D92EC();
    v16 = sub_244195848(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_244192000, v5, v6, "%s: running coalesced refresh", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D5B3C0](v13, -1, -1);
    MEMORY[0x245D5B3C0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_2441A9D9C;

    return sub_2441A5640();
  }

  else
  {
    v21 = v0[9];

    v22 = v0[1];

    return v22();
  }
}

void *CarPlayWidgetSuggestionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441957AC();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2441D8B7C();
  v10 = sub_2441D8E1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v9, v10, "%s: deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  notify_cancel(*(v1 + 20));
  v16 = v1[2];

  v17 = v1[4];

  v18 = v1[5];

  v19 = v1[7];
  v20 = v1[9];

  v21 = v1[12];

  sub_2441A90E0((v1 + 14));
  return v1;
}

uint64_t CarPlayWidgetSuggestionProvider.__deallocating_deinit()
{
  CarPlayWidgetSuggestionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

unint64_t sub_2441A660C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D5A7F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_2441D8F5C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2441D8F5C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_2441D8F5C();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2441D900C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2441D8F5C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v9)
          {
            goto LABEL_44;
          }

          v31 = v3;
          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_244198640(&qword_27EDD5B18, &qword_27EDD5B10, &qword_2441DAEF8);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B10, &qword_2441DAEF8);
              v19 = sub_2441A9604(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for ContextualSuggestion();
            swift_arrayInitWithCopy();
          }

          v3 = v31;
          v1 = v27;
          if (v9 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v9);
            v23 = v22 + v9;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v9 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v33;
      if (v33 == v1)
      {
        return v3;
      }
    }

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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2441D8F5C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_2441A6968()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D8BAC();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2441D8BEC();
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441D8B8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2441957AC();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2441D8B7C();
  v15 = sub_2441D8E1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v8;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v20 = sub_2441D92EC();
    v22 = sub_244195848(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_244192000, v14, v15, "%s: requesting delegate notification", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245D5B3C0](v19, -1, -1);
    v23 = v17;
    v3 = v34;
    MEMORY[0x245D5B3C0](v23, -1, -1);

    v24 = (*(v9 + 8))(v12, v33);
  }

  else
  {

    v24 = (*(v9 + 8))(v12, v8);
  }

  v25 = v1[2];
  MEMORY[0x28223BE20](v24);
  *(&v32 - 2) = v1;
  *(&v32 - 1) = v2;
  os_unfair_lock_lock((v25 + 24));
  sub_2441A9C54((v25 + 16), aBlock);
  os_unfair_lock_unlock((v25 + 24));
  v26 = aBlock[0];
  if (aBlock[0])
  {
    v27 = v1[3];
    v28 = swift_allocObject();
    *(v28 + 16) = v1;
    *(v28 + 24) = v26;
    aBlock[4] = sub_24419C974;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2441988C4;
    aBlock[3] = &block_descriptor_44;
    v29 = _Block_copy(aBlock);

    v30 = v35;
    sub_2441D8BDC();
    v40 = MEMORY[0x277D84F90];
    sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
    sub_244198640(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
    v31 = v37;
    sub_2441D8F3C();
    MEMORY[0x245D5A650](0, v30, v31, v29);
    _Block_release(v29);
    (*(v39 + 8))(v31, v3);
    (*(v36 + 8))(v30, v38);
  }
}

uint64_t sub_2441A6E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 120);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2441A6EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 120) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t CarPlayWidgetSuggestionProvider.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t CarPlayWidgetSuggestionProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CarPlayWidgetSuggestionProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2441A7050;
}

void sub_2441A7050(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
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

uint64_t sub_2441A70D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v69 - v13 + 16;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v69 - v16 + 16;
  MEMORY[0x28223BE20](v15);
  v19 = v69 - v18 + 16;
  swift_beginAccess();
  if (*(a2 + 84) == 1)
  {
    v20 = sub_2441957AC();
    (*(v7 + 16))(v19, v20, v6);
    v21 = sub_2441D8B7C();
    v22 = sub_2441D8E1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315138;
      v25 = sub_2441D92EC();
      v27 = sub_244195848(v25, v26, v69);
      v68 = v6;
      v28 = a1;
      v29 = a3;
      v30 = v27;

      *(v23 + 4) = v30;
      a3 = v29;
      a1 = v28;
      _os_log_impl(&dword_244192000, v21, v22, "%s: rotation suppression is disabled for tooling via property, notifying immediately", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245D5B3C0](v24, -1, -1);
      MEMORY[0x245D5B3C0](v23, -1, -1);

      (*(v7 + 8))(v19, v68);
    }

    else
    {

      (*(v7 + 8))(v19, v6);
    }

    v59 = *a1;
    swift_beginAccess();
    *a3 = *(v59 + 16);
  }

  v68 = a3;
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  v31 = qword_27EDDB110;
  if (qword_27EDDB110)
  {
    v32 = sub_2441C27C4();
    v33 = *v32;
    v34 = v32[1];

    v35 = sub_2441D8C4C();

    v36 = [v31 BOOLForKey_];

    if (v36)
    {
      v37 = sub_2441957AC();
      (*(v7 + 16))(v17, v37, v6);
      v38 = sub_2441D8B7C();
      v39 = sub_2441D8E1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69[0] = v41;
        *v40 = 136315138;
        v42 = sub_2441D92EC();
        v44 = sub_244195848(v42, v43, v69);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_244192000, v38, v39, "%s: rotation suppression is disabled via defaults override, notifying immediately", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x245D5B3C0](v41, -1, -1);
        MEMORY[0x245D5B3C0](v40, -1, -1);
      }

      (*(v7 + 8))(v17, v6);
      v45 = *a1;
      swift_beginAccess();
      v46 = *(v45 + 16);
LABEL_20:
      *v68 = v46;
    }
  }

  v47 = *a1;
  if (![*(*a1 + 32) isScheduled])
  {
    v60 = sub_2441957AC();
    (*(v7 + 16))(v11, v60, v6);
    v61 = sub_2441D8B7C();
    v62 = sub_2441D8E1C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69[0] = v64;
      *v63 = 136315138;
      v65 = sub_2441D92EC();
      v67 = sub_244195848(v65, v66, v69);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_244192000, v61, v62, "%s: no delegate notification suspension timer scheduled, notifying immediately", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x245D5B3C0](v64, -1, -1);
      MEMORY[0x245D5B3C0](v63, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    swift_beginAccess();
    *(v47 + 40) = 0;
    swift_beginAccess();
    v46 = *(v47 + 16);
    goto LABEL_20;
  }

  [*(v47 + 32) timeRemaining];
  v49 = v48;
  v50 = sub_2441957AC();
  (*(v7 + 16))(v14, v50, v6);
  v51 = sub_2441D8B7C();
  v52 = sub_2441D8E1C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v69[0] = v54;
    *v53 = 136315394;
    v55 = sub_2441D92EC();
    v57 = sub_244195848(v55, v56, v69);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2048;
    *(v53 + 14) = v49;
    _os_log_impl(&dword_244192000, v51, v52, "%s: delegate notification suspension timer already scheduled %f seconds left, setting notification to pending", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D5B3C0](v54, -1, -1);
    MEMORY[0x245D5B3C0](v53, -1, -1);
  }

  (*(v7 + 8))(v14, v6);
  result = swift_beginAccess();
  *(v47 + 40) = 1;
  *v68 = 0;
  return result;
}

void sub_2441A77D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if ([*(*a1 + 32) isScheduled])
  {
    [*(v5 + 32) timeRemaining];
    if (v6 > 300.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }
  }

  else
  {
    v7 = 300.0;
  }

  [*(v5 + 32) cancel];
  v8 = *(v5 + 32);
  v9 = *(a2 + 24);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a3;
  v14[4] = sub_244195384;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24419531C;
  v14[3] = &block_descriptor;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v13 scheduleWithFireInterval:v9 leewayInterval:v12 queue:v7 handler:1.0];
  _Block_release(v12);
}

uint64_t sub_2441A797C()
{
  v1 = *(v0[2] + 32);
  v0[3] = v1;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0x5879000000000000;
  v0[4] = *(*v1 + 160);
  v0[5] = v2;
  return MEMORY[0x2822009F8](sub_2441A79BC, v1, 0);
}

uint64_t sub_2441A79BC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t CarPlayWidgetSuggestionProvider.writeStacks(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2441D8B8C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A7B30, 0, 0);
}

uint64_t sub_2441A7B30()
{
  v1 = *(v0[8] + 32);
  v0[14] = v1;
  v2 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xAFF000000000000;
  v0[15] = *(*v1 + 168);
  v0[16] = v2;
  return MEMORY[0x2822009F8](sub_2441A7B70, v1, 0);
}

uint64_t sub_2441A7B70()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 56)) & 1;

  return MEMORY[0x2822009F8](sub_2441A7C40, 0, 0);
}

char *sub_2441A7C40()
{
  v99 = v0;
  v1 = v0;
  if (*(v0 + 136) == 1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = sub_2441957AC();
    v84 = *(v4 + 16);
    v84(v2, v5, v3);
    v6 = sub_2441D8B7C();
    v7 = sub_2441D8E1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[13];
    v10 = v1[10];
    v11 = v1[11];
    v95 = v1;
    v85 = v5;
    if (v8)
    {
      v12 = v1[9];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v96 = v14;
      *v13 = 136315138;
      v15 = sub_2441D92EC();
      v17 = sub_244195848(v15, v16, &v96);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_244192000, v6, v7, "%s: configuration manager cache did update, requesting coalesced refresh", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v1 = v95;
      MEMORY[0x245D5B3C0](v14, -1, -1);
      MEMORY[0x245D5B3C0](v13, -1, -1);
    }

    v83 = *(v11 + 8);
    v83(v9, v10);
    v18 = v1[7];
    if (v18 >> 62)
    {
      goto LABEL_43;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v20 = MEMORY[0x277D84F90];
    if (v19)
    {
      v98 = MEMORY[0x277D84F90];
      result = sub_2441A94D8(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v22 = 0;
        v88 = v19;
        v89 = v18 & 0xC000000000000001;
        v23 = v98;
        v86 = v1[7] + 32;
        v87 = v18 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v18 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v19 = sub_2441D8F5C();
            goto LABEL_6;
          }

          if (v89)
          {
            v24 = v1[7];
            v25 = MEMORY[0x245D5A7F0]();
          }

          else
          {
            if (v22 >= *(v87 + 16))
            {
              goto LABEL_42;
            }

            v25 = *(v86 + 8 * v22);
          }

          v26 = v25;
          v27 = [v25 widgets];
          sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
          v28 = sub_2441D8D0C();

          v29 = v28;
          if (v28 >> 62)
          {
            v47 = v28;
            v30 = sub_2441D8F5C();
            v29 = v47;
            v92 = v18;
            if (!v30)
            {
LABEL_26:

              goto LABEL_27;
            }
          }

          else
          {
            v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v92 = v18;
            if (!v30)
            {
              goto LABEL_26;
            }
          }

          v31 = v29;
          v96 = v20;
          sub_2441A94D8(0, v30 & ~(v30 >> 63), 0);
          if (v30 < 0)
          {
            goto LABEL_41;
          }

          v93 = v30;
          v90 = v26;
          v91 = v23;
          v32 = 0;
          v20 = v96;
          v33 = v31;
          v34 = v31 & 0xC000000000000001;
          v35 = v31;
          do
          {
            if (v34)
            {
              v36 = MEMORY[0x245D5A7F0](v32, v33);
            }

            else
            {
              v36 = *(v33 + 8 * v32 + 32);
            }

            v37 = v36;
            v38 = [v36 chsWidget];
            v39 = [v38 extensionIdentity];

            v40 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
            v41 = sub_2441D89BC();
            v43 = v42;
            swift_endAccess();

            v96 = v20;
            v45 = *(v20 + 16);
            v44 = *(v20 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_2441A94D8((v44 > 1), v45 + 1, 1);
              v20 = v96;
            }

            ++v32;
            *(v20 + 16) = v45 + 1;
            v46 = v20 + 16 * v45;
            *(v46 + 32) = v41;
            *(v46 + 40) = v43;
            v33 = v35;
          }

          while (v93 != v32);

          v1 = v95;
          v19 = v88;
          v26 = v90;
          v23 = v91;
LABEL_27:
          v48 = [v26 identifier];
          v49 = sub_2441D8C6C();
          v51 = v50;

          v96 = v49;
          v97 = v51;
          MEMORY[0x245D5A4A0](5972026, 0xE300000000000000);
          v1[5] = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AD8, &qword_2441DAD10);
          sub_244198640(&qword_27EDD5AE0, &qword_27EDD5AD8, &qword_2441DAD10);
          v52 = sub_2441D8C2C();
          v54 = v53;

          MEMORY[0x245D5A4A0](v52, v54);

          MEMORY[0x245D5A4A0](93, 0xE100000000000000);
          v56 = v96;
          v55 = v97;

          v98 = v23;
          v58 = *(v23 + 16);
          v57 = *(v23 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_2441A94D8((v57 > 1), v58 + 1, 1);
            v23 = v98;
          }

          *(v23 + 16) = v58 + 1;
          v59 = v23 + 16 * v58;
          *(v59 + 32) = v56;
          *(v59 + 40) = v55;
          v22 = v92;
          v20 = MEMORY[0x277D84F90];
          if (v92 == v19)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_32:
    v60 = v1[12];
    v61 = v1[10];
    v1[6] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AD8, &qword_2441DAD10);
    sub_244198640(&qword_27EDD5AE0, &qword_27EDD5AD8, &qword_2441DAD10);
    v62 = sub_2441D8C2C();
    v64 = v63;

    v84(v60, v85, v61);

    v65 = sub_2441D8B7C();
    v66 = sub_2441D8E1C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v1[11];
    v69 = v1[12];
    v70 = v1[10];
    if (v67)
    {
      v71 = v1[9];
      v72 = swift_slowAlloc();
      v94 = v69;
      v73 = v62;
      v74 = swift_slowAlloc();
      v96 = v74;
      *v72 = 136315394;
      v75 = sub_2441D92EC();
      v77 = sub_244195848(v75, v76, &v96);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      v78 = sub_244195848(v73, v64, &v96);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_244192000, v65, v66, "%s: configuration manager cache did update, stacks = {%s}; requesting coalesced refresh", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v74, -1, -1);
      v1 = v95;
      MEMORY[0x245D5B3C0](v72, -1, -1);

      v79 = v94;
    }

    else
    {

      v79 = v69;
    }

    v83(v79, v70);
    result = *(v1[8] + 104);
    if (!result)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    [result runAfterDelaySeconds:0 coalescingBehavior:1.0];
  }

  v81 = v1[12];
  v80 = v1[13];

  v82 = v1[1];

  return v82();
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logViewDidAppear()()
{
  v1 = v0[7];
  v2 = v0[8];
  v6 = v0[9];
  v3 = v6;
  v4 = v1;
  v5 = v2;
  CarPlayWidgetEngagementStream.logViewDidAppear()();
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidTap(_:)(ATXWidget *a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v11 = v1[9];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v11;
  v8 = v3;
  v9 = v4;
  v10._countAndFlagsBits = v5;
  v10._object = v6;
  CarPlayWidgetEngagementStream.logUserDidTap(_:carPlayIdentifier:)(a1, v10);
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidAdd(_:)(ATXWidget *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441957AC();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = sub_2441D92EC();
    v18 = sub_244195848(v16, v17, &v36);
    v34 = v5;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_244195848(0xD000000000000011, 0x80000002441DE980, &v36);
    _os_log_impl(&dword_244192000, v11, v12, "%s.%s: resetting delegate notification suspension timer due to user action - user added a widget", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v15, -1, -1);
    v20 = v14;
    a1 = v35;
    MEMORY[0x245D5B3C0](v20, -1, -1);

    (*(v6 + 8))(v9, v34);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v21 = v2[2];
  os_unfair_lock_lock((v21 + 24));
  sub_2441A77D4((v21 + 16), v2, v4);
  os_unfair_lock_unlock((v21 + 24));
  v23 = v2[8];
  v24 = v2[9];
  v36 = v2[7];
  v22 = v36;
  v37 = v23;
  v38 = v24;
  v25 = v2[11];
  v26 = v2[12];
  v27 = v24;
  v28 = v22;
  v29 = v23;
  v30._countAndFlagsBits = v25;
  v30._object = v26;
  CarPlayWidgetEngagementStream.logUserDidAdd(_:carPlayIdentifier:)(a1, v30);
  v31 = v36;
  v32 = v38;
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidRemove(_:)(ATXWidget *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441957AC();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = sub_2441D92EC();
    v18 = sub_244195848(v16, v17, &v36);
    v34 = v5;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_244195848(0xD000000000000014, 0x80000002441DE9A0, &v36);
    _os_log_impl(&dword_244192000, v11, v12, "%s.%s: resetting delegate notification suspension timer due to user action - user removed a widget", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v15, -1, -1);
    v20 = v14;
    a1 = v35;
    MEMORY[0x245D5B3C0](v20, -1, -1);

    (*(v6 + 8))(v9, v34);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v21 = v2[2];
  os_unfair_lock_lock((v21 + 24));
  sub_2441A77D4((v21 + 16), v2, v4);
  os_unfair_lock_unlock((v21 + 24));
  v23 = v2[8];
  v24 = v2[9];
  v36 = v2[7];
  v22 = v36;
  v37 = v23;
  v38 = v24;
  v25 = v2[11];
  v26 = v2[12];
  v27 = v24;
  v28 = v22;
  v29 = v23;
  v30._countAndFlagsBits = v25;
  v30._object = v26;
  CarPlayWidgetEngagementStream.logUserDidRemove(_:carPlayIdentifier:)(a1, v30);
  v31 = v36;
  v32 = v38;
}

void CarPlayWidgetSuggestionProvider.logStackDidChange(to:reason:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2441957AC();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2441D8B7C();
  v14 = sub_2441D8E1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a1;
    v18 = v17;
    v38 = v17;
    *v16 = 136315394;
    v19 = sub_2441D92EC();
    v35 = v7;
    v21 = sub_244195848(v19, v20, &v38);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v38);
    _os_log_impl(&dword_244192000, v13, v14, "%s.%s: resetting delegate notification suspension timer due to stack rotation", v16, 0x16u);
    swift_arrayDestroy();
    v22 = v18;
    a1 = v36;
    MEMORY[0x245D5B3C0](v22, -1, -1);
    v23 = v16;
    a2 = v37;
    MEMORY[0x245D5B3C0](v23, -1, -1);

    (*(v8 + 8))(v11, v35);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v24 = v3[2];
  os_unfair_lock_lock((v24 + 24));
  sub_2441A77D4((v24 + 16), v3, v6);
  os_unfair_lock_unlock((v24 + 24));
  v26 = v3[8];
  v27 = v3[9];
  v38 = v3[7];
  v25 = v38;
  v39 = v26;
  v40 = v27;
  v28 = v3[11];
  v29 = v3[12];
  v30 = v27;
  v31 = v25;
  v32 = v26;
  CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(0, a1, a2, v28, v29);
  v33 = v38;
  v34 = v40;
}

void CarPlayWidgetSuggestionProvider.logWidgetStack(_:didChangeTo:reason:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = *v3;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2441957AC();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2441D8B7C();
  v14 = sub_2441D8E1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = v7;
    v18 = v17;
    v39 = v17;
    *v16 = 136315394;
    v19 = sub_2441D92EC();
    v21 = sub_244195848(v19, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_244195848(0xD000000000000025, 0x80000002441DE9E0, &v39);
    _os_log_impl(&dword_244192000, v13, v14, "%s.%s: resetting delegate notification suspension timer due to stack rotation", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v18, -1, -1);
    v22 = v16;
    a3 = v36;
    MEMORY[0x245D5B3C0](v22, -1, -1);

    (*(v8 + 8))(v11, v35);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v23 = v4[2];
  os_unfair_lock_lock((v23 + 24));
  sub_2441A77D4((v23 + 16), v4, v6);
  os_unfair_lock_unlock((v23 + 24));
  v25 = v4[8];
  v26 = v4[9];
  v39 = v4[7];
  v24 = v39;
  v40 = v25;
  v41 = v26;
  v27 = v4[11];
  v28 = v4[12];
  v29 = v26;
  v30 = v24;
  v31 = v25;
  CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(v37, v38, a3, v27, v28);
  v32 = v39;
  v33 = v41;
}

uint64_t sub_2441A902C()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_2441A9078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2441A9108(uint64_t a1, unint64_t a2)
{
  v4 = sub_2441A9154(a1, a2);
  sub_2441A9284(&unk_28578E1B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2441A9154(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2441A9370(v5, 0);
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

  result = sub_2441D901C();
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
        v10 = sub_2441D8CBC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2441A9370(v10, 0);
        result = sub_2441D8FDC();
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

uint64_t sub_2441A9284(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2441A93E4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2441A9370(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B08, &qword_2441DBA40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2441A93E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B08, &qword_2441DBA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2441A94D8(char *a1, int64_t a2, char a3)
{
  result = sub_2441A94F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2441A94F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AF0, &qword_2441DAEA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_2441A9604(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D5A7F0](a2, a3);
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
    return sub_2441A9684;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2441A96AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2441A96F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2441A97B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441A97D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27EDD5AE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDD5AE8);
    }
  }
}

uint64_t sub_2441A9884()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return sub_2441A5218(v4, v5, v6, v2, v3);
}

uint64_t sub_2441A991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2441A998C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2441A99F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_244198A50;

  return sub_244197B10(a1, v5);
}

uint64_t sub_2441A9AAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_244198A54;

  return sub_244197B10(a1, v5);
}

uint64_t sub_2441A9B64(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  swift_beginAccess();
  v6 = *(v4 + 24);
  *(v4 + 24) = v2;
}

uint64_t sub_2441A9BF8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetStackSuggestionGenerator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2441A9CF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441A6084(v4, v5, v6, v2, v3);
}

uint64_t sub_2441A9DB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2441A9EC8(char a1)
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](a1 & 1);
  return sub_2441D926C();
}

uint64_t sub_2441A9F10(char a1)
{
  if (a1)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_2441A9F74()
{
  v1 = *v0;
  sub_2441D924C();
  MEMORY[0x245D5AA50](v1);
  return sub_2441D926C();
}

uint64_t sub_2441A9FE8()
{
  v1 = *v0;
  sub_2441D924C();
  MEMORY[0x245D5AA50](v1);
  return sub_2441D926C();
}

uint64_t sub_2441AA02C()
{
  if (*v0)
  {
    result = 0x6974736567677573;
  }

  else
  {
    result = 0x6E65736572706572;
  }

  *v0;
  return result;
}

uint64_t sub_2441AA07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v6 || (sub_2441D91CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2441D91CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2441AA170(uint64_t a1)
{
  v2 = sub_2441AA75C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441AA1AC(uint64_t a1)
{
  v2 = sub_2441AA75C();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualSuggestionContext.__allocating_init(representation:suggestions:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = a1;
  *&v5[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ContextualSuggestionContext.init(representation:suggestions:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = a1;
  *&v2[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2441AA328(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation) + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);
  v3 = (*(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation) + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);
  if (*v2 == *v3 && v2[1] == v3[1])
  {
    return 1;
  }

  else
  {
    return sub_2441D91CC();
  }
}

id ContextualSuggestionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualSuggestionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2441AA43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2441AA4A8()
{
  result = qword_27EDD5B60;
  if (!qword_27EDD5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B60);
  }

  return result;
}

unint64_t sub_2441AA500()
{
  result = qword_27EDD5B68;
  if (!qword_27EDD5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B68);
  }

  return result;
}

unint64_t sub_2441AA558()
{
  result = qword_27EDD5B70;
  if (!qword_27EDD5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualSuggestionContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextualSuggestionContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2441AA75C()
{
  result = qword_27EDD5BE0;
  if (!qword_27EDD5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5BE0);
  }

  return result;
}

id sub_2441AA7B0()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = sub_2441C23D8();
    v4 = *v3;
    v5 = v3[1];
    v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v7 = sub_2441D8C4C();

    v8 = [v6 initWithMachServiceName:v7 options:0];

    v9 = contextualEngineInternalInterface.getter();
    [v8 setRemoteObjectInterface_];

    [v8 resume];
    v10 = *(v0 + 112);
    *(v0 + 112) = v8;
    v2 = v8;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

void *sub_2441AA88C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = sub_2441AA7B0();
  aBlock[4] = sub_2441AD8A8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441AAC44;
  aBlock[3] = &block_descriptor_93;
  v3 = _Block_copy(aBlock);

  v4 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_2441D8F2C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5CD0, &unk_2441DB260);
  if (swift_dynamicCast())
  {
    v5 = v9;
  }

  else
  {
    swift_beginAccess();
    v5 = *v1;
    if (*v1)
    {
      v6 = *v1;
    }

    else
    {
      sub_2441AD8C8();
      swift_allocError();
    }

    swift_willThrow();
    v7 = v5;
  }

  return v5;
}

id sub_2441AAA50(void *a1, uint64_t a2)
{
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2441994FC();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_2441D88AC();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_244192000, v11, v12, "ContextualEngineInternalClient: Error grabbing remote object proxy: %@", v13, 0xCu);
    sub_2441979F8(v14, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v14, -1, -1);
    MEMORY[0x245D5B3C0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v16 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_2441AAC44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2441AACCC()
{
  v1 = v0[19];
  v2 = sub_2441AA88C();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2441AAE3C;
  v3 = v2;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C50, &qword_2441DB0C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441AB03C;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 fetchAllSnapshotsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}